; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0f8", ROMX[$4000], BANK[$f8]

Call_0f8_4000:
    ld hl, sp+$11                                 ; $4000: $f8 $11
    ld b, $f5                                     ; $4002: $06 $f5
    inc c                                         ; $4004: $0c
    push af                                       ; $4005: $f5
    dec bc                                        ; $4006: $0b
    or $f5                                        ; $4007: $f6 $f5
    push af                                       ; $4009: $f5
    db $fd                                        ; $400a: $fd
    push af                                       ; $400b: $f5
    dec b                                         ; $400c: $05
    dec b                                         ; $400d: $05
    rst $30                                       ; $400e: $f7
    dec b                                         ; $400f: $05
    rst $38                                       ; $4010: $ff
    dec b                                         ; $4011: $05
    dec b                                         ; $4012: $05
    add d                                         ; $4013: $82
    ld bc, $0211                                  ; $4014: $01 $11 $02
    ld bc, $0284                                  ; $4017: $01 $84 $02
    ld a, [bc]                                    ; $401a: $0a
    ld [$0210], sp                                ; $401b: $08 $10 $02
    nop                                           ; $401e: $00
    add d                                         ; $401f: $82
    ldh [$e1], a                                  ; $4020: $e0 $e1
    inc bc                                        ; $4022: $03
    nop                                           ; $4023: $00
    add e                                         ; $4024: $83
    ld bc, $1615                                  ; $4025: $01 $15 $16
    inc b                                         ; $4028: $04
    ld [$1202], sp                                ; $4029: $08 $02 $12
    ld [bc], a                                    ; $402c: $02
    add b                                         ; $402d: $80
    add [hl]                                      ; $402e: $86
    ld [bc], a                                    ; $402f: $02
    inc bc                                        ; $4030: $03
    inc b                                         ; $4031: $04
    ld [$1410], sp                                ; $4032: $08 $10 $14
    ld [bc], a                                    ; $4035: $02
    ld [bc], a                                    ; $4036: $02
    ld [bc], a                                    ; $4037: $02
    nop                                           ; $4038: $00
    ld [bc], a                                    ; $4039: $02
    jr jr_0f8_403e                                ; $403a: $18 $02

    and l                                         ; $403c: $a5
    ld [bc], a                                    ; $403d: $02

jr_0f8_403e:
    ld sp, $0386                                  ; $403e: $31 $86 $03
    add e                                         ; $4041: $83
    add b                                         ; $4042: $80
    ld bc, $4041                                  ; $4043: $01 $41 $40
    inc b                                         ; $4046: $04
    nop                                           ; $4047: $00
    ld [bc], a                                    ; $4048: $02
    ld bc, $8102                                  ; $4049: $01 $02 $81
    inc b                                         ; $404c: $04
    nop                                           ; $404d: $00
    add [hl]                                      ; $404e: $86
    add b                                         ; $404f: $80
    nop                                           ; $4050: $00
    ld [bc], a                                    ; $4051: $02
    add d                                         ; $4052: $82
    nop                                           ; $4053: $00
    ld b, b                                       ; $4054: $40
    ld [bc], a                                    ; $4055: $02
    nop                                           ; $4056: $00
    add d                                         ; $4057: $82
    jr nz, jr_0f8_406e                            ; $4058: $20 $14

    inc b                                         ; $405a: $04
    nop                                           ; $405b: $00
    add [hl]                                      ; $405c: $86
    ld [$2228], sp                                ; $405d: $08 $28 $22
    ld [de], a                                    ; $4060: $12
    ld b, b                                       ; $4061: $40
    ret nz                                        ; $4062: $c0

    ld [bc], a                                    ; $4063: $02
    nop                                           ; $4064: $00
    ld [bc], a                                    ; $4065: $02
    ld c, c                                       ; $4066: $49
    ld [bc], a                                    ; $4067: $02
    db $10                                        ; $4068: $10
    ld [bc], a                                    ; $4069: $02
    ld [de], a                                    ; $406a: $12
    ld [bc], a                                    ; $406b: $02
    db $10                                        ; $406c: $10
    add h                                         ; $406d: $84

jr_0f8_406e:
    xor b                                         ; $406e: $a8
    ld l, b                                       ; $406f: $68
    nop                                           ; $4070: $00
    add b                                         ; $4071: $80
    ld [bc], a                                    ; $4072: $02
    nop                                           ; $4073: $00
    ld [bc], a                                    ; $4074: $02
    inc bc                                        ; $4075: $03
    inc b                                         ; $4076: $04
    ld [bc], a                                    ; $4077: $02
    add h                                         ; $4078: $84
    db $10                                        ; $4079: $10
    and b                                         ; $407a: $a0
    nop                                           ; $407b: $00
    db $10                                        ; $407c: $10
    ld [bc], a                                    ; $407d: $02
    inc b                                         ; $407e: $04
    inc d                                         ; $407f: $14
    nop                                           ; $4080: $00
    add h                                         ; $4081: $84
    inc b                                         ; $4082: $04
    ld [bc], a                                    ; $4083: $02
    nop                                           ; $4084: $00
    inc b                                         ; $4085: $04
    ld [bc], a                                    ; $4086: $02
    sub b                                         ; $4087: $90
    ld [bc], a                                    ; $4088: $02
    dec d                                         ; $4089: $15
    ld [bc], a                                    ; $408a: $02
    ld [bc], a                                    ; $408b: $02
    ld [bc], a                                    ; $408c: $02
    add d                                         ; $408d: $82
    inc d                                         ; $408e: $14
    nop                                           ; $408f: $00
    ld [bc], a                                    ; $4090: $02
    rlca                                          ; $4091: $07
    ld [bc], a                                    ; $4092: $02
    nop                                           ; $4093: $00
    add h                                         ; $4094: $84
    db $10                                        ; $4095: $10
    ld [$1000], sp                                ; $4096: $08 $00 $10
    inc bc                                        ; $4099: $03
    nop                                           ; $409a: $00
    add c                                         ; $409b: $81
    ld [$0014], sp                                ; $409c: $08 $14 $00
    rst $38                                       ; $409f: $ff
    dec bc                                        ; $40a0: $0b
    inc bc                                        ; $40a1: $03
    ld sp, hl                                     ; $40a2: $f9
    rlca                                          ; $40a3: $07
    ld b, $10                                     ; $40a4: $06 $10
    nop                                           ; $40a6: $00
    rst $30                                       ; $40a7: $f7
    nop                                           ; $40a8: $00
    rst $38                                       ; $40a9: $ff
    nop                                           ; $40aa: $00
    ld [bc], a                                    ; $40ab: $02
    ld [bc], a                                    ; $40ac: $02
    nop                                           ; $40ad: $00
    sbc b                                         ; $40ae: $98
    inc b                                         ; $40af: $04
    nop                                           ; $40b0: $00
    inc b                                         ; $40b1: $04
    nop                                           ; $40b2: $00
    inc b                                         ; $40b3: $04
    ld [$014c], sp                                ; $40b4: $08 $4c $01
    ld e, c                                       ; $40b7: $59
    inc b                                         ; $40b8: $04
    ld a, d                                       ; $40b9: $7a
    sub l                                         ; $40ba: $95
    ld l, $f9                                     ; $40bb: $2e $f9
    sub d                                         ; $40bd: $92
    db $fd                                        ; $40be: $fd
    and b                                         ; $40bf: $a0
    rst $38                                       ; $40c0: $ff
    jr z, jr_0f8_4142                             ; $40c1: $28 $7f

    ld e, $5f                                     ; $40c3: $1e $5f
    ld e, d                                       ; $40c5: $5a
    ld e, a                                       ; $40c6: $5f
    ld [bc], a                                    ; $40c7: $02
    dec b                                         ; $40c8: $05
    ld [bc], a                                    ; $40c9: $02
    inc b                                         ; $40ca: $04
    ld [bc], a                                    ; $40cb: $02
    nop                                           ; $40cc: $00
    sbc h                                         ; $40cd: $9c
    ld b, b                                       ; $40ce: $40
    nop                                           ; $40cf: $00
    ld b, h                                       ; $40d0: $44
    nop                                           ; $40d1: $00
    ld b, h                                       ; $40d2: $44
    nop                                           ; $40d3: $00
    ld b, h                                       ; $40d4: $44
    add b                                         ; $40d5: $80
    call nz, $af22                                ; $40d6: $c4 $22 $af
    ld b, b                                       ; $40d9: $40
    push hl                                       ; $40da: $e5
    dec de                                        ; $40db: $1b
    sub d                                         ; $40dc: $92
    ld l, a                                       ; $40dd: $6f
    ld b, c                                       ; $40de: $41
    rst $38                                       ; $40df: $ff
    and h                                         ; $40e0: $a4
    rst $38                                       ; $40e1: $ff
    ld b, h                                       ; $40e2: $44
    rst $38                                       ; $40e3: $ff
    xor e                                         ; $40e4: $ab
    rst $38                                       ; $40e5: $ff
    cp [hl]                                       ; $40e6: $be
    cp $0a                                        ; $40e7: $fe $0a
    ld e, d                                       ; $40e9: $5a
    ld [bc], a                                    ; $40ea: $02
    ld d, b                                       ; $40eb: $50
    ld a, [bc]                                    ; $40ec: $0a
    nop                                           ; $40ed: $00
    sub b                                         ; $40ee: $90
    ld [bc], a                                    ; $40ef: $02
    nop                                           ; $40f0: $00
    ld [bc], a                                    ; $40f1: $02
    ld bc, $0205                                  ; $40f2: $01 $05 $02
    inc b                                         ; $40f5: $04
    rlca                                          ; $40f6: $07
    inc bc                                        ; $40f7: $03
    dec b                                         ; $40f8: $05
    ld bc, $0507                                  ; $40f9: $01 $07 $05
    rlca                                          ; $40fc: $07
    dec b                                         ; $40fd: $05
    rlca                                          ; $40fe: $07
    ld [bc], a                                    ; $40ff: $02
    ld [bc], a                                    ; $4100: $02
    ld b, $00                                     ; $4101: $06 $00
    rst $38                                       ; $4103: $ff
    dec c                                         ; $4104: $0d
    inc b                                         ; $4105: $04
    ld sp, hl                                     ; $4106: $f9
    rlca                                          ; $4107: $07
    ld b, $10                                     ; $4108: $06 $10
    cp $f7                                        ; $410a: $fe $f7
    db $fd                                        ; $410c: $fd
    rst $38                                       ; $410d: $ff
    ld bc, $0d02                                  ; $410e: $01 $02 $0d
    ld sp, hl                                     ; $4111: $f9
    sbc [hl]                                      ; $4112: $9e
    inc b                                         ; $4113: $04
    nop                                           ; $4114: $00
    inc b                                         ; $4115: $04
    nop                                           ; $4116: $00
    inc b                                         ; $4117: $04
    ld [$115c], sp                                ; $4118: $08 $5c $11
    ld l, h                                       ; $411b: $6c
    add hl, sp                                    ; $411c: $39
    ld e, c                                       ; $411d: $59
    inc d                                         ; $411e: $14
    ld l, a                                       ; $411f: $6f
    sub b                                         ; $4120: $90
    ld a, [hl-]                                   ; $4121: $3a
    push bc                                       ; $4122: $c5
    sub d                                         ; $4123: $92
    db $ed                                        ; $4124: $ed
    and b                                         ; $4125: $a0
    rst $38                                       ; $4126: $ff
    inc l                                         ; $4127: $2c
    ld a, a                                       ; $4128: $7f
    ld a, [hl+]                                   ; $4129: $2a
    ld a, a                                       ; $412a: $7f
    ld e, $5f                                     ; $412b: $1e $5f
    ld d, d                                       ; $412d: $52
    ld d, a                                       ; $412e: $57
    ld bc, $0205                                  ; $412f: $01 $05 $02
    inc b                                         ; $4132: $04
    xor c                                         ; $4133: $a9
    ld b, b                                       ; $4134: $40
    nop                                           ; $4135: $00
    ld b, h                                       ; $4136: $44
    nop                                           ; $4137: $00
    ld b, h                                       ; $4138: $44
    nop                                           ; $4139: $00
    ld b, h                                       ; $413a: $44
    add b                                         ; $413b: $80
    push bc                                       ; $413c: $c5
    inc hl                                        ; $413d: $23
    add $23                                       ; $413e: $c6 $23
    rst $28                                       ; $4140: $ef
    ld b, c                                       ; $4141: $41

jr_0f8_4142:
    or h                                          ; $4142: $b4
    db $eb                                        ; $4143: $eb
    pop bc                                        ; $4144: $c1
    ld a, [hl]                                    ; $4145: $7e
    nop                                           ; $4146: $00
    ei                                            ; $4147: $fb
    and h                                         ; $4148: $a4
    ld [hl], l                                    ; $4149: $75
    ld a, [bc]                                    ; $414a: $0a
    rst $38                                       ; $414b: $ff
    inc b                                         ; $414c: $04
    rst $38                                       ; $414d: $ff
    xor l                                         ; $414e: $ad
    rst $38                                       ; $414f: $ff
    cp d                                          ; $4150: $ba
    ld a, [$5a0a]                                 ; $4151: $fa $0a $5a
    ld [bc], a                                    ; $4154: $02
    nop                                           ; $4155: $00
    ld b, $04                                     ; $4156: $06 $04
    ld [bc], a                                    ; $4158: $02
    ld bc, $0205                                  ; $4159: $01 $05 $02
    ld b, $02                                     ; $415c: $06 $02
    ld bc, $0789                                  ; $415e: $01 $89 $07
    ld bc, $0507                                  ; $4161: $01 $07 $05
    rlca                                          ; $4164: $07
    dec b                                         ; $4165: $05
    rlca                                          ; $4166: $07
    dec b                                         ; $4167: $05
    rlca                                          ; $4168: $07
    ld [bc], a                                    ; $4169: $02
    ld [bc], a                                    ; $416a: $02
    ld [bc], a                                    ; $416b: $02
    nop                                           ; $416c: $00
    ld [bc], a                                    ; $416d: $02
    add b                                         ; $416e: $80
    ld b, $00                                     ; $416f: $06 $00
    ld [bc], a                                    ; $4171: $02
    ld bc, $001e                                  ; $4172: $01 $1e $00
    rst $38                                       ; $4175: $ff
    rrca                                          ; $4176: $0f
    dec b                                         ; $4177: $05
    ld sp, hl                                     ; $4178: $f9
    rlca                                          ; $4179: $07
    ld b, $10                                     ; $417a: $06 $10
    ld a, [$f9f7]                                 ; $417c: $fa $f7 $f9
    rst $38                                       ; $417f: $ff
    db $fc                                        ; $4180: $fc
    ld [bc], a                                    ; $4181: $02
    add hl, bc                                    ; $4182: $09
    ld hl, sp+$09                                 ; $4183: $f8 $09
    ei                                            ; $4185: $fb
    ld [bc], a                                    ; $4186: $02
    db $10                                        ; $4187: $10
    cp [hl]                                       ; $4188: $be
    jr z, jr_0f8_41c3                             ; $4189: $28 $38

    inc d                                         ; $418b: $14
    db $10                                        ; $418c: $10
    inc b                                         ; $418d: $04
    nop                                           ; $418e: $00
    inc b                                         ; $418f: $04
    ld [$014c], sp                                ; $4190: $08 $4c $01
    ld c, h                                       ; $4193: $4c
    ld bc, $005d                                  ; $4194: $01 $5d $00
    ld l, d                                       ; $4197: $6a
    sub l                                         ; $4198: $95
    ld a, e                                       ; $4199: $7b
    add h                                         ; $419a: $84
    ld l, $d5                                     ; $419b: $2e $d5
    adc d                                         ; $419d: $8a
    rst $38                                       ; $419e: $ff
    and h                                         ; $419f: $a4
    rst $38                                       ; $41a0: $ff
    jr z, jr_0f8_4222                             ; $41a1: $28 $7f

    jr z, jr_0f8_4224                             ; $41a3: $28 $7f

    ld a, [de]                                    ; $41a5: $1a
    ld e, a                                       ; $41a6: $5f
    ld b, b                                       ; $41a7: $40
    nop                                           ; $41a8: $00
    ld b, b                                       ; $41a9: $40
    nop                                           ; $41aa: $00
    ld b, c                                       ; $41ab: $41
    ld bc, $0346                                  ; $41ac: $01 $46 $03
    ld b, l                                       ; $41af: $45
    ld b, c                                       ; $41b0: $41
    and h                                         ; $41b1: $a4
    ldh [$c4], a                                  ; $41b2: $e0 $c4
    ld h, d                                       ; $41b4: $62
    call nz, $af22                                ; $41b5: $c4 $22 $af
    ld b, b                                       ; $41b8: $40
    and l                                         ; $41b9: $a5
    ld e, d                                       ; $41ba: $5a
    ldh [rNR31], a                                ; $41bb: $e0 $1b
    call nz, Call_000_0b35                        ; $41bd: $c4 $35 $0b
    cp $a4                                        ; $41c0: $fe $a4
    ld a, a                                       ; $41c2: $7f

jr_0f8_41c3:
    inc b                                         ; $41c3: $04
    rst $38                                       ; $41c4: $ff
    inc b                                         ; $41c5: $04
    rst $38                                       ; $41c6: $ff
    ld [bc], a                                    ; $41c7: $02
    inc b                                         ; $41c8: $04
    inc b                                         ; $41c9: $04
    nop                                           ; $41ca: $00
    adc e                                         ; $41cb: $8b
    ld [bc], a                                    ; $41cc: $02
    nop                                           ; $41cd: $00
    ld [bc], a                                    ; $41ce: $02
    nop                                           ; $41cf: $00
    ld [bc], a                                    ; $41d0: $02
    ld bc, $0205                                  ; $41d1: $01 $05 $02
    dec b                                         ; $41d4: $05
    ld [bc], a                                    ; $41d5: $02
    ld b, $02                                     ; $41d6: $06 $02
    ld bc, $0789                                  ; $41d8: $01 $89 $07
    ld bc, $0507                                  ; $41db: $01 $07 $05
    rlca                                          ; $41de: $07
    dec b                                         ; $41df: $05
    rlca                                          ; $41e0: $07
    ld l, l                                       ; $41e1: $6d
    rst $38                                       ; $41e2: $ff
    ld [bc], a                                    ; $41e3: $02
    jp nc, Jump_0f8_5082                          ; $41e4: $d2 $82 $50

    ret nc                                        ; $41e7: $d0

    ld [bc], a                                    ; $41e8: $02
    ld bc, $a584                                  ; $41e9: $01 $84 $a5
    xor a                                         ; $41ec: $af
    ld [bc], a                                    ; $41ed: $02
    ld a, [bc]                                    ; $41ee: $0a
    ld [bc], a                                    ; $41ef: $02
    ld [$0018], sp                                ; $41f0: $08 $18 $00
    add [hl]                                      ; $41f3: $86
    ld [bc], a                                    ; $41f4: $02
    ld b, $02                                     ; $41f5: $06 $02
    ld b, $00                                     ; $41f7: $06 $00
    inc b                                         ; $41f9: $04
    ld [bc], a                                    ; $41fa: $02
    dec b                                         ; $41fb: $05
    jr jr_0f8_41fe                                ; $41fc: $18 $00

jr_0f8_41fe:
    rst $38                                       ; $41fe: $ff
    rrca                                          ; $41ff: $0f
    dec b                                         ; $4200: $05
    ld sp, hl                                     ; $4201: $f9
    rlca                                          ; $4202: $07
    ld b, $10                                     ; $4203: $06 $10
    push af                                       ; $4205: $f5
    rst $30                                       ; $4206: $f7
    or $ff                                        ; $4207: $f6 $ff
    rst $30                                       ; $4209: $f7
    ld [bc], a                                    ; $420a: $02
    dec b                                         ; $420b: $05
    rst $30                                       ; $420c: $f7
    dec b                                         ; $420d: $05
    db $fc                                        ; $420e: $fc
    ld [bc], a                                    ; $420f: $02
    db $10                                        ; $4210: $10
    add d                                         ; $4211: $82
    jr z, jr_0f8_424c                             ; $4212: $28 $38

    ld [bc], a                                    ; $4214: $02
    db $10                                        ; $4215: $10
    ld b, $00                                     ; $4216: $06 $00
    sub h                                         ; $4218: $94
    inc b                                         ; $4219: $04
    nop                                           ; $421a: $00
    inc b                                         ; $421b: $04
    nop                                           ; $421c: $00
    ld b, h                                       ; $421d: $44
    ld [$005d], sp                                ; $421e: $08 $5d $00
    ld l, [hl]                                    ; $4221: $6e

Call_0f8_4222:
jr_0f8_4222:
    sub l                                         ; $4222: $95
    xor e                                         ; $4223: $ab

jr_0f8_4224:
    ld e, [hl]                                    ; $4224: $5e
    add h                                         ; $4225: $84
    rst $38                                       ; $4226: $ff
    and h                                         ; $4227: $a4
    rst $38                                       ; $4228: $ff
    ld d, d                                       ; $4229: $52
    ld e, a                                       ; $422a: $5f
    ld e, b                                       ; $422b: $58
    ld e, l                                       ; $422c: $5d
    ld [bc], a                                    ; $422d: $02
    ld bc, $0282                                  ; $422e: $01 $82 $02
    inc bc                                        ; $4231: $03
    ld [bc], a                                    ; $4232: $02
    ld b, c                                       ; $4233: $41
    add d                                         ; $4234: $82
    and b                                         ; $4235: $a0
    ldh [rSC], a                                  ; $4236: $e0 $02
    ld b, b                                       ; $4238: $40
    sub [hl]                                      ; $4239: $96
    ld b, h                                       ; $423a: $44
    nop                                           ; $423b: $00
    ld b, h                                       ; $423c: $44
    nop                                           ; $423d: $00
    ld b, [hl]                                    ; $423e: $46
    add b                                         ; $423f: $80
    call $b522                                    ; $4240: $cd $22 $b5
    ld c, [hl]                                    ; $4243: $4e
    xor d                                         ; $4244: $aa
    ld e, a                                       ; $4245: $5f
    inc b                                         ; $4246: $04
    rst $38                                       ; $4247: $ff
    nop                                           ; $4248: $00
    rst $38                                       ; $4249: $ff
    xor d                                         ; $424a: $aa
    rst $38                                       ; $424b: $ff

jr_0f8_424c:
    adc e                                         ; $424c: $8b
    db $db                                        ; $424d: $db
    ld a, [bc]                                    ; $424e: $0a
    ld c, d                                       ; $424f: $4a
    ld [bc], a                                    ; $4250: $02
    inc b                                         ; $4251: $04
    ld a, [bc]                                    ; $4252: $0a
    nop                                           ; $4253: $00
    add a                                         ; $4254: $87
    ld [bc], a                                    ; $4255: $02
    nop                                           ; $4256: $00
    ld [bc], a                                    ; $4257: $02
    ld bc, $0205                                  ; $4258: $01 $05 $02
    ld b, $02                                     ; $425b: $06 $02
    ld bc, $0785                                  ; $425d: $01 $85 $07
    dec b                                         ; $4260: $05
    rlca                                          ; $4261: $07
    inc b                                         ; $4262: $04
    ld b, $02                                     ; $4263: $06 $02
    ld [bc], a                                    ; $4265: $02
    ld [bc], a                                    ; $4266: $02
    nop                                           ; $4267: $00
    ld [bc], a                                    ; $4268: $02
    ld b, d                                       ; $4269: $42
    add d                                         ; $426a: $82
    add hl, bc                                    ; $426b: $09
    dec c                                         ; $426c: $0d
    ld [bc], a                                    ; $426d: $02
    ld b, h                                       ; $426e: $44
    ld [bc], a                                    ; $426f: $02
    ld bc, $001c                                  ; $4270: $01 $1c $00
    ld [bc], a                                    ; $4273: $02
    ld [$0002], sp                                ; $4274: $08 $02 $00
    ld [bc], a                                    ; $4277: $02
    ld bc, $0018                                  ; $4278: $01 $18 $00
    rst $38                                       ; $427b: $ff
    dec c                                         ; $427c: $0d
    inc b                                         ; $427d: $04
    ld sp, hl                                     ; $427e: $f9
    rlca                                          ; $427f: $07
    ld b, $10                                     ; $4280: $06 $10
    pop af                                        ; $4282: $f1
    rst $30                                       ; $4283: $f7
    ld a, [c]                                     ; $4284: $f2
    rst $38                                       ; $4285: $ff
    ld a, [$0102]                                 ; $4286: $fa $02 $01
    rst $30                                       ; $4289: $f7
    ld [bc], a                                    ; $428a: $02
    db $10                                        ; $428b: $10
    add c                                         ; $428c: $81
    nop                                           ; $428d: $00
    inc bc                                        ; $428e: $03
    db $10                                        ; $428f: $10
    ld a, [bc]                                    ; $4290: $0a
    nop                                           ; $4291: $00
    adc [hl]                                      ; $4292: $8e
    inc b                                         ; $4293: $04
    nop                                           ; $4294: $00
    ld b, h                                       ; $4295: $44
    nop                                           ; $4296: $00
    ld h, h                                       ; $4297: $64
    inc c                                         ; $4298: $0c
    cp d                                          ; $4299: $ba
    ld c, a                                       ; $429a: $4f
    inc b                                         ; $429b: $04
    rst $38                                       ; $429c: $ff
    jp nc, Jump_0f8_59ff                          ; $429d: $d2 $ff $59

    ld e, l                                       ; $42a0: $5d
    ld [bc], a                                    ; $42a1: $02
    dec b                                         ; $42a2: $05
    ld [bc], a                                    ; $42a3: $02
    ld bc, $0082                                  ; $42a4: $01 $82 $00
    ld bc, $4102                                  ; $42a7: $01 $02 $41
    add c                                         ; $42aa: $81
    nop                                           ; $42ab: $00
    inc bc                                        ; $42ac: $03
    ld b, b                                       ; $42ad: $40
    inc b                                         ; $42ae: $04
    nop                                           ; $42af: $00
    adc [hl]                                      ; $42b0: $8e
    ld b, h                                       ; $42b1: $44
    nop                                           ; $42b2: $00
    ld b, h                                       ; $42b3: $44
    nop                                           ; $42b4: $00
    ld l, [hl]                                    ; $42b5: $6e
    add h                                         ; $42b6: $84
    sbc d                                         ; $42b7: $9a
    ld l, a                                       ; $42b8: $6f
    inc b                                         ; $42b9: $04
    rst $38                                       ; $42ba: $ff
    xor d                                         ; $42bb: $aa
    rst $38                                       ; $42bc: $ff
    sbc e                                         ; $42bd: $9b
    db $db                                        ; $42be: $db
    ld [bc], a                                    ; $42bf: $02
    ld e, c                                       ; $42c0: $59
    ld [bc], a                                    ; $42c1: $02
    ld [$028b], sp                                ; $42c2: $08 $8b $02
    nop                                           ; $42c5: $00
    ld b, $00                                     ; $42c6: $06 $00
    ld b, $01                                     ; $42c8: $06 $01
    nop                                           ; $42ca: $00
    rlca                                          ; $42cb: $07
    dec b                                         ; $42cc: $05
    rlca                                          ; $42cd: $07
    nop                                           ; $42ce: $00
    inc bc                                        ; $42cf: $03
    ld [bc], a                                    ; $42d0: $02
    ld [bc], a                                    ; $42d1: $02
    nop                                           ; $42d2: $00
    ld [bc], a                                    ; $42d3: $02
    ld [bc], a                                    ; $42d4: $02
    ld [bc], a                                    ; $42d5: $02
    nop                                           ; $42d6: $00
    ld [bc], a                                    ; $42d7: $02
    ld b, b                                       ; $42d8: $40
    ld a, [bc]                                    ; $42d9: $0a
    nop                                           ; $42da: $00
    ld [bc], a                                    ; $42db: $02
    inc b                                         ; $42dc: $04
    ld [bc], a                                    ; $42dd: $02
    ld b, b                                       ; $42de: $40
    ld [bc], a                                    ; $42df: $02
    ld bc, $001a                                  ; $42e0: $01 $1a $00
    rst $38                                       ; $42e3: $ff
    dec bc                                        ; $42e4: $0b
    inc bc                                        ; $42e5: $03
    ld sp, hl                                     ; $42e6: $f9
    rlca                                          ; $42e7: $07
    ld b, $10                                     ; $42e8: $06 $10
    ldh a, [$f8]                                  ; $42ea: $f0 $f8
    ldh a, [rP1]                                  ; $42ec: $f0 $00
    ldh a, [rSB]                                  ; $42ee: $f0 $01
    add c                                         ; $42f0: $81
    nop                                           ; $42f1: $00
    inc bc                                        ; $42f2: $03
    jr nz, jr_0f8_42fb                            ; $42f3: $20 $06

    nop                                           ; $42f5: $00
    ld [bc], a                                    ; $42f6: $02
    ld [$0081], sp                                ; $42f7: $08 $81 $00
    inc bc                                        ; $42fa: $03

jr_0f8_42fb:
    ld [$9c82], sp                                ; $42fb: $08 $82 $9c
    ld d, l                                       ; $42fe: $55
    ld [bc], a                                    ; $42ff: $02

Jump_0f8_4300:
    adc b                                         ; $4300: $88
    ld [bc], a                                    ; $4301: $02
    ld [bc], a                                    ; $4302: $02
    dec bc                                        ; $4303: $0b
    nop                                           ; $4304: $00
    inc bc                                        ; $4305: $03
    ld [bc], a                                    ; $4306: $02
    add c                                         ; $4307: $81
    nop                                           ; $4308: $00
    inc bc                                        ; $4309: $03
    add b                                         ; $430a: $80
    ld [bc], a                                    ; $430b: $02
    nop                                           ; $430c: $00
    ld [bc], a                                    ; $430d: $02
    ld [$0086], sp                                ; $430e: $08 $86 $00
    ld [$0888], sp                                ; $4311: $08 $88 $08
    ld d, b                                       ; $4314: $50
    db $dd                                        ; $4315: $dd
    ld [bc], a                                    ; $4316: $02
    adc b                                         ; $4317: $88
    ld [bc], a                                    ; $4318: $02
    nop                                           ; $4319: $00
    ld [bc], a                                    ; $431a: $02
    db $10                                        ; $431b: $10
    jr jr_0f8_431e                                ; $431c: $18 $00

jr_0f8_431e:
    add d                                         ; $431e: $82
    ld bc, $0200                                  ; $431f: $01 $00 $02
    ld bc, $000c                                  ; $4322: $01 $0c $00
    rst $38                                       ; $4325: $ff

jr_0f8_4326:
    add hl, bc                                    ; $4326: $09
    ld [bc], a                                    ; $4327: $02
    ld hl, sp+$0d                                 ; $4328: $f8 $0d
    di                                            ; $432a: $f3
    ld c, $ff                                     ; $432b: $0e $ff
    db $fc                                        ; $432d: $fc
    rst $38                                       ; $432e: $ff
    cp $95                                        ; $432f: $fe $95
    inc b                                         ; $4331: $04
    nop                                           ; $4332: $00
    dec bc                                        ; $4333: $0b
    nop                                           ; $4334: $00
    ld d, $00                                     ; $4335: $16 $00
    ld c, a                                       ; $4337: $4f
    ld b, $36                                     ; $4338: $06 $36
    ld [bc], a                                    ; $433a: $02
    ld e, [hl]                                    ; $433b: $5e
    inc d                                         ; $433c: $14
    cp [hl]                                       ; $433d: $be
    ld a, [hl+]                                   ; $433e: $2a
    ld a, a                                       ; $433f: $7f
    inc d                                         ; $4340: $14
    adc [hl]                                      ; $4341: $8e
    nop                                           ; $4342: $00
    ld d, c                                       ; $4343: $51
    nop                                           ; $4344: $00
    ld [bc], a                                    ; $4345: $02
    rrca                                          ; $4346: $0f
    nop                                           ; $4347: $00
    add c                                         ; $4348: $81
    ld [bc], a                                    ; $4349: $02
    inc bc                                        ; $434a: $03
    nop                                           ; $434b: $00
    add l                                         ; $434c: $85
    ld [bc], a                                    ; $434d: $02
    nop                                           ; $434e: $00
    ld bc, $0200                                  ; $434f: $01 $00 $02
    inc de                                        ; $4352: $13
    nop                                           ; $4353: $00
    rst $38                                       ; $4354: $ff
    add hl, bc                                    ; $4355: $09
    ld [bc], a                                    ; $4356: $02
    ld hl, sp+$0d                                 ; $4357: $f8 $0d
    di                                            ; $4359: $f3
    ld c, $ff                                     ; $435a: $0e $ff
    ld a, [$00ff]                                 ; $435c: $fa $ff $00
    sbc e                                         ; $435f: $9b
    dec b                                         ; $4360: $05
    nop                                           ; $4361: $00
    ld c, $04                                     ; $4362: $0e $04
    rla                                           ; $4364: $17
    inc bc                                        ; $4365: $03
    rrca                                          ; $4366: $0f
    ld b, $25                                     ; $4367: $06 $25
    ld bc, $0052                                  ; $4369: $01 $52 $00
    or h                                          ; $436c: $b4
    jr nz, jr_0f8_43e8                            ; $436d: $20 $79

    jr nc, jr_0f8_4326                            ; $436f: $30 $b5

    db $10                                        ; $4371: $10
    ld c, d                                       ; $4372: $4a
    nop                                           ; $4373: $00
    dec bc                                        ; $4374: $0b
    inc bc                                        ; $4375: $03
    rla                                           ; $4376: $17
    ld [bc], a                                    ; $4377: $02
    dec bc                                        ; $4378: $0b
    nop                                           ; $4379: $00
    inc b                                         ; $437a: $04
    rlca                                          ; $437b: $07
    nop                                           ; $437c: $00
    add h                                         ; $437d: $84
    jr nz, jr_0f8_4380                            ; $437e: $20 $00

jr_0f8_4380:
    stop                                          ; $4380: $10 $00
    ld [bc], a                                    ; $4382: $02
    jr nc, @-$73                                  ; $4383: $30 $8b

    inc h                                         ; $4385: $24
    nop                                           ; $4386: $00
    ld a, [bc]                                    ; $4387: $0a
    nop                                           ; $4388: $00
    inc l                                         ; $4389: $2c
    inc c                                         ; $438a: $0c
    ld e, $08                                     ; $438b: $1e $08
    dec l                                         ; $438d: $2d
    nop                                           ; $438e: $00
    ld [hl-], a                                   ; $438f: $32
    inc bc                                        ; $4390: $03
    nop                                           ; $4391: $00
    add l                                         ; $4392: $85
    jr nz, jr_0f8_4395                            ; $4393: $20 $00

jr_0f8_4395:
    stop                                          ; $4395: $10 $00
    jr nz, @+$07                                  ; $4397: $20 $05

    nop                                           ; $4399: $00
    rst $38                                       ; $439a: $ff
    dec bc                                        ; $439b: $0b
    inc bc                                        ; $439c: $03
    ld hl, sp+$0d                                 ; $439d: $f8 $0d
    di                                            ; $439f: $f3
    ld c, $fe                                     ; $43a0: $0e $fe
    ld hl, sp-$02                                 ; $43a2: $f8 $fe
    nop                                           ; $43a4: $00
    cp $02                                        ; $43a5: $fe $02
    ld [bc], a                                    ; $43a7: $02
    nop                                           ; $43a8: $00
    sbc e                                         ; $43a9: $9b
    ld [bc], a                                    ; $43aa: $02
    nop                                           ; $43ab: $00
    dec l                                         ; $43ac: $2d
    nop                                           ; $43ad: $00
    ld e, $0c                                     ; $43ae: $1e $0c
    ld c, l                                       ; $43b0: $4d
    inc b                                         ; $43b1: $04
    stop                                          ; $43b2: $10 $00
    ld d, $00                                     ; $43b4: $16 $00
    xor e                                         ; $43b6: $ab
    ld [bc], a                                    ; $43b7: $02
    ccf                                           ; $43b8: $3f
    jr z, jr_0f8_4418                             ; $43b9: $28 $5d

    inc c                                         ; $43bb: $0c
    inc a                                         ; $43bc: $3c
    ld [$0009], sp                                ; $43bd: $08 $09 $00
    inc hl                                        ; $43c0: $23
    ld bc, $091f                                  ; $43c1: $01 $1f $09
    rla                                           ; $43c4: $17
    ld [bc], a                                    ; $43c5: $02
    ld [bc], a                                    ; $43c6: $02
    and b                                         ; $43c7: $a0
    nop                                           ; $43c8: $00
    ret nz                                        ; $43c9: $c0

    nop                                           ; $43ca: $00
    ld d, b                                       ; $43cb: $50
    nop                                           ; $43cc: $00
    dec h                                         ; $43cd: $25
    nop                                           ; $43ce: $00
    sbc [hl]                                      ; $43cf: $9e
    inc b                                         ; $43d0: $04
    dec l                                         ; $43d1: $2d
    ld [$008a], sp                                ; $43d2: $08 $8a $00
    or [hl]                                       ; $43d5: $b6
    add d                                         ; $43d6: $82
    db $ed                                        ; $43d7: $ed
    ld c, b                                       ; $43d8: $48
    sbc [hl]                                      ; $43d9: $9e
    adc h                                         ; $43da: $8c
    xor l                                         ; $43db: $ad
    ld [$20aa], sp                                ; $43dc: $08 $aa $20
    or h                                          ; $43df: $b4
    nop                                           ; $43e0: $00
    ld hl, sp+$20                                 ; $43e1: $f8 $20
    db $ec                                        ; $43e3: $ec
    ld b, b                                       ; $43e4: $40
    ld d, d                                       ; $43e5: $52
    nop                                           ; $43e6: $00
    ld b, b                                       ; $43e7: $40

jr_0f8_43e8:
    dec bc                                        ; $43e8: $0b
    nop                                           ; $43e9: $00
    add c                                         ; $43ea: $81
    ld bc, $0003                                  ; $43eb: $01 $03 $00
    add e                                         ; $43ee: $83
    ld [bc], a                                    ; $43ef: $02
    nop                                           ; $43f0: $00
    ld bc, $0005                                  ; $43f1: $01 $05 $00
    add c                                         ; $43f4: $81
    ld [bc], a                                    ; $43f5: $02
    add hl, bc                                    ; $43f6: $09
    nop                                           ; $43f7: $00
    rst $38                                       ; $43f8: $ff
    dec bc                                        ; $43f9: $0b
    inc bc                                        ; $43fa: $03
    ld hl, sp+$0d                                 ; $43fb: $f8 $0d
    di                                            ; $43fd: $f3
    ld c, $fa                                     ; $43fe: $0e $fa
    ld hl, sp-$06                                 ; $4400: $f8 $fa
    nop                                           ; $4402: $00
    ld a, [$8602]                                 ; $4403: $fa $02 $86
    dec d                                         ; $4406: $15
    nop                                           ; $4407: $00
    ld [$1300], sp                                ; $4408: $08 $00 $13
    ld [bc], a                                    ; $440b: $02
    ld [bc], a                                    ; $440c: $02
    add hl, de                                    ; $440d: $19
    sub l                                         ; $440e: $95
    dec sp                                        ; $440f: $3b
    ld bc, $1094                                  ; $4410: $01 $94 $10
    dec sp                                        ; $4413: $3b
    add hl, bc                                    ; $4414: $09
    ld h, $04                                     ; $4415: $26 $04
    db $db                                        ; $4417: $db

jr_0f8_4418:
    ld c, c                                       ; $4418: $49
    ld h, e                                       ; $4419: $63
    nop                                           ; $441a: $00
    ld de, $2901                                  ; $441b: $11 $01 $29
    nop                                           ; $441e: $00
    ld [de], a                                    ; $441f: $12
    db $10                                        ; $4420: $10
    jr nc, jr_0f8_4423                            ; $4421: $30 $00

jr_0f8_4423:
    inc b                                         ; $4423: $04
    inc bc                                        ; $4424: $03
    nop                                           ; $4425: $00
    sbc e                                         ; $4426: $9b
    inc b                                         ; $4427: $04
    nop                                           ; $4428: $00
    adc b                                         ; $4429: $88
    nop                                           ; $442a: $00
    ret nz                                        ; $442b: $c0

    ld b, b                                       ; $442c: $40
    sbc h                                         ; $442d: $9c
    ld [$0049], sp                                ; $442e: $08 $49 $00
    rst $38                                       ; $4431: $ff
    ld [de], a                                    ; $4432: $12
    ld c, l                                       ; $4433: $4d
    ld c, b                                       ; $4434: $48
    cp d                                          ; $4435: $ba
    add b                                         ; $4436: $80
    ld e, h                                       ; $4437: $5c
    ld [$00a8], sp                                ; $4438: $08 $a8 $00
    call nz, $8380                                ; $443b: $c4 $80 $83
    add b                                         ; $443e: $80
    ld c, h                                       ; $443f: $4c
    nop                                           ; $4440: $00
    sbc h                                         ; $4441: $9c
    ld [bc], a                                    ; $4442: $02
    ld [$0009], sp                                ; $4443: $08 $09 $00
    add l                                         ; $4446: $85
    ld [bc], a                                    ; $4447: $02
    nop                                           ; $4448: $00
    ld bc, $0200                                  ; $4449: $01 $00 $02
    inc bc                                        ; $444c: $03
    nop                                           ; $444d: $00
    add c                                         ; $444e: $81
    ld [bc], a                                    ; $444f: $02
    inc bc                                        ; $4450: $03
    nop                                           ; $4451: $00
    add c                                         ; $4452: $81
    ld [bc], a                                    ; $4453: $02
    dec c                                         ; $4454: $0d
    nop                                           ; $4455: $00
    rst $38                                       ; $4456: $ff
    dec bc                                        ; $4457: $0b
    inc bc                                        ; $4458: $03
    ld hl, sp+$0d                                 ; $4459: $f8 $0d
    di                                            ; $445b: $f3
    ld c, $f5                                     ; $445c: $0e $f5
    ld sp, hl                                     ; $445e: $f9
    push af                                       ; $445f: $f5
    ld bc, $02f5                                  ; $4460: $01 $f5 $02
    sbc h                                         ; $4463: $9c
    inc b                                         ; $4464: $04
    nop                                           ; $4465: $00
    jr nz, jr_0f8_4468                            ; $4466: $20 $00

jr_0f8_4468:
    add hl, bc                                    ; $4468: $09
    nop                                           ; $4469: $00
    ld c, b                                       ; $446a: $48
    nop                                           ; $446b: $00
    ld bc, $ea00                                  ; $446c: $01 $00 $ea
    jr nz, jr_0f8_44ca                            ; $446f: $20 $59

    add hl, bc                                    ; $4471: $09
    xor [hl]                                      ; $4472: $ae
    nop                                           ; $4473: $00
    dec e                                         ; $4474: $1d
    ld [$008a], sp                                ; $4475: $08 $8a $00
    dec d                                         ; $4478: $15
    nop                                           ; $4479: $00
    ld h, b                                       ; $447a: $60
    nop                                           ; $447b: $00
    add hl, de                                    ; $447c: $19
    nop                                           ; $447d: $00
    inc c                                         ; $447e: $0c
    ld [$0006], sp                                ; $447f: $08 $06 $00
    sbc c                                         ; $4482: $99
    adc b                                         ; $4483: $88
    nop                                           ; $4484: $00
    db $e4                                        ; $4485: $e4
    nop                                           ; $4486: $00
    ret nz                                        ; $4487: $c0

    ld b, b                                       ; $4488: $40
    ld h, [hl]                                    ; $4489: $66
    ld b, b                                       ; $448a: $40
    sub b                                         ; $448b: $90
    nop                                           ; $448c: $00
    ld l, [hl]                                    ; $448d: $6e
    ld c, b                                       ; $448e: $48
    or d                                          ; $448f: $b2
    sub b                                         ; $4490: $90
    ld l, l                                       ; $4491: $6d
    ld c, c                                       ; $4492: $49
    jp $c400                                      ; $4493: $c3 $00 $c4


    ret nz                                        ; $4496: $c0

    ret                                           ; $4497: $c9


    add b                                         ; $4498: $80
    inc h                                         ; $4499: $24
    nop                                           ; $449a: $00
    add h                                         ; $449b: $84
    rrca                                          ; $449c: $0f
    nop                                           ; $449d: $00
    add c                                         ; $449e: $81
    ld bc, $0005                                  ; $449f: $01 $05 $00
    add c                                         ; $44a2: $81
    ld bc, $000f                                  ; $44a3: $01 $0f $00
    rst $38                                       ; $44a6: $ff
    add hl, bc                                    ; $44a7: $09
    ld [bc], a                                    ; $44a8: $02
    ld hl, sp+$0d                                 ; $44a9: $f8 $0d
    di                                            ; $44ab: $f3
    ld c, $f3                                     ; $44ac: $0e $f3
    ld a, [$fff3]                                 ; $44ae: $fa $f3 $ff
    add l                                         ; $44b1: $85
    ld b, $04                                     ; $44b2: $06 $04
    add hl, bc                                    ; $44b4: $09
    nop                                           ; $44b5: $00
    inc h                                         ; $44b6: $24
    ld [bc], a                                    ; $44b7: $02
    nop                                           ; $44b8: $00
    sub a                                         ; $44b9: $97
    add b                                         ; $44ba: $80
    db $ec                                        ; $44bb: $ec
    inc b                                         ; $44bc: $04
    ld e, l                                       ; $44bd: $5d
    ld bc, $040d                                  ; $44be: $01 $0d $04
    ld b, l                                       ; $44c1: $45
    ld bc, $0009                                  ; $44c2: $01 $09 $00
    jr c, jr_0f8_44c7                             ; $44c5: $38 $00

jr_0f8_44c7:
    dec c                                         ; $44c7: $0d
    jr nc, @+$09                                  ; $44c8: $30 $07

jr_0f8_44ca:
    jr jr_0f8_44d6                                ; $44ca: $18 $0a

    dec d                                         ; $44cc: $15
    inc b                                         ; $44cd: $04
    dec de                                        ; $44ce: $1b
    nop                                           ; $44cf: $00
    ld e, $02                                     ; $44d0: $1e $02
    nop                                           ; $44d2: $00
    add d                                         ; $44d3: $82
    ld a, [bc]                                    ; $44d4: $0a
    nop                                           ; $44d5: $00

jr_0f8_44d6:
    ld [bc], a                                    ; $44d6: $02
    inc b                                         ; $44d7: $04
    add e                                         ; $44d8: $83
    ld b, $00                                     ; $44d9: $06 $00
    db $10                                        ; $44db: $10
    ld [bc], a                                    ; $44dc: $02
    nop                                           ; $44dd: $00
    sub e                                         ; $44de: $93
    inc b                                         ; $44df: $04
    inc e                                         ; $44e0: $1c
    nop                                           ; $44e1: $00
    ld a, [bc]                                    ; $44e2: $0a
    nop                                           ; $44e3: $00
    stop                                          ; $44e4: $10 $00
    ld [de], a                                    ; $44e6: $12
    db $10                                        ; $44e7: $10
    ld [de], a                                    ; $44e8: $12
    ld bc, $031c                                  ; $44e9: $01 $1c $03
    ld a, [de]                                    ; $44ec: $1a
    dec b                                         ; $44ed: $05
    inc c                                         ; $44ee: $0c
    inc de                                        ; $44ef: $13
    nop                                           ; $44f0: $00
    ld c, $04                                     ; $44f1: $0e $04
    nop                                           ; $44f3: $00
    rst $38                                       ; $44f4: $ff
    dec bc                                        ; $44f5: $0b
    inc bc                                        ; $44f6: $03
    ld hl, sp+$0d                                 ; $44f7: $f8 $0d
    di                                            ; $44f9: $f3
    ld c, $ef                                     ; $44fa: $0e $ef
    ld a, [$fff3]                                 ; $44fc: $fa $f3 $ff
    rst $38                                       ; $44ff: $ff
    ld a, [$2084]                                 ; $4500: $fa $84 $20
    nop                                           ; $4503: $00
    ld [bc], a                                    ; $4504: $02
    nop                                           ; $4505: $00
    ld [bc], a                                    ; $4506: $02
    ld [$109c], sp                                ; $4507: $08 $9c $10
    add b                                         ; $450a: $80
    ret                                           ; $450b: $c9


    nop                                           ; $450c: $00
    ld [hl+], a                                   ; $450d: $22
    nop                                           ; $450e: $00
    ld c, b                                       ; $450f: $48
    nop                                           ; $4510: $00
    ld [bc], a                                    ; $4511: $02
    nop                                           ; $4512: $00

jr_0f8_4513:
    inc c                                         ; $4513: $0c
    inc b                                         ; $4514: $04
    dec e                                         ; $4515: $1d
    ld bc, $040d                                  ; $4516: $01 $0d $04
    ccf                                           ; $4519: $3f
    ld b, l                                       ; $451a: $45
    rrca                                          ; $451b: $0f
    ld [hl], e                                    ; $451c: $73
    rra                                           ; $451d: $1f
    ld [hl+], a                                   ; $451e: $22
    rrca                                          ; $451f: $0f
    ld [hl-], a                                   ; $4520: $32
    rlca                                          ; $4521: $07
    jr jr_0f8_452e                                ; $4522: $18 $0a

    nop                                           ; $4524: $00
    ld [bc], a                                    ; $4525: $02
    inc b                                         ; $4526: $04
    add e                                         ; $4527: $83
    ld b, $00                                     ; $4528: $06 $00
    db $10                                        ; $452a: $10
    ld [bc], a                                    ; $452b: $02
    nop                                           ; $452c: $00
    sub l                                         ; $452d: $95

jr_0f8_452e:
    inc b                                         ; $452e: $04
    inc e                                         ; $452f: $1c
    nop                                           ; $4530: $00
    ld a, [bc]                                    ; $4531: $0a
    nop                                           ; $4532: $00
    inc e                                         ; $4533: $1c
    ld [bc], a                                    ; $4534: $02
    inc e                                         ; $4535: $1c
    ld [de], a                                    ; $4536: $12
    ld e, $09                                     ; $4537: $1e $09
    inc e                                         ; $4539: $1c
    inc bc                                        ; $453a: $03
    ld a, [de]                                    ; $453b: $1a
    dec b                                         ; $453c: $05
    ld c, h                                       ; $453d: $4c
    or e                                          ; $453e: $b3
    add b                                         ; $453f: $80
    ld l, [hl]                                    ; $4540: $6e
    nop                                           ; $4541: $00
    ret nz                                        ; $4542: $c0

    ld [bc], a                                    ; $4543: $02
    nop                                           ; $4544: $00
    add [hl]                                      ; $4545: $86
    ld [$0010], sp                                ; $4546: $08 $10 $00
    jr jr_0f8_454b                                ; $4549: $18 $00

jr_0f8_454b:
    jr jr_0f8_4567                                ; $454b: $18 $1a

    nop                                           ; $454d: $00
    rst $38                                       ; $454e: $ff
    add hl, bc                                    ; $454f: $09
    ld [bc], a                                    ; $4550: $02
    ld hl, sp+$0d                                 ; $4551: $f8 $0d
    di                                            ; $4553: $f3
    ld c, $f4                                     ; $4554: $0e $f4
    ld sp, hl                                     ; $4556: $f9
    db $f4                                        ; $4557: $f4
    rst $38                                       ; $4558: $ff
    add c                                         ; $4559: $81

jr_0f8_455a:
    nop                                           ; $455a: $00
    ld [bc], a                                    ; $455b: $02
    rlca                                          ; $455c: $07
    sbc c                                         ; $455d: $99
    jr c, @+$41                                   ; $455e: $38 $3f

    ld b, e                                       ; $4560: $43
    ld a, a                                       ; $4561: $7f
    sbc b                                         ; $4562: $98
    ccf                                           ; $4563: $3f
    ld b, d                                       ; $4564: $42
    rra                                           ; $4565: $1f
    ld h, e                                       ; $4566: $63

jr_0f8_4567:
    rra                                           ; $4567: $1f
    ld [hl+], a                                   ; $4568: $22
    rlca                                          ; $4569: $07
    add hl, sp                                    ; $456a: $39
    rrca                                          ; $456b: $0f
    ld de, $1907                                  ; $456c: $11 $07 $19
    inc bc                                        ; $456f: $03
    inc c                                         ; $4570: $0c
    dec b                                         ; $4571: $05
    ld a, [bc]                                    ; $4572: $0a
    ld [bc], a                                    ; $4573: $02
    dec c                                         ; $4574: $0d
    nop                                           ; $4575: $00
    rrca                                          ; $4576: $0f
    dec b                                         ; $4577: $05
    nop                                           ; $4578: $00
    ld [bc], a                                    ; $4579: $02
    jr nz, jr_0f8_4513                            ; $457a: $20 $97

    jr jr_0f8_45b6                                ; $457c: $18 $38

    inc b                                         ; $457e: $04
    jr c, jr_0f8_4585                             ; $457f: $38 $04

    inc a                                         ; $4581: $3c
    ld [bc], a                                    ; $4582: $02
    inc a                                         ; $4583: $3c
    ld a, [bc]                                    ; $4584: $0a

jr_0f8_4585:
    inc a                                         ; $4585: $3c
    ld [hl+], a                                   ; $4586: $22
    inc a                                         ; $4587: $3c
    ld [hl-], a                                   ; $4588: $32
    ld a, $09                                     ; $4589: $3e $09
    inc a                                         ; $458b: $3c
    inc bc                                        ; $458c: $03
    ld a, [hl-]                                   ; $458d: $3a
    dec b                                         ; $458e: $05
    inc c                                         ; $458f: $0c
    inc sp                                        ; $4590: $33
    nop                                           ; $4591: $00
    ld l, $06                                     ; $4592: $2e $06
    nop                                           ; $4594: $00
    rst $38                                       ; $4595: $ff
    add hl, bc                                    ; $4596: $09
    ld [bc], a                                    ; $4597: $02
    ld hl, sp+$0d                                 ; $4598: $f8 $0d
    di                                            ; $459a: $f3
    ld c, $f3                                     ; $459b: $0e $f3
    ld a, [$00f3]                                 ; $459d: $fa $f3 $00
    add c                                         ; $45a0: $81

jr_0f8_45a1:
    nop                                           ; $45a1: $00
    ld [bc], a                                    ; $45a2: $02
    rlca                                          ; $45a3: $07
    sbc c                                         ; $45a4: $99
    jr c, jr_0f8_45e6                             ; $45a5: $38 $3f

    ld b, e                                       ; $45a7: $43
    ld a, a                                       ; $45a8: $7f
    sbc b                                         ; $45a9: $98
    ccf                                           ; $45aa: $3f
    ld b, d                                       ; $45ab: $42
    rra                                           ; $45ac: $1f
    ld h, e                                       ; $45ad: $63
    rra                                           ; $45ae: $1f
    ld [hl+], a                                   ; $45af: $22
    rlca                                          ; $45b0: $07
    add hl, sp                                    ; $45b1: $39
    rrca                                          ; $45b2: $0f
    ld de, $1907                                  ; $45b3: $11 $07 $19

jr_0f8_45b6:
    inc bc                                        ; $45b6: $03
    inc c                                         ; $45b7: $0c
    dec b                                         ; $45b8: $05
    ld a, [bc]                                    ; $45b9: $0a
    ld [bc], a                                    ; $45ba: $02
    dec c                                         ; $45bb: $0d
    nop                                           ; $45bc: $00
    rrca                                          ; $45bd: $0f
    dec b                                         ; $45be: $05
    nop                                           ; $45bf: $00
    ld [bc], a                                    ; $45c0: $02
    jr nz, jr_0f8_455a                            ; $45c1: $20 $97

    jr jr_0f8_45fd                                ; $45c3: $18 $38

    inc b                                         ; $45c5: $04
    jr c, jr_0f8_45cc                             ; $45c6: $38 $04

    inc a                                         ; $45c8: $3c
    ld [bc], a                                    ; $45c9: $02
    inc a                                         ; $45ca: $3c
    ld a, [bc]                                    ; $45cb: $0a

jr_0f8_45cc:
    inc a                                         ; $45cc: $3c
    ld [hl+], a                                   ; $45cd: $22
    inc a                                         ; $45ce: $3c
    ld [hl-], a                                   ; $45cf: $32
    ld a, $09                                     ; $45d0: $3e $09
    inc a                                         ; $45d2: $3c
    inc bc                                        ; $45d3: $03
    ld a, [hl-]                                   ; $45d4: $3a
    dec b                                         ; $45d5: $05
    inc c                                         ; $45d6: $0c
    inc sp                                        ; $45d7: $33
    nop                                           ; $45d8: $00
    ld l, $06                                     ; $45d9: $2e $06
    nop                                           ; $45db: $00
    rst $38                                       ; $45dc: $ff
    add hl, bc                                    ; $45dd: $09
    ld [bc], a                                    ; $45de: $02
    ld hl, sp+$0d                                 ; $45df: $f8 $0d
    di                                            ; $45e1: $f3
    ld c, $f4                                     ; $45e2: $0e $f4
    ei                                            ; $45e4: $fb
    db $f4                                        ; $45e5: $f4

jr_0f8_45e6:
    ld bc, $0081                                  ; $45e6: $01 $81 $00
    ld [bc], a                                    ; $45e9: $02
    rlca                                          ; $45ea: $07
    sbc c                                         ; $45eb: $99
    jr c, @+$41                                   ; $45ec: $38 $3f

    ld b, e                                       ; $45ee: $43
    ld a, a                                       ; $45ef: $7f
    sbc b                                         ; $45f0: $98
    ccf                                           ; $45f1: $3f
    ld b, d                                       ; $45f2: $42
    rra                                           ; $45f3: $1f
    ld h, e                                       ; $45f4: $63
    rra                                           ; $45f5: $1f
    ld [hl+], a                                   ; $45f6: $22
    rlca                                          ; $45f7: $07
    add hl, sp                                    ; $45f8: $39
    rrca                                          ; $45f9: $0f
    ld de, $1907                                  ; $45fa: $11 $07 $19

jr_0f8_45fd:
    inc bc                                        ; $45fd: $03
    inc c                                         ; $45fe: $0c
    dec b                                         ; $45ff: $05
    ld a, [bc]                                    ; $4600: $0a
    ld [bc], a                                    ; $4601: $02
    dec c                                         ; $4602: $0d
    nop                                           ; $4603: $00
    rrca                                          ; $4604: $0f
    dec b                                         ; $4605: $05
    nop                                           ; $4606: $00
    ld [bc], a                                    ; $4607: $02
    jr nz, jr_0f8_45a1                            ; $4608: $20 $97

    jr jr_0f8_4644                                ; $460a: $18 $38

    inc b                                         ; $460c: $04
    jr c, jr_0f8_4613                             ; $460d: $38 $04

    inc a                                         ; $460f: $3c
    ld [bc], a                                    ; $4610: $02
    inc a                                         ; $4611: $3c
    ld a, [bc]                                    ; $4612: $0a

jr_0f8_4613:
    inc a                                         ; $4613: $3c
    ld [hl+], a                                   ; $4614: $22
    inc a                                         ; $4615: $3c
    ld [hl-], a                                   ; $4616: $32
    ld a, $09                                     ; $4617: $3e $09
    inc a                                         ; $4619: $3c
    inc bc                                        ; $461a: $03
    ld a, [hl-]                                   ; $461b: $3a
    dec b                                         ; $461c: $05
    inc c                                         ; $461d: $0c
    inc sp                                        ; $461e: $33
    nop                                           ; $461f: $00
    ld l, $06                                     ; $4620: $2e $06
    nop                                           ; $4622: $00
    rst $38                                       ; $4623: $ff
    add hl, bc                                    ; $4624: $09
    ld [bc], a                                    ; $4625: $02
    ld hl, sp+$0d                                 ; $4626: $f8 $0d
    di                                            ; $4628: $f3
    ld c, $f5                                     ; $4629: $0e $f5
    ld a, [$00f5]                                 ; $462b: $fa $f5 $00
    add c                                         ; $462e: $81
    nop                                           ; $462f: $00
    ld [bc], a                                    ; $4630: $02
    rlca                                          ; $4631: $07
    sbc c                                         ; $4632: $99
    jr c, jr_0f8_4674                             ; $4633: $38 $3f

    ld b, e                                       ; $4635: $43
    ld a, a                                       ; $4636: $7f
    sbc b                                         ; $4637: $98
    ccf                                           ; $4638: $3f
    ld b, d                                       ; $4639: $42
    rra                                           ; $463a: $1f
    ld h, e                                       ; $463b: $63
    rra                                           ; $463c: $1f
    ld [hl+], a                                   ; $463d: $22
    rlca                                          ; $463e: $07
    add hl, sp                                    ; $463f: $39
    rrca                                          ; $4640: $0f
    ld de, $1907                                  ; $4641: $11 $07 $19

jr_0f8_4644:
    inc bc                                        ; $4644: $03
    inc c                                         ; $4645: $0c
    dec b                                         ; $4646: $05
    ld a, [bc]                                    ; $4647: $0a
    ld [bc], a                                    ; $4648: $02
    dec c                                         ; $4649: $0d
    nop                                           ; $464a: $00
    rrca                                          ; $464b: $0f
    dec b                                         ; $464c: $05
    nop                                           ; $464d: $00
    ld [bc], a                                    ; $464e: $02
    jr nz, @-$67                                  ; $464f: $20 $97

    jr jr_0f8_468b                                ; $4651: $18 $38

    inc b                                         ; $4653: $04
    jr c, jr_0f8_465a                             ; $4654: $38 $04

    inc a                                         ; $4656: $3c
    ld [bc], a                                    ; $4657: $02
    inc a                                         ; $4658: $3c
    ld a, [bc]                                    ; $4659: $0a

jr_0f8_465a:
    inc a                                         ; $465a: $3c
    ld [hl+], a                                   ; $465b: $22
    inc a                                         ; $465c: $3c
    ld [hl-], a                                   ; $465d: $32
    ld a, $09                                     ; $465e: $3e $09
    inc a                                         ; $4660: $3c
    inc bc                                        ; $4661: $03
    ld a, [hl-]                                   ; $4662: $3a
    dec b                                         ; $4663: $05
    inc c                                         ; $4664: $0c
    inc sp                                        ; $4665: $33
    nop                                           ; $4666: $00
    ld l, $06                                     ; $4667: $2e $06
    nop                                           ; $4669: $00
    rst $38                                       ; $466a: $ff
    add hl, bc                                    ; $466b: $09
    ld [bc], a                                    ; $466c: $02
    rst $30                                       ; $466d: $f7
    ld [$02f6], sp                                ; $466e: $08 $f6 $02
    db $fc                                        ; $4671: $fc
    db $fc                                        ; $4672: $fc
    db $fc                                        ; $4673: $fc

jr_0f8_4674:
    nop                                           ; $4674: $00
    adc d                                         ; $4675: $8a
    nop                                           ; $4676: $00
    ld [bc], a                                    ; $4677: $02
    inc bc                                        ; $4678: $03
    inc c                                         ; $4679: $0c
    ld d, a                                       ; $467a: $57
    ld l, b                                       ; $467b: $68
    push hl                                       ; $467c: $e5
    sbc e                                         ; $467d: $9b
    db $eb                                        ; $467e: $eb
    rst $38                                       ; $467f: $ff
    add hl, de                                    ; $4680: $19
    nop                                           ; $4681: $00
    add h                                         ; $4682: $84
    ld [$0a04], sp                                ; $4683: $08 $04 $0a
    inc c                                         ; $4686: $0c
    ld [bc], a                                    ; $4687: $02
    rlca                                          ; $4688: $07
    add c                                         ; $4689: $81
    rrca                                          ; $468a: $0f

jr_0f8_468b:
    ld d, $00                                     ; $468b: $16 $00
    rst $38                                       ; $468d: $ff
    dec bc                                        ; $468e: $0b
    inc bc                                        ; $468f: $03
    rst $30                                       ; $4690: $f7
    ld [$02f6], sp                                ; $4691: $08 $f6 $02
    ei                                            ; $4694: $fb
    ld sp, hl                                     ; $4695: $f9
    ei                                            ; $4696: $fb
    ld bc, $02fb                                  ; $4697: $01 $fb $02
    adc h                                         ; $469a: $8c
    inc bc                                        ; $469b: $03
    nop                                           ; $469c: $00
    ld [bc], a                                    ; $469d: $02
    dec c                                         ; $469e: $0d
    dec e                                         ; $469f: $1d
    inc hl                                        ; $46a0: $23
    ld a, a                                       ; $46a1: $7f
    ld b, b                                       ; $46a2: $40
    call z, Call_0f8_67b7                         ; $46a3: $cc $b7 $67
    ld a, a                                       ; $46a6: $7f
    inc d                                         ; $46a7: $14
    nop                                           ; $46a8: $00
    adc h                                         ; $46a9: $8c
    ld b, b                                       ; $46aa: $40
    nop                                           ; $46ab: $00
    ld e, b                                       ; $46ac: $58
    ldh [$b8], a                                  ; $46ad: $e0 $b8
    add $5f                                       ; $46af: $c6 $5f
    and l                                         ; $46b1: $a5
    or $2b                                        ; $46b2: $f6 $2b
    rst $08                                       ; $46b4: $cf
    ld a, a                                       ; $46b5: $7f
    inc e                                         ; $46b6: $1c
    nop                                           ; $46b7: $00
    ld [bc], a                                    ; $46b8: $02
    ld bc, $0016                                  ; $46b9: $01 $16 $00
    rst $38                                       ; $46bc: $ff
    dec bc                                        ; $46bd: $0b
    inc bc                                        ; $46be: $03
    rst $30                                       ; $46bf: $f7
    ld [$02f6], sp                                ; $46c0: $08 $f6 $02
    ld a, [$faf7]                                 ; $46c3: $fa $f7 $fa
    rst $38                                       ; $46c6: $ff
    ld a, [$8e04]                                 ; $46c7: $fa $04 $8e
    nop                                           ; $46ca: $00
    ld [bc], a                                    ; $46cb: $02
    inc bc                                        ; $46cc: $03
    inc c                                         ; $46cd: $0c
    ld a, [bc]                                    ; $46ce: $0a
    dec d                                         ; $46cf: $15
    dec a                                         ; $46d0: $3d
    ld b, [hl]                                    ; $46d1: $46
    ld d, c                                       ; $46d2: $51
    ld l, [hl]                                    ; $46d3: $6e
    sbc $bb                                       ; $46d4: $de $bb
    ld l, a                                       ; $46d6: $6f
    ld a, a                                       ; $46d7: $7f
    inc de                                        ; $46d8: $13
    nop                                           ; $46d9: $00
    adc l                                         ; $46da: $8d
    jr nz, @+$76                                  ; $46db: $20 $74

    ld [bc], a                                    ; $46dd: $02
    daa                                           ; $46de: $27
    call c, Call_000_3ed9                         ; $46df: $dc $d9 $3e
    sub l                                         ; $46e2: $95
    ld a, d                                       ; $46e3: $7a
    rst $08                                       ; $46e4: $cf
    ld [hl], d                                    ; $46e5: $72
    xor $ff                                       ; $46e6: $ee $ff
    rla                                           ; $46e8: $17
    nop                                           ; $46e9: $00
    add d                                         ; $46ea: $82
    db $10                                        ; $46eb: $10
    jr jr_0f8_46f0                                ; $46ec: $18 $02

    inc b                                         ; $46ee: $04
    add l                                         ; $46ef: $85

jr_0f8_46f0:
    inc e                                         ; $46f0: $1c
    dec d                                         ; $46f1: $15
    rrca                                          ; $46f2: $0f
    ld c, $1e                                     ; $46f3: $0e $1e
    ld [de], a                                    ; $46f5: $12
    nop                                           ; $46f6: $00
    rst $38                                       ; $46f7: $ff
    dec c                                         ; $46f8: $0d
    inc b                                         ; $46f9: $04
    rst $30                                       ; $46fa: $f7
    ld [$02f6], sp                                ; $46fb: $08 $f6 $02
    ld hl, sp-$0c                                 ; $46fe: $f8 $f4
    ld hl, sp-$04                                 ; $4700: $f8 $fc
    ld hl, sp+$04                                 ; $4702: $f8 $04
    ld hl, sp+$05                                 ; $4704: $f8 $05
    inc bc                                        ; $4706: $03
    nop                                           ; $4707: $00
    adc a                                         ; $4708: $8f
    ld [bc], a                                    ; $4709: $02
    dec b                                         ; $470a: $05
    ld a, [bc]                                    ; $470b: $0a
    ld d, $19                                     ; $470c: $16 $19
    rra                                           ; $470e: $1f
    jr nc, @+$20                                  ; $470f: $30 $1e

    ld h, e                                       ; $4711: $63
    ld a, e                                       ; $4712: $7b
    add $e0                                       ; $4713: $c6 $e0
    rst $38                                       ; $4715: $ff
    ld [hl], l                                    ; $4716: $75
    ld a, a                                       ; $4717: $7f
    ld c, $00                                     ; $4718: $0e $00
    sub d                                         ; $471a: $92
    inc b                                         ; $471b: $04
    ld [bc], a                                    ; $471c: $02
    ld d, $49                                     ; $471d: $16 $49
    ld b, e                                       ; $471f: $43
    rst $18                                       ; $4720: $df
    db $fd                                        ; $4721: $fd
    jp nc, Jump_0f8_73ae                          ; $4722: $d2 $ae $73

    ld e, a                                       ; $4725: $5f
    and d                                         ; $4726: $a2
    ld e, l                                       ; $4727: $5d
    and [hl]                                      ; $4728: $a6

jr_0f8_4729:
    cp e                                          ; $4729: $bb
    call z, $ffcf                                 ; $472a: $cc $cf $ff
    ld de, $8f00                                  ; $472d: $11 $00 $8f
    sub b                                         ; $4730: $90
    cp b                                          ; $4731: $b8
    ld h, b                                       ; $4732: $60
    call c, $e43c                                 ; $4733: $dc $3c $e4
    ld a, [de]                                    ; $4736: $1a
    ld l, [hl]                                    ; $4737: $6e
    sbc h                                         ; $4738: $9c
    ld [hl], a                                    ; $4739: $77
    call $f74b                                    ; $473a: $cd $4b $f7
    rst $10                                       ; $473d: $d7
    rst $38                                       ; $473e: $ff
    dec de                                        ; $473f: $1b
    nop                                           ; $4740: $00
    add e                                         ; $4741: $83

jr_0f8_4742:
    ld bc, $0100                                  ; $4742: $01 $00 $01
    stop                                          ; $4745: $10 $00
    rst $38                                       ; $4747: $ff
    dec c                                         ; $4748: $0d
    inc b                                         ; $4749: $04
    rst $30                                       ; $474a: $f7
    ld [$02f6], sp                                ; $474b: $08 $f6 $02
    or $f3                                        ; $474e: $f6 $f3
    or $fb                                        ; $4750: $f6 $fb
    or $03                                        ; $4752: $f6 $03
    or $06                                        ; $4754: $f6 $06
    inc bc                                        ; $4756: $03
    nop                                           ; $4757: $00
    sub e                                         ; $4758: $93
    ld bc, $0403                                  ; $4759: $01 $03 $04
    add hl, de                                    ; $475c: $19
    ld e, $1b                                     ; $475d: $1e $1b
    inc [hl]                                      ; $475f: $34
    dec sp                                        ; $4760: $3b
    ld h, h                                       ; $4761: $64
    dec e                                         ; $4762: $1d
    ld [hl], e                                    ; $4763: $73
    ld e, a                                       ; $4764: $5f
    db $e3                                        ; $4765: $e3
    ld l, c                                       ; $4766: $69
    rst $10                                       ; $4767: $d7
    db $ed                                        ; $4768: $ed
    rst $38                                       ; $4769: $ff
    ld [hl], d                                    ; $476a: $72
    ld a, e                                       ; $476b: $7b
    ld a, [bc]                                    ; $476c: $0a
    nop                                           ; $476d: $00
    sub [hl]                                      ; $476e: $96
    ld [bc], a                                    ; $476f: $02
    ld bc, $240b                                  ; $4770: $01 $0b $24
    ld hl, $7cef                                  ; $4773: $21 $ef $7c
    db $eb                                        ; $4776: $eb
    rst $10                                       ; $4777: $d7
    jr c, jr_0f8_4729                             ; $4778: $38 $af

    ld [hl], b                                    ; $477a: $70
    reti                                          ; $477b: $d9


    ld h, $7b                                     ; $477c: $26 $7b
    add h                                         ; $477e: $84
    ld h, $db                                     ; $477f: $26 $db
    db $dd                                        ; $4781: $dd
    or $f7                                        ; $4782: $f6 $f7
    rst $38                                       ; $4784: $ff
    dec c                                         ; $4785: $0d
    nop                                           ; $4786: $00
    sub c                                         ; $4787: $91
    ret z                                         ; $4788: $c8

    jp nc, $97b4                                  ; $4789: $d2 $b4 $97

jr_0f8_478c:
    ld l, l                                       ; $478c: $6d
    db $ed                                        ; $478d: $ed
    ld d, $7b                                     ; $478e: $16 $7b
    add a                                         ; $4790: $87
    ld [hl], l                                    ; $4791: $75
    res 7, c                                      ; $4792: $cb $b9
    ld l, a                                       ; $4794: $6f
    or $39                                        ; $4795: $f6 $39
    cp b                                          ; $4797: $b8
    ld a, a                                       ; $4798: $7f
    ld [bc], a                                    ; $4799: $02
    rst $30                                       ; $479a: $f7
    inc de                                        ; $479b: $13
    nop                                           ; $479c: $00
    ld [bc], a                                    ; $479d: $02
    inc b                                         ; $479e: $04
    adc c                                         ; $479f: $89
    ld [bc], a                                    ; $47a0: $02
    nop                                           ; $47a1: $00
    ld b, $04                                     ; $47a2: $06 $04
    ld [bc], a                                    ; $47a4: $02
    ld b, $03                                     ; $47a5: $06 $03
    ld b, $07                                     ; $47a7: $06 $07
    ld [bc], a                                    ; $47a9: $02
    ld b, $0a                                     ; $47aa: $06 $0a
    nop                                           ; $47ac: $00
    rst $38                                       ; $47ad: $ff
    dec bc                                        ; $47ae: $0b
    inc bc                                        ; $47af: $03
    rst $30                                       ; $47b0: $f7
    ld [$02f6], sp                                ; $47b1: $08 $f6 $02
    rst $30                                       ; $47b4: $f7
    rst $30                                       ; $47b5: $f7
    rst $30                                       ; $47b6: $f7
    rst $38                                       ; $47b7: $ff
    rst $30                                       ; $47b8: $f7
    ld [bc], a                                    ; $47b9: $02
    inc bc                                        ; $47ba: $03
    nop                                           ; $47bb: $00
    adc l                                         ; $47bc: $8d
    db $10                                        ; $47bd: $10
    jr jr_0f8_47c2                                ; $47be: $18 $02

    jr nc, jr_0f8_4742                            ; $47c0: $30 $80

jr_0f8_47c2:
    inc c                                         ; $47c2: $0c
    nop                                           ; $47c3: $00
    add hl, de                                    ; $47c4: $19
    inc h                                         ; $47c5: $24
    ld a, [hl+]                                   ; $47c6: $2a
    add [hl]                                      ; $47c7: $86
    ldh [$f8], a                                  ; $47c8: $e0 $f8
    ld [bc], a                                    ; $47ca: $02
    ld b, b                                       ; $47cb: $40
    rrca                                          ; $47cc: $0f
    nop                                           ; $47cd: $00
    adc a                                         ; $47ce: $8f
    ld b, b                                       ; $47cf: $40
    ret nz                                        ; $47d0: $c0

    add hl, bc                                    ; $47d1: $09
    ld b, e                                       ; $47d2: $43
    add sp, $00                                   ; $47d3: $e8 $00
    add hl, bc                                    ; $47d5: $09
    and d                                         ; $47d6: $a2
    ld d, h                                       ; $47d7: $54
    jp nz, Jump_0f8_4a25                          ; $47d8: $c2 $25 $4a

    inc c                                         ; $47db: $0c
    nop                                           ; $47dc: $00
    inc bc                                        ; $47dd: $03
    ld d, $00                                     ; $47de: $16 $00
    add d                                         ; $47e0: $82
    inc b                                         ; $47e1: $04
    ld bc, $0004                                  ; $47e2: $01 $04 $00
    add d                                         ; $47e5: $82
    inc b                                         ; $47e6: $04
    ld bc, $0702                                  ; $47e7: $01 $02 $07
    ld [bc], a                                    ; $47ea: $02
    ld [bc], a                                    ; $47eb: $02
    ld c, $00                                     ; $47ec: $0e $00
    rst $38                                       ; $47ee: $ff
    dec bc                                        ; $47ef: $0b
    inc bc                                        ; $47f0: $03
    rst $30                                       ; $47f1: $f7
    ld [$02f6], sp                                ; $47f2: $08 $f6 $02
    db $f4                                        ; $47f5: $f4
    push af                                       ; $47f6: $f5
    db $f4                                        ; $47f7: $f4
    db $fd                                        ; $47f8: $fd
    db $f4                                        ; $47f9: $f4
    inc b                                         ; $47fa: $04
    inc bc                                        ; $47fb: $03
    nop                                           ; $47fc: $00
    add [hl]                                      ; $47fd: $86
    ld [$010c], sp                                ; $47fe: $08 $0c $01
    db $10                                        ; $4801: $10
    ld b, b                                       ; $4802: $40
    ld b, $02                                     ; $4803: $06 $02
    nop                                           ; $4805: $00
    add a                                         ; $4806: $87
    ld [bc], a                                    ; $4807: $02
    add hl, de                                    ; $4808: $19
    inc hl                                        ; $4809: $23
    jr z, jr_0f8_478c                             ; $480a: $28 $80

    ldh [$f0], a                                  ; $480c: $e0 $f0
    ld [bc], a                                    ; $480e: $02
    ld b, b                                       ; $480f: $40
    dec c                                         ; $4810: $0d
    nop                                           ; $4811: $00
    adc l                                         ; $4812: $8d
    db $10                                        ; $4813: $10
    ld d, c                                       ; $4814: $51
    nop                                           ; $4815: $00
    db $10                                        ; $4816: $10
    ld d, h                                       ; $4817: $54
    nop                                           ; $4818: $00
    ld bc, $5204                                  ; $4819: $01 $04 $52
    ret nz                                        ; $481c: $c0

    inc b                                         ; $481d: $04
    ld de, $1501                                  ; $481e: $11 $01 $15
    nop                                           ; $4821: $00
    ld [bc], a                                    ; $4822: $02
    db $10                                        ; $4823: $10
    add l                                         ; $4824: $85
    nop                                           ; $4825: $00
    ld [$2012], sp                                ; $4826: $08 $12 $20
    ld b, b                                       ; $4829: $40
    ld [bc], a                                    ; $482a: $02
    nop                                           ; $482b: $00
    add [hl]                                      ; $482c: $86
    jr nc, jr_0f8_4837                            ; $482d: $30 $08

    inc d                                         ; $482f: $14
    ld hl, $0f07                                  ; $4830: $21 $07 $0f
    ld [bc], a                                    ; $4833: $02
    ld [bc], a                                    ; $4834: $02
    inc c                                         ; $4835: $0c
    nop                                           ; $4836: $00

jr_0f8_4837:
    rst $38                                       ; $4837: $ff
    dec bc                                        ; $4838: $0b
    inc bc                                        ; $4839: $03
    rst $30                                       ; $483a: $f7
    ld [$02f6], sp                                ; $483b: $08 $f6 $02
    db $f4                                        ; $483e: $f4
    db $f4                                        ; $483f: $f4
    db $f4                                        ; $4840: $f4
    db $fd                                        ; $4841: $fd
    db $f4                                        ; $4842: $f4
    dec b                                         ; $4843: $05
    add hl, bc                                    ; $4844: $09
    nop                                           ; $4845: $00
    adc d                                         ; $4846: $8a
    ld [$010c], sp                                ; $4847: $08 $0c $01
    ld d, $40                                     ; $484a: $16 $40
    nop                                           ; $484c: $00
    ld [bc], a                                    ; $484d: $02
    add hl, de                                    ; $484e: $19
    inc bc                                        ; $484f: $03
    ld [$2002], sp                                ; $4850: $08 $02 $20
    add c                                         ; $4853: $81
    sub b                                         ; $4854: $90
    ld [bc], a                                    ; $4855: $02
    ldh [rSC], a                                  ; $4856: $e0 $02
    ld b, b                                       ; $4858: $40
    rlca                                          ; $4859: $07
    nop                                           ; $485a: $00
    ld [bc], a                                    ; $485b: $02
    jr nz, @+$05                                  ; $485c: $20 $03

    nop                                           ; $485e: $00
    ld [bc], a                                    ; $485f: $02
    ld [$8088], sp                                ; $4860: $08 $88 $80
    ld [bc], a                                    ; $4863: $02
    nop                                           ; $4864: $00
    add b                                         ; $4865: $80
    ld [bc], a                                    ; $4866: $02
    and c                                         ; $4867: $a1
    adc b                                         ; $4868: $88
    ld [bc], a                                    ; $4869: $02
    jr jr_0f8_486c                                ; $486a: $18 $00

jr_0f8_486c:
    add c                                         ; $486c: $81
    add b                                         ; $486d: $80
    ld [bc], a                                    ; $486e: $02
    ld [$008b], sp                                ; $486f: $08 $8b $00
    inc b                                         ; $4872: $04
    adc c                                         ; $4873: $89
    jr nz, @+$42                                  ; $4874: $20 $40

    or b                                          ; $4876: $b0
    adc b                                         ; $4877: $88
    db $10                                        ; $4878: $10
    jr nz, jr_0f8_487f                            ; $4879: $20 $04

    add hl, bc                                    ; $487b: $09
    ld [bc], a                                    ; $487c: $02
    rlca                                          ; $487d: $07
    ld [bc], a                                    ; $487e: $02

jr_0f8_487f:
    ld [bc], a                                    ; $487f: $02

Jump_0f8_4880:
    ld b, $00                                     ; $4880: $06 $00
    rst $38                                       ; $4882: $ff
    rlca                                          ; $4883: $07
    ld bc, $08f7                                  ; $4884: $01 $f7 $08
    or $02                                        ; $4887: $f6 $02
    ld hl, sp-$06                                 ; $4889: $f8 $fa
    ld [bc], a                                    ; $488b: $02
    ld [bc], a                                    ; $488c: $02
    adc b                                         ; $488d: $88
    ld b, $05                                     ; $488e: $06 $05
    inc bc                                        ; $4890: $03
    inc b                                         ; $4891: $04
    inc bc                                        ; $4892: $03
    inc b                                         ; $4893: $04
    nop                                           ; $4894: $00
    ld [bc], a                                    ; $4895: $02
    ld d, $00                                     ; $4896: $16 $00
    rst $38                                       ; $4898: $ff
    rlca                                          ; $4899: $07
    ld bc, $08f7                                  ; $489a: $01 $f7 $08
    or $02                                        ; $489d: $f6 $02
    ld hl, sp-$06                                 ; $489f: $f8 $fa
    ld [bc], a                                    ; $48a1: $02
    ld [bc], a                                    ; $48a2: $02
    adc b                                         ; $48a3: $88
    inc bc                                        ; $48a4: $03
    dec b                                         ; $48a5: $05
    rlca                                          ; $48a6: $07
    nop                                           ; $48a7: $00
    ld [bc], a                                    ; $48a8: $02
    dec b                                         ; $48a9: $05
    nop                                           ; $48aa: $00
    ld [bc], a                                    ; $48ab: $02
    ld d, $00                                     ; $48ac: $16 $00
    rst $38                                       ; $48ae: $ff
    rlca                                          ; $48af: $07
    ld bc, $08f7                                  ; $48b0: $01 $f7 $08
    or $02                                        ; $48b3: $f6 $02
    ld hl, sp-$06                                 ; $48b5: $f8 $fa
    ld [bc], a                                    ; $48b7: $02
    ld [bc], a                                    ; $48b8: $02
    adc b                                         ; $48b9: $88
    ld b, $05                                     ; $48ba: $06 $05
    rlca                                          ; $48bc: $07
    ld bc, $0106                                  ; $48bd: $01 $06 $01
    nop                                           ; $48c0: $00
    ld [bc], a                                    ; $48c1: $02
    ld d, $00                                     ; $48c2: $16 $00
    rst $38                                       ; $48c4: $ff
    add hl, bc                                    ; $48c5: $09
    ld [bc], a                                    ; $48c6: $02
    ld hl, sp+$04                                 ; $48c7: $f8 $04
    push af                                       ; $48c9: $f5
    ld bc, $fcfc                                  ; $48ca: $01 $fc $fc
    db $fc                                        ; $48cd: $fc
    db $fd                                        ; $48ce: $fd
    add a                                         ; $48cf: $87
    inc e                                         ; $48d0: $1c
    nop                                           ; $48d1: $00
    ld [hl], a                                    ; $48d2: $77
    ld [$3ed9], sp                                ; $48d3: $08 $d9 $3e
    xor d                                         ; $48d6: $aa
    ld [bc], a                                    ; $48d7: $02
    ld a, a                                       ; $48d8: $7f
    dec de                                        ; $48d9: $1b
    nop                                           ; $48da: $00
    add e                                         ; $48db: $83
    ld bc, $0100                                  ; $48dc: $01 $00 $01
    add hl, de                                    ; $48df: $19
    nop                                           ; $48e0: $00
    rst $38                                       ; $48e1: $ff
    add hl, bc                                    ; $48e2: $09
    ld [bc], a                                    ; $48e3: $02
    ld hl, sp+$04                                 ; $48e4: $f8 $04
    push af                                       ; $48e6: $f5
    ld bc, $f9f8                                  ; $48e7: $01 $f8 $f9
    ld hl, sp+$00                                 ; $48ea: $f8 $00
    sub c                                         ; $48ec: $91
    inc bc                                        ; $48ed: $03
    nop                                           ; $48ee: $00
    rrca                                          ; $48ef: $0f
    nop                                           ; $48f0: $00
    ld a, [hl-]                                   ; $48f1: $3a
    dec b                                         ; $48f2: $05
    ld [hl], l                                    ; $48f3: $75
    dec bc                                        ; $48f4: $0b
    ld h, c                                       ; $48f5: $61
    rra                                           ; $48f6: $1f
    rst $10                                       ; $48f7: $d7
    cpl                                           ; $48f8: $2f
    adc c                                         ; $48f9: $89
    ld a, a                                       ; $48fa: $7f
    jp nc, Jump_0f8_7f2d                          ; $48fb: $d2 $2d $7f

    rrca                                          ; $48fe: $0f
    nop                                           ; $48ff: $00
    sub c                                         ; $4900: $91
    ld b, b                                       ; $4901: $40
    nop                                           ; $4902: $00
    ld [hl], b                                    ; $4903: $70
    nop                                           ; $4904: $00
    ld e, h                                       ; $4905: $5c
    jr nz, jr_0f8_4916                            ; $4906: $20 $0e

    ld [hl], b                                    ; $4908: $70
    ld h, $78                                     ; $4909: $26 $78
    ld c, e                                       ; $490b: $4b
    ld [hl], h                                    ; $490c: $74
    dec h                                         ; $490d: $25
    ld a, d                                       ; $490e: $7a
    dec bc                                        ; $490f: $0b
    ld [hl], h                                    ; $4910: $74
    ld a, [hl]                                    ; $4911: $7e
    rrca                                          ; $4912: $0f
    nop                                           ; $4913: $00
    rst $38                                       ; $4914: $ff
    dec bc                                        ; $4915: $0b

jr_0f8_4916:
    inc bc                                        ; $4916: $03
    ld hl, sp+$04                                 ; $4917: $f8 $04
    push af                                       ; $4919: $f5
    ld bc, $f5f3                                  ; $491a: $01 $f3 $f5
    di                                            ; $491d: $f3
    db $fd                                        ; $491e: $fd
    di                                            ; $491f: $f3
    inc b                                         ; $4920: $04
    ld [bc], a                                    ; $4921: $02
    nop                                           ; $4922: $00
    sbc c                                         ; $4923: $99
    inc bc                                        ; $4924: $03
    nop                                           ; $4925: $00
    ld c, $01                                     ; $4926: $0e $01
    dec e                                         ; $4928: $1d
    ld [bc], a                                    ; $4929: $02
    jr c, @+$09                                   ; $492a: $38 $07

    ld [hl], b                                    ; $492c: $70
    rrca                                          ; $492d: $0f
    ld h, d                                       ; $492e: $62
    rra                                           ; $492f: $1f
    pop de                                        ; $4930: $d1
    cpl                                           ; $4931: $2f
    ldh [$1f], a                                  ; $4932: $e0 $1f
    db $d3                                        ; $4934: $d3
    cpl                                           ; $4935: $2f
    db $e4                                        ; $4936: $e4
    rra                                           ; $4937: $1f
    ldh a, [rIF]                                  ; $4938: $f0 $0f
    ld a, d                                       ; $493a: $7a
    dec b                                         ; $493b: $05
    rra                                           ; $493c: $1f
    dec b                                         ; $493d: $05
    nop                                           ; $493e: $00
    sbc e                                         ; $493f: $9b
    cp $00                                        ; $4940: $fe $00
    rst $38                                       ; $4942: $ff
    nop                                           ; $4943: $00
    xor d                                         ; $4944: $aa
    ld d, l                                       ; $4945: $55
    ld bc, $48fe                                  ; $4946: $01 $fe $48
    rst $38                                       ; $4949: $ff
    inc d                                         ; $494a: $14
    rst $38                                       ; $494b: $ff
    pop af                                        ; $494c: $f1
    rst $38                                       ; $494d: $ff
    ld [de], a                                    ; $494e: $12
    rst $38                                       ; $494f: $ff
    dec [hl]                                      ; $4950: $35
    rst $38                                       ; $4951: $ff
    dec h                                         ; $4952: $25
    rst $38                                       ; $4953: $ff
    db $fc                                        ; $4954: $fc
    rst $38                                       ; $4955: $ff
    ld l, c                                       ; $4956: $69
    cp $02                                        ; $4957: $fe $02
    db $fd                                        ; $4959: $fd
    rst $38                                       ; $495a: $ff
    rlca                                          ; $495b: $07
    nop                                           ; $495c: $00
    sbc c                                         ; $495d: $99
    ld b, b                                       ; $495e: $40
    nop                                           ; $495f: $00
    ld [hl], b                                    ; $4960: $70
    nop                                           ; $4961: $00
    jr c, jr_0f8_49a4                             ; $4962: $38 $40

    inc e                                         ; $4964: $1c
    ld h, b                                       ; $4965: $60
    ld l, $50                                     ; $4966: $2e $50
    ld d, $68                                     ; $4968: $16 $68
    inc bc                                        ; $496a: $03
    ld a, h                                       ; $496b: $7c
    rlca                                          ; $496c: $07
    ld a, b                                       ; $496d: $78
    ld c, e                                       ; $496e: $4b
    ld [hl], h                                    ; $496f: $74
    daa                                           ; $4970: $27
    ld a, b                                       ; $4971: $78
    rrca                                          ; $4972: $0f
    ld [hl], b                                    ; $4973: $70
    ld e, [hl]                                    ; $4974: $5e
    jr nz, jr_0f8_49ef                            ; $4975: $20 $78

    dec b                                         ; $4977: $05
    nop                                           ; $4978: $00
    rst $38                                       ; $4979: $ff
    ld de, $f806                                  ; $497a: $11 $06 $f8
    inc b                                         ; $497d: $04
    push af                                       ; $497e: $f5
    ld bc, $f3f1                                  ; $497f: $01 $f1 $f3
    ldh a, [$fb]                                  ; $4982: $f0 $fb
    ldh a, [$03]                                  ; $4984: $f0 $03
    push af                                       ; $4986: $f5
    dec b                                         ; $4987: $05
    nop                                           ; $4988: $00
    rst $30                                       ; $4989: $f7
    nop                                           ; $498a: $00
    db $fd                                        ; $498b: $fd
    ld sp, hl                                     ; $498c: $f9
    inc bc                                        ; $498d: $03
    nop                                           ; $498e: $00
    ld c, $01                                     ; $498f: $0e $01
    inc e                                         ; $4991: $1c
    inc bc                                        ; $4992: $03
    dec sp                                        ; $4993: $3b
    dec b                                         ; $4994: $05
    ld [hl], b                                    ; $4995: $70
    rrca                                          ; $4996: $0f
    ld l, b                                       ; $4997: $68
    rla                                           ; $4998: $17
    pop de                                        ; $4999: $d1
    cpl                                           ; $499a: $2f
    db $e4                                        ; $499b: $e4
    dec de                                        ; $499c: $1b
    ret nz                                        ; $499d: $c0

    ccf                                           ; $499e: $3f
    jp hl                                         ; $499f: $e9


    rra                                           ; $49a0: $1f
    call nz, $e33f                                ; $49a1: $c4 $3f $e3

jr_0f8_49a4:
    rra                                           ; $49a4: $1f
    call z, Call_0f8_603f                         ; $49a5: $cc $3f $60
    rra                                           ; $49a8: $1f
    ld [hl], h                                    ; $49a9: $74
    dec bc                                        ; $49aa: $0b
    ld a, $01                                     ; $49ab: $3e $01
    rst $38                                       ; $49ad: $ff
    nop                                           ; $49ae: $00
    rst $38                                       ; $49af: $ff
    nop                                           ; $49b0: $00
    xor d                                         ; $49b1: $aa
    ld d, l                                       ; $49b2: $55
    ld b, b                                       ; $49b3: $40
    cp a                                          ; $49b4: $bf
    inc bc                                        ; $49b5: $03
    rst $38                                       ; $49b6: $ff
    call nz, $24ff                                ; $49b7: $c4 $ff $24
    rst $38                                       ; $49ba: $ff
    jr @+$01                                      ; $49bb: $18 $ff

    ld a, [c]                                     ; $49bd: $f2
    rst $38                                       ; $49be: $ff
    jr @+$01                                      ; $49bf: $18 $ff

    add hl, bc                                    ; $49c1: $09
    rst $38                                       ; $49c2: $ff
    add hl, de                                    ; $49c3: $19
    rst $38                                       ; $49c4: $ff
    adc e                                         ; $49c5: $8b
    rst $38                                       ; $49c6: $ff
    ld a, [hl]                                    ; $49c7: $7e
    rst $38                                       ; $49c8: $ff
    rra                                           ; $49c9: $1f
    rst $38                                       ; $49ca: $ff
    ld e, $ff                                     ; $49cb: $1e $ff
    ret nz                                        ; $49cd: $c0

    nop                                           ; $49ce: $00
    ldh a, [rP1]                                  ; $49cf: $f0 $00
    cp h                                          ; $49d1: $bc
    ld b, b                                       ; $49d2: $40
    ld c, [hl]                                    ; $49d3: $4e
    or b                                          ; $49d4: $b0
    rla                                           ; $49d5: $17
    add sp, $03                                   ; $49d6: $e8 $03
    db $fc                                        ; $49d8: $fc
    dec h                                         ; $49d9: $25
    ld a, [$fd42]                                 ; $49da: $fa $42 $fd
    ld c, b                                       ; $49dd: $48
    rst $38                                       ; $49de: $ff
    add c                                         ; $49df: $81
    cp $c4                                        ; $49e0: $fe $c4
    rst $38                                       ; $49e2: $ff
    add hl, hl                                    ; $49e3: $29
    cp $18                                        ; $49e4: $fe $18
    rst $38                                       ; $49e6: $ff
    ld [bc], a                                    ; $49e7: $02
    db $fd                                        ; $49e8: $fd
    pop bc                                        ; $49e9: $c1
    cp $2b                                        ; $49ea: $fe $2b
    db $f4                                        ; $49ec: $f4
    ld [bc], a                                    ; $49ed: $02
    nop                                           ; $49ee: $00

jr_0f8_49ef:
    ld [bc], a                                    ; $49ef: $02
    nop                                           ; $49f0: $00
    inc bc                                        ; $49f1: $03
    nop                                           ; $49f2: $00
    inc bc                                        ; $49f3: $03
    nop                                           ; $49f4: $00
    inc bc                                        ; $49f5: $03
    nop                                           ; $49f6: $00
    inc bc                                        ; $49f7: $03
    nop                                           ; $49f8: $00
    inc bc                                        ; $49f9: $03
    nop                                           ; $49fa: $00
    inc bc                                        ; $49fb: $03
    nop                                           ; $49fc: $00
    inc bc                                        ; $49fd: $03
    nop                                           ; $49fe: $00
    ld [bc], a                                    ; $49ff: $02
    nop                                           ; $4a00: $00
    ld [bc], a                                    ; $4a01: $02
    nop                                           ; $4a02: $00
    ld a, h                                       ; $4a03: $7c
    add b                                         ; $4a04: $80
    ldh a, [rTAC]                                 ; $4a05: $f0 $07
    nop                                           ; $4a07: $00
    add e                                         ; $4a08: $83
    ld [$ff07], sp                                ; $4a09: $08 $07 $ff
    dec e                                         ; $4a0c: $1d
    nop                                           ; $4a0d: $00
    add e                                         ; $4a0e: $83
    ld [bc], a                                    ; $4a0f: $02
    dec a                                         ; $4a10: $3d
    ccf                                           ; $4a11: $3f
    dec e                                         ; $4a12: $1d
    nop                                           ; $4a13: $00
    rst $38                                       ; $4a14: $ff
    ld de, $f806                                  ; $4a15: $11 $06 $f8
    inc b                                         ; $4a18: $04
    push af                                       ; $4a19: $f5
    ld bc, $f3f1                                  ; $4a1a: $01 $f1 $f3
    ldh a, [$fb]                                  ; $4a1d: $f0 $fb
    ldh a, [$03]                                  ; $4a1f: $f0 $03
    push af                                       ; $4a21: $f5
    dec b                                         ; $4a22: $05
    nop                                           ; $4a23: $00
    rst $30                                       ; $4a24: $f7

Jump_0f8_4a25:
    nop                                           ; $4a25: $00
    db $fd                                        ; $4a26: $fd
    ld sp, hl                                     ; $4a27: $f9
    inc bc                                        ; $4a28: $03
    nop                                           ; $4a29: $00
    ld c, $01                                     ; $4a2a: $0e $01
    dec e                                         ; $4a2c: $1d
    ld [bc], a                                    ; $4a2d: $02
    jr c, @+$09                                   ; $4a2e: $38 $07

    ld [hl], h                                    ; $4a30: $74
    dec bc                                        ; $4a31: $0b
    ld h, b                                       ; $4a32: $60
    rra                                           ; $4a33: $1f
    ret nc                                        ; $4a34: $d0

    cpl                                           ; $4a35: $2f
    add $3f                                       ; $4a36: $c6 $3f
    jp hl                                         ; $4a38: $e9


    rra                                           ; $4a39: $1f
    pop bc                                        ; $4a3a: $c1
    ccf                                           ; $4a3b: $3f
    db $e4                                        ; $4a3c: $e4
    rra                                           ; $4a3d: $1f
    ret nc                                        ; $4a3e: $d0

    cpl                                           ; $4a3f: $2f
    db $e4                                        ; $4a40: $e4
    rra                                           ; $4a41: $1f
    ld l, e                                       ; $4a42: $6b
    rla                                           ; $4a43: $17
    ld [hl], b                                    ; $4a44: $70
    rrca                                          ; $4a45: $0f
    dec a                                         ; $4a46: $3d
    ld [bc], a                                    ; $4a47: $02
    rst $38                                       ; $4a48: $ff
    nop                                           ; $4a49: $00
    rst $38                                       ; $4a4a: $ff
    nop                                           ; $4a4b: $00
    ld d, d                                       ; $4a4c: $52
    xor l                                         ; $4a4d: $ad
    jr nz, @-$1f                                  ; $4a4e: $20 $df

    inc b                                         ; $4a50: $04
    rst $38                                       ; $4a51: $ff
    adc b                                         ; $4a52: $88
    rst $38                                       ; $4a53: $ff
    ld c, b                                       ; $4a54: $48
    rst $38                                       ; $4a55: $ff
    jr nc, @+$01                                  ; $4a56: $30 $ff

    add hl, bc                                    ; $4a58: $09
    rst $38                                       ; $4a59: $ff
    ld c, c                                       ; $4a5a: $49
    rst $38                                       ; $4a5b: $ff
    ld [de], a                                    ; $4a5c: $12
    rst $38                                       ; $4a5d: $ff
    jp nc, $34ff                                  ; $4a5e: $d2 $ff $34

    rst $38                                       ; $4a61: $ff
    rra                                           ; $4a62: $1f
    rst $38                                       ; $4a63: $ff
    ld a, $ff                                     ; $4a64: $3e $ff
    sbc $ff                                       ; $4a66: $de $ff
    ret nz                                        ; $4a68: $c0

    nop                                           ; $4a69: $00
    ldh a, [rP1]                                  ; $4a6a: $f0 $00
    sbc h                                         ; $4a6c: $9c
    ld h, b                                       ; $4a6d: $60
    ld c, [hl]                                    ; $4a6e: $4e
    or b                                          ; $4a6f: $b0
    rla                                           ; $4a70: $17
    add sp, -$75                                  ; $4a71: $e8 $8b
    db $f4                                        ; $4a73: $f4
    sub c                                         ; $4a74: $91
    xor $82                                       ; $4a75: $ee $82
    db $fd                                        ; $4a77: $fd
    add hl, de                                    ; $4a78: $19
    cp $d0                                        ; $4a79: $fe $d0
    rst $38                                       ; $4a7b: $ff
    ld hl, $44fe                                  ; $4a7c: $21 $fe $44
    rst $38                                       ; $4a7f: $ff
    ld [$92ff], sp                                ; $4a80: $08 $ff $92
    db $fd                                        ; $4a83: $fd
    ld d, c                                       ; $4a84: $51
    cp $2b                                        ; $4a85: $fe $2b
    db $f4                                        ; $4a87: $f4
    ld [bc], a                                    ; $4a88: $02
    nop                                           ; $4a89: $00
    ld [bc], a                                    ; $4a8a: $02
    nop                                           ; $4a8b: $00
    inc bc                                        ; $4a8c: $03
    nop                                           ; $4a8d: $00
    inc bc                                        ; $4a8e: $03
    nop                                           ; $4a8f: $00
    inc bc                                        ; $4a90: $03
    nop                                           ; $4a91: $00
    inc bc                                        ; $4a92: $03
    nop                                           ; $4a93: $00
    inc bc                                        ; $4a94: $03
    nop                                           ; $4a95: $00
    inc bc                                        ; $4a96: $03
    nop                                           ; $4a97: $00
    inc bc                                        ; $4a98: $03
    nop                                           ; $4a99: $00
    ld [bc], a                                    ; $4a9a: $02
    nop                                           ; $4a9b: $00
    ld [bc], a                                    ; $4a9c: $02
    nop                                           ; $4a9d: $00
    ld e, h                                       ; $4a9e: $5c
    and b                                         ; $4a9f: $a0
    ldh a, [$08]                                  ; $4aa0: $f0 $08
    nop                                           ; $4aa2: $00
    add d                                         ; $4aa3: $82
    rrca                                          ; $4aa4: $0f
    rst $38                                       ; $4aa5: $ff
    dec e                                         ; $4aa6: $1d
    nop                                           ; $4aa7: $00
    add e                                         ; $4aa8: $83
    ld [bc], a                                    ; $4aa9: $02
    dec a                                         ; $4aaa: $3d
    ccf                                           ; $4aab: $3f
    dec e                                         ; $4aac: $1d
    nop                                           ; $4aad: $00
    rst $38                                       ; $4aae: $ff
    ld de, $f806                                  ; $4aaf: $11 $06 $f8
    inc b                                         ; $4ab2: $04
    push af                                       ; $4ab3: $f5
    ld bc, $f3f1                                  ; $4ab4: $01 $f1 $f3
    ldh a, [$fb]                                  ; $4ab7: $f0 $fb
    ldh a, [$03]                                  ; $4ab9: $f0 $03
    push af                                       ; $4abb: $f5
    dec b                                         ; $4abc: $05
    nop                                           ; $4abd: $00
    rst $30                                       ; $4abe: $f7
    nop                                           ; $4abf: $00
    db $fd                                        ; $4ac0: $fd
    ld sp, hl                                     ; $4ac1: $f9
    inc bc                                        ; $4ac2: $03
    nop                                           ; $4ac3: $00
    ld c, $01                                     ; $4ac4: $0e $01
    dec e                                         ; $4ac6: $1d
    ld [bc], a                                    ; $4ac7: $02
    jr c, jr_0f8_4ad1                             ; $4ac8: $38 $07

    ld [hl], h                                    ; $4aca: $74
    dec bc                                        ; $4acb: $0b
    ld h, b                                       ; $4acc: $60
    rra                                           ; $4acd: $1f
    call nc, $e02f                                ; $4ace: $d4 $2f $e0

jr_0f8_4ad1:
    rra                                           ; $4ad1: $1f
    jp $ec3f                                      ; $4ad2: $c3 $3f $ec


    rra                                           ; $4ad5: $1f
    ret nz                                        ; $4ad6: $c0

    ccf                                           ; $4ad7: $3f
    pop hl                                        ; $4ad8: $e1
    rra                                           ; $4ad9: $1f
    db $d3                                        ; $4ada: $d3
    cpl                                           ; $4adb: $2f
    ld h, h                                       ; $4adc: $64
    rra                                           ; $4add: $1f
    ld [hl], b                                    ; $4ade: $70
    rrca                                          ; $4adf: $0f
    ld a, [hl-]                                   ; $4ae0: $3a
    dec b                                         ; $4ae1: $05
    rst $38                                       ; $4ae2: $ff
    nop                                           ; $4ae3: $00
    rst $38                                       ; $4ae4: $ff
    nop                                           ; $4ae5: $00
    xor c                                         ; $4ae6: $a9
    ld d, [hl]                                    ; $4ae7: $56
    ld b, d                                       ; $4ae8: $42
    cp a                                          ; $4ae9: $bf
    jr @+$01                                      ; $4aea: $18 $ff

    add l                                         ; $4aec: $85
    rst $38                                       ; $4aed: $ff
    call nz, $35ff                                ; $4aee: $c4 $ff $35
    rst $38                                       ; $4af1: $ff
    add hl, bc                                    ; $4af2: $09
    rst $38                                       ; $4af3: $ff
    adc c                                         ; $4af4: $89
    rst $38                                       ; $4af5: $ff
    ld d, d                                       ; $4af6: $52
    rst $38                                       ; $4af7: $ff
    ld d, d                                       ; $4af8: $52
    rst $38                                       ; $4af9: $ff
    inc [hl]                                      ; $4afa: $34
    rst $38                                       ; $4afb: $ff
    rra                                           ; $4afc: $1f
    rst $38                                       ; $4afd: $ff
    cp $ff                                        ; $4afe: $fe $ff
    ld c, $ff                                     ; $4b00: $0e $ff
    ret nz                                        ; $4b02: $c0

    nop                                           ; $4b03: $00
    ldh a, [rP1]                                  ; $4b04: $f0 $00
    ld e, h                                       ; $4b06: $5c
    and b                                         ; $4b07: $a0
    ld l, $d0                                     ; $4b08: $2e $d0
    rlca                                          ; $4b0a: $07
    ld hl, sp+$2b                                 ; $4b0b: $f8 $2b
    db $f4                                        ; $4b0d: $f4
    push bc                                       ; $4b0e: $c5
    ld a, [$ff08]                                 ; $4b0f: $fa $08 $ff
    ld bc, $e4fe                                  ; $4b12: $01 $fe $e4
    rst $38                                       ; $4b15: $ff
    jr @+$01                                      ; $4b16: $18 $ff

    ld b, c                                       ; $4b18: $41
    cp $62                                        ; $4b19: $fe $62
    db $fd                                        ; $4b1b: $fd
    sub c                                         ; $4b1c: $91
    cp $09                                        ; $4b1d: $fe $09
    cp $23                                        ; $4b1f: $fe $23
    call c, $0002                                 ; $4b21: $dc $02 $00
    ld [bc], a                                    ; $4b24: $02
    nop                                           ; $4b25: $00
    inc bc                                        ; $4b26: $03
    nop                                           ; $4b27: $00
    inc bc                                        ; $4b28: $03
    nop                                           ; $4b29: $00
    inc bc                                        ; $4b2a: $03
    nop                                           ; $4b2b: $00
    inc bc                                        ; $4b2c: $03
    nop                                           ; $4b2d: $00
    inc bc                                        ; $4b2e: $03
    nop                                           ; $4b2f: $00
    inc bc                                        ; $4b30: $03
    nop                                           ; $4b31: $00
    inc bc                                        ; $4b32: $03
    nop                                           ; $4b33: $00
    ld [bc], a                                    ; $4b34: $02
    nop                                           ; $4b35: $00
    ld [bc], a                                    ; $4b36: $02
    nop                                           ; $4b37: $00
    ld e, h                                       ; $4b38: $5c
    and b                                         ; $4b39: $a0
    ldh a, [rTAC]                                 ; $4b3a: $f0 $07
    nop                                           ; $4b3c: $00
    add e                                         ; $4b3d: $83
    add hl, bc                                    ; $4b3e: $09
    ld b, $ff                                     ; $4b3f: $06 $ff
    dec e                                         ; $4b41: $1d
    nop                                           ; $4b42: $00
    add e                                         ; $4b43: $83
    ld bc, $3f3e                                  ; $4b44: $01 $3e $3f
    dec e                                         ; $4b47: $1d
    nop                                           ; $4b48: $00
    rst $38                                       ; $4b49: $ff
    rrca                                          ; $4b4a: $0f
    dec b                                         ; $4b4b: $05
    ld hl, sp+$04                                 ; $4b4c: $f8 $04
    push af                                       ; $4b4e: $f5
    ld bc, $f0ef                                  ; $4b4f: $01 $ef $f0
    add sp, -$08                                  ; $4b52: $e8 $f8
    ld hl, sp-$08                                 ; $4b54: $f8 $f8
    db $ec                                        ; $4b56: $ec
    nop                                           ; $4b57: $00
    ldh a, [$08]                                  ; $4b58: $f0 $08
    sbc l                                         ; $4b5a: $9d
    ld bc, $0100                                  ; $4b5b: $01 $00 $01

jr_0f8_4b5e:
    nop                                           ; $4b5e: $00
    inc bc                                        ; $4b5f: $03

jr_0f8_4b60:
    nop                                           ; $4b60: $00
    dec bc                                        ; $4b61: $0b
    nop                                           ; $4b62: $00
    dec bc                                        ; $4b63: $0b
    nop                                           ; $4b64: $00
    rrca                                          ; $4b65: $0f
    nop                                           ; $4b66: $00
    ld c, $01                                     ; $4b67: $0e $01
    inc c                                         ; $4b69: $0c
    inc bc                                        ; $4b6a: $03
    ld a, [de]                                    ; $4b6b: $1a
    dec b                                         ; $4b6c: $05
    inc e                                         ; $4b6d: $1c
    inc bc                                        ; $4b6e: $03
    jr jr_0f8_4b78                                ; $4b6f: $18 $07

    inc e                                         ; $4b71: $1c
    ld [bc], a                                    ; $4b72: $02
    jr jr_0f8_4b79                                ; $4b73: $18 $04

    jr jr_0f8_4b79                                ; $4b75: $18 $02

    db $10                                        ; $4b77: $10

jr_0f8_4b78:
    inc bc                                        ; $4b78: $03

jr_0f8_4b79:
    nop                                           ; $4b79: $00
    xor b                                         ; $4b7a: $a8
    ld [bc], a                                    ; $4b7b: $02
    nop                                           ; $4b7c: $00
    ld [bc], a                                    ; $4b7d: $02
    nop                                           ; $4b7e: $00
    ld [bc], a                                    ; $4b7f: $02
    nop                                           ; $4b80: $00
    ld [bc], a                                    ; $4b81: $02
    nop                                           ; $4b82: $00
    add d                                         ; $4b83: $82
    nop                                           ; $4b84: $00
    add [hl]                                      ; $4b85: $86
    nop                                           ; $4b86: $00
    add [hl]                                      ; $4b87: $86
    nop                                           ; $4b88: $00
    sub l                                         ; $4b89: $95
    nop                                           ; $4b8a: $00
    cp a                                          ; $4b8b: $bf
    nop                                           ; $4b8c: $00
    rst $38                                       ; $4b8d: $ff
    nop                                           ; $4b8e: $00
    push de                                       ; $4b8f: $d5
    ld a, [hl+]                                   ; $4b90: $2a
    xor b                                         ; $4b91: $a8
    ld d, a                                       ; $4b92: $57
    ld bc, $a2ff                                  ; $4b93: $01 $ff $a2
    ld a, a                                       ; $4b96: $7f
    ld [hl+], a                                   ; $4b97: $22

jr_0f8_4b98:
    rst $38                                       ; $4b98: $ff
    add hl, de                                    ; $4b99: $19
    rst $38                                       ; $4b9a: $ff
    call nz, $00ee                                ; $4b9b: $c4 $ee $00
    ld d, l                                       ; $4b9e: $55
    nop                                           ; $4b9f: $00
    add $00                                       ; $4ba0: $c6 $00
    add d                                         ; $4ba2: $82
    jr jr_0f8_4ba5                                ; $4ba3: $18 $00

jr_0f8_4ba5:
    cp e                                          ; $4ba5: $bb
    ld bc, $1100                                  ; $4ba6: $01 $00 $11
    nop                                           ; $4ba9: $00
    ld de, $3100                                  ; $4baa: $11 $00 $31
    nop                                           ; $4bad: $00
    db $fd                                        ; $4bae: $fd
    nop                                           ; $4baf: $00
    rst $38                                       ; $4bb0: $ff
    nop                                           ; $4bb1: $00
    dec hl                                        ; $4bb2: $2b
    call nc, $fa05                                ; $4bb3: $d4 $05 $fa

jr_0f8_4bb6:
    nop                                           ; $4bb6: $00
    rst $38                                       ; $4bb7: $ff
    ld h, c                                       ; $4bb8: $61
    cp $22                                        ; $4bb9: $fe $22
    rst $38                                       ; $4bbb: $ff
    inc d                                         ; $4bbc: $14
    rst $38                                       ; $4bbd: $ff
    inc h                                         ; $4bbe: $24
    rst $30                                       ; $4bbf: $f7
    nop                                           ; $4bc0: $00
    ld e, e                                       ; $4bc1: $5b
    nop                                           ; $4bc2: $00
    ld [$1100], sp                                ; $4bc3: $08 $00 $11
    add b                                         ; $4bc6: $80
    nop                                           ; $4bc7: $00
    sub b                                         ; $4bc8: $90
    nop                                           ; $4bc9: $00
    sub b                                         ; $4bca: $90
    nop                                           ; $4bcb: $00
    ret nc                                        ; $4bcc: $d0

    nop                                           ; $4bcd: $00
    ldh a, [rP1]                                  ; $4bce: $f0 $00
    ld [hl], b                                    ; $4bd0: $70
    add b                                         ; $4bd1: $80
    or b                                          ; $4bd2: $b0
    ld b, b                                       ; $4bd3: $40
    jr jr_0f8_4bb6                                ; $4bd4: $18 $e0

    jr c, jr_0f8_4b98                             ; $4bd6: $38 $c0

    jr @-$1e                                      ; $4bd8: $18 $e0

    jr jr_0f8_4c3c                                ; $4bda: $18 $60

    jr c, jr_0f8_4b5e                             ; $4bdc: $38 $80

    jr jr_0f8_4b60                                ; $4bde: $18 $80

    ld [$0005], sp                                ; $4be0: $08 $05 $00
    rst $38                                       ; $4be3: $ff
    inc de                                        ; $4be4: $13
    rlca                                          ; $4be5: $07
    ld hl, sp+$04                                 ; $4be6: $f8 $04
    push af                                       ; $4be8: $f5
    ld bc, $f0ee                                  ; $4be9: $01 $ee $f0
    db $e4                                        ; $4bec: $e4
    ld hl, sp-$0c                                 ; $4bed: $f8 $f4
    ld hl, sp-$19                                 ; $4bef: $f8 $e7
    nop                                           ; $4bf1: $00
    rst $30                                       ; $4bf2: $f7
    nop                                           ; $4bf3: $00
    db $ec                                        ; $4bf4: $ec
    ld [$08fc], sp                                ; $4bf5: $08 $fc $08
    sbc l                                         ; $4bf8: $9d
    add hl, bc                                    ; $4bf9: $09
    nop                                           ; $4bfa: $00
    ld bc, $0b00                                  ; $4bfb: $01 $00 $0b
    nop                                           ; $4bfe: $00
    dec bc                                        ; $4bff: $0b
    nop                                           ; $4c00: $00
    dec bc                                        ; $4c01: $0b
    nop                                           ; $4c02: $00
    ld e, $01                                     ; $4c03: $1e $01
    ld c, $01                                     ; $4c05: $0e $01
    inc c                                         ; $4c07: $0c
    inc bc                                        ; $4c08: $03
    ld a, [de]                                    ; $4c09: $1a
    dec b                                         ; $4c0a: $05
    inc e                                         ; $4c0b: $1c
    inc bc                                        ; $4c0c: $03
    jr @+$07                                      ; $4c0d: $18 $05

    ld [$1800], sp                                ; $4c0f: $08 $00 $18
    nop                                           ; $4c12: $00
    stop                                          ; $4c13: $10 $00
    db $10                                        ; $4c15: $10
    inc bc                                        ; $4c16: $03
    nop                                           ; $4c17: $00
    add c                                         ; $4c18: $81
    ld [bc], a                                    ; $4c19: $02
    inc bc                                        ; $4c1a: $03
    nop                                           ; $4c1b: $00
    and h                                         ; $4c1c: $a4
    ld [bc], a                                    ; $4c1d: $02
    nop                                           ; $4c1e: $00
    add d                                         ; $4c1f: $82
    nop                                           ; $4c20: $00
    ld [bc], a                                    ; $4c21: $02
    nop                                           ; $4c22: $00
    add d                                         ; $4c23: $82
    nop                                           ; $4c24: $00
    add [hl]                                      ; $4c25: $86
    nop                                           ; $4c26: $00
    add d                                         ; $4c27: $82
    nop                                           ; $4c28: $00
    rst $00                                       ; $4c29: $c7
    nop                                           ; $4c2a: $00
    sub a                                         ; $4c2b: $97
    nop                                           ; $4c2c: $00
    rst $10                                       ; $4c2d: $d7
    nop                                           ; $4c2e: $00
    db $fd                                        ; $4c2f: $fd
    ld [bc], a                                    ; $4c30: $02
    ld sp, hl                                     ; $4c31: $f9
    ld b, $51                                     ; $4c32: $06 $51
    xor [hl]                                      ; $4c34: $ae
    jr z, @-$27                                   ; $4c35: $28 $d7

    ld [bc], a                                    ; $4c37: $02
    rst $38                                       ; $4c38: $ff
    and b                                         ; $4c39: $a0
    halt                                          ; $4c3a: $76
    ld b, b                                       ; $4c3b: $40

jr_0f8_4c3c:
    db $ed                                        ; $4c3c: $ed
    nop                                           ; $4c3d: $00
    ret nz                                        ; $4c3e: $c0

    nop                                           ; $4c3f: $00
    ld d, b                                       ; $4c40: $50
    jr jr_0f8_4c43                                ; $4c41: $18 $00

jr_0f8_4c43:
    and l                                         ; $4c43: $a5
    ld bc, $1000                                  ; $4c44: $01 $00 $10
    nop                                           ; $4c47: $00
    ld bc, $1100                                  ; $4c48: $01 $00 $11
    nop                                           ; $4c4b: $00
    ld sp, $1100                                  ; $4c4c: $31 $00 $11
    nop                                           ; $4c4f: $00
    inc de                                        ; $4c50: $13
    nop                                           ; $4c51: $00
    ld [hl], c                                    ; $4c52: $71
    nop                                           ; $4c53: $00
    ld sp, hl                                     ; $4c54: $f9
    nop                                           ; $4c55: $00
    rst $18                                       ; $4c56: $df
    jr nz, jr_0f8_4c63                            ; $4c57: $20 $0a

    push af                                       ; $4c59: $f5
    inc h                                         ; $4c5a: $24
    ei                                            ; $4c5b: $fb
    jr nz, @+$01                                  ; $4c5c: $20 $ff

    ld b, c                                       ; $4c5e: $41
    ld h, [hl]                                    ; $4c5f: $66
    inc b                                         ; $4c60: $04
    ld c, a                                       ; $4c61: $4f

jr_0f8_4c62:
    ld [hl], b                                    ; $4c62: $70

jr_0f8_4c63:
    inc bc                                        ; $4c63: $03
    xor b                                         ; $4c64: $a8
    ld [hl], d                                    ; $4c65: $72
    ld hl, sp+$70                                 ; $4c66: $f8 $70
    xor b                                         ; $4c68: $a8
    ld [bc], a                                    ; $4c69: $02
    ld [hl], b                                    ; $4c6a: $70
    add hl, de                                    ; $4c6b: $19
    nop                                           ; $4c6c: $00
    add c                                         ; $4c6d: $81
    db $10                                        ; $4c6e: $10
    dec b                                         ; $4c6f: $05
    nop                                           ; $4c70: $00
    sbc e                                         ; $4c71: $9b
    sub b                                         ; $4c72: $90
    nop                                           ; $4c73: $00
    sub b                                         ; $4c74: $90
    nop                                           ; $4c75: $00
    sub b                                         ; $4c76: $90
    nop                                           ; $4c77: $00
    ret c                                         ; $4c78: $d8

    nop                                           ; $4c79: $00
    ldh a, [rP1]                                  ; $4c7a: $f0 $00
    ld [hl], b                                    ; $4c7c: $70
    add b                                         ; $4c7d: $80
    or b                                          ; $4c7e: $b0
    ld b, b                                       ; $4c7f: $40
    jr jr_0f8_4c62                                ; $4c80: $18 $e0

    jr c, jr_0f8_4cc4                             ; $4c82: $38 $40

    db $10                                        ; $4c84: $10
    and b                                         ; $4c85: $a0
    jr jr_0f8_4c88                                ; $4c86: $18 $00

jr_0f8_4c88:
    jr jr_0f8_4c8a                                ; $4c88: $18 $00

jr_0f8_4c8a:
    ld [$0800], sp                                ; $4c8a: $08 $00 $08
    rra                                           ; $4c8d: $1f
    nop                                           ; $4c8e: $00
    rst $38                                       ; $4c8f: $ff
    rrca                                          ; $4c90: $0f
    dec b                                         ; $4c91: $05
    ld hl, sp+$04                                 ; $4c92: $f8 $04
    push af                                       ; $4c94: $f5
    ld bc, $f7e3                                  ; $4c95: $01 $e3 $f7
    and $ff                                       ; $4c98: $e6 $ff
    xor $02                                       ; $4c9a: $ee $02
    di                                            ; $4c9c: $f3
    or $f3                                        ; $4c9d: $f6 $f3
    ld a, [$0181]                                 ; $4c9f: $fa $81 $01
    inc bc                                        ; $4ca2: $03
    nop                                           ; $4ca3: $00
    jp z, Jump_000_0001                           ; $4ca4: $ca $01 $00

    ld hl, $0100                                  ; $4ca7: $21 $00 $01
    nop                                           ; $4caa: $00
    ld hl, $2300                                  ; $4cab: $21 $00 $23
    nop                                           ; $4cae: $00
    ld hl, $3300                                  ; $4caf: $21 $00 $33
    nop                                           ; $4cb2: $00
    dec hl                                        ; $4cb3: $2b
    nop                                           ; $4cb4: $00
    ld a, d                                       ; $4cb5: $7a
    ld bc, $201f                                  ; $4cb6: $01 $1f $20
    cp $01                                        ; $4cb9: $fe $01
    jp z, $d435                                   ; $4cbb: $ca $35 $d4

    dec hl                                        ; $4cbe: $2b
    add b                                         ; $4cbf: $80
    halt                                          ; $4cc0: $76
    ld bc, $0800                                  ; $4cc1: $01 $00 $08

jr_0f8_4cc4:
    nop                                           ; $4cc4: $00
    ld bc, $0900                                  ; $4cc5: $01 $00 $09
    nop                                           ; $4cc8: $00
    add hl, de                                    ; $4cc9: $19
    nop                                           ; $4cca: $00
    adc c                                         ; $4ccb: $89
    nop                                           ; $4ccc: $00
    adc e                                         ; $4ccd: $8b
    nop                                           ; $4cce: $00
    cp c                                          ; $4ccf: $b9
    nop                                           ; $4cd0: $00
    db $fd                                        ; $4cd1: $fd
    nop                                           ; $4cd2: $00
    or $09                                        ; $4cd3: $f6 $09
    sub h                                         ; $4cd5: $94
    ld l, e                                       ; $4cd6: $6b
    ld [bc], a                                    ; $4cd7: $02
    cp l                                          ; $4cd8: $bd
    nop                                           ; $4cd9: $00
    xor a                                         ; $4cda: $af
    nop                                           ; $4cdb: $00
    ld sp, $0300                                  ; $4cdc: $31 $00 $03
    jr c, jr_0f8_4ce2                             ; $4cdf: $38 $01

    inc b                                         ; $4ce1: $04

jr_0f8_4ce2:
    nop                                           ; $4ce2: $00
    inc b                                         ; $4ce3: $04
    nop                                           ; $4ce4: $00
    ld b, $00                                     ; $4ce5: $06 $00
    ld b, $00                                     ; $4ce7: $06 $00
    ld [bc], a                                    ; $4ce9: $02
    inc b                                         ; $4cea: $04
    dec b                                         ; $4ceb: $05
    ld [bc], a                                    ; $4cec: $02
    ld bc, $0204                                  ; $4ced: $01 $04 $02
    nop                                           ; $4cf0: $00
    adc c                                         ; $4cf1: $89
    ld hl, $50c0                                  ; $4cf2: $21 $c0 $50
    ldh [$90], a                                  ; $4cf5: $e0 $90
    ldh [$50], a                                  ; $4cf7: $e0 $50
    ldh [rNR41], a                                ; $4cf9: $e0 $20
    ld [bc], a                                    ; $4cfb: $02
    ret nz                                        ; $4cfc: $c0

    dec b                                         ; $4cfd: $05
    nop                                           ; $4cfe: $00
    add a                                         ; $4cff: $87
    and b                                         ; $4d00: $a0
    ld c, c                                       ; $4d01: $49
    add b                                         ; $4d02: $80
    ld l, b                                       ; $4d03: $68
    nop                                           ; $4d04: $00
    jr nz, @-$7e                                  ; $4d05: $20 $80

    ld a, [de]                                    ; $4d07: $1a
    nop                                           ; $4d08: $00
    add c                                         ; $4d09: $81
    ld [$0004], sp                                ; $4d0a: $08 $04 $00
    adc c                                         ; $4d0d: $89
    ld [bc], a                                    ; $4d0e: $02
    ld bc, $0305                                  ; $4d0f: $01 $05 $03
    inc b                                         ; $4d12: $04
    inc bc                                        ; $4d13: $03
    dec b                                         ; $4d14: $05
    inc bc                                        ; $4d15: $03
    ld [bc], a                                    ; $4d16: $02
    ld [bc], a                                    ; $4d17: $02
    ld bc, $000f                                  ; $4d18: $01 $0f $00
    rst $38                                       ; $4d1b: $ff
    dec bc                                        ; $4d1c: $0b
    inc bc                                        ; $4d1d: $03
    ld hl, sp+$04                                 ; $4d1e: $f8 $04
    push af                                       ; $4d20: $f5
    ld bc, $fce0                                  ; $4d21: $01 $e0 $fc
    ldh a, [$fb]                                  ; $4d24: $f0 $fb
    ldh a, [rIE]                                  ; $4d26: $f0 $ff
    add c                                         ; $4d28: $81
    db $10                                        ; $4d29: $10
    inc bc                                        ; $4d2a: $03
    nop                                           ; $4d2b: $00
    and b                                         ; $4d2c: $a0
    stop                                          ; $4d2d: $10 $00
    stop                                          ; $4d2f: $10 $00
    stop                                          ; $4d31: $10 $00
    ld [de], a                                    ; $4d33: $12
    nop                                           ; $4d34: $00
    jr nc, jr_0f8_4d37                            ; $4d35: $30 $00

jr_0f8_4d37:
    ld a, [hl+]                                   ; $4d37: $2a
    db $10                                        ; $4d38: $10
    ld a, $00                                     ; $4d39: $3e $00
    ld a, [hl+]                                   ; $4d3b: $2a
    db $10                                        ; $4d3c: $10
    ld a, [hl+]                                   ; $4d3d: $2a
    db $10                                        ; $4d3e: $10
    ld c, a                                       ; $4d3f: $4f
    jr nc, jr_0f8_4d88                            ; $4d40: $30 $46

    jr c, jr_0f8_4d8e                             ; $4d42: $38 $4a

    dec [hl]                                      ; $4d44: $35
    ld [de], a                                    ; $4d45: $12
    db $ec                                        ; $4d46: $ec
    add b                                         ; $4d47: $80
    halt                                          ; $4d48: $76
    nop                                           ; $4d49: $00
    ld a, [hl+]                                   ; $4d4a: $2a
    nop                                           ; $4d4b: $00
    ld hl, $0004                                  ; $4d4c: $21 $04 $00
    adc a                                         ; $4d4f: $8f
    inc bc                                        ; $4d50: $03
    ld b, b                                       ; $4d51: $40
    ld b, h                                       ; $4d52: $44
    db $e3                                        ; $4d53: $e3
    ld a, [bc]                                    ; $4d54: $0a
    ld b, a                                       ; $4d55: $47
    dec d                                         ; $4d56: $15
    rrca                                          ; $4d57: $0f
    inc de                                        ; $4d58: $13
    rrca                                          ; $4d59: $0f
    dec d                                         ; $4d5a: $15
    rrca                                          ; $4d5b: $0f
    ld a, [bc]                                    ; $4d5c: $0a
    rlca                                          ; $4d5d: $07
    inc b                                         ; $4d5e: $04
    ld [bc], a                                    ; $4d5f: $02
    inc bc                                        ; $4d60: $03
    ld [$8100], sp                                ; $4d61: $08 $00 $81
    ld [$0006], sp                                ; $4d64: $08 $06 $00
    adc a                                         ; $4d67: $8f
    ld [$0400], sp                                ; $4d68: $08 $00 $04
    ld [$0c0a], sp                                ; $4d6b: $08 $0a $0c
    dec b                                         ; $4d6e: $05
    ld c, $09                                     ; $4d6f: $0e $09
    ld c, $05                                     ; $4d71: $0e $05
    ld c, $0a                                     ; $4d73: $0e $0a
    inc c                                         ; $4d75: $0c
    inc b                                         ; $4d76: $04
    ld [bc], a                                    ; $4d77: $02
    ld [$0007], sp                                ; $4d78: $08 $07 $00
    rst $38                                       ; $4d7b: $ff
    rlca                                          ; $4d7c: $07
    ld bc, $04f8                                  ; $4d7d: $01 $f8 $04
    push af                                       ; $4d80: $f5
    ld bc, $f8f3                                  ; $4d81: $01 $f3 $f8
    add a                                         ; $4d84: $87
    inc e                                         ; $4d85: $1c
    nop                                           ; $4d86: $00
    ld a, [hl+]                                   ; $4d87: $2a

jr_0f8_4d88:
    inc e                                         ; $4d88: $1c
    ld a, $1c                                     ; $4d89: $3e $1c
    ld a, [hl+]                                   ; $4d8b: $2a
    ld [bc], a                                    ; $4d8c: $02
    inc e                                         ; $4d8d: $1c

jr_0f8_4d8e:
    ld b, $00                                     ; $4d8e: $06 $00
    ld [bc], a                                    ; $4d90: $02
    ld [bc], a                                    ; $4d91: $02
    add e                                         ; $4d92: $83
    rlca                                          ; $4d93: $07
    nop                                           ; $4d94: $00
    ld [bc], a                                    ; $4d95: $02
    inc c                                         ; $4d96: $0c
    nop                                           ; $4d97: $00
    rst $38                                       ; $4d98: $ff
    rlca                                          ; $4d99: $07
    ld bc, $04f8                                  ; $4d9a: $01 $f8 $04
    push af                                       ; $4d9d: $f5
    ld bc, $f9f4                                  ; $4d9e: $01 $f4 $f9
    add c                                         ; $4da1: $81
    nop                                           ; $4da2: $00
    ld [bc], a                                    ; $4da3: $02
    db $10                                        ; $4da4: $10
    add e                                         ; $4da5: $83
    jr c, jr_0f8_4da8                             ; $4da6: $38 $00

jr_0f8_4da8:
    db $10                                        ; $4da8: $10
    inc b                                         ; $4da9: $04
    nop                                           ; $4daa: $00
    add a                                         ; $4dab: $87
    ld c, $00                                     ; $4dac: $0e $00
    dec d                                         ; $4dae: $15
    ld c, $1f                                     ; $4daf: $0e $1f
    ld c, $15                                     ; $4db1: $0e $15
    ld [bc], a                                    ; $4db3: $02
    ld c, $0d                                     ; $4db4: $0e $0d
    nop                                           ; $4db6: $00
    rst $38                                       ; $4db7: $ff
    rlca                                          ; $4db8: $07
    ld bc, $04f8                                  ; $4db9: $01 $f8 $04
    push af                                       ; $4dbc: $f5
    ld bc, $faf8                                  ; $4dbd: $01 $f8 $fa
    adc e                                         ; $4dc0: $8b
    inc e                                         ; $4dc1: $1c
    nop                                           ; $4dc2: $00
    ld [hl+], a                                   ; $4dc3: $22
    inc e                                         ; $4dc4: $1c
    ld d, l                                       ; $4dc5: $55
    ld a, $49                                     ; $4dc6: $3e $49
    ld a, $55                                     ; $4dc8: $3e $55
    ld a, $22                                     ; $4dca: $3e $22
    ld [bc], a                                    ; $4dcc: $02
    inc e                                         ; $4dcd: $1c
    inc de                                        ; $4dce: $13
    nop                                           ; $4dcf: $00
    rst $38                                       ; $4dd0: $ff
    add hl, bc                                    ; $4dd1: $09
    ld [bc], a                                    ; $4dd2: $02
    ld hl, sp+$04                                 ; $4dd3: $f8 $04
    push af                                       ; $4dd5: $f5
    ld bc, $faf7                                  ; $4dd6: $01 $f7 $fa
    rst $30                                       ; $4dd9: $f7
    ei                                            ; $4dda: $fb
    adc a                                         ; $4ddb: $8f
    inc e                                         ; $4ddc: $1c
    nop                                           ; $4ddd: $00
    ld [hl+], a                                   ; $4dde: $22
    inc e                                         ; $4ddf: $1c
    ld d, l                                       ; $4de0: $55
    ld a, $aa                                     ; $4de1: $3e $aa
    ld a, a                                       ; $4de3: $7f
    sbc h                                         ; $4de4: $9c
    ld a, a                                       ; $4de5: $7f
    xor d                                         ; $4de6: $aa
    ld a, a                                       ; $4de7: $7f
    ld d, l                                       ; $4de8: $55
    ld a, $22                                     ; $4de9: $3e $22
    ld [bc], a                                    ; $4deb: $02
    inc e                                         ; $4dec: $1c
    dec d                                         ; $4ded: $15
    nop                                           ; $4dee: $00
    add l                                         ; $4def: $85
    ld bc, $0100                                  ; $4df0: $01 $00 $01
    nop                                           ; $4df3: $00
    ld bc, $0015                                  ; $4df4: $01 $15 $00
    rst $38                                       ; $4df7: $ff
    rlca                                          ; $4df8: $07
    ld bc, $07fa                                  ; $4df9: $01 $fa $07
    di                                            ; $4dfc: $f3
    ld c, $09                                     ; $4dfd: $0e $09
    db $fc                                        ; $4dff: $fc
    ld [bc], a                                    ; $4e00: $02
    ld de, $5502                                  ; $4e01: $11 $02 $55
    add h                                         ; $4e04: $84
    ld [hl], l                                    ; $4e05: $75
    ld [hl], a                                    ; $4e06: $77
    ld a, [bc]                                    ; $4e07: $0a
    ld a, $02                                     ; $4e08: $3e $02
    inc [hl]                                      ; $4e0a: $34
    ld d, $00                                     ; $4e0b: $16 $00
    rst $38                                       ; $4e0d: $ff
    add hl, bc                                    ; $4e0e: $09
    ld [bc], a                                    ; $4e0f: $02
    ld a, [$f307]                                 ; $4e10: $fa $07 $f3
    ld c, $07                                     ; $4e13: $0e $07
    ei                                            ; $4e15: $fb
    rlca                                          ; $4e16: $07
    cp $02                                        ; $4e17: $fe $02
    and l                                         ; $4e19: $a5
    ld [bc], a                                    ; $4e1a: $02
    ld e, c                                       ; $4e1b: $59
    adc b                                         ; $4e1c: $88
    push hl                                       ; $4e1d: $e5
    rst $28                                       ; $4e1e: $ef
    ld d, d                                       ; $4e1f: $52
    ld a, e                                       ; $4e20: $7b
    inc h                                         ; $4e21: $24
    ccf                                           ; $4e22: $3f
    add hl, hl                                    ; $4e23: $29
    ccf                                           ; $4e24: $3f
    ld [bc], a                                    ; $4e25: $02
    rra                                           ; $4e26: $1f
    ld [de], a                                    ; $4e27: $12
    nop                                           ; $4e28: $00
    ld [bc], a                                    ; $4e29: $02
    ld [bc], a                                    ; $4e2a: $02
    ld [bc], a                                    ; $4e2b: $02
    dec b                                         ; $4e2c: $05
    ld [bc], a                                    ; $4e2d: $02
    inc bc                                        ; $4e2e: $03
    add d                                         ; $4e2f: $82
    ld [bc], a                                    ; $4e30: $02
    ld b, $04                                     ; $4e31: $06 $04
    inc b                                         ; $4e33: $04
    inc d                                         ; $4e34: $14
    nop                                           ; $4e35: $00
    rst $38                                       ; $4e36: $ff
    add hl, bc                                    ; $4e37: $09
    ld [bc], a                                    ; $4e38: $02
    ld a, [$f307]                                 ; $4e39: $fa $07 $f3
    ld c, $01                                     ; $4e3c: $0e $01
    ei                                            ; $4e3e: $fb
    ld bc, $02ff                                  ; $4e3f: $01 $ff $02
    ld [de], a                                    ; $4e42: $12
    ld [bc], a                                    ; $4e43: $02
    inc c                                         ; $4e44: $0c
    adc b                                         ; $4e45: $88
    sub d                                         ; $4e46: $92
    sub [hl]                                      ; $4e47: $96
    ld h, d                                       ; $4e48: $62
    ld [hl], e                                    ; $4e49: $73
    sub l                                         ; $4e4a: $95
    xor l                                         ; $4e4b: $ad
    ld [bc], a                                    ; $4e4c: $02
    ld d, $02                                     ; $4e4d: $16 $02
    ld e, e                                       ; $4e4f: $5b
    add [hl]                                      ; $4e50: $86
    jr z, @+$2e                                   ; $4e51: $28 $2c

    ld d, l                                       ; $4e53: $55
    ld e, e                                       ; $4e54: $5b
    jr z, jr_0f8_4e83                             ; $4e55: $28 $2c

    ld [bc], a                                    ; $4e57: $02
    inc de                                        ; $4e58: $13
    add d                                         ; $4e59: $82
    inc h                                         ; $4e5a: $24
    dec h                                         ; $4e5b: $25
    ld a, [bc]                                    ; $4e5c: $0a
    nop                                           ; $4e5d: $00
    ld [bc], a                                    ; $4e5e: $02
    add hl, bc                                    ; $4e5f: $09
    adc b                                         ; $4e60: $88
    ld b, $0e                                     ; $4e61: $06 $0e
    add hl, bc                                    ; $4e63: $09
    rlca                                          ; $4e64: $07
    nop                                           ; $4e65: $00
    ld [$0c04], sp                                ; $4e66: $08 $04 $0c
    ld [bc], a                                    ; $4e69: $02
    ld [bc], a                                    ; $4e6a: $02
    ld [bc], a                                    ; $4e6b: $02
    inc c                                         ; $4e6c: $0c
    add d                                         ; $4e6d: $82
    ld [bc], a                                    ; $4e6e: $02
    ld b, $02                                     ; $4e6f: $06 $02
    ld [$0002], sp                                ; $4e71: $08 $02 $00
    ld [bc], a                                    ; $4e74: $02
    ld [$0008], sp                                ; $4e75: $08 $08 $00
    rst $38                                       ; $4e78: $ff
    add hl, bc                                    ; $4e79: $09
    ld [bc], a                                    ; $4e7a: $02
    ld a, [$f307]                                 ; $4e7b: $fa $07 $f3
    ld c, $fb                                     ; $4e7e: $0e $fb
    ei                                            ; $4e80: $fb
    ei                                            ; $4e81: $fb
    rst $38                                       ; $4e82: $ff

jr_0f8_4e83:
    ld [bc], a                                    ; $4e83: $02
    ld hl, $2502                                  ; $4e84: $21 $02 $25
    ld [bc], a                                    ; $4e87: $02
    inc b                                         ; $4e88: $04
    ld [bc], a                                    ; $4e89: $02
    nop                                           ; $4e8a: $00
    ld [bc], a                                    ; $4e8b: $02
    ld d, d                                       ; $4e8c: $52
    sub b                                         ; $4e8d: $90
    ld c, h                                       ; $4e8e: $4c
    ld c, l                                       ; $4e8f: $4d
    add d                                         ; $4e90: $82
    sub [hl]                                      ; $4e91: $96
    ld d, d                                       ; $4e92: $52
    ld l, d                                       ; $4e93: $6a
    adc c                                         ; $4e94: $89
    cp c                                          ; $4e95: $b9
    nop                                           ; $4e96: $00
    inc b                                         ; $4e97: $04
    ld d, l                                       ; $4e98: $55
    ld e, e                                       ; $4e99: $5b
    jr z, jr_0f8_4ec8                             ; $4e9a: $28 $2c

    ld b, e                                       ; $4e9c: $43
    ld b, a                                       ; $4e9d: $47
    ld [bc], a                                    ; $4e9e: $02
    inc l                                         ; $4e9f: $2c

jr_0f8_4ea0:
    ld [bc], a                                    ; $4ea0: $02
    ld [de], a                                    ; $4ea1: $12
    add d                                         ; $4ea2: $82
    nop                                           ; $4ea3: $00
    ld bc, $0004                                  ; $4ea4: $01 $04 $00
    inc b                                         ; $4ea7: $04
    inc b                                         ; $4ea8: $04
    adc b                                         ; $4ea9: $88
    nop                                           ; $4eaa: $00
    ld [$0509], sp                                ; $4eab: $08 $09 $05
    ld b, $0e                                     ; $4eae: $06 $0e
    dec c                                         ; $4eb0: $0d
    rrca                                          ; $4eb1: $0f
    ld [bc], a                                    ; $4eb2: $02
    ld [$0482], sp                                ; $4eb3: $08 $82 $04
    inc c                                         ; $4eb6: $0c
    ld [bc], a                                    ; $4eb7: $02
    ld [bc], a                                    ; $4eb8: $02
    ld [bc], a                                    ; $4eb9: $02
    inc c                                         ; $4eba: $0c
    add d                                         ; $4ebb: $82
    ld [bc], a                                    ; $4ebc: $02
    ld b, $02                                     ; $4ebd: $06 $02
    ld [$0004], sp                                ; $4ebf: $08 $04 $00
    rst $38                                       ; $4ec2: $ff
    add hl, bc                                    ; $4ec3: $09
    ld [bc], a                                    ; $4ec4: $02
    ld a, [$f307]                                 ; $4ec5: $fa $07 $f3

jr_0f8_4ec8:
    ld c, $fe                                     ; $4ec8: $0e $fe
    db $fc                                        ; $4eca: $fc
    cp $fe                                        ; $4ecb: $fe $fe
    inc bc                                        ; $4ecd: $03
    nop                                           ; $4ece: $00
    adc l                                         ; $4ecf: $8d
    ld bc, $4000                                  ; $4ed0: $01 $00 $40
    ld b, d                                       ; $4ed3: $42
    and d                                         ; $4ed4: $a2
    db $10                                        ; $4ed5: $10
    ld d, b                                       ; $4ed6: $50
    nop                                           ; $4ed7: $00
    inc b                                         ; $4ed8: $04
    ld b, h                                       ; $4ed9: $44
    ld c, d                                       ; $4eda: $4a
    ld [$020c], sp                                ; $4edb: $08 $0c $02
    ld bc, $0003                                  ; $4ede: $01 $03 $00
    ld [bc], a                                    ; $4ee1: $02
    ld [$1483], sp                                ; $4ee2: $08 $83 $14
    ld [bc], a                                    ; $4ee5: $02
    ld a, [bc]                                    ; $4ee6: $0a
    ld [bc], a                                    ; $4ee7: $02
    ld [$0005], sp                                ; $4ee8: $08 $05 $00
    ld [bc], a                                    ; $4eeb: $02
    ld [bc], a                                    ; $4eec: $02
    add e                                         ; $4eed: $83
    ld bc, $0200                                  ; $4eee: $01 $00 $02
    ld [bc], a                                    ; $4ef1: $02
    nop                                           ; $4ef2: $00
    ld [bc], a                                    ; $4ef3: $02
    ld [bc], a                                    ; $4ef4: $02
    ld d, $00                                     ; $4ef5: $16 $00
    rst $38                                       ; $4ef7: $ff
    rlca                                          ; $4ef8: $07
    ld bc, $07fa                                  ; $4ef9: $01 $fa $07
    di                                            ; $4efc: $f3
    ld c, $fc                                     ; $4efd: $0e $fc
    db $fd                                        ; $4eff: $fd
    add c                                         ; $4f00: $81
    nop                                           ; $4f01: $00
    ld [bc], a                                    ; $4f02: $02
    ld [bc], a                                    ; $4f03: $02
    adc l                                         ; $4f04: $8d
    dec b                                         ; $4f05: $05
    inc b                                         ; $4f06: $04
    ld b, [hl]                                    ; $4f07: $46
    ld b, c                                       ; $4f08: $41
    and c                                         ; $4f09: $a1
    db $10                                        ; $4f0a: $10
    ld d, b                                       ; $4f0b: $50
    add b                                         ; $4f0c: $80
    add h                                         ; $4f0d: $84
    inc b                                         ; $4f0e: $04
    ld a, [bc]                                    ; $4f0f: $0a
    db $10                                        ; $4f10: $10
    inc d                                         ; $4f11: $14
    ld [bc], a                                    ; $4f12: $02
    ld bc, $0002                                  ; $4f13: $01 $02 $00
    ld [bc], a                                    ; $4f16: $02
    inc b                                         ; $4f17: $04
    add c                                         ; $4f18: $81
    nop                                           ; $4f19: $00
    ld [bc], a                                    ; $4f1a: $02
    jr nz, jr_0f8_4ea0                            ; $4f1b: $20 $83

    ld d, b                                       ; $4f1d: $50
    nop                                           ; $4f1e: $00
    jr nz, @+$04                                  ; $4f1f: $20 $02

    ld [$0002], sp                                ; $4f21: $08 $02 $00
    rst $38                                       ; $4f24: $ff
    add hl, bc                                    ; $4f25: $09
    ld [bc], a                                    ; $4f26: $02
    ld a, [$f307]                                 ; $4f27: $fa $07 $f3
    ld c, $fa                                     ; $4f2a: $0e $fa
    db $fc                                        ; $4f2c: $fc
    ld a, [$02ff]                                 ; $4f2d: $fa $ff $02
    nop                                           ; $4f30: $00
    add e                                         ; $4f31: $83
    inc b                                         ; $4f32: $04
    dec b                                         ; $4f33: $05
    nop                                           ; $4f34: $00
    ld [bc], a                                    ; $4f35: $02
    ld b, b                                       ; $4f36: $40
    adc c                                         ; $4f37: $89
    and b                                         ; $4f38: $a0
    db $10                                        ; $4f39: $10
    ld d, b                                       ; $4f3a: $50
    ld [$840c], sp                                ; $4f3b: $08 $0c $84
    adc d                                         ; $4f3e: $8a
    nop                                           ; $4f3f: $00
    inc b                                         ; $4f40: $04
    ld [bc], a                                    ; $4f41: $02
    nop                                           ; $4f42: $00
    ld [bc], a                                    ; $4f43: $02
    inc b                                         ; $4f44: $04
    inc b                                         ; $4f45: $04
    nop                                           ; $4f46: $00
    add [hl]                                      ; $4f47: $86
    inc b                                         ; $4f48: $04
    inc c                                         ; $4f49: $0c
    ld [$0014], sp                                ; $4f4a: $08 $14 $00
    ld [$0003], sp                                ; $4f4d: $08 $03 $00
    ld [bc], a                                    ; $4f50: $02
    inc b                                         ; $4f51: $04
    add e                                         ; $4f52: $83
    ld [bc], a                                    ; $4f53: $02
    nop                                           ; $4f54: $00
    inc b                                         ; $4f55: $04
    ld [bc], a                                    ; $4f56: $02
    ld bc, $0004                                  ; $4f57: $01 $04 $00
    ld [bc], a                                    ; $4f5a: $02
    inc b                                         ; $4f5b: $04
    ld [de], a                                    ; $4f5c: $12
    nop                                           ; $4f5d: $00
    rst $38                                       ; $4f5e: $ff
    add hl, bc                                    ; $4f5f: $09
    ld [bc], a                                    ; $4f60: $02
    ld a, [$f307]                                 ; $4f61: $fa $07 $f3
    ld c, $f8                                     ; $4f64: $0e $f8
    db $fc                                        ; $4f66: $fc
    ld hl, sp-$01                                 ; $4f67: $f8 $ff
    adc e                                         ; $4f69: $8b
    inc b                                         ; $4f6a: $04
    dec b                                         ; $4f6b: $05
    ld bc, $0002                                  ; $4f6c: $01 $02 $00
    ld hl, $5020                                  ; $4f6f: $21 $20 $50
    sub c                                         ; $4f72: $91
    or c                                          ; $4f73: $b1
    nop                                           ; $4f74: $00
    ld [bc], a                                    ; $4f75: $02
    ld [bc], a                                    ; $4f76: $02
    add e                                         ; $4f77: $83
    dec b                                         ; $4f78: $05
    inc b                                         ; $4f79: $04
    ld b, $08                                     ; $4f7a: $06 $08
    nop                                           ; $4f7c: $00
    add [hl]                                      ; $4f7d: $86
    inc b                                         ; $4f7e: $04
    inc d                                         ; $4f7f: $14
    db $10                                        ; $4f80: $10

jr_0f8_4f81:
    jr z, jr_0f8_4f83                             ; $4f81: $28 $00

jr_0f8_4f83:
    db $10                                        ; $4f83: $10
    dec b                                         ; $4f84: $05
    nop                                           ; $4f85: $00
    add c                                         ; $4f86: $81
    inc b                                         ; $4f87: $04
    ld [bc], a                                    ; $4f88: $02
    ld bc, $001a                                  ; $4f89: $01 $1a $00
    rst $38                                       ; $4f8c: $ff
    add hl, bc                                    ; $4f8d: $09
    ld [bc], a                                    ; $4f8e: $02
    ld a, [$f307]                                 ; $4f8f: $fa $07 $f3
    ld c, $f6                                     ; $4f92: $0e $f6
    ld a, [$fef6]                                 ; $4f94: $fa $f6 $fe
    ld [bc], a                                    ; $4f97: $02
    ld [bc], a                                    ; $4f98: $02
    inc bc                                        ; $4f99: $03
    nop                                           ; $4f9a: $00
    adc e                                         ; $4f9b: $8b
    db $10                                        ; $4f9c: $10
    sub b                                         ; $4f9d: $90
    xor b                                         ; $4f9e: $a8
    nop                                           ; $4f9f: $00
    stop                                          ; $4fa0: $10 $00
    ld bc, $0605                                  ; $4fa2: $01 $05 $06
    nop                                           ; $4fa5: $00
    ld bc, $0004                                  ; $4fa6: $01 $04 $00
    ld [bc], a                                    ; $4fa9: $02
    ld bc, $0003                                  ; $4faa: $01 $03 $00
    ld [bc], a                                    ; $4fad: $02
    ld [bc], a                                    ; $4fae: $02
    add e                                         ; $4faf: $83
    dec b                                         ; $4fb0: $05
    nop                                           ; $4fb1: $00
    ld [bc], a                                    ; $4fb2: $02
    inc bc                                        ; $4fb3: $03
    nop                                           ; $4fb4: $00
    ld [bc], a                                    ; $4fb5: $02
    ld [bc], a                                    ; $4fb6: $02
    add e                                         ; $4fb7: $83
    dec b                                         ; $4fb8: $05
    nop                                           ; $4fb9: $00
    ld [bc], a                                    ; $4fba: $02
    ld [bc], a                                    ; $4fbb: $02
    ld [$0005], sp                                ; $4fbc: $08 $05 $00
    add c                                         ; $4fbf: $81
    ld [$0012], sp                                ; $4fc0: $08 $12 $00
    rst $38                                       ; $4fc3: $ff
    rlca                                          ; $4fc4: $07
    ld bc, $07fa                                  ; $4fc5: $01 $fa $07
    di                                            ; $4fc8: $f3
    ld c, $f4                                     ; $4fc9: $0e $f4
    db $fd                                        ; $4fcb: $fd
    sub b                                         ; $4fcc: $90
    db $10                                        ; $4fcd: $10
    ld [de], a                                    ; $4fce: $12
    ld [bc], a                                    ; $4fcf: $02
    dec b                                         ; $4fd0: $05
    nop                                           ; $4fd1: $00
    ld b, d                                       ; $4fd2: $42
    ld b, b                                       ; $4fd3: $40
    and b                                         ; $4fd4: $a0
    ld [$8048], sp                                ; $4fd5: $08 $48 $80
    add h                                         ; $4fd8: $84
    inc b                                         ; $4fd9: $04
    ld a, [bc]                                    ; $4fda: $0a
    nop                                           ; $4fdb: $00
    inc b                                         ; $4fdc: $04
    ld [bc], a                                    ; $4fdd: $02
    ld [$0003], sp                                ; $4fde: $08 $03 $00
    ld [bc], a                                    ; $4fe1: $02
    db $10                                        ; $4fe2: $10
    add e                                         ; $4fe3: $83
    jr z, jr_0f8_4fe6                             ; $4fe4: $28 $00

jr_0f8_4fe6:
    db $10                                        ; $4fe6: $10
    ld b, $00                                     ; $4fe7: $06 $00
    rst $38                                       ; $4fe9: $ff
    add hl, bc                                    ; $4fea: $09
    ld [bc], a                                    ; $4feb: $02
    ld a, [$f307]                                 ; $4fec: $fa $07 $f3
    ld c, $f3                                     ; $4fef: $0e $f3
    db $fc                                        ; $4ff1: $fc
    di                                            ; $4ff2: $f3
    cp $02                                        ; $4ff3: $fe $02
    db $10                                        ; $4ff5: $10
    add e                                         ; $4ff6: $83
    nop                                           ; $4ff7: $00
    ld bc, $0200                                  ; $4ff8: $01 $00 $02
    db $10                                        ; $4ffb: $10
    adc c                                         ; $4ffc: $89
    jr z, jr_0f8_5007                             ; $4ffd: $28 $08

    jr jr_0f8_4f81                                ; $4fff: $18 $80

    add h                                         ; $5001: $84
    inc b                                         ; $5002: $04
    ld a, [bc]                                    ; $5003: $0a
    nop                                           ; $5004: $00
    inc b                                         ; $5005: $04
    ld [bc], a                                    ; $5006: $02

jr_0f8_5007:
    ld [$0003], sp                                ; $5007: $08 $03 $00
    ld [bc], a                                    ; $500a: $02
    db $10                                        ; $500b: $10
    add e                                         ; $500c: $83
    jr z, jr_0f8_500f                             ; $500d: $28 $00

jr_0f8_500f:
    db $10                                        ; $500f: $10
    rlca                                          ; $5010: $07
    nop                                           ; $5011: $00
    ld [bc], a                                    ; $5012: $02
    ld [bc], a                                    ; $5013: $02
    add e                                         ; $5014: $83
    ld bc, $0200                                  ; $5015: $01 $00 $02
    ld a, [de]                                    ; $5018: $1a
    nop                                           ; $5019: $00
    rst $38                                       ; $501a: $ff
    rlca                                          ; $501b: $07
    ld bc, $07fa                                  ; $501c: $01 $fa $07
    di                                            ; $501f: $f3
    ld c, $f1                                     ; $5020: $0e $f1
    db $fc                                        ; $5022: $fc
    sub b                                         ; $5023: $90
    ld [$4048], sp                                ; $5024: $08 $48 $40
    and b                                         ; $5027: $a0
    nop                                           ; $5028: $00
    ld b, d                                       ; $5029: $42
    ld [bc], a                                    ; $502a: $02
    dec b                                         ; $502b: $05
    db $10                                        ; $502c: $10
    ld [de], a                                    ; $502d: $12
    ld bc, $2021                                  ; $502e: $01 $21 $20
    ld d, b                                       ; $5031: $50
    nop                                           ; $5032: $00
    jr nz, jr_0f8_5037                            ; $5033: $20 $02

    db $10                                        ; $5035: $10
    inc bc                                        ; $5036: $03

jr_0f8_5037:
    nop                                           ; $5037: $00
    ld [bc], a                                    ; $5038: $02
    ld [$1483], sp                                ; $5039: $08 $83 $14
    nop                                           ; $503c: $00
    ld [$0006], sp                                ; $503d: $08 $06 $00
    rst $38                                       ; $5040: $ff
    rlca                                          ; $5041: $07
    ld bc, $0bf9                                  ; $5042: $01 $f9 $0b
    push af                                       ; $5045: $f5
    add hl, bc                                    ; $5046: $09
    push af                                       ; $5047: $f5
    ei                                            ; $5048: $fb
    adc b                                         ; $5049: $88
    ld [bc], a                                    ; $504a: $02
    ld b, $05                                     ; $504b: $06 $05
    dec bc                                        ; $504d: $0b
    ld b, $09                                     ; $504e: $06 $09
    nop                                           ; $5050: $00
    ld b, $18                                     ; $5051: $06 $18
    nop                                           ; $5053: $00
    rst $38                                       ; $5054: $ff
    rlca                                          ; $5055: $07
    ld bc, $0bf9                                  ; $5056: $01 $f9 $0b
    push af                                       ; $5059: $f5
    add hl, bc                                    ; $505a: $09
    push af                                       ; $505b: $f5
    ld hl, sp-$78                                 ; $505c: $f8 $88
    ld [bc], a                                    ; $505e: $02
    ld b, $05                                     ; $505f: $06 $05
    dec bc                                        ; $5061: $0b
    ld b, $09                                     ; $5062: $06 $09
    nop                                           ; $5064: $00
    ld b, $18                                     ; $5065: $06 $18
    nop                                           ; $5067: $00
    rst $38                                       ; $5068: $ff
    rlca                                          ; $5069: $07
    ld bc, $0bf9                                  ; $506a: $01 $f9 $0b
    push af                                       ; $506d: $f5
    add hl, bc                                    ; $506e: $09
    ld hl, sp-$0b                                 ; $506f: $f8 $f5
    adc b                                         ; $5071: $88
    ld [bc], a                                    ; $5072: $02
    ld b, $05                                     ; $5073: $06 $05
    dec bc                                        ; $5075: $0b
    ld b, $09                                     ; $5076: $06 $09
    nop                                           ; $5078: $00
    ld b, $18                                     ; $5079: $06 $18
    nop                                           ; $507b: $00
    rst $38                                       ; $507c: $ff
    rlca                                          ; $507d: $07
    ld bc, $0bf9                                  ; $507e: $01 $f9 $0b
    push af                                       ; $5081: $f5

Call_0f8_5082:
Jump_0f8_5082:
    add hl, bc                                    ; $5082: $09
    ei                                            ; $5083: $fb
    ld hl, sp-$78                                 ; $5084: $f8 $88
    inc b                                         ; $5086: $04
    ld b, $0a                                     ; $5087: $06 $0a
    dec c                                         ; $5089: $0d
    ld b, $09                                     ; $508a: $06 $09
    nop                                           ; $508c: $00
    ld b, $18                                     ; $508d: $06 $18
    nop                                           ; $508f: $00
    rst $38                                       ; $5090: $ff
    rlca                                          ; $5091: $07
    ld bc, $0bf9                                  ; $5092: $01 $f9 $0b
    push af                                       ; $5095: $f5
    add hl, bc                                    ; $5096: $09
    ei                                            ; $5097: $fb
    db $fc                                        ; $5098: $fc
    adc b                                         ; $5099: $88
    inc b                                         ; $509a: $04
    ld b, $0a                                     ; $509b: $06 $0a
    dec c                                         ; $509d: $0d
    ld b, $09                                     ; $509e: $06 $09
    nop                                           ; $50a0: $00
    ld b, $18                                     ; $50a1: $06 $18
    nop                                           ; $50a3: $00
    rst $38                                       ; $50a4: $ff
    rlca                                          ; $50a5: $07
    ld bc, $0bf9                                  ; $50a6: $01 $f9 $0b
    push af                                       ; $50a9: $f5
    add hl, bc                                    ; $50aa: $09
    ld sp, hl                                     ; $50ab: $f9
    nop                                           ; $50ac: $00
    add c                                         ; $50ad: $81
    nop                                           ; $50ae: $00
    ld [bc], a                                    ; $50af: $02
    ld b, $85                                     ; $50b0: $06 $85
    add hl, bc                                    ; $50b2: $09
    ld a, [bc]                                    ; $50b3: $0a
    dec c                                         ; $50b4: $0d
    inc b                                         ; $50b5: $04
    ld b, $18                                     ; $50b6: $06 $18
    nop                                           ; $50b8: $00
    rst $38                                       ; $50b9: $ff
    rlca                                          ; $50ba: $07
    ld bc, $0bf9                                  ; $50bb: $01 $f9 $0b
    push af                                       ; $50be: $f5
    add hl, bc                                    ; $50bf: $09
    rst $30                                       ; $50c0: $f7
    db $fc                                        ; $50c1: $fc
    add c                                         ; $50c2: $81
    nop                                           ; $50c3: $00
    ld [bc], a                                    ; $50c4: $02
    ld b, $85                                     ; $50c5: $06 $85
    add hl, bc                                    ; $50c7: $09
    dec b                                         ; $50c8: $05
    dec bc                                        ; $50c9: $0b
    ld [bc], a                                    ; $50ca: $02
    ld b, $18                                     ; $50cb: $06 $18
    nop                                           ; $50cd: $00
    rst $38                                       ; $50ce: $ff
    rlca                                          ; $50cf: $07
    ld bc, $0bf9                                  ; $50d0: $01 $f9 $0b
    push af                                       ; $50d3: $f5
    add hl, bc                                    ; $50d4: $09
    rst $30                                       ; $50d5: $f7
    ld hl, sp-$7f                                 ; $50d6: $f8 $81
    nop                                           ; $50d8: $00
    ld [bc], a                                    ; $50d9: $02
    ld b, $85                                     ; $50da: $06 $85
    add hl, bc                                    ; $50dc: $09
    dec b                                         ; $50dd: $05
    dec bc                                        ; $50de: $0b
    ld [bc], a                                    ; $50df: $02
    ld b, $18                                     ; $50e0: $06 $18
    nop                                           ; $50e2: $00
    rst $38                                       ; $50e3: $ff
    rlca                                          ; $50e4: $07
    ld bc, $0bf9                                  ; $50e5: $01 $f9 $0b
    push af                                       ; $50e8: $f5
    add hl, bc                                    ; $50e9: $09
    ld sp, hl                                     ; $50ea: $f9
    db $f4                                        ; $50eb: $f4
    adc b                                         ; $50ec: $88
    ld [bc], a                                    ; $50ed: $02
    ld b, $05                                     ; $50ee: $06 $05
    dec bc                                        ; $50f0: $0b
    ld b, $09                                     ; $50f1: $06 $09
    nop                                           ; $50f3: $00
    ld b, $18                                     ; $50f4: $06 $18
    nop                                           ; $50f6: $00
    rst $38                                       ; $50f7: $ff
    rlca                                          ; $50f8: $07
    ld bc, $0bf9                                  ; $50f9: $01 $f9 $0b
    push af                                       ; $50fc: $f5
    add hl, bc                                    ; $50fd: $09
    db $fc                                        ; $50fe: $fc
    pop af                                        ; $50ff: $f1
    adc b                                         ; $5100: $88
    ld [bc], a                                    ; $5101: $02
    ld b, $05                                     ; $5102: $06 $05
    dec bc                                        ; $5104: $0b
    ld b, $09                                     ; $5105: $06 $09
    nop                                           ; $5107: $00
    ld b, $18                                     ; $5108: $06 $18
    nop                                           ; $510a: $00
    rst $38                                       ; $510b: $ff
    rlca                                          ; $510c: $07
    ld bc, $0bf9                                  ; $510d: $01 $f9 $0b
    push af                                       ; $5110: $f5
    add hl, bc                                    ; $5111: $09
    rst $38                                       ; $5112: $ff
    db $f4                                        ; $5113: $f4
    adc b                                         ; $5114: $88
    inc b                                         ; $5115: $04
    ld b, $0a                                     ; $5116: $06 $0a
    dec c                                         ; $5118: $0d
    ld b, $09                                     ; $5119: $06 $09
    nop                                           ; $511b: $00
    ld b, $18                                     ; $511c: $06 $18
    nop                                           ; $511e: $00
    rst $38                                       ; $511f: $ff
    rlca                                          ; $5120: $07
    ld bc, $0bf9                                  ; $5121: $01 $f9 $0b
    push af                                       ; $5124: $f5
    add hl, bc                                    ; $5125: $09
    nop                                           ; $5126: $00
    ld hl, sp-$78                                 ; $5127: $f8 $88
    inc b                                         ; $5129: $04
    ld b, $0a                                     ; $512a: $06 $0a
    dec c                                         ; $512c: $0d
    ld b, $09                                     ; $512d: $06 $09
    nop                                           ; $512f: $00
    ld b, $18                                     ; $5130: $06 $18
    nop                                           ; $5132: $00
    rst $38                                       ; $5133: $ff
    rlca                                          ; $5134: $07
    ld bc, $0bf9                                  ; $5135: $01 $f9 $0b
    push af                                       ; $5138: $f5
    add hl, bc                                    ; $5139: $09
    nop                                           ; $513a: $00
    db $fc                                        ; $513b: $fc
    adc b                                         ; $513c: $88
    inc b                                         ; $513d: $04
    ld b, $0a                                     ; $513e: $06 $0a
    dec c                                         ; $5140: $0d
    ld b, $09                                     ; $5141: $06 $09
    nop                                           ; $5143: $00
    ld b, $18                                     ; $5144: $06 $18
    nop                                           ; $5146: $00
    rst $38                                       ; $5147: $ff
    rlca                                          ; $5148: $07
    ld bc, $0bf9                                  ; $5149: $01 $f9 $0b
    push af                                       ; $514c: $f5
    add hl, bc                                    ; $514d: $09
    nop                                           ; $514e: $00
    nop                                           ; $514f: $00
    adc b                                         ; $5150: $88
    inc b                                         ; $5151: $04
    ld b, $0a                                     ; $5152: $06 $0a
    dec c                                         ; $5154: $0d
    ld b, $09                                     ; $5155: $06 $09
    nop                                           ; $5157: $00
    ld b, $18                                     ; $5158: $06 $18
    nop                                           ; $515a: $00
    rst $38                                       ; $515b: $ff
    rlca                                          ; $515c: $07
    ld bc, $0bf9                                  ; $515d: $01 $f9 $0b
    push af                                       ; $5160: $f5
    add hl, bc                                    ; $5161: $09
    cp $04                                        ; $5162: $fe $04
    add c                                         ; $5164: $81
    nop                                           ; $5165: $00
    ld [bc], a                                    ; $5166: $02
    ld b, $85                                     ; $5167: $06 $85
    add hl, bc                                    ; $5169: $09
    ld a, [bc]                                    ; $516a: $0a
    dec c                                         ; $516b: $0d
    inc b                                         ; $516c: $04
    ld b, $18                                     ; $516d: $06 $18
    nop                                           ; $516f: $00
    rst $38                                       ; $5170: $ff
    rlca                                          ; $5171: $07
    ld bc, $0bf9                                  ; $5172: $01 $f9 $0b
    push af                                       ; $5175: $f5
    add hl, bc                                    ; $5176: $09
    db $fc                                        ; $5177: $fc
    ld [bc], a                                    ; $5178: $02
    add c                                         ; $5179: $81
    nop                                           ; $517a: $00
    ld [bc], a                                    ; $517b: $02
    ld b, $85                                     ; $517c: $06 $85
    add hl, bc                                    ; $517e: $09
    dec b                                         ; $517f: $05
    dec bc                                        ; $5180: $0b
    ld [bc], a                                    ; $5181: $02
    ld b, $18                                     ; $5182: $06 $18
    nop                                           ; $5184: $00
    rst $38                                       ; $5185: $ff
    rlca                                          ; $5186: $07
    ld bc, $0bf9                                  ; $5187: $01 $f9 $0b
    push af                                       ; $518a: $f5
    add hl, bc                                    ; $518b: $09
    db $fc                                        ; $518c: $fc
    cp $81                                        ; $518d: $fe $81
    nop                                           ; $518f: $00
    ld [bc], a                                    ; $5190: $02
    ld b, $85                                     ; $5191: $06 $85
    add hl, bc                                    ; $5193: $09
    dec b                                         ; $5194: $05
    dec bc                                        ; $5195: $0b
    ld [bc], a                                    ; $5196: $02
    ld b, $18                                     ; $5197: $06 $18
    nop                                           ; $5199: $00
    rst $38                                       ; $519a: $ff
    rlca                                          ; $519b: $07
    ld bc, $0bf9                                  ; $519c: $01 $f9 $0b
    push af                                       ; $519f: $f5
    add hl, bc                                    ; $51a0: $09
    db $fc                                        ; $51a1: $fc
    ld a, [$0081]                                 ; $51a2: $fa $81 $00
    ld [bc], a                                    ; $51a5: $02
    ld b, $85                                     ; $51a6: $06 $85
    add hl, bc                                    ; $51a8: $09
    dec b                                         ; $51a9: $05
    dec bc                                        ; $51aa: $0b
    ld [bc], a                                    ; $51ab: $02
    ld b, $18                                     ; $51ac: $06 $18
    nop                                           ; $51ae: $00
    rst $38                                       ; $51af: $ff
    rlca                                          ; $51b0: $07
    ld bc, $0bf9                                  ; $51b1: $01 $f9 $0b
    push af                                       ; $51b4: $f5
    add hl, bc                                    ; $51b5: $09
    db $fc                                        ; $51b6: $fc
    or $81                                        ; $51b7: $f6 $81
    nop                                           ; $51b9: $00
    ld [bc], a                                    ; $51ba: $02
    ld b, $85                                     ; $51bb: $06 $85
    add hl, bc                                    ; $51bd: $09
    dec b                                         ; $51be: $05
    dec bc                                        ; $51bf: $0b
    ld [bc], a                                    ; $51c0: $02
    ld b, $18                                     ; $51c1: $06 $18
    nop                                           ; $51c3: $00
    rst $38                                       ; $51c4: $ff
    rlca                                          ; $51c5: $07
    ld bc, $0bf9                                  ; $51c6: $01 $f9 $0b
    push af                                       ; $51c9: $f5
    add hl, bc                                    ; $51ca: $09
    db $fd                                        ; $51cb: $fd
    ld a, [c]                                     ; $51cc: $f2
    adc b                                         ; $51cd: $88
    ld [bc], a                                    ; $51ce: $02
    ld b, $05                                     ; $51cf: $06 $05
    dec bc                                        ; $51d1: $0b
    ld b, $09                                     ; $51d2: $06 $09
    nop                                           ; $51d4: $00
    ld b, $18                                     ; $51d5: $06 $18
    nop                                           ; $51d7: $00
    rst $38                                       ; $51d8: $ff
    rlca                                          ; $51d9: $07
    ld bc, $0bf9                                  ; $51da: $01 $f9 $0b
    push af                                       ; $51dd: $f5
    add hl, bc                                    ; $51de: $09
    rst $38                                       ; $51df: $ff
    xor $88                                       ; $51e0: $ee $88
    ld [bc], a                                    ; $51e2: $02
    ld b, $05                                     ; $51e3: $06 $05
    dec bc                                        ; $51e5: $0b
    ld b, $09                                     ; $51e6: $06 $09
    nop                                           ; $51e8: $00
    ld b, $18                                     ; $51e9: $06 $18
    nop                                           ; $51eb: $00
    rst $38                                       ; $51ec: $ff
    rlca                                          ; $51ed: $07
    ld bc, $0bf9                                  ; $51ee: $01 $f9 $0b
    push af                                       ; $51f1: $f5
    add hl, bc                                    ; $51f2: $09
    inc bc                                        ; $51f3: $03
    ldh a, [$88]                                  ; $51f4: $f0 $88
    inc b                                         ; $51f6: $04
    ld b, $0a                                     ; $51f7: $06 $0a
    dec c                                         ; $51f9: $0d
    ld b, $09                                     ; $51fa: $06 $09
    nop                                           ; $51fc: $00
    ld b, $18                                     ; $51fd: $06 $18
    nop                                           ; $51ff: $00
    rst $38                                       ; $5200: $ff
    rlca                                          ; $5201: $07
    ld bc, $0bf9                                  ; $5202: $01 $f9 $0b
    push af                                       ; $5205: $f5
    add hl, bc                                    ; $5206: $09
    dec b                                         ; $5207: $05
    db $f4                                        ; $5208: $f4
    adc b                                         ; $5209: $88
    inc b                                         ; $520a: $04
    ld b, $0a                                     ; $520b: $06 $0a
    dec c                                         ; $520d: $0d
    ld b, $09                                     ; $520e: $06 $09
    nop                                           ; $5210: $00
    ld b, $18                                     ; $5211: $06 $18
    nop                                           ; $5213: $00
    rst $38                                       ; $5214: $ff
    rlca                                          ; $5215: $07
    ld bc, $0bf9                                  ; $5216: $01 $f9 $0b
    push af                                       ; $5219: $f5
    add hl, bc                                    ; $521a: $09
    dec b                                         ; $521b: $05
    ld hl, sp-$78                                 ; $521c: $f8 $88
    inc b                                         ; $521e: $04
    ld b, $0a                                     ; $521f: $06 $0a
    dec c                                         ; $5221: $0d
    ld b, $09                                     ; $5222: $06 $09
    nop                                           ; $5224: $00
    ld b, $18                                     ; $5225: $06 $18
    nop                                           ; $5227: $00
    rst $38                                       ; $5228: $ff
    rlca                                          ; $5229: $07
    ld bc, $0bf9                                  ; $522a: $01 $f9 $0b
    push af                                       ; $522d: $f5
    add hl, bc                                    ; $522e: $09
    inc b                                         ; $522f: $04
    ei                                            ; $5230: $fb
    add c                                         ; $5231: $81
    nop                                           ; $5232: $00
    ld [bc], a                                    ; $5233: $02
    ld b, $85                                     ; $5234: $06 $85
    add hl, bc                                    ; $5236: $09
    ld a, [bc]                                    ; $5237: $0a
    dec c                                         ; $5238: $0d
    inc b                                         ; $5239: $04
    ld b, $18                                     ; $523a: $06 $18
    nop                                           ; $523c: $00
    rst $38                                       ; $523d: $ff
    rlca                                          ; $523e: $07
    ld bc, $0bf9                                  ; $523f: $01 $f9 $0b
    push af                                       ; $5242: $f5
    add hl, bc                                    ; $5243: $09
    ld [bc], a                                    ; $5244: $02
    db $fc                                        ; $5245: $fc
    add c                                         ; $5246: $81
    nop                                           ; $5247: $00
    ld [bc], a                                    ; $5248: $02
    ld b, $85                                     ; $5249: $06 $85
    add hl, bc                                    ; $524b: $09
    dec b                                         ; $524c: $05
    dec bc                                        ; $524d: $0b
    ld [bc], a                                    ; $524e: $02

jr_0f8_524f:
    ld b, $18                                     ; $524f: $06 $18
    nop                                           ; $5251: $00
    rst $38                                       ; $5252: $ff
    add hl, bc                                    ; $5253: $09
    ld [bc], a                                    ; $5254: $02
    ld sp, hl                                     ; $5255: $f9
    dec bc                                        ; $5256: $0b
    push af                                       ; $5257: $f5
    add hl, bc                                    ; $5258: $09
    cp $fc                                        ; $5259: $fe $fc
    cp $00                                        ; $525b: $fe $00
    add c                                         ; $525d: $81
    nop                                           ; $525e: $00
    ld [bc], a                                    ; $525f: $02
    ld [bc], a                                    ; $5260: $02
    add [hl]                                      ; $5261: $86
    dec b                                         ; $5262: $05
    nop                                           ; $5263: $00
    ld [hl-], a                                   ; $5264: $32
    nop                                           ; $5265: $00
    dec e                                         ; $5266: $1d
    nop                                           ; $5267: $00
    ld [bc], a                                    ; $5268: $02
    ld [de], a                                    ; $5269: $12
    adc e                                         ; $526a: $8b
    ld h, l                                       ; $526b: $65
    nop                                           ; $526c: $00
    ld [de], a                                    ; $526d: $12
    nop                                           ; $526e: $00
    cp c                                          ; $526f: $b9
    nop                                           ; $5270: $00
    ld a, [bc]                                    ; $5271: $0a
    ld [bc], a                                    ; $5272: $02
    dec [hl]                                      ; $5273: $35
    nop                                           ; $5274: $00
    ld [hl+], a                                   ; $5275: $22
    rrca                                          ; $5276: $0f
    nop                                           ; $5277: $00
    adc a                                         ; $5278: $8f
    inc c                                         ; $5279: $0c
    ld [$0004], sp                                ; $527a: $08 $04 $00
    ld a, [bc]                                    ; $527d: $0a
    nop                                           ; $527e: $00
    inc b                                         ; $527f: $04
    nop                                           ; $5280: $00
    rlca                                          ; $5281: $07
    nop                                           ; $5282: $00
    ld [$0600], sp                                ; $5283: $08 $00 $06
    nop                                           ; $5286: $00
    inc b                                         ; $5287: $04
    inc c                                         ; $5288: $0c
    nop                                           ; $5289: $00
    rst $38                                       ; $528a: $ff
    add hl, bc                                    ; $528b: $09
    ld [bc], a                                    ; $528c: $02
    ld sp, hl                                     ; $528d: $f9
    dec bc                                        ; $528e: $0b
    push af                                       ; $528f: $f5
    add hl, bc                                    ; $5290: $09
    db $fd                                        ; $5291: $fd
    ei                                            ; $5292: $fb
    db $fd                                        ; $5293: $fd
    ld [bc], a                                    ; $5294: $02
    sub [hl]                                      ; $5295: $96
    nop                                           ; $5296: $00
    ld [hl+], a                                   ; $5297: $22
    ld [bc], a                                    ; $5298: $02
    dec b                                         ; $5299: $05
    nop                                           ; $529a: $00
    ld [bc], a                                    ; $529b: $02
    nop                                           ; $529c: $00
    add hl, bc                                    ; $529d: $09
    nop                                           ; $529e: $00
    ld hl, $5020                                  ; $529f: $21 $20 $50
    nop                                           ; $52a2: $00
    jr nz, jr_0f8_52a5                            ; $52a3: $20 $00

jr_0f8_52a5:
    add d                                         ; $52a5: $82
    ld [bc], a                                    ; $52a6: $02
    dec b                                         ; $52a7: $05
    nop                                           ; $52a8: $00
    ld [hl-], a                                   ; $52a9: $32
    nop                                           ; $52aa: $00
    jr nz, jr_0f8_52b0                            ; $52ab: $20 $03

    nop                                           ; $52ad: $00
    add e                                         ; $52ae: $83
    add hl, bc                                    ; $52af: $09

jr_0f8_52b0:
    nop                                           ; $52b0: $00
    jr nz, @+$09                                  ; $52b1: $20 $07

    nop                                           ; $52b3: $00
    add c                                         ; $52b4: $81
    db $10                                        ; $52b5: $10
    inc bc                                        ; $52b6: $03
    nop                                           ; $52b7: $00
    ld [bc], a                                    ; $52b8: $02
    ld [$5484], sp                                ; $52b9: $08 $84 $54
    nop                                           ; $52bc: $00
    ld [$0200], sp                                ; $52bd: $08 $00 $02
    jr nz, jr_0f8_524f                            ; $52c0: $20 $8d

    ld d, c                                       ; $52c2: $51
    nop                                           ; $52c3: $00
    jr nz, jr_0f8_52c6                            ; $52c4: $20 $00

jr_0f8_52c6:
    inc b                                         ; $52c6: $04
    nop                                           ; $52c7: $00
    ld b, $00                                     ; $52c8: $06 $00
    ld c, b                                       ; $52ca: $48
    ld b, b                                       ; $52cb: $40
    jr nz, jr_0f8_52ce                            ; $52cc: $20 $00

jr_0f8_52ce:
    ld b, d                                       ; $52ce: $42
    inc b                                         ; $52cf: $04
    nop                                           ; $52d0: $00
    rst $38                                       ; $52d1: $ff
    dec bc                                        ; $52d2: $0b
    inc bc                                        ; $52d3: $03
    ld sp, hl                                     ; $52d4: $f9
    dec bc                                        ; $52d5: $0b
    push af                                       ; $52d6: $f5
    add hl, bc                                    ; $52d7: $09
    db $fc                                        ; $52d8: $fc
    ld a, [$02fb]                                 ; $52d9: $fa $fb $02
    dec bc                                        ; $52dc: $0b
    ei                                            ; $52dd: $fb
    add d                                         ; $52de: $82
    nop                                           ; $52df: $00
    ld bc, $0005                                  ; $52e0: $01 $05 $00
    adc a                                         ; $52e3: $8f
    ld [$4200], sp                                ; $52e4: $08 $00 $42
    ld b, b                                       ; $52e7: $40
    xor h                                         ; $52e8: $ac
    nop                                           ; $52e9: $00
    ld b, b                                       ; $52ea: $40
    nop                                           ; $52eb: $00
    ld a, [bc]                                    ; $52ec: $0a
    ld [bc], a                                    ; $52ed: $02
    dec h                                         ; $52ee: $25
    nop                                           ; $52ef: $00
    inc bc                                        ; $52f0: $03
    nop                                           ; $52f1: $00
    inc h                                         ; $52f2: $24
    inc bc                                        ; $52f3: $03
    nop                                           ; $52f4: $00
    add l                                         ; $52f5: $85
    ld de, $4400                                  ; $52f6: $11 $00 $44
    nop                                           ; $52f9: $00
    ld bc, $0003                                  ; $52fa: $01 $03 $00
    ld [bc], a                                    ; $52fd: $02
    add b                                         ; $52fe: $80
    add e                                         ; $52ff: $83
    ld b, b                                       ; $5300: $40
    nop                                           ; $5301: $00
    add b                                         ; $5302: $80
    inc bc                                        ; $5303: $03
    nop                                           ; $5304: $00
    adc l                                         ; $5305: $8d
    inc h                                         ; $5306: $24
    inc b                                         ; $5307: $04
    jp z, Jump_000_0400                           ; $5308: $ca $00 $04

    nop                                           ; $530b: $00
    ld hl, $9400                                  ; $530c: $21 $00 $94
    db $10                                        ; $530f: $10
    jr z, jr_0f8_5312                             ; $5310: $28 $00

jr_0f8_5312:
    ld e, b                                       ; $5312: $58
    inc bc                                        ; $5313: $03
    nop                                           ; $5314: $00
    adc c                                         ; $5315: $89
    add [hl]                                      ; $5316: $86
    ld [bc], a                                    ; $5317: $02
    dec d                                         ; $5318: $15
    nop                                           ; $5319: $00
    jp nz, Jump_0f8_4880                          ; $531a: $c2 $80 $48

    nop                                           ; $531d: $00
    ld bc, $001e                                  ; $531e: $01 $1e $00
    rst $38                                       ; $5321: $ff
    dec c                                         ; $5322: $0d

Call_0f8_5323:
    inc b                                         ; $5323: $04
    ld sp, hl                                     ; $5324: $f9
    dec bc                                        ; $5325: $0b
    push af                                       ; $5326: $f5
    add hl, bc                                    ; $5327: $09
    db $fc                                        ; $5328: $fc
    ld a, [$02fb]                                 ; $5329: $fa $fb $02
    ld bc, $0b04                                  ; $532c: $01 $04 $0b
    db $fc                                        ; $532f: $fc
    add d                                         ; $5330: $82
    nop                                           ; $5331: $00
    ld [bc], a                                    ; $5332: $02
    inc bc                                        ; $5333: $03
    nop                                           ; $5334: $00
    sub l                                         ; $5335: $95
    jr z, jr_0f8_5338                             ; $5336: $28 $00

jr_0f8_5338:
    inc b                                         ; $5338: $04
    nop                                           ; $5339: $00
    add b                                         ; $533a: $80
    nop                                           ; $533b: $00
    ld [hl-], a                                   ; $533c: $32
    ld [bc], a                                    ; $533d: $02
    dec b                                         ; $533e: $05
    nop                                           ; $533f: $00
    ld a, [bc]                                    ; $5340: $0a
    nop                                           ; $5341: $00
    ld b, b                                       ; $5342: $40
    nop                                           ; $5343: $00
    ld [$0400], sp                                ; $5344: $08 $00 $04
    nop                                           ; $5347: $00
    ld h, b                                       ; $5348: $60
    nop                                           ; $5349: $00
    ld bc, $0003                                  ; $534a: $01 $03 $00
    ld [bc], a                                    ; $534d: $02

jr_0f8_534e:
    ld [bc], a                                    ; $534e: $02
    add l                                         ; $534f: $85
    dec b                                         ; $5350: $05
    ld b, b                                       ; $5351: $40
    and b                                         ; $5352: $a0
    nop                                           ; $5353: $00
    ld c, b                                       ; $5354: $48
    inc bc                                        ; $5355: $03
    nop                                           ; $5356: $00
    add c                                         ; $5357: $81
    ld b, d                                       ; $5358: $42
    inc bc                                        ; $5359: $03
    nop                                           ; $535a: $00
    sub b                                         ; $535b: $90
    ld [hl-], a                                   ; $535c: $32
    ld [bc], a                                    ; $535d: $02
    add l                                         ; $535e: $85
    nop                                           ; $535f: $00
    ld a, [bc]                                    ; $5360: $0a
    nop                                           ; $5361: $00
    jr nz, jr_0f8_5364                            ; $5362: $20 $00

jr_0f8_5364:
    ld [hl+], a                                   ; $5364: $22
    jr nz, @-$2e                                  ; $5365: $20 $d0

    nop                                           ; $5367: $00
    add hl, hl                                    ; $5368: $29
    nop                                           ; $5369: $00
    ld [$0200], sp                                ; $536a: $08 $00 $02
    ld bc, $3281                                  ; $536d: $01 $81 $32
    inc bc                                        ; $5370: $03
    nop                                           ; $5371: $00
    add c                                         ; $5372: $81
    ld bc, $0007                                  ; $5373: $01 $07 $00
    add c                                         ; $5376: $81
    ld bc, $0005                                  ; $5377: $01 $05 $00
    add c                                         ; $537a: $81
    ld bc, $0005                                  ; $537b: $01 $05 $00
    add c                                         ; $537e: $81
    jr nz, jr_0f8_538c                            ; $537f: $20 $0b

    nop                                           ; $5381: $00
    add c                                         ; $5382: $81
    ld bc, $001e                                  ; $5383: $01 $1e $00
    rst $38                                       ; $5386: $ff
    dec bc                                        ; $5387: $0b
    inc bc                                        ; $5388: $03
    push af                                       ; $5389: $f5
    ld a, [bc]                                    ; $538a: $0a
    push af                                       ; $538b: $f5

jr_0f8_538c:
    rrca                                          ; $538c: $0f
    ld bc, $01f4                                  ; $538d: $01 $f4 $01
    db $fd                                        ; $5390: $fd
    ld bc, $0403                                  ; $5391: $01 $03 $04
    nop                                           ; $5394: $00
    add d                                         ; $5395: $82
    inc b                                         ; $5396: $04
    nop                                           ; $5397: $00
    ld [bc], a                                    ; $5398: $02
    inc b                                         ; $5399: $04
    ld [bc], a                                    ; $539a: $02
    nop                                           ; $539b: $00
    add d                                         ; $539c: $82
    add b                                         ; $539d: $80
    nop                                           ; $539e: $00
    ld [bc], a                                    ; $539f: $02
    add b                                         ; $53a0: $80
    add d                                         ; $53a1: $82
    ld bc, $0200                                  ; $53a2: $01 $00 $02
    ld bc, $0882                                  ; $53a5: $01 $82 $08
    nop                                           ; $53a8: $00
    ld [bc], a                                    ; $53a9: $02
    ld [$0002], sp                                ; $53aa: $08 $02 $00
    add d                                         ; $53ad: $82
    ld bc, $0200                                  ; $53ae: $01 $00 $02
    ld bc, $0006                                  ; $53b1: $01 $06 $00
    add d                                         ; $53b4: $82
    ld [$0200], sp                                ; $53b5: $08 $00 $02
    ld [$4086], sp                                ; $53b8: $08 $86 $40
    nop                                           ; $53bb: $00
    ld b, d                                       ; $53bc: $42
    ld b, b                                       ; $53bd: $40
    ld b, d                                       ; $53be: $42
    ld [bc], a                                    ; $53bf: $02
    ld [bc], a                                    ; $53c0: $02
    ld b, b                                       ; $53c1: $40
    ld [bc], a                                    ; $53c2: $02
    nop                                           ; $53c3: $00
    add d                                         ; $53c4: $82
    jr z, jr_0f8_53c7                             ; $53c5: $28 $00

jr_0f8_53c7:
    ld [bc], a                                    ; $53c7: $02
    jr z, jr_0f8_534e                             ; $53c8: $28 $84

    add b                                         ; $53ca: $80
    nop                                           ; $53cb: $00
    sub c                                         ; $53cc: $91
    add b                                         ; $53cd: $80
    ld [bc], a                                    ; $53ce: $02
    ld de, $0006                                  ; $53cf: $11 $06 $00
    add h                                         ; $53d2: $84
    jr nz, jr_0f8_53d5                            ; $53d3: $20 $00

jr_0f8_53d5:
    inc h                                         ; $53d5: $24
    jr nz, jr_0f8_53da                            ; $53d6: $20 $02

    inc b                                         ; $53d8: $04
    inc b                                         ; $53d9: $04

jr_0f8_53da:
    nop                                           ; $53da: $00
    add d                                         ; $53db: $82
    jr nz, jr_0f8_53de                            ; $53dc: $20 $00

jr_0f8_53de:
    ld [bc], a                                    ; $53de: $02
    jr nz, jr_0f8_53e3                            ; $53df: $20 $02

    nop                                           ; $53e1: $00
    add h                                         ; $53e2: $84

jr_0f8_53e3:
    ld bc, $1100                                  ; $53e3: $01 $00 $11
    ld bc, $1002                                  ; $53e6: $01 $02 $10
    ld a, [bc]                                    ; $53e9: $0a
    nop                                           ; $53ea: $00
    rst $38                                       ; $53eb: $ff
    dec bc                                        ; $53ec: $0b
    inc bc                                        ; $53ed: $03
    push af                                       ; $53ee: $f5
    ld a, [bc]                                    ; $53ef: $0a
    push af                                       ; $53f0: $f5
    rrca                                          ; $53f1: $0f
    nop                                           ; $53f2: $00
    push af                                       ; $53f3: $f5
    nop                                           ; $53f4: $00
    db $fd                                        ; $53f5: $fd
    nop                                           ; $53f6: $00
    inc b                                         ; $53f7: $04
    inc b                                         ; $53f8: $04
    nop                                           ; $53f9: $00
    add d                                         ; $53fa: $82
    inc b                                         ; $53fb: $04
    nop                                           ; $53fc: $00
    ld [bc], a                                    ; $53fd: $02
    inc b                                         ; $53fe: $04
    ld [bc], a                                    ; $53ff: $02
    nop                                           ; $5400: $00
    add d                                         ; $5401: $82
    add b                                         ; $5402: $80
    nop                                           ; $5403: $00
    ld [bc], a                                    ; $5404: $02
    add b                                         ; $5405: $80
    add d                                         ; $5406: $82
    inc b                                         ; $5407: $04
    nop                                           ; $5408: $00
    ld [bc], a                                    ; $5409: $02
    inc b                                         ; $540a: $04
    add h                                         ; $540b: $84
    ld [$0900], sp                                ; $540c: $08 $00 $09
    ld [$0103], sp                                ; $540f: $08 $03 $01
    add c                                         ; $5412: $81
    nop                                           ; $5413: $00

jr_0f8_5414:
    ld [bc], a                                    ; $5414: $02
    ld bc, $0004                                  ; $5415: $01 $04 $00
    add h                                         ; $5418: $84
    ld bc, $1100                                  ; $5419: $01 $00 $11
    ld bc, $1002                                  ; $541c: $01 $02 $10
    add [hl]                                      ; $541f: $86
    jr nz, jr_0f8_5422                            ; $5420: $20 $00

jr_0f8_5422:
    ld hl, $8120                                  ; $5422: $21 $20 $81
    ld bc, $8102                                  ; $5425: $01 $02 $81
    ld [bc], a                                    ; $5428: $02
    nop                                           ; $5429: $00
    add d                                         ; $542a: $82
    stop                                          ; $542b: $10 $00
    ld [bc], a                                    ; $542d: $02
    db $10                                        ; $542e: $10
    ld [bc], a                                    ; $542f: $02
    nop                                           ; $5430: $00
    add d                                         ; $5431: $82
    ld [$0200], sp                                ; $5432: $08 $00 $02
    ld [$0008], sp                                ; $5435: $08 $08 $00
    add d                                         ; $5438: $82
    inc b                                         ; $5439: $04
    nop                                           ; $543a: $00
    ld [bc], a                                    ; $543b: $02
    inc b                                         ; $543c: $04
    ld a, [bc]                                    ; $543d: $0a
    nop                                           ; $543e: $00
    add h                                         ; $543f: $84
    ld bc, $4100                                  ; $5440: $01 $00 $41
    ld bc, $4003                                  ; $5443: $01 $03 $40
    add c                                         ; $5446: $81
    nop                                           ; $5447: $00
    ld [bc], a                                    ; $5448: $02
    ld b, b                                       ; $5449: $40
    ld b, $00                                     ; $544a: $06 $00
    rst $38                                       ; $544c: $ff
    dec bc                                        ; $544d: $0b
    inc bc                                        ; $544e: $03
    push af                                       ; $544f: $f5
    ld a, [bc]                                    ; $5450: $0a
    push af                                       ; $5451: $f5
    rrca                                          ; $5452: $0f
    rst $38                                       ; $5453: $ff
    db $f4                                        ; $5454: $f4
    rst $38                                       ; $5455: $ff
    db $fd                                        ; $5456: $fd
    rst $38                                       ; $5457: $ff
    inc bc                                        ; $5458: $03
    inc b                                         ; $5459: $04
    nop                                           ; $545a: $00
    add d                                         ; $545b: $82
    inc b                                         ; $545c: $04
    nop                                           ; $545d: $00
    ld [bc], a                                    ; $545e: $02
    inc b                                         ; $545f: $04
    ld [bc], a                                    ; $5460: $02
    nop                                           ; $5461: $00
    add d                                         ; $5462: $82
    add b                                         ; $5463: $80
    nop                                           ; $5464: $00
    ld [bc], a                                    ; $5465: $02
    add b                                         ; $5466: $80
    add d                                         ; $5467: $82
    ld bc, $0200                                  ; $5468: $01 $00 $02
    ld bc, $0882                                  ; $546b: $01 $82 $08
    nop                                           ; $546e: $00
    ld [bc], a                                    ; $546f: $02
    ld [$0002], sp                                ; $5470: $08 $02 $00
    add d                                         ; $5473: $82
    ld bc, $0200                                  ; $5474: $01 $00 $02
    ld bc, $0006                                  ; $5477: $01 $06 $00
    add d                                         ; $547a: $82

jr_0f8_547b:
    ld [$0200], sp                                ; $547b: $08 $00 $02
    ld [$4086], sp                                ; $547e: $08 $86 $40
    nop                                           ; $5481: $00
    ld b, d                                       ; $5482: $42
    ld b, b                                       ; $5483: $40
    ld b, d                                       ; $5484: $42
    ld [bc], a                                    ; $5485: $02
    ld [bc], a                                    ; $5486: $02
    ld b, b                                       ; $5487: $40
    ld [bc], a                                    ; $5488: $02
    nop                                           ; $5489: $00
    add d                                         ; $548a: $82
    jr z, jr_0f8_548d                             ; $548b: $28 $00

jr_0f8_548d:
    ld [bc], a                                    ; $548d: $02
    jr z, jr_0f8_5414                             ; $548e: $28 $84

    add b                                         ; $5490: $80
    nop                                           ; $5491: $00
    sub c                                         ; $5492: $91
    add b                                         ; $5493: $80
    ld [bc], a                                    ; $5494: $02
    ld de, $0006                                  ; $5495: $11 $06 $00
    add h                                         ; $5498: $84
    jr nz, jr_0f8_549b                            ; $5499: $20 $00

jr_0f8_549b:
    inc h                                         ; $549b: $24
    jr nz, jr_0f8_54a0                            ; $549c: $20 $02

    inc b                                         ; $549e: $04
    inc b                                         ; $549f: $04

jr_0f8_54a0:
    nop                                           ; $54a0: $00
    add d                                         ; $54a1: $82
    jr nz, jr_0f8_54a4                            ; $54a2: $20 $00

jr_0f8_54a4:
    ld [bc], a                                    ; $54a4: $02
    jr nz, jr_0f8_54a9                            ; $54a5: $20 $02

    nop                                           ; $54a7: $00
    add h                                         ; $54a8: $84

jr_0f8_54a9:
    ld bc, $1100                                  ; $54a9: $01 $00 $11
    ld bc, $1002                                  ; $54ac: $01 $02 $10
    ld a, [bc]                                    ; $54af: $0a
    nop                                           ; $54b0: $00
    rst $38                                       ; $54b1: $ff
    dec bc                                        ; $54b2: $0b
    inc bc                                        ; $54b3: $03
    push af                                       ; $54b4: $f5
    ld a, [bc]                                    ; $54b5: $0a
    push af                                       ; $54b6: $f5
    rrca                                          ; $54b7: $0f
    cp $f5                                        ; $54b8: $fe $f5
    cp $fd                                        ; $54ba: $fe $fd
    cp $04                                        ; $54bc: $fe $04
    inc b                                         ; $54be: $04
    nop                                           ; $54bf: $00
    add d                                         ; $54c0: $82
    inc c                                         ; $54c1: $0c
    nop                                           ; $54c2: $00
    ld [bc], a                                    ; $54c3: $02
    inc c                                         ; $54c4: $0c
    ld [bc], a                                    ; $54c5: $02
    nop                                           ; $54c6: $00
    add d                                         ; $54c7: $82
    ret nz                                        ; $54c8: $c0

    nop                                           ; $54c9: $00
    ld [bc], a                                    ; $54ca: $02
    ret nz                                        ; $54cb: $c0

    add h                                         ; $54cc: $84
    ld b, $00                                     ; $54cd: $06 $00
    ld c, $06                                     ; $54cf: $0e $06
    ld [bc], a                                    ; $54d1: $02
    inc c                                         ; $54d2: $0c
    add d                                         ; $54d3: $82
    ld bc, $0200                                  ; $54d4: $01 $00 $02
    ld bc, $0382                                  ; $54d7: $01 $82 $03
    nop                                           ; $54da: $00

jr_0f8_54db:
    ld [bc], a                                    ; $54db: $02
    inc bc                                        ; $54dc: $03
    inc b                                         ; $54dd: $04
    nop                                           ; $54de: $00
    add h                                         ; $54df: $84
    ld bc, $1900                                  ; $54e0: $01 $00 $19
    ld bc, $1802                                  ; $54e3: $01 $02 $18
    add [hl]                                      ; $54e6: $86
    ld h, b                                       ; $54e7: $60
    nop                                           ; $54e8: $00
    ld h, e                                       ; $54e9: $63
    ld h, b                                       ; $54ea: $60
    jp Jump_000_0203                              ; $54eb: $c3 $03 $02


    pop bc                                        ; $54ee: $c1
    ld [bc], a                                    ; $54ef: $02
    nop                                           ; $54f0: $00
    add d                                         ; $54f1: $82
    jr c, jr_0f8_54f4                             ; $54f2: $38 $00

jr_0f8_54f4:
    ld [bc], a                                    ; $54f4: $02
    jr c, jr_0f8_547b                             ; $54f5: $38 $84

    add b                                         ; $54f7: $80
    nop                                           ; $54f8: $00
    sbc c                                         ; $54f9: $99
    add b                                         ; $54fa: $80
    ld [bc], a                                    ; $54fb: $02
    add hl, de                                    ; $54fc: $19
    ld b, $00                                     ; $54fd: $06 $00
    add h                                         ; $54ff: $84

jr_0f8_5500:
    ld b, b                                       ; $5500: $40
    nop                                           ; $5501: $00
    ld c, h                                       ; $5502: $4c
    ld b, b                                       ; $5503: $40
    ld [bc], a                                    ; $5504: $02
    inc c                                         ; $5505: $0c
    inc b                                         ; $5506: $04
    nop                                           ; $5507: $00
    add d                                         ; $5508: $82
    ld b, b                                       ; $5509: $40
    nop                                           ; $550a: $00
    ld [bc], a                                    ; $550b: $02
    ld b, b                                       ; $550c: $40
    ld [bc], a                                    ; $550d: $02
    nop                                           ; $550e: $00
    add h                                         ; $550f: $84
    inc bc                                        ; $5510: $03
    nop                                           ; $5511: $00
    ld h, e                                       ; $5512: $63
    inc bc                                        ; $5513: $03
    ld [bc], a                                    ; $5514: $02
    ld h, b                                       ; $5515: $60
    add d                                         ; $5516: $82
    ld b, b                                       ; $5517: $40
    nop                                           ; $5518: $00
    ld [bc], a                                    ; $5519: $02
    ld b, b                                       ; $551a: $40
    ld b, $00                                     ; $551b: $06 $00
    rst $38                                       ; $551d: $ff
    dec bc                                        ; $551e: $0b
    inc bc                                        ; $551f: $03
    push af                                       ; $5520: $f5
    ld a, [bc]                                    ; $5521: $0a
    push af                                       ; $5522: $f5
    rrca                                          ; $5523: $0f
    db $fd                                        ; $5524: $fd
    db $f4                                        ; $5525: $f4
    db $fd                                        ; $5526: $fd
    db $fc                                        ; $5527: $fc
    db $fd                                        ; $5528: $fd

jr_0f8_5529:
    inc bc                                        ; $5529: $03
    inc b                                         ; $552a: $04
    nop                                           ; $552b: $00
    add d                                         ; $552c: $82
    inc bc                                        ; $552d: $03
    nop                                           ; $552e: $00
    ld [bc], a                                    ; $552f: $02
    inc bc                                        ; $5530: $03
    ld [bc], a                                    ; $5531: $02
    nop                                           ; $5532: $00
    add d                                         ; $5533: $82
    ret nz                                        ; $5534: $c0

    nop                                           ; $5535: $00
    ld [bc], a                                    ; $5536: $02
    ret nz                                        ; $5537: $c0

    add h                                         ; $5538: $84
    ld bc, $0d00                                  ; $5539: $01 $00 $0d
    ld bc, $0c02                                  ; $553c: $01 $02 $0c
    inc b                                         ; $553f: $04
    nop                                           ; $5540: $00
    add d                                         ; $5541: $82
    inc bc                                        ; $5542: $03
    nop                                           ; $5543: $00
    ld [bc], a                                    ; $5544: $02
    inc bc                                        ; $5545: $03
    ld b, $00                                     ; $5546: $06 $00
    add d                                         ; $5548: $82
    ld b, $00                                     ; $5549: $06 $00
    ld [bc], a                                    ; $554b: $02
    ld b, $86                                     ; $554c: $06 $86

jr_0f8_554e:
    ld h, b                                       ; $554e: $60
    nop                                           ; $554f: $00
    ld h, e                                       ; $5550: $63
    ld h, b                                       ; $5551: $60
    inc sp                                        ; $5552: $33
    inc bc                                        ; $5553: $03
    ld [bc], a                                    ; $5554: $02
    jr nc, jr_0f8_54db                            ; $5555: $30 $84

    add b                                         ; $5557: $80
    nop                                           ; $5558: $00
    or [hl]                                       ; $5559: $b6
    add b                                         ; $555a: $80
    ld [bc], a                                    ; $555b: $02
    ld [hl], $84                                  ; $555c: $36 $84
    ld h, b                                       ; $555e: $60
    nop                                           ; $555f: $00
    ld l, l                                       ; $5560: $6d
    ld h, b                                       ; $5561: $60
    ld [bc], a                                    ; $5562: $02
    dec c                                         ; $5563: $0d
    ld b, $00                                     ; $5564: $06 $00
    add h                                         ; $5566: $84
    jr nc, jr_0f8_5569                            ; $5567: $30 $00

jr_0f8_5569:
    inc sp                                        ; $5569: $33
    jr nc, jr_0f8_556e                            ; $556a: $30 $02

    inc bc                                        ; $556c: $03
    inc b                                         ; $556d: $04

jr_0f8_556e:
    nop                                           ; $556e: $00
    add d                                         ; $556f: $82
    jr nc, jr_0f8_5572                            ; $5570: $30 $00

jr_0f8_5572:
    ld [bc], a                                    ; $5572: $02
    jr nc, jr_0f8_5577                            ; $5573: $30 $02

    nop                                           ; $5575: $00
    add h                                         ; $5576: $84

jr_0f8_5577:
    inc bc                                        ; $5577: $03
    nop                                           ; $5578: $00
    dec de                                        ; $5579: $1b
    inc bc                                        ; $557a: $03
    ld [bc], a                                    ; $557b: $02
    jr jr_0f8_5500                                ; $557c: $18 $82

    ld b, b                                       ; $557e: $40
    nop                                           ; $557f: $00
    ld [bc], a                                    ; $5580: $02
    ld b, b                                       ; $5581: $40
    ld b, $00                                     ; $5582: $06 $00
    rst $38                                       ; $5584: $ff
    dec bc                                        ; $5585: $0b
    inc bc                                        ; $5586: $03
    push af                                       ; $5587: $f5
    ld a, [bc]                                    ; $5588: $0a
    push af                                       ; $5589: $f5
    rrca                                          ; $558a: $0f
    db $fc                                        ; $558b: $fc
    push af                                       ; $558c: $f5
    db $fc                                        ; $558d: $fc
    db $fd                                        ; $558e: $fd
    db $fc                                        ; $558f: $fc
    inc b                                         ; $5590: $04
    inc b                                         ; $5591: $04
    nop                                           ; $5592: $00
    add d                                         ; $5593: $82
    inc c                                         ; $5594: $0c
    nop                                           ; $5595: $00
    ld [bc], a                                    ; $5596: $02
    inc c                                         ; $5597: $0c
    ld [bc], a                                    ; $5598: $02
    nop                                           ; $5599: $00
    add d                                         ; $559a: $82
    ret nz                                        ; $559b: $c0

    nop                                           ; $559c: $00
    ld [bc], a                                    ; $559d: $02
    ret nz                                        ; $559e: $c0

    add h                                         ; $559f: $84
    ld b, $00                                     ; $55a0: $06 $00
    ld [hl], $06                                  ; $55a2: $36 $06
    ld [bc], a                                    ; $55a4: $02
    jr nc, jr_0f8_5529                            ; $55a5: $30 $82

    ld bc, $0200                                  ; $55a7: $01 $00 $02
    ld bc, $0382                                  ; $55aa: $01 $82 $03
    nop                                           ; $55ad: $00
    ld [bc], a                                    ; $55ae: $02
    inc bc                                        ; $55af: $03
    inc b                                         ; $55b0: $04
    nop                                           ; $55b1: $00
    add h                                         ; $55b2: $84

jr_0f8_55b3:
    ld bc, $1900                                  ; $55b3: $01 $00 $19
    ld bc, $1802                                  ; $55b6: $01 $02 $18
    add [hl]                                      ; $55b9: $86
    ld h, b                                       ; $55ba: $60
    nop                                           ; $55bb: $00
    ld h, e                                       ; $55bc: $63
    ld h, b                                       ; $55bd: $60
    jp Jump_000_0203                              ; $55be: $c3 $03 $02


    pop bc                                        ; $55c1: $c1
    ld [bc], a                                    ; $55c2: $02
    nop                                           ; $55c3: $00
    add d                                         ; $55c4: $82
    jr c, jr_0f8_55c7                             ; $55c5: $38 $00

jr_0f8_55c7:
    ld [bc], a                                    ; $55c7: $02
    jr c, jr_0f8_554e                             ; $55c8: $38 $84

    add b                                         ; $55ca: $80
    nop                                           ; $55cb: $00
    or c                                          ; $55cc: $b1
    add b                                         ; $55cd: $80
    ld [bc], a                                    ; $55ce: $02
    ld sp, $0006                                  ; $55cf: $31 $06 $00
    add h                                         ; $55d2: $84
    ld b, b                                       ; $55d3: $40
    nop                                           ; $55d4: $00
    ld c, h                                       ; $55d5: $4c
    ld b, b                                       ; $55d6: $40
    ld [bc], a                                    ; $55d7: $02

jr_0f8_55d8:
    inc c                                         ; $55d8: $0c
    inc b                                         ; $55d9: $04
    nop                                           ; $55da: $00
    add d                                         ; $55db: $82
    ld b, b                                       ; $55dc: $40
    nop                                           ; $55dd: $00
    ld [bc], a                                    ; $55de: $02
    ld b, b                                       ; $55df: $40
    ld [bc], a                                    ; $55e0: $02
    nop                                           ; $55e1: $00
    add h                                         ; $55e2: $84
    inc bc                                        ; $55e3: $03
    nop                                           ; $55e4: $00
    ld h, e                                       ; $55e5: $63
    inc bc                                        ; $55e6: $03
    ld [bc], a                                    ; $55e7: $02
    ld h, b                                       ; $55e8: $60
    add d                                         ; $55e9: $82
    ld b, b                                       ; $55ea: $40
    nop                                           ; $55eb: $00
    ld [bc], a                                    ; $55ec: $02
    ld b, b                                       ; $55ed: $40
    ld b, $00                                     ; $55ee: $06 $00
    rst $38                                       ; $55f0: $ff
    dec c                                         ; $55f1: $0d
    inc b                                         ; $55f2: $04
    push af                                       ; $55f3: $f5
    ld a, [bc]                                    ; $55f4: $0a
    push af                                       ; $55f5: $f5
    rrca                                          ; $55f6: $0f
    db $fd                                        ; $55f7: $fd
    db $f4                                        ; $55f8: $f4
    ld a, [$fbfc]                                 ; $55f9: $fa $fc $fb
    inc bc                                        ; $55fc: $03
    ld a, [bc]                                    ; $55fd: $0a
    db $fc                                        ; $55fe: $fc
    add d                                         ; $55ff: $82
    inc bc                                        ; $5600: $03
    nop                                           ; $5601: $00
    ld [bc], a                                    ; $5602: $02
    inc bc                                        ; $5603: $03
    ld [bc], a                                    ; $5604: $02
    nop                                           ; $5605: $00
    add d                                         ; $5606: $82
    ret nz                                        ; $5607: $c0

    nop                                           ; $5608: $00
    ld [bc], a                                    ; $5609: $02
    ret nz                                        ; $560a: $c0

    add h                                         ; $560b: $84
    ld bc, $0d00                                  ; $560c: $01 $00 $0d
    ld bc, $0c02                                  ; $560f: $01 $02 $0c
    inc b                                         ; $5612: $04
    nop                                           ; $5613: $00

jr_0f8_5614:
    add d                                         ; $5614: $82
    inc bc                                        ; $5615: $03
    nop                                           ; $5616: $00
    ld [bc], a                                    ; $5617: $02
    inc bc                                        ; $5618: $03
    ld [$8200], sp                                ; $5619: $08 $00 $82
    jr nz, jr_0f8_561e                            ; $561c: $20 $00

jr_0f8_561e:
    ld [bc], a                                    ; $561e: $02
    jr nz, @-$7c                                  ; $561f: $20 $82

    ld b, $00                                     ; $5621: $06 $00
    ld [bc], a                                    ; $5623: $02
    ld b, $86                                     ; $5624: $06 $86
    ld h, b                                       ; $5626: $60
    nop                                           ; $5627: $00
    ld h, e                                       ; $5628: $63
    ld h, b                                       ; $5629: $60
    inc sp                                        ; $562a: $33
    inc bc                                        ; $562b: $03
    ld [bc], a                                    ; $562c: $02
    jr nc, jr_0f8_55b3                            ; $562d: $30 $84

    add b                                         ; $562f: $80
    nop                                           ; $5630: $00
    or [hl]                                       ; $5631: $b6
    add b                                         ; $5632: $80
    ld [bc], a                                    ; $5633: $02
    ld [hl], $84                                  ; $5634: $36 $84
    ld h, b                                       ; $5636: $60
    nop                                           ; $5637: $00
    ld l, l                                       ; $5638: $6d
    ld h, b                                       ; $5639: $60
    ld [bc], a                                    ; $563a: $02
    dec c                                         ; $563b: $0d
    inc b                                         ; $563c: $04
    nop                                           ; $563d: $00
    add h                                         ; $563e: $84
    jr nc, jr_0f8_5641                            ; $563f: $30 $00

jr_0f8_5641:
    inc sp                                        ; $5641: $33
    jr nc, jr_0f8_5646                            ; $5642: $30 $02

    inc bc                                        ; $5644: $03
    inc b                                         ; $5645: $04

jr_0f8_5646:
    nop                                           ; $5646: $00
    add d                                         ; $5647: $82
    jr nc, jr_0f8_564a                            ; $5648: $30 $00

jr_0f8_564a:
    ld [bc], a                                    ; $564a: $02
    jr nc, jr_0f8_564f                            ; $564b: $30 $02

    nop                                           ; $564d: $00
    add h                                         ; $564e: $84

jr_0f8_564f:
    inc bc                                        ; $564f: $03
    nop                                           ; $5650: $00
    dec de                                        ; $5651: $1b
    inc bc                                        ; $5652: $03
    ld [bc], a                                    ; $5653: $02
    jr jr_0f8_55d8                                ; $5654: $18 $82

    ld b, b                                       ; $5656: $40
    nop                                           ; $5657: $00
    ld [bc], a                                    ; $5658: $02
    ld b, b                                       ; $5659: $40
    add d                                         ; $565a: $82
    ld [bc], a                                    ; $565b: $02
    nop                                           ; $565c: $00
    ld [bc], a                                    ; $565d: $02
    ld [bc], a                                    ; $565e: $02
    ld [bc], a                                    ; $565f: $02
    nop                                           ; $5660: $00
    add d                                         ; $5661: $82
    stop                                          ; $5662: $10 $00
    ld [bc], a                                    ; $5664: $02
    db $10                                        ; $5665: $10
    add d                                         ; $5666: $82
    ld bc, $0200                                  ; $5667: $01 $00 $02
    ld bc, $0018                                  ; $566a: $01 $18 $00
    rst $38                                       ; $566d: $ff
    rrca                                          ; $566e: $0f
    dec b                                         ; $566f: $05
    push af                                       ; $5670: $f5
    ld a, [bc]                                    ; $5671: $0a
    push af                                       ; $5672: $f5
    rrca                                          ; $5673: $0f
    db $fc                                        ; $5674: $fc
    push af                                       ; $5675: $f5
    ld a, [$fafd]                                 ; $5676: $fa $fd $fa
    inc b                                         ; $5679: $04
    ld a, [bc]                                    ; $567a: $0a
    ei                                            ; $567b: $fb
    ld a, [bc]                                    ; $567c: $0a
    rst $38                                       ; $567d: $ff
    add d                                         ; $567e: $82
    inc c                                         ; $567f: $0c
    nop                                           ; $5680: $00
    ld [bc], a                                    ; $5681: $02
    inc c                                         ; $5682: $0c
    ld [bc], a                                    ; $5683: $02
    nop                                           ; $5684: $00
    add d                                         ; $5685: $82
    ret nz                                        ; $5686: $c0

    nop                                           ; $5687: $00
    ld [bc], a                                    ; $5688: $02
    ret nz                                        ; $5689: $c0

    add h                                         ; $568a: $84
    ld b, $00                                     ; $568b: $06 $00
    ld [hl], $06                                  ; $568d: $36 $06
    ld [bc], a                                    ; $568f: $02
    jr nc, jr_0f8_5614                            ; $5690: $30 $82

    ld bc, $0200                                  ; $5692: $01 $00 $02
    ld bc, $0382                                  ; $5695: $01 $82 $03
    nop                                           ; $5698: $00
    ld [bc], a                                    ; $5699: $02
    inc bc                                        ; $569a: $03
    ld [bc], a                                    ; $569b: $02
    nop                                           ; $569c: $00
    add d                                         ; $569d: $82
    jr nz, jr_0f8_56a0                            ; $569e: $20 $00

jr_0f8_56a0:
    ld [bc], a                                    ; $56a0: $02
    jr nz, jr_0f8_56a5                            ; $56a1: $20 $02

    nop                                           ; $56a3: $00
    add h                                         ; $56a4: $84

jr_0f8_56a5:
    ld bc, $1900                                  ; $56a5: $01 $00 $19
    ld bc, $1802                                  ; $56a8: $01 $02 $18
    add [hl]                                      ; $56ab: $86
    ld h, b                                       ; $56ac: $60
    nop                                           ; $56ad: $00
    ld h, e                                       ; $56ae: $63
    ld h, b                                       ; $56af: $60
    jp Jump_000_0203                              ; $56b0: $c3 $03 $02


    pop bc                                        ; $56b3: $c1
    ld [bc], a                                    ; $56b4: $02
    nop                                           ; $56b5: $00
    add d                                         ; $56b6: $82
    jr c, jr_0f8_56b9                             ; $56b7: $38 $00

jr_0f8_56b9:
    ld [bc], a                                    ; $56b9: $02
    jr c, @-$7a                                   ; $56ba: $38 $84

    add b                                         ; $56bc: $80
    nop                                           ; $56bd: $00
    or c                                          ; $56be: $b1
    add b                                         ; $56bf: $80

jr_0f8_56c0:
    ld [bc], a                                    ; $56c0: $02
    ld sp, $0004                                  ; $56c1: $31 $04 $00
    add [hl]                                      ; $56c4: $86
    ld b, b                                       ; $56c5: $40
    nop                                           ; $56c6: $00
    ld b, b                                       ; $56c7: $40
    nop                                           ; $56c8: $00
    ld c, h                                       ; $56c9: $4c
    ld b, b                                       ; $56ca: $40
    ld [bc], a                                    ; $56cb: $02
    inc c                                         ; $56cc: $0c
    inc b                                         ; $56cd: $04
    nop                                           ; $56ce: $00
    add d                                         ; $56cf: $82
    ld b, b                                       ; $56d0: $40
    nop                                           ; $56d1: $00
    ld [bc], a                                    ; $56d2: $02
    ld b, b                                       ; $56d3: $40
    ld [bc], a                                    ; $56d4: $02
    nop                                           ; $56d5: $00
    add h                                         ; $56d6: $84
    inc bc                                        ; $56d7: $03
    nop                                           ; $56d8: $00
    ld h, e                                       ; $56d9: $63
    inc bc                                        ; $56da: $03
    ld [bc], a                                    ; $56db: $02
    ld h, b                                       ; $56dc: $60
    add d                                         ; $56dd: $82
    ld b, b                                       ; $56de: $40
    nop                                           ; $56df: $00
    ld [bc], a                                    ; $56e0: $02
    ld b, b                                       ; $56e1: $40
    add d                                         ; $56e2: $82
    ld [$0200], sp                                ; $56e3: $08 $00 $02
    ld [$2082], sp                                ; $56e6: $08 $82 $20
    nop                                           ; $56e9: $00

jr_0f8_56ea:
    ld [bc], a                                    ; $56ea: $02
    db $10                                        ; $56eb: $10
    add h                                         ; $56ec: $84
    ld bc, $2100                                  ; $56ed: $01 $00 $21
    ld bc, $2002                                  ; $56f0: $01 $02 $20
    jr jr_0f8_56f5                                ; $56f3: $18 $00

jr_0f8_56f5:
    ld [bc], a                                    ; $56f5: $02
    ld bc, $001e                                  ; $56f6: $01 $1e $00
    rst $38                                       ; $56f9: $ff
    rrca                                          ; $56fa: $0f
    dec b                                         ; $56fb: $05
    push af                                       ; $56fc: $f5
    ld a, [bc]                                    ; $56fd: $0a
    push af                                       ; $56fe: $f5
    rrca                                          ; $56ff: $0f
    ei                                            ; $5700: $fb
    db $f4                                        ; $5701: $f4
    ld a, [$f9fc]                                 ; $5702: $fa $fc $f9
    inc bc                                        ; $5705: $03
    add hl, bc                                    ; $5706: $09
    db $fc                                        ; $5707: $fc
    add hl, bc                                    ; $5708: $09
    nop                                           ; $5709: $00
    add d                                         ; $570a: $82
    inc bc                                        ; $570b: $03
    nop                                           ; $570c: $00
    ld [bc], a                                    ; $570d: $02
    inc bc                                        ; $570e: $03
    ld [bc], a                                    ; $570f: $02
    nop                                           ; $5710: $00
    add d                                         ; $5711: $82
    ret nz                                        ; $5712: $c0

    nop                                           ; $5713: $00
    ld [bc], a                                    ; $5714: $02
    ret nz                                        ; $5715: $c0

    add h                                         ; $5716: $84
    ld bc, $0d00                                  ; $5717: $01 $00 $0d
    ld bc, $0c02                                  ; $571a: $01 $02 $0c
    inc b                                         ; $571d: $04
    nop                                           ; $571e: $00
    add d                                         ; $571f: $82
    inc bc                                        ; $5720: $03
    nop                                           ; $5721: $00
    ld [bc], a                                    ; $5722: $02
    inc bc                                        ; $5723: $03
    ld [bc], a                                    ; $5724: $02
    nop                                           ; $5725: $00
    add d                                         ; $5726: $82
    ld [$0200], sp                                ; $5727: $08 $00 $02
    ld [$0002], sp                                ; $572a: $08 $02 $00
    add d                                         ; $572d: $82
    ld b, $00                                     ; $572e: $06 $00
    ld [bc], a                                    ; $5730: $02
    ld b, $86                                     ; $5731: $06 $86
    ld h, b                                       ; $5733: $60
    nop                                           ; $5734: $00
    ld h, e                                       ; $5735: $63
    ld h, b                                       ; $5736: $60
    inc sp                                        ; $5737: $33
    inc bc                                        ; $5738: $03
    ld [bc], a                                    ; $5739: $02
    jr nc, jr_0f8_56c0                            ; $573a: $30 $84

    add b                                         ; $573c: $80
    nop                                           ; $573d: $00
    or [hl]                                       ; $573e: $b6
    add b                                         ; $573f: $80
    ld [bc], a                                    ; $5740: $02
    ld [hl], $84                                  ; $5741: $36 $84
    ld h, b                                       ; $5743: $60
    nop                                           ; $5744: $00
    ld l, l                                       ; $5745: $6d
    ld h, b                                       ; $5746: $60
    ld [bc], a                                    ; $5747: $02
    dec c                                         ; $5748: $0d
    inc b                                         ; $5749: $04
    nop                                           ; $574a: $00
    add d                                         ; $574b: $82
    stop                                          ; $574c: $10 $00
    ld [bc], a                                    ; $574e: $02
    db $10                                        ; $574f: $10
    add h                                         ; $5750: $84
    jr nc, jr_0f8_5753                            ; $5751: $30 $00

jr_0f8_5753:
    inc sp                                        ; $5753: $33
    jr nc, jr_0f8_5758                            ; $5754: $30 $02

    inc bc                                        ; $5756: $03
    inc b                                         ; $5757: $04

jr_0f8_5758:
    nop                                           ; $5758: $00
    add d                                         ; $5759: $82
    jr nc, jr_0f8_575c                            ; $575a: $30 $00

jr_0f8_575c:
    ld [bc], a                                    ; $575c: $02
    jr nc, jr_0f8_5761                            ; $575d: $30 $02

    nop                                           ; $575f: $00
    add h                                         ; $5760: $84

jr_0f8_5761:
    inc bc                                        ; $5761: $03
    nop                                           ; $5762: $00
    dec de                                        ; $5763: $1b
    inc bc                                        ; $5764: $03
    ld [bc], a                                    ; $5765: $02
    jr jr_0f8_56ea                                ; $5766: $18 $82

    ld b, b                                       ; $5768: $40
    nop                                           ; $5769: $00
    ld [bc], a                                    ; $576a: $02
    ld b, b                                       ; $576b: $40
    add d                                         ; $576c: $82
    ld [bc], a                                    ; $576d: $02
    nop                                           ; $576e: $00
    ld [bc], a                                    ; $576f: $02
    ld [bc], a                                    ; $5770: $02
    add c                                         ; $5771: $81
    ld [$0003], sp                                ; $5772: $08 $03 $00
    add h                                         ; $5775: $84
    ld bc, $8100                                  ; $5776: $01 $00 $81
    ld bc, $8002                                  ; $5779: $01 $02 $80
    jr jr_0f8_577e                                ; $577c: $18 $00

jr_0f8_577e:
    ld [bc], a                                    ; $577e: $02
    ld bc, $001e                                  ; $577f: $01 $1e $00
    rst $38                                       ; $5782: $ff
    rrca                                          ; $5783: $0f
    dec b                                         ; $5784: $05
    push af                                       ; $5785: $f5

jr_0f8_5786:
    ld a, [bc]                                    ; $5786: $0a
    push af                                       ; $5787: $f5
    rrca                                          ; $5788: $0f
    ld a, [$f8f5]                                 ; $5789: $fa $f5 $f8
    db $fd                                        ; $578c: $fd
    ld hl, sp+$04                                 ; $578d: $f8 $04
    ld [$08fc], sp                                ; $578f: $08 $fc $08
    rst $38                                       ; $5792: $ff
    add d                                         ; $5793: $82
    inc c                                         ; $5794: $0c
    nop                                           ; $5795: $00
    ld [bc], a                                    ; $5796: $02
    inc c                                         ; $5797: $0c
    ld [bc], a                                    ; $5798: $02
    nop                                           ; $5799: $00
    add d                                         ; $579a: $82
    ret nz                                        ; $579b: $c0

    nop                                           ; $579c: $00
    ld [bc], a                                    ; $579d: $02
    ret nz                                        ; $579e: $c0

    add h                                         ; $579f: $84
    ld b, $00                                     ; $57a0: $06 $00
    ld [hl], $06                                  ; $57a2: $36 $06
    ld [bc], a                                    ; $57a4: $02
    jr nc, @-$7c                                  ; $57a5: $30 $82

    ld bc, $0200                                  ; $57a7: $01 $00 $02
    ld bc, $0382                                  ; $57aa: $01 $82 $03
    nop                                           ; $57ad: $00
    ld [bc], a                                    ; $57ae: $02
    inc bc                                        ; $57af: $03
    ld [bc], a                                    ; $57b0: $02
    nop                                           ; $57b1: $00
    add d                                         ; $57b2: $82
    jr nz, jr_0f8_57b5                            ; $57b3: $20 $00

jr_0f8_57b5:
    ld [bc], a                                    ; $57b5: $02
    jr nz, jr_0f8_57ba                            ; $57b6: $20 $02

    nop                                           ; $57b8: $00
    add h                                         ; $57b9: $84

jr_0f8_57ba:
    ld bc, $1900                                  ; $57ba: $01 $00 $19
    ld bc, $1802                                  ; $57bd: $01 $02 $18
    add [hl]                                      ; $57c0: $86
    ld h, b                                       ; $57c1: $60
    nop                                           ; $57c2: $00
    ld h, e                                       ; $57c3: $63
    ld h, b                                       ; $57c4: $60
    jp Jump_000_0203                              ; $57c5: $c3 $03 $02


    pop bc                                        ; $57c8: $c1
    ld [bc], a                                    ; $57c9: $02
    nop                                           ; $57ca: $00
    add d                                         ; $57cb: $82
    jr c, jr_0f8_57ce                             ; $57cc: $38 $00

jr_0f8_57ce:
    ld [bc], a                                    ; $57ce: $02
    jr c, @-$7a                                   ; $57cf: $38 $84

    add b                                         ; $57d1: $80
    nop                                           ; $57d2: $00
    or c                                          ; $57d3: $b1
    add b                                         ; $57d4: $80

jr_0f8_57d5:
    ld [bc], a                                    ; $57d5: $02
    ld sp, $0004                                  ; $57d6: $31 $04 $00
    add [hl]                                      ; $57d9: $86
    ld h, b                                       ; $57da: $60
    nop                                           ; $57db: $00
    ld b, b                                       ; $57dc: $40
    nop                                           ; $57dd: $00
    ld c, h                                       ; $57de: $4c
    ld b, b                                       ; $57df: $40
    ld [bc], a                                    ; $57e0: $02
    inc c                                         ; $57e1: $0c
    inc b                                         ; $57e2: $04
    nop                                           ; $57e3: $00
    add d                                         ; $57e4: $82
    ld b, b                                       ; $57e5: $40
    nop                                           ; $57e6: $00
    ld [bc], a                                    ; $57e7: $02
    ld b, b                                       ; $57e8: $40
    ld [bc], a                                    ; $57e9: $02

jr_0f8_57ea:
    nop                                           ; $57ea: $00
    add h                                         ; $57eb: $84
    inc bc                                        ; $57ec: $03
    nop                                           ; $57ed: $00
    ld h, e                                       ; $57ee: $63
    inc bc                                        ; $57ef: $03
    ld [bc], a                                    ; $57f0: $02
    ld h, b                                       ; $57f1: $60
    add d                                         ; $57f2: $82
    ld b, b                                       ; $57f3: $40
    nop                                           ; $57f4: $00
    ld [bc], a                                    ; $57f5: $02
    ld b, b                                       ; $57f6: $40
    add d                                         ; $57f7: $82
    inc c                                         ; $57f8: $0c
    nop                                           ; $57f9: $00
    ld [bc], a                                    ; $57fa: $02
    inc c                                         ; $57fb: $0c
    add d                                         ; $57fc: $82
    jr nz, jr_0f8_57ff                            ; $57fd: $20 $00

jr_0f8_57ff:
    ld [bc], a                                    ; $57ff: $02
    jr nc, jr_0f8_5786                            ; $5800: $30 $84

    inc bc                                        ; $5802: $03
    nop                                           ; $5803: $00
    ld b, e                                       ; $5804: $43
    inc bc                                        ; $5805: $03
    ld [bc], a                                    ; $5806: $02
    ld b, b                                       ; $5807: $40
    jr jr_0f8_580a                                ; $5808: $18 $00

jr_0f8_580a:
    ld [bc], a                                    ; $580a: $02
    ld bc, $001e                                  ; $580b: $01 $1e $00
    rst $38                                       ; $580e: $ff
    rrca                                          ; $580f: $0f
    dec b                                         ; $5810: $05
    push af                                       ; $5811: $f5
    ld a, [bc]                                    ; $5812: $0a
    push af                                       ; $5813: $f5
    rrca                                          ; $5814: $0f
    ld sp, hl                                     ; $5815: $f9
    db $f4                                        ; $5816: $f4
    ld hl, sp-$04                                 ; $5817: $f8 $fc
    rst $30                                       ; $5819: $f7
    inc bc                                        ; $581a: $03
    rlca                                          ; $581b: $07
    db $fc                                        ; $581c: $fc
    rlca                                          ; $581d: $07
    nop                                           ; $581e: $00
    add d                                         ; $581f: $82
    inc bc                                        ; $5820: $03
    nop                                           ; $5821: $00
    ld [bc], a                                    ; $5822: $02
    inc bc                                        ; $5823: $03
    ld [bc], a                                    ; $5824: $02
    nop                                           ; $5825: $00
    add d                                         ; $5826: $82
    ret nz                                        ; $5827: $c0

    nop                                           ; $5828: $00
    ld [bc], a                                    ; $5829: $02
    ret nz                                        ; $582a: $c0

    add h                                         ; $582b: $84
    ld bc, $0d00                                  ; $582c: $01 $00 $0d
    ld bc, $0c02                                  ; $582f: $01 $02 $0c
    inc b                                         ; $5832: $04
    nop                                           ; $5833: $00
    add d                                         ; $5834: $82
    inc bc                                        ; $5835: $03
    nop                                           ; $5836: $00
    ld [bc], a                                    ; $5837: $02
    inc bc                                        ; $5838: $03
    ld [bc], a                                    ; $5839: $02
    nop                                           ; $583a: $00
    add d                                         ; $583b: $82
    jr jr_0f8_583e                                ; $583c: $18 $00

jr_0f8_583e:
    ld [bc], a                                    ; $583e: $02
    jr jr_0f8_5843                                ; $583f: $18 $02

    nop                                           ; $5841: $00
    add d                                         ; $5842: $82

jr_0f8_5843:
    ld b, $00                                     ; $5843: $06 $00
    ld [bc], a                                    ; $5845: $02
    ld b, $86                                     ; $5846: $06 $86
    ld h, b                                       ; $5848: $60
    nop                                           ; $5849: $00
    ld h, e                                       ; $584a: $63
    ld h, b                                       ; $584b: $60
    inc sp                                        ; $584c: $33
    inc bc                                        ; $584d: $03
    ld [bc], a                                    ; $584e: $02
    jr nc, jr_0f8_57d5                            ; $584f: $30 $84

    add b                                         ; $5851: $80
    nop                                           ; $5852: $00
    or [hl]                                       ; $5853: $b6
    add b                                         ; $5854: $80
    ld [bc], a                                    ; $5855: $02
    ld [hl], $84                                  ; $5856: $36 $84
    ld h, b                                       ; $5858: $60
    nop                                           ; $5859: $00
    ld l, l                                       ; $585a: $6d
    ld h, b                                       ; $585b: $60
    ld [bc], a                                    ; $585c: $02
    dec c                                         ; $585d: $0d
    inc b                                         ; $585e: $04
    nop                                           ; $585f: $00
    add d                                         ; $5860: $82
    jr jr_0f8_5863                                ; $5861: $18 $00

jr_0f8_5863:
    ld [bc], a                                    ; $5863: $02
    jr jr_0f8_57ea                                ; $5864: $18 $84

    jr nc, jr_0f8_5868                            ; $5866: $30 $00

jr_0f8_5868:
    inc sp                                        ; $5868: $33
    jr nc, jr_0f8_586d                            ; $5869: $30 $02

    inc bc                                        ; $586b: $03
    inc b                                         ; $586c: $04

jr_0f8_586d:
    nop                                           ; $586d: $00
    add d                                         ; $586e: $82

jr_0f8_586f:
    jr nc, jr_0f8_5871                            ; $586f: $30 $00

jr_0f8_5871:
    ld [bc], a                                    ; $5871: $02
    jr nc, jr_0f8_5876                            ; $5872: $30 $02

    nop                                           ; $5874: $00
    add h                                         ; $5875: $84

jr_0f8_5876:
    inc bc                                        ; $5876: $03
    nop                                           ; $5877: $00
    dec de                                        ; $5878: $1b
    inc bc                                        ; $5879: $03
    ld [bc], a                                    ; $587a: $02
    jr jr_0f8_57ff                                ; $587b: $18 $82

    ld b, b                                       ; $587d: $40
    nop                                           ; $587e: $00
    ld [bc], a                                    ; $587f: $02
    ld b, b                                       ; $5880: $40
    add d                                         ; $5881: $82
    inc bc                                        ; $5882: $03
    nop                                           ; $5883: $00
    ld [bc], a                                    ; $5884: $02
    inc bc                                        ; $5885: $03
    add c                                         ; $5886: $81
    jr @+$05                                      ; $5887: $18 $03

    nop                                           ; $5889: $00
    add h                                         ; $588a: $84
    ld bc, $c100                                  ; $588b: $01 $00 $c1
    ld bc, $c002                                  ; $588e: $01 $02 $c0
    jr jr_0f8_5893                                ; $5891: $18 $00

jr_0f8_5893:
    ld [bc], a                                    ; $5893: $02
    inc bc                                        ; $5894: $03
    add d                                         ; $5895: $82
    ld [$0200], sp                                ; $5896: $08 $00 $02
    ld [$001a], sp                                ; $5899: $08 $1a $00
    rst $38                                       ; $589c: $ff
    rrca                                          ; $589d: $0f
    dec b                                         ; $589e: $05
    push af                                       ; $589f: $f5

jr_0f8_58a0:
    ld a, [bc]                                    ; $58a0: $0a
    push af                                       ; $58a1: $f5
    rrca                                          ; $58a2: $0f
    ld hl, sp-$0b                                 ; $58a3: $f8 $f5
    or $fd                                        ; $58a5: $f6 $fd
    or $04                                        ; $58a7: $f6 $04
    ld b, $fc                                     ; $58a9: $06 $fc
    ld b, $ff                                     ; $58ab: $06 $ff
    add d                                         ; $58ad: $82
    inc c                                         ; $58ae: $0c
    nop                                           ; $58af: $00
    ld [bc], a                                    ; $58b0: $02
    inc c                                         ; $58b1: $0c
    ld [bc], a                                    ; $58b2: $02
    nop                                           ; $58b3: $00
    add d                                         ; $58b4: $82
    ret nz                                        ; $58b5: $c0

    nop                                           ; $58b6: $00
    ld [bc], a                                    ; $58b7: $02
    ret nz                                        ; $58b8: $c0

    add h                                         ; $58b9: $84
    ld b, $00                                     ; $58ba: $06 $00
    ld [hl], $06                                  ; $58bc: $36 $06
    ld [bc], a                                    ; $58be: $02
    jr nc, jr_0f8_5843                            ; $58bf: $30 $82

    ld bc, $0200                                  ; $58c1: $01 $00 $02
    ld bc, $0382                                  ; $58c4: $01 $82 $03
    nop                                           ; $58c7: $00
    ld [bc], a                                    ; $58c8: $02
    inc bc                                        ; $58c9: $03
    ld [bc], a                                    ; $58ca: $02
    nop                                           ; $58cb: $00
    add d                                         ; $58cc: $82
    ld h, b                                       ; $58cd: $60
    nop                                           ; $58ce: $00
    ld [bc], a                                    ; $58cf: $02
    ld h, b                                       ; $58d0: $60
    ld [bc], a                                    ; $58d1: $02
    nop                                           ; $58d2: $00
    add h                                         ; $58d3: $84
    ld bc, $1900                                  ; $58d4: $01 $00 $19
    ld bc, $1802                                  ; $58d7: $01 $02 $18
    add [hl]                                      ; $58da: $86
    ld h, b                                       ; $58db: $60
    nop                                           ; $58dc: $00
    ld h, e                                       ; $58dd: $63
    ld h, b                                       ; $58de: $60
    jp Jump_000_0203                              ; $58df: $c3 $03 $02


    pop bc                                        ; $58e2: $c1
    ld [bc], a                                    ; $58e3: $02
    nop                                           ; $58e4: $00
    add d                                         ; $58e5: $82
    jr c, jr_0f8_58e8                             ; $58e6: $38 $00

jr_0f8_58e8:
    ld [bc], a                                    ; $58e8: $02
    jr c, jr_0f8_586f                             ; $58e9: $38 $84

    add b                                         ; $58eb: $80
    nop                                           ; $58ec: $00
    or c                                          ; $58ed: $b1
    add b                                         ; $58ee: $80
    ld [bc], a                                    ; $58ef: $02
    ld sp, $0004                                  ; $58f0: $31 $04 $00
    add [hl]                                      ; $58f3: $86
    ld h, b                                       ; $58f4: $60
    nop                                           ; $58f5: $00
    ld b, b                                       ; $58f6: $40
    nop                                           ; $58f7: $00
    ld c, h                                       ; $58f8: $4c
    ld b, b                                       ; $58f9: $40
    ld [bc], a                                    ; $58fa: $02
    inc c                                         ; $58fb: $0c
    inc b                                         ; $58fc: $04
    nop                                           ; $58fd: $00
    add d                                         ; $58fe: $82
    ld b, b                                       ; $58ff: $40
    nop                                           ; $5900: $00
    ld [bc], a                                    ; $5901: $02
    ld b, b                                       ; $5902: $40
    ld [bc], a                                    ; $5903: $02

jr_0f8_5904:
    nop                                           ; $5904: $00
    add h                                         ; $5905: $84
    inc bc                                        ; $5906: $03
    nop                                           ; $5907: $00
    ld h, e                                       ; $5908: $63
    inc bc                                        ; $5909: $03
    ld [bc], a                                    ; $590a: $02
    ld h, b                                       ; $590b: $60
    add d                                         ; $590c: $82
    ld b, b                                       ; $590d: $40
    nop                                           ; $590e: $00
    ld [bc], a                                    ; $590f: $02
    ld b, b                                       ; $5910: $40
    add d                                         ; $5911: $82
    inc c                                         ; $5912: $0c
    nop                                           ; $5913: $00
    ld [bc], a                                    ; $5914: $02
    inc c                                         ; $5915: $0c
    add d                                         ; $5916: $82
    ld h, b                                       ; $5917: $60
    nop                                           ; $5918: $00
    ld [bc], a                                    ; $5919: $02
    jr nc, jr_0f8_58a0                            ; $591a: $30 $84

    inc bc                                        ; $591c: $03
    nop                                           ; $591d: $00
    ld h, e                                       ; $591e: $63
    inc bc                                        ; $591f: $03
    ld [bc], a                                    ; $5920: $02
    ld h, b                                       ; $5921: $60
    jr jr_0f8_5924                                ; $5922: $18 $00

jr_0f8_5924:
    ld [bc], a                                    ; $5924: $02
    inc bc                                        ; $5925: $03
    ld e, $00                                     ; $5926: $1e $00
    rst $38                                       ; $5928: $ff
    rrca                                          ; $5929: $0f
    dec b                                         ; $592a: $05
    push af                                       ; $592b: $f5
    ld a, [bc]                                    ; $592c: $0a
    push af                                       ; $592d: $f5
    rrca                                          ; $592e: $0f
    rst $30                                       ; $592f: $f7
    push af                                       ; $5930: $f5
    or $fd                                        ; $5931: $f6 $fd
    push af                                       ; $5933: $f5
    inc bc                                        ; $5934: $03
    dec b                                         ; $5935: $05
    db $fc                                        ; $5936: $fc
    dec b                                         ; $5937: $05
    nop                                           ; $5938: $00
    add d                                         ; $5939: $82
    inc b                                         ; $593a: $04
    nop                                           ; $593b: $00
    ld [bc], a                                    ; $593c: $02
    inc b                                         ; $593d: $04
    ld [bc], a                                    ; $593e: $02
    nop                                           ; $593f: $00
    add d                                         ; $5940: $82
    add c                                         ; $5941: $81
    nop                                           ; $5942: $00
    ld [bc], a                                    ; $5943: $02
    add c                                         ; $5944: $81
    add h                                         ; $5945: $84
    inc bc                                        ; $5946: $03
    nop                                           ; $5947: $00
    dec de                                        ; $5948: $1b
    inc bc                                        ; $5949: $03
    ld [bc], a                                    ; $594a: $02
    jr jr_0f8_5951                                ; $594b: $18 $04

    nop                                           ; $594d: $00
    add d                                         ; $594e: $82
    ld b, $00                                     ; $594f: $06 $00

jr_0f8_5951:
    ld [bc], a                                    ; $5951: $02
    ld b, $02                                     ; $5952: $06 $02
    nop                                           ; $5954: $00
    add d                                         ; $5955: $82
    jr nc, jr_0f8_5958                            ; $5956: $30 $00

jr_0f8_5958:
    ld [bc], a                                    ; $5958: $02
    jr nc, jr_0f8_595d                            ; $5959: $30 $02

    nop                                           ; $595b: $00
    add d                                         ; $595c: $82

jr_0f8_595d:
    ld [$0200], sp                                ; $595d: $08 $00 $02
    ld [$4086], sp                                ; $5960: $08 $86 $40
    nop                                           ; $5963: $00
    ld b, [hl]                                    ; $5964: $46
    ld b, b                                       ; $5965: $40
    add [hl]                                      ; $5966: $86
    ld b, $02                                     ; $5967: $06 $02
    add b                                         ; $5969: $80
    ld [bc], a                                    ; $596a: $02
    nop                                           ; $596b: $00
    add d                                         ; $596c: $82
    ld l, h                                       ; $596d: $6c
    nop                                           ; $596e: $00
    ld [bc], a                                    ; $596f: $02
    ld l, h                                       ; $5970: $6c
    add h                                         ; $5971: $84
    ret nz                                        ; $5972: $c0

    nop                                           ; $5973: $00
    db $db                                        ; $5974: $db
    ret nz                                        ; $5975: $c0

jr_0f8_5976:
    ld [bc], a                                    ; $5976: $02
    dec de                                        ; $5977: $1b
    inc b                                         ; $5978: $04
    nop                                           ; $5979: $00
    add d                                         ; $597a: $82
    jr nc, jr_0f8_597d                            ; $597b: $30 $00

jr_0f8_597d:
    ld [bc], a                                    ; $597d: $02
    jr nc, jr_0f8_5904                            ; $597e: $30 $84

    jr nz, jr_0f8_5982                            ; $5980: $20 $00

jr_0f8_5982:
    ld [hl+], a                                   ; $5982: $22
    jr nz, jr_0f8_5987                            ; $5983: $20 $02

    ld [bc], a                                    ; $5985: $02
    inc b                                         ; $5986: $04

jr_0f8_5987:
    nop                                           ; $5987: $00
    add d                                         ; $5988: $82
    jr nc, jr_0f8_598b                            ; $5989: $30 $00

jr_0f8_598b:
    ld [bc], a                                    ; $598b: $02
    jr nc, jr_0f8_5990                            ; $598c: $30 $02

    nop                                           ; $598e: $00
    add h                                         ; $598f: $84

jr_0f8_5990:
    inc bc                                        ; $5990: $03
    nop                                           ; $5991: $00
    dec de                                        ; $5992: $1b
    inc bc                                        ; $5993: $03
    ld [bc], a                                    ; $5994: $02
    jr jr_0f8_599b                                ; $5995: $18 $04

    nop                                           ; $5997: $00
    add d                                         ; $5998: $82
    inc bc                                        ; $5999: $03
    nop                                           ; $599a: $00

jr_0f8_599b:
    ld [bc], a                                    ; $599b: $02
    inc bc                                        ; $599c: $03
    add c                                         ; $599d: $81
    jr @+$05                                      ; $599e: $18 $03

    nop                                           ; $59a0: $00
    add h                                         ; $59a1: $84
    ld bc, $c100                                  ; $59a2: $01 $00 $c1
    ld bc, $c002                                  ; $59a5: $01 $02 $c0
    jr jr_0f8_59aa                                ; $59a8: $18 $00

jr_0f8_59aa:
    ld [bc], a                                    ; $59aa: $02

jr_0f8_59ab:
    inc bc                                        ; $59ab: $03
    add d                                         ; $59ac: $82
    ld [$0200], sp                                ; $59ad: $08 $00 $02
    ld [$001a], sp                                ; $59b0: $08 $1a $00
    rst $38                                       ; $59b3: $ff
    dec c                                         ; $59b4: $0d
    inc b                                         ; $59b5: $04
    push af                                       ; $59b6: $f5
    ld a, [bc]                                    ; $59b7: $0a
    push af                                       ; $59b8: $f5
    rrca                                          ; $59b9: $0f
    or $f6                                        ; $59ba: $f6 $f6
    db $f4                                        ; $59bc: $f4
    cp $f5                                        ; $59bd: $fe $f5
    inc b                                         ; $59bf: $04
    inc b                                         ; $59c0: $04
    db $fc                                        ; $59c1: $fc
    add d                                         ; $59c2: $82
    stop                                          ; $59c3: $10 $00
    ld [bc], a                                    ; $59c5: $02
    db $10                                        ; $59c6: $10
    ld [bc], a                                    ; $59c7: $02
    nop                                           ; $59c8: $00
    add d                                         ; $59c9: $82
    add c                                         ; $59ca: $81
    nop                                           ; $59cb: $00
    ld [bc], a                                    ; $59cc: $02
    add c                                         ; $59cd: $81
    add h                                         ; $59ce: $84
    inc c                                         ; $59cf: $0c
    nop                                           ; $59d0: $00
    ld l, h                                       ; $59d1: $6c
    inc c                                         ; $59d2: $0c
    ld [bc], a                                    ; $59d3: $02
    ld h, b                                       ; $59d4: $60
    add d                                         ; $59d5: $82
    inc bc                                        ; $59d6: $03
    nop                                           ; $59d7: $00
    ld [bc], a                                    ; $59d8: $02
    inc bc                                        ; $59d9: $03
    add d                                         ; $59da: $82
    ld b, $00                                     ; $59db: $06 $00
    ld [bc], a                                    ; $59dd: $02
    ld b, $02                                     ; $59de: $06 $02
    nop                                           ; $59e0: $00
    add d                                         ; $59e1: $82
    ret nz                                        ; $59e2: $c0

    nop                                           ; $59e3: $00
    ld [bc], a                                    ; $59e4: $02
    ret nz                                        ; $59e5: $c0

    ld [bc], a                                    ; $59e6: $02
    nop                                           ; $59e7: $00
    add h                                         ; $59e8: $84
    ld [bc], a                                    ; $59e9: $02
    nop                                           ; $59ea: $00
    ld [hl+], a                                   ; $59eb: $22
    ld [bc], a                                    ; $59ec: $02
    ld [bc], a                                    ; $59ed: $02
    jr nz, jr_0f8_5976                            ; $59ee: $20 $86

    ld b, b                                       ; $59f0: $40
    nop                                           ; $59f1: $00
    ld b, [hl]                                    ; $59f2: $46
    ld b, b                                       ; $59f3: $40
    add a                                         ; $59f4: $87
    inc b                                         ; $59f5: $04
    ld [bc], a                                    ; $59f6: $02
    add e                                         ; $59f7: $83
    ld [bc], a                                    ; $59f8: $02
    nop                                           ; $59f9: $00
    add h                                         ; $59fa: $84
    ld [hl], b                                    ; $59fb: $70
    nop                                           ; $59fc: $00
    ld [hl], c                                    ; $59fd: $71
    ld [hl], b                                    ; $59fe: $70

Jump_0f8_59ff:
    ld [bc], a                                    ; $59ff: $02
    ld bc, $6382                                  ; $5a00: $01 $82 $63
    nop                                           ; $5a03: $00
    ld [bc], a                                    ; $5a04: $02
    ld h, e                                       ; $5a05: $63
    inc b                                         ; $5a06: $04
    nop                                           ; $5a07: $00
    add h                                         ; $5a08: $84
    pop bc                                        ; $5a09: $c1
    nop                                           ; $5a0a: $00

jr_0f8_5a0b:
    ld [$0200], sp                                ; $5a0b: $08 $00 $02
    ld [$000a], sp                                ; $5a0e: $08 $0a $00
    add h                                         ; $5a11: $84
    inc bc                                        ; $5a12: $03
    nop                                           ; $5a13: $00
    inc hl                                        ; $5a14: $23
    inc bc                                        ; $5a15: $03
    ld [bc], a                                    ; $5a16: $02
    jr nz, jr_0f8_5a1d                            ; $5a17: $20 $04

    nop                                           ; $5a19: $00
    add d                                         ; $5a1a: $82
    inc c                                         ; $5a1b: $0c
    nop                                           ; $5a1c: $00

jr_0f8_5a1d:
    ld [bc], a                                    ; $5a1d: $02
    inc c                                         ; $5a1e: $0c
    add d                                         ; $5a1f: $82
    jr nz, jr_0f8_5a22                            ; $5a20: $20 $00

jr_0f8_5a22:
    ld [bc], a                                    ; $5a22: $02
    ld h, b                                       ; $5a23: $60
    ld [bc], a                                    ; $5a24: $02
    jr nc, jr_0f8_59ab                            ; $5a25: $30 $84

    inc bc                                        ; $5a27: $03
    nop                                           ; $5a28: $00
    ld h, e                                       ; $5a29: $63
    inc bc                                        ; $5a2a: $03
    ld [bc], a                                    ; $5a2b: $02
    ld h, b                                       ; $5a2c: $60
    jr jr_0f8_5a2f                                ; $5a2d: $18 $00

jr_0f8_5a2f:
    rst $38                                       ; $5a2f: $ff
    rrca                                          ; $5a30: $0f
    dec b                                         ; $5a31: $05
    push af                                       ; $5a32: $f5
    ld a, [bc]                                    ; $5a33: $0a
    push af                                       ; $5a34: $f5
    rrca                                          ; $5a35: $0f
    push af                                       ; $5a36: $f5
    push af                                       ; $5a37: $f5
    db $f4                                        ; $5a38: $f4
    db $fd                                        ; $5a39: $fd
    di                                            ; $5a3a: $f3
    inc bc                                        ; $5a3b: $03
    inc bc                                        ; $5a3c: $03
    db $fc                                        ; $5a3d: $fc
    inc bc                                        ; $5a3e: $03
    nop                                           ; $5a3f: $00
    add d                                         ; $5a40: $82
    inc b                                         ; $5a41: $04
    nop                                           ; $5a42: $00
    ld [bc], a                                    ; $5a43: $02
    inc b                                         ; $5a44: $04
    ld [bc], a                                    ; $5a45: $02
    nop                                           ; $5a46: $00
    add d                                         ; $5a47: $82
    add c                                         ; $5a48: $81
    nop                                           ; $5a49: $00
    ld [bc], a                                    ; $5a4a: $02
    add c                                         ; $5a4b: $81
    add h                                         ; $5a4c: $84
    inc bc                                        ; $5a4d: $03
    nop                                           ; $5a4e: $00
    dec de                                        ; $5a4f: $1b
    inc bc                                        ; $5a50: $03
    ld [bc], a                                    ; $5a51: $02
    jr jr_0f8_5a58                                ; $5a52: $18 $04

    nop                                           ; $5a54: $00
    add d                                         ; $5a55: $82
    ld b, $00                                     ; $5a56: $06 $00

jr_0f8_5a58:
    ld [bc], a                                    ; $5a58: $02
    ld b, $02                                     ; $5a59: $06 $02
    nop                                           ; $5a5b: $00
    add d                                         ; $5a5c: $82
    jr nc, jr_0f8_5a5f                            ; $5a5d: $30 $00

jr_0f8_5a5f:
    ld [bc], a                                    ; $5a5f: $02
    jr nc, jr_0f8_5a64                            ; $5a60: $30 $02

    nop                                           ; $5a62: $00
    add d                                         ; $5a63: $82

jr_0f8_5a64:
    ld [$0200], sp                                ; $5a64: $08 $00 $02
    ld [$4086], sp                                ; $5a67: $08 $86 $40
    nop                                           ; $5a6a: $00
    ld b, [hl]                                    ; $5a6b: $46
    ld b, b                                       ; $5a6c: $40
    add [hl]                                      ; $5a6d: $86
    ld b, $02                                     ; $5a6e: $06 $02
    add b                                         ; $5a70: $80
    ld [bc], a                                    ; $5a71: $02
    nop                                           ; $5a72: $00
    add d                                         ; $5a73: $82
    ld l, h                                       ; $5a74: $6c
    nop                                           ; $5a75: $00
    ld [bc], a                                    ; $5a76: $02
    ld l, h                                       ; $5a77: $6c
    add h                                         ; $5a78: $84
    ret nz                                        ; $5a79: $c0

    nop                                           ; $5a7a: $00
    db $db                                        ; $5a7b: $db
    ret nz                                        ; $5a7c: $c0

jr_0f8_5a7d:
    ld [bc], a                                    ; $5a7d: $02
    dec de                                        ; $5a7e: $1b
    inc b                                         ; $5a7f: $04
    nop                                           ; $5a80: $00
    add d                                         ; $5a81: $82
    jr nc, jr_0f8_5a84                            ; $5a82: $30 $00

jr_0f8_5a84:
    ld [bc], a                                    ; $5a84: $02
    jr nc, jr_0f8_5a0b                            ; $5a85: $30 $84

    jr nz, jr_0f8_5a89                            ; $5a87: $20 $00

jr_0f8_5a89:
    ld [hl+], a                                   ; $5a89: $22
    jr nz, jr_0f8_5a8e                            ; $5a8a: $20 $02

    ld [bc], a                                    ; $5a8c: $02
    inc b                                         ; $5a8d: $04

jr_0f8_5a8e:
    nop                                           ; $5a8e: $00
    add d                                         ; $5a8f: $82
    jr nc, jr_0f8_5a92                            ; $5a90: $30 $00

jr_0f8_5a92:
    ld [bc], a                                    ; $5a92: $02
    jr nc, jr_0f8_5a97                            ; $5a93: $30 $02

    nop                                           ; $5a95: $00
    add h                                         ; $5a96: $84

jr_0f8_5a97:
    inc bc                                        ; $5a97: $03
    nop                                           ; $5a98: $00
    dec de                                        ; $5a99: $1b
    inc bc                                        ; $5a9a: $03
    ld [bc], a                                    ; $5a9b: $02
    jr jr_0f8_5aa2                                ; $5a9c: $18 $04

    nop                                           ; $5a9e: $00
    add d                                         ; $5a9f: $82
    inc bc                                        ; $5aa0: $03
    nop                                           ; $5aa1: $00

jr_0f8_5aa2:
    ld [bc], a                                    ; $5aa2: $02
    inc bc                                        ; $5aa3: $03
    add c                                         ; $5aa4: $81
    jr @+$05                                      ; $5aa5: $18 $03

    nop                                           ; $5aa7: $00
    add h                                         ; $5aa8: $84
    ld bc, $c100                                  ; $5aa9: $01 $00 $c1
    ld bc, $c002                                  ; $5aac: $01 $02 $c0
    jr jr_0f8_5ab1                                ; $5aaf: $18 $00

jr_0f8_5ab1:
    ld [bc], a                                    ; $5ab1: $02
    inc bc                                        ; $5ab2: $03
    add d                                         ; $5ab3: $82
    ld [$0200], sp                                ; $5ab4: $08 $00 $02
    ld [$001a], sp                                ; $5ab7: $08 $1a $00
    rst $38                                       ; $5aba: $ff
    dec c                                         ; $5abb: $0d
    inc b                                         ; $5abc: $04
    push af                                       ; $5abd: $f5
    ld a, [bc]                                    ; $5abe: $0a
    push af                                       ; $5abf: $f5
    rrca                                          ; $5ac0: $0f
    db $f4                                        ; $5ac1: $f4
    or $f2                                        ; $5ac2: $f6 $f2
    cp $f3                                        ; $5ac4: $fe $f3
    inc b                                         ; $5ac6: $04
    ld [bc], a                                    ; $5ac7: $02
    db $fc                                        ; $5ac8: $fc
    add d                                         ; $5ac9: $82
    stop                                          ; $5aca: $10 $00
    ld [bc], a                                    ; $5acc: $02
    db $10                                        ; $5acd: $10
    ld [bc], a                                    ; $5ace: $02
    nop                                           ; $5acf: $00
    add d                                         ; $5ad0: $82
    add c                                         ; $5ad1: $81
    nop                                           ; $5ad2: $00
    ld [bc], a                                    ; $5ad3: $02
    add c                                         ; $5ad4: $81
    add h                                         ; $5ad5: $84
    inc c                                         ; $5ad6: $0c
    nop                                           ; $5ad7: $00
    ld l, h                                       ; $5ad8: $6c
    inc c                                         ; $5ad9: $0c
    ld [bc], a                                    ; $5ada: $02
    ld h, b                                       ; $5adb: $60
    add d                                         ; $5adc: $82
    inc bc                                        ; $5add: $03
    nop                                           ; $5ade: $00
    ld [bc], a                                    ; $5adf: $02
    inc bc                                        ; $5ae0: $03
    add d                                         ; $5ae1: $82
    ld b, $00                                     ; $5ae2: $06 $00
    ld [bc], a                                    ; $5ae4: $02
    ld b, $02                                     ; $5ae5: $06 $02
    nop                                           ; $5ae7: $00
    add d                                         ; $5ae8: $82
    ret nz                                        ; $5ae9: $c0

    nop                                           ; $5aea: $00
    ld [bc], a                                    ; $5aeb: $02
    ret nz                                        ; $5aec: $c0

    ld [bc], a                                    ; $5aed: $02
    nop                                           ; $5aee: $00
    add h                                         ; $5aef: $84
    ld [bc], a                                    ; $5af0: $02
    nop                                           ; $5af1: $00
    ld [hl+], a                                   ; $5af2: $22
    ld [bc], a                                    ; $5af3: $02
    ld [bc], a                                    ; $5af4: $02
    jr nz, jr_0f8_5a7d                            ; $5af5: $20 $86

    ld b, b                                       ; $5af7: $40
    nop                                           ; $5af8: $00
    ld b, [hl]                                    ; $5af9: $46
    ld b, b                                       ; $5afa: $40
    add [hl]                                      ; $5afb: $86
    ld b, $02                                     ; $5afc: $06 $02

jr_0f8_5afe:
    add b                                         ; $5afe: $80
    ld [bc], a                                    ; $5aff: $02
    nop                                           ; $5b00: $00
    add h                                         ; $5b01: $84
    ld [hl], b                                    ; $5b02: $70
    nop                                           ; $5b03: $00
    ld [hl], c                                    ; $5b04: $71
    ld [hl], b                                    ; $5b05: $70
    ld [bc], a                                    ; $5b06: $02
    ld bc, $6382                                  ; $5b07: $01 $82 $63
    nop                                           ; $5b0a: $00
    ld [bc], a                                    ; $5b0b: $02
    ld h, e                                       ; $5b0c: $63
    inc b                                         ; $5b0d: $04
    nop                                           ; $5b0e: $00
    add h                                         ; $5b0f: $84
    pop bc                                        ; $5b10: $c1
    nop                                           ; $5b11: $00
    ld [$0200], sp                                ; $5b12: $08 $00 $02
    ld [$0004], sp                                ; $5b15: $08 $04 $00
    add d                                         ; $5b18: $82
    jr nc, jr_0f8_5b1b                            ; $5b19: $30 $00

jr_0f8_5b1b:
    ld [bc], a                                    ; $5b1b: $02
    jr nc, jr_0f8_5b20                            ; $5b1c: $30 $02

    nop                                           ; $5b1e: $00
    add h                                         ; $5b1f: $84

jr_0f8_5b20:
    inc bc                                        ; $5b20: $03
    nop                                           ; $5b21: $00
    inc hl                                        ; $5b22: $23
    inc bc                                        ; $5b23: $03
    ld [bc], a                                    ; $5b24: $02
    jr nz, jr_0f8_5b2b                            ; $5b25: $20 $04

    nop                                           ; $5b27: $00
    add d                                         ; $5b28: $82
    inc c                                         ; $5b29: $0c
    nop                                           ; $5b2a: $00

jr_0f8_5b2b:
    ld [bc], a                                    ; $5b2b: $02
    inc c                                         ; $5b2c: $0c
    add d                                         ; $5b2d: $82
    jr nz, jr_0f8_5b30                            ; $5b2e: $20 $00

jr_0f8_5b30:
    ld [bc], a                                    ; $5b30: $02
    ld h, b                                       ; $5b31: $60
    ld [bc], a                                    ; $5b32: $02
    jr nc, @-$7a                                  ; $5b33: $30 $84

    inc bc                                        ; $5b35: $03
    nop                                           ; $5b36: $00
    ld h, e                                       ; $5b37: $63

jr_0f8_5b38:
    inc bc                                        ; $5b38: $03
    ld [bc], a                                    ; $5b39: $02
    ld h, b                                       ; $5b3a: $60
    jr jr_0f8_5b3d                                ; $5b3b: $18 $00

jr_0f8_5b3d:
    rst $38                                       ; $5b3d: $ff
    rrca                                          ; $5b3e: $0f
    dec b                                         ; $5b3f: $05
    push af                                       ; $5b40: $f5
    ld a, [bc]                                    ; $5b41: $0a
    push af                                       ; $5b42: $f5
    rrca                                          ; $5b43: $0f
    ld a, [c]                                     ; $5b44: $f2
    rst $30                                       ; $5b45: $f7
    ldh a, [rIE]                                  ; $5b46: $f0 $ff
    pop af                                        ; $5b48: $f1
    inc bc                                        ; $5b49: $03
    nop                                           ; $5b4a: $00
    db $fc                                        ; $5b4b: $fc
    nop                                           ; $5b4c: $00
    nop                                           ; $5b4d: $00
    add d                                         ; $5b4e: $82
    stop                                          ; $5b4f: $10 $00
    ld [bc], a                                    ; $5b51: $02
    db $10                                        ; $5b52: $10
    ld [bc], a                                    ; $5b53: $02
    nop                                           ; $5b54: $00
    add h                                         ; $5b55: $84
    add b                                         ; $5b56: $80
    nop                                           ; $5b57: $00
    add [hl]                                      ; $5b58: $86
    add b                                         ; $5b59: $80
    ld [bc], a                                    ; $5b5a: $02
    ld b, $84                                     ; $5b5b: $06 $84
    inc c                                         ; $5b5d: $0c
    nop                                           ; $5b5e: $00
    ld l, l                                       ; $5b5f: $6d
    inc c                                         ; $5b60: $0c
    ld [bc], a                                    ; $5b61: $02
    ld h, c                                       ; $5b62: $61
    add d                                         ; $5b63: $82
    inc bc                                        ; $5b64: $03
    nop                                           ; $5b65: $00
    ld [bc], a                                    ; $5b66: $02
    inc bc                                        ; $5b67: $03
    add d                                         ; $5b68: $82
    jr jr_0f8_5b6b                                ; $5b69: $18 $00

jr_0f8_5b6b:
    ld [bc], a                                    ; $5b6b: $02
    jr jr_0f8_5b70                                ; $5b6c: $18 $02

    nop                                           ; $5b6e: $00
    add d                                         ; $5b6f: $82

jr_0f8_5b70:
    ret nz                                        ; $5b70: $c0

    nop                                           ; $5b71: $00
    ld [bc], a                                    ; $5b72: $02
    ret nz                                        ; $5b73: $c0

    add h                                         ; $5b74: $84
    ld [bc], a                                    ; $5b75: $02
    nop                                           ; $5b76: $00
    ld [hl+], a                                   ; $5b77: $22
    ld [bc], a                                    ; $5b78: $02
    ld [bc], a                                    ; $5b79: $02
    jr nz, jr_0f8_5afe                            ; $5b7a: $20 $82

    add b                                         ; $5b7c: $80
    nop                                           ; $5b7d: $00
    ld [bc], a                                    ; $5b7e: $02
    add b                                         ; $5b7f: $80
    add h                                         ; $5b80: $84
    jr jr_0f8_5b83                                ; $5b81: $18 $00

jr_0f8_5b83:
    dec de                                        ; $5b83: $1b
    jr jr_0f8_5b88                                ; $5b84: $18 $02

    inc bc                                        ; $5b86: $03
    ld [bc], a                                    ; $5b87: $02

jr_0f8_5b88:
    nop                                           ; $5b88: $00
    add h                                         ; $5b89: $84
    or b                                          ; $5b8a: $b0
    nop                                           ; $5b8b: $00
    or c                                          ; $5b8c: $b1
    or b                                          ; $5b8d: $b0
    ld [bc], a                                    ; $5b8e: $02
    ld bc, $6c82                                  ; $5b8f: $01 $82 $6c
    nop                                           ; $5b92: $00
    ld [bc], a                                    ; $5b93: $02
    ld l, h                                       ; $5b94: $6c
    inc b                                         ; $5b95: $04
    nop                                           ; $5b96: $00
    add d                                         ; $5b97: $82
    ld [bc], a                                    ; $5b98: $02
    nop                                           ; $5b99: $00
    ld [bc], a                                    ; $5b9a: $02
    ld [bc], a                                    ; $5b9b: $02
    inc c                                         ; $5b9c: $0c
    nop                                           ; $5b9d: $00
    add h                                         ; $5b9e: $84
    inc bc                                        ; $5b9f: $03
    nop                                           ; $5ba0: $00
    dec bc                                        ; $5ba1: $0b
    inc bc                                        ; $5ba2: $03
    ld [bc], a                                    ; $5ba3: $02
    ld [$0004], sp                                ; $5ba4: $08 $04 $00
    add d                                         ; $5ba7: $82
    inc bc                                        ; $5ba8: $03
    nop                                           ; $5ba9: $00
    ld [bc], a                                    ; $5baa: $02
    inc bc                                        ; $5bab: $03
    add h                                         ; $5bac: $84
    jr jr_0f8_5baf                                ; $5bad: $18 $00

jr_0f8_5baf:
    jr jr_0f8_5bb1                                ; $5baf: $18 $00

jr_0f8_5bb1:
    ld [bc], a                                    ; $5bb1: $02
    jr jr_0f8_5b38                                ; $5bb2: $18 $84

    ld bc, $c100                                  ; $5bb4: $01 $00 $c1
    ld bc, $c002                                  ; $5bb7: $01 $02 $c0
    jr jr_0f8_5bbc                                ; $5bba: $18 $00

jr_0f8_5bbc:
    ld [bc], a                                    ; $5bbc: $02
    inc bc                                        ; $5bbd: $03
    add d                                         ; $5bbe: $82
    ld [$0200], sp                                ; $5bbf: $08 $00 $02
    ld [$0018], sp                                ; $5bc2: $08 $18 $00
    rst $38                                       ; $5bc5: $ff
    rlca                                          ; $5bc6: $07
    ld bc, $0af8                                  ; $5bc7: $01 $f8 $0a
    ldh a, [rSB]                                  ; $5bca: $f0 $01
    ld sp, hl                                     ; $5bcc: $f9
    ei                                            ; $5bcd: $fb
    ld [bc], a                                    ; $5bce: $02
    ld b, $84                                     ; $5bcf: $06 $84
    add hl, bc                                    ; $5bd1: $09
    rrca                                          ; $5bd2: $0f
    add hl, bc                                    ; $5bd3: $09
    rrca                                          ; $5bd4: $0f
    ld [bc], a                                    ; $5bd5: $02
    ld b, $18                                     ; $5bd6: $06 $18
    nop                                           ; $5bd8: $00
    rst $38                                       ; $5bd9: $ff
    rlca                                          ; $5bda: $07
    ld bc, $0af8                                  ; $5bdb: $01 $f8 $0a
    ldh a, [rSB]                                  ; $5bde: $f0 $01
    ld hl, sp-$03                                 ; $5be0: $f8 $fd
    ld [bc], a                                    ; $5be2: $02
    inc e                                         ; $5be3: $1c
    adc b                                         ; $5be4: $88
    ld a, [hl+]                                   ; $5be5: $2a

Jump_0f8_5be6:
    ld [hl], $7d                                  ; $5be6: $36 $7d
    ld h, e                                       ; $5be8: $63
    ld c, e                                       ; $5be9: $4b
    ld [hl], a                                    ; $5bea: $77
    ld [hl], $3e                                  ; $5beb: $36 $3e
    ld [bc], a                                    ; $5bed: $02
    inc e                                         ; $5bee: $1c
    inc d                                         ; $5bef: $14
    nop                                           ; $5bf0: $00
    rst $38                                       ; $5bf1: $ff
    add hl, bc                                    ; $5bf2: $09
    ld [bc], a                                    ; $5bf3: $02
    ld hl, sp+$0a                                 ; $5bf4: $f8 $0a
    ldh a, [rSB]                                  ; $5bf6: $f0 $01
    rst $30                                       ; $5bf8: $f7
    db $fc                                        ; $5bf9: $fc
    rst $30                                       ; $5bfa: $f7
    cp $02                                        ; $5bfb: $fe $02
    ccf                                           ; $5bfd: $3f
    adc h                                         ; $5bfe: $8c
    ld d, l                                       ; $5bff: $55
    ld a, d                                       ; $5c00: $7a
    xor d                                         ; $5c01: $aa
    push af                                       ; $5c02: $f5
    rst $00                                       ; $5c03: $c7
    ld hl, sp-$56                                 ; $5c04: $f8 $aa
    push af                                       ; $5c06: $f5
    push de                                       ; $5c07: $d5
    ld a, [$7f68]                                 ; $5c08: $fa $68 $7f
    ld [bc], a                                    ; $5c0b: $02
    ccf                                           ; $5c0c: $3f
    ld [de], a                                    ; $5c0d: $12
    nop                                           ; $5c0e: $00
    ld [bc], a                                    ; $5c0f: $02
    ld [bc], a                                    ; $5c10: $02
    add c                                         ; $5c11: $81
    inc bc                                        ; $5c12: $03
    ld [bc], a                                    ; $5c13: $02
    ld bc, $0302                                  ; $5c14: $01 $02 $03
    ld [bc], a                                    ; $5c17: $02

jr_0f8_5c18:
    ld bc, $0381                                  ; $5c18: $01 $81 $03
    ld [bc], a                                    ; $5c1b: $02
    ld [bc], a                                    ; $5c1c: $02
    ld [de], a                                    ; $5c1d: $12
    nop                                           ; $5c1e: $00
    rst $38                                       ; $5c1f: $ff
    add hl, bc                                    ; $5c20: $09
    ld [bc], a                                    ; $5c21: $02
    ld hl, sp+$0a                                 ; $5c22: $f8 $0a
    ldh a, [rSB]                                  ; $5c24: $f0 $01
    push af                                       ; $5c26: $f5
    ld a, [$00f5]                                 ; $5c27: $fa $f5 $00
    ld [bc], a                                    ; $5c2a: $02
    rrca                                          ; $5c2b: $0f
    sub h                                         ; $5c2c: $94
    ld sp, $5a3e                                  ; $5c2d: $31 $3e $5a
    ld [hl], l                                    ; $5c30: $75
    ld h, l                                       ; $5c31: $65
    ld a, d                                       ; $5c32: $7a
    set 6, h                                      ; $5c33: $cb $f4
    and l                                         ; $5c35: $a5
    ld a, [$f5ca]                                 ; $5c36: $fa $ca $f5
    and l                                         ; $5c39: $a5
    ld a, [$7d52]                                 ; $5c3a: $fa $52 $7d
    ld l, b                                       ; $5c3d: $68
    ld a, a                                       ; $5c3e: $7f
    dec [hl]                                      ; $5c3f: $35
    ccf                                           ; $5c40: $3f
    ld [bc], a                                    ; $5c41: $02
    rrca                                          ; $5c42: $0f
    ld [$0200], sp                                ; $5c43: $08 $00 $02
    jr nc, @-$6a                                  ; $5c46: $30 $94

    inc e                                         ; $5c48: $1c
    inc l                                         ; $5c49: $2c
    ld a, [hl+]                                   ; $5c4a: $2a
    ld d, $36                                     ; $5c4b: $16 $36
    ld a, [bc]                                    ; $5c4d: $0a
    add hl, sp                                    ; $5c4e: $39
    rlca                                          ; $5c4f: $07
    dec [hl]                                      ; $5c50: $35
    dec bc                                        ; $5c51: $0b
    add hl, hl                                    ; $5c52: $29
    rla                                           ; $5c53: $17
    inc de                                        ; $5c54: $13
    cpl                                           ; $5c55: $2f
    ld h, $1e                                     ; $5c56: $26 $1e
    ld a, [bc]                                    ; $5c58: $0a
    ld a, $1c                                     ; $5c59: $3e $1c
    inc a                                         ; $5c5b: $3c
    ld [bc], a                                    ; $5c5c: $02
    jr nc, jr_0f8_5c67                            ; $5c5d: $30 $08

jr_0f8_5c5f:
    nop                                           ; $5c5f: $00
    rst $38                                       ; $5c60: $ff
    add hl, bc                                    ; $5c61: $09
    ld [bc], a                                    ; $5c62: $02
    ld hl, sp+$0a                                 ; $5c63: $f8 $0a
    ldh a, [rSB]                                  ; $5c65: $f0 $01

jr_0f8_5c67:
    push af                                       ; $5c67: $f5
    ld a, [$00f5]                                 ; $5c68: $fa $f5 $00
    ld [bc], a                                    ; $5c6b: $02
    rrca                                          ; $5c6c: $0f
    sub h                                         ; $5c6d: $94
    ld a, [hl-]                                   ; $5c6e: $3a
    ccf                                           ; $5c6f: $3f
    ld d, h                                       ; $5c70: $54
    ld a, a                                       ; $5c71: $7f
    ld l, b                                       ; $5c72: $68
    ld a, a                                       ; $5c73: $7f
    push de                                       ; $5c74: $d5
    ld a, [$fda2]                                 ; $5c75: $fa $a2 $fd
    push bc                                       ; $5c78: $c5
    ld a, [$fda2]                                 ; $5c79: $fa $a2 $fd
    ld d, l                                       ; $5c7c: $55
    ld a, d                                       ; $5c7d: $7a
    ld l, d                                       ; $5c7e: $6a
    ld a, l                                       ; $5c7f: $7d
    dec [hl]                                      ; $5c80: $35
    ld a, $02                                     ; $5c81: $3e $02
    rrca                                          ; $5c83: $0f
    ld [$0200], sp                                ; $5c84: $08 $00 $02
    jr nc, jr_0f8_5c18                            ; $5c87: $30 $8f

    inc l                                         ; $5c89: $2c
    inc a                                         ; $5c8a: $3c
    ld [bc], a                                    ; $5c8b: $02
    ld a, $2a                                     ; $5c8c: $3e $2a
    ld d, $15                                     ; $5c8e: $16 $15
    dec hl                                        ; $5c90: $2b
    dec sp                                        ; $5c91: $3b
    dec b                                         ; $5c92: $05
    dec a                                         ; $5c93: $3d
    inc bc                                        ; $5c94: $03
    dec sp                                        ; $5c95: $3b
    dec b                                         ; $5c96: $05
    ld d, $02                                     ; $5c97: $16 $02
    ld a, [hl+]                                   ; $5c99: $2a
    add e                                         ; $5c9a: $83
    ld d, $1c                                     ; $5c9b: $16 $1c
    inc l                                         ; $5c9d: $2c
    ld [bc], a                                    ; $5c9e: $02
    jr nc, jr_0f8_5ca9                            ; $5c9f: $30 $08

    nop                                           ; $5ca1: $00
    rst $38                                       ; $5ca2: $ff
    add hl, bc                                    ; $5ca3: $09
    ld [bc], a                                    ; $5ca4: $02
    ld hl, sp+$0a                                 ; $5ca5: $f8 $0a
    ldh a, [rSB]                                  ; $5ca7: $f0 $01

jr_0f8_5ca9:
    push af                                       ; $5ca9: $f5
    ld a, [$00f5]                                 ; $5caa: $fa $f5 $00
    ld [bc], a                                    ; $5cad: $02
    rrca                                          ; $5cae: $0f
    add a                                         ; $5caf: $87
    dec [hl]                                      ; $5cb0: $35
    ccf                                           ; $5cb1: $3f
    ld b, b                                       ; $5cb2: $40
    ld a, a                                       ; $5cb3: $7f
    ld e, h                                       ; $5cb4: $5c
    ld l, e                                       ; $5cb5: $6b
    or [hl]                                       ; $5cb6: $b6
    ld [bc], a                                    ; $5cb7: $02
    db $dd                                        ; $5cb8: $dd
    add [hl]                                      ; $5cb9: $86
    xor d                                         ; $5cba: $aa
    cp [hl]                                       ; $5cbb: $be
    pop bc                                        ; $5cbc: $c1
    db $dd                                        ; $5cbd: $dd
    and d                                         ; $5cbe: $a2
    ld l, d                                       ; $5cbf: $6a
    ld [bc], a                                    ; $5cc0: $02
    ld d, l                                       ; $5cc1: $55
    add e                                         ; $5cc2: $83
    ld l, d                                       ; $5cc3: $6a
    ld a, [hl-]                                   ; $5cc4: $3a
    dec [hl]                                      ; $5cc5: $35
    ld [bc], a                                    ; $5cc6: $02
    rrca                                          ; $5cc7: $0f
    ld [$0200], sp                                ; $5cc8: $08 $00 $02
    jr nc, jr_0f8_5c5f                            ; $5ccb: $30 $92

    inc e                                         ; $5ccd: $1c
    inc a                                         ; $5cce: $3c
    ld a, [hl+]                                   ; $5ccf: $2a
    ld a, $16                                     ; $5cd0: $3e $16
    ld a, $2b                                     ; $5cd2: $3e $2b
    rra                                           ; $5cd4: $1f
    dec b                                         ; $5cd5: $05
    ccf                                           ; $5cd6: $3f
    inc hl                                        ; $5cd7: $23
    rra                                           ; $5cd8: $1f
    dec b                                         ; $5cd9: $05
    ccf                                           ; $5cda: $3f
    ld a, [hl+]                                   ; $5cdb: $2a
    ld e, $16                                     ; $5cdc: $1e $16
    ld a, $02                                     ; $5cde: $3e $02
    inc a                                         ; $5ce0: $3c
    ld [bc], a                                    ; $5ce1: $02
    jr nc, jr_0f8_5cec                            ; $5ce2: $30 $08

    nop                                           ; $5ce4: $00
    rst $38                                       ; $5ce5: $ff
    add hl, bc                                    ; $5ce6: $09
    ld [bc], a                                    ; $5ce7: $02
    ld hl, sp+$0a                                 ; $5ce8: $f8 $0a
    ldh a, [rSB]                                  ; $5cea: $f0 $01

jr_0f8_5cec:
    di                                            ; $5cec: $f3
    ld a, [$00f3]                                 ; $5ced: $fa $f3 $00
    ld [bc], a                                    ; $5cf0: $02
    ld [hl], b                                    ; $5cf1: $70
    sbc b                                         ; $5cf2: $98
    cp b                                          ; $5cf3: $b8
    ret z                                         ; $5cf4: $c8

    sbc a                                         ; $5cf5: $9f
    rst $28                                       ; $5cf6: $ef
    jp c, Jump_0f8_75fd                           ; $5cf7: $da $fd $75

    ld a, d                                       ; $5cfa: $7a
    ld l, a                                       ; $5cfb: $6f
    ld d, c                                       ; $5cfc: $51
    sbc a                                         ; $5cfd: $9f
    ldh [$ae], a                                  ; $5cfe: $e0 $ae
    pop de                                        ; $5d00: $d1
    sub l                                         ; $5d01: $95
    ld [$f5ca], a                                 ; $5d02: $ea $ca $f5
    ld h, l                                       ; $5d05: $65
    ld a, d                                       ; $5d06: $7a
    ld d, b                                       ; $5d07: $50
    ld a, a                                       ; $5d08: $7f
    ld a, [hl-]                                   ; $5d09: $3a
    ccf                                           ; $5d0a: $3f
    ld [bc], a                                    ; $5d0b: $02
    rrca                                          ; $5d0c: $0f
    ld [$0200], sp                                ; $5d0d: $08 $00 $02
    jr nc, @-$6a                                  ; $5d10: $30 $94

    inc c                                         ; $5d12: $0c
    inc a                                         ; $5d13: $3c
    ld a, [hl-]                                   ; $5d14: $3a
    ld l, $16                                     ; $5d15: $2e $16
    ld a, $33                                     ; $5d17: $3e $33
    cpl                                           ; $5d19: $2f
    dec h                                         ; $5d1a: $25
    rra                                           ; $5d1b: $1f
    inc de                                        ; $5d1c: $13
    cpl                                           ; $5d1d: $2f
    dec h                                         ; $5d1e: $25
    rra                                           ; $5d1f: $1f
    ld a, [bc]                                    ; $5d20: $0a
    ld a, $16                                     ; $5d21: $3e $16
    ld a, $2c                                     ; $5d23: $3e $2c
    inc a                                         ; $5d25: $3c
    ld [bc], a                                    ; $5d26: $02
    jr nc, jr_0f8_5d2d                            ; $5d27: $30 $04

    nop                                           ; $5d29: $00
    rst $38                                       ; $5d2a: $ff
    dec bc                                        ; $5d2b: $0b
    inc bc                                        ; $5d2c: $03

jr_0f8_5d2d:
    ld hl, sp+$0a                                 ; $5d2d: $f8 $0a
    ldh a, [rSB]                                  ; $5d2f: $f0 $01
    rst $28                                       ; $5d31: $ef
    ld a, [$00f3]                                 ; $5d32: $fa $f3 $00
    rst $38                                       ; $5d35: $ff
    ld a, [$1c02]                                 ; $5d36: $fa $02 $1c
    add [hl]                                      ; $5d39: $86
    ld [hl-], a                                   ; $5d3a: $32
    ld a, $26                                     ; $5d3b: $3e $26
    ld a, [hl-]                                   ; $5d3d: $3a
    ld a, $32                                     ; $5d3e: $3e $32
    ld [bc], a                                    ; $5d40: $02
    inc e                                         ; $5d41: $1c
    ld [bc], a                                    ; $5d42: $02
    nop                                           ; $5d43: $00
    ld [bc], a                                    ; $5d44: $02
    rrca                                          ; $5d45: $0f
    sub d                                         ; $5d46: $92
    ld sp, $5a3e                                  ; $5d47: $31 $3e $5a
    ld [hl], l                                    ; $5d4a: $75
    ld h, l                                       ; $5d4b: $65
    ld a, d                                       ; $5d4c: $7a
    set 6, h                                      ; $5d4d: $cb $f4
    xor l                                         ; $5d4f: $ad
    ld a, [$fdd6]                                 ; $5d50: $fa $d6 $fd
    xor l                                         ; $5d53: $ad
    ld a, [$7d52]                                 ; $5d54: $fa $52 $7d
    ld l, b                                       ; $5d57: $68
    ld a, a                                       ; $5d58: $7f
    ld [bc], a                                    ; $5d59: $02
    ld c, $98                                     ; $5d5a: $0e $98
    rla                                           ; $5d5c: $17
    add hl, de                                    ; $5d5d: $19
    inc sp                                        ; $5d5e: $33
    dec a                                         ; $5d5f: $3d
    dec de                                        ; $5d60: $1b
    ccf                                           ; $5d61: $3f
    ld l, $1e                                     ; $5d62: $2e $1e
    ld [hl], $0a                                  ; $5d64: $36 $0a
    add hl, sp                                    ; $5d66: $39
    rlca                                          ; $5d67: $07
    dec [hl]                                      ; $5d68: $35
    dec bc                                        ; $5d69: $0b
    add hl, hl                                    ; $5d6a: $29
    rla                                           ; $5d6b: $17
    inc de                                        ; $5d6c: $13
    cpl                                           ; $5d6d: $2f
    ld h, $1e                                     ; $5d6e: $26 $1e
    ld a, [bc]                                    ; $5d70: $0a
    ld a, $5c                                     ; $5d71: $3e $5c
    db $fc                                        ; $5d73: $fc
    ld [bc], a                                    ; $5d74: $02
    ldh a, [rDIV]                                 ; $5d75: $f0 $04
    nop                                           ; $5d77: $00
    add d                                         ; $5d78: $82
    inc [hl]                                      ; $5d79: $34
    inc a                                         ; $5d7a: $3c
    ld [bc], a                                    ; $5d7b: $02
    inc c                                         ; $5d7c: $0c
    inc e                                         ; $5d7d: $1c
    nop                                           ; $5d7e: $00
    rst $38                                       ; $5d7f: $ff
    dec c                                         ; $5d80: $0d
    inc b                                         ; $5d81: $04
    ld hl, sp+$0a                                 ; $5d82: $f8 $0a
    ldh a, [rSB]                                  ; $5d84: $f0 $01
    db $eb                                        ; $5d86: $eb
    ld sp, hl                                     ; $5d87: $f9
    xor $00                                       ; $5d88: $ee $00
    ei                                            ; $5d8a: $fb
    ld a, [$fffb]                                 ; $5d8b: $fa $fb $ff
    ld [bc], a                                    ; $5d8e: $02
    inc e                                         ; $5d8f: $1c
    add [hl]                                      ; $5d90: $86
    ld a, $26                                     ; $5d91: $3e $26
    ld [hl-], a                                   ; $5d93: $32
    ld l, $26                                     ; $5d94: $2e $26
    ld a, $02                                     ; $5d96: $3e $02
    inc e                                         ; $5d98: $1c
    ld a, [bc]                                    ; $5d99: $0a
    nop                                           ; $5d9a: $00
    ld [bc], a                                    ; $5d9b: $02
    rlca                                          ; $5d9c: $07
    adc d                                         ; $5d9d: $8a
    ld a, l                                       ; $5d9e: $7d
    ld a, a                                       ; $5d9f: $7f
    cp d                                          ; $5da0: $ba
    rst $08                                       ; $5da1: $cf
    sbc h                                         ; $5da2: $9c
    rst $28                                       ; $5da3: $ef
    jp c, $71fd                                   ; $5da4: $da $fd $71

    ld a, [hl]                                    ; $5da7: $7e
    ld [bc], a                                    ; $5da8: $02
    inc e                                         ; $5da9: $1c
    add [hl]                                      ; $5daa: $86
    ld [hl-], a                                   ; $5dab: $32
    ld a, $26                                     ; $5dac: $3e $26
    ld a, [hl-]                                   ; $5dae: $3a

jr_0f8_5daf:
    ld a, $32                                     ; $5daf: $3e $32
    ld [bc], a                                    ; $5db1: $02
    inc e                                         ; $5db2: $1c
    inc b                                         ; $5db3: $04
    nop                                           ; $5db4: $00
    ld [bc], a                                    ; $5db5: $02
    ld [hl], b                                    ; $5db6: $70
    sbc d                                         ; $5db7: $9a
    inc l                                         ; $5db8: $2c
    ld a, h                                       ; $5db9: $7c
    ld [bc], a                                    ; $5dba: $02
    ld a, [hl]                                    ; $5dbb: $7e
    ld a, [hl+]                                   ; $5dbc: $2a
    ld d, [hl]                                    ; $5dbd: $56
    ld d, l                                       ; $5dbe: $55
    dec hl                                        ; $5dbf: $2b
    dec sp                                        ; $5dc0: $3b
    ld b, l                                       ; $5dc1: $45
    ld a, l                                       ; $5dc2: $7d
    add e                                         ; $5dc3: $83
    cp e                                          ; $5dc4: $bb
    ld d, l                                       ; $5dc5: $55
    ld l, [hl]                                    ; $5dc6: $6e
    cp d                                          ; $5dc7: $ba
    call nz, $a0f8                                ; $5dc8: $c4 $f8 $a0
    db $fc                                        ; $5dcb: $fc
    ld d, h                                       ; $5dcc: $54
    ld a, b                                       ; $5dcd: $78
    ld l, d                                       ; $5dce: $6a
    ld a, l                                       ; $5dcf: $7d
    dec [hl]                                      ; $5dd0: $35
    ld a, $02                                     ; $5dd1: $3e $02
    rrca                                          ; $5dd3: $0f
    ld a, [de]                                    ; $5dd4: $1a
    nop                                           ; $5dd5: $00
    add h                                         ; $5dd6: $84
    dec e                                         ; $5dd7: $1d
    dec bc                                        ; $5dd8: $0b
    ld c, $16                                     ; $5dd9: $0e $16
    ld [bc], a                                    ; $5ddb: $02
    jr jr_0f8_5df2                                ; $5ddc: $18 $14

    nop                                           ; $5dde: $00
    rst $38                                       ; $5ddf: $ff
    dec c                                         ; $5de0: $0d
    inc b                                         ; $5de1: $04
    ld hl, sp+$0a                                 ; $5de2: $f8 $0a
    ldh a, [rSB]                                  ; $5de4: $f0 $01
    rst $20                                       ; $5de6: $e7
    db $fc                                        ; $5de7: $fc
    jp hl                                         ; $5de8: $e9


    ld bc, $faf7                                  ; $5de9: $01 $f7 $fa
    rst $30                                       ; $5dec: $f7
    ld bc, $3802                                  ; $5ded: $01 $02 $38
    add [hl]                                      ; $5df0: $86
    ld e, h                                       ; $5df1: $5c

jr_0f8_5df2:
    ld h, h                                       ; $5df2: $64
    ld c, h                                       ; $5df3: $4c
    ld [hl], h                                    ; $5df4: $74
    ld l, h                                       ; $5df5: $6c
    ld a, h                                       ; $5df6: $7c
    ld [bc], a                                    ; $5df7: $02
    jr c, jr_0f8_5e04                             ; $5df8: $38 $0a

    nop                                           ; $5dfa: $00
    ld [bc], a                                    ; $5dfb: $02
    ld [hl], b                                    ; $5dfc: $70
    add [hl]                                      ; $5dfd: $86
    ret z                                         ; $5dfe: $c8

    ld hl, sp-$68                                 ; $5dff: $f8 $98
    add sp, -$08                                  ; $5e01: $e8 $f8
    ret z                                         ; $5e03: $c8

jr_0f8_5e04:
    ld [bc], a                                    ; $5e04: $02
    ld a, a                                       ; $5e05: $7f
    add d                                         ; $5e06: $82
    push de                                       ; $5e07: $d5
    rst $38                                       ; $5e08: $ff
    ld [bc], a                                    ; $5e09: $02
    ld c, $86                                     ; $5e0a: $0e $86
    dec de                                        ; $5e0c: $1b
    rra                                           ; $5e0d: $1f
    add hl, de                                    ; $5e0e: $19
    rla                                           ; $5e0f: $17
    dec e                                         ; $5e10: $1d
    inc de                                        ; $5e11: $13
    ld [bc], a                                    ; $5e12: $02
    ld c, $10                                     ; $5e13: $0e $10
    nop                                           ; $5e15: $00
    ld [bc], a                                    ; $5e16: $02
    jr jr_0f8_5daf                                ; $5e17: $18 $96

    ld d, h                                       ; $5e19: $54
    db $fc                                        ; $5e1a: $fc
    ld l, $fe                                     ; $5e1b: $2e $fe
    ld b, b                                       ; $5e1d: $40
    ld a, [hl]                                    ; $5e1e: $7e
    ld d, h                                       ; $5e1f: $54
    ld l, d                                       ; $5e20: $6a
    xor d                                         ; $5e21: $aa
    push de                                       ; $5e22: $d5
    db $dd                                        ; $5e23: $dd
    and d                                         ; $5e24: $a2
    cp [hl]                                       ; $5e25: $be
    pop hl                                        ; $5e26: $e1
    db $dd                                        ; $5e27: $dd
    ld a, [c]                                     ; $5e28: $f2
    ld l, d                                       ; $5e29: $6a
    ld [hl], l                                    ; $5e2a: $75
    ld d, l                                       ; $5e2b: $55
    ld l, d                                       ; $5e2c: $6a
    ld a, [hl-]                                   ; $5e2d: $3a
    dec [hl]                                      ; $5e2e: $35
    ld [bc], a                                    ; $5e2f: $02
    rrca                                          ; $5e30: $0f
    stop                                          ; $5e31: $10 $00
    adc h                                         ; $5e33: $8c
    ld d, a                                       ; $5e34: $57
    add hl, sp                                    ; $5e35: $39
    inc de                                        ; $5e36: $13
    ld a, l                                       ; $5e37: $7d
    ld e, e                                       ; $5e38: $5b
    ccf                                           ; $5e39: $3f
    ld c, $7e                                     ; $5e3a: $0e $7e
    ld d, h                                       ; $5e3c: $54
    inc a                                         ; $5e3d: $3c
    inc l                                         ; $5e3e: $2c
    ld a, h                                       ; $5e3f: $7c
    ld [bc], a                                    ; $5e40: $02
    ld a, b                                       ; $5e41: $78
    ld [bc], a                                    ; $5e42: $02
    ld h, b                                       ; $5e43: $60
    inc c                                         ; $5e44: $0c
    nop                                           ; $5e45: $00
    rst $38                                       ; $5e46: $ff
    rrca                                          ; $5e47: $0f
    dec b                                         ; $5e48: $05
    ld hl, sp+$0a                                 ; $5e49: $f8 $0a
    ldh a, [rSB]                                  ; $5e4b: $f0 $01
    db $e3                                        ; $5e4d: $e3
    ld hl, sp-$1b                                 ; $5e4e: $f8 $e5
    ld [bc], a                                    ; $5e50: $02
    di                                            ; $5e51: $f3
    rst $30                                       ; $5e52: $f7
    di                                            ; $5e53: $f3
    rst $38                                       ; $5e54: $ff
    di                                            ; $5e55: $f3
    nop                                           ; $5e56: $00
    ld [bc], a                                    ; $5e57: $02
    ld c, $86                                     ; $5e58: $0e $86
    add hl, de                                    ; $5e5a: $19
    rra                                           ; $5e5b: $1f
    inc de                                        ; $5e5c: $13
    dec e                                         ; $5e5d: $1d
    rra                                           ; $5e5e: $1f
    add hl, de                                    ; $5e5f: $19
    ld [bc], a                                    ; $5e60: $02
    ld c, $0a                                     ; $5e61: $0e $0a
    nop                                           ; $5e63: $00
    ld [bc], a                                    ; $5e64: $02
    inc e                                         ; $5e65: $1c
    add [hl]                                      ; $5e66: $86
    ld [hl], $3e                                  ; $5e67: $36 $3e
    ld [hl-], a                                   ; $5e69: $32
    ld l, $3a                                     ; $5e6a: $2e $3a
    ld h, $02                                     ; $5e6c: $26 $02
    inc e                                         ; $5e6e: $1c
    ld [bc], a                                    ; $5e6f: $02
    nop                                           ; $5e70: $00
    ld [bc], a                                    ; $5e71: $02
    ld c, $86                                     ; $5e72: $0e $86
    rra                                           ; $5e74: $1f
    inc de                                        ; $5e75: $13
    add hl, de                                    ; $5e76: $19
    rla                                           ; $5e77: $17
    inc de                                        ; $5e78: $13
    rra                                           ; $5e79: $1f
    ld [bc], a                                    ; $5e7a: $02
    ld c, $14                                     ; $5e7b: $0e $14
    nop                                           ; $5e7d: $00
    ld [bc], a                                    ; $5e7e: $02

jr_0f8_5e7f:
    ldh [rDIV], a                                 ; $5e7f: $e0 $04
    nop                                           ; $5e81: $00
    ld [bc], a                                    ; $5e82: $02
    ld bc, $0792                                  ; $5e83: $01 $92 $07
    ld b, $7a                                     ; $5e86: $06 $7a
    ld a, l                                       ; $5e88: $7d
    cp l                                          ; $5e89: $bd
    jp z, $ec9b                                   ; $5e8a: $ca $9b $ec

    db $dd                                        ; $5e8d: $dd
    ld a, [$7d72]                                 ; $5e8e: $fa $72 $7d
    add hl, de                                    ; $5e91: $19
    ld e, $0c                                     ; $5e92: $1e $0c
    rrca                                          ; $5e94: $0f
    ld a, [bc]                                    ; $5e95: $0a
    rrca                                          ; $5e96: $0f
    ld [bc], a                                    ; $5e97: $02
    rlca                                          ; $5e98: $07
    ld [bc], a                                    ; $5e99: $02
    ld bc, $0008                                  ; $5e9a: $01 $08 $00
    sub [hl]                                      ; $5e9d: $96
    ld a, [c]                                     ; $5e9e: $f2
    cp $66                                        ; $5e9f: $fe $66
    cp d                                          ; $5ea1: $ba
    cp a                                          ; $5ea2: $bf
    ld [hl], e                                    ; $5ea3: $73
    rst $18                                       ; $5ea4: $df
    ccf                                           ; $5ea5: $3f
    jp hl                                         ; $5ea6: $e9


    rla                                           ; $5ea7: $17
    jp nc, $a92f                                  ; $5ea8: $d2 $2f $a9

    ld d, a                                       ; $5eab: $57
    ld d, d                                       ; $5eac: $52
    xor a                                         ; $5ead: $af
    and l                                         ; $5eae: $a5
    ld e, a                                       ; $5eaf: $5f
    dec bc                                        ; $5eb0: $0b
    rst $38                                       ; $5eb1: $ff
    ld d, [hl]                                    ; $5eb2: $56
    cp $02                                        ; $5eb3: $fe $02
    ld hl, sp+$10                                 ; $5eb5: $f8 $10
    nop                                           ; $5eb7: $00
    ld [$0c01], sp                                ; $5eb8: $08 $01 $0c
    nop                                           ; $5ebb: $00
    rst $38                                       ; $5ebc: $ff
    ld de, $f806                                  ; $5ebd: $11 $06 $f8
    ld a, [bc]                                    ; $5ec0: $0a
    ldh a, [rSB]                                  ; $5ec1: $f0 $01
    ld a, [c]                                     ; $5ec3: $f2
    db $f4                                        ; $5ec4: $f4
    rst $18                                       ; $5ec5: $df
    db $fc                                        ; $5ec6: $fc
    rst $28                                       ; $5ec7: $ef
    db $fc                                        ; $5ec8: $fc
    rst $38                                       ; $5ec9: $ff
    db $fc                                        ; $5eca: $fc
    ldh [rDIV], a                                 ; $5ecb: $e0 $04
    ldh a, [rDIV]                                 ; $5ecd: $f0 $04
    ld [bc], a                                    ; $5ecf: $02
    inc e                                         ; $5ed0: $1c
    add [hl]                                      ; $5ed1: $86
    ld [hl-], a                                   ; $5ed2: $32
    ld a, $26                                     ; $5ed3: $3e $26
    ld a, [hl-]                                   ; $5ed5: $3a
    ld a, $32                                     ; $5ed6: $3e $32
    ld [bc], a                                    ; $5ed8: $02
    inc e                                         ; $5ed9: $1c
    inc b                                         ; $5eda: $04
    ld bc, $0302                                  ; $5edb: $01 $02 $03
    add c                                         ; $5ede: $81
    ld [bc], a                                    ; $5edf: $02
    inc bc                                        ; $5ee0: $03
    inc bc                                        ; $5ee1: $03
    add d                                         ; $5ee2: $82
    ld [bc], a                                    ; $5ee3: $02
    inc bc                                        ; $5ee4: $03
    inc b                                         ; $5ee5: $04
    ld bc, $0006                                  ; $5ee6: $01 $06 $00
    ld [bc], a                                    ; $5ee9: $02
    ld [hl], b                                    ; $5eea: $70
    add [hl]                                      ; $5eeb: $86
    ret c                                         ; $5eec: $d8

    ld hl, sp-$37                                 ; $5eed: $f8 $c9
    cp c                                          ; $5eef: $b9
    jp hl                                         ; $5ef0: $e9


    sbc c                                         ; $5ef1: $99
    ld [bc], a                                    ; $5ef2: $02
    ld [hl], c                                    ; $5ef3: $71
    ld a, [bc]                                    ; $5ef4: $0a

jr_0f8_5ef5:
    nop                                           ; $5ef5: $00
    ld [bc], a                                    ; $5ef6: $02
    jr c, jr_0f8_5e7f                             ; $5ef7: $38 $86

    ld a, h                                       ; $5ef9: $7c
    ld c, h                                       ; $5efa: $4c
    ld h, h                                       ; $5efb: $64
    ld e, h                                       ; $5efc: $5c
    ld c, h                                       ; $5efd: $4c
    ld a, h                                       ; $5efe: $7c
    ld [bc], a                                    ; $5eff: $02
    jr c, jr_0f8_5f10                             ; $5f00: $38 $0e

    nop                                           ; $5f02: $00
    ld [bc], a                                    ; $5f03: $02
    ccf                                           ; $5f04: $3f
    sub h                                         ; $5f05: $94
    push bc                                       ; $5f06: $c5
    ld a, [$d56a]                                 ; $5f07: $fa $6a $d5
    sub a                                         ; $5f0a: $97
    jp hl                                         ; $5f0b: $e9


    ld l, $d3                                     ; $5f0c: $2e $d3
    sub a                                         ; $5f0e: $97
    jp hl                                         ; $5f0f: $e9


jr_0f8_5f10:
    ld a, [hl+]                                   ; $5f10: $2a
    push de                                       ; $5f11: $d5
    sub l                                         ; $5f12: $95
    ld [$f54a], a                                 ; $5f13: $ea $4a $f5
    and b                                         ; $5f16: $a0
    rst $38                                       ; $5f17: $ff
    push de                                       ; $5f18: $d5
    rst $38                                       ; $5f19: $ff
    ld [bc], a                                    ; $5f1a: $02
    ccf                                           ; $5f1b: $3f
    inc e                                         ; $5f1c: $1c
    nop                                           ; $5f1d: $00
    ld [bc], a                                    ; $5f1e: $02
    ldh [$86], a                                  ; $5f1f: $e0 $86
    ld [hl], b                                    ; $5f21: $70
    sub b                                         ; $5f22: $90
    jr nc, jr_0f8_5ef5                            ; $5f23: $30 $d0

    or b                                          ; $5f25: $b0
    ldh a, [rSC]                                  ; $5f26: $f0 $02
    ldh [rNR21], a                                ; $5f28: $e0 $16
    nop                                           ; $5f2a: $00
    ld [bc], a                                    ; $5f2b: $02
    ld [hl], b                                    ; $5f2c: $70
    add [hl]                                      ; $5f2d: $86
    ret c                                         ; $5f2e: $d8

    ld hl, sp-$38                                 ; $5f2f: $f8 $c8
    cp b                                          ; $5f31: $b8
    add sp, -$68                                  ; $5f32: $e8 $98
    ld [bc], a                                    ; $5f34: $02
    ld [hl], b                                    ; $5f35: $70
    ld [bc], a                                    ; $5f36: $02
    nop                                           ; $5f37: $00

jr_0f8_5f38:
    ld [bc], a                                    ; $5f38: $02
    ret nz                                        ; $5f39: $c0

    add c                                         ; $5f3a: $81
    and b                                         ; $5f3b: $a0
    ld [bc], a                                    ; $5f3c: $02
    ld h, b                                       ; $5f3d: $60
    adc l                                         ; $5f3e: $8d
    and b                                         ; $5f3f: $a0
    sub b                                         ; $5f40: $90
    ldh a, [$50]                                  ; $5f41: $f0 $50
    or b                                          ; $5f43: $b0
    sub b                                         ; $5f44: $90
    ld [hl], b                                    ; $5f45: $70
    jr nc, jr_0f8_5f38                            ; $5f46: $30 $f0

    ld h, b                                       ; $5f48: $60
    ldh [$a0], a                                  ; $5f49: $e0 $a0
    ldh [rSC], a                                  ; $5f4b: $e0 $02
    ret nz                                        ; $5f4d: $c0

    rst $38                                       ; $5f4e: $ff
    ld de, $f806                                  ; $5f4f: $11 $06 $f8
    ld a, [bc]                                    ; $5f52: $0a
    ldh a, [rSB]                                  ; $5f53: $f0 $01
    db $dd                                        ; $5f55: $dd
    ld hl, sp-$23                                 ; $5f56: $f8 $dd
    nop                                           ; $5f58: $00
    db $ed                                        ; $5f59: $ed
    ld hl, sp-$13                                 ; $5f5a: $f8 $ed
    nop                                           ; $5f5c: $00
    db $fd                                        ; $5f5d: $fd
    ei                                            ; $5f5e: $fb
    db $fd                                        ; $5f5f: $fd
    rst $38                                       ; $5f60: $ff
    ld [bc], a                                    ; $5f61: $02
    db $10                                        ; $5f62: $10
    add d                                         ; $5f63: $82
    jr z, jr_0f8_5f9e                             ; $5f64: $28 $38

    ld [bc], a                                    ; $5f66: $02
    db $10                                        ; $5f67: $10
    ld a, [bc]                                    ; $5f68: $0a
    nop                                           ; $5f69: $00
    ld [bc], a                                    ; $5f6a: $02
    ld c, $86                                     ; $5f6b: $0e $86
    rla                                           ; $5f6d: $17
    add hl, de                                    ; $5f6e: $19
    inc de                                        ; $5f6f: $13
    dec e                                         ; $5f70: $1d
    dec de                                        ; $5f71: $1b
    rra                                           ; $5f72: $1f
    ld [bc], a                                    ; $5f73: $02
    ld c, $06                                     ; $5f74: $0e $06
    nop                                           ; $5f76: $00
    ld [bc], a                                    ; $5f77: $02
    ld [bc], a                                    ; $5f78: $02
    add d                                         ; $5f79: $82
    dec b                                         ; $5f7a: $05
    rlca                                          ; $5f7b: $07
    ld [bc], a                                    ; $5f7c: $02
    ld [bc], a                                    ; $5f7d: $02
    ld d, $00                                     ; $5f7e: $16 $00
    ld [bc], a                                    ; $5f80: $02
    ld c, $82                                     ; $5f81: $0e $82
    rra                                           ; $5f83: $1f
    inc de                                        ; $5f84: $13
    ld [bc], a                                    ; $5f85: $02
    ld [hl], b                                    ; $5f86: $70
    add [hl]                                      ; $5f87: $86
    ret c                                         ; $5f88: $d8

    ld hl, sp-$38                                 ; $5f89: $f8 $c8
    cp b                                          ; $5f8b: $b8
    add sp, -$68                                  ; $5f8c: $e8 $98
    ld [bc], a                                    ; $5f8e: $02
    ld [hl], b                                    ; $5f8f: $70
    ld [bc], a                                    ; $5f90: $02
    nop                                           ; $5f91: $00
    ld [bc], a                                    ; $5f92: $02
    ld bc, $0284                                  ; $5f93: $01 $84 $02
    inc bc                                        ; $5f96: $03
    ld [bc], a                                    ; $5f97: $02
    inc bc                                        ; $5f98: $03
    ld [bc], a                                    ; $5f99: $02
    rrca                                          ; $5f9a: $0f
    sub b                                         ; $5f9b: $90
    dec d                                         ; $5f9c: $15
    rra                                           ; $5f9d: $1f

jr_0f8_5f9e:
    ld a, [de]                                    ; $5f9e: $1a
    rra                                           ; $5f9f: $1f
    dec [hl]                                      ; $5fa0: $35
    ld a, $28                                     ; $5fa1: $3e $28
    ccf                                           ; $5fa3: $3f
    ld sp, $283e                                  ; $5fa4: $31 $3e $28
    ccf                                           ; $5fa7: $3f
    add hl, de                                    ; $5fa8: $19
    rla                                           ; $5fa9: $17
    inc de                                        ; $5faa: $13
    rra                                           ; $5fab: $1f
    ld [bc], a                                    ; $5fac: $02
    ld c, $06                                     ; $5fad: $0e $06
    nop                                           ; $5faf: $00
    ld [bc], a                                    ; $5fb0: $02
    ret nz                                        ; $5fb1: $c0

    sbc b                                         ; $5fb2: $98
    ldh [rNR41], a                                ; $5fb3: $e0 $20
    ld [hl], b                                    ; $5fb5: $70
    or b                                          ; $5fb6: $b0
    ld l, h                                       ; $5fb7: $6c
    db $fc                                        ; $5fb8: $fc
    jp nz, $2afe                                  ; $5fb9: $c2 $fe $2a

    sub $55                                       ; $5fbc: $d6 $55
    xor e                                         ; $5fbe: $ab
    cp e                                          ; $5fbf: $bb
    ld b, l                                       ; $5fc0: $45
    ld a, l                                       ; $5fc1: $7d
    add e                                         ; $5fc2: $83
    cp e                                          ; $5fc3: $bb
    ld b, l                                       ; $5fc4: $45
    xor d                                         ; $5fc5: $aa
    push af                                       ; $5fc6: $f5
    push de                                       ; $5fc7: $d5
    ld a, [$7d6a]                                 ; $5fc8: $fa $6a $7d
    ld [bc], a                                    ; $5fcb: $02
    rra                                           ; $5fcc: $1f
    jr jr_0f8_5fcf                                ; $5fcd: $18 $00

jr_0f8_5fcf:
    add c                                         ; $5fcf: $81
    dec bc                                        ; $5fd0: $0b
    ld [bc], a                                    ; $5fd1: $02
    dec b                                         ; $5fd2: $05
    add e                                         ; $5fd3: $83
    dec bc                                        ; $5fd4: $0b
    ld c, $06                                     ; $5fd5: $0e $06
    ld [bc], a                                    ; $5fd7: $02
    ld [$0018], sp                                ; $5fd8: $08 $18 $00
    rst $38                                       ; $5fdb: $ff
    ld de, $f806                                  ; $5fdc: $11 $06 $f8
    ld a, [bc]                                    ; $5fdf: $0a
    ldh a, [rSB]                                  ; $5fe0: $f0 $01
    pop hl                                        ; $5fe2: $e1
    or $e0                                        ; $5fe3: $f6 $e0
    cp $e6                                        ; $5fe5: $fe $e6
    ld [bc], a                                    ; $5fe7: $02
    ldh a, [$fa]                                  ; $5fe8: $f0 $fa
    or $00                                        ; $5fea: $f6 $00
    nop                                           ; $5fec: $00
    ld hl, sp+$06                                 ; $5fed: $f8 $06
    ld bc, $000a                                  ; $5fef: $01 $0a $00
    ld [bc], a                                    ; $5ff2: $02
    ld [hl], b                                    ; $5ff3: $70
    add [hl]                                      ; $5ff4: $86
    ld hl, sp-$68                                 ; $5ff5: $f8 $98
    ret z                                         ; $5ff7: $c8

    cp b                                          ; $5ff8: $b8
    sbc b                                         ; $5ff9: $98
    ld hl, sp+$02                                 ; $5ffa: $f8 $02
    ld [hl], b                                    ; $5ffc: $70
    ld b, $00                                     ; $5ffd: $06 $00
    ld [bc], a                                    ; $5fff: $02
    ldh [$86], a                                  ; $6000: $e0 $86

jr_0f8_6002:
    sub b                                         ; $6002: $90
    ldh a, [$30]                                  ; $6003: $f0 $30
    ret nc                                        ; $6005: $d0

    ldh a, [$90]                                  ; $6006: $f0 $90
    ld [bc], a                                    ; $6008: $02
    ldh [rDIV], a                                 ; $6009: $e0 $04
    nop                                           ; $600b: $00
    ld b, $01                                     ; $600c: $06 $01
    ld a, [bc]                                    ; $600e: $0a
    nop                                           ; $600f: $00
    ld [bc], a                                    ; $6010: $02
    inc e                                         ; $6011: $1c
    ld [bc], a                                    ; $6012: $02
    ld c, $86                                     ; $6013: $0e $86
    rlca                                          ; $6015: $07
    add hl, bc                                    ; $6016: $09
    inc bc                                        ; $6017: $03
    dec c                                         ; $6018: $0d
    dec bc                                        ; $6019: $0b
    rrca                                          ; $601a: $0f
    ld [bc], a                                    ; $601b: $02
    ld c, $0a                                     ; $601c: $0e $0a
    nop                                           ; $601e: $00
    add [hl]                                      ; $601f: $86
    jr nz, jr_0f8_6002                            ; $6020: $20 $e0

    ld h, b                                       ; $6022: $60
    and b                                         ; $6023: $a0
    ldh [rNR41], a                                ; $6024: $e0 $20
    ld [bc], a                                    ; $6026: $02
    ret nz                                        ; $6027: $c0

    ld [bc], a                                    ; $6028: $02
    nop                                           ; $6029: $00
    ld [bc], a                                    ; $602a: $02
    ret nz                                        ; $602b: $c0

    ld [bc], a                                    ; $602c: $02
    inc bc                                        ; $602d: $03
    add c                                         ; $602e: $81
    ld [bc], a                                    ; $602f: $02
    inc bc                                        ; $6030: $03
    inc bc                                        ; $6031: $03
    ld [bc], a                                    ; $6032: $02
    ld bc, $0002                                  ; $6033: $01 $02 $00
    ld [bc], a                                    ; $6036: $02
    rrca                                          ; $6037: $0f
    adc c                                         ; $6038: $89
    dec [hl]                                      ; $6039: $35
    ccf                                           ; $603a: $3f
    ld b, b                                       ; $603b: $40
    ld a, a                                       ; $603c: $7f
    ld d, h                                       ; $603d: $54
    ld l, e                                       ; $603e: $6b

Call_0f8_603f:
    xor d                                         ; $603f: $aa
    db $dd                                        ; $6040: $dd
    push de                                       ; $6041: $d5
    ld [bc], a                                    ; $6042: $02
    cp [hl]                                       ; $6043: $be
    add h                                         ; $6044: $84
    ret                                           ; $6045: $c9


    db $dd                                        ; $6046: $dd
    and d                                         ; $6047: $a2
    ld l, d                                       ; $6048: $6a
    ld [bc], a                                    ; $6049: $02
    ld d, l                                       ; $604a: $55

jr_0f8_604b:
    sub l                                         ; $604b: $95
    ld l, d                                       ; $604c: $6a
    ld a, [hl-]                                   ; $604d: $3a
    dec [hl]                                      ; $604e: $35
    inc e                                         ; $604f: $1c
    inc a                                         ; $6050: $3c
    ld a, [hl+]                                   ; $6051: $2a
    ld a, $16                                     ; $6052: $3e $16
    ld a, $2b                                     ; $6054: $3e $2b
    rra                                           ; $6056: $1f
    dec b                                         ; $6057: $05
    ccf                                           ; $6058: $3f
    inc hl                                        ; $6059: $23
    rra                                           ; $605a: $1f
    dec b                                         ; $605b: $05
    ccf                                           ; $605c: $3f
    ld a, [hl+]                                   ; $605d: $2a
    ld e, $16                                     ; $605e: $1e $16
    ld a, $02                                     ; $6060: $3e $02
    inc a                                         ; $6062: $3c
    ld [bc], a                                    ; $6063: $02
    ldh a, [$0a]                                  ; $6064: $f0 $0a
    nop                                           ; $6066: $00
    ld [bc], a                                    ; $6067: $02
    inc bc                                        ; $6068: $03
    ld e, $00                                     ; $6069: $1e $00
    rst $38                                       ; $606b: $ff
    ld de, $f806                                  ; $606c: $11 $06 $f8
    ld a, [bc]                                    ; $606f: $0a
    ldh a, [rSB]                                  ; $6070: $f0 $01
    db $dd                                        ; $6072: $dd
    rst $30                                       ; $6073: $f7
    pop hl                                        ; $6074: $e1
    rst $38                                       ; $6075: $ff
    pop hl                                        ; $6076: $e1
    ld bc, $faed                                  ; $6077: $01 $ed $fa
    push af                                       ; $607a: $f5
    nop                                           ; $607b: $00
    db $fd                                        ; $607c: $fd
    ld hl, sp+$02                                 ; $607d: $f8 $02
    ld [bc], a                                    ; $607f: $02
    add d                                         ; $6080: $82
    dec b                                         ; $6081: $05
    rlca                                          ; $6082: $07
    ld [bc], a                                    ; $6083: $02
    ld [bc], a                                    ; $6084: $02
    ld [$0200], sp                                ; $6085: $08 $00 $02
    ld [hl], b                                    ; $6088: $70
    add [hl]                                      ; $6089: $86
    cp b                                          ; $608a: $b8
    ret z                                         ; $608b: $c8

    sbc b                                         ; $608c: $98
    add sp, -$28                                  ; $608d: $e8 $d8
    ld hl, sp+$02                                 ; $608f: $f8 $02
    ld [hl], b                                    ; $6091: $70
    inc b                                         ; $6092: $04
    nop                                           ; $6093: $00
    inc b                                         ; $6094: $04
    ld bc, $0302                                  ; $6095: $01 $02 $03
    add e                                         ; $6098: $83
    ld b, $07                                     ; $6099: $06 $07
    inc b                                         ; $609b: $04
    ld [bc], a                                    ; $609c: $02
    rlca                                          ; $609d: $07
    add c                                         ; $609e: $81
    ld b, $02                                     ; $609f: $06 $02
    inc bc                                        ; $60a1: $03
    ld [$0200], sp                                ; $60a2: $08 $00 $02
    ldh [$86], a                                  ; $60a5: $e0 $86
    or b                                          ; $60a7: $b0
    ldh a, [$90]                                  ; $60a8: $f0 $90
    ld [hl], b                                    ; $60aa: $70
    ret nc                                        ; $60ab: $d0

    jr nc, jr_0f8_60b0                            ; $60ac: $30 $02

    ldh [rDIV], a                                 ; $60ae: $e0 $04

jr_0f8_60b0:
    nop                                           ; $60b0: $00
    ld [bc], a                                    ; $60b1: $02
    ld [bc], a                                    ; $60b2: $02
    add c                                         ; $60b3: $81
    ld bc, $0302                                  ; $60b4: $01 $02 $03
    add e                                         ; $60b7: $83
    ld bc, $0103                                  ; $60b8: $01 $03 $01
    ld [bc], a                                    ; $60bb: $02
    ld [bc], a                                    ; $60bc: $02
    ld d, $00                                     ; $60bd: $16 $00
    ld [bc], a                                    ; $60bf: $02
    ld [$000c], sp                                ; $60c0: $08 $0c $00
    ld [bc], a                                    ; $60c3: $02
    jr c, jr_0f8_604b                             ; $60c4: $38 $85

    ld e, a                                       ; $60c6: $5f
    ld h, a                                       ; $60c7: $67
    ld c, [hl]                                    ; $60c8: $4e
    ld [hl], l                                    ; $60c9: $75
    ld l, l                                       ; $60ca: $6d
    ld [bc], a                                    ; $60cb: $02
    ld a, [hl]                                    ; $60cc: $7e
    adc c                                         ; $60cd: $89
    ld a, c                                       ; $60ce: $79
    sbc a                                         ; $60cf: $9f
    ldh [$ae], a                                  ; $60d0: $e0 $ae
    pop de                                        ; $60d2: $d1
    sub l                                         ; $60d3: $95
    ld [$f5ca], a                                 ; $60d4: $ea $ca $f5
    ld [bc], a                                    ; $60d7: $02
    jr nc, @-$6a                                  ; $60d8: $30 $94

    inc c                                         ; $60da: $0c
    inc a                                         ; $60db: $3c
    ld a, [de]                                    ; $60dc: $1a
    ld l, $26                                     ; $60dd: $2e $26
    ld e, $13                                     ; $60df: $1e $13
    cpl                                           ; $60e1: $2f
    dec h                                         ; $60e2: $25
    rra                                           ; $60e3: $1f
    inc de                                        ; $60e4: $13
    cpl                                           ; $60e5: $2f

jr_0f8_60e6:
    dec h                                         ; $60e6: $25
    rra                                           ; $60e7: $1f
    ld c, d                                       ; $60e8: $4a
    cp [hl]                                       ; $60e9: $be
    ld d, $fe                                     ; $60ea: $16 $fe
    xor h                                         ; $60ec: $ac
    db $fc                                        ; $60ed: $fc
    ld [bc], a                                    ; $60ee: $02
    ldh a, [$08]                                  ; $60ef: $f0 $08
    nop                                           ; $60f1: $00
    add [hl]                                      ; $60f2: $86
    add hl, de                                    ; $60f3: $19
    ld e, $14                                     ; $60f4: $1e $14
    rra                                           ; $60f6: $1f
    ld c, $0f                                     ; $60f7: $0e $0f
    ld [bc], a                                    ; $60f9: $02
    inc bc                                        ; $60fa: $03
    jr jr_0f8_60fd                                ; $60fb: $18 $00

jr_0f8_60fd:
    rst $38                                       ; $60fd: $ff
    rrca                                          ; $60fe: $0f
    dec b                                         ; $60ff: $05
    ld hl, sp+$0a                                 ; $6100: $f8 $0a
    ldh a, [rSB]                                  ; $6102: $f0 $01
    ldh [$f7], a                                  ; $6104: $e0 $f7
    sbc $fd                                       ; $6106: $de $fd
    rst $28                                       ; $6108: $ef
    ld a, [$00f0]                                 ; $6109: $fa $f0 $00
    cp $fc                                        ; $610c: $fe $fc
    ld [bc], a                                    ; $610e: $02
    ld b, b                                       ; $610f: $40
    add d                                         ; $6110: $82
    and b                                         ; $6111: $a0
    ldh [rSC], a                                  ; $6112: $e0 $02
    ld b, b                                       ; $6114: $40
    ld a, [de]                                    ; $6115: $1a
    nop                                           ; $6116: $00
    ld [bc], a                                    ; $6117: $02
    ld [bc], a                                    ; $6118: $02
    add d                                         ; $6119: $82
    dec b                                         ; $611a: $05
    rlca                                          ; $611b: $07
    ld [bc], a                                    ; $611c: $02
    ld [bc], a                                    ; $611d: $02
    ld a, [bc]                                    ; $611e: $0a
    nop                                           ; $611f: $00
    ld [bc], a                                    ; $6120: $02
    inc b                                         ; $6121: $04
    add d                                         ; $6122: $82
    ld a, [bc]                                    ; $6123: $0a
    ld c, $02                                     ; $6124: $0e $02
    inc b                                         ; $6126: $04
    ld a, [bc]                                    ; $6127: $0a
    nop                                           ; $6128: $00
    ld [bc], a                                    ; $6129: $02
    rlca                                          ; $612a: $07
    add [hl]                                      ; $612b: $86
    inc c                                         ; $612c: $0c
    rrca                                          ; $612d: $0f
    add hl, bc                                    ; $612e: $09
    ld c, $0f                                     ; $612f: $0e $0f
    inc c                                         ; $6131: $0c
    ld [bc], a                                    ; $6132: $02
    rlca                                          ; $6133: $07
    ld [bc], a                                    ; $6134: $02
    nop                                           ; $6135: $00
    ld [bc], a                                    ; $6136: $02
    rrca                                          ; $6137: $0f
    sub d                                         ; $6138: $92
    ld sp, $5a3e                                  ; $6139: $31 $3e $5a
    ld [hl], l                                    ; $613c: $75
    ld h, l                                       ; $613d: $65
    ld a, d                                       ; $613e: $7a
    set 6, h                                      ; $613f: $cb $f4
    and l                                         ; $6141: $a5
    ld a, [$f5ca]                                 ; $6142: $fa $ca $f5
    and l                                         ; $6145: $a5
    ld a, [$7d52]                                 ; $6146: $fa $52 $7d
    ld l, b                                       ; $6149: $68
    ld a, a                                       ; $614a: $7f
    ld b, $20                                     ; $614b: $06 $20
    inc b                                         ; $614d: $04
    nop                                           ; $614e: $00
    ld [bc], a                                    ; $614f: $02
    jr nc, jr_0f8_60e6                            ; $6150: $30 $94

    inc e                                         ; $6152: $1c
    inc l                                         ; $6153: $2c
    ld a, [hl+]                                   ; $6154: $2a
    ld d, $36                                     ; $6155: $16 $36
    ld a, [bc]                                    ; $6157: $0a
    add hl, sp                                    ; $6158: $39
    rlca                                          ; $6159: $07
    dec [hl]                                      ; $615a: $35
    dec bc                                        ; $615b: $0b
    add hl, hl                                    ; $615c: $29
    rla                                           ; $615d: $17
    inc de                                        ; $615e: $13
    cpl                                           ; $615f: $2f
    ld h, $1e                                     ; $6160: $26 $1e
    ld a, [bc]                                    ; $6162: $0a
    ld a, $5c                                     ; $6163: $3e $5c
    db $fc                                        ; $6165: $fc
    ld [bc], a                                    ; $6166: $02
    nop                                           ; $6167: $00
    add d                                         ; $6168: $82
    ret nc                                        ; $6169: $d0

    ldh a, [rSC]                                  ; $616a: $f0 $02
    ccf                                           ; $616c: $3f
    ld a, [de]                                    ; $616d: $1a
    nop                                           ; $616e: $00
    rst $38                                       ; $616f: $ff
    dec bc                                        ; $6170: $0b
    inc bc                                        ; $6171: $03
    ld hl, sp+$0a                                 ; $6172: $f8 $0a
    ldh a, [rSB]                                  ; $6174: $f0 $01
    db $ec                                        ; $6176: $ec
    ei                                            ; $6177: $fb
    rst $30                                       ; $6178: $f7
    rst $38                                       ; $6179: $ff
    db $fc                                        ; $617a: $fc
    ei                                            ; $617b: $fb
    ld [bc], a                                    ; $617c: $02
    ld [$1482], sp                                ; $617d: $08 $82 $14
    inc e                                         ; $6180: $1c
    ld [bc], a                                    ; $6181: $02
    ld [$000e], sp                                ; $6182: $08 $0e $00
    ld [bc], a                                    ; $6185: $02
    rrca                                          ; $6186: $0f
    adc d                                         ; $6187: $8a
    ld a, [hl-]                                   ; $6188: $3a
    ccf                                           ; $6189: $3f
    ld d, h                                       ; $618a: $54
    ld a, a                                       ; $618b: $7f
    ld l, d                                       ; $618c: $6a
    ld a, l                                       ; $618d: $7d
    push de                                       ; $618e: $d5
    ld a, [$fca3]                                 ; $618f: $fa $a3 $fc
    ld [bc], a                                    ; $6192: $02
    inc c                                         ; $6193: $0c
    add l                                         ; $6194: $85
    ld [bc], a                                    ; $6195: $02
    ld c, $0a                                     ; $6196: $0e $0a
    ld b, $05                                     ; $6198: $06 $05
    ld [bc], a                                    ; $619a: $02
    dec bc                                        ; $619b: $0b
    add d                                         ; $619c: $82
    dec b                                         ; $619d: $05
    ld d, [hl]                                    ; $619e: $56
    ld [bc], a                                    ; $619f: $02
    xor d                                         ; $61a0: $aa
    add e                                         ; $61a1: $83
    sub $5c                                       ; $61a2: $d6 $5c
    db $ec                                        ; $61a4: $ec
    ld [bc], a                                    ; $61a5: $02
    ldh a, [$0e]                                  ; $61a6: $f0 $0e
    nop                                           ; $61a8: $00
    add h                                         ; $61a9: $84
    ld d, b                                       ; $61aa: $50
    ld [hl], b                                    ; $61ab: $70
    ld h, b                                       ; $61ac: $60
    ld [hl], b                                    ; $61ad: $70
    ld [bc], a                                    ; $61ae: $02
    jr nc, jr_0f8_61cb                            ; $61af: $30 $1a

    nop                                           ; $61b1: $00
    rst $38                                       ; $61b2: $ff
    rlca                                          ; $61b3: $07
    ld bc, $0df1                                  ; $61b4: $01 $f1 $0d
    ld hl, sp+$08                                 ; $61b7: $f8 $08
    nop                                           ; $61b9: $00
    ld sp, hl                                     ; $61ba: $f9
    sub d                                         ; $61bb: $92
    nop                                           ; $61bc: $00
    rrca                                          ; $61bd: $0f
    ld [$0814], sp                                ; $61be: $08 $14 $08
    inc d                                         ; $61c1: $14
    db $10                                        ; $61c2: $10
    jr z, jr_0f8_61e5                             ; $61c3: $28 $20

    ld d, b                                       ; $61c5: $50
    jr nz, jr_0f8_6218                            ; $61c6: $20 $50

    db $10                                        ; $61c8: $10
    jr z, jr_0f8_61cb                             ; $61c9: $28 $00

jr_0f8_61cb:
    jr jr_0f8_61cd                                ; $61cb: $18 $00

jr_0f8_61cd:
    jr jr_0f8_61dd                                ; $61cd: $18 $0e

    nop                                           ; $61cf: $00
    rst $38                                       ; $61d0: $ff
    add hl, bc                                    ; $61d1: $09
    ld [bc], a                                    ; $61d2: $02
    pop af                                        ; $61d3: $f1
    dec c                                         ; $61d4: $0d
    ld hl, sp+$08                                 ; $61d5: $f8 $08
    cp $fc                                        ; $61d7: $fe $fc
    cp $04                                        ; $61d9: $fe $04
    inc bc                                        ; $61db: $03
    nop                                           ; $61dc: $00

jr_0f8_61dd:
    sub e                                         ; $61dd: $93
    inc bc                                        ; $61de: $03
    ld [bc], a                                    ; $61df: $02
    dec c                                         ; $61e0: $0d
    inc c                                         ; $61e1: $0c
    ld [de], a                                    ; $61e2: $12
    nop                                           ; $61e3: $00
    inc e                                         ; $61e4: $1c

jr_0f8_61e5:
    nop                                           ; $61e5: $00
    ld h, b                                       ; $61e6: $60
    ld b, b                                       ; $61e7: $40
    and b                                         ; $61e8: $a0
    ld b, b                                       ; $61e9: $40
    and b                                         ; $61ea: $a0
    ld b, b                                       ; $61eb: $40
    and b                                         ; $61ec: $a0
    ld b, b                                       ; $61ed: $40
    and b                                         ; $61ee: $a0
    ld b, b                                       ; $61ef: $40
    and b                                         ; $61f0: $a0
    dec bc                                        ; $61f1: $0b
    nop                                           ; $61f2: $00
    ld [bc], a                                    ; $61f3: $02
    ldh [$89], a                                  ; $61f4: $e0 $89
    inc e                                         ; $61f6: $1c
    ld [$04b4], sp                                ; $61f7: $08 $b4 $04
    ld a, [bc]                                    ; $61fa: $0a
    ld [bc], a                                    ; $61fb: $02
    dec b                                         ; $61fc: $05
    nop                                           ; $61fd: $00
    inc bc                                        ; $61fe: $03
    inc d                                         ; $61ff: $14
    nop                                           ; $6200: $00
    rst $38                                       ; $6201: $ff
    dec bc                                        ; $6202: $0b
    inc bc                                        ; $6203: $03
    pop af                                        ; $6204: $f1
    dec c                                         ; $6205: $0d
    ld hl, sp+$08                                 ; $6206: $f8 $08
    ld a, [$fafb]                                 ; $6208: $fa $fb $fa
    inc bc                                        ; $620b: $03
    ld a, [$0306]                                 ; $620c: $fa $06 $03
    nop                                           ; $620f: $00
    ld [bc], a                                    ; $6210: $02
    ld bc, $0e99                                  ; $6211: $01 $99 $0e
    inc c                                         ; $6214: $0c
    inc de                                        ; $6215: $13
    db $10                                        ; $6216: $10
    inc l                                         ; $6217: $2c

jr_0f8_6218:
    nop                                           ; $6218: $00
    jr nc, @+$12                                  ; $6219: $30 $10

    jr z, jr_0f8_6225                             ; $621b: $28 $08

    inc d                                         ; $621d: $14
    ld [$1814], sp                                ; $621e: $08 $14 $18
    ld h, h                                       ; $6221: $64
    ld h, b                                       ; $6222: $60
    sbc b                                         ; $6223: $98
    ld b, b                                       ; $6224: $40

jr_0f8_6225:
    and b                                         ; $6225: $a0
    ld b, b                                       ; $6226: $40
    and b                                         ; $6227: $a0
    jr nz, jr_0f8_627a                            ; $6228: $20 $50

    jr nz, jr_0f8_627c                            ; $622a: $20 $50

    inc bc                                        ; $622c: $03
    nop                                           ; $622d: $00
    sub a                                         ; $622e: $97
    ld bc, $8600                                  ; $622f: $01 $00 $86
    add b                                         ; $6232: $80
    ld [hl], h                                    ; $6233: $74
    db $10                                        ; $6234: $10
    db $ec                                        ; $6235: $ec
    inc c                                         ; $6236: $0c
    inc de                                        ; $6237: $13
    ld bc, $000e                                  ; $6238: $01 $0e $00
    ld bc, $0300                                  ; $623b: $01 $00 $03
    ld bc, $0102                                  ; $623e: $01 $02 $01
    ld b, $00                                     ; $6241: $06 $00
    dec b                                         ; $6243: $05
    nop                                           ; $6244: $00
    ld [$0003], sp                                ; $6245: $08 $03 $00
    add e                                         ; $6248: $83
    ld bc, $0100                                  ; $6249: $01 $00 $01
    dec c                                         ; $624c: $0d
    nop                                           ; $624d: $00
    sub e                                         ; $624e: $93
    ld b, $00                                     ; $624f: $06 $00
    dec b                                         ; $6251: $05
    nop                                           ; $6252: $00
    ld bc, $0400                                  ; $6253: $01 $00 $04
    nop                                           ; $6256: $00
    inc b                                         ; $6257: $04
    nop                                           ; $6258: $00
    inc b                                         ; $6259: $04
    nop                                           ; $625a: $00
    ld b, $00                                     ; $625b: $06 $00
    ld b, $04                                     ; $625d: $06 $04
    ld [bc], a                                    ; $625f: $02
    nop                                           ; $6260: $00
    inc b                                         ; $6261: $04
    ld [bc], a                                    ; $6262: $02
    nop                                           ; $6263: $00
    rst $38                                       ; $6264: $ff
    dec bc                                        ; $6265: $0b
    inc bc                                        ; $6266: $03
    pop af                                        ; $6267: $f1
    dec c                                         ; $6268: $0d
    ld hl, sp+$08                                 ; $6269: $f8 $08
    ld a, [$fafa]                                 ; $626b: $fa $fa $fa
    ld [bc], a                                    ; $626e: $02
    ld a, [$9e05]                                 ; $626f: $fa $05 $9e
    nop                                           ; $6272: $00
    ld e, $12                                     ; $6273: $1e $12
    dec l                                         ; $6275: $2d
    ld hl, $2052                                  ; $6276: $21 $52 $20
    ld b, e                                       ; $6279: $43

jr_0f8_627a:
    ld b, b                                       ; $627a: $40
    and b                                         ; $627b: $a0

jr_0f8_627c:
    ld b, b                                       ; $627c: $40
    and b                                         ; $627d: $a0
    ld b, b                                       ; $627e: $40
    and b                                         ; $627f: $a0
    ld b, b                                       ; $6280: $40
    and b                                         ; $6281: $a0
    nop                                           ; $6282: $00
    ld h, b                                       ; $6283: $60
    nop                                           ; $6284: $00
    ld h, b                                       ; $6285: $60
    nop                                           ; $6286: $00
    ld h, b                                       ; $6287: $60
    jr nz, jr_0f8_62da                            ; $6288: $20 $50

    jr nz, @+$52                                  ; $628a: $20 $50

    db $10                                        ; $628c: $10
    jr z, jr_0f8_629f                             ; $628d: $28 $10

    jr z, jr_0f8_6296                             ; $628f: $28 $05

    nop                                           ; $6291: $00
    sub d                                         ; $6292: $92
    inc b                                         ; $6293: $04

jr_0f8_6294:
    nop                                           ; $6294: $00
    ld [bc], a                                    ; $6295: $02

jr_0f8_6296:
    nop                                           ; $6296: $00
    ld a, [c]                                     ; $6297: $f2
    jr nc, @+$51                                  ; $6298: $30 $4f

    inc bc                                        ; $629a: $03
    ld a, h                                       ; $629b: $7c
    ld bc, $0102                                  ; $629c: $01 $02 $01

jr_0f8_629f:
    ld [bc], a                                    ; $629f: $02
    nop                                           ; $62a0: $00
    inc bc                                        ; $62a1: $03
    nop                                           ; $62a2: $00
    inc bc                                        ; $62a3: $03
    nop                                           ; $62a4: $00
    ld [bc], a                                    ; $62a5: $02
    ld b, $87                                     ; $62a6: $06 $87
    add hl, bc                                    ; $62a8: $09
    ld bc, $000e                                  ; $62a9: $01 $0e $00
    add hl, de                                    ; $62ac: $19
    nop                                           ; $62ad: $00
    add hl, de                                    ; $62ae: $19
    dec c                                         ; $62af: $0d
    nop                                           ; $62b0: $00
    adc c                                         ; $62b1: $89
    inc b                                         ; $62b2: $04
    nop                                           ; $62b3: $00
    inc b                                         ; $62b4: $04
    nop                                           ; $62b5: $00
    ld b, $00                                     ; $62b6: $06 $00
    inc bc                                        ; $62b8: $03
    nop                                           ; $62b9: $00
    ld bc, $0005                                  ; $62ba: $01 $05 $00
    ld [bc], a                                    ; $62bd: $02
    inc b                                         ; $62be: $04
    add e                                         ; $62bf: $83
    ld [bc], a                                    ; $62c0: $02
    inc b                                         ; $62c1: $04
    ld [bc], a                                    ; $62c2: $02
    ld [bc], a                                    ; $62c3: $02
    nop                                           ; $62c4: $00
    rst $38                                       ; $62c5: $ff
    dec bc                                        ; $62c6: $0b
    inc bc                                        ; $62c7: $03
    pop af                                        ; $62c8: $f1
    dec c                                         ; $62c9: $0d
    ld hl, sp+$08                                 ; $62ca: $f8 $08
    ld sp, hl                                     ; $62cc: $f9
    db $fc                                        ; $62cd: $fc
    ld sp, hl                                     ; $62ce: $f9
    inc b                                         ; $62cf: $04
    ld sp, hl                                     ; $62d0: $f9
    ld b, $a2                                     ; $62d1: $06 $a2
    nop                                           ; $62d3: $00
    ld bc, $0200                                  ; $62d4: $01 $00 $02
    nop                                           ; $62d7: $00
    rra                                           ; $62d8: $1f
    db $10                                        ; $62d9: $10

jr_0f8_62da:
    cpl                                           ; $62da: $2f
    jr nz, jr_0f8_632e                            ; $62db: $20 $51

    jr nz, jr_0f8_632f                            ; $62dd: $20 $50

    nop                                           ; $62df: $00
    ld h, b                                       ; $62e0: $60
    jr nz, jr_0f8_6333                            ; $62e1: $20 $50

    jr nz, jr_0f8_6335                            ; $62e3: $20 $50

    nop                                           ; $62e5: $00
    jr nc, jr_0f8_62e8                            ; $62e6: $30 $00

jr_0f8_62e8:
    jr nc, jr_0f8_630a                            ; $62e8: $30 $20

    ld d, b                                       ; $62ea: $50
    nop                                           ; $62eb: $00
    ld [hl], b                                    ; $62ec: $70
    ld b, b                                       ; $62ed: $40
    and b                                         ; $62ee: $a0
    ld b, b                                       ; $62ef: $40
    and b                                         ; $62f0: $a0
    ld b, b                                       ; $62f1: $40
    and b                                         ; $62f2: $a0
    nop                                           ; $62f3: $00
    add b                                         ; $62f4: $80
    inc bc                                        ; $62f5: $03
    nop                                           ; $62f6: $00
    ld [bc], a                                    ; $62f7: $02
    add b                                         ; $62f8: $80
    add d                                         ; $62f9: $82
    ld b, b                                       ; $62fa: $40
    ret nz                                        ; $62fb: $c0

    ld [bc], a                                    ; $62fc: $02
    jr nz, jr_0f8_6294                            ; $62fd: $20 $95

    ret nc                                        ; $62ff: $d0

    db $10                                        ; $6300: $10
    ld l, $02                                     ; $6301: $2e $02
    dec a                                         ; $6303: $3d
    ld [bc], a                                    ; $6304: $02
    dec h                                         ; $6305: $25
    ld [bc], a                                    ; $6306: $02
    dec h                                         ; $6307: $25
    ld [bc], a                                    ; $6308: $02
    dec b                                         ; $6309: $05

jr_0f8_630a:
    inc b                                         ; $630a: $04
    ld a, [bc]                                    ; $630b: $0a
    inc b                                         ; $630c: $04
    ld a, [bc]                                    ; $630d: $0a
    nop                                           ; $630e: $00
    rra                                           ; $630f: $1f
    ld bc, $011a                                  ; $6310: $01 $1a $01
    ld a, [de]                                    ; $6313: $1a
    dec d                                         ; $6314: $15
    nop                                           ; $6315: $00
    add e                                         ; $6316: $83
    ld [bc], a                                    ; $6317: $02
    nop                                           ; $6318: $00
    ld bc, $0005                                  ; $6319: $01 $05 $00
    add e                                         ; $631c: $83
    ld [bc], a                                    ; $631d: $02
    nop                                           ; $631e: $00
    ld [bc], a                                    ; $631f: $02
    rst $38                                       ; $6320: $ff
    dec bc                                        ; $6321: $0b
    inc bc                                        ; $6322: $03
    pop af                                        ; $6323: $f1
    dec c                                         ; $6324: $0d
    ld hl, sp+$08                                 ; $6325: $f8 $08
    ld sp, hl                                     ; $6327: $f9
    ei                                            ; $6328: $fb
    ld hl, sp+$03                                 ; $6329: $f8 $03
    ei                                            ; $632b: $fb
    inc b                                         ; $632c: $04
    add c                                         ; $632d: $81

jr_0f8_632e:
    nop                                           ; $632e: $00

jr_0f8_632f:
    ld [bc], a                                    ; $632f: $02
    ld bc, $0202                                  ; $6330: $01 $02 $02

jr_0f8_6333:
    and a                                         ; $6333: $a7
    dec b                                         ; $6334: $05

jr_0f8_6335:
    nop                                           ; $6335: $00
    rrca                                          ; $6336: $0f
    ld [$0814], sp                                ; $6337: $08 $14 $08
    inc d                                         ; $633a: $14
    inc b                                         ; $633b: $04
    ld a, [de]                                    ; $633c: $1a
    nop                                           ; $633d: $00
    ld b, $04                                     ; $633e: $06 $04
    ld a, [de]                                    ; $6340: $1a
    jr jr_0f8_63a9                                ; $6341: $18 $66

    ld b, b                                       ; $6343: $40
    cp b                                          ; $6344: $b8
    ld b, b                                       ; $6345: $40
    and b                                         ; $6346: $a0
    ld b, b                                       ; $6347: $40
    and b                                         ; $6348: $a0
    ld b, b                                       ; $6349: $40
    and b                                         ; $634a: $a0
    jr nz, jr_0f8_639d                            ; $634b: $20 $50

    jr nz, jr_0f8_639f                            ; $634d: $20 $50

    nop                                           ; $634f: $00
    ld a, h                                       ; $6350: $7c
    inc c                                         ; $6351: $0c
    di                                            ; $6352: $f3
    ld [bc], a                                    ; $6353: $02
    call $e201                                    ; $6354: $cd $01 $e2
    nop                                           ; $6357: $00
    ld [hl], c                                    ; $6358: $71
    nop                                           ; $6359: $00
    ld de, $0015                                  ; $635a: $11 $15 $00
    add e                                         ; $635d: $83
    ld bc, $0100                                  ; $635e: $01 $00 $01
    inc e                                         ; $6361: $1c
    nop                                           ; $6362: $00
    rst $38                                       ; $6363: $ff
    dec bc                                        ; $6364: $0b
    inc bc                                        ; $6365: $03
    pop af                                        ; $6366: $f1
    dec c                                         ; $6367: $0d
    ld hl, sp+$08                                 ; $6368: $f8 $08
    ldh a, [$f8]                                  ; $636a: $f0 $f8
    ldh a, [rP1]                                  ; $636c: $f0 $00
    nop                                           ; $636e: $00
    ld a, [$0084]                                 ; $636f: $fa $84 $00
    inc bc                                        ; $6372: $03
    nop                                           ; $6373: $00
    ld bc, $000b                                  ; $6374: $01 $0b $00
    sub d                                         ; $6377: $92
    ld h, b                                       ; $6378: $60
    nop                                           ; $6379: $00
    xor l                                         ; $637a: $ad
    nop                                           ; $637b: $00
    rrca                                          ; $637c: $0f
    ld [bc], a                                    ; $637d: $02
    dec b                                         ; $637e: $05
    inc b                                         ; $637f: $04
    dec bc                                        ; $6380: $0b
    ld [$0814], sp                                ; $6381: $08 $14 $08
    inc d                                         ; $6384: $14
    inc b                                         ; $6385: $04
    dec bc                                        ; $6386: $0b
    nop                                           ; $6387: $00
    rlca                                          ; $6388: $07
    nop                                           ; $6389: $00
    ld [bc], a                                    ; $638a: $02
    add b                                         ; $638b: $80
    sub c                                         ; $638c: $91
    ld c, h                                       ; $638d: $4c
    ld b, b                                       ; $638e: $40
    and h                                         ; $638f: $a4
    jr nz, jr_0f8_63ee                            ; $6390: $20 $5c

    nop                                           ; $6392: $00
    jr c, jr_0f8_6395                             ; $6393: $38 $00

jr_0f8_6395:
    ld h, b                                       ; $6395: $60
    nop                                           ; $6396: $00
    ld b, e                                       ; $6397: $43
    nop                                           ; $6398: $00
    pop bc                                        ; $6399: $c1
    nop                                           ; $639a: $00
    ret nz                                        ; $639b: $c0

    nop                                           ; $639c: $00

jr_0f8_639d:
    add b                                         ; $639d: $80
    dec c                                         ; $639e: $0d

jr_0f8_639f:
    nop                                           ; $639f: $00
    sub c                                         ; $63a0: $91
    rlca                                          ; $63a1: $07
    inc b                                         ; $63a2: $04
    ld a, [bc]                                    ; $63a3: $0a
    inc c                                         ; $63a4: $0c
    ld [de], a                                    ; $63a5: $12
    ld [$1014], sp                                ; $63a6: $08 $14 $10

jr_0f8_63a9:
    jr z, jr_0f8_63db                             ; $63a9: $28 $30

    ld c, b                                       ; $63ab: $48
    jr nz, @+$52                                  ; $63ac: $20 $50

    db $10                                        ; $63ae: $10
    jr z, jr_0f8_63c1                             ; $63af: $28 $10

    jr z, jr_0f8_63c1                             ; $63b1: $28 $0e

    nop                                           ; $63b3: $00
    rst $38                                       ; $63b4: $ff
    add hl, bc                                    ; $63b5: $09
    ld [bc], a                                    ; $63b6: $02
    pop af                                        ; $63b7: $f1
    dec c                                         ; $63b8: $0d
    ld hl, sp+$08                                 ; $63b9: $f8 $08
    pop af                                        ; $63bb: $f1
    push af                                       ; $63bc: $f5
    ei                                            ; $63bd: $fb
    ld a, [$0098]                                 ; $63be: $fa $98 $00

jr_0f8_63c1:
    ld h, b                                       ; $63c1: $60
    nop                                           ; $63c2: $00
    ld b, b                                       ; $63c3: $40
    nop                                           ; $63c4: $00
    add b                                         ; $63c5: $80
    nop                                           ; $63c6: $00
    add b                                         ; $63c7: $80
    nop                                           ; $63c8: $00
    ret nz                                        ; $63c9: $c0

    nop                                           ; $63ca: $00
    add $00                                       ; $63cb: $c6 $00
    ld [hl], d                                    ; $63cd: $72
    jr nc, jr_0f8_641c                            ; $63ce: $30 $4c

    ld [$0434], sp                                ; $63d0: $08 $34 $04
    ld a, [bc]                                    ; $63d3: $0a
    ld [bc], a                                    ; $63d4: $02
    dec b                                         ; $63d5: $05
    nop                                           ; $63d6: $00
    rlca                                          ; $63d7: $07
    add hl, bc                                    ; $63d8: $09
    nop                                           ; $63d9: $00
    ld [bc], a                                    ; $63da: $02

jr_0f8_63db:
    jr @-$65                                      ; $63db: $18 $99

    inc b                                         ; $63dd: $04
    ld [$0015], sp                                ; $63de: $08 $15 $00

jr_0f8_63e1:
    rrca                                          ; $63e1: $0f
    nop                                           ; $63e2: $00
    inc c                                         ; $63e3: $0c
    nop                                           ; $63e4: $00
    inc c                                         ; $63e5: $0c
    inc b                                         ; $63e6: $04
    ld a, [bc]                                    ; $63e7: $0a
    nop                                           ; $63e8: $00
    ld b, $00                                     ; $63e9: $06 $00
    ld b, $04                                     ; $63eb: $06 $04
    ld a, [de]                                    ; $63ed: $1a

jr_0f8_63ee:
    inc c                                         ; $63ee: $0c
    ld [de], a                                    ; $63ef: $12
    ld [$1814], sp                                ; $63f0: $08 $14 $18
    inc h                                         ; $63f3: $24
    db $10                                        ; $63f4: $10
    jr z, jr_0f8_63fb                             ; $63f5: $28 $04

    nop                                           ; $63f7: $00
    rst $38                                       ; $63f8: $ff
    dec c                                         ; $63f9: $0d
    inc b                                         ; $63fa: $04

jr_0f8_63fb:
    pop af                                        ; $63fb: $f1
    dec c                                         ; $63fc: $0d
    ld hl, sp+$08                                 ; $63fd: $f8 $08
    di                                            ; $63ff: $f3
    rst $28                                       ; $6400: $ef
    db $f4                                        ; $6401: $f4
    rst $30                                       ; $6402: $f7
    db $fc                                        ; $6403: $fc
    db $fc                                        ; $6404: $fc
    inc bc                                        ; $6405: $03
    rst $28                                       ; $6406: $ef
    add h                                         ; $6407: $84
    nop                                           ; $6408: $00
    ld b, $00                                     ; $6409: $06 $00
    inc b                                         ; $640b: $04
    add hl, bc                                    ; $640c: $09
    nop                                           ; $640d: $00
    and a                                         ; $640e: $a7
    jr jr_0f8_6419                                ; $640f: $18 $08

    dec d                                         ; $6411: $15
    nop                                           ; $6412: $00
    rrca                                          ; $6413: $0f
    ld [$1017], sp                                ; $6414: $08 $17 $10
    jr z, jr_0f8_6419                             ; $6417: $28 $00

jr_0f8_6419:
    jr c, jr_0f8_641b                             ; $6419: $38 $00

jr_0f8_641b:
    ret nz                                        ; $641b: $c0

jr_0f8_641c:
    ld b, b                                       ; $641c: $40
    and b                                         ; $641d: $a0
    ld b, b                                       ; $641e: $40
    and b                                         ; $641f: $a0
    nop                                           ; $6420: $00
    ld h, b                                       ; $6421: $60
    nop                                           ; $6422: $00
    ld [$1000], sp                                ; $6423: $08 $00 $10
    nop                                           ; $6426: $00
    stop                                          ; $6427: $10 $00
    add hl, de                                    ; $6429: $19
    nop                                           ; $642a: $00
    rlca                                          ; $642b: $07
    nop                                           ; $642c: $00
    ld a, h                                       ; $642d: $7c
    ld l, b                                       ; $642e: $68
    sub a                                         ; $642f: $97
    ld b, $69                                     ; $6430: $06 $69
    ld bc, $0006                                  ; $6432: $01 $06 $00
    ld bc, $000d                                  ; $6435: $01 $0d $00
    sbc c                                         ; $6438: $99
    jr jr_0f8_643b                                ; $6439: $18 $00

jr_0f8_643b:
    ld e, $04                                     ; $643b: $1e $04
    ld a, [bc]                                    ; $643d: $0a
    ld [bc], a                                    ; $643e: $02
    dec b                                         ; $643f: $05
    ld [bc], a                                    ; $6440: $02
    dec b                                         ; $6441: $05
    nop                                           ; $6442: $00
    inc bc                                        ; $6443: $03
    nop                                           ; $6444: $00
    rrca                                          ; $6445: $0f
    ld b, $09                                     ; $6446: $06 $09
    nop                                           ; $6448: $00
    ld c, $08                                     ; $6449: $0e $08
    inc d                                         ; $644b: $14
    ld [$1014], sp                                ; $644c: $08 $14 $10
    jr z, jr_0f8_6461                             ; $644f: $28 $10

    jr z, jr_0f8_645a                             ; $6451: $28 $07

    nop                                           ; $6453: $00
    add d                                         ; $6454: $82
    ld h, b                                       ; $6455: $60
    nop                                           ; $6456: $00
    ld [bc], a                                    ; $6457: $02
    jr nz, jr_0f8_63e1                            ; $6458: $20 $87

jr_0f8_645a:
    ld d, b                                       ; $645a: $50
    jr nz, jr_0f8_64ad                            ; $645b: $20 $50

    nop                                           ; $645d: $00
    jr nc, jr_0f8_6460                            ; $645e: $30 $00

jr_0f8_6460:
    db $10                                        ; $6460: $10

jr_0f8_6461:
    inc d                                         ; $6461: $14
    nop                                           ; $6462: $00
    rst $38                                       ; $6463: $ff
    dec c                                         ; $6464: $0d
    inc b                                         ; $6465: $04
    pop af                                        ; $6466: $f1
    dec c                                         ; $6467: $0d
    ld hl, sp+$08                                 ; $6468: $f8 $08
    push af                                       ; $646a: $f5
    db $ed                                        ; $646b: $ed
    rst $30                                       ; $646c: $f7
    push af                                       ; $646d: $f5
    db $fd                                        ; $646e: $fd
    ld a, [$ec05]                                 ; $646f: $fa $05 $ec
    add [hl]                                      ; $6472: $86
    nop                                           ; $6473: $00
    ld [bc], a                                    ; $6474: $02
    nop                                           ; $6475: $00
    ld bc, $0600                                  ; $6476: $01 $00 $06
    inc bc                                        ; $6479: $03
    nop                                           ; $647a: $00
    ld [bc], a                                    ; $647b: $02
    ld bc, $6298                                  ; $647c: $01 $98 $62
    ld bc, $0242                                  ; $647f: $01 $42 $02
    dec b                                         ; $6482: $05
    ld [bc], a                                    ; $6483: $02
    dec b                                         ; $6484: $05
    inc b                                         ; $6485: $04
    ld a, [de]                                    ; $6486: $1a
    db $10                                        ; $6487: $10
    ld l, $00                                     ; $6488: $2e $00
    jr nc, jr_0f8_648c                            ; $648a: $30 $00

jr_0f8_648c:
    jr nc, jr_0f8_649e                            ; $648c: $30 $10

    ld l, b                                       ; $648e: $68
    ld [$08d4], sp                                ; $648f: $08 $d4 $08
    sub h                                         ; $6492: $94
    nop                                           ; $6493: $00
    ret nz                                        ; $6494: $c0

    nop                                           ; $6495: $00
    ld [bc], a                                    ; $6496: $02
    ld h, b                                       ; $6497: $60
    ld [bc], a                                    ; $6498: $02
    sub b                                         ; $6499: $90
    adc c                                         ; $649a: $89
    ld l, b                                       ; $649b: $68
    nop                                           ; $649c: $00
    sbc b                                         ; $649d: $98

jr_0f8_649e:
    nop                                           ; $649e: $00
    jr jr_0f8_64a9                                ; $649f: $18 $08

    rla                                           ; $64a1: $17
    nop                                           ; $64a2: $00
    rrca                                          ; $64a3: $0f
    ld de, $0200                                  ; $64a4: $11 $00 $02
    db $10                                        ; $64a7: $10
    sub l                                         ; $64a8: $95

jr_0f8_64a9:
    ld c, $02                                     ; $64a9: $0e $02
    dec e                                         ; $64ab: $1d
    nop                                           ; $64ac: $00

jr_0f8_64ad:
    inc bc                                        ; $64ad: $03
    nop                                           ; $64ae: $00
    inc bc                                        ; $64af: $03
    nop                                           ; $64b0: $00
    inc bc                                        ; $64b1: $03
    nop                                           ; $64b2: $00
    inc bc                                        ; $64b3: $03
    ld [bc], a                                    ; $64b4: $02
    dec b                                         ; $64b5: $05
    inc b                                         ; $64b6: $04
    dec bc                                        ; $64b7: $0b
    inc b                                         ; $64b8: $04
    ld a, [bc]                                    ; $64b9: $0a
    nop                                           ; $64ba: $00
    ld b, $00                                     ; $64bb: $06 $00
    ld b, $08                                     ; $64bd: $06 $08
    nop                                           ; $64bf: $00
    adc b                                         ; $64c0: $88
    inc b                                         ; $64c1: $04
    adc d                                         ; $64c2: $8a
    nop                                           ; $64c3: $00
    call z, $aa44                                 ; $64c4: $cc $44 $aa
    ld b, b                                       ; $64c7: $40
    and [hl]                                      ; $64c8: $a6
    jr jr_0f8_64cb                                ; $64c9: $18 $00

jr_0f8_64cb:
    rst $38                                       ; $64cb: $ff
    dec bc                                        ; $64cc: $0b
    inc bc                                        ; $64cd: $03
    pop af                                        ; $64ce: $f1
    dec c                                         ; $64cf: $0d
    ld hl, sp+$08                                 ; $64d0: $f8 $08
    ld a, [$faeb]                                 ; $64d2: $fa $eb $fa
    di                                            ; $64d5: $f3
    ld a, [$9efa]                                 ; $64d6: $fa $fa $9e
    nop                                           ; $64d9: $00
    rrca                                          ; $64da: $0f
    nop                                           ; $64db: $00
    rra                                           ; $64dc: $1f
    db $10                                        ; $64dd: $10
    jr z, jr_0f8_64f0                             ; $64de: $28 $10

    jr z, jr_0f8_64f2                             ; $64e0: $28 $10

    jr z, jr_0f8_64ec                             ; $64e2: $28 $08

    ld d, $00                                     ; $64e4: $16 $00
    rra                                           ; $64e6: $1f
    nop                                           ; $64e7: $00
    dec de                                        ; $64e8: $1b
    nop                                           ; $64e9: $00
    stop                                          ; $64ea: $10 $00

jr_0f8_64ec:
    ld h, b                                       ; $64ec: $60
    nop                                           ; $64ed: $00
    ld h, e                                       ; $64ee: $63
    ld b, b                                       ; $64ef: $40

jr_0f8_64f0:
    and e                                         ; $64f0: $a3
    nop                                           ; $64f1: $00

jr_0f8_64f2:
    add $00                                       ; $64f2: $c6 $00
    jp Jump_0f8_4300                              ; $64f4: $c3 $00 $43


    inc bc                                        ; $64f7: $03
    nop                                           ; $64f8: $00
    ld [bc], a                                    ; $64f9: $02
    add b                                         ; $64fa: $80
    add l                                         ; $64fb: $85
    ld a, a                                       ; $64fc: $7f
    ld a, c                                       ; $64fd: $79
    add [hl]                                      ; $64fe: $86
    nop                                           ; $64ff: $00
    ld a, c                                       ; $6500: $79
    dec b                                         ; $6501: $05
    nop                                           ; $6502: $00
    adc e                                         ; $6503: $8b
    ldh [rLCDC], a                                ; $6504: $e0 $40
    and b                                         ; $6506: $a0
    nop                                           ; $6507: $00
    ld h, b                                       ; $6508: $60
    ld b, b                                       ; $6509: $40
    and b                                         ; $650a: $a0
    ld b, b                                       ; $650b: $40
    and b                                         ; $650c: $a0
    nop                                           ; $650d: $00
    ret nz                                        ; $650e: $c0

    dec bc                                        ; $650f: $0b
    nop                                           ; $6510: $00
    ld [bc], a                                    ; $6511: $02
    ld b, b                                       ; $6512: $40
    sbc c                                         ; $6513: $99
    jr nz, @+$62                                  ; $6514: $20 $60

    db $10                                        ; $6516: $10
    jr nz, @+$52                                  ; $6517: $20 $50

    nop                                           ; $6519: $00
    dec sp                                        ; $651a: $3b
    nop                                           ; $651b: $00
    add hl, de                                    ; $651c: $19
    ld [$0814], sp                                ; $651d: $08 $14 $08
    inc d                                         ; $6520: $14
    nop                                           ; $6521: $00
    inc c                                         ; $6522: $0c
    nop                                           ; $6523: $00
    inc c                                         ; $6524: $0c
    inc b                                         ; $6525: $04
    ld a, [bc]                                    ; $6526: $0a
    inc b                                         ; $6527: $04
    ld a, [bc]                                    ; $6528: $0a
    nop                                           ; $6529: $00
    ld b, $00                                     ; $652a: $06 $00
    ld b, $02                                     ; $652c: $06 $02
    nop                                           ; $652e: $00
    rst $38                                       ; $652f: $ff
    add hl, bc                                    ; $6530: $09
    ld [bc], a                                    ; $6531: $02
    pop af                                        ; $6532: $f1
    dec c                                         ; $6533: $0d
    ld hl, sp+$08                                 ; $6534: $f8 $08
    ei                                            ; $6536: $fb
    rst $28                                       ; $6537: $ef
    ei                                            ; $6538: $fb
    rst $30                                       ; $6539: $f7
    adc d                                         ; $653a: $8a
    nop                                           ; $653b: $00
    rra                                           ; $653c: $1f
    ld de, $202e                                  ; $653d: $11 $2e $20
    ld d, c                                       ; $6540: $51
    nop                                           ; $6541: $00
    ld h, b                                       ; $6542: $60
    nop                                           ; $6543: $00
    ld h, b                                       ; $6544: $60
    dec b                                         ; $6545: $05
    nop                                           ; $6546: $00
    add l                                         ; $6547: $85
    ret nz                                        ; $6548: $c0

    ld b, b                                       ; $6549: $40
    and b                                         ; $654a: $a0
    nop                                           ; $654b: $00
    ld h, b                                       ; $654c: $60
    dec c                                         ; $654d: $0d
    nop                                           ; $654e: $00
    sub c                                         ; $654f: $91
    add b                                         ; $6550: $80
    nop                                           ; $6551: $00
    add b                                         ; $6552: $80
    nop                                           ; $6553: $00
    sbc h                                         ; $6554: $9c
    ld [$0014], sp                                ; $6555: $08 $14 $00
    inc c                                         ; $6558: $0c
    nop                                           ; $6559: $00
    ld b, $02                                     ; $655a: $06 $02
    dec b                                         ; $655c: $05
    ld [bc], a                                    ; $655d: $02
    dec b                                         ; $655e: $05
    nop                                           ; $655f: $00
    ld [bc], a                                    ; $6560: $02
    ld c, $00                                     ; $6561: $0e $00
    rst $38                                       ; $6563: $ff
    add hl, bc                                    ; $6564: $09
    ld [bc], a                                    ; $6565: $02
    pop af                                        ; $6566: $f1
    dec c                                         ; $6567: $0d
    ld hl, sp+$08                                 ; $6568: $f8 $08
    ei                                            ; $656a: $fb
    di                                            ; $656b: $f3
    ei                                            ; $656c: $fb
    db $f4                                        ; $656d: $f4
    adc b                                         ; $656e: $88
    nop                                           ; $656f: $00
    jr nc, jr_0f8_6592                            ; $6570: $30 $20

    sub $42                                       ; $6572: $d6 $42
    and l                                         ; $6574: $a5
    ld bc, $1d02                                  ; $6575: $01 $02 $1d
    nop                                           ; $6578: $00
    add e                                         ; $6579: $83
    ld bc, $0100                                  ; $657a: $01 $00 $01
    jr jr_0f8_657f                                ; $657d: $18 $00

jr_0f8_657f:
    rst $38                                       ; $657f: $ff
    rlca                                          ; $6580: $07
    ld bc, $1201                                  ; $6581: $01 $01 $12
    ld a, [$fa06]                                 ; $6584: $fa $06 $fa
    ld bc, $1802                                  ; $6587: $01 $02 $18
    sub h                                         ; $658a: $94
    ld b, b                                       ; $658b: $40
    ld [hl], b                                    ; $658c: $70
    jr nz, jr_0f8_65eb                            ; $658d: $20 $5c

    sbc b                                         ; $658f: $98
    ld hl, sp-$5c                                 ; $6590: $f8 $a4

jr_0f8_6592:
    call c, $bfdf                                 ; $6592: $dc $df $bf
    or b                                          ; $6595: $b0
    ldh a, [$5c]                                  ; $6596: $f0 $5c
    db $fc                                        ; $6598: $fc
    sbc b                                         ; $6599: $98
    db $fc                                        ; $659a: $fc
    jr nz, @+$5e                                  ; $659b: $20 $5c

    ld b, b                                       ; $659d: $40
    ld [hl], b                                    ; $659e: $70
    ld [bc], a                                    ; $659f: $02
    jr @+$0a                                      ; $65a0: $18 $08

    nop                                           ; $65a2: $00
    rst $38                                       ; $65a3: $ff
    add hl, bc                                    ; $65a4: $09
    ld [bc], a                                    ; $65a5: $02
    ld bc, $fa12                                  ; $65a6: $01 $12 $fa
    ld b, $f8                                     ; $65a9: $06 $f8
    ld bc, $05f9                                  ; $65ab: $01 $f9 $05
    sub h                                         ; $65ae: $94
    inc b                                         ; $65af: $04
    ld b, $17                                     ; $65b0: $06 $17
    rra                                           ; $65b2: $1f
    jr z, jr_0f8_65eb                             ; $65b3: $28 $36

    ld e, $21                                     ; $65b5: $1e $21
    ld c, c                                       ; $65b7: $49
    ld [hl], a                                    ; $65b8: $77
    ld d, a                                       ; $65b9: $57
    ld a, a                                       ; $65ba: $7f
    rst $18                                       ; $65bb: $df
    rst $28                                       ; $65bc: $ef
    or b                                          ; $65bd: $b0
    rst $08                                       ; $65be: $cf
    rst $38                                       ; $65bf: $ff
    rst $08                                       ; $65c0: $cf
    call z, Call_000_02fc                         ; $65c1: $cc $fc $02
    ld a, a                                       ; $65c4: $7f
    adc d                                         ; $65c5: $8a
    ld d, h                                       ; $65c6: $54
    ld l, h                                       ; $65c7: $6c
    ld e, b                                       ; $65c8: $58
    ld h, a                                       ; $65c9: $67
    ld a, [hl+]                                   ; $65ca: $2a
    ld [hl], $30                                  ; $65cb: $36 $30
    ccf                                           ; $65cd: $3f
    dec de                                        ; $65ce: $1b
    rra                                           ; $65cf: $1f
    ld [bc], a                                    ; $65d0: $02
    inc c                                         ; $65d1: $0c
    inc bc                                        ; $65d2: $03
    nop                                           ; $65d3: $00
    add c                                         ; $65d4: $81
    ld [$0e02], sp                                ; $65d5: $08 $02 $0e
    ld [bc], a                                    ; $65d8: $02
    nop                                           ; $65d9: $00
    ld [bc], a                                    ; $65da: $02
    ld [$0082], sp                                ; $65db: $08 $82 $00
    inc c                                         ; $65de: $0c
    ld [bc], a                                    ; $65df: $02
    rrca                                          ; $65e0: $0f
    ld [bc], a                                    ; $65e1: $02
    nop                                           ; $65e2: $00
    ld [bc], a                                    ; $65e3: $02
    ld [$0003], sp                                ; $65e4: $08 $03 $00
    add c                                         ; $65e7: $81
    inc c                                         ; $65e8: $0c
    inc bc                                        ; $65e9: $03
    nop                                           ; $65ea: $00

jr_0f8_65eb:
    add c                                         ; $65eb: $81
    ld [$0c02], sp                                ; $65ec: $08 $02 $0c
    add d                                         ; $65ef: $82
    jr nz, @+$62                                  ; $65f0: $20 $60

    rst $38                                       ; $65f2: $ff
    rrca                                          ; $65f3: $0f
    dec b                                         ; $65f4: $05
    ld bc, $fa12                                  ; $65f5: $01 $12 $fa
    ld b, $f6                                     ; $65f8: $06 $f6
    ld bc, $09f6                                  ; $65fa: $01 $f6 $09
    ei                                            ; $65fd: $fb
    inc c                                         ; $65fe: $0c
    ld b, $03                                     ; $65ff: $06 $03
    ld b, $04                                     ; $6601: $06 $04
    ld [bc], a                                    ; $6603: $02
    ld bc, $0895                                  ; $6604: $01 $95 $08
    rrca                                          ; $6607: $0f
    dec b                                         ; $6608: $05
    dec de                                        ; $6609: $1b
    ld l, $31                                     ; $660a: $2e $31
    cpl                                           ; $660c: $2f
    jr nc, jr_0f8_6665                            ; $660d: $30 $56

    ld l, c                                       ; $660f: $69
    ld c, c                                       ; $6610: $49
    ld a, a                                       ; $6611: $7f
    rst $30                                       ; $6612: $f7
    rst $38                                       ; $6613: $ff
    set 6, a                                      ; $6614: $cb $f7
    cp l                                          ; $6616: $bd
    jp $c3bc                                      ; $6617: $c3 $bc $c3


    jp c, $e702                                   ; $661a: $da $02 $e7

    add c                                         ; $661d: $81
    rst $38                                       ; $661e: $ff
    ld [bc], a                                    ; $661f: $02
    ld a, a                                       ; $6620: $7f
    add [hl]                                      ; $6621: $86
    ld d, d                                       ; $6622: $52
    ld a, a                                       ; $6623: $7f
    ld c, a                                       ; $6624: $4f
    ld [hl], b                                    ; $6625: $70
    nop                                           ; $6626: $00
    rst $38                                       ; $6627: $ff
    ld [bc], a                                    ; $6628: $02
    ldh a, [$88]                                  ; $6629: $f0 $88
    nop                                           ; $662b: $00
    db $fc                                        ; $662c: $fc
    ld a, a                                       ; $662d: $7f
    rst $38                                       ; $662e: $ff
    add b                                         ; $662f: $80
    ld [hl], b                                    ; $6630: $70
    ld a, a                                       ; $6631: $7f
    rst $38                                       ; $6632: $ff
    ld [bc], a                                    ; $6633: $02
    ldh [rSC], a                                  ; $6634: $e0 $02
    ld hl, sp+$02                                 ; $6636: $f8 $02
    ldh [$03], a                                  ; $6638: $e0 $03
    nop                                           ; $663a: $00
    inc bc                                        ; $663b: $03
    rst $38                                       ; $663c: $ff
    ld [bc], a                                    ; $663d: $02
    nop                                           ; $663e: $00
    ld [bc], a                                    ; $663f: $02
    ldh a, [rSC]                                  ; $6640: $f0 $02
    add b                                         ; $6642: $80
    add d                                         ; $6643: $82
    nop                                           ; $6644: $00
    cp $02                                        ; $6645: $fe $02
    ld b, $09                                     ; $6647: $06 $09
    nop                                           ; $6649: $00
    add c                                         ; $664a: $81
    inc b                                         ; $664b: $04
    ld [bc], a                                    ; $664c: $02
    rlca                                          ; $664d: $07
    ld [$0200], sp                                ; $664e: $08 $00 $02
    cp $03                                        ; $6651: $fe $03
    nop                                           ; $6653: $00
    add c                                         ; $6654: $81
    ldh [rSC], a                                  ; $6655: $e0 $02
    ld hl, sp+$02                                 ; $6657: $f8 $02
    nop                                           ; $6659: $00
    add c                                         ; $665a: $81
    cp b                                          ; $665b: $b8
    ld [bc], a                                    ; $665c: $02
    rst $00                                       ; $665d: $c7
    add a                                         ; $665e: $87
    rst $38                                       ; $665f: $ff
    ld a, l                                       ; $6660: $7d
    ld a, a                                       ; $6661: $7f
    jr c, jr_0f8_66a3                             ; $6662: $38 $3f

    dec c                                         ; $6664: $0d

jr_0f8_6665:
    rrca                                          ; $6665: $0f
    ld d, $00                                     ; $6666: $16 $00
    inc b                                         ; $6668: $04
    ld bc, $0081                                  ; $6669: $01 $81 $00
    dec b                                         ; $666c: $05
    ld bc, $0016                                  ; $666d: $01 $16 $00
    rst $38                                       ; $6670: $ff
    rrca                                          ; $6671: $0f
    dec b                                         ; $6672: $05
    ld bc, $fa12                                  ; $6673: $01 $12 $fa
    ld b, $f2                                     ; $6676: $06 $f2
    ld bc, $09f2                                  ; $6678: $01 $f2 $09
    ld a, [$020c]                                 ; $667b: $fa $0c $02
    ld [bc], a                                    ; $667e: $02
    ld [bc], a                                    ; $667f: $02
    ld [$0102], sp                                ; $6680: $08 $02 $01
    sub d                                         ; $6683: $92
    ld b, $07                                     ; $6684: $06 $07
    inc b                                         ; $6686: $04
    rlca                                          ; $6687: $07
    ld [bc], a                                    ; $6688: $02
    inc bc                                        ; $6689: $03
    ld [$250c], sp                                ; $668a: $08 $0c $25
    dec sp                                        ; $668d: $3b
    ld l, $31                                     ; $668e: $2e $31
    cpl                                           ; $6690: $2f
    jr nc, jr_0f8_66b9                            ; $6691: $30 $26

    add hl, sp                                    ; $6693: $39
    rrca                                          ; $6694: $0f
    rra                                           ; $6695: $1f
    ld [bc], a                                    ; $6696: $02
    nop                                           ; $6697: $00
    adc d                                         ; $6698: $8a
    inc [hl]                                      ; $6699: $34
    inc a                                         ; $669a: $3c
    ld c, e                                       ; $669b: $4b
    ld [hl], a                                    ; $669c: $77
    cp l                                          ; $669d: $bd
    jp $c3bc                                      ; $669e: $c3 $bc $c3


    ld e, d                                       ; $66a1: $5a
    ld h, a                                       ; $66a2: $67

jr_0f8_66a3:
    ld [bc], a                                    ; $66a3: $02
    ret nz                                        ; $66a4: $c0

    add h                                         ; $66a5: $84
    add b                                         ; $66a6: $80
    ld hl, sp+$7e                                 ; $66a7: $f8 $7e
    cp $02                                        ; $66a9: $fe $02
    ret nz                                        ; $66ab: $c0

    inc bc                                        ; $66ac: $03
    nop                                           ; $66ad: $00
    add a                                         ; $66ae: $87
    ldh a, [$7f]                                  ; $66af: $f0 $7f
    rst $38                                       ; $66b1: $ff
    add b                                         ; $66b2: $80
    ld [hl], b                                    ; $66b3: $70
    ld a, a                                       ; $66b4: $7f
    rst $38                                       ; $66b5: $ff
    ld b, $00                                     ; $66b6: $06 $00
    ld [bc], a                                    ; $66b8: $02

jr_0f8_66b9:
    ldh [$03], a                                  ; $66b9: $e0 $03
    nop                                           ; $66bb: $00
    inc bc                                        ; $66bc: $03
    rst $38                                       ; $66bd: $ff
    ld [bc], a                                    ; $66be: $02
    ld b, $0b                                     ; $66bf: $06 $0b
    nop                                           ; $66c1: $00
    add c                                         ; $66c2: $81
    inc b                                         ; $66c3: $04
    ld [bc], a                                    ; $66c4: $02
    rlca                                          ; $66c5: $07
    ld [bc], a                                    ; $66c6: $02
    nop                                           ; $66c7: $00
    ld [bc], a                                    ; $66c8: $02
    add b                                         ; $66c9: $80
    dec b                                         ; $66ca: $05
    nop                                           ; $66cb: $00
    add c                                         ; $66cc: $81
    ldh a, [rSC]                                  ; $66cd: $f0 $02
    cp $03                                        ; $66cf: $fe $03
    nop                                           ; $66d1: $00
    add e                                         ; $66d2: $83
    ret nz                                        ; $66d3: $c0

    adc $fe                                       ; $66d4: $ce $fe
    ld [bc], a                                    ; $66d6: $02
    ccf                                           ; $66d7: $3f
    ld [bc], a                                    ; $66d8: $02
    nop                                           ; $66d9: $00
    adc [hl]                                      ; $66da: $8e
    ld h, l                                       ; $66db: $65
    ld a, a                                       ; $66dc: $7f
    sbc [hl]                                      ; $66dd: $9e
    pop hl                                        ; $66de: $e1
    ld e, e                                       ; $66df: $5b
    ld h, a                                       ; $66e0: $67
    jr nc, jr_0f8_671b                            ; $66e1: $30 $38

    dec b                                         ; $66e3: $05
    rlca                                          ; $66e4: $07
    ld [$0d0f], sp                                ; $66e5: $08 $0f $0d
    rrca                                          ; $66e8: $0f
    ld c, $00                                     ; $66e9: $0e $00
    ld [bc], a                                    ; $66eb: $02
    jr nc, jr_0f8_66f3                            ; $66ec: $30 $05

    nop                                           ; $66ee: $00
    inc bc                                        ; $66ef: $03
    jr nc, @+$05                                  ; $66f0: $30 $03

    nop                                           ; $66f2: $00

jr_0f8_66f3:
    add c                                         ; $66f3: $81
    jr nc, jr_0f8_66f8                            ; $66f4: $30 $02

    ccf                                           ; $66f6: $3f
    ld [bc], a                                    ; $66f7: $02

jr_0f8_66f8:
    jr nz, jr_0f8_6706                            ; $66f8: $20 $0c

    nop                                           ; $66fa: $00
    rst $38                                       ; $66fb: $ff
    rrca                                          ; $66fc: $0f
    dec b                                         ; $66fd: $05
    ld bc, $fa12                                  ; $66fe: $01 $12 $fa
    ld b, $f2                                     ; $6701: $06 $f2
    ld bc, $09f3                                  ; $6703: $01 $f3 $09

jr_0f8_6706:
    ei                                            ; $6706: $fb
    inc c                                         ; $6707: $0c
    ld [bc], a                                    ; $6708: $02
    ld [bc], a                                    ; $6709: $02
    ld [bc], a                                    ; $670a: $02
    dec b                                         ; $670b: $05
    ld [bc], a                                    ; $670c: $02
    ld c, $86                                     ; $670d: $0e $86
    inc [hl]                                      ; $670f: $34
    ccf                                           ; $6710: $3f
    dec hl                                        ; $6711: $2b
    scf                                           ; $6712: $37
    ld a, [de]                                    ; $6713: $1a
    ld e, $02                                     ; $6714: $1e $02
    nop                                           ; $6716: $00
    ld [bc], a                                    ; $6717: $02
    rra                                           ; $6718: $1f
    adc d                                         ; $6719: $8a
    ld a, [bc]                                    ; $671a: $0a

jr_0f8_671b:
    ld [hl], $5c                                  ; $671b: $36 $5c
    ld h, e                                       ; $671d: $63
    ld e, a                                       ; $671e: $5f
    ld h, b                                       ; $671f: $60
    inc l                                         ; $6720: $2c
    ld d, e                                       ; $6721: $53
    dec de                                        ; $6722: $1b
    ccf                                           ; $6723: $3f
    ld [bc], a                                    ; $6724: $02
    nop                                           ; $6725: $00
    adc d                                         ; $6726: $8a
    ld a, [de]                                    ; $6727: $1a
    ld e, $4b                                     ; $6728: $1e $4b
    ld [hl], a                                    ; $672a: $77
    cp l                                          ; $672b: $bd
    jp $c3bc                                      ; $672c: $c3 $bc $c3


    nop                                           ; $672f: $00
    ret nz                                        ; $6730: $c0

    ld [bc], a                                    ; $6731: $02
    ldh a, [rDIV]                                 ; $6732: $f0 $04
    nop                                           ; $6734: $00
    ld [bc], a                                    ; $6735: $02
    add b                                         ; $6736: $80
    ld [bc], a                                    ; $6737: $02
    nop                                           ; $6738: $00
    ld [bc], a                                    ; $6739: $02
    cp $82                                        ; $673a: $fe $82
    nop                                           ; $673c: $00
    ldh [rSC], a                                  ; $673d: $e0 $02
    rst $38                                       ; $673f: $ff
    ld [bc], a                                    ; $6740: $02
    ret nz                                        ; $6741: $c0

    inc b                                         ; $6742: $04
    nop                                           ; $6743: $00
    ld [bc], a                                    ; $6744: $02
    ldh [rSC], a                                  ; $6745: $e0 $02
    add b                                         ; $6747: $80
    add c                                         ; $6748: $81
    nop                                           ; $6749: $00
    inc bc                                        ; $674a: $03
    rst $38                                       ; $674b: $ff
    ld [bc], a                                    ; $674c: $02
    inc b                                         ; $674d: $04
    dec bc                                        ; $674e: $0b
    nop                                           ; $674f: $00
    add c                                         ; $6750: $81
    inc b                                         ; $6751: $04
    ld [bc], a                                    ; $6752: $02
    rlca                                          ; $6753: $07
    ld [bc], a                                    ; $6754: $02
    add b                                         ; $6755: $80
    dec b                                         ; $6756: $05
    nop                                           ; $6757: $00
    add c                                         ; $6758: $81
    ldh [rSC], a                                  ; $6759: $e0 $02
    db $fc                                        ; $675b: $fc
    ld b, $00                                     ; $675c: $06 $00
    add h                                         ; $675e: $84
    or h                                          ; $675f: $b4
    adc $4f                                       ; $6760: $ce $4f
    ld a, a                                       ; $6762: $7f
    ld [bc], a                                    ; $6763: $02
    nop                                           ; $6764: $00
    adc b                                         ; $6765: $88
    ld h, l                                       ; $6766: $65
    ld a, a                                       ; $6767: $7f
    sbc [hl]                                      ; $6768: $9e
    pop hl                                        ; $6769: $e1
    db $dd                                        ; $676a: $dd
    db $e3                                        ; $676b: $e3
    ld l, l                                       ; $676c: $6d
    ld a, a                                       ; $676d: $7f
    inc b                                         ; $676e: $04
    nop                                           ; $676f: $00
    add [hl]                                      ; $6770: $86
    ld l, a                                       ; $6771: $6f
    ld a, a                                       ; $6772: $7f
    ld d, b                                       ; $6773: $50
    ld l, a                                       ; $6774: $6f
    inc l                                         ; $6775: $2c
    inc a                                         ; $6776: $3c
    ld a, [bc]                                    ; $6777: $0a
    nop                                           ; $6778: $00
    ld [bc], a                                    ; $6779: $02
    ld b, $05                                     ; $677a: $06 $05
    nop                                           ; $677c: $00
    add e                                         ; $677d: $83
    ld b, $02                                     ; $677e: $06 $02
    ld b, $06                                     ; $6780: $06 $06
    nop                                           ; $6782: $00
    ld [bc], a                                    ; $6783: $02
    inc b                                         ; $6784: $04
    add d                                         ; $6785: $82
    nop                                           ; $6786: $00
    rlca                                          ; $6787: $07
    ld a, [bc]                                    ; $6788: $0a
    nop                                           ; $6789: $00
    rst $38                                       ; $678a: $ff
    rrca                                          ; $678b: $0f
    dec b                                         ; $678c: $05
    ld bc, $fa12                                  ; $678d: $01 $12 $fa
    ld b, $f2                                     ; $6790: $06 $f2
    nop                                           ; $6792: $00
    di                                            ; $6793: $f3
    ld [$0b01], sp                                ; $6794: $08 $01 $0b
    ld [bc], a                                    ; $6797: $02
    nop                                           ; $6798: $00
    ld [bc], a                                    ; $6799: $02
    inc bc                                        ; $679a: $03
    ld [bc], a                                    ; $679b: $02
    inc a                                         ; $679c: $3c
    add [hl]                                      ; $679d: $86
    ld b, b                                       ; $679e: $40
    ld a, a                                       ; $679f: $7f
    inc bc                                        ; $67a0: $03
    ld a, a                                       ; $67a1: $7f
    cp b                                          ; $67a2: $b8
    db $fc                                        ; $67a3: $fc
    ld [bc], a                                    ; $67a4: $02
    ldh [$8c], a                                  ; $67a5: $e0 $8c
    cp a                                          ; $67a7: $bf
    rst $38                                       ; $67a8: $ff
    inc d                                         ; $67a9: $14
    ld l, h                                       ; $67aa: $6c
    add hl, sp                                    ; $67ab: $39
    ld b, a                                       ; $67ac: $47
    ld a, $41                                     ; $67ad: $3e $41
    sbc c                                         ; $67af: $99
    rst $20                                       ; $67b0: $e7
    rst $10                                       ; $67b1: $d7
    rst $38                                       ; $67b2: $ff
    ld [bc], a                                    ; $67b3: $02
    ld [hl], b                                    ; $67b4: $70
    adc d                                         ; $67b5: $8a
    ld e, d                                       ; $67b6: $5a

Call_0f8_67b7:
    ld a, [hl]                                    ; $67b7: $7e
    xor e                                         ; $67b8: $ab
    rst $10                                       ; $67b9: $d7
    dec a                                         ; $67ba: $3d
    ld b, e                                       ; $67bb: $43
    inc a                                         ; $67bc: $3c
    ld b, e                                       ; $67bd: $43
    nop                                           ; $67be: $00
    ret nz                                        ; $67bf: $c0

    ld [bc], a                                    ; $67c0: $02
    ldh a, [$08]                                  ; $67c1: $f0 $08
    nop                                           ; $67c3: $00
    ld [bc], a                                    ; $67c4: $02
    db $fc                                        ; $67c5: $fc
    add d                                         ; $67c6: $82
    nop                                           ; $67c7: $00
    ret nz                                        ; $67c8: $c0

    ld [bc], a                                    ; $67c9: $02
    rst $38                                       ; $67ca: $ff
    ld [bc], a                                    ; $67cb: $02
    add b                                         ; $67cc: $80
    inc b                                         ; $67cd: $04
    nop                                           ; $67ce: $00
    ld [bc], a                                    ; $67cf: $02
    ldh [rSC], a                                  ; $67d0: $e0 $02
    add b                                         ; $67d2: $80
    add c                                         ; $67d3: $81
    nop                                           ; $67d4: $00
    inc bc                                        ; $67d5: $03
    rst $38                                       ; $67d6: $ff
    add d                                         ; $67d7: $82
    nop                                           ; $67d8: $00
    inc b                                         ; $67d9: $04
    ld [bc], a                                    ; $67da: $02
    rlca                                          ; $67db: $07
    ld [bc], a                                    ; $67dc: $02
    add b                                         ; $67dd: $80
    dec b                                         ; $67de: $05
    nop                                           ; $67df: $00
    add c                                         ; $67e0: $81
    ldh a, [rSC]                                  ; $67e1: $f0 $02
    db $fc                                        ; $67e3: $fc
    add hl, bc                                    ; $67e4: $09
    nop                                           ; $67e5: $00
    add c                                         ; $67e6: $81
    add b                                         ; $67e7: $80
    ld [$8400], sp                                ; $67e8: $08 $00 $84
    ld a, [hl-]                                   ; $67eb: $3a
    ld b, a                                       ; $67ec: $47
    add a                                         ; $67ed: $87
    rst $38                                       ; $67ee: $ff
    ld [bc], a                                    ; $67ef: $02
    ldh [$88], a                                  ; $67f0: $e0 $88
    cp c                                          ; $67f2: $b9
    rst $38                                       ; $67f3: $ff
    rlca                                          ; $67f4: $07
    ld a, b                                       ; $67f5: $78
    ccf                                           ; $67f6: $3f
    ld b, b                                       ; $67f7: $40
    ld e, e                                       ; $67f8: $5b
    ld a, a                                       ; $67f9: $7f
    ld [bc], a                                    ; $67fa: $02
    ldh [$88], a                                  ; $67fb: $e0 $88
    ld d, b                                       ; $67fd: $50
    ld [hl], b                                    ; $67fe: $70
    daa                                           ; $67ff: $27
    ld e, a                                       ; $6800: $5f
    ld b, b                                       ; $6801: $40
    ld a, a                                       ; $6802: $7f
    ld [hl], $3e                                  ; $6803: $36 $3e
    ld a, [bc]                                    ; $6805: $0a
    nop                                           ; $6806: $00
    ld [bc], a                                    ; $6807: $02
    rlca                                          ; $6808: $07
    ld [bc], a                                    ; $6809: $02
    nop                                           ; $680a: $00
    adc b                                         ; $680b: $88
    ld [bc], a                                    ; $680c: $02
    ld b, $04                                     ; $680d: $06 $04
    inc bc                                        ; $680f: $03
    ld [bc], a                                    ; $6810: $02
    rlca                                          ; $6811: $07
    ld [bc], a                                    ; $6812: $02
    ld b, $04                                     ; $6813: $06 $04
    nop                                           ; $6815: $00
    ld [bc], a                                    ; $6816: $02
    ld b, $82                                     ; $6817: $06 $82
    nop                                           ; $6819: $00
    rlca                                          ; $681a: $07
    ld a, [bc]                                    ; $681b: $0a
    nop                                           ; $681c: $00
    rst $38                                       ; $681d: $ff
    rrca                                          ; $681e: $0f
    dec b                                         ; $681f: $05
    ld bc, $fa12                                  ; $6820: $01 $12 $fa
    ld b, $f2                                     ; $6823: $06 $f2
    nop                                           ; $6825: $00
    db $f4                                        ; $6826: $f4
    ld [$0b01], sp                                ; $6827: $08 $01 $0b
    ld [bc], a                                    ; $682a: $02
    nop                                           ; $682b: $00
    ld [bc], a                                    ; $682c: $02
    inc bc                                        ; $682d: $03
    ld [bc], a                                    ; $682e: $02
    ld [hl], b                                    ; $682f: $70
    sub c                                         ; $6830: $91
    add b                                         ; $6831: $80
    db $fd                                        ; $6832: $fd
    rst $20                                       ; $6833: $e7
    sbc a                                         ; $6834: $9f
    add sp, -$68                                  ; $6835: $e8 $98
    inc h                                         ; $6837: $24
    ld e, h                                       ; $6838: $5c
    ld l, a                                       ; $6839: $6f
    ld a, a                                       ; $683a: $7f
    jr jr_0f8_6865                                ; $683b: $18 $28

    inc de                                        ; $683d: $13
    cpl                                           ; $683e: $2f
    inc e                                         ; $683f: $1c
    inc hl                                        ; $6840: $23
    inc de                                        ; $6841: $13
    ld [bc], a                                    ; $6842: $02
    cpl                                           ; $6843: $2f
    adc e                                         ; $6844: $8b
    ccf                                           ; $6845: $3f
    inc [hl]                                      ; $6846: $34
    inc a                                         ; $6847: $3c
    dec sp                                        ; $6848: $3b
    ccf                                           ; $6849: $3f
    dec hl                                        ; $684a: $2b
    scf                                           ; $684b: $37
    dec e                                         ; $684c: $1d
    inc hl                                        ; $684d: $23
    inc e                                         ; $684e: $1c
    inc hl                                        ; $684f: $23
    ld [bc], a                                    ; $6850: $02
    ret nz                                        ; $6851: $c0

    ld [$0200], sp                                ; $6852: $08 $00 $02
    ld hl, sp-$7e                                 ; $6855: $f8 $82
    nop                                           ; $6857: $00
    add b                                         ; $6858: $80
    ld [bc], a                                    ; $6859: $02
    cp $06                                        ; $685a: $fe $06
    nop                                           ; $685c: $00
    ld [bc], a                                    ; $685d: $02
    ldh [rSC], a                                  ; $685e: $e0 $02
    add b                                         ; $6860: $80
    add c                                         ; $6861: $81
    nop                                           ; $6862: $00
    inc bc                                        ; $6863: $03
    rst $38                                       ; $6864: $ff

jr_0f8_6865:
    ld [bc], a                                    ; $6865: $02
    ret nc                                        ; $6866: $d0

    add d                                         ; $6867: $82
    nop                                           ; $6868: $00
    inc b                                         ; $6869: $04
    ld [bc], a                                    ; $686a: $02
    rlca                                          ; $686b: $07
    rlca                                          ; $686c: $07
    nop                                           ; $686d: $00
    add c                                         ; $686e: $81
    ldh [rSC], a                                  ; $686f: $e0 $02
    ld hl, sp+$12                                 ; $6871: $f8 $12
    nop                                           ; $6873: $00
    add c                                         ; $6874: $81
    ld a, [hl+]                                   ; $6875: $2a
    ld [bc], a                                    ; $6876: $02
    scf                                           ; $6877: $37
    sub l                                         ; $6878: $95
    ccf                                           ; $6879: $3f
    inc h                                         ; $687a: $24
    inc a                                         ; $687b: $3c
    dec e                                         ; $687c: $1d
    daa                                           ; $687d: $27
    ld e, $21                                     ; $687e: $1e $21
    dec e                                         ; $6880: $1d
    inc hl                                        ; $6881: $23
    ld l, a                                       ; $6882: $6f
    ld a, a                                       ; $6883: $7f
    ld b, h                                       ; $6884: $44
    ld a, h                                       ; $6885: $7c
    cp b                                          ; $6886: $b8
    ret c                                         ; $6887: $d8

    rst $28                                       ; $6888: $ef
    sbc a                                         ; $6889: $9f
    sub b                                         ; $688a: $90
    rst $28                                       ; $688b: $ef
    ld l, b                                       ; $688c: $68
    ld a, b                                       ; $688d: $78
    ld de, $8300                                  ; $688e: $11 $00 $83
    rlca                                          ; $6891: $07
    inc bc                                        ; $6892: $03
    rlca                                          ; $6893: $07
    add hl, bc                                    ; $6894: $09
    nop                                           ; $6895: $00
    add c                                         ; $6896: $81
    ld b, $0a                                     ; $6897: $06 $0a
    nop                                           ; $6899: $00
    rst $38                                       ; $689a: $ff
    rrca                                          ; $689b: $0f
    dec b                                         ; $689c: $05
    ld bc, $fa12                                  ; $689d: $01 $12 $fa
    ld b, $f2                                     ; $68a0: $06 $f2
    rst $38                                       ; $68a2: $ff
    db $f4                                        ; $68a3: $f4
    rlca                                          ; $68a4: $07
    ld a, [$020c]                                 ; $68a5: $fa $0c $02
    rst $38                                       ; $68a8: $ff
    ld [bc], a                                    ; $68a9: $02
    inc b                                         ; $68aa: $04
    ld [bc], a                                    ; $68ab: $02
    ld [hl], b                                    ; $68ac: $70
    sub d                                         ; $68ad: $92
    adc l                                         ; $68ae: $8d
    db $fd                                        ; $68af: $fd
    ldh [$9f], a                                  ; $68b0: $e0 $9f
    ld l, b                                       ; $68b2: $68
    jr jr_0f8_68de                                ; $68b3: $18 $29

    scf                                           ; $68b5: $37
    dec sp                                        ; $68b6: $3b
    ccf                                           ; $68b7: $3f
    inc de                                        ; $68b8: $13
    dec e                                         ; $68b9: $1d
    dec b                                         ; $68ba: $05
    dec bc                                        ; $68bb: $0b
    rrca                                          ; $68bc: $0f
    ld [$0b0c], sp                                ; $68bd: $08 $0c $0b
    ld [bc], a                                    ; $68c0: $02
    rlca                                          ; $68c1: $07
    adc h                                         ; $68c2: $8c
    inc b                                         ; $68c3: $04
    rlca                                          ; $68c4: $07
    ld b, $07                                     ; $68c5: $06 $07
    dec b                                         ; $68c7: $05
    ld b, $03                                     ; $68c8: $06 $03
    inc b                                         ; $68ca: $04
    inc bc                                        ; $68cb: $03
    inc b                                         ; $68cc: $04
    nop                                           ; $68cd: $00
    ret nz                                        ; $68ce: $c0

    inc b                                         ; $68cf: $04
    nop                                           ; $68d0: $00
    ld [bc], a                                    ; $68d1: $02
    ret nz                                        ; $68d2: $c0

    ld [bc], a                                    ; $68d3: $02
    nop                                           ; $68d4: $00
    ld [bc], a                                    ; $68d5: $02
    add sp, -$7c                                  ; $68d6: $e8 $84
    ld a, a                                       ; $68d8: $7f
    rst $38                                       ; $68d9: $ff
    add b                                         ; $68da: $80
    ldh [rSC], a                                  ; $68db: $e0 $02
    add b                                         ; $68dd: $80

jr_0f8_68de:
    add d                                         ; $68de: $82
    ld b, b                                       ; $68df: $40
    ret nz                                        ; $68e0: $c0

    ld [bc], a                                    ; $68e1: $02
    ld hl, sp-$76                                 ; $68e2: $f8 $8a
    ld h, b                                       ; $68e4: $60
    ldh [$80], a                                  ; $68e5: $e0 $80
    ld b, b                                       ; $68e7: $40
    or h                                          ; $68e8: $b4
    ld [hl], h                                    ; $68e9: $74
    ld a, a                                       ; $68ea: $7f
    rst $38                                       ; $68eb: $ff
    ret nz                                        ; $68ec: $c0

    rst $38                                       ; $68ed: $ff
    ld [bc], a                                    ; $68ee: $02
    db $10                                        ; $68ef: $10
    ld c, $00                                     ; $68f0: $0e $00
    ld [bc], a                                    ; $68f2: $02
    dec e                                         ; $68f3: $1d
    add d                                         ; $68f4: $82
    nop                                           ; $68f5: $00
    inc d                                         ; $68f6: $14
    dec b                                         ; $68f7: $05
    nop                                           ; $68f8: $00
    add c                                         ; $68f9: $81
    ret nz                                        ; $68fa: $c0

    ld [bc], a                                    ; $68fb: $02
    ldh a, [rDIV]                                 ; $68fc: $f0 $04
    nop                                           ; $68fe: $00
    add c                                         ; $68ff: $81
    dec b                                         ; $6900: $05
    ld [bc], a                                    ; $6901: $02
    ld b, $95                                     ; $6902: $06 $95
    rlca                                          ; $6904: $07
    inc b                                         ; $6905: $04
    rlca                                          ; $6906: $07
    rrca                                          ; $6907: $0f
    add hl, bc                                    ; $6908: $09
    rlca                                          ; $6909: $07
    ld [$1817], sp                                ; $690a: $08 $17 $18
    add hl, de                                    ; $690d: $19
    rra                                           ; $690e: $1f
    ld sp, $b83f                                  ; $690f: $31 $3f $b8
    ret c                                         ; $6912: $d8

    ldh [$9f], a                                  ; $6913: $e0 $9f
    sbc l                                         ; $6915: $9d
    db $ed                                        ; $6916: $ed
    ld h, b                                       ; $6917: $60
    ld [hl], b                                    ; $6918: $70
    inc c                                         ; $6919: $0c
    nop                                           ; $691a: $00
    adc b                                         ; $691b: $88
    ld [$0818], sp                                ; $691c: $08 $18 $08
    jr jr_0f8_6921                                ; $691f: $18 $00

jr_0f8_6921:
    rra                                           ; $6921: $1f
    rla                                           ; $6922: $17
    rra                                           ; $6923: $1f
    ld [bc], a                                    ; $6924: $02
    jr jr_0f8_692c                                ; $6925: $18 $05

    nop                                           ; $6927: $00
    add c                                         ; $6928: $81
    jr jr_0f8_6937                                ; $6929: $18 $0c

    nop                                           ; $692b: $00

jr_0f8_692c:
    rst $38                                       ; $692c: $ff
    rrca                                          ; $692d: $0f
    dec b                                         ; $692e: $05
    ld bc, $fa12                                  ; $692f: $01 $12 $fa
    ld b, $f2                                     ; $6932: $06 $f2
    rst $38                                       ; $6934: $ff
    di                                            ; $6935: $f3
    rlca                                          ; $6936: $07

jr_0f8_6937:
    ld a, [$020a]                                 ; $6937: $fa $0a $02
    rst $38                                       ; $693a: $ff
    ld [bc], a                                    ; $693b: $02
    ld [bc], a                                    ; $693c: $02
    ld [bc], a                                    ; $693d: $02
    ld [hl], b                                    ; $693e: $70
    sbc [hl]                                      ; $693f: $9e
    adc [hl]                                      ; $6940: $8e
    cp $e0                                        ; $6941: $fe $e0
    sbc a                                         ; $6943: $9f
    ld l, h                                       ; $6944: $6c
    inc e                                         ; $6945: $1c
    ld l, c                                       ; $6946: $69
    ld [hl], a                                    ; $6947: $77
    dec sp                                        ; $6948: $3b
    ccf                                           ; $6949: $3f
    inc de                                        ; $694a: $13
    dec e                                         ; $694b: $1d
    dec b                                         ; $694c: $05
    dec bc                                        ; $694d: $0b
    rrca                                          ; $694e: $0f
    ld [$0b0c], sp                                ; $694f: $08 $0c $0b
    inc bc                                        ; $6952: $03
    rlca                                          ; $6953: $07
    inc c                                         ; $6954: $0c
    rrca                                          ; $6955: $0f
    ld b, $07                                     ; $6956: $06 $07
    dec b                                         ; $6958: $05
    ld b, $03                                     ; $6959: $06 $03
    inc b                                         ; $695b: $04
    rlca                                          ; $695c: $07
    inc b                                         ; $695d: $04
    ld [bc], a                                    ; $695e: $02
    add b                                         ; $695f: $80
    add d                                         ; $6960: $82
    nop                                           ; $6961: $00
    ret nz                                        ; $6962: $c0

    inc b                                         ; $6963: $04
    nop                                           ; $6964: $00
    ld [bc], a                                    ; $6965: $02
    ret nz                                        ; $6966: $c0

    ld [bc], a                                    ; $6967: $02
    nop                                           ; $6968: $00
    ld [bc], a                                    ; $6969: $02
    db $f4                                        ; $696a: $f4
    add h                                         ; $696b: $84
    ld a, a                                       ; $696c: $7f
    rst $38                                       ; $696d: $ff
    add b                                         ; $696e: $80
    ldh [rSC], a                                  ; $696f: $e0 $02
    add b                                         ; $6971: $80
    add d                                         ; $6972: $82
    ld b, b                                       ; $6973: $40
    ret nz                                        ; $6974: $c0

    ld [bc], a                                    ; $6975: $02
    ld hl, sp-$78                                 ; $6976: $f8 $88
    ld h, b                                       ; $6978: $60
    ldh [$80], a                                  ; $6979: $e0 $80
    ld b, b                                       ; $697b: $40
    or d                                          ; $697c: $b2
    ld [hl], d                                    ; $697d: $72
    ld a, a                                       ; $697e: $7f
    rst $38                                       ; $697f: $ff
    ld [bc], a                                    ; $6980: $02
    ld b, $0e                                     ; $6981: $06 $0e
    nop                                           ; $6983: $00
    ld [bc], a                                    ; $6984: $02
    rlca                                          ; $6985: $07
    add d                                         ; $6986: $82
    nop                                           ; $6987: $00
    db $fc                                        ; $6988: $fc
    dec b                                         ; $6989: $05
    nop                                           ; $698a: $00
    add c                                         ; $698b: $81
    ldh [rSC], a                                  ; $698c: $e0 $02
    ld a, [c]                                     ; $698e: $f2
    inc b                                         ; $698f: $04
    nop                                           ; $6990: $00
    add c                                         ; $6991: $81
    ld bc, $0602                                  ; $6992: $01 $02 $06
    sub l                                         ; $6995: $95
    rlca                                          ; $6996: $07
    inc b                                         ; $6997: $04
    rlca                                          ; $6998: $07
    rrca                                          ; $6999: $0f
    add hl, bc                                    ; $699a: $09
    rla                                           ; $699b: $17
    jr jr_0f8_69b5                                ; $699c: $18 $17

    jr jr_0f8_69b9                                ; $699e: $18 $19

    rra                                           ; $69a0: $1f
    ld [hl], c                                    ; $69a1: $71
    ld a, a                                       ; $69a2: $7f
    cp h                                          ; $69a3: $bc
    call c, $9fe0                                 ; $69a4: $dc $e0 $9f
    sbc [hl]                                      ; $69a7: $9e
    xor $60                                       ; $69a8: $ee $60
    ld [hl], b                                    ; $69aa: $70
    ld a, [bc]                                    ; $69ab: $0a
    nop                                           ; $69ac: $00
    adc d                                         ; $69ad: $8a
    ld b, $07                                     ; $69ae: $06 $07
    ld [bc], a                                    ; $69b0: $02
    ld b, $02                                     ; $69b1: $06 $02
    ld b, $00                                     ; $69b3: $06 $00

jr_0f8_69b5:
    rlca                                          ; $69b5: $07
    dec b                                         ; $69b6: $05
    rlca                                          ; $69b7: $07
    ld [bc], a                                    ; $69b8: $02

jr_0f8_69b9:
    ld b, $05                                     ; $69b9: $06 $05
    nop                                           ; $69bb: $00
    add c                                         ; $69bc: $81
    dec b                                         ; $69bd: $05
    ld [bc], a                                    ; $69be: $02
    inc b                                         ; $69bf: $04
    ld a, [bc]                                    ; $69c0: $0a
    nop                                           ; $69c1: $00
    rst $38                                       ; $69c2: $ff
    rrca                                          ; $69c3: $0f
    dec b                                         ; $69c4: $05
    ld bc, $fa12                                  ; $69c5: $01 $12 $fa
    ld b, $f2                                     ; $69c8: $06 $f2
    rst $38                                       ; $69ca: $ff
    di                                            ; $69cb: $f3
    rlca                                          ; $69cc: $07
    ld sp, hl                                     ; $69cd: $f9
    inc c                                         ; $69ce: $0c
    ld [bc], a                                    ; $69cf: $02
    rst $38                                       ; $69d0: $ff
    ld [bc], a                                    ; $69d1: $02
    inc b                                         ; $69d2: $04
    ld [bc], a                                    ; $69d3: $02
    ld [hl], b                                    ; $69d4: $70
    sub d                                         ; $69d5: $92
    adc [hl]                                      ; $69d6: $8e
    cp $e0                                        ; $69d7: $fe $e0
    sbc a                                         ; $69d9: $9f
    ld l, b                                       ; $69da: $68
    jr jr_0f8_6a08                                ; $69db: $18 $2b

    scf                                           ; $69dd: $37
    inc a                                         ; $69de: $3c
    ld a, $13                                     ; $69df: $3e $13
    dec e                                         ; $69e1: $1d
    dec d                                         ; $69e2: $15
    dec de                                        ; $69e3: $1b
    rrca                                          ; $69e4: $0f
    ld [$0b0c], sp                                ; $69e5: $08 $0c $0b
    ld [bc], a                                    ; $69e8: $02
    rlca                                          ; $69e9: $07
    adc d                                         ; $69ea: $8a
    inc c                                         ; $69eb: $0c
    rrca                                          ; $69ec: $0f
    ld c, $0f                                     ; $69ed: $0e $0f
    dec b                                         ; $69ef: $05
    ld b, $03                                     ; $69f0: $06 $03
    inc b                                         ; $69f2: $04
    dec bc                                        ; $69f3: $0b
    inc c                                         ; $69f4: $0c
    ld [bc], a                                    ; $69f5: $02
    add b                                         ; $69f6: $80
    add d                                         ; $69f7: $82
    nop                                           ; $69f8: $00
    ret nz                                        ; $69f9: $c0

    ld [bc], a                                    ; $69fa: $02
    nop                                           ; $69fb: $00
    ld [bc], a                                    ; $69fc: $02
    ret nz                                        ; $69fd: $c0

    inc b                                         ; $69fe: $04
    nop                                           ; $69ff: $00
    ld [bc], a                                    ; $6a00: $02
    rst $38                                       ; $6a01: $ff
    add h                                         ; $6a02: $84
    ld [hl], h                                    ; $6a03: $74
    db $f4                                        ; $6a04: $f4
    add b                                         ; $6a05: $80
    ldh [rSC], a                                  ; $6a06: $e0 $02

jr_0f8_6a08:
    add b                                         ; $6a08: $80
    add d                                         ; $6a09: $82
    ld b, b                                       ; $6a0a: $40
    ret nz                                        ; $6a0b: $c0

    ld [bc], a                                    ; $6a0c: $02
    db $f4                                        ; $6a0d: $f4
    adc b                                         ; $6a0e: $88
    ld h, b                                       ; $6a0f: $60
    ldh [$80], a                                  ; $6a10: $e0 $80
    ld b, b                                       ; $6a12: $40
    or d                                          ; $6a13: $b2
    ld [hl], d                                    ; $6a14: $72
    ld a, a                                       ; $6a15: $7f
    rst $38                                       ; $6a16: $ff
    ld [bc], a                                    ; $6a17: $02
    ld [$0010], sp                                ; $6a18: $08 $10 $00
    ld [bc], a                                    ; $6a1b: $02
    rra                                           ; $6a1c: $1f
    add d                                         ; $6a1d: $82
    nop                                           ; $6a1e: $00
    ld a, [$0005]                                 ; $6a1f: $fa $05 $00
    add c                                         ; $6a22: $81
    add b                                         ; $6a23: $80
    ld [bc], a                                    ; $6a24: $02
    ldh a, [rSC]                                  ; $6a25: $f0 $02
    nop                                           ; $6a27: $00
    add c                                         ; $6a28: $81
    dec b                                         ; $6a29: $05
    ld [bc], a                                    ; $6a2a: $02
    ld b, $82                                     ; $6a2b: $06 $82
    rlca                                          ; $6a2d: $07
    inc c                                         ; $6a2e: $0c
    ld [bc], a                                    ; $6a2f: $02
    rrca                                          ; $6a30: $0f
    sub c                                         ; $6a31: $91
    add hl, bc                                    ; $6a32: $09
    rlca                                          ; $6a33: $07
    ld [$1817], sp                                ; $6a34: $08 $17 $18
    add hl, sp                                    ; $6a37: $39
    ccf                                           ; $6a38: $3f
    ld sp, $b83f                                  ; $6a39: $31 $3f $b8
    ret c                                         ; $6a3c: $d8

    ldh [$9f], a                                  ; $6a3d: $e0 $9f
    sbc [hl]                                      ; $6a3f: $9e
    xor $60                                       ; $6a40: $ee $60
    ld [hl], b                                    ; $6a42: $70
    ld a, [bc]                                    ; $6a43: $0a
    nop                                           ; $6a44: $00
    adc d                                         ; $6a45: $8a
    jr jr_0f8_6a67                                ; $6a46: $18 $1f

    ld [$0818], sp                                ; $6a48: $08 $18 $08
    jr jr_0f8_6a4d                                ; $6a4b: $18 $00

jr_0f8_6a4d:
    rra                                           ; $6a4d: $1f
    rla                                           ; $6a4e: $17
    rra                                           ; $6a4f: $1f
    ld [bc], a                                    ; $6a50: $02
    jr jr_0f8_6a58                                ; $6a51: $18 $05

    nop                                           ; $6a53: $00
    add c                                         ; $6a54: $81
    inc d                                         ; $6a55: $14
    ld [bc], a                                    ; $6a56: $02
    db $10                                        ; $6a57: $10

jr_0f8_6a58:
    ld a, [bc]                                    ; $6a58: $0a
    nop                                           ; $6a59: $00
    rst $38                                       ; $6a5a: $ff
    rlca                                          ; $6a5b: $07
    ld bc, $09f9                                  ; $6a5c: $01 $f9 $09
    db $ed                                        ; $6a5f: $ed
    ld [bc], a                                    ; $6a60: $02
    ld b, $fc                                     ; $6a61: $06 $fc
    ld [bc], a                                    ; $6a63: $02
    ld de, $5502                                  ; $6a64: $11 $02 $55

jr_0f8_6a67:
    add h                                         ; $6a67: $84
    ld [hl], l                                    ; $6a68: $75
    ld [hl], a                                    ; $6a69: $77
    ld a, [bc]                                    ; $6a6a: $0a
    ld a, $02                                     ; $6a6b: $3e $02
    inc [hl]                                      ; $6a6d: $34
    ld d, $00                                     ; $6a6e: $16 $00
    rst $38                                       ; $6a70: $ff
    add hl, bc                                    ; $6a71: $09
    ld [bc], a                                    ; $6a72: $02
    ld sp, hl                                     ; $6a73: $f9
    add hl, bc                                    ; $6a74: $09
    db $ed                                        ; $6a75: $ed
    ld [bc], a                                    ; $6a76: $02
    inc b                                         ; $6a77: $04
    ei                                            ; $6a78: $fb
    inc b                                         ; $6a79: $04
    cp $02                                        ; $6a7a: $fe $02
    and l                                         ; $6a7c: $a5
    ld [bc], a                                    ; $6a7d: $02
    ld e, c                                       ; $6a7e: $59
    adc b                                         ; $6a7f: $88
    push hl                                       ; $6a80: $e5
    rst $28                                       ; $6a81: $ef
    ld d, d                                       ; $6a82: $52
    ld a, e                                       ; $6a83: $7b
    inc h                                         ; $6a84: $24
    ccf                                           ; $6a85: $3f
    add hl, hl                                    ; $6a86: $29
    ccf                                           ; $6a87: $3f
    ld [bc], a                                    ; $6a88: $02
    rra                                           ; $6a89: $1f
    ld [de], a                                    ; $6a8a: $12
    nop                                           ; $6a8b: $00
    ld [bc], a                                    ; $6a8c: $02
    ld [bc], a                                    ; $6a8d: $02
    ld [bc], a                                    ; $6a8e: $02
    dec b                                         ; $6a8f: $05
    ld [bc], a                                    ; $6a90: $02
    inc bc                                        ; $6a91: $03
    add d                                         ; $6a92: $82
    ld [bc], a                                    ; $6a93: $02
    ld b, $04                                     ; $6a94: $06 $04
    inc b                                         ; $6a96: $04
    inc d                                         ; $6a97: $14
    nop                                           ; $6a98: $00
    rst $38                                       ; $6a99: $ff
    add hl, bc                                    ; $6a9a: $09
    ld [bc], a                                    ; $6a9b: $02
    ld sp, hl                                     ; $6a9c: $f9
    add hl, bc                                    ; $6a9d: $09
    db $ed                                        ; $6a9e: $ed
    ld [bc], a                                    ; $6a9f: $02
    cp $fb                                        ; $6aa0: $fe $fb
    cp $ff                                        ; $6aa2: $fe $ff
    ld [bc], a                                    ; $6aa4: $02
    ld [de], a                                    ; $6aa5: $12
    ld [bc], a                                    ; $6aa6: $02
    inc c                                         ; $6aa7: $0c
    adc b                                         ; $6aa8: $88
    sub d                                         ; $6aa9: $92
    sub [hl]                                      ; $6aaa: $96
    ld h, d                                       ; $6aab: $62
    ld [hl], e                                    ; $6aac: $73
    sub l                                         ; $6aad: $95
    xor l                                         ; $6aae: $ad
    ld [bc], a                                    ; $6aaf: $02
    ld d, $02                                     ; $6ab0: $16 $02
    ld e, e                                       ; $6ab2: $5b
    add [hl]                                      ; $6ab3: $86
    jr z, jr_0f8_6ae2                             ; $6ab4: $28 $2c

    ld d, l                                       ; $6ab6: $55
    ld e, e                                       ; $6ab7: $5b
    jr z, jr_0f8_6ae6                             ; $6ab8: $28 $2c

    ld [bc], a                                    ; $6aba: $02
    inc de                                        ; $6abb: $13
    add d                                         ; $6abc: $82
    inc h                                         ; $6abd: $24
    dec h                                         ; $6abe: $25
    ld a, [bc]                                    ; $6abf: $0a
    nop                                           ; $6ac0: $00
    ld [bc], a                                    ; $6ac1: $02
    add hl, bc                                    ; $6ac2: $09
    adc b                                         ; $6ac3: $88
    ld b, $0e                                     ; $6ac4: $06 $0e
    add hl, bc                                    ; $6ac6: $09
    rlca                                          ; $6ac7: $07
    nop                                           ; $6ac8: $00
    ld [$0c04], sp                                ; $6ac9: $08 $04 $0c
    ld [bc], a                                    ; $6acc: $02
    ld [bc], a                                    ; $6acd: $02
    ld [bc], a                                    ; $6ace: $02
    inc c                                         ; $6acf: $0c
    add d                                         ; $6ad0: $82
    ld [bc], a                                    ; $6ad1: $02
    ld b, $02                                     ; $6ad2: $06 $02
    ld [$0002], sp                                ; $6ad4: $08 $02 $00
    ld [bc], a                                    ; $6ad7: $02
    ld [$0008], sp                                ; $6ad8: $08 $08 $00
    rst $38                                       ; $6adb: $ff
    add hl, bc                                    ; $6adc: $09
    ld [bc], a                                    ; $6add: $02
    ld sp, hl                                     ; $6ade: $f9
    add hl, bc                                    ; $6adf: $09
    db $ed                                        ; $6ae0: $ed
    ld [bc], a                                    ; $6ae1: $02

jr_0f8_6ae2:
    ld hl, sp-$05                                 ; $6ae2: $f8 $fb
    ld hl, sp-$01                                 ; $6ae4: $f8 $ff

jr_0f8_6ae6:
    ld [bc], a                                    ; $6ae6: $02
    ld hl, $2502                                  ; $6ae7: $21 $02 $25
    ld [bc], a                                    ; $6aea: $02
    inc b                                         ; $6aeb: $04
    ld [bc], a                                    ; $6aec: $02
    nop                                           ; $6aed: $00
    ld [bc], a                                    ; $6aee: $02
    ld d, d                                       ; $6aef: $52
    sub b                                         ; $6af0: $90
    ld c, h                                       ; $6af1: $4c
    ld c, l                                       ; $6af2: $4d
    add d                                         ; $6af3: $82
    sub [hl]                                      ; $6af4: $96
    ld d, d                                       ; $6af5: $52
    ld l, d                                       ; $6af6: $6a
    adc c                                         ; $6af7: $89
    cp c                                          ; $6af8: $b9
    nop                                           ; $6af9: $00
    inc b                                         ; $6afa: $04
    ld d, l                                       ; $6afb: $55
    ld e, e                                       ; $6afc: $5b
    jr z, jr_0f8_6b2b                             ; $6afd: $28 $2c

    ld b, e                                       ; $6aff: $43
    ld b, a                                       ; $6b00: $47
    ld [bc], a                                    ; $6b01: $02
    inc l                                         ; $6b02: $2c

jr_0f8_6b03:
    ld [bc], a                                    ; $6b03: $02
    ld [de], a                                    ; $6b04: $12
    add d                                         ; $6b05: $82
    nop                                           ; $6b06: $00
    ld bc, $0004                                  ; $6b07: $01 $04 $00
    inc b                                         ; $6b0a: $04
    inc b                                         ; $6b0b: $04
    adc b                                         ; $6b0c: $88
    nop                                           ; $6b0d: $00
    ld [$0509], sp                                ; $6b0e: $08 $09 $05
    ld b, $0e                                     ; $6b11: $06 $0e
    dec c                                         ; $6b13: $0d
    rrca                                          ; $6b14: $0f
    ld [bc], a                                    ; $6b15: $02
    ld [$0482], sp                                ; $6b16: $08 $82 $04
    inc c                                         ; $6b19: $0c
    ld [bc], a                                    ; $6b1a: $02
    ld [bc], a                                    ; $6b1b: $02
    ld [bc], a                                    ; $6b1c: $02
    inc c                                         ; $6b1d: $0c
    add d                                         ; $6b1e: $82
    ld [bc], a                                    ; $6b1f: $02
    ld b, $02                                     ; $6b20: $06 $02
    ld [$0004], sp                                ; $6b22: $08 $04 $00
    rst $38                                       ; $6b25: $ff
    add hl, bc                                    ; $6b26: $09
    ld [bc], a                                    ; $6b27: $02
    ld sp, hl                                     ; $6b28: $f9
    add hl, bc                                    ; $6b29: $09
    db $ed                                        ; $6b2a: $ed

jr_0f8_6b2b:
    ld [bc], a                                    ; $6b2b: $02
    ei                                            ; $6b2c: $fb
    db $fc                                        ; $6b2d: $fc
    ei                                            ; $6b2e: $fb
    cp $03                                        ; $6b2f: $fe $03
    nop                                           ; $6b31: $00
    adc l                                         ; $6b32: $8d
    ld bc, $4000                                  ; $6b33: $01 $00 $40
    ld b, d                                       ; $6b36: $42
    and d                                         ; $6b37: $a2
    db $10                                        ; $6b38: $10
    ld d, b                                       ; $6b39: $50
    nop                                           ; $6b3a: $00
    inc b                                         ; $6b3b: $04
    ld b, h                                       ; $6b3c: $44
    ld c, d                                       ; $6b3d: $4a
    ld [$020c], sp                                ; $6b3e: $08 $0c $02
    ld bc, $0003                                  ; $6b41: $01 $03 $00
    ld [bc], a                                    ; $6b44: $02
    ld [$1483], sp                                ; $6b45: $08 $83 $14
    ld [bc], a                                    ; $6b48: $02
    ld a, [bc]                                    ; $6b49: $0a
    ld [bc], a                                    ; $6b4a: $02
    ld [$0005], sp                                ; $6b4b: $08 $05 $00
    ld [bc], a                                    ; $6b4e: $02
    ld [bc], a                                    ; $6b4f: $02
    add e                                         ; $6b50: $83
    ld bc, $0200                                  ; $6b51: $01 $00 $02
    ld [bc], a                                    ; $6b54: $02
    nop                                           ; $6b55: $00
    ld [bc], a                                    ; $6b56: $02
    ld [bc], a                                    ; $6b57: $02
    ld d, $00                                     ; $6b58: $16 $00
    rst $38                                       ; $6b5a: $ff
    rlca                                          ; $6b5b: $07
    ld bc, $09f9                                  ; $6b5c: $01 $f9 $09
    db $ed                                        ; $6b5f: $ed
    ld [bc], a                                    ; $6b60: $02
    ld sp, hl                                     ; $6b61: $f9
    db $fd                                        ; $6b62: $fd
    add c                                         ; $6b63: $81
    nop                                           ; $6b64: $00
    ld [bc], a                                    ; $6b65: $02
    ld [bc], a                                    ; $6b66: $02
    adc l                                         ; $6b67: $8d
    dec b                                         ; $6b68: $05
    inc b                                         ; $6b69: $04
    ld b, [hl]                                    ; $6b6a: $46
    ld b, c                                       ; $6b6b: $41
    and c                                         ; $6b6c: $a1
    db $10                                        ; $6b6d: $10
    ld d, b                                       ; $6b6e: $50
    add b                                         ; $6b6f: $80
    add h                                         ; $6b70: $84
    inc b                                         ; $6b71: $04
    ld a, [bc]                                    ; $6b72: $0a
    db $10                                        ; $6b73: $10
    inc d                                         ; $6b74: $14
    ld [bc], a                                    ; $6b75: $02
    ld bc, $0002                                  ; $6b76: $01 $02 $00
    ld [bc], a                                    ; $6b79: $02
    inc b                                         ; $6b7a: $04
    add c                                         ; $6b7b: $81
    nop                                           ; $6b7c: $00
    ld [bc], a                                    ; $6b7d: $02
    jr nz, jr_0f8_6b03                            ; $6b7e: $20 $83

    ld d, b                                       ; $6b80: $50
    nop                                           ; $6b81: $00
    jr nz, @+$04                                  ; $6b82: $20 $02

    ld [$0002], sp                                ; $6b84: $08 $02 $00
    rst $38                                       ; $6b87: $ff
    add hl, bc                                    ; $6b88: $09
    ld [bc], a                                    ; $6b89: $02
    ld sp, hl                                     ; $6b8a: $f9
    add hl, bc                                    ; $6b8b: $09
    db $ed                                        ; $6b8c: $ed
    ld [bc], a                                    ; $6b8d: $02
    rst $30                                       ; $6b8e: $f7
    db $fc                                        ; $6b8f: $fc
    rst $30                                       ; $6b90: $f7
    rst $38                                       ; $6b91: $ff
    ld [bc], a                                    ; $6b92: $02
    nop                                           ; $6b93: $00
    add e                                         ; $6b94: $83
    inc b                                         ; $6b95: $04
    dec b                                         ; $6b96: $05
    nop                                           ; $6b97: $00
    ld [bc], a                                    ; $6b98: $02
    ld b, b                                       ; $6b99: $40
    adc c                                         ; $6b9a: $89
    and b                                         ; $6b9b: $a0
    db $10                                        ; $6b9c: $10
    ld d, b                                       ; $6b9d: $50
    ld [$840c], sp                                ; $6b9e: $08 $0c $84
    adc d                                         ; $6ba1: $8a
    nop                                           ; $6ba2: $00
    inc b                                         ; $6ba3: $04
    ld [bc], a                                    ; $6ba4: $02
    nop                                           ; $6ba5: $00
    ld [bc], a                                    ; $6ba6: $02
    inc b                                         ; $6ba7: $04
    inc b                                         ; $6ba8: $04
    nop                                           ; $6ba9: $00
    add [hl]                                      ; $6baa: $86
    inc b                                         ; $6bab: $04
    inc c                                         ; $6bac: $0c
    ld [$0014], sp                                ; $6bad: $08 $14 $00
    ld [$0003], sp                                ; $6bb0: $08 $03 $00
    ld [bc], a                                    ; $6bb3: $02
    inc b                                         ; $6bb4: $04
    add e                                         ; $6bb5: $83
    ld [bc], a                                    ; $6bb6: $02
    nop                                           ; $6bb7: $00
    inc b                                         ; $6bb8: $04
    ld [bc], a                                    ; $6bb9: $02
    ld bc, $0004                                  ; $6bba: $01 $04 $00
    ld [bc], a                                    ; $6bbd: $02
    inc b                                         ; $6bbe: $04
    ld [de], a                                    ; $6bbf: $12
    nop                                           ; $6bc0: $00
    rst $38                                       ; $6bc1: $ff
    add hl, bc                                    ; $6bc2: $09
    ld [bc], a                                    ; $6bc3: $02
    ld sp, hl                                     ; $6bc4: $f9
    add hl, bc                                    ; $6bc5: $09
    db $ed                                        ; $6bc6: $ed
    ld [bc], a                                    ; $6bc7: $02
    push af                                       ; $6bc8: $f5
    db $fc                                        ; $6bc9: $fc
    push af                                       ; $6bca: $f5
    rst $38                                       ; $6bcb: $ff
    adc e                                         ; $6bcc: $8b
    inc b                                         ; $6bcd: $04
    dec b                                         ; $6bce: $05
    ld bc, $0002                                  ; $6bcf: $01 $02 $00
    ld hl, $5020                                  ; $6bd2: $21 $20 $50
    sub c                                         ; $6bd5: $91
    or c                                          ; $6bd6: $b1
    nop                                           ; $6bd7: $00
    ld [bc], a                                    ; $6bd8: $02
    ld [bc], a                                    ; $6bd9: $02
    add e                                         ; $6bda: $83
    dec b                                         ; $6bdb: $05
    inc b                                         ; $6bdc: $04
    ld b, $08                                     ; $6bdd: $06 $08
    nop                                           ; $6bdf: $00
    add [hl]                                      ; $6be0: $86
    inc b                                         ; $6be1: $04
    inc d                                         ; $6be2: $14
    db $10                                        ; $6be3: $10
    jr z, jr_0f8_6be6                             ; $6be4: $28 $00

jr_0f8_6be6:
    db $10                                        ; $6be6: $10
    dec b                                         ; $6be7: $05
    nop                                           ; $6be8: $00
    add c                                         ; $6be9: $81
    inc b                                         ; $6bea: $04
    ld [bc], a                                    ; $6beb: $02
    ld bc, $001a                                  ; $6bec: $01 $1a $00
    rst $38                                       ; $6bef: $ff
    add hl, bc                                    ; $6bf0: $09
    ld [bc], a                                    ; $6bf1: $02
    ld sp, hl                                     ; $6bf2: $f9
    add hl, bc                                    ; $6bf3: $09
    db $ed                                        ; $6bf4: $ed
    ld [bc], a                                    ; $6bf5: $02
    di                                            ; $6bf6: $f3
    ld a, [$fef3]                                 ; $6bf7: $fa $f3 $fe
    ld [bc], a                                    ; $6bfa: $02
    ld [bc], a                                    ; $6bfb: $02
    inc bc                                        ; $6bfc: $03
    nop                                           ; $6bfd: $00
    adc e                                         ; $6bfe: $8b
    db $10                                        ; $6bff: $10
    sub b                                         ; $6c00: $90
    xor b                                         ; $6c01: $a8
    nop                                           ; $6c02: $00
    stop                                          ; $6c03: $10 $00
    ld bc, $0605                                  ; $6c05: $01 $05 $06
    nop                                           ; $6c08: $00
    ld bc, $0004                                  ; $6c09: $01 $04 $00
    ld [bc], a                                    ; $6c0c: $02
    ld bc, $0003                                  ; $6c0d: $01 $03 $00
    ld [bc], a                                    ; $6c10: $02
    ld [bc], a                                    ; $6c11: $02
    add e                                         ; $6c12: $83
    dec b                                         ; $6c13: $05
    nop                                           ; $6c14: $00
    ld [bc], a                                    ; $6c15: $02
    inc bc                                        ; $6c16: $03
    nop                                           ; $6c17: $00
    ld [bc], a                                    ; $6c18: $02
    ld [bc], a                                    ; $6c19: $02
    add e                                         ; $6c1a: $83
    dec b                                         ; $6c1b: $05
    nop                                           ; $6c1c: $00
    ld [bc], a                                    ; $6c1d: $02
    ld [bc], a                                    ; $6c1e: $02
    ld [$0005], sp                                ; $6c1f: $08 $05 $00
    add c                                         ; $6c22: $81
    ld [$0012], sp                                ; $6c23: $08 $12 $00
    rst $38                                       ; $6c26: $ff
    rlca                                          ; $6c27: $07
    ld bc, $09f9                                  ; $6c28: $01 $f9 $09
    db $ed                                        ; $6c2b: $ed
    ld [bc], a                                    ; $6c2c: $02
    pop af                                        ; $6c2d: $f1
    db $fd                                        ; $6c2e: $fd
    sub b                                         ; $6c2f: $90
    db $10                                        ; $6c30: $10
    ld [de], a                                    ; $6c31: $12
    ld [bc], a                                    ; $6c32: $02
    dec b                                         ; $6c33: $05
    nop                                           ; $6c34: $00
    ld b, d                                       ; $6c35: $42
    ld b, b                                       ; $6c36: $40
    and b                                         ; $6c37: $a0
    ld [$8048], sp                                ; $6c38: $08 $48 $80
    add h                                         ; $6c3b: $84
    inc b                                         ; $6c3c: $04
    ld a, [bc]                                    ; $6c3d: $0a
    nop                                           ; $6c3e: $00
    inc b                                         ; $6c3f: $04
    ld [bc], a                                    ; $6c40: $02
    ld [$0003], sp                                ; $6c41: $08 $03 $00
    ld [bc], a                                    ; $6c44: $02
    db $10                                        ; $6c45: $10
    add e                                         ; $6c46: $83
    jr z, jr_0f8_6c49                             ; $6c47: $28 $00

jr_0f8_6c49:
    db $10                                        ; $6c49: $10
    ld b, $00                                     ; $6c4a: $06 $00
    rst $38                                       ; $6c4c: $ff
    rlca                                          ; $6c4d: $07
    ld bc, $0ff4                                  ; $6c4e: $01 $f4 $0f
    rst $30                                       ; $6c51: $f7
    inc bc                                        ; $6c52: $03
    ld a, [$8afc]                                 ; $6c53: $fa $fc $8a
    ld [$3530], sp                                ; $6c56: $08 $30 $35
    ld b, b                                       ; $6c59: $40
    ld e, b                                       ; $6c5a: $58
    nop                                           ; $6c5b: $00
    ld [$1014], sp                                ; $6c5c: $08 $14 $10
    ld a, [de]                                    ; $6c5f: $1a
    ld d, $00                                     ; $6c60: $16 $00
    rst $38                                       ; $6c62: $ff
    add hl, bc                                    ; $6c63: $09
    ld [bc], a                                    ; $6c64: $02
    db $f4                                        ; $6c65: $f4
    rrca                                          ; $6c66: $0f
    rst $30                                       ; $6c67: $f7
    inc bc                                        ; $6c68: $03
    ld sp, hl                                     ; $6c69: $f9
    ei                                            ; $6c6a: $fb
    ld sp, hl                                     ; $6c6b: $f9
    cp $8a                                        ; $6c6c: $fe $8a
    nop                                           ; $6c6e: $00
    ld bc, $0c02                                  ; $6c6f: $01 $02 $0c
    ld c, l                                       ; $6c72: $4d
    sub b                                         ; $6c73: $90
    ld e, $00                                     ; $6c74: $1e $00
    ld b, e                                       ; $6c76: $43
    inc l                                         ; $6c77: $2c
    jr jr_0f8_6c7a                                ; $6c78: $18 $00

jr_0f8_6c7a:
    add a                                         ; $6c7a: $87
    ld [bc], a                                    ; $6c7b: $02
    nop                                           ; $6c7c: $00
    ld [bc], a                                    ; $6c7d: $02
    nop                                           ; $6c7e: $00
    ld bc, $0200                                  ; $6c7f: $01 $00 $02
    ld [bc], a                                    ; $6c82: $02
    nop                                           ; $6c83: $00
    add c                                         ; $6c84: $81
    inc b                                         ; $6c85: $04
    inc d                                         ; $6c86: $14
    nop                                           ; $6c87: $00
    rst $38                                       ; $6c88: $ff
    dec bc                                        ; $6c89: $0b
    inc bc                                        ; $6c8a: $03
    db $f4                                        ; $6c8b: $f4
    rrca                                          ; $6c8c: $0f
    rst $30                                       ; $6c8d: $f7
    inc bc                                        ; $6c8e: $03
    ld sp, hl                                     ; $6c8f: $f9
    or $f9                                        ; $6c90: $f6 $f9
    cp $f9                                        ; $6c92: $fe $f9
    ld [bc], a                                    ; $6c94: $02
    inc bc                                        ; $6c95: $03
    nop                                           ; $6c96: $00
    add a                                         ; $6c97: $87
    inc bc                                        ; $6c98: $03
    ld bc, $8236                                  ; $6c99: $01 $36 $82
    xor l                                         ; $6c9c: $ad
    dec c                                         ; $6c9d: $0d
    inc c                                         ; $6c9e: $0c
    ld [bc], a                                    ; $6c9f: $02
    inc bc                                        ; $6ca0: $03
    dec d                                         ; $6ca1: $15
    nop                                           ; $6ca2: $00
    adc e                                         ; $6ca3: $8b
    ld a, [bc]                                    ; $6ca4: $0a
    nop                                           ; $6ca5: $00
    or $a8                                        ; $6ca6: $f6 $a8
    ld [bc], a                                    ; $6ca8: $02
    call c, Call_000_0d01                         ; $6ca9: $dc $01 $0d
    pop af                                        ; $6cac: $f1
    ld h, b                                       ; $6cad: $60
    ld l, [hl]                                    ; $6cae: $6e
    ld [bc], a                                    ; $6caf: $02
    ld [$0018], sp                                ; $6cb0: $08 $18 $00
    ld [bc], a                                    ; $6cb3: $02
    dec c                                         ; $6cb4: $0d
    jr jr_0f8_6cb7                                ; $6cb5: $18 $00

jr_0f8_6cb7:
    rst $38                                       ; $6cb7: $ff
    dec bc                                        ; $6cb8: $0b
    inc bc                                        ; $6cb9: $03
    db $f4                                        ; $6cba: $f4
    rrca                                          ; $6cbb: $0f
    rst $30                                       ; $6cbc: $f7
    inc bc                                        ; $6cbd: $03
    ld sp, hl                                     ; $6cbe: $f9
    or $f9                                        ; $6cbf: $f6 $f9
    cp $f9                                        ; $6cc1: $fe $f9
    inc bc                                        ; $6cc3: $03
    inc bc                                        ; $6cc4: $03
    nop                                           ; $6cc5: $00
    add a                                         ; $6cc6: $87
    inc bc                                        ; $6cc7: $03
    nop                                           ; $6cc8: $00
    ccf                                           ; $6cc9: $3f
    jp $3cfc                                      ; $6cca: $c3 $fc $3c


    ccf                                           ; $6ccd: $3f
    ld [bc], a                                    ; $6cce: $02
    inc bc                                        ; $6ccf: $03
    dec d                                         ; $6cd0: $15
    nop                                           ; $6cd1: $00
    adc e                                         ; $6cd2: $8b
    ld e, $08                                     ; $6cd3: $1e $08
    or $bc                                        ; $6cd5: $f6 $bc
    ld b, e                                       ; $6cd7: $43
    cp $01                                        ; $6cd8: $fe $01
    dec c                                         ; $6cda: $0d
    di                                            ; $6cdb: $f3
    ldh a, [$fe]                                  ; $6cdc: $f0 $fe
    ld [bc], a                                    ; $6cde: $02
    ld c, $18                                     ; $6cdf: $0e $18
    nop                                           ; $6ce1: $00
    ld [bc], a                                    ; $6ce2: $02
    ld e, $04                                     ; $6ce3: $1e $04
    ld bc, $0602                                  ; $6ce5: $01 $02 $06
    ld [de], a                                    ; $6ce8: $12
    nop                                           ; $6ce9: $00
    rst $38                                       ; $6cea: $ff
    dec bc                                        ; $6ceb: $0b
    inc bc                                        ; $6cec: $03
    db $f4                                        ; $6ced: $f4
    rrca                                          ; $6cee: $0f
    rst $30                                       ; $6cef: $f7
    inc bc                                        ; $6cf0: $03
    ld hl, sp-$09                                 ; $6cf1: $f8 $f7
    ld hl, sp-$01                                 ; $6cf3: $f8 $ff
    ld hl, sp+$04                                 ; $6cf5: $f8 $04
    inc bc                                        ; $6cf7: $03
    nop                                           ; $6cf8: $00
    add a                                         ; $6cf9: $87
    inc bc                                        ; $6cfa: $03
    nop                                           ; $6cfb: $00
    ccf                                           ; $6cfc: $3f
    jp $3cfc                                      ; $6cfd: $c3 $fc $3c


    ccf                                           ; $6d00: $3f
    ld [bc], a                                    ; $6d01: $02
    inc bc                                        ; $6d02: $03
    dec d                                         ; $6d03: $15
    nop                                           ; $6d04: $00
    adc e                                         ; $6d05: $8b
    ld e, $08                                     ; $6d06: $1e $08
    or $bc                                        ; $6d08: $f6 $bc
    ld b, e                                       ; $6d0a: $43
    cp $01                                        ; $6d0b: $fe $01
    dec c                                         ; $6d0d: $0d
    di                                            ; $6d0e: $f3
    ldh a, [$fe]                                  ; $6d0f: $f0 $fe
    ld [bc], a                                    ; $6d11: $02
    ld c, $18                                     ; $6d12: $0e $18
    nop                                           ; $6d14: $00
    ld [bc], a                                    ; $6d15: $02
    ld e, $04                                     ; $6d16: $1e $04
    ld bc, $0602                                  ; $6d18: $01 $02 $06
    ld [de], a                                    ; $6d1b: $12
    nop                                           ; $6d1c: $00
    rst $38                                       ; $6d1d: $ff
    dec bc                                        ; $6d1e: $0b
    inc bc                                        ; $6d1f: $03
    db $f4                                        ; $6d20: $f4
    rrca                                          ; $6d21: $0f
    rst $30                                       ; $6d22: $f7
    inc bc                                        ; $6d23: $03
    ld sp, hl                                     ; $6d24: $f9
    ld hl, sp-$07                                 ; $6d25: $f8 $f9
    nop                                           ; $6d27: $00
    ld sp, hl                                     ; $6d28: $f9
    dec b                                         ; $6d29: $05
    inc bc                                        ; $6d2a: $03
    nop                                           ; $6d2b: $00
    add a                                         ; $6d2c: $87
    inc bc                                        ; $6d2d: $03
    nop                                           ; $6d2e: $00
    ccf                                           ; $6d2f: $3f
    jp $3cfc                                      ; $6d30: $c3 $fc $3c


    ccf                                           ; $6d33: $3f
    ld [bc], a                                    ; $6d34: $02
    inc bc                                        ; $6d35: $03
    dec d                                         ; $6d36: $15
    nop                                           ; $6d37: $00
    adc e                                         ; $6d38: $8b
    ld e, $08                                     ; $6d39: $1e $08
    or $bc                                        ; $6d3b: $f6 $bc
    ld b, e                                       ; $6d3d: $43
    cp $01                                        ; $6d3e: $fe $01
    dec c                                         ; $6d40: $0d
    di                                            ; $6d41: $f3
    ldh a, [$fe]                                  ; $6d42: $f0 $fe
    ld [bc], a                                    ; $6d44: $02
    ld c, $18                                     ; $6d45: $0e $18
    nop                                           ; $6d47: $00
    ld [bc], a                                    ; $6d48: $02
    ld e, $04                                     ; $6d49: $1e $04
    ld bc, $0602                                  ; $6d4b: $01 $02 $06
    ld [de], a                                    ; $6d4e: $12
    nop                                           ; $6d4f: $00
    rst $38                                       ; $6d50: $ff
    dec bc                                        ; $6d51: $0b
    inc bc                                        ; $6d52: $03
    db $f4                                        ; $6d53: $f4
    rrca                                          ; $6d54: $0f
    rst $30                                       ; $6d55: $f7
    inc bc                                        ; $6d56: $03
    ld a, [$faf7]                                 ; $6d57: $fa $f7 $fa
    rst $38                                       ; $6d5a: $ff
    ld a, [$0304]                                 ; $6d5b: $fa $04 $03
    nop                                           ; $6d5e: $00
    add a                                         ; $6d5f: $87
    inc bc                                        ; $6d60: $03
    nop                                           ; $6d61: $00
    ccf                                           ; $6d62: $3f
    jp $3cfc                                      ; $6d63: $c3 $fc $3c


    ccf                                           ; $6d66: $3f
    ld [bc], a                                    ; $6d67: $02
    inc bc                                        ; $6d68: $03
    dec d                                         ; $6d69: $15
    nop                                           ; $6d6a: $00
    adc e                                         ; $6d6b: $8b
    ld e, $08                                     ; $6d6c: $1e $08
    or $bc                                        ; $6d6e: $f6 $bc
    ld b, e                                       ; $6d70: $43
    cp $01                                        ; $6d71: $fe $01
    dec c                                         ; $6d73: $0d
    di                                            ; $6d74: $f3
    ldh a, [$fe]                                  ; $6d75: $f0 $fe
    ld [bc], a                                    ; $6d77: $02
    ld c, $18                                     ; $6d78: $0e $18
    nop                                           ; $6d7a: $00
    ld [bc], a                                    ; $6d7b: $02
    ld e, $04                                     ; $6d7c: $1e $04
    ld bc, $0602                                  ; $6d7e: $01 $02 $06
    ld [de], a                                    ; $6d81: $12
    nop                                           ; $6d82: $00
    rst $38                                       ; $6d83: $ff
    dec bc                                        ; $6d84: $0b
    inc bc                                        ; $6d85: $03
    db $f4                                        ; $6d86: $f4
    rrca                                          ; $6d87: $0f
    rst $30                                       ; $6d88: $f7
    inc bc                                        ; $6d89: $03
    ld hl, sp-$06                                 ; $6d8a: $f8 $fa
    ld hl, sp+$02                                 ; $6d8c: $f8 $02
    ld hl, sp+$04                                 ; $6d8e: $f8 $04
    adc b                                         ; $6d90: $88
    add b                                         ; $6d91: $80
    ldh [rLCDC], a                                ; $6d92: $e0 $40
    ld a, a                                       ; $6d94: $7f
    inc sp                                        ; $6d95: $33
    inc a                                         ; $6d96: $3c
    inc c                                         ; $6d97: $0c
    rrca                                          ; $6d98: $0f
    ld [bc], a                                    ; $6d99: $02
    inc bc                                        ; $6d9a: $03
    rla                                           ; $6d9b: $17
    nop                                           ; $6d9c: $00
    adc e                                         ; $6d9d: $8b
    ret c                                         ; $6d9e: $d8

    nop                                           ; $6d9f: $00
    ld hl, sp-$28                                 ; $6da0: $f8 $d8
    inc h                                         ; $6da2: $24
    ld [hl], b                                    ; $6da3: $70
    adc h                                         ; $6da4: $8c
    xor e                                         ; $6da5: $ab
    rst $10                                       ; $6da6: $d7
    ld b, h                                       ; $6da7: $44
    ld a, h                                       ; $6da8: $7c
    ld [bc], a                                    ; $6da9: $02
    jr c, @+$04                                   ; $6daa: $38 $02

    ld bc, $0018                                  ; $6dac: $01 $18 $00
    ld [bc], a                                    ; $6daf: $02
    ld [bc], a                                    ; $6db0: $02
    inc b                                         ; $6db1: $04
    ld bc, $0202                                  ; $6db2: $01 $02 $02
    stop                                          ; $6db5: $10 $00
    rst $38                                       ; $6db7: $ff
    dec bc                                        ; $6db8: $0b
    inc bc                                        ; $6db9: $03
    db $f4                                        ; $6dba: $f4
    rrca                                          ; $6dbb: $0f
    rst $30                                       ; $6dbc: $f7
    inc bc                                        ; $6dbd: $03
    db $f4                                        ; $6dbe: $f4
    db $fc                                        ; $6dbf: $fc
    db $f4                                        ; $6dc0: $f4
    inc b                                         ; $6dc1: $04
    db $f4                                        ; $6dc2: $f4
    dec b                                         ; $6dc3: $05
    adc [hl]                                      ; $6dc4: $8e
    add b                                         ; $6dc5: $80
    ret nz                                        ; $6dc6: $c0

    ld b, b                                       ; $6dc7: $40
    ld [hl], b                                    ; $6dc8: $70
    ld b, b                                       ; $6dc9: $40
    ld a, h                                       ; $6dca: $7c
    inc h                                         ; $6dcb: $24
    dec sp                                        ; $6dcc: $3b
    ld d, $19                                     ; $6dcd: $16 $19
    add hl, bc                                    ; $6dcf: $09
    ld c, $06                                     ; $6dd0: $0e $06
    rlca                                          ; $6dd2: $07
    ld [bc], a                                    ; $6dd3: $02
    ld bc, $0017                                  ; $6dd4: $01 $17 $00
    adc c                                         ; $6dd7: $89
    add b                                         ; $6dd8: $80
    nop                                           ; $6dd9: $00
    ldh a, [$50]                                  ; $6dda: $f0 $50
    xor b                                         ; $6ddc: $a8
    db $e4                                        ; $6ddd: $e4
    inc e                                         ; $6dde: $1c
    dec bc                                        ; $6ddf: $0b
    ei                                            ; $6de0: $fb
    ld [bc], a                                    ; $6de1: $02
    ldh [rSC], a                                  ; $6de2: $e0 $02
    nop                                           ; $6de4: $00
    ld [bc], a                                    ; $6de5: $02
    inc bc                                        ; $6de6: $03
    ld a, [de]                                    ; $6de7: $1a
    nop                                           ; $6de8: $00
    inc b                                         ; $6de9: $04
    ld bc, $000c                                  ; $6dea: $01 $0c $00
    rst $38                                       ; $6ded: $ff
    dec bc                                        ; $6dee: $0b
    inc bc                                        ; $6def: $03
    db $f4                                        ; $6df0: $f4
    rrca                                          ; $6df1: $0f
    rst $30                                       ; $6df2: $f7
    inc bc                                        ; $6df3: $03
    ld bc, $01f9                                  ; $6df4: $01 $f9 $01
    ld bc, $0401                                  ; $6df7: $01 $01 $04
    add hl, bc                                    ; $6dfa: $09
    nop                                           ; $6dfb: $00
    add a                                         ; $6dfc: $87
    ld bc, $0700                                  ; $6dfd: $01 $00 $07
    inc bc                                        ; $6e00: $03
    inc e                                         ; $6e01: $1c
    add b                                         ; $6e02: $80
    rst $38                                       ; $6e03: $ff
    ld [bc], a                                    ; $6e04: $02
    ld a, a                                       ; $6e05: $7f
    stop                                          ; $6e06: $10 $00
    adc [hl]                                      ; $6e08: $8e
    ld bc, $0211                                  ; $6e09: $01 $11 $02
    ld a, d                                       ; $6e0c: $7a
    db $10                                        ; $6e0d: $10
    db $ec                                        ; $6e0e: $ec
    ld a, b                                       ; $6e0f: $78
    add [hl]                                      ; $6e10: $86
    xor d                                         ; $6e11: $aa
    ld d, [hl]                                    ; $6e12: $56
    ld b, h                                       ; $6e13: $44
    cp h                                          ; $6e14: $bc
    cp b                                          ; $6e15: $b8
    ld hl, sp+$02                                 ; $6e16: $f8 $02
    ld b, b                                       ; $6e18: $40
    ld c, $00                                     ; $6e19: $0e $00
    ld [bc], a                                    ; $6e1b: $02
    ld b, $04                                     ; $6e1c: $06 $04
    ld bc, $0202                                  ; $6e1e: $01 $02 $02
    jr jr_0f8_6e23                                ; $6e21: $18 $00

jr_0f8_6e23:
    rst $38                                       ; $6e23: $ff
    dec bc                                        ; $6e24: $0b
    inc bc                                        ; $6e25: $03
    db $f4                                        ; $6e26: $f4
    rrca                                          ; $6e27: $0f
    rst $30                                       ; $6e28: $f7
    inc bc                                        ; $6e29: $03
    ld [bc], a                                    ; $6e2a: $02
    ei                                            ; $6e2b: $fb
    ld [bc], a                                    ; $6e2c: $02
    inc bc                                        ; $6e2d: $03
    ld [bc], a                                    ; $6e2e: $02
    inc b                                         ; $6e2f: $04
    add hl, bc                                    ; $6e30: $09
    nop                                           ; $6e31: $00
    adc c                                         ; $6e32: $89
    inc bc                                        ; $6e33: $03
    ld bc, $0306                                  ; $6e34: $01 $06 $03
    inc c                                         ; $6e37: $0c
    nop                                           ; $6e38: $00
    ccf                                           ; $6e39: $3f
    xor h                                         ; $6e3a: $ac
    db $fc                                        ; $6e3b: $fc
    ld c, $00                                     ; $6e3c: $0e $00
    ld [bc], a                                    ; $6e3e: $02
    inc bc                                        ; $6e3f: $03
    ld [bc], a                                    ; $6e40: $02
    inc b                                         ; $6e41: $04
    adc d                                         ; $6e42: $8a
    ld [$0148], sp                                ; $6e43: $08 $48 $01
    pop af                                        ; $6e46: $f1
    ld b, b                                       ; $6e47: $40
    cp b                                          ; $6e48: $b8
    add sp, $18                                   ; $6e49: $e8 $18
    db $10                                        ; $6e4b: $10
    ldh a, [rSC]                                  ; $6e4c: $f0 $02
    ldh [rNR12], a                                ; $6e4e: $e0 $12
    nop                                           ; $6e50: $00
    inc b                                         ; $6e51: $04
    ld bc, $001a                                  ; $6e52: $01 $1a $00
    rst $38                                       ; $6e55: $ff
    rlca                                          ; $6e56: $07
    ld bc, $0ff4                                  ; $6e57: $01 $f4 $0f
    rst $30                                       ; $6e5a: $f7
    inc bc                                        ; $6e5b: $03
    nop                                           ; $6e5c: $00
    db $fd                                        ; $6e5d: $fd
    add l                                         ; $6e5e: $85
    nop                                           ; $6e5f: $00
    add b                                         ; $6e60: $80
    nop                                           ; $6e61: $00
    ld [bc], a                                    ; $6e62: $02
    nop                                           ; $6e63: $00
    ld [bc], a                                    ; $6e64: $02
    add b                                         ; $6e65: $80
    adc e                                         ; $6e66: $8b
    ld e, d                                       ; $6e67: $5a
    ld [de], a                                    ; $6e68: $12
    db $ed                                        ; $6e69: $ed
    nop                                           ; $6e6a: $00
    ld b, [hl]                                    ; $6e6b: $46
    nop                                           ; $6e6c: $00
    inc d                                         ; $6e6d: $14
    db $10                                        ; $6e6e: $10
    jr z, jr_0f8_6e71                             ; $6e6f: $28 $00

jr_0f8_6e71:
    db $10                                        ; $6e71: $10
    ld c, $00                                     ; $6e72: $0e $00
    rst $38                                       ; $6e74: $ff
    add hl, bc                                    ; $6e75: $09
    ld [bc], a                                    ; $6e76: $02
    db $f4                                        ; $6e77: $f4
    rrca                                          ; $6e78: $0f
    rst $30                                       ; $6e79: $f7
    inc bc                                        ; $6e7a: $03
    db $fd                                        ; $6e7b: $fd
    db $fc                                        ; $6e7c: $fc
    db $fd                                        ; $6e7d: $fd
    cp $82                                        ; $6e7e: $fe $82
    nop                                           ; $6e80: $00
    add b                                         ; $6e81: $80
    inc bc                                        ; $6e82: $03
    nop                                           ; $6e83: $00
    ld [bc], a                                    ; $6e84: $02
    add b                                         ; $6e85: $80
    adc a                                         ; $6e86: $8f
    ld c, b                                       ; $6e87: $48
    ld [$0891], sp                                ; $6e88: $08 $91 $08
    inc d                                         ; $6e8b: $14
    add b                                         ; $6e8c: $80
    ld c, h                                       ; $6e8d: $4c
    nop                                           ; $6e8e: $00
    ld b, c                                       ; $6e8f: $41
    nop                                           ; $6e90: $00
    add hl, bc                                    ; $6e91: $09
    ld [$0014], sp                                ; $6e92: $08 $14 $00
    ld [$000d], sp                                ; $6e95: $08 $0d $00
    add c                                         ; $6e98: $81
    ld [bc], a                                    ; $6e99: $02
    inc bc                                        ; $6e9a: $03
    nop                                           ; $6e9b: $00
    ld [bc], a                                    ; $6e9c: $02
    ld [bc], a                                    ; $6e9d: $02
    ld [bc], a                                    ; $6e9e: $02
    nop                                           ; $6e9f: $00
    ld [bc], a                                    ; $6ea0: $02
    ld [bc], a                                    ; $6ea1: $02
    add e                                         ; $6ea2: $83
    ld bc, $0200                                  ; $6ea3: $01 $00 $02
    stop                                          ; $6ea6: $10 $00
    rst $38                                       ; $6ea8: $ff
    add hl, bc                                    ; $6ea9: $09
    ld [bc], a                                    ; $6eaa: $02
    db $f4                                        ; $6eab: $f4
    rrca                                          ; $6eac: $0f
    rst $30                                       ; $6ead: $f7
    inc bc                                        ; $6eae: $03
    ld a, [$fafc]                                 ; $6eaf: $fa $fc $fa
    cp $98                                        ; $6eb2: $fe $98
    nop                                           ; $6eb4: $00
    ld [$8000], sp                                ; $6eb5: $08 $00 $80
    nop                                           ; $6eb8: $00
    ld [$8800], sp                                ; $6eb9: $08 $00 $88
    add b                                         ; $6ebc: $80
    ld c, b                                       ; $6ebd: $48
    ld [$0891], sp                                ; $6ebe: $08 $91 $08
    sub h                                         ; $6ec1: $94
    add b                                         ; $6ec2: $80
    ld c, h                                       ; $6ec3: $4c
    nop                                           ; $6ec4: $00
    ld c, l                                       ; $6ec5: $4d
    nop                                           ; $6ec6: $00
    dec c                                         ; $6ec7: $0d
    ld [$0014], sp                                ; $6ec8: $08 $14 $00
    ld [$000d], sp                                ; $6ecb: $08 $0d $00
    add c                                         ; $6ece: $81
    ld [bc], a                                    ; $6ecf: $02
    inc bc                                        ; $6ed0: $03
    nop                                           ; $6ed1: $00
    ld [bc], a                                    ; $6ed2: $02
    ld [bc], a                                    ; $6ed3: $02
    ld [bc], a                                    ; $6ed4: $02
    nop                                           ; $6ed5: $00
    add l                                         ; $6ed6: $85
    inc bc                                        ; $6ed7: $03
    ld [bc], a                                    ; $6ed8: $02
    ld bc, $0200                                  ; $6ed9: $01 $00 $02
    ld c, $00                                     ; $6edc: $0e $00
    rst $38                                       ; $6ede: $ff
    rlca                                          ; $6edf: $07
    ld bc, $0cf5                                  ; $6ee0: $01 $f5 $0c
    push af                                       ; $6ee3: $f5
    dec bc                                        ; $6ee4: $0b
    rst $28                                       ; $6ee5: $ef
    ld a, [bc]                                    ; $6ee6: $0a
    ld [bc], a                                    ; $6ee7: $02
    inc a                                         ; $6ee8: $3c
    adc h                                         ; $6ee9: $8c
    ld d, d                                       ; $6eea: $52
    ld a, [hl]                                    ; $6eeb: $7e
    xor c                                         ; $6eec: $a9
    rst $30                                       ; $6eed: $f7
    db $dd                                        ; $6eee: $dd
    db $e3                                        ; $6eef: $e3
    xor c                                         ; $6ef0: $a9
    rst $30                                       ; $6ef1: $f7
    push de                                       ; $6ef2: $d5
    rst $38                                       ; $6ef3: $ff
    ld l, d                                       ; $6ef4: $6a
    ld a, [hl]                                    ; $6ef5: $7e
    ld [bc], a                                    ; $6ef6: $02
    inc a                                         ; $6ef7: $3c
    stop                                          ; $6ef8: $10 $00
    rst $38                                       ; $6efa: $ff
    rlca                                          ; $6efb: $07
    ld bc, $0cf5                                  ; $6efc: $01 $f5 $0c
    push af                                       ; $6eff: $f5
    dec bc                                        ; $6f00: $0b
    db $eb                                        ; $6f01: $eb
    db $fd                                        ; $6f02: $fd
    ld [bc], a                                    ; $6f03: $02
    inc a                                         ; $6f04: $3c
    adc h                                         ; $6f05: $8c
    ld d, d                                       ; $6f06: $52
    ld a, [hl]                                    ; $6f07: $7e
    xor c                                         ; $6f08: $a9
    rst $30                                       ; $6f09: $f7
    db $dd                                        ; $6f0a: $dd
    db $e3                                        ; $6f0b: $e3
    xor c                                         ; $6f0c: $a9
    rst $30                                       ; $6f0d: $f7
    push de                                       ; $6f0e: $d5
    rst $38                                       ; $6f0f: $ff
    ld l, d                                       ; $6f10: $6a
    ld a, [hl]                                    ; $6f11: $7e
    ld [bc], a                                    ; $6f12: $02
    inc a                                         ; $6f13: $3c
    stop                                          ; $6f14: $10 $00
    rst $38                                       ; $6f16: $ff
    add hl, bc                                    ; $6f17: $09
    ld [bc], a                                    ; $6f18: $02
    push af                                       ; $6f19: $f5
    inc c                                         ; $6f1a: $0c
    push af                                       ; $6f1b: $f5
    dec bc                                        ; $6f1c: $0b
    ldh a, [$f0]                                  ; $6f1d: $f0 $f0
    ldh a, [$09]                                  ; $6f1f: $f0 $09
    ld [bc], a                                    ; $6f21: $02
    nop                                           ; $6f22: $00
    ld [bc], a                                    ; $6f23: $02
    inc a                                         ; $6f24: $3c
    adc h                                         ; $6f25: $8c
    ld b, d                                       ; $6f26: $42
    ld a, [hl]                                    ; $6f27: $7e
    sub l                                         ; $6f28: $95
    rst $28                                       ; $6f29: $ef
    cp e                                          ; $6f2a: $bb
    rst $00                                       ; $6f2b: $c7
    push de                                       ; $6f2c: $d5
    rst $28                                       ; $6f2d: $ef
    xor e                                         ; $6f2e: $ab
    rst $38                                       ; $6f2f: $ff
    ld d, [hl]                                    ; $6f30: $56
    ld a, [hl]                                    ; $6f31: $7e
    ld [bc], a                                    ; $6f32: $02
    inc a                                         ; $6f33: $3c
    ld c, $00                                     ; $6f34: $0e $00
    ld [bc], a                                    ; $6f36: $02
    inc a                                         ; $6f37: $3c
    adc h                                         ; $6f38: $8c
    ld d, d                                       ; $6f39: $52
    ld a, [hl]                                    ; $6f3a: $7e
    xor c                                         ; $6f3b: $a9
    rst $30                                       ; $6f3c: $f7
    db $dd                                        ; $6f3d: $dd
    db $e3                                        ; $6f3e: $e3
    xor c                                         ; $6f3f: $a9
    rst $30                                       ; $6f40: $f7
    push de                                       ; $6f41: $d5
    rst $38                                       ; $6f42: $ff
    ld l, d                                       ; $6f43: $6a
    ld a, [hl]                                    ; $6f44: $7e
    ld [bc], a                                    ; $6f45: $02
    inc a                                         ; $6f46: $3c
    stop                                          ; $6f47: $10 $00
    rst $38                                       ; $6f49: $ff
    add hl, bc                                    ; $6f4a: $09
    ld [bc], a                                    ; $6f4b: $02
    push af                                       ; $6f4c: $f5
    inc c                                         ; $6f4d: $0c
    push af                                       ; $6f4e: $f5
    dec bc                                        ; $6f4f: $0b
    ld a, [$ecea]                                 ; $6f50: $fa $ea $ec
    db $fc                                        ; $6f53: $fc
    ld [bc], a                                    ; $6f54: $02
    inc a                                         ; $6f55: $3c
    adc h                                         ; $6f56: $8c
    ld l, d                                       ; $6f57: $6a
    ld a, [hl]                                    ; $6f58: $7e
    push de                                       ; $6f59: $d5
    rst $38                                       ; $6f5a: $ff
    xor e                                         ; $6f5b: $ab
    rst $30                                       ; $6f5c: $f7
    db $dd                                        ; $6f5d: $dd
    db $e3                                        ; $6f5e: $e3
    xor c                                         ; $6f5f: $a9
    rst $30                                       ; $6f60: $f7
    ld b, d                                       ; $6f61: $42
    ld a, [hl]                                    ; $6f62: $7e
    ld [bc], a                                    ; $6f63: $02
    inc a                                         ; $6f64: $3c
    stop                                          ; $6f65: $10 $00
    ld [bc], a                                    ; $6f67: $02
    inc a                                         ; $6f68: $3c
    adc h                                         ; $6f69: $8c
    ld b, d                                       ; $6f6a: $42
    ld a, [hl]                                    ; $6f6b: $7e
    sub l                                         ; $6f6c: $95
    rst $28                                       ; $6f6d: $ef
    cp e                                          ; $6f6e: $bb
    rst $00                                       ; $6f6f: $c7
    push de                                       ; $6f70: $d5
    rst $28                                       ; $6f71: $ef
    xor e                                         ; $6f72: $ab
    rst $38                                       ; $6f73: $ff
    ld d, [hl]                                    ; $6f74: $56
    ld a, [hl]                                    ; $6f75: $7e
    ld [bc], a                                    ; $6f76: $02
    inc a                                         ; $6f77: $3c
    stop                                          ; $6f78: $10 $00
    rst $38                                       ; $6f7a: $ff
    add hl, bc                                    ; $6f7b: $09
    ld [bc], a                                    ; $6f7c: $02
    push af                                       ; $6f7d: $f5
    inc c                                         ; $6f7e: $0c
    push af                                       ; $6f7f: $f5
    dec bc                                        ; $6f80: $0b
    ld a, [c]                                     ; $6f81: $f2
    rst $28                                       ; $6f82: $ef
    ld [bc], a                                    ; $6f83: $02
    ld [$3c02], a                                 ; $6f84: $ea $02 $3c
    adc h                                         ; $6f87: $8c
    ld d, [hl]                                    ; $6f88: $56
    ld a, [hl]                                    ; $6f89: $7e
    xor e                                         ; $6f8a: $ab
    rst $38                                       ; $6f8b: $ff
    sub l                                         ; $6f8c: $95
    rst $28                                       ; $6f8d: $ef
    cp e                                          ; $6f8e: $bb
    rst $00                                       ; $6f8f: $c7
    sub l                                         ; $6f90: $95
    rst $28                                       ; $6f91: $ef
    ld c, d                                       ; $6f92: $4a
    ld a, [hl]                                    ; $6f93: $7e
    ld [bc], a                                    ; $6f94: $02
    inc a                                         ; $6f95: $3c
    jr jr_0f8_6f98                                ; $6f96: $18 $00

jr_0f8_6f98:
    ld [bc], a                                    ; $6f98: $02
    inc a                                         ; $6f99: $3c
    adc h                                         ; $6f9a: $8c
    ld d, d                                       ; $6f9b: $52
    ld a, [hl]                                    ; $6f9c: $7e
    xor c                                         ; $6f9d: $a9
    rst $30                                       ; $6f9e: $f7
    db $dd                                        ; $6f9f: $dd
    db $e3                                        ; $6fa0: $e3
    xor c                                         ; $6fa1: $a9
    rst $30                                       ; $6fa2: $f7
    push de                                       ; $6fa3: $d5
    rst $38                                       ; $6fa4: $ff
    ld l, d                                       ; $6fa5: $6a
    ld a, [hl]                                    ; $6fa6: $7e
    ld [bc], a                                    ; $6fa7: $02
    inc a                                         ; $6fa8: $3c
    ld [$ff00], sp                                ; $6fa9: $08 $00 $ff
    add hl, bc                                    ; $6fac: $09
    ld [bc], a                                    ; $6fad: $02
    push af                                       ; $6fae: $f5
    inc c                                         ; $6faf: $0c
    push af                                       ; $6fb0: $f5
    dec bc                                        ; $6fb1: $0b
    ei                                            ; $6fb2: $fb
    jp hl                                         ; $6fb3: $e9


    dec bc                                        ; $6fb4: $0b
    ld a, [c]                                     ; $6fb5: $f2
    ld [bc], a                                    ; $6fb6: $02
    inc a                                         ; $6fb7: $3c
    adc h                                         ; $6fb8: $8c
    ld l, d                                       ; $6fb9: $6a
    ld a, [hl]                                    ; $6fba: $7e
    push de                                       ; $6fbb: $d5
    rst $38                                       ; $6fbc: $ff
    xor e                                         ; $6fbd: $ab
    rst $30                                       ; $6fbe: $f7
    db $dd                                        ; $6fbf: $dd
    db $e3                                        ; $6fc0: $e3
    xor c                                         ; $6fc1: $a9
    rst $30                                       ; $6fc2: $f7
    ld b, d                                       ; $6fc3: $42
    ld a, [hl]                                    ; $6fc4: $7e
    ld [bc], a                                    ; $6fc5: $02
    inc a                                         ; $6fc6: $3c
    jr jr_0f8_6fc9                                ; $6fc7: $18 $00

jr_0f8_6fc9:
    ld [bc], a                                    ; $6fc9: $02
    inc a                                         ; $6fca: $3c
    adc h                                         ; $6fcb: $8c
    ld b, d                                       ; $6fcc: $42
    ld a, [hl]                                    ; $6fcd: $7e
    sub l                                         ; $6fce: $95
    rst $28                                       ; $6fcf: $ef
    cp e                                          ; $6fd0: $bb
    rst $00                                       ; $6fd1: $c7
    push de                                       ; $6fd2: $d5
    rst $28                                       ; $6fd3: $ef
    xor e                                         ; $6fd4: $ab
    rst $38                                       ; $6fd5: $ff
    ld d, [hl]                                    ; $6fd6: $56
    ld a, [hl]                                    ; $6fd7: $7e
    ld [bc], a                                    ; $6fd8: $02
    inc a                                         ; $6fd9: $3c
    ld [$ff00], sp                                ; $6fda: $08 $00 $ff
    add hl, bc                                    ; $6fdd: $09
    ld [bc], a                                    ; $6fde: $02
    push af                                       ; $6fdf: $f5
    inc c                                         ; $6fe0: $0c
    push af                                       ; $6fe1: $f5
    dec bc                                        ; $6fe2: $0b
    rlca                                          ; $6fe3: $07
    jp hl                                         ; $6fe4: $e9


    ld [de], a                                    ; $6fe5: $12
    rst $38                                       ; $6fe6: $ff
    ld [bc], a                                    ; $6fe7: $02
    inc a                                         ; $6fe8: $3c
    adc h                                         ; $6fe9: $8c
    ld d, d                                       ; $6fea: $52
    ld a, [hl]                                    ; $6feb: $7e
    xor c                                         ; $6fec: $a9
    rst $30                                       ; $6fed: $f7
    db $dd                                        ; $6fee: $dd
    db $e3                                        ; $6fef: $e3
    xor c                                         ; $6ff0: $a9
    rst $30                                       ; $6ff1: $f7
    push de                                       ; $6ff2: $d5
    rst $38                                       ; $6ff3: $ff
    ld l, d                                       ; $6ff4: $6a
    ld a, [hl]                                    ; $6ff5: $7e
    ld [bc], a                                    ; $6ff6: $02
    inc a                                         ; $6ff7: $3c
    stop                                          ; $6ff8: $10 $00
    ld [bc], a                                    ; $6ffa: $02
    inc a                                         ; $6ffb: $3c
    adc h                                         ; $6ffc: $8c
    ld d, [hl]                                    ; $6ffd: $56
    ld a, [hl]                                    ; $6ffe: $7e
    xor e                                         ; $6fff: $ab
    rst $38                                       ; $7000: $ff
    sub l                                         ; $7001: $95
    rst $28                                       ; $7002: $ef
    cp e                                          ; $7003: $bb
    rst $00                                       ; $7004: $c7
    sub l                                         ; $7005: $95
    rst $28                                       ; $7006: $ef
    ld c, d                                       ; $7007: $4a
    ld a, [hl]                                    ; $7008: $7e
    ld [bc], a                                    ; $7009: $02
    inc a                                         ; $700a: $3c
    stop                                          ; $700b: $10 $00
    rst $38                                       ; $700d: $ff
    add hl, bc                                    ; $700e: $09
    ld [bc], a                                    ; $700f: $02
    push af                                       ; $7010: $f5
    inc c                                         ; $7011: $0c
    push af                                       ; $7012: $f5
    dec bc                                        ; $7013: $0b
    dec c                                         ; $7014: $0d
    pop af                                        ; $7015: $f1
    dec c                                         ; $7016: $0d
    ld a, [bc]                                    ; $7017: $0a
    ld b, $00                                     ; $7018: $06 $00
    ld [bc], a                                    ; $701a: $02
    inc a                                         ; $701b: $3c
    adc h                                         ; $701c: $8c
    ld b, d                                       ; $701d: $42
    ld a, [hl]                                    ; $701e: $7e
    sub l                                         ; $701f: $95
    rst $28                                       ; $7020: $ef
    cp e                                          ; $7021: $bb
    rst $00                                       ; $7022: $c7
    push de                                       ; $7023: $d5
    rst $28                                       ; $7024: $ef
    xor e                                         ; $7025: $ab
    rst $38                                       ; $7026: $ff
    ld d, [hl]                                    ; $7027: $56
    ld a, [hl]                                    ; $7028: $7e
    ld [bc], a                                    ; $7029: $02
    inc a                                         ; $702a: $3c
    ld a, [bc]                                    ; $702b: $0a
    nop                                           ; $702c: $00
    ld [bc], a                                    ; $702d: $02
    inc a                                         ; $702e: $3c
    adc h                                         ; $702f: $8c
    ld l, d                                       ; $7030: $6a
    ld a, [hl]                                    ; $7031: $7e
    push de                                       ; $7032: $d5
    rst $38                                       ; $7033: $ff
    xor e                                         ; $7034: $ab
    rst $30                                       ; $7035: $f7
    db $dd                                        ; $7036: $dd
    db $e3                                        ; $7037: $e3
    xor c                                         ; $7038: $a9
    rst $30                                       ; $7039: $f7
    ld b, d                                       ; $703a: $42
    ld a, [hl]                                    ; $703b: $7e
    ld [bc], a                                    ; $703c: $02
    inc a                                         ; $703d: $3c
    stop                                          ; $703e: $10 $00
    rst $38                                       ; $7040: $ff
    add hl, bc                                    ; $7041: $09
    ld [bc], a                                    ; $7042: $02
    push af                                       ; $7043: $f5
    inc c                                         ; $7044: $0c
    push af                                       ; $7045: $f5
    dec bc                                        ; $7046: $0b
    inc bc                                        ; $7047: $03
    rrca                                          ; $7048: $0f
    inc de                                        ; $7049: $13
    cp $02                                        ; $704a: $fe $02
    inc a                                         ; $704c: $3c
    adc h                                         ; $704d: $8c
    ld d, d                                       ; $704e: $52
    ld a, [hl]                                    ; $704f: $7e
    xor c                                         ; $7050: $a9
    rst $30                                       ; $7051: $f7
    db $dd                                        ; $7052: $dd
    db $e3                                        ; $7053: $e3
    xor c                                         ; $7054: $a9
    rst $30                                       ; $7055: $f7
    push de                                       ; $7056: $d5
    rst $38                                       ; $7057: $ff
    ld l, d                                       ; $7058: $6a
    ld a, [hl]                                    ; $7059: $7e
    ld [bc], a                                    ; $705a: $02
    inc a                                         ; $705b: $3c
    stop                                          ; $705c: $10 $00
    ld [bc], a                                    ; $705e: $02
    inc a                                         ; $705f: $3c
    adc h                                         ; $7060: $8c
    ld d, [hl]                                    ; $7061: $56
    ld a, [hl]                                    ; $7062: $7e
    xor e                                         ; $7063: $ab
    rst $38                                       ; $7064: $ff
    sub l                                         ; $7065: $95
    rst $28                                       ; $7066: $ef
    cp e                                          ; $7067: $bb
    rst $00                                       ; $7068: $c7
    sub l                                         ; $7069: $95
    rst $28                                       ; $706a: $ef
    ld c, d                                       ; $706b: $4a
    ld a, [hl]                                    ; $706c: $7e
    ld [bc], a                                    ; $706d: $02
    inc a                                         ; $706e: $3c
    stop                                          ; $706f: $10 $00
    rst $38                                       ; $7071: $ff
    add hl, bc                                    ; $7072: $09
    ld [bc], a                                    ; $7073: $02
    push af                                       ; $7074: $f5
    inc c                                         ; $7075: $0c
    push af                                       ; $7076: $f5
    dec bc                                        ; $7077: $0b

Call_0f8_7078:
    ei                                            ; $7078: $fb
    add hl, bc                                    ; $7079: $09
    dec bc                                        ; $707a: $0b
    add hl, bc                                    ; $707b: $09
    adc b                                         ; $707c: $88
    nop                                           ; $707d: $00
    ld b, $07                                     ; $707e: $06 $07
    add hl, bc                                    ; $7080: $09
    rlca                                          ; $7081: $07
    dec bc                                        ; $7082: $0b
    nop                                           ; $7083: $00
    ld b, $1e                                     ; $7084: $06 $1e
    nop                                           ; $7086: $00
    ld [bc], a                                    ; $7087: $02
    inc a                                         ; $7088: $3c
    adc h                                         ; $7089: $8c
    ld l, d                                       ; $708a: $6a
    ld a, [hl]                                    ; $708b: $7e
    push de                                       ; $708c: $d5
    rst $38                                       ; $708d: $ff
    xor e                                         ; $708e: $ab
    rst $30                                       ; $708f: $f7
    db $dd                                        ; $7090: $dd
    db $e3                                        ; $7091: $e3
    xor c                                         ; $7092: $a9
    rst $30                                       ; $7093: $f7
    ld b, d                                       ; $7094: $42
    ld a, [hl]                                    ; $7095: $7e
    ld [bc], a                                    ; $7096: $02
    inc a                                         ; $7097: $3c
    ld a, [bc]                                    ; $7098: $0a
    nop                                           ; $7099: $00
    rst $38                                       ; $709a: $ff
    add hl, bc                                    ; $709b: $09
    ld [bc], a                                    ; $709c: $02
    push af                                       ; $709d: $f5
    inc c                                         ; $709e: $0c
    push af                                       ; $709f: $f5
    dec bc                                        ; $70a0: $0b
    rst $30                                       ; $70a1: $f7
    ld a, [bc]                                    ; $70a2: $0a
    inc b                                         ; $70a3: $04
    ld c, $03                                     ; $70a4: $0e $03
    ld h, b                                       ; $70a6: $60
    add l                                         ; $70a7: $85
    or b                                          ; $70a8: $b0
    ld h, b                                       ; $70a9: $60
    sub b                                         ; $70aa: $90
    nop                                           ; $70ab: $00
    ld h, b                                       ; $70ac: $60
    ld [de], a                                    ; $70ad: $12
    nop                                           ; $70ae: $00
    ld [bc], a                                    ; $70af: $02
    inc bc                                        ; $70b0: $03
    add h                                         ; $70b1: $84
    dec b                                         ; $70b2: $05
    rlca                                          ; $70b3: $07
    ld a, [bc]                                    ; $70b4: $0a
    rrca                                          ; $70b5: $0f
    ld [bc], a                                    ; $70b6: $02
    inc c                                         ; $70b7: $0c
    adc h                                         ; $70b8: $8c
    ld [bc], a                                    ; $70b9: $02
    ld c, $09                                     ; $70ba: $0e $09
    rlca                                          ; $70bc: $07
    db $dd                                        ; $70bd: $dd
    db $e3                                        ; $70be: $e3
    xor c                                         ; $70bf: $a9
    rst $30                                       ; $70c0: $f7
    push de                                       ; $70c1: $d5
    rst $38                                       ; $70c2: $ff
    ld l, d                                       ; $70c3: $6a
    ld a, [hl]                                    ; $70c4: $7e
    ld [bc], a                                    ; $70c5: $02
    inc a                                         ; $70c6: $3c
    stop                                          ; $70c7: $10 $00
    rst $38                                       ; $70c9: $ff
    add hl, bc                                    ; $70ca: $09
    ld [bc], a                                    ; $70cb: $02
    push af                                       ; $70cc: $f5
    inc c                                         ; $70cd: $0c
    push af                                       ; $70ce: $f5
    dec bc                                        ; $70cf: $0b
    push af                                       ; $70d0: $f5
    dec b                                         ; $70d1: $05
    push af                                       ; $70d2: $f5
    ld [$6002], sp                                ; $70d3: $08 $02 $60
    add [hl]                                      ; $70d6: $86
    and b                                         ; $70d7: $a0
    ret nc                                        ; $70d8: $d0

    ldh [$90], a                                  ; $70d9: $e0 $90
    nop                                           ; $70db: $00
    ld h, b                                       ; $70dc: $60
    add hl, bc                                    ; $70dd: $09
    nop                                           ; $70de: $00
    add e                                         ; $70df: $83
    ld bc, $0100                                  ; $70e0: $01 $00 $01
    dec de                                        ; $70e3: $1b
    nop                                           ; $70e4: $00
    add l                                         ; $70e5: $85
    ld b, $07                                     ; $70e6: $06 $07
    ld bc, $0305                                  ; $70e8: $01 $05 $03
    ld [bc], a                                    ; $70eb: $02
    ld b, $0a                                     ; $70ec: $06 $0a
    nop                                           ; $70ee: $00
    rst $38                                       ; $70ef: $ff
    add hl, bc                                    ; $70f0: $09
    ld [bc], a                                    ; $70f1: $02
    push af                                       ; $70f2: $f5
    inc c                                         ; $70f3: $0c
    push af                                       ; $70f4: $f5
    dec bc                                        ; $70f5: $0b
    push af                                       ; $70f6: $f5
    rst $38                                       ; $70f7: $ff
    push af                                       ; $70f8: $f5
    dec b                                         ; $70f9: $05
    add [hl]                                      ; $70fa: $86
    nop                                           ; $70fb: $00
    ld h, b                                       ; $70fc: $60
    ldh [$90], a                                  ; $70fd: $e0 $90
    and b                                         ; $70ff: $a0
    ret nc                                        ; $7100: $d0

    ld [bc], a                                    ; $7101: $02
    ld h, b                                       ; $7102: $60
    ld e, $00                                     ; $7103: $1e $00
    ld [bc], a                                    ; $7105: $02
    ld b, $86                                     ; $7106: $06 $86
    dec b                                         ; $7108: $05
    dec bc                                        ; $7109: $0b
    rlca                                          ; $710a: $07
    add hl, bc                                    ; $710b: $09
    nop                                           ; $710c: $00
    ld b, $12                                     ; $710d: $06 $12
    nop                                           ; $710f: $00
    rst $38                                       ; $7110: $ff
    add hl, bc                                    ; $7111: $09
    ld [bc], a                                    ; $7112: $02
    push af                                       ; $7113: $f5
    inc c                                         ; $7114: $0c
    push af                                       ; $7115: $f5
    dec bc                                        ; $7116: $0b
    or $fa                                        ; $7117: $f6 $fa
    or $00                                        ; $7119: $f6 $00
    inc bc                                        ; $711b: $03
    nop                                           ; $711c: $00
    add l                                         ; $711d: $85
    ld h, b                                       ; $711e: $60
    ld [hl], b                                    ; $711f: $70
    sub b                                         ; $7120: $90
    ld d, b                                       ; $7121: $50
    or b                                          ; $7122: $b0
    ld [bc], a                                    ; $7123: $02
    ld h, b                                       ; $7124: $60
    ld d, $00                                     ; $7125: $16 $00
    ld [bc], a                                    ; $7127: $02
    ld b, $86                                     ; $7128: $06 $86
    ld a, [bc]                                    ; $712a: $0a
    dec c                                         ; $712b: $0d
    ld c, $09                                     ; $712c: $0e $09
    nop                                           ; $712e: $00
    ld b, $18                                     ; $712f: $06 $18
    nop                                           ; $7131: $00
    rst $38                                       ; $7132: $ff
    add hl, bc                                    ; $7133: $09
    ld [bc], a                                    ; $7134: $02
    push af                                       ; $7135: $f5
    inc c                                         ; $7136: $0c
    push af                                       ; $7137: $f5
    dec bc                                        ; $7138: $0b
    or $f6                                        ; $7139: $f6 $f6
    or $fa                                        ; $713b: $f6 $fa
    ld a, [bc]                                    ; $713d: $0a
    nop                                           ; $713e: $00
    ld [bc], a                                    ; $713f: $02
    ld h, b                                       ; $7140: $60
    add [hl]                                      ; $7141: $86
    ld d, b                                       ; $7142: $50
    or b                                          ; $7143: $b0
    ld [hl], b                                    ; $7144: $70
    sub b                                         ; $7145: $90
    nop                                           ; $7146: $00
    ld h, b                                       ; $7147: $60
    rrca                                          ; $7148: $0f
    nop                                           ; $7149: $00
    add l                                         ; $714a: $85
    ld b, $0e                                     ; $714b: $06 $0e
    add hl, bc                                    ; $714d: $09
    ld a, [bc]                                    ; $714e: $0a
    dec c                                         ; $714f: $0d
    ld [bc], a                                    ; $7150: $02
    ld b, $18                                     ; $7151: $06 $18
    nop                                           ; $7153: $00
    rst $38                                       ; $7154: $ff
    add hl, bc                                    ; $7155: $09
    ld [bc], a                                    ; $7156: $02
    push af                                       ; $7157: $f5
    inc c                                         ; $7158: $0c
    push af                                       ; $7159: $f5
    dec bc                                        ; $715a: $0b
    ld hl, sp-$0c                                 ; $715b: $f8 $f4
    ld hl, sp-$0b                                 ; $715d: $f8 $f5
    add c                                         ; $715f: $81
    nop                                           ; $7160: $00
    ld [bc], a                                    ; $7161: $02
    inc bc                                        ; $7162: $03
    add e                                         ; $7163: $83
    inc b                                         ; $7164: $04
    ld [bc], a                                    ; $7165: $02
    dec b                                         ; $7166: $05
    ld [bc], a                                    ; $7167: $02
    inc bc                                        ; $7168: $03
    ld a, [bc]                                    ; $7169: $0a
    nop                                           ; $716a: $00
    ld [bc], a                                    ; $716b: $02
    ld h, b                                       ; $716c: $60
    add [hl]                                      ; $716d: $86
    and b                                         ; $716e: $a0
    ret nc                                        ; $716f: $d0

    ldh [$90], a                                  ; $7170: $e0 $90
    nop                                           ; $7172: $00
    ld h, b                                       ; $7173: $60
    ld [$0400], sp                                ; $7174: $08 $00 $04
    ld bc, $001a                                  ; $7177: $01 $1a $00
    rst $38                                       ; $717a: $ff
    rlca                                          ; $717b: $07
    ld bc, $0cf5                                  ; $717c: $01 $f5 $0c
    push af                                       ; $717f: $f5
    dec bc                                        ; $7180: $0b
    db $fc                                        ; $7181: $fc
    pop af                                        ; $7182: $f1
    ld [bc], a                                    ; $7183: $02
    ld b, $86                                     ; $7184: $06 $86
    ld a, [bc]                                    ; $7186: $0a
    dec c                                         ; $7187: $0d
    ld c, $09                                     ; $7188: $0e $09
    nop                                           ; $718a: $00
    ld b, $0f                                     ; $718b: $06 $0f
    nop                                           ; $718d: $00
    add l                                         ; $718e: $85
    ld b, $0e                                     ; $718f: $06 $0e
    add hl, bc                                    ; $7191: $09
    ld a, [bc]                                    ; $7192: $0a
    dec c                                         ; $7193: $0d
    ld [bc], a                                    ; $7194: $02
    ld b, $02                                     ; $7195: $06 $02
    nop                                           ; $7197: $00
    rst $38                                       ; $7198: $ff
    add hl, bc                                    ; $7199: $09
    ld [bc], a                                    ; $719a: $02
    push af                                       ; $719b: $f5
    inc c                                         ; $719c: $0c
    push af                                       ; $719d: $f5
    dec bc                                        ; $719e: $0b
    ld [bc], a                                    ; $719f: $02
    di                                            ; $71a0: $f3
    ld [bc], a                                    ; $71a1: $02
    push af                                       ; $71a2: $f5
    ld [bc], a                                    ; $71a3: $02
    ld h, b                                       ; $71a4: $60
    add [hl]                                      ; $71a5: $86
    and b                                         ; $71a6: $a0
    ret nc                                        ; $71a7: $d0

    ldh [$90], a                                  ; $71a8: $e0 $90
    nop                                           ; $71aa: $00
    ld h, b                                       ; $71ab: $60
    dec bc                                        ; $71ac: $0b
    nop                                           ; $71ad: $00
    ld [bc], a                                    ; $71ae: $02
    ld bc, $0283                                  ; $71af: $01 $83 $02
    ld bc, $0202                                  ; $71b2: $01 $02 $02
    ld bc, $0019                                  ; $71b5: $01 $19 $00
    add d                                         ; $71b8: $82
    ld [bc], a                                    ; $71b9: $02
    inc bc                                        ; $71ba: $03
    ld [bc], a                                    ; $71bb: $02
    ld bc, $0381                                  ; $71bc: $01 $81 $03
    ld [bc], a                                    ; $71bf: $02
    ld [bc], a                                    ; $71c0: $02
    ld b, $00                                     ; $71c1: $06 $00
    rst $38                                       ; $71c3: $ff
    add hl, bc                                    ; $71c4: $09

jr_0f8_71c5:
    ld [bc], a                                    ; $71c5: $02
    push af                                       ; $71c6: $f5
    inc c                                         ; $71c7: $0c
    push af                                       ; $71c8: $f5
    dec bc                                        ; $71c9: $0b
    ld [$08f4], sp                                ; $71ca: $08 $f4 $08
    ei                                            ; $71cd: $fb
    add [hl]                                      ; $71ce: $86
    nop                                           ; $71cf: $00
    ld h, b                                       ; $71d0: $60
    ldh [$90], a                                  ; $71d1: $e0 $90
    and b                                         ; $71d3: $a0
    ret nc                                        ; $71d4: $d0

    ld [bc], a                                    ; $71d5: $02
    ld h, b                                       ; $71d6: $60
    ld [hl+], a                                   ; $71d7: $22
    nop                                           ; $71d8: $00
    ld [bc], a                                    ; $71d9: $02
    ld b, $86                                     ; $71da: $06 $86
    dec b                                         ; $71dc: $05
    dec bc                                        ; $71dd: $0b
    rlca                                          ; $71de: $07
    add hl, bc                                    ; $71df: $09
    nop                                           ; $71e0: $00
    ld b, $0e                                     ; $71e1: $06 $0e
    nop                                           ; $71e3: $00
    rst $38                                       ; $71e4: $ff
    add hl, bc                                    ; $71e5: $09
    ld [bc], a                                    ; $71e6: $02
    push af                                       ; $71e7: $f5
    inc c                                         ; $71e8: $0c
    push af                                       ; $71e9: $f5
    dec bc                                        ; $71ea: $0b
    ld a, [bc]                                    ; $71eb: $0a
    ld hl, sp+$0a                                 ; $71ec: $f8 $0a
    nop                                           ; $71ee: $00
    dec b                                         ; $71ef: $05
    nop                                           ; $71f0: $00
    add l                                         ; $71f1: $85
    ld h, b                                       ; $71f2: $60
    ld [hl], b                                    ; $71f3: $70
    sub b                                         ; $71f4: $90
    ld d, b                                       ; $71f5: $50
    or b                                          ; $71f6: $b0
    ld [bc], a                                    ; $71f7: $02
    ld h, b                                       ; $71f8: $60
    inc d                                         ; $71f9: $14
    nop                                           ; $71fa: $00
    ld [bc], a                                    ; $71fb: $02
    ld b, $86                                     ; $71fc: $06 $86
    ld a, [bc]                                    ; $71fe: $0a
    dec c                                         ; $71ff: $0d
    ld c, $09                                     ; $7200: $0e $09
    nop                                           ; $7202: $00
    ld b, $18                                     ; $7203: $06 $18
    nop                                           ; $7205: $00
    rst $38                                       ; $7206: $ff
    add hl, bc                                    ; $7207: $09
    ld [bc], a                                    ; $7208: $02
    push af                                       ; $7209: $f5
    inc c                                         ; $720a: $0c
    push af                                       ; $720b: $f5
    dec bc                                        ; $720c: $0b
    dec b                                         ; $720d: $05
    cp $05                                        ; $720e: $fe $05
    inc bc                                        ; $7210: $03
    ld [de], a                                    ; $7211: $12
    nop                                           ; $7212: $00
    ld [bc], a                                    ; $7213: $02
    ld h, b                                       ; $7214: $60
    add [hl]                                      ; $7215: $86
    ld d, b                                       ; $7216: $50
    or b                                          ; $7217: $b0
    ld [hl], b                                    ; $7218: $70
    sub b                                         ; $7219: $90
    nop                                           ; $721a: $00
    ld h, b                                       ; $721b: $60
    rlca                                          ; $721c: $07
    nop                                           ; $721d: $00
    add l                                         ; $721e: $85
    ld b, $0e                                     ; $721f: $06 $0e
    add hl, bc                                    ; $7221: $09
    ld a, [bc]                                    ; $7222: $0a
    dec c                                         ; $7223: $0d
    ld [bc], a                                    ; $7224: $02
    ld b, $18                                     ; $7225: $06 $18
    nop                                           ; $7227: $00
    rst $38                                       ; $7228: $ff
    rlca                                          ; $7229: $07
    ld bc, $0cf5                                  ; $722a: $01 $f5 $0c
    push af                                       ; $722d: $f5
    dec bc                                        ; $722e: $0b
    rst $38                                       ; $722f: $ff
    ld [bc], a                                    ; $7230: $02
    add [hl]                                      ; $7231: $86
    nop                                           ; $7232: $00
    ld b, $07                                     ; $7233: $06 $07
    add hl, bc                                    ; $7235: $09
    dec b                                         ; $7236: $05
    dec bc                                        ; $7237: $0b
    ld [bc], a                                    ; $7238: $02
    ld b, $10                                     ; $7239: $06 $10
    nop                                           ; $723b: $00
    ld [bc], a                                    ; $723c: $02
    jr nc, jr_0f8_71c5                            ; $723d: $30 $86

    ld d, b                                       ; $723f: $50
    ld l, b                                       ; $7240: $68
    ld [hl], b                                    ; $7241: $70
    ld c, b                                       ; $7242: $48
    nop                                           ; $7243: $00
    jr nc, @+$01                                  ; $7244: $30 $ff

    add hl, bc                                    ; $7246: $09
    ld [bc], a                                    ; $7247: $02
    push af                                       ; $7248: $f5
    inc c                                         ; $7249: $0c
    push af                                       ; $724a: $f5
    dec bc                                        ; $724b: $0b
    ei                                            ; $724c: $fb
    ld bc, $02fb                                  ; $724d: $01 $fb $02
    ld [bc], a                                    ; $7250: $02
    ld h, b                                       ; $7251: $60
    add [hl]                                      ; $7252: $86
    ld d, b                                       ; $7253: $50
    or b                                          ; $7254: $b0
    ld [hl], b                                    ; $7255: $70
    sub b                                         ; $7256: $90
    nop                                           ; $7257: $00
    ld h, b                                       ; $7258: $60
    rrca                                          ; $7259: $0f
    nop                                           ; $725a: $00
    add l                                         ; $725b: $85
    inc bc                                        ; $725c: $03
    rlca                                          ; $725d: $07
    inc b                                         ; $725e: $04
    dec b                                         ; $725f: $05
    ld b, $02                                     ; $7260: $06 $02
    inc bc                                        ; $7262: $03
    dec de                                        ; $7263: $1b
    nop                                           ; $7264: $00
    add e                                         ; $7265: $83
    ld bc, $0100                                  ; $7266: $01 $00 $01
    inc b                                         ; $7269: $04
    nop                                           ; $726a: $00
    rst $38                                       ; $726b: $ff
    add hl, bc                                    ; $726c: $09
    ld [bc], a                                    ; $726d: $02
    push af                                       ; $726e: $f5
    inc c                                         ; $726f: $0c
    push af                                       ; $7270: $f5
    dec bc                                        ; $7271: $0b
    rst $38                                       ; $7272: $ff
    nop                                           ; $7273: $00
    rst $38                                       ; $7274: $ff
    ld bc, $8088                                  ; $7275: $01 $88 $80
    ret nz                                        ; $7278: $c0

    add b                                         ; $7279: $80
    jp $0403                                      ; $727a: $c3 $03 $04


    ld [bc], a                                    ; $727d: $02
    dec b                                         ; $727e: $05
    ld [bc], a                                    ; $727f: $02
    inc bc                                        ; $7280: $03
    ld a, [de]                                    ; $7281: $1a
    nop                                           ; $7282: $00
    inc b                                         ; $7283: $04
    ld bc, $0018                                  ; $7284: $01 $18 $00
    rst $38                                       ; $7287: $ff
    rlca                                          ; $7288: $07
    ld bc, $0cf5                                  ; $7289: $01 $f5 $0c
    push af                                       ; $728c: $f5
    dec bc                                        ; $728d: $0b
    cp $fb                                        ; $728e: $fe $fb
    add [hl]                                      ; $7290: $86
    ld [bc], a                                    ; $7291: $02
    inc bc                                        ; $7292: $03
    ld b, $07                                     ; $7293: $06 $07
    inc b                                         ; $7295: $04

jr_0f8_7296:
    ld b, $1a                                     ; $7296: $06 $1a
    nop                                           ; $7298: $00
    rst $38                                       ; $7299: $ff
    rlca                                          ; $729a: $07
    ld bc, $0cf5                                  ; $729b: $01 $f5 $0c
    push af                                       ; $729e: $f5
    dec bc                                        ; $729f: $0b
    cp $fc                                        ; $72a0: $fe $fc
    ld [bc], a                                    ; $72a2: $02
    ld [de], a                                    ; $72a3: $12
    adc b                                         ; $72a4: $88
    scf                                           ; $72a5: $37
    ccf                                           ; $72a6: $3f
    dec c                                         ; $72a7: $0d
    inc de                                        ; $72a8: $13
    dec l                                         ; $72a9: $2d
    inc sp                                        ; $72aa: $33
    inc c                                         ; $72ab: $0c
    ld e, $02                                     ; $72ac: $1e $02
    ld [$0014], sp                                ; $72ae: $08 $14 $00
    rst $38                                       ; $72b1: $ff
    rlca                                          ; $72b2: $07
    ld bc, $0cf5                                  ; $72b3: $01 $f5 $0c
    push af                                       ; $72b6: $f5
    dec bc                                        ; $72b7: $0b
    db $fd                                        ; $72b8: $fd
    db $fd                                        ; $72b9: $fd
    sub b                                         ; $72ba: $90
    ld [de], a                                    ; $72bb: $12
    sub e                                         ; $72bc: $93
    ld e, e                                       ; $72bd: $5b
    dec a                                         ; $72be: $3d
    inc h                                         ; $72bf: $24
    ld e, d                                       ; $72c0: $5a
    jp c, Jump_0f8_5be6                           ; $72c1: $da $e6 $5b

    ld h, a                                       ; $72c4: $67
    and h                                         ; $72c5: $a4
    jp c, $ad4b                                   ; $72c6: $da $4b $ad

    xor b                                         ; $72c9: $a8
    xor c                                         ; $72ca: $a9
    stop                                          ; $72cb: $10 $00
    rst $38                                       ; $72cd: $ff
    add hl, bc                                    ; $72ce: $09
    ld [bc], a                                    ; $72cf: $02
    push af                                       ; $72d0: $f5
    inc c                                         ; $72d1: $0c
    push af                                       ; $72d2: $f5
    dec bc                                        ; $72d3: $0b
    ld sp, hl                                     ; $72d4: $f9
    ld a, [$01f9]                                 ; $72d5: $fa $f9 $01
    ld [bc], a                                    ; $72d8: $02
    ld [bc], a                                    ; $72d9: $02
    adc d                                         ; $72da: $8a
    nop                                           ; $72db: $00
    ret nz                                        ; $72dc: $c0

    ld c, b                                       ; $72dd: $48
    adc b                                         ; $72de: $88
    add hl, bc                                    ; $72df: $09
    add hl, de                                    ; $72e0: $19
    rla                                           ; $72e1: $17
    cpl                                           ; $72e2: $2f
    ld l, b                                       ; $72e3: $68
    ld [hl], b                                    ; $72e4: $70
    ld [bc], a                                    ; $72e5: $02
    ld d, c                                       ; $72e6: $51
    ld [bc], a                                    ; $72e7: $02
    dec h                                         ; $72e8: $25
    ld [bc], a                                    ; $72e9: $02
    and b                                         ; $72ea: $a0
    adc d                                         ; $72eb: $8a
    ld l, d                                       ; $72ec: $6a
    ld [hl], d                                    ; $72ed: $72
    db $10                                        ; $72ee: $10
    jr z, jr_0f8_72fe                             ; $72ef: $28 $0d

    dec e                                         ; $72f1: $1d
    ld c, b                                       ; $72f2: $48
    adc b                                         ; $72f3: $88
    ld [bc], a                                    ; $72f4: $02
    jp nz, $0402                                  ; $72f5: $c2 $02 $04

    inc b                                         ; $72f8: $04
    nop                                           ; $72f9: $00
    adc d                                         ; $72fa: $8a
    ld b, b                                       ; $72fb: $40
    ld c, h                                       ; $72fc: $4c
    ld c, b                                       ; $72fd: $48

jr_0f8_72fe:
    ld b, h                                       ; $72fe: $44
    ld b, b                                       ; $72ff: $40
    ld h, b                                       ; $7300: $60
    jr nz, @+$52                                  ; $7301: $20 $50

    ld e, c                                       ; $7303: $59
    add hl, sp                                    ; $7304: $39
    ld [bc], a                                    ; $7305: $02
    inc d                                         ; $7306: $14
    ld [bc], a                                    ; $7307: $02
    inc b                                         ; $7308: $04
    ld [bc], a                                    ; $7309: $02
    jr jr_0f8_7296                                ; $730a: $18 $8a

    ld e, b                                       ; $730c: $58
    jr c, jr_0f8_7333                             ; $730d: $38 $24

    ld d, h                                       ; $730f: $54
    ld b, b                                       ; $7310: $40
    ld h, b                                       ; $7311: $60
    ld c, b                                       ; $7312: $48
    ld b, h                                       ; $7313: $44
    nop                                           ; $7314: $00
    inc c                                         ; $7315: $0c
    inc b                                         ; $7316: $04
    nop                                           ; $7317: $00
    rst $38                                       ; $7318: $ff
    ld de, $f506                                  ; $7319: $11 $06 $f5
    inc c                                         ; $731c: $0c
    push af                                       ; $731d: $f5
    dec bc                                        ; $731e: $0b
    or $f5                                        ; $731f: $f6 $f5
    push af                                       ; $7321: $f5
    db $fd                                        ; $7322: $fd
    push af                                       ; $7323: $f5
    dec b                                         ; $7324: $05
    dec b                                         ; $7325: $05
    rst $30                                       ; $7326: $f7
    dec b                                         ; $7327: $05
    rst $38                                       ; $7328: $ff
    dec b                                         ; $7329: $05
    dec b                                         ; $732a: $05
    add d                                         ; $732b: $82
    ld bc, $0211                                  ; $732c: $01 $11 $02
    ld bc, $0284                                  ; $732f: $01 $84 $02
    ld a, [bc]                                    ; $7332: $0a

jr_0f8_7333:
    ld [$0210], sp                                ; $7333: $08 $10 $02
    nop                                           ; $7336: $00
    add d                                         ; $7337: $82
    ldh [$e1], a                                  ; $7338: $e0 $e1
    inc bc                                        ; $733a: $03
    nop                                           ; $733b: $00
    add e                                         ; $733c: $83
    ld bc, $1615                                  ; $733d: $01 $15 $16
    inc b                                         ; $7340: $04
    ld [$1202], sp                                ; $7341: $08 $02 $12
    ld [bc], a                                    ; $7344: $02
    add b                                         ; $7345: $80
    add [hl]                                      ; $7346: $86
    ld [bc], a                                    ; $7347: $02
    inc bc                                        ; $7348: $03
    inc b                                         ; $7349: $04
    ld [$1410], sp                                ; $734a: $08 $10 $14
    ld [bc], a                                    ; $734d: $02
    ld [bc], a                                    ; $734e: $02
    ld [bc], a                                    ; $734f: $02
    nop                                           ; $7350: $00
    ld [bc], a                                    ; $7351: $02
    jr jr_0f8_7356                                ; $7352: $18 $02

    and l                                         ; $7354: $a5
    ld [bc], a                                    ; $7355: $02

jr_0f8_7356:
    ld sp, $0386                                  ; $7356: $31 $86 $03
    add e                                         ; $7359: $83
    add b                                         ; $735a: $80
    ld bc, $4041                                  ; $735b: $01 $41 $40
    inc b                                         ; $735e: $04
    nop                                           ; $735f: $00
    ld [bc], a                                    ; $7360: $02
    ld bc, $8102                                  ; $7361: $01 $02 $81
    inc b                                         ; $7364: $04
    nop                                           ; $7365: $00
    add [hl]                                      ; $7366: $86
    add b                                         ; $7367: $80
    nop                                           ; $7368: $00
    ld [bc], a                                    ; $7369: $02
    add d                                         ; $736a: $82
    nop                                           ; $736b: $00
    ld b, b                                       ; $736c: $40
    ld [bc], a                                    ; $736d: $02
    nop                                           ; $736e: $00
    add d                                         ; $736f: $82
    jr nz, jr_0f8_7386                            ; $7370: $20 $14

    inc b                                         ; $7372: $04
    nop                                           ; $7373: $00
    add [hl]                                      ; $7374: $86
    ld [$2228], sp                                ; $7375: $08 $28 $22
    ld [de], a                                    ; $7378: $12
    ld b, b                                       ; $7379: $40
    ret nz                                        ; $737a: $c0

    ld [bc], a                                    ; $737b: $02
    nop                                           ; $737c: $00
    ld [bc], a                                    ; $737d: $02
    ld c, c                                       ; $737e: $49
    ld [bc], a                                    ; $737f: $02
    db $10                                        ; $7380: $10
    ld [bc], a                                    ; $7381: $02
    ld [de], a                                    ; $7382: $12
    ld [bc], a                                    ; $7383: $02
    db $10                                        ; $7384: $10
    add h                                         ; $7385: $84

jr_0f8_7386:
    xor b                                         ; $7386: $a8
    ld l, b                                       ; $7387: $68
    nop                                           ; $7388: $00
    add b                                         ; $7389: $80
    ld [bc], a                                    ; $738a: $02
    nop                                           ; $738b: $00
    ld [bc], a                                    ; $738c: $02
    inc bc                                        ; $738d: $03
    inc b                                         ; $738e: $04
    ld [bc], a                                    ; $738f: $02
    add h                                         ; $7390: $84
    db $10                                        ; $7391: $10
    and b                                         ; $7392: $a0
    nop                                           ; $7393: $00
    db $10                                        ; $7394: $10
    ld [bc], a                                    ; $7395: $02
    inc b                                         ; $7396: $04
    inc d                                         ; $7397: $14
    nop                                           ; $7398: $00
    add h                                         ; $7399: $84
    inc b                                         ; $739a: $04
    ld [bc], a                                    ; $739b: $02
    nop                                           ; $739c: $00
    inc b                                         ; $739d: $04
    ld [bc], a                                    ; $739e: $02
    sub b                                         ; $739f: $90
    ld [bc], a                                    ; $73a0: $02
    dec d                                         ; $73a1: $15
    ld [bc], a                                    ; $73a2: $02
    ld [bc], a                                    ; $73a3: $02
    ld [bc], a                                    ; $73a4: $02
    add d                                         ; $73a5: $82
    inc d                                         ; $73a6: $14
    nop                                           ; $73a7: $00
    ld [bc], a                                    ; $73a8: $02
    rlca                                          ; $73a9: $07
    ld [bc], a                                    ; $73aa: $02
    nop                                           ; $73ab: $00
    add h                                         ; $73ac: $84
    db $10                                        ; $73ad: $10

Jump_0f8_73ae:
    ld [$1000], sp                                ; $73ae: $08 $00 $10
    inc bc                                        ; $73b1: $03
    nop                                           ; $73b2: $00
    add c                                         ; $73b3: $81
    ld [$0014], sp                                ; $73b4: $08 $14 $00
    rst $38                                       ; $73b7: $ff
    rlca                                          ; $73b8: $07
    ld bc, $15ec                                  ; $73b9: $01 $ec $15
    rst $28                                       ; $73bc: $ef
    ld de, $faff                                  ; $73bd: $11 $ff $fa
    add e                                         ; $73c0: $83
    nop                                           ; $73c1: $00
    inc b                                         ; $73c2: $04
    ld b, $02                                     ; $73c3: $06 $02
    add hl, bc                                    ; $73c5: $09
    add c                                         ; $73c6: $81
    rrca                                          ; $73c7: $0f
    ld [bc], a                                    ; $73c8: $02
    ld [bc], a                                    ; $73c9: $02
    jr jr_0f8_73cc                                ; $73ca: $18 $00

jr_0f8_73cc:
    rst $38                                       ; $73cc: $ff
    add hl, bc                                    ; $73cd: $09
    ld [bc], a                                    ; $73ce: $02
    db $ec                                        ; $73cf: $ec
    dec d                                         ; $73d0: $15
    rst $28                                       ; $73d1: $ef
    ld de, $fbfc                                  ; $73d2: $11 $fc $fb
    db $fc                                        ; $73d5: $fc
    db $fc                                        ; $73d6: $fc
    sub b                                         ; $73d7: $90
    stop                                          ; $73d8: $10 $00
    inc hl                                        ; $73da: $23
    inc d                                         ; $73db: $14
    ld d, b                                       ; $73dc: $50
    inc sp                                        ; $73dd: $33
    ld b, c                                       ; $73de: $41
    ld bc, $61a1                                  ; $73df: $01 $a1 $61
    ld b, b                                       ; $73e2: $40
    ld hl, $7774                                  ; $73e3: $21 $74 $77
    ld [hl+], a                                   ; $73e6: $22
    inc d                                         ; $73e7: $14
    ld d, $00                                     ; $73e8: $16 $00
    ld [bc], a                                    ; $73ea: $02
    ld bc, $0081                                  ; $73eb: $01 $81 $00
    ld [bc], a                                    ; $73ee: $02
    ld bc, $0015                                  ; $73ef: $01 $15 $00
    rst $38                                       ; $73f2: $ff
    dec c                                         ; $73f3: $0d
    inc b                                         ; $73f4: $04
    db $ec                                        ; $73f5: $ec
    dec d                                         ; $73f6: $15
    rst $28                                       ; $73f7: $ef
    ld de, $f7f8                                  ; $73f8: $11 $f8 $f7
    rst $30                                       ; $73fb: $f7
    rst $38                                       ; $73fc: $ff
    ld sp, hl                                     ; $73fd: $f9
    ld bc, $f907                                  ; $73fe: $01 $07 $f9
    add l                                         ; $7401: $85
    nop                                           ; $7402: $00
    ld [bc], a                                    ; $7403: $02
    inc bc                                        ; $7404: $03
    nop                                           ; $7405: $00
    ld [$0f02], sp                                ; $7406: $08 $02 $0f
    adc e                                         ; $7409: $8b
    ccf                                           ; $740a: $3f
    jr z, jr_0f8_7465                             ; $740b: $28 $58

    db $10                                        ; $740d: $10
    jr nc, jr_0f8_7433                            ; $740e: $30 $23

    ld h, c                                       ; $7410: $61
    ld d, c                                       ; $7411: $51
    scf                                           ; $7412: $37
    ld h, b                                       ; $7413: $60
    sub b                                         ; $7414: $90
    ld [bc], a                                    ; $7415: $02
    nop                                           ; $7416: $00
    sub h                                         ; $7417: $94
    db $10                                        ; $7418: $10
    jr nc, jr_0f8_7433                            ; $7419: $30 $18

    ld a, [hl+]                                   ; $741b: $2a
    db $10                                        ; $741c: $10
    ld [$1428], sp                                ; $741d: $08 $28 $14
    ld [bc], a                                    ; $7420: $02
    daa                                           ; $7421: $27
    ld bc, $0002                                  ; $7422: $01 $02 $00
    db $10                                        ; $7425: $10
    jr nz, @+$52                                  ; $7426: $20 $50

    ld d, h                                       ; $7428: $54
    xor b                                         ; $7429: $a8
    and d                                         ; $742a: $a2
    rst $38                                       ; $742b: $ff
    ld [bc], a                                    ; $742c: $02

jr_0f8_742d:
    inc c                                         ; $742d: $0c
    add c                                         ; $742e: $81
    ld bc, $0202                                  ; $742f: $01 $02 $02
    add a                                         ; $7432: $87

jr_0f8_7433:
    ld d, e                                       ; $7433: $53
    ld hl, $0241                                  ; $7434: $21 $41 $02
    inc hl                                        ; $7437: $23
    nop                                           ; $7438: $00
    add hl, bc                                    ; $7439: $09
    ld [bc], a                                    ; $743a: $02
    nop                                           ; $743b: $00
    adc h                                         ; $743c: $8c
    and b                                         ; $743d: $a0
    db $10                                        ; $743e: $10
    ld b, $24                                     ; $743f: $06 $24
    ld c, $09                                     ; $7441: $0e $09
    ld d, b                                       ; $7443: $50
    ld a, l                                       ; $7444: $7d
    ld h, b                                       ; $7445: $60
    ld d, h                                       ; $7446: $54
    nop                                           ; $7447: $00
    ld [bc], a                                    ; $7448: $02
    dec b                                         ; $7449: $05
    nop                                           ; $744a: $00
    ld [bc], a                                    ; $744b: $02
    ld [bc], a                                    ; $744c: $02
    ld [bc], a                                    ; $744d: $02
    nop                                           ; $744e: $00
    add h                                         ; $744f: $84
    inc bc                                        ; $7450: $03
    nop                                           ; $7451: $00
    ld [bc], a                                    ; $7452: $02
    inc bc                                        ; $7453: $03
    ld [bc], a                                    ; $7454: $02
    nop                                           ; $7455: $00
    add c                                         ; $7456: $81
    ld [bc], a                                    ; $7457: $02
    rlca                                          ; $7458: $07
    nop                                           ; $7459: $00
    add c                                         ; $745a: $81
    ld [bc], a                                    ; $745b: $02
    ld [bc], a                                    ; $745c: $02
    nop                                           ; $745d: $00
    adc b                                         ; $745e: $88
    add b                                         ; $745f: $80
    ld [hl], b                                    ; $7460: $70
    nop                                           ; $7461: $00
    db $10                                        ; $7462: $10
    ld [bc], a                                    ; $7463: $02
    inc bc                                        ; $7464: $03

jr_0f8_7465:
    add hl, bc                                    ; $7465: $09
    inc d                                         ; $7466: $14
    inc e                                         ; $7467: $1c
    nop                                           ; $7468: $00
    rst $38                                       ; $7469: $ff
    inc de                                        ; $746a: $13
    rlca                                          ; $746b: $07
    db $ec                                        ; $746c: $ec
    dec d                                         ; $746d: $15
    rst $28                                       ; $746e: $ef
    ld de, $f2f6                                  ; $746f: $11 $f6 $f2
    di                                            ; $7472: $f3
    ld a, [$02f5]                                 ; $7473: $fa $f5 $02
    rst $30                                       ; $7476: $f7
    ld b, $03                                     ; $7477: $06 $03
    or $03                                        ; $7479: $f6 $03
    cp $03                                        ; $747b: $fe $03
    inc b                                         ; $747d: $04
    add e                                         ; $747e: $83
    nop                                           ; $747f: $00
    ld bc, $0300                                  ; $7480: $01 $00 $03
    ld bc, $0086                                  ; $7483: $01 $86 $00
    inc c                                         ; $7486: $0c
    dec c                                         ; $7487: $0d
    inc bc                                        ; $7488: $03
    ld [hl+], a                                   ; $7489: $22
    ld a, $02                                     ; $748a: $3e $02
    nop                                           ; $748c: $00
    adc h                                         ; $748d: $8c
    jr z, jr_0f8_74e8                             ; $748e: $28 $58

    db $10                                        ; $7490: $10
    jr z, @+$16                                   ; $7491: $28 $14

    inc c                                         ; $7493: $0c
    ld b, h                                       ; $7494: $44
    sbc h                                         ; $7495: $9c
    ld e, b                                       ; $7496: $58
    add h                                         ; $7497: $84
    inc b                                         ; $7498: $04
    inc e                                         ; $7499: $1c
    ld [bc], a                                    ; $749a: $02
    inc c                                         ; $749b: $0c
    add d                                         ; $749c: $82
    nop                                           ; $749d: $00
    ld [de], a                                    ; $749e: $12
    inc bc                                        ; $749f: $03
    nop                                           ; $74a0: $00
    ld [bc], a                                    ; $74a1: $02
    jr nc, jr_0f8_742d                            ; $74a2: $30 $89

    jr nz, jr_0f8_74b4                            ; $74a4: $20 $0e

    ld bc, $9b05                                  ; $74a6: $01 $05 $9b
    db $ed                                        ; $74a9: $ed
    dec e                                         ; $74aa: $1d
    ld b, b                                       ; $74ab: $40
    and b                                         ; $74ac: $a0
    inc bc                                        ; $74ad: $03
    nop                                           ; $74ae: $00
    ld [bc], a                                    ; $74af: $02
    inc bc                                        ; $74b0: $03
    add l                                         ; $74b1: $85
    inc b                                         ; $74b2: $04
    inc bc                                        ; $74b3: $03

jr_0f8_74b4:
    jp nz, $a141                                  ; $74b4: $c2 $41 $a1

    ld [bc], a                                    ; $74b7: $02
    ld l, d                                       ; $74b8: $6a
    ld [bc], a                                    ; $74b9: $02
    daa                                           ; $74ba: $27
    ld [bc], a                                    ; $74bb: $02
    nop                                           ; $74bc: $00
    ld [bc], a                                    ; $74bd: $02

jr_0f8_74be:
    ld a, [bc]                                    ; $74be: $0a
    adc c                                         ; $74bf: $89
    ld b, h                                       ; $74c0: $44
    ld h, h                                       ; $74c1: $64
    ld b, b                                       ; $74c2: $40
    ld h, b                                       ; $74c3: $60
    jr nz, @+$52                                  ; $74c4: $20 $50

    ld [hl], c                                    ; $74c6: $71
    ld c, l                                       ; $74c7: $4d
    add hl, de                                    ; $74c8: $19
    ld [bc], a                                    ; $74c9: $02
    ld h, $87                                     ; $74ca: $26 $87
    ccf                                           ; $74cc: $3f
    ld de, $0312                                  ; $74cd: $11 $12 $03
    add d                                         ; $74d0: $82
    ld bc, $0281                                  ; $74d1: $01 $81 $02
    nop                                           ; $74d4: $00
    add [hl]                                      ; $74d5: $86
    add b                                         ; $74d6: $80
    or b                                          ; $74d7: $b0
    jr nc, jr_0f8_7502                            ; $74d8: $30 $28

    sub b                                         ; $74da: $90
    sbc b                                         ; $74db: $98
    ld [bc], a                                    ; $74dc: $02
    ld b, b                                       ; $74dd: $40
    inc bc                                        ; $74de: $03
    add c                                         ; $74df: $81
    add a                                         ; $74e0: $87
    ld b, c                                       ; $74e1: $41
    add b                                         ; $74e2: $80
    ld b, b                                       ; $74e3: $40
    nop                                           ; $74e4: $00
    ld [$0800], sp                                ; $74e5: $08 $00 $08

jr_0f8_74e8:
    dec b                                         ; $74e8: $05
    nop                                           ; $74e9: $00
    add e                                         ; $74ea: $83
    ld [$0800], sp                                ; $74eb: $08 $00 $08
    ld [bc], a                                    ; $74ee: $02
    nop                                           ; $74ef: $00
    sub e                                         ; $74f0: $93
    inc b                                         ; $74f1: $04
    rlca                                          ; $74f2: $07
    ld b, $05                                     ; $74f3: $06 $05
    ld [$060e], sp                                ; $74f5: $08 $0e $06
    add hl, bc                                    ; $74f8: $09
    inc c                                         ; $74f9: $0c
    ld [bc], a                                    ; $74fa: $02
    inc b                                         ; $74fb: $04
    ld a, [bc]                                    ; $74fc: $0a
    ld [bc], a                                    ; $74fd: $02
    ld b, $40                                     ; $74fe: $06 $40
    ld [hl], b                                    ; $7500: $70
    or b                                          ; $7501: $b0

jr_0f8_7502:
    ret z                                         ; $7502: $c8

    ld [bc], a                                    ; $7503: $02
    ld [bc], a                                    ; $7504: $02
    dec b                                         ; $7505: $05
    add e                                         ; $7506: $83
    dec bc                                        ; $7507: $0b
    ld [$020c], sp                                ; $7508: $08 $0c $02
    nop                                           ; $750b: $00
    adc d                                         ; $750c: $8a
    jr nz, jr_0f8_7570                            ; $750d: $20 $61

    ld [hl], l                                    ; $750f: $75
    or d                                          ; $7510: $b2
    ld a, [hl+]                                   ; $7511: $2a
    ld d, [hl]                                    ; $7512: $56
    db $10                                        ; $7513: $10
    ld sp, $0100                                  ; $7514: $31 $00 $01
    ld c, $00                                     ; $7517: $0e $00
    ld [bc], a                                    ; $7519: $02
    db $10                                        ; $751a: $10
    add h                                         ; $751b: $84
    nop                                           ; $751c: $00
    stop                                          ; $751d: $10 $00
    ld [$0004], sp                                ; $751f: $08 $04 $00
    adc d                                         ; $7522: $8a
    inc b                                         ; $7523: $04
    call nz, Call_000_2644                        ; $7524: $c4 $44 $26
    ld [$a12d], a                                 ; $7527: $ea $2d $a1
    and d                                         ; $752a: $a2
    nop                                           ; $752b: $00
    ld bc, $0014                                  ; $752c: $01 $14 $00
    add e                                         ; $752f: $83
    inc l                                         ; $7530: $2c
    ld [hl-], a                                   ; $7531: $32
    ld [bc], a                                    ; $7532: $02
    ld [bc], a                                    ; $7533: $02
    ld bc, $0b83                                  ; $7534: $01 $83 $0b
    nop                                           ; $7537: $00
    jr jr_0f8_753c                                ; $7538: $18 $02

    jr nz, jr_0f8_74be                            ; $753a: $20 $82

jr_0f8_753c:
    nop                                           ; $753c: $00
    jr nz, jr_0f8_754b                            ; $753d: $20 $0c

    nop                                           ; $753f: $00
    rst $38                                       ; $7540: $ff
    ld de, $ec06                                  ; $7541: $11 $06 $ec
    dec d                                         ; $7544: $15
    rst $28                                       ; $7545: $ef
    ld de, $effa                                  ; $7546: $11 $fa $ef
    push af                                       ; $7549: $f5
    rst $30                                       ; $754a: $f7

jr_0f8_754b:
    dec b                                         ; $754b: $05
    rst $30                                       ; $754c: $f7
    db $f4                                        ; $754d: $f4
    rst $38                                       ; $754e: $ff
    inc b                                         ; $754f: $04
    rst $38                                       ; $7550: $ff
    rst $30                                       ; $7551: $f7
    rlca                                          ; $7552: $07
    adc d                                         ; $7553: $8a
    inc bc                                        ; $7554: $03
    ld [bc], a                                    ; $7555: $02
    nop                                           ; $7556: $00
    ld bc, $0100                                  ; $7557: $01 $00 $01
    inc b                                         ; $755a: $04
    ld [$0c00], sp                                ; $755b: $08 $00 $0c
    inc bc                                        ; $755e: $03
    nop                                           ; $755f: $00
    ld [bc], a                                    ; $7560: $02
    inc c                                         ; $7561: $0c
    add h                                         ; $7562: $84
    inc de                                        ; $7563: $13
    dec d                                         ; $7564: $15
    dec de                                        ; $7565: $1b
    nop                                           ; $7566: $00
    ld [bc], a                                    ; $7567: $02
    ld [bc], a                                    ; $7568: $02
    add l                                         ; $7569: $85
    ld bc, $0700                                  ; $756a: $01 $00 $07
    inc b                                         ; $756d: $04
    ld b, $06                                     ; $756e: $06 $06

jr_0f8_7570:
    nop                                           ; $7570: $00
    adc b                                         ; $7571: $88
    ld de, $2812                                  ; $7572: $11 $12 $28
    dec [hl]                                      ; $7575: $35
    nop                                           ; $7576: $00
    ld e, b                                       ; $7577: $58
    db $10                                        ; $7578: $10
    ld [hl], b                                    ; $7579: $70
    ld [bc], a                                    ; $757a: $02
    ld bc, $0281                                  ; $757b: $01 $81 $02
    ld [bc], a                                    ; $757e: $02
    add h                                         ; $757f: $84
    add e                                         ; $7580: $83
    ld a, [bc]                                    ; $7581: $0a
    sbc h                                         ; $7582: $9c
    sbc [hl]                                      ; $7583: $9e
    ld [bc], a                                    ; $7584: $02

jr_0f8_7585:
    nop                                           ; $7585: $00
    ld [bc], a                                    ; $7586: $02
    dec b                                         ; $7587: $05
    ld [bc], a                                    ; $7588: $02
    ld [$4602], sp                                ; $7589: $08 $02 $46
    add h                                         ; $758c: $84
    ld hl, $2a2d                                  ; $758d: $21 $2d $2a
    ld [hl], $02                                  ; $7590: $36 $02
    ld a, [bc]                                    ; $7592: $0a
    ld [bc], a                                    ; $7593: $02
    db $10                                        ; $7594: $10
    ld [bc], a                                    ; $7595: $02
    ld [$048e], sp                                ; $7596: $08 $8e $04
    call nz, Call_0f8_4000                        ; $7599: $c4 $00 $40
    nop                                           ; $759c: $00
    ldh [$a0], a                                  ; $759d: $e0 $a0
    ld d, b                                       ; $759f: $50
    ld e, e                                       ; $75a0: $5b
    rst $20                                       ; $75a1: $e7
    inc h                                         ; $75a2: $24
    inc de                                        ; $75a3: $13
    inc d                                         ; $75a4: $14
    ld [hl+], a                                   ; $75a5: $22
    stop                                          ; $75a6: $10 $00
    add e                                         ; $75a8: $83
    inc b                                         ; $75a9: $04
    add h                                         ; $75aa: $84
    ld [$8602], sp                                ; $75ab: $08 $02 $86
    add h                                         ; $75ae: $84
    add hl, bc                                    ; $75af: $09
    ld bc, $0302                                  ; $75b0: $01 $02 $03
    ld [bc], a                                    ; $75b3: $02
    nop                                           ; $75b4: $00
    adc a                                         ; $75b5: $8f
    ld b, b                                       ; $75b6: $40
    ld d, b                                       ; $75b7: $50
    db $10                                        ; $75b8: $10
    add b                                         ; $75b9: $80
    ret nz                                        ; $75ba: $c0

    ld h, b                                       ; $75bb: $60
    ld h, h                                       ; $75bc: $64
    add b                                         ; $75bd: $80
    adc b                                         ; $75be: $88
    ld b, b                                       ; $75bf: $40
    ld b, c                                       ; $75c0: $41
    dec h                                         ; $75c1: $25
    ld h, $4a                                     ; $75c2: $26 $4a
    ld c, e                                       ; $75c4: $4b
    ld [bc], a                                    ; $75c5: $02
    ld hl, $6202                                  ; $75c6: $21 $02 $62
    add h                                         ; $75c9: $84
    ret nc                                        ; $75ca: $d0

    call c, $0c08                                 ; $75cb: $dc $08 $0c
    ld [bc], a                                    ; $75ce: $02
    add b                                         ; $75cf: $80
    add h                                         ; $75d0: $84
    nop                                           ; $75d1: $00
    ret nz                                        ; $75d2: $c0

    add b                                         ; $75d3: $80
    ret nz                                        ; $75d4: $c0

    ld [bc], a                                    ; $75d5: $02
    nop                                           ; $75d6: $00
    adc b                                         ; $75d7: $88
    ld [bc], a                                    ; $75d8: $02
    rlca                                          ; $75d9: $07
    ld l, $31                                     ; $75da: $2e $31
    dec h                                         ; $75dc: $25
    dec sp                                        ; $75dd: $3b
    ld [$0e0e], sp                                ; $75de: $08 $0e $0e
    nop                                           ; $75e1: $00
    adc h                                         ; $75e2: $8c
    ld b, b                                       ; $75e3: $40
    add b                                         ; $75e4: $80
    jr nz, jr_0f8_7627                            ; $75e5: $20 $40

    and b                                         ; $75e7: $a0
    ld d, b                                       ; $75e8: $50
    ld b, b                                       ; $75e9: $40
    ld [hl], b                                    ; $75ea: $70
    jr nz, @+$3a                                  ; $75eb: $20 $38

    nop                                           ; $75ed: $00
    db $10                                        ; $75ee: $10
    ld [bc], a                                    ; $75ef: $02
    nop                                           ; $75f0: $00
    ld [bc], a                                    ; $75f1: $02
    ld [$0089], sp                                ; $75f2: $08 $89 $00
    adc b                                         ; $75f5: $88
    add b                                         ; $75f6: $80
    ld b, h                                       ; $75f7: $44
    inc b                                         ; $75f8: $04
    add d                                         ; $75f9: $82
    ld a, [bc]                                    ; $75fa: $0a
    inc e                                         ; $75fb: $1c
    inc d                                         ; $75fc: $14

Jump_0f8_75fd:
    ld [bc], a                                    ; $75fd: $02
    jr z, jr_0f8_7585                             ; $75fe: $28 $85

    inc [hl]                                      ; $7600: $34
    ld b, h                                       ; $7601: $44
    sbc h                                         ; $7602: $9c
    nop                                           ; $7603: $00
    ret nz                                        ; $7604: $c0

    rst $38                                       ; $7605: $ff
    dec d                                         ; $7606: $15
    ld [$15ec], sp                                ; $7607: $08 $ec $15
    rst $28                                       ; $760a: $ef
    ld de, $f2f2                                  ; $760b: $11 $f2 $f2
    rst $28                                       ; $760e: $ef
    ld a, [$02f1]                                 ; $760f: $fa $f1 $02

jr_0f8_7612:
    push af                                       ; $7612: $f5
    add hl, bc                                    ; $7613: $09
    rst $38                                       ; $7614: $ff
    ldh a, [rIE]                                  ; $7615: $f0 $ff
    ld hl, sp-$01                                 ; $7617: $f8 $ff
    rst $38                                       ; $7619: $ff
    rst $38                                       ; $761a: $ff
    rlca                                          ; $761b: $07
    add c                                         ; $761c: $81
    nop                                           ; $761d: $00
    ld [bc], a                                    ; $761e: $02
    ld bc, $0283                                  ; $761f: $01 $83 $02
    nop                                           ; $7622: $00
    ld bc, $0003                                  ; $7623: $01 $03 $00
    add a                                         ; $7626: $87

jr_0f8_7627:
    ld b, b                                       ; $7627: $40
    ret nc                                        ; $7628: $d0

    jr nc, jr_0f8_7630                            ; $7629: $30 $05

    push hl                                       ; $762b: $e5
    ld [bc], a                                    ; $762c: $02
    ld b, e                                       ; $762d: $43
    ld [bc], a                                    ; $762e: $02
    inc b                                         ; $762f: $04

jr_0f8_7630:
    add [hl]                                      ; $7630: $86
    ld [bc], a                                    ; $7631: $02
    inc bc                                        ; $7632: $03
    dec b                                         ; $7633: $05
    ld b, $00                                     ; $7634: $06 $00

jr_0f8_7636:
    ld bc, $8002                                  ; $7636: $01 $02 $80
    add d                                         ; $7639: $82
    ld [$0288], sp                                ; $763a: $08 $88 $02
    ld b, c                                       ; $763d: $41
    add e                                         ; $763e: $83
    ld b, b                                       ; $763f: $40
    ret nz                                        ; $7640: $c0

    nop                                           ; $7641: $00
    ld [bc], a                                    ; $7642: $02
    ld h, b                                       ; $7643: $60
    adc c                                         ; $7644: $89
    ld d, h                                       ; $7645: $54
    inc e                                         ; $7646: $1c
    ld [hl+], a                                   ; $7647: $22
    ld [bc], a                                    ; $7648: $02
    sub $40                                       ; $7649: $d6 $40
    and b                                         ; $764b: $a0
    nop                                           ; $764c: $00
    ld b, b                                       ; $764d: $40
    ld [bc], a                                    ; $764e: $02
    nop                                           ; $764f: $00
    ld [bc], a                                    ; $7650: $02
    inc bc                                        ; $7651: $03
    ld [bc], a                                    ; $7652: $02
    ld d, c                                       ; $7653: $51
    add h                                         ; $7654: $84
    ld d, h                                       ; $7655: $54
    ld [hl], h                                    ; $7656: $74
    jr z, jr_0f8_7682                             ; $7657: $28 $29

    ld [bc], a                                    ; $7659: $02
    nop                                           ; $765a: $00
    ld [bc], a                                    ; $765b: $02
    ld e, d                                       ; $765c: $5a
    add d                                         ; $765d: $82
    ld [hl], h                                    ; $765e: $74
    cp $02                                        ; $765f: $fe $02
    xor l                                         ; $7661: $ad
    ld [bc], a                                    ; $7662: $02
    ld [de], a                                    ; $7663: $12
    ld [bc], a                                    ; $7664: $02
    ld b, b                                       ; $7665: $40
    adc d                                         ; $7666: $8a
    jr z, jr_0f8_7695                             ; $7667: $28 $2c

    ld b, h                                       ; $7669: $44
    ld c, d                                       ; $766a: $4a
    ld a, [bc]                                    ; $766b: $0a
    add hl, bc                                    ; $766c: $09
    ld [bc], a                                    ; $766d: $02
    dec b                                         ; $766e: $05
    ld b, b                                       ; $766f: $40
    jp nz, $8002                                  ; $7670: $c2 $02 $80

    add [hl]                                      ; $7673: $86
    nop                                           ; $7674: $00
    ret nz                                        ; $7675: $c0

    add h                                         ; $7676: $84
    inc h                                         ; $7677: $24
    jp nz, Jump_000_0286                          ; $7678: $c2 $86 $02

    call nc, Call_0f8_5082                        ; $767b: $d4 $82 $50
    ld [hl], b                                    ; $767e: $70
    ld [bc], a                                    ; $767f: $02
    jr nz, jr_0f8_7612                            ; $7680: $20 $90

jr_0f8_7682:
    nop                                           ; $7682: $00
    ld a, [bc]                                    ; $7683: $0a
    ld c, [hl]                                    ; $7684: $4e
    ld c, c                                       ; $7685: $49
    sub h                                         ; $7686: $94
    sub [hl]                                      ; $7687: $96
    nop                                           ; $7688: $00
    jr nc, jr_0f8_76eb                            ; $7689: $30 $60

    ld a, b                                       ; $768b: $78
    db $10                                        ; $768c: $10
    jr z, jr_0f8_76af                             ; $768d: $28 $20

    jr z, jr_0f8_76a1                             ; $768f: $28 $10

    jr jr_0f8_7695                                ; $7691: $18 $02

    nop                                           ; $7693: $00
    ld [bc], a                                    ; $7694: $02

jr_0f8_7695:
    ld b, b                                       ; $7695: $40
    ld [bc], a                                    ; $7696: $02
    jr nz, jr_0f8_769b                            ; $7697: $20 $02

    ld b, b                                       ; $7699: $40
    add d                                         ; $769a: $82

jr_0f8_769b:
    nop                                           ; $769b: $00
    ld bc, $0005                                  ; $769c: $01 $05 $00
    sub c                                         ; $769f: $91
    inc bc                                        ; $76a0: $03

jr_0f8_76a1:
    adc b                                         ; $76a1: $88
    adc a                                         ; $76a2: $8f
    ld b, d                                       ; $76a3: $42
    ld b, l                                       ; $76a4: $45
    add c                                         ; $76a5: $81
    add e                                         ; $76a6: $83
    nop                                           ; $76a7: $00
    ret nz                                        ; $76a8: $c0

    ld b, b                                       ; $76a9: $40
    add b                                         ; $76aa: $80
    nop                                           ; $76ab: $00
    ld b, b                                       ; $76ac: $40
    ld h, b                                       ; $76ad: $60
    db $10                                        ; $76ae: $10

jr_0f8_76af:
    ld bc, $0221                                  ; $76af: $01 $21 $02
    jr nc, jr_0f8_7636                            ; $76b2: $30 $82

    nop                                           ; $76b4: $00
    ld b, b                                       ; $76b5: $40
    ld [bc], a                                    ; $76b6: $02
    inc d                                         ; $76b7: $14
    ld [bc], a                                    ; $76b8: $02
    ld [$0005], sp                                ; $76b9: $08 $05 $00
    add a                                         ; $76bc: $87
    ld [$1e02], sp                                ; $76bd: $08 $02 $1e
    dec b                                         ; $76c0: $05
    ld a, [bc]                                    ; $76c1: $0a
    ld [bc], a                                    ; $76c2: $02
    ld b, $02                                     ; $76c3: $06 $02
    nop                                           ; $76c5: $00
    add h                                         ; $76c6: $84
    ld a, [hl+]                                   ; $76c7: $2a
    ld l, $14                                     ; $76c8: $2e $14
    ld [hl], $02                                  ; $76ca: $36 $02
    dec hl                                        ; $76cc: $2b
    ld [bc], a                                    ; $76cd: $02
    ld [bc], a                                    ; $76ce: $02
    ld [bc], a                                    ; $76cf: $02
    ld b, l                                       ; $76d0: $45
    adc b                                         ; $76d1: $88
    ret                                           ; $76d2: $c9


    call Call_0f8_5323                            ; $76d3: $cd $23 $53
    ld b, b                                       ; $76d6: $40
    or b                                          ; $76d7: $b0
    add b                                         ; $76d8: $80
    and b                                         ; $76d9: $a0
    ld b, $00                                     ; $76da: $06 $00
    adc d                                         ; $76dc: $8a
    jr nz, jr_0f8_76df                            ; $76dd: $20 $00

jr_0f8_76df:
    ld b, b                                       ; $76df: $40
    ld [hl], b                                    ; $76e0: $70
    inc d                                         ; $76e1: $14
    ld l, h                                       ; $76e2: $6c
    inc b                                         ; $76e3: $04
    inc [hl]                                      ; $76e4: $34
    jr nz, jr_0f8_7747                            ; $76e5: $20 $60

    ld [bc], a                                    ; $76e7: $02
    ld b, b                                       ; $76e8: $40
    add d                                         ; $76e9: $82

jr_0f8_76ea:
    dec h                                         ; $76ea: $25

jr_0f8_76eb:
    scf                                           ; $76eb: $37
    ld [bc], a                                    ; $76ec: $02
    ld c, d                                       ; $76ed: $4a
    ld [bc], a                                    ; $76ee: $02
    db $10                                        ; $76ef: $10
    ld [bc], a                                    ; $76f0: $02
    nop                                           ; $76f1: $00
    ld [bc], a                                    ; $76f2: $02

jr_0f8_76f3:
    ld [hl+], a                                   ; $76f3: $22
    add [hl]                                      ; $76f4: $86
    ld b, [hl]                                    ; $76f5: $46
    ld h, h                                       ; $76f6: $64
    ld [bc], a                                    ; $76f7: $02
    ld h, l                                       ; $76f8: $65
    nop                                           ; $76f9: $00
    inc bc                                        ; $76fa: $03
    ld [bc], a                                    ; $76fb: $02
    ld b, b                                       ; $76fc: $40
    ld [bc], a                                    ; $76fd: $02
    jr z, jr_0f8_7702                             ; $76fe: $28 $02

    ld c, b                                       ; $7700: $48
    add [hl]                                      ; $7701: $86

jr_0f8_7702:
    inc d                                         ; $7702: $14
    db $10                                        ; $7703: $10
    rlca                                          ; $7704: $07

jr_0f8_7705:
    ld bc, $0300                                  ; $7705: $01 $00 $03
    stop                                          ; $7708: $10 $00
    ld [bc], a                                    ; $770a: $02
    db $10                                        ; $770b: $10
    adc d                                         ; $770c: $8a
    nop                                           ; $770d: $00
    ld a, [de]                                    ; $770e: $1a
    jr z, @+$34                                   ; $770f: $28 $32

    ld [bc], a                                    ; $7711: $02
    dec b                                         ; $7712: $05
    ld bc, $000b                                  ; $7713: $01 $0b $00
    jr @+$06                                      ; $7716: $18 $04

    nop                                           ; $7718: $00
    rst $38                                       ; $7719: $ff
    ld hl, $ec0e                                  ; $771a: $21 $0e $ec
    dec d                                         ; $771d: $15
    rst $28                                       ; $771e: $ef
    ld de, $eff0                                  ; $771f: $11 $f0 $ef
    xor $f7                                       ; $7722: $ee $f7
    rst $28                                       ; $7724: $ef
    rst $38                                       ; $7725: $ff
    xor $07                                       ; $7726: $ee $07
    di                                            ; $7728: $f3
    inc c                                         ; $7729: $0c
    cp $ec                                        ; $772a: $fe $ec
    nop                                           ; $772c: $00
    db $f4                                        ; $772d: $f4
    rst $38                                       ; $772e: $ff
    db $fc                                        ; $772f: $fc
    rst $38                                       ; $7730: $ff
    inc b                                         ; $7731: $04
    inc bc                                        ; $7732: $03
    inc c                                         ; $7733: $0c
    inc bc                                        ; $7734: $03
    dec c                                         ; $7735: $0d
    ld c, $f3                                     ; $7736: $0e $f3

jr_0f8_7738:
    ld c, $f6                                     ; $7738: $0e $f6
    ld c, $00                                     ; $773a: $0e $00
    add c                                         ; $773c: $81
    nop                                           ; $773d: $00
    ld [bc], a                                    ; $773e: $02
    ld [bc], a                                    ; $773f: $02
    ld [bc], a                                    ; $7740: $02
    ld bc, $0381                                  ; $7741: $01 $81 $03
    inc b                                         ; $7744: $04
    nop                                           ; $7745: $00
    add a                                         ; $7746: $87

jr_0f8_7747:
    ld bc, $6c31                                  ; $7747: $01 $31 $6c
    inc e                                         ; $774a: $1c
    nop                                           ; $774b: $00
    ld [hl], b                                    ; $774c: $70
    add b                                         ; $774d: $80
    inc bc                                        ; $774e: $03
    ld b, b                                       ; $774f: $40
    ld [bc], a                                    ; $7750: $02
    ld bc, $0082                                  ; $7751: $01 $82 $00
    ld bc, $2002                                  ; $7754: $01 $02 $20
    add h                                         ; $7757: $84
    ld bc, $50e1                                  ; $7758: $01 $e1 $50
    sub b                                         ; $775b: $90
    inc bc                                        ; $775c: $03
    nop                                           ; $775d: $00
    ld [bc], a                                    ; $775e: $02
    jr jr_0f8_76ea                                ; $775f: $18 $89

    sub h                                         ; $7761: $94
    add [hl]                                      ; $7762: $86
    ld c, b                                       ; $7763: $48
    ld b, b                                       ; $7764: $40
    db $f4                                        ; $7765: $f4
    ld d, b                                       ; $7766: $50

jr_0f8_7767:
    xor b                                         ; $7767: $a8
    nop                                           ; $7768: $00
    ld d, b                                       ; $7769: $50
    inc b                                         ; $776a: $04
    nop                                           ; $776b: $00
    ld [bc], a                                    ; $776c: $02
    jr z, jr_0f8_76f3                             ; $776d: $28 $84

    xor d                                         ; $776f: $aa
    cp d                                          ; $7770: $ba
    ld d, c                                       ; $7771: $51
    ld d, e                                       ; $7772: $53
    ld [bc], a                                    ; $7773: $02
    nop                                           ; $7774: $00
    add h                                         ; $7775: $84
    ld l, c                                       ; $7776: $69
    ld l, e                                       ; $7777: $6b
    cp d                                          ; $7778: $ba
    db $fd                                        ; $7779: $fd
    ld [bc], a                                    ; $777a: $02
    sub $02                                       ; $777b: $d6 $02
    jr nz, jr_0f8_7705                            ; $777d: $20 $86

    nop                                           ; $777f: $00
    ld b, b                                       ; $7780: $40
    ld b, [hl]                                    ; $7781: $46
    daa                                           ; $7782: $27
    inc hl                                        ; $7783: $23
    ld h, d                                       ; $7784: $62
    ld [bc], a                                    ; $7785: $02
    rlca                                          ; $7786: $07
    add d                                         ; $7787: $82
    nop                                           ; $7788: $00
    ld bc, $8002                                  ; $7789: $01 $02 $80
    ld [bc], a                                    ; $778c: $02
    nop                                           ; $778d: $00
    ld [bc], a                                    ; $778e: $02
    add hl, bc                                    ; $778f: $09
    add d                                         ; $7790: $82
    add d                                         ; $7791: $82
    add e                                         ; $7792: $83
    ld [bc], a                                    ; $7793: $02
    ld b, $86                                     ; $7794: $06 $86
    add [hl]                                      ; $7796: $86
    add h                                         ; $7797: $84
    inc b                                         ; $7798: $04
    add hl, bc                                    ; $7799: $09
    add b                                         ; $779a: $80
    add [hl]                                      ; $779b: $86

jr_0f8_779c:
    ld [bc], a                                    ; $779c: $02
    jr nz, jr_0f8_77a1                            ; $779d: $20 $02

    db $10                                        ; $779f: $10
    add a                                         ; $77a0: $87

jr_0f8_77a1:
    inc l                                         ; $77a1: $2c
    xor h                                         ; $77a2: $ac
    ld b, b                                       ; $77a3: $40
    and b                                         ; $77a4: $a0
    jr nz, jr_0f8_7807                            ; $77a5: $20 $60

    nop                                           ; $77a7: $00
    ld [bc], a                                    ; $77a8: $02
    jr nz, jr_0f8_7738                            ; $77a9: $20 $8d

    sub b                                         ; $77ab: $90
    or b                                          ; $77ac: $b0
    ld c, b                                       ; $77ad: $48
    sub c                                         ; $77ae: $91
    ld a, [hl+]                                   ; $77af: $2a
    nop                                           ; $77b0: $00
    sub c                                         ; $77b1: $91
    nop                                           ; $77b2: $00
    ld [bc], a                                    ; $77b3: $02
    ld b, $07                                     ; $77b4: $06 $07
    add e                                         ; $77b6: $83
    add d                                         ; $77b7: $82
    ld [bc], a                                    ; $77b8: $02
    and [hl]                                      ; $77b9: $a6
    add d                                         ; $77ba: $82
    ld de, $0231                                  ; $77bb: $11 $31 $02
    jr nz, jr_0f8_77c7                            ; $77be: $20 $07

    nop                                           ; $77c0: $00
    inc bc                                        ; $77c1: $03
    db $10                                        ; $77c2: $10
    ld [bc], a                                    ; $77c3: $02
    nop                                           ; $77c4: $00
    add h                                         ; $77c5: $84
    inc b                                         ; $77c6: $04

jr_0f8_77c7:
    ld a, [de]                                    ; $77c7: $1a
    ld a, [bc]                                    ; $77c8: $0a
    ld e, $03                                     ; $77c9: $1e $03
    nop                                           ; $77cb: $00
    add c                                         ; $77cc: $81
    db $10                                        ; $77cd: $10
    ld b, $00                                     ; $77ce: $06 $00
    add c                                         ; $77d0: $81
    inc b                                         ; $77d1: $04
    ld [bc], a                                    ; $77d2: $02
    ld a, [bc]                                    ; $77d3: $0a
    add c                                         ; $77d4: $81
    ld c, $03                                     ; $77d5: $0e $03
    nop                                           ; $77d7: $00
    add c                                         ; $77d8: $81
    ld b, $03                                     ; $77d9: $06 $03
    nop                                           ; $77db: $00
    add c                                         ; $77dc: $81
    inc bc                                        ; $77dd: $03
    ld [bc], a                                    ; $77de: $02
    jr nz, jr_0f8_7767                            ; $77df: $20 $86

    ld b, b                                       ; $77e1: $40
    and b                                         ; $77e2: $a0
    jr nz, jr_0f8_7845                            ; $77e3: $20 $60

    ld bc, $0207                                  ; $77e5: $01 $07 $02
    nop                                           ; $77e8: $00
    adc b                                         ; $77e9: $88
    jr jr_0f8_77f0                                ; $77ea: $18 $04

    jr nz, jr_0f8_7846                            ; $77ec: $20 $58

    inc e                                         ; $77ee: $1c
    inc a                                         ; $77ef: $3c

jr_0f8_77f0:
    ld bc, $0911                                  ; $77f0: $01 $11 $09
    nop                                           ; $77f3: $00
    adc c                                         ; $77f4: $89
    inc b                                         ; $77f5: $04
    ld [bc], a                                    ; $77f6: $02
    ld c, $00                                     ; $77f7: $0e $00
    dec b                                         ; $77f9: $05
    xor d                                         ; $77fa: $aa
    xor e                                         ; $77fb: $ab
    ld d, l                                       ; $77fc: $55
    ld e, l                                       ; $77fd: $5d
    ld [bc], a                                    ; $77fe: $02
    ld [$0202], sp                                ; $77ff: $08 $02 $02
    ld [bc], a                                    ; $7802: $02
    nop                                           ; $7803: $00
    ld [bc], a                                    ; $7804: $02
    jr z, jr_0f8_7809                             ; $7805: $28 $02

jr_0f8_7807:
    add hl, de                                    ; $7807: $19
    add h                                         ; $7808: $84

jr_0f8_7809:
    inc b                                         ; $7809: $04
    ld [$160a], sp                                ; $780a: $08 $0a $16
    ld [bc], a                                    ; $780d: $02
    db $10                                        ; $780e: $10
    ld [bc], a                                    ; $780f: $02
    nop                                           ; $7810: $00
    ld [bc], a                                    ; $7811: $02
    jr nz, jr_0f8_779c                            ; $7812: $20 $88

    ld bc, $8200                                  ; $7814: $01 $00 $82
    add c                                         ; $7817: $81
    ld b, l                                       ; $7818: $45
    add a                                         ; $7819: $87
    add h                                         ; $781a: $84
    add l                                         ; $781b: $85
    ld [bc], a                                    ; $781c: $02
    ld b, b                                       ; $781d: $40
    add h                                         ; $781e: $84
    xor b                                         ; $781f: $a8
    xor c                                         ; $7820: $a9
    ld b, c                                       ; $7821: $41
    pop bc                                        ; $7822: $c1
    ld [bc], a                                    ; $7823: $02
    ret nz                                        ; $7824: $c0

    ld [bc], a                                    ; $7825: $02
    add d                                         ; $7826: $82
    ld [bc], a                                    ; $7827: $02
    ld bc, $1084                                  ; $7828: $01 $84 $10
    ld [de], a                                    ; $782b: $12
    ld [hl+], a                                   ; $782c: $22
    and d                                         ; $782d: $a2
    ld [bc], a                                    ; $782e: $02
    ld d, c                                       ; $782f: $51
    add d                                         ; $7830: $82
    ld [bc], a                                    ; $7831: $02
    inc bc                                        ; $7832: $03
    ld [bc], a                                    ; $7833: $02
    nop                                           ; $7834: $00
    ld [bc], a                                    ; $7835: $02
    jr nz, jr_0f8_783a                            ; $7836: $20 $02

    ld d, b                                       ; $7838: $50
    ld [bc], a                                    ; $7839: $02

jr_0f8_783a:
    nop                                           ; $783a: $00
    add d                                         ; $783b: $82
    ld [bc], a                                    ; $783c: $02
    add d                                         ; $783d: $82
    ld [bc], a                                    ; $783e: $02
    nop                                           ; $783f: $00
    ld [bc], a                                    ; $7840: $02
    inc c                                         ; $7841: $0c
    add [hl]                                      ; $7842: $86
    adc b                                         ; $7843: $88
    ld c, b                                       ; $7844: $48

jr_0f8_7845:
    add d                                         ; $7845: $82

jr_0f8_7846:
    ld [bc], a                                    ; $7846: $02
    add h                                         ; $7847: $84
    sub h                                         ; $7848: $94
    ld [bc], a                                    ; $7849: $02
    nop                                           ; $784a: $00
    ld [bc], a                                    ; $784b: $02
    ld b, b                                       ; $784c: $40
    adc c                                         ; $784d: $89
    and b                                         ; $784e: $a0
    ldh [rHDMA2], a                               ; $784f: $e0 $52
    ld e, d                                       ; $7851: $5a
    jr c, jr_0f8_7878                             ; $7852: $38 $24

    add d                                         ; $7854: $82
    xor e                                         ; $7855: $ab
    ld bc, $0003                                  ; $7856: $01 $03 $00
    add h                                         ; $7859: $84
    ld [bc], a                                    ; $785a: $02
    inc bc                                        ; $785b: $03
    nop                                           ; $785c: $00
    inc bc                                        ; $785d: $03
    ld [bc], a                                    ; $785e: $02
    add c                                         ; $785f: $81
    ld [bc], a                                    ; $7860: $02
    add b                                         ; $7861: $80
    add [hl]                                      ; $7862: $86
    dec b                                         ; $7863: $05
    ld b, $84                                     ; $7864: $06 $84
    adc d                                         ; $7866: $8a
    ld [bc], a                                    ; $7867: $02
    ld b, $05                                     ; $7868: $06 $05
    nop                                           ; $786a: $00
    add e                                         ; $786b: $83
    ld b, b                                       ; $786c: $40

jr_0f8_786d:
    nop                                           ; $786d: $00
    ld b, b                                       ; $786e: $40
    ld [bc], a                                    ; $786f: $02
    nop                                           ; $7870: $00
    add h                                         ; $7871: $84
    jr nz, @+$52                                  ; $7872: $20 $50

    db $10                                        ; $7874: $10
    or b                                          ; $7875: $b0
    dec c                                         ; $7876: $0d
    nop                                           ; $7877: $00

jr_0f8_7878:
    add c                                         ; $7878: $81
    ld bc, $001e                                  ; $7879: $01 $1e $00
    add c                                         ; $787c: $81
    add b                                         ; $787d: $80
    ld [bc], a                                    ; $787e: $02
    nop                                           ; $787f: $00
    add c                                         ; $7880: $81
    add b                                         ; $7881: $80
    ld [bc], a                                    ; $7882: $02
    nop                                           ; $7883: $00
    add h                                         ; $7884: $84
    ld bc, $0002                                  ; $7885: $01 $02 $00
    ld bc, $0018                                  ; $7888: $01 $18 $00
    add c                                         ; $788b: $81
    ld [bc], a                                    ; $788c: $02
    ld [bc], a                                    ; $788d: $02
    ld bc, $0382                                  ; $788e: $01 $82 $03
    nop                                           ; $7891: $00
    inc bc                                        ; $7892: $03
    inc b                                         ; $7893: $04
    jr jr_0f8_7896                                ; $7894: $18 $00

jr_0f8_7896:
    adc d                                         ; $7896: $8a
    db $10                                        ; $7897: $10
    inc d                                         ; $7898: $14
    rrca                                          ; $7899: $0f
    add hl, de                                    ; $789a: $19
    inc b                                         ; $789b: $04
    dec bc                                        ; $789c: $0b
    ld [$0014], sp                                ; $789d: $08 $14 $00
    ld [$0014], sp                                ; $78a0: $08 $14 $00
    rst $38                                       ; $78a3: $ff
    rra                                           ; $78a4: $1f
    dec c                                         ; $78a5: $0d
    db $ec                                        ; $78a6: $ec
    dec d                                         ; $78a7: $15
    rst $28                                       ; $78a8: $ef
    ld de, $ecf1                                  ; $78a9: $11 $f1 $ec
    ldh a, [$f4]                                  ; $78ac: $f0 $f4
    db $ed                                        ; $78ae: $ed
    db $fd                                        ; $78af: $fd
    ldh a, [rTIMA]                                ; $78b0: $f0 $05
    ld hl, sp+$0d                                 ; $78b2: $f8 $0d
    nop                                           ; $78b4: $00
    xor $00                                       ; $78b5: $ee $00
    or $fd                                        ; $78b7: $f6 $fd
    cp $00                                        ; $78b9: $fe $00
    dec b                                         ; $78bb: $05
    ld [$0d09], sp                                ; $78bc: $08 $09 $0d
    db $f4                                        ; $78bf: $f4
    dec c                                         ; $78c0: $0d
    rst $38                                       ; $78c1: $ff
    dec c                                         ; $78c2: $0d
    ld bc, $0102                                  ; $78c3: $01 $02 $01
    add d                                         ; $78c6: $82
    nop                                           ; $78c7: $00
    ld bc, $000a                                  ; $78c8: $01 $0a $00
    adc b                                         ; $78cb: $88
    jr nz, jr_0f8_78fe                            ; $78cc: $20 $30

    db $10                                        ; $78ce: $10
    jr z, jr_0f8_7921                             ; $78cf: $28 $50

    or b                                          ; $78d1: $b0
    nop                                           ; $78d2: $00
    ld h, b                                       ; $78d3: $60
    ld [bc], a                                    ; $78d4: $02
    ld b, b                                       ; $78d5: $40
    add d                                         ; $78d6: $82
    nop                                           ; $78d7: $00
    jr nc, jr_0f8_78dc                            ; $78d8: $30 $02

    nop                                           ; $78da: $00
    adc d                                         ; $78db: $8a

jr_0f8_78dc:
    jr z, jr_0f8_7916                             ; $78dc: $28 $38

    ld [de], a                                    ; $78de: $12
    ld a, [hl+]                                   ; $78df: $2a
    ld [de], a                                    ; $78e0: $12
    ld d, $04                                     ; $78e1: $16 $04
    cp d                                          ; $78e3: $ba
    adc b                                         ; $78e4: $88
    ld e, h                                       ; $78e5: $5c
    ld [bc], a                                    ; $78e6: $02
    jr nz, jr_0f8_786d                            ; $78e7: $20 $84

    db $10                                        ; $78e9: $10
    ld b, b                                       ; $78ea: $40
    add hl, hl                                    ; $78eb: $29
    ld a, c                                       ; $78ec: $79
    ld [bc], a                                    ; $78ed: $02
    add l                                         ; $78ee: $85
    ld [bc], a                                    ; $78ef: $02
    ld [bc], a                                    ; $78f0: $02
    ld [bc], a                                    ; $78f1: $02
    nop                                           ; $78f2: $00
    ld [bc], a                                    ; $78f3: $02
    ld e, d                                       ; $78f4: $5a
    add d                                         ; $78f5: $82
    ld l, $7e                                     ; $78f6: $2e $7e
    ld [bc], a                                    ; $78f8: $02
    inc [hl]                                      ; $78f9: $34
    ld [bc], a                                    ; $78fa: $02
    ld c, b                                       ; $78fb: $48
    ld [bc], a                                    ; $78fc: $02
    inc bc                                        ; $78fd: $03

jr_0f8_78fe:
    ld [bc], a                                    ; $78fe: $02
    ld [bc], a                                    ; $78ff: $02
    ld [bc], a                                    ; $7900: $02
    nop                                           ; $7901: $00
    adc [hl]                                      ; $7902: $8e
    ld [$040c], sp                                ; $7903: $08 $0c $04
    ld a, [bc]                                    ; $7906: $0a
    jr nz, @+$32                                  ; $7907: $20 $30

    ld [de], a                                    ; $7909: $12
    ld a, [hl+]                                   ; $790a: $2a
    ld a, [bc]                                    ; $790b: $0a
    ld c, $04                                     ; $790c: $0e $04
    jr jr_0f8_7918                                ; $790e: $18 $08

    nop                                           ; $7910: $00
    ld [bc], a                                    ; $7911: $02
    ld bc, $4082                                  ; $7912: $01 $82 $40
    ret nz                                        ; $7915: $c0

jr_0f8_7916:
    ld [bc], a                                    ; $7916: $02
    ret nc                                        ; $7917: $d0

jr_0f8_7918:
    adc b                                         ; $7918: $88
    jr nz, @+$62                                  ; $7919: $20 $60

    db $10                                        ; $791b: $10
    ld de, $6020                                  ; $791c: $11 $20 $60
    ld d, b                                       ; $791f: $50
    or b                                          ; $7920: $b0

jr_0f8_7921:
    ld [bc], a                                    ; $7921: $02
    ret nz                                        ; $7922: $c0

    ld [bc], a                                    ; $7923: $02
    ld [bc], a                                    ; $7924: $02
    add e                                         ; $7925: $83
    db $10                                        ; $7926: $10
    jr @+$2a                                      ; $7927: $18 $28

    ld [bc], a                                    ; $7929: $02
    db $10                                        ; $792a: $10
    adc a                                         ; $792b: $8f
    ld a, [de]                                    ; $792c: $1a
    inc b                                         ; $792d: $04
    rlca                                          ; $792e: $07
    jr nz, @+$24                                  ; $792f: $20 $22

    ld e, b                                       ; $7931: $58
    ld a, h                                       ; $7932: $7c
    call nc, $c0d8                                ; $7933: $d4 $d8 $c0
    add h                                         ; $7936: $84
    adc b                                         ; $7937: $88
    jr z, @+$06                                   ; $7938: $28 $04

    call z, $0802                                 ; $793a: $cc $02 $08
    ld b, $00                                     ; $793d: $06 $00
    ld [bc], a                                    ; $793f: $02
    call z, $0802                                 ; $7940: $cc $02 $08
    adc b                                         ; $7943: $88
    add b                                         ; $7944: $80
    adc b                                         ; $7945: $88
    jr c, jr_0f8_7984                             ; $7946: $38 $3c

    inc b                                         ; $7948: $04
    ld a, [de]                                    ; $7949: $1a
    jr @+$22                                      ; $794a: $18 $20

    ld [bc], a                                    ; $794c: $02
    nop                                           ; $794d: $00
    adc d                                         ; $794e: $8a
    add b                                         ; $794f: $80
    ldh [rDIV], a                                 ; $7950: $e0 $04
    ld b, $02                                     ; $7952: $06 $02
    dec b                                         ; $7954: $05
    ld d, h                                       ; $7955: $54
    ld c, h                                       ; $7956: $4c
    nop                                           ; $7957: $00
    jr c, jr_0f8_795c                             ; $7958: $38 $02

    jr nz, jr_0f8_7960                            ; $795a: $20 $04

jr_0f8_795c:
    nop                                           ; $795c: $00
    ld [bc], a                                    ; $795d: $02
    db $10                                        ; $795e: $10

jr_0f8_795f:
    add h                                         ; $795f: $84

jr_0f8_7960:
    ld l, b                                       ; $7960: $68
    ld [hl], b                                    ; $7961: $70
    nop                                           ; $7962: $00
    ld [hl], b                                    ; $7963: $70
    ld [bc], a                                    ; $7964: $02
    ld [bc], a                                    ; $7965: $02
    ld [bc], a                                    ; $7966: $02
    dec b                                         ; $7967: $05
    dec b                                         ; $7968: $05
    nop                                           ; $7969: $00
    ld [bc], a                                    ; $796a: $02
    ld b, $8b                                     ; $796b: $06 $8b
    ld [$f3ad], sp                                ; $796d: $08 $ad $f3
    ld b, b                                       ; $7970: $40
    and h                                         ; $7971: $a4
    ld b, $49                                     ; $7972: $06 $49
    inc c                                         ; $7974: $0c
    ld d, $14                                     ; $7975: $16 $14
    inc e                                         ; $7977: $1c
    ld [bc], a                                    ; $7978: $02
    inc b                                         ; $7979: $04
    ld [$8600], sp                                ; $797a: $08 $00 $86
    and d                                         ; $797d: $a2
    or d                                          ; $797e: $b2
    ld d, l                                       ; $797f: $55
    push de                                       ; $7980: $d5
    add d                                         ; $7981: $82
    add [hl]                                      ; $7982: $86
    ld [bc], a                                    ; $7983: $02

jr_0f8_7984:
    ld h, $02                                     ; $7984: $26 $02
    inc b                                         ; $7986: $04
    ld [bc], a                                    ; $7987: $02
    nop                                           ; $7988: $00
    ld [bc], a                                    ; $7989: $02
    ld b, b                                       ; $798a: $40
    add [hl]                                      ; $798b: $86
    ret                                           ; $798c: $c9


    call Call_0f8_4222                            ; $798d: $cd $22 $42
    ld d, b                                       ; $7990: $50
    or b                                          ; $7991: $b0
    inc b                                         ; $7992: $04
    add b                                         ; $7993: $80
    adc b                                         ; $7994: $88
    ld [$1118], sp                                ; $7995: $08 $18 $11
    add hl, bc                                    ; $7998: $09
    nop                                           ; $7999: $00
    ld d, b                                       ; $799a: $50
    db $10                                        ; $799b: $10
    jr jr_0f8_79a0                                ; $799c: $18 $02

    ld [bc], a                                    ; $799e: $02
    ld [bc], a                                    ; $799f: $02

jr_0f8_79a0:
    inc b                                         ; $79a0: $04
    add h                                         ; $79a1: $84
    nop                                           ; $79a2: $00
    add b                                         ; $79a3: $80
    ld [$0209], sp                                ; $79a4: $08 $09 $02
    ld bc, $0002                                  ; $79a7: $01 $02 $00
    ld [bc], a                                    ; $79aa: $02
    jr jr_0f8_79af                                ; $79ab: $18 $02

    db $10                                        ; $79ad: $10
    ld [bc], a                                    ; $79ae: $02

jr_0f8_79af:
    ld b, h                                       ; $79af: $44
    ld [bc], a                                    ; $79b0: $02
    ld [bc], a                                    ; $79b1: $02
    add d                                         ; $79b2: $82
    ld b, c                                       ; $79b3: $41
    ld b, l                                       ; $79b4: $45
    ld [bc], a                                    ; $79b5: $02
    inc b                                         ; $79b6: $04
    ld [bc], a                                    ; $79b7: $02
    ld [bc], a                                    ; $79b8: $02
    add d                                         ; $79b9: $82
    dec b                                         ; $79ba: $05
    rlca                                          ; $79bb: $07
    ld [bc], a                                    ; $79bc: $02
    nop                                           ; $79bd: $00
    ld [bc], a                                    ; $79be: $02
    add b                                         ; $79bf: $80
    add [hl]                                      ; $79c0: $86
    ld b, b                                       ; $79c1: $40
    jr nz, jr_0f8_7a08                            ; $79c2: $20 $44

    inc b                                         ; $79c4: $04
    ld b, b                                       ; $79c5: $40
    ld c, b                                       ; $79c6: $48
    ld [bc], a                                    ; $79c7: $02
    nop                                           ; $79c8: $00
    adc b                                         ; $79c9: $88
    ld de, $0415                                  ; $79ca: $11 $15 $04
    ld [bc], a                                    ; $79cd: $02
    ld h, c                                       ; $79ce: $61
    ld h, l                                       ; $79cf: $65
    jr nz, @+$62                                  ; $79d0: $20 $60

    ld [bc], a                                    ; $79d2: $02
    ld b, b                                       ; $79d3: $40
    ld [bc], a                                    ; $79d4: $02
    jr nz, jr_0f8_795f                            ; $79d5: $20 $88

    nop                                           ; $79d7: $00
    jr nz, jr_0f8_79de                            ; $79d8: $20 $04

    rlca                                          ; $79da: $07
    dec b                                         ; $79db: $05
    ld b, $02                                     ; $79dc: $06 $02

jr_0f8_79de:
    inc bc                                        ; $79de: $03
    ld [bc], a                                    ; $79df: $02
    nop                                           ; $79e0: $00
    add [hl]                                      ; $79e1: $86
    ld b, b                                       ; $79e2: $40
    jr nz, @+$05                                  ; $79e3: $20 $03

    inc b                                         ; $79e5: $04
    nop                                           ; $79e6: $00
    ld b, $22                                     ; $79e7: $06 $22
    nop                                           ; $79e9: $00
    add h                                         ; $79ea: $84
    ld de, $0407                                  ; $79eb: $11 $07 $04
    ld b, $16                                     ; $79ee: $06 $16
    nop                                           ; $79f0: $00
    ld [bc], a                                    ; $79f1: $02
    add b                                         ; $79f2: $80
    add c                                         ; $79f3: $81
    nop                                           ; $79f4: $00
    ld [bc], a                                    ; $79f5: $02
    jr nz, jr_0f8_79fa                            ; $79f6: $20 $02

    sub b                                         ; $79f8: $90
    add l                                         ; $79f9: $85

jr_0f8_79fa:
    ld a, l                                       ; $79fa: $7d
    ld d, h                                       ; $79fb: $54
    ld [$1400], a                                 ; $79fc: $ea $00 $14
    ld a, [de]                                    ; $79ff: $1a
    nop                                           ; $7a00: $00
    add h                                         ; $7a01: $84
    inc bc                                        ; $7a02: $03
    ld bc, $0300                                  ; $7a03: $01 $00 $03
    ld d, $00                                     ; $7a06: $16 $00

jr_0f8_7a08:
    rst $38                                       ; $7a08: $ff
    rra                                           ; $7a09: $1f
    dec c                                         ; $7a0a: $0d
    db $ec                                        ; $7a0b: $ec
    dec d                                         ; $7a0c: $15
    rst $28                                       ; $7a0d: $ef
    ld de, $e9fa                                  ; $7a0e: $11 $fa $e9
    pop af                                        ; $7a11: $f1
    pop af                                        ; $7a12: $f1
    ld bc, $eef1                                  ; $7a13: $01 $f1 $ee
    ld sp, hl                                     ; $7a16: $f9
    cp $f9                                        ; $7a17: $fe $f9
    ld c, $f9                                     ; $7a19: $0e $f9
    db $ed                                        ; $7a1b: $ed
    ld bc, $01fd                                  ; $7a1c: $01 $fd $01
    dec c                                         ; $7a1f: $0d
    inc b                                         ; $7a20: $04
    rrca                                          ; $7a21: $0f
    ld bc, $09f3                                  ; $7a22: $01 $f3 $09
    inc bc                                        ; $7a25: $03
    add hl, bc                                    ; $7a26: $09
    ei                                            ; $7a27: $fb
    ld de, $0081                                  ; $7a28: $11 $81 $00
    ld [bc], a                                    ; $7a2b: $02

jr_0f8_7a2c:
    ld bc, $0384                                  ; $7a2c: $01 $84 $03
    ld [bc], a                                    ; $7a2f: $02
    dec b                                         ; $7a30: $05
    ld bc, $0005                                  ; $7a31: $01 $05 $00
    adc b                                         ; $7a34: $88
    ld [bc], a                                    ; $7a35: $02
    ld b, $04                                     ; $7a36: $06 $04
    ld a, [bc]                                    ; $7a38: $0a
    ld [bc], a                                    ; $7a39: $02
    inc bc                                        ; $7a3a: $03
    nop                                           ; $7a3b: $00
    ld bc, $0008                                  ; $7a3c: $01 $08 $00
    add c                                         ; $7a3f: $81
    ld bc, $0003                                  ; $7a40: $01 $03 $00
    adc [hl]                                      ; $7a43: $8e
    ld [$1418], sp                                ; $7a44: $08 $18 $14
    ld [$5c0c], sp                                ; $7a47: $08 $0c $5c
    jr nz, jr_0f8_7a2c                            ; $7a4a: $20 $e0

    ld [bc], a                                    ; $7a4c: $02
    ld b, d                                       ; $7a4d: $42
    ld bc, $0002                                  ; $7a4e: $01 $02 $00
    ld bc, $0302                                  ; $7a51: $01 $02 $03
    ld [bc], a                                    ; $7a54: $02
    dec b                                         ; $7a55: $05
    ld [bc], a                                    ; $7a56: $02
    db $10                                        ; $7a57: $10
    add e                                         ; $7a58: $83
    pop bc                                        ; $7a59: $c1
    jp Jump_000_0200                              ; $7a5a: $c3 $00 $02


    add b                                         ; $7a5d: $80
    add c                                         ; $7a5e: $81
    ld b, b                                       ; $7a5f: $40
    ld [bc], a                                    ; $7a60: $02
    ld bc, $1a82                                  ; $7a61: $01 $82 $1a
    ld a, e                                       ; $7a64: $7b
    ld [bc], a                                    ; $7a65: $02
    dec d                                         ; $7a66: $15
    ld [bc], a                                    ; $7a67: $02
    nop                                           ; $7a68: $00
    add h                                         ; $7a69: $84
    xor c                                         ; $7a6a: $a9
    add hl, hl                                    ; $7a6b: $29
    nop                                           ; $7a6c: $00
    ret nz                                        ; $7a6d: $c0

    ld [bc], a                                    ; $7a6e: $02
    ld b, b                                       ; $7a6f: $40
    ld [bc], a                                    ; $7a70: $02
    ld a, [de]                                    ; $7a71: $1a
    add d                                         ; $7a72: $82
    ld d, $3e                                     ; $7a73: $16 $3e
    ld [bc], a                                    ; $7a75: $02
    xor h                                         ; $7a76: $ac
    adc b                                         ; $7a77: $88
    nop                                           ; $7a78: $00
    add b                                         ; $7a79: $80
    nop                                           ; $7a7a: $00
    ldh [$da], a                                  ; $7a7b: $e0 $da
    ld a, [hl-]                                   ; $7a7d: $3a
    dec b                                         ; $7a7e: $05
    ld h, l                                       ; $7a7f: $65
    ld [bc], a                                    ; $7a80: $02
    ld bc, $0802                                  ; $7a81: $01 $02 $08
    sub e                                         ; $7a84: $93
    ld [bc], a                                    ; $7a85: $02
    rlca                                          ; $7a86: $07
    inc b                                         ; $7a87: $04
    inc bc                                        ; $7a88: $03
    ld bc, $1004                                  ; $7a89: $01 $04 $10
    jr nc, jr_0f8_7aae                            ; $7a8c: $30 $20

    ld d, b                                       ; $7a8e: $50
    inc b                                         ; $7a8f: $04
    inc c                                         ; $7a90: $0c
    ld c, b                                       ; $7a91: $48

jr_0f8_7a92:
    ld d, h                                       ; $7a92: $54
    ld d, d                                       ; $7a93: $52
    ld [hl], d                                    ; $7a94: $72
    ld hl, $1019                                  ; $7a95: $21 $19 $10
    inc bc                                        ; $7a98: $03
    nop                                           ; $7a99: $00
    add h                                         ; $7a9a: $84
    ld b, d                                       ; $7a9b: $42
    jp nz, $0581                                  ; $7a9c: $c2 $81 $05

    ld [bc], a                                    ; $7a9f: $02
    nop                                           ; $7aa0: $00
    ld [bc], a                                    ; $7aa1: $02
    ld [bc], a                                    ; $7aa2: $02
    ld [bc], a                                    ; $7aa3: $02
    nop                                           ; $7aa4: $00
    ld [bc], a                                    ; $7aa5: $02
    ld c, b                                       ; $7aa6: $48
    ld [bc], a                                    ; $7aa7: $02
    nop                                           ; $7aa8: $00
    ld [bc], a                                    ; $7aa9: $02
    ld b, b                                       ; $7aaa: $40
    ld [bc], a                                    ; $7aab: $02
    nop                                           ; $7aac: $00
    ld [bc], a                                    ; $7aad: $02

jr_0f8_7aae:
    and b                                         ; $7aae: $a0
    add e                                         ; $7aaf: $83
    ld b, h                                       ; $7ab0: $44
    ld h, h                                       ; $7ab1: $64
    nop                                           ; $7ab2: $00
    inc bc                                        ; $7ab3: $03
    inc b                                         ; $7ab4: $04
    dec b                                         ; $7ab5: $05
    nop                                           ; $7ab6: $00
    add c                                         ; $7ab7: $81
    ld [bc], a                                    ; $7ab8: $02
    ld [bc], a                                    ; $7ab9: $02
    ld [hl-], a                                   ; $7aba: $32
    add h                                         ; $7abb: $84
    ld d, b                                       ; $7abc: $50
    ld h, b                                       ; $7abd: $60
    ld b, d                                       ; $7abe: $42
    ld d, d                                       ; $7abf: $52
    ld [bc], a                                    ; $7ac0: $02
    nop                                           ; $7ac1: $00
    add h                                         ; $7ac2: $84
    add b                                         ; $7ac3: $80
    sub b                                         ; $7ac4: $90
    ld d, b                                       ; $7ac5: $50
    ret nc                                        ; $7ac6: $d0

    ld [bc], a                                    ; $7ac7: $02
    ld b, c                                       ; $7ac8: $41
    add c                                         ; $7ac9: $81
    nop                                           ; $7aca: $00
    ld [bc], a                                    ; $7acb: $02
    and b                                         ; $7acc: $a0
    adc c                                         ; $7acd: $89
    ld d, b                                       ; $7ace: $50
    add b                                         ; $7acf: $80
    add sp, $0c                                   ; $7ad0: $e8 $0c
    sub b                                         ; $7ad2: $90
    jr nc, jr_0f8_7afd                            ; $7ad3: $30 $28

    nop                                           ; $7ad5: $00
    jr nc, jr_0f8_7aef                            ; $7ad6: $30 $17

    nop                                           ; $7ad8: $00
    ld [bc], a                                    ; $7ad9: $02
    ld [$1487], sp                                ; $7ada: $08 $87 $14
    inc b                                         ; $7add: $04
    dec bc                                        ; $7ade: $0b
    rrca                                          ; $7adf: $0f
    add hl, de                                    ; $7ae0: $19
    db $10                                        ; $7ae1: $10
    inc d                                         ; $7ae2: $14
    ld [bc], a                                    ; $7ae3: $02
    adc b                                         ; $7ae4: $88
    ld [bc], a                                    ; $7ae5: $02
    jr z, jr_0f8_7aea                             ; $7ae6: $28 $02

    nop                                           ; $7ae8: $00
    add d                                         ; $7ae9: $82

jr_0f8_7aea:
    ld d, b                                       ; $7aea: $50
    ld [hl], b                                    ; $7aeb: $70
    ld [bc], a                                    ; $7aec: $02
    and b                                         ; $7aed: $a0
    add h                                         ; $7aee: $84

jr_0f8_7aef:
    ld c, d                                       ; $7aef: $4a
    ld c, e                                       ; $7af0: $4b
    sub c                                         ; $7af1: $91
    reti                                          ; $7af2: $d9


    ld [bc], a                                    ; $7af3: $02
    jr nz, @+$04                                  ; $7af4: $20 $02

    ld bc, $0282                                  ; $7af6: $01 $82 $02
    ld b, $04                                     ; $7af9: $06 $04
    nop                                           ; $7afb: $00
    ld [bc], a                                    ; $7afc: $02

jr_0f8_7afd:
    ld d, b                                       ; $7afd: $50
    ld [bc], a                                    ; $7afe: $02
    ld [bc], a                                    ; $7aff: $02
    add h                                         ; $7b00: $84
    ld h, $24                                     ; $7b01: $26 $24
    ld [bc], a                                    ; $7b03: $02
    dec h                                         ; $7b04: $25
    rlca                                          ; $7b05: $07
    nop                                           ; $7b06: $00
    add c                                         ; $7b07: $81
    inc b                                         ; $7b08: $04
    ld [bc], a                                    ; $7b09: $02
    jr jr_0f8_7a92                                ; $7b0a: $18 $86

    ld b, d                                       ; $7b0c: $42
    ld c, [hl]                                    ; $7b0d: $4e
    ld a, [bc]                                    ; $7b0e: $0a
    ld d, $4c                                     ; $7b0f: $16 $4c
    ld c, b                                       ; $7b11: $48
    ld [bc], a                                    ; $7b12: $02
    inc c                                         ; $7b13: $0c
    ld [bc], a                                    ; $7b14: $02
    ld b, h                                       ; $7b15: $44
    adc [hl]                                      ; $7b16: $8e
    db $10                                        ; $7b17: $10
    ld de, $9289                                  ; $7b18: $11 $89 $92
    ld a, e                                       ; $7b1b: $7b
    ld [hl], h                                    ; $7b1c: $74
    sub d                                         ; $7b1d: $92
    xor c                                         ; $7b1e: $a9
    jr nz, jr_0f8_7b53                            ; $7b1f: $20 $32

    ld [bc], a                                    ; $7b21: $02
    ld b, $04                                     ; $7b22: $06 $04
    ld a, [bc]                                    ; $7b24: $0a
    inc d                                         ; $7b25: $14
    nop                                           ; $7b26: $00
    add [hl]                                      ; $7b27: $86
    ld b, b                                       ; $7b28: $40
    ret nz                                        ; $7b29: $c0

    add b                                         ; $7b2a: $80
    ld b, b                                       ; $7b2b: $40
    nop                                           ; $7b2c: $00
    add b                                         ; $7b2d: $80
    ld a, [de]                                    ; $7b2e: $1a
    nop                                           ; $7b2f: $00
    ld [bc], a                                    ; $7b30: $02
    db $10                                        ; $7b31: $10
    add h                                         ; $7b32: $84
    ld bc, $223b                                  ; $7b33: $01 $3b $22
    dec [hl]                                      ; $7b36: $35
    ld [bc], a                                    ; $7b37: $02
    nop                                           ; $7b38: $00
    add [hl]                                      ; $7b39: $86
    db $10                                        ; $7b3a: $10
    ld b, h                                       ; $7b3b: $44
    ret nz                                        ; $7b3c: $c0

    inc [hl]                                      ; $7b3d: $34
    add b                                         ; $7b3e: $80
    ret nz                                        ; $7b3f: $c0

    ld [bc], a                                    ; $7b40: $02
    jr nz, jr_0f8_7b45                            ; $7b41: $20 $02

    add b                                         ; $7b43: $80
    ld [bc], a                                    ; $7b44: $02

jr_0f8_7b45:
    ld [$0004], sp                                ; $7b45: $08 $04 $00
    add d                                         ; $7b48: $82
    db $10                                        ; $7b49: $10
    ld d, b                                       ; $7b4a: $50
    ld [bc], a                                    ; $7b4b: $02
    ld [$2002], sp                                ; $7b4c: $08 $02 $20
    ld [bc], a                                    ; $7b4f: $02
    jr nc, jr_0f8_7b56                            ; $7b50: $30 $04

    nop                                           ; $7b52: $00

jr_0f8_7b53:
    ld [bc], a                                    ; $7b53: $02
    add b                                         ; $7b54: $80
    add h                                         ; $7b55: $84

jr_0f8_7b56:
    ld b, b                                       ; $7b56: $40
    ret nz                                        ; $7b57: $c0

    sub d                                         ; $7b58: $92
    sub e                                         ; $7b59: $93
    ld [bc], a                                    ; $7b5a: $02
    inc c                                         ; $7b5b: $0c
    adc h                                         ; $7b5c: $8c
    ld [de], a                                    ; $7b5d: $12
    dec d                                         ; $7b5e: $15
    inc b                                         ; $7b5f: $04
    rlca                                          ; $7b60: $07
    nop                                           ; $7b61: $00
    inc b                                         ; $7b62: $04
    ld bc, $0223                                  ; $7b63: $01 $23 $02
    dec d                                         ; $7b66: $15
    nop                                           ; $7b67: $00
    db $10                                        ; $7b68: $10
    ld [$8800], sp                                ; $7b69: $08 $00 $88
    jr nz, jr_0f8_7bce                            ; $7b6c: $20 $60

    ld b, b                                       ; $7b6e: $40
    and b                                         ; $7b6f: $a0
    ld d, b                                       ; $7b70: $50
    ld l, b                                       ; $7b71: $68
    nop                                           ; $7b72: $00
    jr nc, jr_0f8_7b78                            ; $7b73: $30 $03

    nop                                           ; $7b75: $00
    add c                                         ; $7b76: $81
    ld h, b                                       ; $7b77: $60

jr_0f8_7b78:
    ld [bc], a                                    ; $7b78: $02
    nop                                           ; $7b79: $00
    add h                                         ; $7b7a: $84
    and b                                         ; $7b7b: $a0
    ldh [rLCDC], a                                ; $7b7c: $e0 $40
    and b                                         ; $7b7e: $a0
    ld a, [bc]                                    ; $7b7f: $0a
    nop                                           ; $7b80: $00
    add h                                         ; $7b81: $84
    and b                                         ; $7b82: $a0
    ldh [rLCDC], a                                ; $7b83: $e0 $40
    and b                                         ; $7b85: $a0
    rst $38                                       ; $7b86: $ff
    rra                                           ; $7b87: $1f
    dec c                                         ; $7b88: $0d
    db $ec                                        ; $7b89: $ec
    dec d                                         ; $7b8a: $15
    rst $28                                       ; $7b8b: $ef
    ld de, $e503                                  ; $7b8c: $11 $03 $e5
    di                                            ; $7b8f: $f3
    db $ed                                        ; $7b90: $ed
    inc bc                                        ; $7b91: $03
    db $ed                                        ; $7b92: $ed
    ldh a, [$f5]                                  ; $7b93: $f0 $f5
    nop                                           ; $7b95: $00
    push af                                       ; $7b96: $f5
    db $10                                        ; $7b97: $10
    ld hl, sp-$12                                 ; $7b98: $f8 $ee
    db $fd                                        ; $7b9a: $fd
    cp $fd                                        ; $7b9b: $fe $fd
    ld c, $fd                                     ; $7b9d: $0e $fd
    ld a, [c]                                     ; $7b9f: $f2
    dec b                                         ; $7ba0: $05
    ld [bc], a                                    ; $7ba1: $02
    dec b                                         ; $7ba2: $05
    ld a, [c]                                     ; $7ba3: $f2
    dec c                                         ; $7ba4: $0d
    ld [bc], a                                    ; $7ba5: $02
    dec c                                         ; $7ba6: $0d
    ld [bc], a                                    ; $7ba7: $02
    ld [bc], a                                    ; $7ba8: $02
    ld e, $00                                     ; $7ba9: $1e $00
    ld [bc], a                                    ; $7bab: $02
    inc b                                         ; $7bac: $04
    ld [bc], a                                    ; $7bad: $02
    nop                                           ; $7bae: $00
    ld [bc], a                                    ; $7baf: $02
    ld [bc], a                                    ; $7bb0: $02
    inc b                                         ; $7bb1: $04
    nop                                           ; $7bb2: $00
    add h                                         ; $7bb3: $84
    dec d                                         ; $7bb4: $15
    dec e                                         ; $7bb5: $1d
    add b                                         ; $7bb6: $80
    sub b                                         ; $7bb7: $90
    ld [bc], a                                    ; $7bb8: $02
    ld [$0002], sp                                ; $7bb9: $08 $02 $00
    add d                                         ; $7bbc: $82
    ld [bc], a                                    ; $7bbd: $02
    inc bc                                        ; $7bbe: $03
    inc b                                         ; $7bbf: $04
    ld [bc], a                                    ; $7bc0: $02
    add h                                         ; $7bc1: $84
    ld c, $4e                                     ; $7bc2: $0e $4e
    inc b                                         ; $7bc4: $04
    sub h                                         ; $7bc5: $94
    ld [bc], a                                    ; $7bc6: $02
    ld b, d                                       ; $7bc7: $42
    ld [bc], a                                    ; $7bc8: $02
    inc bc                                        ; $7bc9: $03
    ld [bc], a                                    ; $7bca: $02
    nop                                           ; $7bcb: $00
    ld [bc], a                                    ; $7bcc: $02
    ld b, b                                       ; $7bcd: $40

jr_0f8_7bce:
    inc bc                                        ; $7bce: $03
    nop                                           ; $7bcf: $00
    add e                                         ; $7bd0: $83
    ld [bc], a                                    ; $7bd1: $02
    ld [de], a                                    ; $7bd2: $12
    ld de, $0202                                  ; $7bd3: $11 $02 $02
    inc b                                         ; $7bd6: $04
    nop                                           ; $7bd7: $00
    ld [bc], a                                    ; $7bd8: $02
    ld b, b                                       ; $7bd9: $40
    inc b                                         ; $7bda: $04
    nop                                           ; $7bdb: $00
    ld [bc], a                                    ; $7bdc: $02
    inc b                                         ; $7bdd: $04
    ld b, $00                                     ; $7bde: $06 $00
    ld [bc], a                                    ; $7be0: $02
    ld [bc], a                                    ; $7be1: $02
    ld [bc], a                                    ; $7be2: $02
    ld b, $02                                     ; $7be3: $06 $02
    jr nc, jr_0f8_7be9                            ; $7be5: $30 $02

    ld b, $86                                     ; $7be7: $06 $86

jr_0f8_7be9:
    nop                                           ; $7be9: $00
    inc b                                         ; $7bea: $04
    ld d, b                                       ; $7beb: $50
    ret nc                                        ; $7bec: $d0

    ret nz                                        ; $7bed: $c0

    ldh [rSC], a                                  ; $7bee: $e0 $02
    nop                                           ; $7bf0: $00
    ld [bc], a                                    ; $7bf1: $02
    ld d, [hl]                                    ; $7bf2: $56
    adc b                                         ; $7bf3: $88
    jp z, $94db                                   ; $7bf4: $ca $db $94

    sbc h                                         ; $7bf7: $9c
    ld [$d41c], sp                                ; $7bf8: $08 $1c $d4
    ret c                                         ; $7bfb: $d8

    ld [bc], a                                    ; $7bfc: $02
    ld h, $02                                     ; $7bfd: $26 $02
    inc b                                         ; $7bff: $04
    adc b                                         ; $7c00: $88
    jr nz, jr_0f8_7c27                            ; $7c01: $20 $24

    ld b, l                                       ; $7c03: $45
    ret                                           ; $7c04: $c9


    ret nz                                        ; $7c05: $c0

    ld b, h                                       ; $7c06: $44
    ld c, d                                       ; $7c07: $4a
    jp z, $8402                                   ; $7c08: $ca $02 $84

    ld [bc], a                                    ; $7c0b: $02
    dec [hl]                                      ; $7c0c: $35
    sub d                                         ; $7c0d: $92
    ld b, b                                       ; $7c0e: $40
    ret nz                                        ; $7c0f: $c0

    db $10                                        ; $7c10: $10
    sub b                                         ; $7c11: $90
    add h                                         ; $7c12: $84
    or [hl]                                       ; $7c13: $b6
    ld e, $3d                                     ; $7c14: $1e $3d
    db $10                                        ; $7c16: $10
    ld de, $8685                                  ; $7c17: $11 $85 $86
    add c                                         ; $7c1a: $81
    pop bc                                        ; $7c1b: $c1
    ld l, c                                       ; $7c1c: $69
    ld a, c                                       ; $7c1d: $79
    db $10                                        ; $7c1e: $10
    inc [hl]                                      ; $7c1f: $34
    inc b                                         ; $7c20: $04
    nop                                           ; $7c21: $00
    ld [bc], a                                    ; $7c22: $02
    inc b                                         ; $7c23: $04
    ld [bc], a                                    ; $7c24: $02
    add d                                         ; $7c25: $82
    inc b                                         ; $7c26: $04

jr_0f8_7c27:
    nop                                           ; $7c27: $00
    ld [bc], a                                    ; $7c28: $02
    inc c                                         ; $7c29: $0c
    jr jr_0f8_7c2c                                ; $7c2a: $18 $00

jr_0f8_7c2c:
    ld [bc], a                                    ; $7c2c: $02
    inc b                                         ; $7c2d: $04
    ld [bc], a                                    ; $7c2e: $02
    add b                                         ; $7c2f: $80
    ld [bc], a                                    ; $7c30: $02
    ld b, b                                       ; $7c31: $40
    ld [bc], a                                    ; $7c32: $02
    add d                                         ; $7c33: $82
    ld [bc], a                                    ; $7c34: $02
    add h                                         ; $7c35: $84
    add h                                         ; $7c36: $84
    ld [$050c], sp                                ; $7c37: $08 $0c $05
    add c                                         ; $7c3a: $81
    ld [bc], a                                    ; $7c3b: $02
    nop                                           ; $7c3c: $00
    ld [bc], a                                    ; $7c3d: $02
    db $ec                                        ; $7c3e: $ec
    ld [bc], a                                    ; $7c3f: $02
    inc h                                         ; $7c40: $24
    ld [bc], a                                    ; $7c41: $02
    sbc d                                         ; $7c42: $9a
    adc d                                         ; $7c43: $8a
    ld [hl+], a                                   ; $7c44: $22
    and d                                         ; $7c45: $a2
    and h                                         ; $7c46: $a4
    xor h                                         ; $7c47: $ac
    ld l, d                                       ; $7c48: $6a
    ld b, [hl]                                    ; $7c49: $46
    nop                                           ; $7c4a: $00
    add hl, bc                                    ; $7c4b: $09
    ld a, [hl+]                                   ; $7c4c: $2a
    jr z, jr_0f8_7c51                             ; $7c4d: $28 $02

    or b                                          ; $7c4f: $b0
    ld [bc], a                                    ; $7c50: $02

jr_0f8_7c51:
    nop                                           ; $7c51: $00
    ld [bc], a                                    ; $7c52: $02
    ld b, d                                       ; $7c53: $42
    ld [bc], a                                    ; $7c54: $02
    ld bc, $0082                                  ; $7c55: $01 $82 $00
    ld bc, $0802                                  ; $7c58: $01 $02 $08
    ld [bc], a                                    ; $7c5b: $02
    add [hl]                                      ; $7c5c: $86
    ld [bc], a                                    ; $7c5d: $02
    ld [bc], a                                    ; $7c5e: $02
    adc b                                         ; $7c5f: $88
    or c                                          ; $7c60: $b1
    pop af                                        ; $7c61: $f1
    ret nz                                        ; $7c62: $c0

    ld d, b                                       ; $7c63: $50
    add b                                         ; $7c64: $80
    adc b                                         ; $7c65: $88
    dec b                                         ; $7c66: $05
    sub l                                         ; $7c67: $95
    ld [bc], a                                    ; $7c68: $02
    nop                                           ; $7c69: $00
    ld [bc], a                                    ; $7c6a: $02
    ld b, b                                       ; $7c6b: $40
    adc b                                         ; $7c6c: $88
    ld e, d                                       ; $7c6d: $5a
    ld a, d                                       ; $7c6e: $7a
    ld d, d                                       ; $7c6f: $52
    ld [bc], a                                    ; $7c70: $02
    add b                                         ; $7c71: $80
    add d                                         ; $7c72: $82
    ld b, b                                       ; $7c73: $40
    pop bc                                        ; $7c74: $c1
    inc b                                         ; $7c75: $04
    nop                                           ; $7c76: $00
    ld [bc], a                                    ; $7c77: $02
    ld bc, $0016                                  ; $7c78: $01 $16 $00
    ld [bc], a                                    ; $7c7b: $02
    db $10                                        ; $7c7c: $10
    adc b                                         ; $7c7d: $88
    inc b                                         ; $7c7e: $04
    ld d, $5a                                     ; $7c7f: $16 $5a
    ld l, d                                       ; $7c81: $6a
    inc d                                         ; $7c82: $14
    ld [hl], $06                                  ; $7c83: $36 $06
    ld b, h                                       ; $7c85: $44
    ld [bc], a                                    ; $7c86: $02
    ld [hl+], a                                   ; $7c87: $22
    add d                                         ; $7c88: $82
    ld a, [bc]                                    ; $7c89: $0a
    ld a, [de]                                    ; $7c8a: $1a
    ld [bc], a                                    ; $7c8b: $02
    sub b                                         ; $7c8c: $90
    add [hl]                                      ; $7c8d: $86
    ld h, e                                       ; $7c8e: $63
    ld h, c                                       ; $7c8f: $61
    ld [de], a                                    ; $7c90: $12
    ld a, [hl-]                                   ; $7c91: $3a
    nop                                           ; $7c92: $00
    ld [de], a                                    ; $7c93: $12
    ld [bc], a                                    ; $7c94: $02
    ld h, $84                                     ; $7c95: $26 $84
    ret nc                                        ; $7c97: $d0

    ld d, b                                       ; $7c98: $50
    ld h, e                                       ; $7c99: $63
    db $e3                                        ; $7c9a: $e3
    ld [bc], a                                    ; $7c9b: $02
    call nz, Call_000_0288                        ; $7c9c: $c4 $88 $02
    and l                                         ; $7c9f: $a5
    sub $56                                       ; $7ca0: $d6 $56
    add d                                         ; $7ca2: $82
    adc d                                         ; $7ca3: $8a
    ld [$0200], sp                                ; $7ca4: $08 $00 $02
    dec d                                         ; $7ca7: $15
    add e                                         ; $7ca8: $83
    ld c, d                                       ; $7ca9: $4a
    ld c, [hl]                                    ; $7caa: $4e
    nop                                           ; $7cab: $00
    ld [bc], a                                    ; $7cac: $02
    db $10                                        ; $7cad: $10
    add a                                         ; $7cae: $87
    jr z, @+$05                                   ; $7caf: $28 $03

    inc de                                        ; $7cb1: $13
    pop bc                                        ; $7cb2: $c1
    jp nz, Jump_000_0080                          ; $7cb3: $c2 $80 $00

    ld [bc], a                                    ; $7cb6: $02
    jr nz, jr_0f8_7cbc                            ; $7cb7: $20 $03

    nop                                           ; $7cb9: $00
    add e                                         ; $7cba: $83
    add b                                         ; $7cbb: $80

jr_0f8_7cbc:
    ldh [rSTAT], a                                ; $7cbc: $e0 $41
    ld [bc], a                                    ; $7cbe: $02
    nop                                           ; $7cbf: $00
    add d                                         ; $7cc0: $82
    jr nz, jr_0f8_7cf3                            ; $7cc1: $20 $30

    ld [bc], a                                    ; $7cc3: $02
    ld b, b                                       ; $7cc4: $40
    dec b                                         ; $7cc5: $05
    nop                                           ; $7cc6: $00
    add c                                         ; $7cc7: $81
    add b                                         ; $7cc8: $80
    ld [bc], a                                    ; $7cc9: $02
    ld [hl+], a                                   ; $7cca: $22
    ld [bc], a                                    ; $7ccb: $02
    nop                                           ; $7ccc: $00
    add d                                         ; $7ccd: $82
    ld h, b                                       ; $7cce: $60
    ld b, b                                       ; $7ccf: $40
    inc bc                                        ; $7cd0: $03
    nop                                           ; $7cd1: $00
    add c                                         ; $7cd2: $81
    ld [$8802], sp                                ; $7cd3: $08 $02 $88
    add d                                         ; $7cd6: $82
    nop                                           ; $7cd7: $00
    ld [bc], a                                    ; $7cd8: $02
    ld [bc], a                                    ; $7cd9: $02
    ld b, c                                       ; $7cda: $41
    ld [bc], a                                    ; $7cdb: $02
    add b                                         ; $7cdc: $80
    ld [bc], a                                    ; $7cdd: $02
    ld [bc], a                                    ; $7cde: $02
    ld [bc], a                                    ; $7cdf: $02
    nop                                           ; $7ce0: $00
    ld [bc], a                                    ; $7ce1: $02
    ld d, b                                       ; $7ce2: $50
    ld [bc], a                                    ; $7ce3: $02
    nop                                           ; $7ce4: $00
    ld [bc], a                                    ; $7ce5: $02
    ld [$0082], sp                                ; $7ce6: $08 $82 $00
    ld bc, $0002                                  ; $7ce9: $01 $02 $00
    ld [bc], a                                    ; $7cec: $02
    add b                                         ; $7ced: $80
    ld [bc], a                                    ; $7cee: $02
    ld a, [bc]                                    ; $7cef: $0a
    ld [bc], a                                    ; $7cf0: $02
    ld h, b                                       ; $7cf1: $60
    add h                                         ; $7cf2: $84

jr_0f8_7cf3:
    nop                                           ; $7cf3: $00
    ld [$140c], sp                                ; $7cf4: $08 $0c $14
    ld [bc], a                                    ; $7cf7: $02
    add b                                         ; $7cf8: $80
    inc c                                         ; $7cf9: $0c
    nop                                           ; $7cfa: $00
    rst $38                                       ; $7cfb: $ff
    dec d                                         ; $7cfc: $15
    ld [$15ec], sp                                ; $7cfd: $08 $ec $15
    rst $28                                       ; $7d00: $ef
    ld de, $f0f5                                  ; $7d01: $11 $f5 $f0
    db $f4                                        ; $7d04: $f4
    or $f4                                        ; $7d05: $f6 $f4
    nop                                           ; $7d07: $00
    push af                                       ; $7d08: $f5
    ld b, $04                                     ; $7d09: $06 $04
    ldh a, [rDIV]                                 ; $7d0b: $f0 $04
    ld hl, sp+$04                                 ; $7d0d: $f8 $04
    nop                                           ; $7d0f: $00
    inc b                                         ; $7d10: $04
    ld [$0181], sp                                ; $7d11: $08 $81 $01
    ld b, $00                                     ; $7d14: $06 $00
    inc bc                                        ; $7d16: $03
    ld [bc], a                                    ; $7d17: $02
    add d                                         ; $7d18: $82
    nop                                           ; $7d19: $00
    db $10                                        ; $7d1a: $10
    ld [bc], a                                    ; $7d1b: $02
    ld de, $0202                                  ; $7d1c: $11 $02 $02
    add d                                         ; $7d1f: $82
    db $10                                        ; $7d20: $10
    sub b                                         ; $7d21: $90
    ld [bc], a                                    ; $7d22: $02
    ld [$0184], sp                                ; $7d23: $08 $84 $01
    inc bc                                        ; $7d26: $03
    ld a, [bc]                                    ; $7d27: $0a
    ld c, d                                       ; $7d28: $4a
    ld [bc], a                                    ; $7d29: $02
    nop                                           ; $7d2a: $00
    add d                                         ; $7d2b: $82
    db $10                                        ; $7d2c: $10
    ld de, $0002                                  ; $7d2d: $11 $02 $00
    ld [bc], a                                    ; $7d30: $02
    ld d, c                                       ; $7d31: $51
    add d                                         ; $7d32: $82
    nop                                           ; $7d33: $00
    jr nz, jr_0f8_7d38                            ; $7d34: $20 $02

    ld [bc], a                                    ; $7d36: $02
    ld [bc], a                                    ; $7d37: $02

jr_0f8_7d38:
    ld bc, $1802                                  ; $7d38: $01 $02 $18
    add d                                         ; $7d3b: $82
    ld [bc], a                                    ; $7d3c: $02
    inc bc                                        ; $7d3d: $03
    ld [bc], a                                    ; $7d3e: $02
    dec h                                         ; $7d3f: $25
    add e                                         ; $7d40: $83
    nop                                           ; $7d41: $00
    ld [$0204], sp                                ; $7d42: $08 $04 $02
    nop                                           ; $7d45: $00
    add e                                         ; $7d46: $83
    ld bc, $3022                                  ; $7d47: $01 $22 $30
    ld [bc], a                                    ; $7d4a: $02
    db $10                                        ; $7d4b: $10
    ld [bc], a                                    ; $7d4c: $02
    ld [$1802], sp                                ; $7d4d: $08 $02 $18
    inc b                                         ; $7d50: $04
    nop                                           ; $7d51: $00
    add c                                         ; $7d52: $81
    db $10                                        ; $7d53: $10
    ld [bc], a                                    ; $7d54: $02
    nop                                           ; $7d55: $00
    add c                                         ; $7d56: $81
    ld bc, $1002                                  ; $7d57: $01 $02 $10
    ld [bc], a                                    ; $7d5a: $02
    jr nz, jr_0f8_7d5f                            ; $7d5b: $20 $02

    add [hl]                                      ; $7d5d: $86
    adc b                                         ; $7d5e: $88

jr_0f8_7d5f:
    db $10                                        ; $7d5f: $10
    or b                                          ; $7d60: $b0
    xor c                                         ; $7d61: $a9
    add hl, hl                                    ; $7d62: $29
    nop                                           ; $7d63: $00
    inc b                                         ; $7d64: $04
    adc b                                         ; $7d65: $88
    add b                                         ; $7d66: $80
    ld [bc], a                                    ; $7d67: $02
    nop                                           ; $7d68: $00
    add h                                         ; $7d69: $84
    ld bc, $122b                                  ; $7d6a: $01 $2b $12
    ld [bc], a                                    ; $7d6d: $02
    ld [bc], a                                    ; $7d6e: $02
    inc b                                         ; $7d6f: $04
    ld [bc], a                                    ; $7d70: $02
    ld b, $04                                     ; $7d71: $06 $04
    nop                                           ; $7d73: $00
    add e                                         ; $7d74: $83
    ld [bc], a                                    ; $7d75: $02
    nop                                           ; $7d76: $00
    jr nz, jr_0f8_7d7f                            ; $7d77: $20 $06

    nop                                           ; $7d79: $00
    inc bc                                        ; $7d7a: $03
    db $10                                        ; $7d7b: $10
    add d                                         ; $7d7c: $82
    nop                                           ; $7d7d: $00
    ld [bc], a                                    ; $7d7e: $02

jr_0f8_7d7f:
    ld [bc], a                                    ; $7d7f: $02
    ld [hl+], a                                   ; $7d80: $22
    ld [bc], a                                    ; $7d81: $02
    db $10                                        ; $7d82: $10
    ld [bc], a                                    ; $7d83: $02
    ld [bc], a                                    ; $7d84: $02
    ld [bc], a                                    ; $7d85: $02
    inc b                                         ; $7d86: $04
    add h                                         ; $7d87: $84
    jr nz, jr_0f8_7dba                            ; $7d88: $20 $30

    inc d                                         ; $7d8a: $14
    dec d                                         ; $7d8b: $15
    ld [bc], a                                    ; $7d8c: $02
    nop                                           ; $7d8d: $00
    add d                                         ; $7d8e: $82
    ld [bc], a                                    ; $7d8f: $02
    ld [hl+], a                                   ; $7d90: $22
    ld [bc], a                                    ; $7d91: $02
    nop                                           ; $7d92: $00
    ld [bc], a                                    ; $7d93: $02
    and b                                         ; $7d94: $a0
    inc bc                                        ; $7d95: $03
    nop                                           ; $7d96: $00
    add c                                         ; $7d97: $81
    ld de, $4402                                  ; $7d98: $11 $02 $44
    ld [bc], a                                    ; $7d9b: $02
    sub b                                         ; $7d9c: $90
    ld [bc], a                                    ; $7d9d: $02
    inc d                                         ; $7d9e: $14
    ld [bc], a                                    ; $7d9f: $02
    ld [bc], a                                    ; $7da0: $02
    inc bc                                        ; $7da1: $03
    nop                                           ; $7da2: $00
    add c                                         ; $7da3: $81
    ld [$0004], sp                                ; $7da4: $08 $04 $00
    ld [bc], a                                    ; $7da7: $02
    ld [bc], a                                    ; $7da8: $02
    ld a, [bc]                                    ; $7da9: $0a
    nop                                           ; $7daa: $00
    ld [bc], a                                    ; $7dab: $02
    ld b, b                                       ; $7dac: $40
    add [hl]                                      ; $7dad: $86
    add b                                         ; $7dae: $80
    adc b                                         ; $7daf: $88
    ld b, c                                       ; $7db0: $41
    ld b, b                                       ; $7db1: $40
    and b                                         ; $7db2: $a0
    ldh [rSC], a                                  ; $7db3: $e0 $02
    ld b, h                                       ; $7db5: $44
    ld [bc], a                                    ; $7db6: $02
    jr jr_0f8_7dbb                                ; $7db7: $18 $02

    nop                                           ; $7db9: $00

jr_0f8_7dba:
    add h                                         ; $7dba: $84

jr_0f8_7dbb:
    ld [bc], a                                    ; $7dbb: $02
    ld [hl+], a                                   ; $7dbc: $22
    nop                                           ; $7dbd: $00
    ld [bc], a                                    ; $7dbe: $02
    inc b                                         ; $7dbf: $04
    nop                                           ; $7dc0: $00
    ld [bc], a                                    ; $7dc1: $02
    ld [$0002], sp                                ; $7dc2: $08 $02 $00
    ld [bc], a                                    ; $7dc5: $02
    inc b                                         ; $7dc6: $04
    inc b                                         ; $7dc7: $04
    nop                                           ; $7dc8: $00
    ld [bc], a                                    ; $7dc9: $02
    db $10                                        ; $7dca: $10
    ld [bc], a                                    ; $7dcb: $02
    ld bc, $0202                                  ; $7dcc: $01 $02 $02
    add d                                         ; $7dcf: $82
    dec b                                         ; $7dd0: $05
    rlca                                          ; $7dd1: $07
    ld [bc], a                                    ; $7dd2: $02
    ld [hl+], a                                   ; $7dd3: $22
    ld [bc], a                                    ; $7dd4: $02
    sbc b                                         ; $7dd5: $98
    add [hl]                                      ; $7dd6: $86
    add b                                         ; $7dd7: $80
    nop                                           ; $7dd8: $00
    ld b, b                                       ; $7dd9: $40
    ld b, h                                       ; $7dda: $44
    add b                                         ; $7ddb: $80
    ret nz                                        ; $7ddc: $c0

    inc b                                         ; $7ddd: $04
    nop                                           ; $7dde: $00
    ld [bc], a                                    ; $7ddf: $02
    db $10                                        ; $7de0: $10
    ld [bc], a                                    ; $7de1: $02
    nop                                           ; $7de2: $00
    ld [bc], a                                    ; $7de3: $02
    jr nz, @+$09                                  ; $7de4: $20 $07

    nop                                           ; $7de6: $00
    add c                                         ; $7de7: $81
    add c                                         ; $7de8: $81
    ld [bc], a                                    ; $7de9: $02
    jr nz, @+$04                                  ; $7dea: $20 $02

    ld [$2802], sp                                ; $7dec: $08 $02 $28
    ld [bc], a                                    ; $7def: $02
    ld b, b                                       ; $7df0: $40
    inc bc                                        ; $7df1: $03
    nop                                           ; $7df2: $00
    add c                                         ; $7df3: $81
    db $10                                        ; $7df4: $10
    inc b                                         ; $7df5: $04
    nop                                           ; $7df6: $00
    ld [bc], a                                    ; $7df7: $02
    ld b, b                                       ; $7df8: $40
    ld a, [bc]                                    ; $7df9: $0a
    nop                                           ; $7dfa: $00
    rst $38                                       ; $7dfb: $ff
    add hl, bc                                    ; $7dfc: $09
    ld [bc], a                                    ; $7dfd: $02
    ei                                            ; $7dfe: $fb
    dec b                                         ; $7dff: $05
    ld a, [$fa06]                                 ; $7e00: $fa $06 $fa
    ei                                            ; $7e03: $fb
    ld a, [$99fe]                                 ; $7e04: $fa $fe $99
    inc b                                         ; $7e07: $04
    nop                                           ; $7e08: $00
    ld c, $00                                     ; $7e09: $0e $00
    dec a                                         ; $7e0b: $3d
    ld [bc], a                                    ; $7e0c: $02
    dec [hl]                                      ; $7e0d: $35
    ld a, [bc]                                    ; $7e0e: $0a
    ld c, d                                       ; $7e0f: $4a
    dec [hl]                                      ; $7e10: $35
    push hl                                       ; $7e11: $e5
    ld e, $5e                                     ; $7e12: $1e $5e
    cpl                                           ; $7e14: $2f
    ld h, a                                       ; $7e15: $67
    ld e, $48                                     ; $7e16: $1e $48
    scf                                           ; $7e18: $37
    dec [hl]                                      ; $7e19: $35
    ld a, [bc]                                    ; $7e1a: $0a
    inc sp                                        ; $7e1b: $33
    inc c                                         ; $7e1c: $0c
    ld c, $00                                     ; $7e1d: $0e $00
    inc b                                         ; $7e1f: $04
    dec bc                                        ; $7e20: $0b
    nop                                           ; $7e21: $00
    adc l                                         ; $7e22: $8d
    inc b                                         ; $7e23: $04
    nop                                           ; $7e24: $00
    inc b                                         ; $7e25: $04
    nop                                           ; $7e26: $00
    ld b, $00                                     ; $7e27: $06 $00
    ld [bc], a                                    ; $7e29: $02
    inc b                                         ; $7e2a: $04
    ld b, $00                                     ; $7e2b: $06 $00
    inc bc                                        ; $7e2d: $03
    inc b                                         ; $7e2e: $04
    ld [bc], a                                    ; $7e2f: $02
    ld [bc], a                                    ; $7e30: $02
    inc b                                         ; $7e31: $04
    add d                                         ; $7e32: $82
    nop                                           ; $7e33: $00
    inc b                                         ; $7e34: $04
    dec bc                                        ; $7e35: $0b
    nop                                           ; $7e36: $00
    rst $38                                       ; $7e37: $ff
    ld de, $fb06                                  ; $7e38: $11 $06 $fb
    dec b                                         ; $7e3b: $05
    ld a, [$f406]                                 ; $7e3c: $fa $06 $f4
    db $f4                                        ; $7e3f: $f4
    di                                            ; $7e40: $f3
    db $fc                                        ; $7e41: $fc
    di                                            ; $7e42: $f3
    inc b                                         ; $7e43: $04
    db $fd                                        ; $7e44: $fd
    dec b                                         ; $7e45: $05
    inc bc                                        ; $7e46: $03
    push af                                       ; $7e47: $f5
    inc bc                                        ; $7e48: $03
    db $fd                                        ; $7e49: $fd
    add c                                         ; $7e4a: $81
    ld bc, $0002                                  ; $7e4b: $01 $02 $00
    sbc $01                                       ; $7e4e: $de $01
    rrca                                          ; $7e50: $0f
    nop                                           ; $7e51: $00
    ld [bc], a                                    ; $7e52: $02
    dec b                                         ; $7e53: $05
    inc d                                         ; $7e54: $14
    dec bc                                        ; $7e55: $0b
    jr z, jr_0f8_7e5f                             ; $7e56: $28 $07

    ld de, $300f                                  ; $7e58: $11 $0f $30
    rrca                                          ; $7e5b: $0f
    ld h, a                                       ; $7e5c: $67
    ld e, $d3                                     ; $7e5d: $1e $d3

jr_0f8_7e5f:
    inc l                                         ; $7e5f: $2c
    ld h, [hl]                                    ; $7e60: $66
    dec e                                         ; $7e61: $1d
    dec bc                                        ; $7e62: $0b
    inc a                                         ; $7e63: $3c
    ld h, a                                       ; $7e64: $67
    inc e                                         ; $7e65: $1c

jr_0f8_7e66:
    ld h, [hl]                                    ; $7e66: $66
    dec e                                         ; $7e67: $1d
    inc bc                                        ; $7e68: $03
    ld a, $d3                                     ; $7e69: $3e $d3
    inc l                                         ; $7e6b: $2c
    or d                                          ; $7e6c: $b2
    nop                                           ; $7e6d: $00
    or d                                          ; $7e6e: $b2
    nop                                           ; $7e6f: $00
    push de                                       ; $7e70: $d5
    ld a, [hl+]                                   ; $7e71: $2a
    add b                                         ; $7e72: $80
    ld a, a                                       ; $7e73: $7f
    ld [$42ff], sp                                ; $7e74: $08 $ff $42
    rst $38                                       ; $7e77: $ff
    ld a, $e3                                     ; $7e78: $3e $e3
    ld l, e                                       ; $7e7a: $6b
    sub h                                         ; $7e7b: $94
    sub $29                                       ; $7e7c: $d6 $29
    add c                                         ; $7e7e: $81
    ld a, [hl]                                    ; $7e7f: $7e
    jr @+$01                                      ; $7e80: $18 $ff

    xor d                                         ; $7e82: $aa
    ld a, a                                       ; $7e83: $7f
    inc e                                         ; $7e84: $1c
    rst $38                                       ; $7e85: $ff
    ld a, e                                       ; $7e86: $7b
    rst $38                                       ; $7e87: $ff
    ld e, h                                       ; $7e88: $5c
    rst $38                                       ; $7e89: $ff
    xor d                                         ; $7e8a: $aa
    ld a, a                                       ; $7e8b: $7f
    add b                                         ; $7e8c: $80
    nop                                           ; $7e8d: $00
    ret nz                                        ; $7e8e: $c0

    nop                                           ; $7e8f: $00
    add b                                         ; $7e90: $80
    ld b, b                                       ; $7e91: $40
    ld a, b                                       ; $7e92: $78
    add b                                         ; $7e93: $80
    jr nz, jr_0f8_7e66                            ; $7e94: $20 $d0

    inc d                                         ; $7e96: $14
    add sp, -$76                                  ; $7e97: $e8 $8a
    ldh a, [$84]                                  ; $7e99: $f0 $84
    ld hl, sp-$5a                                 ; $7e9b: $f8 $a6
    ld a, b                                       ; $7e9d: $78
    db $d3                                        ; $7e9e: $d3
    inc a                                         ; $7e9f: $3c
    ld h, l                                       ; $7ea0: $65
    sbc d                                         ; $7ea1: $9a
    or e                                          ; $7ea2: $b3
    ld e, h                                       ; $7ea3: $5c

jr_0f8_7ea4:
    jr nc, jr_0f8_7ea4                            ; $7ea4: $30 $fe

    ld h, e                                       ; $7ea6: $63
    sbc h                                         ; $7ea7: $9c
    inc sp                                        ; $7ea8: $33
    call c, Call_000_1ef8                         ; $7ea9: $dc $f8 $1e
    ld bc, $000b                                  ; $7eac: $01 $0b $00
    adc a                                         ; $7eaf: $8f
    bit 6, h                                      ; $7eb0: $cb $74
    add [hl]                                      ; $7eb2: $86
    ld a, b                                       ; $7eb3: $78
    ld c, h                                       ; $7eb4: $4c
    ldh a, [$88]                                  ; $7eb5: $f0 $88
    ldh a, [rNR14]                                ; $7eb7: $f0 $14
    ldh [$28], a                                  ; $7eb9: $e0 $28
    ret nc                                        ; $7ebb: $d0

    ld b, b                                       ; $7ebc: $40
    and b                                         ; $7ebd: $a0
    ldh a, [rSC]                                  ; $7ebe: $f0 $02
    nop                                           ; $7ec0: $00
    ld [bc], a                                    ; $7ec1: $02
    add b                                         ; $7ec2: $80
    ld [bc], a                                    ; $7ec3: $02
    nop                                           ; $7ec4: $00
    adc [hl]                                      ; $7ec5: $8e
    ld bc, $3ccb                                  ; $7ec6: $01 $cb $3c
    ld h, a                                       ; $7ec9: $67
    ld e, $22                                     ; $7eca: $1e $22
    rra                                           ; $7ecc: $1f
    ld d, b                                       ; $7ecd: $50
    rrca                                          ; $7ece: $0f
    jr z, jr_0f8_7ee8                             ; $7ecf: $28 $17

    inc b                                         ; $7ed1: $04
    dec bc                                        ; $7ed2: $0b
    ld e, $02                                     ; $7ed3: $1e $02
    ld bc, $0284                                  ; $7ed5: $01 $84 $02
    inc bc                                        ; $7ed8: $03
    nop                                           ; $7ed9: $00
    ld bc, $000b                                  ; $7eda: $01 $0b $00
    sub l                                         ; $7edd: $95
    jr z, @+$01                                   ; $7ede: $28 $ff

    add e                                         ; $7ee0: $83
    ld a, h                                       ; $7ee1: $7c
    ld c, l                                       ; $7ee2: $4d
    or d                                          ; $7ee3: $b2
    rst $30                                       ; $7ee4: $f7
    add hl, bc                                    ; $7ee5: $09
    ld a, l                                       ; $7ee6: $7d
    rst $00                                       ; $7ee7: $c7

jr_0f8_7ee8:
    call nz, $08ff                                ; $7ee8: $c4 $ff $08
    rst $38                                       ; $7eeb: $ff
    add b                                         ; $7eec: $80
    ld a, a                                       ; $7eed: $7f
    xor e                                         ; $7eee: $ab
    ld d, h                                       ; $7eef: $54
    ld [hl], l                                    ; $7ef0: $75
    nop                                           ; $7ef1: $00
    dec h                                         ; $7ef2: $25
    dec bc                                        ; $7ef3: $0b
    nop                                           ; $7ef4: $00
    rst $38                                       ; $7ef5: $ff
    add hl, bc                                    ; $7ef6: $09
    ld [bc], a                                    ; $7ef7: $02
    ei                                            ; $7ef8: $fb
    dec b                                         ; $7ef9: $05
    ld a, [$fc06]                                 ; $7efa: $fa $06 $fc
    rst $38                                       ; $7efd: $ff
    db $fc                                        ; $7efe: $fc
    inc b                                         ; $7eff: $04
    dec b                                         ; $7f00: $05
    nop                                           ; $7f01: $00
    add a                                         ; $7f02: $87
    inc bc                                        ; $7f03: $03
    inc l                                         ; $7f04: $2c
    ld e, $f8                                     ; $7f05: $1e $f8
    ld [hl], b                                    ; $7f07: $70
    or b                                          ; $7f08: $b0
    ld b, b                                       ; $7f09: $40
    dec d                                         ; $7f0a: $15
    nop                                           ; $7f0b: $00
    add l                                         ; $7f0c: $85
    inc bc                                        ; $7f0d: $03
    nop                                           ; $7f0e: $00
    inc c                                         ; $7f0f: $0c
    nop                                           ; $7f10: $00
    db $10                                        ; $7f11: $10
    ld a, [de]                                    ; $7f12: $1a
    nop                                           ; $7f13: $00
    rst $38                                       ; $7f14: $ff
    dec bc                                        ; $7f15: $0b
    inc bc                                        ; $7f16: $03
    ei                                            ; $7f17: $fb
    dec b                                         ; $7f18: $05
    ld a, [$f806]                                 ; $7f19: $fa $06 $f8
    db $fd                                        ; $7f1c: $fd
    ld hl, sp+$05                                 ; $7f1d: $f8 $05
    ld hl, sp+$0c                                 ; $7f1f: $f8 $0c
    inc c                                         ; $7f21: $0c
    nop                                           ; $7f22: $00
    adc c                                         ; $7f23: $89
    dec b                                         ; $7f24: $05
    inc bc                                        ; $7f25: $03
    dec h                                         ; $7f26: $25
    rra                                           ; $7f27: $1f
    sub a                                         ; $7f28: $97
    ld a, [hl]                                    ; $7f29: $7e
    call c, Call_0f8_7078                         ; $7f2a: $dc $78 $70

Jump_0f8_7f2d:
    ld [de], a                                    ; $7f2d: $12
    nop                                           ; $7f2e: $00
    adc c                                         ; $7f2f: $89
    inc bc                                        ; $7f30: $03
    ld [hl+], a                                   ; $7f31: $22
    ld e, $18                                     ; $7f32: $1e $18
    ld hl, sp+$60                                 ; $7f34: $f8 $60
    ldh [$c0], a                                  ; $7f36: $e0 $c0
    add b                                         ; $7f38: $80
    ld de, $8700                                  ; $7f39: $11 $00 $87
    inc bc                                        ; $7f3c: $03
    db $10                                        ; $7f3d: $10
    inc c                                         ; $7f3e: $0c
    nop                                           ; $7f3f: $00
    ld [hl], b                                    ; $7f40: $70
    nop                                           ; $7f41: $00
    ld b, b                                       ; $7f42: $40
    jr jr_0f8_7f45                                ; $7f43: $18 $00

jr_0f8_7f45:
    rst $38                                       ; $7f45: $ff
    dec bc                                        ; $7f46: $0b
    inc bc                                        ; $7f47: $03
    ei                                            ; $7f48: $fb
    dec b                                         ; $7f49: $05
    ld a, [$f806]                                 ; $7f4a: $fa $06 $f8
    db $fd                                        ; $7f4d: $fd
    ld hl, sp+$05                                 ; $7f4e: $f8 $05
    ld hl, sp+$0c                                 ; $7f50: $f8 $0c
    ld a, [bc]                                    ; $7f52: $0a
    nop                                           ; $7f53: $00
    adc e                                         ; $7f54: $8b
    ld bc, $0500                                  ; $7f55: $01 $00 $05
    inc bc                                        ; $7f58: $03
    cpl                                           ; $7f59: $2f
    rra                                           ; $7f5a: $1f
    cp c                                          ; $7f5b: $b9
    ld a, [hl]                                    ; $7f5c: $7e
    and h                                         ; $7f5d: $a4
    ld a, b                                       ; $7f5e: $78
    ld [hl], b                                    ; $7f5f: $70
    ld de, $8a00                                  ; $7f60: $11 $00 $8a
    inc b                                         ; $7f63: $04
    inc bc                                        ; $7f64: $03
    inc b                                         ; $7f65: $04
    ld e, $70                                     ; $7f66: $1e $70
    ld hl, sp-$40                                 ; $7f68: $f8 $c0
    ldh [$c0], a                                  ; $7f6a: $e0 $c0
    add b                                         ; $7f6c: $80
    ld de, $8700                                  ; $7f6d: $11 $00 $87
    inc bc                                        ; $7f70: $03
    nop                                           ; $7f71: $00
    inc c                                         ; $7f72: $0c
    ld b, b                                       ; $7f73: $40
    jr nc, jr_0f8_7f76                            ; $7f74: $30 $00

jr_0f8_7f76:
    ld b, b                                       ; $7f76: $40
    jr jr_0f8_7f79                                ; $7f77: $18 $00

jr_0f8_7f79:
    rst $38                                       ; $7f79: $ff
    dec bc                                        ; $7f7a: $0b
    inc bc                                        ; $7f7b: $03
    ei                                            ; $7f7c: $fb
    dec b                                         ; $7f7d: $05
    ld a, [$f806]                                 ; $7f7e: $fa $06 $f8
    db $fd                                        ; $7f81: $fd
    ld hl, sp+$05                                 ; $7f82: $f8 $05
    ld hl, sp+$0c                                 ; $7f84: $f8 $0c
    ld a, [bc]                                    ; $7f86: $0a
    nop                                           ; $7f87: $00
    adc e                                         ; $7f88: $8b
    ld bc, $0700                                  ; $7f89: $01 $00 $07
    inc bc                                        ; $7f8c: $03
    ld a, [hl-]                                   ; $7f8d: $3a
    rra                                           ; $7f8e: $1f
    xor c                                         ; $7f8f: $a9
    ld a, [hl]                                    ; $7f90: $7e
    db $e4                                        ; $7f91: $e4
    ld a, b                                       ; $7f92: $78
    ld [hl], b                                    ; $7f93: $70
    ld de, $8a00                                  ; $7f94: $11 $00 $8a
    ld [bc], a                                    ; $7f97: $02
    inc bc                                        ; $7f98: $03
    jr c, jr_0f8_7fb9                             ; $7f99: $38 $1e

    ret nz                                        ; $7f9b: $c0

    ld hl, sp+$50                                 ; $7f9c: $f8 $50
    ldh [rP1], a                                  ; $7f9e: $e0 $00
    add b                                         ; $7fa0: $80
    ld de, $8600                                  ; $7fa1: $11 $00 $86
    inc bc                                        ; $7fa4: $03
    nop                                           ; $7fa5: $00
    inc e                                         ; $7fa6: $1c
    nop                                           ; $7fa7: $00
    ld [hl], b                                    ; $7fa8: $70
    ld b, b                                       ; $7fa9: $40
    add hl, de                                    ; $7faa: $19
    nop                                           ; $7fab: $00
    rst $38                                       ; $7fac: $ff
    rlca                                          ; $7fad: $07
    ld bc, $0af9                                  ; $7fae: $01 $f9 $0a
    or $05                                        ; $7fb1: $f6 $05
    db $fc                                        ; $7fb3: $fc
    db $fd                                        ; $7fb4: $fd
    ld [bc], a                                    ; $7fb5: $02
    inc bc                                        ; $7fb6: $03
    add c                                         ; $7fb7: $81
    ld [bc], a                                    ; $7fb8: $02

jr_0f8_7fb9:
    ld [bc], a                                    ; $7fb9: $02
    ld b, $87                                     ; $7fba: $06 $87
    ld e, $14                                     ; $7fbc: $1e $14
    inc l                                         ; $7fbe: $2c
    inc d                                         ; $7fbf: $14
    inc l                                         ; $7fc0: $2c
    ld [$1418], sp                                ; $7fc1: $08 $18 $14
    nop                                           ; $7fc4: $00
    rst $38                                       ; $7fc5: $ff
    rlca                                          ; $7fc6: $07
    ld bc, $0af9                                  ; $7fc7: $01 $f9 $0a
    or $05                                        ; $7fca: $f6 $05
    ld sp, hl                                     ; $7fcc: $f9
    rst $38                                       ; $7fcd: $ff
    ld [bc], a                                    ; $7fce: $02
    ld bc, $0202                                  ; $7fcf: $01 $02 $02
    ld [bc], a                                    ; $7fd2: $02
    ld c, $8c                                     ; $7fd3: $0e $8c
    inc d                                         ; $7fd5: $14
    inc e                                         ; $7fd6: $1c
    ld [$2838], sp                                ; $7fd7: $08 $38 $28
    ld e, b                                       ; $7fda: $58
    ld [hl], b                                    ; $7fdb: $70
    sub b                                         ; $7fdc: $90
    ld d, b                                       ; $7fdd: $50
    or b                                          ; $7fde: $b0
    jr nz, @+$62                                  ; $7fdf: $20 $60

    ld c, $00                                     ; $7fe1: $0e $00
    rst $38                                       ; $7fe3: $ff
    rlca                                          ; $7fe4: $07
    ld bc, $0af9                                  ; $7fe5: $01 $f9 $0a
    or $05                                        ; $7fe8: $f6 $05
    ei                                            ; $7fea: $fb
    cp $02                                        ; $7feb: $fe $02
    ld bc, $0202                                  ; $7fed: $01 $02 $02
    ld [bc], a                                    ; $7ff0: $02
    inc b                                         ; $7ff1: $04
    ld [bc], a                                    ; $7ff2: $02
    inc c                                         ; $7ff3: $0c
    add [hl]                                      ; $7ff4: $86
    db $10                                        ; $7ff5: $10
    jr @+$7a                                      ; $7ff6: $18 $78

    ld c, b                                       ; $7ff8: $48
    nop                                           ; $7ff9: $00
    jr nc, @+$14                                  ; $7ffa: $30 $12

    nop                                           ; $7ffc: $00
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
