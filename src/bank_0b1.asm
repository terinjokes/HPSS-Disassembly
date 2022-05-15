; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0b1", ROMX[$4000], BANK[$b1]

    or c                                          ; $4000: $b1
    nop                                           ; $4001: $00
    jr nz, jr_0b1_4004                            ; $4002: $20 $00

Jump_0b1_4004:
jr_0b1_4004:
    jr nz, jr_0b1_4006                            ; $4004: $20 $00

jr_0b1_4006:
    jr nz, @+$33                                  ; $4006: $20 $31

    ld a, [bc]                                    ; $4008: $0a
    nop                                           ; $4009: $00
    jr nz, jr_0b1_400c                            ; $400a: $20 $00

jr_0b1_400c:
    jr nz, jr_0b1_400e                            ; $400c: $20 $00

jr_0b1_400e:
    jr nz, jr_0b1_4041                            ; $400e: $20 $31

    ld a, [bc]                                    ; $4010: $0a
    nop                                           ; $4011: $00
    jr nz, jr_0b1_4014                            ; $4012: $20 $00

jr_0b1_4014:
    jr nz, jr_0b1_4016                            ; $4014: $20 $00

jr_0b1_4016:
    jr nz, jr_0b1_4049                            ; $4016: $20 $31

    ld a, [bc]                                    ; $4018: $0a
    nop                                           ; $4019: $00
    nop                                           ; $401a: $00
    rst $38                                       ; $401b: $ff
    ld a, a                                       ; $401c: $7f
    nop                                           ; $401d: $00
    jr nz, jr_0b1_4020                            ; $401e: $20 $00

jr_0b1_4020:
    jr nz, jr_0b1_4022                            ; $4020: $20 $00

jr_0b1_4022:
    nop                                           ; $4022: $00
    nop                                           ; $4023: $00
    jr nz, jr_0b1_4026                            ; $4024: $20 $00

jr_0b1_4026:
    inc b                                         ; $4026: $04
    nop                                           ; $4027: $00
    ld [$2000], sp                                ; $4028: $08 $00 $20
    nop                                           ; $402b: $00
    jr nz, jr_0b1_402e                            ; $402c: $20 $00

jr_0b1_402e:
    inc b                                         ; $402e: $04
    nop                                           ; $402f: $00
    ld [$2000], sp                                ; $4030: $08 $00 $20
    nop                                           ; $4033: $00
    jr nz, jr_0b1_4036                            ; $4034: $20 $00

jr_0b1_4036:
    inc b                                         ; $4036: $04
    nop                                           ; $4037: $00
    ld [$2000], sp                                ; $4038: $08 $00 $20

jr_0b1_403b:
    nop                                           ; $403b: $00

jr_0b1_403c:
    jr nz, jr_0b1_403e                            ; $403c: $20 $00

jr_0b1_403e:
    jr nz, jr_0b1_4071                            ; $403e: $20 $31

    ld a, [bc]                                    ; $4040: $0a

jr_0b1_4041:
    nop                                           ; $4041: $00
    jr nz, jr_0b1_4044                            ; $4042: $20 $00

jr_0b1_4044:
    jr nz, jr_0b1_4046                            ; $4044: $20 $00

jr_0b1_4046:
    jr nz, jr_0b1_4079                            ; $4046: $20 $31

    ld a, [bc]                                    ; $4048: $0a

jr_0b1_4049:
    nop                                           ; $4049: $00
    inc b                                         ; $404a: $04
    ret z                                         ; $404b: $c8

    ld a, l                                       ; $404c: $7d
    nop                                           ; $404d: $00
    inc e                                         ; $404e: $1c
    add c                                         ; $404f: $81
    inc l                                         ; $4050: $2c
    nop                                           ; $4051: $00
    nop                                           ; $4052: $00
    rst $38                                       ; $4053: $ff
    ld a, a                                       ; $4054: $7f
    nop                                           ; $4055: $00
    inc e                                         ; $4056: $1c
    nop                                           ; $4057: $00
    inc b                                         ; $4058: $04
    nop                                           ; $4059: $00
    ld [$5d88], sp                                ; $405a: $08 $88 $5d
    inc d                                         ; $405d: $14
    ld a, a                                       ; $405e: $7f
    rlca                                          ; $405f: $07
    add hl, hl                                    ; $4060: $29
    nop                                           ; $4061: $00
    ld [$1c00], sp                                ; $4062: $08 $00 $1c
    nop                                           ; $4065: $00
    jr nz, @+$09                                  ; $4066: $20 $07

    add hl, hl                                    ; $4068: $29
    nop                                           ; $4069: $00
    jr nz, jr_0b1_406c                            ; $406a: $20 $00

jr_0b1_406c:
    inc e                                         ; $406c: $1c
    nop                                           ; $406d: $00
    jr nz, jr_0b1_4077                            ; $406e: $20 $07

    add hl, hl                                    ; $4070: $29

jr_0b1_4071:
    nop                                           ; $4071: $00
    jr nz, jr_0b1_403c                            ; $4072: $20 $c8

    ld a, l                                       ; $4074: $7d
    nop                                           ; $4075: $00
    inc e                                         ; $4076: $1c

jr_0b1_4077:
    add c                                         ; $4077: $81
    inc l                                         ; $4078: $2c

jr_0b1_4079:
    nop                                           ; $4079: $00
    jr nz, jr_0b1_4044                            ; $407a: $20 $c8

    ld a, l                                       ; $407c: $7d
    nop                                           ; $407d: $00
    inc e                                         ; $407e: $1c
    add c                                         ; $407f: $81
    inc l                                         ; $4080: $2c
    nop                                           ; $4081: $00
    nop                                           ; $4082: $00
    adc a                                         ; $4083: $8f
    ld a, [hl]                                    ; $4084: $7e
    nop                                           ; $4085: $00
    inc e                                         ; $4086: $1c
    ld [hl], $7f                                  ; $4087: $36 $7f
    nop                                           ; $4089: $00
    nop                                           ; $408a: $00
    ld c, h                                       ; $408b: $4c
    ld h, $ff                                     ; $408c: $26 $ff
    ld a, a                                       ; $408e: $7f
    ld b, b                                       ; $408f: $40
    jr z, jr_0b1_4092                             ; $4090: $28 $00

jr_0b1_4092:
    nop                                           ; $4092: $00
    ld a, d                                       ; $4093: $7a
    ld a, a                                       ; $4094: $7f

jr_0b1_4095:
    jr nz, @+$12                                  ; $4095: $20 $10

    rst $38                                       ; $4097: $ff
    ld a, a                                       ; $4098: $7f
    nop                                           ; $4099: $00
    inc b                                         ; $409a: $04
    cpl                                           ; $409b: $2f
    ld e, [hl]                                    ; $409c: $5e

jr_0b1_409d:
    nop                                           ; $409d: $00
    jr nz, jr_0b1_4095                            ; $409e: $20 $f5

    ld l, [hl]                                    ; $40a0: $6e
    nop                                           ; $40a1: $00
    jr nz, jr_0b1_40d3                            ; $40a2: $20 $2f

    ld e, [hl]                                    ; $40a4: $5e
    nop                                           ; $40a5: $00
    jr nz, jr_0b1_409d                            ; $40a6: $20 $f5

    ld l, [hl]                                    ; $40a8: $6e

jr_0b1_40a9:
    nop                                           ; $40a9: $00
    jr nz, jr_0b1_403b                            ; $40aa: $20 $8f

    ld a, [hl]                                    ; $40ac: $7e
    nop                                           ; $40ad: $00
    inc e                                         ; $40ae: $1c
    ld [hl], $7f                                  ; $40af: $36 $7f
    nop                                           ; $40b1: $00
    jr nz, @-$6f                                  ; $40b2: $20 $8f

    ld a, [hl]                                    ; $40b4: $7e
    nop                                           ; $40b5: $00
    inc e                                         ; $40b6: $1c
    ld [hl], $7f                                  ; $40b7: $36 $7f
    nop                                           ; $40b9: $00
    inc b                                         ; $40ba: $04
    ld d, $77                                     ; $40bb: $16 $77
    jr nz, @+$26                                  ; $40bd: $20 $24

    sbc d                                         ; $40bf: $9a
    ld a, a                                       ; $40c0: $7f
    ld hl, $4c04                                  ; $40c1: $21 $04 $4c
    ld [hl+], a                                   ; $40c4: $22
    add b                                         ; $40c5: $80
    ld b, b                                       ; $40c6: $40
    ldh [rBCPS], a                                ; $40c7: $e0 $68
    nop                                           ; $40c9: $00
    nop                                           ; $40ca: $00
    cp h                                          ; $40cb: $bc
    ld a, a                                       ; $40cc: $7f
    add b                                         ; $40cd: $80

jr_0b1_40ce:
    ld b, b                                       ; $40ce: $40
    ld h, d                                       ; $40cf: $62
    jr jr_0b1_40d2                                ; $40d0: $18 $00

jr_0b1_40d2:
    inc b                                         ; $40d2: $04

jr_0b1_40d3:
    call $d445                                    ; $40d3: $cd $45 $d4

jr_0b1_40d6:
    ld l, d                                       ; $40d6: $6a
    nop                                           ; $40d7: $00
    jr nz, jr_0b1_40da                            ; $40d8: $20 $00

jr_0b1_40da:
    jr nz, jr_0b1_40a9                            ; $40da: $20 $cd

    ld b, l                                       ; $40dc: $45
    call nc, Call_000_006a                        ; $40dd: $d4 $6a $00
    jr nz, jr_0b1_40e2                            ; $40e0: $20 $00

jr_0b1_40e2:
    jr nz, jr_0b1_40fa                            ; $40e2: $20 $16

    ld [hl], a                                    ; $40e4: $77
    jr nz, jr_0b1_410b                            ; $40e5: $20 $24

    sbc d                                         ; $40e7: $9a
    ld a, a                                       ; $40e8: $7f
    nop                                           ; $40e9: $00
    jr nz, jr_0b1_4102                            ; $40ea: $20 $16

    ld [hl], a                                    ; $40ec: $77
    jr nz, @+$26                                  ; $40ed: $20 $24

    sbc d                                         ; $40ef: $9a
    ld a, a                                       ; $40f0: $7f
    nop                                           ; $40f1: $00
    ld [$520f], sp                                ; $40f2: $08 $0f $52
    ld c, h                                       ; $40f5: $4c
    ld h, $7a                                     ; $40f6: $26 $7a
    ld a, e                                       ; $40f8: $7b
    nop                                           ; $40f9: $00

jr_0b1_40fa:
    nop                                           ; $40fa: $00
    ret nz                                        ; $40fb: $c0

    ld [hl], b                                    ; $40fc: $70
    ld c, h                                       ; $40fd: $4c
    ld h, $c4                                     ; $40fe: $26 $c4
    inc c                                         ; $4100: $0c
    nop                                           ; $4101: $00

jr_0b1_4102:
    nop                                           ; $4102: $00
    ld a, c                                       ; $4103: $79
    ld a, e                                       ; $4104: $7b
    ret nz                                        ; $4105: $c0

    ld e, h                                       ; $4106: $5c
    ld c, h                                       ; $4107: $4c
    ld h, $00                                     ; $4108: $26 $00
    inc b                                         ; $410a: $04

jr_0b1_410b:
    nop                                           ; $410b: $00
    jr nz, jr_0b1_40ce                            ; $410c: $20 $c0

    ld e, h                                       ; $410e: $5c
    ld c, h                                       ; $410f: $4c
    ld h, $00                                     ; $4110: $26 $00
    jr nz, jr_0b1_4114                            ; $4112: $20 $00

jr_0b1_4114:
    jr nz, jr_0b1_40d6                            ; $4114: $20 $c0

    ld e, h                                       ; $4116: $5c
    ld c, h                                       ; $4117: $4c
    ld h, $00                                     ; $4118: $26 $00
    jr nz, jr_0b1_412b                            ; $411a: $20 $0f

    ld d, d                                       ; $411c: $52
    ld c, h                                       ; $411d: $4c
    ld h, $7a                                     ; $411e: $26 $7a
    ld a, e                                       ; $4120: $7b
    nop                                           ; $4121: $00
    nop                                           ; $4122: $00
    rst $38                                       ; $4123: $ff
    ld a, a                                       ; $4124: $7f
    nop                                           ; $4125: $00
    jr nz, jr_0b1_41a2                            ; $4126: $20 $7a

    ld a, e                                       ; $4128: $7b
    nop                                           ; $4129: $00
    nop                                           ; $412a: $00

jr_0b1_412b:
    jr jr_0b1_4190                                ; $412b: $18 $63

    cp l                                          ; $412d: $bd
    ld a, a                                       ; $412e: $7f
    push af                                       ; $412f: $f5
    halt                                          ; $4130: $76
    ld h, e                                       ; $4131: $63
    ld [$6739], sp                                ; $4132: $08 $39 $67
    ld sp, $ff42                                  ; $4135: $31 $42 $ff
    ld a, a                                       ; $4138: $7f
    jr nz, jr_0b1_413b                            ; $4139: $20 $00

jr_0b1_413b:
    jp hl                                         ; $413b: $e9


    ld sp, $79ea                                  ; $413c: $31 $ea $79
    cp $7b                                        ; $413f: $fe $7b
    nop                                           ; $4141: $00
    nop                                           ; $4142: $00
    rst $38                                       ; $4143: $ff

jr_0b1_4144:
    ld a, a                                       ; $4144: $7f
    nop                                           ; $4145: $00

jr_0b1_4146:
    jr nz, jr_0b1_4146                            ; $4146: $20 $fe

    ld a, e                                       ; $4148: $7b
    nop                                           ; $4149: $00
    jr nz, @+$01                                  ; $414a: $20 $ff

    ld a, a                                       ; $414c: $7f
    nop                                           ; $414d: $00

jr_0b1_414e:
    jr nz, jr_0b1_414e                            ; $414e: $20 $fe

    ld a, e                                       ; $4150: $7b
    nop                                           ; $4151: $00
    jr nz, @+$1a                                  ; $4152: $20 $18

    ld h, e                                       ; $4154: $63

jr_0b1_4155:
    cp l                                          ; $4155: $bd
    ld a, a                                       ; $4156: $7f
    push af                                       ; $4157: $f5
    halt                                          ; $4158: $76
    nop                                           ; $4159: $00
    nop                                           ; $415a: $00
    rst $38                                       ; $415b: $ff
    ld a, a                                       ; $415c: $7f
    nop                                           ; $415d: $00
    jr nz, jr_0b1_4155                            ; $415e: $20 $f5

    halt                                          ; $4160: $76
    jr nz, jr_0b1_4167                            ; $4161: $20 $04

    and a                                         ; $4163: $a7
    ld l, l                                       ; $4164: $6d
    or a                                          ; $4165: $b7
    halt                                          ; $4166: $76

jr_0b1_4167:
    xor [hl]                                      ; $4167: $ae
    dec [hl]                                      ; $4168: $35
    nop                                           ; $4169: $00
    nop                                           ; $416a: $00
    call nc, $9b52                                ; $416b: $d4 $52 $9b
    ld l, a                                       ; $416e: $6f
    rst $38                                       ; $416f: $ff
    ld a, a                                       ; $4170: $7f
    nop                                           ; $4171: $00
    ld [$7d00], sp                                ; $4172: $08 $00 $7d
    ld c, h                                       ; $4175: $4c
    ld h, $7d                                     ; $4176: $26 $7d

jr_0b1_4178:
    ld h, d                                       ; $4178: $62
    nop                                           ; $4179: $00
    nop                                           ; $417a: $00
    rst $38                                       ; $417b: $ff
    ld a, a                                       ; $417c: $7f
    ld c, h                                       ; $417d: $4c
    ld h, $00                                     ; $417e: $26 $00
    jr nz, jr_0b1_4182                            ; $4180: $20 $00

jr_0b1_4182:
    jr nz, @+$01                                  ; $4182: $20 $ff

    ld a, a                                       ; $4184: $7f
    ld c, h                                       ; $4185: $4c
    ld h, $00                                     ; $4186: $26 $00
    jr nz, jr_0b1_418a                            ; $4188: $20 $00

jr_0b1_418a:
    jr nz, @-$57                                  ; $418a: $20 $a7

    ld l, l                                       ; $418c: $6d
    or a                                          ; $418d: $b7
    halt                                          ; $418e: $76
    xor [hl]                                      ; $418f: $ae

jr_0b1_4190:
    dec [hl]                                      ; $4190: $35
    nop                                           ; $4191: $00
    ld [$625a], sp                                ; $4192: $08 $5a $62
    ld c, $35                                     ; $4195: $0e $35
    rst $38                                       ; $4197: $ff
    ld a, a                                       ; $4198: $7f
    ld bc, $2100                                  ; $4199: $01 $00 $21
    ld l, l                                       ; $419c: $6d
    sub l                                         ; $419d: $95
    ld c, l                                       ; $419e: $4d
    dec hl                                        ; $419f: $2b
    jr nz, jr_0b1_41a2                            ; $41a0: $20 $00

jr_0b1_41a2:
    nop                                           ; $41a2: $00
    ld [hl], c                                    ; $41a3: $71
    ld c, d                                       ; $41a4: $4a
    ld a, [hl+]                                   ; $41a5: $2a
    jr jr_0b1_4144                                ; $41a6: $18 $9c

    ld [hl], e                                    ; $41a8: $73
    nop                                           ; $41a9: $00
    db $10                                        ; $41aa: $10
    cp h                                          ; $41ab: $bc
    ld l, [hl]                                    ; $41ac: $6e
    ret nz                                        ; $41ad: $c0

    ld l, h                                       ; $41ae: $6c
    xor [hl]                                      ; $41af: $ae
    inc l                                         ; $41b0: $2c
    nop                                           ; $41b1: $00
    nop                                           ; $41b2: $00
    ld [hl], a                                    ; $41b3: $77
    ld e, d                                       ; $41b4: $5a
    ld c, h                                       ; $41b5: $4c
    ld h, $ff                                     ; $41b6: $26 $ff
    ld a, a                                       ; $41b8: $7f
    nop                                           ; $41b9: $00
    nop                                           ; $41ba: $00
    nop                                           ; $41bb: $00
    jr nz, jr_0b1_420a                            ; $41bc: $20 $4c

    ld h, $ff                                     ; $41be: $26 $ff
    ld a, a                                       ; $41c0: $7f
    nop                                           ; $41c1: $00
    nop                                           ; $41c2: $00
    rst $38                                       ; $41c3: $ff
    ld a, a                                       ; $41c4: $7f
    nop                                           ; $41c5: $00
    jr nz, jr_0b1_41f3                            ; $41c6: $20 $2b

    jr nz, jr_0b1_41cc                            ; $41c8: $20 $02

    inc b                                         ; $41ca: $04
    cp b                                          ; $41cb: $b8

jr_0b1_41cc:
    ld e, c                                       ; $41cc: $59
    rst $38                                       ; $41cd: $ff
    ld a, a                                       ; $41ce: $7f
    ld c, l                                       ; $41cf: $4d
    jr z, jr_0b1_41f3                             ; $41d0: $28 $21

    inc b                                         ; $41d2: $04
    and b                                         ; $41d3: $a0
    ld d, b                                       ; $41d4: $50
    rlca                                          ; $41d5: $07
    inc d                                         ; $41d6: $14
    nop                                           ; $41d7: $00
    ld [hl], c                                    ; $41d8: $71
    ld [bc], a                                    ; $41d9: $02
    ld [$4a92], sp                                ; $41da: $08 $92 $4a
    ld b, b                                       ; $41dd: $40
    inc a                                         ; $41de: $3c
    cp $7b                                        ; $41df: $fe $7b
    nop                                           ; $41e1: $00
    nop                                           ; $41e2: $00
    ld h, b                                       ; $41e3: $60
    ld c, b                                       ; $41e4: $48
    add hl, bc                                    ; $41e5: $09
    jr jr_0b1_4178                                ; $41e6: $18 $90

    inc [hl]                                      ; $41e8: $34
    nop                                           ; $41e9: $00
    nop                                           ; $41ea: $00
    ei                                            ; $41eb: $fb
    ld h, c                                       ; $41ec: $61
    xor h                                         ; $41ed: $ac
    dec h                                         ; $41ee: $25
    ld e, [hl]                                    ; $41ef: $5e
    ld a, e                                       ; $41f0: $7b
    nop                                           ; $41f1: $00
    nop                                           ; $41f2: $00

jr_0b1_41f3:
    rst $38                                       ; $41f3: $ff
    ld a, a                                       ; $41f4: $7f
    nop                                           ; $41f5: $00
    jr nz, jr_0b1_4256                            ; $41f6: $20 $5e

    ld a, e                                       ; $41f8: $7b
    nop                                           ; $41f9: $00
    nop                                           ; $41fa: $00
    rst $38                                       ; $41fb: $ff
    ld a, a                                       ; $41fc: $7f
    nop                                           ; $41fd: $00
    jr nz, jr_0b1_4200                            ; $41fe: $20 $00

Jump_0b1_4200:
jr_0b1_4200:
    ld [hl], c                                    ; $4200: $71
    nop                                           ; $4201: $00
    nop                                           ; $4202: $00
    ld l, $3a                                     ; $4203: $2e $3a
    cp e                                          ; $4205: $bb
    ld a, a                                       ; $4206: $7f
    inc d                                         ; $4207: $14

Jump_0b1_4208:
    ld b, l                                       ; $4208: $45
    nop                                           ; $4209: $00

jr_0b1_420a:
    nop                                           ; $420a: $00
    inc l                                         ; $420b: $2c
    ld l, $35                                     ; $420c: $2e $35
    ld a, a                                       ; $420e: $7f
    ld b, b                                       ; $420f: $40
    inc [hl]                                      ; $4210: $34
    nop                                           ; $4211: $00
    inc b                                         ; $4212: $04
    ld d, [hl]                                    ; $4213: $56
    ld a, [hl-]                                   ; $4214: $3a
    ccf                                           ; $4215: $3f
    ld c, a                                       ; $4216: $4f
    and h                                         ; $4217: $a4
    jr nz, jr_0b1_421a                            ; $4218: $20 $00

jr_0b1_421a:
    nop                                           ; $421a: $00
    ld [hl-], a                                   ; $421b: $32
    ld a, [hl+]                                   ; $421c: $2a
    dec l                                         ; $421d: $2d
    ld l, [hl]                                    ; $421e: $6e
    db $fd                                        ; $421f: $fd
    ld a, a                                       ; $4220: $7f
    ld [hl+], a                                   ; $4221: $22
    ld [$38b1], sp                                ; $4222: $08 $b1 $38
    rst $18                                       ; $4225: $df
    ld a, [hl]                                    ; $4226: $7e
    ld c, l                                       ; $4227: $4d
    ld l, $00                                     ; $4228: $2e $00
    nop                                           ; $422a: $00
    rst $38                                       ; $422b: $ff
    ld a, a                                       ; $422c: $7f
    ld c, h                                       ; $422d: $4c
    ld h, $00                                     ; $422e: $26 $00
    jr nz, jr_0b1_4232                            ; $4230: $20 $00

jr_0b1_4232:
    nop                                           ; $4232: $00
    rst $38                                       ; $4233: $ff
    ld a, a                                       ; $4234: $7f
    ld l, b                                       ; $4235: $68
    dec d                                         ; $4236: $15
    nop                                           ; $4237: $00
    jr nz, @+$22                                  ; $4238: $20 $20

    nop                                           ; $423a: $00
    ld c, h                                       ; $423b: $4c
    ld h, $ea                                     ; $423c: $26 $ea
    ld l, c                                       ; $423e: $69
    jr nz, jr_0b1_4275                            ; $423f: $20 $34

    nop                                           ; $4241: $00
    nop                                           ; $4242: $00
    ld [$7841], a                                 ; $4243: $ea $41 $78
    ld a, a                                       ; $4246: $7f
    ld b, b                                       ; $4247: $40
    ld b, b                                       ; $4248: $40
    ld [hl+], a                                   ; $4249: $22
    inc b                                         ; $424a: $04
    sub b                                         ; $424b: $90
    dec h                                         ; $424c: $25
    ld e, $4f                                     ; $424d: $1e $4f
    or a                                          ; $424f: $b7
    dec e                                         ; $4250: $1d
    nop                                           ; $4251: $00
    nop                                           ; $4252: $00
    ld b, h                                       ; $4253: $44
    ld l, l                                       ; $4254: $6d
    sbc [hl]                                      ; $4255: $9e

jr_0b1_4256:
    ld l, e                                       ; $4256: $6b
    ld l, $26                                     ; $4257: $2e $26
    ld hl, $3d04                                  ; $4259: $21 $04 $3d
    ld l, [hl]                                    ; $425c: $6e
    ld c, h                                       ; $425d: $4c
    ld h, $ff                                     ; $425e: $26 $ff
    ld a, a                                       ; $4260: $7f
    nop                                           ; $4261: $00
    nop                                           ; $4262: $00
    ld c, h                                       ; $4263: $4c
    ld h, $ff                                     ; $4264: $26 $ff
    ld a, a                                       ; $4266: $7f
    nop                                           ; $4267: $00
    jr nz, jr_0b1_426a                            ; $4268: $20 $00

jr_0b1_426a:
    nop                                           ; $426a: $00
    db $d3                                        ; $426b: $d3
    ld b, l                                       ; $426c: $45
    rst $38                                       ; $426d: $ff
    ld a, a                                       ; $426e: $7f
    inc l                                         ; $426f: $2c
    ld [hl+], a                                   ; $4270: $22
    nop                                           ; $4271: $00
    nop                                           ; $4272: $00
    inc l                                         ; $4273: $2c
    ld [hl+], a                                   ; $4274: $22

jr_0b1_4275:
    ccf                                           ; $4275: $3f
    ld a, a                                       ; $4276: $7f
    inc c                                         ; $4277: $0c
    inc h                                         ; $4278: $24
    nop                                           ; $4279: $00
    nop                                           ; $427a: $00
    inc l                                         ; $427b: $2c
    ld [hl+], a                                   ; $427c: $22
    ld a, [hl]                                    ; $427d: $7e
    ld h, e                                       ; $427e: $63
    sub h                                         ; $427f: $94
    ld b, b                                       ; $4280: $40
    ld h, h                                       ; $4281: $64
    ld [$3616], sp                                ; $4282: $08 $16 $36
    rra                                           ; $4285: $1f
    ld c, a                                       ; $4286: $4f
    dec bc                                        ; $4287: $0b
    dec d                                         ; $4288: $15
    nop                                           ; $4289: $00
    nop                                           ; $428a: $00
    ld c, l                                       ; $428b: $4d
    ld hl, $2636                                  ; $428c: $21 $36 $26
    dec hl                                        ; $428f: $2b
    ld [hl+], a                                   ; $4290: $22
    nop                                           ; $4291: $00
    nop                                           ; $4292: $00
    db $ed                                        ; $4293: $ed
    add hl, hl                                    ; $4294: $29
    ld a, [hl+]                                   ; $4295: $2a
    ld a, [hl]                                    ; $4296: $7e
    db $fd                                        ; $4297: $fd
    ld a, a                                       ; $4298: $7f
    nop                                           ; $4299: $00
    nop                                           ; $429a: $00
    dec hl                                        ; $429b: $2b
    ld [hl+], a                                   ; $429c: $22
    rst $38                                       ; $429d: $ff
    ld a, a                                       ; $429e: $7f
    nop                                           ; $429f: $00
    jr nz, jr_0b1_42a2                            ; $42a0: $20 $00

jr_0b1_42a2:
    nop                                           ; $42a2: $00
    rst $38                                       ; $42a3: $ff
    ld a, a                                       ; $42a4: $7f
    dec hl                                        ; $42a5: $2b
    ld [hl+], a                                   ; $42a6: $22
    nop                                           ; $42a7: $00
    jr nz, jr_0b1_42aa                            ; $42a8: $20 $00

jr_0b1_42aa:
    nop                                           ; $42aa: $00
    rst $38                                       ; $42ab: $ff
    ld a, a                                       ; $42ac: $7f
    ld c, d                                       ; $42ad: $4a
    add hl, hl                                    ; $42ae: $29
    ld a, [bc]                                    ; $42af: $0a
    ld e, $00                                     ; $42b0: $1e $00
    nop                                           ; $42b2: $00
    dec bc                                        ; $42b3: $0b
    ld [hl+], a                                   ; $42b4: $22
    dec c                                         ; $42b5: $0d
    jr z, @+$33                                   ; $42b6: $28 $31

    ld e, $2d                                     ; $42b8: $1e $2d
    dec e                                         ; $42ba: $1d
    sbc h                                         ; $42bb: $9c
    ld b, d                                       ; $42bc: $42
    ld e, a                                       ; $42bd: $5f
    ld e, e                                       ; $42be: $5b
    rst $10                                       ; $42bf: $d7
    ld sp, $0000                                  ; $42c0: $31 $00 $00
    sub a                                         ; $42c3: $97
    ld [hl+], a                                   ; $42c4: $22
    ld [$7e1d], a                                 ; $42c5: $ea $1d $7e
    ld e, a                                       ; $42c8: $5f
    nop                                           ; $42c9: $00
    nop                                           ; $42ca: $00
    sbc a                                         ; $42cb: $9f
    ld a, a                                       ; $42cc: $7f
    add b                                         ; $42cd: $80
    ld e, b                                       ; $42ce: $58
    ld [$001d], a                                 ; $42cf: $ea $1d $00
    nop                                           ; $42d2: $00
    rst $38                                       ; $42d3: $ff
    ld a, a                                       ; $42d4: $7f
    ld [$001d], a                                 ; $42d5: $ea $1d $00
    jr nz, jr_0b1_42da                            ; $42d8: $20 $00

jr_0b1_42da:
    nop                                           ; $42da: $00
    inc l                                         ; $42db: $2c
    ld l, d                                       ; $42dc: $6a
    rst $38                                       ; $42dd: $ff
    ld a, a                                       ; $42de: $7f
    ld hl, $0028                                  ; $42df: $21 $28 $00
    nop                                           ; $42e2: $00
    rst $38                                       ; $42e3: $ff
    ld a, a                                       ; $42e4: $7f
    ret                                           ; $42e5: $c9


    add hl, de                                    ; $42e6: $19
    ld [$001d], a                                 ; $42e7: $ea $1d $00
    nop                                           ; $42ea: $00
    sbc h                                         ; $42eb: $9c
    inc sp                                        ; $42ec: $33
    ld [$fe1d], a                                 ; $42ed: $ea $1d $fe

jr_0b1_42f0:
    ld e, e                                       ; $42f0: $5b
    nop                                           ; $42f1: $00
    inc b                                         ; $42f2: $04
    db $dd                                        ; $42f3: $dd
    ld b, [hl]                                    ; $42f4: $46
    sub c                                         ; $42f5: $91
    dec h                                         ; $42f6: $25
    cp a                                          ; $42f7: $bf
    ld h, e                                       ; $42f8: $63
    nop                                           ; $42f9: $00
    nop                                           ; $42fa: $00
    ld e, h                                       ; $42fb: $5c
    inc hl                                        ; $42fc: $23
    ret                                           ; $42fd: $c9


    add hl, de                                    ; $42fe: $19
    rst $38                                       ; $42ff: $ff
    ld [hl], e                                    ; $4300: $73
    nop                                           ; $4301: $00
    nop                                           ; $4302: $00
    ret                                           ; $4303: $c9


    add hl, de                                    ; $4304: $19
    ld [hl], h                                    ; $4305: $74
    ld b, b                                       ; $4306: $40
    add hl, bc                                    ; $4307: $09
    jr jr_0b1_430a                                ; $4308: $18 $00

jr_0b1_430a:
    nop                                           ; $430a: $00
    rst $38                                       ; $430b: $ff
    ld a, a                                       ; $430c: $7f
    ret                                           ; $430d: $c9


    add hl, de                                    ; $430e: $19
    nop                                           ; $430f: $00
    jr nz, jr_0b1_4312                            ; $4310: $20 $00

jr_0b1_4312:
    nop                                           ; $4312: $00
    rst $38                                       ; $4313: $ff
    ld a, a                                       ; $4314: $7f
    add b                                         ; $4315: $80
    ld h, b                                       ; $4316: $60
    ld b, c                                       ; $4317: $41
    jr nz, jr_0b1_431a                            ; $4318: $20 $00

jr_0b1_431a:
    nop                                           ; $431a: $00
    xor b                                         ; $431b: $a8
    dec d                                         ; $431c: $15
    ret                                           ; $431d: $c9


    add hl, de                                    ; $431e: $19
    xor c                                         ; $431f: $a9
    dec d                                         ; $4320: $15
    nop                                           ; $4321: $00
    inc b                                         ; $4322: $04
    ld a, $13                                     ; $4323: $3e $13
    sbc $5f                                       ; $4325: $de $5f
    xor b                                         ; $4327: $a8
    dec d                                         ; $4328: $15
    ld bc, $d400                                  ; $4329: $01 $00 $d4
    add hl, de                                    ; $432c: $19
    ld e, $4f                                     ; $432d: $1e $4f
    ccf                                           ; $432f: $3f
    inc bc                                        ; $4330: $03
    nop                                           ; $4331: $00
    nop                                           ; $4332: $00
    ld a, a                                       ; $4333: $7f
    rrca                                          ; $4334: $0f
    ld l, e                                       ; $4335: $6b
    add hl, bc                                    ; $4336: $09
    rst $38                                       ; $4337: $ff
    ld d, e                                       ; $4338: $53
    nop                                           ; $4339: $00
    nop                                           ; $433a: $00
    or $5e                                        ; $433b: $f6 $5e
    adc b                                         ; $433d: $88
    dec d                                         ; $433e: $15
    rst $38                                       ; $433f: $ff
    ld a, a                                       ; $4340: $7f
    nop                                           ; $4341: $00
    nop                                           ; $4342: $00
    rst $38                                       ; $4343: $ff
    ld a, a                                       ; $4344: $7f
    nop                                           ; $4345: $00
    jr nz, jr_0b1_42f0                            ; $4346: $20 $a8

    add hl, de                                    ; $4348: $19
    nop                                           ; $4349: $00
    inc b                                         ; $434a: $04
    adc c                                         ; $434b: $89
    ld de, $0bbf                                  ; $434c: $11 $bf $0b
    nop                                           ; $434f: $00

jr_0b1_4350:
    jr nz, @-$77                                  ; $4350: $20 $87

    ld de, $1588                                  ; $4352: $11 $88 $15
    cp a                                          ; $4355: $bf
    dec bc                                        ; $4356: $0b
    nop                                           ; $4357: $00
    jr nz, jr_0b1_435a                            ; $4358: $20 $00

jr_0b1_435a:
    inc b                                         ; $435a: $04
    inc a                                         ; $435b: $3c
    rrca                                          ; $435c: $0f
    db $dd                                        ; $435d: $dd
    ld d, a                                       ; $435e: $57
    add a                                         ; $435f: $87
    ld de, $0400                                  ; $4360: $11 $00 $04
    ld d, $32                                     ; $4363: $16 $32
    ld a, a                                       ; $4365: $7f
    ld h, e                                       ; $4366: $63
    and b                                         ; $4367: $a0
    ld d, h                                       ; $4368: $54
    ld b, c                                       ; $4369: $41
    inc b                                         ; $436a: $04
    sbc a                                         ; $436b: $9f
    rrca                                          ; $436c: $0f
    db $dd                                        ; $436d: $dd
    ld d, a                                       ; $436e: $57
    ld h, b                                       ; $436f: $60
    ld b, h                                       ; $4370: $44
    nop                                           ; $4371: $00
    nop                                           ; $4372: $00
    ld d, d                                       ; $4373: $52
    ld c, d                                       ; $4374: $4a
    ld h, a                                       ; $4375: $67
    ld de, $4e74                                  ; $4376: $11 $74 $4e
    nop                                           ; $4379: $00
    nop                                           ; $437a: $00
    cp e                                          ; $437b: $bb
    ld a, a                                       ; $437c: $7f
    xor h                                         ; $437d: $ac
    ld b, l                                       ; $437e: $45
    nop                                           ; $437f: $00
    jr nz, jr_0b1_4382                            ; $4380: $20 $00

jr_0b1_4382:
    nop                                           ; $4382: $00
    pop de                                        ; $4383: $d1
    ld de, $17bf                                  ; $4384: $11 $bf $17
    nop                                           ; $4387: $00
    jr nz, jr_0b1_438a                            ; $4388: $20 $00

jr_0b1_438a:
    inc b                                         ; $438a: $04
    ld h, a                                       ; $438b: $67
    ld de, $273a                                  ; $438c: $11 $3a $27
    adc $15                                       ; $438f: $ce $15
    nop                                           ; $4391: $00
    inc b                                         ; $4392: $04
    sbc $47                                       ; $4393: $de $47
    adc c                                         ; $4395: $89
    ld l, c                                       ; $4396: $69
    or e                                          ; $4397: $b3
    ld bc, $0400                                  ; $4398: $01 $00 $04
    ld a, h                                       ; $439b: $7c
    ld [hl], $9f                                  ; $439c: $36 $9f
    ld h, a                                       ; $439e: $67
    inc c                                         ; $439f: $0c
    ld de, $1800                                  ; $43a0: $11 $00 $18
    inc e                                         ; $43a3: $1c
    inc de                                        ; $43a4: $13
    rst $38                                       ; $43a5: $ff
    ld d, e                                       ; $43a6: $53
    dec bc                                        ; $43a7: $0b
    ld bc, $0000                                  ; $43a8: $01 $00 $00
    cp a                                          ; $43ab: $bf
    inc hl                                        ; $43ac: $23
    ld b, l                                       ; $43ad: $45
    dec c                                         ; $43ae: $0d
    ld b, [hl]                                    ; $43af: $46
    dec c                                         ; $43b0: $0d
    nop                                           ; $43b1: $00
    inc e                                         ; $43b2: $1c
    cp a                                          ; $43b3: $bf
    dec bc                                        ; $43b4: $0b
    ld bc, $ff6d                                  ; $43b5: $01 $6d $ff
    ld a, a                                       ; $43b8: $7f
    nop                                           ; $43b9: $00
    nop                                           ; $43ba: $00
    sbc a                                         ; $43bb: $9f
    rra                                           ; $43bc: $1f
    rst $38                                       ; $43bd: $ff
    ld a, a                                       ; $43be: $7f
    nop                                           ; $43bf: $00
    jr nz, jr_0b1_4350                            ; $43c0: $20 $8e

    dec d                                         ; $43c2: $15
    ld e, h                                       ; $43c3: $5c
    dec de                                        ; $43c4: $1b
    or l                                          ; $43c5: $b5
    ld c, d                                       ; $43c6: $4a
    rst $38                                       ; $43c7: $ff
    ld d, e                                       ; $43c8: $53
    jr nz, jr_0b1_43db                            ; $43c9: $20 $10

    jp nc, $9b7e                                  ; $43cb: $d2 $7e $9b

    ccf                                           ; $43ce: $3f
    rst $38                                       ; $43cf: $ff
    ld h, a                                       ; $43d0: $67
    nop                                           ; $43d1: $00
    nop                                           ; $43d2: $00
    ld e, e                                       ; $43d3: $5b
    ld l, $0a                                     ; $43d4: $2e $0a
    add hl, de                                    ; $43d6: $19
    ld e, $53                                     ; $43d7: $1e $53
    nop                                           ; $43d9: $00
    nop                                           ; $43da: $00

jr_0b1_43db:
    call $ff49                                    ; $43db: $cd $49 $ff
    ld h, a                                       ; $43de: $67
    call c, $0002                                 ; $43df: $dc $02 $00
    nop                                           ; $43e2: $00
    ld e, a                                       ; $43e3: $5f
    inc bc                                        ; $43e4: $03
    ld b, $05                                     ; $43e5: $06 $05
    sbc $3f                                       ; $43e7: $de $3f
    nop                                           ; $43e9: $00
    nop                                           ; $43ea: $00
    cp a                                          ; $43eb: $bf
    dec bc                                        ; $43ec: $0b
    rst $38                                       ; $43ed: $ff
    ld a, a                                       ; $43ee: $7f
    nop                                           ; $43ef: $00
    jr nz, jr_0b1_43f2                            ; $43f0: $20 $00

jr_0b1_43f2:
    nop                                           ; $43f2: $00
    rst $38                                       ; $43f3: $ff
    ld a, a                                       ; $43f4: $7f
    nop                                           ; $43f5: $00

jr_0b1_43f6:
    jr nz, @+$01                                  ; $43f6: $20 $ff

    ld h, a                                       ; $43f8: $67
    jr nz, jr_0b1_43fb                            ; $43f9: $20 $00

jr_0b1_43fb:
    ld [hl], e                                    ; $43fb: $73
    ld [hl+], a                                   ; $43fc: $22
    rst $38                                       ; $43fd: $ff
    ld d, a                                       ; $43fe: $57
    ld a, [c]                                     ; $43ff: $f2
    ld bc, $0400                                  ; $4400: $01 $00 $04
    ld [de], a                                    ; $4403: $12
    ld c, d                                       ; $4404: $4a
    cp l                                          ; $4405: $bd
    ld [hl], a                                    ; $4406: $77
    add $18                                       ; $4407: $c6 $18
    nop                                           ; $4409: $00
    nop                                           ; $440a: $00
    rrca                                          ; $440b: $0f
    add hl, sp                                    ; $440c: $39
    dec a                                         ; $440d: $3d
    ld e, e                                       ; $440e: $5b
    add hl, hl                                    ; $440f: $29
    inc h                                         ; $4410: $24
    nop                                           ; $4411: $00
    nop                                           ; $4412: $00
    scf                                           ; $4413: $37
    ld e, d                                       ; $4414: $5a
    add hl, bc                                    ; $4415: $09
    dec h                                         ; $4416: $25
    db $dd                                        ; $4417: $dd
    ld a, e                                       ; $4418: $7b
    ld bc, $ef00                                  ; $4419: $01 $00 $ef
    ld b, c                                       ; $441c: $41
    rst $38                                       ; $441d: $ff
    ld e, e                                       ; $441e: $5b
    or [hl]                                       ; $441f: $b6
    ld [hl+], a                                   ; $4420: $22
    nop                                           ; $4421: $00
    nop                                           ; $4422: $00
    jp c, $ff12                                   ; $4423: $da $12 $ff

    dec hl                                        ; $4426: $2b
    nop                                           ; $4427: $00
    jr nz, jr_0b1_442a                            ; $4428: $20 $00

jr_0b1_442a:
    nop                                           ; $442a: $00
    rst $38                                       ; $442b: $ff
    ld a, a                                       ; $442c: $7f
    nop                                           ; $442d: $00
    jr nz, jr_0b1_43f6                            ; $442e: $20 $c6

    jr jr_0b1_4452                                ; $4430: $18 $20

    inc b                                         ; $4432: $04
    sbc [hl]                                      ; $4433: $9e
    inc sp                                        ; $4434: $33
    sbc $7b                                       ; $4435: $de $7b
    ld l, $01                                     ; $4437: $2e $01
    nop                                           ; $4439: $00
    nop                                           ; $443a: $00
    ld [hl], $52                                  ; $443b: $36 $52
    sbc l                                         ; $443d: $9d
    ld [hl], a                                    ; $443e: $77
    jp hl                                         ; $443f: $e9


    inc e                                         ; $4440: $1c
    nop                                           ; $4441: $00
    inc b                                         ; $4442: $04
    or d                                          ; $4443: $b2
    ld d, l                                       ; $4444: $55
    ld b, a                                       ; $4445: $47
    jr nz, @-$45                                  ; $4446: $20 $b9

    ld a, a                                       ; $4448: $7f
    nop                                           ; $4449: $00
    nop                                           ; $444a: $00
    xor $30                                       ; $444b: $ee $30
    ld a, d                                       ; $444d: $7a
    ld h, [hl]                                    ; $444e: $66
    inc bc                                        ; $444f: $03
    inc e                                         ; $4450: $1c
    ld h, e                                       ; $4451: $63

jr_0b1_4452:
    nop                                           ; $4452: $00
    sbc $73                                       ; $4453: $de $73
    ld [hl], e                                    ; $4455: $73
    ld d, $31                                     ; $4456: $16 $31
    ld b, [hl]                                    ; $4458: $46
    nop                                           ; $4459: $00
    nop                                           ; $445a: $00
    ld hl, sp+$01                                 ; $445b: $f8 $01
    nop                                           ; $445d: $00
    jr nz, @+$21                                  ; $445e: $20 $1f

    inc bc                                        ; $4460: $03
    nop                                           ; $4461: $00
    nop                                           ; $4462: $00
    cp a                                          ; $4463: $bf
    dec bc                                        ; $4464: $0b
    nop                                           ; $4465: $00
    inc e                                         ; $4466: $1c
    rst $38                                       ; $4467: $ff
    cpl                                           ; $4468: $2f
    ld b, e                                       ; $4469: $43
    inc b                                         ; $446a: $04
    ld d, l                                       ; $446b: $55
    ld e, $bd                                     ; $446c: $1e $bd
    ld a, e                                       ; $446e: $7b
    rst $38                                       ; $446f: $ff
    scf                                           ; $4470: $37
    nop                                           ; $4471: $00
    inc b                                         ; $4472: $04
    sbc e                                         ; $4473: $9b

jr_0b1_4474:
    ld [hl], a                                    ; $4474: $77
    daa                                           ; $4475: $27
    ld sp, $304f                                  ; $4476: $31 $4f $30
    nop                                           ; $4479: $00
    inc b                                         ; $447a: $04
    sub b                                         ; $447b: $90
    ld c, l                                       ; $447c: $4d
    ld b, l                                       ; $447d: $45
    jr z, jr_0b1_4474                             ; $447e: $28 $f4

    halt                                          ; $4480: $76
    nop                                           ; $4481: $00
    nop                                           ; $4482: $00
    sub $4d                                       ; $4483: $d6 $4d
    ld c, c                                       ; $4485: $49
    jr nz, @+$01                                  ; $4486: $20 $ff

    ld a, a                                       ; $4488: $7f
    ld hl, $7f04                                  ; $4489: $21 $04 $7f
    dec de                                        ; $448c: $1b
    di                                            ; $448d: $f3
    dec e                                         ; $448e: $1d
    sbc $77                                       ; $448f: $de $77
    nop                                           ; $4491: $00
    nop                                           ; $4492: $00
    cp a                                          ; $4493: $bf
    dec bc                                        ; $4494: $0b
    rst $38                                       ; $4495: $ff
    ld [hl], a                                    ; $4496: $77
    nop                                           ; $4497: $00
    jr nz, jr_0b1_449a                            ; $4498: $20 $00

jr_0b1_449a:
    nop                                           ; $449a: $00
    cp a                                          ; $449b: $bf
    rla                                           ; $449c: $17
    dec l                                         ; $449d: $2d
    dec b                                         ; $449e: $05
    nop                                           ; $449f: $00
    jr nz, jr_0b1_44a2                            ; $44a0: $20 $00

jr_0b1_44a2:
    nop                                           ; $44a2: $00
    db $10                                        ; $44a3: $10
    ld c, [hl]                                    ; $44a4: $4e
    sbc $63                                       ; $44a5: $de $63
    ld c, d                                       ; $44a7: $4a
    ld hl, $0001                                  ; $44a8: $21 $01 $00
    sbc b                                         ; $44ab: $98
    ld a, a                                       ; $44ac: $7f
    dec b                                         ; $44ad: $05
    ld c, c                                       ; $44ae: $49
    dec bc                                        ; $44af: $0b
    jr jr_0b1_44b2                                ; $44b0: $18 $00

jr_0b1_44b2:
    inc c                                         ; $44b2: $0c
    xor h                                         ; $44b3: $ac
    dec a                                         ; $44b4: $3d
    adc l                                         ; $44b5: $8d
    ld a, [hl]                                    ; $44b6: $7e
    di                                            ; $44b7: $f3
    ld b, b                                       ; $44b8: $40
    nop                                           ; $44b9: $00
    inc c                                         ; $44ba: $0c
    sbc b                                         ; $44bb: $98
    ld a, a                                       ; $44bc: $7f
    ld [hl+], a                                   ; $44bd: $22
    ld a, c                                       ; $44be: $79
    ld c, l                                       ; $44bf: $4d
    jr z, jr_0b1_4505                             ; $44c0: $28 $43

    inc b                                         ; $44c2: $04
    db $10                                        ; $44c3: $10
    ld a, $9c                                     ; $44c4: $3e $9c
    ld [hl], e                                    ; $44c6: $73
    cp d                                          ; $44c7: $ba
    ld c, $00                                     ; $44c8: $0e $00
    nop                                           ; $44ca: $00
    rst $18                                       ; $44cb: $df
    rla                                           ; $44cc: $17
    rst $38                                       ; $44cd: $ff
    ld e, e                                       ; $44ce: $5b
    nop                                           ; $44cf: $00
    jr nz, jr_0b1_44d2                            ; $44d0: $20 $00

jr_0b1_44d2:
    nop                                           ; $44d2: $00
    nop                                           ; $44d3: $00
    jr nz, jr_0b1_44db                            ; $44d4: $20 $05

    ld c, c                                       ; $44d6: $49
    dec bc                                        ; $44d7: $0b
    jr jr_0b1_44fc                                ; $44d8: $18 $22

    nop                                           ; $44da: $00

jr_0b1_44db:
    ld e, a                                       ; $44db: $5f
    inc de                                        ; $44dc: $13
    rst $38                                       ; $44dd: $ff
    ld a, a                                       ; $44de: $7f
    adc b                                         ; $44df: $88
    ld l, c                                       ; $44e0: $69
    ld bc, $0200                                  ; $44e1: $01 $00 $02
    ld e, c                                       ; $44e4: $59
    ld b, h                                       ; $44e5: $44
    inc h                                         ; $44e6: $24
    ld l, a                                       ; $44e7: $6f
    halt                                          ; $44e8: $76
    nop                                           ; $44e9: $00
    nop                                           ; $44ea: $00
    db $d3                                        ; $44eb: $d3
    ld [hl], d                                    ; $44ec: $72
    inc h                                         ; $44ed: $24
    dec a                                         ; $44ee: $3d
    cpl                                           ; $44ef: $2f
    inc l                                         ; $44f0: $2c
    nop                                           ; $44f1: $00
    inc b                                         ; $44f2: $04
    nop                                           ; $44f3: $00
    ld a, c                                       ; $44f4: $79
    ld b, a                                       ; $44f5: $47
    jr z, @+$59                                   ; $44f6: $28 $57

    ld [hl], a                                    ; $44f8: $77
    nop                                           ; $44f9: $00
    inc c                                         ; $44fa: $0c
    xor l                                         ; $44fb: $ad

jr_0b1_44fc:
    dec d                                         ; $44fc: $15
    rst $18                                       ; $44fd: $df
    rla                                           ; $44fe: $17
    ld c, [hl]                                    ; $44ff: $4e
    ld l, d                                       ; $4500: $6a
    nop                                           ; $4501: $00
    nop                                           ; $4502: $00
    rst $38                                       ; $4503: $ff
    ld d, e                                       ; $4504: $53

jr_0b1_4505:
    or e                                          ; $4505: $b3
    ld bc, $2000                                  ; $4506: $01 $00 $20
    nop                                           ; $4509: $00
    nop                                           ; $450a: $00
    nop                                           ; $450b: $00
    jr nz, jr_0b1_4552                            ; $450c: $20 $44

    inc h                                         ; $450e: $24
    ld l, a                                       ; $450f: $6f
    halt                                          ; $4510: $76
    ld bc, $dd04                                  ; $4511: $01 $04 $dd
    ld b, $eb                                     ; $4514: $06 $eb
    ld l, c                                       ; $4516: $69
    rst $38                                       ; $4517: $ff
    ld a, a                                       ; $4518: $7f
    nop                                           ; $4519: $00
    nop                                           ; $451a: $00
    dec h                                         ; $451b: $25
    ld c, l                                       ; $451c: $4d
    adc a                                         ; $451d: $8f
    ld a, [hl]                                    ; $451e: $7e
    inc b                                         ; $451f: $04
    jr jr_0b1_4523                                ; $4520: $18 $01

    nop                                           ; $4522: $00

jr_0b1_4523:
    rla                                           ; $4523: $17

jr_0b1_4524:
    dec de                                        ; $4524: $1b
    ld b, [hl]                                    ; $4525: $46
    ld b, l                                       ; $4526: $45
    inc c                                         ; $4527: $0c
    jr nz, jr_0b1_452a                            ; $4528: $20 $00

jr_0b1_452a:
    inc c                                         ; $452a: $0c
    sub c                                         ; $452b: $91
    ld h, [hl]                                    ; $452c: $66
    db $dd                                        ; $452d: $dd
    ld a, a                                       ; $452e: $7f
    call $0139                                    ; $452f: $cd $39 $01
    inc b                                         ; $4532: $04
    or h                                          ; $4533: $b4
    ld b, h                                       ; $4534: $44
    ld [hl], a                                    ; $4535: $77
    ld h, d                                       ; $4536: $62
    inc de                                        ; $4537: $13
    ld c, $00                                     ; $4538: $0e $00
    nop                                           ; $453a: $00
    jp nc, Jump_000_0015                          ; $453b: $d2 $15 $00

    jr nz, jr_0b1_457e                            ; $453e: $20 $3e

    scf                                           ; $4540: $37
    nop                                           ; $4541: $00
    jr nz, jr_0b1_4569                            ; $4542: $20 $25

    ld c, l                                       ; $4544: $4d
    adc a                                         ; $4545: $8f
    ld a, [hl]                                    ; $4546: $7e
    inc b                                         ; $4547: $04
    jr jr_0b1_454a                                ; $4548: $18 $00

jr_0b1_454a:
    nop                                           ; $454a: $00
    ld e, e                                       ; $454b: $5b
    ld b, d                                       ; $454c: $42
    ld c, l                                       ; $454d: $4d
    ld hl, $7fff                                  ; $454e: $21 $ff $7f
    nop                                           ; $4551: $00

jr_0b1_4552:
    inc b                                         ; $4552: $04
    ld d, d                                       ; $4553: $52
    ld [hl], $9a                                  ; $4554: $36 $9a
    ld a, a                                       ; $4556: $7f
    and $30                                       ; $4557: $e6 $30
    nop                                           ; $4559: $00
    nop                                           ; $455a: $00
    push de                                       ; $455b: $d5
    ld d, $9c                                     ; $455c: $16 $9c
    ld [hl], e                                    ; $455e: $73
    nop                                           ; $455f: $00
    ld d, b                                       ; $4560: $50
    ld bc, $b500                                  ; $4561: $01 $00 $b5
    ld e, d                                       ; $4564: $5a
    adc d                                         ; $4565: $8a
    dec a                                         ; $4566: $3d
    rst $38                                       ; $4567: $ff
    ld a, a                                       ; $4568: $7f

jr_0b1_4569:
    ld bc, $7a04                                  ; $4569: $01 $04 $7a
    ld h, d                                       ; $456c: $62
    xor [hl]                                      ; $456d: $ae
    jr nz, @+$01                                  ; $456e: $20 $ff

    ld a, a                                       ; $4570: $7f
    nop                                           ; $4571: $00
    nop                                           ; $4572: $00
    nop                                           ; $4573: $00
    jr nz, jr_0b1_4524                            ; $4574: $20 $ae

    jr nz, @+$01                                  ; $4576: $20 $ff

    ld a, a                                       ; $4578: $7f
    nop                                           ; $4579: $00
    jr nz, jr_0b1_45ce                            ; $457a: $20 $52

    ld [hl], $9a                                  ; $457c: $36 $9a

jr_0b1_457e:
    ld a, a                                       ; $457e: $7f
    and $30                                       ; $457f: $e6 $30
    ld bc, $5b08                                  ; $4581: $01 $08 $5b
    ld [hl], d                                    ; $4584: $72

jr_0b1_4585:
    ld c, h                                       ; $4585: $4c
    jr z, @+$01                                   ; $4586: $28 $ff

    ld a, a                                       ; $4588: $7f
    nop                                           ; $4589: $00
    nop                                           ; $458a: $00
    pop de                                        ; $458b: $d1
    ld c, c                                       ; $458c: $49
    ld a, h                                       ; $458d: $7c
    ld [hl], e                                    ; $458e: $73
    push de                                       ; $458f: $d5
    ld [de], a                                    ; $4590: $12
    and l                                         ; $4591: $a5
    inc d                                         ; $4592: $14
    ld [hl], e                                    ; $4593: $73
    ld l, $5a                                     ; $4594: $2e $5a
    ld [hl], e                                    ; $4596: $73
    nop                                           ; $4597: $00
    ld d, h                                       ; $4598: $54
    ld [bc], a                                    ; $4599: $02
    inc b                                         ; $459a: $04
    halt                                          ; $459b: $76
    ld d, [hl]                                    ; $459c: $56
    call $ff2c                                    ; $459d: $cd $2c $ff
    ld a, a                                       ; $45a0: $7f
    ld [bc], a                                    ; $45a1: $02
    inc b                                         ; $45a2: $04
    sbc [hl]                                      ; $45a3: $9e
    ld a, e                                       ; $45a4: $7b
    dec bc                                        ; $45a5: $0b
    jr nz, jr_0b1_45a8                            ; $45a6: $20 $00

jr_0b1_45a8:
    jr nz, jr_0b1_45aa                            ; $45a8: $20 $00

jr_0b1_45aa:
    jr nz, jr_0b1_454a                            ; $45aa: $20 $9e

    ld a, e                                       ; $45ac: $7b
    dec bc                                        ; $45ad: $0b
    jr nz, jr_0b1_45b0                            ; $45ae: $20 $00

jr_0b1_45b0:
    jr nz, jr_0b1_45b2                            ; $45b0: $20 $00

jr_0b1_45b2:
    jr nz, jr_0b1_4585                            ; $45b2: $20 $d1

    ld c, c                                       ; $45b4: $49
    ld a, h                                       ; $45b5: $7c
    ld [hl], e                                    ; $45b6: $73
    push de                                       ; $45b7: $d5
    ld [de], a                                    ; $45b8: $12
    nop                                           ; $45b9: $00
    nop                                           ; $45ba: $00
    sbc c                                         ; $45bb: $99
    ld e, c                                       ; $45bc: $59
    rst $38                                       ; $45bd: $ff
    ld a, a                                       ; $45be: $7f
    ld bc, $001c                                  ; $45bf: $01 $1c $00
    nop                                           ; $45c2: $00
    ld [hl], c                                    ; $45c3: $71
    ld b, l                                       ; $45c4: $45
    cp l                                          ; $45c5: $bd
    ld l, [hl]                                    ; $45c6: $6e
    ld sp, $000a                                  ; $45c7: $31 $0a $00
    nop                                           ; $45ca: $00
    rst $38                                       ; $45cb: $ff
    ld a, a                                       ; $45cc: $7f
    dec bc                                        ; $45cd: $0b

jr_0b1_45ce:
    jr nz, jr_0b1_45d0                            ; $45ce: $20 $00

jr_0b1_45d0:
    jr nz, jr_0b1_45d2                            ; $45d0: $20 $00

jr_0b1_45d2:
    nop                                           ; $45d2: $00
    rst $38                                       ; $45d3: $ff
    ld a, a                                       ; $45d4: $7f
    dec bc                                        ; $45d5: $0b
    jr nz, jr_0b1_45d8                            ; $45d6: $20 $00

jr_0b1_45d8:
    jr nz, jr_0b1_45da                            ; $45d8: $20 $00

jr_0b1_45da:
    nop                                           ; $45da: $00
    rst $38                                       ; $45db: $ff
    ld a, a                                       ; $45dc: $7f
    nop                                           ; $45dd: $00
    jr nz, jr_0b1_45e0                            ; $45de: $20 $00

jr_0b1_45e0:
    jr nz, jr_0b1_45e2                            ; $45e0: $20 $00

jr_0b1_45e2:
    jr nz, @+$01                                  ; $45e2: $20 $ff

    ld a, a                                       ; $45e4: $7f
    nop                                           ; $45e5: $00
    jr nz, jr_0b1_45e8                            ; $45e6: $20 $00

jr_0b1_45e8:
    jr nz, jr_0b1_45ea                            ; $45e8: $20 $00

jr_0b1_45ea:
    jr nz, @+$73                                  ; $45ea: $20 $71

    ld b, l                                       ; $45ec: $45
    cp l                                          ; $45ed: $bd
    ld l, [hl]                                    ; $45ee: $6e
    ld sp, $000a                                  ; $45ef: $31 $0a $00
    nop                                           ; $45f2: $00
    rst $38                                       ; $45f3: $ff
    ld a, a                                       ; $45f4: $7f
    nop                                           ; $45f5: $00
    jr nz, jr_0b1_4629                            ; $45f6: $20 $31

    ld a, [bc]                                    ; $45f8: $0a
    nop                                           ; $45f9: $00
    nop                                           ; $45fa: $00
    rst $38                                       ; $45fb: $ff
    ld a, a                                       ; $45fc: $7f
    nop                                           ; $45fd: $00
    jr nz, jr_0b1_4631                            ; $45fe: $20 $31

    ld a, [bc]                                    ; $4600: $0a
    nop                                           ; $4601: $00
    nop                                           ; $4602: $00
    nop                                           ; $4603: $00
    jr nz, jr_0b1_4606                            ; $4604: $20 $00

jr_0b1_4606:
    jr nz, jr_0b1_4608                            ; $4606: $20 $00

jr_0b1_4608:
    jr nz, jr_0b1_460a                            ; $4608: $20 $00

jr_0b1_460a:
    nop                                           ; $460a: $00
    nop                                           ; $460b: $00
    jr nz, jr_0b1_460e                            ; $460c: $20 $00

jr_0b1_460e:
    jr nz, jr_0b1_4610                            ; $460e: $20 $00

jr_0b1_4610:
    jr nz, jr_0b1_4612                            ; $4610: $20 $00

jr_0b1_4612:
    nop                                           ; $4612: $00
    nop                                           ; $4613: $00
    jr nz, jr_0b1_4616                            ; $4614: $20 $00

jr_0b1_4616:
    jr nz, jr_0b1_4618                            ; $4616: $20 $00

jr_0b1_4618:
    jr nz, jr_0b1_461a                            ; $4618: $20 $00

jr_0b1_461a:
    jr nz, jr_0b1_461c                            ; $461a: $20 $00

jr_0b1_461c:
    jr nz, jr_0b1_461e                            ; $461c: $20 $00

jr_0b1_461e:
    jr nz, jr_0b1_4620                            ; $461e: $20 $00

jr_0b1_4620:
    jr nz, jr_0b1_4622                            ; $4620: $20 $00

jr_0b1_4622:
    jr nz, jr_0b1_4624                            ; $4622: $20 $00

jr_0b1_4624:
    jr nz, jr_0b1_463e                            ; $4624: $20 $18

    ld [hl], a                                    ; $4626: $77
    ld c, b                                       ; $4627: $48
    ld b, l                                       ; $4628: $45

jr_0b1_4629:
    nop                                           ; $4629: $00
    jr nz, jr_0b1_462c                            ; $462a: $20 $00

jr_0b1_462c:
    jr nz, jr_0b1_4646                            ; $462c: $20 $18

    ld [hl], a                                    ; $462e: $77
    ld c, b                                       ; $462f: $48
    ld b, l                                       ; $4630: $45

jr_0b1_4631:
    nop                                           ; $4631: $00
    jr nz, jr_0b1_4634                            ; $4632: $20 $00

jr_0b1_4634:
    jr nz, jr_0b1_464e                            ; $4634: $20 $18

    ld [hl], a                                    ; $4636: $77
    ld c, b                                       ; $4637: $48
    ld b, l                                       ; $4638: $45
    nop                                           ; $4639: $00
    jr nz, jr_0b1_45d0                            ; $463a: $20 $94

    ld [hl], d                                    ; $463c: $72
    sbc h                                         ; $463d: $9c

jr_0b1_463e:
    ld a, e                                       ; $463e: $7b
    cp l                                          ; $463f: $bd
    ld a, e                                       ; $4640: $7b
    nop                                           ; $4641: $00
    jr nz, jr_0b1_45d8                            ; $4642: $20 $94

    ld [hl], d                                    ; $4644: $72
    sbc h                                         ; $4645: $9c

jr_0b1_4646:
    ld a, e                                       ; $4646: $7b
    cp l                                          ; $4647: $bd
    ld a, e                                       ; $4648: $7b
    nop                                           ; $4649: $00
    jr nz, jr_0b1_45e0                            ; $464a: $20 $94

    ld [hl], d                                    ; $464c: $72
    sbc h                                         ; $464d: $9c

jr_0b1_464e:
    ld a, e                                       ; $464e: $7b
    cp l                                          ; $464f: $bd
    ld a, e                                       ; $4650: $7b
    nop                                           ; $4651: $00
    jr nz, jr_0b1_45e8                            ; $4652: $20 $94

    ld [hl], d                                    ; $4654: $72
    sbc h                                         ; $4655: $9c
    ld a, e                                       ; $4656: $7b
    cp l                                          ; $4657: $bd
    ld a, e                                       ; $4658: $7b
    nop                                           ; $4659: $00
    jr nz, jr_0b1_465c                            ; $465a: $20 $00

jr_0b1_465c:
    jr nz, jr_0b1_4676                            ; $465c: $20 $18

    ld [hl], a                                    ; $465e: $77
    ld c, b                                       ; $465f: $48
    ld b, l                                       ; $4660: $45
    nop                                           ; $4661: $00
    jr nz, jr_0b1_4664                            ; $4662: $20 $00

jr_0b1_4664:
    jr nz, @+$1a                                  ; $4664: $20 $18

    ld [hl], a                                    ; $4666: $77
    ld c, b                                       ; $4667: $48
    ld b, l                                       ; $4668: $45
    nop                                           ; $4669: $00
    jr nz, jr_0b1_466c                            ; $466a: $20 $00

jr_0b1_466c:
    jr nz, @+$1a                                  ; $466c: $20 $18

    ld [hl], a                                    ; $466e: $77
    ld c, b                                       ; $466f: $48
    ld b, l                                       ; $4670: $45
    nop                                           ; $4671: $00
    nop                                           ; $4672: $00
    adc e                                         ; $4673: $8b
    ld d, c                                       ; $4674: $51
    sub h                                         ; $4675: $94

jr_0b1_4676:
    ld [hl], d                                    ; $4676: $72
    add h                                         ; $4677: $84
    stop                                          ; $4678: $10 $00
    jr nz, jr_0b1_4682                            ; $467a: $20 $06

    dec a                                         ; $467c: $3d
    call $8459                                    ; $467d: $cd $59 $84
    stop                                          ; $4680: $10 $00

jr_0b1_4682:
    jr nz, jr_0b1_468a                            ; $4682: $20 $06

    dec a                                         ; $4684: $3d
    call $8459                                    ; $4685: $cd $59 $84
    stop                                          ; $4688: $10 $00

jr_0b1_468a:
    jr nz, jr_0b1_4692                            ; $468a: $20 $06

    dec a                                         ; $468c: $3d
    call $8459                                    ; $468d: $cd $59 $84
    stop                                          ; $4690: $10 $00

jr_0b1_4692:
    jr nz, jr_0b1_4694                            ; $4692: $20 $00

jr_0b1_4694:
    jr nz, jr_0b1_46ae                            ; $4694: $20 $18

    ld [hl], a                                    ; $4696: $77
    ld c, b                                       ; $4697: $48
    ld b, l                                       ; $4698: $45
    nop                                           ; $4699: $00

jr_0b1_469a:
    jr nz, jr_0b1_469c                            ; $469a: $20 $00

jr_0b1_469c:
    jr nz, jr_0b1_46b6                            ; $469c: $20 $18

    ld [hl], a                                    ; $469e: $77
    ld c, b                                       ; $469f: $48
    ld b, l                                       ; $46a0: $45
    nop                                           ; $46a1: $00
    nop                                           ; $46a2: $00
    rst $28                                       ; $46a3: $ef
    ld h, c                                       ; $46a4: $61
    nop                                           ; $46a5: $00
    jr nz, jr_0b1_46b0                            ; $46a6: $20 $08

    ld hl, $0421                                  ; $46a8: $21 $21 $04
    ld [hl], e                                    ; $46ab: $73
    ld c, [hl]                                    ; $46ac: $4e
    rst $38                                       ; $46ad: $ff

jr_0b1_46ae:
    ld a, a                                       ; $46ae: $7f
    xor l                                         ; $46af: $ad

jr_0b1_46b0:
    dec [hl]                                      ; $46b0: $35
    nop                                           ; $46b1: $00
    nop                                           ; $46b2: $00
    sub $5a                                       ; $46b3: $d6 $5a
    nop                                           ; $46b5: $00

jr_0b1_46b6:
    jr nz, jr_0b1_4702                            ; $46b6: $20 $4a

    add hl, hl                                    ; $46b8: $29

jr_0b1_46b9:
    nop                                           ; $46b9: $00
    jr nz, jr_0b1_4692                            ; $46ba: $20 $d6

    ld e, d                                       ; $46bc: $5a
    nop                                           ; $46bd: $00
    jr nz, jr_0b1_470a                            ; $46be: $20 $4a

    add hl, hl                                    ; $46c0: $29
    nop                                           ; $46c1: $00
    jr nz, jr_0b1_469a                            ; $46c2: $20 $d6

jr_0b1_46c4:
    ld e, d                                       ; $46c4: $5a
    nop                                           ; $46c5: $00
    jr nz, jr_0b1_4712                            ; $46c6: $20 $4a

    add hl, hl                                    ; $46c8: $29
    nop                                           ; $46c9: $00
    jr nz, @-$0f                                  ; $46ca: $20 $ef

jr_0b1_46cc:
    ld h, c                                       ; $46cc: $61
    nop                                           ; $46cd: $00
    jr nz, jr_0b1_46d8                            ; $46ce: $20 $08

    ld hl, $0000                                  ; $46d0: $21 $00 $00
    nop                                           ; $46d3: $00
    jr nz, jr_0b1_46d6                            ; $46d4: $20 $00

jr_0b1_46d6:
    jr nz, jr_0b1_46e0                            ; $46d6: $20 $08

jr_0b1_46d8:
    ld hl, $0000                                  ; $46d8: $21 $00 $00
    or l                                          ; $46db: $b5
    ld d, [hl]                                    ; $46dc: $56
    rst $38                                       ; $46dd: $ff
    ld a, a                                       ; $46de: $7f
    rst $20                                       ; $46df: $e7

jr_0b1_46e0:
    inc e                                         ; $46e0: $1c
    ld hl, $7304                                  ; $46e1: $21 $04 $73
    ld c, [hl]                                    ; $46e4: $4e
    sbc $7b                                       ; $46e5: $de $7b
    adc h                                         ; $46e7: $8c
    ld sp, $0000                                  ; $46e8: $31 $00 $00
    sub $5a                                       ; $46eb: $d6 $5a
    adc $39                                       ; $46ed: $ce $39
    rst $38                                       ; $46ef: $ff
    ld a, a                                       ; $46f0: $7f
    nop                                           ; $46f1: $00
    nop                                           ; $46f2: $00
    nop                                           ; $46f3: $00
    jr nz, jr_0b1_46c4                            ; $46f4: $20 $ce

    add hl, sp                                    ; $46f6: $39
    rst $38                                       ; $46f7: $ff
    ld a, a                                       ; $46f8: $7f
    nop                                           ; $46f9: $00
    jr nz, jr_0b1_46fc                            ; $46fa: $20 $00

jr_0b1_46fc:
    jr nz, jr_0b1_46cc                            ; $46fc: $20 $ce

    add hl, sp                                    ; $46fe: $39
    rst $38                                       ; $46ff: $ff
    ld a, a                                       ; $4700: $7f
    nop                                           ; $4701: $00

jr_0b1_4702:
    jr nz, jr_0b1_46b9                            ; $4702: $20 $b5

    ld d, [hl]                                    ; $4704: $56
    rst $38                                       ; $4705: $ff
    ld a, a                                       ; $4706: $7f
    rst $20                                       ; $4707: $e7
    inc e                                         ; $4708: $1c
    nop                                           ; $4709: $00

jr_0b1_470a:
    nop                                           ; $470a: $00
    ld [hl], e                                    ; $470b: $73
    ld c, [hl]                                    ; $470c: $4e
    rst $38                                       ; $470d: $ff
    ld a, a                                       ; $470e: $7f
    nop                                           ; $470f: $00
    jr nz, jr_0b1_4775                            ; $4710: $20 $63

jr_0b1_4712:
    inc c                                         ; $4712: $0c
    or l                                          ; $4713: $b5
    ld d, [hl]                                    ; $4714: $56
    rst $38                                       ; $4715: $ff
    ld a, a                                       ; $4716: $7f
    nop                                           ; $4717: $00
    jr nz, jr_0b1_473b                            ; $4718: $20 $21

    inc b                                         ; $471a: $04
    or l                                          ; $471b: $b5
    ld d, [hl]                                    ; $471c: $56
    xor l                                         ; $471d: $ad
    dec [hl]                                      ; $471e: $35
    sbc $7b                                       ; $471f: $de $7b

jr_0b1_4721:
    nop                                           ; $4721: $00
    nop                                           ; $4722: $00
    jr jr_0b1_4788                                ; $4723: $18 $63

    xor l                                         ; $4725: $ad
    dec [hl]                                      ; $4726: $35
    sbc $7b                                       ; $4727: $de $7b
    nop                                           ; $4729: $00
    nop                                           ; $472a: $00
    nop                                           ; $472b: $00
    inc e                                         ; $472c: $1c
    rst $20                                       ; $472d: $e7
    inc e                                         ; $472e: $1c
    ld b, d                                       ; $472f: $42
    ld [$2000], sp                                ; $4730: $08 $00 $20
    nop                                           ; $4733: $00
    inc e                                         ; $4734: $1c
    rst $20                                       ; $4735: $e7
    inc e                                         ; $4736: $1c
    ld b, d                                       ; $4737: $42
    ld [$2000], sp                                ; $4738: $08 $00 $20

jr_0b1_473b:
    or l                                          ; $473b: $b5
    ld d, [hl]                                    ; $473c: $56
    rst $38                                       ; $473d: $ff
    ld a, a                                       ; $473e: $7f
    nop                                           ; $473f: $00
    jr nz, jr_0b1_4742                            ; $4740: $20 $00

jr_0b1_4742:
    ld [$56b5], sp                                ; $4742: $08 $b5 $56
    rst $38                                       ; $4745: $ff
    ld a, a                                       ; $4746: $7f
    ld [$6321], sp                                ; $4747: $08 $21 $63
    inc c                                         ; $474a: $0c
    ld d, d                                       ; $474b: $52
    ld c, d                                       ; $474c: $4a
    ld e, d                                       ; $474d: $5a
    ld l, e                                       ; $474e: $6b
    ld l, e                                       ; $474f: $6b
    dec l                                         ; $4750: $2d
    nop                                           ; $4751: $00
    nop                                           ; $4752: $00
    xor $3d                                       ; $4753: $ee $3d
    add hl, sp                                    ; $4755: $39
    ld h, a                                       ; $4756: $67
    ld [$001d], sp                                ; $4757: $08 $1d $00
    nop                                           ; $475a: $00
    ld e, d                                       ; $475b: $5a
    ld l, e                                       ; $475c: $6b
    ld [$ff21], sp                                ; $475d: $08 $21 $ff
    ld a, a                                       ; $4760: $7f
    nop                                           ; $4761: $00
    nop                                           ; $4762: $00
    or l                                          ; $4763: $b5
    ld e, [hl]                                    ; $4764: $5e
    sbc $7b                                       ; $4765: $de $7b
    nop                                           ; $4767: $00
    inc e                                         ; $4768: $1c
    nop                                           ; $4769: $00
    jr nz, jr_0b1_4721                            ; $476a: $20 $b5

    ld e, [hl]                                    ; $476c: $5e
    sbc $7b                                       ; $476d: $de $7b
    nop                                           ; $476f: $00
    inc e                                         ; $4770: $1c
    nop                                           ; $4771: $00
    nop                                           ; $4772: $00
    ld l, e                                       ; $4773: $6b
    dec l                                         ; $4774: $2d

jr_0b1_4775:
    nop                                           ; $4775: $00
    jr nz, jr_0b1_47e3                            ; $4776: $20 $6b

    dec l                                         ; $4778: $2d
    nop                                           ; $4779: $00
    nop                                           ; $477a: $00
    ld [hl], e                                    ; $477b: $73
    ld c, [hl]                                    ; $477c: $4e
    sbc h                                         ; $477d: $9c
    ld [hl], e                                    ; $477e: $73
    adc h                                         ; $477f: $8c
    ld sp, $0000                                  ; $4780: $31 $00 $00
    jp $c605                                      ; $4783: $c3 $05 $c6


    jr jr_0b1_47ca                                ; $4786: $18 $42

jr_0b1_4788:
    ld [$0400], sp                                ; $4788: $08 $00 $04
    jr nc, jr_0b1_47d7                            ; $478b: $30 $4a

    ld b, a                                       ; $478d: $47
    add hl, bc                                    ; $478e: $09
    dec e                                         ; $478f: $1d
    ld e, e                                       ; $4790: $5b
    nop                                           ; $4791: $00
    nop                                           ; $4792: $00
    ld d, d                                       ; $4793: $52
    ld c, d                                       ; $4794: $4a
    sbc h                                         ; $4795: $9c
    ld [hl], e                                    ; $4796: $73
    add hl, hl                                    ; $4797: $29
    dec h                                         ; $4798: $25
    nop                                           ; $4799: $00
    nop                                           ; $479a: $00
    or l                                          ; $479b: $b5
    ld e, [hl]                                    ; $479c: $5e
    sbc $7b                                       ; $479d: $de $7b
    ld hl, $001c                                  ; $479f: $21 $1c $00
    jr nz, @-$49                                  ; $47a2: $20 $b5

    ld e, [hl]                                    ; $47a4: $5e
    sbc $7b                                       ; $47a5: $de $7b
    ld hl, $211c                                  ; $47a7: $21 $1c $21
    inc b                                         ; $47aa: $04
    rst $38                                       ; $47ab: $ff
    ld a, a                                       ; $47ac: $7f
    ld l, e                                       ; $47ad: $6b
    dec l                                         ; $47ae: $2d
    nop                                           ; $47af: $00
    jr nz, jr_0b1_47b2                            ; $47b0: $20 $00

jr_0b1_47b2:
    nop                                           ; $47b2: $00
    jr jr_0b1_4818                                ; $47b3: $18 $63

    jp Jump_0b1_4a05                              ; $47b5: $c3 $05 $4a


    add hl, hl                                    ; $47b8: $29
    nop                                           ; $47b9: $00
    inc e                                         ; $47ba: $1c
    ld sp, $c47e                                  ; $47bb: $31 $7e $c4
    dec b                                         ; $47be: $05
    and $40                                       ; $47bf: $e6 $40
    ld [bc], a                                    ; $47c1: $02
    inc b                                         ; $47c2: $04
    ld d, c                                       ; $47c3: $51
    add hl, sp                                    ; $47c4: $39
    sbc l                                         ; $47c5: $9d
    ld l, d                                       ; $47c6: $6a
    rst $38                                       ; $47c7: $ff
    ld a, a                                       ; $47c8: $7f
    nop                                           ; $47c9: $00

jr_0b1_47ca:
    nop                                           ; $47ca: $00
    ret c                                         ; $47cb: $d8

    ld e, [hl]                                    ; $47cc: $5e
    add hl, hl                                    ; $47cd: $29
    ld c, c                                       ; $47ce: $49
    sbc $7b                                       ; $47cf: $de $7b
    nop                                           ; $47d1: $00
    nop                                           ; $47d2: $00
    ld [hl], d                                    ; $47d3: $72
    ld d, [hl]                                    ; $47d4: $56
    sbc $7b                                       ; $47d5: $de $7b

jr_0b1_47d7:
    call nz, Call_000_0009                        ; $47d7: $c4 $09 $00
    nop                                           ; $47da: $00
    or b                                          ; $47db: $b0
    ld sp, $5f18                                  ; $47dc: $31 $18 $5f
    nop                                           ; $47df: $00
    jr nz, @+$23                                  ; $47e0: $20 $21

    inc b                                         ; $47e2: $04

jr_0b1_47e3:
    sbc $7b                                       ; $47e3: $de $7b
    ld c, d                                       ; $47e5: $4a
    add hl, hl                                    ; $47e6: $29
    nop                                           ; $47e7: $00
    jr nz, jr_0b1_47ea                            ; $47e8: $20 $00

jr_0b1_47ea:
    nop                                           ; $47ea: $00
    cp l                                          ; $47eb: $bd
    ld [hl], a                                    ; $47ec: $77
    jp Jump_000_0805                              ; $47ed: $c3 $05 $08


    ld hl, $0c00                                  ; $47f0: $21 $00 $0c
    ld [$c44d], sp                                ; $47f3: $08 $4d $c4
    add hl, bc                                    ; $47f6: $09
    db $10                                        ; $47f7: $10
    ld a, d                                       ; $47f8: $7a
    ld [hl+], a                                   ; $47f9: $22
    ld [$6259], sp                                ; $47fa: $08 $59 $62
    cpl                                           ; $47fd: $2f
    ld sp, $7f9f                                  ; $47fe: $31 $9f $7f
    ld hl, $960c                                  ; $4801: $21 $0c $96
    ld hl, $60a5                                  ; $4804: $21 $a5 $60
    rra                                           ; $4807: $1f
    ld d, a                                       ; $4808: $57
    nop                                           ; $4809: $00
    nop                                           ; $480a: $00
    jr @+$69                                      ; $480b: $18 $67

    db $e4                                        ; $480d: $e4
    add hl, bc                                    ; $480e: $09
    ld c, c                                       ; $480f: $49
    add hl, hl                                    ; $4810: $29
    ld [bc], a                                    ; $4811: $02
    nop                                           ; $4812: $00
    ld d, b                                       ; $4813: $50
    dec d                                         ; $4814: $15
    sub a                                         ; $4815: $97
    ld c, d                                       ; $4816: $4a
    nop                                           ; $4817: $00

jr_0b1_4818:
    jr nz, jr_0b1_481a                            ; $4818: $20 $00

jr_0b1_481a:
    db $10                                        ; $481a: $10
    or l                                          ; $481b: $b5
    ld d, [hl]                                    ; $481c: $56
    ld [$bd21], sp                                ; $481d: $08 $21 $bd
    ld [hl], a                                    ; $4820: $77
    nop                                           ; $4821: $00
    nop                                           ; $4822: $00
    jp Jump_000_0005                              ; $4823: $c3 $05 $00


    inc e                                         ; $4826: $1c
    push hl                                       ; $4827: $e5
    add hl, bc                                    ; $4828: $09
    nop                                           ; $4829: $00
    ld [$75ce], sp                                ; $482a: $08 $ce $75
    add l                                         ; $482d: $85
    jr c, @+$7e                                   ; $482e: $38 $7c

    halt                                          ; $4830: $76
    nop                                           ; $4831: $00
    inc b                                         ; $4832: $04
    ld d, e                                       ; $4833: $53
    ld d, [hl]                                    ; $4834: $56
    rst $38                                       ; $4835: $ff
    ld a, a                                       ; $4836: $7f
    add [hl]                                      ; $4837: $86
    jr nz, jr_0b1_483b                            ; $4838: $20 $01

    inc c                                         ; $483a: $0c

jr_0b1_483b:
    ld d, e                                       ; $483b: $53
    add hl, sp                                    ; $483c: $39
    ccf                                           ; $483d: $3f
    ld e, e                                       ; $483e: $5b
    add sp, $18                                   ; $483f: $e8 $18
    nop                                           ; $4841: $00
    nop                                           ; $4842: $00
    dec b                                         ; $4843: $05
    ld c, $0e                                     ; $4844: $0e $0e
    add hl, bc                                    ; $4846: $09
    add sp, $18                                   ; $4847: $e8 $18
    ld b, h                                       ; $4849: $44
    nop                                           ; $484a: $00
    push de                                       ; $484b: $d5
    dec e                                         ; $484c: $1d

jr_0b1_484d:
    nop                                           ; $484d: $00
    jr nz, jr_0b1_484d                            ; $484e: $20 $fd

    ld a, $00                                     ; $4850: $3e $00
    inc b                                         ; $4852: $04
    cp l                                          ; $4853: $bd
    ld a, e                                       ; $4854: $7b
    ld h, $19                                     ; $4855: $26 $19
    adc h                                         ; $4857: $8c
    ld sp, $1400                                  ; $4858: $31 $00 $14
    dec b                                         ; $485b: $05
    ld c, $8c                                     ; $485c: $0e $8c
    ld a, l                                       ; $485e: $7d
    and l                                         ; $485f: $a5
    inc a                                         ; $4860: $3c
    ld bc, $2b04                                  ; $4861: $01 $04 $2b
    ld h, c                                       ; $4864: $61
    jr c, jr_0b1_48dd                             ; $4865: $38 $76

    ld b, d                                       ; $4867: $42
    jr c, jr_0b1_486b                             ; $4868: $38 $01

    inc b                                         ; $486a: $04

jr_0b1_486b:
    ld a, e                                       ; $486b: $7b
    ld l, a                                       ; $486c: $6f
    inc sp                                        ; $486d: $33
    inc b                                         ; $486e: $04
    ld c, c                                       ; $486f: $49
    add hl, hl                                    ; $4870: $29
    nop                                           ; $4871: $00
    nop                                           ; $4872: $00
    ld [hl], $5a                                  ; $4873: $36 $5a
    rst $38                                       ; $4875: $ff
    ld a, a                                       ; $4876: $7f
    ret z                                         ; $4877: $c8

    inc l                                         ; $4878: $2c
    nop                                           ; $4879: $00
    nop                                           ; $487a: $00
    cp e                                          ; $487b: $bb
    ld a, [hl-]                                   ; $487c: $3a
    db $e4                                        ; $487d: $e4
    add hl, bc                                    ; $487e: $09
    ld a, [bc]                                    ; $487f: $0a
    dec d                                         ; $4880: $15
    ld b, h                                       ; $4881: $44
    inc b                                         ; $4882: $04
    ld e, c                                       ; $4883: $59
    ld a, [hl+]                                   ; $4884: $2a
    dec e                                         ; $4885: $1d
    ld b, a                                       ; $4886: $47
    nop                                           ; $4887: $00
    jr nz, jr_0b1_48ab                            ; $4888: $20 $21

    inc b                                         ; $488a: $04
    ld [hl], e                                    ; $488b: $73
    ld c, [hl]                                    ; $488c: $4e
    dec b                                         ; $488d: $05
    ld c, $bd                                     ; $488e: $0e $bd
    ld [hl], a                                    ; $4890: $77
    nop                                           ; $4891: $00
    nop                                           ; $4892: $00
    and l                                         ; $4893: $a5
    ld e, h                                       ; $4894: $5c
    ld h, $12                                     ; $4895: $26 $12
    ld hl, $0024                                  ; $4897: $21 $24 $00
    ld [$5573], sp                                ; $489a: $08 $73 $55
    ld b, l                                       ; $489d: $45
    jr c, @+$5e                                   ; $489e: $38 $5c

    ld a, [hl]                                    ; $48a0: $7e
    ld [bc], a                                    ; $48a1: $02
    inc c                                         ; $48a2: $0c
    ld [hl], d                                    ; $48a3: $72
    ld c, [hl]                                    ; $48a4: $4e
    cp a                                          ; $48a5: $bf
    inc d                                         ; $48a6: $14
    ld c, d                                       ; $48a7: $4a
    ld [$0002], sp                                ; $48a8: $08 $02 $00

jr_0b1_48ab:
    jr c, jr_0b1_4913                             ; $48ab: $38 $66

    and h                                         ; $48ad: $a4
    jr nc, @+$01                                  ; $48ae: $30 $ff

    ld a, a                                       ; $48b0: $7f
    ld b, d                                       ; $48b1: $42
    inc c                                         ; $48b2: $0c
    sub e                                         ; $48b3: $93
    ld a, [hl]                                    ; $48b4: $7e
    add hl, sp                                    ; $48b5: $39
    ld a, [hl+]                                   ; $48b6: $2a
    ld e, $43                                     ; $48b7: $1e $43
    nop                                           ; $48b9: $00
    nop                                           ; $48ba: $00
    jp z, $5504                                   ; $48bb: $ca $04 $55

    ld c, [hl]                                    ; $48be: $4e
    nop                                           ; $48bf: $00
    jr nz, jr_0b1_48c2                            ; $48c0: $20 $00

jr_0b1_48c2:
    inc b                                         ; $48c2: $04
    ld e, d                                       ; $48c3: $5a
    ld [hl], e                                    ; $48c4: $73
    ld h, $12                                     ; $48c5: $26 $12
    ld l, e                                       ; $48c7: $6b
    dec l                                         ; $48c8: $2d
    ld b, d                                       ; $48c9: $42
    jr nz, @+$0a                                  ; $48ca: $20 $08

    ld e, l                                       ; $48cc: $5d
    xor l                                         ; $48cd: $ad
    ld [hl], l                                    ; $48ce: $75
    ld b, a                                       ; $48cf: $47
    ld d, $00                                     ; $48d0: $16 $00
    inc b                                         ; $48d2: $04
    ld de, $6651                                  ; $48d3: $11 $51 $66
    inc [hl]                                      ; $48d6: $34
    ld e, l                                       ; $48d7: $5d
    ld a, [hl]                                    ; $48d8: $7e
    ld bc, $1008                                  ; $48d9: $01 $08 $10
    ld b, d                                       ; $48dc: $42

jr_0b1_48dd:
    ld l, e                                       ; $48dd: $6b
    dec l                                         ; $48de: $2d
    jr @+$65                                      ; $48df: $18 $63

    nop                                           ; $48e1: $00
    nop                                           ; $48e2: $00
    cpl                                           ; $48e3: $2f
    dec [hl]                                      ; $48e4: $35
    sbc d                                         ; $48e5: $9a
    ld l, d                                       ; $48e6: $6a
    nop                                           ; $48e7: $00
    jr nc, jr_0b1_48eb                            ; $48e8: $30 $01

    nop                                           ; $48ea: $00

jr_0b1_48eb:
    ld [hl], b                                    ; $48eb: $70
    dec d                                         ; $48ec: $15
    jr c, jr_0b1_4919                             ; $48ed: $38 $2a

    sbc h                                         ; $48ef: $9c
    ld [hl], $00                                  ; $48f0: $36 $00
    nop                                           ; $48f2: $00
    jr z, @+$23                                   ; $48f3: $28 $21

    adc $59                                       ; $48f5: $ce $59
    nop                                           ; $48f7: $00
    jr nz, jr_0b1_48fa                            ; $48f8: $20 $00

jr_0b1_48fa:
    ld [$1a68], sp                                ; $48fa: $08 $68 $1a
    or l                                          ; $48fd: $b5
    ld d, [hl]                                    ; $48fe: $56
    jp Jump_000_0005                              ; $48ff: $c3 $05 $00


    nop                                           ; $4902: $00
    ld [$ef65], sp                                ; $4903: $08 $65 $ef
    ld a, c                                       ; $4906: $79
    ld hl, $011c                                  ; $4907: $21 $1c $01
    inc c                                         ; $490a: $0c
    ld c, d                                       ; $490b: $4a
    ld l, c                                       ; $490c: $69
    ld h, [hl]                                    ; $490d: $66
    jr c, @-$25                                   ; $490e: $38 $d9

    ld [hl], l                                    ; $4910: $75
    nop                                           ; $4911: $00
    nop                                           ; $4912: $00

jr_0b1_4913:
    xor a                                         ; $4913: $af
    dec a                                         ; $4914: $3d
    sub $5a                                       ; $4915: $d6 $5a
    add $18                                       ; $4917: $c6 $18

jr_0b1_4919:
    inc h                                         ; $4919: $24
    db $10                                        ; $491a: $10
    pop af                                        ; $491b: $f1
    ld d, h                                       ; $491c: $54
    cp h                                          ; $491d: $bc
    ld [hl], d                                    ; $491e: $72
    ld a, c                                       ; $491f: $79
    ld [hl-], a                                   ; $4920: $32
    nop                                           ; $4921: $00
    nop                                           ; $4922: $00
    db $10                                        ; $4923: $10
    ld l, d                                       ; $4924: $6a
    ld a, [hl-]                                   ; $4925: $3a
    ld h, $cb                                     ; $4926: $26 $cb
    ld [$1c00], sp                                ; $4928: $08 $00 $1c
    ld h, $3d                                     ; $492b: $26 $3d
    adc b                                         ; $492d: $88
    ld a, [de]                                    ; $492e: $1a
    cpl                                           ; $492f: $2f
    ld d, [hl]                                    ; $4930: $56
    nop                                           ; $4931: $00
    ld [$1e88], sp                                ; $4932: $08 $88 $1e
    sbc h                                         ; $4935: $9c
    ld [hl], e                                    ; $4936: $73
    xor l                                         ; $4937: $ad
    dec [hl]                                      ; $4938: $35
    nop                                           ; $4939: $00
    nop                                           ; $493a: $00
    xor l                                         ; $493b: $ad
    ld a, c                                       ; $493c: $79
    nop                                           ; $493d: $00
    inc d                                         ; $493e: $14
    db $10                                        ; $493f: $10
    ld a, d                                       ; $4940: $7a
    nop                                           ; $4941: $00
    inc b                                         ; $4942: $04
    ld [$af65], sp                                ; $4943: $08 $65 $af
    ld [hl], c                                    ; $4946: $71
    inc h                                         ; $4947: $24
    jr nz, jr_0b1_494a                            ; $4948: $20 $00

jr_0b1_494a:
    inc b                                         ; $494a: $04
    ld e, h                                       ; $494b: $5c
    ld [hl], e                                    ; $494c: $73
    rst $20                                       ; $494d: $e7
    inc e                                         ; $494e: $1c
    call $0139                                    ; $494f: $cd $39 $01
    nop                                           ; $4952: $00
    ld [hl], h                                    ; $4953: $74
    ld c, c                                       ; $4954: $49
    ld e, $53                                     ; $4955: $1e $53
    ld b, $30                                     ; $4957: $06 $30
    nop                                           ; $4959: $00
    ld [$1ea9], sp                                ; $495a: $08 $a9 $1e
    xor $75                                       ; $495d: $ee $75
    ld b, d                                       ; $495f: $42
    ld b, h                                       ; $4960: $44
    nop                                           ; $4961: $00
    inc e                                         ; $4962: $1c
    ld c, b                                       ; $4963: $48
    ld h, $0f                                     ; $4964: $26 $0f
    ld e, d                                       ; $4966: $5a
    ld e, d                                       ; $4967: $5a
    ld [hl], e                                    ; $4968: $73
    nop                                           ; $4969: $00
    ld [$1ea9], sp                                ; $496a: $08 $a9 $1e
    sbc h                                         ; $496d: $9c
    ld [hl], e                                    ; $496e: $73
    ld b, [hl]                                    ; $496f: $46
    dec d                                         ; $4970: $15
    nop                                           ; $4971: $00
    inc b                                         ; $4972: $04
    ld c, d                                       ; $4973: $4a
    ld l, l                                       ; $4974: $6d
    db $10                                        ; $4975: $10
    ld a, [hl]                                    ; $4976: $7e
    nop                                           ; $4977: $00
    jr jr_0b1_497a                                ; $4978: $18 $00

jr_0b1_497a:
    nop                                           ; $497a: $00
    ld l, a                                       ; $497b: $6f
    ld d, [hl]                                    ; $497c: $56
    xor l                                         ; $497d: $ad
    ld [hl], l                                    ; $497e: $75
    and l                                         ; $497f: $a5
    inc l                                         ; $4980: $2c
    nop                                           ; $4981: $00
    nop                                           ; $4982: $00
    ld c, h                                       ; $4983: $4c
    dec h                                         ; $4984: $25
    sbc l                                         ; $4985: $9d
    ld [hl], $a9                                  ; $4986: $36 $a9
    ld [$0000], sp                                ; $4988: $08 $00 $00
    db $dd                                        ; $498b: $dd
    ld c, d                                       ; $498c: $4a
    db $10                                        ; $498d: $10
    dec d                                         ; $498e: $15
    ld l, b                                       ; $498f: $68
    inc b                                         ; $4990: $04
    ld b, b                                       ; $4991: $40
    inc c                                         ; $4992: $0c
    and $54                                       ; $4993: $e6 $54
    ld l, a                                       ; $4995: $6f
    ld a, d                                       ; $4996: $7a
    adc e                                         ; $4997: $8b
    ld l, $00                                     ; $4998: $2e $00
    inc e                                         ; $499a: $1c
    xor c                                         ; $499b: $a9
    ld [hl+], a                                   ; $499c: $22
    jr nc, @+$5c                                  ; $499d: $30 $5a

    ld e, c                                       ; $499f: $59
    ld l, a                                       ; $49a0: $6f
    nop                                           ; $49a1: $00
    nop                                           ; $49a2: $00
    jp z, Jump_0b1_7a22                           ; $49a3: $ca $22 $7a

    ld l, a                                       ; $49a6: $6f
    ld h, e                                       ; $49a7: $63
    inc e                                         ; $49a8: $1c
    nop                                           ; $49a9: $00
    ld [$44e7], sp                                ; $49aa: $08 $e7 $44
    adc $79                                       ; $49ad: $ce $79
    jp Jump_000_2005                              ; $49af: $c3 $05 $20


    inc b                                         ; $49b2: $04
    ld sp, hl                                     ; $49b3: $f9
    ld a, a                                       ; $49b4: $7f
    and l                                         ; $49b5: $a5
    ld c, h                                       ; $49b6: $4c
    jp z, Jump_000_215d                           ; $49b7: $ca $5d $21

    nop                                           ; $49ba: $00
    cp $4e                                        ; $49bb: $fe $4e
    ld l, $1d                                     ; $49bd: $2e $1d
    ld e, a                                       ; $49bf: $5f
    ld [hl], e                                    ; $49c0: $73
    ld hl, $9f04                                  ; $49c1: $21 $04 $9f
    ld e, a                                       ; $49c4: $5f
    ld l, h                                       ; $49c5: $6c
    ld b, h                                       ; $49c6: $44
    ld de, $4015                                  ; $49c7: $11 $15 $40
    ld [$612a], sp                                ; $49ca: $08 $2a $61
    ld [hl], a                                    ; $49cd: $77
    dec d                                         ; $49ce: $15
    ret nc                                        ; $49cf: $d0

    ld l, [hl]                                    ; $49d0: $6e
    nop                                           ; $49d1: $00
    inc e                                         ; $49d2: $1c
    jp z, Jump_0b1_7b26                           ; $49d3: $ca $26 $7b

    ld [hl], a                                    ; $49d6: $77
    ld d, c                                       ; $49d7: $51
    ld e, d                                       ; $49d8: $5a
    nop                                           ; $49d9: $00
    ld [$326d], sp                                ; $49da: $08 $6d $32
    jr jr_0b1_4a4a                                ; $49dd: $18 $6b

    ld h, l                                       ; $49df: $65
    ld de, $0c21                                  ; $49e0: $11 $21 $0c
    ld [$ea69], sp                                ; $49e3: $08 $69 $ea
    ld h, $ad                                     ; $49e6: $26 $ad
    ld [hl], l                                    ; $49e8: $75
    ld hl, $480c                                  ; $49e9: $21 $0c $48
    ld l, d                                       ; $49ec: $6a
    jp c, Jump_0b1_5c77                           ; $49ed: $da $77 $5c

    ld [hl], $01                                  ; $49f0: $36 $01
    nop                                           ; $49f2: $00
    add hl, de                                    ; $49f3: $19
    ld d, d                                       ; $49f4: $52
    ld e, a                                       ; $49f5: $5f
    ld e, a                                       ; $49f6: $5f
    inc c                                         ; $49f7: $0c
    ld hl, $0000                                  ; $49f8: $21 $00 $00
    ld h, e                                       ; $49fb: $63
    ld c, c                                       ; $49fc: $49
    ld d, $36                                     ; $49fd: $16 $36
    ld b, l                                       ; $49ff: $45
    inc h                                         ; $4a00: $24
    nop                                           ; $4a01: $00
    inc c                                         ; $4a02: $0c
    add $5c                                       ; $4a03: $c6 $5c

Jump_0b1_4a05:
    ld e, c                                       ; $4a05: $59
    ld h, e                                       ; $4a06: $63
    dec bc                                        ; $4a07: $0b
    ld l, d                                       ; $4a08: $6a
    nop                                           ; $4a09: $00
    inc e                                         ; $4a0a: $1c
    or h                                          ; $4a0b: $b4
    ld h, d                                       ; $4a0c: $62
    jp $bd05                                      ; $4a0d: $c3 $05 $bd


    ld [hl], a                                    ; $4a10: $77
    nop                                           ; $4a11: $00
    inc c                                         ; $4a12: $0c
    ld [hl], d                                    ; $4a13: $72
    ld e, d                                       ; $4a14: $5a
    ld b, [hl]                                    ; $4a15: $46
    dec d                                         ; $4a16: $15
    sbc h                                         ; $4a17: $9c
    ld [hl], e                                    ; $4a18: $73
    ld hl, $2914                                  ; $4a19: $21 $14 $29
    ld e, l                                       ; $4a1c: $5d
    dec bc                                        ; $4a1d: $0b
    dec hl                                        ; $4a1e: $2b
    jp $0105                                      ; $4a1f: $c3 $05 $01


    nop                                           ; $4a22: $00
    and $5d                                       ; $4a23: $e6 $5d
    cpl                                           ; $4a25: $2f
    ld a, e                                       ; $4a26: $7b
    jr nc, jr_0b1_4a3e                            ; $4a27: $30 $15

    ld hl, $9404                                  ; $4a29: $21 $04 $94
    ld e, l                                       ; $4a2c: $5d
    rst $28                                       ; $4a2d: $ef
    inc d                                         ; $4a2e: $14
    cp h                                          ; $4a2f: $bc
    ld c, d                                       ; $4a30: $4a
    ld bc, $8800                                  ; $4a31: $01 $00 $88
    ld a, d                                       ; $4a34: $7a
    ldh [$2c], a                                  ; $4a35: $e0 $2c
    jp z, RST_10                                  ; $4a37: $ca $10 $00

    nop                                           ; $4a3a: $00
    cp c                                          ; $4a3b: $b9
    ld l, a                                       ; $4a3c: $6f
    add e                                         ; $4a3d: $83

jr_0b1_4a3e:
    ld d, h                                       ; $4a3e: $54
    dec bc                                        ; $4a3f: $0b
    add hl, de                                    ; $4a40: $19
    nop                                           ; $4a41: $00
    inc e                                         ; $4a42: $1c
    or $66                                        ; $4a43: $f6 $66
    sbc $7f                                       ; $4a45: $de $7f
    ld e, c                                       ; $4a47: $59
    ld l, a                                       ; $4a48: $6f
    nop                                           ; $4a49: $00

jr_0b1_4a4a:
    db $10                                        ; $4a4a: $10
    xor $49                                       ; $4a4b: $ee $49
    sbc h                                         ; $4a4d: $9c
    ld [hl], e                                    ; $4a4e: $73
    add hl, hl                                    ; $4a4f: $29
    dec h                                         ; $4a50: $25
    nop                                           ; $4a51: $00
    nop                                           ; $4a52: $00
    add $48                                       ; $4a53: $c6 $48
    inc c                                         ; $4a55: $0c
    dec hl                                        ; $4a56: $2b
    jp Jump_000_0005                              ; $4a57: $c3 $05 $00


    nop                                           ; $4a5a: $00
    inc l                                         ; $4a5b: $2c
    ld a, a                                       ; $4a5c: $7f
    inc h                                         ; $4a5d: $24
    dec l                                         ; $4a5e: $2d
    dec h                                         ; $4a5f: $25
    nop                                           ; $4a60: $00
    nop                                           ; $4a61: $00
    nop                                           ; $4a62: $00
    inc sp                                        ; $4a63: $33
    ld e, l                                       ; $4a64: $5d
    ld e, d                                       ; $4a65: $5a
    ld l, e                                       ; $4a66: $6b
    and e                                         ; $4a67: $a3
    jr jr_0b1_4a6c                                ; $4a68: $18 $02

    nop                                           ; $4a6a: $00
    and l                                         ; $4a6b: $a5

jr_0b1_4a6c:
    ld b, l                                       ; $4a6c: $45
    ldh [$30], a                                  ; $4a6d: $e0 $30
    adc c                                         ; $4a6f: $89
    ld [hl], d                                    ; $4a70: $72
    nop                                           ; $4a71: $00
    db $10                                        ; $4a72: $10
    or $2d                                        ; $4a73: $f6 $2d
    ld d, h                                       ; $4a75: $54
    ld l, a                                       ; $4a76: $6f
    add h                                         ; $4a77: $84
    ld c, h                                       ; $4a78: $4c
    nop                                           ; $4a79: $00
    inc e                                         ; $4a7a: $1c
    sub e                                         ; $4a7b: $93
    ld e, [hl]                                    ; $4a7c: $5e
    jr jr_0b1_4aea                                ; $4a7d: $18 $6b

    sbc e                                         ; $4a7f: $9b
    ld [hl], a                                    ; $4a80: $77
    ld hl, $3104                                  ; $4a81: $21 $04 $31
    ld b, [hl]                                    ; $4a84: $46
    cp l                                          ; $4a85: $bd
    ld [hl], a                                    ; $4a86: $77
    nop                                           ; $4a87: $00
    jr nz, jr_0b1_4a8a                            ; $4a88: $20 $00

jr_0b1_4a8a:
    nop                                           ; $4a8a: $00
    inc l                                         ; $4a8b: $2c

jr_0b1_4a8c:
    cpl                                           ; $4a8c: $2f
    ld b, d                                       ; $4a8d: $42
    jr c, jr_0b1_4af4                             ; $4a8e: $38 $64

    ld c, h                                       ; $4a90: $4c
    inc b                                         ; $4a91: $04
    nop                                           ; $4a92: $00
    add h                                         ; $4a93: $84
    ld c, c                                       ; $4a94: $49
    ld bc, $a935                                  ; $4a95: $01 $35 $a9
    ld a, d                                       ; $4a98: $7a
    nop                                           ; $4a99: $00
    inc b                                         ; $4a9a: $04
    add [hl]                                      ; $4a9b: $86
    ld b, l                                       ; $4a9c: $45
    inc de                                        ; $4a9d: $13
    ld e, c                                       ; $4a9e: $59
    sub h                                         ; $4a9f: $94
    ld d, d                                       ; $4aa0: $52
    ld [bc], a                                    ; $4aa1: $02
    nop                                           ; $4aa2: $00
    xor c                                         ; $4aa3: $a9
    ld [hl], d                                    ; $4aa4: $72
    inc bc                                        ; $4aa5: $03
    dec l                                         ; $4aa6: $2d
    rrca                                          ; $4aa7: $0f
    ld a, a                                       ; $4aa8: $7f
    ld bc, $7200                                  ; $4aa9: $01 $00 $72
    ld a, a                                       ; $4aac: $7f
    ld d, h                                       ; $4aad: $54
    add hl, de                                    ; $4aae: $19
    ld b, d                                       ; $4aaf: $42
    jr nc, jr_0b1_4ab2                            ; $4ab0: $30 $00

jr_0b1_4ab2:
    inc e                                         ; $4ab2: $1c
    cpl                                           ; $4ab3: $2f
    ld d, [hl]                                    ; $4ab4: $56
    sub e                                         ; $4ab5: $93
    ld h, d                                       ; $4ab6: $62
    nop                                           ; $4ab7: $00
    jr nz, jr_0b1_4aba                            ; $4ab8: $20 $00

jr_0b1_4aba:
    nop                                           ; $4aba: $00
    ld [hl], e                                    ; $4abb: $73
    ld c, [hl]                                    ; $4abc: $4e
    nop                                           ; $4abd: $00

jr_0b1_4abe:
    jr nz, @-$7a                                  ; $4abe: $20 $84

    stop                                          ; $4ac0: $10 $00
    nop                                           ; $4ac2: $00
    ld c, l                                       ; $4ac3: $4d
    inc sp                                        ; $4ac4: $33
    ld h, e                                       ; $4ac5: $63

jr_0b1_4ac6:
    ld b, b                                       ; $4ac6: $40
    jp Jump_000_0005                              ; $4ac7: $c3 $05 $00


    nop                                           ; $4aca: $00
    ld l, b                                       ; $4acb: $68
    ld [hl], d                                    ; $4acc: $72
    add b                                         ; $4acd: $80
    inc e                                         ; $4ace: $1c
    dec h                                         ; $4acf: $25
    nop                                           ; $4ad0: $00
    nop                                           ; $4ad1: $00
    nop                                           ; $4ad2: $00
    ld b, $66                                     ; $4ad3: $06 $66
    and [hl]                                      ; $4ad5: $a6
    jr z, jr_0b1_4a8c                             ; $4ad6: $28 $b4

    ld d, d                                       ; $4ad8: $52
    inc bc                                        ; $4ad9: $03
    nop                                           ; $4ada: $00
    xor d                                         ; $4adb: $aa
    ld [hl], d                                    ; $4adc: $72
    db $e3                                        ; $4add: $e3
    inc h                                         ; $4ade: $24
    sub h                                         ; $4adf: $94
    ld a, a                                       ; $4ae0: $7f
    ld bc, $ed00                                  ; $4ae1: $01 $00 $ed
    ld a, d                                       ; $4ae4: $7a
    ld h, d                                       ; $4ae5: $62
    jr z, jr_0b1_4abe                             ; $4ae6: $28 $d6

    ld a, a                                       ; $4ae8: $7f
    nop                                           ; $4ae9: $00

jr_0b1_4aea:
    nop                                           ; $4aea: $00
    cpl                                           ; $4aeb: $2f
    ld d, [hl]                                    ; $4aec: $56
    nop                                           ; $4aed: $00
    jr nz, jr_0b1_4ac6                            ; $4aee: $20 $d6

    ld a, a                                       ; $4af0: $7f
    nop                                           ; $4af1: $00
    nop                                           ; $4af2: $00
    nop                                           ; $4af3: $00

jr_0b1_4af4:
    jr nz, jr_0b1_4afc                            ; $4af4: $20 $06

    ld b, c                                       ; $4af6: $41
    dec h                                         ; $4af7: $25
    nop                                           ; $4af8: $00
    nop                                           ; $4af9: $00
    inc b                                         ; $4afa: $04
    db $ed                                        ; $4afb: $ed

jr_0b1_4afc:
    ld d, c                                       ; $4afc: $51
    and h                                         ; $4afd: $a4
    ld b, h                                       ; $4afe: $44
    ld l, [hl]                                    ; $4aff: $6e
    scf                                           ; $4b00: $37
    nop                                           ; $4b01: $00
    nop                                           ; $4b02: $00
    ld h, d                                       ; $4b03: $62
    ld b, l                                       ; $4b04: $45
    ld h, $66                                     ; $4b05: $26 $66
    dec h                                         ; $4b07: $25
    nop                                           ; $4b08: $00
    nop                                           ; $4b09: $00
    nop                                           ; $4b0a: $00
    ld c, $4a                                     ; $4b0b: $0e $4a
    dec hl                                        ; $4b0d: $2b
    ld a, a                                       ; $4b0e: $7f
    and $20                                       ; $4b0f: $e6 $20
    inc bc                                        ; $4b11: $03
    nop                                           ; $4b12: $00
    ld b, $5a                                     ; $4b13: $06 $5a
    rst $30                                       ; $4b15: $f7
    ld a, a                                       ; $4b16: $7f
    push hl                                       ; $4b17: $e5
    inc h                                         ; $4b18: $24
    ld bc, $c800                                  ; $4b19: $01 $00 $c8
    ld d, c                                       ; $4b1c: $51
    sub h                                         ; $4b1d: $94
    ld a, a                                       ; $4b1e: $7f
    ld b, d                                       ; $4b1f: $42
    jr nc, jr_0b1_4b22                            ; $4b20: $30 $00

jr_0b1_4b22:
    nop                                           ; $4b22: $00
    nop                                           ; $4b23: $00
    jr nz, jr_0b1_4aba                            ; $4b24: $20 $94

    ld a, a                                       ; $4b26: $7f
    ld b, d                                       ; $4b27: $42
    jr nc, jr_0b1_4b2a                            ; $4b28: $30 $00

jr_0b1_4b2a:
    jr nz, @-$10                                  ; $4b2a: $20 $ee

    ld e, l                                       ; $4b2c: $5d
    ld h, $66                                     ; $4b2d: $26 $66
    dec h                                         ; $4b2f: $25
    nop                                           ; $4b30: $00
    ld b, b                                       ; $4b31: $40
    ld [$4d8a], sp                                ; $4b32: $08 $8a $4d
    add e                                         ; $4b35: $83
    jr c, jr_0b1_4ac6                             ; $4b36: $38 $8e

    scf                                           ; $4b38: $37
    nop                                           ; $4b39: $00
    nop                                           ; $4b3a: $00
    dec b                                         ; $4b3b: $05

jr_0b1_4b3c:
    ld h, [hl]                                    ; $4b3c: $66
    add b                                         ; $4b3d: $80
    jr nz, jr_0b1_4b65                            ; $4b3e: $20 $25

    nop                                           ; $4b40: $00

jr_0b1_4b41:
    nop                                           ; $4b41: $00
    nop                                           ; $4b42: $00
    sub $5a                                       ; $4b43: $d6 $5a
    daa                                           ; $4b45: $27
    dec l                                         ; $4b46: $2d
    db $fc                                        ; $4b47: $fc
    ld a, a                                       ; $4b48: $7f
    nop                                           ; $4b49: $00
    nop                                           ; $4b4a: $00
    and a                                         ; $4b4b: $a7
    ld c, c                                       ; $4b4c: $49
    or [hl]                                       ; $4b4d: $b6
    ld a, e                                       ; $4b4e: $7b
    dec h                                         ; $4b4f: $25
    nop                                           ; $4b50: $00
    nop                                           ; $4b51: $00
    nop                                           ; $4b52: $00
    daa                                           ; $4b53: $27
    ld h, [hl]                                    ; $4b54: $66
    add c                                         ; $4b55: $81
    jr nc, @+$53                                  ; $4b56: $30 $51

    ld a, e                                       ; $4b58: $7b
    nop                                           ; $4b59: $00
    jr nz, jr_0b1_4b41                            ; $4b5a: $20 $e5

    inc a                                         ; $4b5c: $3c
    add c                                         ; $4b5d: $81
    jr nc, jr_0b1_4bb1                            ; $4b5e: $30 $51

    ld a, e                                       ; $4b60: $7b
    nop                                           ; $4b61: $00
    jr nz, jr_0b1_4b69                            ; $4b62: $20 $05

    ld h, [hl]                                    ; $4b64: $66

jr_0b1_4b65:
    add b                                         ; $4b65: $80
    jr nz, jr_0b1_4b8d                            ; $4b66: $20 $25

    nop                                           ; $4b68: $00

jr_0b1_4b69:
    nop                                           ; $4b69: $00
    db $10                                        ; $4b6a: $10
    xor h                                         ; $4b6b: $ac
    ld d, l                                       ; $4b6c: $55
    adc a                                         ; $4b6d: $8f
    dec sp                                        ; $4b6e: $3b
    sub h                                         ; $4b6f: $94
    ld l, [hl]                                    ; $4b70: $6e
    nop                                           ; $4b71: $00
    nop                                           ; $4b72: $00
    and b                                         ; $4b73: $a0
    inc h                                         ; $4b74: $24
    ld b, c                                       ; $4b75: $41
    ld b, c                                       ; $4b76: $41
    dec h                                         ; $4b77: $25
    nop                                           ; $4b78: $00
    jr nz, jr_0b1_4b7f                            ; $4b79: $20 $04

    ld sp, $194a                                  ; $4b7b: $31 $4a $19
    ld h, e                                       ; $4b7e: $63

jr_0b1_4b7f:
    db $fc                                        ; $4b7f: $fc
    ld a, a                                       ; $4b80: $7f
    ld bc, $8e00                                  ; $4b81: $01 $00 $8e
    ld l, d                                       ; $4b84: $6a
    db $fc                                        ; $4b85: $fc
    ld a, a                                       ; $4b86: $7f
    ret nz                                        ; $4b87: $c0

    jr nc, jr_0b1_4b8a                            ; $4b88: $30 $00

jr_0b1_4b8a:
    inc b                                         ; $4b8a: $04
    add hl, bc                                    ; $4b8b: $09
    ld e, d                                       ; $4b8c: $5a

jr_0b1_4b8d:
    ldh [$38], a                                  ; $4b8d: $e0 $38
    ld a, [c]                                     ; $4b8f: $f2
    halt                                          ; $4b90: $76
    nop                                           ; $4b91: $00
    jr nz, jr_0b1_4b9d                            ; $4b92: $20 $09

    ld e, d                                       ; $4b94: $5a
    ldh [$38], a                                  ; $4b95: $e0 $38
    ld a, [c]                                     ; $4b97: $f2
    halt                                          ; $4b98: $76
    nop                                           ; $4b99: $00
    jr nz, jr_0b1_4b3c                            ; $4b9a: $20 $a0

jr_0b1_4b9c:
    inc h                                         ; $4b9c: $24

jr_0b1_4b9d:
    ld b, c                                       ; $4b9d: $41
    ld b, c                                       ; $4b9e: $41
    dec h                                         ; $4b9f: $25

jr_0b1_4ba0:
    nop                                           ; $4ba0: $00
    nop                                           ; $4ba1: $00
    ld [$3baf], sp                                ; $4ba2: $08 $af $3b
    jr jr_0b1_4c1e                                ; $4ba5: $18 $77

jr_0b1_4ba7:
    jp Jump_000_0005                              ; $4ba7: $c3 $05 $00


    inc b                                         ; $4baa: $04
    ret z                                         ; $4bab: $c8

    ld c, l                                       ; $4bac: $4d
    ei                                            ; $4bad: $fb
    ld a, a                                       ; $4bae: $7f
    pop bc                                        ; $4baf: $c1
    inc l                                         ; $4bb0: $2c

jr_0b1_4bb1:
    nop                                           ; $4bb1: $00
    nop                                           ; $4bb2: $00
    ld [hl-], a                                   ; $4bb3: $32
    ld b, d                                       ; $4bb4: $42
    ld d, l                                       ; $4bb5: $55
    ld [hl], e                                    ; $4bb6: $73
    add $18                                       ; $4bb7: $c6 $18
    ld b, e                                       ; $4bb9: $43
    inc b                                         ; $4bba: $04
    dec bc                                        ; $4bbb: $0b
    ld d, d                                       ; $4bbc: $52
    inc d                                         ; $4bbd: $14
    ld l, a                                       ; $4bbe: $6f
    inc bc                                        ; $4bbf: $03
    ld sp, $1420                                  ; $4bc0: $31 $20 $14
    add hl, bc                                    ; $4bc3: $09
    ld e, [hl]                                    ; $4bc4: $5e
    sub h                                         ; $4bc5: $94
    ld [hl], d                                    ; $4bc6: $72
    sbc c                                         ; $4bc7: $99
    ld a, e                                       ; $4bc8: $7b
    nop                                           ; $4bc9: $00
    jr nz, jr_0b1_4bd5                            ; $4bca: $20 $09

    ld e, [hl]                                    ; $4bcc: $5e
    sub h                                         ; $4bcd: $94
    ld [hl], d                                    ; $4bce: $72
    sbc c                                         ; $4bcf: $99
    ld a, e                                       ; $4bd0: $7b
    nop                                           ; $4bd1: $00
    jr nz, jr_0b1_4b9c                            ; $4bd2: $20 $c8

    ld c, l                                       ; $4bd4: $4d

jr_0b1_4bd5:
    ei                                            ; $4bd5: $fb
    ld a, a                                       ; $4bd6: $7f
    pop bc                                        ; $4bd7: $c1
    inc l                                         ; $4bd8: $2c
    nop                                           ; $4bd9: $00
    nop                                           ; $4bda: $00
    xor a                                         ; $4bdb: $af
    ccf                                           ; $4bdc: $3f
    sbc h                                         ; $4bdd: $9c
    ld [hl], a                                    ; $4bde: $77
    nop                                           ; $4bdf: $00
    jr nz, jr_0b1_4be2                            ; $4be0: $20 $00

jr_0b1_4be2:
    nop                                           ; $4be2: $00
    rst $00                                       ; $4be3: $c7
    ld d, c                                       ; $4be4: $51
    ld d, e                                       ; $4be5: $53
    ld [hl], a                                    ; $4be6: $77
    and c                                         ; $4be7: $a1
    inc e                                         ; $4be8: $1c
    nop                                           ; $4be9: $00
    nop                                           ; $4bea: $00
    sub $6e                                       ; $4beb: $d6 $6e
    cp l                                          ; $4bed: $bd
    ld a, e                                       ; $4bee: $7b
    and c                                         ; $4bef: $a1
    jr jr_0b1_4bf2                                ; $4bf0: $18 $00

jr_0b1_4bf2:
    nop                                           ; $4bf2: $00
    inc hl                                        ; $4bf3: $23
    dec a                                         ; $4bf4: $3d
    db $eb                                        ; $4bf5: $eb
    ld d, c                                       ; $4bf6: $51
    and c                                         ; $4bf7: $a1
    jr nz, jr_0b1_4bfa                            ; $4bf8: $20 $00

jr_0b1_4bfa:
    nop                                           ; $4bfa: $00
    sbc h                                         ; $4bfb: $9c
    ld [hl], a                                    ; $4bfc: $77
    ld b, c                                       ; $4bfd: $41
    dec a                                         ; $4bfe: $3d
    jr nz, jr_0b1_4c21                            ; $4bff: $20 $20

    nop                                           ; $4c01: $00
    jr nz, jr_0b1_4ba0                            ; $4c02: $20 $9c

    ld [hl], a                                    ; $4c04: $77
    ld b, c                                       ; $4c05: $41
    dec a                                         ; $4c06: $3d
    jr nz, jr_0b1_4c29                            ; $4c07: $20 $20

    nop                                           ; $4c09: $00
    jr nz, @-$37                                  ; $4c0a: $20 $c7

    ld d, c                                       ; $4c0c: $51
    ld d, e                                       ; $4c0d: $53
    ld [hl], a                                    ; $4c0e: $77
    and c                                         ; $4c0f: $a1
    inc e                                         ; $4c10: $1c
    nop                                           ; $4c11: $00
    jr nz, jr_0b1_4ba7                            ; $4c12: $20 $93

    ld h, d                                       ; $4c14: $62
    sbc h                                         ; $4c15: $9c
    ld [hl], a                                    ; $4c16: $77
    ld l, c                                       ; $4c17: $69
    ld b, l                                       ; $4c18: $45
    nop                                           ; $4c19: $00
    nop                                           ; $4c1a: $00
    ld sp, $0666                                  ; $4c1b: $31 $66 $06

jr_0b1_4c1e:
    ld b, c                                       ; $4c1e: $41
    rst $30                                       ; $4c1f: $f7
    ld [hl], d                                    ; $4c20: $72

jr_0b1_4c21:
    daa                                           ; $4c21: $27
    ld b, l                                       ; $4c22: $45
    sub l                                         ; $4c23: $95
    ld [hl], d                                    ; $4c24: $72
    sbc h                                         ; $4c25: $9c
    ld a, e                                       ; $4c26: $7b
    adc $5d                                       ; $4c27: $ce $5d

jr_0b1_4c29:
    nop                                           ; $4c29: $00
    nop                                           ; $4c2a: $00
    ld l, d                                       ; $4c2b: $6a
    ld c, l                                       ; $4c2c: $4d
    rla                                           ; $4c2d: $17
    ld l, a                                       ; $4c2e: $6f
    jr nc, jr_0b1_4c8f                            ; $4c2f: $30 $5e

    nop                                           ; $4c31: $00
    inc d                                         ; $4c32: $14
    ld [hl], e                                    ; $4c33: $73
    ld e, [hl]                                    ; $4c34: $5e
    cp l                                          ; $4c35: $bd
    ld a, e                                       ; $4c36: $7b
    push hl                                       ; $4c37: $e5
    inc a                                         ; $4c38: $3c
    nop                                           ; $4c39: $00
    jr nz, jr_0b1_4caf                            ; $4c3a: $20 $73

    ld e, [hl]                                    ; $4c3c: $5e
    cp l                                          ; $4c3d: $bd
    ld a, e                                       ; $4c3e: $7b
    push hl                                       ; $4c3f: $e5
    inc a                                         ; $4c40: $3c
    nop                                           ; $4c41: $00
    jr nz, jr_0b1_4c44                            ; $4c42: $20 $00

jr_0b1_4c44:
    jr nz, @+$01                                  ; $4c44: $20 $ff

    ld l, a                                       ; $4c46: $6f
    cp [hl]                                       ; $4c47: $be
    dec hl                                        ; $4c48: $2b
    nop                                           ; $4c49: $00

jr_0b1_4c4a:
    jr nz, jr_0b1_4c4c                            ; $4c4a: $20 $00

jr_0b1_4c4c:
    jr nz, @+$01                                  ; $4c4c: $20 $ff

    ld l, a                                       ; $4c4e: $6f
    cp [hl]                                       ; $4c4f: $be
    dec hl                                        ; $4c50: $2b
    nop                                           ; $4c51: $00
    jr nz, jr_0b1_4c54                            ; $4c52: $20 $00

jr_0b1_4c54:
    jr nz, @+$01                                  ; $4c54: $20 $ff

    ld l, a                                       ; $4c56: $6f
    cp [hl]                                       ; $4c57: $be
    dec hl                                        ; $4c58: $2b
    nop                                           ; $4c59: $00
    nop                                           ; $4c5a: $00
    dec sp                                        ; $4c5b: $3b
    inc bc                                        ; $4c5c: $03
    rst $18                                       ; $4c5d: $df
    ld c, e                                       ; $4c5e: $4b
    nop                                           ; $4c5f: $00
    jr nz, jr_0b1_4c62                            ; $4c60: $20 $00

jr_0b1_4c62:
    inc c                                         ; $4c62: $0c
    ld d, d                                       ; $4c63: $52
    ld bc, $473f                                  ; $4c64: $01 $3f $47
    cp c                                          ; $4c67: $b9
    ld bc, $0000                                  ; $4c68: $01 $00 $00
    dec a                                         ; $4c6b: $3d
    ld [bc], a                                    ; $4c6c: $02
    xor d                                         ; $4c6d: $aa
    nop                                           ; $4c6e: $00
    nop                                           ; $4c6f: $00
    jr nz, jr_0b1_4c72                            ; $4c70: $20 $00

jr_0b1_4c72:
    jr nz, @+$3f                                  ; $4c72: $20 $3d

    ld [bc], a                                    ; $4c74: $02
    xor d                                         ; $4c75: $aa
    nop                                           ; $4c76: $00
    nop                                           ; $4c77: $00
    jr nz, jr_0b1_4c7a                            ; $4c78: $20 $00

jr_0b1_4c7a:
    jr nz, jr_0b1_4c7c                            ; $4c7a: $20 $00

jr_0b1_4c7c:
    jr nz, @+$01                                  ; $4c7c: $20 $ff

    ld l, a                                       ; $4c7e: $6f
    cp [hl]                                       ; $4c7f: $be
    dec hl                                        ; $4c80: $2b
    nop                                           ; $4c81: $00
    jr nz, jr_0b1_4c84                            ; $4c82: $20 $00

jr_0b1_4c84:
    jr nz, @+$01                                  ; $4c84: $20 $ff

    ld l, a                                       ; $4c86: $6f
    cp [hl]                                       ; $4c87: $be
    dec hl                                        ; $4c88: $2b
    nop                                           ; $4c89: $00
    nop                                           ; $4c8a: $00
    ld a, c                                       ; $4c8b: $79
    ld bc, $2000                                  ; $4c8c: $01 $00 $20

jr_0b1_4c8f:
    adc d                                         ; $4c8f: $8a
    nop                                           ; $4c90: $00
    ld [bc], a                                    ; $4c91: $02
    nop                                           ; $4c92: $00
    db $fd                                        ; $4c93: $fd
    ld bc, $537f                                  ; $4c94: $01 $7f $53
    sbc l                                         ; $4c97: $9d
    inc bc                                        ; $4c98: $03
    nop                                           ; $4c99: $00
    nop                                           ; $4c9a: $00
    cp c                                          ; $4c9b: $b9
    ld bc, $473f                                  ; $4c9c: $01 $3f $47
    jp z, $6700                                   ; $4c9f: $ca $00 $67

    nop                                           ; $4ca2: $00
    ei                                            ; $4ca3: $fb
    ld bc, $473f                                  ; $4ca4: $01 $3f $47
    ld [hl], d                                    ; $4ca7: $72
    ld bc, $0000                                  ; $4ca8: $01 $00 $00
    rst $38                                       ; $4cab: $ff
    ld bc, $2000                                  ; $4cac: $01 $00 $20

jr_0b1_4caf:
    ld [hl], d                                    ; $4caf: $72
    ld bc, $2000                                  ; $4cb0: $01 $00 $20
    ld a, c                                       ; $4cb3: $79
    ld bc, $2000                                  ; $4cb4: $01 $00 $20
    adc d                                         ; $4cb7: $8a
    nop                                           ; $4cb8: $00
    nop                                           ; $4cb9: $00
    nop                                           ; $4cba: $00
    nop                                           ; $4cbb: $00
    jr nz, jr_0b1_4cbe                            ; $4cbc: $20 $00

jr_0b1_4cbe:
    jr nz, jr_0b1_4c4a                            ; $4cbe: $20 $8a

    nop                                           ; $4cc0: $00
    nop                                           ; $4cc1: $00
    nop                                           ; $4cc2: $00
    dec e                                         ; $4cc3: $1d
    ld [bc], a                                    ; $4cc4: $02
    ccf                                           ; $4cc5: $3f
    ld b, a                                       ; $4cc6: $47
    nop                                           ; $4cc7: $00
    jr nz, jr_0b1_4cca                            ; $4cc8: $20 $00

jr_0b1_4cca:
    nop                                           ; $4cca: $00
    cp e                                          ; $4ccb: $bb
    ld bc, $00cb                                  ; $4ccc: $01 $cb $00
    ccf                                           ; $4ccf: $3f
    ld b, a                                       ; $4cd0: $47
    ld b, e                                       ; $4cd1: $43
    nop                                           ; $4cd2: $00
    ld [hl], h                                    ; $4cd3: $74
    ld bc, $473f                                  ; $4cd4: $01 $3f $47
    db $fc                                        ; $4cd7: $fc
    ld bc, $0000                                  ; $4cd8: $01 $00 $00
    sub [hl]                                      ; $4cdb: $96
    ld bc, $473f                                  ; $4cdc: $01 $3f $47
    rst $38                                       ; $4cdf: $ff
    ld bc, $0000                                  ; $4ce0: $01 $00 $00
    rlc b                                         ; $4ce3: $cb $00
    cp d                                          ; $4ce5: $ba
    ld bc, $2000                                  ; $4ce6: $01 $00 $20
    nop                                           ; $4ce9: $00
    jr nz, jr_0b1_4d09                            ; $4cea: $20 $1d

    ld [bc], a                                    ; $4cec: $02
    ccf                                           ; $4ced: $3f
    ld b, a                                       ; $4cee: $47
    nop                                           ; $4cef: $00
    jr nz, jr_0b1_4cf2                            ; $4cf0: $20 $00

jr_0b1_4cf2:
    nop                                           ; $4cf2: $00
    or l                                          ; $4cf3: $b5
    ld [bc], a                                    ; $4cf4: $02
    rst $38                                       ; $4cf5: $ff
    ld a, a                                       ; $4cf6: $7f
    nop                                           ; $4cf7: $00
    jr nz, jr_0b1_4cfa                            ; $4cf8: $20 $00

jr_0b1_4cfa:
    nop                                           ; $4cfa: $00
    db $fc                                        ; $4cfb: $fc
    ld bc, $473f                                  ; $4cfc: $01 $3f $47
    nop                                           ; $4cff: $00
    inc e                                         ; $4d00: $1c
    ld [bc], a                                    ; $4d01: $02
    nop                                           ; $4d02: $00
    or [hl]                                       ; $4d03: $b6
    ld bc, $473f                                  ; $4d04: $01 $3f $47
    cp $01                                        ; $4d07: $fe $01

jr_0b1_4d09:
    nop                                           ; $4d09: $00
    nop                                           ; $4d0a: $00
    db $fd                                        ; $4d0b: $fd
    ld bc, $473f                                  ; $4d0c: $01 $3f $47
    rlc b                                         ; $4d0f: $cb $00
    ld bc, $d900                                  ; $4d11: $01 $00 $d9
    ld bc, $473f                                  ; $4d14: $01 $3f $47
    xor d                                         ; $4d17: $aa
    nop                                           ; $4d18: $00
    nop                                           ; $4d19: $00
    nop                                           ; $4d1a: $00
    nop                                           ; $4d1b: $00
    jr nz, @+$41                                  ; $4d1c: $20 $3f

    ld b, a                                       ; $4d1e: $47
    xor d                                         ; $4d1f: $aa

jr_0b1_4d20:
    nop                                           ; $4d20: $00
    nop                                           ; $4d21: $00
    jr nz, jr_0b1_4d20                            ; $4d22: $20 $fc

    ld bc, $473f                                  ; $4d24: $01 $3f $47
    nop                                           ; $4d27: $00
    inc e                                         ; $4d28: $1c
    nop                                           ; $4d29: $00
    inc d                                         ; $4d2a: $14

jr_0b1_4d2b:
    sbc h                                         ; $4d2b: $9c
    inc bc                                        ; $4d2c: $03
    rst $38                                       ; $4d2d: $ff
    ld a, a                                       ; $4d2e: $7f
    adc $01                                       ; $4d2f: $ce $01
    nop                                           ; $4d31: $00
    inc b                                         ; $4d32: $04
    push af                                       ; $4d33: $f5
    add hl, bc                                    ; $4d34: $09
    ccf                                           ; $4d35: $3f
    ld b, a                                       ; $4d36: $47
    dec a                                         ; $4d37: $3d
    ld [bc], a                                    ; $4d38: $02
    nop                                           ; $4d39: $00
    nop                                           ; $4d3a: $00
    ld c, $01                                     ; $4d3b: $0e $01
    sub h                                         ; $4d3d: $94
    ld bc, $0087                                  ; $4d3e: $01 $87 $00
    ld bc, $db00                                  ; $4d41: $01 $00 $db
    dec d                                         ; $4d44: $15
    ccf                                           ; $4d45: $3f
    ld b, a                                       ; $4d46: $47
    adc b                                         ; $4d47: $88
    nop                                           ; $4d48: $00
    ld [hl+], a                                   ; $4d49: $22
    nop                                           ; $4d4a: $00
    rrca                                          ; $4d4b: $0f
    ld bc, $2000                                  ; $4d4c: $01 $00 $20
    jp c, Jump_000_0001                           ; $4d4f: $da $01 $00

    jr nz, jr_0b1_4d63                            ; $4d52: $20 $0f

    ld bc, $2000                                  ; $4d54: $01 $00 $20
    jp c, Jump_000_0001                           ; $4d57: $da $01 $00

    nop                                           ; $4d5a: $00
    nop                                           ; $4d5b: $00
    jr nz, jr_0b1_4d9d                            ; $4d5c: $20 $3f

    ld b, a                                       ; $4d5e: $47
    dec a                                         ; $4d5f: $3d
    ld [bc], a                                    ; $4d60: $02
    nop                                           ; $4d61: $00
    inc c                                         ; $4d62: $0c

jr_0b1_4d63:
    adc $01                                       ; $4d63: $ce $01
    cp a                                          ; $4d65: $bf
    dec a                                         ; $4d66: $3d
    rla                                           ; $4d67: $17
    inc b                                         ; $4d68: $04
    ld [hl+], a                                   ; $4d69: $22
    nop                                           ; $4d6a: $00
    ld d, a                                       ; $4d6b: $57
    add hl, bc                                    ; $4d6c: $09
    ccf                                           ; $4d6d: $3f
    ld b, [hl]                                    ; $4d6e: $46
    ld e, $02                                     ; $4d6f: $1e $02
    nop                                           ; $4d71: $00
    nop                                           ; $4d72: $00
    jr nc, jr_0b1_4d76                            ; $4d73: $30 $01

jr_0b1_4d75:
    reti                                          ; $4d75: $d9


jr_0b1_4d76:
    add hl, hl                                    ; $4d76: $29
    adc c                                         ; $4d77: $89
    nop                                           ; $4d78: $00
    nop                                           ; $4d79: $00
    nop                                           ; $4d7a: $00
    inc d                                         ; $4d7b: $14

jr_0b1_4d7c:
    ld bc, $321b                                  ; $4d7c: $01 $1b $32
    ld h, a                                       ; $4d7f: $67
    nop                                           ; $4d80: $00
    nop                                           ; $4d81: $00
    nop                                           ; $4d82: $00
    sbc a                                         ; $4d83: $9f
    ld b, $00                                     ; $4d84: $06 $00
    jr nz, jr_0b1_4d75                            ; $4d86: $20 $ed

    nop                                           ; $4d88: $00
    nop                                           ; $4d89: $00
    jr nz, jr_0b1_4d2b                            ; $4d8a: $20 $9f

    ld b, $00                                     ; $4d8c: $06 $00
    jr nz, @-$11                                  ; $4d8e: $20 $ed

    nop                                           ; $4d90: $00
    nop                                           ; $4d91: $00
    nop                                           ; $4d92: $00
    adc $01                                       ; $4d93: $ce $01
    sbc h                                         ; $4d95: $9c
    inc bc                                        ; $4d96: $03
    nop                                           ; $4d97: $00
    jr nz, jr_0b1_4d9a                            ; $4d98: $20 $00

jr_0b1_4d9a:
    inc b                                         ; $4d9a: $04
    sbc h                                         ; $4d9b: $9c
    inc bc                                        ; $4d9c: $03

jr_0b1_4d9d:
    rst $38                                       ; $4d9d: $ff
    ld a, a                                       ; $4d9e: $7f
    ld c, l                                       ; $4d9f: $4d
    nop                                           ; $4da0: $00
    ld hl, $5c00                                  ; $4da1: $21 $00 $5c

jr_0b1_4da4:
    add hl, de                                    ; $4da4: $19
    inc sp                                        ; $4da5: $33
    nop                                           ; $4da6: $00
    ccf                                           ; $4da7: $3f
    ld c, d                                       ; $4da8: $4a
    ld h, [hl]                                    ; $4da9: $66
    nop                                           ; $4daa: $00
    sub [hl]                                      ; $4dab: $96
    ld bc, $6b5a                                  ; $4dac: $01 $5a $6b
    rst $30                                       ; $4daf: $f7
    dec l                                         ; $4db0: $2d
    adc c                                         ; $4db1: $89
    nop                                           ; $4db2: $00
    ld a, [hl]                                    ; $4db3: $7e
    ld l, $ff                                     ; $4db4: $2e $ff
    ld a, a                                       ; $4db6: $7f
    sub h                                         ; $4db7: $94
    dec e                                         ; $4db8: $1d
    nop                                           ; $4db9: $00
    nop                                           ; $4dba: $00
    cp b                                          ; $4dbb: $b8
    ld bc, $473f                                  ; $4dbc: $01 $3f $47
    nop                                           ; $4dbf: $00
    jr nz, jr_0b1_4dc2                            ; $4dc0: $20 $00

jr_0b1_4dc2:
    jr nz, jr_0b1_4d7c                            ; $4dc2: $20 $b8

    ld bc, $473f                                  ; $4dc4: $01 $3f $47
    nop                                           ; $4dc7: $00
    jr nz, jr_0b1_4dca                            ; $4dc8: $20 $00

jr_0b1_4dca:
    nop                                           ; $4dca: $00
    add hl, sp                                    ; $4dcb: $39
    inc bc                                        ; $4dcc: $03
    nop                                           ; $4dcd: $00
    inc e                                         ; $4dce: $1c
    nop                                           ; $4dcf: $00
    jr nz, jr_0b1_4dd3                            ; $4dd0: $20 $01

    nop                                           ; $4dd2: $00

jr_0b1_4dd3:
    db $fd                                        ; $4dd3: $fd
    jr nz, jr_0b1_4da4                            ; $4dd4: $20 $ce

    ld bc, $039c                                  ; $4dd6: $01 $9c $03
    inc h                                         ; $4dd9: $24
    inc b                                         ; $4dda: $04
    db $fc                                        ; $4ddb: $fc
    jr jr_0b1_4df2                                ; $4ddc: $18 $14

    nop                                           ; $4dde: $00
    ccf                                           ; $4ddf: $3f
    ld c, d                                       ; $4de0: $4a
    nop                                           ; $4de1: $00
    nop                                           ; $4de2: $00
    inc e                                         ; $4de3: $1c
    ld [hl+], a                                   ; $4de4: $22
    rst $38                                       ; $4de5: $ff
    ld a, a                                       ; $4de6: $7f
    jp z, Jump_0b1_4208                           ; $4de7: $ca $08 $42

    nop                                           ; $4dea: $00
    ld e, a                                       ; $4deb: $5f

jr_0b1_4dec:
    ld [bc], a                                    ; $4dec: $02
    call z, $bf00                                 ; $4ded: $cc $00 $bf
    ld c, d                                       ; $4df0: $4a
    nop                                           ; $4df1: $00

jr_0b1_4df2:
    nop                                           ; $4df2: $00
    ld d, e                                       ; $4df3: $53
    ld bc, $063b                                  ; $4df4: $01 $3b $06
    ld [hl-], a                                   ; $4df7: $32
    ld [de], a                                    ; $4df8: $12
    nop                                           ; $4df9: $00
    jr nz, jr_0b1_4dec                            ; $4dfa: $20 $f0

    dec d                                         ; $4dfc: $15
    ld [hl-], a                                   ; $4dfd: $32
    ld [de], a                                    ; $4dfe: $12
    ld [hl-], a                                   ; $4dff: $32
    ld [de], a                                    ; $4e00: $12
    nop                                           ; $4e01: $00
    jr nz, jr_0b1_4dd3                            ; $4e02: $20 $cf

    dec d                                         ; $4e04: $15
    ld a, [hl-]                                   ; $4e05: $3a
    inc bc                                        ; $4e06: $03
    sub l                                         ; $4e07: $95
    ld c, $00                                     ; $4e08: $0e $00
    nop                                           ; $4e0a: $00
    inc d                                         ; $4e0b: $14
    nop                                           ; $4e0c: $00
    ld e, c                                       ; $4e0d: $59
    ld [$211e], sp                                ; $4e0e: $08 $1e $21
    ld hl, $ef04                                  ; $4e11: $21 $04 $ef
    inc e                                         ; $4e14: $1c
    ld a, [hl]                                    ; $4e15: $7e
    dec l                                         ; $4e16: $2d
    ld d, a                                       ; $4e17: $57
    ld [$0000], sp                                ; $4e18: $08 $00 $00
    cp c                                          ; $4e1b: $b9
    ld bc, $3e7e                                  ; $4e1c: $01 $7e $3e
    sbc h                                         ; $4e1f: $9c
    add hl, hl                                    ; $4e20: $29
    ld hl, $9e00                                  ; $4e21: $21 $00 $9e

jr_0b1_4e24:
    ld b, [hl]                                    ; $4e24: $46
    ld a, a                                       ; $4e25: $7f
    ld h, a                                       ; $4e26: $67
    xor e                                         ; $4e27: $ab
    nop                                           ; $4e28: $00
    nop                                           ; $4e29: $00
    nop                                           ; $4e2a: $00
    push de                                       ; $4e2b: $d5
    dec b                                         ; $4e2c: $05
    ccf                                           ; $4e2d: $3f
    ld b, a                                       ; $4e2e: $47
    adc c                                         ; $4e2f: $89
    nop                                           ; $4e30: $00
    nop                                           ; $4e31: $00
    jr nz, jr_0b1_4e24                            ; $4e32: $20 $f0

    ld de, $06d8                                  ; $4e34: $11 $d8 $06
    sbc [hl]                                      ; $4e37: $9e
    inc bc                                        ; $4e38: $03
    nop                                           ; $4e39: $00
    inc e                                         ; $4e3a: $1c
    ld de, $de12                                  ; $4e3b: $11 $12 $de
    ld d, e                                       ; $4e3e: $53
    dec sp                                        ; $4e3f: $3b
    inc bc                                        ; $4e40: $03
    nop                                           ; $4e41: $00
    nop                                           ; $4e42: $00
    dec d                                         ; $4e43: $15
    nop                                           ; $4e44: $00
    dec c                                         ; $4e45: $0d
    nop                                           ; $4e46: $00
    add hl, sp                                    ; $4e47: $39
    inc b                                         ; $4e48: $04
    inc bc                                        ; $4e49: $03
    nop                                           ; $4e4a: $00
    jr c, jr_0b1_4e51                             ; $4e4b: $38 $04

    ld a, l                                       ; $4e4d: $7d
    dec l                                         ; $4e4e: $2d
    adc $18                                       ; $4e4f: $ce $18

jr_0b1_4e51:
    nop                                           ; $4e51: $00
    nop                                           ; $4e52: $00
    ld a, e                                       ; $4e53: $7b
    dec h                                         ; $4e54: $25
    ld [hl], b                                    ; $4e55: $70
    ld [$427e], sp                                ; $4e56: $08 $7e $42
    nop                                           ; $4e59: $00
    nop                                           ; $4e5a: $00
    sbc [hl]                                      ; $4e5b: $9e
    ld b, [hl]                                    ; $4e5c: $46
    ld c, h                                       ; $4e5d: $4c
    nop                                           ; $4e5e: $00
    db $f4                                        ; $4e5f: $f4
    nop                                           ; $4e60: $00
    xor d                                         ; $4e61: $aa
    nop                                           ; $4e62: $00
    ccf                                           ; $4e63: $3f
    ld b, a                                       ; $4e64: $47
    jp c, Jump_000_1101                           ; $4e65: $da $01 $11

    ld bc, $1c00                                  ; $4e68: $01 $00 $1c
    ld a, [c]                                     ; $4e6b: $f2
    add hl, bc                                    ; $4e6c: $09
    sbc [hl]                                      ; $4e6d: $9e
    inc de                                        ; $4e6e: $13
    rst $38                                       ; $4e6f: $ff
    ld h, e                                       ; $4e70: $63
    ld bc, $9d04                                  ; $4e71: $01 $04 $9d
    dec de                                        ; $4e74: $1b
    rst $18                                       ; $4e75: $df
    ld h, a                                       ; $4e76: $67
    sub h                                         ; $4e77: $94
    ld d, b                                       ; $4e78: $50
    ld a, [bc]                                    ; $4e79: $0a
    nop                                           ; $4e7a: $00
    stop                                          ; $4e7b: $10 $00
    inc d                                         ; $4e7d: $14
    nop                                           ; $4e7e: $00
    inc c                                         ; $4e7f: $0c
    nop                                           ; $4e80: $00
    nop                                           ; $4e81: $00
    nop                                           ; $4e82: $00
    ld c, $21                                     ; $4e83: $0e $21
    sbc [hl]                                      ; $4e85: $9e
    ld sp, $0437                                  ; $4e86: $31 $37 $04
    ld bc, $fd00                                  ; $4e89: $01 $00 $fd
    ld sp, $08ab                                  ; $4e8c: $31 $ab $08
    inc sp                                        ; $4e8f: $33
    inc b                                         ; $4e90: $04
    nop                                           ; $4e91: $00
    nop                                           ; $4e92: $00
    inc a                                         ; $4e93: $3c
    ld [hl], $6d                                  ; $4e94: $36 $6d
    nop                                           ; $4e96: $00
    scf                                           ; $4e97: $37
    inc b                                         ; $4e98: $04
    nop                                           ; $4e99: $00
    nop                                           ; $4e9a: $00
    or [hl]                                       ; $4e9b: $b6
    ld bc, $01fd                                  ; $4e9c: $01 $fd $01
    adc c                                         ; $4e9f: $89
    nop                                           ; $4ea0: $00
    nop                                           ; $4ea1: $00
    inc e                                         ; $4ea2: $1c
    db $dd                                        ; $4ea3: $dd
    ld c, $b5                                     ; $4ea4: $0e $b5
    ld d, h                                       ; $4ea6: $54
    cp [hl]                                       ; $4ea7: $be
    ld d, a                                       ; $4ea8: $57
    ld bc, $4f00                                  ; $4ea9: $01 $00 $4f
    dec c                                         ; $4eac: $0d
    sbc l                                         ; $4ead: $9d
    rla                                           ; $4eae: $17
    or l                                          ; $4eaf: $b5
    ld d, h                                       ; $4eb0: $54
    dec b                                         ; $4eb1: $05
    nop                                           ; $4eb2: $00
    ldh a, [rNR32]                                ; $4eb3: $f0 $1c
    jr c, jr_0b1_4edc                             ; $4eb5: $38 $25

    xor d                                         ; $4eb7: $aa
    inc d                                         ; $4eb8: $14
    ld bc, $1600                                  ; $4eb9: $01 $00 $16
    nop                                           ; $4ebc: $00
    db $fc                                        ; $4ebd: $fc
    inc e                                         ; $4ebe: $1c
    dec c                                         ; $4ebf: $0d
    nop                                           ; $4ec0: $00
    nop                                           ; $4ec1: $00
    nop                                           ; $4ec2: $00
    ld d, l                                       ; $4ec3: $55
    ld [$004b], sp                                ; $4ec4: $08 $4b $00
    reti                                          ; $4ec7: $d9


    add hl, hl                                    ; $4ec8: $29
    ld bc, $5400                                  ; $4ec9: $01 $00 $54
    ld bc, $3a5d                                  ; $4ecc: $01 $5d $3a
    ccf                                           ; $4ecf: $3f
    ld [bc], a                                    ; $4ed0: $02
    ld bc, $5200                                  ; $4ed1: $01 $00 $52
    ld bc, $0199                                  ; $4ed4: $01 $99 $01
    ld e, $02                                     ; $4ed7: $1e $02
    nop                                           ; $4ed9: $00
    inc e                                         ; $4eda: $1c
    or l                                          ; $4edb: $b5

jr_0b1_4edc:
    ld d, h                                       ; $4edc: $54
    dec e                                         ; $4edd: $1d
    dec bc                                        ; $4ede: $0b
    rst $18                                       ; $4edf: $df
    ld d, a                                       ; $4ee0: $57
    call z, Call_0b1_7d08                         ; $4ee1: $cc $08 $7d
    dec l                                         ; $4ee4: $2d
    rst $38                                       ; $4ee5: $ff
    ld a, a                                       ; $4ee6: $7f
    ld a, h                                       ; $4ee7: $7c
    rrca                                          ; $4ee8: $0f
    ei                                            ; $4ee9: $fb
    inc e                                         ; $4eea: $1c
    cp a                                          ; $4eeb: $bf
    dec [hl]                                      ; $4eec: $35
    ld e, h                                       ; $4eed: $5c
    add hl, hl                                    ; $4eee: $29
    rst $38                                       ; $4eef: $ff
    dec a                                         ; $4ef0: $3d
    inc bc                                        ; $4ef1: $03
    nop                                           ; $4ef2: $00
    ld e, h                                       ; $4ef3: $5c
    ld [$2956], sp                                ; $4ef4: $08 $56 $29
    rst $18                                       ; $4ef7: $df
    add hl, sp                                    ; $4ef8: $39
    ld [bc], a                                    ; $4ef9: $02
    nop                                           ; $4efa: $00
    or d                                          ; $4efb: $b2
    inc d                                         ; $4efc: $14
    reti                                          ; $4efd: $d9


    add hl, hl                                    ; $4efe: $29
    cp $1c                                        ; $4eff: $fe $1c
    nop                                           ; $4f01: $00
    nop                                           ; $4f02: $00
    sub [hl]                                      ; $4f03: $96
    ld bc, $473f                                  ; $4f04: $01 $3f $47
    rlc b                                         ; $4f07: $cb $00
    ld b, h                                       ; $4f09: $44
    nop                                           ; $4f0a: $00
    or $58                                        ; $4f0b: $f6 $58
    ld [hl], e                                    ; $4f0d: $73
    ld bc, $023f                                  ; $4f0e: $01 $3f $02
    nop                                           ; $4f11: $00
    inc e                                         ; $4f12: $1c
    sub $58                                       ; $4f13: $d6 $58
    sub l                                         ; $4f15: $95
    ld a, [bc]                                    ; $4f16: $0a
    cp [hl]                                       ; $4f17: $be
    daa                                           ; $4f18: $27
    nop                                           ; $4f19: $00
    nop                                           ; $4f1a: $00
    ld a, e                                       ; $4f1b: $7b
    inc bc                                        ; $4f1c: $03
    adc $01                                       ; $4f1d: $ce $01
    inc sp                                        ; $4f1f: $33
    inc b                                         ; $4f20: $04
    jr c, @+$06                                   ; $4f21: $38 $04

    sbc d                                         ; $4f23: $9a
    db $10                                        ; $4f24: $10
    ld e, c                                       ; $4f25: $59
    ld [$1cfb], sp                                ; $4f26: $08 $fb $1c
    nop                                           ; $4f29: $00
    nop                                           ; $4f2a: $00
    db $db                                        ; $4f2b: $db
    jr @+$01                                      ; $4f2c: $18 $ff

    dec a                                         ; $4f2e: $3d
    xor $1c                                       ; $4f2f: $ee $1c
    ld bc, $1700                                  ; $4f31: $01 $00 $17
    ld hl, $35bf                                  ; $4f34: $21 $bf $35
    or $31                                        ; $4f37: $f6 $31
    nop                                           ; $4f39: $00
    nop                                           ; $4f3a: $00
    jr nc, jr_0b1_4f3e                            ; $4f3b: $30 $01

    ret c                                         ; $4f3d: $d8

jr_0b1_4f3e:
    dec b                                         ; $4f3e: $05
    rra                                           ; $4f3f: $1f
    ld [bc], a                                    ; $4f40: $02
    nop                                           ; $4f41: $00
    nop                                           ; $4f42: $00
    or $58                                        ; $4f43: $f6 $58
    call c, Call_000_0d01                         ; $4f45: $dc $01 $0d
    ld bc, $1c00                                  ; $4f48: $01 $00 $1c
    rst $30                                       ; $4f4b: $f7
    ld e, h                                       ; $4f4c: $5c
    ld [hl-], a                                   ; $4f4d: $32
    ld c, $be                                     ; $4f4e: $0e $be
    rra                                           ; $4f50: $1f
    nop                                           ; $4f51: $00
    db $10                                        ; $4f52: $10
    ld [hl-], a                                   ; $4f53: $32
    ld c, $0f                                     ; $4f54: $0e $0f
    nop                                           ; $4f56: $00
    sbc [hl]                                      ; $4f57: $9e
    rlca                                          ; $4f58: $07
    rrca                                          ; $4f59: $0f
    nop                                           ; $4f5a: $00
    dec d                                         ; $4f5b: $15
    nop                                           ; $4f5c: $00
    jr jr_0b1_4f5f                                ; $4f5d: $18 $00

jr_0b1_4f5f:
    ld [de], a                                    ; $4f5f: $12
    nop                                           ; $4f60: $00
    inc b                                         ; $4f61: $04
    nop                                           ; $4f62: $00
    ld [hl], h                                    ; $4f63: $74
    inc c                                         ; $4f64: $0c
    ld e, a                                       ; $4f65: $5f
    add hl, hl                                    ; $4f66: $29
    ld a, h                                       ; $4f67: $7c
    inc c                                         ; $4f68: $0c
    nop                                           ; $4f69: $00
    nop                                           ; $4f6a: $00
    sub e                                         ; $4f6b: $93
    dec h                                         ; $4f6c: $25
    inc e                                         ; $4f6d: $1c
    ld [hl], $de                                  ; $4f6e: $36 $de
    ld c, [hl]                                    ; $4f70: $4e
    ld hl, $d400                                  ; $4f71: $21 $00 $d4
    dec l                                         ; $4f74: $2d
    db $fd                                        ; $4f75: $fd
    ld bc, $0176                                  ; $4f76: $01 $76 $01
    nop                                           ; $4f79: $00
    nop                                           ; $4f7a: $00
    ld c, $01                                     ; $4f7b: $0e $01
    ld e, $02                                     ; $4f7d: $1e $02
    ld [hl], h                                    ; $4f7f: $74
    ld bc, $1c00                                  ; $4f80: $01 $00 $1c
    rla                                           ; $4f83: $17
    ld e, l                                       ; $4f84: $5d
    inc d                                         ; $4f85: $14
    ld a, [bc]                                    ; $4f86: $0a
    ld a, h                                       ; $4f87: $7c
    inc bc                                        ; $4f88: $03
    ld [bc], a                                    ; $4f89: $02
    nop                                           ; $4f8a: $00
    ld [hl-], a                                   ; $4f8b: $32
    ld c, $58                                     ; $4f8c: $0e $58
    ld h, c                                       ; $4f8e: $61
    nop                                           ; $4f8f: $00
    jr nz, jr_0b1_4f92                            ; $4f90: $20 $00

jr_0b1_4f92:
    nop                                           ; $4f92: $00
    dec d                                         ; $4f93: $15
    nop                                           ; $4f94: $00
    dec bc                                        ; $4f95: $0b
    nop                                           ; $4f96: $00
    dec e                                         ; $4f97: $1d
    nop                                           ; $4f98: $00
    nop                                           ; $4f99: $00
    nop                                           ; $4f9a: $00
    ld d, $21                                     ; $4f9b: $16 $21
    rra                                           ; $4f9d: $1f
    ld hl, $0430                                  ; $4f9e: $21 $30 $04
    sub h                                         ; $4fa1: $94
    dec h                                         ; $4fa2: $25
    sbc [hl]                                      ; $4fa3: $9e
    ld b, [hl]                                    ; $4fa4: $46
    dec de                                        ; $4fa5: $1b
    ld [hl-], a                                   ; $4fa6: $32
    rst $38                                       ; $4fa7: $ff
    ld c, [hl]                                    ; $4fa8: $4e
    nop                                           ; $4fa9: $00
    nop                                           ; $4faa: $00
    inc sp                                        ; $4fab: $33
    ld bc, $42bd                                  ; $4fac: $01 $bd $42
    jp c, Jump_000_0001                           ; $4faf: $da $01 $00

    nop                                           ; $4fb2: $00
    xor $00                                       ; $4fb3: $ee $00
    cp h                                          ; $4fb5: $bc
    ld bc, $0176                                  ; $4fb6: $01 $76 $01
    nop                                           ; $4fb9: $00
    inc e                                         ; $4fba: $1c
    rla                                           ; $4fbb: $17
    ld b, $3f                                     ; $4fbc: $06 $3f
    ld b, a                                       ; $4fbe: $47
    ld e, h                                       ; $4fbf: $5c
    inc bc                                        ; $4fc0: $03
    nop                                           ; $4fc1: $00
    nop                                           ; $4fc2: $00
    ld e, b                                       ; $4fc3: $58
    ld h, c                                       ; $4fc4: $61
    ld [hl], h                                    ; $4fc5: $74
    ld a, [bc]                                    ; $4fc6: $0a
    nop                                           ; $4fc7: $00
    jr nz, jr_0b1_4fca                            ; $4fc8: $20 $00

jr_0b1_4fca:
    nop                                           ; $4fca: $00
    rrca                                          ; $4fcb: $0f
    nop                                           ; $4fcc: $00
    rlca                                          ; $4fcd: $07
    nop                                           ; $4fce: $00
    ld d, e                                       ; $4fcf: $53
    ld [$0002], sp                                ; $4fd0: $08 $02 $00
    inc [hl]                                      ; $4fd3: $34
    inc b                                         ; $4fd4: $04
    ld a, [$9f18]                                 ; $4fd5: $fa $18 $9f
    ld sp, $190d                                  ; $4fd8: $31 $0d $19
    cp a                                          ; $4fdb: $bf
    ld b, [hl]                                    ; $4fdc: $46
    rst $30                                       ; $4fdd: $f7
    dec l                                         ; $4fde: $2d
    ld a, [de]                                    ; $4fdf: $1a
    ld [hl-], a                                   ; $4fe0: $32
    nop                                           ; $4fe1: $00
    nop                                           ; $4fe2: $00
    or a                                          ; $4fe3: $b7
    ld bc, $42be                                  ; $4fe4: $01 $be $42
    rlc b                                         ; $4fe7: $cb $00
    ld d, d                                       ; $4fe9: $52
    ld bc, $473f                                  ; $4fea: $01 $3f $47
    cp $01                                        ; $4fed: $fe $01
    sub a                                         ; $4fef: $97
    ld bc, $0000                                  ; $4ff0: $01 $00 $00
    pop de                                        ; $4ff3: $d1
    add hl, bc                                    ; $4ff4: $09
    ld e, h                                       ; $4ff5: $5c
    inc de                                        ; $4ff6: $13
    nop                                           ; $4ff7: $00
    jr nz, jr_0b1_4ffa                            ; $4ff8: $20 $00

jr_0b1_4ffa:
    jr @+$5b                                      ; $4ffa: $18 $59

    ld h, l                                       ; $4ffc: $65
    ldh a, [rNR11]                                ; $4ffd: $f0 $11
    ld sp, hl                                     ; $4fff: $f9
    ld [bc], a                                    ; $5000: $02
    nop                                           ; $5001: $00
    nop                                           ; $5002: $00
    ld e, c                                       ; $5003: $59
    ld h, l                                       ; $5004: $65
    add hl, bc                                    ; $5005: $09
    nop                                           ; $5006: $00
    rra                                           ; $5007: $1f
    ld hl, $0000                                  ; $5008: $21 $00 $00
    sub l                                         ; $500b: $95
    db $10                                        ; $500c: $10
    ld a, l                                       ; $500d: $7d
    add hl, hl                                    ; $500e: $29
    rrca                                          ; $500f: $0f
    nop                                           ; $5010: $00
    ld b, d                                       ; $5011: $42
    inc b                                         ; $5012: $04
    sub e                                         ; $5013: $93
    dec h                                         ; $5014: $25
    ld e, h                                       ; $5015: $5c
    ld [hl], $bf                                  ; $5016: $36 $bf
    ld b, [hl]                                    ; $5018: $46
    nop                                           ; $5019: $00
    nop                                           ; $501a: $00
    or a                                          ; $501b: $b7
    ld bc, $3e7e                                  ; $501c: $01 $7e $3e
    xor c                                         ; $501f: $a9
    nop                                           ; $5020: $00
    ld hl, $3f00                                  ; $5021: $21 $00 $3f
    ld b, a                                       ; $5024: $47
    ld d, d                                       ; $5025: $52
    ld bc, $01db                                  ; $5026: $01 $db $01
    nop                                           ; $5029: $00

jr_0b1_502a:
    inc e                                         ; $502a: $1c
    ld [hl], a                                    ; $502b: $77
    ld b, $df                                     ; $502c: $06 $df
    ld c, e                                       ; $502e: $4b
    sbc l                                         ; $502f: $9d
    rlca                                          ; $5030: $07
    nop                                           ; $5031: $00
    nop                                           ; $5032: $00
    ld [hl-], a                                   ; $5033: $32
    ld c, $7c                                     ; $5034: $0e $7c
    inc bc                                        ; $5036: $03
    nop                                           ; $5037: $00
    jr nz, jr_0b1_503b                            ; $5038: $20 $01

    nop                                           ; $503a: $00

jr_0b1_503b:
    dec e                                         ; $503b: $1d
    ld hl, $697a                                  ; $503c: $21 $7a $69
    dec bc                                        ; $503f: $0b
    nop                                           ; $5040: $00
    nop                                           ; $5041: $00
    nop                                           ; $5042: $00
    scf                                           ; $5043: $37
    inc b                                         ; $5044: $04
    reti                                          ; $5045: $d9


    add hl, hl                                    ; $5046: $29
    ld e, [hl]                                    ; $5047: $5e
    add hl, hl                                    ; $5048: $29
    nop                                           ; $5049: $00
    nop                                           ; $504a: $00
    inc a                                         ; $504b: $3c
    ld [hl], $31                                  ; $504c: $36 $31
    add hl, de                                    ; $504e: $19
    cp a                                          ; $504f: $bf
    ld c, d                                       ; $5050: $4a
    ld [hl+], a                                   ; $5051: $22

jr_0b1_5052:
    nop                                           ; $5052: $00
    push af                                       ; $5053: $f5
    ld [$31da], sp                                ; $5054: $08 $da $31
    sbc [hl]                                      ; $5057: $9e
    ld b, d                                       ; $5058: $42
    nop                                           ; $5059: $00
    nop                                           ; $505a: $00
    ld d, e                                       ; $505b: $53
    ld bc, $6d9b                                  ; $505c: $01 $9b $6d
    xor c                                         ; $505f: $a9
    nop                                           ; $5060: $00
    nop                                           ; $5061: $00
    nop                                           ; $5062: $00
    ld hl, sp+$06                                 ; $5063: $f8 $06
    cp [hl]                                       ; $5065: $be
    inc hl                                        ; $5066: $23
    nop                                           ; $5067: $00
    jr nz, jr_0b1_506a                            ; $5068: $20 $00

jr_0b1_506a:
    nop                                           ; $506a: $00
    ldh a, [rNR11]                                ; $506b: $f0 $11
    add hl, de                                    ; $506d: $19
    rlca                                          ; $506e: $07
    nop                                           ; $506f: $00
    jr nz, jr_0b1_5072                            ; $5070: $20 $00

jr_0b1_5072:
    nop                                           ; $5072: $00

jr_0b1_5073:
    sbc e                                         ; $5073: $9b
    ld l, l                                       ; $5074: $6d

jr_0b1_5075:
    ld e, [hl]                                    ; $5075: $5e
    add hl, hl                                    ; $5076: $29
    inc l                                         ; $5077: $2c
    inc b                                         ; $5078: $04
    nop                                           ; $5079: $00
    nop                                           ; $507a: $00
    dec d                                         ; $507b: $15
    nop                                           ; $507c: $00
    inc e                                         ; $507d: $1c
    ld hl, $29d9                                  ; $507e: $21 $d9 $29
    nop                                           ; $5081: $00
    nop                                           ; $5082: $00
    ld a, [$9f2d]                                 ; $5083: $fa $2d $9f
    ld b, [hl]                                    ; $5086: $46
    xor d                                         ; $5087: $aa
    inc b                                         ; $5088: $04
    nop                                           ; $5089: $00
    nop                                           ; $508a: $00
    or d                                          ; $508b: $b2
    jr jr_0b1_502a                                ; $508c: $18 $9c

jr_0b1_508e:
    dec l                                         ; $508e: $2d
    ld c, e                                       ; $508f: $4b
    ld [$0000], sp                                ; $5090: $08 $00 $00
    cp e                                          ; $5093: $bb
    ld l, l                                       ; $5094: $6d
    ld [hl], b                                    ; $5095: $70
    ld bc, $0045                                  ; $5096: $01 $45 $00
    nop                                           ; $5099: $00
    jr nz, jr_0b1_5052                            ; $509a: $20 $b6

    ld a, [bc]                                    ; $509c: $0a
    cp [hl]                                       ; $509d: $be
    cpl                                           ; $509e: $2f
    ld e, e                                       ; $509f: $5b
    inc bc                                        ; $50a0: $03
    nop                                           ; $50a1: $00
    jr nz, jr_0b1_5073                            ; $50a2: $20 $cf

    dec d                                         ; $50a4: $15
    ld hl, sp+$06                                 ; $50a5: $f8 $06
    ld d, e                                       ; $50a7: $53
    ld [de], a                                    ; $50a8: $12

jr_0b1_50a9:
    ld bc, $d400                                  ; $50a9: $01 $00 $d4
    inc c                                         ; $50ac: $0c
    cp e                                          ; $50ad: $bb
    ld l, l                                       ; $50ae: $6d
    ld a, [hl]                                    ; $50af: $7e
    dec l                                         ; $50b0: $2d
    ld [hl+], a                                   ; $50b1: $22
    nop                                           ; $50b2: $00
    ld d, $00                                     ; $50b3: $16 $00
    ld d, d                                       ; $50b5: $52
    add hl, de                                    ; $50b6: $19
    rra                                           ; $50b7: $1f
    ld hl, $0000                                  ; $50b8: $21 $00 $00
    reti                                          ; $50bb: $d9


    add hl, hl                                    ; $50bc: $29
    sbc a                                         ; $50bd: $9f
    ld b, [hl]                                    ; $50be: $46
    ld b, l                                       ; $50bf: $45
    nop                                           ; $50c0: $00
    ld h, $04                                     ; $50c1: $26 $04
    ldh a, [rNR23]                                ; $50c3: $f0 $18
    sbc [hl]                                      ; $50c5: $9e
    ld sp, $0857                                  ; $50c6: $31 $57 $08
    add l                                         ; $50c9: $85
    inc b                                         ; $50ca: $04
    sbc h                                         ; $50cb: $9c
    inc bc                                        ; $50cc: $03
    cp $41                                        ; $50cd: $fe $41
    rst $38                                       ; $50cf: $ff
    ld a, a                                       ; $50d0: $7f
    nop                                           ; $50d1: $00
    nop                                           ; $50d2: $00
    adc $01                                       ; $50d3: $ce $01
    nop                                           ; $50d5: $00
    jr nz, jr_0b1_508e                            ; $50d6: $20 $b6

    ld a, [bc]                                    ; $50d8: $0a
    nop                                           ; $50d9: $00
    nop                                           ; $50da: $00
    ld [hl-], a                                   ; $50db: $32
    ld [de], a                                    ; $50dc: $12
    nop                                           ; $50dd: $00
    jr nz, jr_0b1_5075                            ; $50de: $20 $95

    ld c, $00                                     ; $50e0: $0e $00
    nop                                           ; $50e2: $00
    cp l                                          ; $50e3: $bd
    ld a, [bc]                                    ; $50e4: $0a
    rst $38                                       ; $50e5: $ff
    ld a, a                                       ; $50e6: $7f
    ld [de], a                                    ; $50e7: $12
    add hl, bc                                    ; $50e8: $09
    nop                                           ; $50e9: $00
    nop                                           ; $50ea: $00
    dec d                                         ; $50eb: $15
    nop                                           ; $50ec: $00
    jp c, $2c18                                   ; $50ed: $da $18 $2c

    nop                                           ; $50f0: $00
    nop                                           ; $50f1: $00
    nop                                           ; $50f2: $00
    ld a, [$9e2d]                                 ; $50f3: $fa $2d $9e
    ld b, d                                       ; $50f6: $42
    ld a, [bc]                                    ; $50f7: $0a
    nop                                           ; $50f8: $00
    nop                                           ; $50f9: $00
    nop                                           ; $50fa: $00
    db $d3                                        ; $50fb: $d3
    jr jr_0b1_512c                                ; $50fc: $18 $2e

    inc b                                         ; $50fe: $04
    ld e, [hl]                                    ; $50ff: $5e
    add hl, hl                                    ; $5100: $29
    nop                                           ; $5101: $00
    nop                                           ; $5102: $00
    ld a, [hl]                                    ; $5103: $7e
    dec l                                         ; $5104: $2d
    ld a, e                                       ; $5105: $7b
    inc bc                                        ; $5106: $03
    sub d                                         ; $5107: $92
    inc b                                         ; $5108: $04
    nop                                           ; $5109: $00

jr_0b1_510a:
    nop                                           ; $510a: $00
    db $10                                        ; $510b: $10
    ld d, $00                                     ; $510c: $16 $00
    jr nz, jr_0b1_5142                            ; $510e: $20 $32

    ld [de], a                                    ; $5110: $12
    nop                                           ; $5111: $00
    jr nz, jr_0b1_50a9                            ; $5112: $20 $95

    ld c, $7c                                     ; $5114: $0e $7c
    inc bc                                        ; $5116: $03
    inc l                                         ; $5117: $2c
    nop                                           ; $5118: $00
    nop                                           ; $5119: $00
    nop                                           ; $511a: $00
    rst $28                                       ; $511b: $ef
    add hl, bc                                    ; $511c: $09
    dec c                                         ; $511d: $0d
    nop                                           ; $511e: $00
    ld a, e                                       ; $511f: $7b
    inc bc                                        ; $5120: $03
    nop                                           ; $5121: $00
    nop                                           ; $5122: $00
    ld a, [hl-]                                   ; $5123: $3a
    inc b                                         ; $5124: $04
    dec c                                         ; $5125: $0d
    nop                                           ; $5126: $00
    dec sp                                        ; $5127: $3b
    dec h                                         ; $5128: $25
    inc b                                         ; $5129: $04
    nop                                           ; $512a: $00
    ld sp, hl                                     ; $512b: $f9

jr_0b1_512c:
    add hl, hl                                    ; $512c: $29
    sbc [hl]                                      ; $512d: $9e
    ld b, d                                       ; $512e: $42
    ld l, $1d                                     ; $512f: $2e $1d
    inc b                                         ; $5131: $04
    nop                                           ; $5132: $00
    dec [hl]                                      ; $5133: $35
    inc b                                         ; $5134: $04
    sbc [hl]                                      ; $5135: $9e
    ld sp, $1cf9                                  ; $5136: $31 $f9 $1c
    nop                                           ; $5139: $00
    nop                                           ; $513a: $00
    db $10                                        ; $513b: $10
    ld c, $fd                                     ; $513c: $0e $fd
    ld [hl], l                                    ; $513e: $75
    stop                                          ; $513f: $10 $00
    nop                                           ; $5141: $00

jr_0b1_5142:
    jr nz, @+$13                                  ; $5142: $20 $11

    ld [de], a                                    ; $5144: $12
    ld a, [de]                                    ; $5145: $1a
    inc bc                                        ; $5146: $03
    stop                                          ; $5147: $10 $00
    nop                                           ; $5149: $00
    jr nz, jr_0b1_510a                            ; $514a: $20 $be

    dec hl                                        ; $514c: $2b
    rst $38                                       ; $514d: $ff
    ld e, a                                       ; $514e: $5f
    dec sp                                        ; $514f: $3b

jr_0b1_5150:
    dec h                                         ; $5150: $25
    nop                                           ; $5151: $00
    nop                                           ; $5152: $00
    rst $10                                       ; $5153: $d7
    ld c, $fc                                     ; $5154: $0e $fc
    ld [hl], c                                    ; $5156: $71
    dec c                                         ; $5157: $0d
    nop                                           ; $5158: $00
    nop                                           ; $5159: $00
    nop                                           ; $515a: $00
    jr jr_0b1_515d                                ; $515b: $18 $00

jr_0b1_515d:
    inc c                                         ; $515d: $0c
    nop                                           ; $515e: $00
    sbc h                                         ; $515f: $9c
    stop                                          ; $5160: $10 $00
    nop                                           ; $5162: $00
    ld sp, hl                                     ; $5163: $f9
    dec l                                         ; $5164: $2d
    xor c                                         ; $5165: $a9
    inc c                                         ; $5166: $0c
    ld a, [hl]                                    ; $5167: $7e
    ld a, $05                                     ; $5168: $3e $05
    nop                                           ; $516a: $00
    or [hl]                                       ; $516b: $b6
    inc d                                         ; $516c: $14
    rst $18                                       ; $516d: $df
    add hl, sp                                    ; $516e: $39
    dec c                                         ; $516f: $0d
    nop                                           ; $5170: $00
    add h                                         ; $5171: $84
    nop                                           ; $5172: $00
    jr @+$2f                                      ; $5173: $18 $2d

    rst $38                                       ; $5175: $ff
    ld a, a                                       ; $5176: $7f
    ld e, e                                       ; $5177: $5b
    inc bc                                        ; $5178: $03
    nop                                           ; $5179: $00
    jr nz, jr_0b1_5196                            ; $517a: $20 $1a

    inc bc                                        ; $517c: $03
    rst $38                                       ; $517d: $ff
    ld a, a                                       ; $517e: $7f
    ld e, e                                       ; $517f: $5b
    inc bc                                        ; $5180: $03
    nop                                           ; $5181: $00
    jr nz, jr_0b1_519c                            ; $5182: $20 $18

    nop                                           ; $5184: $00

jr_0b1_5185:
    inc c                                         ; $5185: $0c
    nop                                           ; $5186: $00
    sbc h                                         ; $5187: $9c
    db $10                                        ; $5188: $10
    ld b, d                                       ; $5189: $42
    nop                                           ; $518a: $00
    ld a, h                                       ; $518b: $7c
    dec bc                                        ; $518c: $0b
    dec e                                         ; $518d: $1d
    halt                                          ; $518e: $76
    rst $38                                       ; $518f: $ff
    ld l, e                                       ; $5190: $6b
    nop                                           ; $5191: $00
    nop                                           ; $5192: $00
    ld a, [de]                                    ; $5193: $1a
    nop                                           ; $5194: $00
    add hl, sp                                    ; $5195: $39

jr_0b1_5196:
    inc bc                                        ; $5196: $03
    inc c                                         ; $5197: $0c
    nop                                           ; $5198: $00
    nop                                           ; $5199: $00
    nop                                           ; $519a: $00
    ld [hl], e                                    ; $519b: $73

jr_0b1_519c:
    dec e                                         ; $519c: $1d
    ld a, [$ec2d]                                 ; $519d: $fa $2d $ec
    inc d                                         ; $51a0: $14
    ld bc, $b700                                  ; $51a1: $01 $00 $b7
    jr jr_0b1_5185                                ; $51a4: $18 $df

    ld c, c                                       ; $51a6: $49
    ld l, l                                       ; $51a7: $6d
    nop                                           ; $51a8: $00
    nop                                           ; $51a9: $00
    nop                                           ; $51aa: $00
    sbc h                                         ; $51ab: $9c
    dec bc                                        ; $51ac: $0b
    rst $38                                       ; $51ad: $ff
    ld l, d                                       ; $51ae: $6a
    adc $01                                       ; $51af: $ce $01
    nop                                           ; $51b1: $00
    jr nz, jr_0b1_5150                            ; $51b2: $20 $9c

    dec bc                                        ; $51b4: $0b
    rst $38                                       ; $51b5: $ff
    ld l, d                                       ; $51b6: $6a
    adc $01                                       ; $51b7: $ce $01
    nop                                           ; $51b9: $00
    jr nz, jr_0b1_51d6                            ; $51ba: $20 $1a

    nop                                           ; $51bc: $00
    add hl, sp                                    ; $51bd: $39
    inc bc                                        ; $51be: $03
    inc c                                         ; $51bf: $0c
    nop                                           ; $51c0: $00
    nop                                           ; $51c1: $00
    inc b                                         ; $51c2: $04
    cp l                                          ; $51c3: $bd
    inc de                                        ; $51c4: $13
    ld a, a                                       ; $51c5: $7f
    ld l, a                                       ; $51c6: $6f
    adc $01                                       ; $51c7: $ce $01
    nop                                           ; $51c9: $00
    nop                                           ; $51ca: $00
    add hl, sp                                    ; $51cb: $39
    inc bc                                        ; $51cc: $03
    rst $38                                       ; $51cd: $ff
    ld a, a                                       ; $51ce: $7f
    ld l, [hl]                                    ; $51cf: $6e
    nop                                           ; $51d0: $00
    ld bc, $7300                                  ; $51d1: $01 $00 $73
    ld [bc], a                                    ; $51d4: $02
    rst $38                                       ; $51d5: $ff

jr_0b1_51d6:
    ld a, a                                       ; $51d6: $7f
    or a                                          ; $51d7: $b7
    dec h                                         ; $51d8: $25
    nop                                           ; $51d9: $00
    nop                                           ; $51da: $00
    sbc h                                         ; $51db: $9c
    inc bc                                        ; $51dc: $03
    push de                                       ; $51dd: $d5
    inc c                                         ; $51de: $0c
    rst $38                                       ; $51df: $ff
    ld a, a                                       ; $51e0: $7f
    nop                                           ; $51e1: $00
    ld [$7e3f], sp                                ; $51e2: $08 $3f $7e
    cp [hl]                                       ; $51e5: $be
    dec hl                                        ; $51e6: $2b
    rst $38                                       ; $51e7: $ff
    ld l, a                                       ; $51e8: $6f

jr_0b1_51e9:
    nop                                           ; $51e9: $00
    jr nz, @+$41                                  ; $51ea: $20 $3f

    ld a, [hl]                                    ; $51ec: $7e
    cp [hl]                                       ; $51ed: $be
    dec hl                                        ; $51ee: $2b
    rst $38                                       ; $51ef: $ff
    ld l, a                                       ; $51f0: $6f
    nop                                           ; $51f1: $00
    jr nz, jr_0b1_522d                            ; $51f2: $20 $39

    inc bc                                        ; $51f4: $03
    rst $38                                       ; $51f5: $ff
    ld a, a                                       ; $51f6: $7f
    ld l, [hl]                                    ; $51f7: $6e
    nop                                           ; $51f8: $00
    nop                                           ; $51f9: $00
    ld [$0f7d], sp                                ; $51fa: $08 $7d $0f
    rra                                           ; $51fd: $1f
    ld l, a                                       ; $51fe: $6f
    adc $01                                       ; $51ff: $ce $01
    nop                                           ; $5201: $00
    nop                                           ; $5202: $00
    cp l                                          ; $5203: $bd
    inc bc                                        ; $5204: $03
    ld sp, $ce08                                  ; $5205: $31 $08 $ce
    ld bc, $0000                                  ; $5208: $01 $00 $00
    ld [hl-], a                                   ; $520b: $32
    ld [de], a                                    ; $520c: $12
    add hl, sp                                    ; $520d: $39
    inc bc                                        ; $520e: $03
    ld d, e                                       ; $520f: $53
    ld c, $00                                     ; $5210: $0e $00
    nop                                           ; $5212: $00
    rst $28                                       ; $5213: $ef
    dec c                                         ; $5214: $0d
    ld a, e                                       ; $5215: $7b
    inc bc                                        ; $5216: $03
    cp [hl]                                       ; $5217: $be
    dec hl                                        ; $5218: $2b
    nop                                           ; $5219: $00
    ld [$0b3b], sp                                ; $521a: $08 $3b $0b
    cp [hl]                                       ; $521d: $be
    ld b, a                                       ; $521e: $47
    rst $38                                       ; $521f: $ff
    ld [hl], e                                    ; $5220: $73
    nop                                           ; $5221: $00
    jr nz, jr_0b1_525f                            ; $5222: $20 $3b

    dec bc                                        ; $5224: $0b
    cp [hl]                                       ; $5225: $be
    ld b, a                                       ; $5226: $47
    rst $38                                       ; $5227: $ff
    ld [hl], e                                    ; $5228: $73
    nop                                           ; $5229: $00
    jr nz, jr_0b1_51e9                            ; $522a: $20 $bd

    inc bc                                        ; $522c: $03

jr_0b1_522d:
    ld sp, $ce08                                  ; $522d: $31 $08 $ce
    ld bc, $2000                                  ; $5230: $01 $00 $20
    ld d, e                                       ; $5233: $53
    ld [de], a                                    ; $5234: $12
    sbc $57                                       ; $5235: $de $57
    ld a, l                                       ; $5237: $7d
    rlca                                          ; $5238: $07
    nop                                           ; $5239: $00
    nop                                           ; $523a: $00
    ld e, h                                       ; $523b: $5c
    dec bc                                        ; $523c: $0b
    rst $18                                       ; $523d: $df
    ld e, a                                       ; $523e: $5f
    rst $28                                       ; $523f: $ef
    add hl, bc                                    ; $5240: $09
    ld de, $7412                                  ; $5241: $11 $12 $74
    ld c, $b6                                     ; $5244: $0e $b6
    ld a, [bc]                                    ; $5246: $0a

jr_0b1_5247:
    ld [hl-], a                                   ; $5247: $32
    ld [de], a                                    ; $5248: $12
    nop                                           ; $5249: $00
    nop                                           ; $524a: $00
    rst $18                                       ; $524b: $df
    ld h, e                                       ; $524c: $63
    rst $10                                       ; $524d: $d7
    ld b, $7d                                     ; $524e: $06 $7d
    dec bc                                        ; $5250: $0b
    nop                                           ; $5251: $00
    jr nz, @+$55                                  ; $5252: $20 $53

    ld a, [bc]                                    ; $5254: $0a
    sbc $53                                       ; $5255: $de $53

jr_0b1_5257:
    ld a, l                                       ; $5257: $7d
    dec bc                                        ; $5258: $0b
    nop                                           ; $5259: $00
    jr nz, @+$55                                  ; $525a: $20 $53

    ld a, [bc]                                    ; $525c: $0a
    sbc $53                                       ; $525d: $de $53

jr_0b1_525f:
    ld a, l                                       ; $525f: $7d
    dec bc                                        ; $5260: $0b

jr_0b1_5261:
    nop                                           ; $5261: $00
    jr nz, jr_0b1_5264                            ; $5262: $20 $00

jr_0b1_5264:
    jr nz, jr_0b1_5266                            ; $5264: $20 $00

jr_0b1_5266:
    jr nz, jr_0b1_5247                            ; $5266: $20 $df

    inc bc                                        ; $5268: $03
    nop                                           ; $5269: $00
    jr nz, jr_0b1_526c                            ; $526a: $20 $00

jr_0b1_526c:
    jr nz, jr_0b1_526e                            ; $526c: $20 $00

jr_0b1_526e:
    jr nz, @-$1f                                  ; $526e: $20 $df

    inc bc                                        ; $5270: $03
    nop                                           ; $5271: $00
    jr nz, jr_0b1_5274                            ; $5272: $20 $00

jr_0b1_5274:
    jr nz, jr_0b1_5276                            ; $5274: $20 $00

jr_0b1_5276:
    jr nz, jr_0b1_5257                            ; $5276: $20 $df

    inc bc                                        ; $5278: $03
    nop                                           ; $5279: $00
    nop                                           ; $527a: $00
    rst $38                                       ; $527b: $ff
    ld a, a                                       ; $527c: $7f
    nop                                           ; $527d: $00
    jr nz, jr_0b1_5280                            ; $527e: $20 $00

jr_0b1_5280:
    jr nz, jr_0b1_5282                            ; $5280: $20 $00

jr_0b1_5282:
    jr nz, @+$01                                  ; $5282: $20 $ff

    ld a, a                                       ; $5284: $7f
    nop                                           ; $5285: $00
    jr nz, jr_0b1_5288                            ; $5286: $20 $00

jr_0b1_5288:
    jr nz, jr_0b1_528a                            ; $5288: $20 $00

jr_0b1_528a:
    jr nz, @+$01                                  ; $528a: $20 $ff

    ld a, a                                       ; $528c: $7f
    nop                                           ; $528d: $00
    jr nz, jr_0b1_5290                            ; $528e: $20 $00

jr_0b1_5290:
    jr nz, jr_0b1_5292                            ; $5290: $20 $00

jr_0b1_5292:
    jr nz, @+$01                                  ; $5292: $20 $ff

    ld a, a                                       ; $5294: $7f
    nop                                           ; $5295: $00
    jr nz, jr_0b1_5298                            ; $5296: $20 $00

jr_0b1_5298:
    jr nz, jr_0b1_529a                            ; $5298: $20 $00

jr_0b1_529a:
    jr nz, jr_0b1_529c                            ; $529a: $20 $00

jr_0b1_529c:
    jr nz, jr_0b1_529e                            ; $529c: $20 $00

jr_0b1_529e:
    jr nz, @-$1f                                  ; $529e: $20 $df

    inc bc                                        ; $52a0: $03
    nop                                           ; $52a1: $00
    stop                                          ; $52a2: $10 $00
    jr nz, jr_0b1_52a6                            ; $52a4: $20 $00

jr_0b1_52a6:
    jr @-$1f                                      ; $52a6: $18 $df

    inc bc                                        ; $52a8: $03
    nop                                           ; $52a9: $00
    jr nz, jr_0b1_52ac                            ; $52aa: $20 $00

jr_0b1_52ac:
    jr nz, jr_0b1_52ae                            ; $52ac: $20 $00

jr_0b1_52ae:
    jr @-$1f                                      ; $52ae: $18 $df

    inc bc                                        ; $52b0: $03
    nop                                           ; $52b1: $00
    nop                                           ; $52b2: $00
    rst $38                                       ; $52b3: $ff
    ld a, a                                       ; $52b4: $7f
    nop                                           ; $52b5: $00
    jr nz, jr_0b1_52b8                            ; $52b6: $20 $00

jr_0b1_52b8:
    jr nz, jr_0b1_52ba                            ; $52b8: $20 $00

jr_0b1_52ba:
    nop                                           ; $52ba: $00
    nop                                           ; $52bb: $00
    jr nz, jr_0b1_52be                            ; $52bc: $20 $00

jr_0b1_52be:
    jr nz, jr_0b1_52c0                            ; $52be: $20 $00

jr_0b1_52c0:
    jr nz, jr_0b1_52c2                            ; $52c0: $20 $00

jr_0b1_52c2:
    nop                                           ; $52c2: $00
    nop                                           ; $52c3: $00
    jr nz, jr_0b1_52c6                            ; $52c4: $20 $00

jr_0b1_52c6:
    jr nz, jr_0b1_52c8                            ; $52c6: $20 $00

jr_0b1_52c8:
    jr nz, jr_0b1_52ca                            ; $52c8: $20 $00

jr_0b1_52ca:
    nop                                           ; $52ca: $00
    nop                                           ; $52cb: $00
    jr nz, jr_0b1_52ce                            ; $52cc: $20 $00

jr_0b1_52ce:
    jr nz, jr_0b1_52d0                            ; $52ce: $20 $00

jr_0b1_52d0:
    jr nz, jr_0b1_52d2                            ; $52d0: $20 $00

jr_0b1_52d2:
    jr nz, jr_0b1_52d4                            ; $52d2: $20 $00

jr_0b1_52d4:
    jr nz, jr_0b1_52d6                            ; $52d4: $20 $00

jr_0b1_52d6:
    jr @-$1f                                      ; $52d6: $18 $df

    inc bc                                        ; $52d8: $03
    nop                                           ; $52d9: $00
    ld [$236a], sp                                ; $52da: $08 $6a $23
    nop                                           ; $52dd: $00
    jr nz, jr_0b1_5261                            ; $52de: $20 $81

    inc c                                         ; $52e0: $0c
    nop                                           ; $52e1: $00
    nop                                           ; $52e2: $00
    rst $38                                       ; $52e3: $ff
    ld a, a                                       ; $52e4: $7f
    nop                                           ; $52e5: $00
    inc e                                         ; $52e6: $1c
    nop                                           ; $52e7: $00
    jr nz, jr_0b1_52ea                            ; $52e8: $20 $00

jr_0b1_52ea:
    nop                                           ; $52ea: $00
    rst $38                                       ; $52eb: $ff
    ld a, a                                       ; $52ec: $7f
    or d                                          ; $52ed: $b2
    jr nc, jr_0b1_52f0                            ; $52ee: $30 $00

jr_0b1_52f0:
    jr nz, jr_0b1_52f2                            ; $52f0: $20 $00

jr_0b1_52f2:
    nop                                           ; $52f2: $00
    rst $38                                       ; $52f3: $ff
    ld a, a                                       ; $52f4: $7f
    nop                                           ; $52f5: $00
    inc e                                         ; $52f6: $1c
    nop                                           ; $52f7: $00
    jr nz, jr_0b1_52fa                            ; $52f8: $20 $00

jr_0b1_52fa:
    jr @+$39                                      ; $52fa: $18 $37

    ld h, $2c                                     ; $52fc: $26 $2c
    dec d                                         ; $52fe: $15
    ld e, a                                       ; $52ff: $5f
    ccf                                           ; $5300: $3f
    nop                                           ; $5301: $00
    nop                                           ; $5302: $00
    ld e, a                                       ; $5303: $5f
    dec sp                                        ; $5304: $3b
    dec l                                         ; $5305: $2d
    dec d                                         ; $5306: $15
    nop                                           ; $5307: $00
    inc e                                         ; $5308: $1c
    nop                                           ; $5309: $00
    jr nz, @+$01                                  ; $530a: $20 $ff

jr_0b1_530c:
    ld a, a                                       ; $530c: $7f
    nop                                           ; $530d: $00
    inc e                                         ; $530e: $1c
    nop                                           ; $530f: $00
    jr nz, jr_0b1_5312                            ; $5310: $20 $00

jr_0b1_5312:
    inc d                                         ; $5312: $14
    push bc                                       ; $5313: $c5
    ld e, l                                       ; $5314: $5d
    add hl, hl                                    ; $5315: $29
    daa                                           ; $5316: $27
    nop                                           ; $5317: $00
    inc e                                         ; $5318: $1c
    nop                                           ; $5319: $00
    nop                                           ; $531a: $00
    ld l, d                                       ; $531b: $6a
    inc hl                                        ; $531c: $23
    rst $38                                       ; $531d: $ff
    ld a, a                                       ; $531e: $7f
    nop                                           ; $531f: $00
    jr jr_0b1_5322                                ; $5320: $18 $00

jr_0b1_5322:
    nop                                           ; $5322: $00
    or d                                          ; $5323: $b2
    jr nc, jr_0b1_5353                            ; $5324: $30 $2d

    dec d                                         ; $5326: $15
    nop                                           ; $5327: $00
    inc e                                         ; $5328: $1c
    nop                                           ; $5329: $00
    nop                                           ; $532a: $00
    rst $38                                       ; $532b: $ff
    ld a, a                                       ; $532c: $7f
    or d                                          ; $532d: $b2
    jr nc, jr_0b1_5330                            ; $532e: $30 $00

jr_0b1_5330:
    inc e                                         ; $5330: $1c
    nop                                           ; $5331: $00
    jr jr_0b1_53a3                                ; $5332: $18 $6f

    dec d                                         ; $5334: $15
    db $dd                                        ; $5335: $dd
    ld [hl-], a                                   ; $5336: $32
    inc c                                         ; $5337: $0c
    ld de, $0000                                  ; $5338: $11 $00 $00
    ld c, [hl]                                    ; $533b: $4e
    ld de, $2639                                  ; $533c: $11 $39 $26
    nop                                           ; $533f: $00
    jr nz, jr_0b1_5342                            ; $5340: $20 $00

jr_0b1_5342:
    jr nz, jr_0b1_53ae                            ; $5342: $20 $6a

    inc hl                                        ; $5344: $23
    rst $38                                       ; $5345: $ff
    ld a, a                                       ; $5346: $7f
    nop                                           ; $5347: $00
    jr jr_0b1_534a                                ; $5348: $18 $00

jr_0b1_534a:
    inc e                                         ; $534a: $1c
    ld c, c                                       ; $534b: $49
    dec de                                        ; $534c: $1b
    xor b                                         ; $534d: $a8
    ld d, d                                       ; $534e: $52
    jp nz, Jump_000_0004                          ; $534f: $c2 $04 $00

    nop                                           ; $5352: $00

jr_0b1_5353:
    rst $18                                       ; $5353: $df
    ld [hl], a                                    ; $5354: $77
    xor b                                         ; $5355: $a8
    ld l, $c7                                     ; $5356: $2e $c7
    nop                                           ; $5358: $00
    ld bc, $b200                                  ; $5359: $01 $00 $b2
    jr nc, jr_0b1_530c                            ; $535c: $30 $ae

    nop                                           ; $535e: $00
    ld h, a                                       ; $535f: $67
    nop                                           ; $5360: $00
    nop                                           ; $5361: $00
    nop                                           ; $5362: $00
    rst $38                                       ; $5363: $ff
    ld a, a                                       ; $5364: $7f
    or d                                          ; $5365: $b2
    jr nc, jr_0b1_53cf                            ; $5366: $30 $67

    nop                                           ; $5368: $00
    nop                                           ; $5369: $00
    nop                                           ; $536a: $00
    ld [hl], b                                    ; $536b: $70
    ld de, $1c00                                  ; $536c: $11 $00 $1c
    sub e                                         ; $536f: $93
    dec c                                         ; $5370: $0d
    ld b, e                                       ; $5371: $43
    nop                                           ; $5372: $00
    inc c                                         ; $5373: $0c
    add hl, bc                                    ; $5374: $09
    nop                                           ; $5375: $00
    jr nz, @+$19                                  ; $5376: $20 $17

    ld e, $00                                     ; $5378: $1e $00
    jr nz, @-$1f                                  ; $537a: $20 $df

    ld [hl], a                                    ; $537c: $77
    xor b                                         ; $537d: $a8
    ld l, $c7                                     ; $537e: $2e $c7
    nop                                           ; $5380: $00
    nop                                           ; $5381: $00
    inc e                                         ; $5382: $1c
    add hl, bc                                    ; $5383: $09
    rra                                           ; $5384: $1f
    ld h, $52                                     ; $5385: $26 $52
    ld h, h                                       ; $5387: $64
    dec e                                         ; $5388: $1d
    ld [hl+], a                                   ; $5389: $22
    inc b                                         ; $538a: $04
    ld d, [hl]                                    ; $538b: $56
    dec c                                         ; $538c: $0d
    ld c, d                                       ; $538d: $4a
    ld a, $5e                                     ; $538e: $3e $5e
    ld e, e                                       ; $5390: $5b
    ld bc, $b200                                  ; $5391: $01 $00 $b2
    jr nc, @+$01                                  ; $5394: $30 $ff

    ld [hl], $69                                  ; $5396: $36 $69
    nop                                           ; $5398: $00
    nop                                           ; $5399: $00
    nop                                           ; $539a: $00
    or d                                          ; $539b: $b2
    jr nc, @+$01                                  ; $539c: $30 $ff

    ld a, a                                       ; $539e: $7f
    ld l, c                                       ; $539f: $69
    nop                                           ; $53a0: $00
    nop                                           ; $53a1: $00
    nop                                           ; $53a2: $00

jr_0b1_53a3:
    ld a, e                                       ; $53a3: $7b
    ld h, $ff                                     ; $53a4: $26 $ff
    ld a, a                                       ; $53a6: $7f
    nop                                           ; $53a7: $00
    jr nz, jr_0b1_53ab                            ; $53a8: $20 $01

    nop                                           ; $53aa: $00

jr_0b1_53ab:
    xor c                                         ; $53ab: $a9
    inc b                                         ; $53ac: $04
    nop                                           ; $53ad: $00

jr_0b1_53ae:
    jr nz, jr_0b1_53de                            ; $53ae: $20 $2e

    dec c                                         ; $53b0: $0d
    nop                                           ; $53b1: $00
    jr nz, jr_0b1_540a                            ; $53b2: $20 $56

    dec c                                         ; $53b4: $0d
    ld c, d                                       ; $53b5: $4a
    ld a, $5e                                     ; $53b6: $3e $5e
    ld e, e                                       ; $53b8: $5b
    ld b, c                                       ; $53b9: $41
    inc e                                         ; $53ba: $1c
    push bc                                       ; $53bb: $c5
    ld d, c                                       ; $53bc: $51
    ld b, $06                                     ; $53bd: $06 $06
    ret z                                         ; $53bf: $c8

    ld l, [hl]                                    ; $53c0: $6e
    and h                                         ; $53c1: $a4
    inc b                                         ; $53c2: $04
    ld d, h                                       ; $53c3: $54
    ld de, $2e7e                                  ; $53c4: $11 $7e $2e
    db $e4                                        ; $53c7: $e4
    ld sp, $0000                                  ; $53c8: $31 $00 $00
    db $f4                                        ; $53cb: $f4
    ld hl, $0046                                  ; $53cc: $21 $46 $00

jr_0b1_53cf:
    adc e                                         ; $53cf: $8b
    nop                                           ; $53d0: $00
    nop                                           ; $53d1: $00
    nop                                           ; $53d2: $00
    or d                                          ; $53d3: $b2
    inc l                                         ; $53d4: $2c
    ld e, b                                       ; $53d5: $58
    ld h, $5f                                     ; $53d6: $26 $5f
    ccf                                           ; $53d8: $3f
    nop                                           ; $53d9: $00
    inc b                                         ; $53da: $04
    rst $38                                       ; $53db: $ff
    ld [hl-], a                                   ; $53dc: $32
    ld [hl-], a                                   ; $53dd: $32

jr_0b1_53de:
    ld hl, $7bde                                  ; $53de: $21 $de $7b
    nop                                           ; $53e1: $00
    nop                                           ; $53e2: $00
    xor c                                         ; $53e3: $a9
    inc b                                         ; $53e4: $04
    ld [hl], c                                    ; $53e5: $71
    dec c                                         ; $53e6: $0d
    nop                                           ; $53e7: $00
    jr nz, jr_0b1_53ea                            ; $53e8: $20 $00

jr_0b1_53ea:
    jr nz, jr_0b1_5440                            ; $53ea: $20 $54

    ld de, $2e7e                                  ; $53ec: $11 $7e $2e
    db $e4                                        ; $53ef: $e4
    ld sp, $0c41                                  ; $53f0: $31 $41 $0c
    rst $38                                       ; $53f3: $ff
    ld a, a                                       ; $53f4: $7f
    ld h, a                                       ; $53f5: $67
    ld a, [bc]                                    ; $53f6: $0a
    and $45                                       ; $53f7: $e6 $45
    ld h, h                                       ; $53f9: $64
    nop                                           ; $53fa: $00
    cp c                                          ; $53fb: $b9
    add hl, de                                    ; $53fc: $19
    rst $00                                       ; $53fd: $c7
    ld hl, $4e46                                  ; $53fe: $21 $46 $4e
    ld bc, $7600                                  ; $5401: $01 $00 $76
    ld [de], a                                    ; $5404: $12
    xor d                                         ; $5405: $aa
    inc b                                         ; $5406: $04
    ld a, a                                       ; $5407: $7f
    ccf                                           ; $5408: $3f
    nop                                           ; $5409: $00

jr_0b1_540a:
    nop                                           ; $540a: $00
    dec c                                         ; $540b: $0d
    dec c                                         ; $540c: $0d
    ld a, a                                       ; $540d: $7f
    ccf                                           ; $540e: $3f
    or d                                          ; $540f: $b2
    inc l                                         ; $5410: $2c
    nop                                           ; $5411: $00
    nop                                           ; $5412: $00
    jp nc, Jump_0b1_5828                          ; $5413: $d2 $28 $58

    ld a, [hl+]                                   ; $5416: $2a
    ld e, a                                       ; $5417: $5f
    dec sp                                        ; $5418: $3b
    nop                                           ; $5419: $00
    nop                                           ; $541a: $00
    add a                                         ; $541b: $87
    nop                                           ; $541c: $00
    ld [hl], b                                    ; $541d: $70
    dec d                                         ; $541e: $15
    nop                                           ; $541f: $00
    jr nz, jr_0b1_5422                            ; $5420: $20 $00

jr_0b1_5422:
    nop                                           ; $5422: $00
    rst $38                                       ; $5423: $ff
    ld a, a                                       ; $5424: $7f
    nop                                           ; $5425: $00
    jr nz, jr_0b1_546e                            ; $5426: $20 $46

    ld c, [hl]                                    ; $5428: $4e
    ld [bc], a                                    ; $5429: $02
    ld [$7fff], sp                                ; $542a: $08 $ff $7f
    ld b, $2e                                     ; $542d: $06 $2e
    db $d3                                        ; $542f: $d3
    jr z, @-$79                                   ; $5430: $28 $85

    nop                                           ; $5432: $00
    halt                                          ; $5433: $76
    ld [de], a                                    ; $5434: $12
    ccf                                           ; $5435: $3f
    dec sp                                        ; $5436: $3b
    ld b, d                                       ; $5437: $42
    dec l                                         ; $5438: $2d

jr_0b1_5439:
    ld bc, $b700                                  ; $5439: $01 $00 $b7

jr_0b1_543c:
    ld b, $fe                                     ; $543c: $06 $fe
    ld [hl], $ab                                  ; $543e: $36 $ab

jr_0b1_5440:
    ld [$0000], sp                                ; $5440: $08 $00 $00
    or e                                          ; $5443: $b3
    jr z, jr_0b1_543c                             ; $5444: $28 $f6

    add hl, de                                    ; $5446: $19
    rst $18                                       ; $5447: $df
    ld [hl-], a                                   ; $5448: $32
    nop                                           ; $5449: $00
    nop                                           ; $544a: $00
    cp l                                          ; $544b: $bd
    ld [hl-], a                                   ; $544c: $32
    or e                                          ; $544d: $b3
    jr z, jr_0b1_546f                             ; $544e: $28 $1f

    scf                                           ; $5450: $37
    inc hl                                        ; $5451: $23
    nop                                           ; $5452: $00
    ld [hl], b                                    ; $5453: $70
    ld de, $32dc                                  ; $5454: $11 $dc $32
    nop                                           ; $5457: $00

jr_0b1_5458:
    jr nz, jr_0b1_545a                            ; $5458: $20 $00

jr_0b1_545a:
    nop                                           ; $545a: $00
    rst $38                                       ; $545b: $ff
    ld a, a                                       ; $545c: $7f
    nop                                           ; $545d: $00
    jr nz, jr_0b1_54a2                            ; $545e: $20 $42

    dec l                                         ; $5460: $2d
    ld [hl+], a                                   ; $5461: $22
    nop                                           ; $5462: $00
    ld h, l                                       ; $5463: $65
    ld a, [hl-]                                   ; $5464: $3a
    db $d3                                        ; $5465: $d3
    inc h                                         ; $5466: $24
    add sp, $0c                                   ; $5467: $e8 $0c
    nop                                           ; $5469: $00
    dec e                                         ; $546a: $1d
    ld e, c                                       ; $546b: $59
    ld h, $87                                     ; $546c: $26 $87

jr_0b1_546e:
    inc b                                         ; $546e: $04

jr_0b1_546f:
    jr jr_0b1_5474                                ; $546f: $18 $03

    nop                                           ; $5471: $00
    nop                                           ; $5472: $00

jr_0b1_5473:
    sub d                                         ; $5473: $92

jr_0b1_5474:
    add hl, de                                    ; $5474: $19
    jr jr_0b1_547a                                ; $5475: $18 $03

    ld h, [hl]                                    ; $5477: $66
    nop                                           ; $5478: $00
    nop                                           ; $5479: $00

jr_0b1_547a:
    nop                                           ; $547a: $00
    call nc, $9c24                                ; $547b: $d4 $24 $9c
    ld a, [hl+]                                   ; $547e: $2a
    ld d, b                                       ; $547f: $50
    ld de, $0000                                  ; $5480: $11 $00 $00
    sbc e                                         ; $5483: $9b
    ld a, [hl+]                                   ; $5484: $2a
    dec l                                         ; $5485: $2d
    dec d                                         ; $5486: $15
    call nc, Call_000_2224                        ; $5487: $d4 $24 $22
    nop                                           ; $548a: $00
    nop                                           ; $548b: $00
    jr nz, jr_0b1_5458                            ; $548c: $20 $ca

    inc b                                         ; $548e: $04
    ld d, c                                       ; $548f: $51
    dec b                                         ; $5490: $05
    nop                                           ; $5491: $00

jr_0b1_5492:
    nop                                           ; $5492: $00
    rst $38                                       ; $5493: $ff

jr_0b1_5494:
    ld a, a                                       ; $5494: $7f
    call nc, RST_20                               ; $5495: $d4 $20 $00
    jr nz, jr_0b1_549a                            ; $5498: $20 $00

jr_0b1_549a:
    nop                                           ; $549a: $00
    ld [hl], e                                    ; $549b: $73
    dec d                                         ; $549c: $15
    sbc a                                         ; $549d: $9f
    ld b, e                                       ; $549e: $43
    db $ec                                        ; $549f: $ec
    inc b                                         ; $54a0: $04
    inc bc                                        ; $54a1: $03

jr_0b1_54a2:
    nop                                           ; $54a2: $00
    scf                                           ; $54a3: $37
    ld c, $41                                     ; $54a4: $0e $41
    ld hl, $04eb                                  ; $54a6: $21 $eb $04
    nop                                           ; $54a9: $00
    nop                                           ; $54aa: $00
    sub c                                         ; $54ab: $91
    dec d                                         ; $54ac: $15
    ld a, e                                       ; $54ad: $7b
    ld a, [hl+]                                   ; $54ae: $2a
    jp z, Jump_000_0004                           ; $54af: $ca $04 $00

    nop                                           ; $54b2: $00
    push de                                       ; $54b3: $d5
    jr nz, jr_0b1_5439                            ; $54b4: $20 $83

    db $10                                        ; $54b6: $10
    xor c                                         ; $54b7: $a9
    nop                                           ; $54b8: $00
    inc hl                                        ; $54b9: $23
    nop                                           ; $54ba: $00
    push de                                       ; $54bb: $d5
    jr nz, jr_0b1_5492                            ; $54bc: $20 $d4

    add hl, de                                    ; $54be: $19

jr_0b1_54bf:
    jr c, jr_0b1_54e3                             ; $54bf: $38 $22

    ld [hl+], a                                   ; $54c1: $22
    nop                                           ; $54c2: $00
    rst $38                                       ; $54c3: $ff
    ld a, a                                       ; $54c4: $7f
    nop                                           ; $54c5: $00
    jr nz, jr_0b1_5494                            ; $54c6: $20 $cc

    nop                                           ; $54c8: $00
    nop                                           ; $54c9: $00
    nop                                           ; $54ca: $00
    rst $38                                       ; $54cb: $ff
    ld a, a                                       ; $54cc: $7f
    push de                                       ; $54cd: $d5
    inc e                                         ; $54ce: $1c
    scf                                           ; $54cf: $37
    ld a, [hl+]                                   ; $54d0: $2a
    nop                                           ; $54d1: $00
    nop                                           ; $54d2: $00
    rla                                           ; $54d3: $17
    ld [hl+], a                                   ; $54d4: $22
    db $ec                                        ; $54d5: $ec
    ld [$3b3f], sp                                ; $54d6: $08 $3f $3b
    ld hl, $af00                                  ; $54d9: $21 $00 $af
    dec h                                         ; $54dc: $25
    sbc l                                         ; $54dd: $9d
    ld l, $e1                                     ; $54de: $2e $e1
    inc e                                         ; $54e0: $1c
    ld b, h                                       ; $54e1: $44
    nop                                           ; $54e2: $00

jr_0b1_54e3:
    ld d, c                                       ; $54e3: $51
    dec d                                         ; $54e4: $15
    nop                                           ; $54e5: $00
    inc bc                                        ; $54e6: $03
    ld e, d                                       ; $54e7: $5a
    ld l, $00                                     ; $54e8: $2e $00
    nop                                           ; $54ea: $00
    push de                                       ; $54eb: $d5
    inc e                                         ; $54ec: $1c
    add b                                         ; $54ed: $80
    jr jr_0b1_5473                                ; $54ee: $18 $83

    stop                                          ; $54f0: $10 $00
    nop                                           ; $54f2: $00
    dec c                                         ; $54f3: $0d
    add hl, bc                                    ; $54f4: $09
    sub d                                         ; $54f5: $92
    ld de, $0088                                  ; $54f6: $11 $88 $00
    nop                                           ; $54f9: $00
    nop                                           ; $54fa: $00
    rst $38                                       ; $54fb: $ff
    ld a, a                                       ; $54fc: $7f
    nop                                           ; $54fd: $00
    jr nz, jr_0b1_5545                            ; $54fe: $20 $45

    nop                                           ; $5500: $00
    nop                                           ; $5501: $00
    ld [$3f9f], sp                                ; $5502: $08 $9f $3f
    sub $18                                       ; $5505: $d6 $18
    rst $38                                       ; $5507: $ff
    ld a, a                                       ; $5508: $7f
    ld bc, $2f00                                  ; $5509: $01 $00 $2f

Call_0b1_550c:
    dec c                                         ; $550c: $0d
    ld a, e                                       ; $550d: $7b
    ld a, [hl+]                                   ; $550e: $2a
    sub $18                                       ; $550f: $d6 $18
    ld [hl+], a                                   ; $5511: $22
    nop                                           ; $5512: $00
    or a                                          ; $5513: $b7
    ld a, e                                       ; $5514: $7b
    ld h, b                                       ; $5515: $60
    inc bc                                        ; $5516: $03
    or b                                          ; $5517: $b0
    add hl, hl                                    ; $5518: $29
    ld b, l                                       ; $5519: $45
    inc b                                         ; $551a: $04
    ldh [$03], a                                  ; $551b: $e0 $03
    ld d, a                                       ; $551d: $57
    ld [hl], e                                    ; $551e: $73
    sub d                                         ; $551f: $92
    dec h                                         ; $5520: $25
    and b                                         ; $5521: $a0
    inc e                                         ; $5522: $1c
    sub $18                                       ; $5523: $d6 $18
    ld b, l                                       ; $5525: $45
    ld sp, $1083                                  ; $5526: $31 $83 $10
    nop                                           ; $5529: $00
    nop                                           ; $552a: $00
    xor d                                         ; $552b: $aa
    nop                                           ; $552c: $00
    db $ec                                        ; $552d: $ec
    inc b                                         ; $552e: $04
    ld h, l                                       ; $552f: $65
    nop                                           ; $5530: $00
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    rst $38                                       ; $5533: $ff
    ld a, a                                       ; $5534: $7f

jr_0b1_5535:
    nop                                           ; $5535: $00
    jr nz, jr_0b1_54bf                            ; $5536: $20 $87

    nop                                           ; $5538: $00
    nop                                           ; $5539: $00
    ld [$2a7b], sp                                ; $553a: $08 $7b $2a
    db $f4                                        ; $553d: $f4
    inc d                                         ; $553e: $14
    rst $38                                       ; $553f: $ff
    ld a, a                                       ; $5540: $7f
    ld [hl+], a                                   ; $5541: $22
    inc b                                         ; $5542: $04
    inc l                                         ; $5543: $2c
    ld c, [hl]                                    ; $5544: $4e

jr_0b1_5545:
    sub $14                                       ; $5545: $d6 $14
    ld [hl], h                                    ; $5547: $74
    ld [hl], a                                    ; $5548: $77
    and [hl]                                      ; $5549: $a6
    inc d                                         ; $554a: $14
    ld l, l                                       ; $554b: $6d
    ld d, [hl]                                    ; $554c: $56
    db $dd                                        ; $554d: $dd
    ld b, [hl]                                    ; $554e: $46
    ld d, b                                       ; $554f: $50
    ld hl, $0445                                  ; $5550: $21 $45 $04
    db $10                                        ; $5553: $10
    ld l, a                                       ; $5554: $6f
    rst $30                                       ; $5555: $f7
    add hl, hl                                    ; $5556: $29
    ld c, e                                       ; $5557: $4b
    dec h                                         ; $5558: $25
    add b                                         ; $5559: $80
    inc e                                         ; $555a: $1c
    rst $10                                       ; $555b: $d7
    inc d                                         ; $555c: $14
    add a                                         ; $555d: $87
    add hl, sp                                    ; $555e: $39
    add e                                         ; $555f: $83
    stop                                          ; $5560: $10 $00
    nop                                           ; $5562: $00
    ld h, a                                       ; $5563: $67
    nop                                           ; $5564: $00
    xor c                                         ; $5565: $a9
    nop                                           ; $5566: $00
    ld [hl+], a                                   ; $5567: $22
    nop                                           ; $5568: $00
    ld bc, $ff00                                  ; $5569: $01 $00 $ff
    ld a, a                                       ; $556c: $7f
    nop                                           ; $556d: $00
    jr nz, @-$33                                  ; $556e: $20 $cb

    nop                                           ; $5570: $00
    nop                                           ; $5571: $00

jr_0b1_5572:
    nop                                           ; $5572: $00
    rst $38                                       ; $5573: $ff
    ld a, a                                       ; $5574: $7f
    sub $14                                       ; $5575: $d6 $14
    nop                                           ; $5577: $00
    jr nz, @+$47                                  ; $5578: $20 $45

    ld [$7ff8], sp                                ; $557a: $08 $f8 $7f
    rst $30                                       ; $557d: $f7
    db $10                                        ; $557e: $10
    adc b                                         ; $557f: $88
    add hl, sp                                    ; $5580: $39
    ld h, e                                       ; $5581: $63
    db $10                                        ; $5582: $10
    db $10                                        ; $5583: $10
    ld l, a                                       ; $5584: $6f
    dec e                                         ; $5585: $1d
    ld c, a                                       ; $5586: $4f
    ld b, $52                                     ; $5587: $06 $52
    inc h                                         ; $5589: $24
    nop                                           ; $558a: $00
    rst $28                                       ; $558b: $ef
    ld h, [hl]                                    ; $558c: $66
    sbc e                                         ; $558d: $9b
    ld a, $06                                     ; $558e: $3e $06
    ld hl, $0022                                  ; $5590: $21 $22 $00
    rst $30                                       ; $5593: $f7
    db $10                                        ; $5594: $10
    and h                                         ; $5595: $a4
    ld b, c                                       ; $5596: $41
    add d                                         ; $5597: $82
    inc d                                         ; $5598: $14
    nop                                           ; $5599: $00
    nop                                           ; $559a: $00
    ld b, h                                       ; $559b: $44
    nop                                           ; $559c: $00
    ld h, a                                       ; $559d: $67
    nop                                           ; $559e: $00
    ld h, [hl]                                    ; $559f: $66
    nop                                           ; $55a0: $00
    nop                                           ; $55a1: $00
    nop                                           ; $55a2: $00
    rst $38                                       ; $55a3: $ff
    ld a, a                                       ; $55a4: $7f
    nop                                           ; $55a5: $00
    jr nz, jr_0b1_5572                            ; $55a6: $20 $ca

    nop                                           ; $55a8: $00
    nop                                           ; $55a9: $00
    nop                                           ; $55aa: $00
    rst $38                                       ; $55ab: $ff
    ld a, a                                       ; $55ac: $7f
    ld hl, sp+$0c                                 ; $55ad: $f8 $0c
    nop                                           ; $55af: $00
    jr nz, jr_0b1_5535                            ; $55b0: $20 $83

    jr jr_0b1_55c6                                ; $55b2: $18 $12

    ld h, a                                       ; $55b4: $67
    ld hl, sp+$10                                 ; $55b5: $f8 $10
    ret                                           ; $55b7: $c9


    ld b, c                                       ; $55b8: $41
    ld h, h                                       ; $55b9: $64
    inc c                                         ; $55ba: $0c
    push af                                       ; $55bb: $f5
    dec l                                         ; $55bc: $2d
    ld de, $9f6f                                  ; $55bd: $11 $6f $9f
    ld e, e                                       ; $55c0: $5b
    ld b, [hl]                                    ; $55c1: $46
    nop                                           ; $55c2: $00
    ld e, d                                       ; $55c3: $5a
    ld a, [hl-]                                   ; $55c4: $3a
    ld [hl-], a                                   ; $55c5: $32

jr_0b1_55c6:
    ld [hl], e                                    ; $55c6: $73
    ld h, $29                                     ; $55c7: $26 $29
    ld b, e                                       ; $55c9: $43
    inc b                                         ; $55ca: $04
    rst $30                                       ; $55cb: $f7
    ld [$3987], sp                                ; $55cc: $08 $87 $39
    rrc b                                         ; $55cf: $cb $08
    nop                                           ; $55d1: $00
    nop                                           ; $55d2: $00
    rlc h                                         ; $55d3: $cb $04
    ld [hl], $11                                  ; $55d5: $36 $11
    ld h, l                                       ; $55d7: $65
    nop                                           ; $55d8: $00
    nop                                           ; $55d9: $00
    nop                                           ; $55da: $00
    ld hl, sp+$0c                                 ; $55db: $f8 $0c
    rst $38                                       ; $55dd: $ff
    ld a, a                                       ; $55de: $7f
    nop                                           ; $55df: $00
    jr nz, jr_0b1_55e2                            ; $55e0: $20 $00

jr_0b1_55e2:
    nop                                           ; $55e2: $00
    rst $38                                       ; $55e3: $ff
    ld a, a                                       ; $55e4: $7f
    ld sp, hl                                     ; $55e5: $f9
    inc c                                         ; $55e6: $0c
    nop                                           ; $55e7: $00
    jr nz, jr_0b1_560d                            ; $55e8: $20 $23

    inc b                                         ; $55ea: $04
    pop af                                        ; $55eb: $f1
    ld l, d                                       ; $55ec: $6a
    ld h, [hl]                                    ; $55ed: $66
    dec [hl]                                      ; $55ee: $35
    ld [hl-], a                                   ; $55ef: $32
    dec c                                         ; $55f0: $0d
    inc h                                         ; $55f1: $24
    nop                                           ; $55f2: $00
    ld c, d                                       ; $55f3: $4a
    ld e, d                                       ; $55f4: $5a
    ld d, l                                       ; $55f5: $55
    ld l, a                                       ; $55f6: $6f
    rst $20                                       ; $55f7: $e7
    inc e                                         ; $55f8: $1c
    ld h, l                                       ; $55f9: $65
    ld [$66f0], sp                                ; $55fa: $08 $f0 $66
    sub b                                         ; $55fd: $90
    dec h                                         ; $55fe: $25
    ld a, d                                       ; $55ff: $7a
    ld a, [hl-]                                   ; $5600: $3a
    ld b, e                                       ; $5601: $43
    inc b                                         ; $5602: $04
    ld hl, sp+$08                                 ; $5603: $f8 $08
    rst $20                                       ; $5605: $e7
    ld c, l                                       ; $5606: $4d
    ld a, [de]                                    ; $5607: $1a
    ld e, $22                                     ; $5608: $1e $22
    inc b                                         ; $560a: $04
    dec e                                         ; $560b: $1d
    scf                                           ; $560c: $37

jr_0b1_560d:
    dec c                                         ; $560d: $0d
    dec b                                         ; $560e: $05
    jr jr_0b1_561e                                ; $560f: $18 $0d

    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    rst $38                                       ; $5613: $ff
    ld a, a                                       ; $5614: $7f
    ld sp, hl                                     ; $5615: $f9
    ld [$2000], sp                                ; $5616: $08 $00 $20
    nop                                           ; $5619: $00
    nop                                           ; $561a: $00
    rst $38                                       ; $561b: $ff
    ld a, a                                       ; $561c: $7f
    ld sp, hl                                     ; $561d: $f9

jr_0b1_561e:
    ld [$2000], sp                                ; $561e: $08 $00 $20
    ld [bc], a                                    ; $5621: $02
    nop                                           ; $5622: $00
    xor [hl]                                      ; $5623: $ae
    ld h, d                                       ; $5624: $62
    ld hl, sp+$1d                                 ; $5625: $f8 $1d
    ldh [$28], a                                  ; $5627: $e0 $28
    add l                                         ; $5629: $85
    inc c                                         ; $562a: $0c
    ldh a, [$66]                                  ; $562b: $f0 $66
    xor [hl]                                      ; $562d: $ae
    dec l                                         ; $562e: $2d
    ld a, [hl]                                    ; $562f: $7e
    ld e, a                                       ; $5630: $5f
    ret z                                         ; $5631: $c8

    inc d                                         ; $5632: $14
    dec hl                                        ; $5633: $2b
    ld c, [hl]                                    ; $5634: $4e
    ld [hl], h                                    ; $5635: $74
    ld [hl], a                                    ; $5636: $77
    ld e, e                                       ; $5637: $5b
    ld a, [hl-]                                   ; $5638: $3a
    inc bc                                        ; $5639: $03
    nop                                           ; $563a: $00
    adc $62                                       ; $563b: $ce $62
    inc d                                         ; $563d: $14
    add hl, bc                                    ; $563e: $09
    ld a, [hl-]                                   ; $563f: $3a
    ld h, $25                                     ; $5640: $26 $25
    nop                                           ; $5642: $00
    cpl                                           ; $5643: $2f
    dec b                                         ; $5644: $05
    ld a, [$9c04]                                 ; $5645: $fa $04 $9c
    ld a, [hl+]                                   ; $5648: $2a
    nop                                           ; $5649: $00
    nop                                           ; $564a: $00
    rst $38                                       ; $564b: $ff
    ld a, a                                       ; $564c: $7f
    ld a, [$0008]                                 ; $564d: $fa $08 $00
    jr nz, jr_0b1_5652                            ; $5650: $20 $00

jr_0b1_5652:
    nop                                           ; $5652: $00
    rst $38                                       ; $5653: $ff
    ld a, a                                       ; $5654: $7f
    nop                                           ; $5655: $00
    jr nz, jr_0b1_56d6                            ; $5656: $20 $7e

    ld e, a                                       ; $5658: $5f
    inc hl                                        ; $5659: $23
    nop                                           ; $565a: $00
    rst $28                                       ; $565b: $ef
    ld l, d                                       ; $565c: $6a
    sub [hl]                                      ; $565d: $96
    dec d                                         ; $565e: $15
    ld e, e                                       ; $565f: $5b
    ld [hl-], a                                   ; $5660: $32
    ld h, d                                       ; $5661: $62
    inc d                                         ; $5662: $14
    dec [hl]                                      ; $5663: $35
    ld a, $95                                     ; $5664: $3e $95
    ld [hl], a                                    ; $5666: $77
    ld a, a                                       ; $5667: $7f
    ld e, e                                       ; $5668: $5b
    ret z                                         ; $5669: $c8

    ld [$173b], sp                                ; $566a: $08 $3b $17
    ld b, a                                       ; $566d: $47
    ld b, c                                       ; $566e: $41
    ld [hl], l                                    ; $566f: $75
    ld [hl], e                                    ; $5670: $73
    nop                                           ; $5671: $00
    nop                                           ; $5672: $00
    add hl, bc                                    ; $5673: $09
    ld c, d                                       ; $5674: $4a
    or a                                          ; $5675: $b7
    add hl, de                                    ; $5676: $19
    ld l, e                                       ; $5677: $6b
    nop                                           ; $5678: $00
    ld b, e                                       ; $5679: $43
    nop                                           ; $567a: $00
    add hl, de                                    ; $567b: $19
    dec b                                         ; $567c: $05
    sbc a                                         ; $567d: $9f
    ld b, e                                       ; $567e: $43
    dec l                                         ; $567f: $2d
    dec c                                         ; $5680: $0d
    nop                                           ; $5681: $00

jr_0b1_5682:
    nop                                           ; $5682: $00
    rst $38                                       ; $5683: $ff
    ld a, a                                       ; $5684: $7f
    nop                                           ; $5685: $00
    jr nz, jr_0b1_56b5                            ; $5686: $20 $2d

    dec c                                         ; $5688: $0d
    nop                                           ; $5689: $00

jr_0b1_568a:
    nop                                           ; $568a: $00

jr_0b1_568b:
    rst $38                                       ; $568b: $ff
    ld a, a                                       ; $568c: $7f
    nop                                           ; $568d: $00
    jr nz, jr_0b1_570f                            ; $568e: $20 $7f

    ld e, e                                       ; $5690: $5b
    ld bc, $3300                                  ; $5691: $01 $00 $33
    add hl, bc                                    ; $5694: $09
    ld l, b                                       ; $5695: $68
    nop                                           ; $5696: $00
    rst $10                                       ; $5697: $d7
    dec e                                         ; $5698: $1d
    add d                                         ; $5699: $82
    inc c                                         ; $569a: $0c
    ld hl, sp+$02                                 ; $569b: $f8 $02
    ld [hl], l                                    ; $569d: $75
    ld a, a                                       ; $569e: $7f
    jp nz, Jump_000_2058                          ; $569f: $c2 $58 $20

    ld [$03ff], sp                                ; $56a2: $08 $ff $03
    and d                                         ; $56a5: $a2
    inc [hl]                                      ; $56a6: $34
    ld b, e                                       ; $56a7: $43
    dec b                                         ; $56a8: $05
    ld bc, $8d00                                  ; $56a9: $01 $00 $8d
    nop                                           ; $56ac: $00
    ld [hl], l                                    ; $56ad: $75
    dec c                                         ; $56ae: $0d
    ld b, [hl]                                    ; $56af: $46
    nop                                           ; $56b0: $00
    nop                                           ; $56b1: $00
    nop                                           ; $56b2: $00
    add hl, sp                                    ; $56b3: $39
    dec b                                         ; $56b4: $05

jr_0b1_56b5:
    cp h                                          ; $56b5: $bc
    ld l, $cb                                     ; $56b6: $2e $cb
    nop                                           ; $56b8: $00
    nop                                           ; $56b9: $00
    nop                                           ; $56ba: $00
    rst $38                                       ; $56bb: $ff
    ld a, a                                       ; $56bc: $7f
    nop                                           ; $56bd: $00
    jr nz, jr_0b1_568b                            ; $56be: $20 $cb

    nop                                           ; $56c0: $00
    nop                                           ; $56c1: $00
    nop                                           ; $56c2: $00
    rst $38                                       ; $56c3: $ff
    ld a, a                                       ; $56c4: $7f
    nop                                           ; $56c5: $00
    jr nz, jr_0b1_568a                            ; $56c6: $20 $c2

    ld e, b                                       ; $56c8: $58
    nop                                           ; $56c9: $00
    nop                                           ; $56ca: $00
    xor h                                         ; $56cb: $ac
    nop                                           ; $56cc: $00
    ld [de], a                                    ; $56cd: $12
    dec b                                         ; $56ce: $05
    dec h                                         ; $56cf: $25
    nop                                           ; $56d0: $00
    ld b, b                                       ; $56d1: $40
    inc b                                         ; $56d2: $04
    sub a                                         ; $56d3: $97
    ld [bc], a                                    ; $56d4: $02
    ld b, d                                       ; $56d5: $42

jr_0b1_56d6:
    dec b                                         ; $56d6: $05
    rlca                                          ; $56d7: $07
    ld a, [de]                                    ; $56d8: $1a
    add c                                         ; $56d9: $81

jr_0b1_56da:
    inc b                                         ; $56da: $04
    add h                                         ; $56db: $84
    ld de, $033d                                  ; $56dc: $11 $3d $03
    ld h, $1e                                     ; $56df: $26 $1e
    ld bc, $ad00                                  ; $56e1: $01 $00 $ad
    nop                                           ; $56e4: $00
    scf                                           ; $56e5: $37
    dec b                                         ; $56e6: $05
    daa                                           ; $56e7: $27
    nop                                           ; $56e8: $00
    nop                                           ; $56e9: $00
    nop                                           ; $56ea: $00
    sub h                                         ; $56eb: $94
    ld de, $7fff                                  ; $56ec: $11 $ff $7f
    adc d                                         ; $56ef: $8a
    nop                                           ; $56f0: $00
    nop                                           ; $56f1: $00
    nop                                           ; $56f2: $00
    rst $38                                       ; $56f3: $ff
    ld a, a                                       ; $56f4: $7f
    nop                                           ; $56f5: $00
    jr nz, jr_0b1_5682                            ; $56f6: $20 $8a

    nop                                           ; $56f8: $00
    nop                                           ; $56f9: $00
    nop                                           ; $56fa: $00
    rst $38                                       ; $56fb: $ff
    ld a, a                                       ; $56fc: $7f
    nop                                           ; $56fd: $00
    jr nz, jr_0b1_5707                            ; $56fe: $20 $07

    ld a, [de]                                    ; $5700: $1a
    ld [bc], a                                    ; $5701: $02
    nop                                           ; $5702: $00
    rst $38                                       ; $5703: $ff
    ld a, a                                       ; $5704: $7f
    adc e                                         ; $5705: $8b
    nop                                           ; $5706: $00

jr_0b1_5707:
    ld [hl], l                                    ; $5707: $75
    ld de, $0cc1                                  ; $5708: $11 $c1 $0c
    xor b                                         ; $570b: $a8
    ld l, $56                                     ; $570c: $2e $56
    ld [bc], a                                    ; $570e: $02

jr_0b1_570f:
    ld [hl+], a                                   ; $570f: $22
    ld l, l                                       ; $5710: $6d
    ld b, c                                       ; $5711: $41
    ld [$03df], sp                                ; $5712: $08 $df $03
    ld b, l                                       ; $5715: $45
    ld h, $94                                     ; $5716: $26 $94
    dec e                                         ; $5718: $1d
    nop                                           ; $5719: $00
    nop                                           ; $571a: $00

jr_0b1_571b:
    inc [hl]                                      ; $571b: $34
    add hl, bc                                    ; $571c: $09
    ld a, [hl]                                    ; $571d: $7e
    ld l, $67                                     ; $571e: $2e $67
    inc b                                         ; $5720: $04
    ld bc, $ff00                                  ; $5721: $01 $00 $ff
    ld a, a                                       ; $5724: $7f
    xor h                                         ; $5725: $ac
    nop                                           ; $5726: $00
    ld d, d                                       ; $5727: $52
    dec c                                         ; $5728: $0d
    nop                                           ; $5729: $00
    nop                                           ; $572a: $00
    nop                                           ; $572b: $00
    jr nz, jr_0b1_56da                            ; $572c: $20 $ac

    nop                                           ; $572e: $00
    ld d, d                                       ; $572f: $52
    dec c                                         ; $5730: $0d
    nop                                           ; $5731: $00
    nop                                           ; $5732: $00
    nop                                           ; $5733: $00
    jr nz, jr_0b1_578c                            ; $5734: $20 $56

    ld [bc], a                                    ; $5736: $02
    ld [hl+], a                                   ; $5737: $22
    ld l, l                                       ; $5738: $6d
    ld bc, $ff00                                  ; $5739: $01 $00 $ff
    ld a, a                                       ; $573c: $7f
    adc e                                         ; $573d: $8b
    nop                                           ; $573e: $00
    ld l, $11                                     ; $573f: $2e $11
    ld h, e                                       ; $5741: $63
    ld [$2247], sp                                ; $5742: $08 $47 $22
    xor l                                         ; $5745: $ad
    ld a, [hl]                                    ; $5746: $7e
    rst $38                                       ; $5747: $ff
    inc bc                                        ; $5748: $03
    ld b, d                                       ; $5749: $42
    nop                                           ; $574a: $00
    ld b, l                                       ; $574b: $45
    ld h, $7f                                     ; $574c: $26 $7f
    ld l, $00                                     ; $574e: $2e $00
    inc h                                         ; $5750: $24
    ld [bc], a                                    ; $5751: $02
    nop                                           ; $5752: $00
    db $f4                                        ; $5753: $f4

jr_0b1_5754:
    dec h                                         ; $5754: $25
    db $dd                                        ; $5755: $dd
    ld [hl], $d5                                  ; $5756: $36 $d5
    ld [bc], a                                    ; $5758: $02
    nop                                           ; $5759: $00
    nop                                           ; $575a: $00
    rst $38                                       ; $575b: $ff
    ld a, a                                       ; $575c: $7f
    xor $04                                       ; $575d: $ee $04
    ld h, [hl]                                    ; $575f: $66
    nop                                           ; $5760: $00
    nop                                           ; $5761: $00

jr_0b1_5762:
    nop                                           ; $5762: $00
    nop                                           ; $5763: $00
    jr nz, jr_0b1_5754                            ; $5764: $20 $ee

    inc b                                         ; $5766: $04
    ld h, [hl]                                    ; $5767: $66
    nop                                           ; $5768: $00
    nop                                           ; $5769: $00
    nop                                           ; $576a: $00
    nop                                           ; $576b: $00
    jr nz, jr_0b1_571b                            ; $576c: $20 $ad

    ld a, [hl]                                    ; $576e: $7e
    rst $38                                       ; $576f: $ff
    inc bc                                        ; $5770: $03
    nop                                           ; $5771: $00
    nop                                           ; $5772: $00
    rst $38                                       ; $5773: $ff
    ld a, a                                       ; $5774: $7f
    ld l, e                                       ; $5775: $6b
    nop                                           ; $5776: $00
    ld b, l                                       ; $5777: $45
    nop                                           ; $5778: $00
    dec h                                         ; $5779: $25
    nop                                           ; $577a: $00
    ld b, l                                       ; $577b: $45
    ld [hl+], a                                   ; $577c: $22
    sub h                                         ; $577d: $94
    ld de, $2861                                  ; $577e: $11 $61 $28
    ld b, c                                       ; $5781: $41
    nop                                           ; $5782: $00
    ld h, l                                       ; $5783: $65
    ld a, [hl+]                                   ; $5784: $2a
    inc e                                         ; $5785: $1c
    ld [hl+], a                                   ; $5786: $22
    db $ed                                        ; $5787: $ed
    nop                                           ; $5788: $00
    ld bc, $d400                                  ; $5789: $01 $00 $d4

jr_0b1_578c:
    add hl, de                                    ; $578c: $19
    ld b, [hl]                                    ; $578d: $46
    nop                                           ; $578e: $00
    sbc e                                         ; $578f: $9b
    ld l, $00                                     ; $5790: $2e $00
    nop                                           ; $5792: $00
    rst $38                                       ; $5793: $ff
    ld a, a                                       ; $5794: $7f
    xor d                                         ; $5795: $aa
    nop                                           ; $5796: $00
    ld [de], a                                    ; $5797: $12
    dec b                                         ; $5798: $05
    nop                                           ; $5799: $00
    jr nz, @+$01                                  ; $579a: $20 $ff

    ld a, a                                       ; $579c: $7f
    xor d                                         ; $579d: $aa
    nop                                           ; $579e: $00
    ld [de], a                                    ; $579f: $12
    dec b                                         ; $57a0: $05
    nop                                           ; $57a1: $00
    jr nz, @+$47                                  ; $57a2: $20 $45

    ld [hl+], a                                   ; $57a4: $22
    sub h                                         ; $57a5: $94
    ld de, $2861                                  ; $57a6: $11 $61 $28
    nop                                           ; $57a9: $00
    nop                                           ; $57aa: $00
    rst $38                                       ; $57ab: $ff
    ld a, a                                       ; $57ac: $7f
    ld c, b                                       ; $57ad: $48
    nop                                           ; $57ae: $00
    xor [hl]                                      ; $57af: $ae
    nop                                           ; $57b0: $00
    ld h, h                                       ; $57b1: $64
    inc b                                         ; $57b2: $04
    add [hl]                                      ; $57b3: $86
    ld l, $9b                                     ; $57b4: $2e $9b
    ld [de], a                                    ; $57b6: $12
    xor a                                         ; $57b7: $af
    nop                                           ; $57b8: $00
    ld h, d                                       ; $57b9: $62
    nop                                           ; $57ba: $00
    ld h, [hl]                                    ; $57bb: $66
    ld h, $f9                                     ; $57bc: $26 $f9
    dec e                                         ; $57be: $1d
    ld l, h                                       ; $57bf: $6c
    nop                                           ; $57c0: $00
    ld [bc], a                                    ; $57c1: $02
    nop                                           ; $57c2: $00
    sub c                                         ; $57c3: $91
    dec d                                         ; $57c4: $15
    sbc a                                         ; $57c5: $9f
    ld b, e                                       ; $57c6: $43
    ld b, a                                       ; $57c7: $47
    nop                                           ; $57c8: $00
    nop                                           ; $57c9: $00
    nop                                           ; $57ca: $00
    rst $38                                       ; $57cb: $ff
    ld a, a                                       ; $57cc: $7f
    pop af                                        ; $57cd: $f1
    inc b                                         ; $57ce: $04
    nop                                           ; $57cf: $00
    jr nz, jr_0b1_57d2                            ; $57d0: $20 $00

jr_0b1_57d2:
    jr nz, @+$01                                  ; $57d2: $20 $ff

    ld a, a                                       ; $57d4: $7f
    pop af                                        ; $57d5: $f1
    inc b                                         ; $57d6: $04
    nop                                           ; $57d7: $00
    jr nz, jr_0b1_57da                            ; $57d8: $20 $00

jr_0b1_57da:
    jr nz, jr_0b1_5762                            ; $57da: $20 $86

    ld l, $9b                                     ; $57dc: $2e $9b
    ld [de], a                                    ; $57de: $12
    xor a                                         ; $57df: $af
    nop                                           ; $57e0: $00
    nop                                           ; $57e1: $00
    nop                                           ; $57e2: $00
    rst $38                                       ; $57e3: $ff
    ld a, a                                       ; $57e4: $7f
    ld l, d                                       ; $57e5: $6a
    nop                                           ; $57e6: $00
    nop                                           ; $57e7: $00
    jr nz, jr_0b1_582e                            ; $57e8: $20 $44

    nop                                           ; $57ea: $00
    ld a, e                                       ; $57eb: $7b
    ld h, $e6                                     ; $57ec: $26 $e6
    add hl, de                                    ; $57ee: $19
    ld de, $2209                                  ; $57ef: $11 $09 $22
    nop                                           ; $57f2: $00
    ld a, [hl]                                    ; $57f3: $7e
    ld a, [hl+]                                   ; $57f4: $2a
    and $19                                       ; $57f5: $e6 $19
    xor h                                         ; $57f7: $ac
    nop                                           ; $57f8: $00
    inc h                                         ; $57f9: $24
    nop                                           ; $57fa: $00
    or $1d                                        ; $57fb: $f6 $1d
    rlc h                                         ; $57fd: $cb $04
    ld e, a                                       ; $57ff: $5f
    ccf                                           ; $5800: $3f
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00

jr_0b1_5803:
    rst $38                                       ; $5803: $ff
    ld a, a                                       ; $5804: $7f
    inc de                                        ; $5805: $13
    dec b                                         ; $5806: $05
    nop                                           ; $5807: $00
    jr nz, jr_0b1_580a                            ; $5808: $20 $00

jr_0b1_580a:
    jr nz, @+$01                                  ; $580a: $20 $ff

    ld a, a                                       ; $580c: $7f
    inc de                                        ; $580d: $13
    dec b                                         ; $580e: $05
    nop                                           ; $580f: $00
    jr nz, jr_0b1_5812                            ; $5810: $20 $00

jr_0b1_5812:
    jr nz, jr_0b1_588f                            ; $5812: $20 $7b

    ld h, $e6                                     ; $5814: $26 $e6
    add hl, de                                    ; $5816: $19
    ld de, $0109                                  ; $5817: $11 $09 $01
    nop                                           ; $581a: $00
    rst $38                                       ; $581b: $ff
    ld a, a                                       ; $581c: $7f
    ret nc                                        ; $581d: $d0

    nop                                           ; $581e: $00
    nop                                           ; $581f: $00
    jr nz, jr_0b1_5822                            ; $5820: $20 $00

jr_0b1_5822:
    nop                                           ; $5822: $00
    or a                                          ; $5823: $b7
    add hl, de                                    ; $5824: $19
    rst $20                                       ; $5825: $e7
    inc b                                         ; $5826: $04
    rst $18                                       ; $5827: $df

Jump_0b1_5828:
    inc bc                                        ; $5828: $03
    nop                                           ; $5829: $00
    nop                                           ; $582a: $00
    rst $38                                       ; $582b: $ff
    ld a, a                                       ; $582c: $7f
    inc de                                        ; $582d: $13

jr_0b1_582e:
    dec b                                         ; $582e: $05
    nop                                           ; $582f: $00

jr_0b1_5830:
    jr nz, jr_0b1_5832                            ; $5830: $20 $00

jr_0b1_5832:
    nop                                           ; $5832: $00
    rst $38                                       ; $5833: $ff
    ld a, a                                       ; $5834: $7f
    inc de                                        ; $5835: $13
    dec b                                         ; $5836: $05

jr_0b1_5837:
    nop                                           ; $5837: $00

jr_0b1_5838:
    jr nz, jr_0b1_583a                            ; $5838: $20 $00

jr_0b1_583a:
    nop                                           ; $583a: $00
    rst $38                                       ; $583b: $ff
    ld a, a                                       ; $583c: $7f
    nop                                           ; $583d: $00
    jr nz, jr_0b1_5840                            ; $583e: $20 $00

jr_0b1_5840:
    jr nz, jr_0b1_5842                            ; $5840: $20 $00

jr_0b1_5842:
    jr nz, @+$01                                  ; $5842: $20 $ff

    ld a, a                                       ; $5844: $7f
    nop                                           ; $5845: $00
    jr nz, jr_0b1_5848                            ; $5846: $20 $00

jr_0b1_5848:
    jr nz, jr_0b1_584a                            ; $5848: $20 $00

jr_0b1_584a:
    jr nz, jr_0b1_5803                            ; $584a: $20 $b7

    add hl, de                                    ; $584c: $19
    rst $20                                       ; $584d: $e7
    inc b                                         ; $584e: $04
    rst $18                                       ; $584f: $df
    inc bc                                        ; $5850: $03
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00
    rst $38                                       ; $5853: $ff
    ld a, a                                       ; $5854: $7f
    nop                                           ; $5855: $00
    jr nz, jr_0b1_5837                            ; $5856: $20 $df

    inc bc                                        ; $5858: $03
    nop                                           ; $5859: $00
    nop                                           ; $585a: $00
    rst $38                                       ; $585b: $ff
    ld a, a                                       ; $585c: $7f
    nop                                           ; $585d: $00
    jr nz, @-$1f                                  ; $585e: $20 $df

    inc bc                                        ; $5860: $03
    nop                                           ; $5861: $00
    nop                                           ; $5862: $00
    nop                                           ; $5863: $00
    jr nz, jr_0b1_5866                            ; $5864: $20 $00

jr_0b1_5866:
    jr nz, jr_0b1_5868                            ; $5866: $20 $00

jr_0b1_5868:
    jr nz, jr_0b1_586a                            ; $5868: $20 $00

jr_0b1_586a:
    nop                                           ; $586a: $00
    nop                                           ; $586b: $00
    jr nz, jr_0b1_586e                            ; $586c: $20 $00

jr_0b1_586e:
    jr nz, jr_0b1_5870                            ; $586e: $20 $00

jr_0b1_5870:
    jr nz, jr_0b1_5872                            ; $5870: $20 $00

jr_0b1_5872:
    nop                                           ; $5872: $00
    nop                                           ; $5873: $00
    jr nz, jr_0b1_5876                            ; $5874: $20 $00

jr_0b1_5876:
    jr nz, jr_0b1_5878                            ; $5876: $20 $00

jr_0b1_5878:
    jr nz, jr_0b1_587a                            ; $5878: $20 $00

jr_0b1_587a:
    jr nz, jr_0b1_587c                            ; $587a: $20 $00

jr_0b1_587c:
    jr nz, jr_0b1_587e                            ; $587c: $20 $00

jr_0b1_587e:
    jr nz, jr_0b1_5880                            ; $587e: $20 $00

jr_0b1_5880:
    jr nz, jr_0b1_5882                            ; $5880: $20 $00

jr_0b1_5882:
    jr nz, jr_0b1_5884                            ; $5882: $20 $00

jr_0b1_5884:
    jr nz, jr_0b1_589e                            ; $5884: $20 $18

    ld [hl], a                                    ; $5886: $77
    ld c, b                                       ; $5887: $48
    ld b, l                                       ; $5888: $45
    nop                                           ; $5889: $00
    jr nz, jr_0b1_588c                            ; $588a: $20 $00

jr_0b1_588c:
    jr nz, jr_0b1_58a6                            ; $588c: $20 $18

    ld [hl], a                                    ; $588e: $77

jr_0b1_588f:
    ld c, b                                       ; $588f: $48
    ld b, l                                       ; $5890: $45
    nop                                           ; $5891: $00
    jr nz, jr_0b1_5894                            ; $5892: $20 $00

jr_0b1_5894:
    jr nz, jr_0b1_58ae                            ; $5894: $20 $18

    ld [hl], a                                    ; $5896: $77
    ld c, b                                       ; $5897: $48
    ld b, l                                       ; $5898: $45
    nop                                           ; $5899: $00
    jr nz, jr_0b1_5830                            ; $589a: $20 $94

jr_0b1_589c:
    ld [hl], d                                    ; $589c: $72
    sbc h                                         ; $589d: $9c

jr_0b1_589e:
    ld a, e                                       ; $589e: $7b
    cp l                                          ; $589f: $bd
    ld a, e                                       ; $58a0: $7b
    nop                                           ; $58a1: $00
    jr nz, jr_0b1_5838                            ; $58a2: $20 $94

    ld [hl], d                                    ; $58a4: $72
    sbc h                                         ; $58a5: $9c

jr_0b1_58a6:
    ld a, e                                       ; $58a6: $7b
    cp l                                          ; $58a7: $bd
    ld a, e                                       ; $58a8: $7b
    nop                                           ; $58a9: $00
    jr nz, jr_0b1_5840                            ; $58aa: $20 $94

    ld [hl], d                                    ; $58ac: $72
    sbc h                                         ; $58ad: $9c

jr_0b1_58ae:
    ld a, e                                       ; $58ae: $7b
    cp l                                          ; $58af: $bd
    ld a, e                                       ; $58b0: $7b
    nop                                           ; $58b1: $00
    jr nz, jr_0b1_5848                            ; $58b2: $20 $94

    ld [hl], d                                    ; $58b4: $72
    sbc h                                         ; $58b5: $9c
    ld a, e                                       ; $58b6: $7b
    cp l                                          ; $58b7: $bd
    ld a, e                                       ; $58b8: $7b
    nop                                           ; $58b9: $00
    nop                                           ; $58ba: $00
    nop                                           ; $58bb: $00
    jr nz, jr_0b1_58d6                            ; $58bc: $20 $18

    ld [hl], a                                    ; $58be: $77
    ld c, b                                       ; $58bf: $48
    ld b, l                                       ; $58c0: $45
    nop                                           ; $58c1: $00
    nop                                           ; $58c2: $00
    nop                                           ; $58c3: $00
    jr nz, @+$1a                                  ; $58c4: $20 $18

    ld [hl], a                                    ; $58c6: $77
    ld c, b                                       ; $58c7: $48
    ld b, l                                       ; $58c8: $45
    nop                                           ; $58c9: $00
    jr nz, jr_0b1_58cc                            ; $58ca: $20 $00

jr_0b1_58cc:
    jr nz, jr_0b1_58e6                            ; $58cc: $20 $18

    ld [hl], a                                    ; $58ce: $77
    ld c, b                                       ; $58cf: $48
    ld b, l                                       ; $58d0: $45
    nop                                           ; $58d1: $00
    nop                                           ; $58d2: $00
    ld l, c                                       ; $58d3: $69
    ld c, l                                       ; $58d4: $4d
    sub h                                         ; $58d5: $94

jr_0b1_58d6:
    ld [hl], d                                    ; $58d6: $72
    xor h                                         ; $58d7: $ac
    ld d, l                                       ; $58d8: $55
    nop                                           ; $58d9: $00
    jr nz, jr_0b1_58e2                            ; $58da: $20 $06

    dec a                                         ; $58dc: $3d
    call $ac59                                    ; $58dd: $cd $59 $ac
    ld d, l                                       ; $58e0: $55
    nop                                           ; $58e1: $00

jr_0b1_58e2:
    nop                                           ; $58e2: $00
    nop                                           ; $58e3: $00
    inc e                                         ; $58e4: $1c
    nop                                           ; $58e5: $00

jr_0b1_58e6:
    jr nz, jr_0b1_5894                            ; $58e6: $20 $ac

    ld d, l                                       ; $58e8: $55

jr_0b1_58e9:
    nop                                           ; $58e9: $00
    jr nz, jr_0b1_58ec                            ; $58ea: $20 $00

jr_0b1_58ec:
    inc e                                         ; $58ec: $1c
    nop                                           ; $58ed: $00
    jr nz, jr_0b1_589c                            ; $58ee: $20 $ac

    ld d, l                                       ; $58f0: $55
    nop                                           ; $58f1: $00
    nop                                           ; $58f2: $00
    nop                                           ; $58f3: $00
    jr nz, @+$1a                                  ; $58f4: $20 $18

    ld [hl], a                                    ; $58f6: $77
    ld c, b                                       ; $58f7: $48
    ld b, l                                       ; $58f8: $45
    nop                                           ; $58f9: $00
    nop                                           ; $58fa: $00
    adc $39                                       ; $58fb: $ce $39
    nop                                           ; $58fd: $00
    jr nz, jr_0b1_5948                            ; $58fe: $20 $48

    ld b, l                                       ; $5900: $45
    nop                                           ; $5901: $00
    jr nz, jr_0b1_58e9                            ; $5902: $20 $e5

    inc a                                         ; $5904: $3c
    rst $28                                       ; $5905: $ef
    ld h, c                                       ; $5906: $61
    dec b                                         ; $5907: $05
    dec a                                         ; $5908: $3d
    nop                                           ; $5909: $00
    nop                                           ; $590a: $00
    cp a                                          ; $590b: $bf
    ld bc, $3d06                                  ; $590c: $01 $06 $3d
    daa                                           ; $590f: $27
    ld b, c                                       ; $5910: $41

jr_0b1_5911:
    nop                                           ; $5911: $00
    inc e                                         ; $5912: $1c
    daa                                           ; $5913: $27
    ld b, c                                       ; $5914: $41
    call z, $934d                                 ; $5915: $cc $4d $93
    ld e, [hl]                                    ; $5918: $5e
    nop                                           ; $5919: $00
    nop                                           ; $591a: $00
    ld sp, $0046                                  ; $591b: $31 $46 $00
    jr nz, jr_0b1_5938                            ; $591e: $20 $18

    ld h, e                                       ; $5920: $63

jr_0b1_5921:
    nop                                           ; $5921: $00
    jr nz, jr_0b1_5955                            ; $5922: $20 $31

    ld b, [hl]                                    ; $5924: $46
    nop                                           ; $5925: $00
    jr nz, jr_0b1_5940                            ; $5926: $20 $18

jr_0b1_5928:
    ld h, e                                       ; $5928: $63
    nop                                           ; $5929: $00
    nop                                           ; $592a: $00
    nop                                           ; $592b: $00
    jr nz, @-$0f                                  ; $592c: $20 $ef

    ld h, c                                       ; $592e: $61
    dec b                                         ; $592f: $05
    dec a                                         ; $5930: $3d
    nop                                           ; $5931: $00
    nop                                           ; $5932: $00
    rst $28                                       ; $5933: $ef
    dec a                                         ; $5934: $3d
    ld a, e                                       ; $5935: $7b
    ld l, a                                       ; $5936: $6f
    nop                                           ; $5937: $00

jr_0b1_5938:
    jr nz, jr_0b1_593a                            ; $5938: $20 $00

jr_0b1_593a:
    nop                                           ; $593a: $00
    ld l, d                                       ; $593b: $6a
    ld b, l                                       ; $593c: $45
    jr nc, jr_0b1_5995                            ; $593d: $30 $56

    nop                                           ; $593f: $00

jr_0b1_5940:
    jr nz, jr_0b1_5921                            ; $5940: $20 $df

    ld bc, $01ff                                  ; $5942: $01 $ff $01
    nop                                           ; $5945: $00
    jr nz, jr_0b1_5960                            ; $5946: $20 $18

jr_0b1_5948:
    ld h, e                                       ; $5948: $63
    nop                                           ; $5949: $00
    nop                                           ; $594a: $00
    jr nc, @+$54                                  ; $594b: $30 $52

    rst $18                                       ; $594d: $df
    ld bc, $6b17                                  ; $594e: $01 $17 $6b
    nop                                           ; $5951: $00
    nop                                           ; $5952: $00
    or l                                          ; $5953: $b5
    ld d, [hl]                                    ; $5954: $56

jr_0b1_5955:
    nop                                           ; $5955: $00
    jr nz, jr_0b1_59d3                            ; $5956: $20 $7b

    ld l, a                                       ; $5958: $6f
    nop                                           ; $5959: $00
    jr nz, jr_0b1_5911                            ; $595a: $20 $b5

    ld d, [hl]                                    ; $595c: $56
    nop                                           ; $595d: $00
    jr nz, jr_0b1_59db                            ; $595e: $20 $7b

jr_0b1_5960:
    ld l, a                                       ; $5960: $6f
    nop                                           ; $5961: $00
    nop                                           ; $5962: $00
    add hl, sp                                    ; $5963: $39
    ld h, a                                       ; $5964: $67
    rst $20                                       ; $5965: $e7
    inc e                                         ; $5966: $1c
    nop                                           ; $5967: $00
    jr nz, jr_0b1_596a                            ; $5968: $20 $00

jr_0b1_596a:
    inc b                                         ; $596a: $04
    ld d, d                                       ; $596b: $52
    ld c, [hl]                                    ; $596c: $4e
    cp l                                          ; $596d: $bd
    ld [hl], a                                    ; $596e: $77
    add hl, hl                                    ; $596f: $29
    dec h                                         ; $5970: $25
    nop                                           ; $5971: $00
    ld [$5a51], sp                                ; $5972: $08 $51 $5a
    rst $18                                       ; $5975: $df
    ld bc, $6f38                                  ; $5976: $01 $38 $6f
    rst $38                                       ; $5979: $ff
    ld bc, $021f                                  ; $597a: $01 $1f $02
    or h                                          ; $597d: $b4
    ld h, d                                       ; $597e: $62
    rst $30                                       ; $597f: $f7
    ld l, d                                       ; $5980: $6a
    nop                                           ; $5981: $00
    nop                                           ; $5982: $00
    adc $39                                       ; $5983: $ce $39
    cp l                                          ; $5985: $bd
    ld [hl], a                                    ; $5986: $77
    rst $38                                       ; $5987: $ff
    ld bc, $0000                                  ; $5988: $01 $00 $00
    sub h                                         ; $598b: $94
    ld d, d                                       ; $598c: $52
    ld hl, $bd1c                                  ; $598d: $21 $1c $bd
    ld [hl], a                                    ; $5990: $77
    nop                                           ; $5991: $00
    jr nz, jr_0b1_5928                            ; $5992: $20 $94

    ld d, d                                       ; $5994: $52

jr_0b1_5995:
    ld hl, $bd1c                                  ; $5995: $21 $1c $bd
    ld [hl], a                                    ; $5998: $77
    nop                                           ; $5999: $00
    nop                                           ; $599a: $00
    nop                                           ; $599b: $00
    jr nz, jr_0b1_59e0                            ; $599c: $20 $42

    ld [$6f38], sp                                ; $599e: $08 $38 $6f
    nop                                           ; $59a1: $00
    nop                                           ; $59a2: $00
    or l                                          ; $59a3: $b5
    ld d, [hl]                                    ; $59a4: $56
    ld e, d                                       ; $59a5: $5a
    ld l, e                                       ; $59a6: $6b
    rst $20                                       ; $59a7: $e7
    inc e                                         ; $59a8: $1c
    nop                                           ; $59a9: $00
    nop                                           ; $59aa: $00
    rst $38                                       ; $59ab: $ff
    ld bc, $779c                                  ; $59ac: $01 $9c $77
    rst $38                                       ; $59af: $ff
    ld a, a                                       ; $59b0: $7f
    nop                                           ; $59b1: $00
    nop                                           ; $59b2: $00
    rra                                           ; $59b3: $1f
    ld [bc], a                                    ; $59b4: $02
    ld hl, $bd04                                  ; $59b5: $21 $04 $bd
    ld [hl], a                                    ; $59b8: $77
    ld bc, $f600                                  ; $59b9: $01 $00 $f6
    ld e, d                                       ; $59bc: $5a
    sbc $7b                                       ; $59bd: $de $7b
    rst $20                                       ; $59bf: $e7
    inc e                                         ; $59c0: $1c
    nop                                           ; $59c1: $00
    nop                                           ; $59c2: $00

jr_0b1_59c3:
    ld [hl], e                                    ; $59c3: $73
    ld c, [hl]                                    ; $59c4: $4e
    add hl, sp                                    ; $59c5: $39
    ld h, a                                       ; $59c6: $67
    ld l, e                                       ; $59c7: $6b
    dec l                                         ; $59c8: $2d
    nop                                           ; $59c9: $00
    nop                                           ; $59ca: $00
    nop                                           ; $59cb: $00
    jr nz, jr_0b1_5a07                            ; $59cc: $20 $39

    ld h, a                                       ; $59ce: $67
    ld l, e                                       ; $59cf: $6b
    dec l                                         ; $59d0: $2d
    nop                                           ; $59d1: $00
    nop                                           ; $59d2: $00

jr_0b1_59d3:
    ld sp, $7b46                                  ; $59d3: $31 $46 $7b
    ld l, a                                       ; $59d6: $6f
    nop                                           ; $59d7: $00
    jr nz, jr_0b1_59ea                            ; $59d8: $20 $10

    ld b, d                                       ; $59da: $42

jr_0b1_59db:
    jr jr_0b1_5a40                                ; $59db: $18 $63

    sub h                                         ; $59dd: $94
    ld d, d                                       ; $59de: $52
    ld e, d                                       ; $59df: $5a

jr_0b1_59e0:
    ld l, a                                       ; $59e0: $6f
    nop                                           ; $59e1: $00
    nop                                           ; $59e2: $00
    or e                                          ; $59e3: $b3
    add hl, hl                                    ; $59e4: $29
    ld e, d                                       ; $59e5: $5a
    ld l, e                                       ; $59e6: $6b
    ccf                                           ; $59e7: $3f
    ld [bc], a                                    ; $59e8: $02
    nop                                           ; $59e9: $00

jr_0b1_59ea:
    nop                                           ; $59ea: $00
    or d                                          ; $59eb: $b2
    dec h                                         ; $59ec: $25
    cp h                                          ; $59ed: $bc
    ld b, [hl]                                    ; $59ee: $46
    sbc $7b                                       ; $59ef: $de $7b
    ld b, d                                       ; $59f1: $42
    ld [$4a52], sp                                ; $59f2: $08 $52 $4a
    ld e, d                                       ; $59f5: $5a
    ld l, e                                       ; $59f6: $6b
    cp l                                          ; $59f7: $bd
    ld [hl], a                                    ; $59f8: $77
    nop                                           ; $59f9: $00
    nop                                           ; $59fa: $00
    ld [hl], e                                    ; $59fb: $73
    ld c, [hl]                                    ; $59fc: $4e
    cp l                                          ; $59fd: $bd
    ld [hl], a                                    ; $59fe: $77
    ld [$0021], sp                                ; $59ff: $08 $21 $00
    nop                                           ; $5a02: $00
    nop                                           ; $5a03: $00
    jr nz, jr_0b1_59c3                            ; $5a04: $20 $bd

    ld [hl], a                                    ; $5a06: $77

jr_0b1_5a07:
    ld [$0021], sp                                ; $5a07: $08 $21 $00
    inc d                                         ; $5a0a: $14
    db $10                                        ; $5a0b: $10
    ld b, d                                       ; $5a0c: $42
    add hl, sp                                    ; $5a0d: $39
    ld h, a                                       ; $5a0e: $67
    add hl, hl                                    ; $5a0f: $29
    dec h                                         ; $5a10: $25
    ld hl, $4a04                                  ; $5a11: $21 $04 $4a
    add hl, hl                                    ; $5a14: $29
    ld sp, $3946                                  ; $5a15: $31 $46 $39
    ld h, a                                       ; $5a18: $67
    nop                                           ; $5a19: $00
    nop                                           ; $5a1a: $00
    db $d3                                        ; $5a1b: $d3
    dec l                                         ; $5a1c: $2d
    dec sp                                        ; $5a1d: $3b
    ld h, e                                       ; $5a1e: $63
    ld c, d                                       ; $5a1f: $4a
    add hl, hl                                    ; $5a20: $29
    nop                                           ; $5a21: $00
    nop                                           ; $5a22: $00
    ld [hl], l                                    ; $5a23: $75
    ld c, d                                       ; $5a24: $4a
    inc l                                         ; $5a25: $2c
    ld hl, $5f5d                                  ; $5a26: $21 $5d $5f

jr_0b1_5a29:
    nop                                           ; $5a29: $00
    nop                                           ; $5a2a: $00
    rst $30                                       ; $5a2b: $f7
    ld e, [hl]                                    ; $5a2c: $5e
    ld c, d                                       ; $5a2d: $4a
    add hl, hl                                    ; $5a2e: $29
    sbc $7b                                       ; $5a2f: $de $7b
    nop                                           ; $5a31: $00
    nop                                           ; $5a32: $00
    ld sp, $7b52                                  ; $5a33: $31 $52 $7b
    ld l, a                                       ; $5a36: $6f
    and l                                         ; $5a37: $a5
    inc d                                         ; $5a38: $14
    nop                                           ; $5a39: $00
    jr nz, jr_0b1_5a29                            ; $5a3a: $20 $ed

    ld d, c                                       ; $5a3c: $51
    or h                                          ; $5a3d: $b4
    ld h, d                                       ; $5a3e: $62
    rst $30                                       ; $5a3f: $f7

jr_0b1_5a40:
    ld l, d                                       ; $5a40: $6a
    nop                                           ; $5a41: $00
    ld [$4631], sp                                ; $5a42: $08 $31 $46
    ld [$9c21], sp                                ; $5a45: $08 $21 $9c
    ld [hl], e                                    ; $5a48: $73
    nop                                           ; $5a49: $00
    nop                                           ; $5a4a: $00
    add h                                         ; $5a4b: $84
    db $10                                        ; $5a4c: $10
    ld [$2221], sp                                ; $5a4d: $08 $21 $22
    inc b                                         ; $5a50: $04
    nop                                           ; $5a51: $00
    nop                                           ; $5a52: $00
    pop de                                        ; $5a53: $d1
    dec [hl]                                      ; $5a54: $35
    ld a, [de]                                    ; $5a55: $1a
    ld e, e                                       ; $5a56: $5b
    ld c, d                                       ; $5a57: $4a
    add hl, hl                                    ; $5a58: $29
    nop                                           ; $5a59: $00
    nop                                           ; $5a5a: $00
    inc sp                                        ; $5a5b: $33
    ld b, d                                       ; $5a5c: $42
    ld e, h                                       ; $5a5d: $5c
    ld h, e                                       ; $5a5e: $63
    ld [$0021], sp                                ; $5a5f: $08 $21 $00
    nop                                           ; $5a62: $00
    xor l                                         ; $5a63: $ad
    dec [hl]                                      ; $5a64: $35
    and [hl]                                      ; $5a65: $a6
    db $10                                        ; $5a66: $10
    cp c                                          ; $5a67: $b9
    ld c, d                                       ; $5a68: $4a
    nop                                           ; $5a69: $00
    nop                                           ; $5a6a: $00
    ld sp, $9c46                                  ; $5a6b: $31 $46 $9c
    ld [hl], e                                    ; $5a6e: $73
    rst $20                                       ; $5a6f: $e7
    inc e                                         ; $5a70: $1c
    nop                                           ; $5a71: $00
    jr nz, jr_0b1_5abd                            ; $5a72: $20 $49

    ld c, c                                       ; $5a74: $49
    ld [hl], d                                    ; $5a75: $72
    ld e, [hl]                                    ; $5a76: $5e
    dec b                                         ; $5a77: $05
    dec a                                         ; $5a78: $3d
    nop                                           ; $5a79: $00
    nop                                           ; $5a7a: $00
    ld sp, $f746                                  ; $5a7b: $31 $46 $f7
    ld [hl], d                                    ; $5a7e: $72
    ld hl, $2218                                  ; $5a7f: $21 $18 $22
    nop                                           ; $5a82: $00
    cp a                                          ; $5a83: $bf
    ld [bc], a                                    ; $5a84: $02
    or d                                          ; $5a85: $b2
    add hl, hl                                    ; $5a86: $29
    cp e                                          ; $5a87: $bb
    ld c, d                                       ; $5a88: $4a
    nop                                           ; $5a89: $00
    nop                                           ; $5a8a: $00
    jp nc, $1b2d                                  ; $5a8b: $d2 $2d $1b

    ld e, a                                       ; $5a8e: $5f
    ld c, d                                       ; $5a8f: $4a
    add hl, hl                                    ; $5a90: $29
    ld hl, $1304                                  ; $5a91: $21 $04 $13
    ld a, [hl-]                                   ; $5a94: $3a
    ld c, d                                       ; $5a95: $4a
    add hl, hl                                    ; $5a96: $29
    ld a, [de]                                    ; $5a97: $1a
    ld e, e                                       ; $5a98: $5b
    nop                                           ; $5a99: $00
    nop                                           ; $5a9a: $00
    or e                                          ; $5a9b: $b3
    dec h                                         ; $5a9c: $25
    sbc l                                         ; $5a9d: $9d
    ld a, $67                                     ; $5a9e: $3e $67
    nop                                           ; $5aa0: $00
    nop                                           ; $5aa1: $00
    nop                                           ; $5aa2: $00
    ld d, d                                       ; $5aa3: $52
    ld c, d                                       ; $5aa4: $4a
    rst $18                                       ; $5aa5: $df
    ld [bc], a                                    ; $5aa6: $02
    rst $20                                       ; $5aa7: $e7
    inc e                                         ; $5aa8: $1c
    nop                                           ; $5aa9: $00
    nop                                           ; $5aaa: $00
    ld c, b                                       ; $5aab: $48
    ld b, l                                       ; $5aac: $45
    ld sp, $0062                                  ; $5aad: $31 $62 $00
    jr nz, jr_0b1_5ab2                            ; $5ab0: $20 $00

jr_0b1_5ab2:
    inc b                                         ; $5ab2: $04
    rst $18                                       ; $5ab3: $df
    ld [bc], a                                    ; $5ab4: $02
    or l                                          ; $5ab5: $b5
    ld d, [hl]                                    ; $5ab6: $56
    ld e, e                                       ; $5ab7: $5b
    ld [hl], a                                    ; $5ab8: $77
    inc h                                         ; $5ab9: $24
    nop                                           ; $5aba: $00
    rst $18                                       ; $5abb: $df
    ld [bc], a                                    ; $5abc: $02

jr_0b1_5abd:
    or d                                          ; $5abd: $b2
    add hl, hl                                    ; $5abe: $29
    rst $38                                       ; $5abf: $ff
    ld b, d                                       ; $5ac0: $42
    ld [bc], a                                    ; $5ac1: $02
    nop                                           ; $5ac2: $00
    dec d                                         ; $5ac3: $15
    ld [hl-], a                                   ; $5ac4: $32
    ld c, d                                       ; $5ac5: $4a
    add hl, hl                                    ; $5ac6: $29
    jp c, $004e                                   ; $5ac7: $da $4e $00

    nop                                           ; $5aca: $00
    ld d, [hl]                                    ; $5acb: $56
    ld b, d                                       ; $5acc: $42
    rst $38                                       ; $5acd: $ff
    ld a, a                                       ; $5ace: $7f
    add l                                         ; $5acf: $85
    stop                                          ; $5ad0: $10 $00
    nop                                           ; $5ad2: $00
    sub $25                                       ; $5ad3: $d6 $25
    ld a, a                                       ; $5ad5: $7f
    ld d, e                                       ; $5ad6: $53
    adc b                                         ; $5ad7: $88
    nop                                           ; $5ad8: $00
    nop                                           ; $5ad9: $00
    nop                                           ; $5ada: $00
    rrca                                          ; $5adb: $0f
    ld b, d                                       ; $5adc: $42
    rst $18                                       ; $5add: $df
    ld [bc], a                                    ; $5ade: $02
    rst $38                                       ; $5adf: $ff
    ld [bc], a                                    ; $5ae0: $02
    nop                                           ; $5ae1: $00
    inc e                                         ; $5ae2: $1c
    rst $38                                       ; $5ae3: $ff
    ld [bc], a                                    ; $5ae4: $02
    db $10                                        ; $5ae5: $10
    ld h, d                                       ; $5ae6: $62
    sbc h                                         ; $5ae7: $9c
    ld a, e                                       ; $5ae8: $7b
    nop                                           ; $5ae9: $00
    nop                                           ; $5aea: $00
    sub h                                         ; $5aeb: $94
    ld l, [hl]                                    ; $5aec: $6e
    rst $38                                       ; $5aed: $ff
    ld [bc], a                                    ; $5aee: $02
    cp l                                          ; $5aef: $bd
    ld a, e                                       ; $5af0: $7b
    ld b, l                                       ; $5af1: $45
    nop                                           ; $5af2: $00
    rst $38                                       ; $5af3: $ff
    ld [bc], a                                    ; $5af4: $02
    cp [hl]                                       ; $5af5: $be
    ld b, [hl]                                    ; $5af6: $46
    ld a, a                                       ; $5af7: $7f
    ld d, a                                       ; $5af8: $57
    ld bc, $5800                                  ; $5af9: $01 $00 $58
    ld a, [hl-]                                   ; $5afc: $3a
    cp l                                          ; $5afd: $bd
    ld [hl], a                                    ; $5afe: $77
    ld c, c                                       ; $5aff: $49
    add hl, hl                                    ; $5b00: $29
    nop                                           ; $5b01: $00
    nop                                           ; $5b02: $00
    push af                                       ; $5b03: $f5
    dec l                                         ; $5b04: $2d
    rst $38                                       ; $5b05: $ff
    ld a, a                                       ; $5b06: $7f
    ld [$0021], sp                                ; $5b07: $08 $21 $00
    nop                                           ; $5b0a: $00
    ld l, d                                       ; $5b0b: $6a
    dec l                                         ; $5b0c: $2d
    rla                                           ; $5b0d: $17
    ld h, e                                       ; $5b0e: $63
    ld sp, $0015                                  ; $5b0f: $31 $15 $00
    nop                                           ; $5b12: $00
    rra                                           ; $5b13: $1f
    inc bc                                        ; $5b14: $03
    dec b                                         ; $5b15: $05
    nop                                           ; $5b16: $00
    ccf                                           ; $5b17: $3f
    inc bc                                        ; $5b18: $03
    nop                                           ; $5b19: $00
    inc e                                         ; $5b1a: $1c
    sub h                                         ; $5b1b: $94
    ld l, [hl]                                    ; $5b1c: $6e
    rra                                           ; $5b1d: $1f
    inc bc                                        ; $5b1e: $03
    ld b, $41                                     ; $5b1f: $06 $41
    nop                                           ; $5b21: $00
    ld [$6610], sp                                ; $5b22: $08 $10 $66
    rra                                           ; $5b25: $1f
    inc bc                                        ; $5b26: $03
    jr jr_0b1_5ba0                                ; $5b27: $18 $77

    ld [bc], a                                    ; $5b29: $02
    nop                                           ; $5b2a: $00
    add hl, sp                                    ; $5b2b: $39
    ld l, $ff                                     ; $5b2c: $2e $ff
    ld h, a                                       ; $5b2e: $67
    ccf                                           ; $5b2f: $3f
    inc bc                                        ; $5b30: $03
    nop                                           ; $5b31: $00
    nop                                           ; $5b32: $00
    call nc, Call_0b1_7c29                        ; $5b33: $d4 $29 $7c
    ld a, a                                       ; $5b36: $7f
    rst $20                                       ; $5b37: $e7
    inc l                                         ; $5b38: $2c
    nop                                           ; $5b39: $00
    nop                                           ; $5b3a: $00
    ld [de], a                                    ; $5b3b: $12
    ld a, [hl-]                                   ; $5b3c: $3a
    add $30                                       ; $5b3d: $c6 $30
    or a                                          ; $5b3f: $b7
    ld [hl], d                                    ; $5b40: $72
    nop                                           ; $5b41: $00
    nop                                           ; $5b42: $00
    ld l, e                                       ; $5b43: $6b
    dec l                                         ; $5b44: $2d
    ld sp, $6446                                  ; $5b45: $31 $46 $64
    ld [$0003], sp                                ; $5b48: $08 $03 $00
    call nc, Call_0b1_7e2d                        ; $5b4b: $d4 $2d $7e
    ld h, e                                       ; $5b4e: $63
    ccf                                           ; $5b4f: $3f
    inc bc                                        ; $5b50: $03
    nop                                           ; $5b51: $00
    inc e                                         ; $5b52: $1c
    ccf                                           ; $5b53: $3f
    inc bc                                        ; $5b54: $03
    push hl                                       ; $5b55: $e5
    inc a                                         ; $5b56: $3c
    adc $59                                       ; $5b57: $ce $59
    nop                                           ; $5b59: $00
    ld [$72f7], sp                                ; $5b5a: $08 $f7 $72
    ld l, c                                       ; $5b5d: $69
    ld c, c                                       ; $5b5e: $49
    ld a, a                                       ; $5b5f: $7f
    inc bc                                        ; $5b60: $03
    nop                                           ; $5b61: $00
    nop                                           ; $5b62: $00
    ld l, e                                       ; $5b63: $6b
    dec l                                         ; $5b64: $2d
    ld [hl], e                                    ; $5b65: $73
    ld c, [hl]                                    ; $5b66: $4e
    ld a, a                                       ; $5b67: $7f
    inc bc                                        ; $5b68: $03
    nop                                           ; $5b69: $00
    nop                                           ; $5b6a: $00
    pop de                                        ; $5b6b: $d1
    ld b, l                                       ; $5b6c: $45
    jp c, $a64e                                   ; $5b6d: $da $4e $a6

    jr nc, jr_0b1_5b72                            ; $5b70: $30 $00

jr_0b1_5b72:
    nop                                           ; $5b72: $00
    rst $28                                       ; $5b73: $ef
    dec a                                         ; $5b74: $3d
    add $24                                       ; $5b75: $c6 $24
    reti                                          ; $5b77: $d9


    ld d, d                                       ; $5b78: $52
    nop                                           ; $5b79: $00
    nop                                           ; $5b7a: $00
    db $10                                        ; $5b7b: $10
    ld b, d                                       ; $5b7c: $42
    ld c, d                                       ; $5b7d: $4a
    add hl, hl                                    ; $5b7e: $29
    or l                                          ; $5b7f: $b5
    ld d, [hl]                                    ; $5b80: $56
    inc bc                                        ; $5b81: $03
    nop                                           ; $5b82: $00
    sbc a                                         ; $5b83: $9f
    inc bc                                        ; $5b84: $03
    ld a, $53                                     ; $5b85: $3e $53
    db $ed                                        ; $5b87: $ed
    inc d                                         ; $5b88: $14
    nop                                           ; $5b89: $00
    inc e                                         ; $5b8a: $1c
    cpl                                           ; $5b8b: $2f
    ld d, [hl]                                    ; $5b8c: $56
    ld a, a                                       ; $5b8d: $7f
    inc bc                                        ; $5b8e: $03
    ld h, $3d                                     ; $5b8f: $26 $3d
    ld bc, $9f00                                  ; $5b91: $01 $00 $9f
    inc bc                                        ; $5b94: $03
    adc d                                         ; $5b95: $8a
    ld c, c                                       ; $5b96: $49
    nop                                           ; $5b97: $00
    jr nz, jr_0b1_5b9a                            ; $5b98: $20 $00

jr_0b1_5b9a:
    nop                                           ; $5b9a: $00
    adc $39                                       ; $5b9b: $ce $39
    add hl, hl                                    ; $5b9d: $29
    dec h                                         ; $5b9e: $25
    sub h                                         ; $5b9f: $94

jr_0b1_5ba0:
    ld d, d                                       ; $5ba0: $52
    nop                                           ; $5ba1: $00
    nop                                           ; $5ba2: $00
    ld [hl], l                                    ; $5ba3: $75
    ld c, d                                       ; $5ba4: $4a
    ld c, d                                       ; $5ba5: $4a
    add hl, hl                                    ; $5ba6: $29
    ld a, $5b                                     ; $5ba7: $3e $5b
    ld hl, $5904                                  ; $5ba9: $21 $04 $59
    ld a, $e7                                     ; $5bac: $3e $e7
    inc e                                         ; $5bae: $1c
    cp $4e                                        ; $5baf: $fe $4e
    nop                                           ; $5bb1: $00
    inc b                                         ; $5bb2: $04
    ld [hl], e                                    ; $5bb3: $73
    ld c, [hl]                                    ; $5bb4: $4e
    and l                                         ; $5bb5: $a5
    inc d                                         ; $5bb6: $14
    ld [$2921], sp                                ; $5bb7: $08 $21 $29
    nop                                           ; $5bba: $00
    sbc a                                         ; $5bbb: $9f
    inc bc                                        ; $5bbc: $03
    ld hl, sp+$29                                 ; $5bbd: $f8 $29
    ld a, a                                       ; $5bbf: $7f
    ld e, e                                       ; $5bc0: $5b
    nop                                           ; $5bc1: $00
    inc e                                         ; $5bc2: $1c
    sub e                                         ; $5bc3: $93
    ld h, d                                       ; $5bc4: $62
    sbc a                                         ; $5bc5: $9f
    inc bc                                        ; $5bc6: $03
    ld c, b                                       ; $5bc7: $48
    ld b, c                                       ; $5bc8: $41
    ld bc, $1e0c                                  ; $5bc9: $01 $0c $1e
    ld c, a                                       ; $5bcc: $4f
    daa                                           ; $5bcd: $27
    dec [hl]                                      ; $5bce: $35
    rst $38                                       ; $5bcf: $ff
    ld a, e                                       ; $5bd0: $7b
    nop                                           ; $5bd1: $00
    nop                                           ; $5bd2: $00
    adc $39                                       ; $5bd3: $ce $39
    add hl, sp                                    ; $5bd5: $39
    ld h, a                                       ; $5bd6: $67
    add $18                                       ; $5bd7: $c6 $18
    nop                                           ; $5bd9: $00
    nop                                           ; $5bda: $00
    ld c, d                                       ; $5bdb: $4a
    dec l                                         ; $5bdc: $2d
    jr c, jr_0b1_5c11                             ; $5bdd: $38 $32

    ld h, e                                       ; $5bdf: $63
    inc c                                         ; $5be0: $0c
    nop                                           ; $5be1: $00
    nop                                           ; $5be2: $00
    dec sp                                        ; $5be3: $3b
    ld b, a                                       ; $5be4: $47
    ld c, e                                       ; $5be5: $4b
    add hl, de                                    ; $5be6: $19
    rst $38                                       ; $5be7: $ff
    ld l, e                                       ; $5be8: $6b
    nop                                           ; $5be9: $00
    nop                                           ; $5bea: $00
    ld d, l                                       ; $5beb: $55
    add hl, bc                                    ; $5bec: $09
    rst $18                                       ; $5bed: $df
    ld b, d                                       ; $5bee: $42
    add $1c                                       ; $5bef: $c6 $1c
    ld c, b                                       ; $5bf1: $48
    inc b                                         ; $5bf2: $04
    dec sp                                        ; $5bf3: $3b
    ld l, $df                                     ; $5bf4: $2e $df
    inc bc                                        ; $5bf6: $03
    ccf                                           ; $5bf7: $3f
    ld d, e                                       ; $5bf8: $53
    nop                                           ; $5bf9: $00
    inc e                                         ; $5bfa: $1c
    jr nc, jr_0b1_5c57                            ; $5bfb: $30 $5a

    rst $18                                       ; $5bfd: $df
    inc bc                                        ; $5bfe: $03
    ld e, c                                       ; $5bff: $59
    ld l, a                                       ; $5c00: $6f
    ld bc, $7b04                                  ; $5c01: $01 $04 $7b
    ld a, [hl-]                                   ; $5c04: $3a
    rst $18                                       ; $5c05: $df
    ld l, a                                       ; $5c06: $6f
    adc a                                         ; $5c07: $8f
    nop                                           ; $5c08: $00
    nop                                           ; $5c09: $00
    nop                                           ; $5c0a: $00
    add $18                                       ; $5c0b: $c6 $18
    adc l                                         ; $5c0d: $8d
    ld sp, $0421                                  ; $5c0e: $31 $21 $04

jr_0b1_5c11:
    nop                                           ; $5c11: $00
    nop                                           ; $5c12: $00
    rst $10                                       ; $5c13: $d7
    ld [hl], $ff                                  ; $5c14: $36 $ff
    ld h, a                                       ; $5c16: $67
    add hl, bc                                    ; $5c17: $09
    ld de, $0000                                  ; $5c18: $11 $00 $00
    rst $38                                       ; $5c1b: $ff
    ld l, e                                       ; $5c1c: $6b
    ld c, d                                       ; $5c1d: $4a
    ld hl, $2a11                                  ; $5c1e: $21 $11 $2a
    ld hl, $1f04                                  ; $5c21: $21 $04 $1f
    ld c, a                                       ; $5c24: $4f
    jr z, jr_0b1_5c50                             ; $5c25: $28 $29

    adc b                                         ; $5c27: $88
    ld [$0004], sp                                ; $5c28: $08 $04 $00
    ld e, a                                       ; $5c2b: $5f
    ld e, e                                       ; $5c2c: $5b
    rst $38                                       ; $5c2d: $ff
    inc bc                                        ; $5c2e: $03
    rrca                                          ; $5c2f: $0f
    dec c                                         ; $5c30: $0d
    nop                                           ; $5c31: $00
    inc e                                         ; $5c32: $1c
    rst $38                                       ; $5c33: $ff
    inc bc                                        ; $5c34: $03
    or h                                          ; $5c35: $b4
    ld h, d                                       ; $5c36: $62
    rst $38                                       ; $5c37: $ff
    ld a, a                                       ; $5c38: $7f
    inc bc                                        ; $5c39: $03
    nop                                           ; $5c3a: $00
    rst $38                                       ; $5c3b: $ff
    ld b, d                                       ; $5c3c: $42
    inc sp                                        ; $5c3d: $33
    dec c                                         ; $5c3e: $0d
    rst $18                                       ; $5c3f: $df
    ld l, a                                       ; $5c40: $6f
    nop                                           ; $5c41: $00
    nop                                           ; $5c42: $00
    inc sp                                        ; $5c43: $33
    ld [hl], $df                                  ; $5c44: $36 $df
    ld l, a                                       ; $5c46: $6f
    add hl, bc                                    ; $5c47: $09
    ld hl, $0000                                  ; $5c48: $21 $00 $00
    rst $08                                       ; $5c4b: $cf
    dec [hl]                                      ; $5c4c: $35
    sbc [hl]                                      ; $5c4d: $9e
    ld b, a                                       ; $5c4e: $47
    add hl, hl                                    ; $5c4f: $29

jr_0b1_5c50:
    inc b                                         ; $5c50: $04
    nop                                           ; $5c51: $00
    nop                                           ; $5c52: $00
    ld a, h                                       ; $5c53: $7c
    ld c, a                                       ; $5c54: $4f
    ld [hl], a                                    ; $5c55: $77
    db $10                                        ; $5c56: $10

jr_0b1_5c57:
    ld c, b                                       ; $5c57: $48
    inc b                                         ; $5c58: $04
    ld b, c                                       ; $5c59: $41
    ld [$420f], sp                                ; $5c5a: $08 $0f $42
    ret                                           ; $5c5d: $c9


    db $10                                        ; $5c5e: $10
    rra                                           ; $5c5f: $1f
    ld c, a                                       ; $5c60: $4f
    dec b                                         ; $5c61: $05
    nop                                           ; $5c62: $00
    rst $38                                       ; $5c63: $ff
    inc bc                                        ; $5c64: $03
    ld a, a                                       ; $5c65: $7f
    ld e, a                                       ; $5c66: $5f
    ld d, b                                       ; $5c67: $50
    dec e                                         ; $5c68: $1d
    nop                                           ; $5c69: $00
    inc e                                         ; $5c6a: $1c
    or h                                          ; $5c6b: $b4
    ld h, d                                       ; $5c6c: $62
    rst $38                                       ; $5c6d: $ff
    inc bc                                        ; $5c6e: $03
    cp l                                          ; $5c6f: $bd
    ld [hl], a                                    ; $5c70: $77
    ld bc, $f700                                  ; $5c71: $01 $00 $f7
    add hl, hl                                    ; $5c74: $29
    sbc a                                         ; $5c75: $9f
    ld h, a                                       ; $5c76: $67

Jump_0b1_5c77:
    nop                                           ; $5c77: $00
    jr nz, jr_0b1_5c7a                            ; $5c78: $20 $00

jr_0b1_5c7a:
    nop                                           ; $5c7a: $00
    add hl, hl                                    ; $5c7b: $29
    dec h                                         ; $5c7c: $25
    ld e, b                                       ; $5c7d: $58
    ld [hl-], a                                   ; $5c7e: $32
    adc $04                                       ; $5c7f: $ce $04
    ld bc, $9c00                                  ; $5c81: $01 $00 $9c
    db $10                                        ; $5c84: $10
    rst $38                                       ; $5c85: $ff
    ld [hl], a                                    ; $5c86: $77
    ld c, a                                       ; $5c87: $4f
    ld [$0442], sp                                ; $5c88: $08 $42 $04
    ld d, h                                       ; $5c8b: $54
    ld [$3e37], sp                                ; $5c8c: $08 $37 $3e
    cp h                                          ; $5c8f: $bc
    inc d                                         ; $5c90: $14
    inc hl                                        ; $5c91: $23
    inc b                                         ; $5c92: $04
    inc d                                         ; $5c93: $14
    ld [hl], $7f                                  ; $5c94: $36 $7f
    ld e, e                                       ; $5c96: $5b
    jr z, jr_0b1_5cc2                             ; $5c97: $28 $29

    inc hl                                        ; $5c99: $23
    nop                                           ; $5c9a: $00
    add hl, sp                                    ; $5c9b: $39
    ld [hl], $bf                                  ; $5c9c: $36 $bf
    ld l, e                                       ; $5c9e: $6b
    call c, Call_000_044a                         ; $5c9f: $dc $4a $04
    nop                                           ; $5ca2: $00
    ld e, c                                       ; $5ca3: $59
    ld l, a                                       ; $5ca4: $6f
    nop                                           ; $5ca5: $00
    inc e                                         ; $5ca6: $1c
    rst $38                                       ; $5ca7: $ff
    ld a, a                                       ; $5ca8: $7f
    ld [bc], a                                    ; $5ca9: $02
    inc c                                         ; $5caa: $0c
    rst $38                                       ; $5cab: $ff
    ld c, d                                       ; $5cac: $4a
    halt                                          ; $5cad: $76
    ld de, $6fdf                                  ; $5cae: $11 $df $6f
    nop                                           ; $5cb1: $00
    nop                                           ; $5cb2: $00
    sbc c                                         ; $5cb3: $99
    ld b, d                                       ; $5cb4: $42
    ld a, [hl+]                                   ; $5cb5: $2a
    dec h                                         ; $5cb6: $25
    rst $38                                       ; $5cb7: $ff
    ld [hl], e                                    ; $5cb8: $73
    and a                                         ; $5cb9: $a7
    db $10                                        ; $5cba: $10
    db $fc                                        ; $5cbb: $fc
    add hl, sp                                    ; $5cbc: $39
    inc e                                         ; $5cbd: $1c
    ld d, a                                       ; $5cbe: $57
    sbc b                                         ; $5cbf: $98
    stop                                          ; $5cc0: $10 $00

jr_0b1_5cc2:
    nop                                           ; $5cc2: $00
    dec sp                                        ; $5cc3: $3b
    ld b, d                                       ; $5cc4: $42
    cp a                                          ; $5cc5: $bf
    ld h, a                                       ; $5cc6: $67
    dec bc                                        ; $5cc7: $0b
    ld hl, $0023                                  ; $5cc8: $21 $23 $00
    call c, Call_000_2b46                         ; $5ccb: $dc $46 $2b
    ld hl, $67df                                  ; $5cce: $21 $df $67
    nop                                           ; $5cd1: $00

jr_0b1_5cd2:
    nop                                           ; $5cd2: $00
    jr jr_0b1_5d07                                ; $5cd3: $18 $32

    sbc a                                         ; $5cd5: $9f
    ld h, e                                       ; $5cd6: $63
    xor e                                         ; $5cd7: $ab
    ld [$2000], sp                                ; $5cd8: $08 $00 $20
    sbc l                                         ; $5cdb: $9d
    ld a, [hl-]                                   ; $5cdc: $3a
    cp a                                          ; $5cdd: $bf
    ld h, a                                       ; $5cde: $67
    dec b                                         ; $5cdf: $05
    nop                                           ; $5ce0: $00
    ld bc, $3b08                                  ; $5ce1: $01 $08 $3b
    ld l, $ac                                     ; $5ce4: $2e $ac
    ld [$5f9f], sp                                ; $5ce6: $08 $9f $5f
    ld [hl+], a                                   ; $5ce9: $22
    inc b                                         ; $5cea: $04
    dec e                                         ; $5ceb: $1d
    ld h, $0a                                     ; $5cec: $26 $0a
    dec e                                         ; $5cee: $1d
    sbc a                                         ; $5cef: $9f
    ld h, e                                       ; $5cf0: $63
    nop                                           ; $5cf1: $00
    nop                                           ; $5cf2: $00
    ld d, a                                       ; $5cf3: $57
    ld c, d                                       ; $5cf4: $4a
    rst $38                                       ; $5cf5: $ff
    ld l, a                                       ; $5cf6: $6f
    add sp, $14                                   ; $5cf7: $e8 $14
    ld b, d                                       ; $5cf9: $42
    inc b                                         ; $5cfa: $04
    ld a, h                                       ; $5cfb: $7c
    ld e, e                                       ; $5cfc: $5b
    rst $20                                       ; $5cfd: $e7
    inc d                                         ; $5cfe: $14
    call Call_000_0031                            ; $5cff: $cd $31 $00
    nop                                           ; $5d02: $00
    ld d, l                                       ; $5d03: $55
    ld de, $08ab                                  ; $5d04: $11 $ab $08

jr_0b1_5d07:
    inc a                                         ; $5d07: $3c
    ld l, $23                                     ; $5d08: $2e $23
    nop                                           ; $5d0a: $00
    ld a, [hl-]                                   ; $5d0b: $3a
    ld [hl-], a                                   ; $5d0c: $32
    ld e, a                                       ; $5d0d: $5f
    ld d, a                                       ; $5d0e: $57
    rst $18                                       ; $5d0f: $df
    ld [hl], e                                    ; $5d10: $73
    nop                                           ; $5d11: $00
    jr nz, jr_0b1_5cd2                            ; $5d12: $20 $be

    ld b, d                                       ; $5d14: $42
    dec h                                         ; $5d15: $25
    nop                                           ; $5d16: $00
    adc e                                         ; $5d17: $8b
    nop                                           ; $5d18: $00
    inc bc                                        ; $5d19: $03
    nop                                           ; $5d1a: $00
    jr c, jr_0b1_5d4f                             ; $5d1b: $38 $32

    cp a                                          ; $5d1d: $bf
    ld h, a                                       ; $5d1e: $67
    nop                                           ; $5d1f: $00
    jr nz, jr_0b1_5d22                            ; $5d20: $20 $00

jr_0b1_5d22:
    nop                                           ; $5d22: $00
    ld c, $15                                     ; $5d23: $0e $15
    rst $18                                       ; $5d25: $df
    ld b, [hl]                                    ; $5d26: $46
    ld h, l                                       ; $5d27: $65
    ld [$0021], sp                                ; $5d28: $08 $21 $00
    db $10                                        ; $5d2b: $10
    ld b, d                                       ; $5d2c: $42

jr_0b1_5d2d:
    sbc $6f                                       ; $5d2d: $de $6f
    ld c, d                                       ; $5d2f: $4a
    add hl, hl                                    ; $5d30: $29
    ld hl, $ef04                                  ; $5d31: $21 $04 $ef
    ld b, c                                       ; $5d34: $41
    sbc h                                         ; $5d35: $9c
    ld [hl], e                                    ; $5d36: $73
    ld c, e                                       ; $5d37: $4b
    add hl, hl                                    ; $5d38: $29
    ld b, e                                       ; $5d39: $43
    ld [$3a14], sp                                ; $5d3a: $08 $14 $3a
    inc [hl]                                      ; $5d3d: $34
    add hl, bc                                    ; $5d3e: $09
    sbc a                                         ; $5d3f: $9f
    ld h, e                                       ; $5d40: $63
    nop                                           ; $5d41: $00
    nop                                           ; $5d42: $00
    ld sp, hl                                     ; $5d43: $f9
    add hl, hl                                    ; $5d44: $29
    cp a                                          ; $5d45: $bf
    ld h, a                                       ; $5d46: $67
    jr nc, jr_0b1_5d5e                            ; $5d47: $30 $15

    nop                                           ; $5d49: $00
    jr nz, jr_0b1_5d51                            ; $5d4a: $20 $05

    nop                                           ; $5d4c: $00
    cp a                                          ; $5d4d: $bf
    ld h, a                                       ; $5d4e: $67

jr_0b1_5d4f:
    jr nc, @+$17                                  ; $5d4f: $30 $15

jr_0b1_5d51:
    nop                                           ; $5d51: $00
    jr jr_0b1_5d2d                                ; $5d52: $18 $d9

    dec e                                         ; $5d54: $1d
    ld a, a                                       ; $5d55: $7f
    ld e, e                                       ; $5d56: $5b
    ld c, c                                       ; $5d57: $49
    nop                                           ; $5d58: $00
    nop                                           ; $5d59: $00
    nop                                           ; $5d5a: $00
    cp a                                          ; $5d5b: $bf
    ld a, [hl-]                                   ; $5d5c: $3a
    cp a                                          ; $5d5d: $bf

jr_0b1_5d5e:
    ld h, a                                       ; $5d5e: $67
    ld h, [hl]                                    ; $5d5f: $66
    inc b                                         ; $5d60: $04
    ld b, d                                       ; $5d61: $42
    ld [$4210], sp                                ; $5d62: $08 $10 $42
    ld [$b521], sp                                ; $5d65: $08 $21 $b5
    ld d, [hl]                                    ; $5d68: $56

jr_0b1_5d69:
    nop                                           ; $5d69: $00
    nop                                           ; $5d6a: $00
    xor l                                         ; $5d6b: $ad
    dec [hl]                                      ; $5d6c: $35
    jr @+$65                                      ; $5d6d: $18 $63

    and l                                         ; $5d6f: $a5
    inc d                                         ; $5d70: $14
    nop                                           ; $5d71: $00
    nop                                           ; $5d72: $00
    cp b                                          ; $5d73: $b8
    dec e                                         ; $5d74: $1d
    rra                                           ; $5d75: $1f
    ld c, e                                       ; $5d76: $4b
    adc b                                         ; $5d77: $88
    ld [$0003], sp                                ; $5d78: $08 $03 $00
    rst $38                                       ; $5d7b: $ff
    ld c, d                                       ; $5d7c: $4a
    ld l, e                                       ; $5d7d: $6b
    dec a                                         ; $5d7e: $3d
    rst $18                                       ; $5d7f: $df
    ld l, a                                       ; $5d80: $6f
    nop                                           ; $5d81: $00
    jr nz, jr_0b1_5d69                            ; $5d82: $20 $e5

    inc a                                         ; $5d84: $3c
    ld c, b                                       ; $5d85: $48
    ld b, l                                       ; $5d86: $45
    rst $18                                       ; $5d87: $df
    ld l, a                                       ; $5d88: $6f
    ld h, $00                                     ; $5d89: $26 $00
    ld [hl], e                                    ; $5d8b: $73
    add hl, de                                    ; $5d8c: $19
    cp a                                          ; $5d8d: $bf
    ld e, e                                       ; $5d8e: $5b
    nop                                           ; $5d8f: $00
    jr nz, jr_0b1_5db3                            ; $5d90: $20 $21

    inc b                                         ; $5d92: $04
    ld e, l                                       ; $5d93: $5d
    ld l, $ed                                     ; $5d94: $2e $ed
    inc c                                         ; $5d96: $0c
    sbc a                                         ; $5d97: $9f
    ld h, e                                       ; $5d98: $63
    ld hl, $9404                                  ; $5d99: $21 $04 $94
    ld d, d                                       ; $5d9c: $52
    adc h                                         ; $5d9d: $8c
    ld sp, $6b5a                                  ; $5d9e: $31 $5a $6b

jr_0b1_5da1:
    nop                                           ; $5da1: $00
    nop                                           ; $5da2: $00
    ld [hl], e                                    ; $5da3: $73
    ld c, [hl]                                    ; $5da4: $4e
    sbc h                                         ; $5da5: $9c
    ld [hl], e                                    ; $5da6: $73
    ld [$4221], sp                                ; $5da7: $08 $21 $42
    ld [$3e58], sp                                ; $5daa: $08 $58 $3e
    rst $38                                       ; $5dad: $ff
    ld l, a                                       ; $5dae: $6f
    ld l, e                                       ; $5daf: $6b
    dec l                                         ; $5db0: $2d
    ld [bc], a                                    ; $5db1: $02
    nop                                           ; $5db2: $00

jr_0b1_5db3:
    ld c, b                                       ; $5db3: $48
    ld b, l                                       ; $5db4: $45
    dec sp                                        ; $5db5: $3b
    ld l, $6a                                     ; $5db6: $2e $6a
    nop                                           ; $5db8: $00
    nop                                           ; $5db9: $00
    jr nz, jr_0b1_5da1                            ; $5dba: $20 $e5

    inc a                                         ; $5dbc: $3c
    dec sp                                        ; $5dbd: $3b
    ld l, $6a                                     ; $5dbe: $2e $6a
    nop                                           ; $5dc0: $00
    nop                                           ; $5dc1: $00
    jr nz, @-$5f                                  ; $5dc2: $20 $9f

    ld e, a                                       ; $5dc4: $5f
    dec b                                         ; $5dc5: $05
    nop                                           ; $5dc6: $00
    cp a                                          ; $5dc7: $bf
    ld h, a                                       ; $5dc8: $67
    nop                                           ; $5dc9: $00
    nop                                           ; $5dca: $00
    sbc $46                                       ; $5dcb: $de $46
    ld l, h                                       ; $5dcd: $6c
    nop                                           ; $5dce: $00
    ld c, c                                       ; $5dcf: $49
    add hl, hl                                    ; $5dd0: $29
    ld hl, $b504                                  ; $5dd1: $21 $04 $b5
    ld d, [hl]                                    ; $5dd4: $56
    ld [$7b21], sp                                ; $5dd5: $08 $21 $7b
    ld l, a                                       ; $5dd8: $6f
    nop                                           ; $5dd9: $00
    nop                                           ; $5dda: $00
    or l                                          ; $5ddb: $b5
    ld d, [hl]                                    ; $5ddc: $56
    ld [$bd21], sp                                ; $5ddd: $08 $21 $bd
    ld [hl], a                                    ; $5de0: $77
    ld [bc], a                                    ; $5de1: $02
    nop                                           ; $5de2: $00
    sbc [hl]                                      ; $5de3: $9e
    ld a, [hl-]                                   ; $5de4: $3a
    ld c, l                                       ; $5de5: $4d
    ld hl, $5f7f                                  ; $5de6: $21 $7f $5f
    inc h                                         ; $5de9: $24
    nop                                           ; $5dea: $00
    db $10                                        ; $5deb: $10
    ld h, d                                       ; $5dec: $62
    ld a, $53                                     ; $5ded: $3e $53
    push hl                                       ; $5def: $e5
    inc a                                         ; $5df0: $3c
    nop                                           ; $5df1: $00
    jr nz, jr_0b1_5e04                            ; $5df2: $20 $10

    ld h, d                                       ; $5df4: $62
    ld a, $53                                     ; $5df5: $3e $53
    push hl                                       ; $5df7: $e5
    inc a                                         ; $5df8: $3c
    nop                                           ; $5df9: $00
    jr nz, jr_0b1_5e79                            ; $5dfa: $20 $7d

    ld [hl-], a                                   ; $5dfc: $32
    dec b                                         ; $5dfd: $05
    nop                                           ; $5dfe: $00
    ld a, e                                       ; $5dff: $7b
    ld l, a                                       ; $5e00: $6f
    ld bc, $9c00                                  ; $5e01: $01 $00 $9c

jr_0b1_5e04:
    ld a, e                                       ; $5e04: $7b
    rst $20                                       ; $5e05: $e7
    inc e                                         ; $5e06: $1c

jr_0b1_5e07:
    xor [hl]                                      ; $5e07: $ae
    nop                                           ; $5e08: $00
    and l                                         ; $5e09: $a5
    inc d                                         ; $5e0a: $14
    ld d, d                                       ; $5e0b: $52
    ld c, d                                       ; $5e0c: $4a
    add hl, sp                                    ; $5e0d: $39
    ld h, a                                       ; $5e0e: $67
    xor l                                         ; $5e0f: $ad
    dec [hl]                                      ; $5e10: $35
    nop                                           ; $5e11: $00
    nop                                           ; $5e12: $00
    ld d, d                                       ; $5e13: $52
    ld c, d                                       ; $5e14: $4a
    rst $00                                       ; $5e15: $c7
    jr @+$5d                                      ; $5e16: $18 $5b

    ld h, a                                       ; $5e18: $67
    inc b                                         ; $5e19: $04
    nop                                           ; $5e1a: $00
    ld [$1021], sp                                ; $5e1b: $08 $21 $10
    ld b, [hl]                                    ; $5e1e: $46
    add [hl]                                      ; $5e1f: $86
    inc c                                         ; $5e20: $0c
    inc bc                                        ; $5e21: $03

jr_0b1_5e22:
    nop                                           ; $5e22: $00
    jr jr_0b1_5e9c                                ; $5e23: $18 $77

    ld sp, $0011                                  ; $5e25: $31 $11 $00
    jr nz, jr_0b1_5e2a                            ; $5e28: $20 $00

jr_0b1_5e2a:
    jr nz, jr_0b1_5e44                            ; $5e2a: $20 $18

    ld [hl], a                                    ; $5e2c: $77
    ld sp, $0011                                  ; $5e2d: $31 $11 $00
    jr nz, jr_0b1_5e32                            ; $5e30: $20 $00

jr_0b1_5e32:
    jr nz, jr_0b1_5e86                            ; $5e32: $20 $52

    ld c, d                                       ; $5e34: $4a
    add hl, sp                                    ; $5e35: $39
    ld h, a                                       ; $5e36: $67
    xor l                                         ; $5e37: $ad
    dec [hl]                                      ; $5e38: $35
    nop                                           ; $5e39: $00
    nop                                           ; $5e3a: $00
    ld [hl-], a                                   ; $5e3b: $32
    ld b, [hl]                                    ; $5e3c: $46
    sbc h                                         ; $5e3d: $9c
    ld [hl], a                                    ; $5e3e: $77
    nop                                           ; $5e3f: $00
    jr nz, jr_0b1_5e42                            ; $5e40: $20 $00

jr_0b1_5e42:
    nop                                           ; $5e42: $00
    or [hl]                                       ; $5e43: $b6

jr_0b1_5e44:
    ld d, d                                       ; $5e44: $52
    ld a, [bc]                                    ; $5e45: $0a
    ld hl, $6f9d                                  ; $5e46: $21 $9d $6f
    nop                                           ; $5e49: $00
    nop                                           ; $5e4a: $00
    rrca                                          ; $5e4b: $0f
    ld h, d                                       ; $5e4c: $62
    sbc h                                         ; $5e4d: $9c
    ld a, e                                       ; $5e4e: $7b
    or l                                          ; $5e4f: $b5

jr_0b1_5e50:
    ld l, [hl]                                    ; $5e50: $6e
    nop                                           ; $5e51: $00
    nop                                           ; $5e52: $00
    push hl                                       ; $5e53: $e5
    inc a                                         ; $5e54: $3c
    rrca                                          ; $5e55: $0f
    ld e, d                                       ; $5e56: $5a
    ld c, c                                       ; $5e57: $49

jr_0b1_5e58:
    ld c, c                                       ; $5e58: $49
    nop                                           ; $5e59: $00
    nop                                           ; $5e5a: $00

jr_0b1_5e5b:
    rst $30                                       ; $5e5b: $f7
    ld [hl], d                                    ; $5e5c: $72
    sbc $7b                                       ; $5e5d: $de $7b
    nop                                           ; $5e5f: $00

jr_0b1_5e60:
    jr nz, jr_0b1_5e62                            ; $5e60: $20 $00

jr_0b1_5e62:
    jr nz, jr_0b1_5e5b                            ; $5e62: $20 $f7

    ld [hl], d                                    ; $5e64: $72
    sbc $7b                                       ; $5e65: $de $7b
    nop                                           ; $5e67: $00

jr_0b1_5e68:
    jr nz, jr_0b1_5e6a                            ; $5e68: $20 $00

jr_0b1_5e6a:
    jr nz, jr_0b1_5e22                            ; $5e6a: $20 $b6

    ld d, d                                       ; $5e6c: $52
    ld a, [bc]                                    ; $5e6d: $0a
    ld hl, $6f9d                                  ; $5e6e: $21 $9d $6f
    nop                                           ; $5e71: $00
    jr nz, jr_0b1_5e07                            ; $5e72: $20 $93

    ld h, d                                       ; $5e74: $62
    sbc h                                         ; $5e75: $9c
    ld [hl], a                                    ; $5e76: $77
    ld l, c                                       ; $5e77: $69
    ld b, l                                       ; $5e78: $45

jr_0b1_5e79:
    push hl                                       ; $5e79: $e5
    inc a                                         ; $5e7a: $3c
    ld sp, $f766                                  ; $5e7b: $31 $66 $f7
    ld [hl], d                                    ; $5e7e: $72
    ld c, c                                       ; $5e7f: $49
    ld c, l                                       ; $5e80: $4d
    daa                                           ; $5e81: $27
    ld b, l                                       ; $5e82: $45
    sub l                                         ; $5e83: $95
    ld [hl], d                                    ; $5e84: $72
    sbc h                                         ; $5e85: $9c

jr_0b1_5e86:
    ld a, e                                       ; $5e86: $7b
    adc $5d                                       ; $5e87: $ce $5d
    ld l, d                                       ; $5e89: $6a
    ld c, l                                       ; $5e8a: $4d
    sub h                                         ; $5e8b: $94
    ld l, [hl]                                    ; $5e8c: $6e
    jr nc, jr_0b1_5eed                            ; $5e8d: $30 $5e

    ld e, d                                       ; $5e8f: $5a
    ld [hl], e                                    ; $5e90: $73
    nop                                           ; $5e91: $00
    jr nz, @+$75                                  ; $5e92: $20 $73

    ld e, [hl]                                    ; $5e94: $5e
    cp h                                          ; $5e95: $bc
    ld a, e                                       ; $5e96: $7b
    push hl                                       ; $5e97: $e5
    inc a                                         ; $5e98: $3c
    nop                                           ; $5e99: $00
    jr nz, @+$75                                  ; $5e9a: $20 $73

jr_0b1_5e9c:
    ld e, [hl]                                    ; $5e9c: $5e
    cp h                                          ; $5e9d: $bc
    ld a, e                                       ; $5e9e: $7b
    push hl                                       ; $5e9f: $e5
    inc a                                         ; $5ea0: $3c
    nop                                           ; $5ea1: $00
    jr nz, jr_0b1_5ea4                            ; $5ea2: $20 $00

jr_0b1_5ea4:
    jr nz, jr_0b1_5ebe                            ; $5ea4: $20 $18

    ld [hl], a                                    ; $5ea6: $77
    ld c, b                                       ; $5ea7: $48
    ld b, l                                       ; $5ea8: $45
    nop                                           ; $5ea9: $00
    jr nz, jr_0b1_5eac                            ; $5eaa: $20 $00

jr_0b1_5eac:
    jr nz, jr_0b1_5ec6                            ; $5eac: $20 $18

    ld [hl], a                                    ; $5eae: $77
    ld c, b                                       ; $5eaf: $48
    ld b, l                                       ; $5eb0: $45
    inc bc                                        ; $5eb1: $03
    inc c                                         ; $5eb2: $0c
    ld a, [de]                                    ; $5eb3: $1a
    ld h, h                                       ; $5eb4: $64
    ld a, a                                       ; $5eb5: $7f
    ld a, [hl]                                    ; $5eb6: $7e
    nop                                           ; $5eb7: $00
    jr nz, jr_0b1_5eba                            ; $5eb8: $20 $00

jr_0b1_5eba:
    jr nz, jr_0b1_5e50                            ; $5eba: $20 $94

    ld [hl], d                                    ; $5ebc: $72
    sbc h                                         ; $5ebd: $9c

jr_0b1_5ebe:
    ld a, e                                       ; $5ebe: $7b
    cp l                                          ; $5ebf: $bd
    ld a, e                                       ; $5ec0: $7b
    nop                                           ; $5ec1: $00
    jr nz, jr_0b1_5e58                            ; $5ec2: $20 $94

    ld [hl], d                                    ; $5ec4: $72
    sbc h                                         ; $5ec5: $9c

jr_0b1_5ec6:
    ld a, e                                       ; $5ec6: $7b
    cp l                                          ; $5ec7: $bd
    ld a, e                                       ; $5ec8: $7b
    nop                                           ; $5ec9: $00
    jr nz, jr_0b1_5e60                            ; $5eca: $20 $94

    ld [hl], d                                    ; $5ecc: $72
    sbc h                                         ; $5ecd: $9c
    ld a, e                                       ; $5ece: $7b
    cp l                                          ; $5ecf: $bd
    ld a, e                                       ; $5ed0: $7b
    nop                                           ; $5ed1: $00
    jr nz, jr_0b1_5e68                            ; $5ed2: $20 $94

    ld [hl], d                                    ; $5ed4: $72
    sbc h                                         ; $5ed5: $9c
    ld a, e                                       ; $5ed6: $7b
    cp l                                          ; $5ed7: $bd
    ld a, e                                       ; $5ed8: $7b
    nop                                           ; $5ed9: $00
    jr nz, jr_0b1_5ef6                            ; $5eda: $20 $1a

    ld h, h                                       ; $5edc: $64
    ld a, a                                       ; $5edd: $7f
    ld a, [hl]                                    ; $5ede: $7e
    nop                                           ; $5edf: $00
    jr nz, jr_0b1_5ee2                            ; $5ee0: $20 $00

jr_0b1_5ee2:
    jr nz, @+$1c                                  ; $5ee2: $20 $1a

    ld h, h                                       ; $5ee4: $64
    ld a, a                                       ; $5ee5: $7f
    ld a, [hl]                                    ; $5ee6: $7e
    nop                                           ; $5ee7: $00
    jr nz, jr_0b1_5eea                            ; $5ee8: $20 $00

jr_0b1_5eea:
    nop                                           ; $5eea: $00
    ld a, [hl-]                                   ; $5eeb: $3a
    ld h, h                                       ; $5eec: $64

jr_0b1_5eed:
    ld e, $7a                                     ; $5eed: $1e $7a
    inc bc                                        ; $5eef: $03
    inc d                                         ; $5ef0: $14
    nop                                           ; $5ef1: $00
    nop                                           ; $5ef2: $00
    ld l, d                                       ; $5ef3: $6a
    ld d, c                                       ; $5ef4: $51
    sub h                                         ; $5ef5: $94

jr_0b1_5ef6:
    ld [hl], d                                    ; $5ef6: $72
    nop                                           ; $5ef7: $00
    jr nz, jr_0b1_5efa                            ; $5ef8: $20 $00

jr_0b1_5efa:
    jr nz, jr_0b1_5f02                            ; $5efa: $20 $06

    dec a                                         ; $5efc: $3d
    call $0059                                    ; $5efd: $cd $59 $00
    jr nz, jr_0b1_5f02                            ; $5f00: $20 $00

jr_0b1_5f02:
    jr nz, jr_0b1_5f0a                            ; $5f02: $20 $06

    dec a                                         ; $5f04: $3d
    call $0059                                    ; $5f05: $cd $59 $00
    jr nz, jr_0b1_5f0a                            ; $5f08: $20 $00

jr_0b1_5f0a:
    jr nz, jr_0b1_5f12                            ; $5f0a: $20 $06

    dec a                                         ; $5f0c: $3d
    call $0059                                    ; $5f0d: $cd $59 $00
    jr nz, jr_0b1_5f12                            ; $5f10: $20 $00

jr_0b1_5f12:
    jr nz, @+$3c                                  ; $5f12: $20 $3a

    ld h, h                                       ; $5f14: $64
    ld e, $7a                                     ; $5f15: $1e $7a
    inc bc                                        ; $5f17: $03
    inc d                                         ; $5f18: $14
    nop                                           ; $5f19: $00
    jr nz, @+$1c                                  ; $5f1a: $20 $1a

    ld h, h                                       ; $5f1c: $64
    ld e, $7a                                     ; $5f1d: $1e $7a
    inc bc                                        ; $5f1f: $03
    inc d                                         ; $5f20: $14
    dec b                                         ; $5f21: $05
    inc d                                         ; $5f22: $14
    ld a, d                                       ; $5f23: $7a
    ld h, h                                       ; $5f24: $64
    cp $79                                        ; $5f25: $fe $79
    db $10                                        ; $5f27: $10
    inc a                                         ; $5f28: $3c
    ld [bc], a                                    ; $5f29: $02
    inc b                                         ; $5f2a: $04
    daa                                           ; $5f2b: $27
    ld b, c                                       ; $5f2c: $41
    adc l                                         ; $5f2d: $8d
    cpl                                           ; $5f2e: $2f
    ld [de], a                                    ; $5f2f: $12
    ld bc, $2000                                  ; $5f30: $01 $00 $20
    daa                                           ; $5f33: $27
    ld b, c                                       ; $5f34: $41
    call z, $934d                                 ; $5f35: $cc $4d $93
    ld e, [hl]                                    ; $5f38: $5e
    nop                                           ; $5f39: $00
    jr nz, jr_0b1_5f63                            ; $5f3a: $20 $27

    ld b, c                                       ; $5f3c: $41
    call z, $934d                                 ; $5f3d: $cc $4d $93
    ld e, [hl]                                    ; $5f40: $5e
    nop                                           ; $5f41: $00
    jr nz, jr_0b1_5f6b                            ; $5f42: $20 $27

    ld b, c                                       ; $5f44: $41
    call z, $934d                                 ; $5f45: $cc $4d $93
    ld e, [hl]                                    ; $5f48: $5e
    nop                                           ; $5f49: $00
    jr nz, @+$7c                                  ; $5f4a: $20 $7a

    ld h, h                                       ; $5f4c: $64
    cp $79                                        ; $5f4d: $fe $79
    db $10                                        ; $5f4f: $10
    inc a                                         ; $5f50: $3c
    nop                                           ; $5f51: $00
    jr nz, @+$1c                                  ; $5f52: $20 $1a

    ld h, h                                       ; $5f54: $64
    cp $79                                        ; $5f55: $fe $79
    db $10                                        ; $5f57: $10
    inc a                                         ; $5f58: $3c
    dec c                                         ; $5f59: $0d
    jr nc, @+$19                                  ; $5f5a: $30 $17

    ld e, b                                       ; $5f5c: $58
    ld a, l                                       ; $5f5d: $7d
    ld [hl], c                                    ; $5f5e: $71
    ld [de], a                                    ; $5f5f: $12
    ld bc, $1c07                                  ; $5f60: $01 $07 $1c

jr_0b1_5f63:
    adc l                                         ; $5f63: $8d
    cpl                                           ; $5f64: $2f
    ld [de], a                                    ; $5f65: $12
    ld bc, $03bf                                  ; $5f66: $01 $bf $03
    nop                                           ; $5f69: $00
    db $10                                        ; $5f6a: $10

jr_0b1_5f6b:
    adc l                                         ; $5f6b: $8d
    cpl                                           ; $5f6c: $2f
    jr c, jr_0b1_5fda                             ; $5f6d: $38 $6b

    ld d, c                                       ; $5f6f: $51
    ld e, d                                       ; $5f70: $5a
    nop                                           ; $5f71: $00
    jr nz, @-$71                                  ; $5f72: $20 $8d

    cpl                                           ; $5f74: $2f
    jr c, jr_0b1_5fe2                             ; $5f75: $38 $6b

    ld d, c                                       ; $5f77: $51
    ld e, d                                       ; $5f78: $5a
    nop                                           ; $5f79: $00
    jr nz, @-$71                                  ; $5f7a: $20 $8d

    cpl                                           ; $5f7c: $2f
    jr c, jr_0b1_5fea                             ; $5f7d: $38 $6b

    ld d, c                                       ; $5f7f: $51
    ld e, d                                       ; $5f80: $5a
    nop                                           ; $5f81: $00
    jr nz, jr_0b1_5f9b                            ; $5f82: $20 $17

    ld e, b                                       ; $5f84: $58
    ld a, l                                       ; $5f85: $7d
    ld [hl], c                                    ; $5f86: $71
    ld [de], a                                    ; $5f87: $12
    ld bc, $1800                                  ; $5f88: $01 $00 $18
    ld [de], a                                    ; $5f8b: $12
    ld bc, $039d                                  ; $5f8c: $01 $9d $03
    ld a, [de]                                    ; $5f8f: $1a
    ld h, h                                       ; $5f90: $64
    ld [de], a                                    ; $5f91: $12
    ld b, h                                       ; $5f92: $44
    cp a                                          ; $5f93: $bf
    ld bc, $0112                                  ; $5f94: $01 $12 $01
    rst $38                                       ; $5f97: $ff
    inc bc                                        ; $5f98: $03
    xor [hl]                                      ; $5f99: $ae
    inc b                                         ; $5f9a: $04

jr_0b1_5f9b:
    rst $38                                       ; $5f9b: $ff
    ld bc, $2f8d                                  ; $5f9c: $01 $8d $2f
    cp a                                          ; $5f9f: $bf
    inc bc                                        ; $5fa0: $03
    nop                                           ; $5fa1: $00
    nop                                           ; $5fa2: $00

jr_0b1_5fa3:
    adc l                                         ; $5fa3: $8d
    cpl                                           ; $5fa4: $2f
    rla                                           ; $5fa5: $17
    ld l, e                                       ; $5fa6: $6b
    db $dd                                        ; $5fa7: $dd
    ld a, e                                       ; $5fa8: $7b
    nop                                           ; $5fa9: $00
    jr nz, jr_0b1_5fa3                            ; $5faa: $20 $f7

    ld l, d                                       ; $5fac: $6a
    sbc $7f                                       ; $5fad: $de $7f
    db $dd                                        ; $5faf: $dd

jr_0b1_5fb0:
    ld a, e                                       ; $5fb0: $7b
    nop                                           ; $5fb1: $00
    jr nz, @-$07                                  ; $5fb2: $20 $f7

    ld l, d                                       ; $5fb4: $6a
    sbc $7f                                       ; $5fb5: $de $7f
    db $dd                                        ; $5fb7: $dd
    ld a, e                                       ; $5fb8: $7b
    nop                                           ; $5fb9: $00

jr_0b1_5fba:
    jr nz, @-$3f                                  ; $5fba: $20 $bf

    ld bc, $0112                                  ; $5fbc: $01 $12 $01
    rst $38                                       ; $5fbf: $ff
    inc bc                                        ; $5fc0: $03
    nop                                           ; $5fc1: $00

jr_0b1_5fc2:
    inc d                                         ; $5fc2: $14
    ld [de], a                                    ; $5fc3: $12
    ld bc, $035c                                  ; $5fc4: $01 $5c $03
    rst $18                                       ; $5fc7: $df
    ld bc, $1404                                  ; $5fc8: $01 $04 $14
    ccf                                           ; $5fcb: $3f
    inc bc                                        ; $5fcc: $03
    rst $38                                       ; $5fcd: $ff
    ld a, a                                       ; $5fce: $7f
    ld [de], a                                    ; $5fcf: $12
    ld bc, $00d0                                  ; $5fd0: $01 $d0 $00
    adc l                                         ; $5fd3: $8d
    cpl                                           ; $5fd4: $2f
    rst $38                                       ; $5fd5: $ff
    ld bc, $03ff                                  ; $5fd6: $01 $ff $03
    nop                                           ; $5fd9: $00

jr_0b1_5fda:
    nop                                           ; $5fda: $00
    adc l                                         ; $5fdb: $8d
    cpl                                           ; $5fdc: $2f
    or $6a                                        ; $5fdd: $f6 $6a
    rst $38                                       ; $5fdf: $ff
    ld a, a                                       ; $5fe0: $7f
    nop                                           ; $5fe1: $00

jr_0b1_5fe2:
    jr nz, jr_0b1_5fba                            ; $5fe2: $20 $d6

    ld h, [hl]                                    ; $5fe4: $66
    sbc $7b                                       ; $5fe5: $de $7b
    ld e, d                                       ; $5fe7: $5a
    ld [hl], e                                    ; $5fe8: $73
    nop                                           ; $5fe9: $00

jr_0b1_5fea:
    jr nz, jr_0b1_5fc2                            ; $5fea: $20 $d6

    ld h, [hl]                                    ; $5fec: $66
    sbc $7b                                       ; $5fed: $de $7b
    ld e, d                                       ; $5fef: $5a
    ld [hl], e                                    ; $5ff0: $73
    nop                                           ; $5ff1: $00
    jr nz, jr_0b1_6033                            ; $5ff2: $20 $3f

    inc bc                                        ; $5ff4: $03
    rst $38                                       ; $5ff5: $ff
    ld a, a                                       ; $5ff6: $7f
    ld [de], a                                    ; $5ff7: $12
    ld bc, $1800                                  ; $5ff8: $01 $00 $18
    ld [de], a                                    ; $5ffb: $12
    ld bc, $5a51                                  ; $5ffc: $01 $51 $5a
    db $dd                                        ; $5fff: $dd
    ld [bc], a                                    ; $6000: $02
    inc bc                                        ; $6001: $03
    inc e                                         ; $6002: $1c
    inc de                                        ; $6003: $13
    ld bc, $03ff                                  ; $6004: $01 $ff $03
    ld b, $68                                     ; $6007: $06 $68
    ld [bc], a                                    ; $6009: $02
    ld [$2f8c], sp                                ; $600a: $08 $8c $2f
    sbc a                                         ; $600d: $9f
    inc bc                                        ; $600e: $03
    ld [de], a                                    ; $600f: $12
    ld bc, $2f8c                                  ; $6010: $01 $8c $2f
    adc l                                         ; $6013: $8d
    cpl                                           ; $6014: $2f
    sbc a                                         ; $6015: $9f
    inc bc                                        ; $6016: $03
    ld [de], a                                    ; $6017: $12
    ld bc, $1000                                  ; $6018: $01 $00 $10
    adc h                                         ; $601b: $8c
    cpl                                           ; $601c: $2f
    sbc $7b                                       ; $601d: $de $7b
    sub $66                                       ; $601f: $d6 $66
    nop                                           ; $6021: $00
    jr nz, jr_0b1_5fb0                            ; $6022: $20 $8c

    cpl                                           ; $6024: $2f
    sbc $7b                                       ; $6025: $de $7b
    sub $66                                       ; $6027: $d6 $66
    nop                                           ; $6029: $00
    jr nz, @+$4a                                  ; $602a: $20 $48

    ld b, l                                       ; $602c: $45
    rst $38                                       ; $602d: $ff
    inc bc                                        ; $602e: $03
    ld b, $68                                     ; $602f: $06 $68
    ld h, a                                       ; $6031: $67
    inc b                                         ; $6032: $04

jr_0b1_6033:
    ld e, e                                       ; $6033: $5b
    inc bc                                        ; $6034: $03
    or c                                          ; $6035: $b1
    ld d, h                                       ; $6036: $54
    sub h                                         ; $6037: $94
    ld h, d                                       ; $6038: $62
    ld bc, $bb10                                  ; $6039: $01 $10 $bb
    ld bc, $641a                                  ; $603c: $01 $1a $64
    sbc a                                         ; $603f: $9f
    inc bc                                        ; $6040: $03
    ld [bc], a                                    ; $6041: $02
    inc b                                         ; $6042: $04
    ld a, [de]                                    ; $6043: $1a
    ld h, h                                       ; $6044: $64
    inc d                                         ; $6045: $14
    ld c, $fe                                     ; $6046: $0e $fe
    ld a, c                                       ; $6048: $79

jr_0b1_6049:
    ld [bc], a                                    ; $6049: $02
    inc b                                         ; $604a: $04
    ld l, h                                       ; $604b: $6c
    cpl                                           ; $604c: $2f
    inc d                                         ; $604d: $14
    ld c, $fe                                     ; $604e: $0e $fe
    ld a, c                                       ; $6050: $79
    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    or l                                          ; $6053: $b5
    ld h, d                                       ; $6054: $62
    inc l                                         ; $6055: $2c
    inc sp                                        ; $6056: $33
    sbc $7b                                       ; $6057: $de $7b
    nop                                           ; $6059: $00
    jr nz, jr_0b1_6049                            ; $605a: $20 $ed

    ld d, c                                       ; $605c: $51
    or h                                          ; $605d: $b4
    ld h, d                                       ; $605e: $62
    rst $30                                       ; $605f: $f7
    ld l, d                                       ; $6060: $6a
    nop                                           ; $6061: $00
    jr nz, jr_0b1_6049                            ; $6062: $20 $e5

    inc a                                         ; $6064: $3c
    adc e                                         ; $6065: $8b
    ld c, c                                       ; $6066: $49
    daa                                           ; $6067: $27
    ld b, c                                       ; $6068: $41
    nop                                           ; $6069: $00
    nop                                           ; $606a: $00
    ld e, c                                       ; $606b: $59
    ld h, b                                       ; $606c: $60
    ld d, c                                       ; $606d: $51
    ld e, d                                       ; $606e: $5a
    sbc l                                         ; $606f: $9d
    halt                                          ; $6070: $76
    ld [hl+], a                                   ; $6071: $22
    inc b                                         ; $6072: $04
    cp $75                                        ; $6073: $fe $75
    xor c                                         ; $6075: $a9
    jr nz, jr_0b1_60d7                            ; $6076: $20 $5f

    ld a, [hl]                                    ; $6078: $7e
    ld [hl+], a                                   ; $6079: $22
    inc b                                         ; $607a: $04
    sbc a                                         ; $607b: $9f
    add hl, bc                                    ; $607c: $09
    sub l                                         ; $607d: $95
    ld d, b                                       ; $607e: $50
    ld e, a                                       ; $607f: $5f
    ld a, d                                       ; $6080: $7a
    ld [bc], a                                    ; $6081: $02
    inc b                                         ; $6082: $04
    ld a, [de]                                    ; $6083: $1a
    ld h, h                                       ; $6084: $64
    ld c, h                                       ; $6085: $4c
    dec hl                                        ; $6086: $2b
    ld a, a                                       ; $6087: $7f
    ld a, [hl]                                    ; $6088: $7e

jr_0b1_6089:
    nop                                           ; $6089: $00
    nop                                           ; $608a: $00
    ld c, h                                       ; $608b: $4c
    dec hl                                        ; $608c: $2b
    ld e, d                                       ; $608d: $5a
    ld [hl], e                                    ; $608e: $73
    ld l, h                                       ; $608f: $6c
    dec hl                                        ; $6090: $2b
    nop                                           ; $6091: $00
    jr nz, jr_0b1_60dd                            ; $6092: $20 $49

    ld c, c                                       ; $6094: $49
    ld [hl], d                                    ; $6095: $72
    ld e, [hl]                                    ; $6096: $5e
    dec b                                         ; $6097: $05
    dec a                                         ; $6098: $3d
    nop                                           ; $6099: $00
    jr jr_0b1_6089                                ; $609a: $18 $ed

    ld d, l                                       ; $609c: $55
    daa                                           ; $609d: $27
    ld b, c                                       ; $609e: $41
    sub h                                         ; $609f: $94
    ld l, [hl]                                    ; $60a0: $6e
    ld [bc], a                                    ; $60a1: $02
    nop                                           ; $60a2: $00
    ld c, e                                       ; $60a3: $4b
    dec hl                                        ; $60a4: $2b
    call c, $5b71                                 ; $60a5: $dc $71 $5b
    dec b                                         ; $60a8: $05
    add a                                         ; $60a9: $87
    nop                                           ; $60aa: $00
    ccf                                           ; $60ab: $3f
    ld bc, $0011                                  ; $60ac: $01 $11 $00
    ccf                                           ; $60af: $3f
    ld [de], a                                    ; $60b0: $12
    inc b                                         ; $60b1: $04
    inc c                                         ; $60b2: $0c
    ld e, h                                       ; $60b3: $5c
    ld a, $5f                                     ; $60b4: $3e $5f
    dec b                                         ; $60b6: $05
    ld l, e                                       ; $60b7: $6b
    nop                                           ; $60b8: $00
    inc b                                         ; $60b9: $04
    inc c                                         ; $60ba: $0c
    add hl, de                                    ; $60bb: $19
    ld h, b                                       ; $60bc: $60
    ld c, e                                       ; $60bd: $4b
    dec hl                                        ; $60be: $2b
    ld a, a                                       ; $60bf: $7f
    ld a, [hl]                                    ; $60c0: $7e
    dec hl                                        ; $60c1: $2b
    dec hl                                        ; $60c2: $2b
    ld c, e                                       ; $60c3: $4b
    dec hl                                        ; $60c4: $2b
    ld c, e                                       ; $60c5: $4b
    dec hl                                        ; $60c6: $2b
    ld a, a                                       ; $60c7: $7f
    ld a, [hl]                                    ; $60c8: $7e
    nop                                           ; $60c9: $00
    inc e                                         ; $60ca: $1c
    ld c, b                                       ; $60cb: $48
    ld b, l                                       ; $60cc: $45
    ld sp, $2b62                                  ; $60cd: $31 $62 $2b
    dec hl                                        ; $60d0: $2b
    nop                                           ; $60d1: $00
    inc b                                         ; $60d2: $04
    xor $5d                                       ; $60d3: $ee $5d
    ld e, e                                       ; $60d5: $5b
    ld [hl], a                                    ; $60d6: $77

jr_0b1_60d7:
    dec hl                                        ; $60d7: $2b
    dec hl                                        ; $60d8: $2b
    rlca                                          ; $60d9: $07
    ld [$2b2b], sp                                ; $60da: $08 $2b $2b

jr_0b1_60dd:
    inc de                                        ; $60dd: $13
    ld c, h                                       ; $60de: $4c
    cp a                                          ; $60df: $bf
    add hl, bc                                    ; $60e0: $09
    ld l, d                                       ; $60e1: $6a
    nop                                           ; $60e2: $00
    dec sp                                        ; $60e3: $3b
    ld h, $ff                                     ; $60e4: $26 $ff
    ld a, a                                       ; $60e6: $7f
    ld b, $68                                     ; $60e7: $06 $68
    ld bc, $3f00                                  ; $60e9: $01 $00 $3f
    ld bc, $1a1c                                  ; $60ec: $01 $1c $1a
    xor l                                         ; $60ef: $ad
    nop                                           ; $60f0: $00
    ld [bc], a                                    ; $60f1: $02
    inc b                                         ; $60f2: $04
    db $10                                        ; $60f3: $10
    inc a                                         ; $60f4: $3c
    ld h, $18                                     ; $60f5: $26 $18
    jr jr_0b1_6159                                ; $60f7: $18 $60

    ld [bc], a                                    ; $60f9: $02
    inc b                                         ; $60fa: $04
    dec bc                                        ; $60fb: $0b
    daa                                           ; $60fc: $27
    inc de                                        ; $60fd: $13
    ld c, b                                       ; $60fe: $48
    ld a, [de]                                    ; $60ff: $1a
    ld h, h                                       ; $6100: $64
    nop                                           ; $6101: $00
    inc e                                         ; $6102: $1c
    sra d                                         ; $6103: $cb $2a
    sub h                                         ; $6105: $94
    ld l, [hl]                                    ; $6106: $6e
    sbc $7f                                       ; $6107: $de $7f
    inc b                                         ; $6109: $04
    inc c                                         ; $610a: $0c
    jp c, Jump_000_0a76                           ; $610b: $da $76 $0a

    daa                                           ; $610e: $27
    ld d, $54                                     ; $610f: $16 $54
    dec h                                         ; $6111: $25
    inc b                                         ; $6112: $04
    ld d, $54                                     ; $6113: $16 $54
    rst $18                                       ; $6115: $df
    add hl, bc                                    ; $6116: $09
    ccf                                           ; $6117: $3f
    ld a, h                                       ; $6118: $7c
    ld b, l                                       ; $6119: $45
    db $10                                        ; $611a: $10
    sbc l                                         ; $611b: $9d
    ld b, [hl]                                    ; $611c: $46
    ld b, $68                                     ; $611d: $06 $68
    rst $38                                       ; $611f: $ff
    ld a, a                                       ; $6120: $7f
    ld b, h                                       ; $6121: $44
    nop                                           ; $6122: $00
    ld [$df26], a                                 ; $6123: $ea $26 $df
    dec b                                         ; $6126: $05
    or a                                          ; $6127: $b7
    dec h                                         ; $6128: $25
    ld [bc], a                                    ; $6129: $02
    inc b                                         ; $612a: $04
    ld [$0526], a                                 ; $612b: $ea $26 $05
    inc d                                         ; $612e: $14
    inc bc                                        ; $612f: $03
    ld [$0c04], sp                                ; $6130: $08 $04 $0c
    ld a, [de]                                    ; $6133: $1a
    ld h, h                                       ; $6134: $64
    ld a, [bc]                                    ; $6135: $0a
    daa                                           ; $6136: $27
    inc l                                         ; $6137: $2c
    inc l                                         ; $6138: $2c
    nop                                           ; $6139: $00
    inc e                                         ; $613a: $1c
    jr z, jr_0b1_616f                             ; $613b: $28 $32

    dec d                                         ; $613d: $15
    ld l, [hl]                                    ; $613e: $6e
    dec bc                                        ; $613f: $0b
    jr z, @+$03                                   ; $6140: $28 $01

    ld [$26ea], sp                                ; $6142: $08 $ea $26
    ld e, a                                       ; $6145: $5f
    inc bc                                        ; $6146: $03
    sub h                                         ; $6147: $94
    ld l, [hl]                                    ; $6148: $6e
    ld b, $14                                     ; $6149: $06 $14
    ld [$3f26], a                                 ; $614b: $ea $26 $3f
    ld bc, $125f                                  ; $614e: $01 $5f $12
    xor $04                                       ; $6151: $ee $04
    rst $38                                       ; $6153: $ff
    ld d, d                                       ; $6154: $52
    rra                                           ; $6155: $1f
    nop                                           ; $6156: $00
    ld e, a                                       ; $6157: $5f
    ld [de], a                                    ; $6158: $12

jr_0b1_6159:
    adc b                                         ; $6159: $88
    nop                                           ; $615a: $00
    ret                                           ; $615b: $c9


    ld [hl+], a                                   ; $615c: $22
    or a                                          ; $615d: $b7
    dec h                                         ; $615e: $25
    rst $38                                       ; $615f: $ff
    inc bc                                        ; $6160: $03
    ret                                           ; $6161: $c9


    ld [hl+], a                                   ; $6162: $22
    ld [$ca26], a                                 ; $6163: $ea $26 $ca
    ld [hl+], a                                   ; $6166: $22
    rst $38                                       ; $6167: $ff
    inc bc                                        ; $6168: $03
    ld h, $18                                     ; $6169: $26 $18
    ld a, [de]                                    ; $616b: $1a
    ld h, h                                       ; $616c: $64
    ret                                           ; $616d: $c9


    ld [hl+], a                                   ; $616e: $22

jr_0b1_616f:
    jp z, $0022                                   ; $616f: $ca $22 $00

    inc e                                         ; $6172: $1c
    dec de                                        ; $6173: $1b
    ld l, h                                       ; $6174: $6c
    dec c                                         ; $6175: $0d
    ld c, d                                       ; $6176: $4a
    rst $38                                       ; $6177: $ff
    inc bc                                        ; $6178: $03
    ld [bc], a                                    ; $6179: $02
    inc d                                         ; $617a: $14
    inc [hl]                                      ; $617b: $34
    ld [de], a                                    ; $617c: $12
    ld a, [de]                                    ; $617d: $1a
    ld l, b                                       ; $617e: $68
    ld d, c                                       ; $617f: $51
    ld h, [hl]                                    ; $6180: $66
    nop                                           ; $6181: $00
    nop                                           ; $6182: $00
    ret                                           ; $6183: $c9


    ld [hl+], a                                   ; $6184: $22
    ccf                                           ; $6185: $3f
    ld bc, $1406                                  ; $6186: $01 $06 $14
    jp z, $dd00                                   ; $6189: $ca $00 $dd

    dec c                                         ; $618c: $0d
    ld a, l                                       ; $618d: $7d
    ld b, d                                       ; $618e: $42
    dec d                                         ; $618f: $15
    nop                                           ; $6190: $00
    nop                                           ; $6191: $00
    ld [$4abe], sp                                ; $6192: $08 $be $4a
    rst $38                                       ; $6195: $ff
    inc bc                                        ; $6196: $03
    ld [de], a                                    ; $6197: $12
    ld bc, $0c04                                  ; $6198: $01 $04 $0c
    rst $38                                       ; $619b: $ff
    inc bc                                        ; $619c: $03
    xor [hl]                                      ; $619d: $ae
    dec c                                         ; $619e: $0d
    rst $38                                       ; $619f: $ff
    ld a, a                                       ; $61a0: $7f
    ld h, $18                                     ; $61a1: $26 $18
    xor c                                         ; $61a3: $a9
    ld [hl+], a                                   ; $61a4: $22
    ret                                           ; $61a5: $c9


    ld [hl+], a                                   ; $61a6: $22
    rst $38                                       ; $61a7: $ff
    ld a, a                                       ; $61a8: $7f
    nop                                           ; $61a9: $00
    inc e                                         ; $61aa: $1c
    cpl                                           ; $61ab: $2f
    ld d, [hl]                                    ; $61ac: $56
    ld a, a                                       ; $61ad: $7f
    ld [bc], a                                    ; $61ae: $02
    ld h, $3d                                     ; $61af: $26 $3d
    inc bc                                        ; $61b1: $03
    db $10                                        ; $61b2: $10
    ld d, $54                                     ; $61b3: $16 $54
    ld a, a                                       ; $61b5: $7f
    ld a, [hl]                                    ; $61b6: $7e
    ccf                                           ; $61b7: $3f
    ld a, h                                       ; $61b8: $7c
    ld b, $14                                     ; $61b9: $06 $14
    xor c                                         ; $61bb: $a9
    ld [hl+], a                                   ; $61bc: $22
    ld a, a                                       ; $61bd: $7f
    ld a, [hl]                                    ; $61be: $7e
    ccf                                           ; $61bf: $3f
    ld a, h                                       ; $61c0: $7c
    ld bc, $5c00                                  ; $61c1: $01 $00 $5c
    ld a, $2f                                     ; $61c4: $3e $2f
    dec b                                         ; $61c6: $05
    rst $38                                       ; $61c7: $ff
    inc bc                                        ; $61c8: $03
    inc b                                         ; $61c9: $04
    inc d                                         ; $61ca: $14
    cp a                                          ; $61cb: $bf
    ld bc, $0112                                  ; $61cc: $01 $12 $01
    rst $38                                       ; $61cf: $ff
    inc bc                                        ; $61d0: $03
    inc b                                         ; $61d1: $04
    inc c                                         ; $61d2: $0c
    dec e                                         ; $61d3: $1d
    ld a, [hl+]                                   ; $61d4: $2a
    ld [de], a                                    ; $61d5: $12
    ld bc, $03ff                                  ; $61d6: $01 $ff $03
    ld h, $18                                     ; $61d9: $26 $18
    adc b                                         ; $61db: $88
    ld e, $1a                                     ; $61dc: $1e $1a
    ld h, h                                       ; $61de: $64
    adc c                                         ; $61df: $89
    ld [hl+], a                                   ; $61e0: $22
    nop                                           ; $61e1: $00
    inc e                                         ; $61e2: $1c
    ld [hl], a                                    ; $61e3: $77
    ld [bc], a                                    ; $61e4: $02
    ld d, d                                       ; $61e5: $52
    ld e, l                                       ; $61e6: $5d
    cp l                                          ; $61e7: $bd
    ld a, d                                       ; $61e8: $7a
    ld [bc], a                                    ; $61e9: $02
    ld [$641a], sp                                ; $61ea: $08 $1a $64
    ld a, a                                       ; $61ed: $7f
    ld a, [hl]                                    ; $61ee: $7e
    nop                                           ; $61ef: $00
    jr nz, jr_0b1_61f4                            ; $61f0: $20 $02

    inc b                                         ; $61f2: $04
    adc b                                         ; $61f3: $88

jr_0b1_61f4:
    ld e, $88                                     ; $61f4: $1e $88
    ld [hl+], a                                   ; $61f6: $22
    nop                                           ; $61f7: $00
    jr nz, @+$06                                  ; $61f8: $20 $04

    inc d                                         ; $61fa: $14
    cp a                                          ; $61fb: $bf
    ld bc, $0112                                  ; $61fc: $01 $12 $01
    rst $38                                       ; $61ff: $ff
    inc bc                                        ; $6200: $03
    dec b                                         ; $6201: $05
    jr jr_0b1_6216                                ; $6202: $18 $12

    ld bc, $641a                                  ; $6204: $01 $1a $64
    ld a, a                                       ; $6207: $7f
    ld [bc], a                                    ; $6208: $02
    dec h                                         ; $6209: $25
    nop                                           ; $620a: $00
    sbc l                                         ; $620b: $9d
    ld b, [hl]                                    ; $620c: $46
    ld [de], a                                    ; $620d: $12
    ld bc, $01bf                                  ; $620e: $01 $bf $01
    ld h, $18                                     ; $6211: $26 $18
    ld a, [de]                                    ; $6213: $1a
    ld h, h                                       ; $6214: $64
    ld l, b                                       ; $6215: $68

jr_0b1_6216:
    ld e, $7f                                     ; $6216: $1e $7f
    ld a, [hl]                                    ; $6218: $7e
    nop                                           ; $6219: $00
    jr nz, jr_0b1_6236                            ; $621a: $20 $1a

    ld h, h                                       ; $621c: $64
    ld a, a                                       ; $621d: $7f

jr_0b1_621e:
    ld a, [hl]                                    ; $621e: $7e
    inc b                                         ; $621f: $04
    inc c                                         ; $6220: $0c
    inc bc                                        ; $6221: $03
    inc c                                         ; $6222: $0c
    rst $20                                       ; $6223: $e7
    add hl, hl                                    ; $6224: $29
    or e                                          ; $6225: $b3
    ld h, d                                       ; $6226: $62
    nop                                           ; $6227: $00
    jr nz, jr_0b1_6292                            ; $6228: $20 $68

    nop                                           ; $622a: $00
    sbc a                                         ; $622b: $9f
    inc bc                                        ; $622c: $03
    ld l, b                                       ; $622d: $68
    ld e, $12                                     ; $622e: $1e $12
    ld bc, $0823                                  ; $6230: $01 $23 $08
    dec e                                         ; $6233: $1d
    ld a, h                                       ; $6234: $7c
    ld [de], a                                    ; $6235: $12

jr_0b1_6236:
    ld bc, $021f                                  ; $6236: $01 $1f $02
    inc b                                         ; $6239: $04
    db $10                                        ; $623a: $10
    ld a, [de]                                    ; $623b: $1a
    ld h, h                                       ; $623c: $64
    ld [de], a                                    ; $623d: $12
    ld bc, $01bf                                  ; $623e: $01 $bf $01
    nop                                           ; $6241: $00
    ld [$03ff], sp                                ; $6242: $08 $ff $03
    sbc $4e                                       ; $6245: $de $4e
    inc sp                                        ; $6247: $33
    dec c                                         ; $6248: $0d
    ld [bc], a                                    ; $6249: $02
    inc b                                         ; $624a: $04
    ld b, a                                       ; $624b: $47
    ld e, $12                                     ; $624c: $1e $12
    ld bc, $1826                                  ; $624e: $01 $26 $18
    nop                                           ; $6251: $00
    jr nz, jr_0b1_626e                            ; $6252: $20 $1a

    ld h, h                                       ; $6254: $64
    ld a, a                                       ; $6255: $7f
    ld a, [hl]                                    ; $6256: $7e
    inc b                                         ; $6257: $04
    stop                                          ; $6258: $10 $00
    jr jr_0b1_62a3                                ; $625a: $18 $47

    ld a, [de]                                    ; $625c: $1a
    sub $66                                       ; $625d: $d6 $66
    xor e                                         ; $625f: $ab
    ld c, l                                       ; $6260: $4d
    ld b, a                                       ; $6261: $47
    ld a, [de]                                    ; $6262: $1a
    ld l, b                                       ; $6263: $68
    nop                                           ; $6264: $00
    ld [de], a                                    ; $6265: $12
    ld bc, $1e47                                  ; $6266: $01 $47 $1e
    ld b, [hl]                                    ; $6269: $46
    ld [$01bf], sp                                ; $626a: $08 $bf $01
    ld a, [de]                                    ; $626d: $1a

jr_0b1_626e:
    ld h, h                                       ; $626e: $64
    rst $38                                       ; $626f: $ff
    inc bc                                        ; $6270: $03
    inc bc                                        ; $6271: $03
    inc c                                         ; $6272: $0c
    cp a                                          ; $6273: $bf
    ld bc, $6dfb                                  ; $6274: $01 $fb $6d
    rst $38                                       ; $6277: $ff
    inc bc                                        ; $6278: $03
    ld [de], a                                    ; $6279: $12
    ld bc, $4abe                                  ; $627a: $01 $be $4a
    ld e, h                                       ; $627d: $5c
    inc bc                                        ; $627e: $03
    ld [hl], l                                    ; $627f: $75
    dec e                                         ; $6280: $1d
    daa                                           ; $6281: $27
    ld a, [de]                                    ; $6282: $1a
    ld l, b                                       ; $6283: $68
    nop                                           ; $6284: $00
    ld b, a                                       ; $6285: $47
    ld a, [de]                                    ; $6286: $1a
    ld [hl], l                                    ; $6287: $75
    dec e                                         ; $6288: $1d
    nop                                           ; $6289: $00
    jr nz, jr_0b1_62a6                            ; $628a: $20 $1a

    ld h, h                                       ; $628c: $64
    or $66                                        ; $628d: $f6 $66

jr_0b1_628f:
    inc b                                         ; $628f: $04
    stop                                          ; $6290: $10 $00

jr_0b1_6292:
    jr jr_0b1_621e                                ; $6292: $18 $8a

    ld c, c                                       ; $6294: $49
    ld a, d                                       ; $6295: $7a
    ld [hl], e                                    ; $6296: $73
    ld [hl], d                                    ; $6297: $72
    ld e, d                                       ; $6298: $5a
    daa                                           ; $6299: $27
    ld a, [de]                                    ; $629a: $1a
    ld [de], a                                    ; $629b: $12
    ld bc, $039f                                  ; $629c: $01 $9f $03
    ld [hl], d                                    ; $629f: $72
    ld e, d                                       ; $62a0: $5a
    dec b                                         ; $62a1: $05
    inc d                                         ; $62a2: $14

jr_0b1_62a3:
    rla                                           ; $62a3: $17
    ld e, b                                       ; $62a4: $58
    inc d                                         ; $62a5: $14

jr_0b1_62a6:
    ld bc, $69bb                                  ; $62a6: $01 $bb $69
    nop                                           ; $62a9: $00
    nop                                           ; $62aa: $00
    scf                                           ; $62ab: $37
    ld e, l                                       ; $62ac: $5d
    sub h                                         ; $62ad: $94
    inc h                                         ; $62ae: $24
    ld e, a                                       ; $62af: $5f
    ld a, d                                       ; $62b0: $7a
    nop                                           ; $62b1: $00
    ld [$7eff], sp                                ; $62b2: $08 $ff $7e
    ld e, $03                                     ; $62b5: $1e $03
    ld [de], a                                    ; $62b7: $12
    ld bc, $1a06                                  ; $62b8: $01 $06 $1a
    ld l, b                                       ; $62bb: $68
    nop                                           ; $62bc: $00
    daa                                           ; $62bd: $27
    ld a, [de]                                    ; $62be: $1a
    ld [de], a                                    ; $62bf: $12
    ld bc, $0000                                  ; $62c0: $01 $00 $00
    rla                                           ; $62c3: $17
    ld l, e                                       ; $62c4: $6b
    nop                                           ; $62c5: $00
    jr nz, jr_0b1_62a6                            ; $62c6: $20 $de

    ld a, a                                       ; $62c8: $7f
    nop                                           ; $62c9: $00
    inc e                                         ; $62ca: $1c
    xor h                                         ; $62cb: $ac
    ld c, l                                       ; $62cc: $4d
    or h                                          ; $62cd: $b4
    ld h, d                                       ; $62ce: $62
    sbc e                                         ; $62cf: $9b
    ld [hl], a                                    ; $62d0: $77
    nop                                           ; $62d1: $00
    nop                                           ; $62d2: $00
    ld b, $16                                     ; $62d3: $06 $16
    ld [de], a                                    ; $62d5: $12
    ld bc, $0068                                  ; $62d6: $01 $68 $00
    xor h                                         ; $62d9: $ac
    nop                                           ; $62da: $00
    sub a                                         ; $62db: $97
    ld e, b                                       ; $62dc: $58
    ld a, a                                       ; $62dd: $7f
    ld [bc], a                                    ; $62de: $02
    ld e, $7a                                     ; $62df: $1e $7a
    rrca                                          ; $62e1: $0f
    jr c, jr_0b1_631d                             ; $62e2: $38 $39

    ld h, b                                       ; $62e4: $60
    sbc l                                         ; $62e5: $9d
    ld [hl], l                                    ; $62e6: $75
    ld [hl], $01                                  ; $62e7: $36 $01
    ld bc, $9b04                                  ; $62e9: $01 $04 $9b
    ld l, b                                       ; $62ec: $68
    rst $38                                       ; $62ed: $ff
    inc bc                                        ; $62ee: $03
    ld [de], a                                    ; $62ef: $12
    ld bc, $0000                                  ; $62f0: $01 $00 $00
    and $15                                       ; $62f3: $e6 $15
    ld [de], a                                    ; $62f5: $12
    ld bc, $0068                                  ; $62f6: $01 $68 $00
    nop                                           ; $62f9: $00
    jr nz, jr_0b1_628f                            ; $62fa: $20 $93

    ld e, [hl]                                    ; $62fc: $5e
    db $dd                                        ; $62fd: $dd
    ld a, e                                       ; $62fe: $7b
    jr jr_0b1_636c                                ; $62ff: $18 $6b

    nop                                           ; $6301: $00
    jr nz, jr_0b1_628f                            ; $6302: $20 $8b

    ld c, c                                       ; $6304: $49
    push de                                       ; $6305: $d5
    ld h, [hl]                                    ; $6306: $66
    cpl                                           ; $6307: $2f
    ld d, [hl]                                    ; $6308: $56
    nop                                           ; $6309: $00
    nop                                           ; $630a: $00
    push hl                                       ; $630b: $e5
    dec d                                         ; $630c: $15
    ld [$0220], sp                                ; $630d: $08 $20 $02
    inc b                                         ; $6310: $04
    xor h                                         ; $6311: $ac
    nop                                           ; $6312: $00
    scf                                           ; $6313: $37
    ld e, b                                       ; $6314: $58
    rst $38                                       ; $6315: $ff
    inc bc                                        ; $6316: $03
    rst $38                                       ; $6317: $ff
    ld a, a                                       ; $6318: $7f
    nop                                           ; $6319: $00
    inc b                                         ; $631a: $04
    jr @+$5e                                      ; $631b: $18 $5c

jr_0b1_631d:
    rrca                                          ; $631d: $0f
    jr c, jr_0b1_6332                             ; $631e: $38 $12

    ld bc, $1405                                  ; $6320: $01 $05 $14
    cp $02                                        ; $6323: $fe $02
    rst $38                                       ; $6325: $ff
    ld a, a                                       ; $6326: $7f
    pop af                                        ; $6327: $f1
    nop                                           ; $6328: $00
    nop                                           ; $6329: $00
    nop                                           ; $632a: $00
    sbc $7f                                       ; $632b: $de $7f
    push bc                                       ; $632d: $c5
    dec d                                         ; $632e: $15
    push hl                                       ; $632f: $e5
    dec d                                         ; $6330: $15
    nop                                           ; $6331: $00

jr_0b1_6332:
    jr nz, jr_0b1_6385                            ; $6332: $20 $51

    ld e, d                                       ; $6334: $5a
    rst $30                                       ; $6335: $f7
    ld l, d                                       ; $6336: $6a
    sbc h                                         ; $6337: $9c
    ld [hl], a                                    ; $6338: $77
    nop                                           ; $6339: $00
    jr nz, jr_0b1_6384                            ; $633a: $20 $48

    ld b, c                                       ; $633c: $41
    cpl                                           ; $633d: $2f
    ld d, [hl]                                    ; $633e: $56
    adc e                                         ; $633f: $8b
    ld c, c                                       ; $6340: $49
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    or h                                          ; $6343: $b4
    ld h, d                                       ; $6344: $62
    push bc                                       ; $6345: $c5
    ld de, $2008                                  ; $6346: $11 $08 $20
    inc bc                                        ; $6349: $03
    inc c                                         ; $634a: $0c
    dec d                                         ; $634b: $15
    ld d, b                                       ; $634c: $50
    ld a, l                                       ; $634d: $7d
    inc bc                                        ; $634e: $03
    ld [de], a                                    ; $634f: $12
    ld bc, $0401                                  ; $6350: $01 $01 $04
    dec bc                                        ; $6353: $0b
    inc l                                         ; $6354: $2c
    ld [$0f20], sp                                ; $6355: $08 $20 $0f
    inc a                                         ; $6358: $3c

jr_0b1_6359:
    dec b                                         ; $6359: $05
    inc d                                         ; $635a: $14
    db $10                                        ; $635b: $10
    inc a                                         ; $635c: $3c
    ld a, [hl-]                                   ; $635d: $3a
    ld h, h                                       ; $635e: $64
    and l                                         ; $635f: $a5
    ld de, $0000                                  ; $6360: $11 $00 $00
    or h                                          ; $6363: $b4
    ld h, d                                       ; $6364: $62
    and l                                         ; $6365: $a5
    ld de, $735a                                  ; $6366: $11 $5a $73
    nop                                           ; $6369: $00
    jr nz, jr_0b1_6359                            ; $636a: $20 $ed

jr_0b1_636c:
    ld d, c                                       ; $636c: $51
    ld [hl], d                                    ; $636d: $72
    ld e, [hl]                                    ; $636e: $5e
    cpl                                           ; $636f: $2f
    ld d, [hl]                                    ; $6370: $56
    nop                                           ; $6371: $00
    jr nz, @+$08                                  ; $6372: $20 $06

    ld b, c                                       ; $6374: $41
    ld h, $41                                     ; $6375: $26 $41
    ld [de], a                                    ; $6377: $12
    ld bc, $1004                                  ; $6378: $01 $04 $10
    adc d                                         ; $637b: $8a
    ld c, c                                       ; $637c: $49
    and l                                         ; $637d: $a5
    ld de, $61b8                                  ; $637e: $11 $b8 $61
    dec b                                         ; $6381: $05
    db $10                                        ; $6382: $10
    ld a, [de]                                    ; $6383: $1a

jr_0b1_6384:
    ld h, h                                       ; $6384: $64

jr_0b1_6385:
    ld [hl], e                                    ; $6385: $73
    ld bc, $7abe                                  ; $6386: $01 $be $7a

jr_0b1_6389:
    ld bc, $0a04                                  ; $6389: $01 $04 $0a
    inc h                                         ; $638c: $24
    ld c, $34                                     ; $638d: $0e $34
    dec b                                         ; $638f: $05
    inc d                                         ; $6390: $14
    dec b                                         ; $6391: $05
    inc d                                         ; $6392: $14
    ld a, [de]                                    ; $6393: $1a
    ld h, h                                       ; $6394: $64
    ld a, a                                       ; $6395: $7f
    ld a, [hl]                                    ; $6396: $7e
    add h                                         ; $6397: $84
    ld de, $0000                                  ; $6398: $11 $00 $00
    ld l, c                                       ; $639b: $69
    ld b, l                                       ; $639c: $45
    add h                                         ; $639d: $84
    ld de, $562f                                  ; $639e: $11 $2f $56
    nop                                           ; $63a1: $00
    jr nz, jr_0b1_6389                            ; $63a2: $20 $e5

    inc a                                         ; $63a4: $3c
    ld c, b                                       ; $63a5: $48
    ld b, l                                       ; $63a6: $45
    cpl                                           ; $63a7: $2f
    ld d, [hl]                                    ; $63a8: $56
    nop                                           ; $63a9: $00
    jr nz, @-$10                                  ; $63aa: $20 $ee

    ld e, l                                       ; $63ac: $5d
    ld [hl], e                                    ; $63ad: $73
    ld bc, $7abe                                  ; $63ae: $01 $be $7a
    ld [bc], a                                    ; $63b1: $02
    ld [$761d], sp                                ; $63b2: $08 $1d $76
    daa                                           ; $63b5: $27
    ld b, l                                       ; $63b6: $45
    ld h, [hl]                                    ; $63b7: $66
    dec c                                         ; $63b8: $0d
    inc bc                                        ; $63b9: $03
    inc c                                         ; $63ba: $0c
    ld a, [de]                                    ; $63bb: $1a
    ld h, h                                       ; $63bc: $64
    sbc l                                         ; $63bd: $9d
    inc bc                                        ; $63be: $03
    ld [de], a                                    ; $63bf: $12

jr_0b1_63c0:
    ld bc, $1004                                  ; $63c0: $01 $04 $10
    rrca                                          ; $63c3: $0f
    inc a                                         ; $63c4: $3c
    ld [de], a                                    ; $63c5: $12
    ld bc, $641a                                  ; $63c6: $01 $1a $64
    dec b                                         ; $63c9: $05
    inc d                                         ; $63ca: $14
    ld a, [hl-]                                   ; $63cb: $3a
    ld h, h                                       ; $63cc: $64
    ld e, [hl]                                    ; $63cd: $5e
    ld a, d                                       ; $63ce: $7a
    add h                                         ; $63cf: $84
    ld de, $0000                                  ; $63d0: $11 $00 $00
    push hl                                       ; $63d3: $e5
    inc a                                         ; $63d4: $3c
    add h                                         ; $63d5: $84
    ld de, $4d8b                                  ; $63d6: $11 $8b $4d
    nop                                           ; $63d9: $00
    jr nz, @-$19                                  ; $63da: $20 $e5

    inc a                                         ; $63dc: $3c
    add h                                         ; $63dd: $84
    ld de, $4d8b                                  ; $63de: $11 $8b $4d
    nop                                           ; $63e1: $00
    jr nz, jr_0b1_63fe                            ; $63e2: $20 $1a

    ld h, h                                       ; $63e4: $64
    sbc l                                         ; $63e5: $9d
    inc bc                                        ; $63e6: $03
    ld [de], a                                    ; $63e7: $12
    ld bc, $0848                                  ; $63e8: $01 $48 $08
    ld sp, $ff66                                  ; $63eb: $31 $66 $ff
    inc bc                                        ; $63ee: $03
    add hl, sp                                    ; $63ef: $39
    ld h, b                                       ; $63f0: $60
    inc bc                                        ; $63f1: $03
    inc c                                         ; $63f2: $0c
    ld e, d                                       ; $63f3: $5a
    ld h, h                                       ; $63f4: $64
    ld [hl], $01                                  ; $63f5: $36 $01
    ld a, l                                       ; $63f7: $7d
    inc bc                                        ; $63f8: $03
    dec b                                         ; $63f9: $05
    inc d                                         ; $63fa: $14
    sbc e                                         ; $63fb: $9b
    ld l, b                                       ; $63fc: $68
    ld [de], a                                    ; $63fd: $12

jr_0b1_63fe:
    ld bc, $4010                                  ; $63fe: $01 $10 $40
    ld b, a                                       ; $6401: $47
    inc c                                         ; $6402: $0c
    ld a, [hl-]                                   ; $6403: $3a
    ld h, h                                       ; $6404: $64
    db $10                                        ; $6405: $10
    ld b, b                                       ; $6406: $40
    ld a, a                                       ; $6407: $7f
    ld a, [hl]                                    ; $6408: $7e
    ld [hl+], a                                   ; $6409: $22
    nop                                           ; $640a: $00
    xor h                                         ; $640b: $ac

Call_0b1_640c:
    ld d, l                                       ; $640c: $55
    ld b, h                                       ; $640d: $44
    ld de, $6e73                                  ; $640e: $11 $73 $6e
    nop                                           ; $6411: $00
    jr nz, jr_0b1_63c0                            ; $6412: $20 $ac

    ld d, l                                       ; $6414: $55
    ld b, h                                       ; $6415: $44
    ld de, $6e73                                  ; $6416: $11 $73 $6e
    nop                                           ; $6419: $00
    jr nz, jr_0b1_6476                            ; $641a: $20 $5a

    ld h, h                                       ; $641c: $64
    ld [hl], $01                                  ; $641d: $36 $01
    ld a, l                                       ; $641f: $7d
    inc bc                                        ; $6420: $03
    ld [hl+], a                                   ; $6421: $22
    inc c                                         ; $6422: $0c
    rst $38                                       ; $6423: $ff
    inc bc                                        ; $6424: $03
    or h                                          ; $6425: $b4
    jr nz, @+$1a                                  ; $6426: $20 $18

    ld [hl], a                                    ; $6428: $77
    adc $08                                       ; $6429: $ce $08
    ld a, e                                       ; $642b: $7b
    ld l, b                                       ; $642c: $68
    rst $18                                       ; $642d: $df
    ld [bc], a                                    ; $642e: $02
    rst $38                                       ; $642f: $ff
    ld a, [hl]                                    ; $6430: $7e
    xor [hl]                                      ; $6431: $ae
    ld [$4010], sp                                ; $6432: $08 $10 $40
    rst $38                                       ; $6435: $ff
    inc bc                                        ; $6436: $03
    sbc e                                         ; $6437: $9b
    ld l, b                                       ; $6438: $68
    db $10                                        ; $6439: $10
    ld b, b                                       ; $643a: $40
    rst $38                                       ; $643b: $ff
    inc bc                                        ; $643c: $03
    ld [de], a                                    ; $643d: $12
    ld bc, $689b                                  ; $643e: $01 $9b $68
    nop                                           ; $6441: $00
    inc c                                         ; $6442: $0c
    jr jr_0b1_64bc                                ; $6443: $18 $77

    ld [de], a                                    ; $6445: $12
    ld bc, $0925                                  ; $6446: $01 $25 $09
    nop                                           ; $6449: $00
    jr nz, @+$1a                                  ; $644a: $20 $18

    ld [hl], a                                    ; $644c: $77
    ld [de], a                                    ; $644d: $12
    ld bc, $0925                                  ; $644e: $01 $25 $09
    nop                                           ; $6451: $00
    jr nz, @+$7d                                  ; $6452: $20 $7b

    ld l, b                                       ; $6454: $68

jr_0b1_6455:
    rst $18                                       ; $6455: $df
    ld [bc], a                                    ; $6456: $02
    rst $38                                       ; $6457: $ff
    ld a, [hl]                                    ; $6458: $7e
    nop                                           ; $6459: $00
    nop                                           ; $645a: $00
    jr jr_0b1_64b9                                ; $645b: $18 $5c

jr_0b1_645d:
    sbc h                                         ; $645d: $9c
    ld [hl], a                                    ; $645e: $77
    nop                                           ; $645f: $00
    jr nz, @+$04                                  ; $6460: $20 $02

    ld [$641a], sp                                ; $6462: $08 $1a $64
    ld [de], a                                    ; $6465: $12
    ld bc, $03ff                                  ; $6466: $01 $ff $03

jr_0b1_6469:
    nop                                           ; $6469: $00
    nop                                           ; $646a: $00
    rrca                                          ; $646b: $0f
    ld h, d                                       ; $646c: $62

jr_0b1_646d:
    sbc h                                         ; $646d: $9c
    ld a, e                                       ; $646e: $7b

jr_0b1_646f:
    or l                                          ; $646f: $b5
    ld l, [hl]                                    ; $6470: $6e

jr_0b1_6471:
    nop                                           ; $6471: $00
    nop                                           ; $6472: $00
    push hl                                       ; $6473: $e5
    inc a                                         ; $6474: $3c

jr_0b1_6475:
    rrca                                          ; $6475: $0f

jr_0b1_6476:
    ld e, d                                       ; $6476: $5a

jr_0b1_6477:
    ld c, c                                       ; $6477: $49
    ld c, c                                       ; $6478: $49

jr_0b1_6479:
    nop                                           ; $6479: $00
    nop                                           ; $647a: $00

jr_0b1_647b:
    rst $30                                       ; $647b: $f7
    ld [hl], d                                    ; $647c: $72

jr_0b1_647d:
    sbc $7b                                       ; $647d: $de $7b

jr_0b1_647f:
    nop                                           ; $647f: $00
    jr nz, jr_0b1_6482                            ; $6480: $20 $00

jr_0b1_6482:
    jr nz, jr_0b1_647b                            ; $6482: $20 $f7

    ld [hl], d                                    ; $6484: $72

jr_0b1_6485:
    sbc $7b                                       ; $6485: $de $7b
    nop                                           ; $6487: $00
    jr nz, jr_0b1_648a                            ; $6488: $20 $00

jr_0b1_648a:
    jr nz, jr_0b1_64a6                            ; $648a: $20 $1a

    ld h, h                                       ; $648c: $64
    ld [de], a                                    ; $648d: $12
    ld bc, $03ff                                  ; $648e: $01 $ff $03
    nop                                           ; $6491: $00
    jr nz, @-$6b                                  ; $6492: $20 $93

    ld h, d                                       ; $6494: $62
    sbc h                                         ; $6495: $9c
    ld [hl], a                                    ; $6496: $77
    ld l, c                                       ; $6497: $69
    ld b, l                                       ; $6498: $45
    push hl                                       ; $6499: $e5
    inc a                                         ; $649a: $3c
    ld sp, $f766                                  ; $649b: $31 $66 $f7
    ld [hl], d                                    ; $649e: $72
    ld c, c                                       ; $649f: $49
    ld c, l                                       ; $64a0: $4d

jr_0b1_64a1:
    daa                                           ; $64a1: $27
    ld b, l                                       ; $64a2: $45
    sub l                                         ; $64a3: $95
    ld [hl], d                                    ; $64a4: $72
    sbc h                                         ; $64a5: $9c

jr_0b1_64a6:
    ld a, e                                       ; $64a6: $7b

jr_0b1_64a7:
    adc $5d                                       ; $64a7: $ce $5d
    ld l, d                                       ; $64a9: $6a
    ld c, l                                       ; $64aa: $4d
    sub h                                         ; $64ab: $94
    ld l, [hl]                                    ; $64ac: $6e

jr_0b1_64ad:
    jr nc, jr_0b1_650d                            ; $64ad: $30 $5e

    ld e, d                                       ; $64af: $5a
    ld [hl], e                                    ; $64b0: $73
    nop                                           ; $64b1: $00
    jr nz, jr_0b1_6527                            ; $64b2: $20 $73

    ld e, [hl]                                    ; $64b4: $5e

jr_0b1_64b5:
    cp h                                          ; $64b5: $bc
    ld a, e                                       ; $64b6: $7b
    push hl                                       ; $64b7: $e5
    inc a                                         ; $64b8: $3c

jr_0b1_64b9:
    nop                                           ; $64b9: $00
    jr nz, jr_0b1_652f                            ; $64ba: $20 $73

jr_0b1_64bc:
    ld e, [hl]                                    ; $64bc: $5e
    cp h                                          ; $64bd: $bc
    ld a, e                                       ; $64be: $7b
    push hl                                       ; $64bf: $e5
    inc a                                         ; $64c0: $3c
    nop                                           ; $64c1: $00
    jr nz, jr_0b1_64c4                            ; $64c2: $20 $00

jr_0b1_64c4:
    jr nz, jr_0b1_64c6                            ; $64c4: $20 $00

jr_0b1_64c6:
    jr nz, jr_0b1_646f                            ; $64c6: $20 $a7

    nop                                           ; $64c8: $00
    nop                                           ; $64c9: $00
    jr nz, jr_0b1_6455                            ; $64ca: $20 $89

    nop                                           ; $64cc: $00
    nop                                           ; $64cd: $00
    jr nz, jr_0b1_6477                            ; $64ce: $20 $a7

    nop                                           ; $64d0: $00
    nop                                           ; $64d1: $00
    jr nz, jr_0b1_645d                            ; $64d2: $20 $89

    nop                                           ; $64d4: $00
    nop                                           ; $64d5: $00
    jr nz, jr_0b1_647f                            ; $64d6: $20 $a7

jr_0b1_64d8:
    nop                                           ; $64d8: $00
    nop                                           ; $64d9: $00
    nop                                           ; $64da: $00
    rst $38                                       ; $64db: $ff
    ld a, a                                       ; $64dc: $7f
    nop                                           ; $64dd: $00
    jr nz, jr_0b1_6469                            ; $64de: $20 $89

    nop                                           ; $64e0: $00
    nop                                           ; $64e1: $00
    jr jr_0b1_646d                                ; $64e2: $18 $89

    nop                                           ; $64e4: $00

jr_0b1_64e5:
    nop                                           ; $64e5: $00
    jr nz, jr_0b1_6471                            ; $64e6: $20 $89

    nop                                           ; $64e8: $00
    nop                                           ; $64e9: $00
    jr nz, jr_0b1_6475                            ; $64ea: $20 $89

    nop                                           ; $64ec: $00

jr_0b1_64ed:
    nop                                           ; $64ed: $00
    jr nz, jr_0b1_6479                            ; $64ee: $20 $89

    nop                                           ; $64f0: $00
    nop                                           ; $64f1: $00
    jr nz, jr_0b1_647d                            ; $64f2: $20 $89

    nop                                           ; $64f4: $00

jr_0b1_64f5:
    nop                                           ; $64f5: $00
    jr nz, @-$75                                  ; $64f6: $20 $89

    nop                                           ; $64f8: $00
    nop                                           ; $64f9: $00
    jr nz, jr_0b1_6485                            ; $64fa: $20 $89

    nop                                           ; $64fc: $00
    nop                                           ; $64fd: $00
    jr nz, jr_0b1_64a7                            ; $64fe: $20 $a7

    nop                                           ; $6500: $00
    nop                                           ; $6501: $00
    jr nz, jr_0b1_655c                            ; $6502: $20 $58

    ld [hl-], a                                   ; $6504: $32
    adc b                                         ; $6505: $88
    nop                                           ; $6506: $00
    ld e, a                                       ; $6507: $5f
    ld c, e                                       ; $6508: $4b
    nop                                           ; $6509: $00
    jr nz, jr_0b1_6564                            ; $650a: $20 $58

    ld [hl-], a                                   ; $650c: $32

jr_0b1_650d:
    adc b                                         ; $650d: $88
    nop                                           ; $650e: $00
    ld e, a                                       ; $650f: $5f
    ld c, e                                       ; $6510: $4b
    nop                                           ; $6511: $00
    nop                                           ; $6512: $00
    rst $38                                       ; $6513: $ff
    ld a, a                                       ; $6514: $7f
    nop                                           ; $6515: $00
    jr nz, jr_0b1_64a1                            ; $6516: $20 $89

    nop                                           ; $6518: $00

jr_0b1_6519:
    nop                                           ; $6519: $00
    jr jr_0b1_64d8                                ; $651a: $18 $bc

    ld a, [hl-]                                   ; $651c: $3a
    adc c                                         ; $651d: $89
    nop                                           ; $651e: $00
    cp a                                          ; $651f: $bf
    ld d, e                                       ; $6520: $53
    nop                                           ; $6521: $00
    jr nz, jr_0b1_64ad                            ; $6522: $20 $89

    nop                                           ; $6524: $00
    or c                                          ; $6525: $b1
    dec h                                         ; $6526: $25

jr_0b1_6527:
    cp a                                          ; $6527: $bf
    ld d, e                                       ; $6528: $53
    nop                                           ; $6529: $00
    jr nz, jr_0b1_64b5                            ; $652a: $20 $89

    nop                                           ; $652c: $00

jr_0b1_652d:
    or c                                          ; $652d: $b1
    dec h                                         ; $652e: $25

jr_0b1_652f:
    cp a                                          ; $652f: $bf
    ld d, e                                       ; $6530: $53
    nop                                           ; $6531: $00
    jr nz, jr_0b1_658c                            ; $6532: $20 $58

    ld [hl-], a                                   ; $6534: $32
    adc b                                         ; $6535: $88
    nop                                           ; $6536: $00
    ld e, a                                       ; $6537: $5f
    ld c, e                                       ; $6538: $4b
    nop                                           ; $6539: $00
    jr nz, jr_0b1_6519                            ; $653a: $20 $dd

    ld a, $88                                     ; $653c: $3e $88
    nop                                           ; $653e: $00
    ld a, a                                       ; $653f: $7f
    ld c, e                                       ; $6540: $4b
    nop                                           ; $6541: $00
    nop                                           ; $6542: $00
    rst $38                                       ; $6543: $ff
    ld a, a                                       ; $6544: $7f
    nop                                           ; $6545: $00
    jr nz, jr_0b1_65c7                            ; $6546: $20 $7f

    ld c, e                                       ; $6548: $4b
    nop                                           ; $6549: $00
    nop                                           ; $654a: $00
    xor a                                         ; $654b: $af
    ld b, a                                       ; $654c: $47
    rst $38                                       ; $654d: $ff
    ld a, a                                       ; $654e: $7f
    cp a                                          ; $654f: $bf
    ld d, e                                       ; $6550: $53
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00
    ld a, a                                       ; $6553: $7f
    ld c, a                                       ; $6554: $4f

jr_0b1_6555:
    rst $38                                       ; $6555: $ff
    ld a, a                                       ; $6556: $7f
    xor b                                         ; $6557: $a8
    inc c                                         ; $6558: $0c
    nop                                           ; $6559: $00
    jr nz, jr_0b1_64e5                            ; $655a: $20 $89

jr_0b1_655c:
    nop                                           ; $655c: $00

jr_0b1_655d:
    rst $38                                       ; $655d: $ff
    ld a, a                                       ; $655e: $7f
    xor b                                         ; $655f: $a8
    inc c                                         ; $6560: $0c
    nop                                           ; $6561: $00
    jr nz, jr_0b1_64ed                            ; $6562: $20 $89

jr_0b1_6564:
    nop                                           ; $6564: $00
    rst $38                                       ; $6565: $ff
    ld a, a                                       ; $6566: $7f
    xor b                                         ; $6567: $a8
    inc c                                         ; $6568: $0c
    nop                                           ; $6569: $00
    jr nz, jr_0b1_64f5                            ; $656a: $20 $89

    nop                                           ; $656c: $00
    nop                                           ; $656d: $00
    jr nz, jr_0b1_65ef                            ; $656e: $20 $7f

    ld c, e                                       ; $6570: $4b
    nop                                           ; $6571: $00
    jr nz, jr_0b1_658a                            ; $6572: $20 $16

    ld l, $89                                     ; $6574: $2e $89
    nop                                           ; $6576: $00
    rra                                           ; $6577: $1f
    ld b, e                                       ; $6578: $43
    nop                                           ; $6579: $00
    nop                                           ; $657a: $00

jr_0b1_657b:
    rst $38                                       ; $657b: $ff
    ld a, a                                       ; $657c: $7f
    nop                                           ; $657d: $00
    jr nz, jr_0b1_659f                            ; $657e: $20 $1f

    ld b, e                                       ; $6580: $43
    nop                                           ; $6581: $00
    nop                                           ; $6582: $00
    xor a                                         ; $6583: $af
    ld b, e                                       ; $6584: $43
    ret z                                         ; $6585: $c8

    nop                                           ; $6586: $00
    xor a                                         ; $6587: $af
    ld b, a                                       ; $6588: $47
    nop                                           ; $6589: $00

jr_0b1_658a:
    nop                                           ; $658a: $00
    push af                                       ; $658b: $f5

jr_0b1_658c:
    dec l                                         ; $658c: $2d
    sbc a                                         ; $658d: $9f
    ld d, e                                       ; $658e: $53
    xor c                                         ; $658f: $a9
    inc b                                         ; $6590: $04
    nop                                           ; $6591: $00
    inc e                                         ; $6592: $1c
    ld c, l                                       ; $6593: $4d
    dec e                                         ; $6594: $1d
    rra                                           ; $6595: $1f
    ld b, e                                       ; $6596: $43
    adc c                                         ; $6597: $89
    nop                                           ; $6598: $00
    nop                                           ; $6599: $00
    jr nz, jr_0b1_65e9                            ; $659a: $20 $4d

    dec e                                         ; $659c: $1d

jr_0b1_659d:
    rra                                           ; $659d: $1f
    ld b, e                                       ; $659e: $43

jr_0b1_659f:
    adc c                                         ; $659f: $89
    nop                                           ; $65a0: $00

jr_0b1_65a1:
    nop                                           ; $65a1: $00
    jr nz, jr_0b1_652d                            ; $65a2: $20 $89

    nop                                           ; $65a4: $00
    db $f4                                        ; $65a5: $f4
    add hl, hl                                    ; $65a6: $29
    rra                                           ; $65a7: $1f
    ld b, e                                       ; $65a8: $43
    nop                                           ; $65a9: $00
    jr nz, jr_0b1_6604                            ; $65aa: $20 $58

    ld [hl-], a                                   ; $65ac: $32
    adc c                                         ; $65ad: $89
    nop                                           ; $65ae: $00
    rra                                           ; $65af: $1f
    ld b, a                                       ; $65b0: $47
    nop                                           ; $65b1: $00
    nop                                           ; $65b2: $00
    xor a                                         ; $65b3: $af
    ld b, e                                       ; $65b4: $43
    rst $38                                       ; $65b5: $ff
    ld a, a                                       ; $65b6: $7f
    nop                                           ; $65b7: $00
    jr nz, jr_0b1_65ba                            ; $65b8: $20 $00

jr_0b1_65ba:
    nop                                           ; $65ba: $00
    xor a                                         ; $65bb: $af
    ld b, e                                       ; $65bc: $43
    ld d, h                                       ; $65bd: $54
    ld a, [hl+]                                   ; $65be: $2a
    xor b                                         ; $65bf: $a8
    nop                                           ; $65c0: $00
    ld h, a                                       ; $65c1: $67
    nop                                           ; $65c2: $00
    ld e, c                                       ; $65c3: $59
    ld [hl], $1e                                  ; $65c4: $36 $1e

jr_0b1_65c6:
    ld b, a                                       ; $65c6: $47

jr_0b1_65c7:
    ld [$0010], a                                 ; $65c7: $ea $10 $00
    jr nz, jr_0b1_6555                            ; $65ca: $20 $89

    nop                                           ; $65cc: $00
    dec bc                                        ; $65cd: $0b
    dec d                                         ; $65ce: $15
    ld [$0010], a                                 ; $65cf: $ea $10 $00
    jr nz, jr_0b1_655d                            ; $65d2: $20 $89

    nop                                           ; $65d4: $00

jr_0b1_65d5:
    dec bc                                        ; $65d5: $0b
    dec d                                         ; $65d6: $15
    ld [$0010], a                                 ; $65d7: $ea $10 $00
    jr nz, jr_0b1_657b                            ; $65da: $20 $9f

    ld d, e                                       ; $65dc: $53
    adc c                                         ; $65dd: $89
    nop                                           ; $65de: $00
    dec bc                                        ; $65df: $0b
    dec d                                         ; $65e0: $15
    nop                                           ; $65e1: $00
    nop                                           ; $65e2: $00
    di                                            ; $65e3: $f3
    dec l                                         ; $65e4: $2d
    db $fd                                        ; $65e5: $fd
    ld b, d                                       ; $65e6: $42
    adc c                                         ; $65e7: $89
    nop                                           ; $65e8: $00

jr_0b1_65e9:
    nop                                           ; $65e9: $00
    nop                                           ; $65ea: $00
    adc [hl]                                      ; $65eb: $8e
    ld b, e                                       ; $65ec: $43
    rst $38                                       ; $65ed: $ff
    ld a, a                                       ; $65ee: $7f

jr_0b1_65ef:
    adc c                                         ; $65ef: $89
    nop                                           ; $65f0: $00
    nop                                           ; $65f1: $00
    nop                                           ; $65f2: $00
    ld c, a                                       ; $65f3: $4f
    dec sp                                        ; $65f4: $3b
    rst $18                                       ; $65f5: $df
    ld b, a                                       ; $65f6: $47
    ld a, [bc]                                    ; $65f7: $0a
    ld bc, $0088                                  ; $65f8: $01 $88 $00
    adc [hl]                                      ; $65fb: $8e
    ccf                                           ; $65fc: $3f
    cp a                                          ; $65fd: $bf
    ld d, a                                       ; $65fe: $57
    db $d3                                        ; $65ff: $d3
    dec h                                         ; $6600: $25
    nop                                           ; $6601: $00
    nop                                           ; $6602: $00
    cp d                                          ; $6603: $ba

jr_0b1_6604:
    ld a, a                                       ; $6604: $7f

Jump_0b1_6605:
    add hl, hl                                    ; $6605: $29
    dec h                                         ; $6606: $25
    nop                                           ; $6607: $00
    jr nz, jr_0b1_660a                            ; $6608: $20 $00

jr_0b1_660a:
    jr nz, jr_0b1_65c6                            ; $660a: $20 $ba

    ld a, a                                       ; $660c: $7f
    add hl, hl                                    ; $660d: $29
    dec h                                         ; $660e: $25
    nop                                           ; $660f: $00
    jr nz, jr_0b1_6612                            ; $6610: $20 $00

jr_0b1_6612:
    jr jr_0b1_659d                                ; $6612: $18 $89

    nop                                           ; $6614: $00
    nop                                           ; $6615: $00
    jr nz, jr_0b1_65a1                            ; $6616: $20 $89

    nop                                           ; $6618: $00
    ld h, [hl]                                    ; $6619: $66

jr_0b1_661a:
    nop                                           ; $661a: $00
    scf                                           ; $661b: $37
    ld [hl-], a                                   ; $661c: $32
    ld e, a                                       ; $661d: $5f
    ld c, e                                       ; $661e: $4b
    adc $39                                       ; $661f: $ce $39
    adc c                                         ; $6621: $89
    nop                                           ; $6622: $00
    adc [hl]                                      ; $6623: $8e
    ccf                                           ; $6624: $3f
    cp h                                          ; $6625: $bc
    ld a, $7f                                     ; $6626: $3e $7f
    ld c, a                                       ; $6628: $4f
    nop                                           ; $6629: $00
    nop                                           ; $662a: $00
    ld l, [hl]                                    ; $662b: $6e
    ccf                                           ; $662c: $3f
    dec sp                                        ; $662d: $3b
    scf                                           ; $662e: $37
    jp hl                                         ; $662f: $e9


    nop                                           ; $6630: $00
    ld [hl+], a                                   ; $6631: $22
    nop                                           ; $6632: $00
    ld c, [hl]                                    ; $6633: $4e
    ccf                                           ; $6634: $3f
    dec d                                         ; $6635: $15
    ld [bc], a                                    ; $6636: $02
    rst $18                                       ; $6637: $df
    inc bc                                        ; $6638: $03
    nop                                           ; $6639: $00
    inc d                                         ; $663a: $14
    sub $56                                       ; $663b: $d6 $56
    rst $38                                       ; $663d: $ff
    ld a, a                                       ; $663e: $7f
    add hl, hl                                    ; $663f: $29
    dec h                                         ; $6640: $25
    nop                                           ; $6641: $00
    jr nz, jr_0b1_661a                            ; $6642: $20 $d6

    ld d, [hl]                                    ; $6644: $56
    rst $38                                       ; $6645: $ff
    ld a, a                                       ; $6646: $7f
    add hl, hl                                    ; $6647: $29
    dec h                                         ; $6648: $25
    nop                                           ; $6649: $00
    jr nz, jr_0b1_65d5                            ; $664a: $20 $89

    nop                                           ; $664c: $00
    jr nz, jr_0b1_6657                            ; $664d: $20 $08

    jr nz, jr_0b1_665d                            ; $664f: $20 $0c

    ld h, [hl]                                    ; $6651: $66
    nop                                           ; $6652: $00
    ld l, l                                       ; $6653: $6d
    dec sp                                        ; $6654: $3b
    cp a                                          ; $6655: $bf
    ld h, e                                       ; $6656: $63

jr_0b1_6657:
    dec hl                                        ; $6657: $2b
    dec h                                         ; $6658: $25
    adc c                                         ; $6659: $89
    nop                                           ; $665a: $00
    ld l, l                                       ; $665b: $6d
    dec sp                                        ; $665c: $3b

jr_0b1_665d:
    ld l, [hl]                                    ; $665d: $6e
    ccf                                           ; $665e: $3f
    dec hl                                        ; $665f: $2b
    dec h                                         ; $6660: $25
    ld b, e                                       ; $6661: $43
    nop                                           ; $6662: $00
    or b                                          ; $6663: $b0
    dec c                                         ; $6664: $0d
    rrca                                          ; $6665: $0f
    scf                                           ; $6666: $37
    dec de                                        ; $6667: $1b
    rla                                           ; $6668: $17
    nop                                           ; $6669: $00
    inc b                                         ; $666a: $04
    ld l, l                                       ; $666b: $6d
    dec sp                                        ; $666c: $3b
    dec d                                         ; $666d: $15
    ld [bc], a                                    ; $666e: $02
    ld a, [hl+]                                   ; $666f: $2a
    add hl, bc                                    ; $6670: $09
    nop                                           ; $6671: $00
    inc b                                         ; $6672: $04
    rst $30                                       ; $6673: $f7
    ld e, d                                       ; $6674: $5a
    add hl, hl                                    ; $6675: $29
    dec h                                         ; $6676: $25
    rst $18                                       ; $6677: $df
    ld a, e                                       ; $6678: $7b
    nop                                           ; $6679: $00
    nop                                           ; $667a: $00
    nop                                           ; $667b: $00
    jr nz, @+$2b                                  ; $667c: $20 $29

    dec h                                         ; $667e: $25
    rst $18                                       ; $667f: $df
    ld a, e                                       ; $6680: $7b
    nop                                           ; $6681: $00
    jr nz, jr_0b1_66ad                            ; $6682: $20 $29

    dec h                                         ; $6684: $25
    jr nz, jr_0b1_6693                            ; $6685: $20 $0c

    ld c, d                                       ; $6687: $4a
    dec l                                         ; $6688: $2d
    nop                                           ; $6689: $00
    inc b                                         ; $668a: $04
    ld c, l                                       ; $668b: $4d
    dec sp                                        ; $668c: $3b
    ld a, [$e702]                                 ; $668d: $fa $02 $e7
    inc e                                         ; $6690: $1c
    nop                                           ; $6691: $00
    nop                                           ; $6692: $00

jr_0b1_6693:
    ld c, l                                       ; $6693: $4d
    dec sp                                        ; $6694: $3b
    ld l, l                                       ; $6695: $6d
    dec sp                                        ; $6696: $3b
    rst $20                                       ; $6697: $e7
    inc e                                         ; $6698: $1c
    add [hl]                                      ; $6699: $86
    nop                                           ; $669a: $00
    ld c, l                                       ; $669b: $4d
    dec sp                                        ; $669c: $3b
    inc [hl]                                      ; $669d: $34
    ld a, [bc]                                    ; $669e: $0a
    inc a                                         ; $669f: $3c
    dec bc                                        ; $66a0: $0b
    nop                                           ; $66a1: $00
    nop                                           ; $66a2: $00
    ld c, h                                       ; $66a3: $4c
    scf                                           ; $66a4: $37
    rst $38                                       ; $66a5: $ff
    ld [hl], $0a                                  ; $66a6: $36 $0a
    dec d                                         ; $66a8: $15
    nop                                           ; $66a9: $00
    ld [$36b3], sp                                ; $66aa: $08 $b3 $36

jr_0b1_66ad:
    call c, Call_000_0a7f                         ; $66ad: $dc $7f $0a
    dec d                                         ; $66b0: $15
    nop                                           ; $66b1: $00
    nop                                           ; $66b2: $00
    rst $38                                       ; $66b3: $ff
    ld a, a                                       ; $66b4: $7f
    nop                                           ; $66b5: $00
    jr nz, jr_0b1_66c2                            ; $66b6: $20 $0a

    dec d                                         ; $66b8: $15
    nop                                           ; $66b9: $00
    inc b                                         ; $66ba: $04
    rst $38                                       ; $66bb: $ff
    ld a, a                                       ; $66bc: $7f
    adc l                                         ; $66bd: $8d
    dec [hl]                                      ; $66be: $35
    nop                                           ; $66bf: $00
    jr nz, jr_0b1_66e2                            ; $66c0: $20 $20

jr_0b1_66c2:
    inc c                                         ; $66c2: $0c
    inc c                                         ; $66c3: $0c
    scf                                           ; $66c4: $37
    rst $38                                       ; $66c5: $ff
    ld a, a                                       ; $66c6: $7f
    ld c, h                                       ; $66c7: $4c
    dec b                                         ; $66c8: $05
    nop                                           ; $66c9: $00
    nop                                           ; $66ca: $00
    ld c, h                                       ; $66cb: $4c
    scf                                           ; $66cc: $37
    ld c, l                                       ; $66cd: $4d
    scf                                           ; $66ce: $37
    ld c, h                                       ; $66cf: $4c
    dec b                                         ; $66d0: $05
    ld [hl+], a                                   ; $66d1: $22
    nop                                           ; $66d2: $00
    inc [hl]                                      ; $66d3: $34
    ld a, [bc]                                    ; $66d4: $0a
    sbc l                                         ; $66d5: $9d
    ld b, e                                       ; $66d6: $43
    db $fc                                        ; $66d7: $fc
    ld a, [bc]                                    ; $66d8: $0a
    nop                                           ; $66d9: $00
    nop                                           ; $66da: $00
    inc l                                         ; $66db: $2c
    inc sp                                        ; $66dc: $33
    ld h, l                                       ; $66dd: $65
    nop                                           ; $66de: $00
    ld [$0010], a                                 ; $66df: $ea $10 $00

jr_0b1_66e2:
    nop                                           ; $66e2: $00
    ld c, h                                       ; $66e3: $4c
    scf                                           ; $66e4: $37
    ld a, e                                       ; $66e5: $7b
    ld a, [hl+]                                   ; $66e6: $2a
    dec bc                                        ; $66e7: $0b
    dec d                                         ; $66e8: $15
    nop                                           ; $66e9: $00
    nop                                           ; $66ea: $00
    inc l                                         ; $66eb: $2c
    inc sp                                        ; $66ec: $33
    rst $38                                       ; $66ed: $ff
    ld a, a                                       ; $66ee: $7f
    nop                                           ; $66ef: $00
    jr nz, jr_0b1_66f2                            ; $66f0: $20 $00

jr_0b1_66f2:
    ld [$332c], sp                                ; $66f2: $08 $2c $33
    rst $38                                       ; $66f5: $ff
    ld a, a                                       ; $66f6: $7f
    add hl, hl                                    ; $66f7: $29
    dec h                                         ; $66f8: $25
    ld h, e                                       ; $66f9: $63
    inc d                                         ; $66fa: $14
    inc l                                         ; $66fb: $2c
    inc sp                                        ; $66fc: $33
    ld a, e                                       ; $66fd: $7b
    ld l, a                                       ; $66fe: $6f
    ld sp, $0046                                  ; $66ff: $31 $46 $00
    nop                                           ; $6702: $00
    dec hl                                        ; $6703: $2b
    inc sp                                        ; $6704: $33
    ld h, d                                       ; $6705: $62
    inc b                                         ; $6706: $04
    ld h, h                                       ; $6707: $64
    nop                                           ; $6708: $00

Jump_0b1_6709:
    ld a, [bc]                                    ; $6709: $0a
    ld bc, $0698                                  ; $670a: $01 $98 $06
    ld sp, hl                                     ; $670d: $f9
    ld [hl-], a                                   ; $670e: $32
    dec a                                         ; $670f: $3d
    rrca                                          ; $6710: $0f
    ld bc, $0b00                                  ; $6711: $01 $00 $0b
    inc sp                                        ; $6714: $33
    ld a, [bc]                                    ; $6715: $0a
    dec d                                         ; $6716: $15
    inc l                                         ; $6717: $2c
    inc sp                                        ; $6718: $33
    ld bc, $5900                                  ; $6719: $01 $00 $59
    ld a, [hl+]                                   ; $671c: $2a
    dec bc                                        ; $671d: $0b
    ld de, $32de                                  ; $671e: $11 $de $32
    nop                                           ; $6721: $00
    nop                                           ; $6722: $00
    dec bc                                        ; $6723: $0b
    inc sp                                        ; $6724: $33
    rst $38                                       ; $6725: $ff
    ld a, a                                       ; $6726: $7f
    nop                                           ; $6727: $00
    jr nz, jr_0b1_672a                            ; $6728: $20 $00

jr_0b1_672a:
    inc b                                         ; $672a: $04
    dec bc                                        ; $672b: $0b
    cpl                                           ; $672c: $2f
    rst $38                                       ; $672d: $ff
    ld a, a                                       ; $672e: $7f
    add h                                         ; $672f: $84
    inc c                                         ; $6730: $0c
    ld hl, $0b08                                  ; $6731: $21 $08 $0b
    cpl                                           ; $6734: $2f
    sbc h                                         ; $6735: $9c
    ld [hl], e                                    ; $6736: $73
    ld a, [hl+]                                   ; $6737: $2a
    ld hl, $0063                                  ; $6738: $21 $63 $00
    dec bc                                        ; $673b: $0b
    cpl                                           ; $673c: $2f
    ret z                                         ; $673d: $c8

    nop                                           ; $673e: $00
    dec hl                                        ; $673f: $2b
    ld bc, $01b1                                  ; $6740: $01 $b1 $01
    dec a                                         ; $6743: $3d
    dec bc                                        ; $6744: $0b
    rst $10                                       ; $6745: $d7
    ld l, $ff                                     ; $6746: $2e $ff
    ld c, e                                       ; $6748: $4b
    nop                                           ; $6749: $00
    nop                                           ; $674a: $00
    dec bc                                        ; $674b: $0b
    cpl                                           ; $674c: $2f
    ld a, [bc]                                    ; $674d: $0a
    dec d                                         ; $674e: $15
    ld [hl+], a                                   ; $674f: $22
    nop                                           ; $6750: $00
    nop                                           ; $6751: $00
    nop                                           ; $6752: $00
    push af                                       ; $6753: $f5
    ld hl, $152c                                  ; $6754: $21 $2c $15
    sbc h                                         ; $6757: $9c
    ld a, [hl+]                                   ; $6758: $2a
    nop                                           ; $6759: $00
    nop                                           ; $675a: $00
    dec bc                                        ; $675b: $0b
    cpl                                           ; $675c: $2f
    rst $38                                       ; $675d: $ff
    ld a, a                                       ; $675e: $7f
    nop                                           ; $675f: $00
    jr nz, jr_0b1_6762                            ; $6760: $20 $00

jr_0b1_6762:
    inc b                                         ; $6762: $04
    ld [$ff2a], a                                 ; $6763: $ea $2a $ff
    ld a, a                                       ; $6766: $7f
    ld b, d                                       ; $6767: $42
    jr jr_0b1_676a                                ; $6768: $18 $00

jr_0b1_676a:
    inc b                                         ; $676a: $04
    ret nc                                        ; $676b: $d0

    ld a, [hl+]                                   ; $676c: $2a
    ld a, c                                       ; $676d: $79
    ld [hl], a                                    ; $676e: $77
    ld l, h                                       ; $676f: $6c
    ld hl, $0042                                  ; $6770: $21 $42 $00
    ld [$c82a], a                                 ; $6773: $ea $2a $c8
    nop                                           ; $6776: $00
    ld h, h                                       ; $6777: $64
    nop                                           ; $6778: $00
    ld bc, $1b00                                  ; $6779: $01 $00 $1b
    dec bc                                        ; $677c: $0b
    add hl, bc                                    ; $677d: $09
    add hl, bc                                    ; $677e: $09
    rst $38                                       ; $677f: $ff
    ld d, e                                       ; $6780: $53
    ld b, d                                       ; $6781: $42
    nop                                           ; $6782: $00
    ld [$712a], a                                 ; $6783: $ea $2a $71
    ld de, $1dd5                                  ; $6786: $11 $d5 $1d
    nop                                           ; $6789: $00
    nop                                           ; $678a: $00
    ld [$0b2a], a                                 ; $678b: $ea $2a $0b
    ld de, $2e9c                                  ; $678e: $11 $9c $2e
    nop                                           ; $6791: $00
    nop                                           ; $6792: $00
    ld [$ff2a], a                                 ; $6793: $ea $2a $ff
    ld a, a                                       ; $6796: $7f
    nop                                           ; $6797: $00
    jr nz, jr_0b1_67ba                            ; $6798: $20 $20

    inc c                                         ; $679a: $0c
    jr c, jr_0b1_67c7                             ; $679b: $38 $2a

    rst $38                                       ; $679d: $ff
    ld a, a                                       ; $679e: $7f
    dec c                                         ; $679f: $0d
    add hl, bc                                    ; $67a0: $09
    ld hl, $ca04                                  ; $67a1: $21 $04 $ca
    ld a, [hl+]                                   ; $67a4: $2a
    ld a, e                                       ; $67a5: $7b
    ld a, [hl+]                                   ; $67a6: $2a
    ld l, e                                       ; $67a7: $6b
    dec h                                         ; $67a8: $25
    ld h, d                                       ; $67a9: $62
    inc b                                         ; $67aa: $04
    ld [$6d2a], a                                 ; $67ab: $ea $2a $6d
    add hl, bc                                    ; $67ae: $09
    jp hl                                         ; $67af: $e9


    nop                                           ; $67b0: $00
    nop                                           ; $67b1: $00
    nop                                           ; $67b2: $00
    dec sp                                        ; $67b3: $3b
    scf                                           ; $67b4: $37
    ld c, h                                       ; $67b5: $4c
    dec b                                         ; $67b6: $05
    ret nc                                        ; $67b7: $d0

    dec e                                         ; $67b8: $1d
    ld b, d                                       ; $67b9: $42

jr_0b1_67ba:
    nop                                           ; $67ba: $00
    xor d                                         ; $67bb: $aa
    ld h, $df                                     ; $67bc: $26 $df
    ld b, e                                       ; $67be: $43
    ld [$0010], a                                 ; $67bf: $ea $10 $00
    nop                                           ; $67c2: $00
    ld l, h                                       ; $67c3: $6c
    ld h, $9c                                     ; $67c4: $26 $9c
    ld a, [hl+]                                   ; $67c6: $2a

jr_0b1_67c7:
    inc l                                         ; $67c7: $2c
    dec d                                         ; $67c8: $15
    nop                                           ; $67c9: $00
    nop                                           ; $67ca: $00
    ret                                           ; $67cb: $c9


    ld h, $ff                                     ; $67cc: $26 $ff
    ld a, a                                       ; $67ce: $7f
    nop                                           ; $67cf: $00
    jr nz, jr_0b1_67f3                            ; $67d0: $20 $21

    nop                                           ; $67d2: $00
    or e                                          ; $67d3: $b3
    dec e                                         ; $67d4: $1d
    ld a, h                                       ; $67d5: $7c
    ld a, [hl+]                                   ; $67d6: $2a
    nop                                           ; $67d7: $00
    jr nz, jr_0b1_683e                            ; $67d8: $20 $64

    nop                                           ; $67da: $00
    rla                                           ; $67db: $17
    ld h, $4c                                     ; $67dc: $26 $4c
    add hl, de                                    ; $67de: $19
    cp l                                          ; $67df: $bd
    ld [hl-], a                                   ; $67e0: $32
    ld b, d                                       ; $67e1: $42

jr_0b1_67e2:
    inc b                                         ; $67e2: $04
    ld l, e                                       ; $67e3: $6b
    dec [hl]                                      ; $67e4: $35
    add sp, $04                                   ; $67e5: $e8 $04
    push de                                       ; $67e7: $d5
    ld h, d                                       ; $67e8: $62
    ld hl, $3600                                  ; $67e9: $21 $00 $36
    ld a, [hl+]                                   ; $67ec: $2a
    sbc l                                         ; $67ed: $9d
    dec sp                                        ; $67ee: $3b
    add hl, bc                                    ; $67ef: $09
    ld de, $0064                                  ; $67f0: $11 $64 $00

jr_0b1_67f3:
    rst $28                                       ; $67f3: $ef
    dec e                                         ; $67f4: $1d
    db $db                                        ; $67f5: $db
    ld [hl-], a                                   ; $67f6: $32
    rst $38                                       ; $67f7: $ff
    ld b, a                                       ; $67f8: $47
    nop                                           ; $67f9: $00
    nop                                           ; $67fa: $00
    xor c                                         ; $67fb: $a9
    ld h, $17                                     ; $67fc: $26 $17
    ld h, $0b                                     ; $67fe: $26 $0b
    dec d                                         ; $6800: $15
    nop                                           ; $6801: $00
    nop                                           ; $6802: $00
    xor c                                         ; $6803: $a9
    ld h, $ff                                     ; $6804: $26 $ff
    ld a, a                                       ; $6806: $7f
    nop                                           ; $6807: $00
    jr nz, jr_0b1_682b                            ; $6808: $20 $21

    nop                                           ; $680a: $00
    dec l                                         ; $680b: $2d
    add hl, de                                    ; $680c: $19
    nop                                           ; $680d: $00
    jr nz, jr_0b1_67e2                            ; $680e: $20 $d2

    ld hl, $0021                                  ; $6810: $21 $21 $00
    rst $38                                       ; $6813: $ff
    ld [hl], $2b                                  ; $6814: $36 $2b
    dec d                                         ; $6816: $15
    or c                                          ; $6817: $b1
    dec e                                         ; $6818: $1d
    ld b, d                                       ; $6819: $42
    ld [$4254], sp                                ; $681a: $08 $54 $42
    xor d                                         ; $681d: $aa
    dec l                                         ; $681e: $2d
    ld e, d                                       ; $681f: $5a
    ld l, a                                       ; $6820: $6f
    ld hl, $1500                                  ; $6821: $21 $00 $15
    ld a, [hl+]                                   ; $6824: $2a
    rst $38                                       ; $6825: $ff
    ld a, a                                       ; $6826: $7f
    rst $30                                       ; $6827: $f7
    ld l, $43                                     ; $6828: $2e $43
    nop                                           ; $682a: $00

jr_0b1_682b:
    ld e, b                                       ; $682b: $58
    ld a, [hl+]                                   ; $682c: $2a
    rst $38                                       ; $682d: $ff
    ld b, a                                       ; $682e: $47
    ld c, l                                       ; $682f: $4d
    add hl, de                                    ; $6830: $19
    nop                                           ; $6831: $00
    nop                                           ; $6832: $00
    xor b                                         ; $6833: $a8
    ld [hl+], a                                   ; $6834: $22
    db $f4                                        ; $6835: $f4
    dec h                                         ; $6836: $25
    db $eb                                        ; $6837: $eb
    ld [$0000], sp                                ; $6838: $08 $00 $00
    xor b                                         ; $683b: $a8
    ld [hl+], a                                   ; $683c: $22
    rst $38                                       ; $683d: $ff

jr_0b1_683e:
    ld a, a                                       ; $683e: $7f
    nop                                           ; $683f: $00
    jr nz, jr_0b1_6864                            ; $6840: $20 $22

    nop                                           ; $6842: $00
    rst $38                                       ; $6843: $ff
    ld a, a                                       ; $6844: $7f
    ld c, l                                       ; $6845: $4d
    add hl, de                                    ; $6846: $19
    nop                                           ; $6847: $00
    jr nz, jr_0b1_684a                            ; $6848: $20 $00

jr_0b1_684a:
    nop                                           ; $684a: $00
    ld a, e                                       ; $684b: $7b
    ld l, $2c                                     ; $684c: $2e $2c
    dec d                                         ; $684e: $15
    sub c                                         ; $684f: $91
    dec e                                         ; $6850: $1d
    ld hl, $0e00                                  ; $6851: $21 $00 $0e
    ld l, $da                                     ; $6854: $2e $da
    ld c, [hl]                                    ; $6856: $4e
    rst $20                                       ; $6857: $e7
    inc e                                         ; $6858: $1c
    ld b, l                                       ; $6859: $45
    nop                                           ; $685a: $00
    cp $42                                        ; $685b: $fe $42
    or d                                          ; $685d: $b2
    add hl, de                                    ; $685e: $19
    rst $38                                       ; $685f: $ff
    ld a, a                                       ; $6860: $7f
    ld h, e                                       ; $6861: $63
    inc b                                         ; $6862: $04
    ld e, c                                       ; $6863: $59

jr_0b1_6864:
    ld a, [hl+]                                   ; $6864: $2a
    inc l                                         ; $6865: $2c
    dec d                                         ; $6866: $15
    cp [hl]                                       ; $6867: $be
    ld l, $00                                     ; $6868: $2e $00
    nop                                           ; $686a: $00
    add a                                         ; $686b: $87
    ld e, $0d                                     ; $686c: $1e $0d
    dec c                                         ; $686e: $0d
    inc h                                         ; $686f: $24
    nop                                           ; $6870: $00
    nop                                           ; $6871: $00
    nop                                           ; $6872: $00
    rst $38                                       ; $6873: $ff
    ld a, a                                       ; $6874: $7f
    add a                                         ; $6875: $87
    ld e, $00                                     ; $6876: $1e $00
    jr nz, jr_0b1_687b                            ; $6878: $20 $01

    nop                                           ; $687a: $00

jr_0b1_687b:
    sbc $7b                                       ; $687b: $de $7b
    ld [$000c], a                                 ; $687d: $ea $0c $00
    jr nz, jr_0b1_68a3                            ; $6880: $20 $21

    nop                                           ; $6882: $00
    db $f4                                        ; $6883: $f4
    ld hl, $152c                                  ; $6884: $21 $2c $15
    cp l                                          ; $6887: $bd
    ld [hl-], a                                   ; $6888: $32
    ld b, e                                       ; $6889: $43
    nop                                           ; $688a: $00
    ld d, [hl]                                    ; $688b: $56
    ld a, $07                                     ; $688c: $3e $07
    dec h                                         ; $688e: $25
    inc l                                         ; $688f: $2c
    add hl, bc                                    ; $6890: $09
    ld [hl+], a                                   ; $6891: $22
    nop                                           ; $6892: $00
    ld e, c                                       ; $6893: $59
    ld a, [hl+]                                   ; $6894: $2a
    ld c, [hl]                                    ; $6895: $4e
    ld hl, $3edd                                  ; $6896: $21 $dd $3e
    nop                                           ; $6899: $00
    nop                                           ; $689a: $00
    push af                                       ; $689b: $f5
    ld hl, $152c                                  ; $689c: $21 $2c $15
    and l                                         ; $689f: $a5
    inc d                                         ; $68a0: $14
    nop                                           ; $68a1: $00
    nop                                           ; $68a2: $00

jr_0b1_68a3:
    ld h, a                                       ; $68a3: $67
    ld a, [de]                                    ; $68a4: $1a
    ld b, [hl]                                    ; $68a5: $46
    nop                                           ; $68a6: $00
    adc b                                         ; $68a7: $88
    nop                                           ; $68a8: $00
    nop                                           ; $68a9: $00
    nop                                           ; $68aa: $00
    rst $38                                       ; $68ab: $ff
    ld a, a                                       ; $68ac: $7f
    ld h, a                                       ; $68ad: $67
    ld e, $00                                     ; $68ae: $1e $00
    jr nz, jr_0b1_68b2                            ; $68b0: $20 $00

jr_0b1_68b2:
    nop                                           ; $68b2: $00
    rst $38                                       ; $68b3: $ff
    ld a, a                                       ; $68b4: $7f
    nop                                           ; $68b5: $00
    jr nz, jr_0b1_691d                            ; $68b6: $20 $65

    nop                                           ; $68b8: $00
    ld h, [hl]                                    ; $68b9: $66
    inc b                                         ; $68ba: $04
    db $d3                                        ; $68bb: $d3
    ld hl, $152c                                  ; $68bc: $21 $2c $15
    cp l                                          ; $68bf: $bd
    ld l, $21                                     ; $68c0: $2e $21
    inc b                                         ; $68c2: $04
    call nc, $2a25                                ; $68c3: $d4 $25 $2a
    dec c                                         ; $68c6: $0d
    ld a, h                                       ; $68c7: $7c
    ld c, e                                       ; $68c8: $4b
    ld hl, $5104                                  ; $68c9: $21 $04 $51
    ld c, [hl]                                    ; $68cc: $4e
    ld e, $43                                     ; $68cd: $1e $43
    dec bc                                        ; $68cf: $0b
    dec e                                         ; $68d0: $1d
    nop                                           ; $68d1: $00
    nop                                           ; $68d2: $00
    ld [$b20c], a                                 ; $68d3: $ea $0c $b2
    add hl, de                                    ; $68d6: $19
    inc l                                         ; $68d7: $2c
    dec d                                         ; $68d8: $15
    nop                                           ; $68d9: $00
    nop                                           ; $68da: $00
    ld b, [hl]                                    ; $68db: $46
    ld d, $88                                     ; $68dc: $16 $88
    nop                                           ; $68de: $00

jr_0b1_68df:
    ld h, [hl]                                    ; $68df: $66
    ld a, [de]                                    ; $68e0: $1a
    nop                                           ; $68e1: $00
    nop                                           ; $68e2: $00
    rst $38                                       ; $68e3: $ff
    ld a, a                                       ; $68e4: $7f
    nop                                           ; $68e5: $00
    jr nz, jr_0b1_694e                            ; $68e6: $20 $66

    ld a, [de]                                    ; $68e8: $1a
    nop                                           ; $68e9: $00
    nop                                           ; $68ea: $00
    rst $38                                       ; $68eb: $ff
    ld a, a                                       ; $68ec: $7f
    nop                                           ; $68ed: $00
    jr nz, jr_0b1_6955                            ; $68ee: $20 $65

    inc b                                         ; $68f0: $04
    ld b, h                                       ; $68f1: $44
    nop                                           ; $68f2: $00
    dec bc                                        ; $68f3: $0b
    dec d                                         ; $68f4: $15
    scf                                           ; $68f5: $37
    ld h, $90                                     ; $68f6: $26 $90
    add hl, de                                    ; $68f8: $19
    ld b, h                                       ; $68f9: $44
    nop                                           ; $68fa: $00
    pop af                                        ; $68fb: $f1
    dec e                                         ; $68fc: $1d
    cp [hl]                                       ; $68fd: $be
    ld b, a                                       ; $68fe: $47
    ld c, h                                       ; $68ff: $4c
    ld bc, $0000                                  ; $6900: $01 $00 $00
    ld [hl], d                                    ; $6903: $72
    ld d, [hl]                                    ; $6904: $56
    ld [$1608], a                                 ; $6905: $ea $08 $16
    ld a, [hl+]                                   ; $6908: $2a
    xor b                                         ; $6909: $a8
    ld [$110a], sp                                ; $690a: $08 $0a $11
    inc l                                         ; $690d: $2c
    dec d                                         ; $690e: $15
    dec l                                         ; $690f: $2d
    add hl, de                                    ; $6910: $19
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    dec h                                         ; $6913: $25
    ld [de], a                                    ; $6914: $12
    xor b                                         ; $6915: $a8
    inc b                                         ; $6916: $04
    ld b, [hl]                                    ; $6917: $46
    ld d, $00                                     ; $6918: $16 $00
    nop                                           ; $691a: $00
    rst $38                                       ; $691b: $ff
    ld a, a                                       ; $691c: $7f

jr_0b1_691d:
    nop                                           ; $691d: $00
    jr nz, jr_0b1_6966                            ; $691e: $20 $46

    ld d, $00                                     ; $6920: $16 $00
    nop                                           ; $6922: $00
    rst $38                                       ; $6923: $ff
    ld a, a                                       ; $6924: $7f
    nop                                           ; $6925: $00
    jr nz, jr_0b1_6974                            ; $6926: $20 $4c

    ld bc, $0000                                  ; $6928: $01 $00 $00
    dec bc                                        ; $692b: $0b
    dec d                                         ; $692c: $15
    db $f4                                        ; $692d: $f4
    ld hl, $0065                                  ; $692e: $21 $65 $00
    ld bc, $3400                                  ; $6931: $01 $00 $34
    ld l, $5e                                     ; $6934: $2e $5e
    inc de                                        ; $6936: $13
    dec l                                         ; $6937: $2d
    add hl, bc                                    ; $6938: $09
    ld b, e                                       ; $6939: $43
    nop                                           ; $693a: $00
    ld d, $2e                                     ; $693b: $16 $2e
    inc l                                         ; $693d: $2c
    ld de, $42fe                                  ; $693e: $11 $fe $42
    add a                                         ; $6941: $87
    nop                                           ; $6942: $00
    ld [$a80c], a                                 ; $6943: $ea $0c $a8
    ld [$152c], sp                                ; $6946: $08 $2c $15
    nop                                           ; $6949: $00
    nop                                           ; $694a: $00
    rst $38                                       ; $694b: $ff
    ld a, a                                       ; $694c: $7f
    inc b                                         ; $694d: $04

jr_0b1_694e:
    ld [de], a                                    ; $694e: $12
    add a                                         ; $694f: $87
    nop                                           ; $6950: $00
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    rst $38                                       ; $6953: $ff
    ld a, a                                       ; $6954: $7f

jr_0b1_6955:
    nop                                           ; $6955: $00
    jr nz, jr_0b1_68df                            ; $6956: $20 $87

    nop                                           ; $6958: $00
    nop                                           ; $6959: $00
    nop                                           ; $695a: $00
    rst $38                                       ; $695b: $ff
    ld a, a                                       ; $695c: $7f
    nop                                           ; $695d: $00
    jr nz, @+$2f                                  ; $695e: $20 $2d

    add hl, bc                                    ; $6960: $09
    nop                                           ; $6961: $00
    nop                                           ; $6962: $00
    rst $38                                       ; $6963: $ff
    ld a, a                                       ; $6964: $7f
    db $eb                                        ; $6965: $eb

jr_0b1_6966:
    db $10                                        ; $6966: $10
    ld h, [hl]                                    ; $6967: $66
    nop                                           ; $6968: $00
    ld hl, $9a00                                  ; $6969: $21 $00 $9a
    ld d, $7e                                     ; $696c: $16 $7e
    ld b, e                                       ; $696e: $43
    adc l                                         ; $696f: $8d
    add hl, de                                    ; $6970: $19
    ld bc, $d300                                  ; $6971: $01 $00 $d3

jr_0b1_6974:
    dec e                                         ; $6974: $1d
    cp $3a                                        ; $6975: $fe $3a
    and a                                         ; $6977: $a7
    nop                                           ; $6978: $00
    nop                                           ; $6979: $00
    nop                                           ; $697a: $00
    ld h, a                                       ; $697b: $67
    nop                                           ; $697c: $00
    xor b                                         ; $697d: $a8
    inc b                                         ; $697e: $04
    ret                                           ; $697f: $c9


    ld [$0000], sp                                ; $6980: $08 $00 $00
    rst $38                                       ; $6983: $ff
    ld a, a                                       ; $6984: $7f
    inc b                                         ; $6985: $04
    ld c, $c9                                     ; $6986: $0e $c9
    ld [$0000], sp                                ; $6988: $08 $00 $00
    nop                                           ; $698b: $00
    jr nz, @+$06                                  ; $698c: $20 $04

    ld c, $c9                                     ; $698e: $0e $c9
    ld [$0000], sp                                ; $6990: $08 $00 $00
    nop                                           ; $6993: $00
    jr nz, jr_0b1_6a14                            ; $6994: $20 $7e

    ld b, e                                       ; $6996: $43
    adc l                                         ; $6997: $8d
    add hl, de                                    ; $6998: $19
    inc hl                                        ; $6999: $23
    nop                                           ; $699a: $00
    rst $38                                       ; $699b: $ff
    ld a, a                                       ; $699c: $7f
    db $e3                                        ; $699d: $e3
    add hl, bc                                    ; $699e: $09
    ld [$430c], a                                 ; $699f: $ea $0c $43
    nop                                           ; $69a2: $00
    ld d, h                                       ; $69a3: $54
    ld [hl+], a                                   ; $69a4: $22
    ld l, l                                       ; $69a5: $6d
    add hl, bc                                    ; $69a6: $09
    ld a, l                                       ; $69a7: $7d
    ccf                                           ; $69a8: $3f

jr_0b1_69a9:
    ld bc, $9100                                  ; $69a9: $01 $00 $91
    dec e                                         ; $69ac: $1d
    cp e                                          ; $69ad: $bb
    ld [hl-], a                                   ; $69ae: $32
    ret z                                         ; $69af: $c8

    ld [$0000], sp                                ; $69b0: $08 $00 $00
    db $e3                                        ; $69b3: $e3
    add hl, bc                                    ; $69b4: $09
    ld h, [hl]                                    ; $69b5: $66
    nop                                           ; $69b6: $00
    inc bc                                        ; $69b7: $03
    nop                                           ; $69b8: $00
    nop                                           ; $69b9: $00
    nop                                           ; $69ba: $00
    rst $38                                       ; $69bb: $ff
    ld a, a                                       ; $69bc: $7f
    db $e3                                        ; $69bd: $e3
    add hl, bc                                    ; $69be: $09
    db $e4                                        ; $69bf: $e4
    add hl, bc                                    ; $69c0: $09
    nop                                           ; $69c1: $00
    nop                                           ; $69c2: $00
    nop                                           ; $69c3: $00
    jr nz, jr_0b1_69a9                            ; $69c4: $20 $e3

    add hl, bc                                    ; $69c6: $09
    db $e4                                        ; $69c7: $e4
    add hl, bc                                    ; $69c8: $09
    nop                                           ; $69c9: $00
    nop                                           ; $69ca: $00
    nop                                           ; $69cb: $00

jr_0b1_69cc:
    jr nz, @+$6f                                  ; $69cc: $20 $6d

    add hl, bc                                    ; $69ce: $09
    ld a, l                                       ; $69cf: $7d
    ccf                                           ; $69d0: $3f
    nop                                           ; $69d1: $00
    nop                                           ; $69d2: $00
    rst $38                                       ; $69d3: $ff
    ld a, a                                       ; $69d4: $7f
    jp Jump_0b1_6709                              ; $69d5: $c3 $09 $67


    nop                                           ; $69d8: $00
    ld [hl+], a                                   ; $69d9: $22
    nop                                           ; $69da: $00
    ret z                                         ; $69db: $c8

    inc b                                         ; $69dc: $04
    adc [hl]                                      ; $69dd: $8e
    dec c                                         ; $69de: $0d
    ld [$210c], a                                 ; $69df: $ea $0c $21
    nop                                           ; $69e2: $00
    ld d, [hl]                                    ; $69e3: $56
    ld a, [hl+]                                   ; $69e4: $2a
    ld c, l                                       ; $69e5: $4d
    add hl, de                                    ; $69e6: $19
    ld a, a                                       ; $69e7: $7f
    ccf                                           ; $69e8: $3f
    nop                                           ; $69e9: $00
    nop                                           ; $69ea: $00
    jp Jump_0b1_6605                              ; $69eb: $c3 $05 $66


    nop                                           ; $69ee: $00
    ld [bc], a                                    ; $69ef: $02
    nop                                           ; $69f0: $00
    nop                                           ; $69f1: $00
    nop                                           ; $69f2: $00
    rst $38                                       ; $69f3: $ff
    ld a, a                                       ; $69f4: $7f
    jp $c305                                      ; $69f5: $c3 $05 $c3


    add hl, bc                                    ; $69f8: $09
    nop                                           ; $69f9: $00
    jr nz, @+$01                                  ; $69fa: $20 $ff

    ld a, a                                       ; $69fc: $7f
    jp $c305                                      ; $69fd: $c3 $05 $c3


    add hl, bc                                    ; $6a00: $09
    nop                                           ; $6a01: $00
    jr nz, jr_0b1_69cc                            ; $6a02: $20 $c8

    inc b                                         ; $6a04: $04
    adc [hl]                                      ; $6a05: $8e
    dec c                                         ; $6a06: $0d
    ld [$000c], a                                 ; $6a07: $ea $0c $00
    nop                                           ; $6a0a: $00
    rst $38                                       ; $6a0b: $ff
    ld a, a                                       ; $6a0c: $7f
    jp nz, $8705                                  ; $6a0d: $c2 $05 $87

    nop                                           ; $6a10: $00
    ld b, l                                       ; $6a11: $45
    nop                                           ; $6a12: $00
    inc d                                         ; $6a13: $14

jr_0b1_6a14:
    ld [bc], a                                    ; $6a14: $02
    ret                                           ; $6a15: $c9


    ld [$033e], sp                                ; $6a16: $08 $3e $03
    nop                                           ; $6a19: $00
    nop                                           ; $6a1a: $00
    cp b                                          ; $6a1b: $b8
    ld l, $2c                                     ; $6a1c: $2e $2c
    dec d                                         ; $6a1e: $15
    ld a, $03                                     ; $6a1f: $3e $03
    nop                                           ; $6a21: $00
    nop                                           ; $6a22: $00
    and d                                         ; $6a23: $a2
    dec b                                         ; $6a24: $05
    ld b, l                                       ; $6a25: $45
    nop                                           ; $6a26: $00
    adc b                                         ; $6a27: $88
    nop                                           ; $6a28: $00
    nop                                           ; $6a29: $00
    nop                                           ; $6a2a: $00
    rst $38                                       ; $6a2b: $ff
    ld a, a                                       ; $6a2c: $7f
    and d                                         ; $6a2d: $a2
    dec b                                         ; $6a2e: $05
    nop                                           ; $6a2f: $00
    jr nz, jr_0b1_6a32                            ; $6a30: $20 $00

jr_0b1_6a32:
    jr nz, @+$01                                  ; $6a32: $20 $ff

    ld a, a                                       ; $6a34: $7f
    and d                                         ; $6a35: $a2
    dec b                                         ; $6a36: $05
    nop                                           ; $6a37: $00
    jr nz, jr_0b1_6a3a                            ; $6a38: $20 $00

jr_0b1_6a3a:
    jr nz, jr_0b1_6a50                            ; $6a3a: $20 $14

    ld [bc], a                                    ; $6a3c: $02
    ret                                           ; $6a3d: $c9


    ld [$033e], sp                                ; $6a3e: $08 $3e $03
    nop                                           ; $6a41: $00
    nop                                           ; $6a42: $00
    rst $38                                       ; $6a43: $ff
    ld a, a                                       ; $6a44: $7f
    and d                                         ; $6a45: $a2
    ld bc, $2000                                  ; $6a46: $01 $00 $20
    ld bc, $6500                                  ; $6a49: $01 $00 $65
    nop                                           ; $6a4c: $00
    add sp, $04                                   ; $6a4d: $e8 $04
    add a                                         ; $6a4f: $87

jr_0b1_6a50:
    nop                                           ; $6a50: $00
    nop                                           ; $6a51: $00
    nop                                           ; $6a52: $00
    inc a                                         ; $6a53: $3c
    scf                                           ; $6a54: $37
    dec hl                                        ; $6a55: $2b
    dec b                                         ; $6a56: $05
    dec l                                         ; $6a57: $2d
    dec d                                         ; $6a58: $15
    nop                                           ; $6a59: $00
    nop                                           ; $6a5a: $00
    and d                                         ; $6a5b: $a2
    ld bc, $0066                                  ; $6a5c: $01 $66 $00

jr_0b1_6a5f:
    inc hl                                        ; $6a5f: $23
    nop                                           ; $6a60: $00
    nop                                           ; $6a61: $00
    nop                                           ; $6a62: $00
    rst $38                                       ; $6a63: $ff
    ld a, a                                       ; $6a64: $7f
    and d                                         ; $6a65: $a2
    ld bc, $2000                                  ; $6a66: $01 $00 $20
    nop                                           ; $6a69: $00
    jr nz, @+$01                                  ; $6a6a: $20 $ff

    ld a, a                                       ; $6a6c: $7f
    and d                                         ; $6a6d: $a2
    ld bc, $2000                                  ; $6a6e: $01 $00 $20
    nop                                           ; $6a71: $00
    jr nz, @+$67                                  ; $6a72: $20 $65

    nop                                           ; $6a74: $00
    add sp, $04                                   ; $6a75: $e8 $04
    add a                                         ; $6a77: $87
    nop                                           ; $6a78: $00
    nop                                           ; $6a79: $00
    nop                                           ; $6a7a: $00
    rst $38                                       ; $6a7b: $ff
    ld a, a                                       ; $6a7c: $7f
    and d                                         ; $6a7d: $a2
    ld bc, $2000                                  ; $6a7e: $01 $00 $20
    nop                                           ; $6a81: $00
    nop                                           ; $6a82: $00
    and d                                         ; $6a83: $a2
    ld bc, $0046                                  ; $6a84: $01 $46 $00
    and a                                         ; $6a87: $a7
    nop                                           ; $6a88: $00
    nop                                           ; $6a89: $00
    nop                                           ; $6a8a: $00
    rst $38                                       ; $6a8b: $ff
    ld a, a                                       ; $6a8c: $7f
    and d                                         ; $6a8d: $a2
    ld bc, $2000                                  ; $6a8e: $01 $00 $20
    nop                                           ; $6a91: $00
    nop                                           ; $6a92: $00
    rst $38                                       ; $6a93: $ff
    ld a, a                                       ; $6a94: $7f
    and d                                         ; $6a95: $a2
    ld bc, $2000                                  ; $6a96: $01 $00 $20
    nop                                           ; $6a99: $00
    nop                                           ; $6a9a: $00
    rst $38                                       ; $6a9b: $ff
    ld a, a                                       ; $6a9c: $7f
    nop                                           ; $6a9d: $00
    jr nz, jr_0b1_6aa0                            ; $6a9e: $20 $00

jr_0b1_6aa0:
    jr nz, jr_0b1_6aa2                            ; $6aa0: $20 $00

jr_0b1_6aa2:
    jr nz, @+$01                                  ; $6aa2: $20 $ff

    ld a, a                                       ; $6aa4: $7f
    nop                                           ; $6aa5: $00
    jr nz, jr_0b1_6aa8                            ; $6aa6: $20 $00

jr_0b1_6aa8:
    jr nz, jr_0b1_6aaa                            ; $6aa8: $20 $00

jr_0b1_6aaa:
    jr nz, @-$5c                                  ; $6aaa: $20 $a2

    ld bc, $0046                                  ; $6aac: $01 $46 $00
    and a                                         ; $6aaf: $a7
    nop                                           ; $6ab0: $00
    nop                                           ; $6ab1: $00
    nop                                           ; $6ab2: $00
    rst $38                                       ; $6ab3: $ff
    ld a, a                                       ; $6ab4: $7f
    nop                                           ; $6ab5: $00
    jr nz, jr_0b1_6a5f                            ; $6ab6: $20 $a7

    nop                                           ; $6ab8: $00
    nop                                           ; $6ab9: $00
    nop                                           ; $6aba: $00
    rst $38                                       ; $6abb: $ff
    ld a, a                                       ; $6abc: $7f
    nop                                           ; $6abd: $00
    jr nz, @-$57                                  ; $6abe: $20 $a7

    nop                                           ; $6ac0: $00
    nop                                           ; $6ac1: $00
    nop                                           ; $6ac2: $00
    nop                                           ; $6ac3: $00
    jr nz, jr_0b1_6ac6                            ; $6ac4: $20 $00

jr_0b1_6ac6:
    jr nz, jr_0b1_6ac8                            ; $6ac6: $20 $00

jr_0b1_6ac8:
    jr nz, jr_0b1_6aca                            ; $6ac8: $20 $00

jr_0b1_6aca:
    nop                                           ; $6aca: $00
    nop                                           ; $6acb: $00
    jr nz, jr_0b1_6ace                            ; $6acc: $20 $00

jr_0b1_6ace:
    jr nz, jr_0b1_6ad0                            ; $6ace: $20 $00

jr_0b1_6ad0:
    jr nz, jr_0b1_6ad2                            ; $6ad0: $20 $00

jr_0b1_6ad2:
    nop                                           ; $6ad2: $00
    nop                                           ; $6ad3: $00
    jr nz, jr_0b1_6ad6                            ; $6ad4: $20 $00

jr_0b1_6ad6:
    jr nz, jr_0b1_6ad8                            ; $6ad6: $20 $00

jr_0b1_6ad8:
    jr nz, jr_0b1_6ada                            ; $6ad8: $20 $00

jr_0b1_6ada:
    jr nz, jr_0b1_6adc                            ; $6ada: $20 $00

jr_0b1_6adc:
    jr nz, jr_0b1_6ade                            ; $6adc: $20 $00

jr_0b1_6ade:
    jr nz, jr_0b1_6ae0                            ; $6ade: $20 $00

jr_0b1_6ae0:
    jr nz, jr_0b1_6ae2                            ; $6ae0: $20 $00

jr_0b1_6ae2:
    jr nz, jr_0b1_6ae4                            ; $6ae2: $20 $00

jr_0b1_6ae4:
    jr nz, jr_0b1_6ae6                            ; $6ae4: $20 $00

jr_0b1_6ae6:
    jr nz, jr_0b1_6b55                            ; $6ae6: $20 $6d

    ld bc, $2000                                  ; $6ae8: $01 $00 $20
    nop                                           ; $6aeb: $00
    jr nz, jr_0b1_6aee                            ; $6aec: $20 $00

jr_0b1_6aee:
    jr nz, jr_0b1_6b5d                            ; $6aee: $20 $6d

    ld bc, $2000                                  ; $6af0: $01 $00 $20
    nop                                           ; $6af3: $00
    jr nz, jr_0b1_6af6                            ; $6af4: $20 $00

jr_0b1_6af6:
    jr nz, jr_0b1_6b65                            ; $6af6: $20 $6d

    ld bc, $0000                                  ; $6af8: $01 $00 $00
    rst $38                                       ; $6afb: $ff
    ld a, a                                       ; $6afc: $7f
    nop                                           ; $6afd: $00
    jr jr_0b1_6b00                                ; $6afe: $18 $00

jr_0b1_6b00:
    jr nz, jr_0b1_6b02                            ; $6b00: $20 $00

jr_0b1_6b02:
    nop                                           ; $6b02: $00
    ccf                                           ; $6b03: $3f
    ld d, a                                       ; $6b04: $57
    nop                                           ; $6b05: $00
    inc e                                         ; $6b06: $1c
    ld h, l                                       ; $6b07: $65
    inc c                                         ; $6b08: $0c
    nop                                           ; $6b09: $00
    inc b                                         ; $6b0a: $04
    nop                                           ; $6b0b: $00
    inc e                                         ; $6b0c: $1c
    nop                                           ; $6b0d: $00
    jr nz, jr_0b1_6b10                            ; $6b0e: $20 $00

jr_0b1_6b10:
    ld [$2000], sp                                ; $6b10: $08 $00 $20
    nop                                           ; $6b13: $00
    inc e                                         ; $6b14: $1c
    nop                                           ; $6b15: $00
    jr nz, jr_0b1_6b18                            ; $6b16: $20 $00

jr_0b1_6b18:
    ld [$2000], sp                                ; $6b18: $08 $00 $20
    nop                                           ; $6b1b: $00
    jr nz, jr_0b1_6b1e                            ; $6b1c: $20 $00

jr_0b1_6b1e:
    jr nz, jr_0b1_6b8d                            ; $6b1e: $20 $6d

    ld bc, $0000                                  ; $6b20: $01 $00 $00
    nop                                           ; $6b23: $00
    jr jr_0b1_6b26                                ; $6b24: $18 $00

jr_0b1_6b26:
    jr nz, jr_0b1_6b28                            ; $6b26: $20 $00

jr_0b1_6b28:
    ld [$2000], sp                                ; $6b28: $08 $00 $20
    nop                                           ; $6b2b: $00
    jr jr_0b1_6b2e                                ; $6b2c: $18 $00

jr_0b1_6b2e:
    jr nz, jr_0b1_6b30                            ; $6b2e: $20 $00

jr_0b1_6b30:
    ld [$0000], sp                                ; $6b30: $08 $00 $00
    rst $38                                       ; $6b33: $ff
    ld a, a                                       ; $6b34: $7f
    nop                                           ; $6b35: $00
    jr nz, jr_0b1_6b3d                            ; $6b36: $20 $05

    inc d                                         ; $6b38: $14
    nop                                           ; $6b39: $00
    nop                                           ; $6b3a: $00
    ccf                                           ; $6b3b: $3f
    ld d, a                                       ; $6b3c: $57

jr_0b1_6b3d:
    dec hl                                        ; $6b3d: $2b
    dec e                                         ; $6b3e: $1d
    nop                                           ; $6b3f: $00
    jr nz, jr_0b1_6b42                            ; $6b40: $20 $00

jr_0b1_6b42:
    nop                                           ; $6b42: $00
    ccf                                           ; $6b43: $3f
    ld d, a                                       ; $6b44: $57
    nop                                           ; $6b45: $00
    jr nz, jr_0b1_6b48                            ; $6b46: $20 $00

jr_0b1_6b48:
    inc b                                         ; $6b48: $04
    nop                                           ; $6b49: $00
    jr nz, jr_0b1_6b8b                            ; $6b4a: $20 $3f

    ld d, a                                       ; $6b4c: $57
    nop                                           ; $6b4d: $00
    jr nz, jr_0b1_6b50                            ; $6b4e: $20 $00

jr_0b1_6b50:
    inc b                                         ; $6b50: $04
    nop                                           ; $6b51: $00
    nop                                           ; $6b52: $00
    adc a                                         ; $6b53: $8f
    dec b                                         ; $6b54: $05

jr_0b1_6b55:
    nop                                           ; $6b55: $00
    inc d                                         ; $6b56: $14
    nop                                           ; $6b57: $00
    jr nz, jr_0b1_6b5a                            ; $6b58: $20 $00

jr_0b1_6b5a:
    nop                                           ; $6b5a: $00
    dec de                                        ; $6b5b: $1b
    rrca                                          ; $6b5c: $0f

jr_0b1_6b5d:
    ld c, e                                       ; $6b5d: $4b
    dec d                                         ; $6b5e: $15
    rst $38                                       ; $6b5f: $ff
    ld a, e                                       ; $6b60: $7b
    nop                                           ; $6b61: $00
    nop                                           ; $6b62: $00
    sbc l                                         ; $6b63: $9d
    ld e, d                                       ; $6b64: $5a

jr_0b1_6b65:
    nop                                           ; $6b65: $00
    inc d                                         ; $6b66: $14
    nop                                           ; $6b67: $00
    jr nz, jr_0b1_6b6a                            ; $6b68: $20 $00

jr_0b1_6b6a:
    nop                                           ; $6b6a: $00
    dec sp                                        ; $6b6b: $3b
    ld l, h                                       ; $6b6c: $6c
    rst $38                                       ; $6b6d: $ff
    ld a, a                                       ; $6b6e: $7f
    xor e                                         ; $6b6f: $ab
    inc h                                         ; $6b70: $24
    ld bc, $fe00                                  ; $6b71: $01 $00 $fe
    ld c, [hl]                                    ; $6b74: $4e
    rst $38                                       ; $6b75: $ff
    ld a, a                                       ; $6b76: $7f
    call z, Call_000_000c                         ; $6b77: $cc $0c $00
    nop                                           ; $6b7a: $00
    ccf                                           ; $6b7b: $3f
    ld d, a                                       ; $6b7c: $57
    nop                                           ; $6b7d: $00
    jr jr_0b1_6b80                                ; $6b7e: $18 $00

jr_0b1_6b80:
    jr nz, jr_0b1_6b82                            ; $6b80: $20 $00

jr_0b1_6b82:
    jr nz, @+$41                                  ; $6b82: $20 $3f

    ld d, a                                       ; $6b84: $57
    nop                                           ; $6b85: $00
    jr jr_0b1_6b88                                ; $6b86: $18 $00

jr_0b1_6b88:
    jr nz, jr_0b1_6b8a                            ; $6b88: $20 $00

jr_0b1_6b8a:
    db $10                                        ; $6b8a: $10

jr_0b1_6b8b:
    rst $18                                       ; $6b8b: $df
    daa                                           ; $6b8c: $27

jr_0b1_6b8d:
    ld a, [bc]                                    ; $6b8d: $0a
    ld bc, $6b9c                                  ; $6b8e: $01 $9c $6b
    ld hl, $b800                                  ; $6b91: $21 $00 $b8
    ld [de], a                                    ; $6b94: $12
    sbc $57                                       ; $6b95: $de $57
    ld l, l                                       ; $6b97: $6d

jr_0b1_6b98:
    ld bc, $0800                                  ; $6b98: $01 $00 $08
    ld a, [hl]                                    ; $6b9b: $7e
    jr nz, jr_0b1_6b98                            ; $6b9c: $20 $fa

    ld d, d                                       ; $6b9e: $52
    ret                                           ; $6b9f: $c9


    stop                                          ; $6ba0: $10 $00
    nop                                           ; $6ba2: $00
    dec sp                                        ; $6ba3: $3b
    ld l, h                                       ; $6ba4: $6c
    ld e, [hl]                                    ; $6ba5: $5e
    ld e, d                                       ; $6ba6: $5a
    ld [bc], a                                    ; $6ba7: $02
    inc e                                         ; $6ba8: $1c
    nop                                           ; $6ba9: $00
    inc b                                         ; $6baa: $04
    dec sp                                        ; $6bab: $3b
    ld l, $df                                     ; $6bac: $2e $df
    ld [hl], a                                    ; $6bae: $77
    ld d, c                                       ; $6baf: $51
    add hl, de                                    ; $6bb0: $19
    nop                                           ; $6bb1: $00
    inc c                                         ; $6bb2: $0c
    dec sp                                        ; $6bb3: $3b
    ld l, $31                                     ; $6bb4: $2e $31
    ld de, $573f                                  ; $6bb6: $11 $3f $57
    nop                                           ; $6bb9: $00
    jr nz, jr_0b1_6bf7                            ; $6bba: $20 $3b

    ld l, $31                                     ; $6bbc: $2e $31
    ld de, $573f                                  ; $6bbe: $11 $3f $57
    ld bc, $be04                                  ; $6bc1: $01 $04 $be
    inc de                                        ; $6bc4: $13
    ld l, h                                       ; $6bc5: $6c
    add hl, de                                    ; $6bc6: $19
    rst $38                                       ; $6bc7: $ff
    ld a, a                                       ; $6bc8: $7f
    inc b                                         ; $6bc9: $04
    inc b                                         ; $6bca: $04
    ld hl, sp+$11                                 ; $6bcb: $f8 $11
    db $db                                        ; $6bcd: $db
    ld h, [hl]                                    ; $6bce: $66
    rst $38                                       ; $6bcf: $ff
    dec sp                                        ; $6bd0: $3b
    inc bc                                        ; $6bd1: $03
    inc b                                         ; $6bd2: $04
    cp a                                          ; $6bd3: $bf
    ld l, d                                       ; $6bd4: $6a
    dec d                                         ; $6bd5: $15
    inc d                                         ; $6bd6: $14
    and $00                                       ; $6bd7: $e6 $00
    ld bc, $3304                                  ; $6bd9: $01 $04 $33
    ld c, h                                       ; $6bdc: $4c
    rst $18                                       ; $6bdd: $df
    ld [hl], b                                    ; $6bde: $70
    sbc b                                         ; $6bdf: $98
    jr nz, jr_0b1_6be2                            ; $6be0: $20 $00

jr_0b1_6be2:
    inc c                                         ; $6be2: $0c
    dec sp                                        ; $6be3: $3b
    ld l, $1e                                     ; $6be4: $2e $1e
    ld a, h                                       ; $6be6: $7c
    inc c                                         ; $6be7: $0c
    inc a                                         ; $6be8: $3c
    nop                                           ; $6be9: $00
    ld [$1131], sp                                ; $6bea: $08 $31 $11
    nop                                           ; $6bed: $00
    jr jr_0b1_6bf0                                ; $6bee: $18 $00

jr_0b1_6bf0:
    jr nz, jr_0b1_6bf2                            ; $6bf0: $20 $00

jr_0b1_6bf2:
    jr nz, @+$33                                  ; $6bf2: $20 $31

    ld de, $1800                                  ; $6bf4: $11 $00 $18

jr_0b1_6bf7:
    nop                                           ; $6bf7: $00
    jr nz, jr_0b1_6c1c                            ; $6bf8: $20 $22

    nop                                           ; $6bfa: $00
    jp c, $cf0a                                   ; $6bfb: $da $0a $cf

    dec [hl]                                      ; $6bfe: $35
    ld e, d                                       ; $6bff: $5a
    ld c, a                                       ; $6c00: $4f
    nop                                           ; $6c01: $00
    inc b                                         ; $6c02: $04
    ld a, [de]                                    ; $6c03: $1a
    inc d                                         ; $6c04: $14
    rst $38                                       ; $6c05: $ff
    jr nc, jr_0b1_6c15                            ; $6c06: $30 $0d

    ld [$0447], sp                                ; $6c08: $08 $47 $04
    sbc a                                         ; $6c0b: $9f
    jr z, jr_0b1_6c8a                             ; $6c0c: $28 $7c

    rla                                           ; $6c0e: $17
    ld e, a                                       ; $6c0f: $5f
    ld e, [hl]                                    ; $6c10: $5e
    ld [bc], a                                    ; $6c11: $02
    inc b                                         ; $6c12: $04
    dec [hl]                                      ; $6c13: $35
    ld d, h                                       ; $6c14: $54

jr_0b1_6c15:
    ld [de], a                                    ; $6c15: $12
    inc c                                         ; $6c16: $0c
    inc a                                         ; $6c17: $3c
    ld [hl], b                                    ; $6c18: $70
    nop                                           ; $6c19: $00
    nop                                           ; $6c1a: $00
    inc d                                         ; $6c1b: $14

jr_0b1_6c1c:
    jr nc, jr_0b1_6c5d                            ; $6c1c: $30 $3f

    ld d, [hl]                                    ; $6c1e: $56
    ld [$0028], sp                                ; $6c1f: $08 $28 $00
    nop                                           ; $6c22: $00
    nop                                           ; $6c23: $00
    jr nz, jr_0b1_6c2c                            ; $6c24: $20 $06

    inc e                                         ; $6c26: $1c
    ld bc, $0000                                  ; $6c27: $01 $00 $00
    jr nz, jr_0b1_6c2c                            ; $6c2a: $20 $00

jr_0b1_6c2c:
    jr nz, jr_0b1_6c34                            ; $6c2c: $20 $06

    inc e                                         ; $6c2e: $1c
    ld bc, $0000                                  ; $6c2f: $01 $00 $00
    nop                                           ; $6c32: $00
    nop                                           ; $6c33: $00

jr_0b1_6c34:
    inc d                                         ; $6c34: $14
    rst $00                                       ; $6c35: $c7
    inc d                                         ; $6c36: $14
    nop                                           ; $6c37: $00
    inc e                                         ; $6c38: $1c
    ld [bc], a                                    ; $6c39: $02
    nop                                           ; $6c3a: $00
    inc c                                         ; $6c3b: $0c
    ld [$2000], sp                                ; $6c3c: $08 $00 $20
    rla                                           ; $6c3f: $17
    db $10                                        ; $6c40: $10
    ld [bc], a                                    ; $6c41: $02
    nop                                           ; $6c42: $00
    rst $38                                       ; $6c43: $ff
    ld [hl], e                                    ; $6c44: $73
    sub a                                         ; $6c45: $97
    jr jr_0b1_6c93                                ; $6c46: $18 $4b

    ld [$0000], sp                                ; $6c48: $08 $00 $00
    ld [de], a                                    ; $6c4b: $12
    ld d, b                                       ; $6c4c: $50
    add hl, bc                                    ; $6c4d: $09
    inc d                                         ; $6c4e: $14
    jr c, jr_0b1_6cb5                             ; $6c4f: $38 $64

    ld bc, $1a00                                  ; $6c51: $01 $00 $1a
    db $10                                        ; $6c54: $10
    cp a                                          ; $6c55: $bf
    ld b, l                                       ; $6c56: $45
    rra                                           ; $6c57: $1f
    ld a, a                                       ; $6c58: $7f
    nop                                           ; $6c59: $00
    nop                                           ; $6c5a: $00
    rst $38                                       ; $6c5b: $ff
    ld a, a                                       ; $6c5c: $7f

jr_0b1_6c5d:
    nop                                           ; $6c5d: $00
    jr nz, jr_0b1_6c66                            ; $6c5e: $20 $06

    jr jr_0b1_6c62                                ; $6c60: $18 $00

jr_0b1_6c62:
    jr nz, @+$01                                  ; $6c62: $20 $ff

    ld a, a                                       ; $6c64: $7f
    nop                                           ; $6c65: $00

jr_0b1_6c66:
    jr nz, jr_0b1_6c6e                            ; $6c66: $20 $06

    jr jr_0b1_6c6a                                ; $6c68: $18 $00

jr_0b1_6c6a:
    inc b                                         ; $6c6a: $04
    nop                                           ; $6c6b: $00
    jr jr_0b1_6c73                                ; $6c6c: $18 $05

jr_0b1_6c6e:
    inc d                                         ; $6c6e: $14
    nop                                           ; $6c6f: $00
    jr nz, jr_0b1_6c72                            ; $6c70: $20 $00

jr_0b1_6c72:
    nop                                           ; $6c72: $00

jr_0b1_6c73:
    dec [hl]                                      ; $6c73: $35
    ld e, b                                       ; $6c74: $58
    ld a, $78                                     ; $6c75: $3e $78
    ld b, $18                                     ; $6c77: $06 $18
    ld [bc], a                                    ; $6c79: $02
    nop                                           ; $6c7a: $00
    rst $38                                       ; $6c7b: $ff
    dec hl                                        ; $6c7c: $2b
    db $ed                                        ; $6c7d: $ed
    db $10                                        ; $6c7e: $10
    rst $38                                       ; $6c7f: $ff
    ld l, a                                       ; $6c80: $6f
    ld [bc], a                                    ; $6c81: $02
    nop                                           ; $6c82: $00
    dec bc                                        ; $6c83: $0b
    inc [hl]                                      ; $6c84: $34
    ld d, d                                       ; $6c85: $52
    add hl, hl                                    ; $6c86: $29
    ld [de], a                                    ; $6c87: $12
    ld d, b                                       ; $6c88: $50
    inc bc                                        ; $6c89: $03

jr_0b1_6c8a:
    nop                                           ; $6c8a: $00
    sbc a                                         ; $6c8b: $9f
    ld a, a                                       ; $6c8c: $7f
    dec de                                        ; $6c8d: $1b
    inc d                                         ; $6c8e: $14
    ld h, l                                       ; $6c8f: $65
    inc h                                         ; $6c90: $24
    nop                                           ; $6c91: $00
    nop                                           ; $6c92: $00

jr_0b1_6c93:
    cp a                                          ; $6c93: $bf
    ld a, l                                       ; $6c94: $7d
    rst $38                                       ; $6c95: $ff
    ld a, a                                       ; $6c96: $7f
    ld c, $38                                     ; $6c97: $0e $38
    nop                                           ; $6c99: $00
    nop                                           ; $6c9a: $00
    rst $38                                       ; $6c9b: $ff
    ld a, e                                       ; $6c9c: $7b
    nop                                           ; $6c9d: $00
    inc e                                         ; $6c9e: $1c
    ld b, h                                       ; $6c9f: $44
    inc c                                         ; $6ca0: $0c
    nop                                           ; $6ca1: $00
    nop                                           ; $6ca2: $00

jr_0b1_6ca3:
    nop                                           ; $6ca3: $00
    jr nz, jr_0b1_6cae                            ; $6ca4: $20 $08

    inc h                                         ; $6ca6: $24
    ld bc, $010c                                  ; $6ca7: $01 $0c $01
    ld [$6038], sp                                ; $6caa: $08 $38 $60
    rlca                                          ; $6cad: $07

jr_0b1_6cae:
    inc e                                         ; $6cae: $1c
    inc c                                         ; $6caf: $0c
    jr nc, jr_0b1_6cf5                            ; $6cb0: $30 $43

    inc b                                         ; $6cb2: $04
    ld e, $18                                     ; $6cb3: $1e $18

jr_0b1_6cb5:
    sub a                                         ; $6cb5: $97
    ld b, $9f                                     ; $6cb6: $06 $9f
    daa                                           ; $6cb8: $27
    ld [bc], a                                    ; $6cb9: $02
    inc c                                         ; $6cba: $0c
    ld a, h                                       ; $6cbb: $7c
    ld l, a                                       ; $6cbc: $6f
    inc bc                                        ; $6cbd: $03
    ld [hl], h                                    ; $6cbe: $74
    ld l, $2d                                     ; $6cbf: $2e $2d
    ld bc, $bf04                                  ; $6cc1: $01 $04 $bf
    rla                                           ; $6cc4: $17
    or d                                          ; $6cc5: $b2
    ld [$7f9f], sp                                ; $6cc6: $08 $9f $7f
    nop                                           ; $6cc9: $00
    nop                                           ; $6cca: $00
    ld e, l                                       ; $6ccb: $5d
    ld [hl], h                                    ; $6ccc: $74
    rst $18                                       ; $6ccd: $df
    ld a, [hl]                                    ; $6cce: $7e
    adc d                                         ; $6ccf: $8a
    inc h                                         ; $6cd0: $24
    inc bc                                        ; $6cd1: $03
    nop                                           ; $6cd2: $00
    add hl, de                                    ; $6cd3: $19
    inc d                                         ; $6cd4: $14
    rst $38                                       ; $6cd5: $ff
    ld e, e                                       ; $6cd6: $5b
    nop                                           ; $6cd7: $00
    inc e                                         ; $6cd8: $1c
    nop                                           ; $6cd9: $00
    inc d                                         ; $6cda: $14
    inc [hl]                                      ; $6cdb: $34
    ld d, h                                       ; $6cdc: $54
    dec bc                                        ; $6cdd: $0b
    inc l                                         ; $6cde: $2c
    ld a, $78                                     ; $6cdf: $3e $78
    nop                                           ; $6ce1: $00
    nop                                           ; $6ce2: $00
    rrca                                          ; $6ce3: $0f
    ld b, b                                       ; $6ce4: $40
    dec sp                                        ; $6ce5: $3b
    ld l, h                                       ; $6ce6: $6c
    inc bc                                        ; $6ce7: $03
    inc c                                         ; $6ce8: $0c
    ld [bc], a                                    ; $6ce9: $02
    nop                                           ; $6cea: $00
    cp $7b                                        ; $6ceb: $fe $7b
    add hl, de                                    ; $6ced: $19
    jr jr_0b1_6ca3                                ; $6cee: $18 $b3

    dec h                                         ; $6cf0: $25
    ld b, h                                       ; $6cf1: $44
    inc c                                         ; $6cf2: $0c
    sbc a                                         ; $6cf3: $9f
    ld a, h                                       ; $6cf4: $7c

jr_0b1_6cf5:
    sub h                                         ; $6cf5: $94
    dec e                                         ; $6cf6: $1d
    rra                                           ; $6cf7: $1f
    ld h, a                                       ; $6cf8: $67
    ld bc, $f200                                  ; $6cf9: $01 $00 $f2
    ld bc, $2808                                  ; $6cfc: $01 $08 $28
    cp a                                          ; $6cff: $bf
    rla                                           ; $6d00: $17
    inc bc                                        ; $6d01: $03
    inc c                                         ; $6d02: $0c
    rra                                           ; $6d03: $1f
    ld a, l                                       ; $6d04: $7d
    rst $38                                       ; $6d05: $ff
    rra                                           ; $6d06: $1f
    ccf                                           ; $6d07: $3f
    ld a, a                                       ; $6d08: $7f
    nop                                           ; $6d09: $00
    nop                                           ; $6d0a: $00
    rst $38                                       ; $6d0b: $ff
    ld a, a                                       ; $6d0c: $7f
    nop                                           ; $6d0d: $00
    jr nz, jr_0b1_6d1a                            ; $6d0e: $20 $0a

    nop                                           ; $6d10: $00
    nop                                           ; $6d11: $00
    nop                                           ; $6d12: $00
    inc d                                         ; $6d13: $14
    ld d, b                                       ; $6d14: $50
    ld a, [hl-]                                   ; $6d15: $3a
    ld l, b                                       ; $6d16: $68
    nop                                           ; $6d17: $00
    jr nz, jr_0b1_6d1c                            ; $6d18: $20 $02

jr_0b1_6d1a:
    inc b                                         ; $6d1a: $04
    ld a, [bc]                                    ; $6d1b: $0a

jr_0b1_6d1c:
    inc l                                         ; $6d1c: $2c
    cp b                                          ; $6d1d: $b8
    ld c, h                                       ; $6d1e: $4c
    ld c, [hl]                                    ; $6d1f: $4e
    db $10                                        ; $6d20: $10
    ld [hl+], a                                   ; $6d21: $22
    ld [$075d], sp                                ; $6d22: $08 $5d $07
    ei                                            ; $6d25: $fb
    add hl, sp                                    ; $6d26: $39
    inc bc                                        ; $6d27: $03
    ld [hl], h                                    ; $6d28: $74
    ld [bc], a                                    ; $6d29: $02
    ld [$6038], sp                                ; $6d2a: $08 $38 $60
    sbc l                                         ; $6d2d: $9d
    ld l, a                                       ; $6d2e: $6f
    dec d                                         ; $6d2f: $15
    ld [hl-], a                                   ; $6d30: $32
    ld h, e                                       ; $6d31: $63
    nop                                           ; $6d32: $00
    sub a                                         ; $6d33: $97
    ld a, [bc]                                    ; $6d34: $0a
    ld l, d                                       ; $6d35: $6a
    inc l                                         ; $6d36: $2c
    rst $38                                       ; $6d37: $ff
    dec hl                                        ; $6d38: $2b
    ld bc, $5d04                                  ; $6d39: $01 $04 $5d
    ld a, b                                       ; $6d3c: $78
    ld e, h                                       ; $6d3d: $5c
    dec de                                        ; $6d3e: $1b
    inc c                                         ; $6d3f: $0c
    jr c, jr_0b1_6d42                             ; $6d40: $38 $00

jr_0b1_6d42:
    nop                                           ; $6d42: $00
    sub l                                         ; $6d43: $95
    ld d, $7e                                     ; $6d44: $16 $7e
    ld a, e                                       ; $6d46: $7b
    nop                                           ; $6d47: $00
    inc e                                         ; $6d48: $1c
    nop                                           ; $6d49: $00
    nop                                           ; $6d4a: $00
    ld [hl-], a                                   ; $6d4b: $32
    ld c, b                                       ; $6d4c: $48
    rlca                                          ; $6d4d: $07
    jr nz, jr_0b1_6d8c                            ; $6d4e: $20 $3c

    ld [hl], b                                    ; $6d50: $70
    inc bc                                        ; $6d51: $03
    inc b                                         ; $6d52: $04
    db $fc                                        ; $6d53: $fc
    inc l                                         ; $6d54: $2c
    ld [de], a                                    ; $6d55: $12
    db $10                                        ; $6d56: $10
    sbc a                                         ; $6d57: $9f
    ld h, d                                       ; $6d58: $62
    ld [hl+], a                                   ; $6d59: $22
    nop                                           ; $6d5a: $00
    dec sp                                        ; $6d5b: $3b
    ld l, $2f                                     ; $6d5c: $2e $2f
    ld de, $56fe                                  ; $6d5e: $11 $fe $56
    nop                                           ; $6d61: $00
    nop                                           ; $6d62: $00
    jr jr_0b1_6d93                                ; $6d63: $18 $2e

    inc a                                         ; $6d65: $3c
    ld e, a                                       ; $6d66: $5f
    ld c, b                                       ; $6d67: $48
    jr nz, jr_0b1_6dac                            ; $6d68: $20 $42

    inc b                                         ; $6d6a: $04
    inc sp                                        ; $6d6b: $33
    ld [de], a                                    ; $6d6c: $12
    sbc a                                         ; $6d6d: $9f
    rra                                           ; $6d6e: $1f
    rlca                                          ; $6d6f: $07
    jr z, jr_0b1_6d72                             ; $6d70: $28 $00

jr_0b1_6d72:
    inc b                                         ; $6d72: $04
    rra                                           ; $6d73: $1f
    inc e                                         ; $6d74: $1c
    ld c, e                                       ; $6d75: $4b
    db $10                                        ; $6d76: $10
    rst $38                                       ; $6d77: $ff
    ccf                                           ; $6d78: $3f
    nop                                           ; $6d79: $00
    nop                                           ; $6d7a: $00
    rra                                           ; $6d7b: $1f
    ld a, [hl]                                    ; $6d7c: $7e
    nop                                           ; $6d7d: $00
    jr nz, @+$01                                  ; $6d7e: $20 $ff

    ld a, a                                       ; $6d80: $7f
    nop                                           ; $6d81: $00
    nop                                           ; $6d82: $00
    ld a, [bc]                                    ; $6d83: $0a
    inc l                                         ; $6d84: $2c
    ld bc, $1118                                  ; $6d85: $01 $18 $11
    ld b, h                                       ; $6d88: $44
    ld [bc], a                                    ; $6d89: $02
    nop                                           ; $6d8a: $00
    cp h                                          ; $6d8b: $bc

jr_0b1_6d8c:
    ld b, c                                       ; $6d8c: $41
    ld d, d                                       ; $6d8d: $52
    inc d                                         ; $6d8e: $14
    rst $38                                       ; $6d8f: $ff
    ld l, d                                       ; $6d90: $6a
    ld [bc], a                                    ; $6d91: $02
    nop                                           ; $6d92: $00

jr_0b1_6d93:
    sbc e                                         ; $6d93: $9b
    ld d, d                                       ; $6d94: $52
    ld l, l                                       ; $6d95: $6d
    add hl, sp                                    ; $6d96: $39
    rst $38                                       ; $6d97: $ff
    ld a, a                                       ; $6d98: $7f
    nop                                           ; $6d99: $00
    nop                                           ; $6d9a: $00
    xor a                                         ; $6d9b: $af
    ld de, $7fff                                  ; $6d9c: $11 $ff $7f
    ld a, h                                       ; $6d9f: $7c
    ld [hl+], a                                   ; $6da0: $22
    nop                                           ; $6da1: $00
    ld [$5633], sp                                ; $6da2: $08 $33 $56
    sbc [hl]                                      ; $6da5: $9e
    ld a, e                                       ; $6da6: $7b
    adc $1c                                       ; $6da7: $ce $1c
    nop                                           ; $6da9: $00
    nop                                           ; $6daa: $00
    rst $38                                       ; $6dab: $ff

jr_0b1_6dac:
    ld h, a                                       ; $6dac: $67
    rra                                           ; $6dad: $1f
    inc e                                         ; $6dae: $1c
    adc d                                         ; $6daf: $8a
    nop                                           ; $6db0: $00
    nop                                           ; $6db1: $00
    nop                                           ; $6db2: $00
    inc a                                         ; $6db3: $3c
    ld [hl], b                                    ; $6db4: $70
    rst $38                                       ; $6db5: $ff
    ld a, a                                       ; $6db6: $7f
    nop                                           ; $6db7: $00
    jr nz, jr_0b1_6dbb                            ; $6db8: $20 $01

    nop                                           ; $6dba: $00

jr_0b1_6dbb:
    jr c, jr_0b1_6e1d                             ; $6dbb: $38 $60

    nop                                           ; $6dbd: $00
    jr nz, jr_0b1_6dc7                            ; $6dbe: $20 $07

    jr nz, jr_0b1_6dc2                            ; $6dc0: $20 $00

jr_0b1_6dc2:
    nop                                           ; $6dc2: $00
    ld a, [de]                                    ; $6dc3: $1a
    ld sp, $1c47                                  ; $6dc4: $31 $47 $1c

jr_0b1_6dc7:
    sbc a                                         ; $6dc7: $9f
    ld e, [hl]                                    ; $6dc8: $5e
    ld bc, $7604                                  ; $6dc9: $01 $04 $76
    ld h, [hl]                                    ; $6dcc: $66

jr_0b1_6dcd:
    ld a, a                                       ; $6dcd: $7f
    ld a, a                                       ; $6dce: $7f
    ccf                                           ; $6dcf: $3f
    ld a, [hl]                                    ; $6dd0: $7e
    ld bc, $bf00                                  ; $6dd1: $01 $00 $bf
    ld l, [hl]                                    ; $6dd4: $6e
    sub b                                         ; $6dd5: $90
    inc e                                         ; $6dd6: $1c
    cp c                                          ; $6dd7: $b9
    inc h                                         ; $6dd8: $24
    ld [bc], a                                    ; $6dd9: $02
    inc b                                         ; $6dda: $04
    dec d                                         ; $6ddb: $15
    ld h, b                                       ; $6ddc: $60
    rst $18                                       ; $6ddd: $df
    ld a, a                                       ; $6dde: $7f
    db $dd                                        ; $6ddf: $dd
    ld [hl], l                                    ; $6de0: $75
    ld hl, $de00                                  ; $6de1: $21 $00 $de
    ld c, e                                       ; $6de4: $4b
    add hl, de                                    ; $6de5: $19
    db $10                                        ; $6de6: $10
    inc sp                                        ; $6de7: $33
    ld d, b                                       ; $6de8: $50
    nop                                           ; $6de9: $00
    nop                                           ; $6dea: $00
    jr jr_0b1_6e4d                                ; $6deb: $18 $60

    nop                                           ; $6ded: $00
    jr nz, @+$3f                                  ; $6dee: $20 $3d

    ld a, b                                       ; $6df0: $78
    nop                                           ; $6df1: $00
    nop                                           ; $6df2: $00
    dec [hl]                                      ; $6df3: $35
    ld d, h                                       ; $6df4: $54
    ld a, [bc]                                    ; $6df5: $0a
    jr z, jr_0b1_6df8                             ; $6df6: $28 $00

jr_0b1_6df8:
    inc e                                         ; $6df8: $1c
    ld bc, $0800                                  ; $6df9: $01 $00 $08
    inc h                                         ; $6dfc: $24
    ld [bc], a                                    ; $6dfd: $02
    inc e                                         ; $6dfe: $1c
    dec c                                         ; $6dff: $0d
    inc a                                         ; $6e00: $3c
    nop                                           ; $6e01: $00
    nop                                           ; $6e02: $00
    inc sp                                        ; $6e03: $33
    ld c, l                                       ; $6e04: $4d
    sbc [hl]                                      ; $6e05: $9e
    ld a, b                                       ; $6e06: $78
    ld b, $18                                     ; $6e07: $06 $18
    nop                                           ; $6e09: $00
    inc b                                         ; $6e0a: $04
    ld [hl], h                                    ; $6e0b: $74
    jr z, jr_0b1_6dcd                             ; $6e0c: $28 $bf

    ld l, d                                       ; $6e0e: $6a
    ld c, d                                       ; $6e0f: $4a
    ld [$0441], sp                                ; $6e10: $08 $41 $04
    call c, Call_0b1_7d5d                         ; $6e13: $dc $5d $7d
    dec sp                                        ; $6e16: $3b
    ld a, a                                       ; $6e17: $7f
    ld a, a                                       ; $6e18: $7f
    inc hl                                        ; $6e19: $23
    nop                                           ; $6e1a: $00
    ld e, c                                       ; $6e1b: $59
    ld b, b                                       ; $6e1c: $40

jr_0b1_6e1d:
    add hl, hl                                    ; $6e1d: $29
    jr z, jr_0b1_6e1d                             ; $6e1e: $28 $fd

    ccf                                           ; $6e20: $3f
    nop                                           ; $6e21: $00
    nop                                           ; $6e22: $00
    ld [de], a                                    ; $6e23: $12
    ld c, h                                       ; $6e24: $4c
    add hl, de                                    ; $6e25: $19
    ld h, h                                       ; $6e26: $64
    nop                                           ; $6e27: $00
    jr nz, jr_0b1_6e2a                            ; $6e28: $20 $00

jr_0b1_6e2a:
    nop                                           ; $6e2a: $00
    ld [$0020], sp                                ; $6e2b: $08 $20 $00
    jr nz, jr_0b1_6e3c                            ; $6e2e: $20 $0c

    inc [hl]                                      ; $6e30: $34
    nop                                           ; $6e31: $00
    nop                                           ; $6e32: $00
    dec bc                                        ; $6e33: $0b
    jr nc, jr_0b1_6e46                            ; $6e34: $30 $10

    ld b, h                                       ; $6e36: $44
    ld [bc], a                                    ; $6e37: $02
    inc e                                         ; $6e38: $1c
    nop                                           ; $6e39: $00
    inc b                                         ; $6e3a: $04
    cp c                                          ; $6e3b: $b9

jr_0b1_6e3c:
    ld l, b                                       ; $6e3c: $68
    add hl, de                                    ; $6e3d: $19
    inc hl                                        ; $6e3e: $23
    adc d                                         ; $6e3f: $8a
    inc e                                         ; $6e40: $1c
    jr nz, @+$06                                  ; $6e41: $20 $04

    rst $38                                       ; $6e43: $ff
    rra                                           ; $6e44: $1f
    ld l, [hl]                                    ; $6e45: $6e

jr_0b1_6e46:
    ld hl, $76bc                                  ; $6e46: $21 $bc $76
    nop                                           ; $6e49: $00
    inc b                                         ; $6e4a: $04
    ldh a, [$0d]                                  ; $6e4b: $f0 $0d

jr_0b1_6e4d:
    rst $18                                       ; $6e4d: $df
    ld d, [hl]                                    ; $6e4e: $56
    adc b                                         ; $6e4f: $88
    nop                                           ; $6e50: $00
    nop                                           ; $6e51: $00
    nop                                           ; $6e52: $00
    cp [hl]                                       ; $6e53: $be
    ld a, [hl]                                    ; $6e54: $7e
    dec b                                         ; $6e55: $05
    jr jr_0b1_6e62                                ; $6e56: $18 $0a

    inc l                                         ; $6e58: $2c
    jr nz, jr_0b1_6e5b                            ; $6e59: $20 $00

jr_0b1_6e5b:
    add hl, de                                    ; $6e5b: $19
    dec bc                                        ; $6e5c: $0b
    nop                                           ; $6e5d: $00
    jr nz, @+$01                                  ; $6e5e: $20 $ff

    ld c, e                                       ; $6e60: $4b
    nop                                           ; $6e61: $00

jr_0b1_6e62:
    nop                                           ; $6e62: $00
    sbc $7b                                       ; $6e63: $de $7b
    nop                                           ; $6e65: $00
    inc e                                         ; $6e66: $1c
    ld [$0024], sp                                ; $6e67: $08 $24 $00
    nop                                           ; $6e6a: $00
    dec c                                         ; $6e6b: $0d
    inc a                                         ; $6e6c: $3c
    inc de                                        ; $6e6d: $13
    ld d, b                                       ; $6e6e: $50
    nop                                           ; $6e6f: $00
    jr nz, jr_0b1_6e73                            ; $6e70: $20 $01

    nop                                           ; $6e72: $00

jr_0b1_6e73:
    halt                                          ; $6e73: $76
    ld [de], a                                    ; $6e74: $12
    ld l, h                                       ; $6e75: $6c
    ld de, $2f7d                                  ; $6e76: $11 $7d $2f
    nop                                           ; $6e79: $00
    inc b                                         ; $6e7a: $04
    dec [hl]                                      ; $6e7b: $35
    ld c, b                                       ; $6e7c: $48
    reti                                          ; $6e7d: $d9


    ld e, $09                                     ; $6e7e: $1e $09
    ld bc, $0400                                  ; $6e80: $01 $00 $04
    ld e, h                                       ; $6e83: $5c
    inc hl                                        ; $6e84: $23
    dec l                                         ; $6e85: $2d
    add hl, hl                                    ; $6e86: $29
    rst $38                                       ; $6e87: $ff
    ld e, [hl]                                    ; $6e88: $5e
    nop                                           ; $6e89: $00
    inc b                                         ; $6e8a: $04
    ld a, l                                       ; $6e8b: $7d
    rrca                                          ; $6e8c: $0f
    sbc l                                         ; $6e8d: $9d
    halt                                          ; $6e8e: $76
    adc $20                                       ; $6e8f: $ce $20
    nop                                           ; $6e91: $00
    nop                                           ; $6e92: $00
    dec e                                         ; $6e93: $1d
    inc de                                        ; $6e94: $13
    nop                                           ; $6e95: $00
    jr nz, @-$3f                                  ; $6e96: $20 $bf

    inc de                                        ; $6e98: $13
    nop                                           ; $6e99: $00
    nop                                           ; $6e9a: $00
    rst $38                                       ; $6e9b: $ff
    ld a, a                                       ; $6e9c: $7f
    nop                                           ; $6e9d: $00
    inc e                                         ; $6e9e: $1c
    nop                                           ; $6e9f: $00
    inc c                                         ; $6ea0: $0c
    ld [bc], a                                    ; $6ea1: $02
    nop                                           ; $6ea2: $00
    ld a, e                                       ; $6ea3: $7b
    inc h                                         ; $6ea4: $24
    jr c, jr_0b1_6f0b                             ; $6ea5: $38 $64

    nop                                           ; $6ea7: $00
    jr nz, @+$04                                  ; $6ea8: $20 $02

    ld [$0df1], sp                                ; $6eaa: $08 $f1 $0d
    cp [hl]                                       ; $6ead: $be
    dec sp                                        ; $6eae: $3b
    inc d                                         ; $6eaf: $14
    ld e, b                                       ; $6eb0: $58
    ld [bc], a                                    ; $6eb1: $02
    ld [$0c15], sp                                ; $6eb2: $08 $15 $0c
    scf                                           ; $6eb5: $37
    ld h, b                                       ; $6eb6: $60
    db $10                                        ; $6eb7: $10
    ld d, $23                                     ; $6eb8: $16 $23
    inc b                                         ; $6eba: $04
    inc e                                         ; $6ebb: $1c
    ld [hl], h                                    ; $6ebc: $74
    cp a                                          ; $6ebd: $bf
    ld h, a                                       ; $6ebe: $67
    ld d, a                                       ; $6ebf: $57
    dec h                                         ; $6ec0: $25
    jr nz, jr_0b1_6ec3                            ; $6ec1: $20 $00

jr_0b1_6ec3:
    inc de                                        ; $6ec3: $13
    ld d, b                                       ; $6ec4: $50
    ei                                            ; $6ec5: $fb
    ld a, [bc]                                    ; $6ec6: $0a

jr_0b1_6ec7:
    rst $18                                       ; $6ec7: $df
    ld a, l                                       ; $6ec8: $7d
    nop                                           ; $6ec9: $00
    nop                                           ; $6eca: $00
    cp a                                          ; $6ecb: $bf
    inc de                                        ; $6ecc: $13
    rst $38                                       ; $6ecd: $ff
    ld a, a                                       ; $6ece: $7f
    nop                                           ; $6ecf: $00
    jr nz, jr_0b1_6ed2                            ; $6ed0: $20 $00

jr_0b1_6ed2:
    nop                                           ; $6ed2: $00
    rst $38                                       ; $6ed3: $ff
    ld a, a                                       ; $6ed4: $7f
    nop                                           ; $6ed5: $00
    jr nz, @+$16                                  ; $6ed6: $20 $14

    ld e, b                                       ; $6ed8: $58
    nop                                           ; $6ed9: $00
    inc b                                         ; $6eda: $04
    ld a, $7c                                     ; $6edb: $3e $7c
    ld a, a                                       ; $6edd: $7f
    dec a                                         ; $6ede: $3d
    ld a, [bc]                                    ; $6edf: $0a
    jr nc, jr_0b1_6f03                            ; $6ee0: $30 $21

    inc b                                         ; $6ee2: $04
    inc de                                        ; $6ee3: $13
    ld d, b                                       ; $6ee4: $50
    cp $78                                        ; $6ee5: $fe $78

jr_0b1_6ee7:
    ld a, [bc]                                    ; $6ee7: $0a
    jr nc, @+$04                                  ; $6ee8: $30 $02

    nop                                           ; $6eea: $00
    ld a, $79                                     ; $6eeb: $3e $79
    ld a, [$cc26]                                 ; $6eed: $fa $26 $cc
    inc l                                         ; $6ef0: $2c
    nop                                           ; $6ef1: $00
    nop                                           ; $6ef2: $00
    jr jr_0b1_6f0d                                ; $6ef3: $18 $18

    rst $30                                       ; $6ef5: $f7
    dec a                                         ; $6ef6: $3d
    cp [hl]                                       ; $6ef7: $be
    dec sp                                        ; $6ef8: $3b
    ld [hl+], a                                   ; $6ef9: $22
    db $10                                        ; $6efa: $10
    ld [de], a                                    ; $6efb: $12
    ld c, h                                       ; $6efc: $4c
    halt                                          ; $6efd: $76
    ld b, $bf                                     ; $6efe: $06 $bf
    ld a, h                                       ; $6f00: $7c
    nop                                           ; $6f01: $00
    nop                                           ; $6f02: $00

jr_0b1_6f03:
    rst $38                                       ; $6f03: $ff
    ld a, a                                       ; $6f04: $7f
    nop                                           ; $6f05: $00
    jr nz, jr_0b1_6ec7                            ; $6f06: $20 $bf

    ld a, h                                       ; $6f08: $7c
    nop                                           ; $6f09: $00
    nop                                           ; $6f0a: $00

jr_0b1_6f0b:
    rst $38                                       ; $6f0b: $ff
    ld a, a                                       ; $6f0c: $7f

jr_0b1_6f0d:
    nop                                           ; $6f0d: $00
    jr nz, @+$0c                                  ; $6f0e: $20 $0a

    jr nc, @+$03                                  ; $6f10: $30 $01

    ld [$4811], sp                                ; $6f12: $08 $11 $48
    rst $38                                       ; $6f15: $ff
    ld c, l                                       ; $6f16: $4d
    ld e, e                                       ; $6f17: $5b
    ld [hl], b                                    ; $6f18: $70
    jr nz, jr_0b1_6f1b                            ; $6f19: $20 $00

jr_0b1_6f1b:
    dec sp                                        ; $6f1b: $3b
    ld l, l                                       ; $6f1c: $6d
    add hl, bc                                    ; $6f1d: $09
    inc h                                         ; $6f1e: $24
    sbc a                                         ; $6f1f: $9f
    ld a, [hl]                                    ; $6f20: $7e
    nop                                           ; $6f21: $00
    nop                                           ; $6f22: $00
    ld [hl], l                                    ; $6f23: $75
    ld h, $5f                                     ; $6f24: $26 $5f
    ld a, [hl]                                    ; $6f26: $7e
    xor a                                         ; $6f27: $af
    ld bc, $0024                                  ; $6f28: $01 $24 $00
    ld a, [$1c18]                                 ; $6f2b: $fa $18 $1c
    ld c, [hl]                                    ; $6f2e: $4e
    ld a, [hl]                                    ; $6f2f: $7e
    ld d, e                                       ; $6f30: $53

jr_0b1_6f31:
    nop                                           ; $6f31: $00
    ld [$380c], sp                                ; $6f32: $08 $0c $38
    ld l, l                                       ; $6f35: $6d
    dec b                                         ; $6f36: $05
    pop af                                        ; $6f37: $f1
    ld [hl-], a                                   ; $6f38: $32
    nop                                           ; $6f39: $00
    nop                                           ; $6f3a: $00
    rst $38                                       ; $6f3b: $ff
    ld a, a                                       ; $6f3c: $7f
    nop                                           ; $6f3d: $00
    jr nz, jr_0b1_6f31                            ; $6f3e: $20 $f1

    ld [hl-], a                                   ; $6f40: $32
    nop                                           ; $6f41: $00
    nop                                           ; $6f42: $00
    rst $38                                       ; $6f43: $ff
    ld a, a                                       ; $6f44: $7f
    nop                                           ; $6f45: $00
    jr nz, jr_0b1_6ee7                            ; $6f46: $20 $9f

    ld a, [hl]                                    ; $6f48: $7e
    nop                                           ; $6f49: $00
    nop                                           ; $6f4a: $00
    sbc a                                         ; $6f4b: $9f
    ld a, h                                       ; $6f4c: $7c
    rst $18                                       ; $6f4d: $df
    ld a, a                                       ; $6f4e: $7f
    inc h                                         ; $6f4f: $24
    stop                                          ; $6f50: $10 $00
    nop                                           ; $6f52: $00
    ld d, a                                       ; $6f53: $57
    ld e, l                                       ; $6f54: $5d
    cp a                                          ; $6f55: $bf
    ld a, l                                       ; $6f56: $7d
    cp a                                          ; $6f57: $bf
    ld a, [hl]                                    ; $6f58: $7e
    nop                                           ; $6f59: $00
    nop                                           ; $6f5a: $00
    dec a                                         ; $6f5b: $3d
    ld [hl], h                                    ; $6f5c: $74
    rst $38                                       ; $6f5d: $ff
    ld h, e                                       ; $6f5e: $63
    ld l, e                                       ; $6f5f: $6b
    jr z, jr_0b1_6f83                             ; $6f60: $28 $21

    nop                                           ; $6f62: $00
    ld [hl], h                                    ; $6f63: $74
    add hl, sp                                    ; $6f64: $39
    ld e, b                                       ; $6f65: $58
    rra                                           ; $6f66: $1f
    ld c, a                                       ; $6f67: $4f
    inc c                                         ; $6f68: $0c
    nop                                           ; $6f69: $00
    ld [$29cc], sp                                ; $6f6a: $08 $cc $29
    rst $38                                       ; $6f6d: $ff
    inc de                                        ; $6f6e: $13
    ld a, d                                       ; $6f6f: $7a
    ld h, e                                       ; $6f70: $63
    nop                                           ; $6f71: $00
    nop                                           ; $6f72: $00
    rst $38                                       ; $6f73: $ff
    ld a, a                                       ; $6f74: $7f
    nop                                           ; $6f75: $00
    jr nz, jr_0b1_6ff2                            ; $6f76: $20 $7a

    ld h, e                                       ; $6f78: $63
    nop                                           ; $6f79: $00
    nop                                           ; $6f7a: $00
    rst $38                                       ; $6f7b: $ff
    ld a, a                                       ; $6f7c: $7f
    nop                                           ; $6f7d: $00
    jr nz, @-$3f                                  ; $6f7e: $20 $bf

    ld a, [hl]                                    ; $6f80: $7e
    nop                                           ; $6f81: $00
    nop                                           ; $6f82: $00

jr_0b1_6f83:
    sbc [hl]                                      ; $6f83: $9e
    ld a, b                                       ; $6f84: $78
    sbc h                                         ; $6f85: $9c
    ld [hl], e                                    ; $6f86: $73
    ld h, a                                       ; $6f87: $67
    inc e                                         ; $6f88: $1c
    ld bc, $3d04                                  ; $6f89: $01 $04 $3d
    ld [hl], h                                    ; $6f8c: $74
    inc sp                                        ; $6f8d: $33
    ld c, [hl]                                    ; $6f8e: $4e
    ld e, a                                       ; $6f8f: $5f
    ld a, a                                       ; $6f90: $7f
    nop                                           ; $6f91: $00
    nop                                           ; $6f92: $00
    ld a, [de]                                    ; $6f93: $1a
    ld l, h                                       ; $6f94: $6c
    ccf                                           ; $6f95: $3f
    ld d, e                                       ; $6f96: $53
    sub c                                         ; $6f97: $91
    ld de, $0844                                  ; $6f98: $11 $44 $08
    sub d                                         ; $6f9b: $92
    dec l                                         ; $6f9c: $2d
    rst $38                                       ; $6f9d: $ff
    ld h, [hl]                                    ; $6f9e: $66
    ld a, e                                       ; $6f9f: $7b
    inc e                                         ; $6fa0: $1c
    nop                                           ; $6fa1: $00
    inc c                                         ; $6fa2: $0c
    rst $38                                       ; $6fa3: $ff
    inc de                                        ; $6fa4: $13
    cp l                                          ; $6fa5: $bd
    ld l, a                                       ; $6fa6: $6f
    rst $08                                       ; $6fa7: $cf
    dec l                                         ; $6fa8: $2d
    nop                                           ; $6fa9: $00
    nop                                           ; $6faa: $00
    nop                                           ; $6fab: $00

jr_0b1_6fac:
    jr nz, @-$41                                  ; $6fac: $20 $bd

    ld l, a                                       ; $6fae: $6f
    rst $08                                       ; $6faf: $cf
    dec l                                         ; $6fb0: $2d
    nop                                           ; $6fb1: $00
    nop                                           ; $6fb2: $00
    nop                                           ; $6fb3: $00
    jr nz, jr_0b1_6fe9                            ; $6fb4: $20 $33

    ld c, [hl]                                    ; $6fb6: $4e
    ld e, a                                       ; $6fb7: $5f
    ld a, a                                       ; $6fb8: $7f
    ld [bc], a                                    ; $6fb9: $02
    ld [$7cdf], sp                                ; $6fba: $08 $df $7c
    rst $38                                       ; $6fbd: $ff
    ld a, a                                       ; $6fbe: $7f
    adc d                                         ; $6fbf: $8a
    jr z, jr_0b1_6fc2                             ; $6fc0: $28 $00

jr_0b1_6fc2:
    nop                                           ; $6fc2: $00
    halt                                          ; $6fc3: $76
    ld e, b                                       ; $6fc4: $58
    cp [hl]                                       ; $6fc5: $be
    ld a, e                                       ; $6fc6: $7b
    dec sp                                        ; $6fc7: $3b
    ld l, h                                       ; $6fc8: $6c
    nop                                           ; $6fc9: $00
    nop                                           ; $6fca: $00
    sbc [hl]                                      ; $6fcb: $9e
    ld [hl-], a                                   ; $6fcc: $32
    ld l, [hl]                                    ; $6fcd: $6e
    dec d                                         ; $6fce: $15
    ccf                                           ; $6fcf: $3f
    ld d, e                                       ; $6fd0: $53
    ld [hl+], a                                   ; $6fd1: $22
    inc b                                         ; $6fd2: $04

jr_0b1_6fd3:
    sbc c                                         ; $6fd3: $99
    inc h                                         ; $6fd4: $24
    scf                                           ; $6fd5: $37
    ld h, h                                       ; $6fd6: $64
    jr @+$4c                                      ; $6fd7: $18 $4a

    nop                                           ; $6fd9: $00
    inc b                                         ; $6fda: $04
    sbc $13                                       ; $6fdb: $de $13
    rst $38                                       ; $6fdd: $ff
    ld a, a                                       ; $6fde: $7f
    ld a, [hl+]                                   ; $6fdf: $2a
    dec d                                         ; $6fe0: $15
    nop                                           ; $6fe1: $00
    nop                                           ; $6fe2: $00
    nop                                           ; $6fe3: $00
    jr nz, @+$01                                  ; $6fe4: $20 $ff

    ld a, a                                       ; $6fe6: $7f
    ld a, [hl+]                                   ; $6fe7: $2a
    dec d                                         ; $6fe8: $15

jr_0b1_6fe9:
    nop                                           ; $6fe9: $00
    nop                                           ; $6fea: $00
    nop                                           ; $6feb: $00
    jr nz, jr_0b1_6fac                            ; $6fec: $20 $be

    ld a, e                                       ; $6fee: $7b
    dec sp                                        ; $6fef: $3b
    ld l, h                                       ; $6ff0: $6c
    nop                                           ; $6ff1: $00

jr_0b1_6ff2:
    nop                                           ; $6ff2: $00
    ld a, a                                       ; $6ff3: $7f
    ld a, l                                       ; $6ff4: $7d
    call $ff34                                    ; $6ff5: $cd $34 $ff
    ld a, a                                       ; $6ff8: $7f
    ld b, $18                                     ; $6ff9: $06 $18
    cp b                                          ; $6ffb: $b8
    ld h, c                                       ; $6ffc: $61
    dec d                                         ; $6ffd: $15
    ld e, h                                       ; $6ffe: $5c
    sbc [hl]                                      ; $6fff: $9e
    ld a, e                                       ; $7000: $7b
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    jp nc, $6809                                  ; $7003: $d2 $09 $68

    db $10                                        ; $7006: $10
    ld a, h                                       ; $7007: $7c
    ld a, [hl+]                                   ; $7008: $2a
    nop                                           ; $7009: $00
    nop                                           ; $700a: $00
    ld c, $40                                     ; $700b: $0e $40
    sbc d                                         ; $700d: $9a
    inc h                                         ; $700e: $24
    ld e, d                                       ; $700f: $5a
    ld c, [hl]                                    ; $7010: $4e
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    or a                                          ; $7013: $b7
    ld [de], a                                    ; $7014: $12
    rst $38                                       ; $7015: $ff
    ld a, a                                       ; $7016: $7f
    cp [hl]                                       ; $7017: $be
    rla                                           ; $7018: $17
    nop                                           ; $7019: $00
    jr nz, jr_0b1_6fd3                            ; $701a: $20 $b7

    ld [de], a                                    ; $701c: $12
    rst $38                                       ; $701d: $ff
    ld a, a                                       ; $701e: $7f
    cp [hl]                                       ; $701f: $be
    rla                                           ; $7020: $17
    nop                                           ; $7021: $00
    jr nz, @-$46                                  ; $7022: $20 $b8

    ld h, c                                       ; $7024: $61
    dec d                                         ; $7025: $15
    ld e, h                                       ; $7026: $5c
    sbc [hl]                                      ; $7027: $9e
    ld a, e                                       ; $7028: $7b
    nop                                           ; $7029: $00
    nop                                           ; $702a: $00
    dec a                                         ; $702b: $3d
    halt                                          ; $702c: $76
    call z, $de30                                 ; $702d: $cc $30 $de
    ld a, e                                       ; $7030: $7b
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
    cp a                                          ; $7033: $bf
    ld a, h                                       ; $7034: $7c
    rrca                                          ; $7035: $0f
    ld b, b                                       ; $7036: $40
    ld e, a                                       ; $7037: $5f
    ld a, a                                       ; $7038: $7f
    nop                                           ; $7039: $00
    nop                                           ; $703a: $00
    ei                                            ; $703b: $fb
    ld [bc], a                                    ; $703c: $02
    dec bc                                        ; $703d: $0b
    inc l                                         ; $703e: $2c
    add l                                         ; $703f: $85
    nop                                           ; $7040: $00
    ld hl, $1904                                  ; $7041: $21 $04 $19
    dec l                                         ; $7044: $2d
    dec bc                                        ; $7045: $0b
    jr nc, jr_0b1_7087                            ; $7046: $30 $3f

    jr nz, jr_0b1_704a                            ; $7048: $20 $00

jr_0b1_704a:
    inc b                                         ; $704a: $04
    cp b                                          ; $704b: $b8
    ld [bc], a                                    ; $704c: $02
    rst $38                                       ; $704d: $ff
    ld a, a                                       ; $704e: $7f
    rst $38                                       ; $704f: $ff
    inc bc                                        ; $7050: $03
    nop                                           ; $7051: $00
    jr nz, @-$46                                  ; $7052: $20 $b8

    ld [bc], a                                    ; $7054: $02
    rst $38                                       ; $7055: $ff
    ld a, a                                       ; $7056: $7f
    rst $38                                       ; $7057: $ff
    inc bc                                        ; $7058: $03
    nop                                           ; $7059: $00
    jr nz, @-$3f                                  ; $705a: $20 $bf

    ld a, h                                       ; $705c: $7c
    rrca                                          ; $705d: $0f
    ld b, b                                       ; $705e: $40
    ld e, a                                       ; $705f: $5f
    ld a, a                                       ; $7060: $7f
    nop                                           ; $7061: $00
    ld [$7e7f], sp                                ; $7062: $08 $7f $7e
    add hl, bc                                    ; $7065: $09
    dec h                                         ; $7066: $25
    rst $38                                       ; $7067: $ff
    ld a, a                                       ; $7068: $7f
    nop                                           ; $7069: $00
    nop                                           ; $706a: $00
    cp a                                          ; $706b: $bf
    ld a, l                                       ; $706c: $7d
    inc c                                         ; $706d: $0c
    inc [hl]                                      ; $706e: $34
    ld e, a                                       ; $706f: $5f
    ld a, a                                       ; $7070: $7f
    nop                                           ; $7071: $00
    nop                                           ; $7072: $00
    xor a                                         ; $7073: $af
    ld bc, $02b8                                  ; $7074: $01 $b8 $02
    inc bc                                        ; $7077: $03
    inc c                                         ; $7078: $0c
    ld hl, $1c08                                  ; $7079: $21 $08 $1c
    jr jr_0b1_7088                                ; $707c: $18 $0a

jr_0b1_707e:
    inc l                                         ; $707e: $2c
    rst $38                                       ; $707f: $ff
    inc [hl]                                      ; $7080: $34
    nop                                           ; $7081: $00
    ld [$0297], sp                                ; $7082: $08 $97 $02
    rst $38                                       ; $7085: $ff

jr_0b1_7086:
    ld a, a                                       ; $7086: $7f

jr_0b1_7087:
    cp [hl]                                       ; $7087: $be

jr_0b1_7088:
    inc bc                                        ; $7088: $03
    nop                                           ; $7089: $00
    jr nz, @-$67                                  ; $708a: $20 $97

    ld [bc], a                                    ; $708c: $02
    rst $38                                       ; $708d: $ff
    ld a, a                                       ; $708e: $7f
    cp [hl]                                       ; $708f: $be
    inc bc                                        ; $7090: $03
    nop                                           ; $7091: $00
    jr nz, @-$3f                                  ; $7092: $20 $bf

    ld a, l                                       ; $7094: $7d
    inc c                                         ; $7095: $0c
    inc [hl]                                      ; $7096: $34
    ld e, a                                       ; $7097: $5f
    ld a, a                                       ; $7098: $7f
    nop                                           ; $7099: $00
    nop                                           ; $709a: $00
    rst $38                                       ; $709b: $ff
    ld a, a                                       ; $709c: $7f
    ld d, b                                       ; $709d: $50
    ld b, c                                       ; $709e: $41
    nop                                           ; $709f: $00
    jr nz, jr_0b1_70a2                            ; $70a0: $20 $00

jr_0b1_70a2:
    nop                                           ; $70a2: $00
    rst $18                                       ; $70a3: $df
    ld a, l                                       ; $70a4: $7d
    ld [$6d24], sp                                ; $70a5: $08 $24 $6d
    ld bc, $0000                                  ; $70a8: $01 $00 $00

jr_0b1_70ab:
    rst $38                                       ; $70ab: $ff
    ld a, a                                       ; $70ac: $7f
    rst $38                                       ; $70ad: $ff

jr_0b1_70ae:
    ld a, a                                       ; $70ae: $7f
    cp [hl]                                       ; $70af: $be

jr_0b1_70b0:
    inc bc                                        ; $70b0: $03
    nop                                           ; $70b1: $00
    nop                                           ; $70b2: $00
    rst $38                                       ; $70b3: $ff
    ld a, a                                       ; $70b4: $7f
    rst $38                                       ; $70b5: $ff

jr_0b1_70b6:
    ld a, a                                       ; $70b6: $7f
    cp [hl]                                       ; $70b7: $be

jr_0b1_70b8:
    inc bc                                        ; $70b8: $03
    nop                                           ; $70b9: $00
    nop                                           ; $70ba: $00
    rst $38                                       ; $70bb: $ff
    ld a, a                                       ; $70bc: $7f
    nop                                           ; $70bd: $00

jr_0b1_70be:
    jr nz, jr_0b1_707e                            ; $70be: $20 $be

jr_0b1_70c0:
    inc bc                                        ; $70c0: $03
    nop                                           ; $70c1: $00
    jr nz, @+$01                                  ; $70c2: $20 $ff

    ld a, a                                       ; $70c4: $7f
    nop                                           ; $70c5: $00
    jr nz, jr_0b1_7086                            ; $70c6: $20 $be

jr_0b1_70c8:
    inc bc                                        ; $70c8: $03
    nop                                           ; $70c9: $00
    jr nz, jr_0b1_70ab                            ; $70ca: $20 $df

    ld a, l                                       ; $70cc: $7d
    ld [$6d24], sp                                ; $70cd: $08 $24 $6d
    ld bc, $0000                                  ; $70d0: $01 $00 $00
    rst $38                                       ; $70d3: $ff
    ld a, a                                       ; $70d4: $7f
    nop                                           ; $70d5: $00
    jr nz, @+$6f                                  ; $70d6: $20 $6d

    ld bc, $0000                                  ; $70d8: $01 $00 $00
    rst $38                                       ; $70db: $ff
    ld a, a                                       ; $70dc: $7f
    nop                                           ; $70dd: $00
    jr nz, @+$6f                                  ; $70de: $20 $6d

    ld bc, $0000                                  ; $70e0: $01 $00 $00
    nop                                           ; $70e3: $00
    jr nz, jr_0b1_70e6                            ; $70e4: $20 $00

jr_0b1_70e6:
    jr nz, @-$40                                  ; $70e6: $20 $be

    inc bc                                        ; $70e8: $03
    nop                                           ; $70e9: $00
    nop                                           ; $70ea: $00
    nop                                           ; $70eb: $00
    jr nz, jr_0b1_70ee                            ; $70ec: $20 $00

jr_0b1_70ee:
    jr nz, jr_0b1_70ae                            ; $70ee: $20 $be

    inc bc                                        ; $70f0: $03
    nop                                           ; $70f1: $00
    nop                                           ; $70f2: $00
    nop                                           ; $70f3: $00
    jr nz, jr_0b1_70f6                            ; $70f4: $20 $00

jr_0b1_70f6:
    jr nz, jr_0b1_70b6                            ; $70f6: $20 $be

    inc bc                                        ; $70f8: $03
    nop                                           ; $70f9: $00
    jr nz, jr_0b1_70fc                            ; $70fa: $20 $00

jr_0b1_70fc:
    jr nz, jr_0b1_70fe                            ; $70fc: $20 $00

jr_0b1_70fe:
    jr nz, jr_0b1_70be                            ; $70fe: $20 $be

    inc bc                                        ; $7100: $03
    nop                                           ; $7101: $00
    jr nz, jr_0b1_7104                            ; $7102: $20 $00

jr_0b1_7104:
    jr nz, jr_0b1_711e                            ; $7104: $20 $18

    ld [hl], a                                    ; $7106: $77
    ld c, b                                       ; $7107: $48
    ld b, l                                       ; $7108: $45
    nop                                           ; $7109: $00
    jr nz, jr_0b1_710c                            ; $710a: $20 $00

jr_0b1_710c:
    jr nz, jr_0b1_7126                            ; $710c: $20 $18

    ld [hl], a                                    ; $710e: $77
    ld c, b                                       ; $710f: $48
    ld b, l                                       ; $7110: $45
    nop                                           ; $7111: $00
    jr nz, jr_0b1_7114                            ; $7112: $20 $00

jr_0b1_7114:
    jr nz, jr_0b1_712e                            ; $7114: $20 $18

    ld [hl], a                                    ; $7116: $77
    ld c, b                                       ; $7117: $48
    ld b, l                                       ; $7118: $45
    nop                                           ; $7119: $00
    jr nz, jr_0b1_70b0                            ; $711a: $20 $94

    ld [hl], d                                    ; $711c: $72
    sbc h                                         ; $711d: $9c

jr_0b1_711e:
    ld a, e                                       ; $711e: $7b
    cp l                                          ; $711f: $bd
    ld a, e                                       ; $7120: $7b
    nop                                           ; $7121: $00
    jr nz, jr_0b1_70b8                            ; $7122: $20 $94

    ld [hl], d                                    ; $7124: $72
    sbc h                                         ; $7125: $9c

jr_0b1_7126:
    ld a, e                                       ; $7126: $7b
    cp l                                          ; $7127: $bd
    ld a, e                                       ; $7128: $7b
    nop                                           ; $7129: $00
    jr nz, jr_0b1_70c0                            ; $712a: $20 $94

    ld [hl], d                                    ; $712c: $72
    sbc h                                         ; $712d: $9c

jr_0b1_712e:
    ld a, e                                       ; $712e: $7b
    cp l                                          ; $712f: $bd
    ld a, e                                       ; $7130: $7b
    nop                                           ; $7131: $00
    jr nz, jr_0b1_70c8                            ; $7132: $20 $94

    ld [hl], d                                    ; $7134: $72
    sbc h                                         ; $7135: $9c
    ld a, e                                       ; $7136: $7b
    cp l                                          ; $7137: $bd
    ld a, e                                       ; $7138: $7b
    nop                                           ; $7139: $00
    jr nz, jr_0b1_713c                            ; $713a: $20 $00

jr_0b1_713c:
    jr nz, jr_0b1_7156                            ; $713c: $20 $18

    ld [hl], a                                    ; $713e: $77
    ld c, b                                       ; $713f: $48
    ld b, l                                       ; $7140: $45
    nop                                           ; $7141: $00
    jr nz, jr_0b1_7144                            ; $7142: $20 $00

jr_0b1_7144:
    jr nz, @+$1a                                  ; $7144: $20 $18

    ld [hl], a                                    ; $7146: $77
    ld c, b                                       ; $7147: $48
    ld b, l                                       ; $7148: $45
    nop                                           ; $7149: $00
    jr nz, jr_0b1_714c                            ; $714a: $20 $00

jr_0b1_714c:
    jr nz, @+$1a                                  ; $714c: $20 $18

    ld [hl], a                                    ; $714e: $77
    ld c, b                                       ; $714f: $48
    ld b, l                                       ; $7150: $45
    nop                                           ; $7151: $00
    nop                                           ; $7152: $00
    ld l, c                                       ; $7153: $69
    ld c, l                                       ; $7154: $4d
    sub h                                         ; $7155: $94

jr_0b1_7156:
    ld [hl], d                                    ; $7156: $72
    xor h                                         ; $7157: $ac
    ld d, l                                       ; $7158: $55
    nop                                           ; $7159: $00
    jr nz, jr_0b1_7162                            ; $715a: $20 $06

    dec a                                         ; $715c: $3d
    call $ac59                                    ; $715d: $cd $59 $ac
    ld d, l                                       ; $7160: $55
    nop                                           ; $7161: $00

jr_0b1_7162:
    jr nz, jr_0b1_716a                            ; $7162: $20 $06

    dec a                                         ; $7164: $3d
    call $ac59                                    ; $7165: $cd $59 $ac
    ld d, l                                       ; $7168: $55

jr_0b1_7169:
    nop                                           ; $7169: $00

jr_0b1_716a:
    jr nz, jr_0b1_7184                            ; $716a: $20 $18

    ld [bc], a                                    ; $716c: $02
    call c, $ac0e                                 ; $716d: $dc $0e $ac
    ld d, l                                       ; $7170: $55
    nop                                           ; $7171: $00
    jr nz, jr_0b1_7174                            ; $7172: $20 $00

jr_0b1_7174:
    jr nz, @+$1a                                  ; $7174: $20 $18

    ld [hl], a                                    ; $7176: $77
    ld c, b                                       ; $7177: $48
    ld b, l                                       ; $7178: $45
    nop                                           ; $7179: $00
    jr nz, jr_0b1_717c                            ; $717a: $20 $00

jr_0b1_717c:
    jr nz, jr_0b1_7196                            ; $717c: $20 $18

    ld [hl], a                                    ; $717e: $77
    ld c, b                                       ; $717f: $48
    ld b, l                                       ; $7180: $45
    nop                                           ; $7181: $00
    jr nz, jr_0b1_7169                            ; $7182: $20 $e5

jr_0b1_7184:
    inc a                                         ; $7184: $3c
    rst $28                                       ; $7185: $ef
    ld h, c                                       ; $7186: $61
    dec b                                         ; $7187: $05
    dec a                                         ; $7188: $3d
    nop                                           ; $7189: $00

jr_0b1_718a:
    nop                                           ; $718a: $00
    inc a                                         ; $718b: $3c
    ld [bc], a                                    ; $718c: $02
    ld b, $3d                                     ; $718d: $06 $3d
    db $ed                                        ; $718f: $ed
    nop                                           ; $7190: $00

jr_0b1_7191:
    nop                                           ; $7191: $00
    inc e                                         ; $7192: $1c
    dec b                                         ; $7193: $05
    dec a                                         ; $7194: $3d
    sub e                                         ; $7195: $93

jr_0b1_7196:
    ld e, [hl]                                    ; $7196: $5e
    xor e                                         ; $7197: $ab
    ld c, c                                       ; $7198: $49

jr_0b1_7199:
    nop                                           ; $7199: $00
    jr nz, jr_0b1_71a1                            ; $719a: $20 $05

    dec a                                         ; $719c: $3d
    sub e                                         ; $719d: $93
    ld e, [hl]                                    ; $719e: $5e
    xor e                                         ; $719f: $ab
    ld c, c                                       ; $71a0: $49

jr_0b1_71a1:
    nop                                           ; $71a1: $00
    ld [$0218], sp                                ; $71a2: $08 $18 $02
    call c, Call_000_000e                         ; $71a5: $dc $0e $00
    inc e                                         ; $71a8: $1c
    nop                                           ; $71a9: $00
    jr nz, jr_0b1_7191                            ; $71aa: $20 $e5

    inc a                                         ; $71ac: $3c
    rst $28                                       ; $71ad: $ef
    ld h, c                                       ; $71ae: $61
    dec b                                         ; $71af: $05
    dec a                                         ; $71b0: $3d
    nop                                           ; $71b1: $00
    jr nz, jr_0b1_7199                            ; $71b2: $20 $e5

    inc a                                         ; $71b4: $3c
    rst $28                                       ; $71b5: $ef
    ld h, c                                       ; $71b6: $61
    dec b                                         ; $71b7: $05
    dec a                                         ; $71b8: $3d
    nop                                           ; $71b9: $00
    nop                                           ; $71ba: $00
    ld l, d                                       ; $71bb: $6a
    ld b, l                                       ; $71bc: $45
    jr nc, jr_0b1_7215                            ; $71bd: $30 $56

    nop                                           ; $71bf: $00
    jr nz, jr_0b1_71c3                            ; $71c0: $20 $01

    nop                                           ; $71c2: $00

jr_0b1_71c3:
    call nc, $eb01                                ; $71c3: $d4 $01 $eb
    nop                                           ; $71c6: $00
    ld e, a                                       ; $71c7: $5f
    rlca                                          ; $71c8: $07
    nop                                           ; $71c9: $00
    db $10                                        ; $71ca: $10
    cp c                                          ; $71cb: $b9
    ld b, $b4                                     ; $71cc: $06 $b4
    ld h, d                                       ; $71ce: $62
    sub c                                         ; $71cf: $91
    ld bc, $1c00                                  ; $71d0: $01 $00 $1c
    nop                                           ; $71d3: $00
    jr nz, jr_0b1_718a                            ; $71d4: $20 $b4

    ld h, d                                       ; $71d6: $62
    sub c                                         ; $71d7: $91
    ld bc, $1c00                                  ; $71d8: $01 $00 $1c
    rla                                           ; $71db: $17
    ld [bc], a                                    ; $71dc: $02
    rst $38                                       ; $71dd: $ff
    ld l, a                                       ; $71de: $6f
    dec a                                         ; $71df: $3d
    dec de                                        ; $71e0: $1b
    nop                                           ; $71e1: $00
    jr nz, jr_0b1_724e                            ; $71e2: $20 $6a

    ld b, l                                       ; $71e4: $45
    jr nc, jr_0b1_723d                            ; $71e5: $30 $56

    nop                                           ; $71e7: $00
    jr nz, jr_0b1_71ea                            ; $71e8: $20 $00

jr_0b1_71ea:
    nop                                           ; $71ea: $00
    nop                                           ; $71eb: $00
    jr nz, @+$32                                  ; $71ec: $20 $30

    ld d, [hl]                                    ; $71ee: $56
    nop                                           ; $71ef: $00
    jr nz, jr_0b1_71f2                            ; $71f0: $20 $00

jr_0b1_71f2:
    nop                                           ; $71f2: $00
    dec d                                         ; $71f3: $15
    ld [bc], a                                    ; $71f4: $02
    cp $06                                        ; $71f5: $fe $06
    nop                                           ; $71f7: $00
    jr nz, jr_0b1_71fc                            ; $71f8: $20 $02

    nop                                           ; $71fa: $00
    dec d                                         ; $71fb: $15

jr_0b1_71fc:
    ld b, $ed                                     ; $71fc: $06 $ed
    nop                                           ; $71fe: $00
    sbc $02                                       ; $71ff: $de $02
    ld [hl+], a                                   ; $7201: $22
    nop                                           ; $7202: $00
    ld a, a                                       ; $7203: $7f
    rlca                                          ; $7204: $07
    sub h                                         ; $7205: $94
    ld bc, $77bc                                  ; $7206: $01 $bc $77
    nop                                           ; $7209: $00
    jr nz, jr_0b1_7223                            ; $720a: $20 $17

    ld [bc], a                                    ; $720c: $02
    rst $30                                       ; $720d: $f7
    ld l, d                                       ; $720e: $6a
    sbc $7f                                       ; $720f: $de $7f
    ld [hl+], a                                   ; $7211: $22
    ld [$00ef], sp                                ; $7212: $08 $ef $00

jr_0b1_7215:
    ld a, [de]                                    ; $7215: $1a
    ld [bc], a                                    ; $7216: $02
    nop                                           ; $7217: $00
    jr nz, jr_0b1_721a                            ; $7218: $20 $00

jr_0b1_721a:
    jr nz, jr_0b1_7231                            ; $721a: $20 $15

    ld [bc], a                                    ; $721c: $02
    cp $06                                        ; $721d: $fe $06
    nop                                           ; $721f: $00
    jr nz, jr_0b1_7222                            ; $7220: $20 $00

jr_0b1_7222:
    nop                                           ; $7222: $00

jr_0b1_7223:
    ld a, c                                       ; $7223: $79
    ld b, $ab                                     ; $7224: $06 $ab
    nop                                           ; $7226: $00
    nop                                           ; $7227: $00
    jr nz, jr_0b1_722c                            ; $7228: $20 $02

    nop                                           ; $722a: $00
    ld sp, hl                                     ; $722b: $f9

jr_0b1_722c:
    ld bc, $02bd                                  ; $722c: $01 $bd $02
    ld l, c                                       ; $722f: $69
    nop                                           ; $7230: $00

jr_0b1_7231:
    inc h                                         ; $7231: $24
    nop                                           ; $7232: $00
    sub h                                         ; $7233: $94
    ld bc, $02de                                  ; $7234: $01 $de $02
    xor l                                         ; $7237: $ad
    nop                                           ; $7238: $00
    nop                                           ; $7239: $00
    nop                                           ; $723a: $00
    ld a, d                                       ; $723b: $7a
    ld [hl], e                                    ; $723c: $73

jr_0b1_723d:
    dec bc                                        ; $723d: $0b
    ld bc, $05f6                                  ; $723e: $01 $f6 $05
    nop                                           ; $7241: $00
    inc e                                         ; $7242: $1c
    jr jr_0b1_72b4                                ; $7243: $18 $6f

    sbc $7b                                       ; $7245: $de $7b
    ld h, a                                       ; $7247: $67
    nop                                           ; $7248: $00
    ld bc, $cf00                                  ; $7249: $01 $00 $cf
    dec h                                         ; $724c: $25

jr_0b1_724d:
    add hl, sp                                    ; $724d: $39

jr_0b1_724e:
    ld l, a                                       ; $724e: $6f
    nop                                           ; $724f: $00
    jr nz, jr_0b1_7252                            ; $7250: $20 $00

jr_0b1_7252:
    jr nz, jr_0b1_724d                            ; $7252: $20 $f9

    ld bc, $02bd                                  ; $7254: $01 $bd $02
    ld l, c                                       ; $7257: $69
    nop                                           ; $7258: $00
    ld bc, $7300                                  ; $7259: $01 $00 $73
    ld e, [hl]                                    ; $725c: $5e
    sbc $7b                                       ; $725d: $de $7b
    nop                                           ; $725f: $00
    jr nz, jr_0b1_7262                            ; $7260: $20 $00

jr_0b1_7262:
    nop                                           ; $7262: $00
    ld a, e                                       ; $7263: $7b
    ld h, d                                       ; $7264: $62
    inc h                                         ; $7265: $24
    nop                                           ; $7266: $00
    ld h, [hl]                                    ; $7267: $66
    inc b                                         ; $7268: $04
    nop                                           ; $7269: $00
    nop                                           ; $726a: $00
    ld d, l                                       ; $726b: $55
    halt                                          ; $726c: $76
    db $ec                                        ; $726d: $ec
    ld [$7fff], sp                                ; $726e: $08 $ff $7f
    ld [bc], a                                    ; $7271: $02
    nop                                           ; $7272: $00
    ld d, l                                       ; $7273: $55
    halt                                          ; $7274: $76
    adc b                                         ; $7275: $88
    nop                                           ; $7276: $00
    ld l, $01                                     ; $7277: $2e $01
    nop                                           ; $7279: $00
    nop                                           ; $727a: $00
    push de                                       ; $727b: $d5
    ld h, [hl]                                    ; $727c: $66

jr_0b1_727d:
    ld l, c                                       ; $727d: $69
    nop                                           ; $727e: $00
    cp l                                          ; $727f: $bd
    ld a, e                                       ; $7280: $7b
    add d                                         ; $7281: $82
    inc b                                         ; $7282: $04
    ret nc                                        ; $7283: $d0

    ld de, $63fa                                  ; $7284: $11 $fa $63
    nop                                           ; $7287: $00
    inc e                                         ; $7288: $1c
    nop                                           ; $7289: $00
    jr nz, jr_0b1_72d4                            ; $728a: $20 $48

    ld b, l                                       ; $728c: $45
    inc h                                         ; $728d: $24
    nop                                           ; $728e: $00
    ld h, [hl]                                    ; $728f: $66
    inc b                                         ; $7290: $04
    nop                                           ; $7291: $00
    ld [$560f], sp                                ; $7292: $08 $0f $56
    jp c, $4866                                   ; $7295: $da $66 $48

    ld b, l                                       ; $7298: $45
    ld bc, $7b00                                  ; $7299: $01 $00 $7b
    ld e, [hl]                                    ; $729c: $5e
    rl h                                          ; $729d: $cb $14
    ld h, h                                       ; $729f: $64
    ld [$1000], sp                                ; $72a0: $08 $00 $10
    ld e, e                                       ; $72a3: $5b
    ld [hl-], a                                   ; $72a4: $32
    ld d, b                                       ; $72a5: $50
    ld de, $7fff                                  ; $72a6: $11 $ff $7f
    ld [bc], a                                    ; $72a9: $02
    nop                                           ; $72aa: $00
    ld a, e                                       ; $72ab: $7b
    ld h, d                                       ; $72ac: $62
    rst $38                                       ; $72ad: $ff
    ld a, a                                       ; $72ae: $7f
    ld a, h                                       ; $72af: $7c
    ld a, $00                                     ; $72b0: $3e $00
    nop                                           ; $72b2: $00
    ld [hl], h                                    ; $72b3: $74

jr_0b1_72b4:
    ld d, d                                       ; $72b4: $52
    sbc $7b                                       ; $72b5: $de $7b
    ld a, e                                       ; $72b7: $7b
    ld h, d                                       ; $72b8: $62
    jr nz, @+$06                                  ; $72b9: $20 $04

    ld l, $33                                     ; $72bb: $2e $33
    nop                                           ; $72bd: $00
    jr nz, jr_0b1_72e0                            ; $72be: $20 $20

    ld bc, $2000                                  ; $72c0: $01 $00 $20
    push hl                                       ; $72c3: $e5
    inc a                                         ; $72c4: $3c
    adc e                                         ; $72c5: $8b
    ld c, c                                       ; $72c6: $49
    daa                                           ; $72c7: $27
    ld b, c                                       ; $72c8: $41
    ld hl, $5100                                  ; $72c9: $21 $00 $51
    ld e, d                                       ; $72cc: $5a
    rst $38                                       ; $72cd: $ff
    ld a, [de]                                    ; $72ce: $1a
    sbc e                                         ; $72cf: $9b
    ld h, d                                       ; $72d0: $62
    ld hl, $9104                                  ; $72d1: $21 $04 $91

jr_0b1_72d4:
    dec d                                         ; $72d4: $15
    cp l                                          ; $72d5: $bd
    ld b, d                                       ; $72d6: $42
    and a                                         ; $72d7: $a7
    ld [$0064], sp                                ; $72d8: $08 $64 $00
    ld e, e                                       ; $72db: $5b
    ld a, [hl-]                                   ; $72dc: $3a
    ld d, b                                       ; $72dd: $50
    add hl, de                                    ; $72de: $19
    sbc a                                         ; $72df: $9f

jr_0b1_72e0:
    rlca                                          ; $72e0: $07
    ld b, e                                       ; $72e1: $43
    inc b                                         ; $72e2: $04
    ld a, e                                       ; $72e3: $7b
    ld h, d                                       ; $72e4: $62
    ld l, a                                       ; $72e5: $6f
    add hl, bc                                    ; $72e6: $09
    ld a, h                                       ; $72e7: $7c
    ld a, $00                                     ; $72e8: $3e $00
    nop                                           ; $72ea: $00
    ld a, e                                       ; $72eb: $7b
    ld e, [hl]                                    ; $72ec: $5e
    ld a, [de]                                    ; $72ed: $1a
    ld l, e                                       ; $72ee: $6b
    ld h, e                                       ; $72ef: $63
    inc b                                         ; $72f0: $04
    nop                                           ; $72f1: $00
    inc b                                         ; $72f2: $04
    ld h, $41                                     ; $72f3: $26 $41
    nop                                           ; $72f5: $00
    jr nz, jr_0b1_727d                            ; $72f6: $20 $85

    jr jr_0b1_72fa                                ; $72f8: $18 $00

jr_0b1_72fa:
    jr @-$11                                      ; $72fa: $18 $ed

    ld d, l                                       ; $72fc: $55
    daa                                           ; $72fd: $27
    ld b, c                                       ; $72fe: $41
    sub h                                         ; $72ff: $94
    ld l, [hl]                                    ; $7300: $6e
    nop                                           ; $7301: $00
    nop                                           ; $7302: $00
    ld a, e                                       ; $7303: $7b
    ld h, d                                       ; $7304: $62
    db $10                                        ; $7305: $10
    ld [hl+], a                                   ; $7306: $22
    ld h, l                                       ; $7307: $65
    inc b                                         ; $7308: $04
    ld b, h                                       ; $7309: $44
    nop                                           ; $730a: $00
    cp c                                          ; $730b: $b9
    ld [hl+], a                                   ; $730c: $22
    sub b                                         ; $730d: $90
    ld de, $67be                                  ; $730e: $11 $be $67
    nop                                           ; $7311: $00
    nop                                           ; $7312: $00
    ld [hl], d                                    ; $7313: $72
    dec e                                         ; $7314: $1d
    ld a, h                                       ; $7315: $7c
    ld a, $a8                                     ; $7316: $3e $a8
    inc c                                         ; $7318: $0c
    inc hl                                        ; $7319: $23
    nop                                           ; $731a: $00
    ld l, a                                       ; $731b: $6f
    dec d                                         ; $731c: $15
    ld e, b                                       ; $731d: $58
    ld a, [de]                                    ; $731e: $1a
    inc a                                         ; $731f: $3c
    ld d, e                                       ; $7320: $53
    add h                                         ; $7321: $84
    ld [$36ee], sp                                ; $7322: $08 $ee $36
    jp c, $bb62                                   ; $7325: $da $62 $bb

    ld [hl+], a                                   ; $7328: $22
    jr nz, jr_0b1_732b                            ; $7329: $20 $00

jr_0b1_732b:
    ld c, b                                       ; $732b: $48
    ld b, l                                       ; $732c: $45
    db $10                                        ; $732d: $10
    ld h, [hl]                                    ; $732e: $66
    nop                                           ; $732f: $00
    jr nz, jr_0b1_7332                            ; $7330: $20 $00

jr_0b1_7332:
    ld [$6657], sp                                ; $7332: $08 $57 $66
    ld e, e                                       ; $7335: $5b
    ld [hl], a                                    ; $7336: $77
    ld c, c                                       ; $7337: $49
    ld c, l                                       ; $7338: $4d
    ld b, e                                       ; $7339: $43
    inc b                                         ; $733a: $04
    cp d                                          ; $733b: $ba
    ld d, $fc                                     ; $733c: $16 $fc
    ld h, d                                       ; $733e: $62
    ld c, [hl]                                    ; $733f: $4e
    ld de, $0021                                  ; $7340: $11 $21 $00
    sbc d                                         ; $7343: $9a
    ld [hl+], a                                   ; $7344: $22
    dec l                                         ; $7345: $2d
    add hl, bc                                    ; $7346: $09
    rst $38                                       ; $7347: $ff
    ld l, a                                       ; $7348: $6f
    ld bc, $eb00                                  ; $7349: $01 $00 $eb
    inc d                                         ; $734c: $14
    adc b                                         ; $734d: $88
    ld [$1d71], sp                                ; $734e: $08 $71 $1d
    ld bc, $f200                                  ; $7351: $01 $00 $f2
    dec d                                         ; $7354: $15
    ld e, [hl]                                    ; $7355: $5e
    ccf                                           ; $7356: $3f
    inc c                                         ; $7357: $0c
    dec c                                         ; $7358: $0d
    ld b, e                                       ; $7359: $43
    inc b                                         ; $735a: $04
    ld e, h                                       ; $735b: $5c
    ld a, [hl+]                                   ; $735c: $2a
    ccf                                           ; $735d: $3f
    ld d, e                                       ; $735e: $53
    rrca                                          ; $735f: $0f
    ld bc, $0422                                  ; $7360: $01 $22 $04
    ld d, [hl]                                    ; $7363: $56
    ld h, [hl]                                    ; $7364: $66
    sbc $7f                                       ; $7365: $de $7f
    nop                                           ; $7367: $00
    jr nz, jr_0b1_738b                            ; $7368: $20 $21

    nop                                           ; $736a: $00
    sub h                                         ; $736b: $94
    ld l, [hl]                                    ; $736c: $6e
    cp l                                          ; $736d: $bd
    ld a, e                                       ; $736e: $7b
    ld a, c                                       ; $736f: $79
    ld h, [hl]                                    ; $7370: $66
    ld h, e                                       ; $7371: $63
    ld [$3a16], sp                                ; $7372: $08 $16 $3a
    ld [hl], d                                    ; $7375: $72
    dec b                                         ; $7376: $05
    ccf                                           ; $7377: $3f
    ld d, e                                       ; $7378: $53
    ld bc, $f700                                  ; $7379: $01 $00 $f7
    dec d                                         ; $737c: $15
    ret c                                         ; $737d: $d8

    ld a, $86                                     ; $737e: $3e $86
    nop                                           ; $7380: $00
    inc h                                         ; $7381: $24
    inc b                                         ; $7382: $04
    inc c                                         ; $7383: $0c
    dec d                                         ; $7384: $15
    ld a, [hl-]                                   ; $7385: $3a
    ld [hl], $52                                  ; $7386: $36 $52
    add hl, de                                    ; $7388: $19
    nop                                           ; $7389: $00
    nop                                           ; $738a: $00

jr_0b1_738b:
    or d                                          ; $738b: $b2
    dec d                                         ; $738c: $15
    rst $38                                       ; $738d: $ff
    ld [hl], e                                    ; $738e: $73
    ld b, [hl]                                    ; $738f: $46
    nop                                           ; $7390: $00
    adc b                                         ; $7391: $88
    ld [$29d6], sp                                ; $7392: $08 $d6 $29
    jr nc, jr_0b1_73b0                            ; $7395: $30 $19

    ld e, e                                       ; $7397: $5b
    ld [hl], $00                                  ; $7398: $36 $00
    inc e                                         ; $739a: $1c
    halt                                          ; $739b: $76
    ld l, d                                       ; $739c: $6a
    add hl, hl                                    ; $739d: $29
    dec [hl]                                      ; $739e: $35
    sbc l                                         ; $739f: $9d
    ld a, [hl-]                                   ; $73a0: $3a
    ld hl, $1008                                  ; $73a1: $21 $08 $10
    ld h, [hl]                                    ; $73a4: $66
    ld [hl], c                                    ; $73a5: $71
    ld hl, $6eb8                                  ; $73a6: $21 $b8 $6e
    ld h, e                                       ; $73a9: $63
    nop                                           ; $73aa: $00
    push de                                       ; $73ab: $d5
    dec d                                         ; $73ac: $15
    sbc h                                         ; $73ad: $9c
    ld a, $2d                                     ; $73ae: $3e $2d

jr_0b1_73b0:
    add hl, bc                                    ; $73b0: $09
    ld bc, $f900                                  ; $73b1: $01 $00 $f9
    dec l                                         ; $73b4: $2d
    cp [hl]                                       ; $73b5: $be
    ld e, a                                       ; $73b6: $5f
    ld d, c                                       ; $73b7: $51
    dec b                                         ; $73b8: $05
    nop                                           ; $73b9: $00
    nop                                           ; $73ba: $00
    db $d3                                        ; $73bb: $d3
    ld hl, $323b                                  ; $73bc: $21 $3b $32
    xor b                                         ; $73bf: $a8
    inc c                                         ; $73c0: $0c
    ld [hl+], a                                   ; $73c1: $22
    nop                                           ; $73c2: $00
    rst $18                                       ; $73c3: $df
    ld e, a                                       ; $73c4: $5f
    inc c                                         ; $73c5: $0c
    dec c                                         ; $73c6: $0d
    or h                                          ; $73c7: $b4

jr_0b1_73c8:
    add hl, de                                    ; $73c8: $19
    ld [bc], a                                    ; $73c9: $02
    nop                                           ; $73ca: $00
    rla                                           ; $73cb: $17
    ld [hl-], a                                   ; $73cc: $32
    ccf                                           ; $73cd: $3f
    ld d, e                                       ; $73ce: $53
    ld c, $19                                     ; $73cf: $0e $19
    inc h                                         ; $73d1: $24
    nop                                           ; $73d2: $00
    sub h                                         ; $73d3: $94
    dec e                                         ; $73d4: $1d
    nop                                           ; $73d5: $00
    jr nz, jr_0b1_73c8                            ; $73d6: $20 $f0

    ld e, l                                       ; $73d8: $5d
    ld hl, $ac0c                                  ; $73d9: $21 $0c $ac
    ld d, l                                       ; $73dc: $55
    ld a, [bc]                                    ; $73dd: $0a
    add hl, hl                                    ; $73de: $29
    or a                                          ; $73df: $b7
    ld l, [hl]                                    ; $73e0: $6e
    ld h, h                                       ; $73e1: $64
    ld [$1d95], sp                                ; $73e2: $08 $95 $1d
    ld a, $23                                     ; $73e5: $3e $23
    rrca                                          ; $73e7: $0f
    dec d                                         ; $73e8: $15
    nop                                           ; $73e9: $00
    nop                                           ; $73ea: $00
    ld d, $12                                     ; $73eb: $16 $12
    dec bc                                        ; $73ed: $0b
    ld de, $3a9d                                  ; $73ee: $11 $9d $3a
    add l                                         ; $73f1: $85
    ld [$3659], sp                                ; $73f2: $08 $59 $36
    rst $38                                       ; $73f5: $ff
    ld [hl], a                                    ; $73f6: $77
    ld c, e                                       ; $73f7: $4b
    dec d                                         ; $73f8: $15
    ld hl, $3900                                  ; $73f9: $21 $00 $39
    ld h, $ff                                     ; $73fc: $26 $ff
    ld l, e                                       ; $73fe: $6b
    xor c                                         ; $73ff: $a9
    ld [$0001], sp                                ; $7400: $08 $01 $00
    ld [hl], d                                    ; $7403: $72
    ld hl, $365c                                  ; $7404: $21 $5c $36
    db $ec                                        ; $7407: $ec
    inc d                                         ; $7408: $14
    nop                                           ; $7409: $00
    nop                                           ; $740a: $00
    adc d                                         ; $740b: $8a
    ld c, c                                       ; $740c: $49
    or e                                          ; $740d: $b3
    ld [$2000], sp                                ; $740e: $08 $00 $20
    ld [hl+], a                                   ; $7411: $22
    inc b                                         ; $7412: $04
    ld c, b                                       ; $7413: $48
    ld b, l                                       ; $7414: $45
    ld d, l                                       ; $7415: $55
    ld h, [hl]                                    ; $7416: $66
    nop                                           ; $7417: $00
    jr nz, @+$25                                  ; $7418: $20 $23

    inc b                                         ; $741a: $04
    cpl                                           ; $741b: $2f
    add hl, bc                                    ; $741c: $09
    xor e                                         ; $741d: $ab
    ld [$0db4], sp                                ; $741e: $08 $b4 $0d
    ld b, e                                       ; $7421: $43
    nop                                           ; $7422: $00
    add hl, de                                    ; $7423: $19
    ld a, [hl+]                                   ; $7424: $2a
    ld e, [hl]                                    ; $7425: $5e
    ld c, e                                       ; $7426: $4b
    ld [$2208], a                                 ; $7427: $ea $08 $22
    nop                                           ; $742a: $00
    rst $08                                       ; $742b: $cf
    dec l                                         ; $742c: $2d
    ld a, [$844e]                                 ; $742d: $fa $4e $84
    inc d                                         ; $7430: $14
    nop                                           ; $7431: $00
    nop                                           ; $7432: $00
    ld l, [hl]                                    ; $7433: $6e
    dec d                                         ; $7434: $15
    ld hl, sp+$1d                                 ; $7435: $f8 $1d
    ld [$450c], a                                 ; $7437: $ea $0c $45
    nop                                           ; $743a: $00
    call nc, Call_000_3f25                        ; $743b: $d4 $25 $3f
    ld d, e                                       ; $743e: $53
    ld e, e                                       ; $743f: $5b
    ld [hl], $67                                  ; $7440: $36 $67
    inc b                                         ; $7442: $04
    rrca                                          ; $7443: $0f
    ld e, d                                       ; $7444: $5a
    nop                                           ; $7445: $00
    jr nz, jr_0b1_74a2                            ; $7446: $20 $5a

    ld [hl], e                                    ; $7448: $73
    ld hl, $4800                                  ; $7449: $21 $00 $48
    ld b, l                                       ; $744c: $45
    ld d, h                                       ; $744d: $54
    ld h, [hl]                                    ; $744e: $66
    nop                                           ; $744f: $00
    jr nz, jr_0b1_7474                            ; $7450: $20 $22

    nop                                           ; $7452: $00
    or $19                                        ; $7453: $f6 $19
    rrc b                                         ; $7455: $cb $08
    cp [hl]                                       ; $7457: $be
    ld e, $44                                     ; $7458: $1e $44
    inc b                                         ; $745a: $04
    sub e                                         ; $745b: $93
    dec e                                         ; $745c: $1d
    cp a                                          ; $745d: $bf
    ld b, d                                       ; $745e: $42
    ld a, [hl-]                                   ; $745f: $3a
    ld a, [de]                                    ; $7460: $1a
    ld b, d                                       ; $7461: $42
    ld [$39ce], sp                                ; $7462: $08 $ce $39
    ld [hl], e                                    ; $7465: $73
    ld b, [hl]                                    ; $7466: $46
    add hl, de                                    ; $7467: $19

jr_0b1_7468:
    ld d, a                                       ; $7468: $57
    nop                                           ; $7469: $00
    nop                                           ; $746a: $00
    sub b                                         ; $746b: $90
    dec e                                         ; $746c: $1d
    ld a, e                                       ; $746d: $7b
    ld a, [de]                                    ; $746e: $1a
    add a                                         ; $746f: $87
    ld [$0001], sp                                ; $7470: $08 $01 $00
    ld d, e                                       ; $7473: $53

jr_0b1_7474:
    add hl, de                                    ; $7474: $19
    xor e                                         ; $7475: $ab
    ld [$2e3b], sp                                ; $7476: $08 $3b $2e
    nop                                           ; $7479: $00
    inc e                                         ; $747a: $1c
    push af                                       ; $747b: $f5
    inc c                                         ; $747c: $0c
    jr nc, jr_0b1_74d9                            ; $747d: $30 $5a

    ld e, c                                       ; $747f: $59
    ld l, a                                       ; $7480: $6f
    nop                                           ; $7481: $00
    inc d                                         ; $7482: $14
    cpl                                           ; $7483: $2f
    ld d, [hl]                                    ; $7484: $56
    daa                                           ; $7485: $27
    ld b, c                                       ; $7486: $41
    sub [hl]                                      ; $7487: $96
    ld l, d                                       ; $7488: $6a
    xor c                                         ; $7489: $a9
    ld [$15f9], sp                                ; $748a: $08 $f9 $15
    ld d, c                                       ; $748d: $51
    dec d                                         ; $748e: $15
    sbc a                                         ; $748f: $9f
    inc sp                                        ; $7490: $33
    nop                                           ; $7491: $00
    nop                                           ; $7492: $00
    sub h                                         ; $7493: $94
    ld de, $227a                                  ; $7494: $11 $7a $22
    jp z, Jump_000_000c                           ; $7497: $ca $0c $00

    nop                                           ; $749a: $00
    rst $20                                       ; $749b: $e7
    jr jr_0b1_74d0                                ; $749c: $18 $32

    ld a, [hl-]                                   ; $749e: $3a
    ld c, d                                       ; $749f: $4a
    dec h                                         ; $74a0: $25
    ld h, l                                       ; $74a1: $65

jr_0b1_74a2:
    inc b                                         ; $74a2: $04
    or h                                          ; $74a3: $b4
    ld hl, $533f                                  ; $74a4: $21 $3f $53
    ld e, h                                       ; $74a7: $5c
    ld [de], a                                    ; $74a8: $12
    ld [bc], a                                    ; $74a9: $02
    nop                                           ; $74aa: $00
    sbc l                                         ; $74ab: $9d
    ld a, [hl-]                                   ; $74ac: $3a
    call Call_000_3f08                            ; $74ad: $cd $08 $3f
    ld d, e                                       ; $74b0: $53
    nop                                           ; $74b1: $00
    jr nz, jr_0b1_7468                            ; $74b2: $20 $b4

    ld h, d                                       ; $74b4: $62
    ld h, a                                       ; $74b5: $67
    ld [$2a1a], sp                                ; $74b6: $08 $1a $2a
    nop                                           ; $74b9: $00
    inc d                                         ; $74ba: $14
    xor e                                         ; $74bb: $ab
    ld c, l                                       ; $74bc: $4d
    sub $66                                       ; $74bd: $d6 $66
    sub $25                                       ; $74bf: $d6 $25
    nop                                           ; $74c1: $00
    nop                                           ; $74c2: $00
    or l                                          ; $74c3: $b5
    dec h                                         ; $74c4: $25
    ld e, e                                       ; $74c5: $5b
    ld a, [hl-]                                   ; $74c6: $3a
    adc b                                         ; $74c7: $88
    inc b                                         ; $74c8: $04
    nop                                           ; $74c9: $00
    nop                                           ; $74ca: $00
    sub l                                         ; $74cb: $95
    dec b                                         ; $74cc: $05
    ld a, d                                       ; $74cd: $7a
    ld e, $aa                                     ; $74ce: $1e $aa

jr_0b1_74d0:
    inc b                                         ; $74d0: $04
    nop                                           ; $74d1: $00
    nop                                           ; $74d2: $00
    ld c, d                                       ; $74d3: $4a
    dec h                                         ; $74d4: $25
    rst $28                                       ; $74d5: $ef
    dec [hl]                                      ; $74d6: $35
    add h                                         ; $74d7: $84
    inc c                                         ; $74d8: $0c

jr_0b1_74d9:
    ld [hl+], a                                   ; $74d9: $22
    inc b                                         ; $74da: $04
    ld [hl], e                                    ; $74db: $73
    ld de, $22dc                                  ; $74dc: $11 $dc $22
    jp hl                                         ; $74df: $e9


    inc b                                         ; $74e0: $04
    nop                                           ; $74e1: $00
    nop                                           ; $74e2: $00
    ld e, d                                       ; $74e3: $5a
    dec d                                         ; $74e4: $15
    adc h                                         ; $74e5: $8c
    inc b                                         ; $74e6: $04
    dec h                                         ; $74e7: $25
    inc b                                         ; $74e8: $04
    ld h, l                                       ; $74e9: $65
    ld [$62b4], sp                                ; $74ea: $08 $b4 $62
    nop                                           ; $74ed: $00
    jr nz, jr_0b1_7509                            ; $74ee: $20 $19

    ld a, [hl+]                                   ; $74f0: $2a
    nop                                           ; $74f1: $00
    jr @-$74                                      ; $74f2: $18 $8a

    ld c, c                                       ; $74f4: $49
    ld a, d                                       ; $74f5: $7a
    ld [hl], e                                    ; $74f6: $73
    ld [hl], d                                    ; $74f7: $72
    ld e, d                                       ; $74f8: $5a
    ld h, a                                       ; $74f9: $67
    inc b                                         ; $74fa: $04
    push de                                       ; $74fb: $d5
    add hl, hl                                    ; $74fc: $29
    sbc h                                         ; $74fd: $9c
    ld b, d                                       ; $74fe: $42
    ld c, $11                                     ; $74ff: $0e $11
    ld b, e                                       ; $7501: $43
    inc b                                         ; $7502: $04
    add hl, de                                    ; $7503: $19
    ld [de], a                                    ; $7504: $12
    inc c                                         ; $7505: $0c
    add hl, bc                                    ; $7506: $09
    cp h                                          ; $7507: $bc
    ld [hl+], a                                   ; $7508: $22

jr_0b1_7509:
    ld hl, $ff04                                  ; $7509: $21 $04 $ff
    ld a, a                                       ; $750c: $7f
    ld c, e                                       ; $750d: $4b
    dec h                                         ; $750e: $25
    ldh a, [$31]                                  ; $750f: $f0 $31
    ld [hl+], a                                   ; $7511: $22
    nop                                           ; $7512: $00
    push de                                       ; $7513: $d5
    dec c                                         ; $7514: $0d
    ld [hl], b                                    ; $7515: $70
    ld c, a                                       ; $7516: $4f
    sbc h                                         ; $7517: $9c
    ld a, [de]                                    ; $7518: $1a
    jr nz, jr_0b1_751b                            ; $7519: $20 $00

jr_0b1_751b:
    ld a, [$c908]                                 ; $751b: $fa $08 $c9
    add hl, de                                    ; $751e: $19
    ld l, d                                       ; $751f: $6a
    inc b                                         ; $7520: $04
    nop                                           ; $7521: $00
    nop                                           ; $7522: $00
    nop                                           ; $7523: $00
    jr nz, jr_0b1_758a                            ; $7524: $20 $64

    ld [$0467], sp                                ; $7526: $08 $67 $04
    nop                                           ; $7529: $00
    inc e                                         ; $752a: $1c
    xor h                                         ; $752b: $ac
    ld c, l                                       ; $752c: $4d
    or h                                          ; $752d: $b4
    ld h, d                                       ; $752e: $62
    sbc e                                         ; $752f: $9b
    ld [hl], a                                    ; $7530: $77
    ld b, d                                       ; $7531: $42
    inc b                                         ; $7532: $04
    or l                                          ; $7533: $b5
    dec h                                         ; $7534: $25
    sbc h                                         ; $7535: $9c
    ld b, d                                       ; $7536: $42
    call z, Call_0b1_640c                         ; $7537: $cc $0c $64
    inc b                                         ; $753a: $04
    jr jr_0b1_754b                                ; $753b: $18 $0e

    ld d, [hl]                                    ; $753d: $56
    ld [hl], d                                    ; $753e: $72
    ld e, $23                                     ; $753f: $1e $23
    nop                                           ; $7541: $00
    inc b                                         ; $7542: $04
    adc $31                                       ; $7543: $ce $31
    rst $10                                       ; $7545: $d7
    ld b, d                                       ; $7546: $42
    and l                                         ; $7547: $a5
    stop                                          ; $7548: $10 $00
    nop                                           ; $754a: $00

jr_0b1_754b:
    ld [hl], b                                    ; $754b: $70
    ld c, a                                       ; $754c: $4f
    ld e, c                                       ; $754d: $59
    ld a, [de]                                    ; $754e: $1a
    add sp, $08                                   ; $754f: $e8 $08
    ld [bc], a                                    ; $7551: $02
    nop                                           ; $7552: $00
    add hl, de                                    ; $7553: $19
    ld l, $08                                     ; $7554: $2e $08
    ld a, [de]                                    ; $7556: $1a
    xor e                                         ; $7557: $ab
    inc c                                         ; $7558: $0c
    nop                                           ; $7559: $00
    nop                                           ; $755a: $00
    ld [hl], e                                    ; $755b: $73
    add hl, de                                    ; $755c: $19
    nop                                           ; $755d: $00
    jr nz, @+$66                                  ; $755e: $20 $64

    ld [$2000], sp                                ; $7560: $08 $00 $20
    adc e                                         ; $7563: $8b
    ld c, c                                       ; $7564: $49
    push de                                       ; $7565: $d5
    ld h, [hl]                                    ; $7566: $66
    cpl                                           ; $7567: $2f
    ld d, [hl]                                    ; $7568: $56
    ld [hl+], a                                   ; $7569: $22
    inc b                                         ; $756a: $04
    sub l                                         ; $756b: $95
    ld hl, $0ccc                                  ; $756c: $21 $cc $0c
    ld a, e                                       ; $756f: $7b
    ld a, [hl-]                                   ; $7570: $3a
    add [hl]                                      ; $7571: $86
    ld [$7255], sp                                ; $7572: $08 $55 $72
    ld e, d                                       ; $7575: $5a
    ld d, $31                                     ; $7576: $16 $31
    dec b                                         ; $7578: $05
    ld [hl+], a                                   ; $7579: $22
    nop                                           ; $757a: $00
    ld sp, $fa15                                  ; $757b: $31 $15 $fa
    dec h                                         ; $757e: $25
    add a                                         ; $757f: $87
    ld [$0462], sp                                ; $7580: $08 $62 $04
    or [hl]                                       ; $7583: $b6
    dec c                                         ; $7584: $0d
    ld [hl], b                                    ; $7585: $70
    ld c, a                                       ; $7586: $4f
    cp $1e                                        ; $7587: $fe $1e
    ld [hl+], a                                   ; $7589: $22

jr_0b1_758a:
    inc b                                         ; $758a: $04
    rst $30                                       ; $758b: $f7
    dec l                                         ; $758c: $2d
    adc d                                         ; $758d: $8a
    ld [$3a7c], sp                                ; $758e: $08 $7c $3a
    nop                                           ; $7591: $00
    jr nz, @+$75                                  ; $7592: $20 $73

    add hl, de                                    ; $7594: $19
    ld h, h                                       ; $7595: $64
    ld [$1d94], sp                                ; $7596: $08 $94 $1d
    nop                                           ; $7599: $00
    jr nz, @+$4a                                  ; $759a: $20 $48

    ld b, c                                       ; $759c: $41
    cpl                                           ; $759d: $2f
    ld d, [hl]                                    ; $759e: $56
    adc e                                         ; $759f: $8b
    ld c, c                                       ; $75a0: $49
    inc hl                                        ; $75a1: $23
    inc b                                         ; $75a2: $04
    or [hl]                                       ; $75a3: $b6
    dec h                                         ; $75a4: $25
    sub l                                         ; $75a5: $95
    ld l, d                                       ; $75a6: $6a
    db $ed                                        ; $75a7: $ed
    db $10                                        ; $75a8: $10
    add [hl]                                      ; $75a9: $86
    inc b                                         ; $75aa: $04
    sub $11                                       ; $75ab: $d6 $11
    ld d, [hl]                                    ; $75ad: $56
    ld [hl], d                                    ; $75ae: $72
    sbc e                                         ; $75af: $9b
    ld a, [de]                                    ; $75b0: $1a
    ld b, e                                       ; $75b1: $43
    inc b                                         ; $75b2: $04
    ld [hl], d                                    ; $75b3: $72
    dec d                                         ; $75b4: $15
    ld h, $51                                     ; $75b5: $26 $51
    or l                                          ; $75b7: $b5
    ld [hl], d                                    ; $75b8: $72
    ld b, c                                       ; $75b9: $41
    nop                                           ; $75ba: $00
    sub e                                         ; $75bb: $93
    add hl, bc                                    ; $75bc: $09
    jp nc, Jump_000_1962                          ; $75bd: $d2 $62 $19

    ld [de], a                                    ; $75c0: $12
    ld h, h                                       ; $75c1: $64
    ld [$2194], sp                                ; $75c2: $08 $94 $21
    ld a, e                                       ; $75c5: $7b
    ld a, [hl-]                                   ; $75c6: $3a
    adc b                                         ; $75c7: $88
    inc b                                         ; $75c8: $04
    nop                                           ; $75c9: $00
    inc d                                         ; $75ca: $14
    ld h, h                                       ; $75cb: $64
    ld [$2000], sp                                ; $75cc: $08 $00 $20
    adc b                                         ; $75cf: $88
    inc b                                         ; $75d0: $04
    nop                                           ; $75d1: $00
    jr nz, jr_0b1_75da                            ; $75d2: $20 $06

    ld b, c                                       ; $75d4: $41
    ld h, $41                                     ; $75d5: $26 $41
    sbc e                                         ; $75d7: $9b
    ld a, [de]                                    ; $75d8: $1a
    ld [hl+], a                                   ; $75d9: $22

jr_0b1_75da:
    inc b                                         ; $75da: $04
    adc d                                         ; $75db: $8a
    ld c, c                                       ; $75dc: $49
    call z, Call_0b1_550c                         ; $75dd: $cc $0c $55
    halt                                          ; $75e0: $76
    ld h, h                                       ; $75e1: $64
    ld [$1217], sp                                ; $75e2: $08 $17 $12
    ld d, l                                       ; $75e5: $55
    halt                                          ; $75e6: $76
    ld e, $23                                     ; $75e7: $1e $23
    ld [hl+], a                                   ; $75e9: $22
    nop                                           ; $75ea: $00
    dec c                                         ; $75eb: $0d
    dec b                                         ; $75ec: $05
    add $2c                                       ; $75ed: $c6 $2c
    or $0d                                        ; $75ef: $f6 $0d
    nop                                           ; $75f1: $00
    nop                                           ; $75f2: $00
    rst $10                                       ; $75f3: $d7
    dec c                                         ; $75f4: $0d
    ld d, l                                       ; $75f5: $55
    halt                                          ; $75f6: $76
    db $dd                                        ; $75f7: $dd
    ld e, $65                                     ; $75f8: $1e $65

jr_0b1_75fa:
    inc b                                         ; $75fa: $04
    sub h                                         ; $75fb: $94
    dec e                                         ; $75fc: $1d
    ld d, l                                       ; $75fd: $55
    halt                                          ; $75fe: $76
    ld e, e                                       ; $75ff: $5b
    ld [hl], $00                                  ; $7600: $36 $00
    nop                                           ; $7602: $00
    push hl                                       ; $7603: $e5
    inc a                                         ; $7604: $3c
    nop                                           ; $7605: $00
    jr nz, jr_0b1_7663                            ; $7606: $20 $5b

    ld [hl], $00                                  ; $7608: $36 $00
    jr nz, jr_0b1_75fa                            ; $760a: $20 $ee

    ld e, l                                       ; $760c: $5d
    ld d, l                                       ; $760d: $55
    halt                                          ; $760e: $76
    ld e, $23                                     ; $760f: $1e $23
    ld b, h                                       ; $7611: $44
    nop                                           ; $7612: $00
    xor h                                         ; $7613: $ac
    ld d, l                                       ; $7614: $55
    ld b, $3d                                     ; $7615: $06 $3d
    ld d, l                                       ; $7617: $55
    halt                                          ; $7618: $76
    nop                                           ; $7619: $00
    nop                                           ; $761a: $00
    or [hl]                                       ; $761b: $b6
    add hl, bc                                    ; $761c: $09
    ld d, l                                       ; $761d: $55
    halt                                          ; $761e: $76
    ld e, d                                       ; $761f: $5a

jr_0b1_7620:
    ld a, [de]                                    ; $7620: $1a

jr_0b1_7621:
    nop                                           ; $7621: $00
    nop                                           ; $7622: $00
    ld h, $51                                     ; $7623: $26 $51
    ret z                                         ; $7625: $c8

    db $10                                        ; $7626: $10
    or l                                          ; $7627: $b5
    ld [hl], d                                    ; $7628: $72
    ld b, h                                       ; $7629: $44
    nop                                           ; $762a: $00
    or h                                          ; $762b: $b4
    dec c                                         ; $762c: $0d
    ld d, h                                       ; $762d: $54
    ld [hl], d                                    ; $762e: $72
    cp h                                          ; $762f: $bc
    ld [hl+], a                                   ; $7630: $22
    ld b, h                                       ; $7631: $44
    inc b                                         ; $7632: $04
    xor h                                         ; $7633: $ac
    ld d, l                                       ; $7634: $55
    ld c, l                                       ; $7635: $4d
    dec l                                         ; $7636: $2d
    ld d, h                                       ; $7637: $54
    halt                                          ; $7638: $76
    nop                                           ; $7639: $00
    jr nz, jr_0b1_7621                            ; $763a: $20 $e5

    inc a                                         ; $763c: $3c
    ld c, l                                       ; $763d: $4d
    dec l                                         ; $763e: $2d
    ld d, h                                       ; $763f: $54
    halt                                          ; $7640: $76
    nop                                           ; $7641: $00
    jr nz, jr_0b1_75fa                            ; $7642: $20 $b6

    add hl, bc                                    ; $7644: $09
    ld d, l                                       ; $7645: $55

jr_0b1_7646:
    halt                                          ; $7646: $76
    ld e, d                                       ; $7647: $5a
    ld a, [de]                                    ; $7648: $1a
    ld bc, $ac00                                  ; $7649: $01 $00 $ac
    ld d, l                                       ; $764c: $55
    ld d, h                                       ; $764d: $54
    ld [hl], d                                    ; $764e: $72
    jr jr_0b1_76c8                                ; $764f: $18 $77

    xor b                                         ; $7651: $a8
    inc b                                         ; $7652: $04
    ld d, l                                       ; $7653: $55
    halt                                          ; $7654: $76
    rst $30                                       ; $7655: $f7
    dec c                                         ; $7656: $0d
    sbc h                                         ; $7657: $9c
    ld a, [de]                                    ; $7658: $1a
    nop                                           ; $7659: $00
    nop                                           ; $765a: $00
    jr nc, jr_0b1_76c3                            ; $765b: $30 $66

    sub d                                         ; $765d: $92
    dec c                                         ; $765e: $0d
    xor b                                         ; $765f: $a8
    ld [$0443], sp                                ; $7660: $08 $43 $04

jr_0b1_7663:
    add hl, de                                    ; $7663: $19
    ld c, $55                                     ; $7664: $0e $55
    halt                                          ; $7666: $76
    ld d, a                                       ; $7667: $57
    ld h, $00                                     ; $7668: $26 $00
    nop                                           ; $766a: $00
    xor h                                         ; $766b: $ac
    ld d, l                                       ; $766c: $55
    ld d, h                                       ; $766d: $54
    ld [hl], d                                    ; $766e: $72
    push hl                                       ; $766f: $e5
    inc a                                         ; $7670: $3c
    nop                                           ; $7671: $00
    jr nz, jr_0b1_7620                            ; $7672: $20 $ac

    ld d, l                                       ; $7674: $55
    ld d, h                                       ; $7675: $54
    ld [hl], d                                    ; $7676: $72
    push hl                                       ; $7677: $e5
    inc a                                         ; $7678: $3c
    nop                                           ; $7679: $00
    jr nz, jr_0b1_76d1                            ; $767a: $20 $55

    halt                                          ; $767c: $76
    rst $30                                       ; $767d: $f7
    dec c                                         ; $767e: $0d
    sbc h                                         ; $767f: $9c
    ld a, [de]                                    ; $7680: $1a
    nop                                           ; $7681: $00
    ld [$7654], sp                                ; $7682: $08 $54 $76
    jr jr_0b1_76fe                                ; $7685: $18 $77

jr_0b1_7687:
    rst $38                                       ; $7687: $ff
    ld a, a                                       ; $7688: $7f
    ld [hl+], a                                   ; $7689: $22
    nop                                           ; $768a: $00
    sub d                                         ; $768b: $92
    ld de, $7655                                  ; $768c: $11 $55 $76
    sbc h                                         ; $768f: $9c
    ld [hl+], a                                   ; $7690: $22
    nop                                           ; $7691: $00
    inc b                                         ; $7692: $04
    sub d                                         ; $7693: $92
    dec c                                         ; $7694: $0d
    add $2c                                       ; $7695: $c6 $2c
    and a                                         ; $7697: $a7
    inc b                                         ; $7698: $04
    ld [hl+], a                                   ; $7699: $22
    nop                                           ; $769a: $00
    rla                                           ; $769b: $17
    ld a, [de]                                    ; $769c: $1a
    ld d, l                                       ; $769d: $55
    halt                                          ; $769e: $76
    rst $38                                       ; $769f: $ff
    ld h, $00                                     ; $76a0: $26 $00
    nop                                           ; $76a2: $00
    ld d, l                                       ; $76a3: $55
    halt                                          ; $76a4: $76
    ld a, e                                       ; $76a5: $7b
    ld [hl], a                                    ; $76a6: $77
    nop                                           ; $76a7: $00
    jr nz, jr_0b1_76aa                            ; $76a8: $20 $00

jr_0b1_76aa:
    jr nz, jr_0b1_7701                            ; $76aa: $20 $55

    halt                                          ; $76ac: $76
    ld a, e                                       ; $76ad: $7b
    ld [hl], a                                    ; $76ae: $77
    nop                                           ; $76af: $00
    jr nz, jr_0b1_76b2                            ; $76b0: $20 $00

jr_0b1_76b2:
    jr nz, jr_0b1_7646                            ; $76b2: $20 $92

    ld de, $7655                                  ; $76b4: $11 $55 $76
    sbc h                                         ; $76b7: $9c
    ld [hl+], a                                   ; $76b8: $22
    nop                                           ; $76b9: $00
    nop                                           ; $76ba: $00
    ld d, l                                       ; $76bb: $55
    halt                                          ; $76bc: $76
    sbc h                                         ; $76bd: $9c
    ld [hl], a                                    ; $76be: $77
    nop                                           ; $76bf: $00
    jr nz, jr_0b1_76c3                            ; $76c0: $20 $01

    nop                                           ; $76c2: $00

jr_0b1_76c3:
    or $11                                        ; $76c3: $f6 $11
    ld d, l                                       ; $76c5: $55
    halt                                          ; $76c6: $76
    cp h                                          ; $76c7: $bc

jr_0b1_76c8:
    ld e, $00                                     ; $76c8: $1e $00
    nop                                           ; $76ca: $00
    rrca                                          ; $76cb: $0f
    ld h, d                                       ; $76cc: $62
    sbc h                                         ; $76cd: $9c
    ld a, e                                       ; $76ce: $7b
    or l                                          ; $76cf: $b5
    ld l, [hl]                                    ; $76d0: $6e

jr_0b1_76d1:
    nop                                           ; $76d1: $00
    nop                                           ; $76d2: $00
    push hl                                       ; $76d3: $e5
    inc a                                         ; $76d4: $3c
    rrca                                          ; $76d5: $0f
    ld e, d                                       ; $76d6: $5a
    ld c, c                                       ; $76d7: $49
    ld c, c                                       ; $76d8: $49
    nop                                           ; $76d9: $00
    nop                                           ; $76da: $00

jr_0b1_76db:
    rst $30                                       ; $76db: $f7
    ld [hl], d                                    ; $76dc: $72

jr_0b1_76dd:
    sbc $7b                                       ; $76dd: $de $7b
    nop                                           ; $76df: $00

jr_0b1_76e0:
    jr nz, jr_0b1_76e2                            ; $76e0: $20 $00

jr_0b1_76e2:
    jr nz, jr_0b1_76db                            ; $76e2: $20 $f7

    ld [hl], d                                    ; $76e4: $72
    sbc $7b                                       ; $76e5: $de $7b
    nop                                           ; $76e7: $00
    jr nz, jr_0b1_76ea                            ; $76e8: $20 $00

jr_0b1_76ea:
    jr nz, jr_0b1_76e2                            ; $76ea: $20 $f6

    ld de, $7655                                  ; $76ec: $11 $55 $76
    cp h                                          ; $76ef: $bc
    ld e, $00                                     ; $76f0: $1e $00
    jr nz, jr_0b1_7687                            ; $76f2: $20 $93

    ld h, d                                       ; $76f4: $62
    sbc h                                         ; $76f5: $9c
    ld [hl], a                                    ; $76f6: $77
    ld l, c                                       ; $76f7: $69
    ld b, l                                       ; $76f8: $45
    push hl                                       ; $76f9: $e5
    inc a                                         ; $76fa: $3c
    ld sp, $f766                                  ; $76fb: $31 $66 $f7

jr_0b1_76fe:
    ld [hl], d                                    ; $76fe: $72
    ld c, c                                       ; $76ff: $49
    ld c, l                                       ; $7700: $4d

jr_0b1_7701:
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
    jr nc, jr_0b1_776d                            ; $770d: $30 $5e

    ld e, d                                       ; $770f: $5a
    ld [hl], e                                    ; $7710: $73
    nop                                           ; $7711: $00
    jr nz, @+$75                                  ; $7712: $20 $73

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
    jr nz, jr_0b1_7724                            ; $7722: $20 $00

jr_0b1_7724:
    jr nz, jr_0b1_7726                            ; $7724: $20 $00

jr_0b1_7726:
    jr nz, jr_0b1_76dd                            ; $7726: $20 $b5

    add hl, de                                    ; $7728: $19
    nop                                           ; $7729: $00
    nop                                           ; $772a: $00
    nop                                           ; $772b: $00
    jr nz, jr_0b1_774f                            ; $772c: $20 $21

    inc h                                         ; $772e: $24
    ld b, d                                       ; $772f: $42
    jr z, jr_0b1_7732                             ; $7730: $28 $00

jr_0b1_7732:
    nop                                           ; $7732: $00
    ld l, e                                       ; $7733: $6b
    ld b, c                                       ; $7734: $41
    jp hl                                         ; $7735: $e9


    inc de                                        ; $7736: $13
    nop                                           ; $7737: $00
    jr nz, jr_0b1_76e0                            ; $7738: $20 $a6

    nop                                           ; $773a: $00
    sbc a                                         ; $773b: $9f
    cpl                                           ; $773c: $2f
    adc h                                         ; $773d: $8c
    ld b, l                                       ; $773e: $45
    ld [hl], l                                    ; $773f: $75
    dec c                                         ; $7740: $0d
    and [hl]                                      ; $7741: $a6
    nop                                           ; $7742: $00
    sbc a                                         ; $7743: $9f
    cpl                                           ; $7744: $2f
    adc [hl]                                      ; $7745: $8e
    add hl, sp                                    ; $7746: $39
    ld h, e                                       ; $7747: $63
    jr z, jr_0b1_774a                             ; $7748: $28 $00

jr_0b1_774a:
    jr nz, @-$5f                                  ; $774a: $20 $9f

    cpl                                           ; $774c: $2f
    adc [hl]                                      ; $774d: $8e
    add hl, sp                                    ; $774e: $39

jr_0b1_774f:
    ld h, e                                       ; $774f: $63
    jr z, jr_0b1_7752                             ; $7750: $28 $00

jr_0b1_7752:
    jr nz, @+$01                                  ; $7752: $20 $ff

    ld a, a                                       ; $7754: $7f
    adc [hl]                                      ; $7755: $8e
    add hl, sp                                    ; $7756: $39
    ld h, e                                       ; $7757: $63
    jr z, jr_0b1_775a                             ; $7758: $28 $00

jr_0b1_775a:
    jr nz, jr_0b1_77c7                            ; $775a: $20 $6b

    ld b, c                                       ; $775c: $41
    jp hl                                         ; $775d: $e9


    inc de                                        ; $775e: $13
    nop                                           ; $775f: $00
    jr nz, jr_0b1_7762                            ; $7760: $20 $00

jr_0b1_7762:
    nop                                           ; $7762: $00
    jp $d50e                                      ; $7763: $c3 $0e $d5


    rlca                                          ; $7766: $07
    ld hl, $0024                                  ; $7767: $21 $24 $00
    nop                                           ; $776a: $00
    rst $28                                       ; $776b: $ef
    ld c, l                                       ; $776c: $4d

jr_0b1_776d:
    db $ec                                        ; $776d: $ec
    rrca                                          ; $776e: $0f
    cp c                                          ; $776f: $b9
    inc bc                                        ; $7770: $03
    and [hl]                                      ; $7771: $a6
    nop                                           ; $7772: $00
    ccf                                           ; $7773: $3f
    ld [de], a                                    ; $7774: $12
    rst $38                                       ; $7775: $ff
    ccf                                           ; $7776: $3f
    add hl, hl                                    ; $7777: $29
    dec a                                         ; $7778: $3d
    rst $00                                       ; $7779: $c7
    nop                                           ; $777a: $00
    ld e, a                                       ; $777b: $5f
    ld [de], a                                    ; $777c: $12
    adc h                                         ; $777d: $8c
    ld b, l                                       ; $777e: $45
    rst $38                                       ; $777f: $ff
    ccf                                           ; $7780: $3f
    nop                                           ; $7781: $00
    jr nz, @+$01                                  ; $7782: $20 $ff

    ld a, a                                       ; $7784: $7f
    ld hl, $ff24                                  ; $7785: $21 $24 $ff
    ccf                                           ; $7788: $3f
    nop                                           ; $7789: $00
    jr nz, @+$01                                  ; $778a: $20 $ff

    ld a, a                                       ; $778c: $7f
    ld hl, $ff24                                  ; $778d: $21 $24 $ff
    ccf                                           ; $7790: $3f
    nop                                           ; $7791: $00
    jr nz, jr_0b1_77bd                            ; $7792: $20 $29

    add hl, sp                                    ; $7794: $39
    add h                                         ; $7795: $84
    inc l                                         ; $7796: $2c
    xor l                                         ; $7797: $ad
    ld c, c                                       ; $7798: $49
    nop                                           ; $7799: $00
    nop                                           ; $779a: $00
    xor l                                         ; $779b: $ad
    ld c, c                                       ; $779c: $49
    add h                                         ; $779d: $84
    inc l                                         ; $779e: $2c
    and b                                         ; $779f: $a0
    add hl, bc                                    ; $77a0: $09
    nop                                           ; $77a1: $00
    nop                                           ; $77a2: $00
    sbc e                                         ; $77a3: $9b
    rrca                                          ; $77a4: $0f
    xor c                                         ; $77a5: $a9
    ld hl, $7fff                                  ; $77a6: $21 $ff $7f
    add l                                         ; $77a9: $85
    nop                                           ; $77aa: $00
    ld e, e                                       ; $77ab: $5b
    inc e                                         ; $77ac: $1c
    sbc a                                         ; $77ad: $9f
    ld [de], a                                    ; $77ae: $12
    rst $38                                       ; $77af: $ff
    ccf                                           ; $77b0: $3f
    and [hl]                                      ; $77b1: $a6
    inc c                                         ; $77b2: $0c
    db $10                                        ; $77b3: $10
    ld d, d                                       ; $77b4: $52
    ccf                                           ; $77b5: $3f
    daa                                           ; $77b6: $27
    ld e, e                                       ; $77b7: $5b
    inc e                                         ; $77b8: $1c
    nop                                           ; $77b9: $00
    jr nz, @+$01                                  ; $77ba: $20 $ff

    ld a, a                                       ; $77bc: $7f

jr_0b1_77bd:
    inc b                                         ; $77bd: $04
    nop                                           ; $77be: $00
    ld e, e                                       ; $77bf: $5b
    inc e                                         ; $77c0: $1c
    nop                                           ; $77c1: $00
    jr nz, @+$01                                  ; $77c2: $20 $ff

    ld a, a                                       ; $77c4: $7f
    inc b                                         ; $77c5: $04
    nop                                           ; $77c6: $00

jr_0b1_77c7:
    ld e, e                                       ; $77c7: $5b
    inc e                                         ; $77c8: $1c
    nop                                           ; $77c9: $00
    nop                                           ; $77ca: $00
    xor l                                         ; $77cb: $ad
    ld c, c                                       ; $77cc: $49
    db $fd                                        ; $77cd: $fd
    inc bc                                        ; $77ce: $03
    ld b, d                                       ; $77cf: $42
    jr z, jr_0b1_77f2                             ; $77d0: $28 $20

    nop                                           ; $77d2: $00
    add hl, hl                                    ; $77d3: $29

jr_0b1_77d4:
    dec a                                         ; $77d4: $3d
    rst $38                                       ; $77d5: $ff
    inc bc                                        ; $77d6: $03
    ld [hl], e                                    ; $77d7: $73
    ld e, d                                       ; $77d8: $5a
    nop                                           ; $77d9: $00
    nop                                           ; $77da: $00
    ld e, e                                       ; $77db: $5b
    rra                                           ; $77dc: $1f
    rst $38                                       ; $77dd: $ff
    ld a, a                                       ; $77de: $7f
    inc b                                         ; $77df: $04
    ld a, [bc]                                    ; $77e0: $0a
    jr nz, jr_0b1_77e3                            ; $77e1: $20 $00

jr_0b1_77e3:
    sbc $11                                       ; $77e3: $de $11
    rst $38                                       ; $77e5: $ff
    ccf                                           ; $77e6: $3f
    ld c, h                                       ; $77e7: $4c
    ld bc, $00c8                                  ; $77e8: $01 $c8 $00
    ld a, a                                       ; $77eb: $7f
    ld [de], a                                    ; $77ec: $12
    sbc h                                         ; $77ed: $9c
    ld b, e                                       ; $77ee: $43
    add $30                                       ; $77ef: $c6 $30
    ld [bc], a                                    ; $77f1: $02

jr_0b1_77f2:
    nop                                           ; $77f2: $00
    ccf                                           ; $77f3: $3f
    ld e, a                                       ; $77f4: $5f
    rst $38                                       ; $77f5: $ff
    ld a, e                                       ; $77f6: $7b
    nop                                           ; $77f7: $00
    jr nz, jr_0b1_77fa                            ; $77f8: $20 $00

jr_0b1_77fa:
    jr nz, jr_0b1_77d4                            ; $77fa: $20 $d8

    add hl, hl                                    ; $77fc: $29
    ld b, a                                       ; $77fd: $47
    inc b                                         ; $77fe: $04
    cp a                                          ; $77ff: $bf
    ld c, d                                       ; $7800: $4a
    nop                                           ; $7801: $00
    nop                                           ; $7802: $00
    jp $d713                                      ; $7803: $c3 $13 $d7


    rlca                                          ; $7806: $07
    adc h                                         ; $7807: $8c
    ld b, l                                       ; $7808: $45
    nop                                           ; $7809: $00
    nop                                           ; $780a: $00
    or l                                          ; $780b: $b5

jr_0b1_780c:
    ld h, d                                       ; $780c: $62
    db $fd                                        ; $780d: $fd
    inc bc                                        ; $780e: $03
    ldh [rDIV], a                                 ; $780f: $e0 $04
    nop                                           ; $7811: $00
    nop                                           ; $7812: $00
    sbc l                                         ; $7813: $9d
    rra                                           ; $7814: $1f
    and $05                                       ; $7815: $e6 $05
    cp a                                          ; $7817: $bf
    ld a, $01                                     ; $7818: $3e $01
    nop                                           ; $781a: $00
    ld e, a                                       ; $781b: $5f
    ld [de], a                                    ; $781c: $12
    sbc a                                         ; $781d: $9f
    ccf                                           ; $781e: $3f
    push bc                                       ; $781f: $c5
    nop                                           ; $7820: $00
    add h                                         ; $7821: $84
    nop                                           ; $7822: $00
    ld e, a                                       ; $7823: $5f
    ld [de], a                                    ; $7824: $12
    rst $38                                       ; $7825: $ff
    ccf                                           ; $7826: $3f
    rst $38                                       ; $7827: $ff
    ld a, a                                       ; $7828: $7f
    inc b                                         ; $7829: $04
    nop                                           ; $782a: $00
    cp $56                                        ; $782b: $fe $56
    sbc a                                         ; $782d: $9f
    ld l, e                                       ; $782e: $6b
    nop                                           ; $782f: $00
    jr nz, jr_0b1_7832                            ; $7830: $20 $00

jr_0b1_7832:
    jr nz, jr_0b1_780c                            ; $7832: $20 $d8

    add hl, hl                                    ; $7834: $29
    ld h, $04                                     ; $7835: $26 $04
    sbc [hl]                                      ; $7837: $9e
    ld c, d                                       ; $7838: $4a
    nop                                           ; $7839: $00
    nop                                           ; $783a: $00
    add b                                         ; $783b: $80
    ld c, $31                                     ; $783c: $0e $31
    ld d, d                                       ; $783e: $52
    ldh [rNR22], a                                ; $783f: $e0 $17
    nop                                           ; $7841: $00
    nop                                           ; $7842: $00
    dec h                                         ; $7843: $25
    rrca                                          ; $7844: $0f
    db $d3                                        ; $7845: $d3
    rlca                                          ; $7846: $07
    ei                                            ; $7847: $fb
    inc bc                                        ; $7848: $03
    ld b, b                                       ; $7849: $40
    nop                                           ; $784a: $00
    jp z, $da13                                   ; $784b: $ca $13 $da

    dec bc                                        ; $784e: $0b
    cp a                                          ; $784f: $bf
    ld b, d                                       ; $7850: $42
    nop                                           ; $7851: $00
    nop                                           ; $7852: $00
    ld a, [$1f52]                                 ; $7853: $fa $52 $1f
    ld [de], a                                    ; $7856: $12
    rst $00                                       ; $7857: $c7
    nop                                           ; $7858: $00
    nop                                           ; $7859: $00
    nop                                           ; $785a: $00
    call nc, $fa19                                ; $785b: $d4 $19 $fa
    ld d, d                                       ; $785e: $52
    rst $00                                       ; $785f: $c7
    nop                                           ; $7860: $00
    inc h                                         ; $7861: $24
    nop                                           ; $7862: $00
    cp $52                                        ; $7863: $fe $52
    sbc $77                                       ; $7865: $de $77
    rst $08                                       ; $7867: $cf
    inc b                                         ; $7868: $04
    nop                                           ; $7869: $00
    jr nz, jr_0b1_7898                            ; $786a: $20 $2c

    ld l, [hl]                                    ; $786c: $6e
    ld a, l                                       ; $786d: $7d
    ld b, d                                       ; $786e: $42
    ld h, $04                                     ; $786f: $26 $04
    nop                                           ; $7871: $00
    nop                                           ; $7872: $00
    ld sp, $f956                                  ; $7873: $31 $56 $f9
    inc bc                                        ; $7876: $03
    ld [$0039], sp                                ; $7877: $08 $39 $00
    nop                                           ; $787a: $00
    ldh a, [$0b]                                  ; $787b: $f0 $0b
    cp l                                          ; $787d: $bd
    rrca                                          ; $787e: $0f
    cp [hl]                                       ; $787f: $be
    ld a, [hl-]                                   ; $7880: $3a
    ld h, b                                       ; $7881: $60
    inc b                                         ; $7882: $04
    ld c, e                                       ; $7883: $4b
    dec bc                                        ; $7884: $0b
    dec de                                        ; $7885: $1b
    ld d, a                                       ; $7886: $57
    db $fc                                        ; $7887: $fc
    inc bc                                        ; $7888: $03
    nop                                           ; $7889: $00
    nop                                           ; $788a: $00
    ld d, $2a                                     ; $788b: $16 $2a
    ld a, [$574e]                                 ; $788d: $fa $4e $57
    ld [hl], $01                                  ; $7890: $36 $01
    nop                                           ; $7892: $00
    or d                                          ; $7893: $b2
    ld l, b                                       ; $7894: $68
    ld a, b                                       ; $7895: $78
    ld a, [hl-]                                   ; $7896: $3a
    and l                                         ; $7897: $a5

jr_0b1_7898:
    jr jr_0b1_78dd                                ; $7898: $18 $43

    inc b                                         ; $789a: $04
    ld [hl], $3e                                  ; $789b: $36 $3e
    ld c, e                                       ; $789d: $4b
    ld e, b                                       ; $789e: $58
    ld a, [hl]                                    ; $789f: $7e
    ld h, e                                       ; $78a0: $63
    nop                                           ; $78a1: $00
    inc e                                         ; $78a2: $1c
    or c                                          ; $78a3: $b1
    ld [hl], d                                    ; $78a4: $72
    ld a, [hl]                                    ; $78a5: $7e
    ld b, d                                       ; $78a6: $42
    rst $08                                       ; $78a7: $cf
    inc b                                         ; $78a8: $04
    nop                                           ; $78a9: $00
    nop                                           ; $78aa: $00
    ld l, d                                       ; $78ab: $6a
    dec bc                                        ; $78ac: $0b
    adc $4d                                       ; $78ad: $ce $4d
    reti                                          ; $78af: $d9


    inc bc                                        ; $78b0: $03
    nop                                           ; $78b1: $00
    nop                                           ; $78b2: $00
    adc h                                         ; $78b3: $8c
    ld b, c                                       ; $78b4: $41
    sub c                                         ; $78b5: $91
    rlca                                          ; $78b6: $07
    cp [hl]                                       ; $78b7: $be
    ld b, d                                       ; $78b8: $42
    add b                                         ; $78b9: $80
    inc b                                         ; $78ba: $04
    or c                                          ; $78bb: $b1
    rlca                                          ; $78bc: $07
    dec d                                         ; $78bd: $15
    ld h, $fb                                     ; $78be: $26 $fb
    ld d, d                                       ; $78c0: $52
    ld hl, $b304                                  ; $78c1: $21 $04 $b3
    dec d                                         ; $78c4: $15
    sbc b                                         ; $78c5: $98
    ld b, d                                       ; $78c6: $42
    nop                                           ; $78c7: $00
    dec c                                         ; $78c8: $0d
    ld b, e                                       ; $78c9: $43
    inc e                                         ; $78ca: $1c
    ld [hl], a                                    ; $78cb: $77
    ld [hl], l                                    ; $78cc: $75
    adc [hl]                                      ; $78cd: $8e
    dec a                                         ; $78ce: $3d
    db $db                                        ; $78cf: $db
    halt                                          ; $78d0: $76
    ld h, d                                       ; $78d1: $62
    ld [$3a3a], sp                                ; $78d2: $08 $3a $3a
    ld e, h                                       ; $78d5: $5c
    ld h, e                                       ; $78d6: $63
    ld c, e                                       ; $78d7: $4b
    ld e, b                                       ; $78d8: $58
    nop                                           ; $78d9: $00
    jr nz, jr_0b1_794a                            ; $78da: $20 $6e

    ld [hl], d                                    ; $78dc: $72

jr_0b1_78dd:
    ld [hl+], a                                   ; $78dd: $22
    ld e, l                                       ; $78de: $5d
    ld a, l                                       ; $78df: $7d
    ld a, $00                                     ; $78e0: $3e $00
    nop                                           ; $78e2: $00
    ld l, e                                       ; $78e3: $6b
    ld b, c                                       ; $78e4: $41
    rst $08                                       ; $78e5: $cf
    dec bc                                        ; $78e6: $0b
    rst $38                                       ; $78e7: $ff
    ld a, a                                       ; $78e8: $7f
    nop                                           ; $78e9: $00
    nop                                           ; $78ea: $00
    ld a, [c]                                     ; $78eb: $f2
    dec bc                                        ; $78ec: $0b
    rst $38                                       ; $78ed: $ff
    ld a, a                                       ; $78ee: $7f
    rst $30                                       ; $78ef: $f7
    rlca                                          ; $78f0: $07
    ld b, b                                       ; $78f1: $40
    inc b                                         ; $78f2: $04
    ld [hl], a                                    ; $78f3: $77
    ld a, [hl-]                                   ; $78f4: $3a
    rst $30                                       ; $78f5: $f7
    rlca                                          ; $78f6: $07
    dec de                                        ; $78f7: $1b
    ld d, a                                       ; $78f8: $57
    and b                                         ; $78f9: $a0
    ld [$3a77], sp                                ; $78fa: $08 $77 $3a
    or e                                          ; $78fd: $b3
    dec d                                         ; $78fe: $15
    dec sp                                        ; $78ff: $3b
    ld e, e                                       ; $7900: $5b
    ld hl, $d100                                  ; $7901: $21 $00 $d1
    ld h, b                                       ; $7904: $60
    or e                                          ; $7905: $b3
    dec d                                         ; $7906: $15
    add hl, sp                                    ; $7907: $39
    ld [hl], d                                    ; $7908: $72
    and d                                         ; $7909: $a2
    inc d                                         ; $790a: $14
    dec d                                         ; $790b: $15
    ld h, a                                       ; $790c: $67
    xor l                                         ; $790d: $ad
    dec [hl]                                      ; $790e: $35
    dec sp                                        ; $790f: $3b
    ld [hl], $00                                  ; $7910: $36 $00
    inc e                                         ; $7912: $1c
    rst $08                                       ; $7913: $cf
    inc b                                         ; $7914: $04
    ldh [$4c], a                                  ; $7915: $e0 $4c
    ld sp, hl                                     ; $7917: $f9
    ld sp, $0000                                  ; $7918: $31 $00 $00
    rst $38                                       ; $791b: $ff
    ld a, a                                       ; $791c: $7f
    xor l                                         ; $791d: $ad
    ld c, c                                       ; $791e: $49
    ld h, e                                       ; $791f: $63
    jr z, jr_0b1_7922                             ; $7920: $28 $00

jr_0b1_7922:
    nop                                           ; $7922: $00
    ld a, [de]                                    ; $7923: $1a
    ld d, e                                       ; $7924: $53
    pop af                                        ; $7925: $f1
    dec bc                                        ; $7926: $0b
    ld hl, sp+$07                                 ; $7927: $f8 $07
    nop                                           ; $7929: $00
    nop                                           ; $792a: $00
    call nc, $b81d                                ; $792b: $d4 $1d $b8
    ld b, [hl]                                    ; $792e: $46
    ld e, h                                       ; $792f: $5c
    ld e, a                                       ; $7930: $5f
    nop                                           ; $7931: $00
    nop                                           ; $7932: $00
    ld a, [$b352]                                 ; $7933: $fa $52 $b3
    add hl, de                                    ; $7936: $19
    nop                                           ; $7937: $00
    dec c                                         ; $7938: $0d
    ld bc, $aa00                                  ; $7939: $01 $00 $aa
    jr c, jr_0b1_79b3                             ; $793c: $38 $75

    ld l, l                                       ; $793e: $6d
    or e                                          ; $793f: $b3
    dec d                                         ; $7940: $15
    ld h, h                                       ; $7941: $64
    inc c                                         ; $7942: $0c
    or l                                          ; $7943: $b5
    add hl, hl                                    ; $7944: $29
    jr @+$65                                      ; $7945: $18 $63

    cp a                                          ; $7947: $bf
    ld b, d                                       ; $7948: $42
    ld b, d                                       ; $7949: $42

jr_0b1_794a:
    ld [$35ad], sp                                ; $794a: $08 $ad $35
    nop                                           ; $794d: $00
    jr nz, jr_0b1_7968                            ; $794e: $20 $18

    ld h, e                                       ; $7950: $63
    nop                                           ; $7951: $00
    ld [$3676], sp                                ; $7952: $08 $76 $36
    rst $38                                       ; $7955: $ff
    ld a, a                                       ; $7956: $7f
    or d                                          ; $7957: $b2
    dec d                                         ; $7958: $15
    nop                                           ; $7959: $00
    nop                                           ; $795a: $00
    ld a, [de]                                    ; $795b: $1a
    ld d, a                                       ; $795c: $57
    xor $0f                                       ; $795d: $ee $0f
    ld hl, sp+$07                                 ; $795f: $f8 $07
    or d                                          ; $7961: $b2
    dec d                                         ; $7962: $15
    ld [hl], $32                                  ; $7963: $36 $32
    ld a, [de]                                    ; $7965: $1a
    ld d, a                                       ; $7966: $57
    db $d3                                        ; $7967: $d3

jr_0b1_7968:
    dec e                                         ; $7968: $1d
    ld bc, $d300                                  ; $7969: $01 $00 $d3
    dec e                                         ; $796c: $1d
    sub a                                         ; $796d: $97
    ld b, d                                       ; $796e: $42
    nop                                           ; $796f: $00
    dec c                                         ; $7970: $0d
    ld bc, $8800                                  ; $7971: $01 $00 $88
    ld b, d                                       ; $7974: $42
    rst $28                                       ; $7975: $ef
    ld [hl], e                                    ; $7976: $73
    add e                                         ; $7977: $83
    inc d                                         ; $7978: $14
    ld h, c                                       ; $7979: $61
    inc c                                         ; $797a: $0c
    cp b                                          ; $797b: $b8
    add hl, hl                                    ; $797c: $29
    cp [hl]                                       ; $797d: $be
    ld b, [hl]                                    ; $797e: $46
    ld b, a                                       ; $797f: $47
    nop                                           ; $7980: $00
    nop                                           ; $7981: $00
    nop                                           ; $7982: $00
    rst $38                                       ; $7983: $ff
    ld a, a                                       ; $7984: $7f
    nop                                           ; $7985: $00
    inc e                                         ; $7986: $1c
    db $ec                                        ; $7987: $ec
    inc a                                         ; $7988: $3c
    nop                                           ; $7989: $00
    nop                                           ; $798a: $00
    rst $38                                       ; $798b: $ff
    ld a, a                                       ; $798c: $7f
    or d                                          ; $798d: $b2
    dec d                                         ; $798e: $15
    ld [hl], $32                                  ; $798f: $36 $32
    ld b, b                                       ; $7991: $40
    inc b                                         ; $7992: $04
    rst $20                                       ; $7993: $e7
    inc de                                        ; $7994: $13
    pop af                                        ; $7995: $f1
    ld [hl], a                                    ; $7996: $77
    sub a                                         ; $7997: $97
    ld b, d                                       ; $7998: $42
    ld bc, $8a00                                  ; $7999: $01 $00 $8a
    ld c, a                                       ; $799c: $4f
    or d                                          ; $799d: $b2
    dec d                                         ; $799e: $15
    ld hl, $010d                                  ; $799f: $21 $0d $01
    nop                                           ; $79a2: $00
    or e                                          ; $79a3: $b3
    add hl, de                                    ; $79a4: $19
    halt                                          ; $79a5: $76
    ld a, $00                                     ; $79a6: $3e $00
    dec c                                         ; $79a8: $0d
    ld bc, $8204                                  ; $79a9: $01 $04 $82
    ld c, e                                       ; $79ac: $4b
    ld [$111d], sp                                ; $79ad: $08 $1d $11
    add hl, bc                                    ; $79b0: $09
    inc h                                         ; $79b1: $24
    nop                                           ; $79b2: $00

jr_0b1_79b3:
    cp b                                          ; $79b3: $b8
    dec h                                         ; $79b4: $25
    add $1c                                       ; $79b5: $c6 $1c
    rst $18                                       ; $79b7: $df
    ld c, d                                       ; $79b8: $4a
    nop                                           ; $79b9: $00
    nop                                           ; $79ba: $00
    rst $30                                       ; $79bb: $f7
    ld l, l                                       ; $79bc: $6d
    rst $38                                       ; $79bd: $ff
    ld a, a                                       ; $79be: $7f
    nop                                           ; $79bf: $00
    jr nz, jr_0b1_79c2                            ; $79c0: $20 $00

jr_0b1_79c2:
    nop                                           ; $79c2: $00
    rst $38                                       ; $79c3: $ff
    ld a, a                                       ; $79c4: $7f
    or c                                          ; $79c5: $b1
    dec d                                         ; $79c6: $15
    nop                                           ; $79c7: $00
    jr nz, @+$23                                  ; $79c8: $20 $21

    inc b                                         ; $79ca: $04
    ld h, c                                       ; $79cb: $61
    ld h, $d3                                     ; $79cc: $26 $d3
    ld hl, $57aa                                  ; $79ce: $21 $aa $57
    ld b, b                                       ; $79d1: $40
    nop                                           ; $79d2: $00
    add d                                         ; $79d3: $82
    ld a, [hl+]                                   ; $79d4: $2a
    adc l                                         ; $79d5: $8d
    ld d, a                                       ; $79d6: $57
    ld h, d                                       ; $79d7: $62
    add hl, bc                                    ; $79d8: $09
    ld bc, $e700                                  ; $79d9: $01 $00 $e7
    ld e, e                                       ; $79dc: $5b
    jp nc, $971d                                  ; $79dd: $d2 $1d $97

    ld b, d                                       ; $79e0: $42
    nop                                           ; $79e1: $00
    nop                                           ; $79e2: $00
    ld [$d521], sp                                ; $79e3: $08 $21 $d5
    ld hl, $0cd0                                  ; $79e6: $21 $d0 $0c
    ld bc, $2e04                                  ; $79e9: $01 $04 $2e
    ld b, c                                       ; $79ec: $41
    rst $30                                       ; $79ed: $f7
    ld l, l                                       ; $79ee: $6d
    add l                                         ; $79ef: $85
    jr jr_0b1_79f3                                ; $79f0: $18 $01

    nop                                           ; $79f2: $00

jr_0b1_79f3:
    or e                                          ; $79f3: $b3
    ld e, c                                       ; $79f4: $59
    nop                                           ; $79f5: $00
    jr nz, @+$01                                  ; $79f6: $20 $ff

    ld a, a                                       ; $79f8: $7f
    nop                                           ; $79f9: $00
    nop                                           ; $79fa: $00
    rst $38                                       ; $79fb: $ff
    ld a, a                                       ; $79fc: $7f
    sub c                                         ; $79fd: $91
    dec d                                         ; $79fe: $15
    nop                                           ; $79ff: $00
    jr nz, @+$63                                  ; $7a00: $20 $61

    ld [$36c1], sp                                ; $7a02: $08 $c1 $36
    sub c                                         ; $7a05: $91
    dec d                                         ; $7a06: $15
    add d                                         ; $7a07: $82
    ld b, e                                       ; $7a08: $43
    ld bc, $0116                                  ; $7a09: $01 $16 $01
    dec sp                                        ; $7a0c: $3b
    add hl, hl                                    ; $7a0d: $29
    ld c, e                                       ; $7a0e: $4b
    add c                                         ; $7a0f: $81
    ld h, $41                                     ; $7a10: $26 $41
    inc b                                         ; $7a12: $04
    db $e3                                        ; $7a13: $e3
    ld [hl], $d2                                  ; $7a14: $36 $d2
    ld hl, $5be9                                  ; $7a16: $21 $e9 $5b
    inc h                                         ; $7a19: $24
    inc b                                         ; $7a1a: $04
    xor e                                         ; $7a1b: $ab
    ld e, e                                       ; $7a1c: $5b
    sub e                                         ; $7a1d: $93
    dec h                                         ; $7a1e: $25
    call c, $0146                                 ; $7a1f: $dc $46 $01

Jump_0b1_7a22:
    inc b                                         ; $7a22: $04
    ld l, d                                       ; $7a23: $6a
    inc [hl]                                      ; $7a24: $34
    jr nz, jr_0b1_7a28                            ; $7a25: $20 $01

    inc de                                        ; $7a27: $13

jr_0b1_7a28:
    ld h, c                                       ; $7a28: $61
    jr nz, jr_0b1_7a2b                            ; $7a29: $20 $00

jr_0b1_7a2b:
    or c                                          ; $7a2b: $b1
    dec d                                         ; $7a2c: $15
    rst $38                                       ; $7a2d: $ff
    ld a, a                                       ; $7a2e: $7f
    nop                                           ; $7a2f: $00
    jr nz, jr_0b1_7a32                            ; $7a30: $20 $00

jr_0b1_7a32:
    nop                                           ; $7a32: $00
    rst $38                                       ; $7a33: $ff
    ld a, a                                       ; $7a34: $7f
    sub b                                         ; $7a35: $90
    dec d                                         ; $7a36: $15
    nop                                           ; $7a37: $00
    jr nz, jr_0b1_7a5c                            ; $7a38: $20 $22

    inc b                                         ; $7a3a: $04
    ld [c], a                                     ; $7a3b: $e2
    ld [hl], $90                                  ; $7a3c: $36 $90
    dec d                                         ; $7a3e: $15
    add d                                         ; $7a3f: $82
    ccf                                           ; $7a40: $3f
    nop                                           ; $7a41: $00
    nop                                           ; $7a42: $00
    and d                                         ; $7a43: $a2
    ld h, $61                                     ; $7a44: $26 $61
    dec c                                         ; $7a46: $0d
    pop hl                                        ; $7a47: $e1
    ld [hl], $01                                  ; $7a48: $36 $01
    nop                                           ; $7a4a: $00
    ld h, b                                       ; $7a4b: $60
    ld e, $e2                                     ; $7a4c: $1e $e2
    ld [hl], $4a                                  ; $7a4e: $36 $4a
    inc b                                         ; $7a50: $04
    ld b, c                                       ; $7a51: $41
    nop                                           ; $7a52: $00
    ld h, a                                       ; $7a53: $67
    ld b, a                                       ; $7a54: $47
    or c                                          ; $7a55: $b1
    dec h                                         ; $7a56: $25
    ld a, $4b                                     ; $7a57: $3e $4b
    ld [hl+], a                                   ; $7a59: $22
    inc b                                         ; $7a5a: $04
    and c                                         ; $7a5b: $a1

jr_0b1_7a5c:
    ld a, [hl+]                                   ; $7a5c: $2a
    call nc, $e929                                ; $7a5d: $d4 $29 $e9
    ld e, a                                       ; $7a60: $5f
    ld bc, $aa00                                  ; $7a61: $01 $00 $aa
    ld d, a                                       ; $7a64: $57
    rst $38                                       ; $7a65: $ff
    ld a, a                                       ; $7a66: $7f
    nop                                           ; $7a67: $00
    jr nz, jr_0b1_7a6a                            ; $7a68: $20 $00

jr_0b1_7a6a:
    nop                                           ; $7a6a: $00
    rst $38                                       ; $7a6b: $ff
    ld a, a                                       ; $7a6c: $7f

jr_0b1_7a6d:
    sub b                                         ; $7a6d: $90
    dec d                                         ; $7a6e: $15
    nop                                           ; $7a6f: $00
    jr nz, jr_0b1_7a73                            ; $7a70: $20 $01

    nop                                           ; $7a72: $00

jr_0b1_7a73:
    ld [hl+], a                                   ; $7a73: $22
    dec sp                                        ; $7a74: $3b
    or b                                          ; $7a75: $b0
    dec d                                         ; $7a76: $15
    and c                                         ; $7a77: $a1
    add hl, de                                    ; $7a78: $19
    nop                                           ; $7a79: $00
    nop                                           ; $7a7a: $00
    ld b, d                                       ; $7a7b: $42
    ld a, [de]                                    ; $7a7c: $1a
    jp nz, $2236                                  ; $7a7d: $c2 $36 $22

    scf                                           ; $7a80: $37
    ld bc, $e100                                  ; $7a81: $01 $00 $e1
    ld [hl-], a                                   ; $7a84: $32
    ld d, $0d                                     ; $7a85: $16 $0d
    jp Jump_0b1_4004                              ; $7a87: $c3 $04 $40


    nop                                           ; $7a8a: $00
    ld [bc], a                                    ; $7a8b: $02
    ld a, [de]                                    ; $7a8c: $1a
    add hl, bc                                    ; $7a8d: $09
    jr c, jr_0b1_7a99                             ; $7a8e: $38 $09

    ld c, e                                       ; $7a90: $4b
    ld [hl+], a                                   ; $7a91: $22
    nop                                           ; $7a92: $00
    adc [hl]                                      ; $7a93: $8e
    add hl, hl                                    ; $7a94: $29
    sbc $4e                                       ; $7a95: $de $4e
    or $35                                        ; $7a97: $f6 $35

jr_0b1_7a99:
    ld bc, $6400                                  ; $7a99: $01 $00 $64
    ld c, e                                       ; $7a9c: $4b
    nop                                           ; $7a9d: $00
    jr nz, jr_0b1_7a6d                            ; $7a9e: $20 $cd

    stop                                          ; $7aa0: $10 $00
    nop                                           ; $7aa2: $00
    rst $38                                       ; $7aa3: $ff
    ld a, a                                       ; $7aa4: $7f
    or b                                          ; $7aa5: $b0
    dec d                                         ; $7aa6: $15
    nop                                           ; $7aa7: $00
    jr nz, jr_0b1_7aaa                            ; $7aa8: $20 $00

jr_0b1_7aaa:
    nop                                           ; $7aaa: $00
    swap h                                        ; $7aab: $cb $34
    jr nz, jr_0b1_7ab8                            ; $7aad: $20 $09

    ldh a, [rHDMA4]                               ; $7aaf: $f0 $54
    pop hl                                        ; $7ab1: $e1
    dec h                                         ; $7ab2: $25
    jp nz, $e232                                  ; $7ab3: $c2 $32 $e2

    ld a, [hl-]                                   ; $7ab6: $3a
    ld h, c                                       ; $7ab7: $61

jr_0b1_7ab8:
    ld h, $22                                     ; $7ab8: $26 $22
    nop                                           ; $7aba: $00
    dec a                                         ; $7abb: $3d
    ld e, $c0                                     ; $7abc: $1e $c0
    add hl, de                                    ; $7abe: $19
    and d                                         ; $7abf: $a2
    ld h, $00                                     ; $7ac0: $26 $00
    nop                                           ; $7ac2: $00
    ld b, e                                       ; $7ac3: $43
    ccf                                           ; $7ac4: $3f
    db $ed                                        ; $7ac5: $ed
    ld e, a                                       ; $7ac6: $5f
    add b                                         ; $7ac7: $80
    dec c                                         ; $7ac8: $0d
    ret nz                                        ; $7ac9: $c0

    add hl, bc                                    ; $7aca: $09
    adc b                                         ; $7acb: $88
    ld c, a                                       ; $7acc: $4f
    ld a, d                                       ; $7acd: $7a
    ld b, d                                       ; $7ace: $42
    ld [hl+], a                                   ; $7acf: $22

jr_0b1_7ad0:
    nop                                           ; $7ad0: $00
    ld [hl+], a                                   ; $7ad1: $22
    nop                                           ; $7ad2: $00
    call RST_08                                   ; $7ad3: $cd $08 $00
    jr nz, jr_0b1_7ad0                            ; $7ad6: $20 $f8

    dec h                                         ; $7ad8: $25
    nop                                           ; $7ad9: $00
    nop                                           ; $7ada: $00
    ld d, l                                       ; $7adb: $55
    ld a, h                                       ; $7adc: $7c
    rst $38                                       ; $7add: $ff
    ld a, a                                       ; $7ade: $7f
    nop                                           ; $7adf: $00
    inc e                                         ; $7ae0: $1c
    nop                                           ; $7ae1: $00
    nop                                           ; $7ae2: $00
    jr c, jr_0b1_7b5e                             ; $7ae3: $38 $79

    xor e                                         ; $7ae5: $ab
    inc [hl]                                      ; $7ae6: $34
    cp l                                          ; $7ae7: $bd
    ld a, [hl]                                    ; $7ae8: $7e
    ld b, b                                       ; $7ae9: $40
    nop                                           ; $7aea: $00
    jp nz, $812e                                  ; $7aeb: $c2 $2e $81

    dec c                                         ; $7aee: $0d
    rlca                                          ; $7aef: $07
    jr nz, jr_0b1_7b14                            ; $7af0: $20 $22

    nop                                           ; $7af2: $00
    dec de                                        ; $7af3: $1b
    ld a, [de]                                    ; $7af4: $1a
    ld b, c                                       ; $7af5: $41
    dec b                                         ; $7af6: $05
    pop hl                                        ; $7af7: $e1
    ld de, $0041                                  ; $7af8: $11 $41 $00
    ld hl, $301e                                  ; $7afb: $21 $1e $30
    ld de, $3701                                  ; $7afe: $11 $01 $37
    jr nz, jr_0b1_7b03                            ; $7b01: $20 $00

jr_0b1_7b03:
    add c                                         ; $7b03: $81
    ld e, $61                                     ; $7b04: $1e $61
    dec b                                         ; $7b06: $05
    ld [bc], a                                    ; $7b07: $02
    ccf                                           ; $7b08: $3f
    nop                                           ; $7b09: $00
    nop                                           ; $7b0a: $00
    nop                                           ; $7b0b: $00

Jump_0b1_7b0c:
    jr nz, @+$62                                  ; $7b0c: $20 $60

    dec b                                         ; $7b0e: $05
    ld h, [hl]                                    ; $7b0f: $66
    inc b                                         ; $7b10: $04
    nop                                           ; $7b11: $00
    nop                                           ; $7b12: $00
    inc sp                                        ; $7b13: $33

jr_0b1_7b14:
    ld [hl], h                                    ; $7b14: $74
    rst $38                                       ; $7b15: $ff
    ld a, a                                       ; $7b16: $7f
    nop                                           ; $7b17: $00
    inc e                                         ; $7b18: $1c
    nop                                           ; $7b19: $00
    inc b                                         ; $7b1a: $04
    or c                                          ; $7b1b: $b1
    ld e, c                                       ; $7b1c: $59
    rst $10                                       ; $7b1d: $d7
    ld a, c                                       ; $7b1e: $79
    sub d                                         ; $7b1f: $92
    add hl, hl                                    ; $7b20: $29
    ld b, c                                       ; $7b21: $41
    inc b                                         ; $7b22: $04
    dec c                                         ; $7b23: $0d
    ld c, h                                       ; $7b24: $4c

jr_0b1_7b25:
    pop hl                                        ; $7b25: $e1

Jump_0b1_7b26:
    dec d                                         ; $7b26: $15
    push de                                       ; $7b27: $d5
    ld [hl], h                                    ; $7b28: $74

jr_0b1_7b29:
    ld hl, $0c00                                  ; $7b29: $21 $00 $0c
    ld de, $25d6                                  ; $7b2c: $11 $d6 $25
    and b                                         ; $7b2f: $a0
    nop                                           ; $7b30: $00
    nop                                           ; $7b31: $00
    nop                                           ; $7b32: $00
    db $eb                                        ; $7b33: $eb
    db $10                                        ; $7b34: $10
    add h                                         ; $7b35: $84
    inc b                                         ; $7b36: $04
    ld [hl], e                                    ; $7b37: $73
    dec d                                         ; $7b38: $15
    nop                                           ; $7b39: $00
    nop                                           ; $7b3a: $00
    and c                                         ; $7b3b: $a1
    dec d                                         ; $7b3c: $15
    ld [c], a                                     ; $7b3d: $e2
    ld l, $c0                                     ; $7b3e: $2e $c0
    inc b                                         ; $7b40: $04
    nop                                           ; $7b41: $00
    nop                                           ; $7b42: $00
    rst $38                                       ; $7b43: $ff
    ld a, a                                       ; $7b44: $7f
    nop                                           ; $7b45: $00
    jr nz, jr_0b1_7b29                            ; $7b46: $20 $e1

    inc b                                         ; $7b48: $04
    nop                                           ; $7b49: $00
    nop                                           ; $7b4a: $00
    rst $38                                       ; $7b4b: $ff
    ld a, a                                       ; $7b4c: $7f
    nop                                           ; $7b4d: $00
    jr nz, jr_0b1_7b25                            ; $7b4e: $20 $d5

    ld [hl], h                                    ; $7b50: $74
    ld bc, $b500                                  ; $7b51: $01 $00 $b5
    dec h                                         ; $7b54: $25
    ld a, h                                       ; $7b55: $7c
    ld b, d                                       ; $7b56: $42
    rlc b                                         ; $7b57: $cb $00
    jr nz, jr_0b1_7b5b                            ; $7b59: $20 $00

jr_0b1_7b5b:
    ld b, $28                                     ; $7b5b: $06 $28
    db $10                                        ; $7b5d: $10

jr_0b1_7b5e:
    ld l, h                                       ; $7b5e: $6c
    add hl, bc                                    ; $7b5f: $09
    ld b, b                                       ; $7b60: $40
    ld bc, $4f00                                  ; $7b61: $01 $00 $4f
    dec e                                         ; $7b64: $1d
    sbc e                                         ; $7b65: $9b
    ld [hl], $c8                                  ; $7b66: $36 $c8
    db $10                                        ; $7b68: $10
    ld bc, $6f00                                  ; $7b69: $01 $00 $6f
    ld hl, $36be                                  ; $7b6c: $21 $be $36
    adc b                                         ; $7b6f: $88
    ld [$0021], sp                                ; $7b70: $08 $21 $00
    ld bc, $ab33                                  ; $7b73: $01 $33 $ab
    inc b                                         ; $7b76: $04
    ld h, b                                       ; $7b77: $60
    ld de, $0000                                  ; $7b78: $11 $00 $00
    rst $38                                       ; $7b7b: $ff
    ld a, a                                       ; $7b7c: $7f
    nop                                           ; $7b7d: $00
    jr nz, jr_0b1_7bc2                            ; $7b7e: $20 $42

    inc b                                         ; $7b80: $04
    nop                                           ; $7b81: $00
    nop                                           ; $7b82: $00
    rst $38                                       ; $7b83: $ff
    ld a, a                                       ; $7b84: $7f
    nop                                           ; $7b85: $00
    jr nz, jr_0b1_7b91                            ; $7b86: $20 $09

    ld b, b                                       ; $7b88: $40
    nop                                           ; $7b89: $00
    nop                                           ; $7b8a: $00
    sub d                                         ; $7b8b: $92
    add hl, hl                                    ; $7b8c: $29
    or l                                          ; $7b8d: $b5
    ld d, [hl]                                    ; $7b8e: $56
    sbc $4e                                       ; $7b8f: $de $4e

jr_0b1_7b91:
    nop                                           ; $7b91: $00
    nop                                           ; $7b92: $00
    sub h                                         ; $7b93: $94
    ld de, $363c                                  ; $7b94: $11 $3c $36
    inc bc                                        ; $7b97: $03
    inc e                                         ; $7b98: $1c
    ld bc, $9204                                  ; $7b99: $01 $04 $92
    dec e                                         ; $7b9c: $1d
    ld [$dc10], a                                 ; $7b9d: $ea $10 $dc
    ld b, d                                       ; $7ba0: $42
    ld bc, $d300                                  ; $7ba1: $01 $00 $d3
    dec h                                         ; $7ba4: $25
    jp z, Jump_0b1_7b0c                           ; $7ba5: $ca $0c $7b

    ld [hl], $01                                  ; $7ba8: $36 $01
    nop                                           ; $7baa: $00
    db $ec                                        ; $7bab: $ec
    ld [$0067], sp                                ; $7bac: $08 $67 $00
    ld [hl], d                                    ; $7baf: $72
    dec d                                         ; $7bb0: $15
    nop                                           ; $7bb1: $00
    nop                                           ; $7bb2: $00
    rst $38                                       ; $7bb3: $ff
    ld a, a                                       ; $7bb4: $7f
    nop                                           ; $7bb5: $00
    jr nz, jr_0b1_7c2a                            ; $7bb6: $20 $72

    dec d                                         ; $7bb8: $15

jr_0b1_7bb9:
    nop                                           ; $7bb9: $00
    nop                                           ; $7bba: $00
    rst $38                                       ; $7bbb: $ff
    ld a, a                                       ; $7bbc: $7f
    nop                                           ; $7bbd: $00
    jr nz, jr_0b1_7bc3                            ; $7bbe: $20 $03

    inc e                                         ; $7bc0: $1c
    ld [hl+], a                                   ; $7bc1: $22

jr_0b1_7bc2:
    inc b                                         ; $7bc2: $04

jr_0b1_7bc3:
    cp l                                          ; $7bc3: $bd
    ld c, d                                       ; $7bc4: $4a
    ld [hl], c                                    ; $7bc5: $71
    dec h                                         ; $7bc6: $25
    rst $38                                       ; $7bc7: $ff
    ld a, a                                       ; $7bc8: $7f
    ld [bc], a                                    ; $7bc9: $02
    inc c                                         ; $7bca: $0c
    ld a, [$302d]                                 ; $7bcb: $fa $2d $30
    ld de, $469d                                  ; $7bce: $11 $9d $46
    jr nz, jr_0b1_7bd7                            ; $7bd1: $20 $04

    ld e, h                                       ; $7bd3: $5c
    ld l, $42                                     ; $7bd4: $2e $42
    ld [hl+], a                                   ; $7bd6: $22

jr_0b1_7bd7:
    db $ed                                        ; $7bd7: $ed
    inc c                                         ; $7bd8: $0c
    ld hl, $7300                                  ; $7bd9: $21 $00 $73
    add hl, de                                    ; $7bdc: $19
    ld h, b                                       ; $7bdd: $60
    ld a, [de]                                    ; $7bde: $1a
    add a                                         ; $7bdf: $87
    ld [$0000], sp                                ; $7be0: $08 $00 $00
    sbc $7b                                       ; $7be3: $de $7b
    rrc b                                         ; $7be5: $cb $08
    ld b, h                                       ; $7be7: $44
    nop                                           ; $7be8: $00
    nop                                           ; $7be9: $00
    nop                                           ; $7bea: $00

jr_0b1_7beb:
    nop                                           ; $7beb: $00
    jr nz, jr_0b1_7bb9                            ; $7bec: $20 $cb

    ld [$0044], sp                                ; $7bee: $08 $44 $00
    nop                                           ; $7bf1: $00
    nop                                           ; $7bf2: $00
    nop                                           ; $7bf3: $00
    jr nz, jr_0b1_7c26                            ; $7bf4: $20 $30

jr_0b1_7bf6:
    ld de, $469d                                  ; $7bf6: $11 $9d $46
    ld [hl+], a                                   ; $7bf9: $22
    nop                                           ; $7bfa: $00
    or e                                          ; $7bfb: $b3
    dec l                                         ; $7bfc: $2d
    ccf                                           ; $7bfd: $3f
    ld e, e                                       ; $7bfe: $5b
    rst $38                                       ; $7bff: $ff
    ld a, a                                       ; $7c00: $7f
    ld bc, $9408                                  ; $7c01: $01 $08 $94
    dec h                                         ; $7c04: $25
    cp l                                          ; $7c05: $bd
    ld c, d                                       ; $7c06: $4a
    rrc h                                         ; $7c07: $cb $0c
    ld b, c                                       ; $7c09: $41
    inc b                                         ; $7c0a: $04
    and d                                         ; $7c0b: $a2
    ld h, $a1                                     ; $7c0c: $26 $a1
    dec c                                         ; $7c0e: $0d
    inc h                                         ; $7c0f: $24
    ld b, e                                       ; $7c10: $43
    ld bc, $0100                                  ; $7c11: $01 $00 $01
    ld [hl+], a                                   ; $7c14: $22
    add l                                         ; $7c15: $85
    ld b, a                                       ; $7c16: $47
    ldh [rNR10], a                                ; $7c17: $e0 $10
    ld bc, $ff00                                  ; $7c19: $01 $00 $ff
    ld a, a                                       ; $7c1c: $7f
    ld c, h                                       ; $7c1d: $4c
    dec d                                         ; $7c1e: $15
    ld b, l                                       ; $7c1f: $45
    nop                                           ; $7c20: $00
    nop                                           ; $7c21: $00
    nop                                           ; $7c22: $00
    nop                                           ; $7c23: $00
    jr nz, jr_0b1_7c72                            ; $7c24: $20 $4c

jr_0b1_7c26:
    dec d                                         ; $7c26: $15
    ld b, l                                       ; $7c27: $45
    nop                                           ; $7c28: $00

Call_0b1_7c29:
    nop                                           ; $7c29: $00

jr_0b1_7c2a:
    nop                                           ; $7c2a: $00
    nop                                           ; $7c2b: $00
    jr nz, jr_0b1_7beb                            ; $7c2c: $20 $bd

    ld c, d                                       ; $7c2e: $4a
    rrc h                                         ; $7c2f: $cb $0c
    ld bc, $ff00                                  ; $7c31: $01 $00 $ff
    ld a, a                                       ; $7c34: $7f
    inc c                                         ; $7c35: $0c
    ld de, $21b4                                  ; $7c36: $11 $b4 $21
    nop                                           ; $7c39: $00
    nop                                           ; $7c3a: $00
    sub d                                         ; $7c3b: $92
    add hl, hl                                    ; $7c3c: $29
    sbc l                                         ; $7c3d: $9d
    ld b, [hl]                                    ; $7c3e: $46
    add d                                         ; $7c3f: $82
    inc b                                         ; $7c40: $04
    jp nz, Jump_000_0405                          ; $7c41: $c2 $05 $04

    ccf                                           ; $7c44: $3f
    ld c, b                                       ; $7c45: $48
    ld c, e                                       ; $7c46: $4b
    ld b, c                                       ; $7c47: $41
    ld e, $60                                     ; $7c48: $1e $60
    inc b                                         ; $7c4a: $04
    ld h, $32                                     ; $7c4b: $26 $32
    ret z                                         ; $7c4d: $c8

    ld d, e                                       ; $7c4e: $53
    pop hl                                        ; $7c4f: $e1
    ld [hl], $00                                  ; $7c50: $36 $00
    nop                                           ; $7c52: $00
    rst $38                                       ; $7c53: $ff
    ld a, a                                       ; $7c54: $7f
    adc h                                         ; $7c55: $8c
    add hl, de                                    ; $7c56: $19
    pop hl                                        ; $7c57: $e1
    ld [hl], $00                                  ; $7c58: $36 $00
    jr nz, @+$01                                  ; $7c5a: $20 $ff

    ld a, a                                       ; $7c5c: $7f
    adc h                                         ; $7c5d: $8c
    add hl, de                                    ; $7c5e: $19
    pop hl                                        ; $7c5f: $e1
    ld [hl], $00                                  ; $7c60: $36 $00
    jr nz, jr_0b1_7bf6                            ; $7c62: $20 $92

    add hl, hl                                    ; $7c64: $29
    sbc l                                         ; $7c65: $9d
    ld b, [hl]                                    ; $7c66: $46
    add d                                         ; $7c67: $82
    inc b                                         ; $7c68: $04
    ld [hl+], a                                   ; $7c69: $22
    nop                                           ; $7c6a: $00
    or e                                          ; $7c6b: $b3
    dec h                                         ; $7c6c: $25
    rst $38                                       ; $7c6d: $ff
    ld a, a                                       ; $7c6e: $7f
    db $dd                                        ; $7c6f: $dd
    ld b, d                                       ; $7c70: $42
    ld b, b                                       ; $7c71: $40

jr_0b1_7c72:
    nop                                           ; $7c72: $00
    ld d, b                                       ; $7c73: $50
    dec d                                         ; $7c74: $15
    ld h, a                                       ; $7c75: $67
    nop                                           ; $7c76: $00
    and c                                         ; $7c77: $a1
    dec b                                         ; $7c78: $05
    and b                                         ; $7c79: $a0
    nop                                           ; $7c7a: $00
    dec b                                         ; $7c7b: $05
    ccf                                           ; $7c7c: $3f
    ld l, c                                       ; $7c7d: $69
    ld c, a                                       ; $7c7e: $4f
    pop hl                                        ; $7c7f: $e1
    dec c                                         ; $7c80: $0d
    jr nz, jr_0b1_7c83                            ; $7c81: $20 $00

jr_0b1_7c83:
    inc h                                         ; $7c83: $24
    ccf                                           ; $7c84: $3f
    pop hl                                        ; $7c85: $e1
    dec e                                         ; $7c86: $1d
    adc h                                         ; $7c87: $8c
    add hl, de                                    ; $7c88: $19

jr_0b1_7c89:
    nop                                           ; $7c89: $00
    nop                                           ; $7c8a: $00
    rst $38                                       ; $7c8b: $ff
    ld a, a                                       ; $7c8c: $7f
    adc h                                         ; $7c8d: $8c
    add hl, de                                    ; $7c8e: $19
    nop                                           ; $7c8f: $00
    jr nz, jr_0b1_7c92                            ; $7c90: $20 $00

jr_0b1_7c92:
    jr nz, @+$01                                  ; $7c92: $20 $ff

    ld a, a                                       ; $7c94: $7f
    adc h                                         ; $7c95: $8c
    add hl, de                                    ; $7c96: $19
    nop                                           ; $7c97: $00
    jr nz, jr_0b1_7c9a                            ; $7c98: $20 $00

jr_0b1_7c9a:
    jr nz, jr_0b1_7cec                            ; $7c9a: $20 $50

    dec d                                         ; $7c9c: $15
    ld h, a                                       ; $7c9d: $67
    nop                                           ; $7c9e: $00
    and c                                         ; $7c9f: $a1
    dec b                                         ; $7ca0: $05
    nop                                           ; $7ca1: $00
    ld [$3658], sp                                ; $7ca2: $08 $58 $36
    rst $38                                       ; $7ca5: $ff
    ld a, a                                       ; $7ca6: $7f
    ld c, [hl]                                    ; $7ca7: $4e
    dec e                                         ; $7ca8: $1d
    jr nz, jr_0b1_7cab                            ; $7ca9: $20 $00

jr_0b1_7cab:
    or l                                          ; $7cab: $b5
    add hl, de                                    ; $7cac: $19
    ld hl, $6605                                  ; $7cad: $21 $05 $66
    inc b                                         ; $7cb0: $04
    ld bc, $0305                                  ; $7cb1: $01 $05 $03
    dec sp                                        ; $7cb4: $3b
    ld hl, $601e                                  ; $7cb5: $21 $1e $60
    add hl, bc                                    ; $7cb8: $09
    nop                                           ; $7cb9: $00
    nop                                           ; $7cba: $00
    ld bc, $8c26                                  ; $7cbb: $01 $26 $8c
    add hl, de                                    ; $7cbe: $19
    nop                                           ; $7cbf: $00
    add hl, bc                                    ; $7cc0: $09
    nop                                           ; $7cc1: $00
    nop                                           ; $7cc2: $00
    rst $38                                       ; $7cc3: $ff
    ld a, a                                       ; $7cc4: $7f
    adc h                                         ; $7cc5: $8c
    add hl, de                                    ; $7cc6: $19
    nop                                           ; $7cc7: $00
    jr nz, jr_0b1_7cca                            ; $7cc8: $20 $00

jr_0b1_7cca:
    jr nz, @+$01                                  ; $7cca: $20 $ff

    ld a, a                                       ; $7ccc: $7f

jr_0b1_7ccd:
    adc h                                         ; $7ccd: $8c
    add hl, de                                    ; $7cce: $19
    nop                                           ; $7ccf: $00
    jr nz, jr_0b1_7cd2                            ; $7cd0: $20 $00

jr_0b1_7cd2:
    jr nz, jr_0b1_7c89                            ; $7cd2: $20 $b5

    add hl, de                                    ; $7cd4: $19

jr_0b1_7cd5:
    ld hl, $6605                                  ; $7cd5: $21 $05 $66
    inc b                                         ; $7cd8: $04
    nop                                           ; $7cd9: $00
    nop                                           ; $7cda: $00
    rst $38                                       ; $7cdb: $ff
    ld a, a                                       ; $7cdc: $7f
    ld c, [hl]                                    ; $7cdd: $4e
    dec e                                         ; $7cde: $1d
    nop                                           ; $7cdf: $00
    jr nz, jr_0b1_7ce2                            ; $7ce0: $20 $00

jr_0b1_7ce2:
    nop                                           ; $7ce2: $00
    xor $08                                       ; $7ce3: $ee $08
    and [hl]                                      ; $7ce5: $a6
    inc c                                         ; $7ce6: $0c
    or l                                          ; $7ce7: $b5
    add hl, de                                    ; $7ce8: $19
    nop                                           ; $7ce9: $00
    nop                                           ; $7cea: $00
    rst $38                                       ; $7ceb: $ff

jr_0b1_7cec:
    ld a, a                                       ; $7cec: $7f
    adc h                                         ; $7ced: $8c
    add hl, de                                    ; $7cee: $19
    nop                                           ; $7cef: $00
    jr nz, jr_0b1_7cf2                            ; $7cf0: $20 $00

jr_0b1_7cf2:
    nop                                           ; $7cf2: $00
    rst $38                                       ; $7cf3: $ff
    ld a, a                                       ; $7cf4: $7f
    adc h                                         ; $7cf5: $8c
    add hl, de                                    ; $7cf6: $19
    nop                                           ; $7cf7: $00
    jr nz, jr_0b1_7cfa                            ; $7cf8: $20 $00

jr_0b1_7cfa:
    nop                                           ; $7cfa: $00
    rst $38                                       ; $7cfb: $ff
    ld a, a                                       ; $7cfc: $7f
    nop                                           ; $7cfd: $00
    jr nz, jr_0b1_7d00                            ; $7cfe: $20 $00

jr_0b1_7d00:
    jr nz, jr_0b1_7d02                            ; $7d00: $20 $00

jr_0b1_7d02:
    jr nz, @+$01                                  ; $7d02: $20 $ff

    ld a, a                                       ; $7d04: $7f
    nop                                           ; $7d05: $00
    jr nz, jr_0b1_7d08                            ; $7d06: $20 $00

Call_0b1_7d08:
jr_0b1_7d08:
    jr nz, jr_0b1_7d0a                            ; $7d08: $20 $00

jr_0b1_7d0a:
    jr nz, jr_0b1_7cfa                            ; $7d0a: $20 $ee

    ld [$0ca6], sp                                ; $7d0c: $08 $a6 $0c
    or l                                          ; $7d0f: $b5
    add hl, de                                    ; $7d10: $19
    nop                                           ; $7d11: $00
    nop                                           ; $7d12: $00
    rst $38                                       ; $7d13: $ff
    ld a, a                                       ; $7d14: $7f
    nop                                           ; $7d15: $00
    jr nz, jr_0b1_7ccd                            ; $7d16: $20 $b5

    add hl, de                                    ; $7d18: $19
    nop                                           ; $7d19: $00
    nop                                           ; $7d1a: $00
    rst $38                                       ; $7d1b: $ff
    ld a, a                                       ; $7d1c: $7f
    nop                                           ; $7d1d: $00
    jr nz, jr_0b1_7cd5                            ; $7d1e: $20 $b5

    add hl, de                                    ; $7d20: $19
    nop                                           ; $7d21: $00
    nop                                           ; $7d22: $00
    nop                                           ; $7d23: $00
    jr nz, jr_0b1_7d26                            ; $7d24: $20 $00

jr_0b1_7d26:
    jr nz, jr_0b1_7d28                            ; $7d26: $20 $00

jr_0b1_7d28:
    jr nz, jr_0b1_7d2a                            ; $7d28: $20 $00

jr_0b1_7d2a:
    nop                                           ; $7d2a: $00
    nop                                           ; $7d2b: $00
    jr nz, jr_0b1_7d2e                            ; $7d2c: $20 $00

jr_0b1_7d2e:
    jr nz, jr_0b1_7d30                            ; $7d2e: $20 $00

jr_0b1_7d30:
    jr nz, jr_0b1_7d32                            ; $7d30: $20 $00

jr_0b1_7d32:
    nop                                           ; $7d32: $00
    nop                                           ; $7d33: $00
    jr nz, jr_0b1_7d36                            ; $7d34: $20 $00

jr_0b1_7d36:
    jr nz, jr_0b1_7d38                            ; $7d36: $20 $00

jr_0b1_7d38:
    jr nz, jr_0b1_7d3a                            ; $7d38: $20 $00

jr_0b1_7d3a:
    jr nz, jr_0b1_7d3c                            ; $7d3a: $20 $00

jr_0b1_7d3c:
    jr nz, jr_0b1_7d3e                            ; $7d3c: $20 $00

jr_0b1_7d3e:
    jr nz, jr_0b1_7d40                            ; $7d3e: $20 $00

jr_0b1_7d40:
    jr nz, jr_0b1_7d42                            ; $7d40: $20 $00

jr_0b1_7d42:
    ld bc, $0088                                  ; $7d42: $01 $88 $00
    ld d, b                                       ; $7d45: $50
    nop                                           ; $7d46: $00
    ld bc, $8080                                  ; $7d47: $01 $80 $80
    ld [bc], a                                    ; $7d4a: $02
    ld [$c040], sp                                ; $7d4b: $08 $40 $c0
    nop                                           ; $7d4e: $00
    ret nz                                        ; $7d4f: $c0

    db $10                                        ; $7d50: $10
    ld hl, $8061                                  ; $7d51: $21 $61 $80

jr_0b1_7d54:
    jr nz, jr_0b1_7d5e                            ; $7d54: $20 $08

    ld h, b                                       ; $7d56: $60
    db $10                                        ; $7d57: $10
    ld h, b                                       ; $7d58: $60
    nop                                           ; $7d59: $00
    nop                                           ; $7d5a: $00
    ld h, b                                       ; $7d5b: $60
    add b                                         ; $7d5c: $80

Call_0b1_7d5d:
    and b                                         ; $7d5d: $a0

jr_0b1_7d5e:
    ld d, c                                       ; $7d5e: $51
    and b                                         ; $7d5f: $a0
    db $10                                        ; $7d60: $10
    db $10                                        ; $7d61: $10
    and b                                         ; $7d62: $a0
    add b                                         ; $7d63: $80
    jr nc, @+$22                                  ; $7d64: $30 $20

    inc b                                         ; $7d66: $04
    inc b                                         ; $7d67: $04
    nop                                           ; $7d68: $00
    db $fc                                        ; $7d69: $fc
    ld bc, $0440                                  ; $7d6a: $01 $40 $04
    jr nz, jr_0b1_7daf                            ; $7d6d: $20 $40

    db $10                                        ; $7d6f: $10
    ld b, b                                       ; $7d70: $40

jr_0b1_7d71:
    jr c, jr_0b1_7d54                             ; $7d71: $38 $e1

    ld [de], a                                    ; $7d73: $12
    ld [hl], b                                    ; $7d74: $70
    add hl, bc                                    ; $7d75: $09
    ld e, b                                       ; $7d76: $58
    nop                                           ; $7d77: $00
    inc h                                         ; $7d78: $24
    ret nc                                        ; $7d79: $d0

    jr nz, jr_0b1_7ddc                            ; $7d7a: $20 $60

    sub b                                         ; $7d7c: $90
    jr nz, @+$42                                  ; $7d7d: $20 $40

    jr nz, jr_0b1_7d98                            ; $7d7f: $20 $17

    db $10                                        ; $7d81: $10
    ld [hl], b                                    ; $7d82: $70
    adc b                                         ; $7d83: $88
    ld c, h                                       ; $7d84: $4c
    jr nz, jr_0b1_7d88                            ; $7d85: $20 $01

    ld c, [hl]                                    ; $7d87: $4e

jr_0b1_7d88:
    db $10                                        ; $7d88: $10
    ld d, h                                       ; $7d89: $54
    nop                                           ; $7d8a: $00
    inc bc                                        ; $7d8b: $03
    ld [$6e80], sp                                ; $7d8c: $08 $80 $6e
    jr jr_0b1_7d98                                ; $7d8f: $18 $07

    ld [$0403], sp                                ; $7d91: $08 $03 $04
    dec b                                         ; $7d94: $05
    ld [bc], a                                    ; $7d95: $02
    inc b                                         ; $7d96: $04
    inc b                                         ; $7d97: $04

jr_0b1_7d98:
    ld bc, $0804                                  ; $7d98: $01 $04 $08
    inc b                                         ; $7d9b: $04
    ld [$0003], sp                                ; $7d9c: $08 $03 $00
    inc b                                         ; $7d9f: $04
    ld [$0004], sp                                ; $7da0: $08 $04 $00
    ld [$1810], sp                                ; $7da3: $08 $10 $18
    inc h                                         ; $7da6: $24
    adc d                                         ; $7da7: $8a
    jr jr_0b1_7e1b                                ; $7da8: $18 $71

    ld [bc], a                                    ; $7daa: $02
    nop                                           ; $7dab: $00
    ld [hl-], a                                   ; $7dac: $32
    add hl, bc                                    ; $7dad: $09
    ld a, [de]                                    ; $7dae: $1a

jr_0b1_7daf:
    inc h                                         ; $7daf: $24
    inc e                                         ; $7db0: $1c
    ld [bc], a                                    ; $7db1: $02
    inc c                                         ; $7db2: $0c
    stop                                          ; $7db3: $10 $00
    ld [$0004], sp                                ; $7db5: $08 $04 $00
    ld [$0000], sp                                ; $7db8: $08 $00 $00
    db $10                                        ; $7dbb: $10
    jr nz, jr_0b1_7de2                            ; $7dbc: $20 $24

    stop                                          ; $7dbe: $10 $00
    ld [bc], a                                    ; $7dc0: $02
    ld [$2118], sp                                ; $7dc1: $08 $18 $21
    xor d                                         ; $7dc4: $aa
    jr jr_0b1_7e17                                ; $7dc5: $18 $50

    jr nz, jr_0b1_7dc9                            ; $7dc7: $20 $00

jr_0b1_7dc9:
    ld [hl], b                                    ; $7dc9: $70
    nop                                           ; $7dca: $00
    ld b, b                                       ; $7dcb: $40
    db $10                                        ; $7dcc: $10
    ld b, b                                       ; $7dcd: $40
    nop                                           ; $7dce: $00
    ld hl, sp+$05                                 ; $7dcf: $f8 $05
    add b                                         ; $7dd1: $80
    cp d                                          ; $7dd2: $ba
    jr jr_0b1_7e21                                ; $7dd3: $18 $4c

    ld [de], a                                    ; $7dd5: $12
    ld b, [hl]                                    ; $7dd6: $46
    add hl, bc                                    ; $7dd7: $09
    ld b, e                                       ; $7dd8: $43
    inc b                                         ; $7dd9: $04
    ld b, c                                       ; $7dda: $41
    add hl, sp                                    ; $7ddb: $39

jr_0b1_7ddc:
    add d                                         ; $7ddc: $82
    ret nz                                        ; $7ddd: $c0

    jr nz, jr_0b1_7e00                            ; $7dde: $20 $20

    rst $00                                       ; $7de0: $c7
    ld d, b                                       ; $7de1: $50

jr_0b1_7de2:
    db $dd                                        ; $7de2: $dd
    ld d, b                                       ; $7de3: $50
    rlca                                          ; $7de4: $07
    adc b                                         ; $7de5: $88
    ld l, [hl]                                    ; $7de6: $6e
    nop                                           ; $7de7: $00
    ld b, b                                       ; $7de8: $40
    sub b                                         ; $7de9: $90
    ldh a, [$38]                                  ; $7dea: $f0 $38
    rst $08                                       ; $7dec: $cf
    jr nc, jr_0b1_7d71                            ; $7ded: $30 $82

    dec b                                         ; $7def: $05
    add c                                         ; $7df0: $81
    ld [bc], a                                    ; $7df1: $02
    nop                                           ; $7df2: $00
    ld bc, $0088                                  ; $7df3: $01 $88 $00
    ld d, b                                       ; $7df6: $50
    nop                                           ; $7df7: $00
    ld bc, $8080                                  ; $7df8: $01 $80 $80
    ld [bc], a                                    ; $7dfb: $02
    ld [$c040], sp                                ; $7dfc: $08 $40 $c0
    nop                                           ; $7dff: $00

jr_0b1_7e00:
    ret nz                                        ; $7e00: $c0

    db $10                                        ; $7e01: $10
    ld hl, $8061                                  ; $7e02: $21 $61 $80

jr_0b1_7e05:
    jr nz, jr_0b1_7e0f                            ; $7e05: $20 $08

    ld h, b                                       ; $7e07: $60
    db $10                                        ; $7e08: $10
    ld h, b                                       ; $7e09: $60
    nop                                           ; $7e0a: $00
    nop                                           ; $7e0b: $00
    ld h, b                                       ; $7e0c: $60
    add b                                         ; $7e0d: $80
    and b                                         ; $7e0e: $a0

jr_0b1_7e0f:
    ld d, c                                       ; $7e0f: $51
    and b                                         ; $7e10: $a0
    db $10                                        ; $7e11: $10
    db $10                                        ; $7e12: $10
    and b                                         ; $7e13: $a0
    add b                                         ; $7e14: $80
    jr nc, @+$22                                  ; $7e15: $30 $20

jr_0b1_7e17:
    inc b                                         ; $7e17: $04
    inc b                                         ; $7e18: $04
    nop                                           ; $7e19: $00
    db $fc                                        ; $7e1a: $fc

jr_0b1_7e1b:
    ld bc, $0440                                  ; $7e1b: $01 $40 $04
    jr nz, jr_0b1_7e60                            ; $7e1e: $20 $40

    db $10                                        ; $7e20: $10

jr_0b1_7e21:
    ld b, b                                       ; $7e21: $40

jr_0b1_7e22:
    jr c, jr_0b1_7e05                             ; $7e22: $38 $e1

    ld [de], a                                    ; $7e24: $12
    ld [hl], b                                    ; $7e25: $70
    add hl, bc                                    ; $7e26: $09
    ld e, b                                       ; $7e27: $58
    nop                                           ; $7e28: $00
    inc h                                         ; $7e29: $24
    ret nc                                        ; $7e2a: $d0

    jr nz, jr_0b1_7e8d                            ; $7e2b: $20 $60

Call_0b1_7e2d:
    sub b                                         ; $7e2d: $90
    jr nz, @+$42                                  ; $7e2e: $20 $40

    jr nz, jr_0b1_7e49                            ; $7e30: $20 $17

    db $10                                        ; $7e32: $10
    ld [hl], b                                    ; $7e33: $70
    adc b                                         ; $7e34: $88
    ld c, h                                       ; $7e35: $4c
    jr nz, jr_0b1_7e39                            ; $7e36: $20 $01

    ld c, [hl]                                    ; $7e38: $4e

jr_0b1_7e39:
    db $10                                        ; $7e39: $10
    ld d, h                                       ; $7e3a: $54
    nop                                           ; $7e3b: $00
    inc bc                                        ; $7e3c: $03
    ld [$6e80], sp                                ; $7e3d: $08 $80 $6e
    jr jr_0b1_7e49                                ; $7e40: $18 $07

    ld [$0403], sp                                ; $7e42: $08 $03 $04
    dec b                                         ; $7e45: $05
    ld [bc], a                                    ; $7e46: $02
    inc b                                         ; $7e47: $04
    inc b                                         ; $7e48: $04

jr_0b1_7e49:
    ld bc, $0804                                  ; $7e49: $01 $04 $08

jr_0b1_7e4c:
    inc b                                         ; $7e4c: $04
    ld [$0003], sp                                ; $7e4d: $08 $03 $00
    inc b                                         ; $7e50: $04
    ld [$0004], sp                                ; $7e51: $08 $04 $00
    ld [$1810], sp                                ; $7e54: $08 $10 $18

jr_0b1_7e57:
    inc h                                         ; $7e57: $24
    adc d                                         ; $7e58: $8a

jr_0b1_7e59:
    jr @+$73                                      ; $7e59: $18 $71

    ld [bc], a                                    ; $7e5b: $02
    nop                                           ; $7e5c: $00
    ld [hl-], a                                   ; $7e5d: $32
    add hl, bc                                    ; $7e5e: $09
    ld a, [de]                                    ; $7e5f: $1a

jr_0b1_7e60:
    inc h                                         ; $7e60: $24
    inc e                                         ; $7e61: $1c
    ld [bc], a                                    ; $7e62: $02
    inc c                                         ; $7e63: $0c
    stop                                          ; $7e64: $10 $00
    ld [$0004], sp                                ; $7e66: $08 $04 $00

jr_0b1_7e69:
    ld [$0000], sp                                ; $7e69: $08 $00 $00
    db $10                                        ; $7e6c: $10
    jr nz, jr_0b1_7e93                            ; $7e6d: $20 $24

    stop                                          ; $7e6f: $10 $00
    ld [bc], a                                    ; $7e71: $02
    ld [$2118], sp                                ; $7e72: $08 $18 $21
    xor d                                         ; $7e75: $aa
    jr @+$52                                      ; $7e76: $18 $50

    jr nz, jr_0b1_7e7a                            ; $7e78: $20 $00

jr_0b1_7e7a:
    ld [hl], b                                    ; $7e7a: $70
    nop                                           ; $7e7b: $00
    ld b, b                                       ; $7e7c: $40
    db $10                                        ; $7e7d: $10
    ld b, b                                       ; $7e7e: $40
    nop                                           ; $7e7f: $00
    ld hl, sp+$05                                 ; $7e80: $f8 $05
    add b                                         ; $7e82: $80
    cp d                                          ; $7e83: $ba
    jr jr_0b1_7ed2                                ; $7e84: $18 $4c

    ld [de], a                                    ; $7e86: $12
    ld b, [hl]                                    ; $7e87: $46
    add hl, bc                                    ; $7e88: $09
    ld b, e                                       ; $7e89: $43
    inc b                                         ; $7e8a: $04
    ld b, c                                       ; $7e8b: $41
    add hl, sp                                    ; $7e8c: $39

jr_0b1_7e8d:
    add d                                         ; $7e8d: $82
    ret nz                                        ; $7e8e: $c0

    jr nz, jr_0b1_7eb1                            ; $7e8f: $20 $20

    rst $00                                       ; $7e91: $c7
    ld d, b                                       ; $7e92: $50

jr_0b1_7e93:
    db $dd                                        ; $7e93: $dd
    ld d, b                                       ; $7e94: $50
    rlca                                          ; $7e95: $07
    adc b                                         ; $7e96: $88
    ld l, [hl]                                    ; $7e97: $6e
    nop                                           ; $7e98: $00
    ld b, b                                       ; $7e99: $40
    sub b                                         ; $7e9a: $90
    ldh a, [$38]                                  ; $7e9b: $f0 $38
    rst $08                                       ; $7e9d: $cf
    jr nc, jr_0b1_7e22                            ; $7e9e: $30 $82

    dec b                                         ; $7ea0: $05
    add c                                         ; $7ea1: $81
    ld [bc], a                                    ; $7ea2: $02
    ld b, b                                       ; $7ea3: $40
    ld bc, $00c2                                  ; $7ea4: $01 $c2 $00
    ld c, b                                       ; $7ea7: $48
    nop                                           ; $7ea8: $00
    ld bc, $3060                                  ; $7ea9: $01 $60 $30
    ld [$0002], sp                                ; $7eac: $08 $02 $00
    ld b, b                                       ; $7eaf: $40
    ld h, b                                       ; $7eb0: $60

jr_0b1_7eb1:
    sub b                                         ; $7eb1: $90
    jr nz, @-$3e                                  ; $7eb2: $20 $c0

    jr nz, jr_0b1_7ed0                            ; $7eb4: $20 $1a

    jr jr_0b1_7ef8                                ; $7eb6: $18 $40

    jr nz, @+$42                                  ; $7eb8: $20 $40

    jr nz, jr_0b1_7f1c                            ; $7eba: $20 $60

    ld [$3000], sp                                ; $7ebc: $08 $00 $30
    ld c, b                                       ; $7ebf: $48
    rra                                           ; $7ec0: $1f
    db $10                                        ; $7ec1: $10
    jr nz, jr_0b1_7e4c                            ; $7ec2: $20 $88

    db $10                                        ; $7ec4: $10
    sub b                                         ; $7ec5: $90
    nop                                           ; $7ec6: $00
    jr nz, jr_0b1_7e69                            ; $7ec7: $20 $a0

    ld d, b                                       ; $7ec9: $50
    ret nc                                        ; $7eca: $d0

    jr z, jr_0b1_7e59                             ; $7ecb: $28 $8c

    ld [de], a                                    ; $7ecd: $12
    add $50                                       ; $7ece: $c6 $50

jr_0b1_7ed0:
    jr z, @+$3e                                   ; $7ed0: $28 $3c

jr_0b1_7ed2:
    ld [$4180], sp                                ; $7ed2: $08 $80 $41
    jr jr_0b1_7e57                                ; $7ed5: $18 $80

    ret nz                                        ; $7ed7: $c0

    jr nz, jr_0b1_7f3b                            ; $7ed8: $20 $61

    ld b, b                                       ; $7eda: $40
    add d                                         ; $7edb: $82
    ld c, h                                       ; $7edc: $4c
    ld [$8108], sp                                ; $7edd: $08 $08 $81
    add hl, bc                                    ; $7ee0: $09
    ld [bc], a                                    ; $7ee1: $02
    ld a, [bc]                                    ; $7ee2: $0a
    dec b                                         ; $7ee3: $05
    ld [bc], a                                    ; $7ee4: $02
    dec c                                         ; $7ee5: $0d
    ld [bc], a                                    ; $7ee6: $02
    ld [$1c81], sp                                ; $7ee7: $08 $81 $1c
    ld [hl+], a                                   ; $7eea: $22
    ld e, h                                       ; $7eeb: $5c
    ld [$0007], sp                                ; $7eec: $08 $07 $00
    ld [$0002], sp                                ; $7eef: $08 $02 $00
    ld [bc], a                                    ; $7ef2: $02
    jr nz, jr_0b1_7f17                            ; $7ef3: $20 $22

    nop                                           ; $7ef5: $00
    rst $20                                       ; $7ef6: $e7
    ld h, b                                       ; $7ef7: $60

jr_0b1_7ef8:
    ld [$0051], sp                                ; $7ef8: $08 $51 $00
    ld d, h                                       ; $7efb: $54
    nop                                           ; $7efc: $00

jr_0b1_7efd:
    add d                                         ; $7efd: $82
    ld b, b                                       ; $7efe: $40
    jp nz, Jump_0b1_4200                          ; $7eff: $c2 $00 $42

    inc b                                         ; $7f02: $04
    and b                                         ; $7f03: $a0
    ld b, d                                       ; $7f04: $42
    jr nz, jr_0b1_7f7e                            ; $7f05: $20 $77

    adc b                                         ; $7f07: $88
    ld a, d                                       ; $7f08: $7a
    jr jr_0b1_7f0f                                ; $7f09: $18 $04

    ld [bc], a                                    ; $7f0b: $02
    ld bc, $0807                                  ; $7f0c: $01 $07 $08

jr_0b1_7f0f:
    ld [$0804], sp                                ; $7f0f: $08 $04 $08
    db $10                                        ; $7f12: $10
    inc e                                         ; $7f13: $1c
    ld [hl], b                                    ; $7f14: $70
    jr nz, jr_0b1_7f17                            ; $7f15: $20 $00

jr_0b1_7f17:
    ld [hl+], a                                   ; $7f17: $22
    ld d, l                                       ; $7f18: $55
    ld [hl-], a                                   ; $7f19: $32
    dec b                                         ; $7f1a: $05
    inc d                                         ; $7f1b: $14

jr_0b1_7f1c:
    ld a, [hl+]                                   ; $7f1c: $2a
    inc e                                         ; $7f1d: $1c
    ld [bc], a                                    ; $7f1e: $02
    ld [bc], a                                    ; $7f1f: $02
    ld [$0814], sp                                ; $7f20: $08 $14 $08
    inc b                                         ; $7f23: $04
    nop                                           ; $7f24: $00
    ld [$489e], sp                                ; $7f25: $08 $9e $48
    ret nz                                        ; $7f28: $c0

    ld [$6020], sp                                ; $7f29: $08 $20 $60
    sub b                                         ; $7f2c: $90
    jr nc, jr_0b1_7f41                            ; $7f2d: $30 $12

    ld b, b                                       ; $7f2f: $40
    rrca                                          ; $7f30: $0f
    sub b                                         ; $7f31: $90
    db $10                                        ; $7f32: $10
    db $10                                        ; $7f33: $10
    jr z, jr_0b1_7f56                             ; $7f34: $28 $20

    ld b, b                                       ; $7f36: $40
    ret nz                                        ; $7f37: $c0

    jr c, jr_0b1_7efd                             ; $7f38: $38 $c3

    inc h                                         ; $7f3a: $24

jr_0b1_7f3b:
    add [hl]                                      ; $7f3b: $86
    ld bc, $8441                                  ; $7f3c: $01 $41 $84
    ld [hl-], a                                   ; $7f3f: $32
    ld b, b                                       ; $7f40: $40

jr_0b1_7f41:
    ld sp, $604a                                  ; $7f41: $31 $4a $60
    db $10                                        ; $7f44: $10
    ld b, b                                       ; $7f45: $40
    sbc a                                         ; $7f46: $9f
    jr nz, jr_0b1_7f49                            ; $7f47: $20 $00

jr_0b1_7f49:
    ret nz                                        ; $7f49: $c0

    jr nz, @-$7e                                  ; $7f4a: $20 $80

    ld b, b                                       ; $7f4c: $40
    sbc h                                         ; $7f4d: $9c
    ld [hl+], a                                   ; $7f4e: $22
    adc b                                         ; $7f4f: $88
    nop                                           ; $7f50: $00
    ld b, b                                       ; $7f51: $40
    ld [$00af], sp                                ; $7f52: $08 $af $00
    inc bc                                        ; $7f55: $03

jr_0b1_7f56:
    inc b                                         ; $7f56: $04
    ld bc, $0102                                  ; $7f57: $01 $02 $01
    nop                                           ; $7f5a: $00
    ld h, b                                       ; $7f5b: $60
    nop                                           ; $7f5c: $00
    inc bc                                        ; $7f5d: $03
    nop                                           ; $7f5e: $00
    cp e                                          ; $7f5f: $bb
    jr nz, @+$42                                  ; $7f60: $20 $40

    ld bc, $8082                                  ; $7f62: $01 $82 $80
    nop                                           ; $7f65: $00
    nop                                           ; $7f66: $00
    add b                                         ; $7f67: $80
    ld b, c                                       ; $7f68: $41
    ret nz                                        ; $7f69: $c0

    ld bc, $a241                                  ; $7f6a: $01 $41 $a2
    ld h, c                                       ; $7f6d: $61
    ld [bc], a                                    ; $7f6e: $02
    add b                                         ; $7f6f: $80
    db $10                                        ; $7f70: $10
    add hl, bc                                    ; $7f71: $09
    ldh [rNR10], a                                ; $7f72: $e0 $10
    ld b, b                                       ; $7f74: $40
    and b                                         ; $7f75: $a0
    add b                                         ; $7f76: $80
    ld b, b                                       ; $7f77: $40
    add a                                         ; $7f78: $87
    inc b                                         ; $7f79: $04
    ld c, b                                       ; $7f7a: $48
    inc bc                                        ; $7f7b: $03
    add b                                         ; $7f7c: $80
    ld [bc], a                                    ; $7f7d: $02

jr_0b1_7f7e:
    add l                                         ; $7f7e: $85
    jr nz, jr_0b1_7fba                            ; $7f7f: $20 $39

    rst $00                                       ; $7f81: $c7
    jr z, @+$42                                   ; $7f82: $28 $40

    add d                                         ; $7f84: $82
    cp [hl]                                       ; $7f85: $be
    nop                                           ; $7f86: $00
    nop                                           ; $7f87: $00
    ld bc, $0001                                  ; $7f88: $01 $01 $00
    inc bc                                        ; $7f8b: $03
    nop                                           ; $7f8c: $00
    nop                                           ; $7f8d: $00
    inc c                                         ; $7f8e: $0c
    inc de                                        ; $7f8f: $13
    inc b                                         ; $7f90: $04
    nop                                           ; $7f91: $00
    rlca                                          ; $7f92: $07
    add b                                         ; $7f93: $80
    inc b                                         ; $7f94: $04
    ld bc, $0000                                  ; $7f95: $01 $00 $00
    inc b                                         ; $7f98: $04
    inc d                                         ; $7f99: $14
    nop                                           ; $7f9a: $00
    jr nz, jr_0b1_7f9d                            ; $7f9b: $20 $00

jr_0b1_7f9d:
    jr z, jr_0b1_7f9f                             ; $7f9d: $28 $00

jr_0b1_7f9f:
    ld a, a                                       ; $7f9f: $7f
    ld a, a                                       ; $7fa0: $7f
    ld bc, $23f8                                  ; $7fa1: $01 $f8 $23
    ld hl, sp+$45                                 ; $7fa4: $f8 $45
    ld hl, sp+$67                                 ; $7fa6: $f8 $67
    ld hl, sp-$77                                 ; $7fa8: $f8 $89
    ld hl, sp-$55                                 ; $7faa: $f8 $ab
    ld hl, sp-$33                                 ; $7fac: $f8 $cd
    ld hl, sp-$01                                 ; $7fae: $f8 $ff
    rst $28                                       ; $7fb0: $ef
    ld hl, sp+$11                                 ; $7fb1: $f8 $11
    ld sp, hl                                     ; $7fb3: $f9
    inc sp                                        ; $7fb4: $33
    ld sp, hl                                     ; $7fb5: $f9
    ld d, l                                       ; $7fb6: $55
    ld sp, hl                                     ; $7fb7: $f9
    ld [hl], a                                    ; $7fb8: $77
    ld sp, hl                                     ; $7fb9: $f9

jr_0b1_7fba:
    sbc c                                         ; $7fba: $99
    ld sp, hl                                     ; $7fbb: $f9
    cp e                                          ; $7fbc: $bb
    ld sp, hl                                     ; $7fbd: $f9
    db $dd                                        ; $7fbe: $dd
    ld sp, hl                                     ; $7fbf: $f9
    rst $30                                       ; $7fc0: $f7
    rst $38                                       ; $7fc1: $ff
    ld sp, hl                                     ; $7fc2: $f9
    ld hl, $43fa                                  ; $7fc3: $21 $fa $43
    ld a, [$c265]                                 ; $7fc6: $fa $65 $c2
    inc bc                                        ; $7fc9: $03
    ld bc, $23f8                                  ; $7fca: $01 $f8 $23
    ld hl, sp+$45                                 ; $7fcd: $f8 $45
    ld hl, sp-$01                                 ; $7fcf: $f8 $ff
    ld h, a                                       ; $7fd1: $67
    ld hl, sp-$77                                 ; $7fd2: $f8 $89
    ld hl, sp-$55                                 ; $7fd4: $f8 $ab
    ld hl, sp-$33                                 ; $7fd6: $f8 $cd
    ld hl, sp-$11                                 ; $7fd8: $f8 $ef
    ld hl, sp+$11                                 ; $7fda: $f8 $11
    ld sp, hl                                     ; $7fdc: $f9
    inc sp                                        ; $7fdd: $33
    ld sp, hl                                     ; $7fde: $f9
    ld d, l                                       ; $7fdf: $55
    ld sp, hl                                     ; $7fe0: $f9
    rst $38                                       ; $7fe1: $ff
    ld [hl], a                                    ; $7fe2: $77
    ld sp, hl                                     ; $7fe3: $f9
    sbc c                                         ; $7fe4: $99
    ld sp, hl                                     ; $7fe5: $f9
    cp e                                          ; $7fe6: $bb
    ld sp, hl                                     ; $7fe7: $f9
    db $dd                                        ; $7fe8: $dd
    ld sp, hl                                     ; $7fe9: $f9
    rst $38                                       ; $7fea: $ff
    ld sp, hl                                     ; $7feb: $f9
    ld hl, $43fa                                  ; $7fec: $21 $fa $43
    ld a, [$c265]                                 ; $7fef: $fa $65 $c2
    ld b, [hl]                                    ; $7ff2: $46
    add hl, sp                                    ; $7ff3: $39
    ld [hl], h                                    ; $7ff4: $74
    ld d, c                                       ; $7ff5: $51
    ld l, e                                       ; $7ff6: $6b
    jr nc, jr_0b1_7ff9                            ; $7ff7: $30 $00

jr_0b1_7ff9:
    nop                                           ; $7ff9: $00
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
