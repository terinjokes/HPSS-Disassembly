; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0b2", ROMX[$4000], BANK[$b2]

    db $b2

    nop                                           ; $4001: $00
    jr nz, jr_0b2_4004                            ; $4002: $20 $00

jr_0b2_4004:
    jr nz, jr_0b2_401e                            ; $4004: $20 $18

    ld [hl], a                                    ; $4006: $77
    ld c, b                                       ; $4007: $48
    ld b, l                                       ; $4008: $45
    nop                                           ; $4009: $00
    jr nz, jr_0b2_400c                            ; $400a: $20 $00

jr_0b2_400c:
    jr nz, jr_0b2_4026                            ; $400c: $20 $18

    ld [hl], a                                    ; $400e: $77
    ld c, b                                       ; $400f: $48
    ld b, l                                       ; $4010: $45
    nop                                           ; $4011: $00
    jr nz, jr_0b2_401b                            ; $4012: $20 $07

    nop                                           ; $4014: $00
    jr jr_0b2_408e                                ; $4015: $18 $77

jr_0b2_4017:
    ld c, b                                       ; $4017: $48
    ld b, l                                       ; $4018: $45
    db $e3                                        ; $4019: $e3
    inc b                                         ; $401a: $04

jr_0b2_401b:
    db $eb                                        ; $401b: $eb
    ld a, $07                                     ; $401c: $3e $07

jr_0b2_401e:
    nop                                           ; $401e: $00
    sub c                                         ; $401f: $91
    ld d, a                                       ; $4020: $57
    nop                                           ; $4021: $00
    db $20, $8f                                   ; $4022: $20 $8f
    ld a, $26                                     ; $4024: $3e $26

jr_0b2_4026:
    nop                                           ; $4026: $00
    push af                                       ; $4027: $f5
    ld a, e                                       ; $4028: $7b
    nop                                           ; $4029: $00
    db $20, $8f                                   ; $402a: $20 $8f
    ld a, $26                                     ; $402c: $3e $26
    nop                                           ; $402e: $00
    push af                                       ; $402f: $f5
    ld a, e                                       ; $4030: $7b
    nop                                           ; $4031: $00
    db $20, $8f                                   ; $4032: $20 $8f
    ld a, $26                                     ; $4034: $3e $26
    nop                                           ; $4036: $00
    push af                                       ; $4037: $f5
    ld a, e                                       ; $4038: $7b
    nop                                           ; $4039: $00
    jr nz, @+$09                                  ; $403a: $20 $07

    nop                                           ; $403c: $00
    jr jr_0b2_40b6                                ; $403d: $18 $77

    ld c, b                                       ; $403f: $48
    ld b, l                                       ; $4040: $45
    nop                                           ; $4041: $00
    jr nz, jr_0b2_404b                            ; $4042: $20 $07

    nop                                           ; $4044: $00
    jr jr_0b2_40be                                ; $4045: $18 $77

    ld c, b                                       ; $4047: $48
    ld b, l                                       ; $4048: $45
    add c                                         ; $4049: $81
    add hl, bc                                    ; $404a: $09

jr_0b2_404b:
    rlca                                          ; $404b: $07
    dec sp                                        ; $404c: $3b
    rlca                                          ; $404d: $07
    nop                                           ; $404e: $00
    xor a                                         ; $404f: $af
    ld d, a                                       ; $4050: $57
    add e                                         ; $4051: $83
    nop                                           ; $4052: $00
    ld l, b                                       ; $4053: $68
    ld [hl-], a                                   ; $4054: $32
    sub b                                         ; $4055: $90
    ld d, a                                       ; $4056: $57
    and e                                         ; $4057: $a3
    ld de, $2000                                  ; $4058: $11 $00 $20
    dec bc                                        ; $405b: $0b
    ld b, a                                       ; $405c: $47
    ld b, a                                       ; $405d: $47
    inc b                                         ; $405e: $04
    rst $08                                       ; $405f: $cf
    ld e, e                                       ; $4060: $5b
    nop                                           ; $4061: $00
    jr nz, jr_0b2_406f                            ; $4062: $20 $0b

    ld b, a                                       ; $4064: $47
    ld b, a                                       ; $4065: $47
    inc b                                         ; $4066: $04
    rst $08                                       ; $4067: $cf
    ld e, e                                       ; $4068: $5b
    nop                                           ; $4069: $00
    jr nz, jr_0b2_4077                            ; $406a: $20 $0b

    ld b, a                                       ; $406c: $47
    ld b, a                                       ; $406d: $47
    inc b                                         ; $406e: $04

jr_0b2_406f:
    rst $08                                       ; $406f: $cf
    ld e, e                                       ; $4070: $5b
    nop                                           ; $4071: $00
    jr nz, jr_0b2_4017                            ; $4072: $20 $a3

    ld [hl+], a                                   ; $4074: $22
    rlca                                          ; $4075: $07
    nop                                           ; $4076: $00

jr_0b2_4077:
    ld bc, $0014                                  ; $4077: $01 $14 $00
    jr nz, jr_0b2_40e6                            ; $407a: $20 $6a

    ld b, a                                       ; $407c: $47
    ld b, $00                                     ; $407d: $06 $00
    adc a                                         ; $407f: $8f
    ld d, a                                       ; $4080: $57
    inc hl                                        ; $4081: $23
    nop                                           ; $4082: $00
    ld a, [hl+]                                   ; $4083: $2a
    ld b, e                                       ; $4084: $43
    and $1d                                       ; $4085: $e6 $1d
    di                                            ; $4087: $f3
    ld l, e                                       ; $4088: $6b
    inc bc                                        ; $4089: $03
    nop                                           ; $408a: $00
    db $ed                                        ; $408b: $ed
    ld b, d                                       ; $408c: $42
    ld [c], a                                     ; $408d: $e2

jr_0b2_408e:
    dec c                                         ; $408e: $0d
    di                                            ; $408f: $f3
    ld a, [hl]                                    ; $4090: $7e
    db $e4                                        ; $4091: $e4
    inc b                                         ; $4092: $04
    ld c, b                                       ; $4093: $48
    ld l, $4e                                     ; $4094: $2e $4e
    ld c, a                                       ; $4096: $4f
    rlca                                          ; $4097: $07
    nop                                           ; $4098: $00

jr_0b2_4099:
    nop                                           ; $4099: $00
    jr nz, jr_0b2_40be                            ; $409a: $20 $22

    dec b                                         ; $409c: $05
    rlca                                          ; $409d: $07
    nop                                           ; $409e: $00
    ld h, [hl]                                    ; $409f: $66
    dec d                                         ; $40a0: $15
    nop                                           ; $40a1: $00
    jr nz, jr_0b2_40c6                            ; $40a2: $20 $22

    dec b                                         ; $40a4: $05

jr_0b2_40a5:
    rlca                                          ; $40a5: $07
    nop                                           ; $40a6: $00
    ld h, [hl]                                    ; $40a7: $66
    dec d                                         ; $40a8: $15
    nop                                           ; $40a9: $00
    jr nz, jr_0b2_410f                            ; $40aa: $20 $63

    dec c                                         ; $40ac: $0d
    rlca                                          ; $40ad: $07
    nop                                           ; $40ae: $00
    ld b, e                                       ; $40af: $43
    ld a, [de]                                    ; $40b0: $1a
    nop                                           ; $40b1: $00
    inc e                                         ; $40b2: $1c
    add h                                         ; $40b3: $84
    ld h, $4c                                     ; $40b4: $26 $4c

jr_0b2_40b6:
    ld b, a                                       ; $40b6: $47
    ld b, $00                                     ; $40b7: $06 $00
    inc bc                                        ; $40b9: $03
    nop                                           ; $40ba: $00
    ld a, [hl+]                                   ; $40bb: $2a
    ld [hl], l                                    ; $40bc: $75
    ld a, [c]                                     ; $40bd: $f2

jr_0b2_40be:
    halt                                          ; $40be: $76
    call z, Call_0b2_432d                         ; $40bf: $cc $2d $43
    nop                                           ; $40c2: $00

jr_0b2_40c3:
    ld a, [hl+]                                   ; $40c3: $2a
    ld [hl], l                                    ; $40c4: $75
    inc bc                                        ; $40c5: $03

jr_0b2_40c6:
    jr nc, jr_0b2_4099                            ; $40c6: $30 $d1

    ld a, [hl]                                    ; $40c8: $7e

jr_0b2_40c9:
    pop bc                                        ; $40c9: $c1
    add hl, bc                                    ; $40ca: $09
    ld l, c                                       ; $40cb: $69
    ld [hl-], a                                   ; $40cc: $32
    ld h, $00                                     ; $40cd: $26 $00
    ld l, [hl]                                    ; $40cf: $6e
    ld c, a                                       ; $40d0: $4f
    inc b                                         ; $40d1: $04
    inc c                                         ; $40d2: $0c
    rst $20                                       ; $40d3: $e7
    ld [hl], $02                                  ; $40d4: $36 $02
    ld [de], a                                    ; $40d6: $12
    adc [hl]                                      ; $40d7: $8e
    ld d, e                                       ; $40d8: $53
    nop                                           ; $40d9: $00
    jr nz, jr_0b2_40c3                            ; $40da: $20 $e7

    ld [hl], $02                                  ; $40dc: $36 $02
    ld [de], a                                    ; $40de: $12
    adc [hl]                                      ; $40df: $8e
    ld d, e                                       ; $40e0: $53
    nop                                           ; $40e1: $00
    jr nz, jr_0b2_4129                            ; $40e2: $20 $45

    ld h, $af                                     ; $40e4: $26 $af

jr_0b2_40e6:
    ld d, a                                       ; $40e6: $57
    rlca                                          ; $40e7: $07
    nop                                           ; $40e8: $00
    rlca                                          ; $40e9: $07
    nop                                           ; $40ea: $00
    ld [bc], a                                    ; $40eb: $02
    ld [de], a                                    ; $40ec: $12
    rst $00                                       ; $40ed: $c7
    ld [hl-], a                                   ; $40ee: $32
    inc b                                         ; $40ef: $04
    ld e, $03                                     ; $40f0: $1e $03
    nop                                           ; $40f2: $00
    ld a, [hl+]                                   ; $40f3: $2a
    ld [hl], l                                    ; $40f4: $75
    inc bc                                        ; $40f5: $03
    jr nc, jr_0b2_40c9                            ; $40f6: $30 $d1

    ld a, [hl]                                    ; $40f8: $7e
    inc bc                                        ; $40f9: $03
    nop                                           ; $40fa: $00
    ld a, [hl+]                                   ; $40fb: $2a
    ld [hl], l                                    ; $40fc: $75
    cp h                                          ; $40fd: $bc
    ld b, d                                       ; $40fe: $42
    inc bc                                        ; $40ff: $03
    jr nc, jr_0b2_40a5                            ; $4100: $30 $a3

    nop                                           ; $4102: $00
    db $eb                                        ; $4103: $eb
    ld b, d                                       ; $4104: $42
    and $21                                       ; $4105: $e6 $21
    and c                                         ; $4107: $a1
    dec b                                         ; $4108: $05
    rlca                                          ; $4109: $07
    nop                                           ; $410a: $00
    ld h, [hl]                                    ; $410b: $66
    ld a, [hl+]                                   ; $410c: $2a
    ld h, a                                       ; $410d: $67
    ccf                                           ; $410e: $3f

jr_0b2_410f:
    ld l, $4f                                     ; $410f: $2e $4f
    nop                                           ; $4111: $00
    jr nz, @+$68                                  ; $4112: $20 $66

    ld a, [hl+]                                   ; $4114: $2a
    ld h, a                                       ; $4115: $67
    ccf                                           ; $4116: $3f
    ld l, $4f                                     ; $4117: $2e $4f
    nop                                           ; $4119: $00
    inc e                                         ; $411a: $1c
    ld l, $36                                     ; $411b: $2e $36
    xor b                                         ; $411d: $a8
    inc c                                         ; $411e: $0c
    pop de                                        ; $411f: $d1
    ld e, a                                       ; $4120: $5f
    jp nz, Jump_0b2_690d                          ; $4121: $c2 $0d $69

    ld l, $07                                     ; $4124: $2e $07
    nop                                           ; $4126: $00
    ld c, l                                       ; $4127: $4d
    ld c, e                                       ; $4128: $4b

jr_0b2_4129:
    inc bc                                        ; $4129: $03
    nop                                           ; $412a: $00
    ld [hl], l                                    ; $412b: $75
    dec d                                         ; $412c: $15
    ld e, $4f                                     ; $412d: $1e $4f
    inc bc                                        ; $412f: $03
    jr nc, jr_0b2_4135                            ; $4130: $30 $03

    nop                                           ; $4132: $00
    inc de                                        ; $4133: $13
    dec e                                         ; $4134: $1d

jr_0b2_4135:
    ld e, e                                       ; $4135: $5b
    ld [hl-], a                                   ; $4136: $32
    ld b, a                                       ; $4137: $47
    nop                                           ; $4138: $00
    and c                                         ; $4139: $a1
    add hl, bc                                    ; $413a: $09
    and a                                         ; $413b: $a7
    ld l, $67                                     ; $413c: $2e $67
    ld [$4f4e], sp                                ; $413e: $08 $4e $4f
    ld h, [hl]                                    ; $4141: $66
    inc b                                         ; $4142: $04
    ld h, [hl]                                    ; $4143: $66
    ld l, $e3                                     ; $4144: $2e $e3
    dec d                                         ; $4146: $15
    dec c                                         ; $4147: $0d
    ld b, a                                       ; $4148: $47
    nop                                           ; $4149: $00
    inc e                                         ; $414a: $1c
    rlca                                          ; $414b: $07
    nop                                           ; $414c: $00
    nop                                           ; $414d: $00
    jr nz, @+$0f                                  ; $414e: $20 $0d

    ld b, a                                       ; $4150: $47
    inc b                                         ; $4151: $04
    ld [$32a6], sp                                ; $4152: $08 $a6 $32
    ld h, [hl]                                    ; $4155: $66
    dec d                                         ; $4156: $15
    xor $5b                                       ; $4157: $ee $5b
    ld b, $00                                     ; $4159: $06 $00
    ld [$863a], a                                 ; $415b: $ea $3a $86
    dec d                                         ; $415e: $15
    pop de                                        ; $415f: $d1
    ld e, a                                       ; $4160: $5f
    nop                                           ; $4161: $00
    inc [hl]                                      ; $4162: $34
    ld l, l                                       ; $4163: $6d
    ld e, c                                       ; $4164: $59
    cp l                                          ; $4165: $bd
    ld b, d                                       ; $4166: $42
    ld c, b                                       ; $4167: $48
    inc b                                         ; $4168: $04
    jr z, jr_0b2_416b                             ; $4169: $28 $00

jr_0b2_416b:
    dec a                                         ; $416b: $3d
    ld e, a                                       ; $416c: $5f
    ld b, e                                       ; $416d: $43
    inc a                                         ; $416e: $3c
    inc [hl]                                      ; $416f: $34
    dec d                                         ; $4170: $15
    call nz, $e900                                ; $4171: $c4 $00 $e9
    ld a, [hl-]                                   ; $4174: $3a
    and c                                         ; $4175: $a1
    ld bc, $534f                                  ; $4176: $01 $4f $53
    ld b, $00                                     ; $4179: $06 $00
    inc bc                                        ; $417b: $03
    ld d, $67                                     ; $417c: $16 $67
    ld l, $e5                                     ; $417e: $2e $e5
    ld [$2000], sp                                ; $4180: $08 $00 $20
    rlca                                          ; $4183: $07
    nop                                           ; $4184: $00
    ld h, a                                       ; $4185: $67
    ld l, $e5                                     ; $4186: $2e $e5
    ld [$0503], sp                                ; $4188: $08 $03 $05
    pop hl                                        ; $418b: $e1
    dec c                                         ; $418c: $0d
    ld b, h                                       ; $418d: $44
    ld e, $07                                     ; $418e: $1e $07
    nop                                           ; $4190: $00
    dec b                                         ; $4191: $05
    nop                                           ; $4192: $00
    ld b, [hl]                                    ; $4193: $46
    ld h, $b0                                     ; $4194: $26 $b0
    ld d, a                                       ; $4196: $57
    add hl, bc                                    ; $4197: $09
    ccf                                           ; $4198: $3f
    inc b                                         ; $4199: $04
    inc d                                         ; $419a: $14
    ld a, [de]                                    ; $419b: $1a
    ld h, $11                                     ; $419c: $26 $11
    dec d                                         ; $419e: $15
    sbc [hl]                                      ; $419f: $9e
    ld l, e                                       ; $41a0: $6b
    nop                                           ; $41a1: $00
    inc [hl]                                      ; $41a2: $34
    ld e, e                                       ; $41a3: $5b
    ld [hl-], a                                   ; $41a4: $32
    sbc [hl]                                      ; $41a5: $9e
    ld h, a                                       ; $41a6: $67
    jr z, jr_0b2_41a9                             ; $41a7: $28 $00

jr_0b2_41a9:
    ld b, $00                                     ; $41a9: $06 $00
    adc b                                         ; $41ab: $88
    ld [hl-], a                                   ; $41ac: $32
    jp nz, Jump_0b2_6e0d                          ; $41ad: $c2 $0d $6e

    ld d, e                                       ; $41b0: $53
    dec b                                         ; $41b1: $05
    nop                                           ; $41b2: $00
    jr jr_0b2_4220                                ; $41b3: $18 $6b

    ld a, $11                                     ; $41b5: $3e $11
    jp Jump_000_0015                              ; $41b7: $c3 $15 $00


    jr nz, jr_0b2_41a9                            ; $41ba: $20 $ed

    ld d, c                                       ; $41bc: $51
    or h                                          ; $41bd: $b4
    ld h, d                                       ; $41be: $62
    rst $30                                       ; $41bf: $f7
    ld l, d                                       ; $41c0: $6a
    jp Jump_000_000d                              ; $41c1: $c3 $0d $00


    inc e                                         ; $41c4: $1c
    rlca                                          ; $41c5: $07
    nop                                           ; $41c6: $00
    push hl                                       ; $41c7: $e5
    inc a                                         ; $41c8: $3c
    ld b, $00                                     ; $41c9: $06 $00
    ld c, [hl]                                    ; $41cb: $4e
    ld a, [hl-]                                   ; $41cc: $3a
    inc b                                         ; $41cd: $04
    ld e, $4d                                     ; $41ce: $1e $4d
    ld c, e                                       ; $41d0: $4b
    ld [$3b00], sp                                ; $41d1: $08 $00 $3b
    ld l, $5f                                     ; $41d4: $2e $5f
    ld d, a                                       ; $41d6: $57
    cp h                                          ; $41d7: $bc
    ld b, d                                       ; $41d8: $42
    ld h, c                                       ; $41d9: $61
    ld bc, $469a                                  ; $41da: $01 $9a $46
    ld a, l                                       ; $41dd: $7d
    ld h, a                                       ; $41de: $67
    rlca                                          ; $41df: $07
    nop                                           ; $41e0: $00
    call nz, $a904                                ; $41e1: $c4 $04 $a9
    ld [hl], $02                                  ; $41e4: $36 $02
    ld [de], a                                    ; $41e6: $12
    ld c, a                                       ; $41e7: $4f
    ld d, e                                       ; $41e8: $53

jr_0b2_41e9:
    inc hl                                        ; $41e9: $23
    nop                                           ; $41ea: $00
    inc a                                         ; $41eb: $3c
    ld de, $735a                                  ; $41ec: $11 $5a $73
    ld l, [hl]                                    ; $41ef: $6e
    inc b                                         ; $41f0: $04
    nop                                           ; $41f1: $00
    jr nz, @-$6b                                  ; $41f2: $20 $93

    ld h, d                                       ; $41f4: $62
    rlca                                          ; $41f5: $07
    nop                                           ; $41f6: $00
    dec b                                         ; $41f7: $05
    dec a                                         ; $41f8: $3d
    nop                                           ; $41f9: $00
    jr jr_0b2_41e9                                ; $41fa: $18 $ed

    ld d, l                                       ; $41fc: $55
    daa                                           ; $41fd: $27
    ld b, c                                       ; $41fe: $41
    sub h                                         ; $41ff: $94
    ld l, [hl]                                    ; $4200: $6e
    dec b                                         ; $4201: $05
    nop                                           ; $4202: $00
    dec hl                                        ; $4203: $2b
    ld b, a                                       ; $4204: $47
    inc bc                                        ; $4205: $03
    ld d, $fd                                     ; $4206: $16 $fd
    dec c                                         ; $4208: $0d
    ld b, $00                                     ; $4209: $06 $00
    ld c, a                                       ; $420b: $4f
    ld b, [hl]                                    ; $420c: $46
    cp h                                          ; $420d: $bc
    ld a, e                                       ; $420e: $7b
    cp h                                          ; $420f: $bc
    ld b, d                                       ; $4210: $42
    dec b                                         ; $4211: $05
    nop                                           ; $4212: $00
    cp b                                          ; $4213: $b8
    ld c, [hl]                                    ; $4214: $4e
    pop bc                                        ; $4215: $c1
    dec b                                         ; $4216: $05
    ld a, b                                       ; $4217: $78
    nop                                           ; $4218: $00
    ld b, l                                       ; $4219: $45
    nop                                           ; $421a: $00
    xor d                                         ; $421b: $aa
    ld [hl], $e3                                  ; $421c: $36 $e3
    dec d                                         ; $421e: $15
    sbc e                                         ; $421f: $9b

jr_0b2_4220:
    dec c                                         ; $4220: $0d
    ld a, [hl+]                                   ; $4221: $2a
    nop                                           ; $4222: $00
    push af                                       ; $4223: $f5
    ld [$3617], sp                                ; $4224: $08 $17 $36
    dec a                                         ; $4227: $3d
    dec c                                         ; $4228: $0d
    ld b, $00                                     ; $4229: $06 $00
    pop af                                        ; $422b: $f1
    ld d, c                                       ; $422c: $51
    sbc h                                         ; $422d: $9c
    ld a, $00                                     ; $422e: $3e $00
    jr nz, jr_0b2_4235                            ; $4230: $20 $03

    inc b                                         ; $4232: $04
    sbc $11                                       ; $4233: $de $11

jr_0b2_4235:
    add hl, de                                    ; $4235: $19
    ld [hl], e                                    ; $4236: $73
    ld c, c                                       ; $4237: $49
    ld c, l                                       ; $4238: $4d
    pop hl                                        ; $4239: $e1
    dec c                                         ; $423a: $0d
    sub a                                         ; $423b: $97
    add hl, bc                                    ; $423c: $09
    rlca                                          ; $423d: $07
    nop                                           ; $423e: $00
    ld a, $0e                                     ; $423f: $3e $0e
    dec b                                         ; $4241: $05
    nop                                           ; $4242: $00
    reti                                          ; $4243: $d9


    nop                                           ; $4244: $00
    dec sp                                        ; $4245: $3b
    ld l, $24                                     ; $4246: $2e $24
    add hl, bc                                    ; $4248: $09
    rlca                                          ; $4249: $07
    nop                                           ; $424a: $00
    db $dd                                        ; $424b: $dd
    dec d                                         ; $424c: $15
    ret c                                         ; $424d: $d8

    ld d, [hl]                                    ; $424e: $56
    ld a, b                                       ; $424f: $78
    nop                                           ; $4250: $00
    ld b, $00                                     ; $4251: $06 $00
    and c                                         ; $4253: $a1
    dec b                                         ; $4254: $05
    cp $0d                                        ; $4255: $fe $0d
    dec b                                         ; $4257: $05
    ld e, $07                                     ; $4258: $1e $07
    nop                                           ; $425a: $00
    ld [hl], $09                                  ; $425b: $36 $09
    call Call_0b2_7e0c                            ; $425d: $cd $0c $7e
    ld de, $1c00                                  ; $4260: $11 $00 $1c
    db $d3                                        ; $4263: $d3
    dec a                                         ; $4264: $3d
    cp $4a                                        ; $4265: $fe $4a
    ld e, d                                       ; $4267: $5a
    ld a, e                                       ; $4268: $7b
    inc bc                                        ; $4269: $03
    nop                                           ; $426a: $00
    sub h                                         ; $426b: $94
    ld l, [hl]                                    ; $426c: $6e
    sbc e                                         ; $426d: $9b
    dec c                                         ; $426e: $0d
    cp l                                          ; $426f: $bd
    ld [hl], a                                    ; $4270: $77
    and c                                         ; $4271: $a1
    dec b                                         ; $4272: $05
    inc a                                         ; $4273: $3c
    ld a, [bc]                                    ; $4274: $0a
    jr z, jr_0b2_4277                             ; $4275: $28 $00

jr_0b2_4277:
    db $fc                                        ; $4277: $fc
    ld d, [hl]                                    ; $4278: $56
    and b                                         ; $4279: $a0
    ld bc, $5b18                                  ; $427a: $01 $18 $5b
    ld [hl], l                                    ; $427d: $75
    nop                                           ; $427e: $00
    dec h                                         ; $427f: $25
    nop                                           ; $4280: $00
    ld bc, $dc0e                                  ; $4281: $01 $0e $dc
    ld [bc], a                                    ; $4284: $02
    ld a, [$0756]                                 ; $4285: $fa $56 $07
    nop                                           ; $4288: $00
    ld b, $00                                     ; $4289: $06 $00
    add hl, bc                                    ; $428b: $09
    scf                                           ; $428c: $37
    inc hl                                        ; $428d: $23
    ld bc, $0572                                  ; $428e: $01 $72 $05
    rlca                                          ; $4291: $07
    nop                                           ; $4292: $00
    cp c                                          ; $4293: $b9
    ld c, [hl]                                    ; $4294: $4e
    ld [hl], d                                    ; $4295: $72
    add hl, hl                                    ; $4296: $29
    sbc a                                         ; $4297: $9f
    ld e, a                                       ; $4298: $5f
    nop                                           ; $4299: $00
    inc e                                         ; $429a: $1c
    cp l                                          ; $429b: $bd
    ld a, $94                                     ; $429c: $3e $94
    ld l, [hl]                                    ; $429e: $6e
    ld b, $41                                     ; $429f: $06 $41
    dec b                                         ; $42a1: $05
    nop                                           ; $42a2: $00
    db $10                                        ; $42a3: $10
    ld h, [hl]                                    ; $42a4: $66
    db $dd                                        ; $42a5: $dd
    dec c                                         ; $42a6: $0d
    jr jr_0b2_4320                                ; $42a7: $18 $77

    jr z, jr_0b2_42ab                             ; $42a9: $28 $00

jr_0b2_42ab:
    sub $19                                       ; $42ab: $d6 $19
    rst $18                                       ; $42ad: $df
    ld e, a                                       ; $42ae: $5f
    ld a, l                                       ; $42af: $7d
    ld a, [bc]                                    ; $42b0: $0a
    add b                                         ; $42b1: $80
    ld bc, $0319                                  ; $42b2: $01 $19 $03
    ld e, a                                       ; $42b5: $5f
    ld d, a                                       ; $42b6: $57
    rlca                                          ; $42b7: $07
    nop                                           ; $42b8: $00
    rlca                                          ; $42b9: $07
    nop                                           ; $42ba: $00
    ld e, a                                       ; $42bb: $5f
    ld d, a                                       ; $42bc: $57
    ld bc, $0f0e                                  ; $42bd: $01 $0e $0f
    ld bc, $0007                                  ; $42c0: $01 $07 $00
    dec bc                                        ; $42c3: $0b
    ccf                                           ; $42c4: $3f
    pop de                                        ; $42c5: $d1
    ld e, a                                       ; $42c6: $5f
    ld c, $01                                     ; $42c7: $0e $01
    rlca                                          ; $42c9: $07
    nop                                           ; $42ca: $00
    add hl, de                                    ; $42cb: $19
    ld a, [hl+]                                   ; $42cc: $2a
    ccf                                           ; $42cd: $3f
    ld c, a                                       ; $42ce: $4f
    xor l                                         ; $42cf: $ad
    ld [$0003], sp                                ; $42d0: $08 $03 $00
    jp c, $ce10                                   ; $42d3: $da $10 $ce

    ld e, c                                       ; $42d6: $59
    nop                                           ; $42d7: $00
    jr nz, jr_0b2_42e0                            ; $42d8: $20 $06

    nop                                           ; $42da: $00
    rra                                           ; $42db: $1f
    ld c, $7e                                     ; $42dc: $0e $7e
    ld e, a                                       ; $42de: $5f
    ld a, [c]                                     ; $42df: $f2

jr_0b2_42e0:
    inc b                                         ; $42e0: $04
    ld b, $00                                     ; $42e1: $06 $00
    sbc [hl]                                      ; $42e3: $9e
    ld c, $df                                     ; $42e4: $0e $df
    ld e, a                                       ; $42e6: $5f
    ld de, $0015                                  ; $42e7: $11 $15 $00
    ld [bc], a                                    ; $42ea: $02
    ld sp, $0705                                  ; $42eb: $31 $05 $07
    nop                                           ; $42ee: $00
    ld sp, hl                                     ; $42ef: $f9
    add hl, bc                                    ; $42f0: $09
    rlca                                          ; $42f1: $07
    nop                                           ; $42f2: $00
    ld a, [hl+]                                   ; $42f3: $2a
    ld h, c                                       ; $42f4: $61
    db $10                                        ; $42f5: $10
    ld l, e                                       ; $42f6: $6b
    ld b, a                                       ; $42f7: $47
    jr c, jr_0b2_4320                             ; $42f8: $38 $26

    nop                                           ; $42fa: $00
    and a                                         ; $42fb: $a7
    ld [hl-], a                                   ; $42fc: $32
    ld a, $0e                                     ; $42fd: $3e $0e
    call Call_000_0757                            ; $42ff: $cd $57 $07
    nop                                           ; $4302: $00
    ld sp, hl                                     ; $4303: $f9
    inc c                                         ; $4304: $0c
    cp [hl]                                       ; $4305: $be
    dec c                                         ; $4306: $0d
    ld e, l                                       ; $4307: $5d
    ld de, $0003                                  ; $4308: $11 $03 $00
    ld [hl], e                                    ; $430b: $73
    ld [$498a], sp                                ; $430c: $08 $8a $49
    nop                                           ; $430f: $00
    jr nz, jr_0b2_4318                            ; $4310: $20 $06

    inc b                                         ; $4312: $04
    cp l                                          ; $4313: $bd
    ld a, [hl-]                                   ; $4314: $3a
    ld [hl], h                                    ; $4315: $74
    dec d                                         ; $4316: $15
    ld a, a                                       ; $4317: $7f

jr_0b2_4318:
    ld e, e                                       ; $4318: $5b
    rlca                                          ; $4319: $07
    nop                                           ; $431a: $00
    cp a                                          ; $431b: $bf
    ld l, e                                       ; $431c: $6b
    ld sp, $1815                                  ; $431d: $31 $15 $18

jr_0b2_4320:
    ld [hl-], a                                   ; $4320: $32
    daa                                           ; $4321: $27
    ld [$4ca8], sp                                ; $4322: $08 $a8 $4c
    ld a, a                                       ; $4325: $7f
    ld h, e                                       ; $4326: $63
    ld c, h                                       ; $4327: $4c
    ld [hl], c                                    ; $4328: $71
    rlca                                          ; $4329: $07
    nop                                           ; $432a: $00
    db $ec                                        ; $432b: $ec
    ld c, l                                       ; $432c: $4d

Call_0b2_432d:
    ld h, a                                       ; $432d: $67
    ld c, b                                       ; $432e: $48
    pop de                                        ; $432f: $d1
    ld h, e                                       ; $4330: $63
    ld b, $00                                     ; $4331: $06 $00
    db $fc                                        ; $4333: $fc
    dec c                                         ; $4334: $0d
    and $21                                       ; $4335: $e6 $21
    ld e, a                                       ; $4337: $5f
    ld c, $3e                                     ; $4338: $0e $3e
    ld de, $11be                                  ; $433a: $11 $be $11
    cp $0d                                        ; $433d: $fe $0d
    ld a, [hl]                                    ; $433f: $7e
    ld de, $1c00                                  ; $4340: $11 $00 $1c
    db $db                                        ; $4343: $db
    db $10                                        ; $4344: $10
    db $ed                                        ; $4345: $ed
    ld d, c                                       ; $4346: $51
    ld e, d                                       ; $4347: $5a
    ld [hl], e                                    ; $4348: $73
    dec b                                         ; $4349: $05
    nop                                           ; $434a: $00
    adc l                                         ; $434b: $8d
    ld b, c                                       ; $434c: $41
    sbc h                                         ; $434d: $9c
    ld a, [hl-]                                   ; $434e: $3a
    nop                                           ; $434f: $00
    jr nz, jr_0b2_4378                            ; $4350: $20 $26

    nop                                           ; $4352: $00
    rla                                           ; $4353: $17
    ld l, $86                                     ; $4354: $2e $86
    add hl, de                                    ; $4356: $19
    cp $4e                                        ; $4357: $fe $4e
    daa                                           ; $4359: $27
    nop                                           ; $435a: $00
    ld l, h                                       ; $435b: $6c
    ld a, [hl-]                                   ; $435c: $3a
    daa                                           ; $435d: $27
    jr c, @-$0d                                   ; $435e: $38 $f1

    ld l, e                                       ; $4360: $6b
    ld h, $0c                                     ; $4361: $26 $0c
    xor h                                         ; $4363: $ac
    ld a, l                                       ; $4364: $7d
    rlca                                          ; $4365: $07
    ld a, [de]                                    ; $4366: $1a
    adc [hl]                                      ; $4367: $8e
    ld d, e                                       ; $4368: $53
    rlca                                          ; $4369: $07
    nop                                           ; $436a: $00
    reti                                          ; $436b: $d9


    add hl, bc                                    ; $436c: $09
    ld de, $9e05                                  ; $436d: $11 $05 $9e
    ld a, [bc]                                    ; $4370: $0a
    ld a, [hl+]                                   ; $4371: $2a
    nop                                           ; $4372: $00
    ld a, b                                       ; $4373: $78
    add hl, bc                                    ; $4374: $09
    jp nc, Jump_0b2_7e04                          ; $4375: $d2 $04 $7e

jr_0b2_4378:
    ld de, $1c00                                  ; $4378: $11 $00 $1c
    jr nc, jr_0b2_43d7                            ; $437b: $30 $5a

    cp $14                                        ; $437d: $fe $14
    ld e, c                                       ; $437f: $59
    ld l, a                                       ; $4380: $6f
    nop                                           ; $4381: $00
    jr nz, jr_0b2_43fe                            ; $4382: $20 $7a

    ld a, [hl-]                                   ; $4384: $3a
    rst $18                                       ; $4385: $df
    ld [hl], e                                    ; $4386: $73
    add hl, hl                                    ; $4387: $29
    inc b                                         ; $4388: $04
    inc b                                         ; $4389: $04
    nop                                           ; $438a: $00
    ei                                            ; $438b: $fb
    ld c, [hl]                                    ; $438c: $4e
    ld sp, $a115                                  ; $438d: $31 $15 $a1
    dec c                                         ; $4390: $0d
    ld b, [hl]                                    ; $4391: $46
    inc b                                         ; $4392: $04
    add hl, bc                                    ; $4393: $09
    dec sp                                        ; $4394: $3b
    ld a, [bc]                                    ; $4395: $0a
    ld a, l                                       ; $4396: $7d
    ld [hl-], a                                   ; $4397: $32
    ld [hl], a                                    ; $4398: $77
    ld h, $04                                     ; $4399: $26 $04
    adc c                                         ; $439b: $89
    ld [hl-], a                                   ; $439c: $32
    inc bc                                        ; $439d: $03
    ld c, $ee                                     ; $439e: $0e $ee
    ld l, l                                       ; $43a0: $6d
    rlca                                          ; $43a1: $07
    nop                                           ; $43a2: $00
    sub h                                         ; $43a3: $94
    dec b                                         ; $43a4: $05
    ccf                                           ; $43a5: $3f
    ld c, $bf                                     ; $43a6: $0e $bf
    ld a, [bc]                                    ; $43a8: $0a
    add hl, hl                                    ; $43a9: $29
    nop                                           ; $43aa: $00
    ld a, [$d10c]                                 ; $43ab: $fa $0c $d1
    inc b                                         ; $43ae: $04
    sbc [hl]                                      ; $43af: $9e
    dec c                                         ; $43b0: $0d
    nop                                           ; $43b1: $00
    inc e                                         ; $43b2: $1c
    ld e, $15                                     ; $43b3: $1e $15
    or h                                          ; $43b5: $b4
    ld h, d                                       ; $43b6: $62
    rst $38                                       ; $43b7: $ff
    ld a, a                                       ; $43b8: $7f
    ld b, $00                                     ; $43b9: $06 $00
    cp l                                          ; $43bb: $bd
    ld a, $4f                                     ; $43bc: $3e $4f
    add hl, hl                                    ; $43be: $29
    rst $38                                       ; $43bf: $ff
    ld l, e                                       ; $43c0: $6b
    rlca                                          ; $43c1: $07
    nop                                           ; $43c2: $00
    ld a, [de]                                    ; $43c3: $1a
    ld [hl+], a                                   ; $43c4: $22
    cp $4e                                        ; $43c5: $fe $4e
    rst $18                                       ; $43c7: $df
    ld l, a                                       ; $43c8: $6f
    ld b, c                                       ; $43c9: $41
    dec b                                         ; $43ca: $05
    sbc h                                         ; $43cb: $9c
    ld a, [hl-]                                   ; $43cc: $3a
    rlca                                          ; $43cd: $07
    nop                                           ; $43ce: $00
    adc $38                                       ; $43cf: $ce $38
    and c                                         ; $43d1: $a1
    ld bc, $6caa                                  ; $43d2: $01 $aa $6c
    rlca                                          ; $43d5: $07
    nop                                           ; $43d6: $00

jr_0b2_43d7:
    ld de, $647e                                  ; $43d7: $11 $7e $64
    dec c                                         ; $43da: $0d
    rra                                           ; $43db: $1f
    ld c, $e5                                     ; $43dc: $0e $e5
    ld a, [hl+]                                   ; $43de: $2a
    ld b, $00                                     ; $43df: $06 $00
    ld [$f700], sp                                ; $43e1: $08 $00 $f7
    ld [$117e], sp                                ; $43e4: $08 $7e $11
    sbc $0d                                       ; $43e7: $de $0d
    nop                                           ; $43e9: $00
    inc e                                         ; $43ea: $1c
    ld e, $15                                     ; $43eb: $1e $15
    or h                                          ; $43ed: $b4
    ld h, d                                       ; $43ee: $62

jr_0b2_43ef:
    cp l                                          ; $43ef: $bd
    ld [hl], a                                    ; $43f0: $77
    nop                                           ; $43f1: $00
    jr nz, @+$01                                  ; $43f2: $20 $ff

    ld l, a                                       ; $43f4: $6f
    ld l, h                                       ; $43f5: $6c
    add hl, sp                                    ; $43f6: $39
    rlca                                          ; $43f7: $07
    nop                                           ; $43f8: $00
    rlca                                          ; $43f9: $07
    nop                                           ; $43fa: $00
    ld e, l                                       ; $43fb: $5d
    ld e, $ff                                     ; $43fc: $1e $ff

jr_0b2_43fe:
    ld c, [hl]                                    ; $43fe: $4e
    rst $18                                       ; $43ff: $df
    ld [hl], e                                    ; $4400: $73
    ld b, $00                                     ; $4401: $06 $00
    sbc l                                         ; $4403: $9d
    ld [hl], $10                                  ; $4404: $36 $10

jr_0b2_4406:
    dec d                                         ; $4406: $15
    db $fd                                        ; $4407: $fd
    ld b, $07                                     ; $4408: $06 $07
    inc b                                         ; $440a: $04
    adc b                                         ; $440b: $88
    ld b, h                                       ; $440c: $44
    pop af                                        ; $440d: $f1
    ld a, l                                       ; $440e: $7d
    ret                                           ; $440f: $c9


    ld a, [hl+]                                   ; $4410: $2a
    rlca                                          ; $4411: $07
    nop                                           ; $4412: $00
    xor d                                         ; $4413: $aa
    ld l, $ff                                     ; $4414: $2e $ff
    dec c                                         ; $4416: $0d
    xor [hl]                                      ; $4417: $ae
    ld d, e                                       ; $4418: $53
    ld [$3600], sp                                ; $4419: $08 $00 $36
    add hl, bc                                    ; $441c: $09
    or d                                          ; $441d: $b2
    ld [$115d], sp                                ; $441e: $08 $5d $11
    nop                                           ; $4421: $00
    nop                                           ; $4422: $00
    rla                                           ; $4423: $17
    ld l, e                                       ; $4424: $6b
    nop                                           ; $4425: $00
    jr nz, jr_0b2_4406                            ; $4426: $20 $de

    ld a, a                                       ; $4428: $7f
    nop                                           ; $4429: $00
    jr nz, jr_0b2_4464                            ; $442a: $20 $38

    ld a, [hl-]                                   ; $442c: $3a
    rlca                                          ; $442d: $07
    nop                                           ; $442e: $00
    cp h                                          ; $442f: $bc
    ld b, [hl]                                    ; $4430: $46
    inc bc                                        ; $4431: $03
    nop                                           ; $4432: $00
    db $fd                                        ; $4433: $fd
    dec c                                         ; $4434: $0d
    sbc l                                         ; $4435: $9d
    ld a, $5f                                     ; $4436: $3e $5f
    ld d, a                                       ; $4438: $57
    ld b, $00                                     ; $4439: $06 $00
    jp z, $7b7c                                   ; $443b: $ca $7c $7b

    ld a, [hl-]                                   ; $443e: $3a
    rst $38                                       ; $443f: $ff
    ld a, [bc]                                    ; $4440: $0a
    rlca                                          ; $4441: $07
    nop                                           ; $4442: $00
    rst $00                                       ; $4443: $c7
    ld h, $a5                                     ; $4444: $26 $a5
    dec c                                         ; $4446: $0d
    adc a                                         ; $4447: $8f
    ld c, e                                       ; $4448: $4b
    db $e4                                        ; $4449: $e4
    add hl, bc                                    ; $444a: $09
    ld c, e                                       ; $444b: $4b
    ld a, l                                       ; $444c: $7d
    sbc $0d                                       ; $444d: $de $0d
    rlca                                          ; $444f: $07
    nop                                           ; $4450: $00
    ld [bc], a                                    ; $4451: $02
    nop                                           ; $4452: $00
    dec d                                         ; $4453: $15
    add hl, bc                                    ; $4454: $09
    ld l, [hl]                                    ; $4455: $6e
    inc b                                         ; $4456: $04
    ld e, [hl]                                    ; $4457: $5e
    ld de, $2000                                  ; $4458: $11 $00 $20
    sub e                                         ; $445b: $93
    ld e, [hl]                                    ; $445c: $5e
    db $dd                                        ; $445d: $dd
    ld a, e                                       ; $445e: $7b
    jr jr_0b2_44cc                                ; $445f: $18 $6b

    nop                                           ; $4461: $00
    jr nz, jr_0b2_43ef                            ; $4462: $20 $8b

jr_0b2_4464:
    ld c, c                                       ; $4464: $49
    push de                                       ; $4465: $d5
    ld h, [hl]                                    ; $4466: $66
    cpl                                           ; $4467: $2f
    ld d, [hl]                                    ; $4468: $56
    nop                                           ; $4469: $00
    nop                                           ; $446a: $00
    ld d, h                                       ; $446b: $54
    dec c                                         ; $446c: $0d
    ld e, $12                                     ; $446d: $1e $12
    rlca                                          ; $446f: $07
    nop                                           ; $4470: $00
    jp nz, Jump_0b2_4b0d                          ; $4471: $c2 $0d $4b

    ccf                                           ; $4474: $3f
    rlca                                          ; $4475: $07
    nop                                           ; $4476: $00
    db $d3                                        ; $4477: $d3
    ld e, a                                       ; $4478: $5f
    rlca                                          ; $4479: $07
    nop                                           ; $447a: $00
    ld h, a                                       ; $447b: $67
    ld a, [hl+]                                   ; $447c: $2a
    ld h, $44                                     ; $447d: $26 $44
    pop af                                        ; $447f: $f1
    ld e, e                                       ; $4480: $5b
    rlca                                          ; $4481: $07
    nop                                           ; $4482: $00
    pop de                                        ; $4483: $d1
    ld a, [hl]                                    ; $4484: $7e
    adc b                                         ; $4485: $88
    ld e, b                                       ; $4486: $58
    ld a, [hl+]                                   ; $4487: $2a
    ld a, c                                       ; $4488: $79
    inc bc                                        ; $4489: $03
    nop                                           ; $448a: $00
    ld e, [hl]                                    ; $448b: $5e
    ld de, $7fde                                  ; $448c: $11 $de $7f
    ld [hl], b                                    ; $448f: $70
    inc b                                         ; $4490: $04
    nop                                           ; $4491: $00
    jr nz, jr_0b2_44e5                            ; $4492: $20 $51

    ld e, d                                       ; $4494: $5a
    rst $30                                       ; $4495: $f7
    ld l, d                                       ; $4496: $6a
    sbc h                                         ; $4497: $9c
    ld [hl], a                                    ; $4498: $77
    nop                                           ; $4499: $00
    jr nz, jr_0b2_44e4                            ; $449a: $20 $48

    ld b, c                                       ; $449c: $41
    cpl                                           ; $449d: $2f
    ld d, [hl]                                    ; $449e: $56
    adc e                                         ; $449f: $8b
    ld c, c                                       ; $44a0: $49
    inc b                                         ; $44a1: $04
    nop                                           ; $44a2: $00
    ld d, [hl]                                    ; $44a3: $56
    add hl, bc                                    ; $44a4: $09
    or h                                          ; $44a5: $b4
    ld h, d                                       ; $44a6: $62
    ld e, $0e                                     ; $44a7: $1e $0e
    ld h, $00                                     ; $44a9: $26 $00
    ld hl, $030e                                  ; $44ab: $21 $0e $03
    inc l                                         ; $44ae: $2c
    ld c, d                                       ; $44af: $4a
    ld a, [hl+]                                   ; $44b0: $2a
    rlca                                          ; $44b1: $07
    nop                                           ; $44b2: $00
    dec h                                         ; $44b3: $25
    inc a                                         ; $44b4: $3c
    xor b                                         ; $44b5: $a8
    ld h, b                                       ; $44b6: $60
    daa                                           ; $44b7: $27
    jr nz, jr_0b2_44c1                            ; $44b8: $20 $07

    nop                                           ; $44ba: $00
    or c                                          ; $44bb: $b1
    ld a, [hl]                                    ; $44bc: $7e
    adc b                                         ; $44bd: $88
    ld d, h                                       ; $44be: $54
    ld a, [bc]                                    ; $44bf: $0a
    ld [hl], l                                    ; $44c0: $75

jr_0b2_44c1:
    dec b                                         ; $44c1: $05
    nop                                           ; $44c2: $00
    or h                                          ; $44c3: $b4
    ld [$6af7], sp                                ; $44c4: $08 $f7 $6a
    db $fd                                        ; $44c7: $fd
    stop                                          ; $44c8: $10 $00
    jr nz, @-$11                                  ; $44ca: $20 $ed

jr_0b2_44cc:
    ld d, c                                       ; $44cc: $51
    ld [hl], d                                    ; $44cd: $72
    ld e, [hl]                                    ; $44ce: $5e
    cpl                                           ; $44cf: $2f
    ld d, [hl]                                    ; $44d0: $56
    nop                                           ; $44d1: $00
    jr nz, jr_0b2_44da                            ; $44d2: $20 $06

    ld b, c                                       ; $44d4: $41
    ld h, $41                                     ; $44d5: $26 $41
    ld c, d                                       ; $44d7: $4a
    ld a, [hl+]                                   ; $44d8: $2a
    nop                                           ; $44d9: $00

jr_0b2_44da:
    nop                                           ; $44da: $00
    cp l                                          ; $44db: $bd
    dec c                                         ; $44dc: $0d
    adc d                                         ; $44dd: $8a
    ld c, c                                       ; $44de: $49
    ld c, b                                       ; $44df: $48
    nop                                           ; $44e0: $00
    add c                                         ; $44e1: $81
    dec b                                         ; $44e2: $05
    ld a, [bc]                                    ; $44e3: $0a

jr_0b2_44e4:
    ld h, l                                       ; $44e4: $65

jr_0b2_44e5:
    adc $75                                       ; $44e5: $ce $75
    rlca                                          ; $44e7: $07
    nop                                           ; $44e8: $00

jr_0b2_44e9:
    ld b, $04                                     ; $44e9: $06 $04
    cp $0d                                        ; $44eb: $fe $0d
    ld h, a                                       ; $44ed: $67
    ld c, h                                       ; $44ee: $4c
    ld a, [bc]                                    ; $44ef: $0a
    ld [hl], c                                    ; $44f0: $71
    ld b, $08                                     ; $44f1: $06 $08
    add a                                         ; $44f3: $87
    ld e, h                                       ; $44f4: $5c
    ld a, [c]                                     ; $44f5: $f2
    ld a, [hl]                                    ; $44f6: $7e
    ld l, e                                       ; $44f7: $6b
    ld a, l                                       ; $44f8: $7d
    ld b, $00                                     ; $44f9: $06 $00
    db $db                                        ; $44fb: $db
    db $10                                        ; $44fc: $10
    db $ed                                        ; $44fd: $ed
    ld d, c                                       ; $44fe: $51
    db $fc                                        ; $44ff: $fc
    ld b, [hl]                                    ; $4500: $46
    nop                                           ; $4501: $00
    jr nz, jr_0b2_44e9                            ; $4502: $20 $e5

    inc a                                         ; $4504: $3c
    ld c, b                                       ; $4505: $48
    ld b, l                                       ; $4506: $45
    db $fc                                        ; $4507: $fc
    ld b, [hl]                                    ; $4508: $46
    nop                                           ; $4509: $00
    jr nz, @-$10                                  ; $450a: $20 $ee

    ld e, l                                       ; $450c: $5d
    adc $75                                       ; $450d: $ce $75
    rlca                                          ; $450f: $07
    nop                                           ; $4510: $00
    inc b                                         ; $4511: $04
    nop                                           ; $4512: $00
    dec d                                         ; $4513: $15
    add hl, bc                                    ; $4514: $09
    daa                                           ; $4515: $27
    ld b, l                                       ; $4516: $45
    cp [hl]                                       ; $4517: $be
    dec c                                         ; $4518: $0d
    rlca                                          ; $4519: $07
    nop                                           ; $451a: $00
    ld l, e                                       ; $451b: $6b
    ld a, l                                       ; $451c: $7d
    ld c, $7a                                     ; $451d: $0e $7a
    sub b                                         ; $451f: $90
    ld a, [hl]                                    ; $4520: $7e
    dec b                                         ; $4521: $05

jr_0b2_4522:
    inc b                                         ; $4522: $04
    cp [hl]                                       ; $4523: $be
    ld de, $4c66                                  ; $4524: $11 $66 $4c
    or c                                          ; $4527: $b1
    inc b                                         ; $4528: $04
    ld b, $00                                     ; $4529: $06 $00
    ld a, h                                       ; $452b: $7c
    dec c                                         ; $452c: $0d
    ld b, [hl]                                    ; $452d: $46
    ld b, h                                       ; $452e: $44
    dec h                                         ; $452f: $25
    jr nz, jr_0b2_4578                            ; $4530: $20 $46

    nop                                           ; $4532: $00
    ld c, b                                       ; $4533: $48
    ld b, l                                       ; $4534: $45
    ld a, $53                                     ; $4535: $3e $53
    ld d, [hl]                                    ; $4537: $56
    dec e                                         ; $4538: $1d
    nop                                           ; $4539: $00
    inc e                                         ; $453a: $1c
    push hl                                       ; $453b: $e5
    inc a                                         ; $453c: $3c
    nop                                           ; $453d: $00

jr_0b2_453e:
    jr nz, @+$58                                  ; $453e: $20 $56

jr_0b2_4540:
    dec e                                         ; $4540: $1d
    nop                                           ; $4541: $00
    jr nz, jr_0b2_45af                            ; $4542: $20 $6b

    ld a, l                                       ; $4544: $7d
    ld c, $7a                                     ; $4545: $0e $7a
    sub b                                         ; $4547: $90
    ld a, [hl]                                    ; $4548: $7e
    ld [bc], a                                    ; $4549: $02
    nop                                           ; $454a: $00
    xor h                                         ; $454b: $ac
    ld d, l                                       ; $454c: $55
    ld a, [hl-]                                   ; $454d: $3a
    dec c                                         ; $454e: $0d
    sub h                                         ; $454f: $94
    ld l, [hl]                                    ; $4550: $6e
    rlca                                          ; $4551: $07
    nop                                           ; $4552: $00
    jp hl                                         ; $4553: $e9


    ld l, h                                       ; $4554: $6c
    ld c, a                                       ; $4555: $4f
    ld a, [hl]                                    ; $4556: $7e
    ld l, e                                       ; $4557: $6b
    ld a, l                                       ; $4558: $7d
    ld [hl+], a                                   ; $4559: $22
    inc h                                         ; $455a: $24
    ld a, l                                       ; $455b: $7d
    dec c                                         ; $455c: $0d
    adc a                                         ; $455d: $8f
    inc b                                         ; $455e: $04
    rlca                                          ; $455f: $07
    nop                                           ; $4560: $00
    rlca                                          ; $4561: $07
    nop                                           ; $4562: $00
    rst $10                                       ; $4563: $d7
    inc c                                         ; $4564: $0c

jr_0b2_4565:
    dec a                                         ; $4565: $3d
    ld de, $0490                                  ; $4566: $11 $90 $04
    inc bc                                        ; $4569: $03
    nop                                           ; $456a: $00
    xor [hl]                                      ; $456b: $ae
    ld b, l                                       ; $456c: $45
    sub l                                         ; $456d: $95
    ld h, [hl]                                    ; $456e: $66
    ret                                           ; $456f: $c9


    inc d                                         ; $4570: $14
    nop                                           ; $4571: $00
    jr nz, jr_0b2_4522                            ; $4572: $20 $ae

    ld b, l                                       ; $4574: $45
    sub l                                         ; $4575: $95
    ld h, [hl]                                    ; $4576: $66
    ret                                           ; $4577: $c9


jr_0b2_4578:
    inc d                                         ; $4578: $14
    nop                                           ; $4579: $00
    jr nz, jr_0b2_4565                            ; $457a: $20 $e9

    ld l, h                                       ; $457c: $6c
    ld c, a                                       ; $457d: $4f
    ld a, [hl]                                    ; $457e: $7e
    ld l, e                                       ; $457f: $6b
    ld a, l                                       ; $4580: $7d
    nop                                           ; $4581: $00
    ld [$7718], sp                                ; $4582: $08 $18 $77
    ld a, [de]                                    ; $4585: $1a
    dec c                                         ; $4586: $0d

jr_0b2_4587:
    ld a, [hl+]                                   ; $4587: $2a
    nop                                           ; $4588: $00
    rlca                                          ; $4589: $07
    nop                                           ; $458a: $00
    ld c, e                                       ; $458b: $4b
    ld a, l                                       ; $458c: $7d
    adc b                                         ; $458d: $88
    ld c, h                                       ; $458e: $4c
    ld c, $7e                                     ; $458f: $0e $7e
    daa                                           ; $4591: $27
    nop                                           ; $4592: $00
    dec a                                         ; $4593: $3d
    ld de, $64c9                                  ; $4594: $11 $c9 $64
    inc a                                         ; $4597: $3c
    ld d, e                                       ; $4598: $53
    rlca                                          ; $4599: $07
    nop                                           ; $459a: $00
    db $dd                                        ; $459b: $dd
    db $10                                        ; $459c: $10
    ld [hl], c                                    ; $459d: $71
    ld [$042c], sp                                ; $459e: $08 $2c $04
    ld [bc], a                                    ; $45a1: $02
    ld [$7294], sp                                ; $45a2: $08 $94 $72
    cp [hl]                                       ; $45a5: $be
    inc d                                         ; $45a6: $14
    ld a, e                                       ; $45a7: $7b
    ld [hl], a                                    ; $45a8: $77
    nop                                           ; $45a9: $00
    jr nz, jr_0b2_4540                            ; $45aa: $20 $94

    ld [hl], d                                    ; $45ac: $72
    cp [hl]                                       ; $45ad: $be
    inc d                                         ; $45ae: $14

jr_0b2_45af:
    ld a, e                                       ; $45af: $7b
    ld [hl], a                                    ; $45b0: $77
    nop                                           ; $45b1: $00
    jr nz, @+$03                                  ; $45b2: $20 $01

    jr nz, jr_0b2_453e                            ; $45b4: $20 $88

    ld c, h                                       ; $45b6: $4c
    ld c, $7e                                     ; $45b7: $0e $7e
    ld bc, $9c00                                  ; $45b9: $01 $00 $9c
    ld [hl], a                                    ; $45bc: $77
    inc e                                         ; $45bd: $1c
    ld de, $2000                                  ; $45be: $11 $00 $20
    nop                                           ; $45c1: $00
    nop                                           ; $45c2: $00
    ld c, h                                       ; $45c3: $4c
    ld [hl], l                                    ; $45c4: $75
    rst $28                                       ; $45c5: $ef
    ld [hl], l                                    ; $45c6: $75
    rlca                                          ; $45c7: $07
    nop                                           ; $45c8: $00
    nop                                           ; $45c9: $00
    nop                                           ; $45ca: $00
    rrca                                          ; $45cb: $0f
    ld h, d                                       ; $45cc: $62
    sbc h                                         ; $45cd: $9c
    ld a, e                                       ; $45ce: $7b
    or l                                          ; $45cf: $b5
    ld l, [hl]                                    ; $45d0: $6e
    nop                                           ; $45d1: $00
    nop                                           ; $45d2: $00
    push hl                                       ; $45d3: $e5
    inc a                                         ; $45d4: $3c
    rrca                                          ; $45d5: $0f
    ld e, d                                       ; $45d6: $5a
    ld c, c                                       ; $45d7: $49
    ld c, c                                       ; $45d8: $49
    nop                                           ; $45d9: $00
    nop                                           ; $45da: $00

jr_0b2_45db:
    rst $30                                       ; $45db: $f7
    ld [hl], d                                    ; $45dc: $72
    sbc $7b                                       ; $45dd: $de $7b
    nop                                           ; $45df: $00
    jr nz, jr_0b2_45e2                            ; $45e0: $20 $00

jr_0b2_45e2:
    jr nz, jr_0b2_45db                            ; $45e2: $20 $f7

    ld [hl], d                                    ; $45e4: $72
    sbc $7b                                       ; $45e5: $de $7b
    nop                                           ; $45e7: $00
    jr nz, jr_0b2_45ea                            ; $45e8: $20 $00

jr_0b2_45ea:
    jr nz, jr_0b2_4638                            ; $45ea: $20 $4c

    ld [hl], l                                    ; $45ec: $75
    rst $28                                       ; $45ed: $ef
    ld [hl], l                                    ; $45ee: $75
    rlca                                          ; $45ef: $07
    nop                                           ; $45f0: $00
    nop                                           ; $45f1: $00
    jr nz, jr_0b2_4587                            ; $45f2: $20 $93

    ld h, d                                       ; $45f4: $62
    sbc h                                         ; $45f5: $9c
    ld [hl], a                                    ; $45f6: $77
    ld l, c                                       ; $45f7: $69
    ld b, l                                       ; $45f8: $45
    push hl                                       ; $45f9: $e5
    inc a                                         ; $45fa: $3c
    ld sp, $f766                                  ; $45fb: $31 $66 $f7
    ld [hl], d                                    ; $45fe: $72
    ld c, c                                       ; $45ff: $49
    ld c, l                                       ; $4600: $4d
    daa                                           ; $4601: $27
    ld b, l                                       ; $4602: $45
    sub l                                         ; $4603: $95
    ld [hl], d                                    ; $4604: $72
    sbc h                                         ; $4605: $9c
    ld a, e                                       ; $4606: $7b
    adc $5d                                       ; $4607: $ce $5d
    ld l, d                                       ; $4609: $6a
    ld c, l                                       ; $460a: $4d
    sub h                                         ; $460b: $94
    ld l, [hl]                                    ; $460c: $6e
    jr nc, @+$60                                  ; $460d: $30 $5e

    ld e, d                                       ; $460f: $5a
    ld [hl], e                                    ; $4610: $73
    nop                                           ; $4611: $00
    jr nz, jr_0b2_4687                            ; $4612: $20 $73

    ld e, [hl]                                    ; $4614: $5e
    cp h                                          ; $4615: $bc
    ld a, e                                       ; $4616: $7b
    push hl                                       ; $4617: $e5
    inc a                                         ; $4618: $3c
    nop                                           ; $4619: $00

jr_0b2_461a:
    jr nz, jr_0b2_468f                            ; $461a: $20 $73

    ld e, [hl]                                    ; $461c: $5e
    cp h                                          ; $461d: $bc
    ld a, e                                       ; $461e: $7b
    push hl                                       ; $461f: $e5
    inc a                                         ; $4620: $3c
    nop                                           ; $4621: $00

jr_0b2_4622:
    jr nz, jr_0b2_4624                            ; $4622: $20 $00

jr_0b2_4624:
    jr nz, @+$01                                  ; $4624: $20 $ff

    ld l, a                                       ; $4626: $6f
    cp [hl]                                       ; $4627: $be
    dec hl                                        ; $4628: $2b
    nop                                           ; $4629: $00

jr_0b2_462a:
    jr nz, jr_0b2_462c                            ; $462a: $20 $00

jr_0b2_462c:
    jr nz, @+$01                                  ; $462c: $20 $ff

    ld l, a                                       ; $462e: $6f
    cp [hl]                                       ; $462f: $be
    dec hl                                        ; $4630: $2b
    nop                                           ; $4631: $00
    jr nz, jr_0b2_4634                            ; $4632: $20 $00

jr_0b2_4634:
    jr nz, @+$01                                  ; $4634: $20 $ff

    ld l, a                                       ; $4636: $6f
    cp [hl]                                       ; $4637: $be

jr_0b2_4638:
    dec hl                                        ; $4638: $2b
    nop                                           ; $4639: $00
    nop                                           ; $463a: $00
    ld e, h                                       ; $463b: $5c
    inc bc                                        ; $463c: $03
    rst $30                                       ; $463d: $f7
    ld b, d                                       ; $463e: $42
    jr nz, @+$1e                                  ; $463f: $20 $1c

    nop                                           ; $4641: $00
    jr nz, jr_0b2_46a0                            ; $4642: $20 $5c

    inc bc                                        ; $4644: $03
    rst $30                                       ; $4645: $f7
    ld b, d                                       ; $4646: $42
    jr nz, @+$1e                                  ; $4647: $20 $1c

    nop                                           ; $4649: $00
    jr nz, jr_0b2_46a8                            ; $464a: $20 $5c

    inc bc                                        ; $464c: $03
    rst $30                                       ; $464d: $f7
    ld b, d                                       ; $464e: $42
    jr nz, @+$1e                                  ; $464f: $20 $1c

    nop                                           ; $4651: $00
    jr nz, jr_0b2_46b0                            ; $4652: $20 $5c

    inc bc                                        ; $4654: $03
    rst $30                                       ; $4655: $f7
    ld b, d                                       ; $4656: $42
    jr nz, @+$1e                                  ; $4657: $20 $1c

    nop                                           ; $4659: $00
    jr nz, jr_0b2_465c                            ; $465a: $20 $00

jr_0b2_465c:
    jr nz, @+$01                                  ; $465c: $20 $ff

    ld l, a                                       ; $465e: $6f
    cp [hl]                                       ; $465f: $be
    dec hl                                        ; $4660: $2b
    nop                                           ; $4661: $00
    jr nz, jr_0b2_4664                            ; $4662: $20 $00

jr_0b2_4664:
    jr nz, @+$01                                  ; $4664: $20 $ff

    ld l, a                                       ; $4666: $6f
    cp [hl]                                       ; $4667: $be
    dec hl                                        ; $4668: $2b
    nop                                           ; $4669: $00
    jr nz, jr_0b2_466c                            ; $466a: $20 $00

jr_0b2_466c:
    jr nz, @+$01                                  ; $466c: $20 $ff

    ld l, a                                       ; $466e: $6f
    cp [hl]                                       ; $466f: $be
    dec hl                                        ; $4670: $2b
    nop                                           ; $4671: $00
    nop                                           ; $4672: $00
    cpl                                           ; $4673: $2f
    ld [hl], $dc                                  ; $4674: $36 $dc
    ld h, a                                       ; $4676: $67
    cp [hl]                                       ; $4677: $be
    dec de                                        ; $4678: $1b
    nop                                           ; $4679: $00
    jr nz, jr_0b2_461a                            ; $467a: $20 $9e

    rlca                                          ; $467c: $07
    cp [hl]                                       ; $467d: $be
    rra                                           ; $467e: $1f
    cp [hl]                                       ; $467f: $be
    dec de                                        ; $4680: $1b
    nop                                           ; $4681: $00
    jr nz, jr_0b2_4622                            ; $4682: $20 $9e

jr_0b2_4684:
    rlca                                          ; $4684: $07
    cp [hl]                                       ; $4685: $be
    rra                                           ; $4686: $1f

jr_0b2_4687:
    cp [hl]                                       ; $4687: $be
    dec de                                        ; $4688: $1b
    nop                                           ; $4689: $00
    jr nz, jr_0b2_462a                            ; $468a: $20 $9e

    rlca                                          ; $468c: $07
    cp [hl]                                       ; $468d: $be
    rra                                           ; $468e: $1f

jr_0b2_468f:
    cp [hl]                                       ; $468f: $be
    dec de                                        ; $4690: $1b
    nop                                           ; $4691: $00
    jr nz, jr_0b2_4694                            ; $4692: $20 $00

jr_0b2_4694:
    jr nz, @+$01                                  ; $4694: $20 $ff

    ld l, a                                       ; $4696: $6f
    cp [hl]                                       ; $4697: $be
    dec hl                                        ; $4698: $2b
    nop                                           ; $4699: $00
    jr nz, jr_0b2_469c                            ; $469a: $20 $00

jr_0b2_469c:
    jr nz, @+$01                                  ; $469c: $20 $ff

    ld l, a                                       ; $469e: $6f
    cp [hl]                                       ; $469f: $be

jr_0b2_46a0:
    dec hl                                        ; $46a0: $2b
    nop                                           ; $46a1: $00
    jr nz, jr_0b2_469c                            ; $46a2: $20 $f8

    ld b, $be                                     ; $46a4: $06 $be
    daa                                           ; $46a6: $27
    ld e, e                                       ; $46a7: $5b

jr_0b2_46a8:
    inc bc                                        ; $46a8: $03
    nop                                           ; $46a9: $00
    nop                                           ; $46aa: $00
    ld d, b                                       ; $46ab: $50
    ld a, [hl+]                                   ; $46ac: $2a
    ld d, a                                       ; $46ad: $57
    ld d, a                                       ; $46ae: $57
    inc b                                         ; $46af: $04

jr_0b2_46b0:
    add hl, bc                                    ; $46b0: $09
    nop                                           ; $46b1: $00
    jr nz, @-$2f                                  ; $46b2: $20 $cf

    ld de, $0ab6                                  ; $46b4: $11 $b6 $0a
    ld sp, hl                                     ; $46b7: $f9
    ld b, $00                                     ; $46b8: $06 $00
    jr nz, @-$2f                                  ; $46ba: $20 $cf

    ld de, $0ab6                                  ; $46bc: $11 $b6 $0a
    ld sp, hl                                     ; $46bf: $f9
    ld b, $00                                     ; $46c0: $06 $00
    jr nz, @-$2f                                  ; $46c2: $20 $cf

jr_0b2_46c4:
    ld de, $0ab6                                  ; $46c4: $11 $b6 $0a
    ld sp, hl                                     ; $46c7: $f9
    ld b, $00                                     ; $46c8: $06 $00
    jr nz, jr_0b2_46c4                            ; $46ca: $20 $f8

    ld b, $be                                     ; $46cc: $06 $be
    daa                                           ; $46ce: $27
    ld e, e                                       ; $46cf: $5b
    inc bc                                        ; $46d0: $03
    nop                                           ; $46d1: $00
    nop                                           ; $46d2: $00
    inc sp                                        ; $46d3: $33
    ld d, d                                       ; $46d4: $52
    sbc a                                         ; $46d5: $9f
    ld a, a                                       ; $46d6: $7f
    nop                                           ; $46d7: $00
    jr nz, jr_0b2_46da                            ; $46d8: $20 $00

jr_0b2_46da:
    nop                                           ; $46da: $00
    ld de, $1a12                                  ; $46db: $11 $12 $1a
    ld a, d                                       ; $46de: $7a
    ld [hl+], a                                   ; $46df: $22
    jr nz, jr_0b2_4684                            ; $46e0: $20 $a2

jr_0b2_46e2:
    inc b                                         ; $46e2: $04
    ld [$ee21], a                                 ; $46e3: $ea $21 $ee
    ld l, l                                       ; $46e6: $6d
    pop de                                        ; $46e7: $d1
    ld a, [hl-]                                   ; $46e8: $3a
    nop                                           ; $46e9: $00

jr_0b2_46ea:
    db $10                                        ; $46ea: $10
    xor $6d                                       ; $46eb: $ee $6d
    ld [hl], h                                    ; $46ed: $74
    ld a, [bc]                                    ; $46ee: $0a
    ld a, [hl-]                                   ; $46ef: $3a
    inc bc                                        ; $46f0: $03
    nop                                           ; $46f1: $00
    jr nz, jr_0b2_46e2                            ; $46f2: $20 $ee

    ld l, l                                       ; $46f4: $6d
    ld [hl], h                                    ; $46f5: $74
    ld a, [bc]                                    ; $46f6: $0a
    ld a, [hl-]                                   ; $46f7: $3a
    inc bc                                        ; $46f8: $03
    nop                                           ; $46f9: $00
    jr nz, jr_0b2_46ea                            ; $46fa: $20 $ee

    ld l, l                                       ; $46fc: $6d
    ld [hl], h                                    ; $46fd: $74
    ld a, [bc]                                    ; $46fe: $0a
    ld a, [hl-]                                   ; $46ff: $3a
    inc bc                                        ; $4700: $03
    nop                                           ; $4701: $00
    jr nz, @+$13                                  ; $4702: $20 $11

    ld [de], a                                    ; $4704: $12
    ld a, [de]                                    ; $4705: $1a
    ld a, d                                       ; $4706: $7a
    ld [hl+], a                                   ; $4707: $22
    jr nz, jr_0b2_470a                            ; $4708: $20 $00

jr_0b2_470a:
    db $10                                        ; $470a: $10
    sub $69                                       ; $470b: $d6 $69
    ld [$fe2c], a                                 ; $470d: $ea $2c $fe
    ld a, [hl]                                    ; $4710: $7e
    nop                                           ; $4711: $00
    nop                                           ; $4712: $00

jr_0b2_4713:
    rst $10                                       ; $4713: $d7
    ld b, $6c                                     ; $4714: $06 $6c
    ld sp, $035c                                  ; $4716: $31 $5c $03
    nop                                           ; $4719: $00
    nop                                           ; $471a: $00
    ld h, [hl]                                    ; $471b: $66
    dec c                                         ; $471c: $0d
    jp nz, $e800                                  ; $471d: $c2 $00 $e8

    add hl, de                                    ; $4720: $19
    nop                                           ; $4721: $00
    nop                                           ; $4722: $00
    xor $6d                                       ; $4723: $ee $6d
    ld a, [hl-]                                   ; $4725: $3a
    rlca                                          ; $4726: $07

jr_0b2_4727:
    sbc $43                                       ; $4727: $de $43
    nop                                           ; $4729: $00
    nop                                           ; $472a: $00
    di                                            ; $472b: $f3
    ld d, l                                       ; $472c: $55
    ei                                            ; $472d: $fb
    halt                                          ; $472e: $76
    nop                                           ; $472f: $00
    jr nz, jr_0b2_4732                            ; $4730: $20 $00

jr_0b2_4732:
    jr nz, jr_0b2_4727                            ; $4732: $20 $f3

    ld d, l                                       ; $4734: $55
    ei                                            ; $4735: $fb
    halt                                          ; $4736: $76
    nop                                           ; $4737: $00
    jr nz, jr_0b2_473a                            ; $4738: $20 $00

jr_0b2_473a:
    jr nz, jr_0b2_4713                            ; $473a: $20 $d7

    ld b, $6c                                     ; $473c: $06 $6c
    ld sp, $035c                                  ; $473e: $31 $5c $03
    nop                                           ; $4741: $00
    ld [$40cd], sp                                ; $4742: $08 $cd $40
    ld a, h                                       ; $4745: $7c
    inc bc                                        ; $4746: $03
    sub h                                         ; $4747: $94
    ld e, l                                       ; $4748: $5d
    nop                                           ; $4749: $00
    nop                                           ; $474a: $00
    xor $6d                                       ; $474b: $ee $6d
    ld a, l                                       ; $474d: $7d
    dec bc                                        ; $474e: $0b
    ld a, h                                       ; $474f: $7c
    ld b, a                                       ; $4750: $47
    jr nz, jr_0b2_4753                            ; $4751: $20 $00

jr_0b2_4753:
    pop de                                        ; $4753: $d1
    add hl, hl                                    ; $4754: $29
    ret                                           ; $4755: $c9


    db $10                                        ; $4756: $10
    reti                                          ; $4757: $d9


    ld a, $00                                     ; $4758: $3e $00
    nop                                           ; $475a: $00
    ld c, [hl]                                    ; $475b: $4e
    dec a                                         ; $475c: $3d
    xor $6d                                       ; $475d: $ee $6d
    reti                                          ; $475f: $d9


    ld a, $00                                     ; $4760: $3e $00

jr_0b2_4762:
    nop                                           ; $4762: $00
    ld [hl], d                                    ; $4763: $72
    ld d, l                                       ; $4764: $55
    cp e                                          ; $4765: $bb
    ld [hl], d                                    ; $4766: $72
    nop                                           ; $4767: $00
    jr nz, jr_0b2_476a                            ; $4768: $20 $00

jr_0b2_476a:
    jr nz, jr_0b2_47de                            ; $476a: $20 $72

    ld d, l                                       ; $476c: $55
    cp e                                          ; $476d: $bb
    ld [hl], d                                    ; $476e: $72
    nop                                           ; $476f: $00
    jr nz, jr_0b2_4772                            ; $4770: $20 $00

jr_0b2_4772:
    jr nz, jr_0b2_4762                            ; $4772: $20 $ee

    ld l, l                                       ; $4774: $6d
    ld a, l                                       ; $4775: $7d
    dec bc                                        ; $4776: $0b
    ld a, h                                       ; $4777: $7c
    ld b, a                                       ; $4778: $47
    nop                                           ; $4779: $00
    nop                                           ; $477a: $00
    call Call_000_003c                            ; $477b: $cd $3c $00
    jr nz, jr_0b2_47c6                            ; $477e: $20 $46

    inc e                                         ; $4780: $1c
    nop                                           ; $4781: $00
    nop                                           ; $4782: $00
    ld l, [hl]                                    ; $4783: $6e
    add hl, sp                                    ; $4784: $39
    cp a                                          ; $4785: $bf
    ld a, a                                       ; $4786: $7f
    ret nc                                        ; $4787: $d0

    ld h, c                                       ; $4788: $61
    ld hl, $3f04                                  ; $4789: $21 $04 $3f
    ld a, a                                       ; $478c: $7f
    ld l, $1d                                     ; $478d: $2e $1d
    rst $38                                       ; $478f: $ff
    ld b, e                                       ; $4790: $43
    nop                                           ; $4791: $00
    nop                                           ; $4792: $00
    call Call_0b2_656d                            ; $4793: $cd $6d $65
    inc b                                         ; $4796: $04
    adc $6d                                       ; $4797: $ce $6d
    nop                                           ; $4799: $00
    inc b                                         ; $479a: $04
    call $cd3c                                    ; $479b: $cd $3c $cd
    ld l, l                                       ; $479e: $6d
    rla                                           ; $479f: $17
    ld h, [hl]                                    ; $47a0: $66
    nop                                           ; $47a1: $00
    jr nz, @-$31                                  ; $47a2: $20 $cd

    inc a                                         ; $47a4: $3c
    call Call_000_176d                            ; $47a5: $cd $6d $17
    ld h, [hl]                                    ; $47a8: $66
    nop                                           ; $47a9: $00
    jr nz, jr_0b2_481a                            ; $47aa: $20 $6e

    add hl, sp                                    ; $47ac: $39
    cp a                                          ; $47ad: $bf
    ld a, a                                       ; $47ae: $7f
    ret nc                                        ; $47af: $d0

    ld h, c                                       ; $47b0: $61
    nop                                           ; $47b1: $00
    nop                                           ; $47b2: $00

jr_0b2_47b3:
    call z, Call_000_113c                         ; $47b3: $cc $3c $11
    ld [de], a                                    ; $47b6: $12
    dec h                                         ; $47b7: $25
    jr nz, jr_0b2_47bd                            ; $47b8: $20 $03

    db $10                                        ; $47ba: $10
    or l                                          ; $47bb: $b5
    ld h, c                                       ; $47bc: $61

jr_0b2_47bd:
    ld a, $7f                                     ; $47bd: $3e $7f
    db $ed                                        ; $47bf: $ed
    inc a                                         ; $47c0: $3c
    nop                                           ; $47c1: $00
    nop                                           ; $47c2: $00
    sub $69                                       ; $47c3: $d6 $69
    ld e, a                                       ; $47c5: $5f

jr_0b2_47c6:
    ld [hl], e                                    ; $47c6: $73
    add a                                         ; $47c7: $87
    inc l                                         ; $47c8: $2c
    nop                                           ; $47c9: $00
    nop                                           ; $47ca: $00
    call Call_0b2_676d                            ; $47cb: $cd $6d $67
    nop                                           ; $47ce: $00
    ld [hl+], a                                   ; $47cf: $22
    ld [$0000], sp                                ; $47d0: $08 $00 $00
    ld l, c                                       ; $47d3: $69
    inc l                                         ; $47d4: $2c
    call $ee6d                                    ; $47d5: $cd $6d $ee
    ld b, h                                       ; $47d8: $44
    nop                                           ; $47d9: $00
    jr nz, @-$0e                                  ; $47da: $20 $f0

    dec d                                         ; $47dc: $15
    ld [hl-], a                                   ; $47dd: $32

jr_0b2_47de:
    ld [de], a                                    ; $47de: $12
    xor $44                                       ; $47df: $ee $44
    nop                                           ; $47e1: $00
    jr nz, jr_0b2_47b3                            ; $47e2: $20 $cf

    dec d                                         ; $47e4: $15
    ld a, [hl-]                                   ; $47e5: $3a
    inc bc                                        ; $47e6: $03
    sub l                                         ; $47e7: $95
    ld c, $00                                     ; $47e8: $0e $00
    nop                                           ; $47ea: $00
    xor h                                         ; $47eb: $ac
    ld l, c                                       ; $47ec: $69
    ld [hl-], a                                   ; $47ed: $32
    ld [de], a                                    ; $47ee: $12
    ld a, [hl-]                                   ; $47ef: $3a
    rlca                                          ; $47f0: $07
    nop                                           ; $47f1: $00
    inc b                                         ; $47f2: $04
    or a                                          ; $47f3: $b7
    ld [bc], a                                    ; $47f4: $02
    ld b, a                                       ; $47f5: $47
    inc h                                         ; $47f6: $24
    sbc $3b                                       ; $47f7: $de $3b
    inc bc                                        ; $47f9: $03
    db $10                                        ; $47fa: $10
    xor h                                         ; $47fb: $ac
    jr c, jr_0b2_4874                             ; $47fc: $38 $76

    ld [bc], a                                    ; $47fe: $02
    rst $30                                       ; $47ff: $f7
    ld l, c                                       ; $4800: $69
    ld bc, $8904                                  ; $4801: $01 $04 $89
    jr nc, jr_0b2_4881                            ; $4804: $30 $7b

    ld a, [hl]                                    ; $4806: $7e
    ld [hl], b                                    ; $4807: $70
    ld c, c                                       ; $4808: $49
    ld [bc], a                                    ; $4809: $02
    ld [$69ac], sp                                ; $480a: $08 $ac $69
    ld e, h                                       ; $480d: $5c
    inc bc                                        ; $480e: $03
    ld l, b                                       ; $480f: $68
    jr z, jr_0b2_4812                             ; $4810: $28 $00

jr_0b2_4812:
    jr nz, @-$2f                                  ; $4812: $20 $cf

    dec d                                         ; $4814: $15
    ld e, h                                       ; $4815: $5c
    inc bc                                        ; $4816: $03
    ld d, e                                       ; $4817: $53
    ld c, $00                                     ; $4818: $0e $00

jr_0b2_481a:
    inc e                                         ; $481a: $1c
    ld de, $de12                                  ; $481b: $11 $12 $de
    ld d, e                                       ; $481e: $53
    dec sp                                        ; $481f: $3b
    inc bc                                        ; $4820: $03
    nop                                           ; $4821: $00
    nop                                           ; $4822: $00
    adc h                                         ; $4823: $8c
    ld l, c                                       ; $4824: $69
    xor h                                         ; $4825: $ac
    ld l, c                                       ; $4826: $69
    dec sp                                        ; $4827: $3b
    inc bc                                        ; $4828: $03
    nop                                           ; $4829: $00
    nop                                           ; $482a: $00
    xor h                                         ; $482b: $ac
    ld l, c                                       ; $482c: $69
    and l                                         ; $482d: $a5
    nop                                           ; $482e: $00
    ld c, h                                       ; $482f: $4c
    ld bc, $0000                                  ; $4830: $01 $00 $00
    ld l, c                                       ; $4833: $69
    ld hl, $1404                                  ; $4834: $21 $04 $14
    ld bc, $0004                                  ; $4837: $01 $04 $00
    nop                                           ; $483a: $00
    inc bc                                        ; $483b: $03
    db $10                                        ; $483c: $10
    dec h                                         ; $483d: $25
    nop                                           ; $483e: $00
    ld bc, $0000                                  ; $483f: $01 $00 $00
    nop                                           ; $4842: $00
    adc e                                         ; $4843: $8b
    ld l, c                                       ; $4844: $69
    inc bc                                        ; $4845: $03
    db $10                                        ; $4846: $10
    adc h                                         ; $4847: $8c
    ld l, c                                       ; $4848: $69
    nop                                           ; $4849: $00
    inc e                                         ; $484a: $1c
    ld d, h                                       ; $484b: $54
    ld c, $be                                     ; $484c: $0e $be
    dec hl                                        ; $484e: $2b
    adc e                                         ; $484f: $8b
    ld l, c                                       ; $4850: $69
    nop                                           ; $4851: $00
    ld [$1b9d], sp                                ; $4852: $08 $9d $1b
    ld l, e                                       ; $4855: $6b
    ld l, c                                       ; $4856: $69
    rst $18                                       ; $4857: $df
    ld h, a                                       ; $4858: $67
    nop                                           ; $4859: $00
    nop                                           ; $485a: $00
    ld l, e                                       ; $485b: $6b
    ld l, c                                       ; $485c: $69
    ei                                            ; $485d: $fb
    ld h, e                                       ; $485e: $63
    add h                                         ; $485f: $84
    db $10                                        ; $4860: $10
    ld b, c                                       ; $4861: $41
    nop                                           ; $4862: $00
    inc [hl]                                      ; $4863: $34
    ld b, a                                       ; $4864: $47
    ld l, b                                       ; $4865: $68
    add hl, de                                    ; $4866: $19
    ld c, h                                       ; $4867: $4c
    ld [hl+], a                                   ; $4868: $22
    add d                                         ; $4869: $82
    inc b                                         ; $486a: $04
    or c                                          ; $486b: $b1
    ld a, [hl-]                                   ; $486c: $3a
    inc c                                         ; $486d: $0c
    ld h, $dc                                     ; $486e: $26 $dc
    ld l, a                                       ; $4870: $6f
    nop                                           ; $4871: $00
    nop                                           ; $4872: $00
    ld h, [hl]                                    ; $4873: $66

jr_0b2_4874:
    dec c                                         ; $4874: $0d
    ld c, $32                                     ; $4875: $0e $32
    jp RST_08                                     ; $4877: $c3 $08 $00


    nop                                           ; $487a: $00
    ld l, e                                       ; $487b: $6b
    ld h, l                                       ; $487c: $65
    adc e                                         ; $487d: $8b
    ld l, c                                       ; $487e: $69
    ld l, e                                       ; $487f: $6b
    ld l, c                                       ; $4880: $69

jr_0b2_4881:
    nop                                           ; $4881: $00
    inc e                                         ; $4882: $1c
    ld l, e                                       ; $4883: $6b
    ld h, l                                       ; $4884: $65
    sbc l                                         ; $4885: $9d
    daa                                           ; $4886: $27
    rst $38                                       ; $4887: $ff
    ld a, e                                       ; $4888: $7b
    nop                                           ; $4889: $00
    nop                                           ; $488a: $00
    ld a, l                                       ; $488b: $7d
    inc bc                                        ; $488c: $03
    ld l, d                                       ; $488d: $6a
    ld h, l                                       ; $488e: $65
    rst $18                                       ; $488f: $df
    ld e, a                                       ; $4890: $5f
    nop                                           ; $4891: $00
    nop                                           ; $4892: $00
    or c                                          ; $4893: $b1
    ld a, $48                                     ; $4894: $3e $48
    add hl, de                                    ; $4896: $19
    halt                                          ; $4897: $76
    ld c, a                                       ; $4898: $4f
    nop                                           ; $4899: $00
    nop                                           ; $489a: $00
    ld c, [hl]                                    ; $489b: $4e
    ld b, l                                       ; $489c: $45
    inc b                                         ; $489d: $04
    jr jr_0b2_48a0                                ; $489e: $18 $00

jr_0b2_48a0:
    inc c                                         ; $48a0: $0c
    nop                                           ; $48a1: $00
    nop                                           ; $48a2: $00
    ld c, [hl]                                    ; $48a3: $4e
    ld b, l                                       ; $48a4: $45
    inc b                                         ; $48a5: $04
    jr jr_0b2_48ae                                ; $48a6: $18 $06

    inc h                                         ; $48a8: $24
    nop                                           ; $48a9: $00
    nop                                           ; $48aa: $00
    db $ed                                        ; $48ab: $ed
    dec l                                         ; $48ac: $2d
    reti                                          ; $48ad: $d9


jr_0b2_48ae:
    dec l                                         ; $48ae: $2d
    ld c, [hl]                                    ; $48af: $4e
    ld b, l                                       ; $48b0: $45
    ld hl, $4a04                                  ; $48b1: $21 $04 $4a
    ld h, l                                       ; $48b4: $65
    ld [hl], c                                    ; $48b5: $71
    ld a, [hl-]                                   ; $48b6: $3a
    jp c, $0063                                   ; $48b7: $da $63 $00

    inc e                                         ; $48ba: $1c
    ld c, d                                       ; $48bb: $4a
    ld h, l                                       ; $48bc: $65
    ld a, l                                       ; $48bd: $7d
    rrca                                          ; $48be: $0f
    rst $18                                       ; $48bf: $df
    ld d, a                                       ; $48c0: $57
    jr nz, jr_0b2_48c3                            ; $48c1: $20 $00

jr_0b2_48c3:
    cp [hl]                                       ; $48c3: $be
    ccf                                           ; $48c4: $3f
    ld c, d                                       ; $48c5: $4a
    ld h, l                                       ; $48c6: $65
    rst $38                                       ; $48c7: $ff
    ld [hl], a                                    ; $48c8: $77
    nop                                           ; $48c9: $00
    nop                                           ; $48ca: $00
    add b                                         ; $48cb: $80
    nop                                           ; $48cc: $00
    dec b                                         ; $48cd: $05
    nop                                           ; $48ce: $00
    db $e3                                        ; $48cf: $e3
    nop                                           ; $48d0: $00
    ld h, b                                       ; $48d1: $60
    inc b                                         ; $48d2: $04
    rst $38                                       ; $48d3: $ff
    ld a, a                                       ; $48d4: $7f
    add hl, de                                    ; $48d5: $19
    dec c                                         ; $48d6: $0d
    ld b, $24                                     ; $48d7: $06 $24
    add b                                         ; $48d9: $80
    nop                                           ; $48da: $00
    rst $38                                       ; $48db: $ff
    ld a, a                                       ; $48dc: $7f
    ld c, [hl]                                    ; $48dd: $4e
    ld b, l                                       ; $48de: $45
    inc b                                         ; $48df: $04
    inc d                                         ; $48e0: $14
    inc hl                                        ; $48e1: $23
    nop                                           ; $48e2: $00
    dec l                                         ; $48e3: $2d
    ld sp, $155c                                  ; $48e4: $31 $5c $15
    cp [hl]                                       ; $48e7: $be
    ld b, d                                       ; $48e8: $42
    ld h, c                                       ; $48e9: $61
    nop                                           ; $48ea: $00
    ld c, d                                       ; $48eb: $4a
    ld h, l                                       ; $48ec: $65
    adc c                                         ; $48ed: $89
    dec e                                         ; $48ee: $1d
    sbc b                                         ; $48ef: $98
    ld d, a                                       ; $48f0: $57
    nop                                           ; $48f1: $00
    inc e                                         ; $48f2: $1c
    ld c, c                                       ; $48f3: $49
    ld h, l                                       ; $48f4: $65
    sub l                                         ; $48f5: $95
    ld a, [bc]                                    ; $48f6: $0a
    cp [hl]                                       ; $48f7: $be
    daa                                           ; $48f8: $27
    ld b, b                                       ; $48f9: $40
    inc b                                         ; $48fa: $04
    sbc [hl]                                      ; $48fb: $9e
    inc de                                        ; $48fc: $13
    add hl, hl                                    ; $48fd: $29
    ld h, l                                       ; $48fe: $65
    rst $38                                       ; $48ff: $ff
    ld a, a                                       ; $4900: $7f
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    add hl, hl                                    ; $4903: $29
    ld h, l                                       ; $4904: $65
    cp h                                          ; $4905: $bc
    dec d                                         ; $4906: $15
    ld h, $00                                     ; $4907: $26 $00
    nop                                           ; $4909: $00
    ld [$354e], sp                                ; $490a: $08 $4e $35
    ld a, a                                       ; $490d: $7f
    ld a, [hl+]                                   ; $490e: $2a
    ld l, b                                       ; $490f: $68
    inc b                                         ; $4910: $04
    nop                                           ; $4911: $00
    nop                                           ; $4912: $00
    ld c, [hl]                                    ; $4913: $4e
    ld b, l                                       ; $4914: $45
    ld a, l                                       ; $4915: $7d
    ld a, $1f                                     ; $4916: $3e $1f
    ld d, e                                       ; $4918: $53
    ld hl, $b304                                  ; $4919: $21 $04 $b3
    ld hl, $261d                                  ; $491c: $21 $1d $26
    rrc h                                         ; $491f: $cb $0c
    ld hl, $5600                                  ; $4921: $21 $00 $56
    ld c, a                                       ; $4924: $4f
    db $e3                                        ; $4925: $e3
    inc b                                         ; $4926: $04
    adc d                                         ; $4927: $8a
    dec h                                         ; $4928: $25
    nop                                           ; $4929: $00
    inc e                                         ; $492a: $1c
    add hl, hl                                    ; $492b: $29
    ld h, l                                       ; $492c: $65
    ld de, $be12                                  ; $492d: $11 $12 $be
    rra                                           ; $4930: $1f
    nop                                           ; $4931: $00
    inc b                                         ; $4932: $04
    ld [$3265], sp                                ; $4933: $08 $65 $32
    ld c, $9e                                     ; $4936: $0e $9e
    rlca                                          ; $4938: $07
    ld h, $00                                     ; $4939: $26 $00
    ld [$5c65], sp                                ; $493b: $08 $65 $5c
    ld h, $0f                                     ; $493e: $26 $0f
    add hl, bc                                    ; $4940: $09
    ld h, l                                       ; $4941: $65
    inc b                                         ; $4942: $04
    rla                                           ; $4943: $17
    ld [hl+], a                                   ; $4944: $22
    cp [hl]                                       ; $4945: $be
    ld b, [hl]                                    ; $4946: $46
    ld a, [bc]                                    ; $4947: $0a
    dec d                                         ; $4948: $15
    or c                                          ; $4949: $b1
    dec l                                         ; $494a: $2d
    ld a, l                                       ; $494b: $7d
    ld a, $1f                                     ; $494c: $3e $1f
    ld d, e                                       ; $494e: $53
    cp [hl]                                       ; $494f: $be
    rra                                           ; $4950: $1f
    ld h, [hl]                                    ; $4951: $66
    ld [$1e1c], sp                                ; $4952: $08 $1c $1e
    jr nc, jr_0b2_4968                            ; $4955: $30 $11

    ld e, a                                       ; $4957: $5f
    ld b, e                                       ; $4958: $43
    nop                                           ; $4959: $00
    nop                                           ; $495a: $00
    ld [$d265], sp                                ; $495b: $08 $65 $d2
    ld a, $26                                     ; $495e: $3e $26
    nop                                           ; $4960: $00
    nop                                           ; $4961: $00
    inc e                                         ; $4962: $1c
    ld d, d                                       ; $4963: $52
    ld c, $f3                                     ; $4964: $0e $f3
    ld b, [hl]                                    ; $4966: $46
    ld a, h                                       ; $4967: $7c

jr_0b2_4968:
    inc bc                                        ; $4968: $03
    nop                                           ; $4969: $00
    nop                                           ; $496a: $00
    ld [hl-], a                                   ; $496b: $32
    ld c, $08                                     ; $496c: $0e $08
    ld h, c                                       ; $496e: $61
    nop                                           ; $496f: $00
    jr nz, @+$28                                  ; $4970: $20 $26

    nop                                           ; $4972: $00
    ld [$3c61], sp                                ; $4973: $08 $61 $3c
    ld a, [hl+]                                   ; $4976: $2a
    sbc a                                         ; $4977: $9f
    ld l, $43                                     ; $4978: $2e $43
    inc b                                         ; $497a: $04
    ld hl, sp+$19                                 ; $497b: $f8 $19
    sbc $4a                                       ; $497d: $de $4a
    ld [de], a                                    ; $497f: $12
    add hl, bc                                    ; $4980: $09
    ld b, e                                       ; $4981: $43
    inc b                                         ; $4982: $04
    rst $18                                       ; $4983: $df
    ld c, d                                       ; $4984: $4a
    or c                                          ; $4985: $b1
    dec l                                         ; $4986: $2d
    rst $38                                       ; $4987: $ff
    ld a, a                                       ; $4988: $7f
    nop                                           ; $4989: $00
    nop                                           ; $498a: $00
    sub l                                         ; $498b: $95
    add hl, de                                    ; $498c: $19
    sbc [hl]                                      ; $498d: $9e
    ld a, [hl+]                                   ; $498e: $2a
    rst $08                                       ; $498f: $cf
    ld [$0000], sp                                ; $4990: $08 $00 $00
    rst $20                                       ; $4993: $e7
    ld h, b                                       ; $4994: $60
    ld h, $00                                     ; $4995: $26 $00
    ld [$0061], sp                                ; $4997: $08 $61 $00
    nop                                           ; $499a: $00
    rst $10                                       ; $499b: $d7
    ld b, $e7                                     ; $499c: $06 $e7
    ld h, b                                       ; $499e: $60
    nop                                           ; $499f: $00
    jr nz, jr_0b2_49a2                            ; $49a0: $20 $00

jr_0b2_49a2:
    jr jr_0b2_49d6                                ; $49a2: $18 $32

    ld c, $e7                                     ; $49a4: $0e $e7
    ld h, b                                       ; $49a6: $60
    dec sp                                        ; $49a7: $3b
    inc bc                                        ; $49a8: $03
    nop                                           ; $49a9: $00
    nop                                           ; $49aa: $00
    rst $20                                       ; $49ab: $e7
    ld h, b                                       ; $49ac: $60
    ld a, c                                       ; $49ad: $79
    dec d                                         ; $49ae: $15
    ld h, $00                                     ; $49af: $26 $00
    ld [hl+], a                                   ; $49b1: $22
    nop                                           ; $49b2: $00
    cp c                                          ; $49b3: $b9
    dec d                                         ; $49b4: $15
    sbc l                                         ; $49b5: $9d
    ld b, d                                       ; $49b6: $42
    xor c                                         ; $49b7: $a9
    inc b                                         ; $49b8: $04
    nop                                           ; $49b9: $00
    nop                                           ; $49ba: $00
    cp $4e                                        ; $49bb: $fe $4e
    dec c                                         ; $49bd: $0d
    add hl, de                                    ; $49be: $19
    or c                                          ; $49bf: $b1
    dec l                                         ; $49c0: $2d
    ld bc, $6b00                                  ; $49c1: $01 $00 $6b
    ld hl, $269d                                  ; $49c4: $21 $9d $26
    ld d, e                                       ; $49c7: $53
    dec d                                         ; $49c8: $15
    ld h, $00                                     ; $49c9: $26 $00
    rst $20                                       ; $49cb: $e7
    ld h, b                                       ; $49cc: $60
    sbc l                                         ; $49cd: $9d
    ld h, $53                                     ; $49ce: $26 $53
    dec d                                         ; $49d0: $15
    nop                                           ; $49d1: $00
    inc e                                         ; $49d2: $1c
    ld [hl-], a                                   ; $49d3: $32
    ld [de], a                                    ; $49d4: $12
    rst $20                                       ; $49d5: $e7

jr_0b2_49d6:
    ld h, b                                       ; $49d6: $60
    ld e, h                                       ; $49d7: $5c
    inc de                                        ; $49d8: $13
    nop                                           ; $49d9: $00
    inc d                                         ; $49da: $14
    ldh a, [rNR11]                                ; $49db: $f0 $11
    rst $20                                       ; $49dd: $e7
    ld h, b                                       ; $49de: $60
    ld sp, hl                                     ; $49df: $f9
    ld [bc], a                                    ; $49e0: $02
    ld c, c                                       ; $49e1: $49
    nop                                           ; $49e2: $00
    rla                                           ; $49e3: $17
    dec c                                         ; $49e4: $0d
    rst $20                                       ; $49e5: $e7
    ld h, b                                       ; $49e6: $60
    dec sp                                        ; $49e7: $3b
    ld h, $01                                     ; $49e8: $26 $01
    nop                                           ; $49ea: $00
    reti                                          ; $49eb: $d9


    dec d                                         ; $49ec: $15
    or d                                          ; $49ed: $b2
    ld b, [hl]                                    ; $49ee: $46
    ld l, a                                       ; $49ef: $6f
    nop                                           ; $49f0: $00
    nop                                           ; $49f1: $00
    nop                                           ; $49f2: $00
    sbc [hl]                                      ; $49f3: $9e
    ld a, $4e                                     ; $49f4: $3e $4e
    dec e                                         ; $49f6: $1d
    rra                                           ; $49f7: $1f
    ld d, e                                       ; $49f8: $53
    nop                                           ; $49f9: $00
    nop                                           ; $49fa: $00
    ld a, [$7b21]                                 ; $49fb: $fa $21 $7b
    ld d, a                                       ; $49fe: $57
    adc [hl]                                      ; $49ff: $8e
    ld [$0027], sp                                ; $4a00: $08 $27 $00
    add $5c                                       ; $4a03: $c6 $5c
    sub $21                                       ; $4a05: $d6 $21
    dec sp                                        ; $4a07: $3b
    dec c                                         ; $4a08: $0d
    nop                                           ; $4a09: $00
    inc e                                         ; $4a0a: $1c
    ld a, [hl-]                                   ; $4a0b: $3a
    rlca                                          ; $4a0c: $07
    add $5c                                       ; $4a0d: $c6 $5c
    rst $18                                       ; $4a0f: $df
    ld c, e                                       ; $4a10: $4b
    nop                                           ; $4a11: $00
    jr nz, @+$3c                                  ; $4a12: $20 $3a

    ld de, $0e32                                  ; $4a14: $11 $32 $0e
    ld h, $00                                     ; $4a17: $26 $00
    ld [$7c00], sp                                ; $4a19: $08 $00 $7c
    dec d                                         ; $4a1c: $15
    ld e, h                                       ; $4a1d: $5c
    ld h, $db                                     ; $4a1e: $26 $db
    ld [hl-], a                                   ; $4a20: $32
    jr nz, jr_0b2_4a23                            ; $4a21: $20 $00

jr_0b2_4a23:
    jr jr_0b2_4a43                                ; $4a23: $18 $1e

    db $db                                        ; $4a25: $db
    ld l, a                                       ; $4a26: $6f
    or c                                          ; $4a27: $b1
    ld [$0020], sp                                ; $4a28: $08 $20 $00
    sbc [hl]                                      ; $4a2b: $9e
    ld a, $4e                                     ; $4a2c: $3e $4e
    dec e                                         ; $4a2e: $1d
    rra                                           ; $4a2f: $1f
    ld d, e                                       ; $4a30: $53
    ld b, e                                       ; $4a31: $43

jr_0b2_4a32:
    inc b                                         ; $4a32: $04
    ld a, c                                       ; $4a33: $79
    ld l, $36                                     ; $4a34: $2e $36
    add hl, bc                                    ; $4a36: $09
    cp e                                          ; $4a37: $bb
    ld e, a                                       ; $4a38: $5f
    ld c, b                                       ; $4a39: $48
    nop                                           ; $4a3a: $00
    cp h                                          ; $4a3b: $bc
    add hl, de                                    ; $4a3c: $19
    add $58                                       ; $4a3d: $c6 $58
    ld a, a                                       ; $4a3f: $7f
    ld b, a                                       ; $4a40: $47
    nop                                           ; $4a41: $00
    nop                                           ; $4a42: $00

jr_0b2_4a43:
    ld hl, sp+$06                                 ; $4a43: $f8 $06
    cp [hl]                                       ; $4a45: $be
    inc hl                                        ; $4a46: $23
    nop                                           ; $4a47: $00
    jr nz, jr_0b2_4a4a                            ; $4a48: $20 $00

jr_0b2_4a4a:
    jr nz, jr_0b2_4aa8                            ; $4a4a: $20 $5c

    ld de, $2a5a                                  ; $4a4c: $11 $5a $2a
    ld h, $00                                     ; $4a4f: $26 $00
    inc bc                                        ; $4a51: $03
    nop                                           ; $4a52: $00
    jr c, @+$0f                                   ; $4a53: $38 $0d

    db $db                                        ; $4a55: $db
    ld l, $3f                                     ; $4a56: $2e $3f
    ld e, $01                                     ; $4a58: $1e $01
    nop                                           ; $4a5a: $00
    cp l                                          ; $4a5b: $bd
    dec d                                         ; $4a5c: $15
    ld [hl], a                                    ; $4a5d: $77
    ld d, e                                       ; $4a5e: $53
    ld a, [hl+]                                   ; $4a5f: $2a
    dec e                                         ; $4a60: $1d
    jr nz, jr_0b2_4a63                            ; $4a61: $20 $00

jr_0b2_4a63:
    ld a, [$aa67]                                 ; $4a63: $fa $67 $aa
    dec h                                         ; $4a66: $25
    rst $38                                       ; $4a67: $ff
    ld c, d                                       ; $4a68: $4a
    jr nz, jr_0b2_4a6b                            ; $4a69: $20 $00

jr_0b2_4a6b:
    ld [$131d], a                                 ; $4a6b: $ea $1d $13
    ld b, a                                       ; $4a6e: $47
    ld h, [hl]                                    ; $4a6f: $66
    dec c                                         ; $4a70: $0d
    ld [bc], a                                    ; $4a71: $02
    nop                                           ; $4a72: $00
    xor a                                         ; $4a73: $af
    ld [hl], $1e                                  ; $4a74: $36 $1e
    ld e, $ba                                     ; $4a76: $1e $ba
    ld e, a                                       ; $4a78: $5f
    nop                                           ; $4a79: $00
    jr nz, jr_0b2_4a32                            ; $4a7a: $20 $b6

    ld a, [bc]                                    ; $4a7c: $0a
    cp [hl]                                       ; $4a7d: $be
    cpl                                           ; $4a7e: $2f
    ld e, e                                       ; $4a7f: $5b
    inc bc                                        ; $4a80: $03
    nop                                           ; $4a81: $00
    jr nz, @+$3b                                  ; $4a82: $20 $39

    ld de, $2e9e                                  ; $4a84: $11 $9e $2e
    dec b                                         ; $4a87: $05
    nop                                           ; $4a88: $00
    ld [bc], a                                    ; $4a89: $02
    nop                                           ; $4a8a: $00
    ld e, d                                       ; $4a8b: $5a
    ld de, $2a9d                                  ; $4a8c: $11 $9d $2a
    adc [hl]                                      ; $4a8f: $8e
    inc b                                         ; $4a90: $04
    and h                                         ; $4a91: $a4
    inc b                                         ; $4a92: $04
    ld e, b                                       ; $4a93: $58
    dec d                                         ; $4a94: $15
    dec l                                         ; $4a95: $2d
    ld l, $b9                                     ; $4a96: $2e $b9
    ld e, e                                       ; $4a98: $5b
    ld b, b                                       ; $4a99: $40
    nop                                           ; $4a9a: $00
    xor h                                         ; $4a9b: $ac
    dec e                                         ; $4a9c: $1d
    cp [hl]                                       ; $4a9d: $be
    ld b, d                                       ; $4a9e: $42
    add a                                         ; $4a9f: $87
    dec d                                         ; $4aa0: $15
    ld b, c                                       ; $4aa1: $41
    inc b                                         ; $4aa2: $04
    db $d3                                        ; $4aa3: $d3
    ld d, l                                       ; $4aa4: $55
    db $eb                                        ; $4aa5: $eb
    dec h                                         ; $4aa6: $25
    sbc [hl]                                      ; $4aa7: $9e

jr_0b2_4aa8:
    ld a, a                                       ; $4aa8: $7f
    ld b, c                                       ; $4aa9: $41
    nop                                           ; $4aaa: $00
    ld [hl], b                                    ; $4aab: $70
    ld [hl-], a                                   ; $4aac: $32
    ld [hl], a                                    ; $4aad: $77
    ld d, a                                       ; $4aae: $57
    cp [hl]                                       ; $4aaf: $be
    inc de                                        ; $4ab0: $13
    nop                                           ; $4ab1: $00
    jr nz, jr_0b2_4ae6                            ; $4ab2: $20 $32

    ld [de], a                                    ; $4ab4: $12
    ld e, e                                       ; $4ab5: $5b
    inc bc                                        ; $4ab6: $03
    or [hl]                                       ; $4ab7: $b6
    ld a, [bc]                                    ; $4ab8: $0a
    inc bc                                        ; $4ab9: $03
    nop                                           ; $4aba: $00
    push de                                       ; $4abb: $d5
    ld [$1dbe], sp                                ; $4abc: $08 $be $1d
    nop                                           ; $4abf: $00
    jr nz, jr_0b2_4ae6                            ; $4ac0: $20 $24

    nop                                           ; $4ac2: $00
    inc d                                         ; $4ac3: $14
    add hl, bc                                    ; $4ac4: $09
    cp e                                          ; $4ac5: $bb
    ld [hl-], a                                   ; $4ac6: $32
    cp h                                          ; $4ac7: $bc
    dec d                                         ; $4ac8: $15
    nop                                           ; $4ac9: $00
    nop                                           ; $4aca: $00
    db $db                                        ; $4acb: $db
    dec e                                         ; $4acc: $1d
    rst $38                                       ; $4acd: $ff
    ld a, [hl+]                                   ; $4ace: $2a
    ld b, b                                       ; $4acf: $40
    nop                                           ; $4ad0: $00
    nop                                           ; $4ad1: $00
    inc b                                         ; $4ad2: $04
    add hl, de                                    ; $4ad3: $19
    inc bc                                        ; $4ad4: $03
    sbc [hl]                                      ; $4ad5: $9e
    ld a, a                                       ; $4ad6: $7f
    dec hl                                        ; $4ad7: $2b
    add hl, de                                    ; $4ad8: $19
    ld hl, $4904                                  ; $4ad9: $21 $04 $49

jr_0b2_4adc:
    dec d                                         ; $4adc: $15
    ld l, b                                       ; $4add: $68
    inc l                                         ; $4ade: $2c
    dec bc                                        ; $4adf: $0b
    ld [hl+], a                                   ; $4ae0: $22
    ld b, c                                       ; $4ae1: $41
    nop                                           ; $4ae2: $00
    ld l, [hl]                                    ; $4ae3: $6e
    ld [hl-], a                                   ; $4ae4: $32
    ld a, [de]                                    ; $4ae5: $1a

jr_0b2_4ae6:
    rlca                                          ; $4ae6: $07
    xor b                                         ; $4ae7: $a8
    add hl, de                                    ; $4ae8: $19
    nop                                           ; $4ae9: $00
    jr nz, jr_0b2_4afc                            ; $4aea: $20 $10

    ld d, $96                                     ; $4aec: $16 $96
    ld c, $32                                     ; $4aee: $0e $32
    ld [de], a                                    ; $4af0: $12
    inc h                                         ; $4af1: $24
    nop                                           ; $4af2: $00
    push af                                       ; $4af3: $f5
    inc c                                         ; $4af4: $0c
    nop                                           ; $4af5: $00
    jr nz, @+$5c                                  ; $4af6: $20 $5a

    ld de, $0021                                  ; $4af8: $11 $21 $00
    sbc h                                         ; $4afb: $9c

jr_0b2_4afc:
    ld de, $2e9c                                  ; $4afc: $11 $9c $2e
    dec a                                         ; $4aff: $3d
    ld a, [de]                                    ; $4b00: $1a
    ld h, b                                       ; $4b01: $60
    nop                                           ; $4b02: $00
    dec l                                         ; $4b03: $2d
    ld [hl], $25                                  ; $4b04: $36 $25
    ld de, $5736                                  ; $4b06: $11 $36 $57
    inc bc                                        ; $4b09: $03
    inc c                                         ; $4b0a: $0c
    ld [hl], c                                    ; $4b0b: $71
    ld d, c                                       ; $4b0c: $51

Jump_0b2_4b0d:
    inc c                                         ; $4b0d: $0c
    add hl, de                                    ; $4b0e: $19
    sbc [hl]                                      ; $4b0f: $9e
    ld a, $20                                     ; $4b10: $3e $20
    nop                                           ; $4b12: $00
    dec bc                                        ; $4b13: $0b
    ld [hl+], a                                   ; $4b14: $22
    db $e3                                        ; $4b15: $e3
    inc b                                         ; $4b16: $04
    ld l, a                                       ; $4b17: $6f
    ld [hl], $00                                  ; $4b18: $36 $00
    nop                                           ; $4b1a: $00
    add a                                         ; $4b1b: $87
    dec d                                         ; $4b1c: $15
    ld de, $4e12                                  ; $4b1d: $11 $12 $4e
    ld [hl-], a                                   ; $4b20: $32
    nop                                           ; $4b21: $00
    jr nz, jr_0b2_4b35                            ; $4b22: $20 $11

    ld [de], a                                    ; $4b24: $12
    ld a, [de]                                    ; $4b25: $1a
    inc bc                                        ; $4b26: $03
    ld c, [hl]                                    ; $4b27: $4e
    ld [hl-], a                                   ; $4b28: $32
    nop                                           ; $4b29: $00
    jr nz, jr_0b2_4adc                            ; $4b2a: $20 $b0

    ld [$0048], sp                                ; $4b2c: $08 $48 $00
    ld a, e                                       ; $4b2f: $7b
    dec d                                         ; $4b30: $15
    nop                                           ; $4b31: $00
    nop                                           ; $4b32: $00
    ld a, [hl-]                                   ; $4b33: $3a
    ld a, [de]                                    ; $4b34: $1a

jr_0b2_4b35:
    call c, Call_000_2e6f                         ; $4b35: $dc $6f $2e
    add hl, bc                                    ; $4b38: $09
    ld h, a                                       ; $4b39: $67
    ld de, $5336                                  ; $4b3a: $11 $36 $53
    inc c                                         ; $4b3d: $0c
    ld h, $fe                                     ; $4b3e: $26 $fe
    ld [hl], a                                    ; $4b40: $77
    nop                                           ; $4b41: $00
    nop                                           ; $4b42: $00
    sbc [hl]                                      ; $4b43: $9e
    ld a, $25                                     ; $4b44: $3e $25
    add hl, bc                                    ; $4b46: $09
    add c                                         ; $4b47: $81
    nop                                           ; $4b48: $00
    ld b, b                                       ; $4b49: $40
    nop                                           ; $4b4a: $00
    ld l, a                                       ; $4b4b: $6f
    ld [hl-], a                                   ; $4b4c: $32
    ld d, [hl]                                    ; $4b4d: $56
    ld d, e                                       ; $4b4e: $53
    push hl                                       ; $4b4f: $e5
    ld [$0441], sp                                ; $4b50: $08 $41 $04
    db $ec                                        ; $4b53: $ec
    ld hl, $0b1a                                  ; $4b54: $21 $1a $0b
    db $f4                                        ; $4b57: $f4
    ld c, d                                       ; $4b58: $4a
    nop                                           ; $4b59: $00
    jr nz, jr_0b2_4b76                            ; $4b5a: $20 $1a

    inc bc                                        ; $4b5c: $03
    ld a, [de]                                    ; $4b5d: $1a
    dec bc                                        ; $4b5e: $0b
    db $f4                                        ; $4b5f: $f4
    ld c, d                                       ; $4b60: $4a
    nop                                           ; $4b61: $00
    jr nz, jr_0b2_4b7c                            ; $4b62: $20 $18

    dec c                                         ; $4b64: $0d
    ld h, $00                                     ; $4b65: $26 $00
    ld a, l                                       ; $4b67: $7d
    dec d                                         ; $4b68: $15
    ld h, l                                       ; $4b69: $65
    nop                                           ; $4b6a: $00
    ld e, e                                       ; $4b6b: $5b
    ld e, $b1                                     ; $4b6c: $1e $b1
    ld b, d                                       ; $4b6e: $42
    sbc c                                         ; $4b6f: $99
    ld e, a                                       ; $4b70: $5f
    ld [$6f1d], a                                 ; $4b71: $ea $1d $6f
    ld [hl], $15                                  ; $4b74: $36 $15

jr_0b2_4b76:
    ld c, a                                       ; $4b76: $4f
    inc l                                         ; $4b77: $2c
    ld h, $20                                     ; $4b78: $26 $20
    nop                                           ; $4b7a: $00
    sbc [hl]                                      ; $4b7b: $9e

jr_0b2_4b7c:
    ld a, $e5                                     ; $4b7c: $3e $e5
    ld [$15a9], sp                                ; $4b7e: $08 $a9 $15
    ld b, c                                       ; $4b81: $41
    nop                                           ; $4b82: $00
    ld d, b                                       ; $4b83: $50
    ld c, l                                       ; $4b84: $4d
    add hl, hl                                    ; $4b85: $29
    add hl, de                                    ; $4b86: $19
    ld e, h                                       ; $4b87: $5c
    ld e, a                                       ; $4b88: $5f
    push hl                                       ; $4b89: $e5

jr_0b2_4b8a:
    db $10                                        ; $4b8a: $10
    ld a, h                                       ; $4b8b: $7c
    rrca                                          ; $4b8c: $0f
    db $d3                                        ; $4b8d: $d3
    ld b, [hl]                                    ; $4b8e: $46
    rst $18                                       ; $4b8f: $df
    ld e, e                                       ; $4b90: $5b
    nop                                           ; $4b91: $00
    jr nz, @+$7e                                  ; $4b92: $20 $7c

    rrca                                          ; $4b94: $0f
    db $d3                                        ; $4b95: $d3
    ld b, [hl]                                    ; $4b96: $46
    rst $18                                       ; $4b97: $df
    ld e, e                                       ; $4b98: $5b
    nop                                           ; $4b99: $00
    jr nz, jr_0b2_4bc2                            ; $4b9a: $20 $26

    nop                                           ; $4b9c: $00
    push af                                       ; $4b9d: $f5
    inc c                                         ; $4b9e: $0c
    inc l                                         ; $4b9f: $2c
    ld h, $81                                     ; $4ba0: $26 $81
    inc b                                         ; $4ba2: $04
    jp z, $f31d                                   ; $4ba3: $ca $1d $f3

    ld b, d                                       ; $4ba6: $42
    ld e, d                                       ; $4ba7: $5a
    ld de, $00a2                                  ; $4ba8: $11 $a2 $00
    dec bc                                        ; $4bab: $0b
    ld [hl+], a                                   ; $4bac: $22
    sub b                                         ; $4bad: $90
    ld [hl], $46                                  ; $4bae: $36 $46
    ld de, $0060                                  ; $4bb0: $11 $60 $00
    adc h                                         ; $4bb3: $8c
    dec [hl]                                      ; $4bb4: $35
    or c                                          ; $4bb5: $b1
    ld b, d                                       ; $4bb6: $42
    db $e4                                        ; $4bb7: $e4
    inc c                                         ; $4bb8: $0c
    nop                                           ; $4bb9: $00
    ld [$118f], sp                                ; $4bba: $08 $8f $11
    or $65                                        ; $4bbd: $f6 $65
    and l                                         ; $4bbf: $a5
    inc c                                         ; $4bc0: $0c
    ld b, d                                       ; $4bc1: $42

jr_0b2_4bc2:
    db $10                                        ; $4bc2: $10
    cp [hl]                                       ; $4bc3: $be
    dec hl                                        ; $4bc4: $2b
    dec l                                         ; $4bc5: $2d
    ld l, $ff                                     ; $4bc6: $2e $ff
    ld l, a                                       ; $4bc8: $6f
    nop                                           ; $4bc9: $00
    jr nz, jr_0b2_4b8a                            ; $4bca: $20 $be

    dec hl                                        ; $4bcc: $2b
    dec l                                         ; $4bcd: $2d
    ld l, $ff                                     ; $4bce: $2e $ff
    ld l, a                                       ; $4bd0: $6f
    nop                                           ; $4bd1: $00
    jr nz, jr_0b2_4bdf                            ; $4bd2: $20 $0b

    ld [hl+], a                                   ; $4bd4: $22
    sub b                                         ; $4bd5: $90

jr_0b2_4bd6:
    ld [hl], $46                                  ; $4bd6: $36 $46
    ld de, $0000                                  ; $4bd8: $11 $00 $00
    rst $28                                       ; $4bdb: $ef
    dec d                                         ; $4bdc: $15
    ld h, [hl]                                    ; $4bdd: $66
    add hl, de                                    ; $4bde: $19

jr_0b2_4bdf:
    ld e, h                                       ; $4bdf: $5c
    inc bc                                        ; $4be0: $03
    nop                                           ; $4be1: $00
    nop                                           ; $4be2: $00
    jp z, $b125                                   ; $4be3: $ca $25 $b1

    ld b, [hl]                                    ; $4be6: $46
    jp nz, Jump_000_0004                          ; $4be7: $c2 $04 $00

    nop                                           ; $4bea: $00
    ld de, $5312                                  ; $4beb: $11 $12 $53
    ld c, $74                                     ; $4bee: $0e $74
    ld c, $00                                     ; $4bf0: $0e $00
    nop                                           ; $4bf2: $00
    ld de, $5c12                                  ; $4bf3: $11 $12 $5c
    inc bc                                        ; $4bf6: $03
    cp [hl]                                       ; $4bf7: $be
    dec hl                                        ; $4bf8: $2b
    nop                                           ; $4bf9: $00
    ld [$0b3b], sp                                ; $4bfa: $08 $3b $0b
    cp [hl]                                       ; $4bfd: $be
    ld b, a                                       ; $4bfe: $47
    rst $38                                       ; $4bff: $ff
    ld [hl], e                                    ; $4c00: $73
    nop                                           ; $4c01: $00
    jr nz, jr_0b2_4c3f                            ; $4c02: $20 $3b

    dec bc                                        ; $4c04: $0b
    cp [hl]                                       ; $4c05: $be
    ld b, a                                       ; $4c06: $47
    rst $38                                       ; $4c07: $ff
    ld [hl], e                                    ; $4c08: $73

Call_0b2_4c09:
    nop                                           ; $4c09: $00
    jr nz, jr_0b2_4bd6                            ; $4c0a: $20 $ca

    dec h                                         ; $4c0c: $25
    or c                                          ; $4c0d: $b1
    ld b, [hl]                                    ; $4c0e: $46
    jp nz, Jump_000_0004                          ; $4c0f: $c2 $04 $00

    jr nz, jr_0b2_4c88                            ; $4c12: $20 $74

    ld a, [bc]                                    ; $4c14: $0a
    sbc $57                                       ; $4c15: $de $57
    ld a, l                                       ; $4c17: $7d
    rlca                                          ; $4c18: $07
    ld de, $be12                                  ; $4c19: $11 $12 $be
    ld b, a                                       ; $4c1c: $47
    ld a, h                                       ; $4c1d: $7c
    dec bc                                        ; $4c1e: $0b
    rst $38                                       ; $4c1f: $ff
    ld l, a                                       ; $4c20: $6f
    ld de, $7412                                  ; $4c21: $11 $12 $74
    ld c, $b6                                     ; $4c24: $0e $b6
    ld a, [bc]                                    ; $4c26: $0a
    ld [hl-], a                                   ; $4c27: $32
    ld [de], a                                    ; $4c28: $12
    rst $10                                       ; $4c29: $d7
    ld b, $be                                     ; $4c2a: $06 $be
    dec sp                                        ; $4c2c: $3b
    rst $38                                       ; $4c2d: $ff
    ld l, a                                       ; $4c2e: $6f
    ld a, l                                       ; $4c2f: $7d
    dec bc                                        ; $4c30: $0b
    nop                                           ; $4c31: $00
    jr nz, jr_0b2_4c87                            ; $4c32: $20 $53

    ld c, $de                                     ; $4c34: $0e $de
    ld d, e                                       ; $4c36: $53
    ld a, l                                       ; $4c37: $7d
    dec bc                                        ; $4c38: $0b
    nop                                           ; $4c39: $00

jr_0b2_4c3a:
    jr nz, jr_0b2_4c8f                            ; $4c3a: $20 $53

    ld c, $de                                     ; $4c3c: $0e $de
    ld d, e                                       ; $4c3e: $53

jr_0b2_4c3f:
    ld a, l                                       ; $4c3f: $7d
    dec bc                                        ; $4c40: $0b
    nop                                           ; $4c41: $00

jr_0b2_4c42:
    jr nz, jr_0b2_4c44                            ; $4c42: $20 $00

jr_0b2_4c44:
    jr nz, @+$01                                  ; $4c44: $20 $ff

    ld l, a                                       ; $4c46: $6f
    cp [hl]                                       ; $4c47: $be
    dec hl                                        ; $4c48: $2b
    nop                                           ; $4c49: $00

jr_0b2_4c4a:
    jr nz, jr_0b2_4c4c                            ; $4c4a: $20 $00

jr_0b2_4c4c:
    jr nz, @+$01                                  ; $4c4c: $20 $ff

    ld l, a                                       ; $4c4e: $6f
    cp [hl]                                       ; $4c4f: $be
    dec hl                                        ; $4c50: $2b
    nop                                           ; $4c51: $00
    jr nz, jr_0b2_4c54                            ; $4c52: $20 $00

jr_0b2_4c54:
    jr nz, @+$01                                  ; $4c54: $20 $ff

    ld l, a                                       ; $4c56: $6f
    cp [hl]                                       ; $4c57: $be
    dec hl                                        ; $4c58: $2b
    nop                                           ; $4c59: $00
    jr nz, @-$05                                  ; $4c5a: $20 $f9

    ld b, $df                                     ; $4c5c: $06 $df
    ld c, e                                       ; $4c5e: $4b
    sbc l                                         ; $4c5f: $9d
    inc bc                                        ; $4c60: $03
    nop                                           ; $4c61: $00
    jr nz, @-$05                                  ; $4c62: $20 $f9

    ld b, $df                                     ; $4c64: $06 $df
    ld c, e                                       ; $4c66: $4b
    sbc l                                         ; $4c67: $9d
    inc bc                                        ; $4c68: $03
    nop                                           ; $4c69: $00
    jr nz, @-$05                                  ; $4c6a: $20 $f9

    ld b, $df                                     ; $4c6c: $06 $df
    ld c, e                                       ; $4c6e: $4b
    sbc l                                         ; $4c6f: $9d
    inc bc                                        ; $4c70: $03
    nop                                           ; $4c71: $00
    jr nz, @-$05                                  ; $4c72: $20 $f9

    ld b, $df                                     ; $4c74: $06 $df
    ld c, e                                       ; $4c76: $4b
    sbc l                                         ; $4c77: $9d
    inc bc                                        ; $4c78: $03
    nop                                           ; $4c79: $00
    jr nz, jr_0b2_4c7c                            ; $4c7a: $20 $00

jr_0b2_4c7c:
    jr nz, @+$01                                  ; $4c7c: $20 $ff

    ld l, a                                       ; $4c7e: $6f
    cp [hl]                                       ; $4c7f: $be
    dec hl                                        ; $4c80: $2b
    nop                                           ; $4c81: $00
    jr nz, jr_0b2_4c84                            ; $4c82: $20 $00

jr_0b2_4c84:
    jr nz, @+$01                                  ; $4c84: $20 $ff

    ld l, a                                       ; $4c86: $6f

jr_0b2_4c87:
    cp [hl]                                       ; $4c87: $be

jr_0b2_4c88:
    dec hl                                        ; $4c88: $2b
    nop                                           ; $4c89: $00
    jr nz, jr_0b2_4c8c                            ; $4c8a: $20 $00

jr_0b2_4c8c:
    jr nz, @+$01                                  ; $4c8c: $20 $ff

    ld l, a                                       ; $4c8e: $6f

jr_0b2_4c8f:
    cp [hl]                                       ; $4c8f: $be
    dec hl                                        ; $4c90: $2b
    nop                                           ; $4c91: $00
    nop                                           ; $4c92: $00
    sbc [hl]                                      ; $4c93: $9e
    rrca                                          ; $4c94: $0f
    rst $18                                       ; $4c95: $df
    ld c, a                                       ; $4c96: $4f
    rst $38                                       ; $4c97: $ff
    ld l, a                                       ; $4c98: $6f
    nop                                           ; $4c99: $00
    jr nz, jr_0b2_4c3a                            ; $4c9a: $20 $9e

    rlca                                          ; $4c9c: $07
    cp [hl]                                       ; $4c9d: $be
    rra                                           ; $4c9e: $1f
    rst $38                                       ; $4c9f: $ff
    ld l, a                                       ; $4ca0: $6f
    nop                                           ; $4ca1: $00
    jr nz, jr_0b2_4c42                            ; $4ca2: $20 $9e

    rlca                                          ; $4ca4: $07
    cp [hl]                                       ; $4ca5: $be
    rra                                           ; $4ca6: $1f
    rst $38                                       ; $4ca7: $ff
    ld l, a                                       ; $4ca8: $6f
    nop                                           ; $4ca9: $00

jr_0b2_4caa:
    jr nz, jr_0b2_4c4a                            ; $4caa: $20 $9e

    rlca                                          ; $4cac: $07
    cp [hl]                                       ; $4cad: $be
    rra                                           ; $4cae: $1f
    rst $38                                       ; $4caf: $ff
    ld l, a                                       ; $4cb0: $6f
    nop                                           ; $4cb1: $00

jr_0b2_4cb2:
    jr nz, jr_0b2_4cb4                            ; $4cb2: $20 $00

jr_0b2_4cb4:
    jr nz, @+$01                                  ; $4cb4: $20 $ff

    ld l, a                                       ; $4cb6: $6f
    cp [hl]                                       ; $4cb7: $be
    dec hl                                        ; $4cb8: $2b
    nop                                           ; $4cb9: $00
    jr nz, jr_0b2_4cbc                            ; $4cba: $20 $00

jr_0b2_4cbc:
    jr nz, @+$01                                  ; $4cbc: $20 $ff

    ld l, a                                       ; $4cbe: $6f
    cp [hl]                                       ; $4cbf: $be
    dec hl                                        ; $4cc0: $2b
    nop                                           ; $4cc1: $00
    inc e                                         ; $4cc2: $1c

jr_0b2_4cc3:
    cp [hl]                                       ; $4cc3: $be
    rra                                           ; $4cc4: $1f
    ld [$be20], sp                                ; $4cc5: $08 $20 $be
    inc sp                                        ; $4cc8: $33
    nop                                           ; $4cc9: $00
    nop                                           ; $4cca: $00

jr_0b2_4ccb:
    db $d3                                        ; $4ccb: $d3
    ld e, $9f                                     ; $4ccc: $1e $9f
    ld a, [hl]                                    ; $4cce: $7e
    ld [$0020], sp                                ; $4ccf: $08 $20 $00
    jr nz, @-$2f                                  ; $4cd2: $20 $cf

    dec d                                         ; $4cd4: $15
    or a                                          ; $4cd5: $b7
    ld b, $08                                     ; $4cd6: $06 $08
    jr nz, jr_0b2_4cda                            ; $4cd8: $20 $00

jr_0b2_4cda:
    jr nz, @-$2f                                  ; $4cda: $20 $cf

    dec d                                         ; $4cdc: $15
    or a                                          ; $4cdd: $b7
    ld b, $08                                     ; $4cde: $06 $08
    jr nz, jr_0b2_4ce2                            ; $4ce0: $20 $00

jr_0b2_4ce2:
    jr nz, @-$2f                                  ; $4ce2: $20 $cf

    dec d                                         ; $4ce4: $15
    or a                                          ; $4ce5: $b7
    ld b, $08                                     ; $4ce6: $06 $08
    jr nz, jr_0b2_4cea                            ; $4ce8: $20 $00

jr_0b2_4cea:
    jr nz, jr_0b2_4caa                            ; $4cea: $20 $be

    rra                                           ; $4cec: $1f
    ld [$be20], sp                                ; $4ced: $08 $20 $be
    inc sp                                        ; $4cf0: $33
    nop                                           ; $4cf1: $00
    jr nz, jr_0b2_4cb2                            ; $4cf2: $20 $be

    rra                                           ; $4cf4: $1f
    ld [$be20], sp                                ; $4cf5: $08 $20 $be
    inc sp                                        ; $4cf8: $33
    nop                                           ; $4cf9: $00
    inc e                                         ; $4cfa: $1c

jr_0b2_4cfb:
    sbc a                                         ; $4cfb: $9f
    ld a, [hl]                                    ; $4cfc: $7e
    or d                                          ; $4cfd: $b2
    ld c, b                                       ; $4cfe: $48
    ld [$0820], sp                                ; $4cff: $08 $20 $08
    jr nz, @-$5f                                  ; $4d02: $20 $9f

    ld a, [hl]                                    ; $4d04: $7e
    ld a, [c]                                     ; $4d05: $f2
    ld d, b                                       ; $4d06: $50
    ld [$0320], sp                                ; $4d07: $08 $20 $03
    jr nz, jr_0b2_4d80                            ; $4d0a: $20 $74

    ld a, [bc]                                    ; $4d0c: $0a
    ld a, [c]                                     ; $4d0d: $f2
    ld d, b                                       ; $4d0e: $50
    sbc a                                         ; $4d0f: $9f
    ld a, [hl]                                    ; $4d10: $7e
    nop                                           ; $4d11: $00
    jr nz, jr_0b2_4d88                            ; $4d12: $20 $74

    ld a, [bc]                                    ; $4d14: $0a
    ld a, [c]                                     ; $4d15: $f2
    ld d, b                                       ; $4d16: $50
    sbc a                                         ; $4d17: $9f
    ld a, [hl]                                    ; $4d18: $7e
    nop                                           ; $4d19: $00
    jr nz, jr_0b2_4d90                            ; $4d1a: $20 $74

    ld a, [bc]                                    ; $4d1c: $0a
    ld a, [c]                                     ; $4d1d: $f2
    ld d, b                                       ; $4d1e: $50
    sbc a                                         ; $4d1f: $9f
    ld a, [hl]                                    ; $4d20: $7e
    nop                                           ; $4d21: $00
    jr nz, jr_0b2_4cc3                            ; $4d22: $20 $9f

    ld a, [hl]                                    ; $4d24: $7e
    or d                                          ; $4d25: $b2
    ld c, b                                       ; $4d26: $48
    ld [$0020], sp                                ; $4d27: $08 $20 $00
    jr nz, jr_0b2_4ccb                            ; $4d2a: $20 $9f

    ld a, [hl]                                    ; $4d2c: $7e
    or d                                          ; $4d2d: $b2
    ld c, b                                       ; $4d2e: $48
    ld [$0020], sp                                ; $4d2f: $08 $20 $00
    jr @-$5f                                      ; $4d32: $18 $9f

    ld a, [hl]                                    ; $4d34: $7e
    ld [$0020], sp                                ; $4d35: $08 $20 $00
    jr nz, @+$0a                                  ; $4d38: $20 $08

    jr nz, @-$5f                                  ; $4d3a: $20 $9f

jr_0b2_4d3c:
    ld a, [hl]                                    ; $4d3c: $7e
    ld a, [c]                                     ; $4d3d: $f2
    ld d, b                                       ; $4d3e: $50
    cp [hl]                                       ; $4d3f: $be
    ccf                                           ; $4d40: $3f
    ld [$7c20], sp                                ; $4d41: $08 $20 $7c
    rlca                                          ; $4d44: $07
    sbc a                                         ; $4d45: $9f
    ld a, [hl]                                    ; $4d46: $7e
    ld a, [c]                                     ; $4d47: $f2
    ld d, b                                       ; $4d48: $50
    nop                                           ; $4d49: $00
    jr nz, @+$1c                                  ; $4d4a: $20 $1a

    inc bc                                        ; $4d4c: $03
    sbc a                                         ; $4d4d: $9f
    ld a, [hl]                                    ; $4d4e: $7e
    ld a, [c]                                     ; $4d4f: $f2
    ld d, b                                       ; $4d50: $50
    nop                                           ; $4d51: $00
    jr nz, jr_0b2_4d6e                            ; $4d52: $20 $1a

    inc bc                                        ; $4d54: $03
    sbc a                                         ; $4d55: $9f
    ld a, [hl]                                    ; $4d56: $7e
    ld a, [c]                                     ; $4d57: $f2
    ld d, b                                       ; $4d58: $50
    nop                                           ; $4d59: $00
    jr nz, jr_0b2_4cfb                            ; $4d5a: $20 $9f

    ld a, [hl]                                    ; $4d5c: $7e
    ld [$0020], sp                                ; $4d5d: $08 $20 $00
    jr nz, jr_0b2_4d62                            ; $4d60: $20 $00

jr_0b2_4d62:
    jr nz, jr_0b2_4d3c                            ; $4d62: $20 $d8

    ld a, [bc]                                    ; $4d64: $0a
    ld [$0020], sp                                ; $4d65: $08 $20 $00
    jr nz, @+$0a                                  ; $4d68: $20 $08

    jr nz, jr_0b2_4de9                            ; $4d6a: $20 $7d

    ld a, h                                       ; $4d6c: $7c
    ld a, [c]                                     ; $4d6d: $f2

jr_0b2_4d6e:
    ld d, b                                       ; $4d6e: $50
    sbc a                                         ; $4d6f: $9f
    ld a, [hl]                                    ; $4d70: $7e
    ld [$9f20], sp                                ; $4d71: $08 $20 $9f
    ld a, [hl]                                    ; $4d74: $7e
    ld a, [c]                                     ; $4d75: $f2
    ld d, b                                       ; $4d76: $50
    ld a, [c]                                     ; $4d77: $f2
    ld d, b                                       ; $4d78: $50
    dec b                                         ; $4d79: $05
    inc d                                         ; $4d7a: $14
    push de                                       ; $4d7b: $d5
    ld e, b                                       ; $4d7c: $58
    sbc a                                         ; $4d7d: $9f
    ld a, [hl]                                    ; $4d7e: $7e
    rst $18                                       ; $4d7f: $df

jr_0b2_4d80:
    ld d, a                                       ; $4d80: $57
    nop                                           ; $4d81: $00
    jr nz, jr_0b2_4dbf                            ; $4d82: $20 $3b

    inc bc                                        ; $4d84: $03
    rst $38                                       ; $4d85: $ff
    ld e, a                                       ; $4d86: $5f
    cp [hl]                                       ; $4d87: $be

jr_0b2_4d88:
    rra                                           ; $4d88: $1f
    nop                                           ; $4d89: $00
    jr nz, jr_0b2_4dc7                            ; $4d8a: $20 $3b

    inc bc                                        ; $4d8c: $03
    rst $38                                       ; $4d8d: $ff
    ld e, a                                       ; $4d8e: $5f
    cp [hl]                                       ; $4d8f: $be

jr_0b2_4d90:
    rra                                           ; $4d90: $1f
    nop                                           ; $4d91: $00
    jr nz, jr_0b2_4e11                            ; $4d92: $20 $7d

    ld a, h                                       ; $4d94: $7c
    ld a, [c]                                     ; $4d95: $f2
    ld d, b                                       ; $4d96: $50
    sbc a                                         ; $4d97: $9f
    ld a, [hl]                                    ; $4d98: $7e
    nop                                           ; $4d99: $00
    inc e                                         ; $4d9a: $1c
    ld d, e                                       ; $4d9b: $53
    ld c, $5b                                     ; $4d9c: $0e $5b
    inc bc                                        ; $4d9e: $03
    cp [hl]                                       ; $4d9f: $be
    dec sp                                        ; $4da0: $3b
    ld [$f320], sp                                ; $4da1: $08 $20 $f3
    ld d, b                                       ; $4da4: $50
    ld a, [hl]                                    ; $4da5: $7e
    ld a, l                                       ; $4da6: $7d
    call $0800                                    ; $4da7: $cd $00 $08
    jr nz, @-$5f                                  ; $4daa: $20 $9f

    ld a, [hl]                                    ; $4dac: $7e
    ld a, [c]                                     ; $4dad: $f2
    ld d, b                                       ; $4dae: $50
    inc e                                         ; $4daf: $1c
    ld c, e                                       ; $4db0: $4b
    ld [bc], a                                    ; $4db1: $02
    rrca                                          ; $4db2: $0f
    ld a, [c]                                     ; $4db3: $f2
    ld d, b                                       ; $4db4: $50
    ld [$9f20], sp                                ; $4db5: $08 $20 $9f
    ld a, [hl]                                    ; $4db8: $7e
    nop                                           ; $4db9: $00
    db $10                                        ; $4dba: $10
    dec sp                                        ; $4dbb: $3b
    inc bc                                        ; $4dbc: $03
    sbc $4f                                       ; $4dbd: $de $4f

jr_0b2_4dbf:
    ld bc, $000f                                  ; $4dbf: $01 $0f $00
    jr nz, jr_0b2_4dff                            ; $4dc2: $20 $3b

    inc bc                                        ; $4dc4: $03
    sbc $4f                                       ; $4dc5: $de $4f

jr_0b2_4dc7:
    ld bc, $000f                                  ; $4dc7: $01 $0f $00
    jr nz, jr_0b2_4dbf                            ; $4dca: $20 $f3

    ld d, b                                       ; $4dcc: $50
    ld a, [hl]                                    ; $4dcd: $7e
    ld a, l                                       ; $4dce: $7d
    call RST_00                                   ; $4dcf: $cd $00 $00
    inc c                                         ; $4dd2: $0c

jr_0b2_4dd3:
    ld [hl-], a                                   ; $4dd3: $32
    ld c, $e0                                     ; $4dd4: $0e $e0
    ld a, [bc]                                    ; $4dd6: $0a
    ld e, h                                       ; $4dd7: $5c
    rlca                                          ; $4dd8: $07
    ld c, b                                       ; $4dd9: $48
    inc d                                         ; $4dda: $14
    ld [hl], a                                    ; $4ddb: $77
    ld h, h                                       ; $4ddc: $64
    inc e                                         ; $4ddd: $1c
    ld c, e                                       ; $4dde: $4b
    ld l, l                                       ; $4ddf: $6d
    inc [hl]                                      ; $4de0: $34
    ld h, $14                                     ; $4de1: $26 $14
    ld a, [c]                                     ; $4de3: $f2
    ld d, b                                       ; $4de4: $50
    sbc a                                         ; $4de5: $9f
    ld a, [hl]                                    ; $4de6: $7e
    ld e, a                                       ; $4de7: $5f
    ld d, e                                       ; $4de8: $53

jr_0b2_4de9:
    ret nz                                        ; $4de9: $c0

    ld a, [bc]                                    ; $4dea: $0a
    ld hl, sp+$64                                 ; $4deb: $f8 $64
    rlca                                          ; $4ded: $07
    inc e                                         ; $4dee: $1c
    ld e, a                                       ; $4def: $5f
    ld d, e                                       ; $4df0: $53
    nop                                           ; $4df1: $00
    nop                                           ; $4df2: $00
    ld sp, hl                                     ; $4df3: $f9
    ld b, $c0                                     ; $4df4: $06 $c0
    ld a, [bc]                                    ; $4df6: $0a
    cp [hl]                                       ; $4df7: $be
    ccf                                           ; $4df8: $3f
    nop                                           ; $4df9: $00
    jr nz, @-$0e                                  ; $4dfa: $20 $f0

    dec d                                         ; $4dfc: $15
    ld [hl-], a                                   ; $4dfd: $32
    ld [de], a                                    ; $4dfe: $12

jr_0b2_4dff:
    cp [hl]                                       ; $4dff: $be
    ccf                                           ; $4e00: $3f
    nop                                           ; $4e01: $00
    jr nz, jr_0b2_4dd3                            ; $4e02: $20 $cf

    dec d                                         ; $4e04: $15
    ld a, [hl-]                                   ; $4e05: $3a
    inc bc                                        ; $4e06: $03
    sub l                                         ; $4e07: $95
    ld c, $ab                                     ; $4e08: $0e $ab
    nop                                           ; $4e0a: $00
    ret nz                                        ; $4e0b: $c0

    ld a, [bc]                                    ; $4e0c: $0a
    ld [hl-], a                                   ; $4e0d: $32
    ld [de], a                                    ; $4e0e: $12
    ld a, [hl-]                                   ; $4e0f: $3a
    rlca                                          ; $4e10: $07

jr_0b2_4e11:
    ret nz                                        ; $4e11: $c0

    ld a, [bc]                                    ; $4e12: $0a
    call c, $477c                                 ; $4e13: $dc $7c $47
    jr jr_0b2_4e36                                ; $4e16: $18 $1e

    ld d, e                                       ; $4e18: $53
    ld h, [hl]                                    ; $4e19: $66
    db $10                                        ; $4e1a: $10
    ld e, a                                       ; $4e1b: $5f
    ld d, e                                       ; $4e1c: $53
    ld [$df20], sp                                ; $4e1d: $08 $20 $df
    ld d, a                                       ; $4e20: $57
    add b                                         ; $4e21: $80
    ld a, [bc]                                    ; $4e22: $0a
    or $58                                        ; $4e23: $f6 $58
    sbc a                                         ; $4e25: $9f
    ld d, e                                       ; $4e26: $53
    adc d                                         ; $4e27: $8a
    ld [$0000], sp                                ; $4e28: $08 $00 $00
    add b                                         ; $4e2b: $80
    ld a, [bc]                                    ; $4e2c: $0a
    ld e, h                                       ; $4e2d: $5c
    inc bc                                        ; $4e2e: $03
    and b                                         ; $4e2f: $a0
    ld a, [bc]                                    ; $4e30: $0a
    nop                                           ; $4e31: $00
    jr nz, @-$2f                                  ; $4e32: $20 $cf

jr_0b2_4e34:
    dec d                                         ; $4e34: $15
    ld e, h                                       ; $4e35: $5c

jr_0b2_4e36:
    inc bc                                        ; $4e36: $03
    ld d, e                                       ; $4e37: $53
    ld c, $00                                     ; $4e38: $0e $00
    jr nz, @-$26                                  ; $4e3a: $20 $d8

    ld c, $df                                     ; $4e3c: $0e $df
    ld l, e                                       ; $4e3e: $6b
    call $cd00                                    ; $4e3f: $cd $00 $cd
    nop                                           ; $4e42: $00
    inc e                                         ; $4e43: $1c
    ld c, a                                       ; $4e44: $4f
    rst $38                                       ; $4e45: $ff
    ld h, e                                       ; $4e46: $63
    ld e, a                                       ; $4e47: $5f
    ld d, e                                       ; $4e48: $53
    ld [$1d20], sp                                ; $4e49: $08 $20 $1d
    ld c, e                                       ; $4e4c: $4b
    ld a, [c]                                     ; $4e4d: $f2
    ld d, b                                       ; $4e4e: $50
    call Call_0b2_5f00                            ; $4e4f: $cd $00 $5f
    ld hl, $3eb8                                  ; $4e52: $21 $b8 $3e
    rst $38                                       ; $4e55: $ff
    inc bc                                        ; $4e56: $03
    ld e, a                                       ; $4e57: $5f
    ld d, e                                       ; $4e58: $53
    ld b, b                                       ; $4e59: $40
    ld b, $ff                                     ; $4e5a: $06 $ff
    inc bc                                        ; $4e5c: $03
    ld a, l                                       ; $4e5d: $7d
    ld c, a                                       ; $4e5e: $4f
    adc $14                                       ; $4e5f: $ce $14
    ld b, b                                       ; $4e61: $40
    ld b, $60                                     ; $4e62: $06 $60
    ld b, $60                                     ; $4e64: $06 $60
    ld a, [bc]                                    ; $4e66: $0a
    adc $14                                       ; $4e67: $ce $14
    nop                                           ; $4e69: $00
    inc e                                         ; $4e6a: $1c
    ld d, h                                       ; $4e6b: $54
    ld c, $be                                     ; $4e6c: $0e $be
    dec hl                                        ; $4e6e: $2b
    ld b, b                                       ; $4e6f: $40
    ld b, $00                                     ; $4e70: $06 $00
    db $10                                        ; $4e72: $10
    sbc l                                         ; $4e73: $9d
    dec de                                        ; $4e74: $1b
    rst $18                                       ; $4e75: $df
    ld h, e                                       ; $4e76: $63
    call $0800                                    ; $4e77: $cd $00 $08
    jr nz, jr_0b2_4e34                            ; $4e7a: $20 $b8

    ld a, $9f                                     ; $4e7c: $3e $9f
    ld a, [hl]                                    ; $4e7e: $7e

Call_0b2_4e7f:
    ld e, a                                       ; $4e7f: $5f
    ld d, e                                       ; $4e80: $53
    ld c, h                                       ; $4e81: $4c
    jr nc, @+$61                                  ; $4e82: $30 $5f

    ld hl, $573f                                  ; $4e84: $21 $3f $57
    rst $38                                       ; $4e87: $ff
    inc bc                                        ; $4e88: $03
    call $9f00                                    ; $4e89: $cd $00 $9f
    ld h, a                                       ; $4e8c: $67
    ld sp, hl                                     ; $4e8d: $f9
    ld l, $5f                                     ; $4e8e: $2e $5f
    ld hl, $104a                                  ; $4e90: $21 $4a $10
    ld a, e                                       ; $4e93: $7b
    daa                                           ; $4e94: $27
    rst $38                                       ; $4e95: $ff
    halt                                          ; $4e96: $76
    ld a, [c]                                     ; $4e97: $f2
    ld d, b                                       ; $4e98: $50
    nop                                           ; $4e99: $00
    ld b, $08                                     ; $4e9a: $06 $08
    jr nz, jr_0b2_4ebe                            ; $4e9c: $20 $20

    ld b, $f2                                     ; $4e9e: $06 $f2
    ld d, b                                       ; $4ea0: $50
    nop                                           ; $4ea1: $00
    inc e                                         ; $4ea2: $1c
    sbc l                                         ; $4ea3: $9d
    daa                                           ; $4ea4: $27
    nop                                           ; $4ea5: $00
    ld b, $ff                                     ; $4ea6: $06 $ff
    ld a, e                                       ; $4ea8: $7b
    ld h, [hl]                                    ; $4ea9: $66
    nop                                           ; $4eaa: $00
    ld a, l                                       ; $4eab: $7d
    inc bc                                        ; $4eac: $03
    cp a                                          ; $4ead: $bf
    ld e, e                                       ; $4eae: $5b
    ldh [rTIMA], a                                ; $4eaf: $e0 $05
    ld l, e                                       ; $4eb1: $6b
    inc c                                         ; $4eb2: $0c
    sbc a                                         ; $4eb3: $9f
    ld a, [hl]                                    ; $4eb4: $7e
    ld a, [c]                                     ; $4eb5: $f2
    ld d, b                                       ; $4eb6: $50
    ei                                            ; $4eb7: $fb
    ld b, [hl]                                    ; $4eb8: $46
    ld c, c                                       ; $4eb9: $49
    inc d                                         ; $4eba: $14
    rst $38                                       ; $4ebb: $ff
    inc bc                                        ; $4ebc: $03
    sbc a                                         ; $4ebd: $9f

jr_0b2_4ebe:
    ld l, a                                       ; $4ebe: $6f
    ld a, [de]                                    ; $4ebf: $1a
    ld b, c                                       ; $4ec0: $41
    call Call_0b2_5f00                            ; $4ec1: $cd $00 $5f
    ld hl, $3eb8                                  ; $4ec4: $21 $b8 $3e
    ld a, a                                       ; $4ec7: $7f
    ld d, a                                       ; $4ec8: $57
    ld l, c                                       ; $4ec9: $69

jr_0b2_4eca:
    jr jr_0b2_4eca                                ; $4eca: $18 $fe

    inc bc                                        ; $4ecc: $03
    sbc a                                         ; $4ecd: $9f
    ld a, [hl]                                    ; $4ece: $7e
    ld a, [c]                                     ; $4ecf: $f2
    ld d, b                                       ; $4ed0: $50
    ret nz                                        ; $4ed1: $c0

    dec b                                         ; $4ed2: $05
    ld a, [c]                                     ; $4ed3: $f2
    ld d, b                                       ; $4ed4: $50
    ld [$9f20], sp                                ; $4ed5: $08 $20 $9f
    ld a, [hl]                                    ; $4ed8: $7e
    nop                                           ; $4ed9: $00
    inc e                                         ; $4eda: $1c
    ld a, l                                       ; $4edb: $7d
    rrca                                          ; $4edc: $0f
    ret nz                                        ; $4edd: $c0

    dec b                                         ; $4ede: $05
    rst $18                                       ; $4edf: $df
    ld d, a                                       ; $4ee0: $57
    nop                                           ; $4ee1: $00
    ld [$53de], sp                                ; $4ee2: $08 $de $53
    and b                                         ; $4ee5: $a0
    ld bc, $00cd                                  ; $4ee6: $01 $cd $00
    ld [$9f20], sp                                ; $4ee9: $08 $20 $9f
    ld a, [hl]                                    ; $4eec: $7e
    ei                                            ; $4eed: $fb
    ld b, [hl]                                    ; $4eee: $46
    ld a, [c]                                     ; $4eef: $f2
    ld d, b                                       ; $4ef0: $50
    ld c, d                                       ; $4ef1: $4a
    db $10                                        ; $4ef2: $10
    sbc a                                         ; $4ef3: $9f
    ld a, [hl]                                    ; $4ef4: $7e
    db $f4                                        ; $4ef5: $f4
    ld b, h                                       ; $4ef6: $44
    dec sp                                        ; $4ef7: $3b
    ld c, e                                       ; $4ef8: $4b
    call $b800                                    ; $4ef9: $cd $00 $b8
    ld a, $bf                                     ; $4efc: $3e $bf
    ld e, e                                       ; $4efe: $5b
    adc l                                         ; $4eff: $8d
    add hl, de                                    ; $4f00: $19
    jp z, $fe1c                                   ; $4f01: $ca $1c $fe

    inc bc                                        ; $4f04: $03
    sbc a                                         ; $4f05: $9f
    ld a, [hl]                                    ; $4f06: $7e
    ld a, [c]                                     ; $4f07: $f2
    ld d, b                                       ; $4f08: $50
    ld hl, $f205                                  ; $4f09: $21 $05 $f2
    ld d, b                                       ; $4f0c: $50
    cp $03                                        ; $4f0d: $fe $03
    sbc a                                         ; $4f0f: $9f
    ld a, [hl]                                    ; $4f10: $7e
    nop                                           ; $4f11: $00
    inc e                                         ; $4f12: $1c

jr_0b2_4f13:
    sub l                                         ; $4f13: $95
    ld a, [bc]                                    ; $4f14: $0a
    ld h, b                                       ; $4f15: $60
    ld bc, $27be                                  ; $4f16: $01 $be $27
    nop                                           ; $4f19: $00
    db $10                                        ; $4f1a: $10
    ld a, [hl-]                                   ; $4f1b: $3a
    rrca                                          ; $4f1c: $0f
    rst $38                                       ; $4f1d: $ff
    ld a, a                                       ; $4f1e: $7f
    ld b, b                                       ; $4f1f: $40
    ld bc, $0140                                  ; $4f20: $01 $40 $01
    ld a, [c]                                     ; $4f23: $f2
    ld d, b                                       ; $4f24: $50
    sbc a                                         ; $4f25: $9f
    ld a, [hl]                                    ; $4f26: $7e
    add hl, hl                                    ; $4f27: $29
    inc d                                         ; $4f28: $14
    ld [$9f20], sp                                ; $4f29: $08 $20 $9f
    ld a, [hl]                                    ; $4f2c: $7e
    ld a, [c]                                     ; $4f2d: $f2
    ld d, b                                       ; $4f2e: $50
    ld c, l                                       ; $4f2f: $4d
    ld de, $198d                                  ; $4f30: $11 $8d $19

jr_0b2_4f33:
    rst $38                                       ; $4f33: $ff
    inc bc                                        ; $4f34: $03
    rst $08                                       ; $4f35: $cf
    ld a, [hl]                                    ; $4f36: $7e
    cp [hl]                                       ; $4f37: $be
    daa                                           ; $4f38: $27
    xor d                                         ; $4f39: $aa
    inc e                                         ; $4f3a: $1c
    sbc a                                         ; $4f3b: $9f
    ld a, [hl]                                    ; $4f3c: $7e
    rst $38                                       ; $4f3d: $ff
    inc bc                                        ; $4f3e: $03
    ld a, [c]                                     ; $4f3f: $f2
    ld d, b                                       ; $4f40: $50
    call nz, $fe0c                                ; $4f41: $c4 $0c $fe
    inc bc                                        ; $4f44: $03
    sbc a                                         ; $4f45: $9f
    ld a, [hl]                                    ; $4f46: $7e
    ld a, [c]                                     ; $4f47: $f2
    ld d, b                                       ; $4f48: $50
    nop                                           ; $4f49: $00
    inc e                                         ; $4f4a: $1c
    ld [hl-], a                                   ; $4f4b: $32
    ld c, $20                                     ; $4f4c: $0e $20
    ld bc, $1fbe                                  ; $4f4e: $01 $be $1f
    nop                                           ; $4f51: $00
    inc d                                         ; $4f52: $14
    ld [hl-], a                                   ; $4f53: $32
    ld c, $00                                     ; $4f54: $0e $00
    ld bc, $079e                                  ; $4f56: $01 $9e $07
    jr nz, jr_0b2_4f5c                            ; $4f59: $20 $01

    sbc a                                         ; $4f5b: $9f

jr_0b2_4f5c:
    ld a, [hl]                                    ; $4f5c: $7e
    ld a, [c]                                     ; $4f5d: $f2
    ld d, b                                       ; $4f5e: $50
    ld [$ca20], sp                                ; $4f5f: $08 $20 $ca
    inc e                                         ; $4f62: $1c

jr_0b2_4f63:
    rst $38                                       ; $4f63: $ff
    inc bc                                        ; $4f64: $03
    sbc a                                         ; $4f65: $9f
    ld a, [hl]                                    ; $4f66: $7e
    ld a, [c]                                     ; $4f67: $f2
    ld d, b                                       ; $4f68: $50
    ld bc, $cf3c                                  ; $4f69: $01 $3c $cf
    ld a, [hl]                                    ; $4f6c: $7e
    ld h, l                                       ; $4f6d: $65
    ld h, b                                       ; $4f6e: $60
    cp [hl]                                       ; $4f6f: $be
    rra                                           ; $4f70: $1f
    dec b                                         ; $4f71: $05
    jr nz, jr_0b2_4f13                            ; $4f72: $20 $9f

    ld a, [hl]                                    ; $4f74: $7e
    rst $38                                       ; $4f75: $ff
    inc bc                                        ; $4f76: $03
    ld c, [hl]                                    ; $4f77: $4e
    add hl, hl                                    ; $4f78: $29
    ret z                                         ; $4f79: $c8

    inc d                                         ; $4f7a: $14
    cp $03                                        ; $4f7b: $fe $03
    ld a, [c]                                     ; $4f7d: $f2
    ld d, b                                       ; $4f7e: $50
    sbc a                                         ; $4f7f: $9f
    ld a, [hl]                                    ; $4f80: $7e
    and b                                         ; $4f81: $a0
    nop                                           ; $4f82: $00
    ld d, d                                       ; $4f83: $52
    ld c, $00                                     ; $4f84: $0e $00
    jr nz, jr_0b2_5004                            ; $4f86: $20 $7c

    inc bc                                        ; $4f88: $03
    add b                                         ; $4f89: $80
    nop                                           ; $4f8a: $00
    ld [hl-], a                                   ; $4f8b: $32
    ld c, $00                                     ; $4f8c: $0e $00
    jr nz, @+$0a                                  ; $4f8e: $20 $08

    jr nz, jr_0b2_4f9a                            ; $4f90: $20 $08

    jr nz, jr_0b2_4f33                            ; $4f92: $20 $9f

    ld a, [hl]                                    ; $4f94: $7e
    ld a, [c]                                     ; $4f95: $f2
    ld d, b                                       ; $4f96: $50
    ld [$0420], sp                                ; $4f97: $08 $20 $04

jr_0b2_4f9a:
    jr z, @-$2f                                   ; $4f9a: $28 $cf

    ld a, [hl]                                    ; $4f9c: $7e
    cp $03                                        ; $4f9d: $fe $03
    cpl                                           ; $4f9f: $2f
    dec [hl]                                      ; $4fa0: $35
    ld b, b                                       ; $4fa1: $40
    jr nz, jr_0b2_5009                            ; $4fa2: $20 $65

    ld h, b                                       ; $4fa4: $60
    rst $08                                       ; $4fa5: $cf
    ld a, [hl]                                    ; $4fa6: $7e
    ld bc, $243c                                  ; $4fa7: $01 $3c $24
    jr z, jr_0b2_4f63                             ; $4faa: $28 $b7

    ld a, [hl]                                    ; $4fac: $7e
    rst $38                                       ; $4fad: $ff
    inc bc                                        ; $4fae: $03
    adc l                                         ; $4faf: $8d
    add hl, de                                    ; $4fb0: $19
    call z, $3e14                                 ; $4fb1: $cc $14 $3e
    inc bc                                        ; $4fb4: $03
    sbc a                                         ; $4fb5: $9f
    ld a, [hl]                                    ; $4fb6: $7e
    ld a, [c]                                     ; $4fb7: $f2
    ld c, b                                       ; $4fb8: $48
    add b                                         ; $4fb9: $80
    nop                                           ; $4fba: $00
    ld d, e                                       ; $4fbb: $53
    ld c, $00                                     ; $4fbc: $0e $00
    jr nz, jr_0b2_501c                            ; $4fbe: $20 $5c

    inc bc                                        ; $4fc0: $03
    nop                                           ; $4fc1: $00
    nop                                           ; $4fc2: $00
    ld [hl], h                                    ; $4fc3: $74
    ld a, [bc]                                    ; $4fc4: $0a
    sbc a                                         ; $4fc5: $9f
    ld a, [hl]                                    ; $4fc6: $7e
    ld bc, $0820                                  ; $4fc7: $01 $20 $08
    jr nz, @-$5f                                  ; $4fca: $20 $9f

    ld a, [hl]                                    ; $4fcc: $7e
    ld a, [c]                                     ; $4fcd: $f2
    ld d, b                                       ; $4fce: $50
    ld bc, $0420                                  ; $4fcf: $01 $20 $04
    inc l                                         ; $4fd2: $2c
    rst $08                                       ; $4fd3: $cf

jr_0b2_4fd4:
    ld a, [hl]                                    ; $4fd4: $7e
    ld h, l                                       ; $4fd5: $65
    ld h, b                                       ; $4fd6: $60
    ld a, [c]                                     ; $4fd7: $f2
    ld d, b                                       ; $4fd8: $50

jr_0b2_4fd9:
    ld bc, $653c                                  ; $4fd9: $01 $3c $65
    ld h, b                                       ; $4fdc: $60
    cp [hl]                                       ; $4fdd: $be
    cpl                                           ; $4fde: $2f
    ld e, e                                       ; $4fdf: $5b
    inc bc                                        ; $4fe0: $03
    and [hl]                                      ; $4fe1: $a6
    inc e                                         ; $4fe2: $1c
    sub h                                         ; $4fe3: $94
    ld [bc], a                                    ; $4fe4: $02
    ld h, l                                       ; $4fe5: $65
    ld h, b                                       ; $4fe6: $60
    rst $38                                       ; $4fe7: $ff

jr_0b2_4fe8:
    inc bc                                        ; $4fe8: $03
    ld [$3420], sp                                ; $4fe9: $08 $20 $34

jr_0b2_4fec:
    ld bc, $44d3                                  ; $4fec: $01 $d3 $44
    ccf                                           ; $4fef: $3f
    ld b, $00                                     ; $4ff0: $06 $00
    inc e                                         ; $4ff2: $1c
    ld [hl-], a                                   ; $4ff3: $32
    ld [de], a                                    ; $4ff4: $12
    ld e, h                                       ; $4ff5: $5c
    inc de                                        ; $4ff6: $13
    ld [$0020], sp                                ; $4ff7: $08 $20 $00
    jr jr_0b2_4fec                                ; $4ffa: $18 $f0

    ld de, $7e9f                                  ; $4ffc: $11 $9f $7e
    ld sp, hl                                     ; $4fff: $f9
    ld [bc], a                                    ; $5000: $02
    ld [$cf20], sp                                ; $5001: $08 $20 $cf

jr_0b2_5004:
    ld a, [hl]                                    ; $5004: $7e
    rst $08                                       ; $5005: $cf
    ld d, b                                       ; $5006: $50
    sbc a                                         ; $5007: $9f
    ld a, [hl]                                    ; $5008: $7e

jr_0b2_5009:
    ld bc, $653c                                  ; $5009: $01 $3c $65
    ld h, b                                       ; $500c: $60
    rst $08                                       ; $500d: $cf
    ld d, b                                       ; $500e: $50
    sbc a                                         ; $500f: $9f
    ld a, [hl]                                    ; $5010: $7e
    ld b, b                                       ; $5011: $40
    jr nz, jr_0b2_5079                            ; $5012: $20 $65

    ld h, b                                       ; $5014: $60
    ld e, h                                       ; $5015: $5c
    inc de                                        ; $5016: $13
    ld [$4020], sp                                ; $5017: $08 $20 $40
    jr nz, jr_0b2_4fd9                            ; $501a: $20 $bd

jr_0b2_501c:
    inc bc                                        ; $501c: $03
    ld h, l                                       ; $501d: $65
    ld h, b                                       ; $501e: $60
    adc l                                         ; $501f: $8d
    add hl, de                                    ; $5020: $19
    dec c                                         ; $5021: $0d
    dec d                                         ; $5022: $15
    db $fc                                        ; $5023: $fc
    inc bc                                        ; $5024: $03
    ld a, [c]                                     ; $5025: $f2
    ld c, b                                       ; $5026: $48
    ld e, $06                                     ; $5027: $1e $06
    nop                                           ; $5029: $00
    nop                                           ; $502a: $00
    ld a, [hl-]                                   ; $502b: $3a
    rlca                                          ; $502c: $07
    rst $18                                       ; $502d: $df
    ld c, e                                       ; $502e: $4b
    nop                                           ; $502f: $00
    jr nz, jr_0b2_5032                            ; $5030: $20 $00

jr_0b2_5032:
    nop                                           ; $5032: $00
    ld [hl-], a                                   ; $5033: $32
    ld c, $7c                                     ; $5034: $0e $7c
    inc bc                                        ; $5036: $03
    nop                                           ; $5037: $00
    jr nz, jr_0b2_5042                            ; $5038: $20 $08

    jr nz, jr_0b2_4fd4                            ; $503a: $20 $98

    ld a, [hl]                                    ; $503c: $7e
    ld b, h                                       ; $503d: $44
    ld e, h                                       ; $503e: $5c
    ld a, [c]                                     ; $503f: $f2
    ld d, b                                       ; $5040: $50
    ld b, b                                       ; $5041: $40

jr_0b2_5042:
    jr nz, @-$2f                                  ; $5042: $20 $cf

    ld a, [hl]                                    ; $5044: $7e
    ld b, h                                       ; $5045: $44
    ld e, h                                       ; $5046: $5c
    ld bc, $403c                                  ; $5047: $01 $3c $40
    jr nz, jr_0b2_50b1                            ; $504a: $20 $65

    ld h, b                                       ; $504c: $60
    ld [bc], a                                    ; $504d: $02
    ld b, h                                       ; $504e: $44
    nop                                           ; $504f: $00
    jr nz, jr_0b2_5092                            ; $5050: $20 $40

jr_0b2_5052:
    jr nz, jr_0b2_4fe8                            ; $5052: $20 $94

    ld [bc], a                                    ; $5054: $02
    rst $38                                       ; $5055: $ff
    inc bc                                        ; $5056: $03
    adc l                                         ; $5057: $8d
    add hl, de                                    ; $5058: $19
    ld l, c                                       ; $5059: $69
    inc e                                         ; $505a: $1c
    sbc a                                         ; $505b: $9f
    ld a, [hl]                                    ; $505c: $7e
    rst $38                                       ; $505d: $ff
    inc bc                                        ; $505e: $03
    ld a, [c]                                     ; $505f: $f2
    ld b, h                                       ; $5060: $44
    nop                                           ; $5061: $00
    nop                                           ; $5062: $00
    ld hl, sp+$06                                 ; $5063: $f8 $06
    cp [hl]                                       ; $5065: $be
    inc hl                                        ; $5066: $23
    nop                                           ; $5067: $00
    jr nz, jr_0b2_506a                            ; $5068: $20 $00

jr_0b2_506a:
    nop                                           ; $506a: $00
    ldh a, [rNR11]                                ; $506b: $f0 $11
    add hl, de                                    ; $506d: $19
    rlca                                          ; $506e: $07
    nop                                           ; $506f: $00
    jr nz, jr_0b2_5076                            ; $5070: $20 $04

    jr @-$5f                                      ; $5072: $18 $9f

    ld a, [hl]                                    ; $5074: $7e
    ld h, l                                       ; $5075: $65

jr_0b2_5076:
    ld h, b                                       ; $5076: $60
    ld a, [c]                                     ; $5077: $f2
    ld d, b                                       ; $5078: $50

jr_0b2_5079:
    ld b, b                                       ; $5079: $40
    jr nz, jr_0b2_50e8                            ; $507a: $20 $6c

    add hl, de                                    ; $507c: $19

jr_0b2_507d:
    rst $38                                       ; $507d: $ff
    inc bc                                        ; $507e: $03
    inc hl                                        ; $507f: $23
    ld h, b                                       ; $5080: $60
    ld b, b                                       ; $5081: $40
    jr nz, jr_0b2_5086                            ; $5082: $20 $02

    ld b, h                                       ; $5084: $44
    adc l                                         ; $5085: $8d

jr_0b2_5086:
    add hl, de                                    ; $5086: $19
    ld h, l                                       ; $5087: $65
    ld h, b                                       ; $5088: $60
    adc l                                         ; $5089: $8d
    add hl, de                                    ; $508a: $19
    rst $38                                       ; $508b: $ff
    inc bc                                        ; $508c: $03
    sub h                                         ; $508d: $94
    ld [bc], a                                    ; $508e: $02
    ld h, l                                       ; $508f: $65
    ld h, b                                       ; $5090: $60
    dec b                                         ; $5091: $05

jr_0b2_5092:
    inc d                                         ; $5092: $14
    sbc a                                         ; $5093: $9f
    ld a, [hl]                                    ; $5094: $7e
    cpl                                           ; $5095: $2f
    dec [hl]                                      ; $5096: $35
    rst $38                                       ; $5097: $ff
    inc bc                                        ; $5098: $03
    nop                                           ; $5099: $00
    jr nz, jr_0b2_5052                            ; $509a: $20 $b6

    ld a, [bc]                                    ; $509c: $0a
    cp [hl]                                       ; $509d: $be

jr_0b2_509e:
    cpl                                           ; $509e: $2f
    ld e, e                                       ; $509f: $5b
    inc bc                                        ; $50a0: $03
    nop                                           ; $50a1: $00
    jr nz, @-$2f                                  ; $50a2: $20 $cf

    dec d                                         ; $50a4: $15
    ld hl, sp+$06                                 ; $50a5: $f8 $06
    ld d, e                                       ; $50a7: $53
    ld [de], a                                    ; $50a8: $12

jr_0b2_50a9:
    inc bc                                        ; $50a9: $03
    jr jr_0b2_509e                                ; $50aa: $18 $f2

    ld d, b                                       ; $50ac: $50
    ld hl, $9f70                                  ; $50ad: $21 $70 $9f
    ld a, [hl]                                    ; $50b0: $7e

jr_0b2_50b1:
    ld b, h                                       ; $50b1: $44
    ld h, h                                       ; $50b2: $64
    sub h                                         ; $50b3: $94
    ld [bc], a                                    ; $50b4: $02
    adc l                                         ; $50b5: $8d
    add hl, de                                    ; $50b6: $19
    rst $38                                       ; $50b7: $ff
    inc bc                                        ; $50b8: $03
    and h                                         ; $50b9: $a4
    inc e                                         ; $50ba: $1c
    rst $38                                       ; $50bb: $ff
    inc bc                                        ; $50bc: $03
    rst $08                                       ; $50bd: $cf
    ld a, [hl]                                    ; $50be: $7e
    ld b, h                                       ; $50bf: $44
    ld e, b                                       ; $50c0: $58
    ld [$ff20], sp                                ; $50c1: $08 $20 $ff
    inc bc                                        ; $50c4: $03
    sub h                                         ; $50c5: $94
    ld [bc], a                                    ; $50c6: $02
    adc l                                         ; $50c7: $8d
    add hl, de                                    ; $50c8: $19
    ld b, $18                                     ; $50c9: $06 $18
    cp [hl]                                       ; $50cb: $be
    inc de                                        ; $50cc: $13
    ld a, [c]                                     ; $50cd: $f2
    ld d, b                                       ; $50ce: $50
    sbc a                                         ; $50cf: $9f
    ld a, [hl]                                    ; $50d0: $7e
    nop                                           ; $50d1: $00
    jr nz, jr_0b2_5106                            ; $50d2: $20 $32

    ld [de], a                                    ; $50d4: $12
    ld e, e                                       ; $50d5: $5b
    inc bc                                        ; $50d6: $03
    or [hl]                                       ; $50d7: $b6
    ld a, [bc]                                    ; $50d8: $0a
    nop                                           ; $50d9: $00
    jr nz, @-$2f                                  ; $50da: $20 $cf

    dec d                                         ; $50dc: $15
    sub l                                         ; $50dd: $95
    ld c, $32                                     ; $50de: $0e $32
    ld [de], a                                    ; $50e0: $12
    ld b, h                                       ; $50e1: $44
    inc d                                         ; $50e2: $14
    ld a, [de]                                    ; $50e3: $1a
    rlca                                          ; $50e4: $07
    ld a, [c]                                     ; $50e5: $f2
    ld d, b                                       ; $50e6: $50
    sbc a                                         ; $50e7: $9f

jr_0b2_50e8:
    ld a, [hl]                                    ; $50e8: $7e
    nop                                           ; $50e9: $00
    ld l, b                                       ; $50ea: $68
    sbc l                                         ; $50eb: $9d
    rlca                                          ; $50ec: $07
    ld h, d                                       ; $50ed: $62
    jr z, jr_0b2_507d                             ; $50ee: $28 $8d

    add hl, de                                    ; $50f0: $19
    nop                                           ; $50f1: $00
    inc a                                         ; $50f2: $3c
    sub h                                         ; $50f3: $94
    ld [bc], a                                    ; $50f4: $02
    adc l                                         ; $50f5: $8d
    add hl, de                                    ; $50f6: $19
    rst $38                                       ; $50f7: $ff
    inc bc                                        ; $50f8: $03
    ld [$7b20], sp                                ; $50f9: $08 $20 $7b
    inc bc                                        ; $50fc: $03
    sbc a                                         ; $50fd: $9f
    ld a, [hl]                                    ; $50fe: $7e
    ld l, l                                       ; $50ff: $6d
    ld hl, $1405                                  ; $5100: $21 $05 $14
    ld a, [c]                                     ; $5103: $f2
    ld d, b                                       ; $5104: $50
    ld a, [de]                                    ; $5105: $1a

jr_0b2_5106:
    rlca                                          ; $5106: $07
    sbc a                                         ; $5107: $9f
    ld a, [hl]                                    ; $5108: $7e
    nop                                           ; $5109: $00

jr_0b2_510a:
    jr nz, @+$12                                  ; $510a: $20 $10

    ld d, $96                                     ; $510c: $16 $96
    ld c, $32                                     ; $510e: $0e $32
    ld [de], a                                    ; $5110: $12
    nop                                           ; $5111: $00
    jr nz, jr_0b2_50a9                            ; $5112: $20 $95

    ld c, $7c                                     ; $5114: $0e $7c
    inc bc                                        ; $5116: $03
    adc l                                         ; $5117: $8d
    add hl, de                                    ; $5118: $19
    ld [bc], a                                    ; $5119: $02
    ld [$03de], sp                                ; $511a: $08 $de $03
    ld d, b                                       ; $511d: $50
    dec l                                         ; $511e: $2d
    sbc a                                         ; $511f: $9f
    ld a, [hl]                                    ; $5120: $7e
    call $b800                                    ; $5121: $cd $00 $b8
    ld a, $7f                                     ; $5124: $3e $7f
    ld e, a                                       ; $5126: $5f
    adc l                                         ; $5127: $8d
    add hl, de                                    ; $5128: $19
    call $ff00                                    ; $5129: $cd $00 $ff
    inc bc                                        ; $512c: $03
    ld a, [c]                                     ; $512d: $f2
    ld d, b                                       ; $512e: $50
    adc l                                         ; $512f: $8d
    add hl, de                                    ; $5130: $19
    ld [$9f20], sp                                ; $5131: $08 $20 $9f
    ld a, [hl]                                    ; $5134: $7e
    ld a, [c]                                     ; $5135: $f2
    ld d, b                                       ; $5136: $50
    adc l                                         ; $5137: $8d
    add hl, de                                    ; $5138: $19
    dec b                                         ; $5139: $05
    inc d                                         ; $513a: $14
    sbc a                                         ; $513b: $9f
    ld a, [hl]                                    ; $513c: $7e
    ld a, [c]                                     ; $513d: $f2
    ld d, b                                       ; $513e: $50
    ld de, $0012                                  ; $513f: $11 $12 $00
    jr nz, @+$13                                  ; $5142: $20 $11

    ld [de], a                                    ; $5144: $12
    ld a, [de]                                    ; $5145: $1a
    inc bc                                        ; $5146: $03
    ld de, $0012                                  ; $5147: $11 $12 $00
    jr nz, jr_0b2_510a                            ; $514a: $20 $be

    dec hl                                        ; $514c: $2b
    rst $38                                       ; $514d: $ff
    ld e, a                                       ; $514e: $5f
    adc l                                         ; $514f: $8d
    add hl, de                                    ; $5150: $19
    dec b                                         ; $5151: $05
    inc d                                         ; $5152: $14
    rst $10                                       ; $5153: $d7
    ld c, $f2                                     ; $5154: $0e $f2
    ld d, b                                       ; $5156: $50
    sbc a                                         ; $5157: $9f
    ld a, [hl]                                    ; $5158: $7e
    call $9800                                    ; $5159: $cd $00 $98
    ld a, $5f                                     ; $515c: $3e $5f
    ld c, a                                       ; $515e: $4f
    rst $38                                       ; $515f: $ff
    ld l, e                                       ; $5160: $6b
    db $ed                                        ; $5161: $ed
    inc b                                         ; $5162: $04
    sbc a                                         ; $5163: $9f
    ld a, [hl]                                    ; $5164: $7e
    ld a, [c]                                     ; $5165: $f2
    ld d, b                                       ; $5166: $50
    dec e                                         ; $5167: $1d
    ld c, e                                       ; $5168: $4b
    ld [$9f20], sp                                ; $5169: $08 $20 $9f
    ld a, [hl]                                    ; $516c: $7e
    ld a, [c]                                     ; $516d: $f2
    ld d, b                                       ; $516e: $50
    dec e                                         ; $516f: $1d
    ld c, e                                       ; $5170: $4b
    inc b                                         ; $5171: $04
    db $10                                        ; $5172: $10
    rst $10                                       ; $5173: $d7

jr_0b2_5174:
    ld a, [bc]                                    ; $5174: $0a
    ld a, [c]                                     ; $5175: $f2
    ld d, b                                       ; $5176: $50
    sbc a                                         ; $5177: $9f
    ld a, [hl]                                    ; $5178: $7e
    nop                                           ; $5179: $00
    jr nz, jr_0b2_5196                            ; $517a: $20 $1a

    inc bc                                        ; $517c: $03
    ld a, [c]                                     ; $517d: $f2
    ld d, b                                       ; $517e: $50
    sbc a                                         ; $517f: $9f
    ld a, [hl]                                    ; $5180: $7e
    nop                                           ; $5181: $00
    jr nz, @-$66                                  ; $5182: $20 $98

    ld a, $5f                                     ; $5184: $3e $5f
    ld c, a                                       ; $5186: $4f
    rst $38                                       ; $5187: $ff
    ld l, e                                       ; $5188: $6b
    dec b                                         ; $5189: $05
    inc d                                         ; $518a: $14
    cp [hl]                                       ; $518b: $be
    inc de                                        ; $518c: $13
    ld a, [c]                                     ; $518d: $f2
    ld d, b                                       ; $518e: $50
    sbc a                                         ; $518f: $9f
    ld l, e                                       ; $5190: $6b
    call $b800                                    ; $5191: $cd $00 $b8
    ld a, $9f                                     ; $5194: $3e $9f

jr_0b2_5196:
    ld a, [hl]                                    ; $5196: $7e
    ld a, a                                       ; $5197: $7f
    ld e, e                                       ; $5198: $5b
    call $9f00                                    ; $5199: $cd $00 $9f
    ld a, [hl]                                    ; $519c: $7e
    ld a, [c]                                     ; $519d: $f2
    ld d, b                                       ; $519e: $50
    inc e                                         ; $519f: $1c
    ld b, a                                       ; $51a0: $47
    ld [$f220], sp                                ; $51a1: $08 $20 $f2
    ld d, b                                       ; $51a4: $50
    sbc a                                         ; $51a5: $9f
    ld a, [hl]                                    ; $51a6: $7e
    inc e                                         ; $51a7: $1c
    ld b, a                                       ; $51a8: $47
    nop                                           ; $51a9: $00

jr_0b2_51aa:
    nop                                           ; $51aa: $00
    ld a, h                                       ; $51ab: $7c

jr_0b2_51ac:
    rrca                                          ; $51ac: $0f
    rst $38                                       ; $51ad: $ff
    ld [hl], d                                    ; $51ae: $72
    ld a, [c]                                     ; $51af: $f2
    ld d, b                                       ; $51b0: $50
    nop                                           ; $51b1: $00
    jr nz, jr_0b2_5230                            ; $51b2: $20 $7c

    rrca                                          ; $51b4: $0f
    rst $38                                       ; $51b5: $ff
    ld [hl], d                                    ; $51b6: $72
    ld a, [c]                                     ; $51b7: $f2
    ld d, b                                       ; $51b8: $50
    nop                                           ; $51b9: $00
    jr nz, jr_0b2_5174                            ; $51ba: $20 $b8

    ld a, $9f                                     ; $51bc: $3e $9f
    ld a, [hl]                                    ; $51be: $7e
    ld a, a                                       ; $51bf: $7f
    ld e, e                                       ; $51c0: $5b
    inc b                                         ; $51c1: $04
    inc d                                         ; $51c2: $14
    cp [hl]                                       ; $51c3: $be
    scf                                           ; $51c4: $37
    ld a, [c]                                     ; $51c5: $f2
    ld d, b                                       ; $51c6: $50
    rst $38                                       ; $51c7: $ff
    ld l, e                                       ; $51c8: $6b
    call $b800                                    ; $51c9: $cd $00 $b8
    ld a, $9f                                     ; $51cc: $3e $9f
    ld a, [hl]                                    ; $51ce: $7e
    ld a, a                                       ; $51cf: $7f
    ld d, a                                       ; $51d0: $57
    adc e                                         ; $51d1: $8b
    ld [$3eb8], sp                                ; $51d2: $08 $b8 $3e
    ld a, [c]                                     ; $51d5: $f2
    ld d, b                                       ; $51d6: $50
    ccf                                           ; $51d7: $3f
    ld d, a                                       ; $51d8: $57
    ld [$9f20], sp                                ; $51d9: $08 $20 $9f
    ld a, [hl]                                    ; $51dc: $7e
    ld a, [c]                                     ; $51dd: $f2
    ld d, b                                       ; $51de: $50
    ccf                                           ; $51df: $3f
    ld d, a                                       ; $51e0: $57
    nop                                           ; $51e1: $00
    db $10                                        ; $51e2: $10
    cp [hl]                                       ; $51e3: $be

jr_0b2_51e4:
    dec hl                                        ; $51e4: $2b
    ld a, [c]                                     ; $51e5: $f2
    ld d, b                                       ; $51e6: $50
    ld e, a                                       ; $51e7: $5f
    ld [hl], e                                    ; $51e8: $73
    nop                                           ; $51e9: $00
    jr nz, jr_0b2_51aa                            ; $51ea: $20 $be

    dec hl                                        ; $51ec: $2b
    ld a, [c]                                     ; $51ed: $f2
    ld d, b                                       ; $51ee: $50
    ld e, a                                       ; $51ef: $5f
    ld [hl], e                                    ; $51f0: $73
    nop                                           ; $51f1: $00
    jr nz, jr_0b2_51ac                            ; $51f2: $20 $b8

    ld a, $9f                                     ; $51f4: $3e $9f
    ld a, [hl]                                    ; $51f6: $7e
    ld a, a                                       ; $51f7: $7f
    ld d, a                                       ; $51f8: $57
    ld [bc], a                                    ; $51f9: $02
    ld [$0f7d], sp                                ; $51fa: $08 $7d $0f
    ld a, [c]                                     ; $51fd: $f2
    ld d, b                                       ; $51fe: $50
    rst $38                                       ; $51ff: $ff
    ld h, e                                       ; $5200: $63
    nop                                           ; $5201: $00
    nop                                           ; $5202: $00
    cp b                                          ; $5203: $b8
    ld a, $cd                                     ; $5204: $3e $cd
    nop                                           ; $5206: $00
    ld a, a                                       ; $5207: $7f
    ld d, a                                       ; $5208: $57
    nop                                           ; $5209: $00
    nop                                           ; $520a: $00
    ld de, $5312                                  ; $520b: $11 $12 $53
    ld c, $74                                     ; $520e: $0e $74
    ld c, $00                                     ; $5210: $0e $00
    nop                                           ; $5212: $00
    ld de, $5c12                                  ; $5213: $11 $12 $5c
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
    jr nz, jr_0b2_525f                            ; $5222: $20 $3b

    dec bc                                        ; $5224: $0b
    cp [hl]                                       ; $5225: $be
    ld b, a                                       ; $5226: $47
    rst $38                                       ; $5227: $ff
    ld [hl], e                                    ; $5228: $73
    nop                                           ; $5229: $00
    jr nz, jr_0b2_51e4                            ; $522a: $20 $b8

    ld a, $cd                                     ; $522c: $3e $cd
    nop                                           ; $522e: $00
    ld a, a                                       ; $522f: $7f

jr_0b2_5230:
    ld d, a                                       ; $5230: $57
    nop                                           ; $5231: $00
    jr nz, @+$55                                  ; $5232: $20 $53

    ld [de], a                                    ; $5234: $12
    sbc $57                                       ; $5235: $de $57
    ld a, l                                       ; $5237: $7d
    rlca                                          ; $5238: $07
    ld de, $be12                                  ; $5239: $11 $12 $be
    ld b, a                                       ; $523c: $47
    ld a, h                                       ; $523d: $7c
    dec bc                                        ; $523e: $0b
    rst $38                                       ; $523f: $ff
    ld l, a                                       ; $5240: $6f
    ld de, $7412                                  ; $5241: $11 $12 $74
    ld c, $b6                                     ; $5244: $0e $b6
    ld a, [bc]                                    ; $5246: $0a
    ld [hl-], a                                   ; $5247: $32
    ld [de], a                                    ; $5248: $12
    rst $10                                       ; $5249: $d7
    ld b, $be                                     ; $524a: $06 $be
    dec sp                                        ; $524c: $3b
    rst $38                                       ; $524d: $ff
    ld l, a                                       ; $524e: $6f
    ld a, l                                       ; $524f: $7d
    dec bc                                        ; $5250: $0b
    nop                                           ; $5251: $00
    jr nz, @+$55                                  ; $5252: $20 $53

    ld a, [bc]                                    ; $5254: $0a
    sbc $53                                       ; $5255: $de $53
    ld a, l                                       ; $5257: $7d
    dec bc                                        ; $5258: $0b
    nop                                           ; $5259: $00
    jr nz, @+$55                                  ; $525a: $20 $53

    ld a, [bc]                                    ; $525c: $0a
    sbc $53                                       ; $525d: $de $53

jr_0b2_525f:
    ld a, l                                       ; $525f: $7d
    dec bc                                        ; $5260: $0b

    db $00, $20, $00, $20, $00, $20, $a5, $04, $00, $20, $00, $20, $00, $20, $a5, $04
    db $00, $20, $bf, $03, $00, $20, $a5, $04, $00, $18, $3f, $0d, $4d, $00, $5f, $0f
    db $00, $1c, $3f, $0d, $4d, $00, $22, $08, $00, $20, $3f, $0d, $4d, $00, $22, $08
    db $00, $20, $3f, $0d, $4d, $00, $22, $08, $00, $20, $bf, $03, $00, $20, $a5, $04
    db $00, $20, $bf, $03, $00, $20, $a5, $04, $00, $1c, $f3, $08, $bf, $03, $3f, $0d
    db $25, $04, $3f, $0d, $ff, $7f, $5f, $0f, $00, $1c, $3f, $0d, $4b, $00, $df, $03
    db $00, $20, $3f, $0d, $4b, $00, $df, $03, $00, $20, $3f, $0d, $4b, $00, $df, $03
    db $00, $20, $f3, $08, $bf, $03, $3f, $0d, $00, $20, $f3, $08, $bf, $03, $3f, $0d
    db $00, $1c, $32, $02, $bf, $03, $3f, $0d, $25, $00, $de, $0a, $d5, $7e, $ff, $7f
    db $28, $08, $3f, $0d, $ff, $7f, $df, $03, $00, $20, $3f, $0d, $ff, $7f, $df, $03
    db $00, $20, $3f, $0d, $ff, $7f, $df, $03, $00, $20, $32, $02, $bf, $03, $3f, $0d
    db $00, $20, $f9, $08, $7f, $03, $3f, $0d, $04, $00, $95, $05, $9f, $03, $00, $20
    db $43, $00, $b4, $7e, $bf, $03, $4d, $00, $27, $08, $3f, $0d, $ff, $7f, $ff, $03
    db $00, $20, $f9, $08, $df, $07, $3f, $0d, $00, $20, $f9, $08, $df, $07, $3f, $0d
    db $00, $20, $95, $05, $9f, $03, $00, $20, $00, $20, $f9, $08, $4d, $00, $7f, $03
    db $29, $00, $bf, $03, $9b, $7f, $f8, $08, $6d, $00, $d5, $7e, $5f, $0a, $3f, $07
    db $2a, $00, $ff, $03, $3f, $0d, $ff, $7f, $00, $20, $1c, $09, $4d, $00, $df, $07
    db $00, $20, $1c, $09, $4d, $00, $df, $07, $00, $20, $bf, $03, $9b, $7f, $f8, $08
    db $00, $18, $ff, $7f, $2f, $00, $f9, $08, $4b, $00, $3f, $07, $ff, $7f, $bc, $04
    db $2c, $00, $d5, $7e, $76, $00, $dd, $0d, $4d, $00, $ff, $03, $3f, $0d, $dd, $0d
    db $00, $14, $df, $07, $ff, $7f, $4d, $00, $00, $20, $df, $07, $ff, $7f, $4d, $00
    db $00, $20, $f9, $08, $ff, $03, $bc, $04, $00, $00, $de, $7b, $00, $1c, $ff, $7f
    db $4d, $00, $7f, $03, $18, $05, $dd, $03, $6d, $00, $b4, $7a, $5c, $09, $9d, $03
    db $4d, $00, $b4, $7e, $5f, $0d, $ff, $03, $00, $0c, $3f, $0d, $9c, $7f, $7d, $03
    db $00, $20, $4d, $00, $9c, $7f, $7d, $03, $00, $1c, $f9, $08, $ff, $03, $4d, $00
    db $00, $04, $fd, $03, $de, $7b, $1f, $09, $4d, $00, $72, $76, $fc, $03, $7f, $04
    db $62, $00, $9c, $0d, $9e, $03, $4d, $00, $4d, $00, $b4, $7a, $3f, $0d, $ff, $03
    db $4d, $00, $9c, $7f, $5c, $03, $3f, $0d, $00, $00, $4d, $00, $00, $1c, $00, $20
    db $02, $14, $f9, $08, $de, $7b, $ff, $03, $06, $00, $5a, $7b, $fd, $03, $9f, $04
    db $4d, $00, $72, $76, $9e, $00, $1d, $02, $2a, $00, $d5, $01, $1f, $09, $19, $03
    db $4d, $00, $b4, $7a, $9d, $03, $3f, $0d, $26, $00, $b4, $7a, $1d, $09, $5c, $03
    db $00, $00, $de, $7b, $00, $20, $4d, $00, $02, $10, $72, $76, $ff, $03, $f9, $08
    db $28, $00, $72, $76, $fd, $03, $b9, $04, $4d, $00, $72, $76, $fd, $01, $ef, $05
    db $4d, $00, $be, $00, $cb, $18, $ba, $15, $4d, $00, $5c, $03, $3f, $0d, $bf, $05
    db $4d, $00, $73, $76, $5c, $03, $3f, $0d, $00, $1c, $5c, $03, $9b, $7b, $4b, $00
    db $00, $0c, $ff, $03, $5a, $7b, $93, $04, $4d, $00, $72, $76, $ff, $0b, $f9, $08
    db $4c, $00, $72, $76, $fc, $02, $f8, $00, $cf, $0c, $59, $3a, $75, $1d, $bd, $4e
    db $00, $00, $72, $76, $3f, $0d, $4c, $00, $4d, $00, $72, $76, $5c, $03, $3f, $0d
    db $04, $00, $3d, $06, $7a, $7b, $00, $20, $00, $00, $ff, $03, $7a, $7b, $93, $04
    db $6d, $00, $72, $76, $5f, $07, $f9, $08, $23, $08, $9d, $09, $b6, $31, $8c, $00
    db $21, $10, $1b, $7c, $0d, $60, $dd, $52, $29, $04, $1d, $05, $1a, $7c, $5c, $03
    db $4d, $00, $51, $76, $5c, $03, $3f, $0d, $04, $00, $3d, $06, $59, $7b, $00, $20
    db $03, $08, $ff, $03, $51, $72, $ff, $7f, $89, $04, $30, $72, $d9, $04, $ff, $03
    db $85, $08, $92, $01, $fd, $36, $5e, $09, $49, $28, $fe, $56, $18, $78, $0d, $58
    db $11, $7c, $5e, $09, $4e, $04, $5e, $03, $4d, $00, $51, $72, $5c, $03, $3e, $0d
    db $00, $1c, $bd, $02, $ff, $7f, $4d, $00, $00, $00, $30, $72, $ff, $7f, $00, $20
    db $4d, $00, $ff, $03, $f9, $08, $df, $04, $8a, $0c, $1d, $09, $fa, $35, $3d, $0a
    db $ab, $0c, $3a, $42, $fe, $56, $74, $21, $e9, $00, $be, $03, $7d, $0d, $53, $05
    db $2c, $00, $30, $72, $3f, $0d, $9c, $03, $00, $1c, $9d, $06, $ff, $7f, $4d, $00
    db $00, $00, $30, $72, $ff, $7f, $00, $20, $8e, $00, $30, $72, $9e, $03, $fb, $04
    db $4c, $04, $df, $08, $9f, $06, $7b, $03, $4d, $29, $fe, $56, $1c, $3e, $fa, $18
    db $a5, $00, $77, $04, $b2, $05, $3e, $06, $21, $00, $30, $72, $7d, $02, $4d, $00
    db $00, $1c, $3f, $0d, $4d, $00, $ff, $7f, $00, $10, $0f, $6e, $f9, $08, $ff, $7f
    db $21, $00, $9c, $01, $7d, $03, $4d, $00, $00, $00, $9d, $03, $3f, $09, $cc, $1c
    db $07, $00, $fa, $35, $f5, $0c, $de, $4e, $62, $04, $7e, $07, $39, $05, $fe, $7b
    db $28, $00, $51, $4b, $5c, $03, $dc, $04, $02, $00, $0f, $6e, $ff, $7f, $00, $20
    db $00, $14, $9f, $03, $f9, $08, $ff, $7f, $00, $00, $92, $4b, $2d, $05, $fe, $7f
    db $04, $00, $db, $06, $ac, $11, $14, $05, $22, $00, $73, $19, $bf, $46, $c8, $01
    db $03, $00, $b1, $4f, $9c, $03, $14, $05, $46, $00, $0e, $6e, $90, $22, $70, $43
    db $00, $00, $0e, $6e, $ff, $7f, $00, $20, $00, $18, $3a, $05, $ff, $7f, $4d, $00
    db $a4, $08, $71, $43, $8a, $0d, $4d, $00, $63, $00, $ef, $05, $9d, $03, $17, $0d
    db $05, $15, $19, $2a, $15, $06, $be, $4a, $21, $00, $97, $1b, $3f, $0d, $8a, $11
    db $42, $00, $ae, $26, $1e, $03, $c9, $04, $00, $00, $ee, $69, $ff, $7f, $00, $20
    db $00, $00, $ff, $7f, $00, $20, $4d, $00, $21, $00, $f8, $06, $ef, $05, $f8, $67
    db $22, $00, $56, $15, $5d, $17, $c9, $1d, $02, $00, $b9, $29, $95, $47, $de, $4e
    db $00, $00, $fe, $03, $09, $01, $3f, $0d, $42, $00, $ff, $0a, $ac, $0d, $33, $04
    db $00, $00, $ff, $7f, $00, $20, $33, $04, $00, $00, $0b, $4f, $fe, $7f, $00, $1c
    db $63, $00, $50, $3f, $ff, $7f, $ae, $05, $63, $00, $8d, $22, $f3, $5b, $b9, $29
    db $20, $00, $4d, $3f, $b9, $29, $be, $4a, $00, $00, $4d, $05, $95, $0e, $85, $00
    db $21, $00, $6d, $05, $ff, $13, $52, $0a, $00, $00, $ff, $7f, $00, $20, $52, $0a
    db $00, $20, $a9, $32, $21, $00, $50, $37, $84, $04, $10, $33, $ad, $05, $ea, $19
    db $21, $00, $f3, $53, $67, $11, $4d, $05, $03, $00, $3f, $0c, $09, $3b, $fd, $35
    db $00, $00, $8e, $05, $d6, $0d, $09, $05, $00, $00, $b6, $0e, $ff, $7f, $29, $01
    db $00, $00, $ff, $7f, $00, $20, $29, $01, $00, $00, $00, $20, $24, $11, $23, $00
    db $00, $00, $73, $02, $e5, $08, $6a, $09, $22, $00, $c8, $19, $94, $09, $25, $0d
    db $20, $00, $ed, $08, $1f, $00, $86, $04, $22, $00, $6f, $05, $94, $0e, $d7, $0d
    db $42, $00, $ff, $7f, $8d, $05, $94, $06, $00, $00, $00, $20, $8d, $05, $94, $06
    db $00, $00, $00, $20, $94, $09, $25, $0d, $00, $00, $f0, $09, $d7, $0a, $09, $01
    db $40, $00, $4e, $05, $e7, $00, $b6, $09, $20, $00, $52, $47, $8b, $19, $fa, $6b
    db $00, $00, $d3, $09, $2a, $01, $5b, $0f, $63, $00, $ff, $7f, $6b, $01, $73, $0a
    db $00, $00, $00, $20, $6b, $01, $73, $0a, $00, $00, $00, $20, $e7, $00, $b6, $09
    db $20, $00, $cf, $09, $29, $01, $18, $0f, $20, $00, $94, $09, $08, $01, $b7, $0d
    db $00, $00, $6e, $36, $28, $0d, $72, $53, $21, $00, $f0, $09, $9c, $13, $0e, $2e
    db $00, $00, $73, $0a, $ff, $7f, $4a, $05, $00, $20, $73, $0a, $ff, $7f, $4a, $05
    db $00, $20, $94, $09, $08, $01, $b7, $0d, $20, $00, $52, $06, $2a, $05, $5a, $0f
    db $41, $00, $d3, $09, $39, $13, $2b, $01, $01, $00, $27, $11, $8f, $05, $89, $11
    db $00, $00, $10, $0a, $29, $05, $5b, $0b, $00, $04, $18, $0f, $ad, $05, $ff, $7f
    db $00, $20, $18, $0f, $ad, $05, $ff, $7f, $00, $20, $d3, $09, $39, $13, $2b, $01
    db $00, $08, $73, $0a, $08, $01, $9d, $13, $20, $00, $31, $06, $5b, $13, $08, $05
    db $00, $00, $e7, $04, $52, $12, $29, $05, $20, $00, $10, $0a, $2a, $01, $d7, $0e
    db $22, $08, $39, $13, $ff, $7f, $ae, $05, $00, $20, $39, $13, $ff, $7f, $ae, $05
    db $00, $20, $31, $06, $5b, $13, $08, $05, $00, $00, $2a, $05, $95, $0e, $00, $20
    db $00, $00, $31, $12, $19, $17, $a5, $04, $00, $00, $ff, $7f, $ff, $7f, $ae, $05
    db $00, $00, $ff, $7f, $ff, $7f, $ae, $05, $00, $00, $ff, $7f, $00, $20, $ae, $05
    db $00, $20, $ff, $7f, $00, $20, $ae, $05, $00, $20, $31, $12, $19, $17, $a5, $04
    db $00, $00, $ff, $7f, $00, $20, $a5, $04, $00, $00, $ff, $7f, $00, $20, $a5, $04
    db $00, $00, $00, $20, $00, $20, $ae, $05, $00, $00, $00, $20, $00, $20, $ae, $05
    db $00, $00, $00, $20, $00, $20, $ae, $05, $00, $20, $00, $20, $00, $20, $ae, $05

    nop                                           ; $5881: $00
    jr nz, jr_0b2_5884                            ; $5882: $20 $00

jr_0b2_5884:
    jr nz, jr_0b2_5886                            ; $5884: $20 $00

jr_0b2_5886:
    jr nz, jr_0b2_58cd                            ; $5886: $20 $45

    ld [$2000], sp                                ; $5888: $08 $00 $20
    nop                                           ; $588b: $00
    jr nz, jr_0b2_588e                            ; $588c: $20 $00

jr_0b2_588e:
    jr nz, jr_0b2_58d5                            ; $588e: $20 $45

    ld [$0000], sp                                ; $5890: $08 $00 $00
    ld h, $00                                     ; $5893: $26 $00
    nop                                           ; $5895: $00
    jr nz, @+$74                                  ; $5896: $20 $72

    nop                                           ; $5898: $00
    nop                                           ; $5899: $00
    nop                                           ; $589a: $00
    ccf                                           ; $589b: $3f
    ld [hl], $ff                                  ; $589c: $36 $ff
    ld a, a                                       ; $589e: $7f
    nop                                           ; $589f: $00
    jr nz, jr_0b2_58a2                            ; $58a0: $20 $00

jr_0b2_58a2:
    nop                                           ; $58a2: $00
    or a                                          ; $58a3: $b7
    dec h                                         ; $58a4: $25
    sbc a                                         ; $58a5: $9f
    ld a, a                                       ; $58a6: $7f
    nop                                           ; $58a7: $00
    inc e                                         ; $58a8: $1c
    nop                                           ; $58a9: $00
    nop                                           ; $58aa: $00
    nop                                           ; $58ab: $00
    inc e                                         ; $58ac: $1c
    nop                                           ; $58ad: $00
    jr nz, jr_0b2_58b0                            ; $58ae: $20 $00

jr_0b2_58b0:
    inc e                                         ; $58b0: $1c
    nop                                           ; $58b1: $00
    jr nz, jr_0b2_58b4                            ; $58b2: $20 $00

jr_0b2_58b4:
    inc e                                         ; $58b4: $1c
    nop                                           ; $58b5: $00
    jr nz, jr_0b2_58b8                            ; $58b6: $20 $00

jr_0b2_58b8:
    inc e                                         ; $58b8: $1c
    nop                                           ; $58b9: $00
    jr nz, jr_0b2_58e2                            ; $58ba: $20 $26

    nop                                           ; $58bc: $00
    nop                                           ; $58bd: $00
    jr nz, @+$74                                  ; $58be: $20 $72

    nop                                           ; $58c0: $00
    nop                                           ; $58c1: $00
    nop                                           ; $58c2: $00
    nop                                           ; $58c3: $00
    jr nz, jr_0b2_58c6                            ; $58c4: $20 $00

jr_0b2_58c6:
    jr nz, jr_0b2_593a                            ; $58c6: $20 $72

    nop                                           ; $58c8: $00
    nop                                           ; $58c9: $00
    nop                                           ; $58ca: $00
    db $fd                                        ; $58cb: $fd
    nop                                           ; $58cc: $00

jr_0b2_58cd:
    ld l, e                                       ; $58cd: $6b
    nop                                           ; $58ce: $00
    nop                                           ; $58cf: $00
    jr nz, jr_0b2_58d5                            ; $58d0: $20 $03

    nop                                           ; $58d2: $00
    db $fd                                        ; $58d3: $fd
    dec h                                         ; $58d4: $25

jr_0b2_58d5:
    ld d, $0d                                     ; $58d5: $16 $0d
    rst $38                                       ; $58d7: $ff
    ld a, a                                       ; $58d8: $7f
    nop                                           ; $58d9: $00
    nop                                           ; $58da: $00
    db $eb                                        ; $58db: $eb
    ld b, b                                       ; $58dc: $40
    ld d, b                                       ; $58dd: $50
    ld l, l                                       ; $58de: $6d
    nop                                           ; $58df: $00
    inc e                                         ; $58e0: $1c

jr_0b2_58e1:
    nop                                           ; $58e1: $00

jr_0b2_58e2:
    nop                                           ; $58e2: $00
    push af                                       ; $58e3: $f5
    nop                                           ; $58e4: $00
    nop                                           ; $58e5: $00
    jr nz, jr_0b2_58e8                            ; $58e6: $20 $00

jr_0b2_58e8:
    inc e                                         ; $58e8: $1c
    nop                                           ; $58e9: $00
    jr nz, jr_0b2_58e1                            ; $58ea: $20 $f5

    nop                                           ; $58ec: $00
    nop                                           ; $58ed: $00
    jr nz, jr_0b2_58f0                            ; $58ee: $20 $00

jr_0b2_58f0:
    inc e                                         ; $58f0: $1c

jr_0b2_58f1:
    nop                                           ; $58f1: $00
    jr nz, jr_0b2_58f1                            ; $58f2: $20 $fd

    nop                                           ; $58f4: $00
    ld l, e                                       ; $58f5: $6b
    nop                                           ; $58f6: $00
    nop                                           ; $58f7: $00
    jr nz, jr_0b2_58fa                            ; $58f8: $20 $00

jr_0b2_58fa:
    ld [$0072], sp                                ; $58fa: $08 $72 $00
    cp c                                          ; $58fd: $b9
    nop                                           ; $58fe: $00
    ld a, $01                                     ; $58ff: $3e $01
    nop                                           ; $5901: $00
    nop                                           ; $5902: $00
    cp h                                          ; $5903: $bc
    nop                                           ; $5904: $00
    ld l, e                                       ; $5905: $6b
    nop                                           ; $5906: $00
    ld e, a                                       ; $5907: $5f
    ld bc, $0000                                  ; $5908: $01 $00 $00
    or e                                          ; $590b: $b3
    inc b                                         ; $590c: $04
    dec sp                                        ; $590d: $3b
    add hl, bc                                    ; $590e: $09
    add hl, hl                                    ; $590f: $29
    nop                                           ; $5910: $00
    nop                                           ; $5911: $00
    nop                                           ; $5912: $00
    dec c                                         ; $5913: $0d
    ld h, l                                       ; $5914: $65
    xor e                                         ; $5915: $ab
    stop                                          ; $5916: $10 $00
    jr nz, jr_0b2_591a                            ; $5918: $20 $00

jr_0b2_591a:
    nop                                           ; $591a: $00
    dec sp                                        ; $591b: $3b
    ld bc, $006a                                  ; $591c: $01 $6a $00
    nop                                           ; $591f: $00
    jr nz, jr_0b2_5922                            ; $5920: $20 $00

jr_0b2_5922:
    jr nz, jr_0b2_595f                            ; $5922: $20 $3b

    ld bc, $006a                                  ; $5924: $01 $6a $00
    nop                                           ; $5927: $00
    jr nz, jr_0b2_592a                            ; $5928: $20 $00

jr_0b2_592a:
    nop                                           ; $592a: $00
    nop                                           ; $592b: $00
    jr nz, jr_0b2_5999                            ; $592c: $20 $6b

    nop                                           ; $592e: $00
    ld e, a                                       ; $592f: $5f
    ld bc, $0000                                  ; $5930: $01 $00 $00
    or h                                          ; $5933: $b4
    nop                                           ; $5934: $00
    nop                                           ; $5935: $00
    jr jr_0b2_5938                                ; $5936: $18 $00

jr_0b2_5938:
    jr nz, jr_0b2_593a                            ; $5938: $20 $00

jr_0b2_593a:
    nop                                           ; $593a: $00
    ld [hl], d                                    ; $593b: $72
    nop                                           ; $593c: $00
    ld c, l                                       ; $593d: $4d
    nop                                           ; $593e: $00
    rst $18                                       ; $593f: $df
    nop                                           ; $5940: $00
    nop                                           ; $5941: $00
    nop                                           ; $5942: $00
    or d                                          ; $5943: $b2
    ld [$053c], sp                                ; $5944: $08 $3c $05
    add hl, hl                                    ; $5947: $29
    nop                                           ; $5948: $00
    ld [bc], a                                    ; $5949: $02
    nop                                           ; $594a: $00
    inc l                                         ; $594b: $2c
    ld e, l                                       ; $594c: $5d
    rst $38                                       ; $594d: $ff
    ld a, a                                       ; $594e: $7f
    sub [hl]                                      ; $594f: $96
    add hl, de                                    ; $5950: $19
    nop                                           ; $5951: $00
    nop                                           ; $5952: $00
    ld a, [hl]                                    ; $5953: $7e
    ld bc, $0027                                  ; $5954: $01 $27 $00
    nop                                           ; $5957: $00
    jr nz, jr_0b2_595a                            ; $5958: $20 $00

jr_0b2_595a:
    nop                                           ; $595a: $00
    nop                                           ; $595b: $00
    jr nz, @+$29                                  ; $595c: $20 $27

    nop                                           ; $595e: $00

jr_0b2_595f:
    nop                                           ; $595f: $00
    jr nz, jr_0b2_5962                            ; $5960: $20 $00

jr_0b2_5962:
    jr nz, jr_0b2_59d6                            ; $5962: $20 $72

    nop                                           ; $5964: $00
    ld c, l                                       ; $5965: $4d
    nop                                           ; $5966: $00
    rst $18                                       ; $5967: $df
    nop                                           ; $5968: $00
    nop                                           ; $5969: $00
    nop                                           ; $596a: $00
    sbc a                                         ; $596b: $9f
    ld bc, $2000                                  ; $596c: $01 $00 $20
    rst $18                                       ; $596f: $df
    nop                                           ; $5970: $00
    ld [bc], a                                    ; $5971: $02
    nop                                           ; $5972: $00
    sbc $00                                       ; $5973: $de $00
    sub d                                         ; $5975: $92
    nop                                           ; $5976: $00
    ld a, a                                       ; $5977: $7f
    ld bc, $0400                                  ; $5978: $01 $00 $04
    jr nc, @+$5f                                  ; $597b: $30 $5d

    jr jr_0b2_5980                                ; $597d: $18 $01

    add hl, hl                                    ; $597f: $29

jr_0b2_5980:
    nop                                           ; $5980: $00
    ld [bc], a                                    ; $5981: $02
    nop                                           ; $5982: $00
    pop de                                        ; $5983: $d1
    ld [$514d], sp                                ; $5984: $08 $4d $51
    ld a, h                                       ; $5987: $7c
    dec d                                         ; $5988: $15
    nop                                           ; $5989: $00
    nop                                           ; $598a: $00
    or e                                          ; $598b: $b3
    nop                                           ; $598c: $00
    ld l, e                                       ; $598d: $6b
    nop                                           ; $598e: $00
    inc e                                         ; $598f: $1c
    ld bc, $0000                                  ; $5990: $01 $00 $00
    adc a                                         ; $5993: $8f
    nop                                           ; $5994: $00
    nop                                           ; $5995: $00
    jr nz, @-$05                                  ; $5996: $20 $f9

    nop                                           ; $5998: $00

jr_0b2_5999:
    nop                                           ; $5999: $00
    jr nz, @-$20                                  ; $599a: $20 $de

    nop                                           ; $599c: $00
    sub d                                         ; $599d: $92
    nop                                           ; $599e: $00
    ld a, a                                       ; $599f: $7f
    ld bc, $0000                                  ; $59a0: $01 $00 $00
    ld [hl], h                                    ; $59a3: $74
    nop                                           ; $59a4: $00
    ccf                                           ; $59a5: $3f
    ld bc, $2000                                  ; $59a6: $01 $00 $20
    ld bc, $5100                                  ; $59a9: $01 $00 $51
    nop                                           ; $59ac: $00
    sbc l                                         ; $59ad: $9d
    nop                                           ; $59ae: $00
    ld a, [hl+]                                   ; $59af: $2a
    nop                                           ; $59b0: $00
    ld hl, $5f04                                  ; $59b1: $21 $04 $5f
    ld [de], a                                    ; $59b4: $12
    or $71                                        ; $59b5: $f6 $71
    ld a, [bc]                                    ; $59b7: $0a
    ld b, c                                       ; $59b8: $41
    nop                                           ; $59b9: $00
    nop                                           ; $59ba: $00
    dec de                                        ; $59bb: $1b
    inc de                                        ; $59bc: $13
    jr @+$75                                      ; $59bd: $18 $73

    ld a, b                                       ; $59bf: $78
    nop                                           ; $59c0: $00
    ld bc, $9600                                  ; $59c1: $01 $00 $96
    nop                                           ; $59c4: $00
    nop                                           ; $59c5: $00
    jr nz, jr_0b2_5a06                            ; $59c6: $20 $3e

jr_0b2_59c8:
    ld bc, $0000                                  ; $59c8: $01 $00 $00
    nop                                           ; $59cb: $00
    jr nz, jr_0b2_59ce                            ; $59cc: $20 $00

jr_0b2_59ce:
    jr nz, jr_0b2_5a0e                            ; $59ce: $20 $3e

    ld bc, $2000                                  ; $59d0: $01 $00 $20
    ld d, c                                       ; $59d3: $51
    nop                                           ; $59d4: $00
    sbc l                                         ; $59d5: $9d

jr_0b2_59d6:
    nop                                           ; $59d6: $00
    ld a, [hl+]                                   ; $59d7: $2a
    nop                                           ; $59d8: $00
    ld bc, $7000                                  ; $59d9: $01 $00 $70
    nop                                           ; $59dc: $00
    nop                                           ; $59dd: $00
    jr nz, jr_0b2_59fe                            ; $59de: $20 $1e

    ld bc, $0000                                  ; $59e0: $01 $00 $00
    cp h                                          ; $59e3: $bc
    nop                                           ; $59e4: $00
    and d                                         ; $59e5: $a2
    ld bc, $0049                                  ; $59e6: $01 $49 $00
    ld hl, $9f0c                                  ; $59e9: $21 $0c $9f
    ld bc, $65b2                                  ; $59ec: $01 $b2 $65
    dec a                                         ; $59ef: $3d
    ld a, a                                       ; $59f0: $7f
    ld bc, $d100                                  ; $59f1: $01 $00 $d1
    inc d                                         ; $59f4: $14
    ret c                                         ; $59f5: $d8

    ld a, [hl]                                    ; $59f6: $7e
    db $dd                                        ; $59f7: $dd
    ld [$0000], sp                                ; $59f8: $08 $00 $00
    rst $38                                       ; $59fb: $ff
    ld a, a                                       ; $59fc: $7f
    sub d                                         ; $59fd: $92

jr_0b2_59fe:
    nop                                           ; $59fe: $00
    nop                                           ; $59ff: $00
    jr nz, jr_0b2_5a02                            ; $5a00: $20 $00

jr_0b2_5a02:
    jr nz, @+$01                                  ; $5a02: $20 $ff

    ld a, a                                       ; $5a04: $7f
    sub d                                         ; $5a05: $92

jr_0b2_5a06:
    nop                                           ; $5a06: $00
    nop                                           ; $5a07: $00
    jr nz, jr_0b2_5a0a                            ; $5a08: $20 $00

jr_0b2_5a0a:
    jr nz, jr_0b2_59c8                            ; $5a0a: $20 $bc

    nop                                           ; $5a0c: $00
    and d                                         ; $5a0d: $a2

jr_0b2_5a0e:
    ld bc, $0049                                  ; $5a0e: $01 $49 $00
    nop                                           ; $5a11: $00
    ld [$00da], sp                                ; $5a12: $08 $da $00
    and d                                         ; $5a15: $a2
    ld bc, $004c                                  ; $5a16: $01 $4c $00
    ld bc, $7300                                  ; $5a19: $01 $00 $73
    nop                                           ; $5a1c: $00
    and d                                         ; $5a1d: $a2
    ld bc, $0256                                  ; $5a1e: $01 $56 $02
    inc hl                                        ; $5a21: $23
    nop                                           ; $5a22: $00
    sbc c                                         ; $5a23: $99
    halt                                          ; $5a24: $76
    db $ed                                        ; $5a25: $ed
    ld d, b                                       ; $5a26: $50
    ld sp, hl                                     ; $5a27: $f9
    nop                                           ; $5a28: $00
    ld bc, $5c00                                  ; $5a29: $01 $00 $5c
    rra                                           ; $5a2c: $1f
    dec sp                                        ; $5a2d: $3b
    ld [hl], a                                    ; $5a2e: $77
    ld l, l                                       ; $5a2f: $6d
    inc e                                         ; $5a30: $1c
    ld bc, $ff00                                  ; $5a31: $01 $00 $ff
    ld a, a                                       ; $5a34: $7f
    ld d, d                                       ; $5a35: $52
    nop                                           ; $5a36: $00
    ld a, a                                       ; $5a37: $7f
    ld bc, $0000                                  ; $5a38: $01 $00 $00
    nop                                           ; $5a3b: $00
    jr nz, jr_0b2_5a90                            ; $5a3c: $20 $52

    nop                                           ; $5a3e: $00
    ld a, a                                       ; $5a3f: $7f
    ld bc, $0000                                  ; $5a40: $01 $00 $00
    rst $38                                       ; $5a43: $ff
    ld a, a                                       ; $5a44: $7f
    nop                                           ; $5a45: $00
    jr nz, jr_0b2_5a9e                            ; $5a46: $20 $56

    ld [bc], a                                    ; $5a48: $02
    nop                                           ; $5a49: $00
    nop                                           ; $5a4a: $00
    rst $38                                       ; $5a4b: $ff
    ld a, a                                       ; $5a4c: $7f
    sbc c                                         ; $5a4d: $99
    nop                                           ; $5a4e: $00
    add d                                         ; $5a4f: $82
    ld bc, $0001                                  ; $5a50: $01 $01 $00
    sub d                                         ; $5a53: $92
    ld d, c                                       ; $5a54: $51
    sub h                                         ; $5a55: $94
    dec b                                         ; $5a56: $05
    ld a, a                                       ; $5a57: $7f
    dec b                                         ; $5a58: $05
    ld bc, $1a08                                  ; $5a59: $01 $08 $1a
    rla                                           ; $5a5c: $17
    ld sp, $ba1d                                  ; $5a5d: $31 $1d $ba
    ld a, d                                       ; $5a60: $7a
    ld bc, $bc00                                  ; $5a61: $01 $00 $bc
    nop                                           ; $5a64: $00
    ld c, h                                       ; $5a65: $4c
    inc d                                         ; $5a66: $14
    ld a, c                                       ; $5a67: $79
    ld hl, $0001                                  ; $5a68: $21 $01 $00
    ld e, a                                       ; $5a6b: $5f
    ld bc, $7fff                                  ; $5a6c: $01 $ff $7f
    add hl, bc                                    ; $5a6f: $09
    nop                                           ; $5a70: $00
    nop                                           ; $5a71: $00
    nop                                           ; $5a72: $00
    rst $38                                       ; $5a73: $ff
    ld a, a                                       ; $5a74: $7f
    nop                                           ; $5a75: $00
    jr nz, jr_0b2_5a81                            ; $5a76: $20 $09

    nop                                           ; $5a78: $00
    nop                                           ; $5a79: $00
    nop                                           ; $5a7a: $00
    rst $38                                       ; $5a7b: $ff
    ld a, a                                       ; $5a7c: $7f
    nop                                           ; $5a7d: $00
    jr nz, jr_0b2_5aff                            ; $5a7e: $20 $7f

    dec b                                         ; $5a80: $05

jr_0b2_5a81:
    nop                                           ; $5a81: $00
    nop                                           ; $5a82: $00
    ld [hl], c                                    ; $5a83: $71
    nop                                           ; $5a84: $00
    and e                                         ; $5a85: $a3
    dec b                                         ; $5a86: $05
    db $fd                                        ; $5a87: $fd
    nop                                           ; $5a88: $00
    nop                                           ; $5a89: $00
    nop                                           ; $5a8a: $00
    sub [hl]                                      ; $5a8b: $96
    dec e                                         ; $5a8c: $1d
    rst $38                                       ; $5a8d: $ff
    ld a, a                                       ; $5a8e: $7f
    ld c, d                                       ; $5a8f: $4a

jr_0b2_5a90:
    inc d                                         ; $5a90: $14
    ld [bc], a                                    ; $5a91: $02
    nop                                           ; $5a92: $00
    or a                                          ; $5a93: $b7
    ld a, [bc]                                    ; $5a94: $0a
    or h                                          ; $5a95: $b4
    ld [hl], c                                    ; $5a96: $71
    ld b, l                                       ; $5a97: $45
    jr nz, jr_0b2_5a9a                            ; $5a98: $20 $00

jr_0b2_5a9a:
    nop                                           ; $5a9a: $00
    dec de                                        ; $5a9b: $1b
    inc de                                        ; $5a9c: $13
    rst $38                                       ; $5a9d: $ff

jr_0b2_5a9e:
    ld d, a                                       ; $5a9e: $57
    adc b                                         ; $5a9f: $88
    nop                                           ; $5aa0: $00
    ld bc, $3900                                  ; $5aa1: $01 $00 $39
    ld bc, $002a                                  ; $5aa4: $01 $2a $00
    ld e, $01                                     ; $5aa7: $1e $01
    nop                                           ; $5aa9: $00
    nop                                           ; $5aaa: $00
    rst $38                                       ; $5aab: $ff
    ld a, a                                       ; $5aac: $7f
    nop                                           ; $5aad: $00
    jr nz, jr_0b2_5ace                            ; $5aae: $20 $1e

    ld bc, $0000                                  ; $5ab0: $01 $00 $00
    rst $38                                       ; $5ab3: $ff
    ld a, a                                       ; $5ab4: $7f
    call nz, Call_000_0009                        ; $5ab5: $c4 $09 $00
    jr nz, jr_0b2_5aba                            ; $5ab8: $20 $00

jr_0b2_5aba:
    nop                                           ; $5aba: $00
    sub h                                         ; $5abb: $94
    nop                                           ; $5abc: $00
    jp $bc05                                      ; $5abd: $c3 $05 $bc


    nop                                           ; $5ac0: $00
    ld bc, $1800                                  ; $5ac1: $01 $00 $18
    dec b                                         ; $5ac4: $05
    rst $38                                       ; $5ac5: $ff
    ld a, a                                       ; $5ac6: $7f
    ld a, h                                       ; $5ac7: $7c
    ld a, [bc]                                    ; $5ac8: $0a
    ld [bc], a                                    ; $5ac9: $02
    inc c                                         ; $5aca: $0c
    dec sp                                        ; $5acb: $3b
    ld b, $de                                     ; $5acc: $06 $de

jr_0b2_5ace:
    ld l, e                                       ; $5ace: $6b
    ld [hl], c                                    ; $5acf: $71
    nop                                           ; $5ad0: $00
    nop                                           ; $5ad1: $00
    nop                                           ; $5ad2: $00
    call nz, $8409                                ; $5ad3: $c4 $09 $84
    nop                                           ; $5ad6: $00
    ld l, b                                       ; $5ad7: $68
    nop                                           ; $5ad8: $00
    nop                                           ; $5ad9: $00
    nop                                           ; $5ada: $00
    cp b                                          ; $5adb: $b8
    nop                                           ; $5adc: $00
    call nz, Call_000_3f09                        ; $5add: $c4 $09 $3f
    ld bc, $1c00                                  ; $5ae0: $01 $00 $1c
    rra                                           ; $5ae3: $1f
    ld bc, $7fff                                  ; $5ae4: $01 $ff $7f
    call nz, Call_000_0009                        ; $5ae7: $c4 $09 $00
    nop                                           ; $5aea: $00
    rst $38                                       ; $5aeb: $ff
    ld a, a                                       ; $5aec: $7f
    call nz, $e409                                ; $5aed: $c4 $09 $e4
    add hl, bc                                    ; $5af0: $09
    nop                                           ; $5af1: $00
    nop                                           ; $5af2: $00
    call nz, Call_0b2_4c09                        ; $5af3: $c4 $09 $4c
    nop                                           ; $5af6: $00
    rst $18                                       ; $5af7: $df
    nop                                           ; $5af8: $00
    nop                                           ; $5af9: $00
    nop                                           ; $5afa: $00
    adc l                                         ; $5afb: $8d
    ld bc, $0a3c                                  ; $5afc: $01 $3c $0a

jr_0b2_5aff:
    dec bc                                        ; $5aff: $0b
    nop                                           ; $5b00: $00
    inc b                                         ; $5b01: $04
    nop                                           ; $5b02: $00
    call c, $ff01                                 ; $5b03: $dc $01 $ff
    ld a, a                                       ; $5b06: $7f
    ld [$2450], a                                 ; $5b07: $ea $50 $24
    nop                                           ; $5b0a: $00
    db $db                                        ; $5b0b: $db
    ld [bc], a                                    ; $5b0c: $02
    scf                                           ; $5b0d: $37
    ld a, [hl]                                    ; $5b0e: $7e
    db $e4                                        ; $5b0f: $e4
    add hl, bc                                    ; $5b10: $09
    nop                                           ; $5b11: $00
    nop                                           ; $5b12: $00
    db $e4                                        ; $5b13: $e4
    add hl, bc                                    ; $5b14: $09
    ld l, [hl]                                    ; $5b15: $6e
    nop                                           ; $5b16: $00
    ld e, $01                                     ; $5b17: $1e $01
    ld h, c                                       ; $5b19: $61
    nop                                           ; $5b1a: $00
    rst $38                                       ; $5b1b: $ff
    ld a, a                                       ; $5b1c: $7f
    cp b                                          ; $5b1d: $b8
    nop                                           ; $5b1e: $00
    nop                                           ; $5b1f: $00
    jr nz, jr_0b2_5b22                            ; $5b20: $20 $00

jr_0b2_5b22:
    nop                                           ; $5b22: $00
    rst $38                                       ; $5b23: $ff
    ld a, a                                       ; $5b24: $7f
    push hl                                       ; $5b25: $e5
    dec c                                         ; $5b26: $0d
    nop                                           ; $5b27: $00
    jr nz, jr_0b2_5b2a                            ; $5b28: $20 $00

jr_0b2_5b2a:
    nop                                           ; $5b2a: $00
    ld l, a                                       ; $5b2b: $6f
    nop                                           ; $5b2c: $00
    push hl                                       ; $5b2d: $e5
    dec c                                         ; $5b2e: $0d
    db $dd                                        ; $5b2f: $dd
    nop                                           ; $5b30: $00
    ld [bc], a                                    ; $5b31: $02
    nop                                           ; $5b32: $00
    and h                                         ; $5b33: $a4
    add hl, bc                                    ; $5b34: $09
    ld c, a                                       ; $5b35: $4f
    ld d, l                                       ; $5b36: $55
    sbc c                                         ; $5b37: $99
    nop                                           ; $5b38: $00
    inc b                                         ; $5b39: $04
    nop                                           ; $5b3a: $00
    ld a, $53                                     ; $5b3b: $3e $53
    ld a, b                                       ; $5b3d: $78
    nop                                           ; $5b3e: $00
    ld h, [hl]                                    ; $5b3f: $66
    inc a                                         ; $5b40: $3c
    inc hl                                        ; $5b41: $23
    nop                                           ; $5b42: $00
    inc e                                         ; $5b43: $1c
    ld [bc], a                                    ; $5b44: $02
    scf                                           ; $5b45: $37
    ld a, [hl]                                    ; $5b46: $7e
    push hl                                       ; $5b47: $e5
    dec c                                         ; $5b48: $0d
    nop                                           ; $5b49: $00
    nop                                           ; $5b4a: $00
    push hl                                       ; $5b4b: $e5
    dec c                                         ; $5b4c: $0d
    ld c, d                                       ; $5b4d: $4a
    nop                                           ; $5b4e: $00
    ld l, l                                       ; $5b4f: $6d
    nop                                           ; $5b50: $00
    nop                                           ; $5b51: $00
    nop                                           ; $5b52: $00
    rst $38                                       ; $5b53: $ff
    ld a, a                                       ; $5b54: $7f
    call Call_000_0004                            ; $5b55: $cd $04 $00
    jr nz, jr_0b2_5b5a                            ; $5b58: $20 $00

jr_0b2_5b5a:
    nop                                           ; $5b5a: $00
    rst $38                                       ; $5b5b: $ff
    ld a, a                                       ; $5b5c: $7f
    dec b                                         ; $5b5d: $05
    ld c, $00                                     ; $5b5e: $0e $00
    jr nz, jr_0b2_5b62                            ; $5b60: $20 $00

jr_0b2_5b62:
    nop                                           ; $5b62: $00
    push hl                                       ; $5b63: $e5
    dec c                                         ; $5b64: $0d
    ld b, $12                                     ; $5b65: $06 $12
    dec b                                         ; $5b67: $05
    ld c, $45                                     ; $5b68: $0e $45
    ld [$5a14], sp                                ; $5b6a: $08 $14 $5a
    dec e                                         ; $5b6d: $1d
    dec b                                         ; $5b6e: $05
    push hl                                       ; $5b6f: $e5
    dec c                                         ; $5b70: $0d
    dec h                                         ; $5b71: $25
    nop                                           ; $5b72: $00
    ld e, $4b                                     ; $5b73: $1e $4b
    ld [hl], d                                    ; $5b75: $72
    dec d                                         ; $5b76: $15
    sbc c                                         ; $5b77: $99
    nop                                           ; $5b78: $00
    ld bc, $b300                                  ; $5b79: $01 $00 $b3
    nop                                           ; $5b7c: $00
    ld e, $4b                                     ; $5b7d: $1e $4b
    and $11                                       ; $5b7f: $e6 $11
    nop                                           ; $5b81: $00
    nop                                           ; $5b82: $00
    ld b, $12                                     ; $5b83: $06 $12
    ld h, $00                                     ; $5b85: $26 $00
    ld c, c                                       ; $5b87: $49
    nop                                           ; $5b88: $00
    ld bc, $ff00                                  ; $5b89: $01 $00 $ff
    ld a, a                                       ; $5b8c: $7f
    nop                                           ; $5b8d: $00
    jr nz, @+$08                                  ; $5b8e: $20 $06

    ld [de], a                                    ; $5b90: $12
    nop                                           ; $5b91: $00
    nop                                           ; $5b92: $00
    rst $38                                       ; $5b93: $ff
    ld a, a                                       ; $5b94: $7f
    ld b, $12                                     ; $5b95: $06 $12
    nop                                           ; $5b97: $00
    jr nz, jr_0b2_5ba0                            ; $5b98: $20 $06

    ld [de], a                                    ; $5b9a: $12
    ld h, $12                                     ; $5b9b: $26 $12
    ld h, $16                                     ; $5b9d: $26 $16
    nop                                           ; $5b9f: $00

jr_0b2_5ba0:
    jr nz, jr_0b2_5be5                            ; $5ba0: $20 $43

    ld [$04f9], sp                                ; $5ba2: $08 $f9 $04
    inc [hl]                                      ; $5ba5: $34
    ld [hl], d                                    ; $5ba6: $72
    cp [hl]                                       ; $5ba7: $be
    ld b, a                                       ; $5ba8: $47
    inc h                                         ; $5ba9: $24
    nop                                           ; $5baa: $00
    adc a                                         ; $5bab: $8f
    dec e                                         ; $5bac: $1d
    ld e, $4b                                     ; $5bad: $1e $4b
    add hl, de                                    ; $5baf: $19
    dec c                                         ; $5bb0: $0d
    nop                                           ; $5bb1: $00
    nop                                           ; $5bb2: $00
    ld h, $12                                     ; $5bb3: $26 $12
    ld c, b                                       ; $5bb5: $48
    nop                                           ; $5bb6: $00
    ld l, a                                       ; $5bb7: $6f
    nop                                           ; $5bb8: $00
    nop                                           ; $5bb9: $00
    nop                                           ; $5bba: $00
    ld b, $12                                     ; $5bbb: $06 $12
    daa                                           ; $5bbd: $27
    ld d, $26                                     ; $5bbe: $16 $26
    ld d, $00                                     ; $5bc0: $16 $00
    nop                                           ; $5bc2: $00
    rst $38                                       ; $5bc3: $ff
    ld a, a                                       ; $5bc4: $7f
    ld h, $12                                     ; $5bc5: $26 $12
    nop                                           ; $5bc7: $00
    jr nz, jr_0b2_5bca                            ; $5bc8: $20 $00

jr_0b2_5bca:
    nop                                           ; $5bca: $00
    rst $38                                       ; $5bcb: $ff
    ld a, a                                       ; $5bcc: $7f
    daa                                           ; $5bcd: $27
    ld d, $00                                     ; $5bce: $16 $00
    jr nz, jr_0b2_5bd2                            ; $5bd0: $20 $00

jr_0b2_5bd2:
    nop                                           ; $5bd2: $00
    daa                                           ; $5bd3: $27
    ld d, $14                                     ; $5bd4: $16 $14
    ld b, $00                                     ; $5bd6: $06 $00
    jr nz, jr_0b2_5bdb                            ; $5bd8: $20 $01

    inc b                                         ; $5bda: $04

jr_0b2_5bdb:
    cp b                                          ; $5bdb: $b8
    ld a, [de]                                    ; $5bdc: $1a
    or c                                          ; $5bdd: $b1
    db $10                                        ; $5bde: $10
    sbc $5f                                       ; $5bdf: $de $5f
    ld bc, $5100                                  ; $5be1: $01 $00 $51
    ld b, c                                       ; $5be4: $41

jr_0b2_5be5:
    ld a, $6b                                     ; $5be5: $3e $6b
    add a                                         ; $5be7: $87
    inc e                                         ; $5be8: $1c
    nop                                           ; $5be9: $00
    nop                                           ; $5bea: $00
    daa                                           ; $5beb: $27
    ld d, $6a                                     ; $5bec: $16 $6a
    nop                                           ; $5bee: $00
    or c                                          ; $5bef: $b1
    nop                                           ; $5bf0: $00
    daa                                           ; $5bf1: $27
    ld d, $27                                     ; $5bf2: $16 $27
    ld d, $6a                                     ; $5bf4: $16 $6a
    nop                                           ; $5bf6: $00
    or c                                          ; $5bf7: $b1
    nop                                           ; $5bf8: $00
    nop                                           ; $5bf9: $00
    nop                                           ; $5bfa: $00
    rst $38                                       ; $5bfb: $ff
    ld a, a                                       ; $5bfc: $7f
    daa                                           ; $5bfd: $27
    ld d, $00                                     ; $5bfe: $16 $00
    jr nz, jr_0b2_5c02                            ; $5c00: $20 $00

jr_0b2_5c02:
    nop                                           ; $5c02: $00
    rst $38                                       ; $5c03: $ff
    ld a, a                                       ; $5c04: $7f
    daa                                           ; $5c05: $27
    ld d, $00                                     ; $5c06: $16 $00
    jr nz, jr_0b2_5c0a                            ; $5c08: $20 $00

jr_0b2_5c0a:
    nop                                           ; $5c0a: $00
    ld a, [hl]                                    ; $5c0b: $7e
    ld a, a                                       ; $5c0c: $7f
    xor c                                         ; $5c0d: $a9
    add hl, de                                    ; $5c0e: $19
    sbc c                                         ; $5c0f: $99
    ld b, $02                                     ; $5c10: $06 $02
    nop                                           ; $5c12: $00
    ld a, [$1422]                                 ; $5c13: $fa $22 $14
    add hl, bc                                    ; $5c16: $09
    rst $38                                       ; $5c17: $ff
    ld [hl], e                                    ; $5c18: $73
    ld b, a                                       ; $5c19: $47
    inc c                                         ; $5c1a: $0c
    ld [hl-], a                                   ; $5c1b: $32
    ld e, d                                       ; $5c1c: $5a
    or l                                          ; $5c1d: $b5
    nop                                           ; $5c1e: $00
    rst $38                                       ; $5c1f: $ff
    ld a, a                                       ; $5c20: $7f
    nop                                           ; $5c21: $00
    nop                                           ; $5c22: $00
    ld c, b                                       ; $5c23: $48
    ld a, [de]                                    ; $5c24: $1a
    ld b, b                                       ; $5c25: $40
    nop                                           ; $5c26: $00
    ld bc, $4800                                  ; $5c27: $01 $00 $48
    ld a, [de]                                    ; $5c2a: $1a
    ld c, b                                       ; $5c2b: $48
    ld a, [de]                                    ; $5c2c: $1a
    ld b, b                                       ; $5c2d: $40
    nop                                           ; $5c2e: $00
    ld bc, $0000                                  ; $5c2f: $01 $00 $00
    nop                                           ; $5c32: $00
    rst $38                                       ; $5c33: $ff
    ld a, a                                       ; $5c34: $7f
    ld c, b                                       ; $5c35: $48
    ld a, [de]                                    ; $5c36: $1a
    nop                                           ; $5c37: $00
    jr nz, jr_0b2_5c3a                            ; $5c38: $20 $00

jr_0b2_5c3a:
    nop                                           ; $5c3a: $00

Jump_0b2_5c3b:
    rst $38                                       ; $5c3b: $ff
    ld a, a                                       ; $5c3c: $7f
    ld c, b                                       ; $5c3d: $48
    ld a, [de]                                    ; $5c3e: $1a
    nop                                           ; $5c3f: $00
    jr nz, jr_0b2_5c42                            ; $5c40: $20 $00

jr_0b2_5c42:
    nop                                           ; $5c42: $00
    reti                                          ; $5c43: $d9


    halt                                          ; $5c44: $76

jr_0b2_5c45:
    adc b                                         ; $5c45: $88
    inc [hl]                                      ; $5c46: $34
    ld b, e                                       ; $5c47: $43
    inc c                                         ; $5c48: $0c
    ld bc, $5700                                  ; $5c49: $01 $00 $57
    ld a, [bc]                                    ; $5c4c: $0a
    rst $18                                       ; $5c4d: $df
    ld d, a                                       ; $5c4e: $57
    ld a, [hl+]                                   ; $5c4f: $2a
    dec c                                         ; $5c50: $0d
    nop                                           ; $5c51: $00
    nop                                           ; $5c52: $00
    ld [de], a                                    ; $5c53: $12
    ld a, [de]                                    ; $5c54: $1a
    xor b                                         ; $5c55: $a8
    inc b                                         ; $5c56: $04
    ld b, c                                       ; $5c57: $41
    jr z, jr_0b2_5c5a                             ; $5c58: $28 $00

jr_0b2_5c5a:
    nop                                           ; $5c5a: $00
    ld c, b                                       ; $5c5b: $48
    ld a, [de]                                    ; $5c5c: $1a
    rst $18                                       ; $5c5d: $df
    ld a, a                                       ; $5c5e: $7f
    daa                                           ; $5c5f: $27
    ld b, b                                       ; $5c60: $40
    ld c, b                                       ; $5c61: $48
    ld a, [de]                                    ; $5c62: $1a
    ld l, c                                       ; $5c63: $69
    ld e, $48                                     ; $5c64: $1e $48
    ld e, $27                                     ; $5c66: $1e $27
    ld b, b                                       ; $5c68: $40
    nop                                           ; $5c69: $00
    nop                                           ; $5c6a: $00
    rst $38                                       ; $5c6b: $ff
    ld a, a                                       ; $5c6c: $7f
    ld c, b                                       ; $5c6d: $48
    ld a, [de]                                    ; $5c6e: $1a
    nop                                           ; $5c6f: $00
    jr nz, jr_0b2_5c72                            ; $5c70: $20 $00

jr_0b2_5c72:
    nop                                           ; $5c72: $00
    ld l, $55                                     ; $5c73: $2e $55
    nop                                           ; $5c75: $00
    inc e                                         ; $5c76: $1c
    sub e                                         ; $5c77: $93
    ld l, l                                       ; $5c78: $6d
    nop                                           ; $5c79: $00
    nop                                           ; $5c7a: $00
    or c                                          ; $5c7b: $b1
    ld e, c                                       ; $5c7c: $59
    dec a                                         ; $5c7d: $3d
    ld a, a                                       ; $5c7e: $7f
    or c                                          ; $5c7f: $b1
    ld [$0043], sp                                ; $5c80: $08 $43 $00
    dec [hl]                                      ; $5c83: $35
    ld a, [bc]                                    ; $5c84: $0a
    rst $18                                       ; $5c85: $df
    ld e, e                                       ; $5c86: $5b
    inc a                                         ; $5c87: $3c
    rla                                           ; $5c88: $17
    nop                                           ; $5c89: $00
    nop                                           ; $5c8a: $00
    ld e, [hl]                                    ; $5c8b: $5e
    dec de                                        ; $5c8c: $1b
    rst $18                                       ; $5c8d: $df
    ld l, e                                       ; $5c8e: $6b
    inc d                                         ; $5c8f: $14
    ld c, $41                                     ; $5c90: $0e $41
    inc b                                         ; $5c92: $04
    ld c, [hl]                                    ; $5c93: $4e
    ld e, l                                       ; $5c94: $5d
    dec a                                         ; $5c95: $3d
    ld a, a                                       ; $5c96: $7f
    sbc l                                         ; $5c97: $9d
    dec sp                                        ; $5c98: $3b
    ld l, c                                       ; $5c99: $69
    ld e, $69                                     ; $5c9a: $1e $69
    ld [hl+], a                                   ; $5c9c: $22
    dec a                                         ; $5c9d: $3d
    ld a, a                                       ; $5c9e: $7f
    sbc l                                         ; $5c9f: $9d
    dec sp                                        ; $5ca0: $3b
    nop                                           ; $5ca1: $00
    nop                                           ; $5ca2: $00

jr_0b2_5ca3:
    rst $38                                       ; $5ca3: $ff
    ld a, a                                       ; $5ca4: $7f
    nop                                           ; $5ca5: $00
    jr nz, jr_0b2_5c45                            ; $5ca6: $20 $9d

    dec sp                                        ; $5ca8: $3b

jr_0b2_5ca9:
    nop                                           ; $5ca9: $00
    nop                                           ; $5caa: $00
    ld [hl], c                                    ; $5cab: $71
    ld h, c                                       ; $5cac: $61
    nop                                           ; $5cad: $00
    jr nz, jr_0b2_5cf4                            ; $5cae: $20 $44

    inc e                                         ; $5cb0: $1c
    nop                                           ; $5cb1: $00
    nop                                           ; $5cb2: $00
    or e                                          ; $5cb3: $b3
    ld l, c                                       ; $5cb4: $69
    ld l, c                                       ; $5cb5: $69
    inc l                                         ; $5cb6: $2c
    dec a                                         ; $5cb7: $3d
    ld a, e                                       ; $5cb8: $7b
    nop                                           ; $5cb9: $00
    nop                                           ; $5cba: $00
    ld a, b                                       ; $5cbb: $78
    dec c                                         ; $5cbc: $0d
    dec bc                                        ; $5cbd: $0b
    dec b                                         ; $5cbe: $05
    call c, $0002                                 ; $5cbf: $dc $02 $00
    nop                                           ; $5cc2: $00
    ld d, [hl]                                    ; $5cc3: $56
    ld [bc], a                                    ; $5cc4: $02
    inc e                                         ; $5cc5: $1c
    daa                                           ; $5cc6: $27
    ret z                                         ; $5cc7: $c8

    nop                                           ; $5cc8: $00
    ld hl, $2e08                                  ; $5cc9: $21 $08 $2e
    ld d, c                                       ; $5ccc: $51
    ld e, b                                       ; $5ccd: $58
    halt                                          ; $5cce: $76
    ld d, [hl]                                    ; $5ccf: $56
    ld a, [bc]                                    ; $5cd0: $0a
    nop                                           ; $5cd1: $00
    nop                                           ; $5cd2: $00
    ld l, d                                       ; $5cd3: $6a
    ld [hl+], a                                   ; $5cd4: $22
    adc d                                         ; $5cd5: $8a
    ld [hl+], a                                   ; $5cd6: $22
    ld d, [hl]                                    ; $5cd7: $56
    ld a, [bc]                                    ; $5cd8: $0a
    nop                                           ; $5cd9: $00
    nop                                           ; $5cda: $00
    rst $38                                       ; $5cdb: $ff
    ld a, a                                       ; $5cdc: $7f
    nop                                           ; $5cdd: $00
    jr nz, jr_0b2_5d36                            ; $5cde: $20 $56

    ld a, [bc]                                    ; $5ce0: $0a
    nop                                           ; $5ce1: $00
    nop                                           ; $5ce2: $00
    nop                                           ; $5ce3: $00
    jr nz, jr_0b2_5cf1                            ; $5ce4: $20 $0b

    dec b                                         ; $5ce6: $05
    call c, $0002                                 ; $5ce7: $dc $02 $00
    nop                                           ; $5cea: $00
    or e                                          ; $5ceb: $b3
    ld l, l                                       ; $5cec: $6d
    xor d                                         ; $5ced: $aa
    ld b, h                                       ; $5cee: $44
    ei                                            ; $5cef: $fb
    ld a, [hl]                                    ; $5cf0: $7e

jr_0b2_5cf1:
    nop                                           ; $5cf1: $00
    nop                                           ; $5cf2: $00
    push de                                       ; $5cf3: $d5

jr_0b2_5cf4:
    dec d                                         ; $5cf4: $15
    ld a, $3a                                     ; $5cf5: $3e $3a
    adc c                                         ; $5cf7: $89
    inc b                                         ; $5cf8: $04
    nop                                           ; $5cf9: $00
    inc b                                         ; $5cfa: $04
    ld l, d                                       ; $5cfb: $6a
    ld c, h                                       ; $5cfc: $4c
    ld c, l                                       ; $5cfd: $4d
    ld bc, $7e7a                                  ; $5cfe: $01 $7a $7e
    nop                                           ; $5d01: $00
    nop                                           ; $5d02: $00
    ld [hl], b                                    ; $5d03: $70
    ld d, l                                       ; $5d04: $55
    inc a                                         ; $5d05: $3c
    add hl, bc                                    ; $5d06: $09
    ld b, a                                       ; $5d07: $47
    inc d                                         ; $5d08: $14
    nop                                           ; $5d09: $00
    nop                                           ; $5d0a: $00
    adc d                                         ; $5d0b: $8a
    ld [hl+], a                                   ; $5d0c: $22
    rst $38                                       ; $5d0d: $ff
    ld a, a                                       ; $5d0e: $7f
    adc e                                         ; $5d0f: $8b
    ld h, $00                                     ; $5d10: $26 $00
    nop                                           ; $5d12: $00
    rst $38                                       ; $5d13: $ff
    ld a, a                                       ; $5d14: $7f
    nop                                           ; $5d15: $00
    jr nz, jr_0b2_5ca3                            ; $5d16: $20 $8b

    ld h, $00                                     ; $5d18: $26 $00
    nop                                           ; $5d1a: $00
    rst $38                                       ; $5d1b: $ff
    ld a, a                                       ; $5d1c: $7f
    nop                                           ; $5d1d: $00
    jr nz, jr_0b2_5ca9                            ; $5d1e: $20 $89

    inc b                                         ; $5d20: $04
    nop                                           ; $5d21: $00
    inc b                                         ; $5d22: $04
    sub d                                         ; $5d23: $92
    ld h, c                                       ; $5d24: $61
    rst $38                                       ; $5d25: $ff
    ld a, a                                       ; $5d26: $7f
    ret z                                         ; $5d27: $c8

    jr c, jr_0b2_5d2b                             ; $5d28: $38 $01

    nop                                           ; $5d2a: $00

jr_0b2_5d2b:
    ld d, $76                                     ; $5d2b: $16 $76
    ld e, $36                                     ; $5d2d: $1e $36
    jp nc, Jump_000_000c                          ; $5d2f: $d2 $0c $00

    ld [$71d5], sp                                ; $5d32: $08 $d5 $71
    inc e                                         ; $5d35: $1c

jr_0b2_5d36:
    ld a, a                                       ; $5d36: $7f
    daa                                           ; $5d37: $27
    inc [hl]                                      ; $5d38: $34
    ld [bc], a                                    ; $5d39: $02
    inc d                                         ; $5d3a: $14
    ld d, d                                       ; $5d3b: $52
    add hl, de                                    ; $5d3c: $19
    ld c, a                                       ; $5d3d: $4f
    ld h, l                                       ; $5d3e: $65
    ld e, $2e                                     ; $5d3f: $1e $2e
    ld bc, $4d00                                  ; $5d41: $01 $00 $4d
    ld b, l                                       ; $5d44: $45
    rst $38                                       ; $5d45: $ff
    ld a, a                                       ; $5d46: $7f
    adc e                                         ; $5d47: $8b

jr_0b2_5d48:
    ld h, $00                                     ; $5d48: $26 $00
    nop                                           ; $5d4a: $00
    nop                                           ; $5d4b: $00
    jr nz, @+$01                                  ; $5d4c: $20 $ff

    ld a, a                                       ; $5d4e: $7f
    adc e                                         ; $5d4f: $8b
    ld h, $00                                     ; $5d50: $26 $00
    nop                                           ; $5d52: $00
    nop                                           ; $5d53: $00
    jr nz, jr_0b2_5d74                            ; $5d54: $20 $1e

    ld [hl], $d2                                  ; $5d56: $36 $d2
    inc c                                         ; $5d58: $0c
    nop                                           ; $5d59: $00
    inc b                                         ; $5d5a: $04
    ld e, c                                       ; $5d5b: $59
    dec d                                         ; $5d5c: $15
    rst $38                                       ; $5d5d: $ff
    ld a, a                                       ; $5d5e: $7f
    ld h, a                                       ; $5d5f: $67
    jr c, jr_0b2_5d63                             ; $5d60: $38 $01

    nop                                           ; $5d62: $00

jr_0b2_5d63:
    inc c                                         ; $5d63: $0c
    ld b, l                                       ; $5d64: $45

jr_0b2_5d65:
    cp d                                          ; $5d65: $ba
    dec h                                         ; $5d66: $25
    or d                                          ; $5d67: $b2
    ld [hl], l                                    ; $5d68: $75
    nop                                           ; $5d69: $00
    nop                                           ; $5d6a: $00
    ld l, $59                                     ; $5d6b: $2e $59
    cp d                                          ; $5d6d: $ba
    ld a, [hl]                                    ; $5d6e: $7e
    dec b                                         ; $5d6f: $05
    inc l                                         ; $5d70: $2c
    ld bc, $b204                                  ; $5d71: $01 $04 $b2

jr_0b2_5d74:
    inc b                                         ; $5d74: $04
    ld h, a                                       ; $5d75: $67
    ld b, b                                       ; $5d76: $40
    ld a, [hl-]                                   ; $5d77: $3a
    ld de, $0000                                  ; $5d78: $11 $00 $00
    push af                                       ; $5d7b: $f5
    ld d, c                                       ; $5d7c: $51
    rst $18                                       ; $5d7d: $df
    ld a, a                                       ; $5d7e: $7f
    rst $28                                       ; $5d7f: $ef
    inc e                                         ; $5d80: $1c
    nop                                           ; $5d81: $00
    nop                                           ; $5d82: $00
    nop                                           ; $5d83: $00
    jr nz, jr_0b2_5d65                            ; $5d84: $20 $df

    ld a, a                                       ; $5d86: $7f
    rst $28                                       ; $5d87: $ef
    inc e                                         ; $5d88: $1c
    nop                                           ; $5d89: $00
    nop                                           ; $5d8a: $00
    nop                                           ; $5d8b: $00

jr_0b2_5d8c:
    jr nz, jr_0b2_5d48                            ; $5d8c: $20 $ba

    dec h                                         ; $5d8e: $25
    or d                                          ; $5d8f: $b2
    ld [hl], l                                    ; $5d90: $75
    nop                                           ; $5d91: $00
    inc b                                         ; $5d92: $04
    rst $38                                       ; $5d93: $ff
    ld a, a                                       ; $5d94: $7f
    call nc, $280c                                ; $5d95: $d4 $0c $28
    nop                                           ; $5d98: $00
    nop                                           ; $5d99: $00
    nop                                           ; $5d9a: $00
    dec l                                         ; $5d9b: $2d
    ld e, c                                       ; $5d9c: $59
    ld b, e                                       ; $5d9d: $43
    inc h                                         ; $5d9e: $24
    inc hl                                        ; $5d9f: $23
    inc c                                         ; $5da0: $0c
    nop                                           ; $5da1: $00
    nop                                           ; $5da2: $00
    dec bc                                        ; $5da3: $0b
    ld b, c                                       ; $5da4: $41
    inc hl                                        ; $5da5: $23
    inc d                                         ; $5da6: $14
    pop de                                        ; $5da7: $d1
    ld e, c                                       ; $5da8: $59
    nop                                           ; $5da9: $00
    nop                                           ; $5daa: $00
    ld l, c                                       ; $5dab: $69

jr_0b2_5dac:
    inc c                                         ; $5dac: $0c
    push de                                       ; $5dad: $d5
    ld [$2804], sp                                ; $5dae: $08 $04 $28
    nop                                           ; $5db1: $00
    nop                                           ; $5db2: $00
    ret nc                                        ; $5db3: $d0

    ld d, l                                       ; $5db4: $55
    rst $18                                       ; $5db5: $df
    ld a, a                                       ; $5db6: $7f
    adc [hl]                                      ; $5db7: $8e
    inc b                                         ; $5db8: $04
    nop                                           ; $5db9: $00
    jr nz, jr_0b2_5d8c                            ; $5dba: $20 $d0

    ld d, l                                       ; $5dbc: $55
    rst $18                                       ; $5dbd: $df
    ld a, a                                       ; $5dbe: $7f
    adc [hl]                                      ; $5dbf: $8e
    inc b                                         ; $5dc0: $04
    nop                                           ; $5dc1: $00
    jr nz, @+$2f                                  ; $5dc2: $20 $2d

    ld e, c                                       ; $5dc4: $59

jr_0b2_5dc5:
    ld b, e                                       ; $5dc5: $43
    inc h                                         ; $5dc6: $24
    inc hl                                        ; $5dc7: $23
    inc c                                         ; $5dc8: $0c
    nop                                           ; $5dc9: $00
    nop                                           ; $5dca: $00
    rst $38                                       ; $5dcb: $ff
    ld a, a                                       ; $5dcc: $7f
    ld l, h                                       ; $5dcd: $6c
    nop                                           ; $5dce: $00
    rst $30                                       ; $5dcf: $f7
    inc c                                         ; $5dd0: $0c
    nop                                           ; $5dd1: $00
    inc b                                         ; $5dd2: $04
    or b                                          ; $5dd3: $b0
    nop                                           ; $5dd4: $00
    ld c, b                                       ; $5dd5: $48
    inc b                                         ; $5dd6: $04
    rla                                           ; $5dd7: $17
    ld de, $0000                                  ; $5dd8: $11 $00 $00
    cpl                                           ; $5ddb: $2f
    ld e, c                                       ; $5ddc: $59
    ld e, c                                       ; $5ddd: $59
    ld a, d                                       ; $5dde: $7a
    dec h                                         ; $5ddf: $25
    inc l                                         ; $5de0: $2c
    ld bc, $f200                                  ; $5de1: $01 $00 $f2
    ld e, l                                       ; $5de4: $5d
    call nc, $bf04                                ; $5de5: $d4 $04 $bf
    ld a, a                                       ; $5de8: $7f
    nop                                           ; $5de9: $00
    nop                                           ; $5dea: $00
    pop de                                        ; $5deb: $d1
    ld d, c                                       ; $5dec: $51
    sbc [hl]                                      ; $5ded: $9e
    ld a, a                                       ; $5dee: $7f
    ld b, d                                       ; $5def: $42
    jr nz, jr_0b2_5df2                            ; $5df0: $20 $00

jr_0b2_5df2:
    jr nz, jr_0b2_5dc5                            ; $5df2: $20 $d1

    ld d, c                                       ; $5df4: $51
    sbc [hl]                                      ; $5df5: $9e
    ld a, a                                       ; $5df6: $7f
    ld b, d                                       ; $5df7: $42
    jr nz, jr_0b2_5dfa                            ; $5df8: $20 $00

jr_0b2_5dfa:
    jr nz, jr_0b2_5dac                            ; $5dfa: $20 $b0

    nop                                           ; $5dfc: $00
    ld c, b                                       ; $5dfd: $48
    inc b                                         ; $5dfe: $04
    rla                                           ; $5dff: $17
    ld de, $0400                                  ; $5e00: $11 $00 $04
    rst $38                                       ; $5e03: $ff
    ld a, a                                       ; $5e04: $7f
    ld l, [hl]                                    ; $5e05: $6e
    inc b                                         ; $5e06: $04
    scf                                           ; $5e07: $37
    add hl, de                                    ; $5e08: $19
    nop                                           ; $5e09: $00
    nop                                           ; $5e0a: $00
    or d                                          ; $5e0b: $b2
    inc b                                         ; $5e0c: $04
    sbc b                                         ; $5e0d: $98
    dec h                                         ; $5e0e: $25
    ld c, d                                       ; $5e0f: $4a
    nop                                           ; $5e10: $00
    ld [bc], a                                    ; $5e11: $02
    db $10                                        ; $5e12: $10
    call nc, $996d                                ; $5e13: $d4 $6d $99
    ld a, d                                       ; $5e16: $7a
    adc c                                         ; $5e17: $89
    jr c, jr_0b2_5e1a                             ; $5e18: $38 $00

jr_0b2_5e1a:
    nop                                           ; $5e1a: $00
    sub b                                         ; $5e1b: $90
    dec a                                         ; $5e1c: $3d
    sbc $25                                       ; $5e1d: $de $25
    xor l                                         ; $5e1f: $ad
    inc b                                         ; $5e20: $04
    nop                                           ; $5e21: $00
    ld [$554f], sp                                ; $5e22: $08 $4f $55
    cp [hl]                                       ; $5e25: $be
    ld a, a                                       ; $5e26: $7f
    ld [hl], $72                                  ; $5e27: $36 $72
    nop                                           ; $5e29: $00
    jr nz, jr_0b2_5e7b                            ; $5e2a: $20 $4f

    ld d, l                                       ; $5e2c: $55
    cp [hl]                                       ; $5e2d: $be
    ld a, a                                       ; $5e2e: $7f
    ld [hl], $72                                  ; $5e2f: $36 $72
    nop                                           ; $5e31: $00
    jr nz, @-$4c                                  ; $5e32: $20 $b2

    inc b                                         ; $5e34: $04
    sbc b                                         ; $5e35: $98
    dec h                                         ; $5e36: $25
    ld c, d                                       ; $5e37: $4a
    nop                                           ; $5e38: $00
    nop                                           ; $5e39: $00
    nop                                           ; $5e3a: $00
    rst $38                                       ; $5e3b: $ff
    ld a, a                                       ; $5e3c: $7f
    ldh a, [rNR10]                                ; $5e3d: $f0 $10
    nop                                           ; $5e3f: $00
    jr nz, jr_0b2_5e42                            ; $5e40: $20 $00

jr_0b2_5e42:
    nop                                           ; $5e42: $00
    inc de                                        ; $5e43: $13
    ld de, $2df8                                  ; $5e44: $11 $f8 $2d
    ld b, l                                       ; $5e47: $45
    ld [$0000], sp                                ; $5e48: $08 $00 $00
    rst $38                                       ; $5e4b: $ff
    ld a, a                                       ; $5e4c: $7f
    cp [hl]                                       ; $5e4d: $be
    ld a, a                                       ; $5e4e: $7f
    ld [hl], $72                                  ; $5e4f: $36 $72
    nop                                           ; $5e51: $00
    nop                                           ; $5e52: $00
    rst $38                                       ; $5e53: $ff
    ld a, a                                       ; $5e54: $7f
    cp [hl]                                       ; $5e55: $be
    ld a, a                                       ; $5e56: $7f
    ld [hl], $72                                  ; $5e57: $36 $72
    nop                                           ; $5e59: $00
    nop                                           ; $5e5a: $00
    rst $38                                       ; $5e5b: $ff
    ld a, a                                       ; $5e5c: $7f
    nop                                           ; $5e5d: $00
    jr nz, jr_0b2_5e96                            ; $5e5e: $20 $36

    ld [hl], d                                    ; $5e60: $72
    nop                                           ; $5e61: $00
    jr nz, @+$01                                  ; $5e62: $20 $ff

    ld a, a                                       ; $5e64: $7f
    nop                                           ; $5e65: $00
    jr nz, jr_0b2_5e9e                            ; $5e66: $20 $36

    ld [hl], d                                    ; $5e68: $72
    nop                                           ; $5e69: $00
    jr nz, @+$15                                  ; $5e6a: $20 $13

    ld de, $2df8                                  ; $5e6c: $11 $f8 $2d
    ld b, l                                       ; $5e6f: $45
    ld [$0000], sp                                ; $5e70: $08 $00 $00
    rst $38                                       ; $5e73: $ff
    ld a, a                                       ; $5e74: $7f
    nop                                           ; $5e75: $00
    jr nz, jr_0b2_5ebd                            ; $5e76: $20 $45

    ld [$0000], sp                                ; $5e78: $08 $00 $00

jr_0b2_5e7b:
    rst $38                                       ; $5e7b: $ff
    ld a, a                                       ; $5e7c: $7f
    nop                                           ; $5e7d: $00
    jr nz, jr_0b2_5ec5                            ; $5e7e: $20 $45

    ld [$0000], sp                                ; $5e80: $08 $00 $00
    nop                                           ; $5e83: $00
    jr nz, jr_0b2_5e86                            ; $5e84: $20 $00

jr_0b2_5e86:
    jr nz, jr_0b2_5ebe                            ; $5e86: $20 $36

    ld [hl], d                                    ; $5e88: $72
    nop                                           ; $5e89: $00
    nop                                           ; $5e8a: $00
    nop                                           ; $5e8b: $00
    jr nz, jr_0b2_5e8e                            ; $5e8c: $20 $00

jr_0b2_5e8e:
    jr nz, jr_0b2_5ec6                            ; $5e8e: $20 $36

    ld [hl], d                                    ; $5e90: $72
    nop                                           ; $5e91: $00
    nop                                           ; $5e92: $00
    nop                                           ; $5e93: $00
    jr nz, jr_0b2_5e96                            ; $5e94: $20 $00

jr_0b2_5e96:
    jr nz, jr_0b2_5ece                            ; $5e96: $20 $36

    ld [hl], d                                    ; $5e98: $72
    nop                                           ; $5e99: $00
    jr nz, jr_0b2_5e9c                            ; $5e9a: $20 $00

jr_0b2_5e9c:
    jr nz, jr_0b2_5e9e                            ; $5e9c: $20 $00

jr_0b2_5e9e:
    jr nz, jr_0b2_5ed6                            ; $5e9e: $20 $36

    ld [hl], d                                    ; $5ea0: $72
    nop                                           ; $5ea1: $00
    jr nz, jr_0b2_5ea4                            ; $5ea2: $20 $00

jr_0b2_5ea4:
    jr nz, jr_0b2_5eea                            ; $5ea4: $20 $44

    db $10                                        ; $5ea6: $10
    xor [hl]                                      ; $5ea7: $ae
    ld e, l                                       ; $5ea8: $5d
    nop                                           ; $5ea9: $00
    jr nz, jr_0b2_5eac                            ; $5eaa: $20 $00

jr_0b2_5eac:
    jr nz, jr_0b2_5ef2                            ; $5eac: $20 $44

    db $10                                        ; $5eae: $10
    xor [hl]                                      ; $5eaf: $ae
    ld e, l                                       ; $5eb0: $5d
    nop                                           ; $5eb1: $00
    jr nz, jr_0b2_5eb4                            ; $5eb2: $20 $00

jr_0b2_5eb4:
    jr nz, jr_0b2_5efa                            ; $5eb4: $20 $44

    db $10                                        ; $5eb6: $10
    xor [hl]                                      ; $5eb7: $ae
    ld e, l                                       ; $5eb8: $5d
    nop                                           ; $5eb9: $00
    nop                                           ; $5eba: $00
    rst $38                                       ; $5ebb: $ff
    ld a, a                                       ; $5ebc: $7f

jr_0b2_5ebd:
    nop                                           ; $5ebd: $00

jr_0b2_5ebe:
    jr nz, jr_0b2_5ec0                            ; $5ebe: $20 $00

jr_0b2_5ec0:
    jr nz, jr_0b2_5ec2                            ; $5ec0: $20 $00

jr_0b2_5ec2:
    nop                                           ; $5ec2: $00
    rst $38                                       ; $5ec3: $ff
    ld a, a                                       ; $5ec4: $7f

jr_0b2_5ec5:
    nop                                           ; $5ec5: $00

jr_0b2_5ec6:
    jr nz, jr_0b2_5ec8                            ; $5ec6: $20 $00

jr_0b2_5ec8:
    jr nz, jr_0b2_5eca                            ; $5ec8: $20 $00

jr_0b2_5eca:
    jr nz, @+$01                                  ; $5eca: $20 $ff

    ld a, a                                       ; $5ecc: $7f
    nop                                           ; $5ecd: $00

jr_0b2_5ece:
    jr nz, jr_0b2_5ed0                            ; $5ece: $20 $00

jr_0b2_5ed0:
    jr nz, jr_0b2_5ed2                            ; $5ed0: $20 $00

jr_0b2_5ed2:
    jr nz, @+$01                                  ; $5ed2: $20 $ff

    ld a, a                                       ; $5ed4: $7f
    nop                                           ; $5ed5: $00

jr_0b2_5ed6:
    jr nz, jr_0b2_5ed8                            ; $5ed6: $20 $00

jr_0b2_5ed8:
    jr nz, jr_0b2_5eda                            ; $5ed8: $20 $00

jr_0b2_5eda:
    jr nz, jr_0b2_5edc                            ; $5eda: $20 $00

jr_0b2_5edc:
    jr nz, jr_0b2_5f22                            ; $5edc: $20 $44

    db $10                                        ; $5ede: $10
    xor [hl]                                      ; $5edf: $ae
    ld e, l                                       ; $5ee0: $5d
    nop                                           ; $5ee1: $00
    jr nz, jr_0b2_5ee4                            ; $5ee2: $20 $00

jr_0b2_5ee4:
    jr nz, jr_0b2_5f2a                            ; $5ee4: $20 $44

    db $10                                        ; $5ee6: $10
    xor [hl]                                      ; $5ee7: $ae
    ld e, l                                       ; $5ee8: $5d
    nop                                           ; $5ee9: $00

jr_0b2_5eea:
    nop                                           ; $5eea: $00
    nop                                           ; $5eeb: $00
    jr nz, jr_0b2_5f32                            ; $5eec: $20 $44

    db $10                                        ; $5eee: $10
    xor [hl]                                      ; $5eef: $ae
    ld e, l                                       ; $5ef0: $5d
    nop                                           ; $5ef1: $00

jr_0b2_5ef2:
    nop                                           ; $5ef2: $00
    rst $38                                       ; $5ef3: $ff
    ld a, a                                       ; $5ef4: $7f
    nop                                           ; $5ef5: $00
    jr nz, jr_0b2_5ef8                            ; $5ef6: $20 $00

jr_0b2_5ef8:
    jr nz, jr_0b2_5efa                            ; $5ef8: $20 $00

jr_0b2_5efa:
    nop                                           ; $5efa: $00
    ret c                                         ; $5efb: $d8

    ld a, a                                       ; $5efc: $7f
    ld [hl-], a                                   ; $5efd: $32

jr_0b2_5efe:
    ld e, b                                       ; $5efe: $58
    nop                                           ; $5eff: $00

Call_0b2_5f00:
    inc e                                         ; $5f00: $1c
    nop                                           ; $5f01: $00
    jr nz, jr_0b2_5edc                            ; $5f02: $20 $d8

    ld a, a                                       ; $5f04: $7f
    ld [hl-], a                                   ; $5f05: $32
    ld e, b                                       ; $5f06: $58
    nop                                           ; $5f07: $00
    inc e                                         ; $5f08: $1c
    nop                                           ; $5f09: $00
    jr nz, jr_0b2_5ee4                            ; $5f0a: $20 $d8

    ld a, a                                       ; $5f0c: $7f
    ld [hl-], a                                   ; $5f0d: $32
    ld e, b                                       ; $5f0e: $58
    nop                                           ; $5f0f: $00
    inc e                                         ; $5f10: $1c
    nop                                           ; $5f11: $00
    jr nz, jr_0b2_5f14                            ; $5f12: $20 $00

jr_0b2_5f14:
    jr nz, jr_0b2_5f5a                            ; $5f14: $20 $44

jr_0b2_5f16:
    db $10                                        ; $5f16: $10
    xor [hl]                                      ; $5f17: $ae
    ld e, l                                       ; $5f18: $5d
    nop                                           ; $5f19: $00
    nop                                           ; $5f1a: $00
    nop                                           ; $5f1b: $00
    jr nz, jr_0b2_5f23                            ; $5f1c: $20 $05

jr_0b2_5f1e:
    inc e                                         ; $5f1e: $1c
    xor [hl]                                      ; $5f1f: $ae
    ld e, l                                       ; $5f20: $5d
    nop                                           ; $5f21: $00

jr_0b2_5f22:
    nop                                           ; $5f22: $00

jr_0b2_5f23:
    or d                                          ; $5f23: $b2
    ld e, [hl]                                    ; $5f24: $5e
    db $fd                                        ; $5f25: $fd
    ld a, a                                       ; $5f26: $7f
    inc b                                         ; $5f27: $04
    jr jr_0b2_5f2a                                ; $5f28: $18 $00

jr_0b2_5f2a:
    nop                                           ; $5f2a: $00
    ld [hl], $35                                  ; $5f2b: $36 $35
    rst $38                                       ; $5f2d: $ff
    ld a, a                                       ; $5f2e: $7f
    nop                                           ; $5f2f: $00
    inc e                                         ; $5f30: $1c
    nop                                           ; $5f31: $00

jr_0b2_5f32:
    inc d                                         ; $5f32: $14
    jp c, $207f                                   ; $5f33: $da $7f $20

    ld a, h                                       ; $5f36: $7c
    ld [hl-], a                                   ; $5f37: $32
    ld e, b                                       ; $5f38: $58
    nop                                           ; $5f39: $00
    jr nz, jr_0b2_5f16                            ; $5f3a: $20 $da

    ld a, a                                       ; $5f3c: $7f
    jr nz, jr_0b2_5fbb                            ; $5f3d: $20 $7c

    ld [hl-], a                                   ; $5f3f: $32
    ld e, b                                       ; $5f40: $58
    nop                                           ; $5f41: $00
    jr nz, jr_0b2_5f1e                            ; $5f42: $20 $da

    ld a, a                                       ; $5f44: $7f
    jr nz, jr_0b2_5fc3                            ; $5f45: $20 $7c

    ld [hl-], a                                   ; $5f47: $32
    ld e, b                                       ; $5f48: $58
    nop                                           ; $5f49: $00

jr_0b2_5f4a:
    jr nz, jr_0b2_5efe                            ; $5f4a: $20 $b2

    ld e, [hl]                                    ; $5f4c: $5e
    db $fd                                        ; $5f4d: $fd
    ld a, a                                       ; $5f4e: $7f
    inc b                                         ; $5f4f: $04
    jr jr_0b2_5f52                                ; $5f50: $18 $00

jr_0b2_5f52:
    nop                                           ; $5f52: $00
    rst $28                                       ; $5f53: $ef
    ld d, l                                       ; $5f54: $55
    ld d, a                                       ; $5f55: $57
    ld a, a                                       ; $5f56: $7f
    ld bc, $051c                                  ; $5f57: $01 $1c $05

jr_0b2_5f5a:
    inc e                                         ; $5f5a: $1c
    db $d3                                        ; $5f5b: $d3
    ld l, d                                       ; $5f5c: $6a
    rst $28                                       ; $5f5d: $ef
    ld d, c                                       ; $5f5e: $51
    sbc c                                         ; $5f5f: $99
    ld a, a                                       ; $5f60: $7f
    nop                                           ; $5f61: $00
    nop                                           ; $5f62: $00
    ld [hl], $35                                  ; $5f63: $36 $35
    dec b                                         ; $5f65: $05
    inc e                                         ; $5f66: $1c
    ld [hl-], a                                   ; $5f67: $32
    ld e, b                                       ; $5f68: $58
    nop                                           ; $5f69: $00
    nop                                           ; $5f6a: $00
    sub $7f                                       ; $5f6b: $d6 $7f
    jr nz, @+$7e                                  ; $5f6d: $20 $7c

    nop                                           ; $5f6f: $00
    jr nz, jr_0b2_5f72                            ; $5f70: $20 $00

jr_0b2_5f72:
    jr nz, jr_0b2_5f4a                            ; $5f72: $20 $d6

    ld a, a                                       ; $5f74: $7f
    jr nz, jr_0b2_5ff3                            ; $5f75: $20 $7c

    nop                                           ; $5f77: $00
    jr nz, jr_0b2_5f7a                            ; $5f78: $20 $00

jr_0b2_5f7a:
    jr nz, jr_0b2_5f52                            ; $5f7a: $20 $d6

    ld a, a                                       ; $5f7c: $7f
    jr nz, jr_0b2_5ffb                            ; $5f7d: $20 $7c

    nop                                           ; $5f7f: $00
    jr nz, jr_0b2_5f82                            ; $5f80: $20 $00

jr_0b2_5f82:
    nop                                           ; $5f82: $00
    nop                                           ; $5f83: $00
    jr nz, jr_0b2_5f8b                            ; $5f84: $20 $05

    inc e                                         ; $5f86: $1c
    sbc c                                         ; $5f87: $99
    ld a, a                                       ; $5f88: $7f
    nop                                           ; $5f89: $00
    nop                                           ; $5f8a: $00

jr_0b2_5f8b:
    xor a                                         ; $5f8b: $af
    ld c, l                                       ; $5f8c: $4d
    ld [hl-], a                                   ; $5f8d: $32
    ld [hl], e                                    ; $5f8e: $73
    inc bc                                        ; $5f8f: $03
    inc e                                         ; $5f90: $1c
    nop                                           ; $5f91: $00
    nop                                           ; $5f92: $00
    ld l, e                                       ; $5f93: $6b
    ld b, l                                       ; $5f94: $45
    xor [hl]                                      ; $5f95: $ae
    ld h, [hl]                                    ; $5f96: $66
    ld l, d                                       ; $5f97: $6a
    nop                                           ; $5f98: $00
    ld [bc], a                                    ; $5f99: $02
    nop                                           ; $5f9a: $00
    ld [hl-], a                                   ; $5f9b: $32
    ld e, b                                       ; $5f9c: $58
    ld [hl-], a                                   ; $5f9d: $32
    ld a, [bc]                                    ; $5f9e: $0a
    and e                                         ; $5f9f: $a3
    dec b                                         ; $5fa0: $05
    nop                                           ; $5fa1: $00
    inc b                                         ; $5fa2: $04
    db $db                                        ; $5fa3: $db
    ld a, a                                       ; $5fa4: $7f
    jr nz, jr_0b2_6023                            ; $5fa5: $20 $7c

    or h                                          ; $5fa7: $b4
    ld b, h                                       ; $5fa8: $44
    nop                                           ; $5fa9: $00
    nop                                           ; $5faa: $00
    nop                                           ; $5fab: $00
    jr nz, jr_0b2_5fce                            ; $5fac: $20 $20

    ld a, h                                       ; $5fae: $7c

jr_0b2_5faf:
    or h                                          ; $5faf: $b4
    ld b, h                                       ; $5fb0: $44
    nop                                           ; $5fb1: $00
    jr nz, jr_0b2_5fb4                            ; $5fb2: $20 $00

jr_0b2_5fb4:
    jr nz, jr_0b2_5fd6                            ; $5fb4: $20 $20

    ld a, h                                       ; $5fb6: $7c
    or h                                          ; $5fb7: $b4
    ld b, h                                       ; $5fb8: $44
    nop                                           ; $5fb9: $00
    nop                                           ; $5fba: $00

jr_0b2_5fbb:
    xor c                                         ; $5fbb: $a9
    ld b, c                                       ; $5fbc: $41
    or $7f                                        ; $5fbd: $f6 $7f
    inc bc                                        ; $5fbf: $03
    jr jr_0b2_5fc2                                ; $5fc0: $18 $00

jr_0b2_5fc2:
    nop                                           ; $5fc2: $00

jr_0b2_5fc3:
    ld c, $5a                                     ; $5fc3: $0e $5a
    sbc b                                         ; $5fc5: $98
    ld [hl], a                                    ; $5fc6: $77
    dec b                                         ; $5fc7: $05
    inc e                                         ; $5fc8: $1c
    nop                                           ; $5fc9: $00
    nop                                           ; $5fca: $00
    or d                                          ; $5fcb: $b2
    ld h, [hl]                                    ; $5fcc: $66
    cp e                                          ; $5fcd: $bb

jr_0b2_5fce:
    ld a, e                                       ; $5fce: $7b
    ld b, l                                       ; $5fcf: $45
    nop                                           ; $5fd0: $00
    ld h, d                                       ; $5fd1: $62
    nop                                           ; $5fd2: $00
    inc l                                         ; $5fd3: $2c
    ld h, h                                       ; $5fd4: $64
    or e                                          ; $5fd5: $b3

jr_0b2_5fd6:
    add hl, bc                                    ; $5fd6: $09
    jp nc, $007f                                  ; $5fd7: $d2 $7f $00

    nop                                           ; $5fda: $00
    rst $38                                       ; $5fdb: $ff
    ld a, a                                       ; $5fdc: $7f
    add hl, hl                                    ; $5fdd: $29
    ld l, b                                       ; $5fde: $68
    sub d                                         ; $5fdf: $92
    dec l                                         ; $5fe0: $2d
    nop                                           ; $5fe1: $00
    nop                                           ; $5fe2: $00
    rst $38                                       ; $5fe3: $ff
    ld a, a                                       ; $5fe4: $7f
    nop                                           ; $5fe5: $00
    jr nz, jr_0b2_5fec                            ; $5fe6: $20 $04

    stop                                          ; $5fe8: $10 $00
    jr nz, @+$01                                  ; $5fea: $20 $ff

jr_0b2_5fec:
    ld a, a                                       ; $5fec: $7f
    nop                                           ; $5fed: $00
    jr nz, jr_0b2_5ff4                            ; $5fee: $20 $04

    stop                                          ; $5ff0: $10 $00
    nop                                           ; $5ff2: $00

jr_0b2_5ff3:
    rst $38                                       ; $5ff3: $ff

jr_0b2_5ff4:
    ld a, a                                       ; $5ff4: $7f
    nop                                           ; $5ff5: $00
    jr nz, jr_0b2_5ffc                            ; $5ff6: $20 $04

    jr jr_0b2_5ffc                                ; $5ff8: $18 $02

    inc c                                         ; $5ffa: $0c

jr_0b2_5ffb:
    dec l                                         ; $5ffb: $2d

jr_0b2_5ffc:
    ld e, d                                       ; $5ffc: $5a
    ld d, l                                       ; $5ffd: $55
    ld [hl], e                                    ; $5ffe: $73
    ld a, [hl+]                                   ; $5fff: $2a
    ld b, c                                       ; $6000: $41
    ld [hl+], a                                   ; $6001: $22
    nop                                           ; $6002: $00
    ld c, [hl]                                    ; $6003: $4e
    ld d, d                                       ; $6004: $52
    ld e, e                                       ; $6005: $5b
    ld h, e                                       ; $6006: $63
    ld a, [hl-]                                   ; $6007: $3a
    ld a, [hl-]                                   ; $6008: $3a
    ld h, d                                       ; $6009: $62
    nop                                           ; $600a: $00
    ld h, $70                                     ; $600b: $26 $70
    sub h                                         ; $600d: $94
    dec c                                         ; $600e: $0d
    jp nc, $007f                                  ; $600f: $d2 $7f $00

    nop                                           ; $6012: $00
    jr nz, jr_0b2_6091                            ; $6013: $20 $7c

    dec b                                         ; $6015: $05
    rrca                                          ; $6016: $0f
    push af                                       ; $6017: $f5
    jr c, jr_0b2_601a                             ; $6018: $38 $00

jr_0b2_601a:
    nop                                           ; $601a: $00
    db $fd                                        ; $601b: $fd
    ld a, a                                       ; $601c: $7f
    adc c                                         ; $601d: $89
    dec [hl]                                      ; $601e: $35
    ld [hl], $35                                  ; $601f: $36 $35
    nop                                           ; $6021: $00
    nop                                           ; $6022: $00

jr_0b2_6023:
    nop                                           ; $6023: $00
    jr nz, jr_0b2_5faf                            ; $6024: $20 $89

    dec [hl]                                      ; $6026: $35
    ld [hl], $35                                  ; $6027: $36 $35
    nop                                           ; $6029: $00
    nop                                           ; $602a: $00
    cp h                                          ; $602b: $bc
    ld a, a                                       ; $602c: $7f
    nop                                           ; $602d: $00
    jr nz, jr_0b2_6035                            ; $602e: $20 $05

    inc e                                         ; $6030: $1c
    inc bc                                        ; $6031: $03
    inc c                                         ; $6032: $0c
    xor [hl]                                      ; $6033: $ae
    ld l, d                                       ; $6034: $6a

jr_0b2_6035:
    add hl, hl                                    ; $6035: $29
    dec a                                         ; $6036: $3d
    ld [hl], l                                    ; $6037: $75
    ld [hl], a                                    ; $6038: $77
    ld b, h                                       ; $6039: $44
    inc b                                         ; $603a: $04
    ld a, [hl-]                                   ; $603b: $3a
    ld a, [hl-]                                   ; $603c: $3a
    ld d, d                                       ; $603d: $52
    ld a, a                                       ; $603e: $7f
    ld e, [hl]                                    ; $603f: $5e
    ld e, a                                       ; $6040: $5f
    ld b, e                                       ; $6041: $43
    nop                                           ; $6042: $00
    sub $7f                                       ; $6043: $d6 $7f
    inc l                                         ; $6045: $2c
    ld h, h                                       ; $6046: $64
    ld d, [hl]                                    ; $6047: $56
    ld de, $0000                                  ; $6048: $11 $00 $00
    dec h                                         ; $604b: $25
    rrca                                          ; $604c: $0f
    ld l, c                                       ; $604d: $69
    ld c, $41                                     ; $604e: $0e $41
    ld bc, $0401                                  ; $6050: $01 $01 $04
    ld [hl], $35                                  ; $6053: $36 $35
    ld d, d                                       ; $6055: $52
    ld l, d                                       ; $6056: $6a
    rst $10                                       ; $6057: $d7
    ld a, e                                       ; $6058: $7b
    nop                                           ; $6059: $00
    nop                                           ; $605a: $00
    nop                                           ; $605b: $00
    jr nz, jr_0b2_60b0                            ; $605c: $20 $52

    ld l, d                                       ; $605e: $6a
    rst $10                                       ; $605f: $d7
    ld a, e                                       ; $6060: $7b
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00
    ld a, c                                       ; $6063: $79
    ld [hl], a                                    ; $6064: $77
    rst $28                                       ; $6065: $ef
    ld c, h                                       ; $6066: $4c
    inc bc                                        ; $6067: $03
    inc e                                         ; $6068: $1c
    ld [hl+], a                                   ; $6069: $22
    nop                                           ; $606a: $00
    ld c, [hl]                                    ; $606b: $4e
    ld e, [hl]                                    ; $606c: $5e
    sbc e                                         ; $606d: $9b
    ld l, a                                       ; $606e: $6f
    push hl                                       ; $606f: $e5
    jr nz, jr_0b2_60b5                            ; $6070: $20 $43

    nop                                           ; $6072: $00
    ld a, [hl-]                                   ; $6073: $3a
    ld a, [hl-]                                   ; $6074: $3a
    ld a, [hl]                                    ; $6075: $7e
    ld h, e                                       ; $6076: $63
    rst $28                                       ; $6077: $ef
    nop                                           ; $6078: $00
    ld b, d                                       ; $6079: $42
    nop                                           ; $607a: $00
    add hl, hl                                    ; $607b: $29
    ld l, b                                       ; $607c: $68
    ret c                                         ; $607d: $d8

    ld a, a                                       ; $607e: $7f
    ld d, a                                       ; $607f: $57
    add hl, bc                                    ; $6080: $09
    jr nz, jr_0b2_6083                            ; $6081: $20 $00

jr_0b2_6083:
    ld [hl], d                                    ; $6083: $72
    inc b                                         ; $6084: $04
    inc c                                         ; $6085: $0c
    ld d, d                                       ; $6086: $52
    or d                                          ; $6087: $b2
    ld c, $04                                     ; $6088: $0e $04
    db $10                                        ; $608a: $10
    ld d, $77                                     ; $608b: $16 $77
    xor $44                                       ; $608d: $ee $44
    cp $7f                                        ; $608f: $fe $7f

jr_0b2_6091:
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    rst $38                                       ; $6093: $ff
    ld a, a                                       ; $6094: $7f
    nop                                           ; $6095: $00

jr_0b2_6096:
    jr nz, jr_0b2_6096                            ; $6096: $20 $fe

    ld a, a                                       ; $6098: $7f
    nop                                           ; $6099: $00
    nop                                           ; $609a: $00
    ld [hl], c                                    ; $609b: $71
    ld a, a                                       ; $609c: $7f
    ld [bc], a                                    ; $609d: $02
    inc e                                         ; $609e: $1c
    ld b, [hl]                                    ; $609f: $46
    ld sp, $0421                                  ; $60a0: $31 $21 $04
    sub c                                         ; $60a3: $91
    ld e, [hl]                                    ; $60a4: $5e
    sbc [hl]                                      ; $60a5: $9e
    ld h, a                                       ; $60a6: $67
    ld a, [hl-]                                   ; $60a7: $3a
    ld a, [hl-]                                   ; $60a8: $3a
    nop                                           ; $60a9: $00
    nop                                           ; $60aa: $00
    ld a, [hl-]                                   ; $60ab: $3a
    ld a, [hl-]                                   ; $60ac: $3a
    ld e, $57                                     ; $60ad: $1e $57
    ld h, l                                       ; $60af: $65

jr_0b2_60b0:
    nop                                           ; $60b0: $00
    inc h                                         ; $60b1: $24
    nop                                           ; $60b2: $00
    inc h                                         ; $60b3: $24
    ld [hl], b                                    ; $60b4: $70

jr_0b2_60b5:
    jp nc, $be7f                                  ; $60b5: $d2 $7f $be

    add hl, bc                                    ; $60b8: $09
    ld b, c                                       ; $60b9: $41
    nop                                           ; $60ba: $00
    scf                                           ; $60bb: $37
    inc de                                        ; $60bc: $13
    ld l, c                                       ; $60bd: $69
    ld bc, $08b4                                  ; $60be: $01 $b4 $08
    nop                                           ; $60c1: $00
    nop                                           ; $60c2: $00
    ld e, e                                       ; $60c3: $5b
    ld [hl], a                                    ; $60c4: $77
    ld l, l                                       ; $60c5: $6d
    dec a                                         ; $60c6: $3d
    inc b                                         ; $60c7: $04
    inc c                                         ; $60c8: $0c
    nop                                           ; $60c9: $00
    nop                                           ; $60ca: $00
    rst $38                                       ; $60cb: $ff
    ld a, a                                       ; $60cc: $7f
    ld [hl], $35                                  ; $60cd: $36 $35
    nop                                           ; $60cf: $00
    jr nz, jr_0b2_60d2                            ; $60d0: $20 $00

jr_0b2_60d2:
    nop                                           ; $60d2: $00
    dec hl                                        ; $60d3: $2b
    ld c, [hl]                                    ; $60d4: $4e
    inc hl                                        ; $60d5: $23
    inc e                                         ; $60d6: $1c
    call nc, $227f                                ; $60d7: $d4 $7f $22
    nop                                           ; $60da: $00
    ld a, [hl-]                                   ; $60db: $3a
    ld a, [hl-]                                   ; $60dc: $3a
    ld c, h                                       ; $60dd: $4c
    dec h                                         ; $60de: $25
    db $fd                                        ; $60df: $fd
    ld a, a                                       ; $60e0: $7f
    nop                                           ; $60e1: $00
    nop                                           ; $60e2: $00
    ld c, d                                       ; $60e3: $4a
    ld c, c                                       ; $60e4: $49
    ld c, l                                       ; $60e5: $4d
    ld h, d                                       ; $60e6: $62
    ld h, l                                       ; $60e7: $65
    nop                                           ; $60e8: $00
    ld bc, $2004                                  ; $60e9: $01 $04 $20
    ld a, h                                       ; $60ec: $7c
    sub $7f                                       ; $60ed: $d6 $7f
    adc $50                                       ; $60ef: $ce $50
    ld [bc], a                                    ; $60f1: $02
    nop                                           ; $60f2: $00
    ld l, h                                       ; $60f3: $6c
    ld a, [bc]                                    ; $60f4: $0a
    ld h, c                                       ; $60f5: $61
    ld bc, $3e5a                                  ; $60f6: $01 $5a $3e
    inc bc                                        ; $60f9: $03
    inc b                                         ; $60fa: $04
    dec l                                         ; $60fb: $2d
    ld e, [hl]                                    ; $60fc: $5e
    ld sp, hl                                     ; $60fd: $f9
    ld a, a                                       ; $60fe: $7f
    ld [hl], $35                                  ; $60ff: $36 $35
    nop                                           ; $6101: $00
    nop                                           ; $6102: $00
    ld [hl], $31                                  ; $6103: $36 $31
    rst $38                                       ; $6105: $ff
    ld a, a                                       ; $6106: $7f
    nop                                           ; $6107: $00

jr_0b2_6108:
    jr nz, jr_0b2_610a                            ; $6108: $20 $00

jr_0b2_610a:
    nop                                           ; $610a: $00
    rst $08                                       ; $610b: $cf
    ld h, [hl]                                    ; $610c: $66
    inc b                                         ; $610d: $04
    jr jr_0b2_6108                                ; $610e: $18 $f8

    ld a, a                                       ; $6110: $7f
    ld [hl+], a                                   ; $6111: $22
    nop                                           ; $6112: $00
    push af                                       ; $6113: $f5
    ld l, d                                       ; $6114: $6a
    ld l, [hl]                                    ; $6115: $6e
    dec h                                         ; $6116: $25
    cp e                                          ; $6117: $bb
    ld a, a                                       ; $6118: $7f
    inc bc                                        ; $6119: $03
    inc d                                         ; $611a: $14
    ld c, e                                       ; $611b: $4b
    ld b, l                                       ; $611c: $45
    rst $28                                       ; $611d: $ef
    ld l, [hl]                                    ; $611e: $6e
    inc l                                         ; $611f: $2c
    ld d, [hl]                                    ; $6120: $56
    nop                                           ; $6121: $00
    inc b                                         ; $6122: $04
    jr nz, jr_0b2_61a1                            ; $6123: $20 $7c

    inc [hl]                                      ; $6125: $34
    ld l, a                                       ; $6126: $6f
    ld [hl-], a                                   ; $6127: $32
    ld e, b                                       ; $6128: $58
    ld b, d                                       ; $6129: $42
    inc b                                         ; $612a: $04
    xor l                                         ; $612b: $ad
    ld d, c                                       ; $612c: $51
    ld a, a                                       ; $612d: $7f
    ld l, a                                       ; $612e: $6f
    sub [hl]                                      ; $612f: $96
    ld a, [bc]                                    ; $6130: $0a
    ld bc, $d604                                  ; $6131: $01 $04 $d6
    ld l, d                                       ; $6134: $6a
    jp hl                                         ; $6135: $e9


    ld b, b                                       ; $6136: $40
    rst $38                                       ; $6137: $ff
    ld a, a                                       ; $6138: $7f
    nop                                           ; $6139: $00
    nop                                           ; $613a: $00
    dec d                                         ; $613b: $15
    ld sp, $7fff                                  ; $613c: $31 $ff $7f
    nop                                           ; $613f: $00
    jr nz, jr_0b2_6145                            ; $6140: $20 $03

    db $10                                        ; $6142: $10
    ld [hl-], a                                   ; $6143: $32
    ld e, [hl]                                    ; $6144: $5e

jr_0b2_6145:
    rst $38                                       ; $6145: $ff
    ld a, a                                       ; $6146: $7f
    jp hl                                         ; $6147: $e9


    jr nc, jr_0b2_616c                            ; $6148: $30 $22

    nop                                           ; $614a: $00
    dec c                                         ; $614b: $0d
    ld e, d                                       ; $614c: $5a
    call c, Call_0b2_4e7f                         ; $614d: $dc $7f $4e
    ld hl, $1824                                  ; $6150: $21 $24 $18
    db $eb                                        ; $6153: $eb
    ld d, c                                       ; $6154: $51
    or b                                          ; $6155: $b0
    ld e, [hl]                                    ; $6156: $5e
    db $d3                                        ; $6157: $d3
    ld a, a                                       ; $6158: $7f
    ld [hl+], a                                   ; $6159: $22
    db $10                                        ; $615a: $10
    ld c, a                                       ; $615b: $4f
    ld d, [hl]                                    ; $615c: $56
    jr nz, jr_0b2_61db                            ; $615d: $20 $7c

    ld [hl], c                                    ; $615f: $71
    ld a, e                                       ; $6160: $7b
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    dec a                                         ; $6163: $3d
    ld e, a                                       ; $6164: $5f
    adc c                                         ; $6165: $89
    ld h, c                                       ; $6166: $61
    rst $00                                       ; $6167: $c7
    jr z, jr_0b2_618b                             ; $6168: $28 $21

    inc b                                         ; $616a: $04
    or d                                          ; $616b: $b2

jr_0b2_616c:
    ld d, c                                       ; $616c: $51
    ld a, d                                       ; $616d: $7a
    ld [hl], a                                    ; $616e: $77
    ret z                                         ; $616f: $c8

    inc [hl]                                      ; $6170: $34
    nop                                           ; $6171: $00
    nop                                           ; $6172: $00
    push af                                       ; $6173: $f5
    inc l                                         ; $6174: $2c
    rst $38                                       ; $6175: $ff
    ld a, a                                       ; $6176: $7f
    nop                                           ; $6177: $00
    jr nz, jr_0b2_617d                            ; $6178: $20 $03

    inc c                                         ; $617a: $0c
    xor a                                         ; $617b: $af
    ld h, [hl]                                    ; $617c: $66

jr_0b2_617d:
    db $fc                                        ; $617d: $fc
    ld a, a                                       ; $617e: $7f
    sub [hl]                                      ; $617f: $96
    ld h, [hl]                                    ; $6180: $66
    xor c                                         ; $6181: $a9
    ld b, l                                       ; $6182: $45
    adc [hl]                                      ; $6183: $8e
    ld l, d                                       ; $6184: $6a
    sub a                                         ; $6185: $97
    ld a, e                                       ; $6186: $7b
    db $ec                                        ; $6187: $ec
    inc [hl]                                      ; $6188: $34
    nop                                           ; $6189: $00
    inc b                                         ; $618a: $04

jr_0b2_618b:
    srl l                                         ; $618b: $cb $3d
    inc [hl]                                      ; $618d: $34
    ld l, e                                       ; $618e: $6b
    ld b, [hl]                                    ; $618f: $46
    jr nz, jr_0b2_61b5                            ; $6190: $20 $23

    inc e                                         ; $6192: $1c
    xor h                                         ; $6193: $ac
    ld d, c                                       ; $6194: $51
    sub h                                         ; $6195: $94
    ld a, e                                       ; $6196: $7b
    or b                                          ; $6197: $b0
    ld h, [hl]                                    ; $6198: $66
    nop                                           ; $6199: $00
    nop                                           ; $619a: $00
    di                                            ; $619b: $f3
    dec h                                         ; $619c: $25
    ld e, $57                                     ; $619d: $1e $57
    ld c, e                                       ; $619f: $4b
    dec b                                         ; $61a0: $05

jr_0b2_61a1:
    ld hl, $6f04                                  ; $61a1: $21 $04 $6f
    ld d, c                                       ; $61a4: $51
    ld [hl], d                                    ; $61a5: $72
    ld a, e                                       ; $61a6: $7b
    ld c, c                                       ; $61a7: $49

jr_0b2_61a8:
    inc [hl]                                      ; $61a8: $34
    nop                                           ; $61a9: $00
    nop                                           ; $61aa: $00
    call nc, $ff28                                ; $61ab: $d4 $28 $ff
    ld a, a                                       ; $61ae: $7f
    nop                                           ; $61af: $00
    jr nz, jr_0b2_61b2                            ; $61b0: $20 $00

jr_0b2_61b2:
    nop                                           ; $61b2: $00
    ld l, [hl]                                    ; $61b3: $6e
    ld l, d                                       ; $61b4: $6a

jr_0b2_61b5:
    dec de                                        ; $61b5: $1b
    ld [hl], a                                    ; $61b6: $77
    inc b                                         ; $61b7: $04
    jr jr_0b2_61df                                ; $61b8: $18 $25

    inc e                                         ; $61ba: $1c
    ld l, [hl]                                    ; $61bb: $6e
    ld h, [hl]                                    ; $61bc: $66
    adc c                                         ; $61bd: $89
    ld b, l                                       ; $61be: $45
    sub e                                         ; $61bf: $93
    ld a, a                                       ; $61c0: $7f
    nop                                           ; $61c1: $00
    nop                                           ; $61c2: $00
    dec c                                         ; $61c3: $0d
    ld c, d                                       ; $61c4: $4a
    ld h, l                                       ; $61c5: $65
    jr nz, jr_0b2_61df                            ; $61c6: $20 $17

    ld [hl], a                                    ; $61c8: $77
    adc d                                         ; $61c9: $8a
    ld b, l                                       ; $61ca: $45
    db $f4                                        ; $61cb: $f4
    ld [hl], d                                    ; $61cc: $72
    sub d                                         ; $61cd: $92
    ld h, d                                       ; $61ce: $62
    jp c, $007f                                   ; $61cf: $da $7f $00

    nop                                           ; $61d2: $00
    ld sp, $bd06                                  ; $61d3: $31 $06 $bd
    rlca                                          ; $61d6: $07
    ld c, e                                       ; $61d7: $4b
    dec b                                         ; $61d8: $05
    nop                                           ; $61d9: $00
    nop                                           ; $61da: $00

jr_0b2_61db:
    ld b, $02                                     ; $61db: $06 $02
    sub b                                         ; $61dd: $90
    ld h, [hl]                                    ; $61de: $66

jr_0b2_61df:
    dec c                                         ; $61df: $0d
    dec bc                                        ; $61e0: $0b
    nop                                           ; $61e1: $00
    nop                                           ; $61e2: $00
    rst $38                                       ; $61e3: $ff
    ld a, a                                       ; $61e4: $7f
    db $d3                                        ; $61e5: $d3
    inc h                                         ; $61e6: $24
    nop                                           ; $61e7: $00
    jr nz, jr_0b2_61ea                            ; $61e8: $20 $00

jr_0b2_61ea:
    nop                                           ; $61ea: $00
    nop                                           ; $61eb: $00
    jr nz, @+$07                                  ; $61ec: $20 $05

    inc e                                         ; $61ee: $1c
    rla                                           ; $61ef: $17
    ld [hl], a                                    ; $61f0: $77
    inc b                                         ; $61f1: $04
    jr @+$70                                      ; $61f2: $18 $6e

    ld l, d                                       ; $61f4: $6a
    xor e                                         ; $61f5: $ab
    ld c, l                                       ; $61f6: $4d
    db $db                                        ; $61f7: $db
    ld a, a                                       ; $61f8: $7f
    ld bc, $4b08                                  ; $61f9: $01 $08 $4b
    ld b, l                                       ; $61fc: $45
    ld [hl], b                                    ; $61fd: $70
    ld e, [hl]                                    ; $61fe: $5e
    cp d                                          ; $61ff: $ba
    ld a, a                                       ; $6200: $7f
    nop                                           ; $6201: $00
    nop                                           ; $6202: $00
    cpl                                           ; $6203: $2f
    ld e, d                                       ; $6204: $5a
    sub [hl]                                      ; $6205: $96
    ld a, e                                       ; $6206: $7b
    add a                                         ; $6207: $87
    jr nc, jr_0b2_620a                            ; $6208: $30 $00

jr_0b2_620a:
    nop                                           ; $620a: $00
    sbc h                                         ; $620b: $9c
    dec bc                                        ; $620c: $0b
    ld a, [$6b7f]                                 ; $620d: $fa $7f $6b
    dec d                                         ; $6210: $15
    ld h, b                                       ; $6211: $60
    nop                                           ; $6212: $00
    add hl, bc                                    ; $6213: $09
    ld [bc], a                                    ; $6214: $02
    or e                                          ; $6215: $b3
    jr nz, jr_0b2_61a8                            ; $6216: $20 $90

    ld a, [bc]                                    ; $6218: $0a
    inc bc                                        ; $6219: $03
    inc c                                         ; $621a: $0c
    or e                                          ; $621b: $b3
    jr nz, jr_0b2_621e                            ; $621c: $20 $00

jr_0b2_621e:
    jr nz, @-$49                                  ; $621e: $20 $b5

    ld d, [hl]                                    ; $6220: $56
    nop                                           ; $6221: $00
    nop                                           ; $6222: $00
    rlca                                          ; $6223: $07
    ld sp, $1c05                                  ; $6224: $31 $05 $1c
    ld d, c                                       ; $6227: $51
    ld e, d                                       ; $6228: $5a
    dec b                                         ; $6229: $05
    inc e                                         ; $622a: $1c
    or h                                          ; $622b: $b4
    ld l, d                                       ; $622c: $6a
    adc h                                         ; $622d: $8c
    ld c, l                                       ; $622e: $4d
    db $db                                        ; $622f: $db
    ld a, a                                       ; $6230: $7f
    ld [bc], a                                    ; $6231: $02
    inc c                                         ; $6232: $0c
    adc h                                         ; $6233: $8c
    ld c, l                                       ; $6234: $4d
    cp h                                          ; $6235: $bc
    ld a, a                                       ; $6236: $7f
    ld d, c                                       ; $6237: $51
    ld h, [hl]                                    ; $6238: $66
    inc b                                         ; $6239: $04
    inc d                                         ; $623a: $14
    ld [hl], c                                    ; $623b: $71
    ld l, [hl]                                    ; $623c: $6e
    ld b, a                                       ; $623d: $47
    dec [hl]                                      ; $623e: $35
    sub h                                         ; $623f: $94
    ld [hl], a                                    ; $6240: $77
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    jp nc, $8800                                  ; $6243: $d2 $00 $88

    nop                                           ; $6246: $00
    ld a, e                                       ; $6247: $7b
    dec c                                         ; $6248: $0d
    and c                                         ; $6249: $a1
    nop                                           ; $624a: $00

jr_0b2_624b:
    sub d                                         ; $624b: $92
    jr nz, jr_0b2_6298                            ; $624c: $20 $4a

    ld a, [bc]                                    ; $624e: $0a
    sub e                                         ; $624f: $93
    ld a, [bc]                                    ; $6250: $0a
    ld bc, $e904                                  ; $6251: $01 $04 $e9
    ld c, c                                       ; $6254: $49
    sub d                                         ; $6255: $92
    jr nz, jr_0b2_6258                            ; $6256: $20 $00

jr_0b2_6258:
    inc e                                         ; $6258: $1c
    ld [bc], a                                    ; $6259: $02
    inc c                                         ; $625a: $0c
    db $ed                                        ; $625b: $ed
    ld e, c                                       ; $625c: $59
    ld [hl-], a                                   ; $625d: $32
    ld a, e                                       ; $625e: $7b
    scf                                           ; $625f: $37
    ld [hl], e                                    ; $6260: $73
    ld b, $24                                     ; $6261: $06 $24
    rst $28                                       ; $6263: $ef
    ld e, l                                       ; $6264: $5d
    rla                                           ; $6265: $17
    ld l, a                                       ; $6266: $6f
    ld hl, sp+$7f                                 ; $6267: $f8 $7f
    nop                                           ; $6269: $00
    nop                                           ; $626a: $00
    sub e                                         ; $626b: $93
    ld h, [hl]                                    ; $626c: $66
    cp h                                          ; $626d: $bc
    ld a, e                                       ; $626e: $7b
    or $6e                                        ; $626f: $f6 $6e
    nop                                           ; $6271: $00
    nop                                           ; $6272: $00
    ld d, d                                       ; $6273: $52
    ld d, d                                       ; $6274: $52
    sbc l                                         ; $6275: $9d
    ld a, e                                       ; $6276: $7b
    inc b                                         ; $6277: $04
    inc e                                         ; $6278: $1c
    nop                                           ; $6279: $00
    nop                                           ; $627a: $00
    add hl, sp                                    ; $627b: $39
    add hl, bc                                    ; $627c: $09
    jr nz, jr_0b2_6280                            ; $627d: $20 $01

    ld l, d                                       ; $627f: $6a

jr_0b2_6280:
    dec b                                         ; $6280: $05
    ld bc, $7304                                  ; $6281: $01 $04 $73
    ld a, [bc]                                    ; $6284: $0a
    or h                                          ; $6285: $b4
    ld a, a                                       ; $6286: $7f
    ld h, b                                       ; $6287: $60
    ld bc, $0c03                                  ; $6288: $01 $03 $0c
    sbc c                                         ; $628b: $99
    ld a, e                                       ; $628c: $7b
    ldh a, [$2c]                                  ; $628d: $f0 $2c
    nop                                           ; $628f: $00
    inc e                                         ; $6290: $1c
    nop                                           ; $6291: $00
    nop                                           ; $6292: $00
    nop                                           ; $6293: $00
    jr nz, jr_0b2_62df                            ; $6294: $20 $49

    jr nc, jr_0b2_629d                            ; $6296: $30 $05

jr_0b2_6298:
    inc e                                         ; $6298: $1c
    dec b                                         ; $6299: $05
    jr nz, jr_0b2_624b                            ; $629a: $20 $af

    ld h, [hl]                                    ; $629c: $66

jr_0b2_629d:
    ld c, d                                       ; $629d: $4a
    ld b, c                                       ; $629e: $41
    cp c                                          ; $629f: $b9
    ld a, e                                       ; $62a0: $7b
    nop                                           ; $62a1: $00
    nop                                           ; $62a2: $00
    sub h                                         ; $62a3: $94
    ld h, d                                       ; $62a4: $62
    rla                                           ; $62a5: $17
    ld [hl], e                                    ; $62a6: $73
    ld a, d                                       ; $62a7: $7a
    ld a, e                                       ; $62a8: $7b
    nop                                           ; $62a9: $00
    nop                                           ; $62aa: $00
    xor $59                                       ; $62ab: $ee $59
    ld e, c                                       ; $62ad: $59
    ld [hl], e                                    ; $62ae: $73
    ld h, d                                       ; $62af: $62
    ld b, b                                       ; $62b0: $40
    jr nz, jr_0b2_62b7                            ; $62b1: $20 $04

    di                                            ; $62b3: $f3
    nop                                           ; $62b4: $00
    ld h, [hl]                                    ; $62b5: $66
    ld a, [bc]                                    ; $62b6: $0a

jr_0b2_62b7:
    ld d, b                                       ; $62b7: $50
    ld d, $21                                     ; $62b8: $16 $21
    inc b                                         ; $62ba: $04
    ld [hl], h                                    ; $62bb: $74
    ld a, [bc]                                    ; $62bc: $0a
    sbc [hl]                                      ; $62bd: $9e
    ld a, a                                       ; $62be: $7f
    ld h, b                                       ; $62bf: $60
    ld bc, $1c00                                  ; $62c0: $01 $00 $1c
    ld a, b                                       ; $62c3: $78
    ld l, [hl]                                    ; $62c4: $6e
    ld c, h                                       ; $62c5: $4c

jr_0b2_62c6:
    jr c, jr_0b2_62c6                             ; $62c6: $38 $fe

    ld a, a                                       ; $62c8: $7f
    nop                                           ; $62c9: $00
    nop                                           ; $62ca: $00
    nop                                           ; $62cb: $00
    jr nz, jr_0b2_62e5                            ; $62cc: $20 $17

    ld [hl], e                                    ; $62ce: $73
    ld a, d                                       ; $62cf: $7a
    ld a, e                                       ; $62d0: $7b
    nop                                           ; $62d1: $00
    nop                                           ; $62d2: $00
    ld a, [$0a7f]                                 ; $62d3: $fa $7f $0a
    dec a                                         ; $62d6: $3d
    ld b, $20                                     ; $62d7: $06 $20
    nop                                           ; $62d9: $00
    nop                                           ; $62da: $00
    ld [hl], e                                    ; $62db: $73
    ld h, d                                       ; $62dc: $62
    rla                                           ; $62dd: $17
    ld [hl], e                                    ; $62de: $73

jr_0b2_62df:
    ld a, c                                       ; $62df: $79
    ld a, e                                       ; $62e0: $7b
    nop                                           ; $62e1: $00
    nop                                           ; $62e2: $00
    ld a, d                                       ; $62e3: $7a
    ld [hl], a                                    ; $62e4: $77

jr_0b2_62e5:
    cp l                                          ; $62e5: $bd
    ld a, a                                       ; $62e6: $7f
    rst $38                                       ; $62e7: $ff
    ld [hl], a                                    ; $62e8: $77
    nop                                           ; $62e9: $00
    nop                                           ; $62ea: $00
    rla                                           ; $62eb: $17
    add hl, bc                                    ; $62ec: $09
    add sp, $00                                   ; $62ed: $e8 $00
    ld [hl], c                                    ; $62ef: $71
    ld a, [bc]                                    ; $62f0: $0a
    nop                                           ; $62f1: $00
    nop                                           ; $62f2: $00
    ld d, h                                       ; $62f3: $54
    ld a, [bc]                                    ; $62f4: $0a
    or h                                          ; $62f5: $b4
    ld a, a                                       ; $62f6: $7f
    jr nz, @+$03                                  ; $62f7: $20 $01

    jr nz, jr_0b2_62fb                            ; $62f9: $20 $00

jr_0b2_62fb:
    or c                                          ; $62fb: $b1
    ld d, d                                       ; $62fc: $52
    db $db                                        ; $62fd: $db
    ld a, a                                       ; $62fe: $7f
    nop                                           ; $62ff: $00
    jr nz, jr_0b2_6302                            ; $6300: $20 $00

Call_0b2_6302:
jr_0b2_6302:
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    jr nz, jr_0b2_631d                            ; $6304: $20 $17

jr_0b2_6306:
    ld [hl], e                                    ; $6306: $73
    ld a, c                                       ; $6307: $79
    ld a, e                                       ; $6308: $7b
    rlca                                          ; $6309: $07
    jr z, jr_0b2_6306                             ; $630a: $28 $fa

    ld a, a                                       ; $630c: $7f
    add sp, $38                                   ; $630d: $e8 $38
    adc e                                         ; $630f: $8b
    ld c, c                                       ; $6310: $49
    ld bc, $9408                                  ; $6311: $01 $08 $94
    ld h, [hl]                                    ; $6314: $66
    ld a, [hl+]                                   ; $6315: $2a
    add hl, sp                                    ; $6316: $39
    ld e, c                                       ; $6317: $59

Call_0b2_6318:
    ld a, e                                       ; $6318: $7b
    ld b, e                                       ; $6319: $43
    nop                                           ; $631a: $00
    rla                                           ; $631b: $17
    ld l, e                                       ; $631c: $6b

jr_0b2_631d:
    ld l, e                                       ; $631d: $6b
    dec l                                         ; $631e: $2d
    sbc h                                         ; $631f: $9c
    ld a, e                                       ; $6320: $7b
    nop                                           ; $6321: $00
    nop                                           ; $6322: $00
    db $d3                                        ; $6323: $d3
    inc b                                         ; $6324: $04
    sub [hl]                                      ; $6325: $96
    ld c, $7c                                     ; $6326: $0e $7c
    dec c                                         ; $6328: $0d
    nop                                           ; $6329: $00
    inc b                                         ; $632a: $04
    ld d, h                                       ; $632b: $54
    ld h, l                                       ; $632c: $65
    ld b, b                                       ; $632d: $40
    ld bc, $0a54                                  ; $632e: $01 $54 $0a
    nop                                           ; $6331: $00
    nop                                           ; $6332: $00
    or [hl]                                       ; $6333: $b6

jr_0b2_6334:
    ld [hl], d                                    ; $6334: $72
    daa                                           ; $6335: $27
    inc h                                         ; $6336: $24
    nop                                           ; $6337: $00
    inc e                                         ; $6338: $1c
    nop                                           ; $6339: $00
    nop                                           ; $633a: $00
    nop                                           ; $633b: $00
    jr nz, @+$2c                                  ; $633c: $20 $2a

    add hl, sp                                    ; $633e: $39
    ld e, c                                       ; $633f: $59

jr_0b2_6340:
    ld a, e                                       ; $6340: $7b
    dec b                                         ; $6341: $05
    inc e                                         ; $6342: $1c
    ld a, [$8c7f]                                 ; $6343: $fa $7f $8c
    ld c, c                                       ; $6346: $49
    add hl, hl                                    ; $6347: $29
    inc l                                         ; $6348: $2c
    ld [bc], a                                    ; $6349: $02
    ld [$6630], sp                                ; $634a: $08 $30 $66
    jp z, $fa3c                                   ; $634d: $ca $3c $fa

    ld a, a                                       ; $6350: $7f
    ld [hl+], a                                   ; $6351: $22
    nop                                           ; $6352: $00
    ld a, [de]                                    ; $6353: $1a
    ld h, a                                       ; $6354: $67
    ld c, $15                                     ; $6355: $0e $15
    sbc h                                         ; $6357: $9c
    ld a, a                                       ; $6358: $7f
    nop                                           ; $6359: $00
    nop                                           ; $635a: $00
    ld d, $05                                     ; $635b: $16 $05
    ld e, a                                       ; $635d: $5f
    ld e, e                                       ; $635e: $5b
    ld b, [hl]                                    ; $635f: $46
    nop                                           ; $6360: $00
    jr nz, jr_0b2_6363                            ; $6361: $20 $00

jr_0b2_6363:
    rst $38                                       ; $6363: $ff
    ld a, a                                       ; $6364: $7f
    ld b, c                                       ; $6365: $41
    ld bc, $05c4                                  ; $6366: $01 $c4 $05
    nop                                           ; $6369: $00
    nop                                           ; $636a: $00
    nop                                           ; $636b: $00
    inc e                                         ; $636c: $1c
    nop                                           ; $636d: $00
    jr nz, jr_0b2_6334                            ; $636e: $20 $c4

    dec b                                         ; $6370: $05
    nop                                           ; $6371: $00
    nop                                           ; $6372: $00
    nop                                           ; $6373: $00
    jr nz, jr_0b2_6340                            ; $6374: $20 $ca

    inc a                                         ; $6376: $3c
    ld a, [$007f]                                 ; $6377: $fa $7f $00
    nop                                           ; $637a: $00
    ld a, [$057f]                                 ; $637b: $fa $7f $05
    inc e                                         ; $637e: $1c
    add hl, hl                                    ; $637f: $29
    inc l                                         ; $6380: $2c
    inc b                                         ; $6381: $04
    inc d                                         ; $6382: $14
    rst $08                                       ; $6383: $cf
    ld e, c                                       ; $6384: $59
    ld [$d540], a                                 ; $6385: $ea $40 $d5
    ld h, [hl]                                    ; $6388: $66
    inc hl                                        ; $6389: $23
    nop                                           ; $638a: $00
    cp d                                          ; $638b: $ba
    ld c, [hl]                                    ; $638c: $4e
    dec l                                         ; $638d: $2d
    ld sp, $7b7b                                  ; $638e: $31 $7b $7b
    ld b, e                                       ; $6391: $43
    nop                                           ; $6392: $00
    ld e, a                                       ; $6393: $5f
    ld l, e                                       ; $6394: $6b
    db $d3                                        ; $6395: $d3
    ld sp, $0917                                  ; $6396: $31 $17 $09
    nop                                           ; $6399: $00
    nop                                           ; $639a: $00
    rst $30                                       ; $639b: $f7
    ld c, $ff                                     ; $639c: $0e $ff
    ld a, a                                       ; $639e: $7f
    ld h, h                                       ; $639f: $64
    ld bc, $0000                                  ; $63a0: $01 $00 $00
    nop                                           ; $63a3: $00
    jr nz, @+$01                                  ; $63a4: $20 $ff

    ld a, a                                       ; $63a6: $7f
    ld h, h                                       ; $63a7: $64
    ld bc, $0000                                  ; $63a8: $01 $00 $00
    nop                                           ; $63ab: $00
    jr nz, @-$14                                  ; $63ac: $20 $ea

    ld b, b                                       ; $63ae: $40
    push de                                       ; $63af: $d5
    ld h, [hl]                                    ; $63b0: $66
    nop                                           ; $63b1: $00
    nop                                           ; $63b2: $00
    ld a, [$8b7f]                                 ; $63b3: $fa $7f $8b
    ld c, c                                       ; $63b6: $49
    dec b                                         ; $63b7: $05
    inc e                                         ; $63b8: $1c
    nop                                           ; $63b9: $00
    nop                                           ; $63ba: $00
    ld a, [bc]                                    ; $63bb: $0a
    dec a                                         ; $63bc: $3d
    push de                                       ; $63bd: $d5
    ld l, d                                       ; $63be: $6a
    inc h                                         ; $63bf: $24
    db $10                                        ; $63c0: $10
    ld hl, $b500                                  ; $63c1: $21 $00 $b5
    ld l, d                                       ; $63c4: $6a
    ld d, b                                       ; $63c5: $50
    dec e                                         ; $63c6: $1d
    ld e, $57                                     ; $63c7: $1e $57
    inc hl                                        ; $63c9: $23
    nop                                           ; $63ca: $00
    ld a, c                                       ; $63cb: $79
    dec c                                         ; $63cc: $0d
    rst $18                                       ; $63cd: $df
    ld c, d                                       ; $63ce: $4a
    rst $08                                       ; $63cf: $cf
    nop                                           ; $63d0: $00
    nop                                           ; $63d1: $00
    nop                                           ; $63d2: $00
    add hl, de                                    ; $63d3: $19
    inc de                                        ; $63d4: $13
    rst $38                                       ; $63d5: $ff
    ld a, a                                       ; $63d6: $7f
    inc bc                                        ; $63d7: $03
    ld bc, $2000                                  ; $63d8: $01 $00 $20
    add hl, de                                    ; $63db: $19
    inc de                                        ; $63dc: $13
    rst $38                                       ; $63dd: $ff
    ld a, a                                       ; $63de: $7f
    inc bc                                        ; $63df: $03
    ld bc, $0000                                  ; $63e0: $01 $00 $00
    adc e                                         ; $63e3: $8b
    ld c, c                                       ; $63e4: $49
    nop                                           ; $63e5: $00
    jr nz, jr_0b2_63ed                            ; $63e6: $20 $05

    inc e                                         ; $63e8: $1c
    nop                                           ; $63e9: $00
    nop                                           ; $63ea: $00
    adc e                                         ; $63eb: $8b
    ld c, c                                       ; $63ec: $49

jr_0b2_63ed:
    ld a, [$047f]                                 ; $63ed: $fa $7f $04
    inc d                                         ; $63f0: $14
    nop                                           ; $63f1: $00
    nop                                           ; $63f2: $00
    db $10                                        ; $63f3: $10
    ld b, [hl]                                    ; $63f4: $46
    dec h                                         ; $63f5: $25
    jr nz, jr_0b2_6472                            ; $63f6: $20 $7a

    ld [hl], a                                    ; $63f8: $77
    nop                                           ; $63f9: $00
    nop                                           ; $63fa: $00
    ld d, c                                       ; $63fb: $51
    dec e                                         ; $63fc: $1d
    sub l                                         ; $63fd: $95
    ld h, [hl]                                    ; $63fe: $66
    ld h, l                                       ; $63ff: $65
    nop                                           ; $6400: $00
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    rst $08                                       ; $6403: $cf
    inc b                                         ; $6404: $04
    ld h, a                                       ; $6405: $67
    nop                                           ; $6406: $00
    ld e, b                                       ; $6407: $58
    add hl, bc                                    ; $6408: $09
    nop                                           ; $6409: $00
    inc b                                         ; $640a: $04
    rla                                           ; $640b: $17
    inc de                                        ; $640c: $13
    rst $38                                       ; $640d: $ff
    ld a, a                                       ; $640e: $7f
    ld c, d                                       ; $640f: $4a
    dec b                                         ; $6410: $05
    nop                                           ; $6411: $00
    jr nz, @+$19                                  ; $6412: $20 $17

    inc de                                        ; $6414: $13

jr_0b2_6415:
    rst $38                                       ; $6415: $ff
    ld a, a                                       ; $6416: $7f
    ld c, d                                       ; $6417: $4a
    dec b                                         ; $6418: $05
    nop                                           ; $6419: $00
    nop                                           ; $641a: $00
    adc e                                         ; $641b: $8b
    ld c, c                                       ; $641c: $49
    nop                                           ; $641d: $00
    jr nz, jr_0b2_649a                            ; $641e: $20 $7a

    ld [hl], a                                    ; $6420: $77
    nop                                           ; $6421: $00
    nop                                           ; $6422: $00
    adc e                                         ; $6423: $8b
    ld c, c                                       ; $6424: $49
    dec b                                         ; $6425: $05
    inc e                                         ; $6426: $1c
    ld a, d                                       ; $6427: $7a
    ld [hl], a                                    ; $6428: $77
    ld [bc], a                                    ; $6429: $02
    ld [$5a33], sp                                ; $642a: $08 $33 $5a
    rlca                                          ; $642d: $07
    ld sp, $7fbb                                  ; $642e: $31 $bb $7f
    nop                                           ; $6431: $00
    nop                                           ; $6432: $00
    ld de, $d64e                                  ; $6433: $11 $4e $d6
    ld l, [hl]                                    ; $6436: $6e
    cp h                                          ; $6437: $bc
    ld a, a                                       ; $6438: $7f
    nop                                           ; $6439: $00
    nop                                           ; $643a: $00
    ld [hl], d                                    ; $643b: $72
    ld e, d                                       ; $643c: $5a
    ld d, l                                       ; $643d: $55
    add hl, bc                                    ; $643e: $09
    ld a, d                                       ; $643f: $7a
    ld a, e                                       ; $6440: $7b
    nop                                           ; $6441: $00
    ld [$7fff], sp                                ; $6442: $08 $ff $7f
    add $05                                       ; $6445: $c6 $05
    ret nc                                        ; $6447: $d0

    ld c, $00                                     ; $6448: $0e $00
    jr nz, @+$01                                  ; $644a: $20 $ff

    ld a, a                                       ; $644c: $7f
    add $05                                       ; $644d: $c6 $05
    ret nc                                        ; $644f: $d0

    ld c, $00                                     ; $6450: $0e $00
    jr nz, @+$35                                  ; $6452: $20 $33

    ld e, d                                       ; $6454: $5a
    rlca                                          ; $6455: $07
    ld sp, $7fbb                                  ; $6456: $31 $bb $7f
    nop                                           ; $6459: $00
    nop                                           ; $645a: $00
    rst $38                                       ; $645b: $ff
    ld a, a                                       ; $645c: $7f
    nop                                           ; $645d: $00
    jr nz, jr_0b2_6465                            ; $645e: $20 $05

    inc e                                         ; $6460: $1c
    ld bc, $8904                                  ; $6461: $01 $04 $89
    ld b, c                                       ; $6464: $41

jr_0b2_6465:
    ret c                                         ; $6465: $d8

    ld l, d                                       ; $6466: $6a
    xor [hl]                                      ; $6467: $ae
    ld e, l                                       ; $6468: $5d
    nop                                           ; $6469: $00
    nop                                           ; $646a: $00
    ret nc                                        ; $646b: $d0

    ld c, c                                       ; $646c: $49
    rst $38                                       ; $646d: $ff
    ld a, a                                       ; $646e: $7f
    ld [de], a                                    ; $646f: $12
    ld e, d                                       ; $6470: $5a
    nop                                           ; $6471: $00

jr_0b2_6472:
    nop                                           ; $6472: $00
    ld sp, $ff56                                  ; $6473: $31 $56 $ff
    ld a, a                                       ; $6476: $7f
    ld b, e                                       ; $6477: $43
    stop                                          ; $6478: $10 $00
    nop                                           ; $647a: $00
    rst $38                                       ; $647b: $ff
    ld a, a                                       ; $647c: $7f
    nop                                           ; $647d: $00
    jr nz, @+$45                                  ; $647e: $20 $43

    stop                                          ; $6480: $10 $00
    jr nz, @+$01                                  ; $6482: $20 $ff

    ld a, a                                       ; $6484: $7f
    nop                                           ; $6485: $00
    jr nz, @+$45                                  ; $6486: $20 $43

    stop                                          ; $6488: $10 $00
    jr nz, jr_0b2_6415                            ; $648a: $20 $89

    ld b, c                                       ; $648c: $41
    ret c                                         ; $648d: $d8

    ld l, d                                       ; $648e: $6a
    xor [hl]                                      ; $648f: $ae
    ld e, l                                       ; $6490: $5d
    nop                                           ; $6491: $00
    nop                                           ; $6492: $00
    rst $38                                       ; $6493: $ff
    ld a, a                                       ; $6494: $7f
    nop                                           ; $6495: $00
    jr nz, @-$50                                  ; $6496: $20 $ae

    ld e, l                                       ; $6498: $5d
    nop                                           ; $6499: $00

jr_0b2_649a:
    nop                                           ; $649a: $00
    rst $38                                       ; $649b: $ff
    ld a, a                                       ; $649c: $7f
    ld b, h                                       ; $649d: $44
    db $10                                        ; $649e: $10
    xor [hl]                                      ; $649f: $ae
    ld e, l                                       ; $64a0: $5d
    nop                                           ; $64a1: $00
    nop                                           ; $64a2: $00
    nop                                           ; $64a3: $00
    jr nz, jr_0b2_64a6                            ; $64a4: $20 $00

jr_0b2_64a6:
    jr nz, @+$45                                  ; $64a6: $20 $43

    stop                                          ; $64a8: $10 $00
    nop                                           ; $64aa: $00
    nop                                           ; $64ab: $00
    jr nz, jr_0b2_64ae                            ; $64ac: $20 $00

jr_0b2_64ae:
    jr nz, @+$45                                  ; $64ae: $20 $43

    stop                                          ; $64b0: $10 $00
    nop                                           ; $64b2: $00
    nop                                           ; $64b3: $00
    jr nz, jr_0b2_64b6                            ; $64b4: $20 $00

jr_0b2_64b6:
    jr nz, @+$45                                  ; $64b6: $20 $43

    stop                                          ; $64b8: $10 $00
    jr nz, jr_0b2_64bc                            ; $64ba: $20 $00

jr_0b2_64bc:
    jr nz, jr_0b2_64be                            ; $64bc: $20 $00

jr_0b2_64be:
    jr nz, @+$45                                  ; $64be: $20 $43

    stop                                          ; $64c0: $10 $00
    jr nz, jr_0b2_64c4                            ; $64c2: $20 $00

jr_0b2_64c4:
    jr nz, jr_0b2_64c6                            ; $64c4: $20 $00

jr_0b2_64c6:
    jr nz, jr_0b2_64e2                            ; $64c6: $20 $1a

    inc c                                         ; $64c8: $0c
    nop                                           ; $64c9: $00
    jr nz, jr_0b2_64cc                            ; $64ca: $20 $00

jr_0b2_64cc:
    jr nz, jr_0b2_64ce                            ; $64cc: $20 $00

jr_0b2_64ce:
    jr nz, jr_0b2_64ea                            ; $64ce: $20 $1a

    inc c                                         ; $64d0: $0c
    nop                                           ; $64d1: $00
    jr nz, jr_0b2_64d4                            ; $64d2: $20 $00

jr_0b2_64d4:
    jr nz, jr_0b2_64d6                            ; $64d4: $20 $00

jr_0b2_64d6:
    jr nz, jr_0b2_64f2                            ; $64d6: $20 $1a

    inc c                                         ; $64d8: $0c
    nop                                           ; $64d9: $00
    nop                                           ; $64da: $00
    rst $38                                       ; $64db: $ff
    ld a, a                                       ; $64dc: $7f
    nop                                           ; $64dd: $00
    jr nz, @+$01                                  ; $64de: $20 $ff

jr_0b2_64e0:
    ld a, a                                       ; $64e0: $7f
    nop                                           ; $64e1: $00

jr_0b2_64e2:
    jr nz, @+$01                                  ; $64e2: $20 $ff

    ld a, a                                       ; $64e4: $7f
    nop                                           ; $64e5: $00
    jr nz, @+$01                                  ; $64e6: $20 $ff

    ld a, a                                       ; $64e8: $7f
    nop                                           ; $64e9: $00

jr_0b2_64ea:
    jr nz, @+$01                                  ; $64ea: $20 $ff

    ld a, a                                       ; $64ec: $7f
    nop                                           ; $64ed: $00
    jr nz, @+$01                                  ; $64ee: $20 $ff

    ld a, a                                       ; $64f0: $7f
    nop                                           ; $64f1: $00

jr_0b2_64f2:
    jr nz, @+$01                                  ; $64f2: $20 $ff

    ld a, a                                       ; $64f4: $7f
    nop                                           ; $64f5: $00
    jr nz, @+$01                                  ; $64f6: $20 $ff

    ld a, a                                       ; $64f8: $7f
    nop                                           ; $64f9: $00
    jr nz, jr_0b2_64fc                            ; $64fa: $20 $00

jr_0b2_64fc:
    jr nz, jr_0b2_64fe                            ; $64fc: $20 $00

jr_0b2_64fe:
    jr nz, jr_0b2_651a                            ; $64fe: $20 $1a

    inc c                                         ; $6500: $0c
    nop                                           ; $6501: $00
    jr nz, jr_0b2_6504                            ; $6502: $20 $00

jr_0b2_6504:
    jr nz, jr_0b2_6506                            ; $6504: $20 $00

jr_0b2_6506:
    jr nz, jr_0b2_6522                            ; $6506: $20 $1a

jr_0b2_6508:
    inc c                                         ; $6508: $0c
    nop                                           ; $6509: $00
    inc e                                         ; $650a: $1c
    adc e                                         ; $650b: $8b
    nop                                           ; $650c: $00
    nop                                           ; $650d: $00
    jr nz, jr_0b2_652a                            ; $650e: $20 $1a

    inc c                                         ; $6510: $0c
    nop                                           ; $6511: $00
    nop                                           ; $6512: $00
    rst $38                                       ; $6513: $ff
    ld a, a                                       ; $6514: $7f
    nop                                           ; $6515: $00
    jr nz, @+$01                                  ; $6516: $20 $ff

jr_0b2_6518:
    ld a, a                                       ; $6518: $7f
    nop                                           ; $6519: $00

jr_0b2_651a:
    nop                                           ; $651a: $00
    rst $38                                       ; $651b: $ff
    ld c, [hl]                                    ; $651c: $4e
    adc h                                         ; $651d: $8c
    nop                                           ; $651e: $00
    nop                                           ; $651f: $00

jr_0b2_6520:
    inc e                                         ; $6520: $1c
    nop                                           ; $6521: $00

jr_0b2_6522:
    jr nz, @+$01                                  ; $6522: $20 $ff

    ld c, [hl]                                    ; $6524: $4e
    adc h                                         ; $6525: $8c
    nop                                           ; $6526: $00
    nop                                           ; $6527: $00
    inc e                                         ; $6528: $1c
    nop                                           ; $6529: $00

jr_0b2_652a:
    jr nz, @+$01                                  ; $652a: $20 $ff

    ld c, [hl]                                    ; $652c: $4e
    adc h                                         ; $652d: $8c
    nop                                           ; $652e: $00
    nop                                           ; $652f: $00
    inc e                                         ; $6530: $1c
    nop                                           ; $6531: $00
    jr nz, @-$73                                  ; $6532: $20 $8b

    nop                                           ; $6534: $00
    nop                                           ; $6535: $00
    jr nz, jr_0b2_6552                            ; $6536: $20 $1a

    inc c                                         ; $6538: $0c
    nop                                           ; $6539: $00
    jr nz, @-$73                                  ; $653a: $20 $8b

    nop                                           ; $653c: $00
    nop                                           ; $653d: $00
    jr nz, jr_0b2_655a                            ; $653e: $20 $1a

jr_0b2_6540:
    inc c                                         ; $6540: $0c
    nop                                           ; $6541: $00
    jr jr_0b2_64e0                                ; $6542: $18 $9c

    ld b, [hl]                                    ; $6544: $46
    xor l                                         ; $6545: $ad
    inc b                                         ; $6546: $04

jr_0b2_6547:
    rst $38                                       ; $6547: $ff
    ld a, a                                       ; $6548: $7f
    nop                                           ; $6549: $00
    nop                                           ; $654a: $00
    rst $38                                       ; $654b: $ff
    ld a, a                                       ; $654c: $7f
    ld b, d                                       ; $654d: $42
    ld bc, $1c00                                  ; $654e: $01 $00 $1c
    nop                                           ; $6551: $00

jr_0b2_6552:
    db $10                                        ; $6552: $10
    cp h                                          ; $6553: $bc
    ld c, d                                       ; $6554: $4a
    adc $08                                       ; $6555: $ce $08
    rst $38                                       ; $6557: $ff
    ld a, a                                       ; $6558: $7f
    nop                                           ; $6559: $00

jr_0b2_655a:
    jr nz, jr_0b2_6518                            ; $655a: $20 $bc

    ld c, d                                       ; $655c: $4a
    adc $08                                       ; $655d: $ce $08
    rst $38                                       ; $655f: $ff
    ld a, a                                       ; $6560: $7f
    nop                                           ; $6561: $00
    jr nz, jr_0b2_6520                            ; $6562: $20 $bc

    ld c, d                                       ; $6564: $4a
    adc $08                                       ; $6565: $ce $08
    rst $38                                       ; $6567: $ff
    ld a, a                                       ; $6568: $7f
    nop                                           ; $6569: $00
    jr nz, jr_0b2_6508                            ; $656a: $20 $9c

    ld b, [hl]                                    ; $656c: $46

Call_0b2_656d:
    xor l                                         ; $656d: $ad
    inc b                                         ; $656e: $04
    rst $38                                       ; $656f: $ff
    ld a, a                                       ; $6570: $7f
    nop                                           ; $6571: $00
    jr nz, @-$2f                                  ; $6572: $20 $cf

    ld [$04ad], sp                                ; $6574: $08 $ad $04
    rst $38                                       ; $6577: $ff
    ld a, a                                       ; $6578: $7f
    nop                                           ; $6579: $00
    ld [$429c], sp                                ; $657a: $08 $9c $42
    rst $38                                       ; $657d: $ff
    ld a, a                                       ; $657e: $7f
    adc e                                         ; $657f: $8b
    nop                                           ; $6580: $00
    ld b, d                                       ; $6581: $42
    ld bc, $4abc                                  ; $6582: $01 $bc $4a
    adc $08                                       ; $6585: $ce $08
    rst $38                                       ; $6587: $ff
    ld a, a                                       ; $6588: $7f
    ld b, d                                       ; $6589: $42
    nop                                           ; $658a: $00
    cp l                                          ; $658b: $bd
    ld b, [hl]                                    ; $658c: $46
    ld d, c                                       ; $658d: $51
    dec e                                         ; $658e: $1d
    rst $38                                       ; $658f: $ff
    ld a, a                                       ; $6590: $7f
    nop                                           ; $6591: $00
    jr nz, @-$2f                                  ; $6592: $20 $cf

    ld [$1d51], sp                                ; $6594: $08 $51 $1d
    rst $38                                       ; $6597: $ff
    ld a, a                                       ; $6598: $7f
    nop                                           ; $6599: $00
    jr nz, @-$2f                                  ; $659a: $20 $cf

    ld [$1d51], sp                                ; $659c: $08 $51 $1d
    rst $38                                       ; $659f: $ff
    ld a, a                                       ; $65a0: $7f
    nop                                           ; $65a1: $00
    jr nz, jr_0b2_6540                            ; $65a2: $20 $9c

    ld b, d                                       ; $65a4: $42
    rst $38                                       ; $65a5: $ff
    ld a, a                                       ; $65a6: $7f
    adc e                                         ; $65a7: $8b
    nop                                           ; $65a8: $00
    nop                                           ; $65a9: $00
    jr nz, jr_0b2_6547                            ; $65aa: $20 $9b

    ld c, d                                       ; $65ac: $4a
    rst $08                                       ; $65ad: $cf
    ld [$4eff], sp                                ; $65ae: $08 $ff $4e
    and c                                         ; $65b1: $a1
    nop                                           ; $65b2: $00
    sbc $4a                                       ; $65b3: $de $4a
    rst $28                                       ; $65b5: $ef
    inc c                                         ; $65b6: $0c
    rst $38                                       ; $65b7: $ff
    ld a, a                                       ; $65b8: $7f
    ld b, d                                       ; $65b9: $42
    ld bc, $08cf                                  ; $65ba: $01 $cf $08
    rst $38                                       ; $65bd: $ff
    ld c, [hl]                                    ; $65be: $4e
    sbc $4a                                       ; $65bf: $de $4a
    nop                                           ; $65c1: $00
    nop                                           ; $65c2: $00
    rra                                           ; $65c3: $1f
    ld d, a                                       ; $65c4: $57
    xor l                                         ; $65c5: $ad
    inc b                                         ; $65c6: $04
    ld b, d                                       ; $65c7: $42
    ld bc, $2000                                  ; $65c8: $01 $00 $20
    rst $08                                       ; $65cb: $cf
    ld [$04ad], sp                                ; $65cc: $08 $ad $04
    ld b, d                                       ; $65cf: $42
    ld bc, $2000                                  ; $65d0: $01 $00 $20

jr_0b2_65d3:
    rst $08                                       ; $65d3: $cf
    ld [$04ad], sp                                ; $65d4: $08 $ad $04
    ld b, d                                       ; $65d7: $42
    ld bc, $2000                                  ; $65d8: $01 $00 $20

jr_0b2_65db:
    sbc $4a                                       ; $65db: $de $4a
    rst $28                                       ; $65dd: $ef
    inc c                                         ; $65de: $0c
    rst $38                                       ; $65df: $ff
    ld a, a                                       ; $65e0: $7f
    nop                                           ; $65e1: $00
    jr nz, @+$01                                  ; $65e2: $20 $ff

    ld c, [hl]                                    ; $65e4: $4e
    rst $08                                       ; $65e5: $cf
    ld [$7fff], sp                                ; $65e6: $08 $ff $7f
    ld b, l                                       ; $65e9: $45
    nop                                           ; $65ea: $00
    ld e, d                                       ; $65eb: $5a
    ld a, [hl-]                                   ; $65ec: $3a
    ld b, d                                       ; $65ed: $42
    ld bc, $6f7b                                  ; $65ee: $01 $7b $6f
    ld b, d                                       ; $65f1: $42
    ld bc, $03fb                                  ; $65f2: $01 $fb $03
    ld h, h                                       ; $65f5: $64
    nop                                           ; $65f6: $00
    ld b, d                                       ; $65f7: $42
    ld bc, $0142                                  ; $65f8: $01 $42 $01
    add hl, sp                                    ; $65fb: $39
    ld [hl], $8b                                  ; $65fc: $36 $8b
    nop                                           ; $65fe: $00
    rst $38                                       ; $65ff: $ff
    ld c, [hl]                                    ; $6600: $4e
    nop                                           ; $6601: $00
    jr nz, jr_0b2_65d3                            ; $6602: $20 $cf

    ld [$3639], sp                                ; $6604: $08 $39 $36
    rst $38                                       ; $6607: $ff
    ld c, [hl]                                    ; $6608: $4e
    nop                                           ; $6609: $00
    jr nz, jr_0b2_65db                            ; $660a: $20 $cf

    ld [$3639], sp                                ; $660c: $08 $39 $36
    rst $38                                       ; $660f: $ff
    ld c, [hl]                                    ; $6610: $4e
    nop                                           ; $6611: $00
    jr nz, jr_0b2_666e                            ; $6612: $20 $5a

    ld a, [hl-]                                   ; $6614: $3a
    ld b, d                                       ; $6615: $42
    ld bc, $6f7b                                  ; $6616: $01 $7b $6f
    nop                                           ; $6619: $00
    jr nz, @-$07                                  ; $661a: $20 $f7

    dec l                                         ; $661c: $2d
    adc $08                                       ; $661d: $ce $08
    rst $38                                       ; $661f: $ff
    ld c, [hl]                                    ; $6620: $4e
    ld b, d                                       ; $6621: $42
    ld bc, $4eff                                  ; $6622: $01 $ff $4e
    adc e                                         ; $6625: $8b
    nop                                           ; $6626: $00
    jr nc, @+$17                                  ; $6627: $30 $15

    ld b, d                                       ; $6629: $42
    ld bc, $03dc                                  ; $662a: $01 $dc $03
    ld a, e                                       ; $662d: $7b
    db $10                                        ; $662e: $10
    ld b, [hl]                                    ; $662f: $46
    inc b                                         ; $6630: $04
    ld b, d                                       ; $6631: $42
    ld bc, $46be                                  ; $6632: $01 $be $46
    adc e                                         ; $6635: $8b
    nop                                           ; $6636: $00
    jr nc, @+$17                                  ; $6637: $30 $15

    nop                                           ; $6639: $00
    jr nz, @-$27                                  ; $663a: $20 $d7

    add hl, hl                                    ; $663c: $29
    adc $08                                       ; $663d: $ce $08
    sbc $4a                                       ; $663f: $de $4a
    nop                                           ; $6641: $00
    jr nz, @-$27                                  ; $6642: $20 $d7

    add hl, hl                                    ; $6644: $29
    adc $08                                       ; $6645: $ce $08
    sbc $4a                                       ; $6647: $de $4a
    nop                                           ; $6649: $00
    jr nz, @-$2f                                  ; $664a: $20 $cf

    ld [$008b], sp                                ; $664c: $08 $8b $00
    jr nc, @+$17                                  ; $664f: $30 $15

jr_0b2_6651:
    nop                                           ; $6651: $00
    nop                                           ; $6652: $00
    rst $30                                       ; $6653: $f7
    dec l                                         ; $6654: $2d
    rst $38                                       ; $6655: $ff
    ld c, [hl]                                    ; $6656: $4e

jr_0b2_6657:
    adc $08                                       ; $6657: $ce $08
    ld b, d                                       ; $6659: $42
    ld bc, $3a7c                                  ; $665a: $01 $7c $3a
    ld b, h                                       ; $665d: $44
    nop                                           ; $665e: $00
    adc e                                         ; $665f: $8b
    nop                                           ; $6660: $00
    ld b, e                                       ; $6661: $43
    nop                                           ; $6662: $00
    rst $10                                       ; $6663: $d7
    ld [hl-], a                                   ; $6664: $32
    jp nc, $de25                                  ; $6665: $d2 $25 $de

    ld d, e                                       ; $6668: $53
    ld h, c                                       ; $6669: $61
    nop                                           ; $666a: $00
    ld a, h                                       ; $666b: $7c
    ld a, [hl-]                                   ; $666c: $3a
    add hl, hl                                    ; $666d: $29

jr_0b2_666e:
    ld [$1caf], sp                                ; $666e: $08 $af $1c
    ld h, a                                       ; $6671: $67
    inc b                                         ; $6672: $04
    add hl, sp                                    ; $6673: $39
    ld [hl], $ef                                  ; $6674: $36 $ef
    inc c                                         ; $6676: $0c
    sbc $4a                                       ; $6677: $de $4a
    nop                                           ; $6679: $00
    jr nz, @-$2f                                  ; $667a: $20 $cf

    ld [$4eff], sp                                ; $667c: $08 $ff $4e
    sbc $4a                                       ; $667f: $de $4a
    nop                                           ; $6681: $00
    jr nz, jr_0b2_6651                            ; $6682: $20 $cd

    ld [$4eff], sp                                ; $6684: $08 $ff $4e
    rst $08                                       ; $6687: $cf
    ld [$008b], sp                                ; $6688: $08 $8b $00
    add hl, de                                    ; $668b: $19
    ld l, $de                                     ; $668c: $2e $de
    ld c, d                                       ; $668e: $4a
    rst $28                                       ; $668f: $ef
    ld [$0448], sp                                ; $6690: $08 $48 $04
    or a                                          ; $6693: $b7
    ld [hl-], a                                   ; $6694: $32
    sub $18                                       ; $6695: $d6 $18
    rst $38                                       ; $6697: $ff
    ld d, a                                       ; $6698: $57
    rst $38                                       ; $6699: $ff

jr_0b2_669a:
    inc de                                        ; $669a: $13
    rst $38                                       ; $669b: $ff
    ld d, a                                       ; $669c: $57
    rst $38                                       ; $669d: $ff
    rra                                           ; $669e: $1f
    rst $38                                       ; $669f: $ff
    inc sp                                        ; $66a0: $33
    jr z, jr_0b2_66a7                             ; $66a1: $28 $04

    ld a, [de]                                    ; $66a3: $1a
    ld a, [hl+]                                   ; $66a4: $2a
    ld a, e                                       ; $66a5: $7b
    ld c, a                                       ; $66a6: $4f

jr_0b2_66a7:
    ld a, a                                       ; $66a7: $7f
    jr jr_0b2_6657                                ; $66a8: $18 $ad

    inc b                                         ; $66aa: $04
    ld e, d                                       ; $66ab: $5a
    ld [hl], $74                                  ; $66ac: $36 $74
    add hl, de                                    ; $66ae: $19
    rst $38                                       ; $66af: $ff
    ld c, [hl]                                    ; $66b0: $4e
    nop                                           ; $66b1: $00
    nop                                           ; $66b2: $00
    rst $38                                       ; $66b3: $ff
    ld c, [hl]                                    ; $66b4: $4e
    rst $08                                       ; $66b5: $cf
    ld [$2000], sp                                ; $66b6: $08 $00 $20
    nop                                           ; $66b9: $00
    jr jr_0b2_669a                                ; $66ba: $18 $de

    ld c, d                                       ; $66bc: $4a
    rst $08                                       ; $66bd: $cf
    ld [$7fff], sp                                ; $66be: $08 $ff $7f
    xor [hl]                                      ; $66c1: $ae
    inc b                                         ; $66c2: $04
    ld e, d                                       ; $66c3: $5a
    ld a, [hl-]                                   ; $66c4: $3a
    ld [hl], l                                    ; $66c5: $75
    dec e                                         ; $66c6: $1d
    sbc $4a                                       ; $66c7: $de $4a
    ld a, [hl+]                                   ; $66c9: $2a
    inc b                                         ; $66ca: $04
    cp $07                                        ; $66cb: $fe $07
    ld a, $18                                     ; $66cd: $3e $18
    cp $57                                        ; $66cf: $fe $57
    ld a, [hl+]                                   ; $66d1: $2a
    ld bc, $0319                                  ; $66d2: $01 $19 $03
    ld a, l                                       ; $66d5: $7d
    inc bc                                        ; $66d6: $03
    rst $18                                       ; $66d7: $df
    inc bc                                        ; $66d8: $03
    dec hl                                        ; $66d9: $2b
    ld [$137b], sp                                ; $66da: $08 $7b $13
    ld e, d                                       ; $66dd: $5a
    db $10                                        ; $66de: $10
    or a                                          ; $66df: $b7
    ld hl, $008b                                  ; $66e0: $21 $8b $00
    sbc $4a                                       ; $66e3: $de $4a
    ld d, e                                       ; $66e5: $53
    add hl, de                                    ; $66e6: $19
    rst $08                                       ; $66e7: $cf
    ld [$1c00], sp                                ; $66e8: $08 $00 $1c
    rst $38                                       ; $66eb: $ff
    ld c, [hl]                                    ; $66ec: $4e
    rst $08                                       ; $66ed: $cf
    ld [$7fff], sp                                ; $66ee: $08 $ff $7f
    nop                                           ; $66f1: $00
    ld [$429b], sp                                ; $66f2: $08 $9b $42
    ld de, $ff11                                  ; $66f5: $11 $11 $ff
    ld a, a                                       ; $66f8: $7f
    adc e                                         ; $66f9: $8b
    nop                                           ; $66fa: $00
    rst $30                                       ; $66fb: $f7
    add hl, hl                                    ; $66fc: $29
    sbc $4a                                       ; $66fd: $de $4a
    ld sp, $0a11                                  ; $66ff: $31 $11 $0a
    inc b                                         ; $6702: $04
    xor l                                         ; $6703: $ad
    ld bc, $03ff                                  ; $6704: $01 $ff $03
    ld d, $08                                     ; $6707: $16 $08
    add $00                                       ; $6709: $c6 $00
    adc e                                         ; $670b: $8b
    ld bc, $01ec                                  ; $670c: $01 $ec $01
    xor $01                                       ; $670f: $ee $01
    add hl, bc                                    ; $6711: $09
    inc b                                         ; $6712: $04
    inc de                                        ; $6713: $13
    inc b                                         ; $6714: $04
    jr c, jr_0b2_6723                             ; $6715: $38 $0c

    adc h                                         ; $6717: $8c
    nop                                           ; $6718: $00
    xor l                                         ; $6719: $ad
    inc b                                         ; $671a: $04
    ld a, [hl-]                                   ; $671b: $3a
    ld [hl], $74                                  ; $671c: $36 $74
    dec e                                         ; $671e: $1d
    sbc $4a                                       ; $671f: $de $4a
    nop                                           ; $6721: $00
    inc e                                         ; $6722: $1c

jr_0b2_6723:
    rst $38                                       ; $6723: $ff
    ld a, a                                       ; $6724: $7f
    ld h, e                                       ; $6725: $63
    dec b                                         ; $6726: $05
    ld [hl-], a                                   ; $6727: $32
    dec d                                         ; $6728: $15
    nop                                           ; $6729: $00
    nop                                           ; $672a: $00
    rst $38                                       ; $672b: $ff
    ld a, a                                       ; $672c: $7f
    ld [hl-], a                                   ; $672d: $32
    dec d                                         ; $672e: $15
    ld h, e                                       ; $672f: $63
    dec b                                         ; $6730: $05
    ld c, d                                       ; $6731: $4a
    nop                                           ; $6732: $00
    add hl, sp                                    ; $6733: $39
    ld [hl], $31                                  ; $6734: $36 $31
    dec d                                         ; $6736: $15
    sbc $46                                       ; $6737: $de $46
    ld hl, $cd00                                  ; $6739: $21 $00 $cd
    ld bc, $0814                                  ; $673c: $01 $14 $08
    add hl, bc                                    ; $673f: $09
    nop                                           ; $6740: $00
    ld b, d                                       ; $6741: $42
    nop                                           ; $6742: $00
    dec a                                         ; $6743: $3d
    ld c, $ff                                     ; $6744: $0e $ff
    ld c, [hl]                                    ; $6746: $4e
    jp nc, Jump_000_0400                          ; $6747: $d2 $00 $04

    nop                                           ; $674a: $00
    ld d, h                                       ; $674b: $54
    ld [$25da], sp                                ; $674c: $08 $da $25
    inc c                                         ; $674f: $0c
    nop                                           ; $6750: $00
    ld c, b                                       ; $6751: $48
    nop                                           ; $6752: $00
    add hl, de                                    ; $6753: $19
    ld l, $74                                     ; $6754: $2e $74
    add hl, de                                    ; $6756: $19
    sbc $4a                                       ; $6757: $de $4a
    nop                                           ; $6759: $00
    nop                                           ; $675a: $00
    rst $38                                       ; $675b: $ff
    ld a, a                                       ; $675c: $7f
    ld b, [hl]                                    ; $675d: $46
    dec b                                         ; $675e: $05
    nop                                           ; $675f: $00
    jr nz, jr_0b2_6762                            ; $6760: $20 $00

jr_0b2_6762:
    ld [$365c], sp                                ; $6762: $08 $5c $36
    ld b, a                                       ; $6765: $47
    dec b                                         ; $6766: $05
    rst $38                                       ; $6767: $ff
    ld a, a                                       ; $6768: $7f
    rlca                                          ; $6769: $07
    nop                                           ; $676a: $00
    ld sp, hl                                     ; $676b: $f9
    add hl, hl                                    ; $676c: $29

Call_0b2_676d:
    rst $38                                       ; $676d: $ff
    ld c, [hl]                                    ; $676e: $4e
    xor l                                         ; $676f: $ad
    inc b                                         ; $6770: $04
    ld b, $00                                     ; $6771: $06 $00
    db $dd                                        ; $6773: $dd
    dec c                                         ; $6774: $0d
    jr nc, jr_0b2_677c                            ; $6775: $30 $05

    rst $38                                       ; $6777: $ff
    ld c, [hl]                                    ; $6778: $4e
    ld b, a                                       ; $6779: $47
    nop                                           ; $677a: $00
    rst $38                                       ; $677b: $ff

jr_0b2_677c:
    ld bc, $00f2                                  ; $677c: $01 $f2 $00
    rst $38                                       ; $677f: $ff
    ld c, [hl]                                    ; $6780: $4e
    ld b, $00                                     ; $6781: $06 $00
    pop de                                        ; $6783: $d1
    nop                                           ; $6784: $00
    ld a, [bc]                                    ; $6785: $0a
    inc b                                         ; $6786: $04
    jr nc, jr_0b2_678e                            ; $6787: $30 $05

    dec b                                         ; $6789: $05
    nop                                           ; $678a: $00
    cp [hl]                                       ; $678b: $be
    ld b, [hl]                                    ; $678c: $46
    ld [hl], h                                    ; $678d: $74

jr_0b2_678e:
    add hl, de                                    ; $678e: $19
    jp z, Jump_000_0004                           ; $678f: $ca $04 $00

    nop                                           ; $6792: $00
    rst $38                                       ; $6793: $ff
    ld a, a                                       ; $6794: $7f
    add l                                         ; $6795: $85
    dec b                                         ; $6796: $05
    nop                                           ; $6797: $00
    jr nz, jr_0b2_679a                            ; $6798: $20 $00

jr_0b2_679a:
    inc c                                         ; $679a: $0c
    rst $38                                       ; $679b: $ff
    ld a, a                                       ; $679c: $7f
    and h                                         ; $679d: $a4
    add hl, bc                                    ; $679e: $09
    ld d, c                                       ; $679f: $51
    dec d                                         ; $67a0: $15
    ld h, a                                       ; $67a1: $67
    nop                                           ; $67a2: $00
    rst $10                                       ; $67a3: $d7
    dec h                                         ; $67a4: $25
    rst $18                                       ; $67a5: $df
    ld c, d                                       ; $67a6: $4a
    or h                                          ; $67a7: $b4
    nop                                           ; $67a8: $00
    ld l, d                                       ; $67a9: $6a
    nop                                           ; $67aa: $00
    or l                                          ; $67ab: $b5
    ld hl, $3ebe                                  ; $67ac: $21 $be $3e
    rra                                           ; $67af: $1f
    ld [bc], a                                    ; $67b0: $02
    rst $08                                       ; $67b1: $cf
    nop                                           ; $67b2: $00
    ld e, e                                       ; $67b3: $5b
    ld [hl], $d6                                  ; $67b4: $36 $d6
    dec h                                         ; $67b6: $25
    rst $38                                       ; $67b7: $ff
    ld c, [hl]                                    ; $67b8: $4e
    inc h                                         ; $67b9: $24
    nop                                           ; $67ba: $00
    rst $10                                       ; $67bb: $d7
    dec e                                         ; $67bc: $1d
    rst $38                                       ; $67bd: $ff
    ld c, [hl]                                    ; $67be: $4e
    rst $08                                       ; $67bf: $cf
    ld [$09a5], sp                                ; $67c0: $08 $a5 $09
    dec de                                        ; $67c3: $1b
    ld h, $ff                                     ; $67c4: $26 $ff
    ld c, [hl]                                    ; $67c6: $4e
    adc l                                         ; $67c7: $8d
    inc b                                         ; $67c8: $04
    nop                                           ; $67c9: $00
    nop                                           ; $67ca: $00
    rst $38                                       ; $67cb: $ff
    ld a, a                                       ; $67cc: $7f
    ld c, d                                       ; $67cd: $4a
    add hl, bc                                    ; $67ce: $09
    nop                                           ; $67cf: $00
    jr nz, jr_0b2_67d2                            ; $67d0: $20 $00

jr_0b2_67d2:
    db $10                                        ; $67d2: $10
    add hl, sp                                    ; $67d3: $39
    ld [hl-], a                                   ; $67d4: $32
    rst $38                                       ; $67d5: $ff
    ld a, a                                       ; $67d6: $7f
    ld de, $c511                                  ; $67d7: $11 $11 $c5
    add hl, bc                                    ; $67da: $09
    ld a, [hl-]                                   ; $67db: $3a
    ld a, [de]                                    ; $67dc: $1a
    ld l, h                                       ; $67dd: $6c
    nop                                           ; $67de: $00
    rst $38                                       ; $67df: $ff
    ld c, [hl]                                    ; $67e0: $4e
    nop                                           ; $67e1: $00
    ld c, c                                       ; $67e2: $49
    dec e                                         ; $67e3: $1d
    ld e, e                                       ; $67e4: $5b
    xor h                                         ; $67e5: $ac
    nop                                           ; $67e6: $00
    or a                                          ; $67e7: $b7
    dec e                                         ; $67e8: $1d
    add b                                         ; $67e9: $80
    ld b, b                                       ; $67ea: $40
    ld e, e                                       ; $67eb: $5b
    ld [hl], $9a                                  ; $67ec: $36 $9a
    ld [hl], a                                    ; $67ee: $77
    rst $08                                       ; $67ef: $cf
    nop                                           ; $67f0: $00
    adc e                                         ; $67f1: $8b
    nop                                           ; $67f2: $00
    ld a, l                                       ; $67f3: $7d
    ld l, e                                       ; $67f4: $6b
    or h                                          ; $67f5: $b4
    dec h                                         ; $67f6: $25

jr_0b2_67f7:
    rra                                           ; $67f7: $1f
    rlca                                          ; $67f8: $07
    push bc                                       ; $67f9: $c5
    dec c                                         ; $67fa: $0d
    cp l                                          ; $67fb: $bd
    ld b, d                                       ; $67fc: $42
    ld l, c                                       ; $67fd: $69
    nop                                           ; $67fe: $00
    inc d                                         ; $67ff: $14
    dec c                                         ; $6800: $0d
    nop                                           ; $6801: $00
    nop                                           ; $6802: $00
    rst $38                                       ; $6803: $ff
    ld a, a                                       ; $6804: $7f
    ld de, $0011                                  ; $6805: $11 $11 $00
    jr nz, jr_0b2_680a                            ; $6808: $20 $00

jr_0b2_680a:
    nop                                           ; $680a: $00
    sbc h                                         ; $680b: $9c
    ld b, d                                       ; $680c: $42
    rst $38                                       ; $680d: $ff
    ld a, a                                       ; $680e: $7f
    nop                                           ; $680f: $00
    jr nz, jr_0b2_67f7                            ; $6810: $20 $e5

    dec c                                         ; $6812: $0d
    rst $18                                       ; $6813: $df
    ld c, d                                       ; $6814: $4a
    ld l, b                                       ; $6815: $68
    nop                                           ; $6816: $00
    ld [de], a                                    ; $6817: $12
    dec c                                         ; $6818: $0d
    nop                                           ; $6819: $00
    ld c, c                                       ; $681a: $49
    cp a                                          ; $681b: $bf
    ld [hl], e                                    ; $681c: $73
    sub $25                                       ; $681d: $d6 $25
    db $eb                                        ; $681f: $eb
    inc d                                         ; $6820: $14
    jr nz, jr_0b2_685f                            ; $6821: $20 $3c

    or l                                          ; $6823: $b5
    dec e                                         ; $6824: $1d
    xor l                                         ; $6825: $ad
    nop                                           ; $6826: $00
    cp [hl]                                       ; $6827: $be
    ld b, [hl]                                    ; $6828: $46
    rrc b                                         ; $6829: $cb $08
    cp l                                          ; $682b: $bd
    ld [hl+], a                                   ; $682c: $22
    ld a, [de]                                    ; $682d: $1a
    ld e, a                                       ; $682e: $5f
    sub l                                         ; $682f: $95

jr_0b2_6830:
    dec d                                         ; $6830: $15
    and $0d                                       ; $6831: $e6 $0d
    sbc $4a                                       ; $6833: $de $4a
    ld l, c                                       ; $6835: $69
    nop                                           ; $6836: $00
    di                                            ; $6837: $f3
    ld [$0000], sp                                ; $6838: $08 $00 $00
    rst $10                                       ; $683b: $d7
    dec h                                         ; $683c: $25
    rst $38                                       ; $683d: $ff
    ld a, a                                       ; $683e: $7f
    nop                                           ; $683f: $00
    jr nz, jr_0b2_6842                            ; $6840: $20 $00

jr_0b2_6842:
    nop                                           ; $6842: $00
    rst $38                                       ; $6843: $ff
    ld c, d                                       ; $6844: $4a
    rst $38                                       ; $6845: $ff
    ld a, a                                       ; $6846: $7f
    nop                                           ; $6847: $00
    jr nz, jr_0b2_6830                            ; $6848: $20 $e6

    dec c                                         ; $684a: $0d
    cp $01                                        ; $684b: $fe $01
    adc e                                         ; $684d: $8b
    nop                                           ; $684e: $00
    sbc l                                         ; $684f: $9d
    ld b, d                                       ; $6850: $42
    adc $04                                       ; $6851: $ce $04
    cp b                                          ; $6853: $b8
    add hl, de                                    ; $6854: $19
    sbc $46                                       ; $6855: $de $46
    ld e, l                                       ; $6857: $5d
    ld a, [hl+]                                   ; $6858: $2a
    adc h                                         ; $6859: $8c
    nop                                           ; $685a: $00
    or a                                          ; $685b: $b7
    dec e                                         ; $685c: $1d
    rst $38                                       ; $685d: $ff
    ld c, [hl]                                    ; $685e: $4e

jr_0b2_685f:
    ld e, h                                       ; $685f: $5c
    ld [hl-], a                                   ; $6860: $32
    xor [hl]                                      ; $6861: $ae
    inc b                                         ; $6862: $04
    or a                                          ; $6863: $b7
    dec e                                         ; $6864: $1d
    cp l                                          ; $6865: $bd
    ld b, d                                       ; $6866: $42
    ld e, [hl]                                    ; $6867: $5e
    ld [bc], a                                    ; $6868: $02
    ld b, $12                                     ; $6869: $06 $12
    sbc l                                         ; $686b: $9d
    ld b, d                                       ; $686c: $42
    ld l, h                                       ; $686d: $6c
    nop                                           ; $686e: $00
    rra                                           ; $686f: $1f
    rlca                                          ; $6870: $07
    ld bc, $de00                                  ; $6871: $01 $00 $de
    ld c, d                                       ; $6874: $4a
    sbc $7b                                       ; $6875: $de $7b
    nop                                           ; $6877: $00
    jr nz, jr_0b2_687a                            ; $6878: $20 $00

jr_0b2_687a:
    nop                                           ; $687a: $00
    ld a, e                                       ; $687b: $7b
    ld a, [hl-]                                   ; $687c: $3a
    rst $38                                       ; $687d: $ff
    ld a, a                                       ; $687e: $7f
    nop                                           ; $687f: $00
    jr nz, jr_0b2_6888                            ; $6880: $20 $06

    ld [de], a                                    ; $6882: $12
    add hl, de                                    ; $6883: $19
    ld l, $48                                     ; $6884: $2e $48
    nop                                           ; $6886: $00
    push de                                       ; $6887: $d5

jr_0b2_6888:
    nop                                           ; $6888: $00
    dec b                                         ; $6889: $05
    nop                                           ; $688a: $00
    rst $38                                       ; $688b: $ff
    ld c, d                                       ; $688c: $4a
    ld d, d                                       ; $688d: $52
    dec d                                         ; $688e: $15
    ld l, h                                       ; $688f: $6c
    nop                                           ; $6890: $00
    or a                                          ; $6891: $b7
    dec e                                         ; $6892: $1d
    rst $38                                       ; $6893: $ff
    ld c, [hl]                                    ; $6894: $4e
    ld e, h                                       ; $6895: $5c
    ld [hl-], a                                   ; $6896: $32
    nop                                           ; $6897: $00
    jr nz, jr_0b2_68e0                            ; $6898: $20 $46

    nop                                           ; $689a: $00
    sbc a                                         ; $689b: $9f
    ld [bc], a                                    ; $689c: $02
    ld [hl], $09                                  ; $689d: $36 $09
    cp l                                          ; $689f: $bd
    ld b, [hl]                                    ; $68a0: $46
    ld l, e                                       ; $68a1: $6b
    nop                                           ; $68a2: $00
    ld a, [hl]                                    ; $68a3: $7e
    ld b, $06                                     ; $68a4: $06 $06
    ld [de], a                                    ; $68a6: $12
    ld a, h                                       ; $68a7: $7c
    ld a, [hl-]                                   ; $68a8: $3a
    nop                                           ; $68a9: $00
    nop                                           ; $68aa: $00
    cp e                                          ; $68ab: $bb
    ld b, [hl]                                    ; $68ac: $46
    nop                                           ; $68ad: $00
    jr nz, @+$01                                  ; $68ae: $20 $ff

    ld a, a                                       ; $68b0: $7f
    nop                                           ; $68b1: $00
    nop                                           ; $68b2: $00
    rst $38                                       ; $68b3: $ff
    ld a, a                                       ; $68b4: $7f
    nop                                           ; $68b5: $00
    jr nz, jr_0b2_691e                            ; $68b6: $20 $66

    ld [$0069], sp                                ; $68b8: $08 $69 $00
    jr c, jr_0b2_68be                             ; $68bb: $38 $01

    daa                                           ; $68bd: $27

jr_0b2_68be:
    ld [de], a                                    ; $68be: $12
    sub h                                         ; $68bf: $94
    dec e                                         ; $68c0: $1d
    adc h                                         ; $68c1: $8c
    nop                                           ; $68c2: $00
    ld a, [hl]                                    ; $68c3: $7e
    ld [bc], a                                    ; $68c4: $02
    add hl, de                                    ; $68c5: $19
    ld [hl-], a                                   ; $68c6: $32
    sbc $4a                                       ; $68c7: $de $4a
    adc e                                         ; $68c9: $8b
    nop                                           ; $68ca: $00
    cp $7f                                        ; $68cb: $fe $7f
    ret c                                         ; $68cd: $d8

    ld hl, $150d                                  ; $68ce: $21 $0d $15
    or b                                          ; $68d1: $b0
    nop                                           ; $68d2: $00
    ld a, [hl]                                    ; $68d3: $7e
    ld [bc], a                                    ; $68d4: $02
    sbc $4a                                       ; $68d5: $de $4a
    rst $08                                       ; $68d7: $cf
    dec e                                         ; $68d8: $1d

jr_0b2_68d9:
    ld l, c                                       ; $68d9: $69
    nop                                           ; $68da: $00
    rst $10                                       ; $68db: $d7
    dec h                                         ; $68dc: $25
    daa                                           ; $68dd: $27
    ld [de], a                                    ; $68de: $12
    ld sp, hl                                     ; $68df: $f9

jr_0b2_68e0:
    dec l                                         ; $68e0: $2d
    nop                                           ; $68e1: $00
    nop                                           ; $68e2: $00
    rst $38                                       ; $68e3: $ff
    ld a, a                                       ; $68e4: $7f
    nop                                           ; $68e5: $00
    jr nz, jr_0b2_692b                            ; $68e6: $20 $43

    ld [$0000], sp                                ; $68e8: $08 $00 $00
    rst $38                                       ; $68eb: $ff
    ld a, a                                       ; $68ec: $7f
    nop                                           ; $68ed: $00
    jr nz, jr_0b2_68f1                            ; $68ee: $20 $01

    nop                                           ; $68f0: $00

jr_0b2_68f1:
    nop                                           ; $68f1: $00
    nop                                           ; $68f2: $00
    daa                                           ; $68f3: $27
    ld d, $f1                                     ; $68f4: $16 $f1
    ld [$0069], sp                                ; $68f6: $08 $69 $00
    ld l, b                                       ; $68f9: $68
    nop                                           ; $68fa: $00
    ld e, a                                       ; $68fb: $5f
    ld [bc], a                                    ; $68fc: $02
    sbc l                                         ; $68fd: $9d
    ld b, d                                       ; $68fe: $42
    or c                                          ; $68ff: $b1
    inc b                                         ; $6900: $04
    adc d                                         ; $6901: $8a
    inc b                                         ; $6902: $04
    sub d                                         ; $6903: $92

jr_0b2_6904:
    ld d, [hl]                                    ; $6904: $56
    cp $7f                                        ; $6905: $fe $7f
    dec sp                                        ; $6907: $3b
    ld [hl-], a                                   ; $6908: $32
    adc e                                         ; $6909: $8b
    inc b                                         ; $690a: $04
    rst $30                                       ; $690b: $f7
    dec l                                         ; $690c: $2d

Jump_0b2_690d:
    cp $01                                        ; $690d: $fe $01
    sub e                                         ; $690f: $93
    nop                                           ; $6910: $00
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    ld b, a                                       ; $6913: $47
    ld d, $74                                     ; $6914: $16 $74
    dec e                                         ; $6916: $1d
    ld l, c                                       ; $6917: $69
    nop                                           ; $6918: $00
    nop                                           ; $6919: $00
    nop                                           ; $691a: $00
    rst $38                                       ; $691b: $ff
    ld a, a                                       ; $691c: $7f
    nop                                           ; $691d: $00

jr_0b2_691e:
    jr nz, jr_0b2_6989                            ; $691e: $20 $69

    nop                                           ; $6920: $00
    nop                                           ; $6921: $00
    nop                                           ; $6922: $00
    rst $38                                       ; $6923: $ff
    ld a, a                                       ; $6924: $7f
    nop                                           ; $6925: $00
    jr nz, jr_0b2_68d9                            ; $6926: $20 $b1

    inc b                                         ; $6928: $04
    inc hl                                        ; $6929: $23
    nop                                           ; $692a: $00

jr_0b2_692b:
    ld c, b                                       ; $692b: $48
    ld d, $dd                                     ; $692c: $16 $dd
    dec b                                         ; $692e: $05
    adc l                                         ; $692f: $8d
    nop                                           ; $6930: $00
    adc l                                         ; $6931: $8d
    inc b                                         ; $6932: $04
    ld a, d                                       ; $6933: $7a
    dec c                                         ; $6934: $0d
    ld c, b                                       ; $6935: $48
    ld d, $5a                                     ; $6936: $16 $5a
    ld a, [hl-]                                   ; $6938: $3a
    xor l                                         ; $6939: $ad
    inc b                                         ; $693a: $04
    ld a, [hl-]                                   ; $693b: $3a
    ld [hl], $53                                  ; $693c: $36 $53
    add hl, de                                    ; $693e: $19
    sbc $4a                                       ; $693f: $de $4a
    ld b, l                                       ; $6941: $45
    nop                                           ; $6942: $00
    ld l, b                                       ; $6943: $68
    ld d, $11                                     ; $6944: $16 $11
    add hl, bc                                    ; $6946: $09
    db $dd                                        ; $6947: $dd
    dec b                                         ; $6948: $05
    ld bc, $ff00                                  ; $6949: $01 $00 $ff
    ld a, a                                       ; $694c: $7f
    ld l, b                                       ; $694d: $68
    ld d, $ac                                     ; $694e: $16 $ac
    ld [$0000], sp                                ; $6950: $08 $00 $00
    rst $38                                       ; $6953: $ff
    ld a, a                                       ; $6954: $7f
    nop                                           ; $6955: $00
    jr nz, jr_0b2_6904                            ; $6956: $20 $ac

    ld [$0000], sp                                ; $6958: $08 $00 $00
    rst $38                                       ; $695b: $ff
    ld a, a                                       ; $695c: $7f
    nop                                           ; $695d: $00
    jr nz, @+$5c                                  ; $695e: $20 $5a

    ld a, [hl-]                                   ; $6960: $3a
    nop                                           ; $6961: $00
    nop                                           ; $6962: $00
    rst $38                                       ; $6963: $ff
    ld a, a                                       ; $6964: $7f
    ld l, b                                       ; $6965: $68
    ld a, [de]                                    ; $6966: $1a
    and [hl]                                      ; $6967: $a6
    nop                                           ; $6968: $00
    add d                                         ; $6969: $82
    nop                                           ; $696a: $00
    ret c                                         ; $696b: $d8

    ld hl, $0bff                                  ; $696c: $21 $ff $0b
    call z, $ce08                                 ; $696f: $cc $08 $ce
    inc b                                         ; $6972: $04
    ld hl, sp+$2d                                 ; $6973: $f8 $2d
    ld [hl], h                                    ; $6975: $74
    add hl, de                                    ; $6976: $19
    sbc l                                         ; $6977: $9d
    ld b, d                                       ; $6978: $42
    inc hl                                        ; $6979: $23
    nop                                           ; $697a: $00
    db $10                                        ; $697b: $10
    ld [$1a88], sp                                ; $697c: $08 $88 $1a
    ld a, [$6218]                                 ; $697f: $fa $18 $62
    nop                                           ; $6982: $00
    rst $38                                       ; $6983: $ff
    ld a, a                                       ; $6984: $7f
    ld [$8b1a], sp                                ; $6985: $08 $1a $8b
    nop                                           ; $6988: $00

jr_0b2_6989:
    nop                                           ; $6989: $00
    nop                                           ; $698a: $00
    nop                                           ; $698b: $00
    jr nz, jr_0b2_6996                            ; $698c: $20 $08

    ld a, [de]                                    ; $698e: $1a
    adc e                                         ; $698f: $8b
    nop                                           ; $6990: $00
    nop                                           ; $6991: $00
    nop                                           ; $6992: $00
    nop                                           ; $6993: $00
    jr nz, @+$01                                  ; $6994: $20 $ff

jr_0b2_6996:
    dec bc                                        ; $6996: $0b
    call z, $8408                                 ; $6997: $cc $08 $84
    nop                                           ; $699a: $00
    rst $38                                       ; $699b: $ff
    inc bc                                        ; $699c: $03
    rst $38                                       ; $699d: $ff
    ld a, a                                       ; $699e: $7f
    adc h                                         ; $699f: $8c
    ld de, $0000                                  ; $69a0: $11 $00 $00
    inc d                                         ; $69a3: $14
    ld a, [de]                                    ; $69a4: $1a
    dec e                                         ; $69a5: $1d
    ccf                                           ; $69a6: $3f
    call $b700                                    ; $69a7: $cd $00 $b7
    dec e                                         ; $69aa: $1d
    sbc l                                         ; $69ab: $9d
    ld b, d                                       ; $69ac: $42
    rst $38                                       ; $69ad: $ff
    ld c, [hl]                                    ; $69ae: $4e
    cp l                                          ; $69af: $bd
    ld b, [hl]                                    ; $69b0: $46
    ld h, e                                       ; $69b1: $63
    nop                                           ; $69b2: $00
    inc e                                         ; $69b3: $1c
    inc de                                        ; $69b4: $13
    rst $38                                       ; $69b5: $ff
    ld h, a                                       ; $69b6: $67
    ld c, [hl]                                    ; $69b7: $4e
    ld [$0486], sp                                ; $69b8: $08 $86 $04
    rst $18                                       ; $69bb: $df
    inc bc                                        ; $69bc: $03
    rst $38                                       ; $69bd: $ff
    ld a, a                                       ; $69be: $7f
    jr c, jr_0b2_69ce                             ; $69bf: $38 $0d

    nop                                           ; $69c1: $00
    nop                                           ; $69c2: $00
    nop                                           ; $69c3: $00
    jr nz, @+$01                                  ; $69c4: $20 $ff

    ld a, a                                       ; $69c6: $7f
    jr c, jr_0b2_69d6                             ; $69c7: $38 $0d

    nop                                           ; $69c9: $00
    nop                                           ; $69ca: $00
    nop                                           ; $69cb: $00
    jr nz, jr_0b2_69eb                            ; $69cc: $20 $1d

jr_0b2_69ce:
    ccf                                           ; $69ce: $3f
    call Call_000_2000                            ; $69cf: $cd $00 $20
    nop                                           ; $69d2: $00
    rst $38                                       ; $69d3: $ff
    inc bc                                        ; $69d4: $03
    rst $38                                       ; $69d5: $ff

jr_0b2_69d6:
    ld a, a                                       ; $69d6: $7f
    xor [hl]                                      ; $69d7: $ae
    add hl, bc                                    ; $69d8: $09
    ld b, a                                       ; $69d9: $47
    inc b                                         ; $69da: $04
    ld e, b                                       ; $69db: $58
    db $10                                        ; $69dc: $10
    ld a, b                                       ; $69dd: $78
    ld a, [hl-]                                   ; $69de: $3a
    db $ed                                        ; $69df: $ed
    dec c                                         ; $69e0: $0d
    jr z, jr_0b2_69e3                             ; $69e1: $28 $00

jr_0b2_69e3:
    xor $01                                       ; $69e3: $ee $01
    ld d, d                                       ; $69e5: $52
    add hl, de                                    ; $69e6: $19
    ld de, $2804                                  ; $69e7: $11 $04 $28
    nop                                           ; $69ea: $00

jr_0b2_69eb:
    cp $17                                        ; $69eb: $fe $17
    ld a, [hl-]                                   ; $69ed: $3a
    db $10                                        ; $69ee: $10
    cp $5b                                        ; $69ef: $fe $5b
    ld h, d                                       ; $69f1: $62
    inc b                                         ; $69f2: $04
    ld d, d                                       ; $69f3: $52
    ld [bc], a                                    ; $69f4: $02
    rst $38                                       ; $69f5: $ff
    ld a, a                                       ; $69f6: $7f
    rst $38                                       ; $69f7: $ff
    inc bc                                        ; $69f8: $03
    nop                                           ; $69f9: $00
    jr nz, jr_0b2_6a4e                            ; $69fa: $20 $52

    ld [bc], a                                    ; $69fc: $02
    rst $38                                       ; $69fd: $ff
    ld a, a                                       ; $69fe: $7f
    rst $38                                       ; $69ff: $ff
    inc bc                                        ; $6a00: $03
    nop                                           ; $6a01: $00
    jr nz, jr_0b2_6a5c                            ; $6a02: $20 $58

    db $10                                        ; $6a04: $10
    ld a, b                                       ; $6a05: $78
    ld a, [hl-]                                   ; $6a06: $3a
    db $ed                                        ; $6a07: $ed
    dec c                                         ; $6a08: $0d
    nop                                           ; $6a09: $00
    nop                                           ; $6a0a: $00
    ld e, d                                       ; $6a0b: $5a
    inc bc                                        ; $6a0c: $03
    rst $38                                       ; $6a0d: $ff
    ld a, a                                       ; $6a0e: $7f
    rlca                                          ; $6a0f: $07
    dec c                                         ; $6a10: $0d
    ld b, $00                                     ; $6a11: $06 $00
    ld e, d                                       ; $6a13: $5a
    daa                                           ; $6a14: $27
    sub h                                         ; $6a15: $94
    db $10                                        ; $6a16: $10
    rst $38                                       ; $6a17: $ff
    ld e, a                                       ; $6a18: $5f
    ld [hl-], a                                   ; $6a19: $32
    ld [$2fff], sp                                ; $6a1a: $08 $ff $2f
    ld e, a                                       ; $6a1d: $5f
    jr @+$01                                      ; $6a1e: $18 $ff

    ld e, e                                       ; $6a20: $5b
    ld b, [hl]                                    ; $6a21: $46
    nop                                           ; $6a22: $00
    ld a, [hl-]                                   ; $6a23: $3a
    db $10                                        ; $6a24: $10
    ld d, [hl]                                    ; $6a25: $56
    inc bc                                        ; $6a26: $03
    ld l, e                                       ; $6a27: $6b
    add hl, bc                                    ; $6a28: $09
    jr nz, jr_0b2_6a2f                            ; $6a29: $20 $04

    ld [hl], h                                    ; $6a2b: $74
    ld [bc], a                                    ; $6a2c: $02
    rst $38                                       ; $6a2d: $ff
    ld a, a                                       ; $6a2e: $7f

jr_0b2_6a2f:
    rst $18                                       ; $6a2f: $df
    inc bc                                        ; $6a30: $03
    nop                                           ; $6a31: $00
    jr nz, jr_0b2_6aa8                            ; $6a32: $20 $74

    ld [bc], a                                    ; $6a34: $02
    rst $38                                       ; $6a35: $ff
    ld a, a                                       ; $6a36: $7f
    rst $18                                       ; $6a37: $df
    inc bc                                        ; $6a38: $03
    nop                                           ; $6a39: $00
    jr nz, jr_0b2_6a96                            ; $6a3a: $20 $5a

    daa                                           ; $6a3c: $27
    sub h                                         ; $6a3d: $94
    db $10                                        ; $6a3e: $10
    rst $38                                       ; $6a3f: $ff
    ld e, a                                       ; $6a40: $5f
    nop                                           ; $6a41: $00
    ld [$0339], sp                                ; $6a42: $08 $39 $03
    rst $38                                       ; $6a45: $ff
    ld a, a                                       ; $6a46: $7f
    rlca                                          ; $6a47: $07
    dec c                                         ; $6a48: $0d
    ld b, $00                                     ; $6a49: $06 $00
    sub $02                                       ; $6a4b: $d6 $02
    di                                            ; $6a4d: $f3

jr_0b2_6a4e:
    inc b                                         ; $6a4e: $04
    rst $38                                       ; $6a4f: $ff
    rrca                                          ; $6a50: $0f
    ld b, $00                                     ; $6a51: $06 $00
    rst $30                                       ; $6a53: $f7
    ld [bc], a                                    ; $6a54: $02
    db $10                                        ; $6a55: $10
    inc b                                         ; $6a56: $04
    ld l, d                                       ; $6a57: $6a
    dec b                                         ; $6a58: $05
    ld b, $04                                     ; $6a59: $06 $04
    ld [hl], c                                    ; $6a5b: $71

jr_0b2_6a5c:
    ld [bc], a                                    ; $6a5c: $02
    ld l, h                                       ; $6a5d: $6c
    add hl, bc                                    ; $6a5e: $09
    db $dd                                        ; $6a5f: $dd
    rlca                                          ; $6a60: $07
    jr nz, jr_0b2_6a67                            ; $6a61: $20 $04

    ld [hl], h                                    ; $6a63: $74
    ld [bc], a                                    ; $6a64: $02

Jump_0b2_6a65:
    rst $38                                       ; $6a65: $ff
    ld a, a                                       ; $6a66: $7f

jr_0b2_6a67:
    rst $38                                       ; $6a67: $ff
    inc bc                                        ; $6a68: $03
    nop                                           ; $6a69: $00
    jr nz, jr_0b2_6ae0                            ; $6a6a: $20 $74

    ld [bc], a                                    ; $6a6c: $02
    rst $38                                       ; $6a6d: $ff
    ld a, a                                       ; $6a6e: $7f
    rst $38                                       ; $6a6f: $ff
    inc bc                                        ; $6a70: $03
    nop                                           ; $6a71: $00
    jr nz, @-$28                                  ; $6a72: $20 $d6

    ld [bc], a                                    ; $6a74: $02
    di                                            ; $6a75: $f3
    inc b                                         ; $6a76: $04
    rst $38                                       ; $6a77: $ff
    rrca                                          ; $6a78: $0f
    nop                                           ; $6a79: $00
    ld [$03ff], sp                                ; $6a7a: $08 $ff $03
    rst $08                                       ; $6a7d: $cf
    dec c                                         ; $6a7e: $0d
    rst $38                                       ; $6a7f: $ff
    ld a, a                                       ; $6a80: $7f
    nop                                           ; $6a81: $00
    nop                                           ; $6a82: $00
    inc l                                         ; $6a83: $2c
    ld [$05ac], sp                                ; $6a84: $08 $ac $05
    ld a, [de]                                    ; $6a87: $1a
    inc c                                         ; $6a88: $0c
    nop                                           ; $6a89: $00
    nop                                           ; $6a8a: $00
    rst $38                                       ; $6a8b: $ff
    ld a, a                                       ; $6a8c: $7f
    rst $38                                       ; $6a8d: $ff
    ld a, a                                       ; $6a8e: $7f
    rst $38                                       ; $6a8f: $ff
    inc bc                                        ; $6a90: $03
    nop                                           ; $6a91: $00
    nop                                           ; $6a92: $00
    rst $38                                       ; $6a93: $ff
    ld a, a                                       ; $6a94: $7f
    rst $38                                       ; $6a95: $ff

jr_0b2_6a96:
    ld a, a                                       ; $6a96: $7f
    rst $38                                       ; $6a97: $ff
    inc bc                                        ; $6a98: $03
    nop                                           ; $6a99: $00
    nop                                           ; $6a9a: $00
    rst $38                                       ; $6a9b: $ff
    ld a, a                                       ; $6a9c: $7f
    nop                                           ; $6a9d: $00
    jr nz, @+$01                                  ; $6a9e: $20 $ff

    inc bc                                        ; $6aa0: $03
    nop                                           ; $6aa1: $00
    jr nz, @+$01                                  ; $6aa2: $20 $ff

    ld a, a                                       ; $6aa4: $7f
    nop                                           ; $6aa5: $00
    jr nz, @+$01                                  ; $6aa6: $20 $ff

jr_0b2_6aa8:
    inc bc                                        ; $6aa8: $03
    nop                                           ; $6aa9: $00
    jr nz, jr_0b2_6ad8                            ; $6aaa: $20 $2c

    ld [$05ac], sp                                ; $6aac: $08 $ac $05
    ld a, [de]                                    ; $6aaf: $1a
    inc c                                         ; $6ab0: $0c
    nop                                           ; $6ab1: $00
    nop                                           ; $6ab2: $00
    rst $38                                       ; $6ab3: $ff
    ld a, a                                       ; $6ab4: $7f
    nop                                           ; $6ab5: $00
    jr nz, jr_0b2_6ad2                            ; $6ab6: $20 $1a

    inc c                                         ; $6ab8: $0c
    nop                                           ; $6ab9: $00
    nop                                           ; $6aba: $00
    rst $38                                       ; $6abb: $ff
    ld a, a                                       ; $6abc: $7f
    nop                                           ; $6abd: $00
    jr nz, jr_0b2_6ada                            ; $6abe: $20 $1a

    inc c                                         ; $6ac0: $0c
    nop                                           ; $6ac1: $00
    nop                                           ; $6ac2: $00
    nop                                           ; $6ac3: $00
    jr nz, jr_0b2_6ac6                            ; $6ac4: $20 $00

jr_0b2_6ac6:
    jr nz, @+$01                                  ; $6ac6: $20 $ff

    inc bc                                        ; $6ac8: $03
    nop                                           ; $6ac9: $00
    nop                                           ; $6aca: $00
    nop                                           ; $6acb: $00
    jr nz, jr_0b2_6ace                            ; $6acc: $20 $00

jr_0b2_6ace:
    jr nz, @+$01                                  ; $6ace: $20 $ff

    inc bc                                        ; $6ad0: $03
    nop                                           ; $6ad1: $00

jr_0b2_6ad2:
    nop                                           ; $6ad2: $00
    nop                                           ; $6ad3: $00
    jr nz, jr_0b2_6ad6                            ; $6ad4: $20 $00

jr_0b2_6ad6:
    jr nz, @+$01                                  ; $6ad6: $20 $ff

jr_0b2_6ad8:
    inc bc                                        ; $6ad8: $03
    nop                                           ; $6ad9: $00

jr_0b2_6ada:
    jr nz, jr_0b2_6adc                            ; $6ada: $20 $00

jr_0b2_6adc:
    jr nz, jr_0b2_6ade                            ; $6adc: $20 $00

jr_0b2_6ade:
    jr nz, @+$01                                  ; $6ade: $20 $ff

jr_0b2_6ae0:
    inc bc                                        ; $6ae0: $03
    nop                                           ; $6ae1: $00
    jr nz, jr_0b2_6ae4                            ; $6ae2: $20 $00

jr_0b2_6ae4:
    jr nz, jr_0b2_6ae6                            ; $6ae4: $20 $00

jr_0b2_6ae6:
    jr nz, jr_0b2_6b4f                            ; $6ae6: $20 $67

    nop                                           ; $6ae8: $00
    nop                                           ; $6ae9: $00
    jr nz, jr_0b2_6aec                            ; $6aea: $20 $00

jr_0b2_6aec:
    jr nz, jr_0b2_6aee                            ; $6aec: $20 $00

jr_0b2_6aee:
    jr nz, @+$69                                  ; $6aee: $20 $67

    nop                                           ; $6af0: $00
    nop                                           ; $6af1: $00
    jr nz, jr_0b2_6af4                            ; $6af2: $20 $00

jr_0b2_6af4:
    jr nz, jr_0b2_6af6                            ; $6af4: $20 $00

jr_0b2_6af6:
    jr nz, @+$69                                  ; $6af6: $20 $67

    nop                                           ; $6af8: $00
    ld hl, $1000                                  ; $6af9: $21 $00 $10
    ld [bc], a                                    ; $6afc: $02
    db $dd                                        ; $6afd: $dd
    inc bc                                        ; $6afe: $03
    nop                                           ; $6aff: $00
    jr nz, jr_0b2_6b02                            ; $6b00: $20 $00

jr_0b2_6b02:
    jr nz, jr_0b2_6b3d                            ; $6b02: $20 $39

    inc bc                                        ; $6b04: $03
    rst $38                                       ; $6b05: $ff
    ld e, a                                       ; $6b06: $5f
    and l                                         ; $6b07: $a5
    nop                                           ; $6b08: $00
    nop                                           ; $6b09: $00
    jr nz, jr_0b2_6b45                            ; $6b0a: $20 $39

    inc bc                                        ; $6b0c: $03

jr_0b2_6b0d:
    rst $38                                       ; $6b0d: $ff
    ld e, a                                       ; $6b0e: $5f
    and l                                         ; $6b0f: $a5
    nop                                           ; $6b10: $00

jr_0b2_6b11:
    nop                                           ; $6b11: $00
    jr nz, jr_0b2_6b4d                            ; $6b12: $20 $39

    inc bc                                        ; $6b14: $03
    rst $38                                       ; $6b15: $ff
    ld e, a                                       ; $6b16: $5f
    and l                                         ; $6b17: $a5
    nop                                           ; $6b18: $00

jr_0b2_6b19:
    nop                                           ; $6b19: $00
    jr nz, jr_0b2_6b1c                            ; $6b1a: $20 $00

jr_0b2_6b1c:
    jr nz, jr_0b2_6b1e                            ; $6b1c: $20 $00

jr_0b2_6b1e:
    jr nz, @+$69                                  ; $6b1e: $20 $67

    nop                                           ; $6b20: $00

jr_0b2_6b21:
    nop                                           ; $6b21: $00
    jr nz, jr_0b2_6b24                            ; $6b22: $20 $00

jr_0b2_6b24:
    jr nz, jr_0b2_6b26                            ; $6b24: $20 $00

jr_0b2_6b26:
    jr nz, jr_0b2_6b8f                            ; $6b26: $20 $67

    nop                                           ; $6b28: $00
    nop                                           ; $6b29: $00
    jr nz, jr_0b2_6b2c                            ; $6b2a: $20 $00

jr_0b2_6b2c:
    jr nz, jr_0b2_6b2e                            ; $6b2c: $20 $00

jr_0b2_6b2e:
    jr nz, @+$69                                  ; $6b2e: $20 $67

    nop                                           ; $6b30: $00
    nop                                           ; $6b31: $00
    nop                                           ; $6b32: $00
    rst $38                                       ; $6b33: $ff
    ld a, a                                       ; $6b34: $7f
    ld [$0001], sp                                ; $6b35: $08 $01 $00
    jr nz, jr_0b2_6b3a                            ; $6b38: $20 $00

jr_0b2_6b3a:
    jr nz, jr_0b2_6b11                            ; $6b3a: $20 $d5

    ld [bc], a                                    ; $6b3c: $02

jr_0b2_6b3d:
    rst $38                                       ; $6b3d: $ff
    ld e, e                                       ; $6b3e: $5b
    add h                                         ; $6b3f: $84
    nop                                           ; $6b40: $00
    nop                                           ; $6b41: $00
    jr nz, jr_0b2_6b19                            ; $6b42: $20 $d5

    ld [bc], a                                    ; $6b44: $02

jr_0b2_6b45:
    rst $38                                       ; $6b45: $ff
    ld e, e                                       ; $6b46: $5b
    add h                                         ; $6b47: $84
    nop                                           ; $6b48: $00
    nop                                           ; $6b49: $00
    jr nz, jr_0b2_6b21                            ; $6b4a: $20 $d5

jr_0b2_6b4c:
    ld [bc], a                                    ; $6b4c: $02

jr_0b2_6b4d:
    rst $38                                       ; $6b4d: $ff
    ld e, e                                       ; $6b4e: $5b

jr_0b2_6b4f:
    add h                                         ; $6b4f: $84
    nop                                           ; $6b50: $00
    nop                                           ; $6b51: $00
    jr nz, jr_0b2_6b54                            ; $6b52: $20 $00

jr_0b2_6b54:
    jr nz, jr_0b2_6b56                            ; $6b54: $20 $00

jr_0b2_6b56:
    jr nz, jr_0b2_6bbf                            ; $6b56: $20 $67

    nop                                           ; $6b58: $00
    nop                                           ; $6b59: $00
    jr nz, @-$59                                  ; $6b5a: $20 $a5

    nop                                           ; $6b5c: $00
    nop                                           ; $6b5d: $00
    jr nz, @+$69                                  ; $6b5e: $20 $67

    nop                                           ; $6b60: $00
    nop                                           ; $6b61: $00
    nop                                           ; $6b62: $00
    rst $38                                       ; $6b63: $ff
    ld a, a                                       ; $6b64: $7f
    nop                                           ; $6b65: $00
    jr nz, jr_0b2_6b0d                            ; $6b66: $20 $a5

    nop                                           ; $6b68: $00
    nop                                           ; $6b69: $00
    nop                                           ; $6b6a: $00
    ret z                                         ; $6b6b: $c8

    ld d, h                                       ; $6b6c: $54
    rst $38                                       ; $6b6d: $ff
    ld a, a                                       ; $6b6e: $7f
    ld h, e                                       ; $6b6f: $63
    inc c                                         ; $6b70: $0c
    add h                                         ; $6b71: $84
    nop                                           ; $6b72: $00
    ld a, e                                       ; $6b73: $7b
    rrca                                          ; $6b74: $0f
    cp l                                          ; $6b75: $bd
    ld l, a                                       ; $6b76: $6f
    adc $01                                       ; $6b77: $ce $01
    nop                                           ; $6b79: $00
    nop                                           ; $6b7a: $00
    ei                                            ; $6b7b: $fb
    ld e, d                                       ; $6b7c: $5a
    nop                                           ; $6b7d: $00
    jr nz, @-$59                                  ; $6b7e: $20 $a5

    nop                                           ; $6b80: $00
    nop                                           ; $6b81: $00
    nop                                           ; $6b82: $00
    nop                                           ; $6b83: $00
    jr nz, jr_0b2_6b86                            ; $6b84: $20 $00

jr_0b2_6b86:
    jr nz, @-$59                                  ; $6b86: $20 $a5

    nop                                           ; $6b88: $00
    nop                                           ; $6b89: $00
    jr @+$33                                      ; $6b8a: $18 $31

    ld [bc], a                                    ; $6b8c: $02
    and l                                         ; $6b8d: $a5
    nop                                           ; $6b8e: $00

jr_0b2_6b8f:
    add hl, sp                                    ; $6b8f: $39
    inc bc                                        ; $6b90: $03
    add h                                         ; $6b91: $84
    nop                                           ; $6b92: $00
    ld a, e                                       ; $6b93: $7b
    inc bc                                        ; $6b94: $03
    ld l, e                                       ; $6b95: $6b
    ld bc, $0107                                  ; $6b96: $01 $07 $01
    and l                                         ; $6b99: $a5
    nop                                           ; $6b9a: $00
    jr jr_0b2_6ba0                                ; $6b9b: $18 $03

    rst $38                                       ; $6b9d: $ff
    ld a, a                                       ; $6b9e: $7f
    ld l, e                                       ; $6b9f: $6b

jr_0b2_6ba0:
    ld bc, $0000                                  ; $6ba0: $01 $00 $00
    ret z                                         ; $6ba3: $c8

    ld d, h                                       ; $6ba4: $54
    and l                                         ; $6ba5: $a5
    nop                                           ; $6ba6: $00
    ld hl, $0800                                  ; $6ba7: $21 $00 $08
    dec b                                         ; $6baa: $05
    ld a, e                                       ; $6bab: $7b
    dec de                                        ; $6bac: $1b
    cp l                                          ; $6bad: $bd
    ld l, a                                       ; $6bae: $6f
    db $10                                        ; $6baf: $10
    ld [bc], a                                    ; $6bb0: $02
    nop                                           ; $6bb1: $00
    inc b                                         ; $6bb2: $04
    ld a, a                                       ; $6bb3: $7f
    ld e, e                                       ; $6bb4: $5b
    ld l, $1d                                     ; $6bb5: $2e $1d
    and l                                         ; $6bb7: $a5
    ld [$0000], sp                                ; $6bb8: $08 $00 $00
    nop                                           ; $6bbb: $00
    jr nz, jr_0b2_6bec                            ; $6bbc: $20 $2e

    dec e                                         ; $6bbe: $1d

jr_0b2_6bbf:
    and l                                         ; $6bbf: $a5
    ld [$0000], sp                                ; $6bc0: $08 $00 $00
    ld sp, $0002                                  ; $6bc3: $31 $02 $00
    jr nz, jr_0b2_6b4c                            ; $6bc6: $20 $84

    inc b                                         ; $6bc8: $04
    nop                                           ; $6bc9: $00
    nop                                           ; $6bca: $00
    ld c, d                                       ; $6bcb: $4a
    ld bc, $0210                                  ; $6bcc: $01 $10 $02
    ld d, d                                       ; $6bcf: $52
    ld [bc], a                                    ; $6bd0: $02
    nop                                           ; $6bd1: $00
    nop                                           ; $6bd2: $00
    ld d, c                                       ; $6bd3: $51
    ld [bc], a                                    ; $6bd4: $02
    rst $20                                       ; $6bd5: $e7
    nop                                           ; $6bd6: $00
    add hl, sp                                    ; $6bd7: $39
    inc bc                                        ; $6bd8: $03
    nop                                           ; $6bd9: $00
    nop                                           ; $6bda: $00
    ld d, d                                       ; $6bdb: $52
    ld [bc], a                                    ; $6bdc: $02
    rst $20                                       ; $6bdd: $e7
    nop                                           ; $6bde: $00
    jr jr_0b2_6be4                                ; $6bdf: $18 $03

    nop                                           ; $6be1: $00
    nop                                           ; $6be2: $00
    sbc h                                         ; $6be3: $9c

jr_0b2_6be4:
    rrca                                          ; $6be4: $0f
    cp $67                                        ; $6be5: $fe $67
    rst $28                                       ; $6be7: $ef
    ld bc, $0463                                  ; $6be8: $01 $63 $04
    or h                                          ; $6beb: $b4

jr_0b2_6bec:
    dec h                                         ; $6bec: $25
    ld [hl], b                                    ; $6bed: $70
    ld hl, $4afd                                  ; $6bee: $21 $fd $4a
    nop                                           ; $6bf1: $00
    jr nz, @-$4a                                  ; $6bf2: $20 $b4

    dec h                                         ; $6bf4: $25
    ld [hl], b                                    ; $6bf5: $70
    ld hl, $4afd                                  ; $6bf6: $21 $fd $4a
    nop                                           ; $6bf9: $00
    jr nz, @+$53                                  ; $6bfa: $20 $51

    ld [bc], a                                    ; $6bfc: $02
    rst $20                                       ; $6bfd: $e7
    nop                                           ; $6bfe: $00
    add hl, sp                                    ; $6bff: $39
    inc bc                                        ; $6c00: $03
    nop                                           ; $6c01: $00
    nop                                           ; $6c02: $00
    add hl, hl                                    ; $6c03: $29
    ld bc, $0610                                  ; $6c04: $01 $10 $06
    nop                                           ; $6c07: $00
    jr nz, jr_0b2_6c0a                            ; $6c08: $20 $00

jr_0b2_6c0a:
    nop                                           ; $6c0a: $00
    ld c, d                                       ; $6c0b: $4a
    ld bc, $01ad                                  ; $6c0c: $01 $ad $01
    and l                                         ; $6c0f: $a5
    nop                                           ; $6c10: $00
    nop                                           ; $6c11: $00
    nop                                           ; $6c12: $00
    ld l, d                                       ; $6c13: $6a
    ld bc, $020f                                  ; $6c14: $01 $0f $02

jr_0b2_6c17:
    add $00                                       ; $6c17: $c6 $00
    ld h, b                                       ; $6c19: $60
    nop                                           ; $6c1a: $00
    rst $38                                       ; $6c1b: $ff
    dec de                                        ; $6c1c: $1b
    rst $28                                       ; $6c1d: $ef
    ld bc, $57ff                                  ; $6c1e: $01 $ff $57
    ld hl, $1900                                  ; $6c21: $21 $00 $19
    ld l, $df                                     ; $6c24: $2e $df
    ld l, a                                       ; $6c26: $6f
    ld l, $1d                                     ; $6c27: $2e $1d
    nop                                           ; $6c29: $00
    nop                                           ; $6c2a: $00
    nop                                           ; $6c2b: $00

jr_0b2_6c2c:
    jr nz, @-$1f                                  ; $6c2c: $20 $df

    ld l, a                                       ; $6c2e: $6f
    ld l, $1d                                     ; $6c2f: $2e $1d
    nop                                           ; $6c31: $00
    jr nz, jr_0b2_6c7e                            ; $6c32: $20 $4a

    ld bc, $01ad                                  ; $6c34: $01 $ad $01
    and l                                         ; $6c37: $a5
    nop                                           ; $6c38: $00
    nop                                           ; $6c39: $00
    nop                                           ; $6c3a: $00
    rst $38                                       ; $6c3b: $ff
    ld a, a                                       ; $6c3c: $7f
    nop                                           ; $6c3d: $00
    jr nz, jr_0b2_6c48                            ; $6c3e: $20 $08

    ld bc, $0000                                  ; $6c40: $01 $00 $00
    and l                                         ; $6c43: $a5
    nop                                           ; $6c44: $00
    rst $20                                       ; $6c45: $e7
    nop                                           ; $6c46: $00
    ld c, d                                       ; $6c47: $4a

jr_0b2_6c48:
    ld bc, $0000                                  ; $6c48: $01 $00 $00
    call nc, Call_0b2_6302                        ; $6c4b: $d4 $02 $63
    nop                                           ; $6c4e: $00
    xor d                                         ; $6c4f: $aa
    inc b                                         ; $6c50: $04
    and b                                         ; $6c51: $a0
    nop                                           ; $6c52: $00
    call nz, Call_0b2_7306                        ; $6c53: $c4 $06 $73
    ld [bc], a                                    ; $6c56: $02
    rst $38                                       ; $6c57: $ff
    inc bc                                        ; $6c58: $03
    ld b, b                                       ; $6c59: $40
    nop                                           ; $6c5a: $00
    ld e, a                                       ; $6c5b: $5f
    ld c, a                                       ; $6c5c: $4f
    cpl                                           ; $6c5d: $2f
    add hl, de                                    ; $6c5e: $19
    rst $38                                       ; $6c5f: $ff
    ld a, a                                       ; $6c60: $7f
    nop                                           ; $6c61: $00
    nop                                           ; $6c62: $00
    ld c, [hl]                                    ; $6c63: $4e
    dec h                                         ; $6c64: $25
    nop                                           ; $6c65: $00
    jr nz, jr_0b2_6c17                            ; $6c66: $20 $af

    ld sp, $2000                                  ; $6c68: $31 $00 $20
    and l                                         ; $6c6b: $a5
    nop                                           ; $6c6c: $00
    rst $20                                       ; $6c6d: $e7
    nop                                           ; $6c6e: $00
    ld c, d                                       ; $6c6f: $4a
    ld bc, $0000                                  ; $6c70: $01 $00 $00
    rst $38                                       ; $6c73: $ff
    ld a, a                                       ; $6c74: $7f
    add sp, $54                                   ; $6c75: $e8 $54
    nop                                           ; $6c77: $00
    jr nz, jr_0b2_6c7a                            ; $6c78: $20 $00

jr_0b2_6c7a:
    nop                                           ; $6c7a: $00
    add sp, $54                                   ; $6c7b: $e8 $54
    ld h, e                                       ; $6c7d: $63

jr_0b2_6c7e:
    nop                                           ; $6c7e: $00
    add h                                         ; $6c7f: $84
    nop                                           ; $6c80: $00
    nop                                           ; $6c81: $00
    nop                                           ; $6c82: $00
    halt                                          ; $6c83: $76
    dec d                                         ; $6c84: $15
    ccf                                           ; $6c85: $3f
    ld d, a                                       ; $6c86: $57
    xor d                                         ; $6c87: $aa
    inc b                                         ; $6c88: $04
    ld bc, $8300                                  ; $6c89: $01 $00 $83
    ld b, $de                                     ; $6c8c: $06 $de
    inc bc                                        ; $6c8e: $03
    xor [hl]                                      ; $6c8f: $ae
    ld bc, $0020                                  ; $6c90: $01 $20 $00
    db $fc                                        ; $6c93: $fc
    ld e, a                                       ; $6c94: $5f
    jr z, jr_0b2_6cae                             ; $6c95: $28 $17

    rst $38                                       ; $6c97: $ff
    ld a, a                                       ; $6c98: $7f
    nop                                           ; $6c99: $00
    nop                                           ; $6c9a: $00
    nop                                           ; $6c9b: $00
    jr nz, jr_0b2_6cc6                            ; $6c9c: $20 $28

    rla                                           ; $6c9e: $17

jr_0b2_6c9f:
    rst $38                                       ; $6c9f: $ff
    ld a, a                                       ; $6ca0: $7f
    nop                                           ; $6ca1: $00
    nop                                           ; $6ca2: $00
    rst $38                                       ; $6ca3: $ff
    ld a, a                                       ; $6ca4: $7f
    nop                                           ; $6ca5: $00
    jr nz, jr_0b2_6c2c                            ; $6ca6: $20 $84

    nop                                           ; $6ca8: $00
    nop                                           ; $6ca9: $00
    nop                                           ; $6caa: $00
    rst $38                                       ; $6cab: $ff
    ld a, a                                       ; $6cac: $7f
    jp hl                                         ; $6cad: $e9


jr_0b2_6cae:
    ld e, b                                       ; $6cae: $58
    add hl, bc                                    ; $6caf: $09
    ld e, c                                       ; $6cb0: $59
    nop                                           ; $6cb1: $00
    nop                                           ; $6cb2: $00
    jp hl                                         ; $6cb3: $e9


    ld e, b                                       ; $6cb4: $58
    jp hl                                         ; $6cb5: $e9


    ld e, b                                       ; $6cb6: $58
    add hl, bc                                    ; $6cb7: $09
    ld e, c                                       ; $6cb8: $59
    nop                                           ; $6cb9: $00
    nop                                           ; $6cba: $00
    db $fd                                        ; $6cbb: $fd
    add hl, de                                    ; $6cbc: $19
    rrc b                                         ; $6cbd: $cb $08
    ccf                                           ; $6cbf: $3f
    ld d, a                                       ; $6cc0: $57
    ld bc, $1400                                  ; $6cc1: $01 $00 $14
    dec c                                         ; $6cc4: $0d
    ld a, e                                       ; $6cc5: $7b

jr_0b2_6cc6:
    inc bc                                        ; $6cc6: $03
    ld d, e                                       ; $6cc7: $53
    ld [bc], a                                    ; $6cc8: $02
    jr nz, jr_0b2_6ccb                            ; $6cc9: $20 $00

jr_0b2_6ccb:
    jp hl                                         ; $6ccb: $e9


    ld e, b                                       ; $6ccc: $58
    ld d, b                                       ; $6ccd: $50
    scf                                           ; $6cce: $37
    ei                                            ; $6ccf: $fb
    ld h, e                                       ; $6cd0: $63
    nop                                           ; $6cd1: $00
    nop                                           ; $6cd2: $00

jr_0b2_6cd3:
    rst $38                                       ; $6cd3: $ff
    ld a, a                                       ; $6cd4: $7f
    nop                                           ; $6cd5: $00
    jr nz, jr_0b2_6cd3                            ; $6cd6: $20 $fb

    ld h, e                                       ; $6cd8: $63
    nop                                           ; $6cd9: $00
    nop                                           ; $6cda: $00
    rst $38                                       ; $6cdb: $ff
    ld a, a                                       ; $6cdc: $7f
    nop                                           ; $6cdd: $00
    jr nz, jr_0b2_6ce9                            ; $6cde: $20 $09

    ld e, c                                       ; $6ce0: $59
    nop                                           ; $6ce1: $00
    nop                                           ; $6ce2: $00
    add hl, bc                                    ; $6ce3: $09
    ld e, c                                       ; $6ce4: $59
    ld a, [bc]                                    ; $6ce5: $0a
    ld e, l                                       ; $6ce6: $5d
    ld a, [bc]                                    ; $6ce7: $0a
    ld e, c                                       ; $6ce8: $59

jr_0b2_6ce9:
    nop                                           ; $6ce9: $00
    nop                                           ; $6cea: $00
    add hl, bc                                    ; $6ceb: $09
    ld e, c                                       ; $6cec: $59
    db $e4                                        ; $6ced: $e4
    add hl, bc                                    ; $6cee: $09
    and l                                         ; $6cef: $a5
    ld c, $00                                     ; $6cf0: $0e $00
    nop                                           ; $6cf2: $00
    ld [hl], h                                    ; $6cf3: $74
    ld de, $573f                                  ; $6cf4: $11 $3f $57
    adc c                                         ; $6cf7: $89
    inc b                                         ; $6cf8: $04
    nop                                           ; $6cf9: $00
    nop                                           ; $6cfa: $00
    ld a, d                                       ; $6cfb: $7a
    inc bc                                        ; $6cfc: $03
    pop af                                        ; $6cfd: $f1
    jr nz, jr_0b2_6c9f                            ; $6cfe: $20 $9f

    ld l, e                                       ; $6d00: $6b
    jr nz, jr_0b2_6d03                            ; $6d01: $20 $00

jr_0b2_6d03:
    ld a, [bc]                                    ; $6d03: $0a
    ld e, l                                       ; $6d04: $5d
    ld a, [bc]                                    ; $6d05: $0a
    cpl                                           ; $6d06: $2f
    rst $38                                       ; $6d07: $ff
    inc bc                                        ; $6d08: $03
    nop                                           ; $6d09: $00
    nop                                           ; $6d0a: $00
    rst $38                                       ; $6d0b: $ff
    ld a, a                                       ; $6d0c: $7f
    ld a, [bc]                                    ; $6d0d: $0a
    ld e, l                                       ; $6d0e: $5d
    nop                                           ; $6d0f: $00
    jr nz, jr_0b2_6d12                            ; $6d10: $20 $00

jr_0b2_6d12:
    nop                                           ; $6d12: $00
    rst $38                                       ; $6d13: $ff
    ld a, a                                       ; $6d14: $7f
    ld a, [bc]                                    ; $6d15: $0a
    ld e, l                                       ; $6d16: $5d
    nop                                           ; $6d17: $00
    jr nz, jr_0b2_6d24                            ; $6d18: $20 $0a

    ld e, l                                       ; $6d1a: $5d
    ld a, [hl+]                                   ; $6d1b: $2a
    ld e, l                                       ; $6d1c: $5d
    ld a, [bc]                                    ; $6d1d: $0a
    ld e, l                                       ; $6d1e: $5d
    nop                                           ; $6d1f: $00
    jr nz, jr_0b2_6d22                            ; $6d20: $20 $00

jr_0b2_6d22:
    nop                                           ; $6d22: $00
    ld a, [bc]                                    ; $6d23: $0a

jr_0b2_6d24:
    ld e, l                                       ; $6d24: $5d
    inc b                                         ; $6d25: $04
    ld a, [bc]                                    ; $6d26: $0a
    rst $00                                       ; $6d27: $c7
    inc de                                        ; $6d28: $13
    ld b, d                                       ; $6d29: $42
    nop                                           ; $6d2a: $00
    dec h                                         ; $6d2b: $25
    rrca                                          ; $6d2c: $0f
    sbc $42                                       ; $6d2d: $de $42
    ld d, d                                       ; $6d2f: $52
    ld de, $0000                                  ; $6d30: $11 $00 $00
    ld e, a                                       ; $6d33: $5f
    ld d, a                                       ; $6d34: $57
    jp hl                                         ; $6d35: $e9


    ld e, b                                       ; $6d36: $58
    inc [hl]                                      ; $6d37: $34
    dec c                                         ; $6d38: $0d
    nop                                           ; $6d39: $00
    nop                                           ; $6d3a: $00
    sbc $03                                       ; $6d3b: $de $03
    ld a, [hl+]                                   ; $6d3d: $2a
    ld e, l                                       ; $6d3e: $5d
    and l                                         ; $6d3f: $a5
    nop                                           ; $6d40: $00
    nop                                           ; $6d41: $00
    nop                                           ; $6d42: $00
    ld a, [hl+]                                   ; $6d43: $2a
    ld e, l                                       ; $6d44: $5d
    rst $38                                       ; $6d45: $ff
    ld a, a                                       ; $6d46: $7f
    nop                                           ; $6d47: $00
    jr nz, jr_0b2_6d4a                            ; $6d48: $20 $00

jr_0b2_6d4a:
    nop                                           ; $6d4a: $00
    rst $38                                       ; $6d4b: $ff
    ld a, a                                       ; $6d4c: $7f
    dec hl                                        ; $6d4d: $2b
    ld e, l                                       ; $6d4e: $5d
    dec hl                                        ; $6d4f: $2b
    ld h, c                                       ; $6d50: $61
    dec hl                                        ; $6d51: $2b
    ld e, l                                       ; $6d52: $5d
    dec hl                                        ; $6d53: $2b
    ld h, c                                       ; $6d54: $61
    dec hl                                        ; $6d55: $2b
    ld e, l                                       ; $6d56: $5d
    dec hl                                        ; $6d57: $2b
    ld h, c                                       ; $6d58: $61
    nop                                           ; $6d59: $00
    nop                                           ; $6d5a: $00
    dec hl                                        ; $6d5b: $2b
    ld e, l                                       ; $6d5c: $5d
    inc bc                                        ; $6d5d: $03
    ld b, $2b                                     ; $6d5e: $06 $2b
    ld h, c                                       ; $6d60: $61
    nop                                           ; $6d61: $00
    nop                                           ; $6d62: $00
    xor [hl]                                      ; $6d63: $ae
    add hl, de                                    ; $6d64: $19
    adc a                                         ; $6d65: $8f
    inc sp                                        ; $6d66: $33
    ld hl, $0101                                  ; $6d67: $21 $01 $01
    nop                                           ; $6d6a: $00
    ld e, $4f                                     ; $6d6b: $1e $4f
    jp hl                                         ; $6d6d: $e9


    ld e, b                                       ; $6d6e: $58
    ld d, e                                       ; $6d6f: $53
    dec d                                         ; $6d70: $15
    ld b, d                                       ; $6d71: $42
    nop                                           ; $6d72: $00
    or l                                          ; $6d73: $b5
    ld [de], a                                    ; $6d74: $12
    dec hl                                        ; $6d75: $2b
    ld h, c                                       ; $6d76: $61
    rst $38                                       ; $6d77: $ff
    inc de                                        ; $6d78: $13
    nop                                           ; $6d79: $00
    nop                                           ; $6d7a: $00
    dec hl                                        ; $6d7b: $2b
    ld h, c                                       ; $6d7c: $61
    rst $38                                       ; $6d7d: $ff
    ld a, a                                       ; $6d7e: $7f
    nop                                           ; $6d7f: $00
    jr nz, jr_0b2_6d82                            ; $6d80: $20 $00

jr_0b2_6d82:
    nop                                           ; $6d82: $00
    ld c, e                                       ; $6d83: $4b
    ld h, c                                       ; $6d84: $61
    rst $38                                       ; $6d85: $ff
    ld a, a                                       ; $6d86: $7f
    nop                                           ; $6d87: $00
    jr nz, jr_0b2_6dd5                            ; $6d88: $20 $4b

    ld h, c                                       ; $6d8a: $61
    ld c, h                                       ; $6d8b: $4c
    ld h, c                                       ; $6d8c: $61
    rst $38                                       ; $6d8d: $ff
    ld a, a                                       ; $6d8e: $7f
    nop                                           ; $6d8f: $00
    jr nz, jr_0b2_6d92                            ; $6d90: $20 $00

jr_0b2_6d92:
    nop                                           ; $6d92: $00
    ld c, e                                       ; $6d93: $4b
    ld h, c                                       ; $6d94: $61
    ld h, c                                       ; $6d95: $61
    ld bc, $0080                                  ; $6d96: $01 $80 $00
    ld b, b                                       ; $6d99: $40
    nop                                           ; $6d9a: $00
    adc c                                         ; $6d9b: $89
    dec de                                        ; $6d9c: $1b
    ld h, h                                       ; $6d9d: $64
    ld a, [bc]                                    ; $6d9e: $0a
    or b                                          ; $6d9f: $b0
    inc sp                                        ; $6da0: $33
    nop                                           ; $6da1: $00
    nop                                           ; $6da2: $00
    ld l, h                                       ; $6da3: $6c
    ld c, $4f                                     ; $6da4: $0e $4f
    scf                                           ; $6da6: $37
    rlca                                          ; $6da7: $07
    ld bc, $0042                                  ; $6da8: $01 $42 $00
    rst $38                                       ; $6dab: $ff
    cpl                                           ; $6dac: $2f
    ld c, h                                       ; $6dad: $4c
    ld h, c                                       ; $6dae: $61
    ld c, d                                       ; $6daf: $4a
    ld bc, $0000                                  ; $6db0: $01 $00 $00
    ld c, h                                       ; $6db3: $4c
    ld h, c                                       ; $6db4: $61
    rst $38                                       ; $6db5: $ff
    ld a, a                                       ; $6db6: $7f
    nop                                           ; $6db7: $00
    jr nz, jr_0b2_6dba                            ; $6db8: $20 $00

jr_0b2_6dba:
    nop                                           ; $6dba: $00
    ld c, h                                       ; $6dbb: $4c
    ld h, l                                       ; $6dbc: $65
    rst $38                                       ; $6dbd: $ff
    ld a, a                                       ; $6dbe: $7f
    nop                                           ; $6dbf: $00
    jr nz, jr_0b2_6dc2                            ; $6dc0: $20 $00

jr_0b2_6dc2:
    nop                                           ; $6dc2: $00
    ld c, h                                       ; $6dc3: $4c
    ld h, l                                       ; $6dc4: $65
    adc [hl]                                      ; $6dc5: $8e
    cpl                                           ; $6dc6: $2f
    inc bc                                        ; $6dc7: $03
    add hl, bc                                    ; $6dc8: $09
    nop                                           ; $6dc9: $00
    nop                                           ; $6dca: $00
    add l                                         ; $6dcb: $85
    ld c, $2e                                     ; $6dcc: $0e $2e
    cpl                                           ; $6dce: $2f
    ld hl, $6001                                  ; $6dcf: $21 $01 $60
    nop                                           ; $6dd2: $00
    and l                                         ; $6dd3: $a5
    ld a, [bc]                                    ; $6dd4: $0a

jr_0b2_6dd5:
    or b                                          ; $6dd5: $b0
    scf                                           ; $6dd6: $37
    jp z, $0022                                   ; $6dd7: $ca $22 $00

    nop                                           ; $6dda: $00
    add a                                         ; $6ddb: $87
    ld d, $03                                     ; $6ddc: $16 $03
    add hl, bc                                    ; $6dde: $09
    ld c, a                                       ; $6ddf: $4f
    inc sp                                        ; $6de0: $33
    ld h, e                                       ; $6de1: $63
    nop                                           ; $6de2: $00
    rst $38                                       ; $6de3: $ff
    ld e, e                                       ; $6de4: $5b
    adc $01                                       ; $6de5: $ce $01
    ld d, d                                       ; $6de7: $52
    ld [bc], a                                    ; $6de8: $02
    ld hl, $6c00                                  ; $6de9: $21 $00 $6c
    ld h, l                                       ; $6dec: $65
    rst $38                                       ; $6ded: $ff
    ld a, a                                       ; $6dee: $7f
    nop                                           ; $6def: $00
    jr nz, jr_0b2_6df2                            ; $6df0: $20 $00

jr_0b2_6df2:
    nop                                           ; $6df2: $00
    ld l, l                                       ; $6df3: $6d
    ld h, l                                       ; $6df4: $65
    rst $38                                       ; $6df5: $ff
    ld a, a                                       ; $6df6: $7f
    nop                                           ; $6df7: $00
    jr nz, @+$22                                  ; $6df8: $20 $20

    nop                                           ; $6dfa: $00
    ld l, l                                       ; $6dfb: $6d
    ld h, l                                       ; $6dfc: $65
    rst $28                                       ; $6dfd: $ef
    cpl                                           ; $6dfe: $2f
    and [hl]                                      ; $6dff: $a6
    ld de, $0000                                  ; $6e00: $11 $00 $00
    call nz, $c60d                                ; $6e03: $c4 $0d $c6
    ld [de], a                                    ; $6e06: $12
    dec bc                                        ; $6e07: $0b
    daa                                           ; $6e08: $27
    ld h, c                                       ; $6e09: $61
    nop                                           ; $6e0a: $00
    add [hl]                                      ; $6e0b: $86
    ld [de], a                                    ; $6e0c: $12

Jump_0b2_6e0d:
    ld hl, sp+$1f                                 ; $6e0d: $f8 $1f
    dec bc                                        ; $6e0f: $0b
    inc hl                                        ; $6e10: $23
    pop bc                                        ; $6e11: $c1
    nop                                           ; $6e12: $00
    call z, $d151                                 ; $6e13: $cc $51 $d1
    scf                                           ; $6e16: $37
    db $fc                                        ; $6e17: $fc
    ld l, e                                       ; $6e18: $6b
    ld hl, $5100                                  ; $6e19: $21 $00 $51
    ld [bc], a                                    ; $6e1c: $02
    rst $38                                       ; $6e1d: $ff
    ld l, a                                       ; $6e1e: $6f
    jr c, jr_0b2_6e24                             ; $6e1f: $38 $03

    nop                                           ; $6e21: $00
    nop                                           ; $6e22: $00
    rst $38                                       ; $6e23: $ff

jr_0b2_6e24:
    ld [hl], a                                    ; $6e24: $77
    nop                                           ; $6e25: $00
    jr nz, @-$59                                  ; $6e26: $20 $a5

    nop                                           ; $6e28: $00
    nop                                           ; $6e29: $00
    nop                                           ; $6e2a: $00
    adc l                                         ; $6e2b: $8d
    ld l, c                                       ; $6e2c: $69
    rst $38                                       ; $6e2d: $ff
    ld a, a                                       ; $6e2e: $7f
    nop                                           ; $6e2f: $00
    jr nz, jr_0b2_6e52                            ; $6e30: $20 $20

    nop                                           ; $6e32: $00
    adc l                                         ; $6e33: $8d
    ld l, c                                       ; $6e34: $69
    dec h                                         ; $6e35: $25
    ld c, $67                                     ; $6e36: $0e $67
    inc b                                         ; $6e38: $04
    ld h, h                                       ; $6e39: $64
    inc b                                         ; $6e3a: $04
    adc l                                         ; $6e3b: $8d
    cpl                                           ; $6e3c: $2f
    add a                                         ; $6e3d: $87
    ld d, $5f                                     ; $6e3e: $16 $5f
    ld e, e                                       ; $6e40: $5b
    nop                                           ; $6e41: $00
    nop                                           ; $6e42: $00
    ld c, e                                       ; $6e43: $4b
    inc hl                                        ; $6e44: $23
    ld e, c                                       ; $6e45: $59
    inc bc                                        ; $6e46: $03
    ld h, h                                       ; $6e47: $64
    dec c                                         ; $6e48: $0d
    jr nz, jr_0b2_6e4b                            ; $6e49: $20 $00

jr_0b2_6e4b:
    ld e, d                                       ; $6e4b: $5a
    ld de, $37f1                                  ; $6e4c: $11 $f1 $37
    rst $38                                       ; $6e4f: $ff
    inc bc                                        ; $6e50: $03
    nop                                           ; $6e51: $00

jr_0b2_6e52:
    nop                                           ; $6e52: $00
    add hl, sp                                    ; $6e53: $39
    inc bc                                        ; $6e54: $03
    adc [hl]                                      ; $6e55: $8e
    ld l, c                                       ; $6e56: $69
    ld c, d                                       ; $6e57: $4a
    ld bc, $1c00                                  ; $6e58: $01 $00 $1c
    sbc $73                                       ; $6e5b: $de $73
    add h                                         ; $6e5d: $84
    inc b                                         ; $6e5e: $04
    rst $28                                       ; $6e5f: $ef
    ld bc, $0000                                  ; $6e60: $01 $00 $00
    adc [hl]                                      ; $6e63: $8e
    ld l, c                                       ; $6e64: $69
    rst $38                                       ; $6e65: $ff
    ld a, a                                       ; $6e66: $7f
    nop                                           ; $6e67: $00
    jr nz, jr_0b2_6e6a                            ; $6e68: $20 $00

jr_0b2_6e6a:
    nop                                           ; $6e6a: $00
    adc [hl]                                      ; $6e6b: $8e
    ld l, c                                       ; $6e6c: $69
    ld e, a                                       ; $6e6d: $5f
    ld d, e                                       ; $6e6e: $53
    ld h, a                                       ; $6e6f: $67
    inc b                                         ; $6e70: $04
    add b                                         ; $6e71: $80
    nop                                           ; $6e72: $00
    pop af                                        ; $6e73: $f1
    scf                                           ; $6e74: $37
    ld e, a                                       ; $6e75: $5f
    ld e, e                                       ; $6e76: $5b
    xor h                                         ; $6e77: $ac
    inc c                                         ; $6e78: $0c
    ld b, b                                       ; $6e79: $40
    nop                                           ; $6e7a: $00
    sub b                                         ; $6e7b: $90
    scf                                           ; $6e7c: $37
    push bc                                       ; $6e7d: $c5
    ld de, $000a                                  ; $6e7e: $11 $0a $00
    nop                                           ; $6e81: $00
    nop                                           ; $6e82: $00
    adc a                                         ; $6e83: $8f
    inc sp                                        ; $6e84: $33
    xor [hl]                                      ; $6e85: $ae
    ld l, l                                       ; $6e86: $6d
    inc a                                         ; $6e87: $3c
    ld a, [hl+]                                   ; $6e88: $2a
    nop                                           ; $6e89: $00
    nop                                           ; $6e8a: $00
    xor [hl]                                      ; $6e8b: $ae
    ld l, l                                       ; $6e8c: $6d
    ld sp, $af02                                  ; $6e8d: $31 $02 $af
    ld l, l                                       ; $6e90: $6d
    nop                                           ; $6e91: $00
    jr nz, jr_0b2_6eac                            ; $6e92: $20 $18

    rrca                                          ; $6e94: $0f
    sbc $6b                                       ; $6e95: $de $6b
    and l                                         ; $6e97: $a5
    nop                                           ; $6e98: $00
    nop                                           ; $6e99: $00
    nop                                           ; $6e9a: $00
    xor a                                         ; $6e9b: $af
    ld l, l                                       ; $6e9c: $6d
    rst $38                                       ; $6e9d: $ff
    ld a, a                                       ; $6e9e: $7f
    nop                                           ; $6e9f: $00
    jr nz, jr_0b2_6ee8                            ; $6ea0: $20 $46

    inc b                                         ; $6ea2: $04
    xor a                                         ; $6ea3: $af
    ld l, l                                       ; $6ea4: $6d
    ld e, d                                       ; $6ea5: $5a
    ld [hl], $9f                                  ; $6ea6: $36 $9f
    ld h, a                                       ; $6ea8: $67
    nop                                           ; $6ea9: $00
    nop                                           ; $6eaa: $00
    ld c, a                                       ; $6eab: $4f

jr_0b2_6eac:
    inc sp                                        ; $6eac: $33
    rra                                           ; $6ead: $1f
    ld c, e                                       ; $6eae: $4b
    rlca                                          ; $6eaf: $07
    add hl, bc                                    ; $6eb0: $09
    and b                                         ; $6eb1: $a0
    nop                                           ; $6eb2: $00
    or d                                          ; $6eb3: $b2
    dec sp                                        ; $6eb4: $3b
    ld c, c                                       ; $6eb5: $49
    ld a, [de]                                    ; $6eb6: $1a
    db $d3                                        ; $6eb7: $d3
    nop                                           ; $6eb8: $00
    ld h, c                                       ; $6eb9: $61
    nop                                           ; $6eba: $00
    xor a                                         ; $6ebb: $af
    ld l, l                                       ; $6ebc: $6d
    sub d                                         ; $6ebd: $92
    dec sp                                        ; $6ebe: $3b
    ld e, [hl]                                    ; $6ebf: $5e
    ld a, [hl+]                                   ; $6ec0: $2a
    xor a                                         ; $6ec1: $af
    ld l, l                                       ; $6ec2: $6d
    rst $08                                       ; $6ec3: $cf
    ld l, l                                       ; $6ec4: $6d
    sub d                                         ; $6ec5: $92
    dec sp                                        ; $6ec6: $3b
    ld e, [hl]                                    ; $6ec7: $5e
    ld a, [hl+]                                   ; $6ec8: $2a
    nop                                           ; $6ec9: $00
    nop                                           ; $6eca: $00
    jr jr_0b2_6f10                                ; $6ecb: $18 $43

    nop                                           ; $6ecd: $00
    inc e                                         ; $6ece: $1c
    rst $38                                       ; $6ecf: $ff
    ld a, a                                       ; $6ed0: $7f
    nop                                           ; $6ed1: $00
    nop                                           ; $6ed2: $00
    rst $38                                       ; $6ed3: $ff
    ld a, a                                       ; $6ed4: $7f
    nop                                           ; $6ed5: $00
    jr nz, @+$69                                  ; $6ed6: $20 $67

    inc b                                         ; $6ed8: $04
    ld h, a                                       ; $6ed9: $67
    inc b                                         ; $6eda: $04
    ld d, $36                                     ; $6edb: $16 $36
    rst $38                                       ; $6edd: $ff
    ld [hl], e                                    ; $6ede: $73
    rst $38                                       ; $6edf: $ff
    ld c, d                                       ; $6ee0: $4a
    nop                                           ; $6ee1: $00
    nop                                           ; $6ee2: $00
    ldh a, [rNR42]                                ; $6ee3: $f0 $21
    sbc d                                         ; $6ee5: $9a
    ld c, a                                       ; $6ee6: $4f
    nop                                           ; $6ee7: $00

jr_0b2_6ee8:
    ld bc, $0000                                  ; $6ee8: $01 $00 $00
    ld b, [hl]                                    ; $6eeb: $46
    ld [de], a                                    ; $6eec: $12
    di                                            ; $6eed: $f3
    ccf                                           ; $6eee: $3f
    ld e, d                                       ; $6eef: $5a
    ld de, $0060                                  ; $6ef0: $11 $60 $00
    ret nc                                        ; $6ef3: $d0

    ld [hl], c                                    ; $6ef4: $71
    sub c                                         ; $6ef5: $91
    scf                                           ; $6ef6: $37
    add hl, bc                                    ; $6ef7: $09
    rla                                           ; $6ef8: $17
    ret nc                                        ; $6ef9: $d0

    ld [hl], c                                    ; $6efa: $71
    ret nc                                        ; $6efb: $d0

    ld [hl], c                                    ; $6efc: $71
    sub c                                         ; $6efd: $91
    scf                                           ; $6efe: $37
    add hl, bc                                    ; $6eff: $09
    rla                                           ; $6f00: $17
    nop                                           ; $6f01: $00
    nop                                           ; $6f02: $00
    rst $38                                       ; $6f03: $ff
    ld a, a                                       ; $6f04: $7f
    nop                                           ; $6f05: $00
    jr nz, jr_0b2_6f11                            ; $6f06: $20 $09

    rla                                           ; $6f08: $17
    nop                                           ; $6f09: $00
    jr nz, jr_0b2_6f1d                            ; $6f0a: $20 $11

    ld a, $5e                                     ; $6f0c: $3e $5e
    ld e, a                                       ; $6f0e: $5f
    ld h, a                                       ; $6f0f: $67

jr_0b2_6f10:
    inc b                                         ; $6f10: $04

jr_0b2_6f11:
    inc h                                         ; $6f11: $24
    nop                                           ; $6f12: $00
    adc e                                         ; $6f13: $8b
    dec [hl]                                      ; $6f14: $35
    rst $38                                       ; $6f15: $ff
    ld b, d                                       ; $6f16: $42
    rst $10                                       ; $6f17: $d7
    ld hl, $0000                                  ; $6f18: $21 $00 $00
    ld [hl-], a                                   ; $6f1b: $32
    ccf                                           ; $6f1c: $3f

jr_0b2_6f1d:
    ld b, e                                       ; $6f1d: $43
    add hl, bc                                    ; $6f1e: $09
    or $4b                                        ; $6f1f: $f6 $4b
    ld hl, $9204                                  ; $6f21: $21 $04 $92
    dec sp                                        ; $6f24: $3b
    inc h                                         ; $6f25: $24
    ld a, [bc]                                    ; $6f26: $0a
    add $0e                                       ; $6f27: $c6 $0e
    and b                                         ; $6f29: $a0
    nop                                           ; $6f2a: $00
    ldh a, [$71]                                  ; $6f2b: $f0 $71
    rlca                                          ; $6f2d: $07
    inc de                                        ; $6f2e: $13
    or e                                          ; $6f2f: $b3
    ccf                                           ; $6f30: $3f

jr_0b2_6f31:
    nop                                           ; $6f31: $00
    nop                                           ; $6f32: $00
    ldh a, [$71]                                  ; $6f33: $f0 $71
    pop af                                        ; $6f35: $f1
    ld [hl], c                                    ; $6f36: $71
    pop af                                        ; $6f37: $f1
    ld [hl], l                                    ; $6f38: $75
    nop                                           ; $6f39: $00
    nop                                           ; $6f3a: $00
    rst $38                                       ; $6f3b: $ff
    ld a, a                                       ; $6f3c: $7f
    nop                                           ; $6f3d: $00
    jr nz, jr_0b2_6f31                            ; $6f3e: $20 $f1

    ld [hl], l                                    ; $6f40: $75
    nop                                           ; $6f41: $00
    jr nz, jr_0b2_6fc3                            ; $6f42: $20 $7f

    ld d, a                                       ; $6f44: $57
    ld h, a                                       ; $6f45: $67
    inc b                                         ; $6f46: $04
    sub e                                         ; $6f47: $93
    dec e                                         ; $6f48: $1d
    nop                                           ; $6f49: $00
    nop                                           ; $6f4a: $00
    rla                                           ; $6f4b: $17
    ld [hl-], a                                   ; $6f4c: $32
    ld a, [hl]                                    ; $6f4d: $7e
    ld e, e                                       ; $6f4e: $5b
    ld h, e                                       ; $6f4f: $63
    nop                                           ; $6f50: $00
    nop                                           ; $6f51: $00
    nop                                           ; $6f52: $00
    ld b, e                                       ; $6f53: $43
    add hl, bc                                    ; $6f54: $09
    ld b, $12                                     ; $6f55: $06 $12

jr_0b2_6f57:
    pop bc                                        ; $6f57: $c1
    nop                                           ; $6f58: $00
    inc h                                         ; $6f59: $24
    ld c, $b2                                     ; $6f5a: $0e $b2
    dec sp                                        ; $6f5c: $3b
    jr z, jr_0b2_6f76                             ; $6f5d: $28 $17

    and l                                         ; $6f5f: $a5
    ld c, $00                                     ; $6f60: $0e $00
    nop                                           ; $6f62: $00
    pop af                                        ; $6f63: $f1
    ld [hl], l                                    ; $6f64: $75
    xor h                                         ; $6f65: $ac
    daa                                           ; $6f66: $27
    ld [hl], d                                    ; $6f67: $72
    ccf                                           ; $6f68: $3f
    nop                                           ; $6f69: $00
    nop                                           ; $6f6a: $00
    pop af                                        ; $6f6b: $f1
    ld [hl], l                                    ; $6f6c: $75
    rst $38                                       ; $6f6d: $ff
    ld a, a                                       ; $6f6e: $7f
    ld de, $0076                                  ; $6f6f: $11 $76 $00
    nop                                           ; $6f72: $00
    rst $38                                       ; $6f73: $ff
    ld a, a                                       ; $6f74: $7f
    nop                                           ; $6f75: $00

jr_0b2_6f76:
    jr nz, jr_0b2_6f89                            ; $6f76: $20 $11

    halt                                          ; $6f78: $76
    nop                                           ; $6f79: $00
    jr nz, jr_0b2_6f57                            ; $6f7a: $20 $db

    ld c, d                                       ; $6f7c: $4a
    ld h, a                                       ; $6f7d: $67
    ld [$256f], sp                                ; $6f7e: $08 $6f $25
    ld b, h                                       ; $6f81: $44
    nop                                           ; $6f82: $00
    ld a, h                                       ; $6f83: $7c
    ld [hl], $72                                  ; $6f84: $36 $72
    ld hl, $577f                                  ; $6f86: $21 $7f $57

jr_0b2_6f89:
    nop                                           ; $6f89: $00
    nop                                           ; $6f8a: $00
    add d                                         ; $6f8b: $82
    ld bc, $0a44                                  ; $6f8c: $01 $44 $0a
    jp nz, $c400                                  ; $6f8f: $c2 $00 $c4

    inc b                                         ; $6f92: $04

jr_0b2_6f93:
    rst $18                                       ; $6f93: $df
    ccf                                           ; $6f94: $3f
    dec b                                         ; $6f95: $05
    rrca                                          ; $6f96: $0f
    jr nc, jr_0b2_6fb3                            ; $6f97: $30 $1a

    nop                                           ; $6f99: $00
    nop                                           ; $6f9a: $00
    ld de, $6f76                                  ; $6f9b: $11 $76 $6f
    inc sp                                        ; $6f9e: $33
    add h                                         ; $6f9f: $84
    ld c, $00                                     ; $6fa0: $0e $00
    nop                                           ; $6fa2: $00
    ld [de], a                                    ; $6fa3: $12
    halt                                          ; $6fa4: $76
    push hl                                       ; $6fa5: $e5
    add hl, bc                                    ; $6fa6: $09
    rst $38                                       ; $6fa7: $ff
    ld a, a                                       ; $6fa8: $7f
    nop                                           ; $6fa9: $00
    nop                                           ; $6faa: $00
    nop                                           ; $6fab: $00
    jr nz, jr_0b2_6f93                            ; $6fac: $20 $e5

    add hl, bc                                    ; $6fae: $09
    rst $38                                       ; $6faf: $ff
    ld a, a                                       ; $6fb0: $7f
    inc hl                                        ; $6fb1: $23
    inc d                                         ; $6fb2: $14

jr_0b2_6fb3:
    db $dd                                        ; $6fb3: $dd
    ld b, [hl]                                    ; $6fb4: $46
    ld [hl], e                                    ; $6fb5: $73
    add hl, de                                    ; $6fb6: $19
    rst $38                                       ; $6fb7: $ff
    ld [hl], e                                    ; $6fb8: $73
    ld [hl], e                                    ; $6fb9: $73
    add hl, de                                    ; $6fba: $19
    rst $38                                       ; $6fbb: $ff
    ld c, d                                       ; $6fbc: $4a
    dec sp                                        ; $6fbd: $3b
    ld l, $5f                                     ; $6fbe: $2e $5f
    ld d, e                                       ; $6fc0: $53
    and e                                         ; $6fc1: $a3
    nop                                           ; $6fc2: $00

jr_0b2_6fc3:
    rst $38                                       ; $6fc3: $ff
    ld [hl], a                                    ; $6fc4: $77
    and d                                         ; $6fc5: $a2
    dec b                                         ; $6fc6: $05
    ld h, h                                       ; $6fc7: $64
    ld a, [bc]                                    ; $6fc8: $0a
    nop                                           ; $6fc9: $00
    nop                                           ; $6fca: $00
    push hl                                       ; $6fcb: $e5
    ld c, $37                                     ; $6fcc: $0e $37
    ld l, $23                                     ; $6fce: $2e $23
    add hl, bc                                    ; $6fd0: $09
    nop                                           ; $6fd1: $00
    nop                                           ; $6fd2: $00
    push hl                                       ; $6fd3: $e5
    dec c                                         ; $6fd4: $0d
    ld b, c                                       ; $6fd5: $41
    ld bc, $12c7                                  ; $6fd6: $01 $c7 $12
    nop                                           ; $6fd9: $00
    nop                                           ; $6fda: $00
    ld [de], a                                    ; $6fdb: $12
    ld a, d                                       ; $6fdc: $7a
    rst $38                                       ; $6fdd: $ff
    ld a, a                                       ; $6fde: $7f
    and e                                         ; $6fdf: $a3
    dec b                                         ; $6fe0: $05
    nop                                           ; $6fe1: $00
    nop                                           ; $6fe2: $00
    nop                                           ; $6fe3: $00
    jr nz, @+$01                                  ; $6fe4: $20 $ff

    ld a, a                                       ; $6fe6: $7f
    and e                                         ; $6fe7: $a3
    dec b                                         ; $6fe8: $05
    nop                                           ; $6fe9: $00
    jr nz, jr_0b2_702a                            ; $6fea: $20 $3e

    ld d, e                                       ; $6fec: $53
    ld b, [hl]                                    ; $6fed: $46
    nop                                           ; $6fee: $00
    ld l, [hl]                                    ; $6fef: $6e
    add hl, hl                                    ; $6ff0: $29
    ld l, b                                       ; $6ff1: $68
    inc b                                         ; $6ff2: $04
    rst $30                                       ; $6ff3: $f7
    add hl, hl                                    ; $6ff4: $29
    ccf                                           ; $6ff5: $3f
    ld c, a                                       ; $6ff6: $4f
    ld sp, $2215                                  ; $6ff7: $31 $15 $22
    ld b, $67                                     ; $6ffa: $06 $67
    inc b                                         ; $6ffc: $04
    push bc                                       ; $6ffd: $c5
    ld a, [bc]                                    ; $6ffe: $0a
    inc de                                        ; $6fff: $13
    dec e                                         ; $7000: $1d
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    add h                                         ; $7003: $84
    ld a, [bc]                                    ; $7004: $0a
    ld [bc], a                                    ; $7005: $02
    dec bc                                        ; $7006: $0b
    ld b, $0f                                     ; $7007: $06 $0f
    ld bc, $a201                                  ; $7009: $01 $01 $a2
    dec b                                         ; $700c: $05
    inc b                                         ; $700d: $04
    ld a, [bc]                                    ; $700e: $0a
    ld h, d                                       ; $700f: $62
    dec b                                         ; $7010: $05
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    ld [de], a                                    ; $7013: $12
    ld a, d                                       ; $7014: $7a
    rst $38                                       ; $7015: $ff
    ld a, a                                       ; $7016: $7f
    ld h, d                                       ; $7017: $62
    ld bc, $2000                                  ; $7018: $01 $00 $20
    ld [de], a                                    ; $701b: $12
    ld a, d                                       ; $701c: $7a
    rst $38                                       ; $701d: $ff
    ld a, a                                       ; $701e: $7f
    ld h, d                                       ; $701f: $62
    ld bc, $1400                                  ; $7020: $01 $00 $14
    dec d                                         ; $7023: $15
    ld [hl], $67                                  ; $7024: $36 $67
    inc b                                         ; $7026: $04
    nop                                           ; $7027: $00
    jr nz, jr_0b2_702a                            ; $7028: $20 $00

jr_0b2_702a:
    nop                                           ; $702a: $00
    ld e, e                                       ; $702b: $5b
    ld [hl], $df                                  ; $702c: $36 $df
    ld [hl], a                                    ; $702e: $77
    ld b, a                                       ; $702f: $47
    inc b                                         ; $7030: $04
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
    xor a                                         ; $7033: $af
    nop                                           ; $7034: $00
    ld d, a                                       ; $7035: $57
    ld bc, $0120                                  ; $7036: $01 $20 $01
    nop                                           ; $7039: $00
    nop                                           ; $703a: $00
    inc a                                         ; $703b: $3c
    ld [hl+], a                                   ; $703c: $22
    add h                                         ; $703d: $84
    ld a, [bc]                                    ; $703e: $0a
    pop hl                                        ; $703f: $e1
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    ld hl, $a201                                  ; $7043: $21 $01 $a2
    dec b                                         ; $7046: $05
    ld h, h                                       ; $7047: $64
    ld a, [bc]                                    ; $7048: $0a
    nop                                           ; $7049: $00
    nop                                           ; $704a: $00
    ld [hl-], a                                   ; $704b: $32
    ld a, d                                       ; $704c: $7a
    rst $38                                       ; $704d: $ff
    ld a, a                                       ; $704e: $7f
    nop                                           ; $704f: $00
    jr nz, jr_0b2_7052                            ; $7050: $20 $00

jr_0b2_7052:
    jr nz, jr_0b2_7086                            ; $7052: $20 $32

    ld a, d                                       ; $7054: $7a
    rst $38                                       ; $7055: $ff
    ld a, a                                       ; $7056: $7f
    nop                                           ; $7057: $00
    jr nz, jr_0b2_705a                            ; $7058: $20 $00

jr_0b2_705a:
    jr nz, @-$4f                                  ; $705a: $20 $af

    nop                                           ; $705c: $00
    ld d, a                                       ; $705d: $57
    ld bc, $0120                                  ; $705e: $01 $20 $01
    ld hl, $ff00                                  ; $7061: $21 $00 $ff
    ld a, a                                       ; $7064: $7f
    ret z                                         ; $7065: $c8

    add hl, bc                                    ; $7066: $09
    nop                                           ; $7067: $00
    jr nz, jr_0b2_70af                            ; $7068: $20 $45

    nop                                           ; $706a: $00
    pop af                                        ; $706b: $f1
    nop                                           ; $706c: $00
    xor l                                         ; $706d: $ad
    nop                                           ; $706e: $00
    dec [hl]                                      ; $706f: $35
    ld bc, $0020                                  ; $7070: $01 $20 $00
    jp nc, Jump_0b2_5c3b                          ; $7073: $d2 $3b $5c

    ld h, $e4                                     ; $7076: $26 $e4
    ld b, $00                                     ; $7078: $06 $00
    nop                                           ; $707a: $00
    ld [hl-], a                                   ; $707b: $32
    ld a, d                                       ; $707c: $7a
    ld e, h                                       ; $707d: $5c
    ld h, $e4                                     ; $707e: $26 $e4
    ld b, $00                                     ; $7080: $06 $00
    nop                                           ; $7082: $00
    ld [hl-], a                                   ; $7083: $32
    ld a, d                                       ; $7084: $7a

jr_0b2_7085:
    rst $38                                       ; $7085: $ff

jr_0b2_7086:
    ld a, a                                       ; $7086: $7f
    nop                                           ; $7087: $00
    jr nz, jr_0b2_708a                            ; $7088: $20 $00

jr_0b2_708a:
    jr nz, jr_0b2_70be                            ; $708a: $20 $32

    ld a, d                                       ; $708c: $7a
    rst $38                                       ; $708d: $ff
    ld a, a                                       ; $708e: $7f
    nop                                           ; $708f: $00
    jr nz, jr_0b2_7092                            ; $7090: $20 $00

jr_0b2_7092:
    jr nz, jr_0b2_7085                            ; $7092: $20 $f1

    nop                                           ; $7094: $00
    xor l                                         ; $7095: $ad
    nop                                           ; $7096: $00
    dec [hl]                                      ; $7097: $35
    ld bc, $0000                                  ; $7098: $01 $00 $00

jr_0b2_709b:
    rst $30                                       ; $709b: $f7
    ld b, $ff                                     ; $709c: $06 $ff
    ld a, a                                       ; $709e: $7f
    nop                                           ; $709f: $00
    jr nz, jr_0b2_70a2                            ; $70a0: $20 $00

jr_0b2_70a2:
    nop                                           ; $70a2: $00
    rst $08                                       ; $70a3: $cf
    nop                                           ; $70a4: $00
    ld a, c                                       ; $70a5: $79
    dec b                                         ; $70a6: $05
    ld h, a                                       ; $70a7: $67
    nop                                           ; $70a8: $00
    nop                                           ; $70a9: $00
    nop                                           ; $70aa: $00
    rst $38                                       ; $70ab: $ff
    ld a, a                                       ; $70ac: $7f
    rst $38                                       ; $70ad: $ff
    ld a, a                                       ; $70ae: $7f

jr_0b2_70af:
    nop                                           ; $70af: $00
    jr nz, jr_0b2_70b2                            ; $70b0: $20 $00

jr_0b2_70b2:
    nop                                           ; $70b2: $00
    rst $38                                       ; $70b3: $ff
    ld a, a                                       ; $70b4: $7f
    rst $38                                       ; $70b5: $ff
    ld a, a                                       ; $70b6: $7f
    nop                                           ; $70b7: $00
    jr nz, jr_0b2_70ba                            ; $70b8: $20 $00

jr_0b2_70ba:
    nop                                           ; $70ba: $00
    rst $38                                       ; $70bb: $ff
    ld a, a                                       ; $70bc: $7f
    nop                                           ; $70bd: $00

jr_0b2_70be:
    jr nz, jr_0b2_70c0                            ; $70be: $20 $00

jr_0b2_70c0:
    jr nz, jr_0b2_70c2                            ; $70c0: $20 $00

jr_0b2_70c2:
    jr nz, @+$01                                  ; $70c2: $20 $ff

    ld a, a                                       ; $70c4: $7f
    nop                                           ; $70c5: $00
    jr nz, jr_0b2_70c8                            ; $70c6: $20 $00

jr_0b2_70c8:
    jr nz, jr_0b2_70ca                            ; $70c8: $20 $00

jr_0b2_70ca:
    jr nz, jr_0b2_709b                            ; $70ca: $20 $cf

    nop                                           ; $70cc: $00
    ld a, c                                       ; $70cd: $79
    dec b                                         ; $70ce: $05
    ld h, a                                       ; $70cf: $67
    nop                                           ; $70d0: $00
    nop                                           ; $70d1: $00
    nop                                           ; $70d2: $00
    rst $38                                       ; $70d3: $ff
    ld a, a                                       ; $70d4: $7f
    nop                                           ; $70d5: $00
    jr nz, jr_0b2_713f                            ; $70d6: $20 $67

    nop                                           ; $70d8: $00
    nop                                           ; $70d9: $00
    nop                                           ; $70da: $00
    rst $38                                       ; $70db: $ff
    ld a, a                                       ; $70dc: $7f
    nop                                           ; $70dd: $00
    jr nz, jr_0b2_7147                            ; $70de: $20 $67

    nop                                           ; $70e0: $00
    nop                                           ; $70e1: $00
    nop                                           ; $70e2: $00
    nop                                           ; $70e3: $00
    jr nz, jr_0b2_70e6                            ; $70e4: $20 $00

jr_0b2_70e6:
    jr nz, jr_0b2_70e8                            ; $70e6: $20 $00

jr_0b2_70e8:
    jr nz, jr_0b2_70ea                            ; $70e8: $20 $00

jr_0b2_70ea:
    nop                                           ; $70ea: $00

jr_0b2_70eb:
    nop                                           ; $70eb: $00
    jr nz, jr_0b2_70ee                            ; $70ec: $20 $00

jr_0b2_70ee:
    jr nz, jr_0b2_70f0                            ; $70ee: $20 $00

jr_0b2_70f0:
    jr nz, jr_0b2_70f2                            ; $70f0: $20 $00

jr_0b2_70f2:
    nop                                           ; $70f2: $00

jr_0b2_70f3:
    nop                                           ; $70f3: $00
    jr nz, jr_0b2_70f6                            ; $70f4: $20 $00

jr_0b2_70f6:
    jr nz, jr_0b2_70f8                            ; $70f6: $20 $00

jr_0b2_70f8:
    jr nz, jr_0b2_70fa                            ; $70f8: $20 $00

jr_0b2_70fa:
    jr nz, jr_0b2_70fc                            ; $70fa: $20 $00

jr_0b2_70fc:
    jr nz, jr_0b2_70fe                            ; $70fc: $20 $00

jr_0b2_70fe:
    jr nz, jr_0b2_7100                            ; $70fe: $20 $00

jr_0b2_7100:
    jr nz, jr_0b2_7102                            ; $7100: $20 $00

jr_0b2_7102:
    jr nz, jr_0b2_7104                            ; $7102: $20 $00

jr_0b2_7104:
    jr nz, jr_0b2_7106                            ; $7104: $20 $00

jr_0b2_7106:
    jr nz, @+$05                                  ; $7106: $20 $03

    jr jr_0b2_710a                                ; $7108: $18 $00

jr_0b2_710a:
    jr nz, jr_0b2_710c                            ; $710a: $20 $00

jr_0b2_710c:
    jr nz, jr_0b2_710e                            ; $710c: $20 $00

jr_0b2_710e:
    jr nz, jr_0b2_7113                            ; $710e: $20 $03

    jr jr_0b2_7112                                ; $7110: $18 $00

jr_0b2_7112:
    inc b                                         ; $7112: $04

jr_0b2_7113:
    xor a                                         ; $7113: $af
    ld a, [hl-]                                   ; $7114: $3a
    daa                                           ; $7115: $27
    add hl, de                                    ; $7116: $19
    nop                                           ; $7117: $00
    jr nz, jr_0b2_711a                            ; $7118: $20 $00

jr_0b2_711a:
    nop                                           ; $711a: $00
    dec l                                         ; $711b: $2d
    ld [hl-], a                                   ; $711c: $32
    nop                                           ; $711d: $00
    jr nz, jr_0b2_70f3                            ; $711e: $20 $d3

    ld c, a                                       ; $7120: $4f
    nop                                           ; $7121: $00
    jr nz, jr_0b2_7151                            ; $7122: $20 $2d

    ld [hl-], a                                   ; $7124: $32
    nop                                           ; $7125: $00
    jr nz, @-$2b                                  ; $7126: $20 $d3

    ld c, a                                       ; $7128: $4f
    nop                                           ; $7129: $00
    jr nz, jr_0b2_7159                            ; $712a: $20 $2d

    ld [hl-], a                                   ; $712c: $32
    nop                                           ; $712d: $00
    jr nz, @-$2b                                  ; $712e: $20 $d3

    ld c, a                                       ; $7130: $4f
    nop                                           ; $7131: $00
    jr nz, jr_0b2_7161                            ; $7132: $20 $2d

    ld [hl-], a                                   ; $7134: $32
    nop                                           ; $7135: $00
    jr nz, @-$2b                                  ; $7136: $20 $d3

    ld c, a                                       ; $7138: $4f
    nop                                           ; $7139: $00
    jr nz, jr_0b2_70eb                            ; $713a: $20 $af

    ld a, [hl-]                                   ; $713c: $3a
    daa                                           ; $713d: $27
    add hl, de                                    ; $713e: $19

jr_0b2_713f:
    nop                                           ; $713f: $00
    jr nz, jr_0b2_7142                            ; $7140: $20 $00

jr_0b2_7142:
    jr nz, jr_0b2_70f3                            ; $7142: $20 $af

    ld a, [hl-]                                   ; $7144: $3a
    daa                                           ; $7145: $27

jr_0b2_7146:
    add hl, de                                    ; $7146: $19

jr_0b2_7147:
    nop                                           ; $7147: $00
    jr nz, jr_0b2_714a                            ; $7148: $20 $00

jr_0b2_714a:
    inc b                                         ; $714a: $04
    ld h, l                                       ; $714b: $65
    ld a, [hl+]                                   ; $714c: $2a
    dec l                                         ; $714d: $2d

jr_0b2_714e:
    ccf                                           ; $714e: $3f
    db $d3                                        ; $714f: $d3
    ld c, a                                       ; $7150: $4f

jr_0b2_7151:
    nop                                           ; $7151: $00
    inc b                                         ; $7152: $04
    call z, $f736                                 ; $7153: $cc $36 $f7
    ld e, a                                       ; $7156: $5f
    jr nz, jr_0b2_7166                            ; $7157: $20 $0d

jr_0b2_7159:
    nop                                           ; $7159: $00
    inc b                                         ; $715a: $04
    nop                                           ; $715b: $00
    jr nz, @-$07                                  ; $715c: $20 $f7

    ld e, a                                       ; $715e: $5f
    jr nz, jr_0b2_716e                            ; $715f: $20 $0d

jr_0b2_7161:
    nop                                           ; $7161: $00
    jr nz, jr_0b2_7164                            ; $7162: $20 $00

jr_0b2_7164:
    jr nz, @-$07                                  ; $7164: $20 $f7

jr_0b2_7166:
    ld e, a                                       ; $7166: $5f
    jr nz, jr_0b2_7176                            ; $7167: $20 $0d

jr_0b2_7169:
    nop                                           ; $7169: $00
    jr nz, jr_0b2_716c                            ; $716a: $20 $00

jr_0b2_716c:
    jr nz, @-$07                                  ; $716c: $20 $f7

jr_0b2_716e:
    ld e, a                                       ; $716e: $5f
    jr nz, jr_0b2_717e                            ; $716f: $20 $0d

jr_0b2_7171:
    nop                                           ; $7171: $00
    jr nz, jr_0b2_71d9                            ; $7172: $20 $65

    ld a, [hl+]                                   ; $7174: $2a
    dec l                                         ; $7175: $2d

jr_0b2_7176:
    ccf                                           ; $7176: $3f
    db $d3                                        ; $7177: $d3
    ld c, a                                       ; $7178: $4f
    nop                                           ; $7179: $00
    inc b                                         ; $717a: $04
    nop                                           ; $717b: $00
    jr nz, @+$2f                                  ; $717c: $20 $2d

jr_0b2_717e:
    ccf                                           ; $717e: $3f
    db $d3                                        ; $717f: $d3
    ld c, a                                       ; $7180: $4f
    ld h, c                                       ; $7181: $61
    ld [$36aa], sp                                ; $7182: $08 $aa $36
    jp nc, $a84f                                  ; $7185: $d2 $4f $a8

jr_0b2_7188:
    ld hl, $0000                                  ; $7188: $21 $00 $00
    xor d                                         ; $718b: $aa
    ld [hl-], a                                   ; $718c: $32
    jp nc, Jump_000_234b                          ; $718d: $d2 $4b $23

    dec d                                         ; $7190: $15
    nop                                           ; $7191: $00
    inc b                                         ; $7192: $04
    ld d, l                                       ; $7193: $55
    ld [hl], d                                    ; $7194: $72
    xor b                                         ; $7195: $a8
    inc [hl]                                      ; $7196: $34
    nop                                           ; $7197: $00
    jr nz, jr_0b2_719a                            ; $7198: $20 $00

jr_0b2_719a:
    inc b                                         ; $719a: $04
    nop                                           ; $719b: $00
    jr nz, jr_0b2_7146                            ; $719c: $20 $a8

    inc [hl]                                      ; $719e: $34
    nop                                           ; $719f: $00
    jr nz, jr_0b2_71a2                            ; $71a0: $20 $00

jr_0b2_71a2:
    jr nz, jr_0b2_71a4                            ; $71a2: $20 $00

jr_0b2_71a4:
    jr nz, jr_0b2_714e                            ; $71a4: $20 $a8

    inc [hl]                                      ; $71a6: $34
    nop                                           ; $71a7: $00
    jr nz, jr_0b2_71aa                            ; $71a8: $20 $00

jr_0b2_71aa:
    jr nz, @+$45                                  ; $71aa: $20 $43

    nop                                           ; $71ac: $00
    jp nc, $a84f                                  ; $71ad: $d2 $4f $a8

    ld hl, $0400                                  ; $71b0: $21 $00 $04
    nop                                           ; $71b3: $00
    jr nz, jr_0b2_7188                            ; $71b4: $20 $d2

    ld c, a                                       ; $71b6: $4f
    xor b                                         ; $71b7: $a8
    ld hl, $0020                                  ; $71b8: $21 $20 $00
    ld a, [c]                                     ; $71bb: $f2
    ld d, e                                       ; $71bc: $53
    nop                                           ; $71bd: $00
    add hl, bc                                    ; $71be: $09
    ld h, l                                       ; $71bf: $65
    add hl, de                                    ; $71c0: $19
    nop                                           ; $71c1: $00
    nop                                           ; $71c2: $00
    adc e                                         ; $71c3: $8b
    ld [hl-], a                                   ; $71c4: $32
    ld h, h                                       ; $71c5: $64
    dec d                                         ; $71c6: $15
    ld d, b                                       ; $71c7: $50
    ld b, e                                       ; $71c8: $43
    ld b, d                                       ; $71c9: $42
    db $10                                        ; $71ca: $10
    ld c, l                                       ; $71cb: $4d
    ld a, [hl-]                                   ; $71cc: $3a
    ld l, a                                       ; $71cd: $6f
    ld e, l                                       ; $71ce: $5d
    inc [hl]                                      ; $71cf: $34
    ld [hl], d                                    ; $71d0: $72
    nop                                           ; $71d1: $00
    inc b                                         ; $71d2: $04
    ld c, a                                       ; $71d3: $4f
    ld h, c                                       ; $71d4: $61
    nop                                           ; $71d5: $00
    jr nz, jr_0b2_7169                            ; $71d6: $20 $91

    ld l, c                                       ; $71d8: $69

jr_0b2_71d9:
    nop                                           ; $71d9: $00
    jr nz, jr_0b2_722b                            ; $71da: $20 $4f

    ld h, c                                       ; $71dc: $61
    nop                                           ; $71dd: $00
    jr nz, jr_0b2_7171                            ; $71de: $20 $91

    ld l, c                                       ; $71e0: $69
    nop                                           ; $71e1: $00
    jr nz, jr_0b2_719a                            ; $71e2: $20 $b6

    dec c                                         ; $71e4: $0d
    ld b, e                                       ; $71e5: $43
    nop                                           ; $71e6: $00
    cp a                                          ; $71e7: $bf
    ld h, $00                                     ; $71e8: $26 $00
    nop                                           ; $71ea: $00
    adc c                                         ; $71eb: $89
    ld b, b                                       ; $71ec: $40
    nop                                           ; $71ed: $00
    jr nz, @-$3f                                  ; $71ee: $20 $bf

    ld h, $00                                     ; $71f0: $26 $00
    nop                                           ; $71f2: $00
    xor h                                         ; $71f3: $ac
    ld a, [hl-]                                   ; $71f4: $3a
    db $d3                                        ; $71f5: $d3
    ld c, a                                       ; $71f6: $4f
    ld b, l                                       ; $71f7: $45
    dec d                                         ; $71f8: $15
    nop                                           ; $71f9: $00
    nop                                           ; $71fa: $00
    adc h                                         ; $71fb: $8c
    ld [hl], $46                                  ; $71fc: $36 $46
    ld de, $4b71                                  ; $71fe: $11 $71 $4b
    ld bc, $6710                                  ; $7201: $01 $10 $67
    inc a                                         ; $7204: $3c
    inc c                                         ; $7205: $0c
    ld d, l                                       ; $7206: $55
    ld b, e                                       ; $7207: $43

jr_0b2_7208:
    add hl, de                                    ; $7208: $19
    nop                                           ; $7209: $00

jr_0b2_720a:
    inc b                                         ; $720a: $04

jr_0b2_720b:
    dec h                                         ; $720b: $25
    jr nc, jr_0b2_720f                            ; $720c: $30 $01

    inc e                                         ; $720e: $1c

jr_0b2_720f:
    adc b                                         ; $720f: $88
    ld b, h                                       ; $7210: $44
    nop                                           ; $7211: $00
    jr nz, jr_0b2_7239                            ; $7212: $20 $25

    jr nc, jr_0b2_7217                            ; $7214: $30 $01

    inc e                                         ; $7216: $1c

jr_0b2_7217:
    adc b                                         ; $7217: $88
    ld b, h                                       ; $7218: $44
    nop                                           ; $7219: $00
    jr nz, jr_0b2_720a                            ; $721a: $20 $ee

    nop                                           ; $721c: $00
    ld b, e                                       ; $721d: $43
    nop                                           ; $721e: $00
    rst $10                                       ; $721f: $d7
    ld de, $0000                                  ; $7220: $11 $00 $00
    ld l, a                                       ; $7223: $6f
    ld d, c                                       ; $7224: $51
    nop                                           ; $7225: $00
    jr nz, jr_0b2_723a                            ; $7226: $20 $12

    ld h, d                                       ; $7228: $62
    inc hl                                        ; $7229: $23
    nop                                           ; $722a: $00

jr_0b2_722b:
    add hl, bc                                    ; $722b: $09
    dec hl                                        ; $722c: $2b
    rst $38                                       ; $722d: $ff
    ld d, [hl]                                    ; $722e: $56
    rla                                           ; $722f: $17
    ld a, [de]                                    ; $7230: $1a
    jr nz, jr_0b2_7233                            ; $7231: $20 $00

jr_0b2_7233:
    ld l, c                                       ; $7233: $69
    ld l, $bd                                     ; $7234: $2e $bd
    ld c, [hl]                                    ; $7236: $4e
    jr nc, jr_0b2_7246                            ; $7237: $30 $0d

jr_0b2_7239:
    nop                                           ; $7239: $00

jr_0b2_723a:
    inc b                                         ; $723a: $04
    ld [bc], a                                    ; $723b: $02
    inc d                                         ; $723c: $14
    inc bc                                        ; $723d: $03
    jr nz, @+$03                                  ; $723e: $20 $01

    stop                                          ; $7240: $10 $00
    inc b                                         ; $7242: $04
    nop                                           ; $7243: $00
    jr nz, jr_0b2_7247                            ; $7244: $20 $01

jr_0b2_7246:
    db $10                                        ; $7246: $10

jr_0b2_7247:
    inc hl                                        ; $7247: $23
    jr nz, jr_0b2_724a                            ; $7248: $20 $00

jr_0b2_724a:
    inc b                                         ; $724a: $04
    nop                                           ; $724b: $00
    jr nz, jr_0b2_724f                            ; $724c: $20 $01

    db $10                                        ; $724e: $10

jr_0b2_724f:
    inc hl                                        ; $724f: $23
    jr nz, jr_0b2_7252                            ; $7250: $20 $00

jr_0b2_7252:
    jr nz, jr_0b2_720a                            ; $7252: $20 $b6

    dec c                                         ; $7254: $0d
    ld b, e                                       ; $7255: $43
    nop                                           ; $7256: $00
    ld e, a                                       ; $7257: $5f
    ld d, $00                                     ; $7258: $16 $00
    nop                                           ; $725a: $00
    jp nc, $006d                                  ; $725b: $d2 $6d $00

    jr nz, jr_0b2_7208                            ; $725e: $20 $a8

    jr c, jr_0b2_7286                             ; $7260: $38 $24

    nop                                           ; $7262: $00
    ld a, e                                       ; $7263: $7b
    ld b, [hl]                                    ; $7264: $46
    jr nc, jr_0b2_7274                            ; $7265: $30 $0d

    rst $38                                       ; $7267: $ff
    ld d, [hl]                                    ; $7268: $56
    inc bc                                        ; $7269: $03
    nop                                           ; $726a: $00
    ld a, e                                       ; $726b: $7b
    ld b, [hl]                                    ; $726c: $46
    sub d                                         ; $726d: $92
    dec e                                         ; $726e: $1d
    ld a, [hl]                                    ; $726f: $7e

jr_0b2_7270:
    ld l, a                                       ; $7270: $6f
    ld b, d                                       ; $7271: $42
    nop                                           ; $7272: $00
    dec l                                         ; $7273: $2d

jr_0b2_7274:
    ld e, c                                       ; $7274: $59
    xor e                                         ; $7275: $ab
    inc [hl]                                      ; $7276: $34
    di                                            ; $7277: $f3
    ld l, c                                       ; $7278: $69
    ld h, [hl]                                    ; $7279: $66
    jr nc, jr_0b2_720b                            ; $727a: $30 $8f

    ld e, c                                       ; $727c: $59
    inc l                                         ; $727d: $2c
    ld c, c                                       ; $727e: $49
    dec [hl]                                      ; $727f: $35
    ld l, [hl]                                    ; $7280: $6e
    nop                                           ; $7281: $00
    nop                                           ; $7282: $00
    add a                                         ; $7283: $87
    inc [hl]                                      ; $7284: $34
    nop                                           ; $7285: $00

jr_0b2_7286:
    jr nz, jr_0b2_72cc                            ; $7286: $20 $44

    inc h                                         ; $7288: $24
    nop                                           ; $7289: $00
    jr nz, @-$4b                                  ; $728a: $20 $b3

    add hl, de                                    ; $728c: $19
    ld h, l                                       ; $728d: $65
    nop                                           ; $728e: $00
    ld e, l                                       ; $728f: $5d
    ld e, $00                                     ; $7290: $1e $00
    nop                                           ; $7292: $00
    ret                                           ; $7293: $c9


    ld c, b                                       ; $7294: $48
    ld d, [hl]                                    ; $7295: $56
    ld h, [hl]                                    ; $7296: $66
    ld [hl+], a                                   ; $7297: $22
    inc h                                         ; $7298: $24
    ld b, e                                       ; $7299: $43
    nop                                           ; $729a: $00
    ld d, c                                       ; $729b: $51
    ld e, e                                       ; $729c: $5b
    ld d, b                                       ; $729d: $50
    dec h                                         ; $729e: $25
    ld a, $67                                     ; $729f: $3e $67
    ld h, e                                       ; $72a1: $63
    nop                                           ; $72a2: $00
    ld a, [hl-]                                   ; $72a3: $3a
    ld [hl-], a                                   ; $72a4: $32
    ld e, e                                       ; $72a5: $5b
    ld h, a                                       ; $72a6: $67
    sub d                                         ; $72a7: $92
    dec d                                         ; $72a8: $15
    xor d                                         ; $72a9: $aa
    ld d, b                                       ; $72aa: $50
    sub b                                         ; $72ab: $90
    ld h, l                                       ; $72ac: $65
    ld d, d                                       ; $72ad: $52
    ld hl, $58ec                                  ; $72ae: $21 $ec $58
    call z, $f254                                 ; $72b1: $cc $54 $f2
    ld h, l                                       ; $72b4: $65
    ld d, l                                       ; $72b5: $55
    ld l, [hl]                                    ; $72b6: $6e
    ld c, a                                       ; $72b7: $4f
    ld e, l                                       ; $72b8: $5d
    nop                                           ; $72b9: $00
    inc e                                         ; $72ba: $1c
    ld l, [hl]                                    ; $72bb: $6e
    ld c, l                                       ; $72bc: $4d
    and a                                         ; $72bd: $a7
    jr nc, jr_0b2_7315                            ; $72be: $30 $55

    ld l, [hl]                                    ; $72c0: $6e
    inc hl                                        ; $72c1: $23
    nop                                           ; $72c2: $00
    ld d, d                                       ; $72c3: $52
    add hl, bc                                    ; $72c4: $09
    nop                                           ; $72c5: $00
    jr nz, @-$3f                                  ; $72c6: $20 $bf

    ld h, $21                                     ; $72c8: $26 $21
    nop                                           ; $72ca: $00
    ld a, [c]                                     ; $72cb: $f2

jr_0b2_72cc:
    ld h, c                                       ; $72cc: $61
    ld a, $5b                                     ; $72cd: $3e $5b
    ld h, a                                       ; $72cf: $67
    ld b, b                                       ; $72d0: $40
    ld h, b                                       ; $72d1: $60
    nop                                           ; $72d2: $00
    ld a, h                                       ; $72d3: $7c
    ld b, [hl]                                    ; $72d4: $46
    db $ed                                        ; $72d5: $ed
    inc e                                         ; $72d6: $1c
    ld b, l                                       ; $72d7: $45
    inc d                                         ; $72d8: $14
    ld b, [hl]                                    ; $72d9: $46
    ld [$327b], sp                                ; $72da: $08 $7b $32
    add a                                         ; $72dd: $87
    jr c, jr_0b2_72ee                             ; $72de: $38 $0e

    dec b                                         ; $72e0: $05
    nop                                           ; $72e1: $00
    nop                                           ; $72e2: $00
    ld [bc], a                                    ; $72e3: $02
    inc e                                         ; $72e4: $1c
    ld b, l                                       ; $72e5: $45
    jr nc, jr_0b2_7270                            ; $72e6: $30 $88

    ld b, b                                       ; $72e8: $40
    nop                                           ; $72e9: $00
    inc b                                         ; $72ea: $04
    ld h, a                                       ; $72eb: $67

jr_0b2_72ec:
    ld b, b                                       ; $72ec: $40
    db $ec                                        ; $72ed: $ec

jr_0b2_72ee:
    ld e, b                                       ; $72ee: $58
    inc hl                                        ; $72ef: $23
    inc h                                         ; $72f0: $24
    nop                                           ; $72f1: $00
    nop                                           ; $72f2: $00

jr_0b2_72f3:
    ld c, a                                       ; $72f3: $4f
    ld e, l                                       ; $72f4: $5d
    ld d, l                                       ; $72f5: $55
    ld l, [hl]                                    ; $72f6: $6e
    nop                                           ; $72f7: $00
    jr nz, jr_0b2_72fa                            ; $72f8: $20 $00

jr_0b2_72fa:
    jr nz, jr_0b2_72f3                            ; $72fa: $20 $f7

    dec l                                         ; $72fc: $2d
    ld e, $57                                     ; $72fd: $1e $57
    ld b, e                                       ; $72ff: $43
    nop                                           ; $7300: $00
    ld b, e                                       ; $7301: $43
    nop                                           ; $7302: $00
    dec c                                         ; $7303: $0d
    dec [hl]                                      ; $7304: $35
    inc a                                         ; $7305: $3c

Call_0b2_7306:
    ld [hl-], a                                   ; $7306: $32

jr_0b2_7307:
    cp d                                          ; $7307: $ba
    ld h, d                                       ; $7308: $62
    ld b, [hl]                                    ; $7309: $46
    ld [$454d], sp                                ; $730a: $08 $4d $45
    db $d3                                        ; $730d: $d3
    dec e                                         ; $730e: $1d
    xor $00                                       ; $730f: $ee $00
    inc hl                                        ; $7311: $23
    inc b                                         ; $7312: $04
    ld c, $05                                     ; $7313: $0e $05

jr_0b2_7315:
    add [hl]                                      ; $7315: $86
    jr nc, jr_0b2_72ec                            ; $7316: $30 $d4

    dec d                                         ; $7318: $15
    ld [bc], a                                    ; $7319: $02
    jr jr_0b2_7307                                ; $731a: $18 $eb

    ld c, h                                       ; $731c: $4c
    dec l                                         ; $731d: $2d
    ld d, l                                       ; $731e: $55
    inc hl                                        ; $731f: $23
    jr nz, jr_0b2_7322                            ; $7320: $20 $00

jr_0b2_7322:
    inc b                                         ; $7322: $04
    ld b, [hl]                                    ; $7323: $46
    jr nc, jr_0b2_7328                            ; $7324: $30 $02

    inc d                                         ; $7326: $14
    inc bc                                        ; $7327: $03

jr_0b2_7328:
    inc e                                         ; $7328: $1c
    nop                                           ; $7329: $00
    inc e                                         ; $732a: $1c
    db $ec                                        ; $732b: $ec
    ld e, b                                       ; $732c: $58
    inc [hl]                                      ; $732d: $34
    ld l, d                                       ; $732e: $6a
    ld l, b                                       ; $732f: $68
    ld b, b                                       ; $7330: $40
    ld [hl+], a                                   ; $7331: $22
    nop                                           ; $7332: $00
    dec sp                                        ; $7333: $3b
    ld [hl], $0d                                  ; $7334: $36 $0d
    dec e                                         ; $7336: $1d
    nop                                           ; $7337: $00
    jr nz, jr_0b2_735b                            ; $7338: $20 $21

    nop                                           ; $733a: $00
    xor d                                         ; $733b: $aa
    ld c, h                                       ; $733c: $4c
    db $db                                        ; $733d: $db
    jr c, jr_0b2_736f                             ; $733e: $38 $2f

    dec d                                         ; $7340: $15
    ld h, l                                       ; $7341: $65
    inc b                                         ; $7342: $04
    sbc h                                         ; $7343: $9c

jr_0b2_7344:
    ld [hl], a                                    ; $7344: $77
    sub d                                         ; $7345: $92
    db $10                                        ; $7346: $10
    inc hl                                        ; $7347: $23
    inc h                                         ; $7348: $24
    ld l, b                                       ; $7349: $68
    inc b                                         ; $734a: $04
    push de                                       ; $734b: $d5
    add hl, de                                    ; $734c: $19
    ld l, a                                       ; $734d: $6f
    ld e, l                                       ; $734e: $5d
    ld b, e                                       ; $734f: $43
    inc h                                         ; $7350: $24
    ld h, a                                       ; $7351: $67
    inc [hl]                                      ; $7352: $34
    sub b                                         ; $7353: $90
    ld h, l                                       ; $7354: $65
    xor c                                         ; $7355: $a9
    inc a                                         ; $7356: $3c
    dec bc                                        ; $7357: $0b
    ld c, c                                       ; $7358: $49
    inc hl                                        ; $7359: $23
    inc e                                         ; $735a: $1c

jr_0b2_735b:
    db $eb                                        ; $735b: $eb
    ld b, h                                       ; $735c: $44
    ld l, a                                       ; $735d: $6f
    ld e, l                                       ; $735e: $5d
    ld h, [hl]                                    ; $735f: $66
    inc l                                         ; $7360: $2c
    nop                                           ; $7361: $00
    nop                                           ; $7362: $00
    ld l, $5d                                     ; $7363: $2e $5d
    rst $38                                       ; $7365: $ff
    ld a, a                                       ; $7366: $7f
    nop                                           ; $7367: $00
    jr nz, jr_0b2_738c                            ; $7368: $20 $22

    nop                                           ; $736a: $00
    ld a, [hl]                                    ; $736b: $7e
    ld h, $53                                     ; $736c: $26 $53
    dec c                                         ; $736e: $0d

jr_0b2_736f:
    rst $38                                       ; $736f: $ff
    ld a, a                                       ; $7370: $7f
    ld [bc], a                                    ; $7371: $02
    nop                                           ; $7372: $00
    jp c, $9f34                                   ; $7373: $da $34 $9f

    ld b, a                                       ; $7376: $47
    inc h                                         ; $7377: $24
    inc h                                         ; $7378: $24
    adc b                                         ; $7379: $88
    inc b                                         ; $737a: $04
    sub d                                         ; $737b: $92
    ld de, $1c22                                  ; $737c: $11 $22 $1c
    ld h, a                                       ; $737f: $67
    inc a                                         ; $7380: $3c
    ld b, b                                       ; $7381: $40
    nop                                           ; $7382: $00
    ld h, [hl]                                    ; $7383: $66
    inc a                                         ; $7384: $3c
    ld b, [hl]                                    ; $7385: $46
    inc c                                         ; $7386: $0c
    db $ec                                        ; $7387: $ec
    ld d, h                                       ; $7388: $54
    nop                                           ; $7389: $00
    inc b                                         ; $738a: $04
    inc b                                         ; $738b: $04

jr_0b2_738c:
    inc h                                         ; $738c: $24
    add b                                         ; $738d: $80
    nop                                           ; $738e: $00
    and b                                         ; $738f: $a0
    nop                                           ; $7390: $00
    inc hl                                        ; $7391: $23
    jr nz, jr_0b2_7344                            ; $7392: $20 $b0

    ld e, l                                       ; $7394: $5d
    xor b                                         ; $7395: $a8
    inc a                                         ; $7396: $3c
    inc [hl]                                      ; $7397: $34
    ld l, [hl]                                    ; $7398: $6e
    nop                                           ; $7399: $00
    nop                                           ; $739a: $00
    rst $38                                       ; $739b: $ff
    ld a, a                                       ; $739c: $7f
    nop                                           ; $739d: $00
    inc e                                         ; $739e: $1c
    add a                                         ; $739f: $87
    inc [hl]                                      ; $73a0: $34
    ld [bc], a                                    ; $73a1: $02
    inc b                                         ; $73a2: $04
    ld sp, hl                                     ; $73a3: $f9
    jr nc, @+$01                                  ; $73a4: $30 $ff

    ld a, a                                       ; $73a6: $7f
    nop                                           ; $73a7: $00
    jr nz, jr_0b2_73ce                            ; $73a8: $20 $24

    nop                                           ; $73aa: $00
    reti                                          ; $73ab: $d9


    inc l                                         ; $73ac: $2c
    ccf                                           ; $73ad: $3f
    ld [de], a                                    ; $73ae: $12
    sbc a                                         ; $73af: $9f
    ld b, a                                       ; $73b0: $47
    nop                                           ; $73b1: $00
    nop                                           ; $73b2: $00
    di                                            ; $73b3: $f3
    ld b, $02                                     ; $73b4: $06 $02
    jr nz, jr_0b2_7420                            ; $73b6: $20 $68

    ld [$0020], sp                                ; $73b8: $08 $20 $00
    ld b, a                                       ; $73bb: $47
    ld b, h                                       ; $73bc: $44
    ld h, [hl]                                    ; $73bd: $66
    ld h, $00                                     ; $73be: $26 $00
    add hl, bc                                    ; $73c0: $09
    nop                                           ; $73c1: $00
    nop                                           ; $73c2: $00
    ld b, b                                       ; $73c3: $40
    ld de, $1e02                                  ; $73c4: $11 $02 $1e
    and b                                         ; $73c7: $a0
    inc b                                         ; $73c8: $04
    nop                                           ; $73c9: $00
    nop                                           ; $73ca: $00
    or c                                          ; $73cb: $b1
    ld h, l                                       ; $73cc: $65
    adc b                                         ; $73cd: $88

jr_0b2_73ce:
    inc a                                         ; $73ce: $3c
    inc hl                                        ; $73cf: $23
    jr nz, jr_0b2_73d2                            ; $73d0: $20 $00

jr_0b2_73d2:
    inc e                                         ; $73d2: $1c

jr_0b2_73d3:
    ld a, [c]                                     ; $73d3: $f2
    ld h, l                                       ; $73d4: $65
    rst $38                                       ; $73d5: $ff
    ld a, a                                       ; $73d6: $7f
    ret z                                         ; $73d7: $c8

    jr c, jr_0b2_73da                             ; $73d8: $38 $00

jr_0b2_73da:
    nop                                           ; $73da: $00
    cp c                                          ; $73db: $b9
    jr nc, @+$01                                  ; $73dc: $30 $ff

    ld a, a                                       ; $73de: $7f
    nop                                           ; $73df: $00
    jr nz, jr_0b2_7428                            ; $73e0: $20 $46

    ld [$30b9], sp                                ; $73e2: $08 $b9 $30
    ld a, a                                       ; $73e5: $7f
    ld a, [bc]                                    ; $73e6: $0a
    sbc a                                         ; $73e7: $9f
    ld b, a                                       ; $73e8: $47
    ld b, b                                       ; $73e9: $40
    ld [$243d], sp                                ; $73ea: $08 $3d $24
    ld d, d                                       ; $73ed: $52
    rlca                                          ; $73ee: $07
    sbc $0d                                       ; $73ef: $de $0d
    ld bc, $4800                                  ; $73f1: $01 $00 $48
    dec h                                         ; $73f4: $25
    call $a03a                                    ; $73f5: $cd $3a $a0
    inc b                                         ; $73f8: $04
    add b                                         ; $73f9: $80
    inc b                                         ; $73fa: $04
    ret                                           ; $73fb: $c9


    ld [hl-], a                                   ; $73fc: $32
    cp c                                          ; $73fd: $b9
    jr nc, jr_0b2_73d3                            ; $73fe: $30 $d3

    ld c, a                                       ; $7400: $4f
    nop                                           ; $7401: $00
    nop                                           ; $7402: $00
    db $eb                                        ; $7403: $eb
    ld d, b                                       ; $7404: $50
    cp c                                          ; $7405: $b9
    jr nc, jr_0b2_742b                            ; $7406: $30 $23

jr_0b2_7408:
    jr nz, jr_0b2_740a                            ; $7408: $20 $00

jr_0b2_740a:
    nop                                           ; $740a: $00
    or c                                          ; $740b: $b1
    ld h, c                                       ; $740c: $61
    rst $38                                       ; $740d: $ff
    ld a, a                                       ; $740e: $7f
    nop                                           ; $740f: $00
    jr nz, jr_0b2_7412                            ; $7410: $20 $00

jr_0b2_7412:
    nop                                           ; $7412: $00
    sbc b                                         ; $7413: $98
    jr nc, @+$01                                  ; $7414: $30 $ff

    ld a, a                                       ; $7416: $7f
    nop                                           ; $7417: $00
    jr nz, jr_0b2_743f                            ; $7418: $20 $25

    ld [$05dc], sp                                ; $741a: $08 $dc $05
    rst $18                                       ; $741d: $df
    ld b, a                                       ; $741e: $47
    push af                                       ; $741f: $f5

jr_0b2_7420:
    jr z, jr_0b2_7483                             ; $7420: $28 $61

    inc b                                         ; $7422: $04
    cp c                                          ; $7423: $b9
    inc h                                         ; $7424: $24
    ld a, d                                       ; $7425: $7a
    rlca                                          ; $7426: $07
    ld l, c                                       ; $7427: $69

jr_0b2_7428:
    ld [bc], a                                    ; $7428: $02
    ld b, d                                       ; $7429: $42
    nop                                           ; $742a: $00

jr_0b2_742b:
    ld sp, $c019                                  ; $742b: $31 $19 $c0
    dec e                                         ; $742e: $1d
    ret c                                         ; $742f: $d8

    add hl, hl                                    ; $7430: $29
    ld hl, $ed00                                  ; $7431: $21 $00 $ed
    db $10                                        ; $7434: $10
    pop bc                                        ; $7435: $c1
    dec d                                         ; $7436: $15
    sbc b                                         ; $7437: $98
    inc l                                         ; $7438: $2c
    nop                                           ; $7439: $00
    nop                                           ; $743a: $00
    sbc b                                         ; $743b: $98
    inc l                                         ; $743c: $2c
    ld h, [hl]                                    ; $743d: $66
    inc [hl]                                      ; $743e: $34

jr_0b2_743f:
    sbc b                                         ; $743f: $98
    jr nc, jr_0b2_7442                            ; $7440: $30 $00

jr_0b2_7442:
    inc e                                         ; $7442: $1c

jr_0b2_7443:
    ld l, a                                       ; $7443: $6f
    ld h, c                                       ; $7444: $61
    rst $38                                       ; $7445: $ff
    ld a, a                                       ; $7446: $7f
    xor d                                         ; $7447: $aa
    ld c, b                                       ; $7448: $48
    nop                                           ; $7449: $00
    nop                                           ; $744a: $00
    sbc b                                         ; $744b: $98
    inc l                                         ; $744c: $2c
    rst $38                                       ; $744d: $ff
    ld a, a                                       ; $744e: $7f
    nop                                           ; $744f: $00
    jr nz, jr_0b2_7478                            ; $7450: $20 $26

    inc c                                         ; $7452: $0c
    sbc b                                         ; $7453: $98
    inc l                                         ; $7454: $2c
    ld d, d                                       ; $7455: $52
    dec b                                         ; $7456: $05
    rra                                           ; $7457: $1f
    ld b, $21                                     ; $7458: $06 $21
    nop                                           ; $745a: $00

jr_0b2_745b:
    sbc b                                         ; $745b: $98
    inc l                                         ; $745c: $2c
    sub [hl]                                      ; $745d: $96
    daa                                           ; $745e: $27
    add d                                         ; $745f: $82
    dec d                                         ; $7460: $15
    inc h                                         ; $7461: $24
    nop                                           ; $7462: $00
    ld a, [de]                                    ; $7463: $1a
    ld [hl-], a                                   ; $7464: $32
    ret                                           ; $7465: $c9


    ld [hl-], a                                   ; $7466: $32
    db $fc                                        ; $7467: $fc
    ld c, d                                       ; $7468: $4a
    jr nz, jr_0b2_746b                            ; $7469: $20 $00

jr_0b2_746b:
    ld sp, $9815                                  ; $746b: $31 $15 $98
    inc l                                         ; $746e: $2c
    sub h                                         ; $746f: $94
    ld hl, $0000                                  ; $7470: $21 $00 $00
    sub a                                         ; $7473: $97
    inc l                                         ; $7474: $2c
    sbc b                                         ; $7475: $98
    inc l                                         ; $7476: $2c
    sub h                                         ; $7477: $94

jr_0b2_7478:
    ld hl, $0000                                  ; $7478: $21 $00 $00
    rst $38                                       ; $747b: $ff
    ld a, a                                       ; $747c: $7f
    nop                                           ; $747d: $00
    jr nz, jr_0b2_7408                            ; $747e: $20 $88

jr_0b2_7480:
    ld b, b                                       ; $7480: $40
    nop                                           ; $7481: $00
    nop                                           ; $7482: $00

jr_0b2_7483:
    rst $38                                       ; $7483: $ff
    ld a, a                                       ; $7484: $7f
    sub a                                         ; $7485: $97
    inc l                                         ; $7486: $2c
    nop                                           ; $7487: $00
    jr nz, jr_0b2_74b0                            ; $7488: $20 $26

    inc c                                         ; $748a: $0c
    sub a                                         ; $748b: $97
    inc l                                         ; $748c: $2c
    sbc b                                         ; $748d: $98
    inc l                                         ; $748e: $2c
    nop                                           ; $748f: $00
    jr nz, jr_0b2_7492                            ; $7490: $20 $00

jr_0b2_7492:
    nop                                           ; $7492: $00
    db $d3                                        ; $7493: $d3
    ld c, a                                       ; $7494: $4f
    sub a                                         ; $7495: $97
    inc l                                         ; $7496: $2c
    and c                                         ; $7497: $a1

jr_0b2_7498:
    dec d                                         ; $7498: $15
    inc h                                         ; $7499: $24
    nop                                           ; $749a: $00
    rst $10                                       ; $749b: $d7
    add hl, hl                                    ; $749c: $29
    ld l, d                                       ; $749d: $6a
    add hl, de                                    ; $749e: $19
    cp $56                                        ; $749f: $fe $56
    jr nz, jr_0b2_74a3                            ; $74a1: $20 $00

jr_0b2_74a3:
    ld d, e                                       ; $74a3: $53
    dec e                                         ; $74a4: $1d
    inc bc                                        ; $74a5: $03
    nop                                           ; $74a6: $00
    halt                                          ; $74a7: $76
    jr z, @+$79                                   ; $74a8: $28 $77

    jr z, jr_0b2_7443                             ; $74aa: $28 $97

    inc l                                         ; $74ac: $2c
    sub a                                         ; $74ad: $97
    jr z, jr_0b2_7526                             ; $74ae: $28 $76

jr_0b2_74b0:
    jr z, jr_0b2_74b2                             ; $74b0: $28 $00

jr_0b2_74b2:
    nop                                           ; $74b2: $00
    rst $38                                       ; $74b3: $ff
    ld a, a                                       ; $74b4: $7f
    nop                                           ; $74b5: $00
    jr nz, jr_0b2_752e                            ; $74b6: $20 $76

    jr z, jr_0b2_74ba                             ; $74b8: $28 $00

jr_0b2_74ba:
    nop                                           ; $74ba: $00
    rst $38                                       ; $74bb: $ff
    ld a, a                                       ; $74bc: $7f
    ld [hl], a                                    ; $74bd: $77

jr_0b2_74be:
    jr z, jr_0b2_74c0                             ; $74be: $28 $00

jr_0b2_74c0:
    jr nz, jr_0b2_7539                            ; $74c0: $20 $77

    jr z, jr_0b2_745b                             ; $74c2: $28 $97

    jr z, @+$79                                   ; $74c4: $28 $77

jr_0b2_74c6:
    jr z, jr_0b2_74c8                             ; $74c6: $28 $00

jr_0b2_74c8:
    jr nz, jr_0b2_74cb                            ; $74c8: $20 $01

    nop                                           ; $74ca: $00

jr_0b2_74cb:
    ld [hl], a                                    ; $74cb: $77
    jr z, @+$42                                   ; $74cc: $28 $40

    dec c                                         ; $74ce: $0d
    add b                                         ; $74cf: $80
    inc b                                         ; $74d0: $04
    nop                                           ; $74d1: $00
    add hl, bc                                    ; $74d2: $09
    rst $10                                       ; $74d3: $d7
    dec l                                         ; $74d4: $2d
    cp $56                                        ; $74d5: $fe $56
    dec h                                         ; $74d7: $25
    nop                                           ; $74d8: $00
    nop                                           ; $74d9: $00
    nop                                           ; $74da: $00
    halt                                          ; $74db: $76
    jr z, jr_0b2_74be                             ; $74dc: $28 $e0

    ld [$0440], sp                                ; $74de: $08 $40 $04
    halt                                          ; $74e1: $76
    jr z, jr_0b2_755b                             ; $74e2: $28 $77

    jr z, jr_0b2_74c6                             ; $74e4: $28 $e0

    ld [$0440], sp                                ; $74e6: $08 $40 $04
    nop                                           ; $74e9: $00
    nop                                           ; $74ea: $00
    rst $38                                       ; $74eb: $ff
    ld a, a                                       ; $74ec: $7f
    nop                                           ; $74ed: $00
    jr nz, jr_0b2_7530                            ; $74ee: $20 $40

jr_0b2_74f0:
    inc b                                         ; $74f0: $04
    nop                                           ; $74f1: $00
    nop                                           ; $74f2: $00
    rst $38                                       ; $74f3: $ff
    ld a, a                                       ; $74f4: $7f
    nop                                           ; $74f5: $00
    jr nz, jr_0b2_7478                            ; $74f6: $20 $80

    inc b                                         ; $74f8: $04
    halt                                          ; $74f9: $76
    jr z, @+$01                                   ; $74fa: $28 $ff

    ld a, a                                       ; $74fc: $7f
    nop                                           ; $74fd: $00
    jr nz, jr_0b2_7480                            ; $74fe: $20 $80

    inc b                                         ; $7500: $04
    ld [bc], a                                    ; $7501: $02
    nop                                           ; $7502: $00
    sub [hl]                                      ; $7503: $96
    ld sp, $5b1f                                  ; $7504: $31 $1f $5b
    ret nz                                        ; $7507: $c0

    inc b                                         ; $7508: $04
    ld [hl+], a                                   ; $7509: $22
    nop                                           ; $750a: $00
    sbc $4e                                       ; $750b: $de $4e
    adc $10                                       ; $750d: $ce $10
    add b                                         ; $750f: $80
    ld de, $0000                                  ; $7510: $11 $00 $00
    halt                                          ; $7513: $76
    inc h                                         ; $7514: $24
    halt                                          ; $7515: $76
    jr z, jr_0b2_7498                             ; $7516: $28 $80

    ld de, $0000                                  ; $7518: $11 $00 $00
    halt                                          ; $751b: $76
    inc h                                         ; $751c: $24
    inc hl                                        ; $751d: $23
    inc e                                         ; $751e: $1c
    halt                                          ; $751f: $76
    jr z, jr_0b2_7522                             ; $7520: $28 $00

jr_0b2_7522:
    nop                                           ; $7522: $00
    rst $38                                       ; $7523: $ff
    ld a, a                                       ; $7524: $7f
    nop                                           ; $7525: $00

jr_0b2_7526:
    jr nz, jr_0b2_759e                            ; $7526: $20 $76

    jr z, jr_0b2_752a                             ; $7528: $28 $00

jr_0b2_752a:
    nop                                           ; $752a: $00
    rst $38                                       ; $752b: $ff
    ld a, a                                       ; $752c: $7f
    nop                                           ; $752d: $00

jr_0b2_752e:
    jr nz, jr_0b2_74f0                            ; $752e: $20 $c0

jr_0b2_7530:
    inc b                                         ; $7530: $04
    nop                                           ; $7531: $00
    nop                                           ; $7532: $00
    ld d, l                                       ; $7533: $55
    inc h                                         ; $7534: $24
    push bc                                       ; $7535: $c5
    ld a, [hl+]                                   ; $7536: $2a
    jr nz, jr_0b2_7546                            ; $7537: $20 $0d

jr_0b2_7539:
    and b                                         ; $7539: $a0
    dec d                                         ; $753a: $15
    xor [hl]                                      ; $753b: $ae
    ld [hl], $1f                                  ; $753c: $36 $1f
    ld e, e                                       ; $753e: $5b
    inc h                                         ; $753f: $24
    nop                                           ; $7540: $00
    ld [bc], a                                    ; $7541: $02
    nop                                           ; $7542: $00
    ld [hl], b                                    ; $7543: $70
    ld [hl-], a                                   ; $7544: $32
    cp l                                          ; $7545: $bd

jr_0b2_7546:
    ld b, [hl]                                    ; $7546: $46
    and e                                         ; $7547: $a3
    add hl, de                                    ; $7548: $19

jr_0b2_7549:
    nop                                           ; $7549: $00
    nop                                           ; $754a: $00
    ld d, l                                       ; $754b: $55
    inc h                                         ; $754c: $24
    ld d, [hl]                                    ; $754d: $56
    inc h                                         ; $754e: $24
    and e                                         ; $754f: $a3
    add hl, de                                    ; $7550: $19
    nop                                           ; $7551: $00
    nop                                           ; $7552: $00
    ld d, l                                       ; $7553: $55
    inc h                                         ; $7554: $24
    inc hl                                        ; $7555: $23
    inc e                                         ; $7556: $1c
    ld d, [hl]                                    ; $7557: $56
    inc h                                         ; $7558: $24
    nop                                           ; $7559: $00
    nop                                           ; $755a: $00

jr_0b2_755b:
    rst $38                                       ; $755b: $ff
    ld a, a                                       ; $755c: $7f
    nop                                           ; $755d: $00
    jr nz, jr_0b2_75b6                            ; $755e: $20 $56

    inc h                                         ; $7560: $24
    nop                                           ; $7561: $00
    nop                                           ; $7562: $00
    rst $38                                       ; $7563: $ff
    ld a, a                                       ; $7564: $7f
    nop                                           ; $7565: $00
    jr nz, jr_0b2_758c                            ; $7566: $20 $24

    nop                                           ; $7568: $00
    nop                                           ; $7569: $00
    nop                                           ; $756a: $00
    ld d, l                                       ; $756b: $55
    inc h                                         ; $756c: $24
    ld h, [hl]                                    ; $756d: $66
    ld h, $03                                     ; $756e: $26 $03
    ld [$0024], sp                                ; $7570: $08 $24 $00
    pop de                                        ; $7573: $d1
    ld c, a                                       ; $7574: $4f
    ld e, $5b                                     ; $7575: $1e $5b
    xor c                                         ; $7577: $a9
    dec e                                         ; $7578: $1d
    ld l, b                                       ; $7579: $68
    inc b                                         ; $757a: $04
    add sp, $2e                                   ; $757b: $e8 $2e
    db $e3                                        ; $757d: $e3
    add hl, de                                    ; $757e: $19
    sub c                                         ; $757f: $91
    ld b, a                                       ; $7580: $47
    nop                                           ; $7581: $00
    nop                                           ; $7582: $00
    pop af                                        ; $7583: $f1
    ld c, a                                       ; $7584: $4f
    ld d, l                                       ; $7585: $55
    jr nz, jr_0b2_75ab                            ; $7586: $20 $23

    dec d                                         ; $7588: $15
    nop                                           ; $7589: $00
    nop                                           ; $758a: $00
    db $eb                                        ; $758b: $eb

jr_0b2_758c:
    ld c, h                                       ; $758c: $4c
    rst $38                                       ; $758d: $ff
    ld a, a                                       ; $758e: $7f
    ld d, l                                       ; $758f: $55
    jr nz, jr_0b2_7592                            ; $7590: $20 $00

jr_0b2_7592:
    nop                                           ; $7592: $00
    rst $38                                       ; $7593: $ff
    ld a, a                                       ; $7594: $7f
    nop                                           ; $7595: $00
    jr nz, jr_0b2_75ed                            ; $7596: $20 $55

    jr nz, jr_0b2_759a                            ; $7598: $20 $00

jr_0b2_759a:
    nop                                           ; $759a: $00
    rst $38                                       ; $759b: $ff
    ld a, a                                       ; $759c: $7f
    nop                                           ; $759d: $00

jr_0b2_759e:
    jr nz, jr_0b2_7549                            ; $759e: $20 $a9

    dec e                                         ; $75a0: $1d
    ld bc, $b208                                  ; $75a1: $01 $08 $b2
    ld l, c                                       ; $75a4: $69
    xor h                                         ; $75a5: $ac
    inc a                                         ; $75a6: $3c
    rst $38                                       ; $75a7: $ff
    ld a, a                                       ; $75a8: $7f
    inc hl                                        ; $75a9: $23
    nop                                           ; $75aa: $00

jr_0b2_75ab:
    sub e                                         ; $75ab: $93
    ld hl, $52fe                                  ; $75ac: $21 $fe $52
    ld bc, $202c                                  ; $75af: $01 $2c $20
    ld [$08c0], sp                                ; $75b2: $08 $c0 $08
    ld [bc], a                                    ; $75b5: $02

jr_0b2_75b6:
    jr @+$62                                      ; $75b6: $18 $60

    add hl, bc                                    ; $75b8: $09
    nop                                           ; $75b9: $00
    nop                                           ; $75ba: $00
    inc [hl]                                      ; $75bb: $34
    jr nz, jr_0b2_7612                            ; $75bc: $20 $54

    jr nz, jr_0b2_7620                            ; $75be: $20 $60

    add hl, bc                                    ; $75c0: $09
    nop                                           ; $75c1: $00
    nop                                           ; $75c2: $00
    sub b                                         ; $75c3: $90
    ld h, c                                       ; $75c4: $61
    ld [hl-], a                                   ; $75c5: $32
    inc h                                         ; $75c6: $24
    rst $38                                       ; $75c7: $ff
    ld a, a                                       ; $75c8: $7f
    nop                                           ; $75c9: $00
    nop                                           ; $75ca: $00
    nop                                           ; $75cb: $00
    jr nz, jr_0b2_7600                            ; $75cc: $20 $32

jr_0b2_75ce:
    inc h                                         ; $75ce: $24
    rst $38                                       ; $75cf: $ff
    ld a, a                                       ; $75d0: $7f
    nop                                           ; $75d1: $00
    nop                                           ; $75d2: $00
    nop                                           ; $75d3: $00

jr_0b2_75d4:
    jr nz, jr_0b2_75d4                            ; $75d4: $20 $fe

    ld d, d                                       ; $75d6: $52
    ld bc, $032c                                  ; $75d7: $01 $2c $03
    nop                                           ; $75da: $00
    jr c, jr_0b2_761b                             ; $75db: $38 $3e

    rst $38                                       ; $75dd: $ff
    ld a, a                                       ; $75de: $7f
    dec d                                         ; $75df: $15
    halt                                          ; $75e0: $76
    ld [bc], a                                    ; $75e1: $02
    inc b                                         ; $75e2: $04
    ld e, $53                                     ; $75e3: $1e $53
    ld h, a                                       ; $75e5: $67
    inc [hl]                                      ; $75e6: $34
    call Call_000_020c                            ; $75e7: $cd $0c $02
    jr jr_0b2_7654                                ; $75ea: $18 $68

    ld b, b                                       ; $75ec: $40

jr_0b2_75ed:
    xor d                                         ; $75ed: $aa
    ld d, b                                       ; $75ee: $50
    ld b, l                                       ; $75ef: $45
    inc l                                         ; $75f0: $2c
    nop                                           ; $75f1: $00
    nop                                           ; $75f2: $00
    inc sp                                        ; $75f3: $33
    inc e                                         ; $75f4: $1c
    inc [hl]                                      ; $75f5: $34
    jr nz, jr_0b2_763d                            ; $75f6: $20 $45

    inc l                                         ; $75f8: $2c
    nop                                           ; $75f9: $00
    nop                                           ; $75fa: $00
    jp nc, $ff65                                  ; $75fb: $d2 $65 $ff

    ld a, a                                       ; $75fe: $7f
    adc b                                         ; $75ff: $88

jr_0b2_7600:
    ld b, b                                       ; $7600: $40
    nop                                           ; $7601: $00
    nop                                           ; $7602: $00
    nop                                           ; $7603: $00
    jr nz, @+$01                                  ; $7604: $20 $ff

    ld a, a                                       ; $7606: $7f
    adc b                                         ; $7607: $88
    ld b, b                                       ; $7608: $40
    nop                                           ; $7609: $00
    nop                                           ; $760a: $00
    nop                                           ; $760b: $00
    jr nz, jr_0b2_7675                            ; $760c: $20 $67

jr_0b2_760e:
    inc [hl]                                      ; $760e: $34
    call Call_000_230c                            ; $760f: $cd $0c $23

jr_0b2_7612:
    inc b                                         ; $7612: $04
    ld a, d                                       ; $7613: $7a
    ld a, $93                                     ; $7614: $3e $93
    ld hl, $7bff                                  ; $7616: $21 $ff $7b
    ld b, [hl]                                    ; $7619: $46
    inc b                                         ; $761a: $04

jr_0b2_761b:
    ld d, a                                       ; $761b: $57
    ld a, [hl-]                                   ; $761c: $3a
    sbc a                                         ; $761d: $9f
    ld h, e                                       ; $761e: $63
    xor d                                         ; $761f: $aa

jr_0b2_7620:
    ld d, b                                       ; $7620: $50
    ld b, l                                       ; $7621: $45
    jr nc, jr_0b2_75ce                            ; $7622: $30 $aa

    ld d, b                                       ; $7624: $50
    or c                                          ; $7625: $b1
    ld h, c                                       ; $7626: $61
    dec c                                         ; $7627: $0d
    ld e, c                                       ; $7628: $59
    nop                                           ; $7629: $00
    nop                                           ; $762a: $00
    inc sp                                        ; $762b: $33
    inc e                                         ; $762c: $1c
    ld bc, $010c                                  ; $762d: $01 $0c $01
    stop                                          ; $7630: $10 $00
    nop                                           ; $7632: $00
    jp nc, Jump_0b2_6a65                          ; $7633: $d2 $65 $6a

    jr c, @+$01                                   ; $7636: $38 $ff

    ld a, a                                       ; $7638: $7f
    nop                                           ; $7639: $00
    jr nz, jr_0b2_760e                            ; $763a: $20 $d2

    ld h, l                                       ; $763c: $65

jr_0b2_763d:
    ld l, d                                       ; $763d: $6a
    jr c, @+$01                                   ; $763e: $38 $ff

    ld a, a                                       ; $7640: $7f
    nop                                           ; $7641: $00
    jr nz, @+$59                                  ; $7642: $20 $57

    ld a, [hl-]                                   ; $7644: $3a
    sbc a                                         ; $7645: $9f
    ld h, e                                       ; $7646: $63
    xor d                                         ; $7647: $aa
    ld d, b                                       ; $7648: $50
    ld bc, $ff00                                  ; $7649: $01 $00 $ff
    ld a, a                                       ; $764c: $7f
    adc b                                         ; $764d: $88
    ld c, h                                       ; $764e: $4c
    inc hl                                        ; $764f: $23
    inc h                                         ; $7650: $24
    inc h                                         ; $7651: $24
    nop                                           ; $7652: $00
    or e                                          ; $7653: $b3

jr_0b2_7654:
    dec l                                         ; $7654: $2d
    sbc $52                                       ; $7655: $de $52
    ld c, b                                       ; $7657: $48
    ld e, h                                       ; $7658: $5c
    inc h                                         ; $7659: $24
    nop                                           ; $765a: $00
    xor d                                         ; $765b: $aa
    ld c, h                                       ; $765c: $4c
    jp nc, Jump_000_0d65                          ; $765d: $d2 $65 $0d

    ld e, l                                       ; $7660: $5d
    nop                                           ; $7661: $00
    inc b                                         ; $7662: $04
    ld [de], a                                    ; $7663: $12
    inc e                                         ; $7664: $1c
    ld [bc], a                                    ; $7665: $02
    inc e                                         ; $7666: $1c
    ld b, [hl]                                    ; $7667: $46
    jr nc, jr_0b2_766a                            ; $7668: $30 $00

jr_0b2_766a:
    nop                                           ; $766a: $00
    rst $38                                       ; $766b: $ff
    ld a, a                                       ; $766c: $7f
    ld [de], a                                    ; $766d: $12
    inc e                                         ; $766e: $1c
    nop                                           ; $766f: $00
    jr nz, jr_0b2_7672                            ; $7670: $20 $00

jr_0b2_7672:
    jr nz, @+$01                                  ; $7672: $20 $ff

    ld a, a                                       ; $7674: $7f

jr_0b2_7675:
    ld [de], a                                    ; $7675: $12
    inc e                                         ; $7676: $1c
    nop                                           ; $7677: $00
    jr nz, jr_0b2_767a                            ; $7678: $20 $00

jr_0b2_767a:
    jr nz, @-$4b                                  ; $767a: $20 $b3

    dec l                                         ; $767c: $2d
    sbc $52                                       ; $767d: $de $52
    ld c, b                                       ; $767f: $48
    ld e, h                                       ; $7680: $5c
    nop                                           ; $7681: $00
    nop                                           ; $7682: $00
    rst $38                                       ; $7683: $ff
    ld a, a                                       ; $7684: $7f
    ld [bc], a                                    ; $7685: $02
    inc e                                         ; $7686: $1c
    ld b, [hl]                                    ; $7687: $46
    jr nc, jr_0b2_768c                            ; $7688: $30 $02

    nop                                           ; $768a: $00
    ld sp, hl                                     ; $768b: $f9

jr_0b2_768c:
    ld c, [hl]                                    ; $768c: $4e
    ld [de], a                                    ; $768d: $12
    jr jr_0b2_76f8                                ; $768e: $18 $68

    jr jr_0b2_76b6                                ; $7690: $18 $24

    inc e                                         ; $7692: $1c
    ld [hl], b                                    ; $7693: $70
    ld e, l                                       ; $7694: $5d
    xor d                                         ; $7695: $aa
    ld c, b                                       ; $7696: $48
    inc de                                        ; $7697: $13
    ld l, d                                       ; $7698: $6a
    nop                                           ; $7699: $00
    ld [$4ccb], sp                                ; $769a: $08 $cb $4c
    ld [de], a                                    ; $769d: $12
    jr jr_0b2_76c4                                ; $769e: $18 $24

    inc h                                         ; $76a0: $24
    nop                                           ; $76a1: $00
    nop                                           ; $76a2: $00
    rst $38                                       ; $76a3: $ff
    ld a, a                                       ; $76a4: $7f
    ld [de], a                                    ; $76a5: $12
    jr jr_0b2_76a8                                ; $76a6: $18 $00

jr_0b2_76a8:
    jr nz, jr_0b2_76aa                            ; $76a8: $20 $00

jr_0b2_76aa:
    jr nz, @+$01                                  ; $76aa: $20 $ff

    ld a, a                                       ; $76ac: $7f

jr_0b2_76ad:
    ld [de], a                                    ; $76ad: $12
    jr jr_0b2_76b0                                ; $76ae: $18 $00

jr_0b2_76b0:
    jr nz, jr_0b2_76b2                            ; $76b0: $20 $00

jr_0b2_76b2:
    jr nz, jr_0b2_76ad                            ; $76b2: $20 $f9

    ld c, [hl]                                    ; $76b4: $4e
    ld [de], a                                    ; $76b5: $12

jr_0b2_76b6:
    jr jr_0b2_7720                                ; $76b6: $18 $68

    jr jr_0b2_76ba                                ; $76b8: $18 $00

jr_0b2_76ba:
    nop                                           ; $76ba: $00
    rst $38                                       ; $76bb: $ff
    ld a, a                                       ; $76bc: $7f
    nop                                           ; $76bd: $00
    jr nz, jr_0b2_76e4                            ; $76be: $20 $24

    jr nz, jr_0b2_76c2                            ; $76c0: $20 $00

jr_0b2_76c2:
    nop                                           ; $76c2: $00
    ld [de], a                                    ; $76c3: $12

jr_0b2_76c4:
    jr @+$05                                      ; $76c4: $18 $03

    inc c                                         ; $76c6: $0c
    inc bc                                        ; $76c7: $03
    jr jr_0b2_76ca                                ; $76c8: $18 $00

jr_0b2_76ca:
    nop                                           ; $76ca: $00
    rst $38                                       ; $76cb: $ff
    ld a, a                                       ; $76cc: $7f
    ld [de], a                                    ; $76cd: $12
    jr jr_0b2_76d0                                ; $76ce: $18 $00

jr_0b2_76d0:
    jr nz, jr_0b2_76d2                            ; $76d0: $20 $00

jr_0b2_76d2:
    nop                                           ; $76d2: $00
    rst $38                                       ; $76d3: $ff
    ld a, a                                       ; $76d4: $7f
    ld [de], a                                    ; $76d5: $12
    jr jr_0b2_76d8                                ; $76d6: $18 $00

jr_0b2_76d8:
    jr nz, jr_0b2_76da                            ; $76d8: $20 $00

jr_0b2_76da:
    nop                                           ; $76da: $00
    rst $38                                       ; $76db: $ff
    ld a, a                                       ; $76dc: $7f
    nop                                           ; $76dd: $00
    jr nz, jr_0b2_76e0                            ; $76de: $20 $00

jr_0b2_76e0:
    jr nz, jr_0b2_76e2                            ; $76e0: $20 $00

jr_0b2_76e2:
    jr nz, @+$01                                  ; $76e2: $20 $ff

jr_0b2_76e4:
    ld a, a                                       ; $76e4: $7f
    nop                                           ; $76e5: $00
    jr nz, jr_0b2_76e8                            ; $76e6: $20 $00

jr_0b2_76e8:
    jr nz, jr_0b2_76ea                            ; $76e8: $20 $00

jr_0b2_76ea:
    jr nz, jr_0b2_76fe                            ; $76ea: $20 $12

    jr @+$05                                      ; $76ec: $18 $03

    inc c                                         ; $76ee: $0c
    inc bc                                        ; $76ef: $03
    jr jr_0b2_76f2                                ; $76f0: $18 $00

jr_0b2_76f2:
    nop                                           ; $76f2: $00
    rst $38                                       ; $76f3: $ff
    ld a, a                                       ; $76f4: $7f
    nop                                           ; $76f5: $00
    jr nz, jr_0b2_76fb                            ; $76f6: $20 $03

jr_0b2_76f8:
    jr jr_0b2_76fa                                ; $76f8: $18 $00

jr_0b2_76fa:
    nop                                           ; $76fa: $00

jr_0b2_76fb:
    rst $38                                       ; $76fb: $ff
    ld a, a                                       ; $76fc: $7f
    nop                                           ; $76fd: $00

jr_0b2_76fe:
    jr nz, jr_0b2_7703                            ; $76fe: $20 $03

    jr jr_0b2_7702                                ; $7700: $18 $00

jr_0b2_7702:
    nop                                           ; $7702: $00

jr_0b2_7703:
    nop                                           ; $7703: $00
    jr nz, jr_0b2_7706                            ; $7704: $20 $00

jr_0b2_7706:
    jr nz, jr_0b2_7708                            ; $7706: $20 $00

jr_0b2_7708:
    jr nz, jr_0b2_770a                            ; $7708: $20 $00

jr_0b2_770a:
    nop                                           ; $770a: $00
    nop                                           ; $770b: $00
    jr nz, jr_0b2_770e                            ; $770c: $20 $00

jr_0b2_770e:
    jr nz, jr_0b2_7710                            ; $770e: $20 $00

jr_0b2_7710:
    jr nz, jr_0b2_7712                            ; $7710: $20 $00

jr_0b2_7712:
    nop                                           ; $7712: $00
    nop                                           ; $7713: $00
    jr nz, jr_0b2_7716                            ; $7714: $20 $00

jr_0b2_7716:
    jr nz, jr_0b2_7718                            ; $7716: $20 $00

jr_0b2_7718:
    jr nz, jr_0b2_771a                            ; $7718: $20 $00

jr_0b2_771a:
    jr nz, jr_0b2_771c                            ; $771a: $20 $00

jr_0b2_771c:
    jr nz, jr_0b2_771e                            ; $771c: $20 $00

jr_0b2_771e:
    jr nz, jr_0b2_7720                            ; $771e: $20 $00

jr_0b2_7720:
    jr nz, jr_0b2_7722                            ; $7720: $20 $00

jr_0b2_7722:
    jr nz, jr_0b2_7724                            ; $7722: $20 $00

jr_0b2_7724:
    jr nz, jr_0b2_76ba                            ; $7724: $20 $94

    ld l, [hl]                                    ; $7726: $6e
    ld a, e                                       ; $7727: $7b
    ld a, e                                       ; $7728: $7b
    nop                                           ; $7729: $00
    jr nz, jr_0b2_772c                            ; $772a: $20 $00

jr_0b2_772c:
    jr nz, jr_0b2_76c2                            ; $772c: $20 $94

    ld l, [hl]                                    ; $772e: $6e
    ld a, e                                       ; $772f: $7b
    ld a, e                                       ; $7730: $7b
    nop                                           ; $7731: $00
    jr nz, jr_0b2_7734                            ; $7732: $20 $00

jr_0b2_7734:
    jr nz, jr_0b2_76ca                            ; $7734: $20 $94

    ld l, [hl]                                    ; $7736: $6e
    ld a, e                                       ; $7737: $7b
    ld a, e                                       ; $7738: $7b
    nop                                           ; $7739: $00
    jr nz, jr_0b2_76d0                            ; $773a: $20 $94

    ld [hl], d                                    ; $773c: $72
    sbc h                                         ; $773d: $9c
    ld a, e                                       ; $773e: $7b
    cp l                                          ; $773f: $bd
    ld a, e                                       ; $7740: $7b
    nop                                           ; $7741: $00
    jr nz, jr_0b2_76d8                            ; $7742: $20 $94

    ld [hl], d                                    ; $7744: $72
    sbc h                                         ; $7745: $9c
    ld a, e                                       ; $7746: $7b
    cp l                                          ; $7747: $bd
    ld a, e                                       ; $7748: $7b
    nop                                           ; $7749: $00
    jr nz, jr_0b2_76e0                            ; $774a: $20 $94

    ld [hl], d                                    ; $774c: $72
    sbc h                                         ; $774d: $9c
    ld a, e                                       ; $774e: $7b
    cp l                                          ; $774f: $bd
    ld a, e                                       ; $7750: $7b
    nop                                           ; $7751: $00
    jr nz, jr_0b2_76e8                            ; $7752: $20 $94

    ld [hl], d                                    ; $7754: $72
    sbc h                                         ; $7755: $9c
    ld a, e                                       ; $7756: $7b
    cp l                                          ; $7757: $bd
    ld a, e                                       ; $7758: $7b
    nop                                           ; $7759: $00

jr_0b2_775a:
    jr nz, jr_0b2_775c                            ; $775a: $20 $00

jr_0b2_775c:
    jr nz, jr_0b2_76f2                            ; $775c: $20 $94

    ld l, [hl]                                    ; $775e: $6e
    ld a, e                                       ; $775f: $7b
    ld a, e                                       ; $7760: $7b
    nop                                           ; $7761: $00
    jr nz, jr_0b2_76ea                            ; $7762: $20 $86

    inc c                                         ; $7764: $0c
    sub h                                         ; $7765: $94
    ld l, [hl]                                    ; $7766: $6e
    ld a, e                                       ; $7767: $7b
    ld a, e                                       ; $7768: $7b
    nop                                           ; $7769: $00
    jr nz, jr_0b2_76f2                            ; $776a: $20 $86

    inc c                                         ; $776c: $0c
    sub h                                         ; $776d: $94
    ld l, [hl]                                    ; $776e: $6e
    ld a, e                                       ; $776f: $7b
    ld a, e                                       ; $7770: $7b
    nop                                           ; $7771: $00
    nop                                           ; $7772: $00
    ld l, c                                       ; $7773: $69
    ld c, l                                       ; $7774: $4d
    sub h                                         ; $7775: $94
    ld [hl], d                                    ; $7776: $72
    xor h                                         ; $7777: $ac
    ld d, l                                       ; $7778: $55
    nop                                           ; $7779: $00
    jr nz, jr_0b2_7782                            ; $777a: $20 $06

    dec a                                         ; $777c: $3d
    call $ac59                                    ; $777d: $cd $59 $ac
    ld d, l                                       ; $7780: $55
    nop                                           ; $7781: $00

jr_0b2_7782:
    jr nz, jr_0b2_778a                            ; $7782: $20 $06

    dec a                                         ; $7784: $3d
    call $ac59                                    ; $7785: $cd $59 $ac
    ld d, l                                       ; $7788: $55
    nop                                           ; $7789: $00

jr_0b2_778a:
    jr nz, jr_0b2_7792                            ; $778a: $20 $06

    dec a                                         ; $778c: $3d
    call $ac59                                    ; $778d: $cd $59 $ac
    ld d, l                                       ; $7790: $55
    nop                                           ; $7791: $00

jr_0b2_7792:
    jr nz, jr_0b2_771a                            ; $7792: $20 $86

    inc c                                         ; $7794: $0c
    sub h                                         ; $7795: $94
    ld l, [hl]                                    ; $7796: $6e
    ld a, e                                       ; $7797: $7b
    ld a, e                                       ; $7798: $7b
    nop                                           ; $7799: $00
    jr nz, jr_0b2_77ae                            ; $779a: $20 $12

    ld a, [bc]                                    ; $779c: $0a
    add [hl]                                      ; $779d: $86
    inc c                                         ; $779e: $0c
    inc a                                         ; $779f: $3c
    rla                                           ; $77a0: $17
    nop                                           ; $77a1: $00
    jr nz, @-$1f                                  ; $77a2: $20 $df

    ld b, e                                       ; $77a4: $43
    xor a                                         ; $77a5: $af
    ld de, $0c86                                  ; $77a6: $11 $86 $0c
    nop                                           ; $77a9: $00
    nop                                           ; $77aa: $00

jr_0b2_77ab:
    daa                                           ; $77ab: $27
    ld b, c                                       ; $77ac: $41
    add [hl]                                      ; $77ad: $86

jr_0b2_77ae:
    inc c                                         ; $77ae: $0c
    ld l, e                                       ; $77af: $6b
    inc c                                         ; $77b0: $0c
    nop                                           ; $77b1: $00
    jr nz, @+$29                                  ; $77b2: $20 $27

    ld b, c                                       ; $77b4: $41
    call z, $934d                                 ; $77b5: $cc $4d $93
    ld e, [hl]                                    ; $77b8: $5e
    nop                                           ; $77b9: $00
    jr nz, jr_0b2_77e3                            ; $77ba: $20 $27

    ld b, c                                       ; $77bc: $41
    call z, $934d                                 ; $77bd: $cc $4d $93
    ld e, [hl]                                    ; $77c0: $5e
    nop                                           ; $77c1: $00
    jr nz, jr_0b2_77eb                            ; $77c2: $20 $27

    ld b, c                                       ; $77c4: $41
    call z, $934d                                 ; $77c5: $cc $4d $93
    ld e, [hl]                                    ; $77c8: $5e
    nop                                           ; $77c9: $00
    jr nz, jr_0b2_77ab                            ; $77ca: $20 $df

    ld b, e                                       ; $77cc: $43
    xor a                                         ; $77cd: $af
    ld de, $0c86                                  ; $77ce: $11 $86 $0c
    nop                                           ; $77d1: $00
    jr nz, jr_0b2_775a                            ; $77d2: $20 $86

    inc c                                         ; $77d4: $0c
    xor a                                         ; $77d5: $af
    ld bc, $0c86                                  ; $77d6: $01 $86 $0c
    ld h, h                                       ; $77d9: $64
    ld [$06d9], sp                                ; $77da: $08 $d9 $06

jr_0b2_77dd:
    rst $18                                       ; $77dd: $df
    ld b, a                                       ; $77de: $47
    xor [hl]                                      ; $77df: $ae
    dec d                                         ; $77e0: $15
    ld l, c                                       ; $77e1: $69
    inc c                                         ; $77e2: $0c

jr_0b2_77e3:
    rst $10                                       ; $77e3: $d7
    ld [hl-], a                                   ; $77e4: $32
    cp a                                          ; $77e5: $bf
    inc de                                        ; $77e6: $13
    rst $38                                       ; $77e7: $ff
    ld b, a                                       ; $77e8: $47
    nop                                           ; $77e9: $00
    db $10                                        ; $77ea: $10

jr_0b2_77eb:
    sub e                                         ; $77eb: $93
    ld e, [hl]                                    ; $77ec: $5e
    ld a, d                                       ; $77ed: $7a
    ld [hl], e                                    ; $77ee: $73
    ld l, e                                       ; $77ef: $6b
    inc c                                         ; $77f0: $0c
    nop                                           ; $77f1: $00
    jr nz, @-$6b                                  ; $77f2: $20 $93

jr_0b2_77f4:
    ld e, [hl]                                    ; $77f4: $5e
    ld a, d                                       ; $77f5: $7a
    ld [hl], e                                    ; $77f6: $73
    ld l, e                                       ; $77f7: $6b
    inc c                                         ; $77f8: $0c
    nop                                           ; $77f9: $00
    jr nz, @-$6b                                  ; $77fa: $20 $93

    ld e, [hl]                                    ; $77fc: $5e
    ld a, d                                       ; $77fd: $7a
    ld [hl], e                                    ; $77fe: $73
    ld l, e                                       ; $77ff: $6b
    inc c                                         ; $7800: $0c
    nop                                           ; $7801: $00
    jr nz, jr_0b2_77dd                            ; $7802: $20 $d9

    ld b, $df                                     ; $7804: $06 $df
    ld b, a                                       ; $7806: $47
    xor [hl]                                      ; $7807: $ae
    dec d                                         ; $7808: $15
    nop                                           ; $7809: $00
    jr nz, jr_0b2_783f                            ; $780a: $20 $33

    ld [bc], a                                    ; $780c: $02
    ld h, e                                       ; $780d: $63
    inc b                                         ; $780e: $04
    add [hl]                                      ; $780f: $86
    inc c                                         ; $7810: $0c
    nop                                           ; $7811: $00
    nop                                           ; $7812: $00
    cp b                                          ; $7813: $b8
    ld a, [bc]                                    ; $7814: $0a
    rst $18                                       ; $7815: $df
    ld b, a                                       ; $7816: $47
    add sp, $00                                   ; $7817: $e8 $00
    ld h, [hl]                                    ; $7819: $66
    ld [$137e], sp                                ; $781a: $08 $7e $13
    xor a                                         ; $781d: $af
    dec c                                         ; $781e: $0d
    ret c                                         ; $781f: $d8

    ld a, [hl+]                                   ; $7820: $2a
    nop                                           ; $7821: $00
    nop                                           ; $7822: $00

jr_0b2_7823:
    rla                                           ; $7823: $17
    ld l, e                                       ; $7824: $6b
    ld l, e                                       ; $7825: $6b
    inc c                                         ; $7826: $0c
    db $dd                                        ; $7827: $dd
    ld a, e                                       ; $7828: $7b
    nop                                           ; $7829: $00
    jr nz, jr_0b2_7823                            ; $782a: $20 $f7

    ld l, d                                       ; $782c: $6a
    sbc $7f                                       ; $782d: $de $7f
    db $dd                                        ; $782f: $dd
    ld a, e                                       ; $7830: $7b
    nop                                           ; $7831: $00
    jr nz, @-$07                                  ; $7832: $20 $f7

    ld l, d                                       ; $7834: $6a
    sbc $7f                                       ; $7835: $de $7f
    db $dd                                        ; $7837: $dd
    ld a, e                                       ; $7838: $7b
    nop                                           ; $7839: $00

jr_0b2_783a:
    jr nz, jr_0b2_77f4                            ; $783a: $20 $b8

    ld a, [bc]                                    ; $783c: $0a
    rst $18                                       ; $783d: $df
    ld b, a                                       ; $783e: $47

jr_0b2_783f:
    add sp, $00                                   ; $783f: $e8 $00
    nop                                           ; $7841: $00

jr_0b2_7842:
    jr nz, jr_0b2_788f                            ; $7842: $20 $4b

    ld bc, $0634                                  ; $7844: $01 $34 $06
    add [hl]                                      ; $7847: $86
    inc c                                         ; $7848: $0c
    nop                                           ; $7849: $00
    nop                                           ; $784a: $00
    dec hl                                        ; $784b: $2b
    ld bc, $0612                                  ; $784c: $01 $12 $06
    ld h, h                                       ; $784f: $64
    nop                                           ; $7850: $00
    nop                                           ; $7851: $00
    nop                                           ; $7852: $00
    ld [hl], h                                    ; $7853: $74
    ld e, $5c                                     ; $7854: $1e $5c
    daa                                           ; $7856: $27
    add hl, bc                                    ; $7857: $09
    dec c                                         ; $7858: $0d
    ld b, l                                       ; $7859: $45
    ld [$337c], sp                                ; $785a: $08 $7c $33
    ret nc                                        ; $785d: $d0

    dec d                                         ; $785e: $15
    ld a, d                                       ; $785f: $7a
    ld [hl], e                                    ; $7860: $73
    nop                                           ; $7861: $00
    jr nz, jr_0b2_783a                            ; $7862: $20 $d6

    ld h, [hl]                                    ; $7864: $66
    sbc $7b                                       ; $7865: $de $7b
    ld e, d                                       ; $7867: $5a
    ld [hl], e                                    ; $7868: $73
    nop                                           ; $7869: $00
    jr nz, jr_0b2_7842                            ; $786a: $20 $d6

    ld h, [hl]                                    ; $786c: $66
    sbc $7b                                       ; $786d: $de $7b
    ld e, d                                       ; $786f: $5a
    ld [hl], e                                    ; $7870: $73
    nop                                           ; $7871: $00
    jr nz, jr_0b2_789f                            ; $7872: $20 $2b

    ld bc, $0612                                  ; $7874: $01 $12 $06
    ld h, h                                       ; $7877: $64
    nop                                           ; $7878: $00
    nop                                           ; $7879: $00

jr_0b2_787a:
    jr nz, @-$25                                  ; $787a: $20 $d9

    ld a, [bc]                                    ; $787c: $0a
    ld d, c                                       ; $787d: $51
    ld e, d                                       ; $787e: $5a
    add [hl]                                      ; $787f: $86
    inc c                                         ; $7880: $0c
    ld bc, $1100                                  ; $7881: $01 $00 $11
    ld b, $09                                     ; $7884: $06 $09
    ld bc, $0b1b                                  ; $7886: $01 $1b $0b
    nop                                           ; $7889: $00
    nop                                           ; $788a: $00
    dec sp                                        ; $788b: $3b
    inc hl                                        ; $788c: $23
    add sp, $0c                                   ; $788d: $e8 $0c

jr_0b2_788f:
    rst $38                                       ; $788f: $ff
    ld c, e                                       ; $7890: $4b
    add [hl]                                      ; $7891: $86
    inc b                                         ; $7892: $04
    ld d, e                                       ; $7893: $53
    ld a, [hl+]                                   ; $7894: $2a
    ld a, h                                       ; $7895: $7c
    dec sp                                        ; $7896: $3b
    adc h                                         ; $7897: $8c
    stop                                          ; $7898: $10 $00
    db $10                                        ; $789a: $10
    sub $66                                       ; $789b: $d6 $66
    sbc $7b                                       ; $789d: $de $7b

jr_0b2_789f:
    adc h                                         ; $789f: $8c
    stop                                          ; $78a0: $10 $00
    jr nz, jr_0b2_787a                            ; $78a2: $20 $d6

    ld h, [hl]                                    ; $78a4: $66
    sbc $7b                                       ; $78a5: $de $7b
    adc h                                         ; $78a7: $8c
    stop                                          ; $78a8: $10 $00
    jr nz, @+$4a                                  ; $78aa: $20 $48

    ld b, l                                       ; $78ac: $45
    add hl, bc                                    ; $78ad: $09
    ld bc, $0b1b                                  ; $78ae: $01 $1b $0b
    add h                                         ; $78b1: $84
    db $10                                        ; $78b2: $10
    cp b                                          ; $78b3: $b8
    ld b, $0f                                     ; $78b4: $06 $0f
    ld d, [hl]                                    ; $78b6: $56
    ld e, c                                       ; $78b7: $59
    ld [hl], e                                    ; $78b8: $73
    ld l, h                                       ; $78b9: $6c
    ld de, $0b1c                                  ; $78ba: $11 $1c $0b
    ld e, h                                       ; $78bd: $5c
    inc sp                                        ; $78be: $33
    sbc l                                         ; $78bf: $9d
    ld d, a                                       ; $78c0: $57
    ld hl, $1300                                  ; $78c1: $21 $00 $13
    ld b, $1b                                     ; $78c4: $06 $1b
    rra                                           ; $78c6: $1f
    dec hl                                        ; $78c7: $2b
    ld bc, $08c7                                  ; $78c8: $01 $c7 $08
    ret c                                         ; $78cb: $d8

    ld e, $f0                                     ; $78cc: $1e $f0
    dec c                                         ; $78ce: $0d
    cp [hl]                                       ; $78cf: $be
    dec sp                                        ; $78d0: $3b
    ld b, e                                       ; $78d1: $43
    inc b                                         ; $78d2: $04
    sub h                                         ; $78d3: $94
    ld d, d                                       ; $78d4: $52
    sbc $7b                                       ; $78d5: $de $7b
    adc l                                         ; $78d7: $8d
    stop                                          ; $78d8: $10 $00
    jr nz, @-$11                                  ; $78da: $20 $ed

    ld d, c                                       ; $78dc: $51
    or h                                          ; $78dd: $b4
    ld h, d                                       ; $78de: $62
    rst $30                                       ; $78df: $f7
    ld l, d                                       ; $78e0: $6a
    nop                                           ; $78e1: $00
    jr nz, @-$19                                  ; $78e2: $20 $e5

    inc a                                         ; $78e4: $3c
    adc e                                         ; $78e5: $8b
    ld c, c                                       ; $78e6: $49
    daa                                           ; $78e7: $27
    ld b, c                                       ; $78e8: $41
    ld [hl+], a                                   ; $78e9: $22
    inc b                                         ; $78ea: $04
    ld d, c                                       ; $78eb: $51
    ld e, d                                       ; $78ec: $5a
    ld a, [hl+]                                   ; $78ed: $2a
    ld bc, $779c                                  ; $78ee: $01 $9c $77
    adc l                                         ; $78f1: $8d
    dec c                                         ; $78f2: $0d
    ld a, [$9506]                                 ; $78f3: $fa $06 $95
    ld a, $be                                     ; $78f6: $3e $be
    inc sp                                        ; $78f8: $33
    ld c, h                                       ; $78f9: $4c
    dec b                                         ; $78fa: $05
    inc e                                         ; $78fb: $1c
    rrca                                          ; $78fc: $0f
    rst $38                                       ; $78fd: $ff
    ld a, a                                       ; $78fe: $7f
    sub [hl]                                      ; $78ff: $96
    ld h, $21                                     ; $7900: $26 $21
    nop                                           ; $7902: $00
    ld de, $df0e                                  ; $7903: $11 $0e $df
    ccf                                           ; $7906: $3f
    add sp, $04                                   ; $7907: $e8 $04

jr_0b2_7909:
    nop                                           ; $7909: $00
    nop                                           ; $790a: $00
    ld e, e                                       ; $790b: $5b
    inc hl                                        ; $790c: $23
    ld e, d                                       ; $790d: $5a
    ld [hl], e                                    ; $790e: $73
    adc e                                         ; $790f: $8b
    inc c                                         ; $7910: $0c
    nop                                           ; $7911: $00
    jr nz, jr_0b2_795d                            ; $7912: $20 $49

    ld c, c                                       ; $7914: $49
    ld [hl], d                                    ; $7915: $72
    ld e, [hl]                                    ; $7916: $5e
    dec b                                         ; $7917: $05
    dec a                                         ; $7918: $3d
    nop                                           ; $7919: $00
    jr jr_0b2_7909                                ; $791a: $18 $ed

    ld d, l                                       ; $791c: $55
    daa                                           ; $791d: $27
    ld b, c                                       ; $791e: $41
    sub h                                         ; $791f: $94
    ld l, [hl]                                    ; $7920: $6e
    ld b, h                                       ; $7921: $44
    ld [$0676], sp                                ; $7922: $08 $76 $06
    adc l                                         ; $7925: $8d
    inc c                                         ; $7926: $0c
    dec de                                        ; $7927: $1b
    rrca                                          ; $7928: $0f
    ld h, h                                       ; $7929: $64
    nop                                           ; $792a: $00
    inc sp                                        ; $792b: $33
    ld b, $9d                                     ; $792c: $06 $9d
    ccf                                           ; $792e: $3f
    ld a, [$2a12]                                 ; $792f: $fa $12 $2a
    add hl, bc                                    ; $7932: $09
    or l                                          ; $7933: $b5
    ld e, d                                       ; $7934: $5a
    ld sp, hl                                     ; $7935: $f9
    ld [de], a                                    ; $7936: $12
    rst $38                                       ; $7937: $ff
    ld a, a                                       ; $7938: $7f
    ld a, [hl+]                                   ; $7939: $2a
    ld bc, $0a76                                  ; $793a: $01 $76 $0a
    rst $38                                       ; $793d: $ff
    ld a, a                                       ; $793e: $7f
    inc a                                         ; $793f: $3c
    dec bc                                        ; $7940: $0b
    adc d                                         ; $7941: $8a
    inc c                                         ; $7942: $0c
    sbc a                                         ; $7943: $9f
    rla                                           ; $7944: $17
    ld [de], a                                    ; $7945: $12
    ld b, $ff                                     ; $7946: $06 $ff
    ld c, a                                       ; $7948: $4f
    inc hl                                        ; $7949: $23
    inc b                                         ; $794a: $04
    ld c, b                                       ; $794b: $48
    ld b, l                                       ; $794c: $45
    ld sp, $0062                                  ; $794d: $31 $62 $00
    jr nz, jr_0b2_7952                            ; $7950: $20 $00

jr_0b2_7952:
    ld [$6a31], sp                                ; $7952: $08 $31 $6a
    xor l                                         ; $7955: $ad
    inc e                                         ; $7956: $1c
    ld e, e                                       ; $7957: $5b
    ld [hl], a                                    ; $7958: $77
    ld [hl+], a                                   ; $7959: $22
    ld [$108e], sp                                ; $795a: $08 $8e $10

jr_0b2_795d:
    inc e                                         ; $795d: $1c
    rrca                                          ; $795e: $0f
    xor [hl]                                      ; $795f: $ae
    ld bc, $01af                                  ; $7960: $01 $af $01
    reti                                          ; $7963: $d9


    ld a, [bc]                                    ; $7964: $0a
    inc e                                         ; $7965: $1c
    rrca                                          ; $7966: $0f
    ld [hl], l                                    ; $7967: $75
    ld a, [bc]                                    ; $7968: $0a
    add h                                         ; $7969: $84
    nop                                           ; $796a: $00
    ld [hl], l                                    ; $796b: $75
    ld b, $ae                                     ; $796c: $06 $ae
    add hl, bc                                    ; $796e: $09
    ld a, l                                       ; $796f: $7d
    dec de                                        ; $7970: $1b
    ld c, e                                       ; $7971: $4b
    dec b                                         ; $7972: $05
    inc a                                         ; $7973: $3c
    daa                                           ; $7974: $27
    push de                                       ; $7975: $d5
    ld l, d                                       ; $7976: $6a
    rst $38                                       ; $7977: $ff
    ld a, a                                       ; $7978: $7f
    ret z                                         ; $7979: $c8

    ld [$6ad5], sp                                ; $797a: $08 $d5 $6a
    sub a                                         ; $797d: $97
    ld a, [bc]                                    ; $797e: $0a
    rst $38                                       ; $797f: $ff
    ld [hl], a                                    ; $7980: $77
    nop                                           ; $7981: $00
    inc e                                         ; $7982: $1c
    db $10                                        ; $7983: $10
    ld h, d                                       ; $7984: $62
    adc [hl]                                      ; $7985: $8e
    db $10                                        ; $7986: $10
    sbc h                                         ; $7987: $9c
    ld a, e                                       ; $7988: $7b
    nop                                           ; $7989: $00
    nop                                           ; $798a: $00
    sub h                                         ; $798b: $94
    ld l, [hl]                                    ; $798c: $6e
    adc [hl]                                      ; $798d: $8e
    db $10                                        ; $798e: $10
    cp l                                          ; $798f: $bd
    ld a, e                                       ; $7990: $7b
    nop                                           ; $7991: $00
    nop                                           ; $7992: $00
    ld l, e                                       ; $7993: $6b
    inc c                                         ; $7994: $0c
    ld [$4321], sp                                ; $7995: $08 $21 $43
    ld [$0064], sp                                ; $7998: $08 $64 $00
    ld a, [$4b0a]                                 ; $799b: $fa $0a $4b
    ld bc, $01ce                                  ; $799e: $01 $ce $01
    add h                                         ; $79a1: $84
    nop                                           ; $79a2: $00
    rst $08                                       ; $79a3: $cf
    ld bc, $0f9f                                  ; $79a4: $01 $9f $0f
    or h                                          ; $79a7: $b4
    ld hl, $00a5                                  ; $79a8: $21 $a5 $00
    cp b                                          ; $79ab: $b8
    ld b, $9e                                     ; $79ac: $06 $9e
    inc hl                                        ; $79ae: $23
    xor [hl]                                      ; $79af: $ae
    ld bc, $04e8                                  ; $79b0: $01 $e8 $04
    sub l                                         ; $79b3: $95
    ld l, $5a                                     ; $79b4: $2e $5a
    ld [hl], e                                    ; $79b6: $73
    ld e, h                                       ; $79b7: $5c
    rra                                           ; $79b8: $1f
    nop                                           ; $79b9: $00
    nop                                           ; $79ba: $00
    sub h                                         ; $79bb: $94
    ld l, [hl]                                    ; $79bc: $6e
    adc [hl]                                      ; $79bd: $8e
    inc d                                         ; $79be: $14
    nop                                           ; $79bf: $00
    jr nz, jr_0b2_79c2                            ; $79c0: $20 $00

jr_0b2_79c2:
    ld [$6610], sp                                ; $79c2: $08 $10 $66
    adc [hl]                                      ; $79c5: $8e
    db $10                                        ; $79c6: $10
    jr @+$79                                      ; $79c7: $18 $77

    ld b, d                                       ; $79c9: $42
    ld [$4a52], sp                                ; $79ca: $08 $52 $4a
    add $18                                       ; $79cd: $c6 $18
    ld [$0021], sp                                ; $79cf: $08 $21 $00
    ld [$1d92], sp                                ; $79d2: $08 $92 $1d
    rst $18                                       ; $79d5: $df
    ld b, d                                       ; $79d6: $42
    add sp, $18                                   ; $79d7: $e8 $18
    ld b, d                                       ; $79d9: $42
    ld [$5a51], sp                                ; $79da: $08 $51 $5a
    ld c, h                                       ; $79dd: $4c
    add hl, hl                                    ; $79de: $29
    rst $18                                       ; $79df: $df
    ld b, d                                       ; $79e0: $42
    and l                                         ; $79e1: $a5
    nop                                           ; $79e2: $00
    or e                                          ; $79e3: $b3
    add hl, de                                    ; $79e4: $19
    ld d, c                                       ; $79e5: $51
    ld d, [hl]                                    ; $79e6: $56
    ei                                            ; $79e7: $fb
    ld a, [bc]                                    ; $79e8: $0a
    ld h, l                                       ; $79e9: $65
    inc b                                         ; $79ea: $04
    ld d, h                                       ; $79eb: $54
    ld a, [bc]                                    ; $79ec: $0a
    ld e, l                                       ; $79ed: $5d
    dec bc                                        ; $79ee: $0b
    xor $0c                                       ; $79ef: $ee $0c
    nop                                           ; $79f1: $00
    inc e                                         ; $79f2: $1c
    adc a                                         ; $79f3: $8f
    inc d                                         ; $79f4: $14
    push hl                                       ; $79f5: $e5
    inc a                                         ; $79f6: $3c

jr_0b2_79f7:
    adc $59                                       ; $79f7: $ce $59
    ld bc, $ac0c                                  ; $79f9: $01 $0c $ac
    ld d, l                                       ; $79fc: $55
    ld a, [bc]                                    ; $79fd: $0a
    dec l                                         ; $79fe: $2d
    add hl, sp                                    ; $79ff: $39
    ld [hl], a                                    ; $7a00: $77
    nop                                           ; $7a01: $00
    nop                                           ; $7a02: $00
    rst $28                                       ; $7a03: $ef
    dec a                                         ; $7a04: $3d
    rst $20                                       ; $7a05: $e7
    inc e                                         ; $7a06: $1c
    rst $30                                       ; $7a07: $f7
    ld e, [hl]                                    ; $7a08: $5e
    ld hl, $df00                                  ; $7a09: $21 $00 $df
    ld b, d                                       ; $7a0c: $42
    and h                                         ; $7a0d: $a4
    jr jr_0b2_79f7                                ; $7a0e: $18 $e7

    inc e                                         ; $7a10: $1c
    db $eb                                        ; $7a11: $eb
    inc d                                         ; $7a12: $14
    cp d                                          ; $7a13: $ba
    ld c, [hl]                                    ; $7a14: $4e
    ld h, b                                       ; $7a15: $60
    ld a, l                                       ; $7a16: $7d
    rst $38                                       ; $7a17: $ff
    ld a, a                                       ; $7a18: $7f
    ld hl, $5108                                  ; $7a19: $21 $08 $51
    ld d, [hl]                                    ; $7a1c: $56
    rst $38                                       ; $7a1d: $ff
    ld a, a                                       ; $7a1e: $7f
    or h                                          ; $7a1f: $b4
    ld hl, $0401                                  ; $7a20: $21 $01 $04
    xor l                                         ; $7a23: $ad
    add hl, sp                                    ; $7a24: $39
    pop de                                        ; $7a25: $d1
    ld bc, $06b8                                  ; $7a26: $01 $b8 $06
    nop                                           ; $7a29: $00
    inc e                                         ; $7a2a: $1c
    xor a                                         ; $7a2b: $af
    inc d                                         ; $7a2c: $14
    ld h, $3d                                     ; $7a2d: $26 $3d
    cpl                                           ; $7a2f: $2f
    ld d, [hl]                                    ; $7a30: $56
    ld hl, $4914                                  ; $7a31: $21 $14 $49
    ld c, c                                       ; $7a34: $49
    sub $5a                                       ; $7a35: $d6 $5a
    ld c, d                                       ; $7a37: $4a
    add hl, hl                                    ; $7a38: $29
    and l                                         ; $7a39: $a5
    inc d                                         ; $7a3a: $14
    xor l                                         ; $7a3b: $ad
    dec [hl]                                      ; $7a3c: $35
    ld c, d                                       ; $7a3d: $4a
    add hl, hl                                    ; $7a3e: $29
    ld sp, $0046                                  ; $7a3f: $31 $46 $00
    inc b                                         ; $7a42: $04
    ldh a, [rSTAT]                                ; $7a43: $f0 $41
    rst $18                                       ; $7a45: $df
    ld b, d                                       ; $7a46: $42
    rst $20                                       ; $7a47: $e7
    inc e                                         ; $7a48: $1c
    nop                                           ; $7a49: $00
    ld h, c                                       ; $7a4a: $61
    sub c                                         ; $7a4b: $91
    ld h, d                                       ; $7a4c: $62
    ld c, $11                                     ; $7a4d: $0e $11
    rst $18                                       ; $7a4f: $df
    ld b, d                                       ; $7a50: $42
    ld h, e                                       ; $7a51: $63
    inc c                                         ; $7a52: $0c
    rst $38                                       ; $7a53: $ff
    ld c, d                                       ; $7a54: $4a
    ld l, l                                       ; $7a55: $6d
    add hl, hl                                    ; $7a56: $29
    rst $38                                       ; $7a57: $ff
    ld a, a                                       ; $7a58: $7f
    nop                                           ; $7a59: $00
    nop                                           ; $7a5a: $00
    ld sp, $c646                                  ; $7a5b: $31 $46 $c6
    jr @+$1a                                      ; $7a5e: $18 $18

    ld h, e                                       ; $7a60: $63
    nop                                           ; $7a61: $00
    inc e                                         ; $7a62: $1c
    rrca                                          ; $7a63: $0f
    ld e, d                                       ; $7a64: $5a
    call $5a20                                    ; $7a65: $cd $20 $5a
    ld [hl], e                                    ; $7a68: $73
    ld b, d                                       ; $7a69: $42
    ld [$3dac], sp                                ; $7a6a: $08 $ac $3d
    sub h                                         ; $7a6d: $94
    ld d, d                                       ; $7a6e: $52
    nop                                           ; $7a6f: $00
    jr nz, jr_0b2_7ab4                            ; $7a70: $20 $42

    ld [$5294], sp                                ; $7a72: $08 $94 $52
    ld l, e                                       ; $7a75: $6b
    dec l                                         ; $7a76: $2d
    add $18                                       ; $7a77: $c6 $18
    nop                                           ; $7a79: $00
    inc b                                         ; $7a7a: $04
    ret nc                                        ; $7a7b: $d0

    dec [hl]                                      ; $7a7c: $35
    or h                                          ; $7a7d: $b4
    ld h, d                                       ; $7a7e: $62
    and h                                         ; $7a7f: $a4
    db $10                                        ; $7a80: $10
    rst $00                                       ; $7a81: $c7
    nop                                           ; $7a82: $00
    rst $18                                       ; $7a83: $df
    ld b, d                                       ; $7a84: $42
    dec bc                                        ; $7a85: $0b
    ld e, d                                       ; $7a86: $5a
    ld c, [hl]                                    ; $7a87: $4e
    dec e                                         ; $7a88: $1d
    nop                                           ; $7a89: $00
    nop                                           ; $7a8a: $00
    rst $18                                       ; $7a8b: $df
    ld b, d                                       ; $7a8c: $42
    and l                                         ; $7a8d: $a5
    inc d                                         ; $7a8e: $14
    dec bc                                        ; $7a8f: $0b
    dec e                                         ; $7a90: $1d
    nop                                           ; $7a91: $00
    nop                                           ; $7a92: $00
    adc $39                                       ; $7a93: $ce $39
    rst $30                                       ; $7a95: $f7
    ld e, [hl]                                    ; $7a96: $5e
    adc h                                         ; $7a97: $8c
    stop                                          ; $7a98: $10 $00
    nop                                           ; $7a9a: $00
    rrca                                          ; $7a9b: $0f
    ld c, [hl]                                    ; $7a9c: $4e
    ld a, e                                       ; $7a9d: $7b
    ld [hl], e                                    ; $7a9e: $73
    nop                                           ; $7a9f: $00
    jr nz, jr_0b2_7ac3                            ; $7aa0: $20 $21

    inc b                                         ; $7aa2: $04
    adc $39                                       ; $7aa3: $ce $39
    sub h                                         ; $7aa5: $94
    ld d, d                                       ; $7aa6: $52
    nop                                           ; $7aa7: $00
    jr nz, @+$44                                  ; $7aa8: $20 $42

    ld [$4a52], sp                                ; $7aaa: $08 $52 $4a
    jr jr_0b2_7b12                                ; $7aad: $18 $63

    ld c, d                                       ; $7aaf: $4a
    add hl, hl                                    ; $7ab0: $29
    ld b, h                                       ; $7ab1: $44
    db $10                                        ; $7ab2: $10
    sub h                                         ; $7ab3: $94

jr_0b2_7ab4:
    ld d, d                                       ; $7ab4: $52
    ld l, e                                       ; $7ab5: $6b
    dec l                                         ; $7ab6: $2d
    db $dd                                        ; $7ab7: $dd
    ld [hl], a                                    ; $7ab8: $77
    call $df28                                    ; $7ab9: $cd $28 $df
    ld b, d                                       ; $7abc: $42
    db $d3                                        ; $7abd: $d3
    ld d, h                                       ; $7abe: $54
    or $25                                        ; $7abf: $f6 $25
    nop                                           ; $7ac1: $00
    nop                                           ; $7ac2: $00

jr_0b2_7ac3:
    or h                                          ; $7ac3: $b4
    ld hl, $2108                                  ; $7ac4: $21 $08 $21
    rst $18                                       ; $7ac7: $df
    ld b, d                                       ; $7ac8: $42
    nop                                           ; $7ac9: $00
    nop                                           ; $7aca: $00
    adc $39                                       ; $7acb: $ce $39
    sbc h                                         ; $7acd: $9c
    ld [hl], e                                    ; $7ace: $73
    or b                                          ; $7acf: $b0
    inc d                                         ; $7ad0: $14
    ld [hl+], a                                   ; $7ad1: $22
    inc b                                         ; $7ad2: $04
    ld d, c                                       ; $7ad3: $51
    ld e, d                                       ; $7ad4: $5a
    ld e, d                                       ; $7ad5: $5a
    ld [hl], e                                    ; $7ad6: $73
    nop                                           ; $7ad7: $00
    jr nz, jr_0b2_7ada                            ; $7ad8: $20 $00

jr_0b2_7ada:
    inc d                                         ; $7ada: $14
    ld d, d                                       ; $7adb: $52
    ld c, d                                       ; $7adc: $4a
    add $1c                                       ; $7add: $c6 $1c
    ld e, d                                       ; $7adf: $5a
    ld l, e                                       ; $7ae0: $6b
    ld hl, $5208                                  ; $7ae1: $21 $08 $52
    ld c, d                                       ; $7ae4: $4a
    ld a, e                                       ; $7ae5: $7b
    ld l, e                                       ; $7ae6: $6b
    or l                                          ; $7ae7: $b5
    ld d, d                                       ; $7ae8: $52
    ld b, e                                       ; $7ae9: $43
    ld [$39ce], sp                                ; $7aea: $08 $ce $39
    cp $7b                                        ; $7aed: $fe $7b
    sub h                                         ; $7aef: $94
    ld d, d                                       ; $7af0: $52
    jr z, jr_0b2_7b13                             ; $7af1: $28 $20

    dec d                                         ; $7af3: $15
    ld d, l                                       ; $7af4: $55
    rst $18                                       ; $7af5: $df
    ld b, d                                       ; $7af6: $42
    ld [hl], c                                    ; $7af7: $71
    ld hl, $0000                                  ; $7af8: $21 $00 $00
    sub d                                         ; $7afb: $92
    dec e                                         ; $7afc: $1d
    adc l                                         ; $7afd: $8d
    ld sp, $14a4                                  ; $7afe: $31 $a4 $14
    nop                                           ; $7b01: $00
    nop                                           ; $7b02: $00
    ld l, $25                                     ; $7b03: $2e $25
    ld [hl], e                                    ; $7b05: $73
    ld c, [hl]                                    ; $7b06: $4e
    sbc h                                         ; $7b07: $9c
    ld [hl], e                                    ; $7b08: $73
    nop                                           ; $7b09: $00
    nop                                           ; $7b0a: $00
    rst $28                                       ; $7b0b: $ef

jr_0b2_7b0c:
    ld b, l                                       ; $7b0c: $45
    add hl, sp                                    ; $7b0d: $39
    ld h, e                                       ; $7b0e: $63
    nop                                           ; $7b0f: $00
    jr nz, jr_0b2_7b12                            ; $7b10: $20 $00

jr_0b2_7b12:
    nop                                           ; $7b12: $00

jr_0b2_7b13:
    jr @+$65                                      ; $7b13: $18 $63

    ld [$0021], sp                                ; $7b15: $08 $21 $00

Call_0b2_7b18:
    jr nz, jr_0b2_7b3b                            ; $7b18: $20 $21

    inc b                                         ; $7b1a: $04
    db $10                                        ; $7b1b: $10
    ld b, d                                       ; $7b1c: $42
    add hl, sp                                    ; $7b1d: $39
    ld h, a                                       ; $7b1e: $67
    add hl, hl                                    ; $7b1f: $29
    dec h                                         ; $7b20: $25
    ld h, h                                       ; $7b21: $64
    db $10                                        ; $7b22: $10
    rst $30                                       ; $7b23: $f7
    ld e, [hl]                                    ; $7b24: $5e
    xor $39                                       ; $7b25: $ee $39
    sbc $7b                                       ; $7b27: $de $7b
    inc bc                                        ; $7b29: $03
    inc c                                         ; $7b2a: $0c
    xor a                                         ; $7b2b: $af
    jr c, jr_0b2_7b64                             ; $7b2c: $38 $36

    ld d, c                                       ; $7b2e: $51

jr_0b2_7b2f:
    ld [$0028], sp                                ; $7b2f: $08 $28 $00
    nop                                           ; $7b32: $00
    ld l, e                                       ; $7b33: $6b
    dec l                                         ; $7b34: $2d
    ld h, h                                       ; $7b35: $64

jr_0b2_7b36:
    db $10                                        ; $7b36: $10
    ld sp, $0046                                  ; $7b37: $31 $46 $00
    nop                                           ; $7b3a: $00

jr_0b2_7b3b:
    add hl, hl                                    ; $7b3b: $29

jr_0b2_7b3c:
    dec h                                         ; $7b3c: $25
    ld sp, $d242                                  ; $7b3d: $31 $42 $d2
    inc d                                         ; $7b40: $14
    nop                                           ; $7b41: $00
    nop                                           ; $7b42: $00
    db $10                                        ; $7b43: $10
    ld b, d                                       ; $7b44: $42
    nop                                           ; $7b45: $00
    jr nz, jr_0b2_7b2f                            ; $7b46: $20 $e7

    inc e                                         ; $7b48: $1c
    nop                                           ; $7b49: $00
    nop                                           ; $7b4a: $00
    adc $39                                       ; $7b4b: $ce $39
    jr jr_0b2_7bb2                                ; $7b4d: $18 $63

    nop                                           ; $7b4f: $00
    jr nz, @+$44                                  ; $7b50: $20 $42

    ld [$4e73], sp                                ; $7b52: $08 $73 $4e
    ld e, d                                       ; $7b55: $5a
    ld l, e                                       ; $7b56: $6b
    adc h                                         ; $7b57: $8c
    ld sp, $0c63                                  ; $7b58: $31 $63 $0c
    rst $30                                       ; $7b5b: $f7
    ld e, [hl]                                    ; $7b5c: $5e
    rst $28                                       ; $7b5d: $ef
    dec a                                         ; $7b5e: $3d
    sbc h                                         ; $7b5f: $9c
    ld [hl], e                                    ; $7b60: $73
    nop                                           ; $7b61: $00
    nop                                           ; $7b62: $00
    or b                                          ; $7b63: $b0

jr_0b2_7b64:
    inc a                                         ; $7b64: $3c
    sub a                                         ; $7b65: $97
    ld e, c                                       ; $7b66: $59
    ld l, b                                       ; $7b67: $68
    db $10                                        ; $7b68: $10
    ld hl, $6b04                                  ; $7b69: $21 $04 $6b
    dec l                                         ; $7b6c: $2d
    push bc                                       ; $7b6d: $c5

jr_0b2_7b6e:
    inc d                                         ; $7b6e: $14
    rst $28                                       ; $7b6f: $ef
    dec a                                         ; $7b70: $3d
    ld hl, $6b04                                  ; $7b71: $21 $04 $6b
    dec l                                         ; $7b74: $2d
    sub $5a                                       ; $7b75: $d6 $5a
    jp nc, RST_18                                 ; $7b77: $d2 $18 $00

    nop                                           ; $7b7a: $00
    ld [$0021], sp                                ; $7b7b: $08 $21 $00
    jr nz, jr_0b2_7b0c                            ; $7b7e: $20 $8c

    ld sp, $1800                                  ; $7b80: $31 $00 $18
    ld [hl], e                                    ; $7b83: $73
    ld c, d                                       ; $7b84: $4a
    sbc h                                         ; $7b85: $9c
    ld l, a                                       ; $7b86: $6f
    rst $20                                       ; $7b87: $e7
    inc e                                         ; $7b88: $1c
    ld [hl+], a                                   ; $7b89: $22
    inc b                                         ; $7b8a: $04
    ld [hl], e                                    ; $7b8b: $73
    ld c, [hl]                                    ; $7b8c: $4e
    ld l, e                                       ; $7b8d: $6b
    add hl, hl                                    ; $7b8e: $29
    ld a, e                                       ; $7b8f: $7b
    ld l, e                                       ; $7b90: $6b
    add $18                                       ; $7b91: $c6 $18
    sub $5a                                       ; $7b93: $d6 $5a
    adc $39                                       ; $7b95: $ce $39
    ld e, d                                       ; $7b97: $5a
    ld l, e                                       ; $7b98: $6b
    nop                                           ; $7b99: $00
    nop                                           ; $7b9a: $00
    push af                                       ; $7b9b: $f5
    dec h                                         ; $7b9c: $25
    or $62                                        ; $7b9d: $f6 $62
    ld b, h                                       ; $7b9f: $44
    db $10                                        ; $7ba0: $10
    ld hl, $6b04                                  ; $7ba1: $21 $04 $6b
    dec l                                         ; $7ba4: $2d
    db $d3                                        ; $7ba5: $d3
    jr jr_0b2_7b6e                                ; $7ba6: $18 $c6

    jr jr_0b2_7baa                                ; $7ba8: $18 $00

jr_0b2_7baa:
    nop                                           ; $7baa: $00
    ld e, d                                       ; $7bab: $5a
    ld l, e                                       ; $7bac: $6b
    pop de                                        ; $7bad: $d1
    jr jr_0b2_7b36                                ; $7bae: $18 $86

    stop                                          ; $7bb0: $10 $00

jr_0b2_7bb2:
    nop                                           ; $7bb2: $00
    add hl, sp                                    ; $7bb3: $39
    ld l, a                                       ; $7bb4: $6f
    nop                                           ; $7bb5: $00
    jr nz, jr_0b2_7b3c                            ; $7bb6: $20 $84

    stop                                          ; $7bb8: $10 $00
    jr @+$12                                      ; $7bba: $18 $10

    ld b, d                                       ; $7bbc: $42
    add hl, sp                                    ; $7bbd: $39
    ld h, a                                       ; $7bbe: $67
    ld [$4221], sp                                ; $7bbf: $08 $21 $42
    ld [$4e52], sp                                ; $7bc2: $08 $52 $4e
    ld l, e                                       ; $7bc5: $6b
    dec l                                         ; $7bc6: $2d
    sbc $7b                                       ; $7bc7: $de $7b
    ld b, d                                       ; $7bc9: $42

jr_0b2_7bca:
    ld [$4a52], sp                                ; $7bca: $08 $52 $4a
    ld l, e                                       ; $7bcd: $6b
    dec l                                         ; $7bce: $2d
    ld e, d                                       ; $7bcf: $5a
    ld l, e                                       ; $7bd0: $6b
    ld b, d                                       ; $7bd1: $42
    ld [$4210], sp                                ; $7bd2: $08 $10 $42
    add hl, hl                                    ; $7bd5: $29
    dec h                                         ; $7bd6: $25
    sub $5a                                       ; $7bd7: $d6 $5a
    ld hl, $d304                                  ; $7bd9: $21 $04 $d3
    jr jr_0b2_7c28                                ; $7bdc: $18 $4a

    add hl, hl                                    ; $7bde: $29
    ld [hl-], a                                   ; $7bdf: $32
    ld b, [hl]                                    ; $7be0: $46
    nop                                           ; $7be1: $00
    nop                                           ; $7be2: $00
    adc l                                         ; $7be3: $8d
    ld sp, $5ab5                                  ; $7be4: $31 $b5 $5a
    db $d3                                        ; $7be7: $d3
    jr jr_0b2_7bea                                ; $7be8: $18 $00

jr_0b2_7bea:
    nop                                           ; $7bea: $00
    cpl                                           ; $7beb: $2f
    ld d, [hl]                                    ; $7bec: $56
    push hl                                       ; $7bed: $e5
    inc a                                         ; $7bee: $3c
    nop                                           ; $7bef: $00
    jr nz, jr_0b2_7bf2                            ; $7bf0: $20 $00

jr_0b2_7bf2:
    nop                                           ; $7bf2: $00
    ld e, d                                       ; $7bf3: $5a
    ld h, a                                       ; $7bf4: $67
    nop                                           ; $7bf5: $00
    jr nz, jr_0b2_7c00                            ; $7bf6: $20 $08

    ld hl, $0842                                  ; $7bf8: $21 $42 $08
    sub $5a                                       ; $7bfb: $d6 $5a
    xor l                                         ; $7bfd: $ad
    dec [hl]                                      ; $7bfe: $35
    cp l                                          ; $7bff: $bd

jr_0b2_7c00:
    ld [hl], e                                    ; $7c00: $73
    ld hl, $7304                                  ; $7c01: $21 $04 $73
    ld c, [hl]                                    ; $7c04: $4e
    ld [$5a21], sp                                ; $7c05: $08 $21 $5a
    ld l, e                                       ; $7c08: $6b

jr_0b2_7c09:
    nop                                           ; $7c09: $00
    nop                                           ; $7c0a: $00
    ld d, d                                       ; $7c0b: $52
    ld c, d                                       ; $7c0c: $4a
    and l                                         ; $7c0d: $a5
    inc d                                         ; $7c0e: $14
    add hl, hl                                    ; $7c0f: $29
    dec h                                         ; $7c10: $25
    nop                                           ; $7c11: $00
    nop                                           ; $7c12: $00
    rst $28                                       ; $7c13: $ef
    dec a                                         ; $7c14: $3d
    call nc, Call_000_3118                        ; $7c15: $d4 $18 $31
    ld b, [hl]                                    ; $7c18: $46
    nop                                           ; $7c19: $00
    nop                                           ; $7c1a: $00
    pop de                                        ; $7c1b: $d1
    jr jr_0b2_7bca                                ; $7c1c: $18 $ac

    ld b, c                                       ; $7c1e: $41
    ld d, c                                       ; $7c1f: $51
    ld d, [hl]                                    ; $7c20: $56
    nop                                           ; $7c21: $00
    jr nz, jr_0b2_7c09                            ; $7c22: $20 $e5

    inc a                                         ; $7c24: $3c
    ld c, b                                       ; $7c25: $48
    ld b, l                                       ; $7c26: $45
    ld d, c                                       ; $7c27: $51

jr_0b2_7c28:
    ld d, [hl]                                    ; $7c28: $56
    nop                                           ; $7c29: $00
    nop                                           ; $7c2a: $00
    xor $5d                                       ; $7c2b: $ee $5d
    nop                                           ; $7c2d: $00
    jr nz, jr_0b2_7c8a                            ; $7c2e: $20 $5a

    ld l, e                                       ; $7c30: $6b
    ld b, d                                       ; $7c31: $42
    ld [$4a52], sp                                ; $7c32: $08 $52 $4a
    cp l                                          ; $7c35: $bd
    ld [hl], a                                    ; $7c36: $77
    ld [$0021], sp                                ; $7c37: $08 $21 $00
    nop                                           ; $7c3a: $00
    ld [hl], e                                    ; $7c3b: $73
    ld c, [hl]                                    ; $7c3c: $4e
    cp l                                          ; $7c3d: $bd
    ld [hl], a                                    ; $7c3e: $77
    and [hl]                                      ; $7c3f: $a6
    jr @+$44                                      ; $7c40: $18 $42

    ld [$2d6b], sp                                ; $7c42: $08 $6b $2d
    ld a, e                                       ; $7c45: $7b
    ld l, a                                       ; $7c46: $6f
    ld sp, $0046                                  ; $7c47: $31 $46 $00
    nop                                           ; $7c4a: $00
    call nc, Call_0b2_7b18                        ; $7c4b: $d4 $18 $7b
    ld l, a                                       ; $7c4e: $6f
    ld sp, $0046                                  ; $7c4f: $31 $46 $00
    nop                                           ; $7c52: $00
    jr z, jr_0b2_7c8a                             ; $7c53: $28 $35

    call nc, $8b18                                ; $7c55: $d4 $18 $8b
    ld c, l                                       ; $7c58: $4d
    nop                                           ; $7c59: $00
    jr nz, @-$19                                  ; $7c5a: $20 $e5

    inc a                                         ; $7c5c: $3c
    call nc, $8b18                                ; $7c5d: $d4 $18 $8b

jr_0b2_7c60:
    ld c, l                                       ; $7c60: $4d
    nop                                           ; $7c61: $00
    jr nz, jr_0b2_7cd7                            ; $7c62: $20 $73

    ld c, [hl]                                    ; $7c64: $4e
    cp l                                          ; $7c65: $bd
    ld [hl], a                                    ; $7c66: $77
    and [hl]                                      ; $7c67: $a6
    jr jr_0b2_7ccd                                ; $7c68: $18 $63

    inc c                                         ; $7c6a: $0c
    ld d, d                                       ; $7c6b: $52
    ld c, d                                       ; $7c6c: $4a
    add hl, hl                                    ; $7c6d: $29
    dec h                                         ; $7c6e: $25
    sub h                                         ; $7c6f: $94
    ld l, [hl]                                    ; $7c70: $6e
    nop                                           ; $7c71: $00
    nop                                           ; $7c72: $00
    ld d, h                                       ; $7c73: $54
    ld c, d                                       ; $7c74: $4a
    sbc $7b                                       ; $7c75: $de $7b
    rst $20                                       ; $7c77: $e7
    inc e                                         ; $7c78: $1c
    ld hl, $3104                                  ; $7c79: $21 $04 $31
    ld b, [hl]                                    ; $7c7c: $46
    add hl, bc                                    ; $7c7d: $09
    ld hl, $6f7b                                  ; $7c7e: $21 $7b $6f
    nop                                           ; $7c81: $00
    nop                                           ; $7c82: $00
    call nc, $ce18                                ; $7c83: $d4 $18 $ce
    add hl, sp                                    ; $7c86: $39
    or l                                          ; $7c87: $b5
    ld d, [hl]                                    ; $7c88: $56
    nop                                           ; $7c89: $00

jr_0b2_7c8a:
    nop                                           ; $7c8a: $00
    db $10                                        ; $7c8b: $10
    ld h, d                                       ; $7c8c: $62
    and $24                                       ; $7c8d: $e6 $24
    call nc, RST_18                               ; $7c8f: $d4 $18 $00
    jr nz, jr_0b2_7ca4                            ; $7c92: $20 $10

    ld h, d                                       ; $7c94: $62
    and $24                                       ; $7c95: $e6 $24
    call nc, RST_18                               ; $7c97: $d4 $18 $00
    jr nz, jr_0b2_7cf0                            ; $7c9a: $20 $54

    ld c, d                                       ; $7c9c: $4a
    sbc $7b                                       ; $7c9d: $de $7b
    rst $20                                       ; $7c9f: $e7
    inc e                                         ; $7ca0: $1c
    ld hl, $3108                                  ; $7ca1: $21 $08 $31

jr_0b2_7ca4:
    ld d, [hl]                                    ; $7ca4: $56
    ld e, d                                       ; $7ca5: $5a
    ld [hl], a                                    ; $7ca6: $77

jr_0b2_7ca7:
    add $18                                       ; $7ca7: $c6 $18
    nop                                           ; $7ca9: $00
    nop                                           ; $7caa: $00
    ld sp, $7b46                                  ; $7cab: $31 $46 $7b
    ld l, a                                       ; $7cae: $6f
    and l                                         ; $7caf: $a5
    inc d                                         ; $7cb0: $14
    nop                                           ; $7cb1: $00
    nop                                           ; $7cb2: $00
    and l                                         ; $7cb3: $a5
    inc d                                         ; $7cb4: $14
    ld [$6b21], sp                                ; $7cb5: $08 $21 $6b
    dec l                                         ; $7cb8: $2d
    nop                                           ; $7cb9: $00
    nop                                           ; $7cba: $00
    add hl, hl                                    ; $7cbb: $29
    dec h                                         ; $7cbc: $25
    call nc, Call_0b2_6318                        ; $7cbd: $d4 $18 $63
    inc c                                         ; $7cc0: $0c
    nop                                           ; $7cc1: $00
    inc c                                         ; $7cc2: $0c
    sub h                                         ; $7cc3: $94
    ld [hl], d                                    ; $7cc4: $72
    push de                                       ; $7cc5: $d5
    jr jr_0b2_7d43                                ; $7cc6: $18 $7b

    ld [hl], a                                    ; $7cc8: $77
    nop                                           ; $7cc9: $00
    jr nz, jr_0b2_7c60                            ; $7cca: $20 $94

    ld [hl], d                                    ; $7ccc: $72

jr_0b2_7ccd:
    push de                                       ; $7ccd: $d5
    jr jr_0b2_7d4b                                ; $7cce: $18 $7b

    ld [hl], a                                    ; $7cd0: $77
    nop                                           ; $7cd1: $00
    jr nz, jr_0b2_7d05                            ; $7cd2: $20 $31

    ld b, [hl]                                    ; $7cd4: $46
    ld a, e                                       ; $7cd5: $7b
    ld l, a                                       ; $7cd6: $6f

jr_0b2_7cd7:
    and l                                         ; $7cd7: $a5
    inc d                                         ; $7cd8: $14
    nop                                           ; $7cd9: $00
    nop                                           ; $7cda: $00
    ld a, e                                       ; $7cdb: $7b
    ld [hl], a                                    ; $7cdc: $77
    nop                                           ; $7cdd: $00
    jr nz, @+$01                                  ; $7cde: $20 $ff

    ld a, a                                       ; $7ce0: $7f
    ld hl, $5204                                  ; $7ce1: $21 $04 $52
    ld b, [hl]                                    ; $7ce4: $46
    add sp, $20                                   ; $7ce5: $e8 $20
    ld e, d                                       ; $7ce7: $5a
    ld l, e                                       ; $7ce8: $6b
    nop                                           ; $7ce9: $00
    nop                                           ; $7cea: $00
    or l                                          ; $7ceb: $b5
    ld e, d                                       ; $7cec: $5a
    ld l, e                                       ; $7ced: $6b
    dec l                                         ; $7cee: $2d
    db $dd                                        ; $7cef: $dd

jr_0b2_7cf0:
    ld a, e                                       ; $7cf0: $7b
    nop                                           ; $7cf1: $00
    nop                                           ; $7cf2: $00
    push hl                                       ; $7cf3: $e5
    inc a                                         ; $7cf4: $3c
    rrca                                          ; $7cf5: $0f
    ld e, d                                       ; $7cf6: $5a
    ld c, c                                       ; $7cf7: $49
    ld c, c                                       ; $7cf8: $49
    nop                                           ; $7cf9: $00
    nop                                           ; $7cfa: $00

jr_0b2_7cfb:
    rst $30                                       ; $7cfb: $f7
    ld [hl], d                                    ; $7cfc: $72
    sbc $7b                                       ; $7cfd: $de $7b
    nop                                           ; $7cff: $00
    jr nz, jr_0b2_7d02                            ; $7d00: $20 $00

jr_0b2_7d02:
    jr nz, jr_0b2_7cfb                            ; $7d02: $20 $f7

    ld [hl], d                                    ; $7d04: $72

jr_0b2_7d05:
    sbc $7b                                       ; $7d05: $de $7b
    nop                                           ; $7d07: $00
    jr nz, jr_0b2_7d0a                            ; $7d08: $20 $00

jr_0b2_7d0a:
    jr nz, jr_0b2_7d5e                            ; $7d0a: $20 $52

    ld b, [hl]                                    ; $7d0c: $46
    add sp, $20                                   ; $7d0d: $e8 $20
    ld e, d                                       ; $7d0f: $5a
    ld l, e                                       ; $7d10: $6b
    nop                                           ; $7d11: $00
    jr nz, jr_0b2_7ca7                            ; $7d12: $20 $93

    ld h, d                                       ; $7d14: $62
    sbc h                                         ; $7d15: $9c
    ld [hl], a                                    ; $7d16: $77
    ld l, c                                       ; $7d17: $69
    ld b, l                                       ; $7d18: $45
    ld h, e                                       ; $7d19: $63
    inc c                                         ; $7d1a: $0c
    ld sp, $2862                                  ; $7d1b: $31 $62 $28
    dec [hl]                                      ; $7d1e: $35
    rst $30                                       ; $7d1f: $f7

jr_0b2_7d20:
    ld [hl], d                                    ; $7d20: $72
    add h                                         ; $7d21: $84
    db $10                                        ; $7d22: $10
    ld d, c                                       ; $7d23: $51
    ld e, d                                       ; $7d24: $5a
    ld c, d                                       ; $7d25: $4a
    add hl, hl                                    ; $7d26: $29
    sbc h                                         ; $7d27: $9c
    ld a, e                                       ; $7d28: $7b
    ld l, d                                       ; $7d29: $6a
    ld c, l                                       ; $7d2a: $4d
    sub h                                         ; $7d2b: $94
    ld l, [hl]                                    ; $7d2c: $6e
    jr nc, jr_0b2_7d8d                            ; $7d2d: $30 $5e

    ld e, d                                       ; $7d2f: $5a
    ld [hl], e                                    ; $7d30: $73
    nop                                           ; $7d31: $00
    jr nz, jr_0b2_7da7                            ; $7d32: $20 $73

    ld e, [hl]                                    ; $7d34: $5e
    cp h                                          ; $7d35: $bc
    ld a, e                                       ; $7d36: $7b
    push hl                                       ; $7d37: $e5
    inc a                                         ; $7d38: $3c
    nop                                           ; $7d39: $00
    jr nz, @+$75                                  ; $7d3a: $20 $73

    ld e, [hl]                                    ; $7d3c: $5e
    cp h                                          ; $7d3d: $bc
    ld a, e                                       ; $7d3e: $7b
    push hl                                       ; $7d3f: $e5
    inc a                                         ; $7d40: $3c
    ldh a, [rP1]                                  ; $7d41: $f0 $00

jr_0b2_7d43:
    add [hl]                                      ; $7d43: $86
    nop                                           ; $7d44: $00
    ld d, b                                       ; $7d45: $50
    nop                                           ; $7d46: $00
    ld bc, $8080                                  ; $7d47: $01 $80 $80

jr_0b2_7d4a:
    ld [bc], a                                    ; $7d4a: $02

jr_0b2_7d4b:
    ld [$c040], sp                                ; $7d4b: $08 $40 $c0
    nop                                           ; $7d4e: $00
    ret nz                                        ; $7d4f: $c0

    db $10                                        ; $7d50: $10
    ld hl, $8061                                  ; $7d51: $21 $61 $80

jr_0b2_7d54:
    jr nz, jr_0b2_7d5e                            ; $7d54: $20 $08

    ld h, b                                       ; $7d56: $60
    db $10                                        ; $7d57: $10
    ld h, b                                       ; $7d58: $60
    nop                                           ; $7d59: $00
    nop                                           ; $7d5a: $00
    ld h, b                                       ; $7d5b: $60
    add b                                         ; $7d5c: $80
    and b                                         ; $7d5d: $a0

jr_0b2_7d5e:
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
    jr nz, @+$42                                  ; $7d6d: $20 $40

    db $10                                        ; $7d6f: $10
    ld b, b                                       ; $7d70: $40
    jr c, jr_0b2_7d54                             ; $7d71: $38 $e1

    ld [de], a                                    ; $7d73: $12
    ld [hl], b                                    ; $7d74: $70
    add hl, bc                                    ; $7d75: $09
    ld e, b                                       ; $7d76: $58
    ld b, c                                       ; $7d77: $41
    inc h                                         ; $7d78: $24
    ld d, b                                       ; $7d79: $50
    jr c, jr_0b2_7d4a                             ; $7d7a: $38 $ce

    ld sp, $0a84                                  ; $7d7c: $31 $84 $0a
    add h                                         ; $7d7f: $84
    ld e, a                                       ; $7d80: $5f
    ld b, b                                       ; $7d81: $40
    ld [$4830], sp                                ; $7d82: $08 $30 $48
    stop                                          ; $7d85: $10 $00
    cpl                                           ; $7d87: $2f
    jr jr_0b2_7d91                                ; $7d88: $18 $07

    ld [$0003], sp                                ; $7d8a: $08 $03 $00

jr_0b2_7d8d:
    inc b                                         ; $7d8d: $04
    dec b                                         ; $7d8e: $05
    ld [bc], a                                    ; $7d8f: $02
    inc b                                         ; $7d90: $04

jr_0b2_7d91:
    ld bc, $0804                                  ; $7d91: $01 $04 $08
    inc b                                         ; $7d94: $04
    ld b, b                                       ; $7d95: $40
    ld [$0003], sp                                ; $7d96: $08 $03 $00
    inc b                                         ; $7d99: $04
    ld [$0800], sp                                ; $7d9a: $08 $00 $08
    db $10                                        ; $7d9d: $10
    jr jr_0b2_7d20                                ; $7d9e: $18 $80

    ld a, [hl-]                                   ; $7da0: $3a
    jr nz, jr_0b2_7e14                            ; $7da1: $20 $71

    ld [bc], a                                    ; $7da3: $02
    ld [hl-], a                                   ; $7da4: $32
    add hl, bc                                    ; $7da5: $09
    ld a, [de]                                    ; $7da6: $1a

jr_0b2_7da7:
    inc h                                         ; $7da7: $24
    inc e                                         ; $7da8: $1c
    nop                                           ; $7da9: $00
    ld [bc], a                                    ; $7daa: $02
    inc c                                         ; $7dab: $0c
    db $10                                        ; $7dac: $10
    ld [$0004], sp                                ; $7dad: $08 $04 $00
    ld [$1000], sp                                ; $7db0: $08 $00 $10
    nop                                           ; $7db3: $00
    db $10                                        ; $7db4: $10
    jr nz, @+$38                                  ; $7db5: $20 $36

    ld [$0010], sp                                ; $7db7: $08 $10 $00
    jr jr_0b2_7ddd                                ; $7dba: $18 $21

    add b                                         ; $7dbc: $80
    xor d                                         ; $7dbd: $aa
    jr jr_0b2_7e10                                ; $7dbe: $18 $50

    jr nz, @+$72                                  ; $7dc0: $20 $70

    nop                                           ; $7dc2: $00
    ld b, b                                       ; $7dc3: $40
    db $10                                        ; $7dc4: $10
    ld b, b                                       ; $7dc5: $40
    stop                                          ; $7dc6: $10 $00
    ld hl, sp+$05                                 ; $7dc8: $f8 $05
    cp d                                          ; $7dca: $ba
    jr @+$4e                                      ; $7dcb: $18 $4c

    ld [de], a                                    ; $7dcd: $12

jr_0b2_7dce:
    ld b, [hl]                                    ; $7dce: $46
    add hl, bc                                    ; $7dcf: $09
    dec b                                         ; $7dd0: $05
    ld b, e                                       ; $7dd1: $43
    inc b                                         ; $7dd2: $04
    ld b, c                                       ; $7dd3: $41
    add d                                         ; $7dd4: $82
    ret nz                                        ; $7dd5: $c0

    jr nz, jr_0b2_7df8                            ; $7dd6: $20 $20

jr_0b2_7dd8:
    add h                                         ; $7dd8: $84
    ld [bc], a                                    ; $7dd9: $02
    ld [$0207], sp                                ; $7dda: $08 $07 $02

jr_0b2_7ddd:
    add [hl]                                      ; $7ddd: $86
    ld bc, $0483                                  ; $7dde: $01 $83 $04
    rst $00                                       ; $7de1: $c7
    nop                                           ; $7de2: $00
    db $dd                                        ; $7de3: $dd
    nop                                           ; $7de4: $00
    ld a, $10                                     ; $7de5: $3e $10
    inc b                                         ; $7de7: $04
    jr nz, jr_0b2_7e0a                            ; $7de8: $20 $20

    ld d, b                                       ; $7dea: $50
    ret nz                                        ; $7deb: $c0

    jr nz, jr_0b2_7dd8                            ; $7dec: $20 $ea

    jr @-$0e                                      ; $7dee: $18 $f0

    nop                                           ; $7df0: $00
    add [hl]                                      ; $7df1: $86
    nop                                           ; $7df2: $00
    ld d, b                                       ; $7df3: $50
    nop                                           ; $7df4: $00
    ld bc, $8080                                  ; $7df5: $01 $80 $80

jr_0b2_7df8:
    ld [bc], a                                    ; $7df8: $02
    ld [$c040], sp                                ; $7df9: $08 $40 $c0
    nop                                           ; $7dfc: $00
    ret nz                                        ; $7dfd: $c0

    db $10                                        ; $7dfe: $10
    ld hl, $8061                                  ; $7dff: $21 $61 $80

jr_0b2_7e02:
    jr nz, jr_0b2_7e0c                            ; $7e02: $20 $08

Jump_0b2_7e04:
    ld h, b                                       ; $7e04: $60
    db $10                                        ; $7e05: $10
    ld h, b                                       ; $7e06: $60
    nop                                           ; $7e07: $00
    nop                                           ; $7e08: $00
    ld h, b                                       ; $7e09: $60

jr_0b2_7e0a:
    add b                                         ; $7e0a: $80
    and b                                         ; $7e0b: $a0

Call_0b2_7e0c:
jr_0b2_7e0c:
    ld d, c                                       ; $7e0c: $51
    and b                                         ; $7e0d: $a0
    db $10                                        ; $7e0e: $10
    db $10                                        ; $7e0f: $10

jr_0b2_7e10:
    and b                                         ; $7e10: $a0
    add b                                         ; $7e11: $80
    jr nc, @+$22                                  ; $7e12: $30 $20

jr_0b2_7e14:
    inc b                                         ; $7e14: $04
    inc b                                         ; $7e15: $04
    nop                                           ; $7e16: $00
    db $fc                                        ; $7e17: $fc
    ld bc, $0440                                  ; $7e18: $01 $40 $04
    jr nz, @+$42                                  ; $7e1b: $20 $40

    db $10                                        ; $7e1d: $10
    ld b, b                                       ; $7e1e: $40
    jr c, jr_0b2_7e02                             ; $7e1f: $38 $e1

    ld [de], a                                    ; $7e21: $12
    ld [hl], b                                    ; $7e22: $70
    add hl, bc                                    ; $7e23: $09
    ld e, b                                       ; $7e24: $58
    ld b, c                                       ; $7e25: $41
    inc h                                         ; $7e26: $24
    ld d, b                                       ; $7e27: $50
    jr c, jr_0b2_7df8                             ; $7e28: $38 $ce

    ld sp, $0a84                                  ; $7e2a: $31 $84 $0a
    add h                                         ; $7e2d: $84
    ld e, a                                       ; $7e2e: $5f
    ld b, b                                       ; $7e2f: $40
    ld [$4830], sp                                ; $7e30: $08 $30 $48
    stop                                          ; $7e33: $10 $00
    cpl                                           ; $7e35: $2f
    jr jr_0b2_7e3f                                ; $7e36: $18 $07

    ld [$0003], sp                                ; $7e38: $08 $03 $00
    inc b                                         ; $7e3b: $04
    dec b                                         ; $7e3c: $05
    ld [bc], a                                    ; $7e3d: $02
    inc b                                         ; $7e3e: $04

jr_0b2_7e3f:
    ld bc, $0804                                  ; $7e3f: $01 $04 $08
    inc b                                         ; $7e42: $04
    ld b, b                                       ; $7e43: $40
    ld [$0003], sp                                ; $7e44: $08 $03 $00
    inc b                                         ; $7e47: $04
    ld [$0800], sp                                ; $7e48: $08 $00 $08
    db $10                                        ; $7e4b: $10
    jr jr_0b2_7dce                                ; $7e4c: $18 $80

    ld a, [hl-]                                   ; $7e4e: $3a
    jr nz, jr_0b2_7ec2                            ; $7e4f: $20 $71

    ld [bc], a                                    ; $7e51: $02
    ld [hl-], a                                   ; $7e52: $32
    add hl, bc                                    ; $7e53: $09
    ld a, [de]                                    ; $7e54: $1a
    inc h                                         ; $7e55: $24
    inc e                                         ; $7e56: $1c
    nop                                           ; $7e57: $00
    ld [bc], a                                    ; $7e58: $02
    inc c                                         ; $7e59: $0c
    db $10                                        ; $7e5a: $10
    ld [$0004], sp                                ; $7e5b: $08 $04 $00
    ld [$1000], sp                                ; $7e5e: $08 $00 $10
    nop                                           ; $7e61: $00
    db $10                                        ; $7e62: $10
    jr nz, @+$38                                  ; $7e63: $20 $36

    ld [$0010], sp                                ; $7e65: $08 $10 $00
    jr jr_0b2_7e8b                                ; $7e68: $18 $21

    add b                                         ; $7e6a: $80
    xor d                                         ; $7e6b: $aa
    jr jr_0b2_7ebe                                ; $7e6c: $18 $50

    jr nz, @+$72                                  ; $7e6e: $20 $70

    nop                                           ; $7e70: $00
    ld b, b                                       ; $7e71: $40
    db $10                                        ; $7e72: $10
    ld b, b                                       ; $7e73: $40
    stop                                          ; $7e74: $10 $00
    ld hl, sp+$05                                 ; $7e76: $f8 $05
    cp d                                          ; $7e78: $ba
    jr @+$4e                                      ; $7e79: $18 $4c

    ld [de], a                                    ; $7e7b: $12

jr_0b2_7e7c:
    ld b, [hl]                                    ; $7e7c: $46
    add hl, bc                                    ; $7e7d: $09
    dec b                                         ; $7e7e: $05
    ld b, e                                       ; $7e7f: $43
    inc b                                         ; $7e80: $04
    ld b, c                                       ; $7e81: $41
    add d                                         ; $7e82: $82
    ret nz                                        ; $7e83: $c0

    jr nz, jr_0b2_7ea6                            ; $7e84: $20 $20

jr_0b2_7e86:
    add h                                         ; $7e86: $84
    ld [bc], a                                    ; $7e87: $02
    ld [$0207], sp                                ; $7e88: $08 $07 $02

jr_0b2_7e8b:
    add [hl]                                      ; $7e8b: $86
    ld bc, $0483                                  ; $7e8c: $01 $83 $04
    rst $00                                       ; $7e8f: $c7
    nop                                           ; $7e90: $00
    db $dd                                        ; $7e91: $dd
    nop                                           ; $7e92: $00
    ld a, $10                                     ; $7e93: $3e $10
    inc b                                         ; $7e95: $04
    jr nz, jr_0b2_7eb8                            ; $7e96: $20 $20

    ld d, b                                       ; $7e98: $50
    ret nz                                        ; $7e99: $c0

    jr nz, jr_0b2_7e86                            ; $7e9a: $20 $ea

    jr @-$0e                                      ; $7e9c: $18 $f0

    nop                                           ; $7e9e: $00
    add [hl]                                      ; $7e9f: $86
    nop                                           ; $7ea0: $00
    ld d, b                                       ; $7ea1: $50
    nop                                           ; $7ea2: $00
    ld bc, $8080                                  ; $7ea3: $01 $80 $80

jr_0b2_7ea6:
    ld [bc], a                                    ; $7ea6: $02
    ld [$c040], sp                                ; $7ea7: $08 $40 $c0
    nop                                           ; $7eaa: $00
    ret nz                                        ; $7eab: $c0

    db $10                                        ; $7eac: $10
    ld hl, $8061                                  ; $7ead: $21 $61 $80

jr_0b2_7eb0:
    jr nz, jr_0b2_7eba                            ; $7eb0: $20 $08

    ld h, b                                       ; $7eb2: $60
    db $10                                        ; $7eb3: $10
    ld h, b                                       ; $7eb4: $60
    nop                                           ; $7eb5: $00
    nop                                           ; $7eb6: $00
    ld h, b                                       ; $7eb7: $60

jr_0b2_7eb8:
    add b                                         ; $7eb8: $80
    and b                                         ; $7eb9: $a0

jr_0b2_7eba:
    ld d, c                                       ; $7eba: $51
    and b                                         ; $7ebb: $a0
    db $10                                        ; $7ebc: $10
    db $10                                        ; $7ebd: $10

jr_0b2_7ebe:
    and b                                         ; $7ebe: $a0
    add b                                         ; $7ebf: $80
    jr nc, @+$22                                  ; $7ec0: $30 $20

jr_0b2_7ec2:
    inc b                                         ; $7ec2: $04
    inc b                                         ; $7ec3: $04
    nop                                           ; $7ec4: $00
    db $fc                                        ; $7ec5: $fc
    ld bc, $0440                                  ; $7ec6: $01 $40 $04
    jr nz, @+$42                                  ; $7ec9: $20 $40

    db $10                                        ; $7ecb: $10
    ld b, b                                       ; $7ecc: $40
    jr c, jr_0b2_7eb0                             ; $7ecd: $38 $e1

    ld [de], a                                    ; $7ecf: $12
    ld [hl], b                                    ; $7ed0: $70
    add hl, bc                                    ; $7ed1: $09
    ld e, b                                       ; $7ed2: $58
    ld b, c                                       ; $7ed3: $41
    inc h                                         ; $7ed4: $24
    ld d, b                                       ; $7ed5: $50
    jr c, jr_0b2_7ea6                             ; $7ed6: $38 $ce

    ld sp, $0a84                                  ; $7ed8: $31 $84 $0a
    add h                                         ; $7edb: $84
    ld e, a                                       ; $7edc: $5f
    ld b, b                                       ; $7edd: $40
    ld [$4830], sp                                ; $7ede: $08 $30 $48
    stop                                          ; $7ee1: $10 $00
    cpl                                           ; $7ee3: $2f
    jr jr_0b2_7eed                                ; $7ee4: $18 $07

    ld [$0003], sp                                ; $7ee6: $08 $03 $00
    inc b                                         ; $7ee9: $04
    dec b                                         ; $7eea: $05
    ld [bc], a                                    ; $7eeb: $02
    inc b                                         ; $7eec: $04

jr_0b2_7eed:
    ld bc, $0804                                  ; $7eed: $01 $04 $08
    inc b                                         ; $7ef0: $04
    ld b, b                                       ; $7ef1: $40
    ld [$0003], sp                                ; $7ef2: $08 $03 $00
    inc b                                         ; $7ef5: $04
    ld [$0800], sp                                ; $7ef6: $08 $00 $08
    db $10                                        ; $7ef9: $10
    jr jr_0b2_7e7c                                ; $7efa: $18 $80

    ld a, [hl-]                                   ; $7efc: $3a
    jr nz, @+$73                                  ; $7efd: $20 $71

    ld [bc], a                                    ; $7eff: $02
    ld [hl-], a                                   ; $7f00: $32
    add hl, bc                                    ; $7f01: $09
    ld a, [de]                                    ; $7f02: $1a
    inc h                                         ; $7f03: $24
    inc e                                         ; $7f04: $1c
    nop                                           ; $7f05: $00
    ld [bc], a                                    ; $7f06: $02
    inc c                                         ; $7f07: $0c
    db $10                                        ; $7f08: $10
    ld [$0004], sp                                ; $7f09: $08 $04 $00
    ld [$1000], sp                                ; $7f0c: $08 $00 $10
    nop                                           ; $7f0f: $00
    db $10                                        ; $7f10: $10
    jr nz, @+$38                                  ; $7f11: $20 $36

    ld [$0010], sp                                ; $7f13: $08 $10 $00
    jr jr_0b2_7f39                                ; $7f16: $18 $21

    add b                                         ; $7f18: $80
    xor d                                         ; $7f19: $aa
    jr @+$52                                      ; $7f1a: $18 $50

    jr nz, @+$72                                  ; $7f1c: $20 $70

    nop                                           ; $7f1e: $00
    ld b, b                                       ; $7f1f: $40
    db $10                                        ; $7f20: $10
    ld b, b                                       ; $7f21: $40
    stop                                          ; $7f22: $10 $00
    ld hl, sp+$05                                 ; $7f24: $f8 $05
    cp d                                          ; $7f26: $ba
    jr @+$4e                                      ; $7f27: $18 $4c

    ld [de], a                                    ; $7f29: $12
    ld b, [hl]                                    ; $7f2a: $46
    add hl, bc                                    ; $7f2b: $09
    dec b                                         ; $7f2c: $05
    ld b, e                                       ; $7f2d: $43
    inc b                                         ; $7f2e: $04
    ld b, c                                       ; $7f2f: $41
    add d                                         ; $7f30: $82
    ret nz                                        ; $7f31: $c0

    jr nz, @+$22                                  ; $7f32: $20 $20

jr_0b2_7f34:
    add h                                         ; $7f34: $84
    ld [bc], a                                    ; $7f35: $02
    ld [$0207], sp                                ; $7f36: $08 $07 $02

jr_0b2_7f39:
    add [hl]                                      ; $7f39: $86
    ld bc, $0483                                  ; $7f3a: $01 $83 $04
    rst $00                                       ; $7f3d: $c7
    nop                                           ; $7f3e: $00
    db $dd                                        ; $7f3f: $dd
    nop                                           ; $7f40: $00
    ld a, $10                                     ; $7f41: $3e $10
    inc b                                         ; $7f43: $04
    jr nz, @+$22                                  ; $7f44: $20 $20

    ld d, b                                       ; $7f46: $50
    ret nz                                        ; $7f47: $c0

    jr nz, jr_0b2_7f34                            ; $7f48: $20 $ea

    db $18                                        ; $7f4a: $18

    db $10, $00, $02, $00, $f4, $ee, $ef, $f0, $f1, $f2, $f3, $ed, $ed, $ed, $ed, $ed
    db $ed, $ed, $ed, $ed, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $ed, $ed, $ed, $ed, $ed
    db $ed, $ed, $ed, $ed, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08

    stop                                          ; $7f8f: $10 $00
    ld [bc], a                                    ; $7f91: $02
    nop                                           ; $7f92: $00
    db $f4                                        ; $7f93: $f4
    xor $ef                                       ; $7f94: $ee $ef
    ldh a, [$f1]                                  ; $7f96: $f0 $f1
    ld a, [c]                                     ; $7f98: $f2
    di                                            ; $7f99: $f3
    db $ed                                        ; $7f9a: $ed
    db $ed                                        ; $7f9b: $ed
    db $ed                                        ; $7f9c: $ed
    db $ed                                        ; $7f9d: $ed
    db $ed                                        ; $7f9e: $ed
    db $ed                                        ; $7f9f: $ed
    db $ed                                        ; $7fa0: $ed
    db $ed                                        ; $7fa1: $ed
    db $ed                                        ; $7fa2: $ed
    push af                                       ; $7fa3: $f5
    or $f7                                        ; $7fa4: $f6 $f7
    ld hl, sp-$07                                 ; $7fa6: $f8 $f9
    ld a, [$edfb]                                 ; $7fa8: $fa $fb $ed
    db $ed                                        ; $7fab: $ed
    db $ed                                        ; $7fac: $ed
    db $ed                                        ; $7fad: $ed
    db $ed                                        ; $7fae: $ed
    db $ed                                        ; $7faf: $ed
    db $ed                                        ; $7fb0: $ed
    db $ed                                        ; $7fb1: $ed
    db $ed                                        ; $7fb2: $ed
    ld [$0808], sp                                ; $7fb3: $08 $08 $08
    ld [$0808], sp                                ; $7fb6: $08 $08 $08
    ld [$0808], sp                                ; $7fb9: $08 $08 $08
    ld [$0808], sp                                ; $7fbc: $08 $08 $08
    ld [$0808], sp                                ; $7fbf: $08 $08 $08
    ld [$0808], sp                                ; $7fc2: $08 $08 $08
    ld [$0808], sp                                ; $7fc5: $08 $08 $08
    ld [$0808], sp                                ; $7fc8: $08 $08 $08
    ld [$0808], sp                                ; $7fcb: $08 $08 $08
    ld [$0808], sp                                ; $7fce: $08 $08 $08
    db $08                                        ; $7fd1: $08
    db $08                                        ; $7fd2: $08

    db $04, $00, $04, $00, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b
    db $0c, $0d, $0e, $0f, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01

    inc d                                         ; $7ff7: $14
    ld l, $ff                                     ; $7ff8: $2e $ff
    ld a, a                                       ; $7ffa: $7f
    rst $38                                       ; $7ffb: $ff
    jr z, jr_0b2_7ffe                             ; $7ffc: $28 $00

jr_0b2_7ffe:
    nop                                           ; $7ffe: $00
    rst $38                                       ; $7fff: $ff
