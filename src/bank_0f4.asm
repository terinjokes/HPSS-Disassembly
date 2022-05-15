; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0f4", ROMX[$4000], BANK[$f4]

    db $f4                                        ; $4000: $f4
    rla                                           ; $4001: $17
    add hl, bc                                    ; $4002: $09
    rst $30                                       ; $4003: $f7
    ld a, [bc]                                    ; $4004: $0a
    ld hl, sp+$08                                 ; $4005: $f8 $08
    ld hl, sp-$14                                 ; $4007: $f8 $ec
    ld a, [c]                                     ; $4009: $f2
    db $f4                                        ; $400a: $f4
    ld [bc], a                                    ; $400b: $02
    db $f4                                        ; $400c: $f4
    rst $28                                       ; $400d: $ef
    db $fc                                        ; $400e: $fc
    rst $38                                       ; $400f: $ff
    db $fc                                        ; $4010: $fc
    rrca                                          ; $4011: $0f
    db $fc                                        ; $4012: $fc
    pop af                                        ; $4013: $f1
    inc b                                         ; $4014: $04
    ld bc, $f804                                  ; $4015: $01 $04 $f8
    inc c                                         ; $4018: $0c
    add d                                         ; $4019: $82
    nop                                           ; $401a: $00
    ld bc, $0004                                  ; $401b: $01 $04 $00
    inc b                                         ; $401e: $04
    ld bc, $0088                                  ; $401f: $01 $88 $00
    ld bc, $0302                                  ; $4022: $01 $02 $03
    ld [bc], a                                    ; $4025: $02
    inc bc                                        ; $4026: $03
    ld [bc], a                                    ; $4027: $02
    inc bc                                        ; $4028: $03
    inc b                                         ; $4029: $04
    ld bc, $0081                                  ; $402a: $01 $81 $00
    dec b                                         ; $402d: $05
    ld bc, $0004                                  ; $402e: $01 $04 $00
    sbc e                                         ; $4031: $9b
    ld b, $07                                     ; $4032: $06 $07
    add hl, bc                                    ; $4034: $09
    ld c, $00                                     ; $4035: $0e $00
    inc e                                         ; $4037: $1c
    inc l                                         ; $4038: $2c
    inc [hl]                                      ; $4039: $34
    ld d, b                                       ; $403a: $50
    ld h, b                                       ; $403b: $60
    ld b, b                                       ; $403c: $40
    ld [hl], b                                    ; $403d: $70
    add b                                         ; $403e: $80
    ld b, b                                       ; $403f: $40
    ldh [rP1], a                                  ; $4040: $e0 $00
    and b                                         ; $4042: $a0
    ret nz                                        ; $4043: $c0

    ld h, a                                       ; $4044: $67
    sub b                                         ; $4045: $90
    ld e, c                                       ; $4046: $59
    and [hl]                                      ; $4047: $a6
    nop                                           ; $4048: $00
    add c                                         ; $4049: $81
    add b                                         ; $404a: $80
    ret nz                                        ; $404b: $c0

    nop                                           ; $404c: $00
    ld [bc], a                                    ; $404d: $02
    add b                                         ; $404e: $80
    ld [bc], a                                    ; $404f: $02
    nop                                           ; $4050: $00
    sbc e                                         ; $4051: $9b
    add b                                         ; $4052: $80
    nop                                           ; $4053: $00
    add b                                         ; $4054: $80
    nop                                           ; $4055: $00
    add b                                         ; $4056: $80
    ld b, b                                       ; $4057: $40
    add b                                         ; $4058: $80
    ld bc, $83c0                                  ; $4059: $01 $c0 $83
    ret nz                                        ; $405c: $c0

    ld [c], a                                     ; $405d: $e2
    pop bc                                        ; $405e: $c1
    ld h, d                                       ; $405f: $62
    ld bc, $42bc                                  ; $4060: $01 $bc $42
    nop                                           ; $4063: $00
    jr c, jr_0f4_406a                             ; $4064: $38 $04

    inc e                                         ; $4066: $1c
    ld a, [bc]                                    ; $4067: $0a
    inc c                                         ; $4068: $0c
    dec b                                         ; $4069: $05

jr_0f4_406a:
    ld b, $02                                     ; $406a: $06 $02
    inc bc                                        ; $406c: $03
    ld [bc], a                                    ; $406d: $02
    ld bc, $0004                                  ; $406e: $01 $04 $00
    xor c                                         ; $4071: $a9
    ld b, $00                                     ; $4072: $06 $00
    rra                                           ; $4074: $1f
    dec sp                                        ; $4075: $3b
    adc c                                         ; $4076: $89
    or $50                                        ; $4077: $f6 $50
    and e                                         ; $4079: $a3
    db $10                                        ; $407a: $10
    jr nz, jr_0f4_4081                            ; $407b: $20 $04

    jr jr_0f4_4081                                ; $407d: $18 $02

    dec b                                         ; $407f: $05
    ld [bc], a                                    ; $4080: $02

jr_0f4_4081:
    ld bc, $0204                                  ; $4081: $01 $04 $02
    inc c                                         ; $4084: $0c

jr_0f4_4085:
    nop                                           ; $4085: $00
    ld [$0804], sp                                ; $4086: $08 $04 $08
    nop                                           ; $4089: $00
    ld d, $1e                                     ; $408a: $16 $1e
    or c                                          ; $408c: $b1
    ld a, a                                       ; $408d: $7f
    adc $31                                       ; $408e: $ce $31
    rst $28                                       ; $4090: $ef
    ldh a, [$9f]                                  ; $4091: $f0 $9f
    ldh [$8f], a                                  ; $4093: $e0 $8f
    ldh a, [$c4]                                  ; $4095: $f0 $c4
    ei                                            ; $4097: $fb
    ld h, c                                       ; $4098: $61
    ld a, a                                       ; $4099: $7f
    dec hl                                        ; $409a: $2b

jr_0f4_409b:
    ld [bc], a                                    ; $409b: $02
    ld e, a                                       ; $409c: $5f
    add a                                         ; $409d: $87
    ccf                                           ; $409e: $3f
    sub $1a                                       ; $409f: $d6 $1a
    inc b                                         ; $40a1: $04
    adc e                                         ; $40a2: $8b
    rlca                                          ; $40a3: $07
    ld [$000c], sp                                ; $40a4: $08 $0c $00
    add h                                         ; $40a7: $84
    ld h, b                                       ; $40a8: $60
    add c                                         ; $40a9: $81
    ret z                                         ; $40aa: $c8

    rst $38                                       ; $40ab: $ff
    ld [bc], a                                    ; $40ac: $02
    ld a, $1c                                     ; $40ad: $3e $1c
    nop                                           ; $40af: $00
    ld [bc], a                                    ; $40b0: $02
    ret nz                                        ; $40b1: $c0

    sub [hl]                                      ; $40b2: $96
    jr nc, jr_0f4_4085                            ; $40b3: $30 $d0

    adc b                                         ; $40b5: $88
    ld hl, sp+$05                                 ; $40b6: $f8 $05
    inc a                                         ; $40b8: $3c
    ld e, $19                                     ; $40b9: $1e $19
    dec b                                         ; $40bb: $05
    inc bc                                        ; $40bc: $03
    dec c                                         ; $40bd: $0d
    ld [bc], a                                    ; $40be: $02
    jr nc, jr_0f4_40d0                            ; $40bf: $30 $0f

    ld [hl+], a                                   ; $40c1: $22
    inc de                                        ; $40c2: $13
    ld b, b                                       ; $40c3: $40
    ld hl, $0140                                  ; $40c4: $21 $40 $01
    add b                                         ; $40c7: $80
    ld b, b                                       ; $40c8: $40
    ld [bc], a                                    ; $40c9: $02
    add b                                         ; $40ca: $80
    and h                                         ; $40cb: $a4
    ld b, b                                       ; $40cc: $40
    ret nz                                        ; $40cd: $c0

    ld b, b                                       ; $40ce: $40
    ret nz                                        ; $40cf: $c0

jr_0f4_40d0:
    ld b, b                                       ; $40d0: $40
    ret nz                                        ; $40d1: $c0

    cp b                                          ; $40d2: $b8
    ret nz                                        ; $40d3: $c0

    ld b, h                                       ; $40d4: $44
    cp b                                          ; $40d5: $b8
    add d                                         ; $40d6: $82
    add h                                         ; $40d7: $84
    ld bc, $0102                                  ; $40d8: $01 $02 $01
    nop                                           ; $40db: $00
    ld [bc], a                                    ; $40dc: $02
    inc bc                                        ; $40dd: $03
    nop                                           ; $40de: $00
    add e                                         ; $40df: $83
    add c                                         ; $40e0: $81
    ld b, d                                       ; $40e1: $42
    add c                                         ; $40e2: $81
    ld b, a                                       ; $40e3: $47
    add [hl]                                      ; $40e4: $86
    ld c, d                                       ; $40e5: $4a
    ld e, h                                       ; $40e6: $5c
    sbc h                                         ; $40e7: $9c
    ld l, b                                       ; $40e8: $68
    jr jr_0f4_409b                                ; $40e9: $18 $b0

    ret nc                                        ; $40eb: $d0

    ld h, b                                       ; $40ec: $60
    ret nz                                        ; $40ed: $c0

    add b                                         ; $40ee: $80
    and b                                         ; $40ef: $a0
    ld [bc], a                                    ; $40f0: $02
    nop                                           ; $40f1: $00
    dec b                                         ; $40f2: $05
    add b                                         ; $40f3: $80
    add d                                         ; $40f4: $82
    nop                                           ; $40f5: $00
    ret nz                                        ; $40f6: $c0

    ld [bc], a                                    ; $40f7: $02
    ld b, b                                       ; $40f8: $40
    adc l                                         ; $40f9: $8d
    ret nz                                        ; $40fa: $c0

    ld b, b                                       ; $40fb: $40
    ret nz                                        ; $40fc: $c0

    ld b, b                                       ; $40fd: $40
    ret nz                                        ; $40fe: $c0

    add b                                         ; $40ff: $80
    ret nz                                        ; $4100: $c0

    nop                                           ; $4101: $00
    ret nz                                        ; $4102: $c0

    ld b, b                                       ; $4103: $40
    ret nz                                        ; $4104: $c0

    add b                                         ; $4105: $80
    ld b, b                                       ; $4106: $40
    ld [bc], a                                    ; $4107: $02
    ret nz                                        ; $4108: $c0

    add c                                         ; $4109: $81
    ld b, b                                       ; $410a: $40
    ld [bc], a                                    ; $410b: $02
    ret nz                                        ; $410c: $c0

    add e                                         ; $410d: $83
    jr nz, jr_0f4_4110                            ; $410e: $20 $00

jr_0f4_4110:
    ret nz                                        ; $4110: $c0

    ld [bc], a                                    ; $4111: $02
    add b                                         ; $4112: $80
    rst $38                                       ; $4113: $ff
    add hl, bc                                    ; $4114: $09
    ld [bc], a                                    ; $4115: $02
    cp $0b                                        ; $4116: $fe $0b
    db $fd                                        ; $4118: $fd
    inc bc                                        ; $4119: $03
    cp $fd                                        ; $411a: $fe $fd
    cp $02                                        ; $411c: $fe $02
    ld [bc], a                                    ; $411e: $02
    ld [bc], a                                    ; $411f: $02
    add h                                         ; $4120: $84
    ld h, a                                       ; $4121: $67
    ld h, l                                       ; $4122: $65
    ld a, [c]                                     ; $4123: $f2
    or d                                          ; $4124: $b2
    ld [bc], a                                    ; $4125: $02
    ld b, h                                       ; $4126: $44
    add d                                         ; $4127: $82
    ld c, $0a                                     ; $4128: $0e $0a
    ld [bc], a                                    ; $412a: $02
    inc b                                         ; $412b: $04
    add hl, de                                    ; $412c: $19
    nop                                           ; $412d: $00
    add e                                         ; $412e: $83
    ld [$151d], sp                                ; $412f: $08 $1d $15
    ld [bc], a                                    ; $4132: $02
    ld [$0016], sp                                ; $4133: $08 $16 $00
    rst $38                                       ; $4136: $ff
    add hl, bc                                    ; $4137: $09
    ld [bc], a                                    ; $4138: $02
    cp $0b                                        ; $4139: $fe $0b
    db $fd                                        ; $413b: $fd
    inc bc                                        ; $413c: $03
    cp $fd                                        ; $413d: $fe $fd
    cp $04                                        ; $413f: $fe $04
    ld [bc], a                                    ; $4141: $02
    ld [$4d88], sp                                ; $4142: $08 $88 $4d
    ld d, l                                       ; $4145: $55
    add sp, -$58                                  ; $4146: $e8 $a8
    ld [hl], c                                    ; $4148: $71
    ld d, c                                       ; $4149: $51
    inc hl                                        ; $414a: $23
    ld [hl+], a                                   ; $414b: $22
    ld [bc], a                                    ; $414c: $02
    ld bc, $0014                                  ; $414d: $01 $14 $00
    ld [bc], a                                    ; $4150: $02
    ld b, b                                       ; $4151: $40
    add d                                         ; $4152: $82
    ld h, b                                       ; $4153: $60
    jr nz, jr_0f4_4158                            ; $4154: $20 $02

    ld c, b                                       ; $4156: $48
    add d                                         ; $4157: $82

jr_0f4_4158:
    dec c                                         ; $4158: $0d
    dec d                                         ; $4159: $15
    ld [bc], a                                    ; $415a: $02
    ld c, b                                       ; $415b: $48
    ld d, $00                                     ; $415c: $16 $00
    rst $38                                       ; $415e: $ff
    dec bc                                        ; $415f: $0b
    inc bc                                        ; $4160: $03
    cp $0b                                        ; $4161: $fe $0b
    db $fd                                        ; $4163: $fd
    inc bc                                        ; $4164: $03
    cp $fd                                        ; $4165: $fe $fd
    cp $03                                        ; $4167: $fe $03
    cp $06                                        ; $4169: $fe $06
    adc b                                         ; $416b: $88
    nop                                           ; $416c: $00
    inc b                                         ; $416d: $04
    ld c, [hl]                                    ; $416e: $4e
    ld c, d                                       ; $416f: $4a
    db $f4                                        ; $4170: $f4
    or h                                          ; $4171: $b4
    ld a, b                                       ; $4172: $78
    ld l, b                                       ; $4173: $68
    ld [bc], a                                    ; $4174: $02
    ld de, $0016                                  ; $4175: $11 $16 $00
    ld [bc], a                                    ; $4178: $02
    db $10                                        ; $4179: $10
    add d                                         ; $417a: $82
    jr c, @+$2a                                   ; $417b: $38 $28

    ld [bc], a                                    ; $417d: $02
    ld [de], a                                    ; $417e: $12
    add h                                         ; $417f: $84
    daa                                           ; $4180: $27
    dec h                                         ; $4181: $25
    jr nc, @+$14                                  ; $4182: $30 $12

    ld [bc], a                                    ; $4184: $02
    jr nz, jr_0f4_41a2                            ; $4185: $20 $1b

    nop                                           ; $4187: $00
    add c                                         ; $4188: $81
    ld bc, $0018                                  ; $4189: $01 $18 $00
    rst $38                                       ; $418c: $ff
    dec bc                                        ; $418d: $0b
    inc bc                                        ; $418e: $03
    cp $0b                                        ; $418f: $fe $0b
    db $fd                                        ; $4191: $fd
    inc bc                                        ; $4192: $03
    cp $fd                                        ; $4193: $fe $fd
    cp $04                                        ; $4195: $fe $04
    cp $07                                        ; $4197: $fe $07
    ld [bc], a                                    ; $4199: $02
    nop                                           ; $419a: $00
    ld [bc], a                                    ; $419b: $02
    ld b, d                                       ; $419c: $42
    add h                                         ; $419d: $84
    xor $ad                                       ; $419e: $ee $ad
    ld e, [hl]                                    ; $41a0: $5e
    ld d, [hl]                                    ; $41a1: $56

jr_0f4_41a2:
    ld [bc], a                                    ; $41a2: $02
    ld [$0016], sp                                ; $41a3: $08 $16 $00
    ld [bc], a                                    ; $41a6: $02
    db $10                                        ; $41a7: $10
    add h                                         ; $41a8: $84
    ld a, [hl-]                                   ; $41a9: $3a
    ld a, [hl+]                                   ; $41aa: $2a
    ld d, $15                                     ; $41ab: $16 $15
    ld [bc], a                                    ; $41ad: $02
    ld [hl+], a                                   ; $41ae: $22
    add d                                         ; $41af: $82
    ld [hl], b                                    ; $41b0: $70
    ld d, b                                       ; $41b1: $50
    ld [bc], a                                    ; $41b2: $02
    jr nz, jr_0f4_41cf                            ; $41b3: $20 $1a

    nop                                           ; $41b5: $00
    ld [bc], a                                    ; $41b6: $02
    ld bc, $0018                                  ; $41b7: $01 $18 $00
    rst $38                                       ; $41ba: $ff
    rlca                                          ; $41bb: $07
    ld bc, $0bfe                                  ; $41bc: $01 $fe $0b
    db $fd                                        ; $41bf: $fd
    inc bc                                        ; $41c0: $03
    db $fc                                        ; $41c1: $fc
    ld a, [$0402]                                 ; $41c2: $fa $02 $04
    adc [hl]                                      ; $41c5: $8e
    ld a, [bc]                                    ; $41c6: $0a
    ld c, $0d                                     ; $41c7: $0e $0d

jr_0f4_41c9:
    dec bc                                        ; $41c9: $0b
    inc c                                         ; $41ca: $0c
    dec bc                                        ; $41cb: $0b
    inc c                                         ; $41cc: $0c
    dec bc                                        ; $41cd: $0b
    inc c                                         ; $41ce: $0c

jr_0f4_41cf:
    dec bc                                        ; $41cf: $0b
    dec c                                         ; $41d0: $0d
    dec bc                                        ; $41d1: $0b
    ld a, [bc]                                    ; $41d2: $0a
    ld c, $02                                     ; $41d3: $0e $02
    inc b                                         ; $41d5: $04
    ld c, $00                                     ; $41d6: $0e $00
    rst $38                                       ; $41d8: $ff
    rlca                                          ; $41d9: $07
    ld bc, $0bfe                                  ; $41da: $01 $fe $0b

jr_0f4_41dd:
    db $fd                                        ; $41dd: $fd
    inc bc                                        ; $41de: $03
    ld a, [$02f8]                                 ; $41df: $fa $f8 $02
    ld d, b                                       ; $41e2: $50
    sub [hl]                                      ; $41e3: $96
    inc b                                         ; $41e4: $04
    ld d, h                                       ; $41e5: $54
    jp nc, $d086                                  ; $41e6: $d2 $86 $d0

    add [hl]                                      ; $41e9: $86
    push de                                       ; $41ea: $d5
    add e                                         ; $41eb: $83
    push de                                       ; $41ec: $d5
    add e                                         ; $41ed: $83
    push de                                       ; $41ee: $d5
    add e                                         ; $41ef: $83
    push de                                       ; $41f0: $d5
    add e                                         ; $41f1: $83
    push de                                       ; $41f2: $d5
    add e                                         ; $41f3: $83
    ret nc                                        ; $41f4: $d0

    add [hl]                                      ; $41f5: $86
    jp nc, Jump_000_0486                          ; $41f6: $d2 $86 $04

    ld d, h                                       ; $41f9: $54
    ld [bc], a                                    ; $41fa: $02
    ld d, b                                       ; $41fb: $50
    ld b, $00                                     ; $41fc: $06 $00
    rst $38                                       ; $41fe: $ff
    add hl, bc                                    ; $41ff: $09
    ld [bc], a                                    ; $4200: $02
    cp $0b                                        ; $4201: $fe $0b
    db $fd                                        ; $4203: $fd
    inc bc                                        ; $4204: $03
    ld sp, hl                                     ; $4205: $f9
    push af                                       ; $4206: $f5
    ld sp, hl                                     ; $4207: $f9
    or $02                                        ; $4208: $f6 $02
    ld d, b                                       ; $420a: $50
    sbc d                                         ; $420b: $9a
    inc b                                         ; $420c: $04
    ld d, h                                       ; $420d: $54
    add b                                         ; $420e: $80
    call nc, $85d1                                ; $420f: $d4 $d1 $85
    call nc, $d481                                ; $4212: $d4 $81 $d4
    add c                                         ; $4215: $81
    push de                                       ; $4216: $d5
    add b                                         ; $4217: $80
    push de                                       ; $4218: $d5
    add b                                         ; $4219: $80
    push de                                       ; $421a: $d5
    add b                                         ; $421b: $80
    call nc, $d481                                ; $421c: $d4 $81 $d4
    add c                                         ; $421f: $81
    pop de                                        ; $4220: $d1
    add l                                         ; $4221: $85
    add b                                         ; $4222: $80
    call nc, Call_0f4_5404                        ; $4223: $d4 $04 $54
    ld [bc], a                                    ; $4226: $02
    ld d, b                                       ; $4227: $50
    inc c                                         ; $4228: $0c
    nop                                           ; $4229: $00
    ld [bc], a                                    ; $422a: $02

jr_0f4_422b:
    ld bc, $0085                                  ; $422b: $01 $85 $00
    ld bc, $0100                                  ; $422e: $01 $00 $01
    nop                                           ; $4231: $00
    inc bc                                        ; $4232: $03
    ld bc, $000c                                  ; $4233: $01 $0c $00
    rst $38                                       ; $4236: $ff
    add hl, bc                                    ; $4237: $09
    ld [bc], a                                    ; $4238: $02
    cp $0b                                        ; $4239: $fe $0b
    db $fd                                        ; $423b: $fd
    inc bc                                        ; $423c: $03
    ld hl, sp-$0e                                 ; $423d: $f8 $f2
    ei                                            ; $423f: $fb
    db $f4                                        ; $4240: $f4
    ld [bc], a                                    ; $4241: $02
    jr z, jr_0f4_41dd                             ; $4242: $28 $99

    nop                                           ; $4244: $00
    jr z, jr_0f4_41c9                             ; $4245: $28 $82

    xor d                                         ; $4247: $aa
    xor b                                         ; $4248: $a8
    add d                                         ; $4249: $82
    xor b                                         ; $424a: $a8
    add d                                         ; $424b: $82
    xor d                                         ; $424c: $aa
    add b                                         ; $424d: $80
    xor d                                         ; $424e: $aa
    add b                                         ; $424f: $80
    xor d                                         ; $4250: $aa
    add b                                         ; $4251: $80
    xor d                                         ; $4252: $aa
    add b                                         ; $4253: $80
    xor d                                         ; $4254: $aa
    add b                                         ; $4255: $80
    xor d                                         ; $4256: $aa
    add b                                         ; $4257: $80
    xor d                                         ; $4258: $aa
    add b                                         ; $4259: $80
    xor b                                         ; $425a: $a8
    add d                                         ; $425b: $82
    xor b                                         ; $425c: $a8
    ld [bc], a                                    ; $425d: $02
    add d                                         ; $425e: $82
    add e                                         ; $425f: $83
    xor d                                         ; $4260: $aa
    nop                                           ; $4261: $00
    jr z, jr_0f4_4266                             ; $4262: $28 $02

    ld [bc], a                                    ; $4264: $02
    sub c                                         ; $4265: $91

jr_0f4_4266:
    nop                                           ; $4266: $00
    ld [bc], a                                    ; $4267: $02
    nop                                           ; $4268: $00
    inc bc                                        ; $4269: $03
    ld [bc], a                                    ; $426a: $02
    ld bc, $0102                                  ; $426b: $01 $02 $01
    ld [bc], a                                    ; $426e: $02
    ld bc, $0102                                  ; $426f: $01 $02 $01
    ld [bc], a                                    ; $4272: $02
    ld bc, $0300                                  ; $4273: $01 $00 $03
    nop                                           ; $4276: $00

jr_0f4_4277:
    inc bc                                        ; $4277: $03
    ld [bc], a                                    ; $4278: $02
    inc b                                         ; $4279: $04
    nop                                           ; $427a: $00
    ld [bc], a                                    ; $427b: $02
    and b                                         ; $427c: $a0
    inc b                                         ; $427d: $04
    nop                                           ; $427e: $00
    rst $38                                       ; $427f: $ff
    add hl, bc                                    ; $4280: $09
    ld [bc], a                                    ; $4281: $02
    cp $0b                                        ; $4282: $fe $0b
    db $fd                                        ; $4284: $fd
    inc bc                                        ; $4285: $03
    ld hl, sp-$10                                 ; $4286: $f8 $f0
    ld a, [$02f2]                                 ; $4288: $fa $f2 $02
    jr z, jr_0f4_422b                             ; $428b: $28 $9e

    ld [bc], a                                    ; $428d: $02
    ld a, [hl+]                                   ; $428e: $2a
    add b                                         ; $428f: $80
    xor d                                         ; $4290: $aa
    xor b                                         ; $4291: $a8
    add d                                         ; $4292: $82
    xor d                                         ; $4293: $aa
    add b                                         ; $4294: $80
    xor d                                         ; $4295: $aa
    add b                                         ; $4296: $80
    xor d                                         ; $4297: $aa
    add b                                         ; $4298: $80
    xor d                                         ; $4299: $aa
    add b                                         ; $429a: $80
    xor d                                         ; $429b: $aa
    add b                                         ; $429c: $80
    xor d                                         ; $429d: $aa
    add b                                         ; $429e: $80
    xor d                                         ; $429f: $aa
    add b                                         ; $42a0: $80
    xor d                                         ; $42a1: $aa
    add b                                         ; $42a2: $80
    xor d                                         ; $42a3: $aa
    add b                                         ; $42a4: $80
    xor b                                         ; $42a5: $a8
    add d                                         ; $42a6: $82
    add b                                         ; $42a7: $80
    xor d                                         ; $42a8: $aa
    ld [bc], a                                    ; $42a9: $02
    ld a, [hl+]                                   ; $42aa: $2a
    ld [bc], a                                    ; $42ab: $02
    ld [bc], a                                    ; $42ac: $02
    sub l                                         ; $42ad: $95
    nop                                           ; $42ae: $00
    ld [bc], a                                    ; $42af: $02
    nop                                           ; $42b0: $00
    inc bc                                        ; $42b1: $03
    ld [bc], a                                    ; $42b2: $02
    ld bc, $0102                                  ; $42b3: $01 $02 $01
    ld [bc], a                                    ; $42b6: $02
    ld bc, $0102                                  ; $42b7: $01 $02 $01
    ld [bc], a                                    ; $42ba: $02
    ld bc, $0102                                  ; $42bb: $01 $02 $01
    ld [bc], a                                    ; $42be: $02
    ld bc, $0300                                  ; $42bf: $01 $00 $03
    nop                                           ; $42c2: $00
    inc bc                                        ; $42c3: $03
    ld [bc], a                                    ; $42c4: $02
    ld [bc], a                                    ; $42c5: $02
    nop                                           ; $42c6: $00
    ld [bc], a                                    ; $42c7: $02
    and b                                         ; $42c8: $a0
    ld [bc], a                                    ; $42c9: $02
    nop                                           ; $42ca: $00
    rst $38                                       ; $42cb: $ff
    add hl, bc                                    ; $42cc: $09
    ld [bc], a                                    ; $42cd: $02
    cp $0b                                        ; $42ce: $fe $0b
    db $fd                                        ; $42d0: $fd
    inc bc                                        ; $42d1: $03
    ld hl, sp-$12                                 ; $42d2: $f8 $ee
    ld a, [$02f0]                                 ; $42d4: $fa $f0 $02
    jr z, jr_0f4_4277                             ; $42d7: $28 $9e

    ld [bc], a                                    ; $42d9: $02
    ld a, [hl+]                                   ; $42da: $2a
    xor b                                         ; $42db: $a8
    add d                                         ; $42dc: $82
    xor d                                         ; $42dd: $aa
    add b                                         ; $42de: $80
    xor d                                         ; $42df: $aa
    add b                                         ; $42e0: $80
    xor d                                         ; $42e1: $aa
    add b                                         ; $42e2: $80
    xor d                                         ; $42e3: $aa
    add b                                         ; $42e4: $80
    xor d                                         ; $42e5: $aa
    add b                                         ; $42e6: $80
    xor d                                         ; $42e7: $aa
    add b                                         ; $42e8: $80

jr_0f4_42e9:
    xor d                                         ; $42e9: $aa
    add b                                         ; $42ea: $80
    xor d                                         ; $42eb: $aa
    add b                                         ; $42ec: $80
    xor d                                         ; $42ed: $aa
    add b                                         ; $42ee: $80
    xor d                                         ; $42ef: $aa
    add b                                         ; $42f0: $80
    xor d                                         ; $42f1: $aa
    add b                                         ; $42f2: $80
    xor b                                         ; $42f3: $a8
    add d                                         ; $42f4: $82
    ld [bc], a                                    ; $42f5: $02
    ld a, [hl+]                                   ; $42f6: $2a
    ld [bc], a                                    ; $42f7: $02
    ld [bc], a                                    ; $42f8: $02
    add c                                         ; $42f9: $81
    nop                                           ; $42fa: $00
    ld [bc], a                                    ; $42fb: $02
    ld [bc], a                                    ; $42fc: $02
    sub d                                         ; $42fd: $92
    ld bc, $0102                                  ; $42fe: $01 $02 $01
    ld [bc], a                                    ; $4301: $02
    ld bc, $0102                                  ; $4302: $01 $02 $01
    ld [bc], a                                    ; $4305: $02
    ld bc, $0102                                  ; $4306: $01 $02 $01
    ld [bc], a                                    ; $4309: $02
    ld bc, $0102                                  ; $430a: $01 $02 $01
    ld [bc], a                                    ; $430d: $02
    ld bc, $0300                                  ; $430e: $01 $00 $03
    ld [bc], a                                    ; $4311: $02
    ld [bc], a                                    ; $4312: $02
    nop                                           ; $4313: $00
    ld [bc], a                                    ; $4314: $02
    and b                                         ; $4315: $a0
    ld [bc], a                                    ; $4316: $02
    nop                                           ; $4317: $00
    rst $38                                       ; $4318: $ff
    rlca                                          ; $4319: $07
    ld bc, $0af4                                  ; $431a: $01 $f4 $0a
    ld a, [c]                                     ; $431d: $f2
    rrca                                          ; $431e: $0f
    cp $f4                                        ; $431f: $fe $f4
    ld [bc], a                                    ; $4321: $02
    ld h, b                                       ; $4322: $60
    adc d                                         ; $4323: $8a
    ld d, b                                       ; $4324: $50
    or b                                          ; $4325: $b0
    ld d, [hl]                                    ; $4326: $56
    or [hl]                                       ; $4327: $b6
    dec h                                         ; $4328: $25
    ld l, e                                       ; $4329: $6b
    dec b                                         ; $432a: $05
    dec bc                                        ; $432b: $0b
    ld [bc], a                                    ; $432c: $02
    ld b, $14                                     ; $432d: $06 $14
    nop                                           ; $432f: $00
    rst $38                                       ; $4330: $ff
    add hl, bc                                    ; $4331: $09
    ld [bc], a                                    ; $4332: $02
    db $f4                                        ; $4333: $f4
    ld a, [bc]                                    ; $4334: $0a
    ld a, [c]                                     ; $4335: $f2
    rrca                                          ; $4336: $0f
    rst $38                                       ; $4337: $ff
    pop af                                        ; $4338: $f1
    rst $38                                       ; $4339: $ff
    ld a, [c]                                     ; $433a: $f2
    adc h                                         ; $433b: $8c

jr_0f4_433c:
    ld b, $16                                     ; $433c: $06 $16
    dec b                                         ; $433e: $05
    dec bc                                        ; $433f: $0b
    ld h, l                                       ; $4340: $65
    ld l, e                                       ; $4341: $6b
    ld d, d                                       ; $4342: $52
    or [hl]                                       ; $4343: $b6
    ld d, b                                       ; $4344: $50
    or b                                          ; $4345: $b0
    jr nz, @+$62                                  ; $4346: $20 $60

    add hl, de                                    ; $4348: $19
    nop                                           ; $4349: $00
    add c                                         ; $434a: $81
    ld bc, $001a                                  ; $434b: $01 $1a $00
    rst $38                                       ; $434e: $ff
    rlca                                          ; $434f: $07
    ld bc, $0af4                                  ; $4350: $01 $f4 $0a
    ld a, [c]                                     ; $4353: $f2
    rrca                                          ; $4354: $0f
    nop                                           ; $4355: $00
    xor $88                                       ; $4356: $ee $88
    inc c                                         ; $4358: $0c
    dec c                                         ; $4359: $0d
    ld a, [bc]                                    ; $435a: $0a
    ld d, $0a                                     ; $435b: $16 $0a
    ld d, $04                                     ; $435d: $16 $04
    inc c                                         ; $435f: $0c
    ld [bc], a                                    ; $4360: $02
    jr nc, jr_0f4_42e9                            ; $4361: $30 $86

    jr z, jr_0f4_43bd                             ; $4363: $28 $58

    jr z, jr_0f4_43bf                             ; $4365: $28 $58

    db $10                                        ; $4367: $10
    jr nc, jr_0f4_437a                            ; $4368: $30 $10

    nop                                           ; $436a: $00
    rst $38                                       ; $436b: $ff
    rlca                                          ; $436c: $07
    ld bc, $0af4                                  ; $436d: $01 $f4 $0a
    ld a, [c]                                     ; $4370: $f2
    rrca                                          ; $4371: $0f
    inc bc                                        ; $4372: $03
    xor $82                                       ; $4373: $ee $82
    nop                                           ; $4375: $00
    ld [$3002], sp                                ; $4376: $08 $02 $30
    adc h                                         ; $4379: $8c

jr_0f4_437a:
    jr z, jr_0f4_43d4                             ; $437a: $28 $58

    jr z, jr_0f4_43d6                             ; $437c: $28 $58

    ld d, $36                                     ; $437e: $16 $36
    dec b                                         ; $4380: $05
    dec bc                                        ; $4381: $0b
    dec b                                         ; $4382: $05
    dec bc                                        ; $4383: $0b
    ld [bc], a                                    ; $4384: $02
    ld b, $10                                     ; $4385: $06 $10
    nop                                           ; $4387: $00
    rst $38                                       ; $4388: $ff
    rlca                                          ; $4389: $07
    ld bc, $0af4                                  ; $438a: $01 $f4 $0a
    ld a, [c]                                     ; $438d: $f2
    rrca                                          ; $438e: $0f
    inc bc                                        ; $438f: $03
    pop af                                        ; $4390: $f1
    ld [bc], a                                    ; $4391: $02
    ld b, $8e                                     ; $4392: $06 $8e
    dec b                                         ; $4394: $05
    dec bc                                        ; $4395: $0b
    dec b                                         ; $4396: $05
    dec bc                                        ; $4397: $0b
    ld [bc], a                                    ; $4398: $02
    ld b, $18                                     ; $4399: $06 $18
    add hl, de                                    ; $439b: $19
    inc d                                         ; $439c: $14
    inc l                                         ; $439d: $2c
    inc d                                         ; $439e: $14
    inc l                                         ; $439f: $2c
    ld [$1058], sp                                ; $43a0: $08 $58 $10
    nop                                           ; $43a3: $00
    rst $38                                       ; $43a4: $ff
    rlca                                          ; $43a5: $07
    ld bc, $0af4                                  ; $43a6: $01 $f4 $0a
    ld a, [c]                                     ; $43a9: $f2
    rrca                                          ; $43aa: $0f
    rst $38                                       ; $43ab: $ff
    pop af                                        ; $43ac: $f1
    ld [bc], a                                    ; $43ad: $02
    jr nc, jr_0f4_433c                            ; $43ae: $30 $8c

    jr z, jr_0f4_440a                             ; $43b0: $28 $58

    jr z, jr_0f4_4410                             ; $43b2: $28 $5c

    ld d, $36                                     ; $43b4: $16 $36
    dec b                                         ; $43b6: $05
    dec bc                                        ; $43b7: $0b
    dec b                                         ; $43b8: $05
    dec bc                                        ; $43b9: $0b
    ld [bc], a                                    ; $43ba: $02
    ld b, $03                                     ; $43bb: $06 $03

jr_0f4_43bd:
    nop                                           ; $43bd: $00
    add c                                         ; $43be: $81

jr_0f4_43bf:
    ld [bc], a                                    ; $43bf: $02
    ld c, $00                                     ; $43c0: $0e $00
    rst $38                                       ; $43c2: $ff
    add hl, bc                                    ; $43c3: $09
    ld [bc], a                                    ; $43c4: $02
    db $f4                                        ; $43c5: $f4
    ld a, [bc]                                    ; $43c6: $0a
    ld a, [c]                                     ; $43c7: $f2
    rrca                                          ; $43c8: $0f
    cp $ee                                        ; $43c9: $fe $ee
    cp $ef                                        ; $43cb: $fe $ef
    ld [bc], a                                    ; $43cd: $02
    ld h, b                                       ; $43ce: $60
    adc b                                         ; $43cf: $88
    ld d, e                                       ; $43d0: $53
    or e                                          ; $43d1: $b3
    ld d, d                                       ; $43d2: $52
    or l                                          ; $43d3: $b5

jr_0f4_43d4:
    ld [hl+], a                                   ; $43d4: $22
    ld l, l                                       ; $43d5: $6d

jr_0f4_43d6:
    ld bc, $1a03                                  ; $43d6: $01 $03 $1a
    nop                                           ; $43d9: $00
    inc b                                         ; $43da: $04
    ld bc, $0005                                  ; $43db: $01 $05 $00
    add c                                         ; $43de: $81
    ld bc, $0012                                  ; $43df: $01 $12 $00
    rst $38                                       ; $43e2: $ff
    add hl, bc                                    ; $43e3: $09
    ld [bc], a                                    ; $43e4: $02
    db $f4                                        ; $43e5: $f4
    ld a, [bc]                                    ; $43e6: $0a
    ld a, [c]                                     ; $43e7: $f2
    rrca                                          ; $43e8: $0f
    db $fc                                        ; $43e9: $fc
    ld [$edfc], a                                 ; $43ea: $ea $fc $ed
    adc d                                         ; $43ed: $8a
    inc bc                                        ; $43ee: $03
    inc de                                        ; $43ef: $13
    ld h, d                                       ; $43f0: $62
    ld h, l                                       ; $43f1: $65
    ld d, d                                       ; $43f2: $52
    or l                                          ; $43f3: $b5
    ld d, c                                       ; $43f4: $51
    or e                                          ; $43f5: $b3
    jr nz, jr_0f4_4458                            ; $43f6: $20 $60

    jr jr_0f4_43fa                                ; $43f8: $18 $00

jr_0f4_43fa:
    inc bc                                        ; $43fa: $03
    inc b                                         ; $43fb: $04
    add c                                         ; $43fc: $81
    dec b                                         ; $43fd: $05
    ld a, [de]                                    ; $43fe: $1a
    nop                                           ; $43ff: $00
    rst $38                                       ; $4400: $ff
    add hl, bc                                    ; $4401: $09
    ld [bc], a                                    ; $4402: $02
    db $f4                                        ; $4403: $f4
    ld a, [bc]                                    ; $4404: $0a
    ld a, [c]                                     ; $4405: $f2
    rrca                                          ; $4406: $0f
    db $fd                                        ; $4407: $fd
    rst $20                                       ; $4408: $e7
    db $fd                                        ; $4409: $fd

jr_0f4_440a:
    jp hl                                         ; $440a: $e9


    ld [bc], a                                    ; $440b: $02
    ld b, $8c                                     ; $440c: $06 $8c
    dec b                                         ; $440e: $05
    dec de                                        ; $440f: $1b

jr_0f4_4410:
    dec b                                         ; $4410: $05
    dec bc                                        ; $4411: $0b
    ld h, d                                       ; $4412: $62
    ld h, [hl]                                    ; $4413: $66
    ld d, b                                       ; $4414: $50
    or b                                          ; $4415: $b0
    ld d, b                                       ; $4416: $50
    or b                                          ; $4417: $b0
    jr nz, jr_0f4_447a                            ; $4418: $20 $60

    dec d                                         ; $441a: $15
    nop                                           ; $441b: $00
    add c                                         ; $441c: $81
    ld bc, $001c                                  ; $441d: $01 $1c $00
    rst $38                                       ; $4420: $ff
    rlca                                          ; $4421: $07
    ld bc, $0af4                                  ; $4422: $01 $f4 $0a
    ld a, [c]                                     ; $4425: $f2
    rrca                                          ; $4426: $0f
    rst $38                                       ; $4427: $ff
    push hl                                       ; $4428: $e5
    add d                                         ; $4429: $82
    nop                                           ; $442a: $00
    db $10                                        ; $442b: $10
    ld [bc], a                                    ; $442c: $02
    ld h, b                                       ; $442d: $60
    adc h                                         ; $442e: $8c
    ld d, b                                       ; $442f: $50
    or b                                          ; $4430: $b0
    ld d, b                                       ; $4431: $50
    or b                                          ; $4432: $b0
    ld h, $66                                     ; $4433: $26 $66
    dec b                                         ; $4435: $05
    dec bc                                        ; $4436: $0b
    dec b                                         ; $4437: $05
    dec hl                                        ; $4438: $2b
    ld [bc], a                                    ; $4439: $02
    ld b, $10                                     ; $443a: $06 $10
    nop                                           ; $443c: $00
    rst $38                                       ; $443d: $ff
    dec bc                                        ; $443e: $0b
    inc bc                                        ; $443f: $03
    db $f4                                        ; $4440: $f4
    ld a, [bc]                                    ; $4441: $0a
    ld a, [c]                                     ; $4442: $f2
    rrca                                          ; $4443: $0f
    ei                                            ; $4444: $fb
    ei                                            ; $4445: $fb
    db $fc                                        ; $4446: $fc
    db $fd                                        ; $4447: $fd
    dec bc                                        ; $4448: $0b
    ei                                            ; $4449: $fb
    ld [bc], a                                    ; $444a: $02
    rra                                           ; $444b: $1f
    ld b, $7f                                     ; $444c: $06 $7f
    sub l                                         ; $444e: $95
    ld e, a                                       ; $444f: $5f
    ld a, a                                       ; $4450: $7f
    ld h, c                                       ; $4451: $61
    ld e, [hl]                                    ; $4452: $5e
    sbc l                                         ; $4453: $9d
    db $e3                                        ; $4454: $e3
    cp c                                          ; $4455: $b9
    rst $00                                       ; $4456: $c7
    sub d                                         ; $4457: $92

jr_0f4_4458:
    xor $bc                                       ; $4458: $ee $bc
    call nz, $ccb4                                ; $445a: $c4 $b4 $cc
    xor b                                         ; $445d: $a8
    ret c                                         ; $445e: $d8

    xor b                                         ; $445f: $a8
    ret c                                         ; $4460: $d8

    xor b                                         ; $4461: $a8
    ret c                                         ; $4462: $d8

    ld l, b                                       ; $4463: $68
    ld [bc], a                                    ; $4464: $02
    ld e, b                                       ; $4465: $58
    add c                                         ; $4466: $81
    ld l, b                                       ; $4467: $68
    ld b, $03                                     ; $4468: $06 $03
    add d                                         ; $446a: $82
    ld bc, $0203                                  ; $446b: $01 $03 $02
    ld [bc], a                                    ; $446e: $02
    inc d                                         ; $446f: $14
    nop                                           ; $4470: $00
    add d                                         ; $4471: $82
    sub b                                         ; $4472: $90
    ldh a, [rSC]                                  ; $4473: $f0 $02
    nop                                           ; $4475: $00
    add c                                         ; $4476: $81
    inc e                                         ; $4477: $1c
    ld [bc], a                                    ; $4478: $02

jr_0f4_4479:
    inc d                                         ; $4479: $14

jr_0f4_447a:
    add c                                         ; $447a: $81
    inc e                                         ; $447b: $1c
    ld [bc], a                                    ; $447c: $02
    inc c                                         ; $447d: $0c
    ld [bc], a                                    ; $447e: $02
    inc b                                         ; $447f: $04
    ld d, $00                                     ; $4480: $16 $00
    rst $38                                       ; $4482: $ff
    rrca                                          ; $4483: $0f
    dec b                                         ; $4484: $05
    db $f4                                        ; $4485: $f4
    ld a, [bc]                                    ; $4486: $0a
    ld a, [c]                                     ; $4487: $f2
    rrca                                          ; $4488: $0f
    db $ed                                        ; $4489: $ed
    db $fd                                        ; $448a: $fd
    db $ed                                        ; $448b: $ed
    ld [bc], a                                    ; $448c: $02
    db $fd                                        ; $448d: $fd
    db $fd                                        ; $448e: $fd
    db $fd                                        ; $448f: $fd
    nop                                           ; $4490: $00
    dec c                                         ; $4491: $0d
    db $fd                                        ; $4492: $fd
    ld [bc], a                                    ; $4493: $02
    ccf                                           ; $4494: $3f
    sbc [hl]                                      ; $4495: $9e
    ld e, a                                       ; $4496: $5f
    ld a, a                                       ; $4497: $7f
    cp a                                          ; $4498: $bf
    rst $38                                       ; $4499: $ff
    cp a                                          ; $449a: $bf
    rst $38                                       ; $449b: $ff
    sbc a                                         ; $449c: $9f
    rst $38                                       ; $449d: $ff
    ret nz                                        ; $449e: $c0

    rst $38                                       ; $449f: $ff
    ld h, d                                       ; $44a0: $62
    ld a, l                                       ; $44a1: $7d
    ld h, a                                       ; $44a2: $67
    ld a, b                                       ; $44a3: $78
    ld sp, $303e                                  ; $44a4: $31 $3e $30
    ccf                                           ; $44a7: $3f
    dec de                                        ; $44a8: $1b
    inc e                                         ; $44a9: $1c
    jr jr_0f4_44cb                                ; $44aa: $18 $1f

    dec de                                        ; $44ac: $1b
    inc e                                         ; $44ad: $1c
    add hl, de                                    ; $44ae: $19
    ld e, $1b                                     ; $44af: $1e $1b
    inc e                                         ; $44b1: $1c
    ld sp, $023e                                  ; $44b2: $31 $3e $02
    jr jr_0f4_4479                                ; $44b5: $18 $c2

    inc d                                         ; $44b7: $14
    inc e                                         ; $44b8: $1c
    ld a, [de]                                    ; $44b9: $1a
    ld e, $1a                                     ; $44ba: $1e $1a
    ld e, $12                                     ; $44bc: $1e $12
    ld e, $00                                     ; $44be: $1e $00
    ld e, $19                                     ; $44c0: $1e $19
    rlca                                          ; $44c2: $07
    ld de, $1d0f                                  ; $44c3: $11 $0f $1d
    inc bc                                        ; $44c6: $03
    add hl, de                                    ; $44c7: $19
    rlca                                          ; $44c8: $07
    add hl, de                                    ; $44c9: $19
    rlca                                          ; $44ca: $07

jr_0f4_44cb:
    dec e                                         ; $44cb: $1d
    inc bc                                        ; $44cc: $03
    add hl, de                                    ; $44cd: $19
    rlca                                          ; $44ce: $07
    ld [de], a                                    ; $44cf: $12
    ld c, $1a                                     ; $44d0: $0e $1a
    ld b, $14                                     ; $44d2: $06 $14
    inc c                                         ; $44d4: $0c
    inc sp                                        ; $44d5: $33
    inc a                                         ; $44d6: $3c
    ld h, a                                       ; $44d7: $67
    ld a, b                                       ; $44d8: $78
    ld l, [hl]                                    ; $44d9: $6e
    ld [hl], c                                    ; $44da: $71
    ld l, c                                       ; $44db: $69
    ld [hl], a                                    ; $44dc: $77
    jp c, $d4e6                                   ; $44dd: $da $e6 $d4

    db $ec                                        ; $44e0: $ec
    db $f4                                        ; $44e1: $f4
    call z, $d8a8                                 ; $44e2: $cc $a8 $d8
    xor b                                         ; $44e5: $a8
    ret c                                         ; $44e6: $d8

    xor b                                         ; $44e7: $a8
    ret c                                         ; $44e8: $d8

    add sp, -$68                                  ; $44e9: $e8 $98
    xor b                                         ; $44eb: $a8
    ret c                                         ; $44ec: $d8

    or b                                          ; $44ed: $b0
    ret nc                                        ; $44ee: $d0

    ldh a, [$d0]                                  ; $44ef: $f0 $d0
    ld d, b                                       ; $44f1: $50
    ld [hl], b                                    ; $44f2: $70
    ld d, b                                       ; $44f3: $50
    ld [hl], b                                    ; $44f4: $70
    ld bc, $0207                                  ; $44f5: $01 $07 $02
    ld b, $02                                     ; $44f8: $06 $02
    inc b                                         ; $44fa: $04
    ld a, [de]                                    ; $44fb: $1a
    nop                                           ; $44fc: $00
    inc b                                         ; $44fd: $04
    jr nc, jr_0f4_4502                            ; $44fe: $30 $02

    db $10                                        ; $4500: $10
    ld a, [de]                                    ; $4501: $1a

jr_0f4_4502:
    nop                                           ; $4502: $00
    rst $38                                       ; $4503: $ff
    dec d                                         ; $4504: $15
    ld [$0af4], sp                                ; $4505: $08 $f4 $0a
    ld a, [c]                                     ; $4508: $f2
    rrca                                          ; $4509: $0f
    db $db                                        ; $450a: $db
    ld sp, hl                                     ; $450b: $f9
    db $db                                        ; $450c: $db
    ld bc, $03dd                                  ; $450d: $01 $dd $03
    db $eb                                        ; $4510: $eb
    ld sp, hl                                     ; $4511: $f9
    db $eb                                        ; $4512: $eb
    rst $38                                       ; $4513: $ff
    ei                                            ; $4514: $fb
    cp $fb                                        ; $4515: $fe $fb
    rst $38                                       ; $4517: $ff
    dec bc                                        ; $4518: $0b
    ld a, [$0702]                                 ; $4519: $fa $02 $07
    sbc l                                         ; $451c: $9d
    add hl, de                                    ; $451d: $19
    ccf                                           ; $451e: $3f
    rra                                           ; $451f: $1f
    ld a, a                                       ; $4520: $7f
    ccf                                           ; $4521: $3f
    ld a, a                                       ; $4522: $7f
    ccf                                           ; $4523: $3f
    ld a, a                                       ; $4524: $7f
    ld l, a                                       ; $4525: $6f
    rst $38                                       ; $4526: $ff
    ld a, b                                       ; $4527: $78
    rst $38                                       ; $4528: $ff
    ld [hl], h                                    ; $4529: $74
    ei                                            ; $452a: $fb
    ld [hl], e                                    ; $452b: $73
    db $fc                                        ; $452c: $fc
    ld [hl], a                                    ; $452d: $77
    ld hl, sp+$7b                                 ; $452e: $f8 $7b
    db $fc                                        ; $4530: $fc
    ld h, b                                       ; $4531: $60
    rst $38                                       ; $4532: $ff
    ld [hl], e                                    ; $4533: $73
    db $fc                                        ; $4534: $fc
    ld h, a                                       ; $4535: $67
    ld hl, sp+$4d                                 ; $4536: $f8 $4d
    ld a, [c]                                     ; $4538: $f2
    ld h, e                                       ; $4539: $63
    inc bc                                        ; $453a: $03
    db $fc                                        ; $453b: $fc
    add e                                         ; $453c: $83
    ld a, a                                       ; $453d: $7f
    rst $38                                       ; $453e: $ff
    cp $05                                        ; $453f: $fe $05
    rst $38                                       ; $4541: $ff
    sub [hl]                                      ; $4542: $96
    db $fc                                        ; $4543: $fc
    rst $38                                       ; $4544: $ff
    ld bc, $bafe                                  ; $4545: $01 $fe $ba
    ld b, l                                       ; $4548: $45
    cp $01                                        ; $4549: $fe $01
    ld hl, sp+$07                                 ; $454b: $f8 $07
    ld [c], a                                     ; $454d: $e2
    dec e                                         ; $454e: $1d
    call c, $e123                                 ; $454f: $dc $23 $e1
    rra                                           ; $4552: $1f
    push af                                       ; $4553: $f5
    dec bc                                        ; $4554: $0b
    ld sp, hl                                     ; $4555: $f9
    rlca                                          ; $4556: $07
    jp nz, $043e                                  ; $4557: $c2 $3e $04

    ld [bc], a                                    ; $455a: $02
    adc h                                         ; $455b: $8c
    ld bc, $0103                                  ; $455c: $01 $03 $01
    inc bc                                        ; $455f: $03
    ld bc, $0103                                  ; $4560: $01 $03 $01
    inc bc                                        ; $4563: $03
    ld bc, $0103                                  ; $4564: $01 $03 $01
    inc bc                                        ; $4567: $03
    inc b                                         ; $4568: $04
    ld [bc], a                                    ; $4569: $02
    ld [$a200], sp                                ; $456a: $08 $00 $a2
    ret z                                         ; $456d: $c8

    jr c, @+$0a                                   ; $456e: $38 $08

    ld hl, sp+$79                                 ; $4570: $f8 $79
    cp $33                                        ; $4572: $fe $33
    ld a, h                                       ; $4574: $7c
    ld a, [hl-]                                   ; $4575: $3a
    ld a, l                                       ; $4576: $7d
    ld hl, $337e                                  ; $4577: $21 $7e $33
    ld a, h                                       ; $457a: $7c
    dec sp                                        ; $457b: $3b
    ld a, h                                       ; $457c: $7c
    ld de, $193e                                  ; $457d: $11 $3e $19
    ld a, $1c                                     ; $4580: $3e $1c
    ccf                                           ; $4582: $3f
    add hl, de                                    ; $4583: $19
    ld e, $0d                                     ; $4584: $1e $0d
    ld e, $0e                                     ; $4586: $1e $0e
    rrca                                          ; $4588: $0f
    dec c                                         ; $4589: $0d
    ld c, $04                                     ; $458a: $0e $04
    rrca                                          ; $458c: $0f
    ld b, $0f                                     ; $458d: $06 $0f
    ld [bc], a                                    ; $458f: $02
    rlca                                          ; $4590: $07
    ret nz                                        ; $4591: $c0

    jr nc, jr_0f4_4594                            ; $4592: $30 $00

jr_0f4_4594:
    jr nz, @+$12                                  ; $4594: $20 $10

    dec a                                         ; $4596: $3d
    inc bc                                        ; $4597: $03
    ld sp, $2d0f                                  ; $4598: $31 $0f $2d
    inc de                                        ; $459b: $13
    ld [hl+], a                                   ; $459c: $22
    ld e, $3a                                     ; $459d: $1e $3a
    ld b, $32                                     ; $459f: $06 $32
    ld c, $26                                     ; $45a1: $0e $26
    ld a, [de]                                    ; $45a3: $1a
    ld a, [hl-]                                   ; $45a4: $3a
    ld b, $3a                                     ; $45a5: $06 $3a
    ld b, $22                                     ; $45a7: $06 $22
    ld e, $32                                     ; $45a9: $1e $32
    ld c, $1d                                     ; $45ab: $0e $1d
    inc hl                                        ; $45ad: $23
    ld sp, $1d0f                                  ; $45ae: $31 $0f $1d
    inc hl                                        ; $45b1: $23
    db $e4                                        ; $45b2: $e4
    ei                                            ; $45b3: $fb
    adc $f1                                       ; $45b4: $ce $f1
    ld h, [hl]                                    ; $45b6: $66
    ld a, c                                       ; $45b7: $79
    ld l, [hl]                                    ; $45b8: $6e
    ld [hl], c                                    ; $45b9: $71
    ld [hl], h                                    ; $45ba: $74
    ld a, e                                       ; $45bb: $7b
    ld [hl], h                                    ; $45bc: $74
    ld a, e                                       ; $45bd: $7b
    ld l, a                                       ; $45be: $6f
    ld [hl], c                                    ; $45bf: $71
    ld h, l                                       ; $45c0: $65
    ld a, e                                       ; $45c1: $7b
    ld l, c                                       ; $45c2: $69
    ld [hl], a                                    ; $45c3: $77
    ld l, d                                       ; $45c4: $6a
    halt                                          ; $45c5: $76
    jp c, $f4e6                                   ; $45c6: $da $e6 $f4

    db $ec                                        ; $45c9: $ec
    call nc, $e8ec                                ; $45ca: $d4 $ec $e8
    ret c                                         ; $45cd: $d8

    add sp, -$28                                  ; $45ce: $e8 $d8
    add sp, -$28                                  ; $45d0: $e8 $d8
    inc c                                         ; $45d2: $0c
    ld bc, $0014                                  ; $45d3: $01 $14 $00
    add l                                         ; $45d6: $85
    rrca                                          ; $45d7: $0f
    dec c                                         ; $45d8: $0d
    dec b                                         ; $45d9: $05
    rlca                                          ; $45da: $07
    dec b                                         ; $45db: $05
    inc bc                                        ; $45dc: $03
    rlca                                          ; $45dd: $07
    ld [bc], a                                    ; $45de: $02
    ld [bc], a                                    ; $45df: $02
    ld d, $00                                     ; $45e0: $16 $00
    rst $38                                       ; $45e2: $ff
    inc de                                        ; $45e3: $13
    rlca                                          ; $45e4: $07
    db $f4                                        ; $45e5: $f4
    ld a, [bc]                                    ; $45e6: $0a
    ld a, [c]                                     ; $45e7: $f2
    rrca                                          ; $45e8: $0f
    db $db                                        ; $45e9: $db
    rst $30                                       ; $45ea: $f7
    db $db                                        ; $45eb: $db
    rst $38                                       ; $45ec: $ff
    rst $18                                       ; $45ed: $df
    ld bc, $faeb                                  ; $45ee: $01 $eb $fa
    rst $28                                       ; $45f1: $ef
    nop                                           ; $45f2: $00
    ei                                            ; $45f3: $fb
    ld a, [$fb05]                                 ; $45f4: $fa $05 $fb
    ld [bc], a                                    ; $45f7: $02
    rlca                                          ; $45f8: $07
    add e                                         ; $45f9: $83
    inc a                                         ; $45fa: $3c
    ccf                                           ; $45fb: $3f
    ld e, a                                       ; $45fc: $5f
    ld [bc], a                                    ; $45fd: $02
    ld a, a                                       ; $45fe: $7f
    sbc c                                         ; $45ff: $99

jr_0f4_4600:
    rst $38                                       ; $4600: $ff
    ld a, a                                       ; $4601: $7f
    rst $38                                       ; $4602: $ff
    ld e, a                                       ; $4603: $5f
    rst $38                                       ; $4604: $ff
    ld h, b                                       ; $4605: $60
    rst $38                                       ; $4606: $ff
    inc a                                         ; $4607: $3c
    ld a, a                                       ; $4608: $7f
    add hl, sp                                    ; $4609: $39
    ld a, [hl]                                    ; $460a: $7e
    inc e                                         ; $460b: $1c
    ccf                                           ; $460c: $3f
    rrca                                          ; $460d: $0f
    rra                                           ; $460e: $1f
    inc c                                         ; $460f: $0c
    rra                                           ; $4610: $1f
    rrca                                          ; $4611: $0f
    rra                                           ; $4612: $1f
    inc b                                         ; $4613: $04
    rrca                                          ; $4614: $0f
    ld b, $0f                                     ; $4615: $06 $0f
    rlca                                          ; $4617: $07
    rrca                                          ; $4618: $0f
    ld [bc], a                                    ; $4619: $02
    ldh a, [$82]                                  ; $461a: $f0 $82
    cp [hl]                                       ; $461c: $be
    cp $04                                        ; $461d: $fe $04
    rst $38                                       ; $461f: $ff
    sbc b                                         ; $4620: $98
    cp $ff                                        ; $4621: $fe $ff
    ld hl, sp-$01                                 ; $4623: $f8 $ff
    ld [bc], a                                    ; $4625: $02
    db $fd                                        ; $4626: $fd
    call z, $f233                                 ; $4627: $cc $33 $f2
    dec c                                         ; $462a: $0d
    db $e4                                        ; $462b: $e4
    dec de                                        ; $462c: $1b
    ld a, h                                       ; $462d: $7c
    add e                                         ; $462e: $83
    ld hl, sp+$07                                 ; $462f: $f8 $07
    ld a, [hl]                                    ; $4631: $7e
    add c                                         ; $4632: $81
    add hl, sp                                    ; $4633: $39
    add $66                                       ; $4634: $c6 $66
    sbc c                                         ; $4636: $99
    jr c, jr_0f4_4600                             ; $4637: $38 $c7

    inc c                                         ; $4639: $0c
    ld [bc], a                                    ; $463a: $02
    call nz, $0301                                ; $463b: $c4 $01 $03
    ld bc, $0103                                  ; $463e: $01 $03 $01
    inc bc                                        ; $4641: $03
    ld bc, $0103                                  ; $4642: $01 $03 $01
    inc bc                                        ; $4645: $03
    ld bc, $fd03                                  ; $4646: $01 $03 $fd
    inc bc                                        ; $4649: $03
    pop bc                                        ; $464a: $c1
    ccf                                           ; $464b: $3f
    ld l, c                                       ; $464c: $69
    sub a                                         ; $464d: $97
    ld sp, hl                                     ; $464e: $f9
    rlca                                          ; $464f: $07
    ld [hl], $78                                  ; $4650: $36 $78
    jr jr_0f4_4692                                ; $4652: $18 $3e

    ld a, [de]                                    ; $4654: $1a
    inc a                                         ; $4655: $3c
    ld d, $38                                     ; $4656: $16 $38
    dec d                                         ; $4658: $15
    ld a, [hl-]                                   ; $4659: $3a
    dec de                                        ; $465a: $1b
    inc a                                         ; $465b: $3c
    dec sp                                        ; $465c: $3b
    ld a, h                                       ; $465d: $7c
    scf                                           ; $465e: $37
    ld a, b                                       ; $465f: $78
    ccf                                           ; $4660: $3f
    ld a, b                                       ; $4661: $78
    daa                                           ; $4662: $27
    ld a, b                                       ; $4663: $78
    ld l, h                                       ; $4664: $6c
    ld [hl], e                                    ; $4665: $73
    ld e, a                                       ; $4666: $5f
    ldh [$ce], a                                  ; $4667: $e0 $ce
    pop af                                        ; $4669: $f1
    db $fc                                        ; $466a: $fc
    db $e3                                        ; $466b: $e3
    sbc h                                         ; $466c: $9c
    db $e3                                        ; $466d: $e3
    reti                                          ; $466e: $d9


    rst $20                                       ; $466f: $e7
    ld hl, $1d1f                                  ; $4670: $21 $1f $1d
    inc hl                                        ; $4673: $23
    ld [de], a                                    ; $4674: $12
    ld l, $22                                     ; $4675: $2e $22
    ld e, $04                                     ; $4677: $1e $04
    inc a                                         ; $4679: $3c
    jr z, jr_0f4_4694                             ; $467a: $28 $18

    db $10                                        ; $467c: $10
    jr nc, jr_0f4_468f                            ; $467d: $30 $10

    jr nc, jr_0f4_4687                            ; $467f: $30 $06

    jr nz, jr_0f4_4685                            ; $4681: $20 $02

    nop                                           ; $4683: $00
    xor b                                         ; $4684: $a8

jr_0f4_4685:
    ld b, b                                       ; $4685: $40
    ret nz                                        ; $4686: $c0

jr_0f4_4687:
    ld b, b                                       ; $4687: $40
    ret nz                                        ; $4688: $c0

    ld b, b                                       ; $4689: $40
    ret nz                                        ; $468a: $c0

    ld b, b                                       ; $468b: $40
    ret nz                                        ; $468c: $c0

    add sp, -$0c                                  ; $468d: $e8 $f4

jr_0f4_468f:
    call c, $cce0                                 ; $468f: $dc $e0 $cc

jr_0f4_4692:
    ldh a, [$98]                                  ; $4692: $f0 $98

jr_0f4_4694:
    db $e4                                        ; $4694: $e4
    db $ed                                        ; $4695: $ed
    di                                            ; $4696: $f3
    ret                                           ; $4697: $c9


    rst $30                                       ; $4698: $f7
    rst $38                                       ; $4699: $ff
    pop af                                        ; $469a: $f1
    ld e, c                                       ; $469b: $59
    ld h, a                                       ; $469c: $67
    ld l, l                                       ; $469d: $6d
    ld [hl], e                                    ; $469e: $73
    ld l, c                                       ; $469f: $69
    ld [hl], a                                    ; $46a0: $77
    inc [hl]                                      ; $46a1: $34
    dec sp                                        ; $46a2: $3b
    ld e, $19                                     ; $46a3: $1e $19
    ld a, [de]                                    ; $46a5: $1a
    dec e                                         ; $46a6: $1d
    ld a, [bc]                                    ; $46a7: $0a
    dec c                                         ; $46a8: $0d
    ld c, $0d                                     ; $46a9: $0e $0d
    inc b                                         ; $46ab: $04

jr_0f4_46ac:
    rlca                                          ; $46ac: $07
    inc c                                         ; $46ad: $0c
    ld bc, $0b85                                  ; $46ae: $01 $85 $0b
    rrca                                          ; $46b1: $0f
    ld a, [bc]                                    ; $46b2: $0a
    ld c, $0a                                     ; $46b3: $0e $0a
    inc bc                                        ; $46b5: $03
    ld c, $02                                     ; $46b6: $0e $02
    inc b                                         ; $46b8: $04
    ld a, [bc]                                    ; $46b9: $0a
    nop                                           ; $46ba: $00
    rst $38                                       ; $46bb: $ff
    dec d                                         ; $46bc: $15
    ld [$0af4], sp                                ; $46bd: $08 $f4 $0a
    ld a, [c]                                     ; $46c0: $f2
    rrca                                          ; $46c1: $0f
    db $dd                                        ; $46c2: $dd
    push af                                       ; $46c3: $f5
    db $dd                                        ; $46c4: $dd
    db $fd                                        ; $46c5: $fd
    ldh [$fe], a                                  ; $46c6: $e0 $fe
    db $ed                                        ; $46c8: $ed
    push af                                       ; $46c9: $f5
    db $ed                                        ; $46ca: $ed
    db $fd                                        ; $46cb: $fd
    db $fd                                        ; $46cc: $fd
    db $fc                                        ; $46cd: $fc
    db $fd                                        ; $46ce: $fd
    cp $0d                                        ; $46cf: $fe $0d
    ei                                            ; $46d1: $fb
    ld [bc], a                                    ; $46d2: $02

jr_0f4_46d3:
    rlca                                          ; $46d3: $07
    ld [bc], a                                    ; $46d4: $02
    ccf                                           ; $46d5: $3f
    sbc h                                         ; $46d6: $9c
    ld e, a                                       ; $46d7: $5f
    ld a, a                                       ; $46d8: $7f
    ccf                                           ; $46d9: $3f
    ld a, a                                       ; $46da: $7f
    ccf                                           ; $46db: $3f
    ld a, a                                       ; $46dc: $7f
    cpl                                           ; $46dd: $2f
    ld a, a                                       ; $46de: $7f
    ld [hl], b                                    ; $46df: $70
    rst $38                                       ; $46e0: $ff
    ld a, h                                       ; $46e1: $7c
    rst $38                                       ; $46e2: $ff
    ld [hl], c                                    ; $46e3: $71
    cp $67                                        ; $46e4: $fe $67
    ld hl, sp+$73                                 ; $46e6: $f8 $73
    db $fc                                        ; $46e8: $fc
    ld [hl], a                                    ; $46e9: $77
    ld hl, sp+$63                                 ; $46ea: $f8 $63
    db $fc                                        ; $46ec: $fc
    ld a, c                                       ; $46ed: $79
    cp $73                                        ; $46ee: $fe $73
    db $fc                                        ; $46f0: $fc
    ld [hl], e                                    ; $46f1: $73
    db $fc                                        ; $46f2: $fc
    ld [bc], a                                    ; $46f3: $02
    ldh a, [$9e]                                  ; $46f4: $f0 $9e
    sub [hl]                                      ; $46f6: $96
    cp $fd                                        ; $46f7: $fe $fd
    rst $38                                       ; $46f9: $ff
    cp $ff                                        ; $46fa: $fe $ff
    cp $ff                                        ; $46fc: $fe $ff
    db $fc                                        ; $46fe: $fc
    rst $38                                       ; $46ff: $ff
    nop                                           ; $4700: $00
    rst $38                                       ; $4701: $ff
    db $ed                                        ; $4702: $ed
    inc de                                        ; $4703: $13
    ld sp, hl                                     ; $4704: $f9
    rlca                                          ; $4705: $07
    and d                                         ; $4706: $a2
    ld e, [hl]                                    ; $4707: $5e
    ld a, [c]                                     ; $4708: $f2
    ld c, $82                                     ; $4709: $0e $82
    ld a, [hl]                                    ; $470b: $7e
    db $e4                                        ; $470c: $e4
    inc e                                         ; $470d: $1c
    call nc, $e42c                                ; $470e: $d4 $2c $e4
    inc e                                         ; $4711: $1c
    adc b                                         ; $4712: $88
    ld a, b                                       ; $4713: $78
    ld [$1201], sp                                ; $4714: $08 $01 $12
    nop                                           ; $4717: $00
    and b                                         ; $4718: $a0
    ret nc                                        ; $4719: $d0

    jr nc, jr_0f4_46ac                            ; $471a: $30 $90

    ld [hl], b                                    ; $471c: $70
    ld d, b                                       ; $471d: $50
    or b                                          ; $471e: $b0
    ld [hl], a                                    ; $471f: $77
    ld hl, sp+$61                                 ; $4720: $f8 $61
    cp $37                                        ; $4722: $fe $37
    ld a, b                                       ; $4724: $78
    dec sp                                        ; $4725: $3b
    ld a, h                                       ; $4726: $7c
    ld sp, $337e                                  ; $4727: $31 $7e $33
    ld a, h                                       ; $472a: $7c
    add hl, de                                    ; $472b: $19
    ld a, $1d                                     ; $472c: $3e $1d
    ld a, $08                                     ; $472e: $3e $08
    rra                                           ; $4730: $1f
    ld c, $1f                                     ; $4731: $0e $1f
    ld b, $0f                                     ; $4733: $06 $0f
    rlca                                          ; $4735: $07
    rrca                                          ; $4736: $0f
    inc bc                                        ; $4737: $03
    rlca                                          ; $4738: $07
    ld [bc], a                                    ; $4739: $02
    inc bc                                        ; $473a: $03
    add d                                         ; $473b: $82
    ld bc, $0203                                  ; $473c: $01 $03 $02
    ld bc, $0081                                  ; $473f: $01 $81 $00
    ld [bc], a                                    ; $4742: $02
    add b                                         ; $4743: $80
    ld [bc], a                                    ; $4744: $02
    nop                                           ; $4745: $00
    or b                                          ; $4746: $b0
    add b                                         ; $4747: $80
    ret z                                         ; $4748: $c8

    jr c, jr_0f4_46d3                             ; $4749: $38 $88

    ld a, b                                       ; $474b: $78
    add sp, $18                                   ; $474c: $e8 $18
    call nz, $843c                                ; $474e: $c4 $3c $84
    ld a, h                                       ; $4751: $7c
    db $f4                                        ; $4752: $f4
    inc c                                         ; $4753: $0c
    call nz, $f43c                                ; $4754: $c4 $3c $f4
    inc c                                         ; $4757: $0c
    ld h, d                                       ; $4758: $62
    sbc [hl]                                      ; $4759: $9e
    sub d                                         ; $475a: $92
    xor $3a                                       ; $475b: $ee $3a
    add $d9                                       ; $475d: $c6 $d9
    rst $20                                       ; $475f: $e7
    sbc l                                         ; $4760: $9d
    db $e3                                        ; $4761: $e3
    call z, $6ef3                                 ; $4762: $cc $f3 $6e
    ld [hl], c                                    ; $4765: $71
    ld [hl], a                                    ; $4766: $77
    ld a, b                                       ; $4767: $78
    ld h, $39                                     ; $4768: $26 $39
    inc sp                                        ; $476a: $33
    inc a                                         ; $476b: $3c
    ld [hl], $39                                  ; $476c: $36 $39
    dec de                                        ; $476e: $1b
    inc e                                         ; $476f: $1c
    ld a, [de]                                    ; $4770: $1a
    dec e                                         ; $4771: $1d
    dec de                                        ; $4772: $1b
    inc e                                         ; $4773: $1c
    ld a, [bc]                                    ; $4774: $0a
    dec c                                         ; $4775: $0d
    ld c, $02                                     ; $4776: $0e $02
    dec c                                         ; $4778: $0d
    adc c                                         ; $4779: $89
    rrca                                          ; $477a: $0f
    dec c                                         ; $477b: $0d
    rrca                                          ; $477c: $0f
    dec c                                         ; $477d: $0d
    rrca                                          ; $477e: $0f
    ld a, [bc]                                    ; $477f: $0a
    ld c, $0a                                     ; $4780: $0e $0a
    ld c, $04                                     ; $4782: $0e $04
    ld [bc], a                                    ; $4784: $02
    adc h                                         ; $4785: $8c
    ld bc, $0103                                  ; $4786: $01 $03 $01
    inc bc                                        ; $4789: $03
    ld bc, $0103                                  ; $478a: $01 $03 $01
    inc bc                                        ; $478d: $03
    ld bc, $0103                                  ; $478e: $01 $03 $01
    inc bc                                        ; $4791: $03
    ld b, $02                                     ; $4792: $06 $02
    ld a, [bc]                                    ; $4794: $0a
    nop                                           ; $4795: $00
    add d                                         ; $4796: $82
    dec b                                         ; $4797: $05
    rlca                                          ; $4798: $07
    ld [bc], a                                    ; $4799: $02
    ld b, $02                                     ; $479a: $06 $02
    inc b                                         ; $479c: $04
    ld a, [de]                                    ; $479d: $1a
    nop                                           ; $479e: $00
    rst $38                                       ; $479f: $ff
    inc de                                        ; $47a0: $13
    rlca                                          ; $47a1: $07
    db $f4                                        ; $47a2: $f4
    ld a, [bc]                                    ; $47a3: $0a
    ld a, [c]                                     ; $47a4: $f2
    rrca                                          ; $47a5: $0f
    call c, $dcf5                                 ; $47a6: $dc $f5 $dc
    db $fd                                        ; $47a9: $fd
    ld [c], a                                     ; $47aa: $e2
    cp $ec                                        ; $47ab: $fe $ec
    ld hl, sp-$0e                                 ; $47ad: $f8 $f2
    db $fc                                        ; $47af: $fc
    db $fc                                        ; $47b0: $fc
    ld hl, sp+$02                                 ; $47b1: $f8 $02
    ei                                            ; $47b3: $fb
    ld [bc], a                                    ; $47b4: $02
    rrca                                          ; $47b5: $0f
    sbc [hl]                                      ; $47b6: $9e
    ld l, a                                       ; $47b7: $6f
    ld a, a                                       ; $47b8: $7f
    cp a                                          ; $47b9: $bf
    rst $38                                       ; $47ba: $ff
    cp a                                          ; $47bb: $bf
    rst $38                                       ; $47bc: $ff
    cp a                                          ; $47bd: $bf
    rst $38                                       ; $47be: $ff
    sbc a                                         ; $47bf: $9f
    rst $38                                       ; $47c0: $ff
    ld h, b                                       ; $47c1: $60
    rst $38                                       ; $47c2: $ff
    dec [hl]                                      ; $47c3: $35
    ld a, d                                       ; $47c4: $7a
    dec sp                                        ; $47c5: $3b
    ld a, h                                       ; $47c6: $7c
    jr nc, @+$81                                  ; $47c7: $30 $7f

    dec sp                                        ; $47c9: $3b
    ld a, h                                       ; $47ca: $7c
    dec a                                         ; $47cb: $3d
    ld a, [hl]                                    ; $47cc: $7e
    add hl, de                                    ; $47cd: $19
    ld a, $1c                                     ; $47ce: $3e $1c
    ccf                                           ; $47d0: $3f
    inc e                                         ; $47d1: $1c
    ccf                                           ; $47d2: $3f
    ld c, $1f                                     ; $47d3: $0e $1f
    ld [bc], a                                    ; $47d5: $02
    ldh [rSC], a                                  ; $47d6: $e0 $02
    db $fc                                        ; $47d8: $fc
    sbc h                                         ; $47d9: $9c
    ld a, [$fdfe]                                 ; $47da: $fa $fe $fd
    rst $38                                       ; $47dd: $ff
    db $fd                                        ; $47de: $fd
    rst $38                                       ; $47df: $ff
    ld sp, hl                                     ; $47e0: $f9
    rst $38                                       ; $47e1: $ff
    ld [bc], a                                    ; $47e2: $02
    db $fd                                        ; $47e3: $fd
    ld l, h                                       ; $47e4: $6c
    sub e                                         ; $47e5: $93

jr_0f4_47e6:
    ld hl, sp+$07                                 ; $47e6: $f8 $07
    pop hl                                        ; $47e8: $e1
    ld e, $fe                                     ; $47e9: $1e $fe
    ld bc, $03fc                                  ; $47eb: $01 $fc $03
    add sp, $17                                   ; $47ee: $e8 $17
    ld hl, sp+$07                                 ; $47f0: $f8 $07
    db $e3                                        ; $47f2: $e3
    dec e                                         ; $47f3: $1d
    ld c, l                                       ; $47f4: $4d
    or e                                          ; $47f5: $b3
    db $10                                        ; $47f6: $10
    ld bc, $0004                                  ; $47f7: $01 $04 $00
    cp [hl]                                       ; $47fa: $be
    ld [c], a                                     ; $47fb: $e2
    ld e, $d4                                     ; $47fc: $1e $d4
    inc l                                         ; $47fe: $2c
    call nc, $e42c                                ; $47ff: $d4 $2c $e4
    inc e                                         ; $4802: $1c
    sub h                                         ; $4803: $94
    ld l, h                                       ; $4804: $6c
    and h                                         ; $4805: $a4
    ld e, h                                       ; $4806: $5c
    ld l, h                                       ; $4807: $6c
    ldh a, [$74]                                  ; $4808: $f0 $74
    ld hl, sp+$64                                 ; $480a: $f8 $64
    ld hl, sp+$70                                 ; $480c: $f8 $70
    db $fc                                        ; $480e: $fc
    ld [hl], h                                    ; $480f: $74
    ld hl, sp+$64                                 ; $4810: $f8 $64
    ld hl, sp+$77                                 ; $4812: $f8 $77
    ld hl, sp+$37                                 ; $4814: $f8 $37
    ld a, b                                       ; $4816: $78
    add hl, sp                                    ; $4817: $39
    ld a, [hl]                                    ; $4818: $7e
    scf                                           ; $4819: $37
    ld a, b                                       ; $481a: $78
    inc sp                                        ; $481b: $33
    ld a, h                                       ; $481c: $7c
    ld [hl], d                                    ; $481d: $72
    db $fd                                        ; $481e: $fd
    ld l, [hl]                                    ; $481f: $6e
    pop af                                        ; $4820: $f1
    ld h, a                                       ; $4821: $67
    ld hl, sp+$6e                                 ; $4822: $f8 $6e
    pop af                                        ; $4824: $f1
    ld a, h                                       ; $4825: $7c
    di                                            ; $4826: $f3
    dec c                                         ; $4827: $0d
    inc bc                                        ; $4828: $03

jr_0f4_4829:
    ld bc, $0d0f                                  ; $4829: $01 $0f $0d
    inc bc                                        ; $482c: $03
    ld bc, $0a0f                                  ; $482d: $01 $0f $0a
    ld b, $02                                     ; $4830: $06 $02
    ld c, $04                                     ; $4832: $0e $04
    inc c                                         ; $4834: $0c
    inc b                                         ; $4835: $04
    inc c                                         ; $4836: $0c
    inc b                                         ; $4837: $04
    inc c                                         ; $4838: $0c
    ld [bc], a                                    ; $4839: $02
    ld [$6894], sp                                ; $483a: $08 $94 $68
    sbc b                                         ; $483d: $98
    ret z                                         ; $483e: $c8

    jr c, jr_0f4_4829                             ; $483f: $38 $e8

    jr jr_0f4_4887                                ; $4841: $18 $44

    cp h                                          ; $4843: $bc
    ld [hl], h                                    ; $4844: $74
    adc h                                         ; $4845: $8c
    and h                                         ; $4846: $a4
    call c, $f060                                 ; $4847: $dc $60 $f0
    ld h, b                                       ; $484a: $60
    ldh a, [rNR41]                                ; $484b: $f0 $20
    ld [hl], b                                    ; $484d: $70
    jr nc, jr_0f4_48c0                            ; $484e: $30 $70

    ld [bc], a                                    ; $4850: $02
    jr nc, jr_0f4_47e6                            ; $4851: $30 $93

    db $10                                        ; $4853: $10
    jr nc, @+$1d                                  ; $4854: $30 $1b

    inc e                                         ; $4856: $1c
    add hl, de                                    ; $4857: $19
    ld e, $1d                                     ; $4858: $1e $1d
    ld e, $09                                     ; $485a: $1e $09
    ld e, $0d                                     ; $485c: $1e $0d
    ld c, $0c                                     ; $485e: $0e $0c
    rrca                                          ; $4860: $0f
    ld b, $07                                     ; $4861: $06 $07
    ld b, $07                                     ; $4863: $06 $07
    ld [bc], a                                    ; $4865: $02
    inc bc                                        ; $4866: $03
    inc bc                                        ; $4867: $03
    sub a                                         ; $4868: $97
    dec b                                         ; $4869: $05
    inc bc                                        ; $486a: $03
    ld bc, $0507                                  ; $486b: $01 $07 $05
    inc bc                                        ; $486e: $03
    ld bc, $0507                                  ; $486f: $01 $07 $05
    inc bc                                        ; $4872: $03
    dec b                                         ; $4873: $05
    inc bc                                        ; $4874: $03
    dec b                                         ; $4875: $05
    inc bc                                        ; $4876: $03
    dec b                                         ; $4877: $05
    inc bc                                        ; $4878: $03
    dec b                                         ; $4879: $05
    inc bc                                        ; $487a: $03
    ld bc, $1a07                                  ; $487b: $01 $07 $1a
    ld e, $0a                                     ; $487e: $1e $0a
    inc bc                                        ; $4880: $03
    ld c, $02                                     ; $4881: $0e $02
    inc b                                         ; $4883: $04
    inc b                                         ; $4884: $04
    nop                                           ; $4885: $00
    rst $38                                       ; $4886: $ff

jr_0f4_4887:
    inc de                                        ; $4887: $13
    rlca                                          ; $4888: $07
    db $f4                                        ; $4889: $f4
    ld a, [bc]                                    ; $488a: $0a
    ld a, [c]                                     ; $488b: $f2
    rrca                                          ; $488c: $0f
    call c, $dcf5                                 ; $488d: $dc $f5 $dc
    db $fd                                        ; $4890: $fd
    ld [c], a                                     ; $4891: $e2
    cp $ec                                        ; $4892: $fe $ec
    ld hl, sp-$0e                                 ; $4894: $f8 $f2
    db $fc                                        ; $4896: $fc
    db $fc                                        ; $4897: $fc
    ld hl, sp+$02                                 ; $4898: $f8 $02
    ei                                            ; $489a: $fb
    ld [bc], a                                    ; $489b: $02
    rrca                                          ; $489c: $0f
    sbc [hl]                                      ; $489d: $9e
    ld l, a                                       ; $489e: $6f
    ld a, a                                       ; $489f: $7f
    cp a                                          ; $48a0: $bf
    rst $38                                       ; $48a1: $ff
    cp a                                          ; $48a2: $bf
    rst $38                                       ; $48a3: $ff
    cp a                                          ; $48a4: $bf
    rst $38                                       ; $48a5: $ff
    sbc a                                         ; $48a6: $9f
    rst $38                                       ; $48a7: $ff
    ld h, b                                       ; $48a8: $60
    rst $38                                       ; $48a9: $ff
    dec [hl]                                      ; $48aa: $35
    ld a, d                                       ; $48ab: $7a
    dec sp                                        ; $48ac: $3b
    ld a, h                                       ; $48ad: $7c
    jr nc, @+$81                                  ; $48ae: $30 $7f

    dec sp                                        ; $48b0: $3b
    ld a, h                                       ; $48b1: $7c
    dec a                                         ; $48b2: $3d
    ld a, [hl]                                    ; $48b3: $7e
    add hl, de                                    ; $48b4: $19
    ld a, $1c                                     ; $48b5: $3e $1c
    ccf                                           ; $48b7: $3f
    inc e                                         ; $48b8: $1c
    ccf                                           ; $48b9: $3f
    ld c, $1f                                     ; $48ba: $0e $1f
    ld [bc], a                                    ; $48bc: $02
    ldh [rSC], a                                  ; $48bd: $e0 $02
    db $fc                                        ; $48bf: $fc

jr_0f4_48c0:
    sbc h                                         ; $48c0: $9c
    ld a, [$fdfe]                                 ; $48c1: $fa $fe $fd
    rst $38                                       ; $48c4: $ff
    db $fd                                        ; $48c5: $fd
    rst $38                                       ; $48c6: $ff
    ld sp, hl                                     ; $48c7: $f9
    rst $38                                       ; $48c8: $ff
    ld [bc], a                                    ; $48c9: $02
    db $fd                                        ; $48ca: $fd
    ld l, h                                       ; $48cb: $6c
    sub e                                         ; $48cc: $93

jr_0f4_48cd:
    ld hl, sp+$07                                 ; $48cd: $f8 $07
    pop hl                                        ; $48cf: $e1
    ld e, $fe                                     ; $48d0: $1e $fe
    ld bc, $03fc                                  ; $48d2: $01 $fc $03
    add sp, $17                                   ; $48d5: $e8 $17
    ld hl, sp+$07                                 ; $48d7: $f8 $07
    db $e3                                        ; $48d9: $e3
    dec e                                         ; $48da: $1d
    ld c, l                                       ; $48db: $4d
    or e                                          ; $48dc: $b3
    db $10                                        ; $48dd: $10
    ld bc, $0004                                  ; $48de: $01 $04 $00
    cp [hl]                                       ; $48e1: $be
    ld [c], a                                     ; $48e2: $e2
    ld e, $d4                                     ; $48e3: $1e $d4
    inc l                                         ; $48e5: $2c
    call nc, $e42c                                ; $48e6: $d4 $2c $e4
    inc e                                         ; $48e9: $1c
    sub h                                         ; $48ea: $94
    ld l, h                                       ; $48eb: $6c
    and h                                         ; $48ec: $a4
    ld e, h                                       ; $48ed: $5c
    ld l, h                                       ; $48ee: $6c
    ldh a, [$74]                                  ; $48ef: $f0 $74
    ld hl, sp+$64                                 ; $48f1: $f8 $64
    ld hl, sp+$70                                 ; $48f3: $f8 $70
    db $fc                                        ; $48f5: $fc
    ld [hl], h                                    ; $48f6: $74
    ld hl, sp+$64                                 ; $48f7: $f8 $64
    ld hl, sp+$77                                 ; $48f9: $f8 $77
    ld hl, sp+$37                                 ; $48fb: $f8 $37
    ld a, b                                       ; $48fd: $78
    add hl, sp                                    ; $48fe: $39
    ld a, [hl]                                    ; $48ff: $7e
    scf                                           ; $4900: $37
    ld a, b                                       ; $4901: $78
    inc sp                                        ; $4902: $33
    ld a, h                                       ; $4903: $7c
    ld [hl], d                                    ; $4904: $72
    db $fd                                        ; $4905: $fd
    ld l, [hl]                                    ; $4906: $6e
    pop af                                        ; $4907: $f1
    ld h, a                                       ; $4908: $67
    ld hl, sp+$6e                                 ; $4909: $f8 $6e
    pop af                                        ; $490b: $f1
    ld a, h                                       ; $490c: $7c
    di                                            ; $490d: $f3
    dec c                                         ; $490e: $0d
    inc bc                                        ; $490f: $03

jr_0f4_4910:
    ld bc, $0d0f                                  ; $4910: $01 $0f $0d
    inc bc                                        ; $4913: $03
    ld bc, $0a0f                                  ; $4914: $01 $0f $0a
    ld b, $02                                     ; $4917: $06 $02
    ld c, $04                                     ; $4919: $0e $04
    inc c                                         ; $491b: $0c
    inc b                                         ; $491c: $04
    inc c                                         ; $491d: $0c
    inc b                                         ; $491e: $04
    inc c                                         ; $491f: $0c
    ld [bc], a                                    ; $4920: $02
    ld [$6894], sp                                ; $4921: $08 $94 $68
    sbc b                                         ; $4924: $98
    ret z                                         ; $4925: $c8

    jr c, jr_0f4_4910                             ; $4926: $38 $e8

    jr jr_0f4_496e                                ; $4928: $18 $44

    cp h                                          ; $492a: $bc
    ld [hl], h                                    ; $492b: $74
    adc h                                         ; $492c: $8c
    and h                                         ; $492d: $a4
    call c, $f060                                 ; $492e: $dc $60 $f0
    ld h, b                                       ; $4931: $60
    ldh a, [rNR41]                                ; $4932: $f0 $20
    ld [hl], b                                    ; $4934: $70
    jr nc, jr_0f4_49a7                            ; $4935: $30 $70

    ld [bc], a                                    ; $4937: $02
    jr nc, jr_0f4_48cd                            ; $4938: $30 $93

    db $10                                        ; $493a: $10
    jr nc, @+$1d                                  ; $493b: $30 $1b

    inc e                                         ; $493d: $1c
    add hl, de                                    ; $493e: $19
    ld e, $1d                                     ; $493f: $1e $1d
    ld e, $09                                     ; $4941: $1e $09
    ld e, $0d                                     ; $4943: $1e $0d
    ld c, $0c                                     ; $4945: $0e $0c
    rrca                                          ; $4947: $0f
    ld b, $07                                     ; $4948: $06 $07
    ld b, $07                                     ; $494a: $06 $07
    ld [bc], a                                    ; $494c: $02
    inc bc                                        ; $494d: $03
    inc bc                                        ; $494e: $03
    sub a                                         ; $494f: $97
    dec b                                         ; $4950: $05
    inc bc                                        ; $4951: $03
    ld bc, $0507                                  ; $4952: $01 $07 $05
    inc bc                                        ; $4955: $03
    ld bc, $0507                                  ; $4956: $01 $07 $05
    inc bc                                        ; $4959: $03
    dec b                                         ; $495a: $05
    inc bc                                        ; $495b: $03
    dec b                                         ; $495c: $05
    inc bc                                        ; $495d: $03
    dec b                                         ; $495e: $05
    inc bc                                        ; $495f: $03
    dec b                                         ; $4960: $05
    inc bc                                        ; $4961: $03
    ld bc, $1a07                                  ; $4962: $01 $07 $1a
    ld e, $0a                                     ; $4965: $1e $0a
    inc bc                                        ; $4967: $03
    ld c, $02                                     ; $4968: $0e $02
    inc b                                         ; $496a: $04
    inc b                                         ; $496b: $04
    nop                                           ; $496c: $00
    rst $38                                       ; $496d: $ff

jr_0f4_496e:
    inc de                                        ; $496e: $13
    rlca                                          ; $496f: $07
    db $f4                                        ; $4970: $f4
    ld a, [bc]                                    ; $4971: $0a
    ld a, [c]                                     ; $4972: $f2
    rrca                                          ; $4973: $0f
    db $dd                                        ; $4974: $dd
    ld sp, hl                                     ; $4975: $f9
    db $dd                                        ; $4976: $dd
    ld bc, $04e3                                  ; $4977: $01 $e3 $04
    db $ed                                        ; $497a: $ed
    cp $f3                                        ; $497b: $fe $f3
    inc bc                                        ; $497d: $03
    db $fd                                        ; $497e: $fd
    db $fc                                        ; $497f: $fc
    dec c                                         ; $4980: $0d
    ld a, [$0f02]                                 ; $4981: $fa $02 $0f
    sbc a                                         ; $4984: $9f
    dec hl                                        ; $4985: $2b
    ccf                                           ; $4986: $3f
    ld e, a                                       ; $4987: $5f
    ld a, a                                       ; $4988: $7f
    cp a                                          ; $4989: $bf
    rst $38                                       ; $498a: $ff

jr_0f4_498b:
    cp a                                          ; $498b: $bf
    rst $38                                       ; $498c: $ff
    rst $18                                       ; $498d: $df
    rst $38                                       ; $498e: $ff
    ldh [rIE], a                                  ; $498f: $e0 $ff
    ld [hl], c                                    ; $4991: $71
    ld a, [hl]                                    ; $4992: $7e
    scf                                           ; $4993: $37
    ld a, b                                       ; $4994: $78
    add hl, sp                                    ; $4995: $39
    ld a, $18                                     ; $4996: $3e $18
    ccf                                           ; $4998: $3f
    inc e                                         ; $4999: $1c
    rra                                           ; $499a: $1f
    ld c, $1f                                     ; $499b: $0e $1f
    ld b, $0f                                     ; $499d: $06 $0f
    rlca                                          ; $499f: $07
    rrca                                          ; $49a0: $0f
    ld b, $0f                                     ; $49a1: $06 $0f
    ldh [rSC], a                                  ; $49a3: $e0 $02
    db $fc                                        ; $49a5: $fc
    ld [bc], a                                    ; $49a6: $02

jr_0f4_49a7:
    cp $9b                                        ; $49a7: $fe $9b
    rst $38                                       ; $49a9: $ff
    cp $ff                                        ; $49aa: $fe $ff
    db $fd                                        ; $49ac: $fd
    rst $38                                       ; $49ad: $ff
    pop af                                        ; $49ae: $f1
    rst $38                                       ; $49af: $ff
    nop                                           ; $49b0: $00
    rst $38                                       ; $49b1: $ff
    ld [hl], b                                    ; $49b2: $70
    adc a                                         ; $49b3: $8f
    ld a, [$c405]                                 ; $49b4: $fa $05 $c4
    dec sp                                        ; $49b7: $3b
    db $fc                                        ; $49b8: $fc
    inc bc                                        ; $49b9: $03
    ld sp, hl                                     ; $49ba: $f9
    ld b, $66                                     ; $49bb: $06 $66
    sbc c                                         ; $49bd: $99
    db $fc                                        ; $49be: $fc
    inc bc                                        ; $49bf: $03
    ld e, a                                       ; $49c0: $5f
    and b                                         ; $49c1: $a0
    jr c, jr_0f4_498b                             ; $49c2: $38 $c7

    ld [$d604], sp                                ; $49c4: $08 $04 $d6
    ld [bc], a                                    ; $49c7: $02
    ld b, $02                                     ; $49c8: $06 $02
    ld b, $01                                     ; $49ca: $06 $01
    rlca                                          ; $49cc: $07
    ld bc, $0107                                  ; $49cd: $01 $07 $01
    rlca                                          ; $49d0: $07
    ld bc, $6d07                                  ; $49d1: $01 $07 $6d
    sub e                                         ; $49d4: $93
    ld sp, hl                                     ; $49d5: $f9
    rlca                                          ; $49d6: $07
    ld [hl], c                                    ; $49d7: $71
    adc a                                         ; $49d8: $8f
    db $fd                                        ; $49d9: $fd
    inc bc                                        ; $49da: $03
    pop af                                        ; $49db: $f1
    rrca                                          ; $49dc: $0f
    ld b, c                                       ; $49dd: $41
    cp a                                          ; $49de: $bf
    ld [hl], b                                    ; $49df: $70
    db $fc                                        ; $49e0: $fc
    ld h, b                                       ; $49e1: $60
    db $fc                                        ; $49e2: $fc
    ld [hl], b                                    ; $49e3: $70
    db $fc                                        ; $49e4: $fc
    ld [hl], b                                    ; $49e5: $70
    db $fc                                        ; $49e6: $fc
    jr nz, @+$7e                                  ; $49e7: $20 $7c

    inc [hl]                                      ; $49e9: $34
    ld a, b                                       ; $49ea: $78
    ld sp, $297e                                  ; $49eb: $31 $7e $29
    ld a, [hl]                                    ; $49ee: $7e
    dec sp                                        ; $49ef: $3b
    ld a, h                                       ; $49f0: $7c
    inc sp                                        ; $49f1: $33
    ld a, h                                       ; $49f2: $7c
    dec sp                                        ; $49f3: $3b
    ld a, h                                       ; $49f4: $7c
    dec sp                                        ; $49f5: $3b
    ld a, h                                       ; $49f6: $7c
    dec [hl]                                      ; $49f7: $35
    ld a, d                                       ; $49f8: $7a
    ld h, a                                       ; $49f9: $67
    ld hl, sp+$76                                 ; $49fa: $f8 $76
    ld sp, hl                                     ; $49fc: $f9
    ld l, a                                       ; $49fd: $6f
    ldh a, [rNR33]                                ; $49fe: $f0 $1d
    inc bc                                        ; $4a00: $03
    ld de, $1d0f                                  ; $4a01: $11 $0f $1d
    inc bc                                        ; $4a04: $03
    ld de, $050f                                  ; $4a05: $11 $0f $05
    dec de                                        ; $4a08: $1b
    add hl, de                                    ; $4a09: $19
    rlca                                          ; $4a0a: $07
    ld de, $1a0f                                  ; $4a0b: $11 $0f $1a
    ld b, $02                                     ; $4a0e: $06 $02
    ld e, $14                                     ; $4a10: $1e $14
    inc c                                         ; $4a12: $0c
    add h                                         ; $4a13: $84
    ld a, h                                       ; $4a14: $7c
    ret z                                         ; $4a15: $c8

    jr c, @+$12                                   ; $4a16: $38 $10

    ldh a, [rNR41]                                ; $4a18: $f0 $20
    ldh [rLCDC], a                                ; $4a1a: $e0 $40
    ret nz                                        ; $4a1c: $c0

    ld [bc], a                                    ; $4a1d: $02
    add b                                         ; $4a1e: $80
    and c                                         ; $4a1f: $a1
    ld a, [hl-]                                   ; $4a20: $3a
    ld a, h                                       ; $4a21: $7c
    ld [hl-], a                                   ; $4a22: $32
    ld a, h                                       ; $4a23: $7c
    halt                                          ; $4a24: $76
    ld a, b                                       ; $4a25: $78
    ld h, [hl]                                    ; $4a26: $66
    ld hl, sp-$34                                 ; $4a27: $f8 $cc
    ld a, [c]                                     ; $4a29: $f2
    add sp, -$0a                                  ; $4a2a: $e8 $f6
    reti                                          ; $4a2c: $d9


    rst $20                                       ; $4a2d: $e7
    ld [$caf6], a                                 ; $4a2e: $ea $f6 $ca
    or $fa                                        ; $4a31: $f6 $fa
    and $d4                                       ; $4a33: $e6 $d4
    db $ec                                        ; $4a35: $ec
    call nc, Call_0f4_74ec                        ; $4a36: $d4 $ec $74
    ld l, h                                       ; $4a39: $6c
    ld h, h                                       ; $4a3a: $64
    ld a, h                                       ; $4a3b: $7c
    inc [hl]                                      ; $4a3c: $34
    inc a                                         ; $4a3d: $3c
    inc [hl]                                      ; $4a3e: $34
    inc a                                         ; $4a3f: $3c
    dec b                                         ; $4a40: $05
    inc bc                                        ; $4a41: $03
    rlca                                          ; $4a42: $07
    ld [bc], a                                    ; $4a43: $02
    ld [bc], a                                    ; $4a44: $02
    ld a, [de]                                    ; $4a45: $1a
    nop                                           ; $4a46: $00
    rst $38                                       ; $4a47: $ff
    rlca                                          ; $4a48: $07
    ld bc, $0bf8                                  ; $4a49: $01 $f8 $0b
    ldh a, [$0d]                                  ; $4a4c: $f0 $0d
    rst $38                                       ; $4a4e: $ff
    di                                            ; $4a4f: $f3
    add [hl]                                      ; $4a50: $86
    nop                                           ; $4a51: $00
    ld [bc], a                                    ; $4a52: $02
    rlca                                          ; $4a53: $07
    add hl, bc                                    ; $4a54: $09
    nop                                           ; $4a55: $00
    ld [bc], a                                    ; $4a56: $02
    ld a, [de]                                    ; $4a57: $1a
    nop                                           ; $4a58: $00
    rst $38                                       ; $4a59: $ff
    rlca                                          ; $4a5a: $07
    ld bc, $0bf8                                  ; $4a5b: $01 $f8 $0b
    ldh a, [$0d]                                  ; $4a5e: $f0 $0d
    rst $38                                       ; $4a60: $ff
    di                                            ; $4a61: $f3
    add [hl]                                      ; $4a62: $86
    ld a, [bc]                                    ; $4a63: $0a
    ld d, $15                                     ; $4a64: $16 $15
    dec de                                        ; $4a66: $1b
    ld a, [bc]                                    ; $4a67: $0a
    ld d, $1a                                     ; $4a68: $16 $1a
    nop                                           ; $4a6a: $00
    rst $38                                       ; $4a6b: $ff
    rlca                                          ; $4a6c: $07
    ld bc, $0bf8                                  ; $4a6d: $01 $f8 $0b
    ldh a, [$0d]                                  ; $4a70: $f0 $0d
    cp $f3                                        ; $4a72: $fe $f3
    adc d                                         ; $4a74: $8a
    ld [hl], h                                    ; $4a75: $74
    adc h                                         ; $4a76: $8c
    ld a, [bc]                                    ; $4a77: $0a
    ld [hl], $15                                  ; $4a78: $36 $15
    dec de                                        ; $4a7a: $1b
    ld a, [de]                                    ; $4a7b: $1a
    ld h, $64                                     ; $4a7c: $26 $64
    sbc h                                         ; $4a7e: $9c
    ld d, $00                                     ; $4a7f: $16 $00
    rst $38                                       ; $4a81: $ff
    add hl, bc                                    ; $4a82: $09
    ld [bc], a                                    ; $4a83: $02
    ld hl, sp+$0b                                 ; $4a84: $f8 $0b
    ldh a, [$0d]                                  ; $4a86: $f0 $0d
    db $fd                                        ; $4a88: $fd
    pop af                                        ; $4a89: $f1
    db $fd                                        ; $4a8a: $fd
    di                                            ; $4a8b: $f3
    adc [hl]                                      ; $4a8c: $8e
    nop                                           ; $4a8d: $00
    jr c, @+$7c                                   ; $4a8e: $38 $7a

    add [hl]                                      ; $4a90: $86
    ld bc, $063b                                  ; $4a91: $01 $3b $06
    add hl, bc                                    ; $4a94: $09
    ld bc, $7a3b                                  ; $4a95: $01 $3b $7a
    add [hl]                                      ; $4a98: $86
    nop                                           ; $4a99: $00
    jr c, jr_0f4_4ab2                             ; $4a9a: $38 $16

    nop                                           ; $4a9c: $00
    ld [bc], a                                    ; $4a9d: $02
    ld [bc], a                                    ; $4a9e: $02
    add d                                         ; $4a9f: $82
    ld bc, $0203                                  ; $4aa0: $01 $03 $02
    ld [bc], a                                    ; $4aa3: $02
    ld d, $00                                     ; $4aa4: $16 $00
    rst $38                                       ; $4aa6: $ff
    add hl, bc                                    ; $4aa7: $09
    ld [bc], a                                    ; $4aa8: $02
    ld hl, sp+$0b                                 ; $4aa9: $f8 $0b
    ldh a, [$0d]                                  ; $4aab: $f0 $0d
    db $fc                                        ; $4aad: $fc
    rst $28                                       ; $4aae: $ef
    db $fc                                        ; $4aaf: $fc
    di                                            ; $4ab0: $f3
    sub d                                         ; $4ab1: $92

jr_0f4_4ab2:
    inc b                                         ; $4ab2: $04
    inc a                                         ; $4ab3: $3c
    ld a, d                                       ; $4ab4: $7a
    add [hl]                                      ; $4ab5: $86
    nop                                           ; $4ab6: $00
    inc a                                         ; $4ab7: $3c
    nop                                           ; $4ab8: $00
    inc bc                                        ; $4ab9: $03
    rlca                                          ; $4aba: $07
    ld [$0300], sp                                ; $4abb: $08 $00 $03
    nop                                           ; $4abe: $00
    inc a                                         ; $4abf: $3c
    ld a, d                                       ; $4ac0: $7a
    add [hl]                                      ; $4ac1: $86
    inc b                                         ; $4ac2: $04
    inc a                                         ; $4ac3: $3c
    inc d                                         ; $4ac4: $14
    nop                                           ; $4ac5: $00
    add [hl]                                      ; $4ac6: $86
    ld b, $0e                                     ; $4ac7: $06 $0e
    add hl, bc                                    ; $4ac9: $09
    rlca                                          ; $4aca: $07
    ld b, $0e                                     ; $4acb: $06 $0e
    inc d                                         ; $4acd: $14
    nop                                           ; $4ace: $00
    rst $38                                       ; $4acf: $ff
    add hl, bc                                    ; $4ad0: $09
    ld [bc], a                                    ; $4ad1: $02
    ld hl, sp+$0b                                 ; $4ad2: $f8 $0b
    ldh a, [$0d]                                  ; $4ad4: $f0 $0d
    ei                                            ; $4ad6: $fb
    xor $fb                                       ; $4ad7: $ee $fb
    ld a, [c]                                     ; $4ad9: $f2
    add [hl]                                      ; $4ada: $86
    inc c                                         ; $4adb: $0c
    inc a                                         ; $4adc: $3c
    ld [hl], d                                    ; $4add: $72
    adc [hl]                                      ; $4ade: $8e
    inc c                                         ; $4adf: $0c
    inc a                                         ; $4ae0: $3c
    inc bc                                        ; $4ae1: $03
    nop                                           ; $4ae2: $00
    add l                                         ; $4ae3: $85
    inc bc                                        ; $4ae4: $03
    rlca                                          ; $4ae5: $07
    ld [$0300], sp                                ; $4ae6: $08 $00 $03
    ld [bc], a                                    ; $4ae9: $02
    nop                                           ; $4aea: $00
    add [hl]                                      ; $4aeb: $86
    inc c                                         ; $4aec: $0c
    inc a                                         ; $4aed: $3c
    ld [hl], d                                    ; $4aee: $72
    adc [hl]                                      ; $4aef: $8e
    inc c                                         ; $4af0: $0c
    inc a                                         ; $4af1: $3c
    ld [de], a                                    ; $4af2: $12
    nop                                           ; $4af3: $00
    add [hl]                                      ; $4af4: $86
    ld b, $0e                                     ; $4af5: $06 $0e
    add hl, bc                                    ; $4af7: $09
    rlca                                          ; $4af8: $07
    ld b, $0e                                     ; $4af9: $06 $0e
    ld [de], a                                    ; $4afb: $12
    nop                                           ; $4afc: $00
    rst $38                                       ; $4afd: $ff
    add hl, bc                                    ; $4afe: $09
    ld [bc], a                                    ; $4aff: $02
    ld hl, sp+$0b                                 ; $4b00: $f8 $0b
    ldh a, [$0d]                                  ; $4b02: $f0 $0d
    ld a, [$faec]                                 ; $4b04: $fa $ec $fa
    pop af                                        ; $4b07: $f1
    add [hl]                                      ; $4b08: $86
    ld b, $3e                                     ; $4b09: $06 $3e
    ld a, c                                       ; $4b0b: $79
    add a                                         ; $4b0c: $87
    ld b, $3e                                     ; $4b0d: $06 $3e
    dec b                                         ; $4b0f: $05
    nop                                           ; $4b10: $00
    add l                                         ; $4b11: $85
    ld bc, $0403                                  ; $4b12: $01 $03 $04
    nop                                           ; $4b15: $00
    ld bc, $0004                                  ; $4b16: $01 $04 $00
    add [hl]                                      ; $4b19: $86
    ld b, $3e                                     ; $4b1a: $06 $3e
    ld a, c                                       ; $4b1c: $79
    add a                                         ; $4b1d: $87
    ld b, $3e                                     ; $4b1e: $06 $3e
    stop                                          ; $4b20: $10 $00
    add [hl]                                      ; $4b22: $86
    ld b, $1e                                     ; $4b23: $06 $1e
    add hl, de                                    ; $4b25: $19
    rlca                                          ; $4b26: $07
    ld b, $1e                                     ; $4b27: $06 $1e
    stop                                          ; $4b29: $10 $00
    rst $38                                       ; $4b2b: $ff
    add hl, bc                                    ; $4b2c: $09
    ld [bc], a                                    ; $4b2d: $02
    ld hl, sp+$0b                                 ; $4b2e: $f8 $0b
    ldh a, [$0d]                                  ; $4b30: $f0 $0d
    ld a, [$faeb]                                 ; $4b32: $fa $eb $fa
    db $ed                                        ; $4b35: $ed
    add [hl]                                      ; $4b36: $86
    ld [bc], a                                    ; $4b37: $02
    ld [hl-], a                                   ; $4b38: $32
    ld a, c                                       ; $4b39: $79
    add e                                         ; $4b3a: $83
    ld [bc], a                                    ; $4b3b: $02
    ld [hl-], a                                   ; $4b3c: $32
    dec b                                         ; $4b3d: $05
    nop                                           ; $4b3e: $00
    add l                                         ; $4b3f: $85
    ld b, $0e                                     ; $4b40: $06 $0e
    stop                                          ; $4b42: $10 $00
    ld b, $04                                     ; $4b44: $06 $04
    nop                                           ; $4b46: $00
    add [hl]                                      ; $4b47: $86
    ld [bc], a                                    ; $4b48: $02
    ld [hl-], a                                   ; $4b49: $32
    ld a, c                                       ; $4b4a: $79
    add e                                         ; $4b4b: $83
    ld [bc], a                                    ; $4b4c: $02
    ld [hl-], a                                   ; $4b4d: $32
    stop                                          ; $4b4e: $10 $00
    ld [bc], a                                    ; $4b50: $02
    ld [bc], a                                    ; $4b51: $02
    add d                                         ; $4b52: $82
    ld bc, $0203                                  ; $4b53: $01 $03 $02
    ld [bc], a                                    ; $4b56: $02
    stop                                          ; $4b57: $10 $00
    rst $38                                       ; $4b59: $ff
    rlca                                          ; $4b5a: $07
    ld bc, $0bf8                                  ; $4b5b: $01 $f8 $0b
    ldh a, [$0d]                                  ; $4b5e: $f0 $0d
    ld a, [$86ea]                                 ; $4b60: $fa $ea $86
    nop                                           ; $4b63: $00
    jr nc, @+$72                                  ; $4b64: $30 $70

    adc b                                         ; $4b66: $88
    nop                                           ; $4b67: $00
    jr nc, @+$07                                  ; $4b68: $30 $05

    nop                                           ; $4b6a: $00
    add l                                         ; $4b6b: $85
    ld b, $0e                                     ; $4b6c: $06 $0e
    ld de, $0600                                  ; $4b6e: $11 $00 $06
    dec b                                         ; $4b71: $05
    nop                                           ; $4b72: $00
    add l                                         ; $4b73: $85
    jr nc, jr_0f4_4be6                            ; $4b74: $30 $70

    adc b                                         ; $4b76: $88
    nop                                           ; $4b77: $00
    jr nc, jr_0f4_4b80                            ; $4b78: $30 $06

    nop                                           ; $4b7a: $00
    rst $38                                       ; $4b7b: $ff
    dec h                                         ; $4b7c: $25
    db $10                                        ; $4b7d: $10
    ld hl, sp+$0b                                 ; $4b7e: $f8 $0b

jr_0f4_4b80:
    ldh a, [$0d]                                  ; $4b80: $f0 $0d
    or e                                          ; $4b82: $b3
    push af                                       ; $4b83: $f5
    xor l                                         ; $4b84: $ad
    db $fd                                        ; $4b85: $fd
    xor l                                         ; $4b86: $ad
    nop                                           ; $4b87: $00
    cp l                                          ; $4b88: $bd
    rst $28                                       ; $4b89: $ef
    cp l                                          ; $4b8a: $bd
    rst $30                                       ; $4b8b: $f7
    cp l                                          ; $4b8c: $bd
    ld hl, sp-$33                                 ; $4b8d: $f8 $cd
    pop af                                        ; $4b8f: $f1
    call $d7f9                                    ; $4b90: $cd $f9 $d7
    rst $38                                       ; $4b93: $ff
    db $dd                                        ; $4b94: $dd
    ei                                            ; $4b95: $fb
    rst $20                                       ; $4b96: $e7
    nop                                           ; $4b97: $00
    db $ed                                        ; $4b98: $ed
    ld a, [$fff7]                                 ; $4b99: $fa $f7 $ff
    db $fd                                        ; $4b9c: $fd
    ei                                            ; $4b9d: $fb
    rlca                                          ; $4b9e: $07
    rst $38                                       ; $4b9f: $ff
    dec c                                         ; $4ba0: $0d
    rst $30                                       ; $4ba1: $f7
    inc b                                         ; $4ba2: $04
    ld bc, $0302                                  ; $4ba3: $01 $02 $03
    ld [bc], a                                    ; $4ba6: $02
    rlca                                          ; $4ba7: $07
    ld [bc], a                                    ; $4ba8: $02
    rrca                                          ; $4ba9: $0f
    sub [hl]                                      ; $4baa: $96
    dec e                                         ; $4bab: $1d
    rra                                           ; $4bac: $1f
    jr c, jr_0f4_4bee                             ; $4bad: $38 $3f

    ld a, [hl]                                    ; $4baf: $7e
    ld a, a                                       ; $4bb0: $7f
    ei                                            ; $4bb1: $fb
    db $fc                                        ; $4bb2: $fc
    db $e3                                        ; $4bb3: $e3
    db $fd                                        ; $4bb4: $fd
    push af                                       ; $4bb5: $f5
    ei                                            ; $4bb6: $fb
    adc [hl]                                      ; $4bb7: $8e
    pop af                                        ; $4bb8: $f1
    rst $10                                       ; $4bb9: $d7
    rst $38                                       ; $4bba: $ff
    adc l                                         ; $4bbb: $8d
    rst $30                                       ; $4bbc: $f7
    db $e3                                        ; $4bbd: $e3
    rst $38                                       ; $4bbe: $ff
    ccf                                           ; $4bbf: $3f
    rst $00                                       ; $4bc0: $c7
    ld [bc], a                                    ; $4bc1: $02
    ld [$0502], sp                                ; $4bc2: $08 $02 $05
    ld [bc], a                                    ; $4bc5: $02
    ld a, [bc]                                    ; $4bc6: $0a
    ld [bc], a                                    ; $4bc7: $02
    scf                                           ; $4bc8: $37
    ld [bc], a                                    ; $4bc9: $02
    dec a                                         ; $4bca: $3d
    sub h                                         ; $4bcb: $94
    ld e, d                                       ; $4bcc: $5a
    ld e, a                                       ; $4bcd: $5f
    db $eb                                        ; $4bce: $eb
    db $fd                                        ; $4bcf: $fd
    ld h, [hl]                                    ; $4bd0: $66
    ld a, d                                       ; $4bd1: $7a
    xor l                                         ; $4bd2: $ad
    rst $38                                       ; $4bd3: $ff
    sub [hl]                                      ; $4bd4: $96
    xor $3b                                       ; $4bd5: $ee $3b
    bit 5, h                                      ; $4bd7: $cb $6c
    cp h                                          ; $4bd9: $bc
    ld hl, sp+$18                                 ; $4bda: $f8 $18
    ld a, b                                       ; $4bdc: $78
    ld hl, sp-$4e                                 ; $4bdd: $f8 $b2
    ld [hl], d                                    ; $4bdf: $72
    ld [bc], a                                    ; $4be0: $02
    ldh a, [rSC]                                  ; $4be1: $f0 $02
    inc b                                         ; $4be3: $04
    ld [bc], a                                    ; $4be4: $02
    ld [bc], a                                    ; $4be5: $02

jr_0f4_4be6:
    ld [bc], a                                    ; $4be6: $02
    ld b, $02                                     ; $4be7: $06 $02
    dec b                                         ; $4be9: $05
    ld [bc], a                                    ; $4bea: $02
    inc b                                         ; $4beb: $04
    ld [bc], a                                    ; $4bec: $02
    ld [bc], a                                    ; $4bed: $02

jr_0f4_4bee:
    inc b                                         ; $4bee: $04
    inc b                                         ; $4bef: $04
    ld [bc], a                                    ; $4bf0: $02
    nop                                           ; $4bf1: $00
    ld [bc], a                                    ; $4bf2: $02
    inc b                                         ; $4bf3: $04
    inc c                                         ; $4bf4: $0c
    nop                                           ; $4bf5: $00

jr_0f4_4bf6:
    inc b                                         ; $4bf6: $04
    inc b                                         ; $4bf7: $04
    ld b, $0c                                     ; $4bf8: $06 $0c
    ld [bc], a                                    ; $4bfa: $02
    inc e                                         ; $4bfb: $1c
    inc bc                                        ; $4bfc: $03
    rra                                           ; $4bfd: $1f
    adc b                                         ; $4bfe: $88
    ld e, $38                                     ; $4bff: $1e $38
    ccf                                           ; $4c01: $3f
    dec a                                         ; $4c02: $3d
    ld a, $3c                                     ; $4c03: $3e $3c
    ccf                                           ; $4c05: $3f
    dec sp                                        ; $4c06: $3b
    ld [bc], a                                    ; $4c07: $02
    inc a                                         ; $4c08: $3c
    inc bc                                        ; $4c09: $03
    ccf                                           ; $4c0a: $3f
    add h                                         ; $4c0b: $84
    or b                                          ; $4c0c: $b0
    cp a                                          ; $4c0d: $bf
    dec a                                         ; $4c0e: $3d
    ld a, $06                                     ; $4c0f: $3e $06

jr_0f4_4c11:
    inc bc                                        ; $4c11: $03

jr_0f4_4c12:
    inc b                                         ; $4c12: $04
    ld [bc], a                                    ; $4c13: $02
    ld [bc], a                                    ; $4c14: $02
    nop                                           ; $4c15: $00
    sub h                                         ; $4c16: $94
    inc e                                         ; $4c17: $1c

jr_0f4_4c18:
    db $fc                                        ; $4c18: $fc
    add sp, $38                                   ; $4c19: $e8 $38
    ld a, b                                       ; $4c1b: $78
    ld hl, sp-$28                                 ; $4c1c: $f8 $d8
    jr c, jr_0f4_4c18                             ; $4c1e: $38 $f8

    jr c, jr_0f4_4c12                             ; $4c20: $38 $f0

jr_0f4_4c22:
    ld [hl], b                                    ; $4c22: $70
    or b                                          ; $4c23: $b0
    ld [hl], b                                    ; $4c24: $70
    ret nc                                        ; $4c25: $d0

    jr nc, @-$4e                                  ; $4c26: $30 $b0

    ld [hl], b                                    ; $4c28: $70
    ret nc                                        ; $4c29: $d0

    jr nc, @+$04                                  ; $4c2a: $30 $02

    ld bc, $001e                                  ; $4c2c: $01 $1e $00
    adc l                                         ; $4c2f: $8d
    ld a, [$e7fd]                                 ; $4c30: $fa $fd $e7
    ld hl, sp+$79                                 ; $4c33: $f8 $79
    ld a, [hl]                                    ; $4c35: $7e
    ld [hl], e                                    ; $4c36: $73
    ld a, h                                       ; $4c37: $7c
    ld a, c                                       ; $4c38: $79
    ld a, [hl]                                    ; $4c39: $7e
    ld a, h                                       ; $4c3a: $7c
    ld a, a                                       ; $4c3b: $7f
    add hl, sp                                    ; $4c3c: $39
    ld [bc], a                                    ; $4c3d: $02
    ld a, $81                                     ; $4c3e: $3e $81
    ccf                                           ; $4c40: $3f
    ld [bc], a                                    ; $4c41: $02
    rra                                           ; $4c42: $1f
    ld [bc], a                                    ; $4c43: $02
    rrca                                          ; $4c44: $0f
    ld [bc], a                                    ; $4c45: $02
    rlca                                          ; $4c46: $07

jr_0f4_4c47:
    ld [bc], a                                    ; $4c47: $02
    inc bc                                        ; $4c48: $03
    ld [bc], a                                    ; $4c49: $02
    ld bc, $0006                                  ; $4c4a: $01 $06 $00
    ld [bc], a                                    ; $4c4d: $02
    ldh [$81], a                                  ; $4c4e: $e0 $81
    ld h, b                                       ; $4c50: $60
    inc bc                                        ; $4c51: $03
    ldh [$89], a                                  ; $4c52: $e0 $89
    or b                                          ; $4c54: $b0
    ld [hl], b                                    ; $4c55: $70
    or b                                          ; $4c56: $b0
    ld [hl], b                                    ; $4c57: $70
    ret c                                         ; $4c58: $d8

    jr c, jr_0f4_4c47                             ; $4c59: $38 $ec

    inc e                                         ; $4c5b: $1c
    ld [hl], $02                                  ; $4c5c: $36 $02
    adc $8f                                       ; $4c5e: $ce $8f
    or $3b                                        ; $4c60: $f6 $3b
    rst $00                                       ; $4c62: $c7
    rst $18                                       ; $4c63: $df
    db $e3                                        ; $4c64: $e3
    rst $20                                       ; $4c65: $e7
    rst $38                                       ; $4c66: $ff
    rst $08                                       ; $4c67: $cf
    ldh a, [$f8]                                  ; $4c68: $f0 $f8
    rst $38                                       ; $4c6a: $ff
    ld a, a                                       ; $4c6b: $7f
    ld a, h                                       ; $4c6c: $7c
    ld [hl], b                                    ; $4c6d: $70
    ld a, a                                       ; $4c6e: $7f
    ld [bc], a                                    ; $4c6f: $02
    jr nz, jr_0f4_4c74                            ; $4c70: $20 $02

    jr nc, jr_0f4_4bf6                            ; $4c72: $30 $82

jr_0f4_4c74:
    db $10                                        ; $4c74: $10
    jr nc, jr_0f4_4c79                            ; $4c75: $30 $02

    jr c, jr_0f4_4c11                             ; $4c77: $38 $98

jr_0f4_4c79:
    jr z, @+$1a                                   ; $4c79: $28 $18

    inc e                                         ; $4c7b: $1c
    inc a                                         ; $4c7c: $3c
    and h                                         ; $4c7d: $a4
    call c, $dc2c                                 ; $4c7e: $dc $2c $dc
    cp [hl]                                       ; $4c81: $be
    adc $12                                       ; $4c82: $ce $12
    xor $de                                       ; $4c84: $ee $de
    and $9b                                       ; $4c86: $e6 $9b
    rst $20                                       ; $4c88: $e7
    set 6, a                                      ; $4c89: $cb $f7
    jp hl                                         ; $4c8b: $e9


    rst $30                                       ; $4c8c: $f7
    db $dd                                        ; $4c8d: $dd
    db $e3                                        ; $4c8e: $e3
    sbc c                                         ; $4c8f: $99
    rst $20                                       ; $4c90: $e7
    ld [bc], a                                    ; $4c91: $02
    ldh a, [$82]                                  ; $4c92: $f0 $82
    ldh [$f0], a                                  ; $4c94: $e0 $f0
    ld b, $70                                     ; $4c96: $06 $70
    ld b, $30                                     ; $4c98: $06 $30
    ld [bc], a                                    ; $4c9a: $02
    or b                                          ; $4c9b: $b0
    ld [bc], a                                    ; $4c9c: $02
    jr nc, jr_0f4_4c22                            ; $4c9d: $30 $83

    ld e, $1f                                     ; $4c9f: $1e $1f
    ld e, $03                                     ; $4ca1: $1e $03
    rra                                           ; $4ca3: $1f
    add c                                         ; $4ca4: $81
    jr @+$05                                      ; $4ca5: $18 $03

    rra                                           ; $4ca7: $1f
    and d                                         ; $4ca8: $a2
    ld e, $1f                                     ; $4ca9: $1e $1f
    rla                                           ; $4cab: $17
    rrca                                          ; $4cac: $0f
    dec de                                        ; $4cad: $1b
    rlca                                          ; $4cae: $07
    inc bc                                        ; $4caf: $03
    rra                                           ; $4cb0: $1f
    add hl, de                                    ; $4cb1: $19
    rlca                                          ; $4cb2: $07
    dec bc                                        ; $4cb3: $0b

Call_0f4_4cb4:
    rla                                           ; $4cb4: $17
    dec bc                                        ; $4cb5: $0b
    rla                                           ; $4cb6: $17
    db $eb                                        ; $4cb7: $eb
    rst $30                                       ; $4cb8: $f7
    sbc l                                         ; $4cb9: $9d
    db $e3                                        ; $4cba: $e3
    db $db                                        ; $4cbb: $db
    rst $20                                       ; $4cbc: $e7
    set 6, a                                      ; $4cbd: $cb $f7
    db $ed                                        ; $4cbf: $ed
    di                                            ; $4cc0: $f3
    sbc e                                         ; $4cc1: $9b
    rst $20                                       ; $4cc2: $e7
    db $e3                                        ; $4cc3: $e3
    rst $38                                       ; $4cc4: $ff
    sub a                                         ; $4cc5: $97
    rst $28                                       ; $4cc6: $ef
    sub e                                         ; $4cc7: $93
    rst $28                                       ; $4cc8: $ef
    ld a, [hl-]                                   ; $4cc9: $3a
    add $12                                       ; $4cca: $c6 $12
    inc c                                         ; $4ccc: $0c
    ld [bc], a                                    ; $4ccd: $02
    inc e                                         ; $4cce: $1c
    sub l                                         ; $4ccf: $95
    ld e, $1f                                     ; $4cd0: $1e $1f
    jr @+$21                                      ; $4cd2: $18 $1f

    inc a                                         ; $4cd4: $3c
    ccf                                           ; $4cd5: $3f
    add hl, sp                                    ; $4cd6: $39
    ld a, $3d                                     ; $4cd7: $3e $3d
    ld a, $bb                                     ; $4cd9: $3e $bb
    cp h                                          ; $4cdb: $bc
    dec bc                                        ; $4cdc: $0b
    rla                                           ; $4cdd: $17
    dec de                                        ; $4cde: $1b
    rlca                                          ; $4cdf: $07
    ld d, $0e                                     ; $4ce0: $16 $0e
    ld a, [de]                                    ; $4ce2: $1a
    ld b, $13                                     ; $4ce3: $06 $13
    ld [bc], a                                    ; $4ce5: $02
    rrca                                          ; $4ce6: $0f
    sub [hl]                                      ; $4ce7: $96
    rra                                           ; $4ce8: $1f
    ld [hl], $ce                                  ; $4ce9: $36 $ce
    ld a, [hl-]                                   ; $4ceb: $3a
    add $e6                                       ; $4cec: $c6 $e6
    sbc $3e                                       ; $4cee: $de $3e
    add $f6                                       ; $4cf0: $c6 $f6
    adc $9a                                       ; $4cf2: $ce $9a
    and $56                                       ; $4cf4: $e6 $56
    xor $ae                                       ; $4cf6: $ee $ae
    sbc $76                                       ; $4cf8: $de $76
    adc [hl]                                      ; $4cfa: $8e
    cp d                                          ; $4cfb: $ba
    add $60                                       ; $4cfc: $c6 $60
    rrca                                          ; $4cfe: $0f
    ld [hl], b                                    ; $4cff: $70
    add c                                         ; $4d00: $81
    ld h, b                                       ; $4d01: $60
    inc bc                                        ; $4d02: $03
    ld [hl], b                                    ; $4d03: $70
    add [hl]                                      ; $4d04: $86
    or $f9                                        ; $4d05: $f6 $f9
    ld b, e                                       ; $4d07: $43
    ld a, l                                       ; $4d08: $7d
    push de                                       ; $4d09: $d5
    rst $38                                       ; $4d0a: $ff
    ld [bc], a                                    ; $4d0b: $02
    xor a                                         ; $4d0c: $af
    adc [hl]                                      ; $4d0d: $8e
    ld d, d                                       ; $4d0e: $52
    ld e, d                                       ; $4d0f: $5a
    ld c, [hl]                                    ; $4d10: $4e
    ld c, a                                       ; $4d11: $4f
    ld b, $0e                                     ; $4d12: $06 $0e
    inc bc                                        ; $4d14: $03
    rrca                                          ; $4d15: $0f
    inc c                                         ; $4d16: $0c
    ld c, $03                                     ; $4d17: $0e $03
    rlca                                          ; $4d19: $07
    inc c                                         ; $4d1a: $0c
    ld c, $02                                     ; $4d1b: $0e $02
    ld a, [bc]                                    ; $4d1d: $0a
    ld [bc], a                                    ; $4d1e: $02
    sbc h                                         ; $4d1f: $9c
    ld [de], a                                    ; $4d20: $12
    nop                                           ; $4d21: $00
    ld [bc], a                                    ; $4d22: $02
    ld bc, $001e                                  ; $4d23: $01 $1e $00
    rst $38                                       ; $4d26: $ff
    dec h                                         ; $4d27: $25
    db $10                                        ; $4d28: $10
    ld hl, sp+$0b                                 ; $4d29: $f8 $0b
    ldh a, [$0d]                                  ; $4d2b: $f0 $0d
    or l                                          ; $4d2d: $b5
    db $f4                                        ; $4d2e: $f4
    xor l                                         ; $4d2f: $ad
    db $fc                                        ; $4d30: $fc
    xor [hl]                                      ; $4d31: $ae
    nop                                           ; $4d32: $00
    cp a                                          ; $4d33: $bf
    xor $bd                                       ; $4d34: $ee $bd
    or $bd                                        ; $4d36: $f6 $bd
    ld hl, sp-$33                                 ; $4d38: $f8 $cd
    ld a, [c]                                     ; $4d3a: $f2
    call $d8fa                                    ; $4d3b: $cd $fa $d8
    nop                                           ; $4d3e: $00
    db $dd                                        ; $4d3f: $dd
    ei                                            ; $4d40: $fb
    add sp, $00                                   ; $4d41: $e8 $00
    db $ed                                        ; $4d43: $ed
    db $fc                                        ; $4d44: $fc
    ld hl, sp-$01                                 ; $4d45: $f8 $ff
    db $fd                                        ; $4d47: $fd
    db $fc                                        ; $4d48: $fc
    ld [$0dff], sp                                ; $4d49: $08 $ff $0d
    rst $30                                       ; $4d4c: $f7
    ld [bc], a                                    ; $4d4d: $02
    ld bc, $0302                                  ; $4d4e: $01 $02 $03
    sub a                                         ; $4d51: $97
    ld b, $07                                     ; $4d52: $06 $07
    ld c, $0f                                     ; $4d54: $0e $0f
    dec d                                         ; $4d56: $15
    ld e, $bc                                     ; $4d57: $1e $bc
    cp a                                          ; $4d59: $bf
    ld [hl], a                                    ; $4d5a: $77
    ld a, b                                       ; $4d5b: $78
    ld b, a                                       ; $4d5c: $47
    ld a, e                                       ; $4d5d: $7b
    db $eb                                        ; $4d5e: $eb
    rst $30                                       ; $4d5f: $f7
    db $dd                                        ; $4d60: $dd
    db $e3                                        ; $4d61: $e3
    xor a                                         ; $4d62: $af
    rst $38                                       ; $4d63: $ff
    ld e, c                                       ; $4d64: $59
    rst $28                                       ; $4d65: $ef
    rst $00                                       ; $4d66: $c7
    rst $38                                       ; $4d67: $ff
    ld a, a                                       ; $4d68: $7f
    ld [bc], a                                    ; $4d69: $02
    adc a                                         ; $4d6a: $8f
    add e                                         ; $4d6b: $83
    rst $38                                       ; $4d6c: $ff
    rst $30                                       ; $4d6d: $f7
    rra                                           ; $4d6e: $1f
    ld [bc], a                                    ; $4d6f: $02
    ld bc, $0402                                  ; $4d70: $01 $02 $04
    ld [bc], a                                    ; $4d73: $02
    ld a, [bc]                                    ; $4d74: $0a
    ld [bc], a                                    ; $4d75: $02
    dec de                                        ; $4d76: $1b
    ld [bc], a                                    ; $4d77: $02
    ld e, $90                                     ; $4d78: $1e $90
    dec h                                         ; $4d7a: $25
    cpl                                           ; $4d7b: $2f
    ld [hl], a                                    ; $4d7c: $77
    ld a, e                                       ; $4d7d: $7b
    adc a                                         ; $4d7e: $8f
    or a                                          ; $4d7f: $b7
    db $db                                        ; $4d80: $db
    rst $38                                       ; $4d81: $ff

Call_0f4_4d82:
    cpl                                           ; $4d82: $2f
    rst $18                                       ; $4d83: $df
    ld a, l                                       ; $4d84: $7d
    sbc l                                         ; $4d85: $9d
    sbc $7e                                       ; $4d86: $de $7e
    call z, $023c                                 ; $4d88: $cc $3c $02
    db $fc                                        ; $4d8b: $fc
    add c                                         ; $4d8c: $81
    ld a, b                                       ; $4d8d: $78
    inc bc                                        ; $4d8e: $03
    ld hl, sp+$02                                 ; $4d8f: $f8 $02
    ld a, [bc]                                    ; $4d91: $0a
    ld [bc], a                                    ; $4d92: $02
    ld c, $02                                     ; $4d93: $0e $02
    inc c                                         ; $4d95: $0c
    ld [bc], a                                    ; $4d96: $02
    dec c                                         ; $4d97: $0d
    ld [bc], a                                    ; $4d98: $02
    ld a, [bc]                                    ; $4d99: $0a
    ld [bc], a                                    ; $4d9a: $02
    inc c                                         ; $4d9b: $0c
    ld [bc], a                                    ; $4d9c: $02
    ld [bc], a                                    ; $4d9d: $02
    ld [bc], a                                    ; $4d9e: $02
    ld [$0402], sp                                ; $4d9f: $08 $02 $04
    ld [bc], a                                    ; $4da2: $02
    ld [$000c], sp                                ; $4da3: $08 $0c $00
    ld b, $04                                     ; $4da6: $06 $04
    ld b, $0c                                     ; $4da8: $06 $0c
    sub h                                         ; $4daa: $94
    jr jr_0f4_4dcc                                ; $4dab: $18 $1f

    dec de                                        ; $4dad: $1b
    inc e                                         ; $4dae: $1c
    add hl, de                                    ; $4daf: $19
    ld e, $17                                     ; $4db0: $1e $17
    jr jr_0f4_4dcd                                ; $4db2: $18 $19

    ld e, $9f                                     ; $4db4: $1e $9f
    sbc [hl]                                      ; $4db6: $9e
    add hl, de                                    ; $4db7: $19
    ld e, $1b                                     ; $4db8: $1e $1b
    inc e                                         ; $4dba: $1c
    dec e                                         ; $4dbb: $1d
    ld e, $1f                                     ; $4dbc: $1e $1f
    inc e                                         ; $4dbe: $1c
    ld a, [bc]                                    ; $4dbf: $0a
    inc bc                                        ; $4dc0: $03
    inc b                                         ; $4dc1: $04
    ld [bc], a                                    ; $4dc2: $02
    ld [bc], a                                    ; $4dc3: $02
    nop                                           ; $4dc4: $00
    ld [bc], a                                    ; $4dc5: $02
    db $fc                                        ; $4dc6: $fc
    add h                                         ; $4dc7: $84
    cp h                                          ; $4dc8: $bc
    ld a, h                                       ; $4dc9: $7c
    db $fc                                        ; $4dca: $fc
    ld a, h                                       ; $4dcb: $7c

jr_0f4_4dcc:
    ld [bc], a                                    ; $4dcc: $02

jr_0f4_4dcd:
    ld hl, sp-$7d                                 ; $4dcd: $f8 $83
    ld a, b                                       ; $4dcf: $78
    ld hl, sp-$48                                 ; $4dd0: $f8 $b8
    ld [bc], a                                    ; $4dd2: $02
    ld a, b                                       ; $4dd3: $78
    add e                                         ; $4dd4: $83
    ld hl, sp-$44                                 ; $4dd5: $f8 $bc
    ld a, h                                       ; $4dd7: $7c
    ld [bc], a                                    ; $4dd8: $02
    inc bc                                        ; $4dd9: $03
    inc b                                         ; $4dda: $04
    ld [bc], a                                    ; $4ddb: $02
    ld a, [de]                                    ; $4ddc: $1a
    nop                                           ; $4ddd: $00
    sub [hl]                                      ; $4dde: $96
    rlca                                          ; $4ddf: $07
    rrca                                          ; $4de0: $0f
    add hl, bc                                    ; $4de1: $09
    rlca                                          ; $4de2: $07
    rst $08                                       ; $4de3: $cf
    rst $30                                       ; $4de4: $f7
    db $dd                                        ; $4de5: $dd
    db $e3                                        ; $4de6: $e3
    call $e6f3                                    ; $4de7: $cd $f3 $e6
    ld sp, hl                                     ; $4dea: $f9
    ld c, a                                       ; $4deb: $4f
    ld [hl], b                                    ; $4dec: $70
    ld [hl], c                                    ; $4ded: $71
    ld a, [hl]                                    ; $4dee: $7e
    ld a, $3f                                     ; $4def: $3e $3f
    add hl, de                                    ; $4df1: $19
    ld e, $0e                                     ; $4df2: $1e $0e
    rrca                                          ; $4df4: $0f
    ld [bc], a                                    ; $4df5: $02
    rlca                                          ; $4df6: $07
    ld [bc], a                                    ; $4df7: $02
    inc bc                                        ; $4df8: $03
    ld [bc], a                                    ; $4df9: $02
    ld bc, $0802                                  ; $4dfa: $01 $02 $08
    ld [bc], a                                    ; $4dfd: $02
    nop                                           ; $4dfe: $00

jr_0f4_4dff:
    ld b, $c0                                     ; $4dff: $06 $c0
    inc b                                         ; $4e01: $04
    ldh [rSC], a                                  ; $4e02: $e0 $02
    ldh a, [$83]                                  ; $4e04: $f0 $83
    ld a, b                                       ; $4e06: $78

jr_0f4_4e07:
    ld hl, sp-$44                                 ; $4e07: $f8 $bc
    ld [bc], a                                    ; $4e09: $02
    ld a, h                                       ; $4e0a: $7c
    adc h                                         ; $4e0b: $8c
    cp h                                          ; $4e0c: $bc
    sbc $3e                                       ; $4e0d: $de $3e
    rst $38                                       ; $4e0f: $ff
    rra                                           ; $4e10: $1f
    ccf                                           ; $4e11: $3f
    rst $38                                       ; $4e12: $ff
    ld a, e                                       ; $4e13: $7b
    add a                                         ; $4e14: $87
    rst $00                                       ; $4e15: $c7
    rst $38                                       ; $4e16: $ff
    db $fd                                        ; $4e17: $fd
    ld [bc], a                                    ; $4e18: $02
    db $e3                                        ; $4e19: $e3
    add c                                         ; $4e1a: $81
    rst $38                                       ; $4e1b: $ff

jr_0f4_4e1c:
    inc b                                         ; $4e1c: $04
    jr nz, jr_0f4_4e23                            ; $4e1d: $20 $04

    jr nc, @+$05                                  ; $4e1f: $30 $03

    jr c, @-$64                                   ; $4e21: $38 $9a

jr_0f4_4e23:
    ld hl, sp+$78                                 ; $4e23: $f8 $78
    ld hl, sp-$04                                 ; $4e25: $f8 $fc
    ld a, h                                       ; $4e27: $7c
    sbc h                                         ; $4e28: $9c
    ld a, h                                       ; $4e29: $7c
    db $fc                                        ; $4e2a: $fc
    inc a                                         ; $4e2b: $3c
    sbc $3e                                       ; $4e2c: $de $3e
    ld e, [hl]                                    ; $4e2e: $5e
    cp [hl]                                       ; $4e2f: $be
    ld c, [hl]                                    ; $4e30: $4e
    cp [hl]                                       ; $4e31: $be
    and $1e                                       ; $4e32: $e6 $1e
    adc $3e                                       ; $4e34: $ce $3e
    ld e, a                                       ; $4e36: $5f
    cp a                                          ; $4e37: $bf
    add sp, -$10                                  ; $4e38: $e8 $f0
    ret z                                         ; $4e3a: $c8

    ldh a, [rBCPS]                                ; $4e3b: $f0 $68
    ld [bc], a                                    ; $4e3d: $02
    ld [hl], b                                    ; $4e3e: $70
    add [hl]                                      ; $4e3f: $86
    ld a, b                                       ; $4e40: $78
    ld [hl], b                                    ; $4e41: $70
    ld a, b                                       ; $4e42: $78
    jr nz, @+$3a                                  ; $4e43: $20 $38

    jr nc, @+$05                                  ; $4e45: $30 $03

    jr c, jr_0f4_4dcd                             ; $4e47: $38 $84

    jr nc, jr_0f4_4e83                            ; $4e49: $30 $38

    jr nc, @+$3a                                  ; $4e4b: $30 $38

    ld [bc], a                                    ; $4e4d: $02
    jr @-$7d                                      ; $4e4e: $18 $81

    dec de                                        ; $4e50: $1b
    ld [bc], a                                    ; $4e51: $02
    inc e                                         ; $4e52: $1c
    and a                                         ; $4e53: $a7
    rra                                           ; $4e54: $1f
    inc de                                        ; $4e55: $13
    inc e                                         ; $4e56: $1c
    dec e                                         ; $4e57: $1d
    ld e, $19                                     ; $4e58: $1e $19
    ld e, $0f                                     ; $4e5a: $1e $0f
    rra                                           ; $4e5c: $1f
    rrca                                          ; $4e5d: $0f
    rra                                           ; $4e5e: $1f
    rlca                                          ; $4e5f: $07
    rra                                           ; $4e60: $1f
    rrca                                          ; $4e61: $0f
    rra                                           ; $4e62: $1f
    rrca                                          ; $4e63: $0f
    rra                                           ; $4e64: $1f
    xor a                                         ; $4e65: $af
    rst $18                                       ; $4e66: $df
    ld [hl], e                                    ; $4e67: $73
    adc a                                         ; $4e68: $8f
    ld h, a                                       ; $4e69: $67
    sbc a                                         ; $4e6a: $9f
    cpl                                           ; $4e6b: $2f
    rst $18                                       ; $4e6c: $df
    or a                                          ; $4e6d: $b7
    rst $08                                       ; $4e6e: $cf
    ld l, a                                       ; $4e6f: $6f
    sbc a                                         ; $4e70: $9f
    adc a                                         ; $4e71: $8f
    rst $38                                       ; $4e72: $ff
    ld e, a                                       ; $4e73: $5f
    cp a                                          ; $4e74: $bf
    ld c, a                                       ; $4e75: $4f
    cp a                                          ; $4e76: $bf
    and $3e                                       ; $4e77: $e6 $3e
    ld a, [hl]                                    ; $4e79: $7e
    cp $02                                        ; $4e7a: $fe $02
    jr nc, jr_0f4_4dff                            ; $4e7c: $30 $81

    jr nz, jr_0f4_4e83                            ; $4e7e: $20 $03

    jr nc, jr_0f4_4e84                            ; $4e80: $30 $02

    or b                                          ; $4e82: $b0

jr_0f4_4e83:
    ld [bc], a                                    ; $4e83: $02

jr_0f4_4e84:
    jr nc, jr_0f4_4e07                            ; $4e84: $30 $81

    jr nz, @+$05                                  ; $4e86: $20 $03

    jr nc, jr_0f4_4e1c                            ; $4e88: $30 $92

    jr nz, jr_0f4_4ebc                            ; $4e8a: $20 $30

    jr nz, jr_0f4_4ebe                            ; $4e8c: $20 $30

    ld b, b                                       ; $4e8e: $40
    ld [hl], b                                    ; $4e8f: $70
    ld h, b                                       ; $4e90: $60
    ld [hl], b                                    ; $4e91: $70
    ld c, a                                       ; $4e92: $4f
    ld [hl], e                                    ; $4e93: $73
    set 6, a                                      ; $4e94: $cb $f7
    sbc l                                         ; $4e96: $9d
    db $e3                                        ; $4e97: $e3
    reti                                          ; $4e98: $d9


    rst $20                                       ; $4e99: $e7
    rst $30                                       ; $4e9a: $f7
    rst $28                                       ; $4e9b: $ef
    ld [bc], a                                    ; $4e9c: $02
    rlca                                          ; $4e9d: $07
    ld [$8d06], sp                                ; $4e9e: $08 $06 $8d
    sbc $3e                                       ; $4ea1: $de $3e
    ld h, [hl]                                    ; $4ea3: $66
    sbc [hl]                                      ; $4ea4: $9e
    adc [hl]                                      ; $4ea5: $8e
    ld a, [hl]                                    ; $4ea6: $7e
    cp $1e                                        ; $4ea7: $fe $1e
    sbc $3e                                       ; $4ea9: $de $3e
    ld l, [hl]                                    ; $4eab: $6e
    sbc [hl]                                      ; $4eac: $9e
    ld e, [hl]                                    ; $4ead: $5e
    ld [bc], a                                    ; $4eae: $02
    cp [hl]                                       ; $4eaf: $be
    adc d                                         ; $4eb0: $8a
    ld a, [hl]                                    ; $4eb1: $7e
    sbc $3e                                       ; $4eb2: $de $3e
    xor $1e                                       ; $4eb4: $ee $1e
    sbc [hl]                                      ; $4eb6: $9e
    ld a, [hl]                                    ; $4eb7: $7e
    ret nz                                        ; $4eb8: $c0

    ldh [$c0], a                                  ; $4eb9: $e0 $c0
    inc bc                                        ; $4ebb: $03

jr_0f4_4ebc:
    ldh [$81], a                                  ; $4ebc: $e0 $81

jr_0f4_4ebe:
    add b                                         ; $4ebe: $80
    inc bc                                        ; $4ebf: $03
    ldh [$87], a                                  ; $4ec0: $e0 $87
    ret nz                                        ; $4ec2: $c0

    ldh [$a0], a                                  ; $4ec3: $e0 $a0
    ldh [$c0], a                                  ; $4ec5: $e0 $c0
    ldh [$80], a                                  ; $4ec7: $e0 $80
    inc bc                                        ; $4ec9: $03
    ldh [$8c], a                                  ; $4eca: $e0 $8c
    add b                                         ; $4ecc: $80
    ldh [$c7], a                                  ; $4ecd: $e0 $c7
    rst $38                                       ; $4ecf: $ff
    sbc e                                         ; $4ed0: $9b
    rst $38                                       ; $4ed1: $ff
    ld [c], a                                     ; $4ed2: $e2
    or $a5                                        ; $4ed3: $f6 $a5
    or l                                          ; $4ed5: $b5
    sbc l                                         ; $4ed6: $9d
    rst $18                                       ; $4ed7: $df
    inc b                                         ; $4ed8: $04
    ld b, $84                                     ; $4ed9: $06 $84
    inc bc                                        ; $4edb: $03
    rlca                                          ; $4edc: $07
    ld [bc], a                                    ; $4edd: $02
    ld b, $02                                     ; $4ede: $06 $02
    inc bc                                        ; $4ee0: $03
    ld [bc], a                                    ; $4ee1: $02
    sbc h                                         ; $4ee2: $9c
    inc d                                         ; $4ee3: $14
    nop                                           ; $4ee4: $00
    ld [bc], a                                    ; $4ee5: $02
    inc bc                                        ; $4ee6: $03
    ld e, $00                                     ; $4ee7: $1e $00
    rst $38                                       ; $4ee9: $ff
    ld hl, $f80e                                  ; $4eea: $21 $0e $f8
    dec bc                                        ; $4eed: $0b
    ldh a, [$0d]                                  ; $4eee: $f0 $0d
    xor l                                         ; $4ef0: $ad
    nop                                           ; $4ef1: $00
    or c                                          ; $4ef2: $b1
    ld [bc], a                                    ; $4ef3: $02
    push bc                                       ; $4ef4: $c5
    ld a, [c]                                     ; $4ef5: $f2
    cp l                                          ; $4ef6: $bd
    ld a, [$ffc1]                                 ; $4ef7: $fa $c1 $ff
    push de                                       ; $4efa: $d5
    ld a, [c]                                     ; $4efb: $f2
    call $ddf6                                    ; $4efc: $cd $f6 $dd
    ld a, [$02e1]                                 ; $4eff: $fa $e1 $02
    db $ed                                        ; $4f02: $ed
    db $fd                                        ; $4f03: $fd
    pop af                                        ; $4f04: $f1
    inc bc                                        ; $4f05: $03
    db $fd                                        ; $4f06: $fd
    db $fc                                        ; $4f07: $fc
    ld bc, $0d02                                  ; $4f08: $01 $02 $0d
    ld a, [$a802]                                 ; $4f0b: $fa $02 $a8
    ld [bc], a                                    ; $4f0e: $02
    halt                                          ; $4f0f: $76
    ld [bc], a                                    ; $4f10: $02
    db $dd                                        ; $4f11: $dd
    ld [bc], a                                    ; $4f12: $02
    ld a, [hl]                                    ; $4f13: $7e
    sbc b                                         ; $4f14: $98
    ld [c], a                                     ; $4f15: $e2
    cp $5f                                        ; $4f16: $fe $5f
    ld d, a                                       ; $4f18: $57
    dec hl                                        ; $4f19: $2b
    scf                                           ; $4f1a: $37
    ld a, l                                       ; $4f1b: $7d
    ld [hl], e                                    ; $4f1c: $73
    ld l, l                                       ; $4f1d: $6d
    ld [hl], e                                    ; $4f1e: $73
    jr nc, jr_0f4_4f60                            ; $4f1f: $30 $3f

    ld a, a                                       ; $4f21: $7f
    ld a, c                                       ; $4f22: $79
    ld [hl], d                                    ; $4f23: $72
    ld a, l                                       ; $4f24: $7d
    halt                                          ; $4f25: $76
    ld a, c                                       ; $4f26: $79
    ret                                           ; $4f27: $c9


    rst $38                                       ; $4f28: $ff
    rst $30                                       ; $4f29: $f7
    ld sp, hl                                     ; $4f2a: $f9
    db $ec                                        ; $4f2b: $ec
    di                                            ; $4f2c: $f3
    ld [bc], a                                    ; $4f2d: $02
    ld [bc], a                                    ; $4f2e: $02
    ld [bc], a                                    ; $4f2f: $02
    nop                                           ; $4f30: $00
    ld [bc], a                                    ; $4f31: $02
    ld [bc], a                                    ; $4f32: $02
    ld [bc], a                                    ; $4f33: $02
    ld bc, $0202                                  ; $4f34: $01 $02 $02
    ld [bc], a                                    ; $4f37: $02
    inc bc                                        ; $4f38: $03
    ld [bc], a                                    ; $4f39: $02
    ld [bc], a                                    ; $4f3a: $02
    ld b, $03                                     ; $4f3b: $06 $03
    add c                                         ; $4f3d: $81
    ld bc, $0303                                  ; $4f3e: $01 $03 $03
    adc b                                         ; $4f41: $88
    or $ce                                        ; $4f42: $f6 $ce
    ld l, $de                                     ; $4f44: $2e $de
    or h                                          ; $4f46: $b4
    call z, $9c7c                                 ; $4f47: $cc $7c $9c
    ld [bc], a                                    ; $4f4a: $02
    ld bc, $0302                                  ; $4f4b: $01 $02 $03
    ld [bc], a                                    ; $4f4e: $02
    rlca                                          ; $4f4f: $07
    ld [bc], a                                    ; $4f50: $02
    rrca                                          ; $4f51: $0f
    ld [bc], a                                    ; $4f52: $02
    sbc a                                         ; $4f53: $9f
    sub [hl]                                      ; $4f54: $96
    add hl, de                                    ; $4f55: $19
    ld e, $3e                                     ; $4f56: $1e $3e
    ccf                                           ; $4f58: $3f
    ld a, l                                       ; $4f59: $7d
    ld a, [hl]                                    ; $4f5a: $7e
    ld [hl], l                                    ; $4f5b: $75
    ld a, [hl]                                    ; $4f5c: $7e
    ld a, a                                       ; $4f5d: $7f
    ld a, b                                       ; $4f5e: $78
    di                                            ; $4f5f: $f3

jr_0f4_4f60:
    db $fd                                        ; $4f60: $fd
    ei                                            ; $4f61: $fb
    db $f4                                        ; $4f62: $f4
    rst $20                                       ; $4f63: $e7
    ld sp, hl                                     ; $4f64: $f9
    or $f9                                        ; $4f65: $f6 $f9
    db $fd                                        ; $4f67: $fd
    ei                                            ; $4f68: $fb
    ld a, [$02fd]                                 ; $4f69: $fa $fd $02
    dec bc                                        ; $4f6c: $0b
    inc b                                         ; $4f6d: $04
    rlca                                          ; $4f6e: $07
    add d                                         ; $4f6f: $82
    ld c, $0f                                     ; $4f70: $0e $0f
    ld [bc], a                                    ; $4f72: $02
    rra                                           ; $4f73: $1f
    sbc d                                         ; $4f74: $9a
    dec a                                         ; $4f75: $3d
    ld a, $72                                     ; $4f76: $3e $72
    ld a, a                                       ; $4f78: $7f
    db $fd                                        ; $4f79: $fd
    cp $ee                                        ; $4f7a: $fe $ee
    pop af                                        ; $4f7c: $f1
    ei                                            ; $4f7d: $fb
    rst $30                                       ; $4f7e: $f7
    ld [hl], l                                    ; $4f7f: $75
    adc a                                         ; $4f80: $8f
    or a                                          ; $4f81: $b7
    rst $08                                       ; $4f82: $cf
    adc $3e                                       ; $4f83: $ce $3e
    cp h                                          ; $4f85: $bc
    ld a, h                                       ; $4f86: $7c
    sbc b                                         ; $4f87: $98
    ld a, b                                       ; $4f88: $78
    ldh a, [$30]                                  ; $4f89: $f0 $30
    dec e                                         ; $4f8b: $1d
    inc bc                                        ; $4f8c: $03
    inc de                                        ; $4f8d: $13
    rrca                                          ; $4f8e: $0f
    ld [bc], a                                    ; $4f8f: $02
    ld e, $82                                     ; $4f90: $1e $82
    ld c, $1e                                     ; $4f92: $0e $1e
    ld [bc], a                                    ; $4f94: $02
    inc e                                         ; $4f95: $1c
    ld [bc], a                                    ; $4f96: $02
    jr jr_0f4_4f9b                                ; $4f97: $18 $02

    db $10                                        ; $4f99: $10
    inc c                                         ; $4f9a: $0c

jr_0f4_4f9b:
    nop                                           ; $4f9b: $00
    ld [bc], a                                    ; $4f9c: $02
    add b                                         ; $4f9d: $80
    inc b                                         ; $4f9e: $04
    nop                                           ; $4f9f: $00
    sub b                                         ; $4fa0: $90
    ld [c], a                                     ; $4fa1: $e2

jr_0f4_4fa2:
    db $fd                                        ; $4fa2: $fd
    cp $f9                                        ; $4fa3: $fe $f9
    di                                            ; $4fa5: $f3
    db $fc                                        ; $4fa6: $fc
    and $f9                                       ; $4fa7: $e6 $f9
    ld a, e                                       ; $4fa9: $7b
    ld a, l                                       ; $4faa: $7d
    ld a, d                                       ; $4fab: $7a
    ld a, l                                       ; $4fac: $7d
    ld [hl], c                                    ; $4fad: $71
    ld a, [hl]                                    ; $4fae: $7e
    dec a                                         ; $4faf: $3d
    ld a, $02                                     ; $4fb0: $3e $02
    ccf                                           ; $4fb2: $3f
    add d                                         ; $4fb3: $82
    ld e, $1f                                     ; $4fb4: $1e $1f
    ld [bc], a                                    ; $4fb6: $02
    rrca                                          ; $4fb7: $0f
    ld [bc], a                                    ; $4fb8: $02
    daa                                           ; $4fb9: $27
    ld [bc], a                                    ; $4fba: $02
    inc bc                                        ; $4fbb: $03
    ld [bc], a                                    ; $4fbc: $02
    ld bc, $0004                                  ; $4fbd: $01 $04 $00
    add h                                         ; $4fc0: $84
    rlca                                          ; $4fc1: $07
    rrca                                          ; $4fc2: $0f
    ld a, [bc]                                    ; $4fc3: $0a
    ld b, $02                                     ; $4fc4: $06 $02
    ld c, $82                                     ; $4fc6: $0e $82
    ld b, $0e                                     ; $4fc8: $06 $0e
    inc c                                         ; $4fca: $0c
    inc c                                         ; $4fcb: $0c
    add e                                         ; $4fcc: $83
    ld b, $0e                                     ; $4fcd: $06 $0e
    ld b, $03                                     ; $4fcf: $06 $03
    ld c, $91                                     ; $4fd1: $0e $91
    ld b, $0e                                     ; $4fd3: $06 $0e
    inc bc                                        ; $4fd5: $03
    rrca                                          ; $4fd6: $0f
    dec bc                                        ; $4fd7: $0b
    rlca                                          ; $4fd8: $07
    ld e, b                                       ; $4fd9: $58
    cp b                                          ; $4fda: $b8
    db $ec                                        ; $4fdb: $ec
    inc e                                         ; $4fdc: $1c
    cp $ce                                        ; $4fdd: $fe $ce
    add a                                         ; $4fdf: $87
    rst $38                                       ; $4fe0: $ff
    db $ed                                        ; $4fe1: $ed
    di                                            ; $4fe2: $f3
    db $e3                                        ; $4fe3: $e3
    ld [bc], a                                    ; $4fe4: $02
    rst $38                                       ; $4fe5: $ff
    add d                                         ; $4fe6: $82
    ld hl, sp+$70                                 ; $4fe7: $f8 $70
    ld [bc], a                                    ; $4fe9: $02
    ld a, a                                       ; $4fea: $7f
    adc c                                         ; $4feb: $89
    ld a, h                                       ; $4fec: $7c
    dec sp                                        ; $4fed: $3b
    inc a                                         ; $4fee: $3c
    ld a, $3f                                     ; $4fef: $3e $3f
    sbc l                                         ; $4ff1: $9d
    sbc [hl]                                      ; $4ff2: $9e
    ld e, $1f                                     ; $4ff3: $1e $1f
    ld [bc], a                                    ; $4ff5: $02
    rrca                                          ; $4ff6: $0f
    inc b                                         ; $4ff7: $04
    rlca                                          ; $4ff8: $07
    ld [bc], a                                    ; $4ff9: $02
    add b                                         ; $4ffa: $80
    ld [bc], a                                    ; $4ffb: $02
    ret nz                                        ; $4ffc: $c0

    add d                                         ; $4ffd: $82
    ld b, b                                       ; $4ffe: $40
    ret nz                                        ; $4fff: $c0

    ld [bc], a                                    ; $5000: $02
    ldh [$98], a                                  ; $5001: $e0 $98
    ld h, b                                       ; $5003: $60
    ldh [$b0], a                                  ; $5004: $e0 $b0
    ld [hl], b                                    ; $5006: $70
    sub b                                         ; $5007: $90
    ld [hl], b                                    ; $5008: $70
    cp b                                          ; $5009: $b8
    ld a, b                                       ; $500a: $78
    ret c                                         ; $500b: $d8

    jr c, @+$7e                                   ; $500c: $38 $7c

    cp h                                          ; $500e: $bc
    ld [hl], $ce                                  ; $500f: $36 $ce
    sub $ee                                       ; $5011: $d6 $ee
    jp c, $b7e6                                   ; $5013: $da $e6 $b7

    rst $28                                       ; $5016: $ef
    db $eb                                        ; $5017: $eb
    rst $30                                       ; $5018: $f7
    sbc a                                         ; $5019: $9f
    rst $20                                       ; $501a: $e7
    ld [bc], a                                    ; $501b: $02
    jr c, jr_0f4_5024                             ; $501c: $38 $06

    jr jr_0f4_4fa2                                ; $501e: $18 $82

    ld l, $2f                                     ; $5020: $2e $2f
    ld [bc], a                                    ; $5022: $02
    rrca                                          ; $5023: $0f

jr_0f4_5024:
    add e                                         ; $5024: $83
    ld c, $0f                                     ; $5025: $0e $0f
    ld [$0f05], sp                                ; $5027: $08 $05 $0f
    add e                                         ; $502a: $83
    ld c, $0f                                     ; $502b: $0e $0f
    inc c                                         ; $502d: $0c
    ld [bc], a                                    ; $502e: $02
    rrca                                          ; $502f: $0f
    adc h                                         ; $5030: $8c
    ld c, $1e                                     ; $5031: $0e $1e
    rra                                           ; $5033: $1f
    dec e                                         ; $5034: $1d
    ld e, $9e                                     ; $5035: $1e $9e
    sbc a                                         ; $5037: $9f
    inc sp                                        ; $5038: $33
    rrca                                          ; $5039: $0f
    rla                                           ; $503a: $17
    cpl                                           ; $503b: $2f
    inc de                                        ; $503c: $13
    ld [bc], a                                    ; $503d: $02
    cpl                                           ; $503e: $2f
    sbc c                                         ; $503f: $99
    rra                                           ; $5040: $1f
    dec de                                        ; $5041: $1b
    daa                                           ; $5042: $27
    rra                                           ; $5043: $1f
    daa                                           ; $5044: $27
    ld h, $1e                                     ; $5045: $26 $1e
    ld a, $1e                                     ; $5047: $3e $1e
    ld [hl], $0e                                  ; $5049: $36 $0e
    ld l, $1e                                     ; $504b: $2e $1e
    inc a                                         ; $504d: $3c
    inc e                                         ; $504e: $1c
    inc [hl]                                      ; $504f: $34
    inc c                                         ; $5050: $0c
    xor h                                         ; $5051: $ac
    call c, Call_000_1cec                         ; $5052: $dc $ec $1c
    ld b, h                                       ; $5055: $44
    cp h                                          ; $5056: $bc
    ld l, h                                       ; $5057: $6c
    sbc h                                         ; $5058: $9c
    ld [bc], a                                    ; $5059: $02
    ld c, $82                                     ; $505a: $0e $82
    ld [$040e], sp                                ; $505c: $08 $0e $04
    ld e, $a7                                     ; $505f: $1e $a7
    jr jr_0f4_5082                                ; $5061: $18 $1f

    inc sp                                        ; $5063: $33
    inc a                                         ; $5064: $3c
    add hl, sp                                    ; $5065: $39
    ld a, $3b                                     ; $5066: $3e $3b
    inc a                                         ; $5068: $3c
    ld l, e                                       ; $5069: $6b
    ld a, h                                       ; $506a: $7c
    ld [hl], a                                    ; $506b: $77
    ld a, b                                       ; $506c: $78
    ld c, [hl]                                    ; $506d: $4e
    ld [hl], c                                    ; $506e: $71
    or $f9                                        ; $506f: $f6 $f9
    ret nc                                        ; $5071: $d0

    rst $38                                       ; $5072: $ff
    sub $df                                       ; $5073: $d6 $df
    xor c                                         ; $5075: $a9
    ei                                            ; $5076: $fb
    and [hl]                                      ; $5077: $a6
    or a                                          ; $5078: $b7
    inc l                                         ; $5079: $2c
    inc e                                         ; $507a: $1c
    inc l                                         ; $507b: $2c
    inc e                                         ; $507c: $1c
    inc a                                         ; $507d: $3c
    inc e                                         ; $507e: $1c
    inc l                                         ; $507f: $2c
    inc e                                         ; $5080: $1c
    add hl, de                                    ; $5081: $19

jr_0f4_5082:
    add hl, sp                                    ; $5082: $39
    db $10                                        ; $5083: $10
    jr nc, jr_0f4_5096                            ; $5084: $30 $10

    jr nc, @+$12                                  ; $5086: $30 $10

    inc bc                                        ; $5088: $03
    jr nc, @-$7c                                  ; $5089: $30 $82

    db $10                                        ; $508b: $10
    jr nc, jr_0f4_5090                            ; $508c: $30 $02

    jr nz, jr_0f4_5092                            ; $508e: $20 $02

jr_0f4_5090:
    jr nc, @+$04                                  ; $5090: $30 $02

jr_0f4_5092:
    ld h, b                                       ; $5092: $60
    ld b, $00                                     ; $5093: $06 $00
    ld [bc], a                                    ; $5095: $02

jr_0f4_5096:
    dec d                                         ; $5096: $15
    ld e, $00                                     ; $5097: $1e $00
    rst $38                                       ; $5099: $ff
    dec hl                                        ; $509a: $2b
    inc de                                        ; $509b: $13
    ld hl, sp+$0b                                 ; $509c: $f8 $0b
    ldh a, [$0d]                                  ; $509e: $f0 $0d
    rst $00                                       ; $50a0: $c7
    ldh a, [$d7]                                  ; $50a1: $f0 $d7
    ldh a, [$be]                                  ; $50a3: $f0 $be
    ld hl, sp-$32                                 ; $50a5: $f8 $ce
    ld hl, sp-$22                                 ; $50a7: $f8 $de
    ld hl, sp-$02                                 ; $50a9: $f8 $fe
    rst $38                                       ; $50ab: $ff
    ld [bc], a                                    ; $50ac: $02
    cp $05                                        ; $50ad: $fe $05
    db $fd                                        ; $50af: $fd
    rlca                                          ; $50b0: $07
    db $fc                                        ; $50b1: $fc
    ld a, [bc]                                    ; $50b2: $0a
    ei                                            ; $50b3: $fb
    xor l                                         ; $50b4: $ad
    nop                                           ; $50b5: $00
    cp l                                          ; $50b6: $bd
    nop                                           ; $50b7: $00
    rst $18                                       ; $50b8: $df
    nop                                           ; $50b9: $00
    rst $28                                       ; $50ba: $ef
    nop                                           ; $50bb: $00
    rst $38                                       ; $50bc: $ff
    rlca                                          ; $50bd: $07
    or c                                          ; $50be: $b1
    ld [$08c1], sp                                ; $50bf: $08 $c1 $08
    db $eb                                        ; $50c2: $eb
    ld [$08fb], sp                                ; $50c3: $08 $fb $08
    ld [bc], a                                    ; $50c6: $02
    ld bc, $0302                                  ; $50c7: $01 $02 $03
    ld [bc], a                                    ; $50ca: $02
    rlca                                          ; $50cb: $07
    and [hl]                                      ; $50cc: $a6
    ld b, $07                                     ; $50cd: $06 $07
    ld c, $0f                                     ; $50cf: $0e $0f
    add hl, de                                    ; $50d1: $19
    ld e, $1d                                     ; $50d2: $1e $1d
    ld e, $1f                                     ; $50d4: $1e $1f
    jr @+$35                                      ; $50d6: $18 $33

    dec a                                         ; $50d8: $3d
    dec sp                                        ; $50d9: $3b
    inc [hl]                                      ; $50da: $34
    daa                                           ; $50db: $27
    add hl, sp                                    ; $50dc: $39
    ld [hl], $39                                  ; $50dd: $36 $39

jr_0f4_50df:
    dec a                                         ; $50df: $3d
    dec sp                                        ; $50e0: $3b
    ld a, [hl-]                                   ; $50e1: $3a
    dec a                                         ; $50e2: $3d
    ld [hl-], a                                   ; $50e3: $32
    dec a                                         ; $50e4: $3d
    ld a, $39                                     ; $50e5: $3e $39
    inc sp                                        ; $50e7: $33
    inc a                                         ; $50e8: $3c
    ld [hl], $39                                  ; $50e9: $36 $39
    sbc e                                         ; $50eb: $9b
    sbc l                                         ; $50ec: $9d
    ld a, [de]                                    ; $50ed: $1a
    dec e                                         ; $50ee: $1d
    add hl, de                                    ; $50ef: $19
    ld e, $0d                                     ; $50f0: $1e $0d
    ld c, $02                                     ; $50f2: $0e $02
    rrca                                          ; $50f4: $0f
    add d                                         ; $50f5: $82
    ld b, $07                                     ; $50f6: $06 $07
    ld [bc], a                                    ; $50f8: $02
    inc bc                                        ; $50f9: $03
    ld [bc], a                                    ; $50fa: $02
    ld bc, $000c                                  ; $50fb: $01 $0c $00
    inc b                                         ; $50fe: $04
    ld bc, $0302                                  ; $50ff: $01 $02 $03
    ld [bc], a                                    ; $5102: $02
    rlca                                          ; $5103: $07
    adc a                                         ; $5104: $8f
    dec l                                         ; $5105: $2d
    ld l, $1a                                     ; $5106: $2e $1a
    rra                                           ; $5108: $1f
    dec a                                         ; $5109: $3d
    ld a, $6e                                     ; $510a: $3e $6e
    ld [hl], c                                    ; $510c: $71
    ei                                            ; $510d: $fb
    rst $30                                       ; $510e: $f7
    or l                                          ; $510f: $b5
    rst $08                                       ; $5110: $cf
    or a                                          ; $5111: $b7
    rst $08                                       ; $5112: $cf
    ld c, a                                       ; $5113: $4f
    ld [bc], a                                    ; $5114: $02
    cp a                                          ; $5115: $bf
    adc c                                         ; $5116: $89
    ld a, a                                       ; $5117: $7f
    sbc [hl]                                      ; $5118: $9e
    ld a, [hl]                                    ; $5119: $7e
    db $fc                                        ; $511a: $fc
    inc a                                         ; $511b: $3c
    ld a, h                                       ; $511c: $7c
    db $fc                                        ; $511d: $fc
    sbc b                                         ; $511e: $98
    ld a, b                                       ; $511f: $78
    ld [bc], a                                    ; $5120: $02
    ld hl, sp-$7e                                 ; $5121: $f8 $82
    ld a, b                                       ; $5123: $78
    ld hl, sp+$06                                 ; $5124: $f8 $06
    ldh a, [$81]                                  ; $5126: $f0 $81
    jr nc, jr_0f4_512f                            ; $5128: $30 $05

    ldh a, [$83]                                  ; $512a: $f0 $83
    ld a, b                                       ; $512c: $78
    ld hl, sp+$78                                 ; $512d: $f8 $78

jr_0f4_512f:
    inc bc                                        ; $512f: $03
    ld hl, sp-$63                                 ; $5130: $f8 $9d
    ld a, b                                       ; $5132: $78
    ld hl, sp+$1c                                 ; $5133: $f8 $1c
    db $fc                                        ; $5135: $fc
    cp h                                          ; $5136: $bc
    ld a, h                                       ; $5137: $7c
    ld e, [hl]                                    ; $5138: $5e
    cp [hl]                                       ; $5139: $be
    rst $28                                       ; $513a: $ef
    rra                                           ; $513b: $1f
    rst $38                                       ; $513c: $ff
    rst $08                                       ; $513d: $cf
    add a                                         ; $513e: $87
    rst $38                                       ; $513f: $ff
    db $ed                                        ; $5140: $ed
    di                                            ; $5141: $f3
    ld h, e                                       ; $5142: $63
    ld a, a                                       ; $5143: $7f
    ccf                                           ; $5144: $3f
    jr c, jr_0f4_50df                             ; $5145: $38 $98

    sbc a                                         ; $5147: $9f
    rra                                           ; $5148: $1f
    inc e                                         ; $5149: $1c
    dec bc                                        ; $514a: $0b
    inc c                                         ; $514b: $0c
    ld c, $0f                                     ; $514c: $0e $0f
    dec b                                         ; $514e: $05
    ld [bc], a                                    ; $514f: $02
    ld b, $81                                     ; $5150: $06 $81
    rlca                                          ; $5152: $07
    ld [bc], a                                    ; $5153: $02
    inc bc                                        ; $5154: $03
    ld b, $01                                     ; $5155: $06 $01
    sbc h                                         ; $5157: $9c
    db $db                                        ; $5158: $db
    rst $20                                       ; $5159: $e7
    pop hl                                        ; $515a: $e1
    rst $38                                       ; $515b: $ff
    db $db                                        ; $515c: $db
    rst $20                                       ; $515d: $e7
    sub a                                         ; $515e: $97
    rst $28                                       ; $515f: $ef
    or a                                          ; $5160: $b7
    rst $08                                       ; $5161: $cf
    cp a                                          ; $5162: $bf
    rst $08                                       ; $5163: $cf
    ld [hl], a                                    ; $5164: $77
    adc a                                         ; $5165: $8f
    cpl                                           ; $5166: $2f
    rst $18                                       ; $5167: $df
    xor $9e                                       ; $5168: $ee $9e
    add $3e                                       ; $516a: $c6 $3e
    ld c, [hl]                                    ; $516c: $4e
    cp [hl]                                       ; $516d: $be
    sub h                                         ; $516e: $94
    db $fc                                        ; $516f: $fc
    ld h, [hl]                                    ; $5170: $66
    xor $5a                                       ; $5171: $ee $5a
    ld a, [hl]                                    ; $5173: $7e
    ld [bc], a                                    ; $5174: $02
    cp e                                          ; $5175: $bb
    ld [bc], a                                    ; $5176: $02
    xor h                                         ; $5177: $ac
    ld a, [bc]                                    ; $5178: $0a
    add b                                         ; $5179: $80
    add c                                         ; $517a: $81
    nop                                           ; $517b: $00
    ld [bc], a                                    ; $517c: $02
    add b                                         ; $517d: $80
    ld [bc], a                                    ; $517e: $02
    nop                                           ; $517f: $00
    inc bc                                        ; $5180: $03
    add b                                         ; $5181: $80
    add c                                         ; $5182: $81
    nop                                           ; $5183: $00
    inc bc                                        ; $5184: $03
    add b                                         ; $5185: $80
    ld a, [bc]                                    ; $5186: $0a
    nop                                           ; $5187: $00
    ld [$0380], sp                                ; $5188: $08 $80 $03
    nop                                           ; $518b: $00
    inc bc                                        ; $518c: $03
    add b                                         ; $518d: $80
    ld [bc], a                                    ; $518e: $02
    nop                                           ; $518f: $00
    ld [bc], a                                    ; $5190: $02
    add b                                         ; $5191: $80
    ld c, $00                                     ; $5192: $0e $00
    inc c                                         ; $5194: $0c
    add b                                         ; $5195: $80
    inc d                                         ; $5196: $14
    nop                                           ; $5197: $00
    ld [bc], a                                    ; $5198: $02
    add b                                         ; $5199: $80
    ld [bc], a                                    ; $519a: $02
    nop                                           ; $519b: $00
    ld [bc], a                                    ; $519c: $02
    add b                                         ; $519d: $80
    ld a, [de]                                    ; $519e: $1a
    nop                                           ; $519f: $00
    ld [bc], a                                    ; $51a0: $02
    ld l, h                                       ; $51a1: $6c
    ld [bc], a                                    ; $51a2: $02
    ld a, [hl+]                                   ; $51a3: $2a
    ld [bc], a                                    ; $51a4: $02
    ld e, l                                       ; $51a5: $5d
    ld [bc], a                                    ; $51a6: $02
    ld a, [$4ea4]                                 ; $51a7: $fa $a4 $4e
    ld a, [hl]                                    ; $51aa: $7e
    ld e, a                                       ; $51ab: $5f
    ld a, a                                       ; $51ac: $7f
    ld c, a                                       ; $51ad: $4f
    ld a, a                                       ; $51ae: $7f
    ld [hl], e                                    ; $51af: $73
    ld l, a                                       ; $51b0: $6f
    ld d, a                                       ; $51b1: $57
    ld l, a                                       ; $51b2: $6f
    inc hl                                        ; $51b3: $23
    ccf                                           ; $51b4: $3f
    ld a, a                                       ; $51b5: $7f
    ld h, a                                       ; $51b6: $67
    ld c, b                                       ; $51b7: $48
    ld [hl], a                                    ; $51b8: $77
    ld e, e                                       ; $51b9: $5b
    ld h, a                                       ; $51ba: $67
    rst $20                                       ; $51bb: $e7
    rst $38                                       ; $51bc: $ff
    db $dd                                        ; $51bd: $dd
    rst $20                                       ; $51be: $e7
    or e                                          ; $51bf: $b3
    rst $08                                       ; $51c0: $cf
    rst $30                                       ; $51c1: $f7
    rst $08                                       ; $51c2: $cf
    adc a                                         ; $51c3: $8f
    rst $38                                       ; $51c4: $ff
    or e                                          ; $51c5: $b3
    rst $08                                       ; $51c6: $cf
    ld a, a                                       ; $51c7: $7f
    sbc a                                         ; $51c8: $9f
    xor $1e                                       ; $51c9: $ee $1e
    sbc [hl]                                      ; $51cb: $9e
    ld a, [hl]                                    ; $51cc: $7e
    ld [bc], a                                    ; $51cd: $02
    db $fc                                        ; $51ce: $fc
    add d                                         ; $51cf: $82
    inc a                                         ; $51d0: $3c
    db $fc                                        ; $51d1: $fc
    ld [bc], a                                    ; $51d2: $02
    ld hl, sp+$02                                 ; $51d3: $f8 $02
    ldh a, [rSC]                                  ; $51d5: $f0 $02
    ldh [rSC], a                                  ; $51d7: $e0 $02
    ret nz                                        ; $51d9: $c0

    ld [bc], a                                    ; $51da: $02
    add b                                         ; $51db: $80
    ld [bc], a                                    ; $51dc: $02
    nop                                           ; $51dd: $00
    ld [bc], a                                    ; $51de: $02
    ld b, b                                       ; $51df: $40
    ld [bc], a                                    ; $51e0: $02
    nop                                           ; $51e1: $00
    ld [bc], a                                    ; $51e2: $02
    add b                                         ; $51e3: $80
    ld [bc], a                                    ; $51e4: $02
    ret nz                                        ; $51e5: $c0

    ld [bc], a                                    ; $51e6: $02
    ldh [rSC], a                                  ; $51e7: $e0 $02
    ldh a, [$82]                                  ; $51e9: $f0 $82
    ld [hl], b                                    ; $51eb: $70
    ldh a, [rSC]                                  ; $51ec: $f0 $02
    ld hl, sp-$4e                                 ; $51ee: $f8 $b2
    ld a, b                                       ; $51f0: $78
    ld hl, sp-$44                                 ; $51f1: $f8 $bc
    ld a, h                                       ; $51f3: $7c
    adc h                                         ; $51f4: $8c
    ld a, h                                       ; $51f5: $7c
    cp [hl]                                       ; $51f6: $be
    ld a, [hl]                                    ; $51f7: $7e
    sbc $3e                                       ; $51f8: $de $3e
    ld a, a                                       ; $51fa: $7f
    cp a                                          ; $51fb: $bf
    or a                                          ; $51fc: $b7
    rst $08                                       ; $51fd: $cf
    rst $10                                       ; $51fe: $d7
    rst $28                                       ; $51ff: $ef
    db $db                                        ; $5200: $db
    rst $20                                       ; $5201: $e7
    or a                                          ; $5202: $b7
    rst $28                                       ; $5203: $ef
    db $eb                                        ; $5204: $eb
    rst $30                                       ; $5205: $f7
    sbc a                                         ; $5206: $9f
    rst $20                                       ; $5207: $e7
    ret c                                         ; $5208: $d8

    rst $20                                       ; $5209: $e7
    ld l, e                                       ; $520a: $6b
    ld [hl], a                                    ; $520b: $77
    ld c, c                                       ; $520c: $49
    ld [hl], a                                    ; $520d: $77
    ld d, a                                       ; $520e: $57
    ld l, a                                       ; $520f: $6f
    db $ed                                        ; $5210: $ed
    di                                            ; $5211: $f3
    ld l, a                                       ; $5212: $6f
    ld [hl], e                                    ; $5213: $73
    ld d, e                                       ; $5214: $53
    ld l, a                                       ; $5215: $6f
    ld e, l                                       ; $5216: $5d
    ld l, a                                       ; $5217: $6f
    ld a, e                                       ; $5218: $7b
    ld b, a                                       ; $5219: $47
    rst $10                                       ; $521a: $d7
    rst $28                                       ; $521b: $ef
    rst $38                                       ; $521c: $ff
    rst $08                                       ; $521d: $cf
    db $db                                        ; $521e: $db
    rst $20                                       ; $521f: $e7
    rst $10                                       ; $5220: $d7
    rst $28                                       ; $5221: $ef
    ld [bc], a                                    ; $5222: $02
    ld bc, $c004                                  ; $5223: $01 $04 $c0
    ld b, $80                                     ; $5226: $06 $80
    ld [bc], a                                    ; $5228: $02
    and b                                         ; $5229: $a0
    inc d                                         ; $522a: $14
    nop                                           ; $522b: $00
    ld [bc], a                                    ; $522c: $02
    add b                                         ; $522d: $80
    ld [bc], a                                    ; $522e: $02
    nop                                           ; $522f: $00
    ld [bc], a                                    ; $5230: $02
    add b                                         ; $5231: $80
    ld [bc], a                                    ; $5232: $02
    ld b, b                                       ; $5233: $40
    ld [bc], a                                    ; $5234: $02
    add b                                         ; $5235: $80
    ld [bc], a                                    ; $5236: $02
    ret nz                                        ; $5237: $c0

    ld [bc], a                                    ; $5238: $02
    add b                                         ; $5239: $80
    ld a, [bc]                                    ; $523a: $0a
    ret nz                                        ; $523b: $c0

    inc b                                         ; $523c: $04
    add b                                         ; $523d: $80
    inc h                                         ; $523e: $24
    nop                                           ; $523f: $00
    ld b, $80                                     ; $5240: $06 $80
    ld b, $c0                                     ; $5242: $06 $c0
    inc c                                         ; $5244: $0c
    ldh [rDIV], a                                 ; $5245: $e0 $04
    ret nz                                        ; $5247: $c0

    ld [bc], a                                    ; $5248: $02
    ret nc                                        ; $5249: $d0

    ld [bc], a                                    ; $524a: $02
    ret nz                                        ; $524b: $c0

    ld [$1880], sp                                ; $524c: $08 $80 $18
    nop                                           ; $524f: $00
    rst $38                                       ; $5250: $ff
    inc hl                                        ; $5251: $23
    rrca                                          ; $5252: $0f
    ld hl, sp+$0b                                 ; $5253: $f8 $0b
    ldh a, [$0d]                                  ; $5255: $f0 $0d
    xor h                                         ; $5257: $ac
    db $fc                                        ; $5258: $fc
    or b                                          ; $5259: $b0
    rst $38                                       ; $525a: $ff
    ret nz                                        ; $525b: $c0

    ei                                            ; $525c: $fb
    ret nz                                        ; $525d: $c0

    rst $38                                       ; $525e: $ff
    call $ccf2                                    ; $525f: $cd $f2 $cc
    ld a, [$efdd]                                 ; $5262: $fa $dd $ef
    call c, $e3f7                                 ; $5265: $dc $f7 $e3
    rst $38                                       ; $5268: $ff
    db $ec                                        ; $5269: $ec
    ld hl, sp-$0e                                 ; $526a: $f8 $f2
    nop                                           ; $526c: $00
    db $f4                                        ; $526d: $f4
    inc bc                                        ; $526e: $03
    db $fc                                        ; $526f: $fc
    ei                                            ; $5270: $fb
    inc b                                         ; $5271: $04
    rst $38                                       ; $5272: $ff
    inc c                                         ; $5273: $0c
    rst $30                                       ; $5274: $f7
    ld [bc], a                                    ; $5275: $02
    db $10                                        ; $5276: $10
    ld [bc], a                                    ; $5277: $02
    ld a, [hl+]                                   ; $5278: $2a
    ld [bc], a                                    ; $5279: $02
    cp h                                          ; $527a: $bc
    ld [bc], a                                    ; $527b: $02
    ld e, e                                       ; $527c: $5b
    ld [bc], a                                    ; $527d: $02
    cp [hl]                                       ; $527e: $be
    sub [hl]                                      ; $527f: $96
    ld l, e                                       ; $5280: $6b
    ld l, a                                       ; $5281: $6f
    dec a                                         ; $5282: $3d
    dec sp                                        ; $5283: $3b
    ld [hl], a                                    ; $5284: $77
    ld a, c                                       ; $5285: $79
    ld a, [hl-]                                   ; $5286: $3a
    ccf                                           ; $5287: $3f
    ld e, $1d                                     ; $5288: $1e $1d
    dec a                                         ; $528a: $3d
    ccf                                           ; $528b: $3f
    rra                                           ; $528c: $1f
    inc e                                         ; $528d: $1c
    ld e, [hl]                                    ; $528e: $5e
    ld e, a                                       ; $528f: $5f
    dec bc                                        ; $5290: $0b
    inc c                                         ; $5291: $0c
    dec e                                         ; $5292: $1d
    ld e, $1f                                     ; $5293: $1e $1f
    inc e                                         ; $5295: $1c
    inc b                                         ; $5296: $04
    inc b                                         ; $5297: $04
    ld [bc], a                                    ; $5298: $02
    ld [bc], a                                    ; $5299: $02
    ld [bc], a                                    ; $529a: $02
    inc b                                         ; $529b: $04
    ld [bc], a                                    ; $529c: $02
    ld b, $02                                     ; $529d: $06 $02
    dec b                                         ; $529f: $05
    ld [bc], a                                    ; $52a0: $02
    ld b, $84                                     ; $52a1: $06 $84
    inc bc                                        ; $52a3: $03
    rlca                                          ; $52a4: $07
    ld [bc], a                                    ; $52a5: $02
    ld b, $02                                     ; $52a6: $06 $02
    rlca                                          ; $52a8: $07
    add c                                         ; $52a9: $81
    dec b                                         ; $52aa: $05
    ld [bc], a                                    ; $52ab: $02
    inc bc                                        ; $52ac: $03
    adc c                                         ; $52ad: $89
    rlca                                          ; $52ae: $07
    pop bc                                        ; $52af: $c1
    rst $38                                       ; $52b0: $ff
    ei                                            ; $52b1: $fb
    rst $20                                       ; $52b2: $e7
    rst $00                                       ; $52b3: $c7
    ei                                            ; $52b4: $fb
    db $ed                                        ; $52b5: $ed
    di                                            ; $52b6: $f3
    ld [bc], a                                    ; $52b7: $02
    rrca                                          ; $52b8: $0f
    add e                                         ; $52b9: $83
    dec c                                         ; $52ba: $0d
    ld c, $1e                                     ; $52bb: $0e $1e
    ld [bc], a                                    ; $52bd: $02
    rra                                           ; $52be: $1f
    add d                                         ; $52bf: $82
    ld e, $1c                                     ; $52c0: $1e $1c
    ld [bc], a                                    ; $52c2: $02
    rra                                           ; $52c3: $1f
    and d                                         ; $52c4: $a2
    ld e, $3b                                     ; $52c5: $1e $3b
    ld a, $3c                                     ; $52c7: $3e $3c
    ccf                                           ; $52c9: $3f
    ld a, a                                       ; $52ca: $7f
    ld a, h                                       ; $52cb: $7c
    ld hl, sp-$01                                 ; $52cc: $f8 $ff
    push af                                       ; $52ce: $f5
    rst $38                                       ; $52cf: $ff
    and $f9                                       ; $52d0: $e6 $f9
    db $ed                                        ; $52d2: $ed
    di                                            ; $52d3: $f3
    db $fd                                        ; $52d4: $fd
    di                                            ; $52d5: $f3
    rst $00                                       ; $52d6: $c7
    rst $38                                       ; $52d7: $ff
    dec sp                                        ; $52d8: $3b
    rst $20                                       ; $52d9: $e7
    dec c                                         ; $52da: $0d

jr_0f4_52db:
    inc bc                                        ; $52db: $03
    dec bc                                        ; $52dc: $0b
    rlca                                          ; $52dd: $07
    dec c                                         ; $52de: $0d
    inc bc                                        ; $52df: $03
    rrca                                          ; $52e0: $0f
    inc bc                                        ; $52e1: $03
    rlca                                          ; $52e2: $07
    rrca                                          ; $52e3: $0f
    dec bc                                        ; $52e4: $0b
    rlca                                          ; $52e5: $07
    ld a, [bc]                                    ; $52e6: $0a
    ld [bc], a                                    ; $52e7: $02
    ld b, $82                                     ; $52e8: $06 $82
    ld c, $06                                     ; $52ea: $0e $06
    inc bc                                        ; $52ec: $03
    ld c, $06                                     ; $52ed: $0e $06
    inc c                                         ; $52ef: $0c
    inc b                                         ; $52f0: $04
    ld [$0002], sp                                ; $52f1: $08 $02 $00
    ld [bc], a                                    ; $52f4: $02
    ld bc, $0302                                  ; $52f5: $01 $02 $03
    inc b                                         ; $52f8: $04
    rlca                                          ; $52f9: $07
    ld [bc], a                                    ; $52fa: $02
    rrca                                          ; $52fb: $0f
    sub [hl]                                      ; $52fc: $96
    adc l                                         ; $52fd: $8d
    adc [hl]                                      ; $52fe: $8e
    ld e, $1f                                     ; $52ff: $1e $1f
    ld e, $1f                                     ; $5301: $1e $1f
    dec a                                         ; $5303: $3d
    ld a, $3d                                     ; $5304: $3e $3d
    ld a, $71                                     ; $5306: $3e $71
    ld a, [hl]                                    ; $5308: $7e
    ld a, a                                       ; $5309: $7f
    ld a, h                                       ; $530a: $7c
    ld [hl], b                                    ; $530b: $70
    ld a, a                                       ; $530c: $7f
    ei                                            ; $530d: $fb
    db $fc                                        ; $530e: $fc
    or $f9                                        ; $530f: $f6 $f9
    db $fd                                        ; $5311: $fd
    ei                                            ; $5312: $fb
    ld [$8f80], sp                                ; $5313: $08 $80 $8f
    or e                                          ; $5316: $b3
    rst $08                                       ; $5317: $cf
    ld [hl], a                                    ; $5318: $77
    rst $08                                       ; $5319: $cf
    ld l, [hl]                                    ; $531a: $6e
    sbc [hl]                                      ; $531b: $9e
    db $e4                                        ; $531c: $e4
    inc e                                         ; $531d: $1c
    cp h                                          ; $531e: $bc
    ld a, h                                       ; $531f: $7c
    ret c                                         ; $5320: $d8

    jr c, jr_0f4_52db                             ; $5321: $38 $b8

    ld a, b                                       ; $5323: $78
    ldh a, [rSC]                                  ; $5324: $f0 $02
    ld [hl], b                                    ; $5326: $70
    add c                                         ; $5327: $81
    ldh a, [rDIV]                                 ; $5328: $f0 $04
    ldh [$84], a                                  ; $532a: $e0 $84
    ld h, b                                       ; $532c: $60
    ldh [rNR32], a                                ; $532d: $e0 $1c
    rra                                           ; $532f: $1f
    ld [bc], a                                    ; $5330: $02
    sbc a                                         ; $5331: $9f
    add [hl]                                      ; $5332: $86
    inc e                                         ; $5333: $1c
    rra                                           ; $5334: $1f
    ld e, $1f                                     ; $5335: $1e $1f
    ld e, $1f                                     ; $5337: $1e $1f
    ld [bc], a                                    ; $5339: $02
    rrca                                          ; $533a: $0f
    add c                                         ; $533b: $81
    inc c                                         ; $533c: $0c
    dec b                                         ; $533d: $05
    rrca                                          ; $533e: $0f

jr_0f4_533f:
    inc b                                         ; $533f: $04
    rlca                                          ; $5340: $07
    inc b                                         ; $5341: $04
    inc bc                                        ; $5342: $03
    ld [bc], a                                    ; $5343: $02
    ld bc, $0004                                  ; $5344: $01 $04 $00
    ld [bc], a                                    ; $5347: $02
    inc e                                         ; $5348: $1c

jr_0f4_5349:
    sbc [hl]                                      ; $5349: $9e
    ret c                                         ; $534a: $d8

    jr c, jr_0f4_53b5                             ; $534b: $38 $68

    sbc b                                         ; $534d: $98
    ret c                                         ; $534e: $d8

    jr c, jr_0f4_5349                             ; $534f: $38 $f8

    jr c, jr_0f4_533f                             ; $5351: $38 $ec

    inc e                                         ; $5353: $1c
    cp h                                          ; $5354: $bc
    call c, Call_000_3ccc                         ; $5355: $dc $cc $3c
    ld a, h                                       ; $5358: $7c
    sbc h                                         ; $5359: $9c
    and [hl]                                      ; $535a: $a6
    sbc $7e                                       ; $535b: $de $7e
    add [hl]                                      ; $535d: $86
    ld e, e                                       ; $535e: $5b
    rst $20                                       ; $535f: $e7
    sbc a                                         ; $5360: $9f
    rst $20                                       ; $5361: $e7
    db $ed                                        ; $5362: $ed
    di                                            ; $5363: $f3
    and $f9                                       ; $5364: $e6 $f9
    di                                            ; $5366: $f3

jr_0f4_5367:
    db $fc                                        ; $5367: $fc
    ld [bc], a                                    ; $5368: $02
    add b                                         ; $5369: $80
    ld [$0200], sp                                ; $536a: $08 $00 $02
    add b                                         ; $536d: $80
    ld [bc], a                                    ; $536e: $02
    ret nz                                        ; $536f: $c0

    ld [bc], a                                    ; $5370: $02
    ldh [$96], a                                  ; $5371: $e0 $96
    jr nc, @-$0e                                  ; $5373: $30 $f0

    ld sp, hl                                     ; $5375: $f9
    ld a, c                                       ; $5376: $79
    call c, $ee3c                                 ; $5377: $dc $3c $ee
    sbc [hl]                                      ; $537a: $9e
    cp d                                          ; $537b: $ba
    add $77                                       ; $537c: $c6 $77
    adc a                                         ; $537e: $8f
    push bc                                       ; $537f: $c5
    rst $38                                       ; $5380: $ff
    sbc e                                         ; $5381: $9b
    rst $20                                       ; $5382: $e7
    ld a, [$76fc]                                 ; $5383: $fa $fc $76
    ld a, b                                       ; $5386: $78
    inc a                                         ; $5387: $3c
    ld a, $02                                     ; $5388: $3e $02
    ld e, $02                                     ; $538a: $1e $02
    ld c, $04                                     ; $538c: $0e $04
    ld b, $06                                     ; $538e: $06 $06
    inc bc                                        ; $5390: $03
    ld a, [bc]                                    ; $5391: $0a
    ld bc, $0302                                  ; $5392: $01 $02 $03
    ld [bc], a                                    ; $5395: $02
    ld bc, $db9e                                  ; $5396: $01 $9e $db
    rst $20                                       ; $5399: $e7
    sbc e                                         ; $539a: $9b
    rst $20                                       ; $539b: $e7
    reti                                          ; $539c: $d9


    rst $20                                       ; $539d: $e7
    rst $18                                       ; $539e: $df
    db $e3                                        ; $539f: $e3
    ld sp, hl                                     ; $53a0: $f9
    rst $20                                       ; $53a1: $e7
    db $db                                        ; $53a2: $db
    rst $20                                       ; $53a3: $e7
    adc h                                         ; $53a4: $8c
    di                                            ; $53a5: $f3
    ld sp, hl                                     ; $53a6: $f9
    rst $20                                       ; $53a7: $e7
    call $bbf3                                    ; $53a8: $cd $f3 $bb
    rst $00                                       ; $53ab: $c7
    db $db                                        ; $53ac: $db
    rst $20                                       ; $53ad: $e7
    sbc l                                         ; $53ae: $9d
    db $e3                                        ; $53af: $e3
    ld l, [hl]                                    ; $53b0: $6e
    sbc [hl]                                      ; $53b1: $9e
    call z, $fc3c                                 ; $53b2: $cc $3c $fc

jr_0f4_53b5:
    inc e                                         ; $53b5: $1c
    ld [bc], a                                    ; $53b6: $02
    ld bc, $0002                                  ; $53b7: $01 $02 $00
    ld c, $04                                     ; $53ba: $0e $04
    ld [bc], a                                    ; $53bc: $02
    nop                                           ; $53bd: $00
    ld [bc], a                                    ; $53be: $02
    ld [bc], a                                    ; $53bf: $02
    ld b, $00                                     ; $53c0: $06 $00
    add c                                         ; $53c2: $81
    ld b, b                                       ; $53c3: $40
    inc bc                                        ; $53c4: $03
    ret nz                                        ; $53c5: $c0

    ld [bc], a                                    ; $53c6: $02
    jr jr_0f4_53cb                                ; $53c7: $18 $02

    sbc b                                         ; $53c9: $98
    ld [bc], a                                    ; $53ca: $02

jr_0f4_53cb:
    jr c, jr_0f4_5367                             ; $53cb: $38 $9a

    jr nz, jr_0f4_5407                            ; $53cd: $20 $38

    ld [hl], b                                    ; $53cf: $70
    ld a, b                                       ; $53d0: $78
    ld [hl], b                                    ; $53d1: $70
    ld a, b                                       ; $53d2: $78
    halt                                          ; $53d3: $76
    ld a, c                                       ; $53d4: $79
    ld h, l                                       ; $53d5: $65
    ld a, e                                       ; $53d6: $7b
    ld [hl], $39                                  ; $53d7: $36 $39
    inc a                                         ; $53d9: $3c
    inc sp                                        ; $53da: $33
    scf                                           ; $53db: $37
    jr c, jr_0f4_5409                             ; $53dc: $38 $2b

    inc a                                         ; $53de: $3c
    ld hl, $593e                                  ; $53df: $21 $3e $59
    ld a, a                                       ; $53e2: $7f
    ld l, [hl]                                    ; $53e3: $6e
    ld l, a                                       ; $53e4: $6f
    ei                                            ; $53e5: $fb
    rst $38                                       ; $53e6: $ff
    ld [bc], a                                    ; $53e7: $02
    inc c                                         ; $53e8: $0c
    adc h                                         ; $53e9: $8c
    ld b, $0e                                     ; $53ea: $06 $0e
    ld [bc], a                                    ; $53ec: $02
    ld c, $0b                                     ; $53ed: $0e $0b
    rlca                                          ; $53ef: $07
    dec b                                         ; $53f0: $05
    rrca                                          ; $53f1: $0f
    ld [bc], a                                    ; $53f2: $02
    ld c, $0b                                     ; $53f3: $0e $0b
    rrca                                          ; $53f5: $0f
    ld [bc], a                                    ; $53f6: $02
    dec c                                         ; $53f7: $0d
    ld [bc], a                                    ; $53f8: $02
    sub $02                                       ; $53f9: $d6 $02
    inc [hl]                                      ; $53fb: $34
    inc c                                         ; $53fc: $0c
    nop                                           ; $53fd: $00
    ld [bc], a                                    ; $53fe: $02
    dec b                                         ; $53ff: $05
    ld [bc], a                                    ; $5400: $02
    inc bc                                        ; $5401: $03
    inc e                                         ; $5402: $1c
    nop                                           ; $5403: $00

Call_0f4_5404:
    rst $38                                       ; $5404: $ff
    inc hl                                        ; $5405: $23
    rrca                                          ; $5406: $0f

jr_0f4_5407:
    ld hl, sp+$0b                                 ; $5407: $f8 $0b

jr_0f4_5409:
    ldh a, [$0d]                                  ; $5409: $f0 $0d
    xor h                                         ; $540b: $ac
    db $fc                                        ; $540c: $fc
    or b                                          ; $540d: $b0
    rst $38                                       ; $540e: $ff
    ret nz                                        ; $540f: $c0

    ei                                            ; $5410: $fb
    ret nz                                        ; $5411: $c0

    rst $38                                       ; $5412: $ff
    call $ccf2                                    ; $5413: $cd $f2 $cc
    ld a, [$f2dd]                                 ; $5416: $fa $dd $f2
    call c, $ebfa                                 ; $5419: $dc $fa $eb
    ld [bc], a                                    ; $541c: $02
    db $ec                                        ; $541d: $ec
    ld sp, hl                                     ; $541e: $f9
    db $ec                                        ; $541f: $ec
    ld bc, $fbfc                                  ; $5420: $01 $fc $fb
    db $fc                                        ; $5423: $fc
    ld bc, $fc0c                                  ; $5424: $01 $0c $fc
    inc c                                         ; $5427: $0c
    rst $38                                       ; $5428: $ff
    ld [bc], a                                    ; $5429: $02
    ld d, b                                       ; $542a: $50
    ld [bc], a                                    ; $542b: $02
    sub [hl]                                      ; $542c: $96
    ld [bc], a                                    ; $542d: $02
    cp h                                          ; $542e: $bc
    ld [bc], a                                    ; $542f: $02
    ld d, [hl]                                    ; $5430: $56
    ld [bc], a                                    ; $5431: $02
    cp h                                          ; $5432: $bc
    adc a                                         ; $5433: $8f
    ld l, a                                       ; $5434: $6f
    ld a, a                                       ; $5435: $7f
    scf                                           ; $5436: $37
    cpl                                           ; $5437: $2f
    ld l, a                                       ; $5438: $6f
    ld [hl], a                                    ; $5439: $77
    add hl, sp                                    ; $543a: $39
    ccf                                           ; $543b: $3f
    dec de                                        ; $543c: $1b
    rla                                           ; $543d: $17
    scf                                           ; $543e: $37
    ccf                                           ; $543f: $3f
    dec e                                         ; $5440: $1d
    dec de                                        ; $5441: $1b
    add hl, de                                    ; $5442: $19
    ld [bc], a                                    ; $5443: $02
    rra                                           ; $5444: $1f
    add l                                         ; $5445: $85
    dec de                                        ; $5446: $1b
    ld d, $19                                     ; $5447: $16 $19
    dec e                                         ; $5449: $1d
    dec de                                        ; $544a: $1b
    inc b                                         ; $544b: $04
    inc b                                         ; $544c: $04
    ld [bc], a                                    ; $544d: $02
    ld [bc], a                                    ; $544e: $02
    ld [bc], a                                    ; $544f: $02
    inc b                                         ; $5450: $04
    ld [bc], a                                    ; $5451: $02
    ld b, $02                                     ; $5452: $06 $02
    dec b                                         ; $5454: $05
    ld [bc], a                                    ; $5455: $02
    ld b, $02                                     ; $5456: $06 $02
    rlca                                          ; $5458: $07
    ld [bc], a                                    ; $5459: $02
    ld b, $02                                     ; $545a: $06 $02
    rlca                                          ; $545c: $07
    add c                                         ; $545d: $81
    inc bc                                        ; $545e: $03
    inc bc                                        ; $545f: $03
    rlca                                          ; $5460: $07
    add e                                         ; $5461: $83
    add a                                         ; $5462: $87
    rst $38                                       ; $5463: $ff
    rst $28                                       ; $5464: $ef
    ld [bc], a                                    ; $5465: $02
    rst $18                                       ; $5466: $df
    add h                                         ; $5467: $84
    rst $28                                       ; $5468: $ef
    or a                                          ; $5469: $b7
    rst $08                                       ; $546a: $cf
    dec c                                         ; $546b: $0d
    ld [bc], a                                    ; $546c: $02
    ld c, $9e                                     ; $546d: $0e $9e
    dec c                                         ; $546f: $0d
    dec de                                        ; $5470: $1b
    inc e                                         ; $5471: $1c
    dec de                                        ; $5472: $1b
    inc e                                         ; $5473: $1c
    add hl, de                                    ; $5474: $19
    rra                                           ; $5475: $1f
    ld d, $19                                     ; $5476: $16 $19
    ld a, $39                                     ; $5478: $3e $39
    ld sp, $7d3f                                  ; $547a: $31 $3f $7d
    ld [hl], e                                    ; $547d: $73
    db $e3                                        ; $547e: $e3
    rst $38                                       ; $547f: $ff
    rst $10                                       ; $5480: $d7
    rst $38                                       ; $5481: $ff
    db $db                                        ; $5482: $db
    rst $20                                       ; $5483: $e7
    or a                                          ; $5484: $b7
    rst $08                                       ; $5485: $cf
    di                                            ; $5486: $f3
    rst $08                                       ; $5487: $cf
    rra                                           ; $5488: $1f
    rst $38                                       ; $5489: $ff
    rst $28                                       ; $548a: $ef
    sbc a                                         ; $548b: $9f
    rlca                                          ; $548c: $07
    inc bc                                        ; $548d: $03
    rrca                                          ; $548e: $0f
    add c                                         ; $548f: $81
    inc bc                                        ; $5490: $03
    rlca                                          ; $5491: $07
    rrca                                          ; $5492: $0f
    ld [$060e], sp                                ; $5493: $08 $0e $06
    inc c                                         ; $5496: $0c
    inc b                                         ; $5497: $04
    ld [$0002], sp                                ; $5498: $08 $02 $00
    ld [bc], a                                    ; $549b: $02
    dec b                                         ; $549c: $05
    ld [bc], a                                    ; $549d: $02
    inc bc                                        ; $549e: $03
    sbc c                                         ; $549f: $99
    ld b, $07                                     ; $54a0: $06 $07
    ld b, $07                                     ; $54a2: $06 $07
    dec c                                         ; $54a4: $0d
    rrca                                          ; $54a5: $0f
    dec c                                         ; $54a6: $0d
    ld c, $1b                                     ; $54a7: $0e $1b
    inc e                                         ; $54a9: $1c
    ld a, [de]                                    ; $54aa: $1a
    dec e                                         ; $54ab: $1d
    ld [hl], a                                    ; $54ac: $77
    ld a, b                                       ; $54ad: $78
    ld [hl], $39                                  ; $54ae: $36 $39
    ld h, a                                       ; $54b0: $67
    ld a, c                                       ; $54b1: $79
    ld a, l                                       ; $54b2: $7d
    ld [hl], e                                    ; $54b3: $73
    ld b, e                                       ; $54b4: $43
    ld a, a                                       ; $54b5: $7f
    rst $28                                       ; $54b6: $ef
    di                                            ; $54b7: $f3
    ret c                                         ; $54b8: $d8

    ld [bc], a                                    ; $54b9: $02
    rst $20                                       ; $54ba: $e7
    add c                                         ; $54bb: $81
    rst $38                                       ; $54bc: $ff
    ld b, $80                                     ; $54bd: $06 $80
    adc d                                         ; $54bf: $8a
    nop                                           ; $54c0: $00
    add b                                         ; $54c1: $80
    rst $08                                       ; $54c2: $cf
    ccf                                           ; $54c3: $3f
    rst $18                                       ; $54c4: $df
    ccf                                           ; $54c5: $3f
    cp [hl]                                       ; $54c6: $be
    ld a, [hl]                                    ; $54c7: $7e
    sbc h                                         ; $54c8: $9c
    ld a, h                                       ; $54c9: $7c
    ld [bc], a                                    ; $54ca: $02
    db $fc                                        ; $54cb: $fc
    add c                                         ; $54cc: $81
    ld a, b                                       ; $54cd: $78
    inc bc                                        ; $54ce: $03
    ld hl, sp+$04                                 ; $54cf: $f8 $04
    ldh a, [rTMA]                                 ; $54d1: $f0 $06
    ldh [$9c], a                                  ; $54d3: $e0 $9c
    db $db                                        ; $54d5: $db
    rst $20                                       ; $54d6: $e7
    db $ed                                        ; $54d7: $ed
    di                                            ; $54d8: $f3
    sbc e                                         ; $54d9: $9b
    rst $20                                       ; $54da: $e7
    rst $18                                       ; $54db: $df
    rst $20                                       ; $54dc: $e7
    db $ed                                        ; $54dd: $ed
    di                                            ; $54de: $f3
    ld [hl], a                                    ; $54df: $77
    ld a, e                                       ; $54e0: $7b
    ld c, b                                       ; $54e1: $48
    ld [hl], a                                    ; $54e2: $77
    ld l, a                                       ; $54e3: $6f
    ld [hl], e                                    ; $54e4: $73
    ld [hl], h                                    ; $54e5: $74
    ld a, e                                       ; $54e6: $7b
    scf                                           ; $54e7: $37
    jr c, jr_0f4_5523                             ; $54e8: $38 $39

    ld a, $1b                                     ; $54ea: $3e $1b
    inc e                                         ; $54ec: $1c
    dec e                                         ; $54ed: $1d
    ld e, $0c                                     ; $54ee: $1e $0c
    rrca                                          ; $54f0: $0f
    ld [bc], a                                    ; $54f1: $02
    rlca                                          ; $54f2: $07
    ld [bc], a                                    ; $54f3: $02
    inc bc                                        ; $54f4: $03
    ld [bc], a                                    ; $54f5: $02
    ldh [rTMA], a                                 ; $54f6: $e0 $06
    ret nz                                        ; $54f8: $c0

    ld [bc], a                                    ; $54f9: $02
    ret nc                                        ; $54fa: $d0

    ld [$04e0], sp                                ; $54fb: $08 $e0 $04
    ldh a, [$82]                                  ; $54fe: $f0 $82
    ld a, b                                       ; $5500: $78
    ld hl, sp+$02                                 ; $5501: $f8 $02
    db $fc                                        ; $5503: $fc
    add [hl]                                      ; $5504: $86
    cp [hl]                                       ; $5505: $be
    ld a, [hl]                                    ; $5506: $7e
    rst $18                                       ; $5507: $df
    ccf                                           ; $5508: $3f
    daa                                           ; $5509: $27
    rst $18                                       ; $550a: $df
    ld [bc], a                                    ; $550b: $02
    add b                                         ; $550c: $80
    ld [bc], a                                    ; $550d: $02
    ret nz                                        ; $550e: $c0

    ld [bc], a                                    ; $550f: $02
    ldh [rDIV], a                                 ; $5510: $e0 $04
    ldh a, [rSC]                                  ; $5512: $f0 $02
    ld hl, sp-$61                                 ; $5514: $f8 $9f
    cp b                                          ; $5516: $b8
    ld hl, sp+$7d                                 ; $5517: $f8 $7d
    db $fd                                        ; $5519: $fd
    sbc h                                         ; $551a: $9c
    ld a, h                                       ; $551b: $7c

jr_0f4_551c:
    cp h                                          ; $551c: $bc
    ld a, h                                       ; $551d: $7c
    sbc h                                         ; $551e: $9c
    ld a, h                                       ; $551f: $7c
    cp $3e                                        ; $5520: $fe $3e
    sbc [hl]                                      ; $5522: $9e

jr_0f4_5523:
    ld a, [hl]                                    ; $5523: $7e
    cp [hl]                                       ; $5524: $be
    ld a, [hl]                                    ; $5525: $7e
    add $3e                                       ; $5526: $c6 $3e
    sbc [hl]                                      ; $5528: $9e
    ld a, [hl]                                    ; $5529: $7e
    ld e, a                                       ; $552a: $5f
    ld h, a                                       ; $552b: $67
    db $ed                                        ; $552c: $ed
    di                                            ; $552d: $f3
    ld a, d                                       ; $552e: $7a
    ld a, a                                       ; $552f: $7f
    dec sp                                        ; $5530: $3b
    inc a                                         ; $5531: $3c
    dec e                                         ; $5532: $1d
    ld e, $0c                                     ; $5533: $1e $0c
    ld [bc], a                                    ; $5535: $02
    rrca                                          ; $5536: $0f
    add d                                         ; $5537: $82
    ld c, $06                                     ; $5538: $0e $06
    inc bc                                        ; $553a: $03
    rlca                                          ; $553b: $07
    add e                                         ; $553c: $83
    ld h, $27                                     ; $553d: $26 $27
    ld [bc], a                                    ; $553f: $02
    add hl, bc                                    ; $5540: $09
    inc bc                                        ; $5541: $03
    add d                                         ; $5542: $82
    ld b, $07                                     ; $5543: $06 $07
    rlca                                          ; $5545: $07
    add b                                         ; $5546: $80
    add c                                         ; $5547: $81
    nop                                           ; $5548: $00
    ld [bc], a                                    ; $5549: $02
    add b                                         ; $554a: $80
    add c                                         ; $554b: $81
    nop                                           ; $554c: $00
    ld [bc], a                                    ; $554d: $02
    add b                                         ; $554e: $80
    add d                                         ; $554f: $82
    nop                                           ; $5550: $00
    add b                                         ; $5551: $80
    ld [bc], a                                    ; $5552: $02
    nop                                           ; $5553: $00
    ld [bc], a                                    ; $5554: $02
    add b                                         ; $5555: $80
    add d                                         ; $5556: $82
    nop                                           ; $5557: $00
    add b                                         ; $5558: $80
    ld [bc], a                                    ; $5559: $02
    nop                                           ; $555a: $00
    add h                                         ; $555b: $84
    add b                                         ; $555c: $80
    nop                                           ; $555d: $00
    add b                                         ; $555e: $80
    nop                                           ; $555f: $00
    ld [bc], a                                    ; $5560: $02
    add b                                         ; $5561: $80
    and c                                         ; $5562: $a1
    nop                                           ; $5563: $00
    ld l, a                                       ; $5564: $6f
    sbc a                                         ; $5565: $9f
    dec de                                        ; $5566: $1b
    inc e                                         ; $5567: $1c
    dec de                                        ; $5568: $1b
    inc e                                         ; $5569: $1c
    inc sp                                        ; $556a: $33
    inc a                                         ; $556b: $3c
    ld l, l                                       ; $556c: $6d
    ld [hl], e                                    ; $556d: $73
    ld a, b                                       ; $556e: $78
    ld [hl], a                                    ; $556f: $77
    ld l, a                                       ; $5570: $6f
    ld [hl], e                                    ; $5571: $73
    ld l, c                                       ; $5572: $69
    ld [hl], a                                    ; $5573: $77
    ld h, [hl]                                    ; $5574: $66
    ld a, a                                       ; $5575: $7f
    dec hl                                        ; $5576: $2b
    scf                                           ; $5577: $37
    ld [hl], $39                                  ; $5578: $36 $39
    cpl                                           ; $557a: $2f
    jr nc, jr_0f4_55aa                            ; $557b: $30 $2d

    ld [hl-], a                                   ; $557d: $32
    ld c, l                                       ; $557e: $4d
    ld [hl], e                                    ; $557f: $73
    ld a, d                                       ; $5580: $7a
    ld [hl], l                                    ; $5581: $75
    ld h, l                                       ; $5582: $65
    ld a, a                                       ; $5583: $7f
    ld [bc], a                                    ; $5584: $02
    di                                            ; $5585: $f3
    add [hl]                                      ; $5586: $86
    rra                                           ; $5587: $1f
    ccf                                           ; $5588: $3f
    ld e, $3e                                     ; $5589: $1e $3e
    ld l, $1e                                     ; $558b: $2e $1e
    ld [bc], a                                    ; $558d: $02
    inc a                                         ; $558e: $3c
    inc b                                         ; $558f: $04
    jr c, jr_0f4_5598                             ; $5590: $38 $06

    jr nc, jr_0f4_5596                            ; $5592: $30 $02

    jr c, jr_0f4_551c                             ; $5594: $38 $86

jr_0f4_5596:
    jr jr_0f4_55d0                                ; $5596: $18 $38

jr_0f4_5598:
    inc l                                         ; $5598: $2c
    inc a                                         ; $5599: $3c
    ld [$0238], sp                                ; $559a: $08 $38 $02
    inc [hl]                                      ; $559d: $34
    ld [bc], a                                    ; $559e: $02
    inc e                                         ; $559f: $1c
    ld [bc], a                                    ; $55a0: $02
    jr z, jr_0f4_55a5                             ; $55a1: $28 $02

    or e                                          ; $55a3: $b3
    ld [bc], a                                    ; $55a4: $02

jr_0f4_55a5:
    dec l                                         ; $55a5: $2d
    inc e                                         ; $55a6: $1c
    nop                                           ; $55a7: $00
    ld [bc], a                                    ; $55a8: $02
    inc bc                                        ; $55a9: $03

jr_0f4_55aa:
    ld e, $00                                     ; $55aa: $1e $00
    rst $38                                       ; $55ac: $ff
    ld hl, $f80e                                  ; $55ad: $21 $0e $f8
    dec bc                                        ; $55b0: $0b
    ldh a, [$0d]                                  ; $55b1: $f0 $0d
    xor h                                         ; $55b3: $ac
    ei                                            ; $55b4: $fb
    or b                                          ; $55b5: $b0
    inc bc                                        ; $55b6: $03
    cp h                                          ; $55b7: $bc
    rst $38                                       ; $55b8: $ff
    cp l                                          ; $55b9: $bd
    inc b                                         ; $55ba: $04
    call z, $cdfc                                 ; $55bb: $cc $fc $cd
    inc bc                                        ; $55be: $03
    call c, $dcf5                                 ; $55bf: $dc $f5 $dc
    db $fd                                        ; $55c2: $fd
    db $ec                                        ; $55c3: $ec
    di                                            ; $55c4: $f3
    db $ec                                        ; $55c5: $ec
    ld a, [$f7fc]                                 ; $55c6: $fa $fc $f7
    db $fc                                        ; $55c9: $fc
    rst $38                                       ; $55ca: $ff
    dec bc                                        ; $55cb: $0b
    nop                                           ; $55cc: $00
    inc c                                         ; $55cd: $0c
    ld hl, sp+$02                                 ; $55ce: $f8 $02

jr_0f4_55d0:
    db $10                                        ; $55d0: $10
    ld [bc], a                                    ; $55d1: $02
    xor h                                         ; $55d2: $ac
    ld [bc], a                                    ; $55d3: $02
    ld [hl], e                                    ; $55d4: $73
    ld [bc], a                                    ; $55d5: $02
    sbc l                                         ; $55d6: $9d
    ld [bc], a                                    ; $55d7: $02
    ccf                                           ; $55d8: $3f
    adc d                                         ; $55d9: $8a
    add hl, de                                    ; $55da: $19
    rra                                           ; $55db: $1f
    ld a, $3d                                     ; $55dc: $3e $3d
    rrca                                          ; $55de: $0f
    ld c, $17                                     ; $55df: $0e $17
    ld d, $0e                                     ; $55e1: $16 $0e
    rrca                                          ; $55e3: $0f
    ld [bc], a                                    ; $55e4: $02
    rlca                                          ; $55e5: $07
    ld [bc], a                                    ; $55e6: $02
    inc bc                                        ; $55e7: $03
    ld [bc], a                                    ; $55e8: $02
    dec b                                         ; $55e9: $05
    ld [bc], a                                    ; $55ea: $02
    inc bc                                        ; $55eb: $03
    ld [bc], a                                    ; $55ec: $02
    rlca                                          ; $55ed: $07
    ld [bc], a                                    ; $55ee: $02
    ld bc, $8002                                  ; $55ef: $01 $02 $80
    ld [bc], a                                    ; $55f2: $02
    and b                                         ; $55f3: $a0
    ld [bc], a                                    ; $55f4: $02
    ldh [$9a], a                                  ; $55f5: $e0 $9a
    ld [hl], b                                    ; $55f7: $70
    ldh a, [$a8]                                  ; $55f8: $f0 $a8
    ld l, b                                       ; $55fa: $68
    ld a, b                                       ; $55fb: $78
    ld hl, sp+$6c                                 ; $55fc: $f8 $6c
    sbc h                                         ; $55fe: $9c
    cp [hl]                                       ; $55ff: $be
    sbc $ac                                       ; $5600: $de $ac
    call c, $cff7                                 ; $5602: $dc $f7 $cf
    sbc [hl]                                      ; $5605: $9e
    and $db                                       ; $5606: $e6 $db
    rst $20                                       ; $5608: $e7
    db $ed                                        ; $5609: $ed
    di                                            ; $560a: $f3
    sbc e                                         ; $560b: $9b
    rst $20                                       ; $560c: $e7
    call $f5f3                                    ; $560d: $cd $f3 $f5
    ei                                            ; $5610: $fb
    ld [bc], a                                    ; $5611: $02
    jr nc, jr_0f4_5616                            ; $5612: $30 $02

    db $10                                        ; $5614: $10
    ld [bc], a                                    ; $5615: $02

jr_0f4_5616:
    jr nc, jr_0f4_561a                            ; $5616: $30 $02

    db $10                                        ; $5618: $10
    add e                                         ; $5619: $83

jr_0f4_561a:
    ld c, $0f                                     ; $561a: $0e $0f
    dec c                                         ; $561c: $0d
    ld [bc], a                                    ; $561d: $02
    ld c, $85                                     ; $561e: $0e $85
    rrca                                          ; $5620: $0f
    dec c                                         ; $5621: $0d
    rrca                                          ; $5622: $0f
    ld b, $07                                     ; $5623: $06 $07
    ld [bc], a                                    ; $5625: $02
    adc a                                         ; $5626: $8f
    adc h                                         ; $5627: $8c
    ld c, $0f                                     ; $5628: $0e $0f
    inc c                                         ; $562a: $0c
    rrca                                          ; $562b: $0f
    ld c, $0f                                     ; $562c: $0e $0f
    dec e                                         ; $562e: $1d
    ld e, $1c                                     ; $562f: $1e $1c
    rra                                           ; $5631: $1f
    ld e, $1f                                     ; $5632: $1e $1f
    ld [bc], a                                    ; $5634: $02
    ld bc, $0002                                  ; $5635: $01 $02 $00
    ld [bc], a                                    ; $5638: $02
    ld bc, $1a85                                  ; $5639: $01 $85 $1a
    ld b, $1f                                     ; $563c: $06 $1f
    rlca                                          ; $563e: $07
    inc de                                        ; $563f: $13
    ld [bc], a                                    ; $5640: $02
    rrca                                          ; $5641: $0f
    adc d                                         ; $5642: $8a
    inc de                                        ; $5643: $13
    dec c                                         ; $5644: $0d
    inc de                                        ; $5645: $13
    dec de                                        ; $5646: $1b
    rlca                                          ; $5647: $07
    rrca                                          ; $5648: $0f
    inc de                                        ; $5649: $13
    add hl, de                                    ; $564a: $19
    rlca                                          ; $564b: $07
    rrca                                          ; $564c: $0f
    ld [bc], a                                    ; $564d: $02
    rla                                           ; $564e: $17
    add a                                         ; $564f: $87
    rrca                                          ; $5650: $0f
    dec de                                        ; $5651: $1b
    rlca                                          ; $5652: $07
    dec de                                        ; $5653: $1b
    rlca                                          ; $5654: $07
    adc $f6                                       ; $5655: $ce $f6
    ld [bc], a                                    ; $5657: $02
    ld bc, $0304                                  ; $5658: $01 $04 $03
    ld b, $07                                     ; $565b: $06 $07
    add d                                         ; $565d: $82
    ld c, $0f                                     ; $565e: $0e $0f
    ld [bc], a                                    ; $5660: $02
    ld c, a                                       ; $5661: $4f
    add c                                         ; $5662: $81
    ld e, $03                                     ; $5663: $1e $03
    rra                                           ; $5665: $1f
    xor h                                         ; $5666: $ac
    add hl, de                                    ; $5667: $19
    rra                                           ; $5668: $1f
    inc a                                         ; $5669: $3c
    ccf                                           ; $566a: $3f
    inc sp                                        ; $566b: $33
    inc a                                         ; $566c: $3c
    ld a, l                                       ; $566d: $7d
    ld a, [hl]                                    ; $566e: $7e
    ld a, e                                       ; $566f: $7b
    ld a, h                                       ; $5670: $7c
    ld [c], a                                     ; $5671: $e2
    db $fd                                        ; $5672: $fd
    ld e, l                                       ; $5673: $5d
    ld [hl], e                                    ; $5674: $73
    rrca                                          ; $5675: $0f
    ld [hl], e                                    ; $5676: $73
    ld l, l                                       ; $5677: $6d
    ld [hl], e                                    ; $5678: $73
    dec de                                        ; $5679: $1b
    ld h, a                                       ; $567a: $67
    ld a, d                                       ; $567b: $7a
    ld b, [hl]                                    ; $567c: $46
    ld [hl], $4e                                  ; $567d: $36 $4e
    ld [hl], $4e                                  ; $567f: $36 $4e
    ld l, h                                       ; $5681: $6c
    inc e                                         ; $5682: $1c
    inc [hl]                                      ; $5683: $34
    ld c, h                                       ; $5684: $4c
    ld l, h                                       ; $5685: $6c
    inc e                                         ; $5686: $1c
    ld l, h                                       ; $5687: $6c
    inc e                                         ; $5688: $1c
    ld e, b                                       ; $5689: $58
    jr c, jr_0f4_56e4                             ; $568a: $38 $58

    jr c, @+$72                                   ; $568c: $38 $70

    jr nc, jr_0f4_56c4                            ; $568e: $30 $34

    ld [hl], h                                    ; $5690: $74
    ld h, b                                       ; $5691: $60
    ldh [rSC], a                                  ; $5692: $e0 $02
    ld bc, $8302                                  ; $5694: $01 $02 $83
    ld [bc], a                                    ; $5697: $02
    inc bc                                        ; $5698: $03
    ld [bc], a                                    ; $5699: $02
    rlca                                          ; $569a: $07
    xor c                                         ; $569b: $a9

jr_0f4_569c:
    ld b, $07                                     ; $569c: $06 $07
    dec c                                         ; $569e: $0d
    ld c, $1e                                     ; $569f: $0e $1e
    rra                                           ; $56a1: $1f
    add hl, de                                    ; $56a2: $19
    ld e, $3f                                     ; $56a3: $1e $3f
    inc a                                         ; $56a5: $3c
    dec sp                                        ; $56a6: $3b
    inc a                                         ; $56a7: $3c
    halt                                          ; $56a8: $76
    ld a, c                                       ; $56a9: $79
    ld a, e                                       ; $56aa: $7b
    ld a, h                                       ; $56ab: $7c
    halt                                          ; $56ac: $76
    ld a, c                                       ; $56ad: $79
    push hl                                       ; $56ae: $e5
    ei                                            ; $56af: $fb
    sub $f9                                       ; $56b0: $d6 $f9
    db $ed                                        ; $56b2: $ed
    di                                            ; $56b3: $f3
    call c, $b3e0                                 ; $56b4: $dc $e0 $b3
    rst $08                                       ; $56b7: $cf
    or a                                          ; $56b8: $b7
    rst $08                                       ; $56b9: $cf
    ld l, [hl]                                    ; $56ba: $6e
    sbc [hl]                                      ; $56bb: $9e
    ld e, h                                       ; $56bc: $5c
    cp h                                          ; $56bd: $bc
    sbc b                                         ; $56be: $98
    ld a, b                                       ; $56bf: $78
    ld hl, sp+$78                                 ; $56c0: $f8 $78
    or b                                          ; $56c2: $b0
    ld [hl], b                                    ; $56c3: $70

jr_0f4_56c4:
    and b                                         ; $56c4: $a0
    ld [bc], a                                    ; $56c5: $02
    ld h, b                                       ; $56c6: $60
    inc bc                                        ; $56c7: $03
    ldh [$81], a                                  ; $56c8: $e0 $81
    ld b, b                                       ; $56ca: $40
    inc bc                                        ; $56cb: $03
    ret nz                                        ; $56cc: $c0

    ld b, $80                                     ; $56cd: $06 $80
    sbc e                                         ; $56cf: $9b
    ld a, a                                       ; $56d0: $7f
    ld a, h                                       ; $56d1: $7c
    ld [hl], e                                    ; $56d2: $73
    ld a, h                                       ; $56d3: $7c
    ld h, a                                       ; $56d4: $67
    ld a, b                                       ; $56d5: $78
    ld a, a                                       ; $56d6: $7f
    ld a, b                                       ; $56d7: $78
    ld h, e                                       ; $56d8: $63
    ld a, h                                       ; $56d9: $7c
    ld a, l                                       ; $56da: $7d
    ld a, [hl]                                    ; $56db: $7e
    ld [hl], e                                    ; $56dc: $73
    ld a, h                                       ; $56dd: $7c
    ld a, e                                       ; $56de: $7b
    ld a, h                                       ; $56df: $7c
    ld h, a                                       ; $56e0: $67
    ld a, h                                       ; $56e1: $7c
    ld a, c                                       ; $56e2: $79
    ld a, [hl]                                    ; $56e3: $7e

jr_0f4_56e4:
    dec a                                         ; $56e4: $3d
    ld a, $33                                     ; $56e5: $3e $33
    inc a                                         ; $56e7: $3c
    cp l                                          ; $56e8: $bd
    cp [hl]                                       ; $56e9: $be
    inc e                                         ; $56ea: $1c
    inc bc                                        ; $56eb: $03
    rra                                           ; $56ec: $1f
    add d                                         ; $56ed: $82
    inc c                                         ; $56ee: $0c
    rrca                                          ; $56ef: $0f
    ld [bc], a                                    ; $56f0: $02
    ld [hl], b                                    ; $56f1: $70
    add a                                         ; $56f2: $87
    ld d, b                                       ; $56f3: $50
    jr nc, jr_0f4_572a                            ; $56f4: $30 $34

    ld [hl], h                                    ; $56f6: $74
    jr nc, @+$72                                  ; $56f7: $30 $70

    ld d, b                                       ; $56f9: $50
    ld [bc], a                                    ; $56fa: $02
    ld [hl], b                                    ; $56fb: $70
    ld [bc], a                                    ; $56fc: $02
    jr nc, jr_0f4_569c                            ; $56fd: $30 $9d

    ld [hl], b                                    ; $56ff: $70
    ld d, b                                       ; $5700: $50
    jr nc, jr_0f4_5753                            ; $5701: $30 $50

    jr nc, @+$5a                                  ; $5703: $30 $58

    jr c, jr_0f4_577f                             ; $5705: $38 $78

    jr jr_0f4_5775                                ; $5707: $18 $6c

    inc e                                         ; $5709: $1c
    inc a                                         ; $570a: $3c
    ld e, h                                       ; $570b: $5c
    ld l, $5e                                     ; $570c: $2e $5e
    inc sp                                        ; $570e: $33
    ld c, a                                       ; $570f: $4f
    ld a, a                                       ; $5710: $7f
    ld c, a                                       ; $5711: $4f
    pop af                                        ; $5712: $f1
    cp $7f                                        ; $5713: $fe $7f
    ld a, h                                       ; $5715: $7c
    inc a                                         ; $5716: $3c
    ccf                                           ; $5717: $3f
    jr jr_0f4_5739                                ; $5718: $18 $1f

    ld e, $1f                                     ; $571a: $1e $1f

jr_0f4_571c:
    ld [bc], a                                    ; $571c: $02
    rrca                                          ; $571d: $0f
    inc b                                         ; $571e: $04
    rlca                                          ; $571f: $07
    add d                                         ; $5720: $82
    ld b, $07                                     ; $5721: $06 $07
    ld [$0203], sp                                ; $5723: $08 $03 $02
    ld bc, $0302                                  ; $5726: $01 $02 $03
    ld [bc], a                                    ; $5729: $02

jr_0f4_572a:
    ld b, $81                                     ; $572a: $06 $81
    ld [hl], b                                    ; $572c: $70
    ld [bc], a                                    ; $572d: $02
    ldh a, [$99]                                  ; $572e: $f0 $99
    jr nc, @-$2e                                  ; $5730: $30 $d0

    jr nc, jr_0f4_571c                            ; $5732: $30 $e8

    jr c, jr_0f4_578e                             ; $5734: $38 $58

    cp b                                          ; $5736: $b8
    ld c, h                                       ; $5737: $4c
    cp h                                          ; $5738: $bc

jr_0f4_5739:
    inc a                                         ; $5739: $3c
    call z, $8c74                                 ; $573a: $cc $74 $8c
    or [hl]                                       ; $573d: $b6
    adc $6a                                       ; $573e: $ce $6a
    sbc [hl]                                      ; $5740: $9e
    ld a, $c6                                     ; $5741: $3e $c6
    db $eb                                        ; $5743: $eb
    sub a                                         ; $5744: $97
    ld d, c                                       ; $5745: $51
    rst $38                                       ; $5746: $ff
    sub l                                         ; $5747: $95
    db $fd                                        ; $5748: $fd
    ld [bc], a                                    ; $5749: $02
    xor $02                                       ; $574a: $ee $02
    ei                                            ; $574c: $fb
    ld [bc], a                                    ; $574d: $02
    ld bc, $6e02                                  ; $574e: $01 $02 $6e
    ld [bc], a                                    ; $5751: $02
    or h                                          ; $5752: $b4

jr_0f4_5753:
    ld a, [de]                                    ; $5753: $1a
    nop                                           ; $5754: $00
    ld [bc], a                                    ; $5755: $02
    inc bc                                        ; $5756: $03
    ld [bc], a                                    ; $5757: $02
    ld bc, $001c                                  ; $5758: $01 $1c $00
    rst $38                                       ; $575b: $ff
    ld hl, $f80e                                  ; $575c: $21 $0e $f8
    dec bc                                        ; $575f: $0b
    ldh a, [$0d]                                  ; $5760: $f0 $0d
    xor h                                         ; $5762: $ac
    ei                                            ; $5763: $fb
    or b                                          ; $5764: $b0
    inc bc                                        ; $5765: $03
    cp h                                          ; $5766: $bc
    ld bc, $04bd                                  ; $5767: $01 $bd $04
    call z, $cdfc                                 ; $576a: $cc $fc $cd
    inc b                                         ; $576d: $04
    call c, $dcf5                                 ; $576e: $dc $f5 $dc
    db $fd                                        ; $5771: $fd
    db $ec                                        ; $5772: $ec
    ld a, [c]                                     ; $5773: $f2
    db $ec                                        ; $5774: $ec

jr_0f4_5775:
    ld a, [$f7fc]                                 ; $5775: $fa $fc $f7
    db $fc                                        ; $5778: $fc
    rst $38                                       ; $5779: $ff
    inc c                                         ; $577a: $0c
    db $fd                                        ; $577b: $fd
    inc c                                         ; $577c: $0c
    cp $02                                        ; $577d: $fe $02

jr_0f4_577f:
    db $10                                        ; $577f: $10
    ld [bc], a                                    ; $5780: $02
    inc h                                         ; $5781: $24
    ld [bc], a                                    ; $5782: $02
    inc sp                                        ; $5783: $33
    ld [bc], a                                    ; $5784: $02
    sub l                                         ; $5785: $95
    ld [bc], a                                    ; $5786: $02
    ccf                                           ; $5787: $3f
    adc b                                         ; $5788: $88
    rla                                           ; $5789: $17
    rra                                           ; $578a: $1f
    dec sp                                        ; $578b: $3b
    ccf                                           ; $578c: $3f
    dec c                                         ; $578d: $0d

jr_0f4_578e:
    dec bc                                        ; $578e: $0b
    ld d, $15                                     ; $578f: $16 $15
    ld [bc], a                                    ; $5791: $02
    rrca                                          ; $5792: $0f
    add d                                         ; $5793: $82
    dec b                                         ; $5794: $05
    ld b, $02                                     ; $5795: $06 $02
    inc bc                                        ; $5797: $03
    add d                                         ; $5798: $82
    inc b                                         ; $5799: $04
    dec b                                         ; $579a: $05
    ld [bc], a                                    ; $579b: $02
    inc de                                        ; $579c: $13
    add d                                         ; $579d: $82
    ld b, $07                                     ; $579e: $06 $07
    ld [bc], a                                    ; $57a0: $02
    ld bc, $8002                                  ; $57a1: $01 $02 $80
    ld [bc], a                                    ; $57a4: $02
    and b                                         ; $57a5: $a0
    ld [bc], a                                    ; $57a6: $02
    ldh [rSC], a                                  ; $57a7: $e0 $02
    ldh a, [rSC]                                  ; $57a9: $f0 $02
    add sp, $02                                   ; $57ab: $e8 $02
    ld hl, sp-$6c                                 ; $57ad: $f8 $94
    cp h                                          ; $57af: $bc
    ld a, h                                       ; $57b0: $7c
    cp $7e                                        ; $57b1: $fe $7e
    cp h                                          ; $57b3: $bc
    ld a, h                                       ; $57b4: $7c
    rst $18                                       ; $57b5: $df
    ccf                                           ; $57b6: $3f
    ld a, [hl]                                    ; $57b7: $7e
    sbc [hl]                                      ; $57b8: $9e
    ld l, a                                       ; $57b9: $6f
    sbc a                                         ; $57ba: $9f
    or a                                          ; $57bb: $b7
    rst $08                                       ; $57bc: $cf
    rst $28                                       ; $57bd: $ef
    sbc a                                         ; $57be: $9f
    scf                                           ; $57bf: $37
    rst $08                                       ; $57c0: $cf
    rst $10                                       ; $57c1: $d7
    rst $28                                       ; $57c2: $ef
    ld [bc], a                                    ; $57c3: $02
    ret nz                                        ; $57c4: $c0

    ld [bc], a                                    ; $57c5: $02
    ld b, b                                       ; $57c6: $40
    ld [bc], a                                    ; $57c7: $02
    ret nz                                        ; $57c8: $c0

    ld [bc], a                                    ; $57c9: $02
    ld b, b                                       ; $57ca: $40
    add l                                         ; $57cb: $85
    dec l                                         ; $57cc: $2d
    inc sp                                        ; $57cd: $33
    ccf                                           ; $57ce: $3f
    inc hl                                        ; $57cf: $23
    add hl, hl                                    ; $57d0: $29
    ld [bc], a                                    ; $57d1: $02
    scf                                           ; $57d2: $37
    sub c                                         ; $57d3: $91
    add hl, sp                                    ; $57d4: $39
    ld d, $19                                     ; $57d5: $16 $19
    dec a                                         ; $57d7: $3d
    inc sp                                        ; $57d8: $33
    daa                                           ; $57d9: $27
    add hl, sp                                    ; $57da: $39
    inc a                                         ; $57db: $3c
    inc sp                                        ; $57dc: $33
    daa                                           ; $57dd: $27
    dec sp                                        ; $57de: $3b
    ld a, e                                       ; $57df: $7b
    ld h, a                                       ; $57e0: $67
    ld c, l                                       ; $57e1: $4d
    ld [hl], e                                    ; $57e2: $73
    ld a, l                                       ; $57e3: $7d
    ld [hl], e                                    ; $57e4: $73
    ld [bc], a                                    ; $57e5: $02
    ld bc, $0002                                  ; $57e6: $01 $02 $00
    ld [bc], a                                    ; $57e9: $02
    ld bc, $0602                                  ; $57ea: $01 $02 $06
    ld d, $07                                     ; $57ed: $16 $07
    add d                                         ; $57ef: $82
    ld a, $de                                     ; $57f0: $3e $de
    ld [bc], a                                    ; $57f2: $02
    ld bc, $0284                                  ; $57f3: $01 $84 $02
    inc bc                                        ; $57f6: $03
    ld [bc], a                                    ; $57f7: $02
    inc bc                                        ; $57f8: $03
    ld [bc], a                                    ; $57f9: $02
    rlca                                          ; $57fa: $07
    add c                                         ; $57fb: $81
    ld b, $02                                     ; $57fc: $06 $02
    rlca                                          ; $57fe: $07
    and [hl]                                      ; $57ff: $a6
    ld b, $0d                                     ; $5800: $06 $0d
    ld c, $0d                                     ; $5802: $0e $0d
    ld c, $5b                                     ; $5804: $0e $5b
    ld e, h                                       ; $5806: $5c
    dec e                                         ; $5807: $1d
    ld e, $1f                                     ; $5808: $1e $1f
    inc e                                         ; $580a: $1c
    inc sp                                        ; $580b: $33
    inc a                                         ; $580c: $3c
    ld a, $31                                     ; $580d: $3e $31
    ld [hl], h                                    ; $580f: $74
    ld a, e                                       ; $5810: $7b
    ld a, a                                       ; $5811: $7f
    ld [hl], c                                    ; $5812: $71
    xor c                                         ; $5813: $a9
    rst $30                                       ; $5814: $f7
    xor $9e                                       ; $5815: $ee $9e
    ld a, [hl]                                    ; $5817: $7e
    sbc [hl]                                      ; $5818: $9e
    ld l, [hl]                                    ; $5819: $6e
    sbc [hl]                                      ; $581a: $9e
    sbc $3e                                       ; $581b: $de $3e
    call c, $bd3c                                 ; $581d: $dc $3c $bd
    ld a, l                                       ; $5820: $7d
    cp h                                          ; $5821: $bc
    ld a, h                                       ; $5822: $7c
    ld a, b                                       ; $5823: $78
    ld hl, sp-$48                                 ; $5824: $f8 $b8
    ld [bc], a                                    ; $5826: $02
    ld a, b                                       ; $5827: $78
    add e                                         ; $5828: $83
    ld hl, sp+$78                                 ; $5829: $f8 $78
    ld hl, sp+$04                                 ; $582b: $f8 $04
    ldh a, [rDIV]                                 ; $582d: $f0 $04
    ldh [rSC], a                                  ; $582f: $e0 $02
    ret nz                                        ; $5831: $c0

    ld [bc], a                                    ; $5832: $02
    ld bc, $02a9                                  ; $5833: $01 $a9 $02
    inc bc                                        ; $5836: $03
    ld [bc], a                                    ; $5837: $02
    inc bc                                        ; $5838: $03
    dec b                                         ; $5839: $05
    ld b, $05                                     ; $583a: $06 $05
    ld b, $0e                                     ; $583c: $06 $0e
    dec c                                         ; $583e: $0d
    dec de                                        ; $583f: $1b
    dec e                                         ; $5840: $1d
    ld d, $19                                     ; $5841: $16 $19
    ld a, $31                                     ; $5843: $3e $31
    dec l                                         ; $5845: $2d
    inc sp                                        ; $5846: $33
    ld e, e                                       ; $5847: $5b
    ld h, a                                       ; $5848: $67
    ld l, l                                       ; $5849: $6d

Jump_0f4_584a:
    ld [hl], e                                    ; $584a: $73
    ld e, e                                       ; $584b: $5b
    ld h, a                                       ; $584c: $67
    rst $10                                       ; $584d: $d7
    rst $28                                       ; $584e: $ef
    db $db                                        ; $584f: $db
    rst $20                                       ; $5850: $e7
    or a                                          ; $5851: $b7
    rst $08                                       ; $5852: $cf
    halt                                          ; $5853: $76
    adc [hl]                                      ; $5854: $8e
    rst $08                                       ; $5855: $cf
    ccf                                           ; $5856: $3f
    rst $18                                       ; $5857: $df
    ccf                                           ; $5858: $3f
    cp [hl]                                       ; $5859: $be
    ld a, [hl]                                    ; $585a: $7e
    ld a, h                                       ; $585b: $7c
    db $fc                                        ; $585c: $fc
    ld a, b                                       ; $585d: $78
    inc bc                                        ; $585e: $03
    ld hl, sp+$02                                 ; $585f: $f8 $02
    ldh a, [rSC]                                  ; $5861: $f0 $02
    db $e4                                        ; $5863: $e4
    inc b                                         ; $5864: $04
    ldh [rDIV], a                                 ; $5865: $e0 $04
    ret nz                                        ; $5867: $c0

    ld b, $80                                     ; $5868: $06 $80
    sbc [hl]                                      ; $586a: $9e
    cp a                                          ; $586b: $bf
    cp c                                          ; $586c: $b9
    scf                                           ; $586d: $37
    jr c, jr_0f4_589e                             ; $586e: $38 $2e

    ld sp, $313e                                  ; $5870: $31 $3e $31
    scf                                           ; $5873: $37
    add hl, sp                                    ; $5874: $39
    dec sp                                        ; $5875: $3b
    inc a                                         ; $5876: $3c
    ld h, $39                                     ; $5877: $26 $39
    scf                                           ; $5879: $37
    jr c, jr_0f4_58ba                             ; $587a: $38 $3e

    add hl, sp                                    ; $587c: $39
    inc sp                                        ; $587d: $33
    inc a                                         ; $587e: $3c
    dec de                                        ; $587f: $1b
    inc e                                         ; $5880: $1c
    rra                                           ; $5881: $1f
    jr jr_0f4_589e                                ; $5882: $18 $1a

    dec e                                         ; $5884: $1d
    inc c                                         ; $5885: $0c
    rrca                                          ; $5886: $0f
    ld c, $0f                                     ; $5887: $0e $0f
    ld [bc], a                                    ; $5889: $02
    rlca                                          ; $588a: $07
    ld [bc], a                                    ; $588b: $02
    ldh a, [$81]                                  ; $588c: $f0 $81
    ld [hl], b                                    ; $588e: $70
    dec b                                         ; $588f: $05
    ldh a, [$81]                                  ; $5890: $f0 $81
    ld [hl], b                                    ; $5892: $70
    dec b                                         ; $5893: $05
    ldh a, [$85]                                  ; $5894: $f0 $85
    ld [hl], b                                    ; $5896: $70
    ldh a, [rSVBK]                                ; $5897: $f0 $70
    ldh a, [$78]                                  ; $5899: $f0 $78
    ld [bc], a                                    ; $589b: $02
    ld hl, sp-$66                                 ; $589c: $f8 $9a

jr_0f4_589e:
    ld a, b                                       ; $589e: $78
    cp h                                          ; $589f: $bc
    ld a, h                                       ; $58a0: $7c
    db $fc                                        ; $58a1: $fc
    ld a, h                                       ; $58a2: $7c
    cp [hl]                                       ; $58a3: $be
    ld a, [hl]                                    ; $58a4: $7e
    rst $08                                       ; $58a5: $cf
    ccf                                           ; $58a6: $3f
    rst $38                                       ; $58a7: $ff
    ccf                                           ; $58a8: $3f
    push bc                                       ; $58a9: $c5
    ei                                            ; $58aa: $fb
    ld a, a                                       ; $58ab: $7f
    ld [hl], b                                    ; $58ac: $70
    inc sp                                        ; $58ad: $33
    inc a                                         ; $58ae: $3c
    rra                                           ; $58af: $1f
    inc e                                         ; $58b0: $1c
    add hl, de                                    ; $58b1: $19
    ld e, $0d                                     ; $58b2: $1e $0d
    ld c, $06                                     ; $58b4: $0e $06
    rlca                                          ; $58b6: $07
    ld b, $03                                     ; $58b7: $06 $03
    rlca                                          ; $58b9: $07

jr_0f4_58ba:
    inc b                                         ; $58ba: $04
    inc bc                                        ; $58bb: $03
    add d                                         ; $58bc: $82
    ld [bc], a                                    ; $58bd: $02
    inc bc                                        ; $58be: $03
    ld [bc], a                                    ; $58bf: $02
    ld bc, $0282                                  ; $58c0: $01 $82 $02
    inc bc                                        ; $58c3: $03
    ld [bc], a                                    ; $58c4: $02
    ld bc, $0202                                  ; $58c5: $01 $02 $02
    inc b                                         ; $58c8: $04
    ldh a, [$98]                                  ; $58c9: $f0 $98
    ld [hl], b                                    ; $58cb: $70
    ldh a, [$b8]                                  ; $58cc: $f0 $b8
    ld hl, sp+$18                                 ; $58ce: $f8 $18
    ld hl, sp-$44                                 ; $58d0: $f8 $bc
    ld a, h                                       ; $58d2: $7c
    db $fc                                        ; $58d3: $fc
    inc a                                         ; $58d4: $3c
    call c, $4e3c                                 ; $58d5: $dc $3c $4e
    cp [hl]                                       ; $58d8: $be
    ld l, [hl]                                    ; $58d9: $6e
    sbc [hl]                                      ; $58da: $9e
    and $1e                                       ; $58db: $e6 $1e
    ld a, a                                       ; $58dd: $7f
    sbc a                                         ; $58de: $9f
    ld b, e                                       ; $58df: $43
    rst $38                                       ; $58e0: $ff
    sub [hl]                                      ; $58e1: $96
    cp $02                                        ; $58e2: $fe $02
    rst $30                                       ; $58e4: $f7
    ld [bc], a                                    ; $58e5: $02
    db $dd                                        ; $58e6: $dd
    ld [bc], a                                    ; $58e7: $02
    ld [$5b02], a                                 ; $58e8: $ea $02 $5b
    inc e                                         ; $58eb: $1c
    nop                                           ; $58ec: $00
    ld [bc], a                                    ; $58ed: $02
    ld bc, $001e                                  ; $58ee: $01 $1e $00
    rst $38                                       ; $58f1: $ff
    inc hl                                        ; $58f2: $23
    rrca                                          ; $58f3: $0f
    ld hl, sp+$0b                                 ; $58f4: $f8 $0b
    ldh a, [$0d]                                  ; $58f6: $f0 $0d
    xor l                                         ; $58f8: $ad
    or $ac                                        ; $58f9: $f6 $ac
    ld a, [$f6bd]                                 ; $58fb: $fa $bd $f6
    cp h                                          ; $58fe: $bc
    cp $c6                                        ; $58ff: $fe $c6
    inc bc                                        ; $5901: $03
    call z, $d6fe                                 ; $5902: $cc $fe $d6
    ld b, $dc                                     ; $5905: $06 $dc
    cp $e6                                        ; $5907: $fe $e6
    inc bc                                        ; $5909: $03
    db $ec                                        ; $590a: $ec
    ld sp, hl                                     ; $590b: $f9
    db $ec                                        ; $590c: $ec
    ei                                            ; $590d: $fb
    db $fc                                        ; $590e: $fc
    ld hl, sp-$04                                 ; $590f: $f8 $fc
    nop                                           ; $5911: $00
    inc c                                         ; $5912: $0c
    cp $0c                                        ; $5913: $fe $0c
    rst $38                                       ; $5915: $ff
    ld [bc], a                                    ; $5916: $02
    dec b                                         ; $5917: $05
    ld [bc], a                                    ; $5918: $02
    dec bc                                        ; $5919: $0b
    ld [bc], a                                    ; $591a: $02
    rrca                                          ; $591b: $0f
    sub c                                         ; $591c: $91
    ccf                                           ; $591d: $3f

jr_0f4_591e:
    inc a                                         ; $591e: $3c
    inc e                                         ; $591f: $1c
    rra                                           ; $5920: $1f
    add hl, sp                                    ; $5921: $39
    ccf                                           ; $5922: $3f
    ld e, h                                       ; $5923: $5c
    ld e, a                                       ; $5924: $5f
    scf                                           ; $5925: $37
    add hl, sp                                    ; $5926: $39
    ld a, a                                       ; $5927: $7f
    ld a, c                                       ; $5928: $79
    ld [hl], d                                    ; $5929: $72
    ld a, [hl]                                    ; $592a: $7e
    rst $38                                       ; $592b: $ff
    di                                            ; $592c: $f3
    ld l, a                                       ; $592d: $6f
    ld [bc], a                                    ; $592e: $02
    ld [hl], e                                    ; $592f: $73
    add a                                         ; $5930: $87
    ld a, a                                       ; $5931: $7f
    xor [hl]                                      ; $5932: $ae

jr_0f4_5933:
    or [hl]                                       ; $5933: $b6
    di                                            ; $5934: $f3
    rst $38                                       ; $5935: $ff
    push hl                                       ; $5936: $e5
    ei                                            ; $5937: $fb
    ld [bc], a                                    ; $5938: $02
    ld [$0602], sp                                ; $5939: $08 $02 $06
    ld [bc], a                                    ; $593c: $02
    dec c                                         ; $593d: $0d

jr_0f4_593e:
    ld [bc], a                                    ; $593e: $02
    ld c, $02                                     ; $593f: $0e $02
    inc c                                         ; $5941: $0c
    ld [bc], a                                    ; $5942: $02
    ld a, [bc]                                    ; $5943: $0a
    ld [bc], a                                    ; $5944: $02

jr_0f4_5945:
    ld [$0c02], sp                                ; $5945: $08 $02 $0c
    ld b, $08                                     ; $5948: $06 $08
    ld [bc], a                                    ; $594a: $02
    nop                                           ; $594b: $00
    ld [bc], a                                    ; $594c: $02
    ld [$0002], sp                                ; $594d: $08 $02 $00
    ld [bc], a                                    ; $5950: $02
    ld [$0002], sp                                ; $5951: $08 $02 $00
    sub b                                         ; $5954: $90
    ld c, a                                       ; $5955: $4f
    ld [hl], e                                    ; $5956: $73
    di                                            ; $5957: $f3
    rst $38                                       ; $5958: $ff
    ld sp, hl                                     ; $5959: $f9
    rst $38                                       ; $595a: $ff
    ld l, [hl]                                    ; $595b: $6e
    ld [hl], c                                    ; $595c: $71
    halt                                          ; $595d: $76
    ld a, c                                       ; $595e: $79
    dec a                                         ; $595f: $3d
    ld a, $5f                                     ; $5960: $3e $5f
    ld e, [hl]                                    ; $5962: $5e
    add hl, sp                                    ; $5963: $39
    ld a, $02                                     ; $5964: $3e $02
    rra                                           ; $5966: $1f
    add d                                         ; $5967: $82
    ld e, $1f                                     ; $5968: $1e $1f
    ld [bc], a                                    ; $596a: $02
    cpl                                           ; $596b: $2f
    ld [bc], a                                    ; $596c: $02
    rlca                                          ; $596d: $07
    inc b                                         ; $596e: $04
    inc bc                                        ; $596f: $03
    ld [bc], a                                    ; $5970: $02
    ld bc, $0002                                  ; $5971: $01 $02 $00
    ld [bc], a                                    ; $5974: $02
    add b                                         ; $5975: $80
    ld [bc], a                                    ; $5976: $02
    nop                                           ; $5977: $00
    ld [bc], a                                    ; $5978: $02
    add b                                         ; $5979: $80
    inc b                                         ; $597a: $04
    ret nz                                        ; $597b: $c0

    add c                                         ; $597c: $81
    ld h, b                                       ; $597d: $60
    ld [bc], a                                    ; $597e: $02
    ldh [$93], a                                  ; $597f: $e0 $93
    ld h, b                                       ; $5981: $60
    or b                                          ; $5982: $b0
    ld [hl], b                                    ; $5983: $70
    ld hl, sp+$38                                 ; $5984: $f8 $38
    ld c, h                                       ; $5986: $4c
    cp h                                          ; $5987: $bc
    inc e                                         ; $5988: $1c
    db $fc                                        ; $5989: $fc
    and $9e                                       ; $598a: $e6 $9e
    rst $30                                       ; $598c: $f7
    rst $08                                       ; $598d: $cf
    db $db                                        ; $598e: $db
    rst $20                                       ; $598f: $e7
    adc h                                         ; $5990: $8c
    di                                            ; $5991: $f3
    db $fd                                        ; $5992: $fd
    di                                            ; $5993: $f3
    ld [bc], a                                    ; $5994: $02
    db $10                                        ; $5995: $10
    inc b                                         ; $5996: $04
    nop                                           ; $5997: $00
    inc b                                         ; $5998: $04
    db $10                                        ; $5999: $10
    ld [bc], a                                    ; $599a: $02
    jr jr_0f4_591e                                ; $599b: $18 $81

    ret c                                         ; $599d: $d8

jr_0f4_599e:
    ld [bc], a                                    ; $599e: $02
    jr c, jr_0f4_5933                             ; $599f: $38 $92

    ld hl, sp-$34                                 ; $59a1: $f8 $cc
    inc a                                         ; $59a3: $3c
    ld [hl], h                                    ; $59a4: $74

jr_0f4_59a5:
    adc h                                         ; $59a5: $8c
    db $ec                                        ; $59a6: $ec
    inc e                                         ; $59a7: $1c
    ld e, $fe                                     ; $59a8: $1e $fe
    ld a, [c]                                     ; $59aa: $f2
    adc $9e                                       ; $59ab: $ce $9e
    and $c3                                       ; $59ad: $e6 $c3
    rst $38                                       ; $59af: $ff
    cp a                                          ; $59b0: $bf
    rst $00                                       ; $59b1: $c7
    ldh [$03], a                                  ; $59b2: $e0 $03
    ld hl, sp-$7c                                 ; $59b4: $f8 $84
    ld [hl], b                                    ; $59b6: $70
    ld a, b                                       ; $59b7: $78
    ld h, b                                       ; $59b8: $60
    ld a, b                                       ; $59b9: $78
    ld [bc], a                                    ; $59ba: $02
    jr c, jr_0f4_593e                             ; $59bb: $38 $81

    jr nc, jr_0f4_59c4                            ; $59bd: $30 $05

    jr c, jr_0f4_59c5                             ; $59bf: $38 $04

    jr jr_0f4_5945                                ; $59c1: $18 $82

    ld a, [de]                                    ; $59c3: $1a

jr_0f4_59c4:
    rra                                           ; $59c4: $1f

jr_0f4_59c5:
    ld [bc], a                                    ; $59c5: $02
    rrca                                          ; $59c6: $0f
    add e                                         ; $59c7: $83
    ld c, $0f                                     ; $59c8: $0e $0f
    ld c, $05                                     ; $59ca: $0e $05
    rrca                                          ; $59cc: $0f
    and c                                         ; $59cd: $a1
    ret c                                         ; $59ce: $d8

    jr c, @+$7a                                   ; $59cf: $38 $78

    sbc b                                         ; $59d1: $98
    ld hl, sp+$38                                 ; $59d2: $f8 $38
    db $e4                                        ; $59d4: $e4
    inc e                                         ; $59d5: $1c
    inc a                                         ; $59d6: $3c
    call z, $9de5                                 ; $59d7: $cc $e5 $9d
    db $e4                                        ; $59da: $e4
    sbc h                                         ; $59db: $9c
    inc a                                         ; $59dc: $3c
    call nz, Call_0f4_4cb4                        ; $59dd: $c4 $b4 $4c
    db $e4                                        ; $59e0: $e4
    sbc h                                         ; $59e1: $9c
    ld a, h                                       ; $59e2: $7c
    adc h                                         ; $59e3: $8c
    db $ec                                        ; $59e4: $ec
    sbc h                                         ; $59e5: $9c
    ld a, h                                       ; $59e6: $7c
    sbc h                                         ; $59e7: $9c
    add sp, -$68                                  ; $59e8: $e8 $98
    ret c                                         ; $59ea: $d8

    jr c, jr_0f4_59a5                             ; $59eb: $38 $b8

    ld a, b                                       ; $59ed: $78
    inc c                                         ; $59ee: $0c
    dec b                                         ; $59ef: $05
    rrca                                          ; $59f0: $0f
    add e                                         ; $59f1: $83
    ld c, $0f                                     ; $59f2: $0e $0f
    ld c, $03                                     ; $59f4: $0e $03
    rrca                                          ; $59f6: $0f
    add c                                         ; $59f7: $81
    ld c, $03                                     ; $59f8: $0e $03
    rrca                                          ; $59fa: $0f
    sbc b                                         ; $59fb: $98
    sbc [hl]                                      ; $59fc: $9e
    sbc a                                         ; $59fd: $9f
    inc e                                         ; $59fe: $1c
    rra                                           ; $59ff: $1f
    ccf                                           ; $5a00: $3f
    ld a, $3d                                     ; $5a01: $3e $3d
    ld a, $7b                                     ; $5a03: $3e $7b
    ld a, h                                       ; $5a05: $7c
    ld h, d                                       ; $5a06: $62
    ld a, l                                       ; $5a07: $7d
    ei                                            ; $5a08: $fb
    db $fc                                        ; $5a09: $fc
    or $f9                                        ; $5a0a: $f6 $f9
    dec de                                        ; $5a0c: $1b
    rlca                                          ; $5a0d: $07
    ld d, $0e                                     ; $5a0e: $16 $0e
    ld e, $0e                                     ; $5a10: $1e $0e
    inc d                                         ; $5a12: $14
    inc c                                         ; $5a13: $0c
    ld [bc], a                                    ; $5a14: $02
    inc e                                         ; $5a15: $1c
    ld [bc], a                                    ; $5a16: $02
    jr jr_0f4_599e                                ; $5a17: $18 $85

    or b                                          ; $5a19: $b0
    ld [hl], b                                    ; $5a1a: $70
    ldh a, [rSVBK]                                ; $5a1b: $f0 $70
    jr nz, jr_0f4_5a21                            ; $5a1d: $20 $02

    ldh [$85], a                                  ; $5a1f: $e0 $85

jr_0f4_5a21:
    ld h, b                                       ; $5a21: $60
    ld b, b                                       ; $5a22: $40
    ret nz                                        ; $5a23: $c0

    ld b, b                                       ; $5a24: $40
    ret nz                                        ; $5a25: $c0

    ld [$8180], sp                                ; $5a26: $08 $80 $81
    ld c, $03                                     ; $5a29: $0e $03
    rrca                                          ; $5a2b: $0f
    add l                                         ; $5a2c: $85
    dec c                                         ; $5a2d: $0d
    ld c, $1e                                     ; $5a2e: $0e $1e
    rra                                           ; $5a30: $1f
    inc e                                         ; $5a31: $1c
    ld [bc], a                                    ; $5a32: $02
    rra                                           ; $5a33: $1f
    and h                                         ; $5a34: $a4
    ld e, $39                                     ; $5a35: $1e $39
    ld a, $3f                                     ; $5a37: $3e $3f
    inc a                                         ; $5a39: $3c
    ld a, $39                                     ; $5a3a: $3e $39
    ld a, e                                       ; $5a3c: $7b
    ld a, h                                       ; $5a3d: $7c
    halt                                          ; $5a3e: $76
    ld a, c                                       ; $5a3f: $79
    halt                                          ; $5a40: $76
    ld a, c                                       ; $5a41: $79
    db $fd                                        ; $5a42: $fd
    rst $38                                       ; $5a43: $ff
    and $f9                                       ; $5a44: $e6 $f9
    rst $30                                       ; $5a46: $f7
    ld sp, hl                                     ; $5a47: $f9

jr_0f4_5a48:
    ld hl, sp-$01                                 ; $5a48: $f8 $ff
    ld bc, $0302                                  ; $5a4a: $01 $02 $03
    ld [bc], a                                    ; $5a4d: $02
    inc bc                                        ; $5a4e: $03
    nop                                           ; $5a4f: $00
    ld bc, $0302                                  ; $5a50: $01 $02 $03
    nop                                           ; $5a53: $00
    ld [bc], a                                    ; $5a54: $02
    ld bc, $0103                                  ; $5a55: $01 $03 $01
    nop                                           ; $5a58: $00
    inc bc                                        ; $5a59: $03
    inc bc                                        ; $5a5a: $03
    add c                                         ; $5a5b: $81
    ld bc, $0303                                  ; $5a5c: $01 $03 $03
    add d                                         ; $5a5f: $82
    ld bc, $0803                                  ; $5a60: $01 $03 $08
    ld [bc], a                                    ; $5a63: $02
    sub a                                         ; $5a64: $97
    rst $28                                       ; $5a65: $ef
    pop af                                        ; $5a66: $f1
    db $e3                                        ; $5a67: $e3
    db $fc                                        ; $5a68: $fc
    or $f9                                        ; $5a69: $f6 $f9
    ld a, [hl]                                    ; $5a6b: $7e
    ld a, c                                       ; $5a6c: $79
    ld [hl], d                                    ; $5a6d: $72
    ld a, l                                       ; $5a6e: $7d
    ld [hl], a                                    ; $5a6f: $77
    ld a, b                                       ; $5a70: $78
    ld a, [hl]                                    ; $5a71: $7e
    ld a, c                                       ; $5a72: $79
    dec sp                                        ; $5a73: $3b
    ld a, $3f                                     ; $5a74: $3e $3f
    inc a                                         ; $5a76: $3c
    dec e                                         ; $5a77: $1d
    ld e, $1a                                     ; $5a78: $1e $1a
    rra                                           ; $5a7a: $1f
    inc c                                         ; $5a7b: $0c
    dec b                                         ; $5a7c: $05
    rrca                                          ; $5a7d: $0f
    ld [bc], a                                    ; $5a7e: $02
    ld b, $02                                     ; $5a7f: $06 $02
    inc bc                                        ; $5a81: $03
    ld b, $80                                     ; $5a82: $06 $80
    ld b, $c0                                     ; $5a84: $06 $c0
    sub b                                         ; $5a86: $90
    ld h, b                                       ; $5a87: $60
    ldh [$a0], a                                  ; $5a88: $e0 $a0
    ld h, b                                       ; $5a8a: $60
    ldh a, [rSVBK]                                ; $5a8b: $f0 $70
    ret c                                         ; $5a8d: $d8

    jr c, jr_0f4_5a48                             ; $5a8e: $38 $b8

    ld a, b                                       ; $5a90: $78
    call c, Call_000_0e3c                         ; $5a91: $dc $3c $0e
    cp $6a                                        ; $5a94: $fe $6a
    ld a, [$fe02]                                 ; $5a96: $fa $02 $fe
    ld [bc], a                                    ; $5a99: $02
    db $db                                        ; $5a9a: $db
    ld [bc], a                                    ; $5a9b: $02
    db $dd                                        ; $5a9c: $dd
    ld [bc], a                                    ; $5a9d: $02
    xor c                                         ; $5a9e: $a9
    inc e                                         ; $5a9f: $1c
    nop                                           ; $5aa0: $00
    ld [bc], a                                    ; $5aa1: $02
    ld bc, $001e                                  ; $5aa2: $01 $1e $00
    rst $38                                       ; $5aa5: $ff
    rra                                           ; $5aa6: $1f
    dec c                                         ; $5aa7: $0d
    ld hl, sp+$0b                                 ; $5aa8: $f8 $0b
    ldh a, [$0d]                                  ; $5aaa: $f0 $0d
    xor l                                         ; $5aac: $ad
    or $ad                                        ; $5aad: $f6 $ad
    ld a, [$f6bd]                                 ; $5aaf: $fa $bd $f6
    cp [hl]                                       ; $5ab2: $be
    cp $c9                                        ; $5ab3: $fe $c9
    ld b, $ce                                     ; $5ab5: $06 $ce
    cp $d9                                        ; $5ab7: $fe $d9
    ld b, $de                                     ; $5ab9: $06 $de
    db $fd                                        ; $5abb: $fd
    sbc $01                                       ; $5abc: $de $01
    xor $f8                                       ; $5abe: $ee $f8
    xor $fe                                       ; $5ac0: $ee $fe
    cp $f8                                        ; $5ac2: $fe $f8
    cp $00                                        ; $5ac4: $fe $00
    ld [bc], a                                    ; $5ac6: $02
    ld [bc], a                                    ; $5ac7: $02
    ld [bc], a                                    ; $5ac8: $02
    dec bc                                        ; $5ac9: $0b
    ld [bc], a                                    ; $5aca: $02
    ld c, $91                                     ; $5acb: $0e $91
    dec sp                                        ; $5acd: $3b
    ccf                                           ; $5ace: $3f
    inc de                                        ; $5acf: $13
    rra                                           ; $5ad0: $1f
    scf                                           ; $5ad1: $37
    ccf                                           ; $5ad2: $3f
    ld d, e                                       ; $5ad3: $53
    ld e, a                                       ; $5ad4: $5f
    cpl                                           ; $5ad5: $2f
    scf                                           ; $5ad6: $37
    ld a, a                                       ; $5ad7: $7f
    ld h, a                                       ; $5ad8: $67
    ld c, [hl]                                    ; $5ad9: $4e
    ld a, [hl]                                    ; $5ada: $7e
    rst $18                                       ; $5adb: $df
    rst $28                                       ; $5adc: $ef
    ld [hl], a                                    ; $5add: $77
    ld [bc], a                                    ; $5ade: $02
    ld c, a                                       ; $5adf: $4f
    add a                                         ; $5ae0: $87
    ld a, a                                       ; $5ae1: $7f
    cp [hl]                                       ; $5ae2: $be
    sbc $cf                                       ; $5ae3: $de $cf
    rst $38                                       ; $5ae5: $ff
    sub a                                         ; $5ae6: $97
    rst $28                                       ; $5ae7: $ef
    ld [bc], a                                    ; $5ae8: $02
    ld a, [bc]                                    ; $5ae9: $0a
    ld [bc], a                                    ; $5aea: $02
    dec b                                         ; $5aeb: $05
    ld [bc], a                                    ; $5aec: $02
    ld c, $02                                     ; $5aed: $0e $02
    inc c                                         ; $5aef: $0c
    ld [bc], a                                    ; $5af0: $02
    ld a, [bc]                                    ; $5af1: $0a
    ld [bc], a                                    ; $5af2: $02
    ld [$0c02], sp                                ; $5af3: $08 $02 $0c
    ld b, $08                                     ; $5af6: $06 $08
    ld [bc], a                                    ; $5af8: $02
    nop                                           ; $5af9: $00
    ld [bc], a                                    ; $5afa: $02
    ld [$0002], sp                                ; $5afb: $08 $02 $00
    ld [bc], a                                    ; $5afe: $02
    ld [$0002], sp                                ; $5aff: $08 $02 $00
    ld [bc], a                                    ; $5b02: $02
    ld [$bf81], sp                                ; $5b03: $08 $81 $bf
    ld [bc], a                                    ; $5b06: $02
    rst $08                                       ; $5b07: $cf
    sub e                                         ; $5b08: $93
    rst $38                                       ; $5b09: $ff
    rst $20                                       ; $5b0a: $e7
    rst $38                                       ; $5b0b: $ff
    ld l, e                                       ; $5b0c: $6b
    ld [hl], a                                    ; $5b0d: $77
    ld l, c                                       ; $5b0e: $69
    ld [hl], a                                    ; $5b0f: $77
    scf                                           ; $5b10: $37
    add hl, sp                                    ; $5b11: $39
    ld e, [hl]                                    ; $5b12: $5e
    ld e, c                                       ; $5b13: $59
    inc sp                                        ; $5b14: $33
    inc a                                         ; $5b15: $3c
    dec e                                         ; $5b16: $1d
    ld e, $1c                                     ; $5b17: $1e $1c
    rra                                           ; $5b19: $1f
    ld c, $0f                                     ; $5b1a: $0e $0f
    ld [bc], a                                    ; $5b1c: $02
    rlca                                          ; $5b1d: $07
    inc b                                         ; $5b1e: $04
    inc bc                                        ; $5b1f: $03
    ld [bc], a                                    ; $5b20: $02
    ld bc, $0002                                  ; $5b21: $01 $02 $00
    ld [bc], a                                    ; $5b24: $02
    and b                                         ; $5b25: $a0
    inc b                                         ; $5b26: $04
    ret nz                                        ; $5b27: $c0

    inc b                                         ; $5b28: $04
    ldh [rSC], a                                  ; $5b29: $e0 $02
    ldh a, [rSC]                                  ; $5b2b: $f0 $02
    ld hl, sp-$71                                 ; $5b2d: $f8 $8f
    inc a                                         ; $5b2f: $3c
    db $fc                                        ; $5b30: $fc
    ld a, h                                       ; $5b31: $7c
    db $fc                                        ; $5b32: $fc
    sbc [hl]                                      ; $5b33: $9e
    ld a, [hl]                                    ; $5b34: $7e
    ld e, a                                       ; $5b35: $5f
    cp a                                          ; $5b36: $bf
    ld l, a                                       ; $5b37: $6f
    sbc a                                         ; $5b38: $9f
    inc sp                                        ; $5b39: $33
    rst $08                                       ; $5b3a: $cf
    rst $30                                       ; $5b3b: $f7
    rst $08                                       ; $5b3c: $cf
    db $db                                        ; $5b3d: $db
    ld [bc], a                                    ; $5b3e: $02
    rst $20                                       ; $5b3f: $e7
    add c                                         ; $5b40: $81
    rst $38                                       ; $5b41: $ff
    inc b                                         ; $5b42: $04
    add b                                         ; $5b43: $80
    ld b, $c0                                     ; $5b44: $06 $c0
    ld b, $e0                                     ; $5b46: $06 $e0
    ld [bc], a                                    ; $5b48: $02
    ldh a, [$81]                                  ; $5b49: $f0 $81
    ld [hl], b                                    ; $5b4b: $70
    inc bc                                        ; $5b4c: $03
    ldh a, [$85]                                  ; $5b4d: $f0 $85
    ld a, b                                       ; $5b4f: $78
    ld hl, sp+$38                                 ; $5b50: $f8 $38
    ld hl, sp+$38                                 ; $5b52: $f8 $38
    ld [bc], a                                    ; $5b54: $02
    ld hl, sp-$7f                                 ; $5b55: $f8 $81
    ld a, b                                       ; $5b57: $78
    ld [bc], a                                    ; $5b58: $02
    ld sp, hl                                     ; $5b59: $f9
    or l                                          ; $5b5a: $b5
    ld e, c                                       ; $5b5b: $59
    ld h, a                                       ; $5b5c: $67
    ld l, [hl]                                    ; $5b5d: $6e
    ld [hl], c                                    ; $5b5e: $71
    dec [hl]                                      ; $5b5f: $35
    dec sp                                        ; $5b60: $3b
    inc hl                                        ; $5b61: $23
    ccf                                           ; $5b62: $3f
    ld a, $39                                     ; $5b63: $3e $39
    inc sp                                        ; $5b65: $33
    inc a                                         ; $5b66: $3c
    sbc b                                         ; $5b67: $98
    sbc a                                         ; $5b68: $9f
    inc de                                        ; $5b69: $13
    inc e                                         ; $5b6a: $1c
    dec de                                        ; $5b6b: $1b
    inc e                                         ; $5b6c: $1c
    dec c                                         ; $5b6d: $0d
    ld c, $0b                                     ; $5b6e: $0e $0b
    inc c                                         ; $5b70: $0c
    add hl, bc                                    ; $5b71: $09
    ld c, $0c                                     ; $5b72: $0e $0c
    rrca                                          ; $5b74: $0f
    ld c, $0f                                     ; $5b75: $0e $0f
    ld c, $0f                                     ; $5b77: $0e $0f
    inc c                                         ; $5b79: $0c
    rrca                                          ; $5b7a: $0f
    sbc h                                         ; $5b7b: $9c
    ld a, h                                       ; $5b7c: $7c
    db $fc                                        ; $5b7d: $fc
    inc a                                         ; $5b7e: $3c
    sbc h                                         ; $5b7f: $9c
    ld a, h                                       ; $5b80: $7c
    sbc h                                         ; $5b81: $9c
    ld a, h                                       ; $5b82: $7c
    db $ec                                        ; $5b83: $ec
    inc e                                         ; $5b84: $1c
    call c, $9c3c                                 ; $5b85: $dc $3c $9c
    ld a, h                                       ; $5b88: $7c
    db $fc                                        ; $5b89: $fc
    inc a                                         ; $5b8a: $3c
    cp l                                          ; $5b8b: $bd
    ld a, l                                       ; $5b8c: $7d
    db $fc                                        ; $5b8d: $fc
    ld a, h                                       ; $5b8e: $7c
    cp b                                          ; $5b8f: $b8
    ld [bc], a                                    ; $5b90: $02
    ld a, b                                       ; $5b91: $78
    inc bc                                        ; $5b92: $03
    ld hl, sp-$7e                                 ; $5b93: $f8 $82
    ld a, b                                       ; $5b95: $78
    ld hl, sp+$04                                 ; $5b96: $f8 $04
    ldh a, [$81]                                  ; $5b98: $f0 $81
    ld b, $03                                     ; $5b9a: $06 $03
    rlca                                          ; $5b9c: $07
    add l                                         ; $5b9d: $85
    inc b                                         ; $5b9e: $04
    rlca                                          ; $5b9f: $07
    ld b, $07                                     ; $5ba0: $06 $07
    ld b, $03                                     ; $5ba2: $06 $03
    rlca                                          ; $5ba4: $07
    sub l                                         ; $5ba5: $95
    dec c                                         ; $5ba6: $0d

jr_0f4_5ba7:
    ld c, $09                                     ; $5ba7: $0e $09
    ld c, $1f                                     ; $5ba9: $0e $1f
    inc e                                         ; $5bab: $1c
    dec de                                        ; $5bac: $1b
    inc e                                         ; $5bad: $1c
    scf                                           ; $5bae: $37
    jr c, jr_0f4_5bd6                             ; $5baf: $38 $25

    ld a, [hl-]                                   ; $5bb1: $3a
    ld [hl], a                                    ; $5bb2: $77
    ld a, c                                       ; $5bb3: $79
    ld l, l                                       ; $5bb4: $6d
    ld [hl], e                                    ; $5bb5: $73
    db $db                                        ; $5bb6: $db
    rst $20                                       ; $5bb7: $e7
    rst $38                                       ; $5bb8: $ff
    rst $20                                       ; $5bb9: $e7
    nop                                           ; $5bba: $00
    ld [bc], a                                    ; $5bbb: $02
    ld [$0082], sp                                ; $5bbc: $08 $82 $00
    ld [$0002], sp                                ; $5bbf: $08 $02 $00
    ld [bc], a                                    ; $5bc2: $02
    ld [$0084], sp                                ; $5bc3: $08 $84 $00
    ld [$0800], sp                                ; $5bc6: $08 $00 $08
    ld [bc], a                                    ; $5bc9: $02
    nop                                           ; $5bca: $00
    ld [bc], a                                    ; $5bcb: $02
    ld [$0002], sp                                ; $5bcc: $08 $02 $00
    inc bc                                        ; $5bcf: $03
    ld [$0781], sp                                ; $5bd0: $08 $81 $07
    inc bc                                        ; $5bd3: $03
    rrca                                          ; $5bd4: $0f
    ld [bc], a                                    ; $5bd5: $02

jr_0f4_5bd6:
    ld c, $04                                     ; $5bd6: $0e $04
    inc c                                         ; $5bd8: $0c
    xor b                                         ; $5bd9: $a8
    rlca                                          ; $5bda: $07
    ld b, $0c                                     ; $5bdb: $06 $0c
    rrca                                          ; $5bdd: $0f
    add hl, bc                                    ; $5bde: $09
    ld c, $0f                                     ; $5bdf: $0e $0f
    inc c                                         ; $5be1: $0c
    add hl, de                                    ; $5be2: $19
    ld e, $1a                                     ; $5be3: $1e $1a
    dec e                                         ; $5be5: $1d
    dec d                                         ; $5be6: $15
    dec de                                        ; $5be7: $1b
    ld [hl], $39                                  ; $5be8: $36 $39
    xor l                                         ; $5bea: $ad
    or e                                          ; $5beb: $b3
    inc [hl]                                      ; $5bec: $34
    dec sp                                        ; $5bed: $3b
    ld a, e                                       ; $5bee: $7b
    ld a, a                                       ; $5bef: $7f
    ld c, l                                       ; $5bf0: $4d
    ld [hl], e                                    ; $5bf1: $73
    ld l, a                                       ; $5bf2: $6f
    ld [hl], e                                    ; $5bf3: $73
    ld [hl], c                                    ; $5bf4: $71
    ld a, a                                       ; $5bf5: $7f
    rst $18                                       ; $5bf6: $df
    rst $20                                       ; $5bf7: $e7
    db $ed                                        ; $5bf8: $ed
    di                                            ; $5bf9: $f3
    daa                                           ; $5bfa: $27
    rra                                           ; $5bfb: $1f
    ccf                                           ; $5bfc: $3f
    rrca                                          ; $5bfd: $0f
    ld l, $1e                                     ; $5bfe: $2e $1e
    ld c, $3e                                     ; $5c00: $0e $3e
    ld [bc], a                                    ; $5c02: $02
    inc a                                         ; $5c03: $3c
    add c                                         ; $5c04: $81
    inc e                                         ; $5c05: $1c
    dec b                                         ; $5c06: $05
    inc a                                         ; $5c07: $3c
    inc b                                         ; $5c08: $04
    jr c, jr_0f4_5c13                             ; $5c09: $38 $08

    jr nc, jr_0f4_5c11                            ; $5c0b: $30 $04

    jr nz, jr_0f4_5ba7                            ; $5c0d: $20 $98

    db $db                                        ; $5c0f: $db
    rst $20                                       ; $5c10: $e7

jr_0f4_5c11:
    ld a, c                                       ; $5c11: $79
    ld h, a                                       ; $5c12: $67

jr_0f4_5c13:
    ld l, e                                       ; $5c13: $6b
    ld [hl], a                                    ; $5c14: $77
    ld l, a                                       ; $5c15: $6f
    ld [hl], e                                    ; $5c16: $73
    ld l, c                                       ; $5c17: $69
    ld [hl], a                                    ; $5c18: $77
    ld a, $39                                     ; $5c19: $3e $39
    scf                                           ; $5c1b: $37
    add hl, sp                                    ; $5c1c: $39
    rla                                           ; $5c1d: $17
    jr jr_0f4_5c3a                                ; $5c1e: $18 $1a

    dec e                                         ; $5c20: $1d
    dec c                                         ; $5c21: $0d
    ld c, $08                                     ; $5c22: $0e $08
    rrca                                          ; $5c24: $0f
    ld c, $0f                                     ; $5c25: $0e $0f
    ld [bc], a                                    ; $5c27: $02
    dec c                                         ; $5c28: $0d
    ld [bc], a                                    ; $5c29: $02
    dec b                                         ; $5c2a: $05
    ld [bc], a                                    ; $5c2b: $02
    rrca                                          ; $5c2c: $0f
    ld [bc], a                                    ; $5c2d: $02
    ld [bc], a                                    ; $5c2e: $02
    ld [bc], a                                    ; $5c2f: $02
    add b                                         ; $5c30: $80
    ld [bc], a                                    ; $5c31: $02
    ret nc                                        ; $5c32: $d0

    inc b                                         ; $5c33: $04
    ret nz                                        ; $5c34: $c0

    inc b                                         ; $5c35: $04
    ldh [rSC], a                                  ; $5c36: $e0 $02
    ldh a, [$8c]                                  ; $5c38: $f0 $8c

jr_0f4_5c3a:
    ld a, b                                       ; $5c3a: $78
    ld hl, sp-$68                                 ; $5c3b: $f8 $98
    ld hl, sp-$44                                 ; $5c3d: $f8 $bc
    ld a, h                                       ; $5c3f: $7c
    inc e                                         ; $5c40: $1c
    db $fc                                        ; $5c41: $fc
    xor [hl]                                      ; $5c42: $ae
    cp $74                                        ; $5c43: $fe $74
    db $f4                                        ; $5c45: $f4
    ld [bc], a                                    ; $5c46: $02
    ld d, a                                       ; $5c47: $57
    ld [bc], a                                    ; $5c48: $02
    cp d                                          ; $5c49: $ba
    ld [bc], a                                    ; $5c4a: $02
    inc h                                         ; $5c4b: $24
    rst $38                                       ; $5c4c: $ff
    ld hl, $f80e                                  ; $5c4d: $21 $0e $f8
    dec bc                                        ; $5c50: $0b
    ldh a, [$0d]                                  ; $5c51: $f0 $0d
    or c                                          ; $5c53: $b1
    db $f4                                        ; $5c54: $f4
    xor l                                         ; $5c55: $ad
    db $fc                                        ; $5c56: $fc
    cp l                                          ; $5c57: $bd
    pop af                                        ; $5c58: $f1
    cp l                                          ; $5c59: $bd
    push af                                       ; $5c5a: $f5
    call $cdf3                                    ; $5c5b: $cd $f3 $cd
    ei                                            ; $5c5e: $fb
    ret c                                         ; $5c5f: $d8

    inc bc                                        ; $5c60: $03
    db $dd                                        ; $5c61: $dd
    cp $e7                                        ; $5c62: $fe $e7
    dec b                                         ; $5c64: $05
    db $ed                                        ; $5c65: $ed
    rst $38                                       ; $5c66: $ff
    push af                                       ; $5c67: $f5
    rlca                                          ; $5c68: $07
    cp $fa                                        ; $5c69: $fe $fa
    db $fd                                        ; $5c6b: $fd
    nop                                           ; $5c6c: $00
    dec c                                         ; $5c6d: $0d
    db $fc                                        ; $5c6e: $fc
    ld [bc], a                                    ; $5c6f: $02
    ld bc, $0002                                  ; $5c70: $01 $02 $00
    ld [bc], a                                    ; $5c73: $02
    inc bc                                        ; $5c74: $03
    ld [bc], a                                    ; $5c75: $02
    ld [bc], a                                    ; $5c76: $02
    ld [bc], a                                    ; $5c77: $02
    rlca                                          ; $5c78: $07
    ld [bc], a                                    ; $5c79: $02
    dec bc                                        ; $5c7a: $0b
    ld [bc], a                                    ; $5c7b: $02
    rra                                           ; $5c7c: $1f
    sub d                                         ; $5c7d: $92
    add hl, de                                    ; $5c7e: $19
    ld e, $3e                                     ; $5c7f: $1e $3e
    ccf                                           ; $5c81: $3f
    ld [hl], e                                    ; $5c82: $73
    ld a, h                                       ; $5c83: $7c
    cp $f9                                        ; $5c84: $fe $f9
    db $d3                                        ; $5c86: $d3
    rst $38                                       ; $5c87: $ff
    db $dd                                        ; $5c88: $dd
    db $e3                                        ; $5c89: $e3
    xor a                                         ; $5c8a: $af
    rst $30                                       ; $5c8b: $f7
    db $db                                        ; $5c8c: $db
    rst $20                                       ; $5c8d: $e7
    rst $10                                       ; $5c8e: $d7
    rst $28                                       ; $5c8f: $ef
    ld [bc], a                                    ; $5c90: $02
    jr jr_0f4_5c95                                ; $5c91: $18 $02

    ld a, [hl+]                                   ; $5c93: $2a
    ld [bc], a                                    ; $5c94: $02

jr_0f4_5c95:
    sbc $02                                       ; $5c95: $de $02
    ld a, l                                       ; $5c97: $7d
    ld [bc], a                                    ; $5c98: $02
    cp e                                          ; $5c99: $bb
    add d                                         ; $5c9a: $82
    xor $fe                                       ; $5c9b: $ee $fe
    ld [bc], a                                    ; $5c9d: $02
    db $fc                                        ; $5c9e: $fc
    adc [hl]                                      ; $5c9f: $8e
    sbc $ee                                       ; $5ca0: $de $ee
    add sp, -$08                                  ; $5ca2: $e8 $f8
    ld e, h                                       ; $5ca4: $5c
    cp h                                          ; $5ca5: $bc
    ldh a, [$30]                                  ; $5ca6: $f0 $30
    or b                                          ; $5ca8: $b0
    ld [hl], b                                    ; $5ca9: $70
    ld h, b                                       ; $5caa: $60
    ldh [$60], a                                  ; $5cab: $e0 $60
    ldh [rSC], a                                  ; $5cad: $e0 $02
    ret nz                                        ; $5caf: $c0

    ld [bc], a                                    ; $5cb0: $02
    add b                                         ; $5cb1: $80
    inc b                                         ; $5cb2: $04
    jr nz, jr_0f4_5cb9                            ; $5cb3: $20 $04

    ld h, b                                       ; $5cb5: $60
    sbc b                                         ; $5cb6: $98
    ld [hl], a                                    ; $5cb7: $77
    ld a, b                                       ; $5cb8: $78

jr_0f4_5cb9:
    ld l, h                                       ; $5cb9: $6c
    ld [hl], e                                    ; $5cba: $73
    ld [hl], a                                    ; $5cbb: $77
    ld a, c                                       ; $5cbc: $79
    push hl                                       ; $5cbd: $e5
    ei                                            ; $5cbe: $fb
    ld a, [$fdf7]                                 ; $5cbf: $fa $f7 $fd
    di                                            ; $5cc2: $f3
    adc $f1                                       ; $5cc3: $ce $f1
    db $fd                                        ; $5cc5: $fd
    db $e3                                        ; $5cc6: $e3
    push hl                                       ; $5cc7: $e5
    ei                                            ; $5cc8: $fb
    ld a, d                                       ; $5cc9: $7a
    ld a, l                                       ; $5cca: $7d
    ld a, e                                       ; $5ccb: $7b
    ld a, h                                       ; $5ccc: $7c
    ld [hl], l                                    ; $5ccd: $75
    ld a, [hl]                                    ; $5cce: $7e
    ld [bc], a                                    ; $5ccf: $02
    ld bc, $0006                                  ; $5cd0: $01 $06 $00
    add d                                         ; $5cd3: $82
    ld b, $0e                                     ; $5cd4: $06 $0e
    ld c, $0c                                     ; $5cd6: $0e $0c
    add c                                         ; $5cd8: $81
    inc b                                         ; $5cd9: $04
    inc bc                                        ; $5cda: $03
    inc c                                         ; $5cdb: $0c
    add d                                         ; $5cdc: $82
    rlca                                          ; $5cdd: $07
    rrca                                          ; $5cde: $0f
    ld [bc], a                                    ; $5cdf: $02
    ld c, $89                                     ; $5ce0: $0e $89
    call z, $f7f3                                 ; $5ce2: $cc $f3 $f7
    ld sp, hl                                     ; $5ce5: $f9
    ld a, d                                       ; $5ce6: $7a
    ld a, l                                       ; $5ce7: $7d
    ld [hl], a                                    ; $5ce8: $77
    ld a, b                                       ; $5ce9: $78
    add hl, sp                                    ; $5cea: $39
    ld [bc], a                                    ; $5ceb: $02
    ld a, $85                                     ; $5cec: $3e $85
    ccf                                           ; $5cee: $3f
    ld e, $1f                                     ; $5cef: $1e $1f
    adc l                                         ; $5cf1: $8d
    adc a                                         ; $5cf2: $8f
    ld [bc], a                                    ; $5cf3: $02
    rrca                                          ; $5cf4: $0f
    ld [bc], a                                    ; $5cf5: $02
    rlca                                          ; $5cf6: $07
    inc b                                         ; $5cf7: $04
    inc bc                                        ; $5cf8: $03
    ld [bc], a                                    ; $5cf9: $02
    ld bc, $0006                                  ; $5cfa: $01 $06 $00
    ld [bc], a                                    ; $5cfd: $02
    add b                                         ; $5cfe: $80
    inc b                                         ; $5cff: $04
    ret nz                                        ; $5d00: $c0

    sbc d                                         ; $5d01: $9a
    ld h, b                                       ; $5d02: $60
    ldh [$72], a                                  ; $5d03: $e0 $72
    ld a, [c]                                     ; $5d05: $f2
    sbc b                                         ; $5d06: $98
    ld a, b                                       ; $5d07: $78
    ld hl, sp+$38                                 ; $5d08: $f8 $38
    ld e, h                                       ; $5d0a: $5c
    cp h                                          ; $5d0b: $bc
    or [hl]                                       ; $5d0c: $b6
    adc $7b                                       ; $5d0d: $ce $7b
    add a                                         ; $5d0f: $87
    db $db                                        ; $5d10: $db
    rst $20                                       ; $5d11: $e7
    rst $10                                       ; $5d12: $d7
    rst $38                                       ; $5d13: $ff
    rst $20                                       ; $5d14: $e7
    ld hl, sp-$05                                 ; $5d15: $f8 $fb
    db $fc                                        ; $5d17: $fc
    ld a, b                                       ; $5d18: $78
    ld a, a                                       ; $5d19: $7f
    ccf                                           ; $5d1a: $3f
    ld a, $02                                     ; $5d1b: $3e $02
    add b                                         ; $5d1d: $80
    add d                                         ; $5d1e: $82
    ld b, b                                       ; $5d1f: $40
    ret nz                                        ; $5d20: $c0

    ld [bc], a                                    ; $5d21: $02
    ldh [$9e], a                                  ; $5d22: $e0 $9e
    and b                                         ; $5d24: $a0
    ldh [rSVBK], a                                ; $5d25: $e0 $70
    ldh a, [$d0]                                  ; $5d27: $f0 $d0
    jr nc, @-$06                                  ; $5d29: $30 $f8

jr_0f4_5d2b:
    jr c, jr_0f4_5d45                             ; $5d2b: $38 $18

    ld hl, sp+$7c                                 ; $5d2d: $f8 $7c
    sbc h                                         ; $5d2f: $9c
    db $f4                                        ; $5d30: $f4
    inc c                                         ; $5d31: $0c
    cp [hl]                                       ; $5d32: $be
    adc $ae                                       ; $5d33: $ce $ae
    sbc $d7                                       ; $5d35: $de $d7
    rst $28                                       ; $5d37: $ef
    cp e                                          ; $5d38: $bb
    rst $20                                       ; $5d39: $e7
    sbc a                                         ; $5d3a: $9f
    db $e3                                        ; $5d3b: $e3
    set 6, a                                      ; $5d3c: $cb $f7
    ldh a, [$f8]                                  ; $5d3e: $f0 $f8
    ldh [$f8], a                                  ; $5d40: $e0 $f8
    inc b                                         ; $5d42: $04
    ld a, b                                       ; $5d43: $78
    add c                                         ; $5d44: $81

jr_0f4_5d45:
    jr nc, @+$05                                  ; $5d45: $30 $03

    jr c, jr_0f4_5d51                             ; $5d47: $38 $08

    jr @+$04                                      ; $5d49: $18 $02

    ld [$0d85], sp                                ; $5d4b: $08 $85 $0d
    rrca                                          ; $5d4e: $0f
    ld c, $0f                                     ; $5d4f: $0e $0f

jr_0f4_5d51:
    ld c, $03                                     ; $5d51: $0e $03
    rrca                                          ; $5d53: $0f
    ld [bc], a                                    ; $5d54: $02
    rlca                                          ; $5d55: $07
    ld [bc], a                                    ; $5d56: $02
    ld [bc], a                                    ; $5d57: $02
    sbc [hl]                                      ; $5d58: $9e
    halt                                          ; $5d59: $76
    ld c, [hl]                                    ; $5d5a: $4e
    ld c, $7e                                     ; $5d5b: $0e $7e
    halt                                          ; $5d5d: $76
    ld c, $1b                                     ; $5d5e: $0e $1b
    ld h, a                                       ; $5d60: $67
    ld [hl], a                                    ; $5d61: $77
    ld l, a                                       ; $5d62: $6f
    cp e                                          ; $5d63: $bb
    rst $20                                       ; $5d64: $e7
    db $db                                        ; $5d65: $db
    rst $20                                       ; $5d66: $e7
    dec l                                         ; $5d67: $2d
    rst $18                                       ; $5d68: $df
    rst $30                                       ; $5d69: $f7
    rst $08                                       ; $5d6a: $cf
    db $db                                        ; $5d6b: $db
    rst $20                                       ; $5d6c: $e7
    sbc l                                         ; $5d6d: $9d
    db $e3                                        ; $5d6e: $e3
    db $eb                                        ; $5d6f: $eb
    rst $30                                       ; $5d70: $f7
    push af                                       ; $5d71: $f5
    ei                                            ; $5d72: $fb
    db $db                                        ; $5d73: $db
    rst $20                                       ; $5d74: $e7
    di                                            ; $5d75: $f3
    rst $28                                       ; $5d76: $ef
    inc d                                         ; $5d77: $14
    inc c                                         ; $5d78: $0c
    add h                                         ; $5d79: $84
    ld c, $0f                                     ; $5d7a: $0e $0f
    ld c, $0f                                     ; $5d7c: $0e $0f
    ld [bc], a                                    ; $5d7e: $02
    rra                                           ; $5d7f: $1f
    add c                                         ; $5d80: $81
    inc e                                         ; $5d81: $1c
    inc bc                                        ; $5d82: $03
    rra                                           ; $5d83: $1f
    add d                                         ; $5d84: $82
    sbc l                                         ; $5d85: $9d
    sbc a                                         ; $5d86: $9f
    ld [bc], a                                    ; $5d87: $02
    ld bc, $0002                                  ; $5d88: $01 $02 $00
    sub e                                         ; $5d8b: $93
    call c, $ecbc                                 ; $5d8c: $dc $bc $ec
    inc e                                         ; $5d8f: $1c
    ld c, b                                       ; $5d90: $48
    cp b                                          ; $5d91: $b8
    ld hl, sp+$18                                 ; $5d92: $f8 $18
    ret c                                         ; $5d94: $d8

    jr c, @-$56                                   ; $5d95: $38 $a8

    ld e, b                                       ; $5d97: $58
    ret c                                         ; $5d98: $d8

    jr c, jr_0f4_5d2b                             ; $5d99: $38 $90

    ld [hl], b                                    ; $5d9b: $70
    or b                                          ; $5d9c: $b0
    ld [hl], b                                    ; $5d9d: $70
    and b                                         ; $5d9e: $a0
    ld [bc], a                                    ; $5d9f: $02
    ld h, b                                       ; $5da0: $60
    add d                                         ; $5da1: $82
    ldh [rLCDC], a                                ; $5da2: $e0 $40
    inc bc                                        ; $5da4: $03
    ret nz                                        ; $5da5: $c0

    ld [bc], a                                    ; $5da6: $02
    add b                                         ; $5da7: $80
    ld b, $01                                     ; $5da8: $06 $01
    inc b                                         ; $5daa: $04
    inc bc                                        ; $5dab: $03
    ld [bc], a                                    ; $5dac: $02
    rlca                                          ; $5dad: $07
    adc [hl]                                      ; $5dae: $8e
    ld c, $0f                                     ; $5daf: $0e $0f
    ld c, $0f                                     ; $5db1: $0e $0f
    inc e                                         ; $5db3: $1c
    rra                                           ; $5db4: $1f
    add hl, de                                    ; $5db5: $19
    ld e, $35                                     ; $5db6: $1e $35
    ld a, $78                                     ; $5db8: $3e $78
    ld a, a                                       ; $5dba: $7f
    ld a, e                                       ; $5dbb: $7b
    ld a, a                                       ; $5dbc: $7f
    ld [bc], a                                    ; $5dbd: $02
    xor $02                                       ; $5dbe: $ee $02
    ld d, l                                       ; $5dc0: $55
    ld [bc], a                                    ; $5dc1: $02
    ld [hl], $9c                                  ; $5dc2: $36 $9c
    inc a                                         ; $5dc4: $3c
    ld a, $32                                     ; $5dc5: $3e $32
    inc a                                         ; $5dc7: $3c
    ld a, [hl-]                                   ; $5dc8: $3a
    inc a                                         ; $5dc9: $3c
    ld a, [hl-]                                   ; $5dca: $3a
    inc a                                         ; $5dcb: $3c
    ld [hl], $38                                  ; $5dcc: $36 $38
    ld h, $38                                     ; $5dce: $26 $38
    inc [hl]                                      ; $5dd0: $34
    ld a, [hl-]                                   ; $5dd1: $3a
    ld a, [de]                                    ; $5dd2: $1a
    ld h, $33                                     ; $5dd3: $26 $33
    rrca                                          ; $5dd5: $0f
    ld [hl], $0e                                  ; $5dd6: $36 $0e
    inc c                                         ; $5dd8: $0c
    inc a                                         ; $5dd9: $3c
    inc l                                         ; $5dda: $2c
    inc e                                         ; $5ddb: $1c
    inc d                                         ; $5ddc: $14
    inc a                                         ; $5ddd: $3c
    inc e                                         ; $5dde: $1c
    inc a                                         ; $5ddf: $3c
    ld [bc], a                                    ; $5de0: $02
    jr c, jr_0f4_5de5                             ; $5de1: $38 $02

    jr z, @+$04                                   ; $5de3: $28 $02

jr_0f4_5de5:
    ld bc, $001e                                  ; $5de5: $01 $1e $00
    rst $38                                       ; $5de8: $ff
    rra                                           ; $5de9: $1f
    dec c                                         ; $5dea: $0d
    ld hl, sp+$0b                                 ; $5deb: $f8 $0b
    ldh a, [$0d]                                  ; $5ded: $f0 $0d
    or c                                          ; $5def: $b1
    db $f4                                        ; $5df0: $f4
    xor l                                         ; $5df1: $ad
    db $fc                                        ; $5df2: $fc
    cp l                                          ; $5df3: $bd
    rst $28                                       ; $5df4: $ef
    cp l                                          ; $5df5: $bd
    rst $30                                       ; $5df6: $f7
    call $cdf3                                    ; $5df7: $cd $f3 $cd
    ei                                            ; $5dfa: $fb
    ret c                                         ; $5dfb: $d8

    inc bc                                        ; $5dfc: $03
    db $dd                                        ; $5dfd: $dd
    cp $e5                                        ; $5dfe: $fe $e5
    dec b                                         ; $5e00: $05
    db $ed                                        ; $5e01: $ed
    ld [bc], a                                    ; $5e02: $02
    push af                                       ; $5e03: $f5
    dec b                                         ; $5e04: $05
    cp $fa                                        ; $5e05: $fe $fa
    db $fd                                        ; $5e07: $fd
    nop                                           ; $5e08: $00
    ld [bc], a                                    ; $5e09: $02
    ld bc, $0002                                  ; $5e0a: $01 $02 $00
    ld [bc], a                                    ; $5e0d: $02
    inc bc                                        ; $5e0e: $03
    ld [bc], a                                    ; $5e0f: $02
    ld [bc], a                                    ; $5e10: $02
    ld [bc], a                                    ; $5e11: $02
    rlca                                          ; $5e12: $07
    sub [hl]                                      ; $5e13: $96
    ld a, [bc]                                    ; $5e14: $0a
    dec bc                                        ; $5e15: $0b
    dec e                                         ; $5e16: $1d
    ld e, $16                                     ; $5e17: $1e $16
    add hl, de                                    ; $5e19: $19
    add hl, sp                                    ; $5e1a: $39
    ccf                                           ; $5e1b: $3f
    ld l, l                                       ; $5e1c: $6d
    ld [hl], e                                    ; $5e1d: $73
    ei                                            ; $5e1e: $fb
    rst $20                                       ; $5e1f: $e7
    rst $08                                       ; $5e20: $cf
    rst $38                                       ; $5e21: $ff
    rst $30                                       ; $5e22: $f7
    adc a                                         ; $5e23: $8f
    cp e                                          ; $5e24: $bb
    rst $18                                       ; $5e25: $df
    ld l, a                                       ; $5e26: $6f
    sbc a                                         ; $5e27: $9f
    ld e, a                                       ; $5e28: $5f
    cp a                                          ; $5e29: $bf
    ld [bc], a                                    ; $5e2a: $02
    db $10                                        ; $5e2b: $10
    ld [bc], a                                    ; $5e2c: $02
    ld a, [hl+]                                   ; $5e2d: $2a
    ld [bc], a                                    ; $5e2e: $02
    xor d                                         ; $5e2f: $aa
    ld [bc], a                                    ; $5e30: $02
    ld a, l                                       ; $5e31: $7d
    ld [bc], a                                    ; $5e32: $02
    or a                                          ; $5e33: $b7
    ld [bc], a                                    ; $5e34: $02
    cp $02                                        ; $5e35: $fe $02
    db $fc                                        ; $5e37: $fc
    add [hl]                                      ; $5e38: $86
    cp [hl]                                       ; $5e39: $be
    cp $b8                                        ; $5e3a: $fe $b8
    ld hl, sp+$7c                                 ; $5e3c: $f8 $7c
    db $fc                                        ; $5e3e: $fc
    inc b                                         ; $5e3f: $04
    ldh a, [rDIV]                                 ; $5e40: $f0 $04
    ldh [rSC], a                                  ; $5e42: $e0 $02
    ret nz                                        ; $5e44: $c0

    ld [bc], a                                    ; $5e45: $02
    add b                                         ; $5e46: $80
    inc b                                         ; $5e47: $04
    ld [$1804], sp                                ; $5e48: $08 $04 $18
    sbc b                                         ; $5e4b: $98
    ld d, a                                       ; $5e4c: $57
    ld e, b                                       ; $5e4d: $58
    inc e                                         ; $5e4e: $1c
    inc de                                        ; $5e4f: $13
    ld d, $19                                     ; $5e50: $16 $19
    dec [hl]                                      ; $5e52: $35
    dec sp                                        ; $5e53: $3b
    ld a, [hl-]                                   ; $5e54: $3a
    ccf                                           ; $5e55: $3f
    dec a                                         ; $5e56: $3d
    inc sp                                        ; $5e57: $33
    ld l, $31                                     ; $5e58: $2e $31
    dec l                                         ; $5e5a: $2d
    inc sp                                        ; $5e5b: $33
    or l                                          ; $5e5c: $b5
    cp e                                          ; $5e5d: $bb
    ld a, [de]                                    ; $5e5e: $1a
    dec e                                         ; $5e5f: $1d
    dec de                                        ; $5e60: $1b

jr_0f4_5e61:
    inc e                                         ; $5e61: $1c
    dec e                                         ; $5e62: $1d
    ld e, $02                                     ; $5e63: $1e $02
    inc b                                         ; $5e65: $04
    ld b, $00                                     ; $5e66: $06 $00
    add d                                         ; $5e68: $82
    ld a, c                                       ; $5e69: $79
    ld sp, hl                                     ; $5e6a: $f9
    ld b, $f0                                     ; $5e6b: $06 $f0
    add c                                         ; $5e6d: $81
    ld [hl], b                                    ; $5e6e: $70
    rlca                                          ; $5e6f: $07
    ldh a, [$81]                                  ; $5e70: $f0 $81
    jr nc, jr_0f4_5e77                            ; $5e72: $30 $03

    ldh a, [$81]                                  ; $5e74: $f0 $81
    ld a, b                                       ; $5e76: $78

jr_0f4_5e77:
    inc bc                                        ; $5e77: $03
    ld hl, sp-$71                                 ; $5e78: $f8 $8f
    or e                                          ; $5e7a: $b3
    rst $08                                       ; $5e7b: $cf
    rst $18                                       ; $5e7c: $df
    rst $20                                       ; $5e7d: $e7
    ld l, e                                       ; $5e7e: $6b
    ld [hl], a                                    ; $5e7f: $77
    ld e, h                                       ; $5e80: $5c
    ld h, e                                       ; $5e81: $63
    dec h                                         ; $5e82: $25
    dec sp                                        ; $5e83: $3b
    ld a, [hl-]                                   ; $5e84: $3a
    dec a                                         ; $5e85: $3d
    ld a, [de]                                    ; $5e86: $1a
    dec e                                         ; $5e87: $1d
    dec c                                         ; $5e88: $0d
    ld [bc], a                                    ; $5e89: $02
    ld c, $83                                     ; $5e8a: $0e $83
    rrca                                          ; $5e8c: $0f
    dec b                                         ; $5e8d: $05
    ld b, $04                                     ; $5e8e: $06 $04
    inc bc                                        ; $5e90: $03
    ld [bc], a                                    ; $5e91: $02
    ld bc, $0006                                  ; $5e92: $01 $06 $00
    ld [bc], a                                    ; $5e95: $02
    add b                                         ; $5e96: $80
    inc b                                         ; $5e97: $04
    ret nz                                        ; $5e98: $c0

    add d                                         ; $5e99: $82
    ld h, b                                       ; $5e9a: $60
    ldh [rSC], a                                  ; $5e9b: $e0 $02
    ldh a, [rDIV]                                 ; $5e9d: $f0 $04
    ld hl, sp-$6e                                 ; $5e9f: $f8 $92
    inc a                                         ; $5ea1: $3c
    db $fc                                        ; $5ea2: $fc
    adc $3e                                       ; $5ea3: $ce $3e
    rst $38                                       ; $5ea5: $ff
    ccf                                           ; $5ea6: $3f
    ld h, a                                       ; $5ea7: $67
    sbc a                                         ; $5ea8: $9f
    ld e, a                                       ; $5ea9: $5f
    rst $38                                       ; $5eaa: $ff
    sbc l                                         ; $5eab: $9d
    db $e3                                        ; $5eac: $e3
    rst $28                                       ; $5ead: $ef
    di                                            ; $5eae: $f3
    ld h, b                                       ; $5eaf: $60
    ld a, a                                       ; $5eb0: $7f
    dec a                                         ; $5eb1: $3d
    dec sp                                        ; $5eb2: $3b
    ld [bc], a                                    ; $5eb3: $02
    add b                                         ; $5eb4: $80
    ld [bc], a                                    ; $5eb5: $02
    ret nz                                        ; $5eb6: $c0

    inc b                                         ; $5eb7: $04
    ldh [rSC], a                                  ; $5eb8: $e0 $02
    ldh a, [$82]                                  ; $5eba: $f0 $82
    ld [hl], b                                    ; $5ebc: $70
    ldh a, [rSC]                                  ; $5ebd: $f0 $02
    ld hl, sp-$65                                 ; $5ebf: $f8 $9b
    ld a, b                                       ; $5ec1: $78
    ld hl, sp-$44                                 ; $5ec2: $f8 $bc
    ld a, h                                       ; $5ec4: $7c
    call c, $de3c                                 ; $5ec5: $dc $3c $de
    ld a, $be                                     ; $5ec8: $3e $be
    ld a, [hl]                                    ; $5eca: $7e
    ld e, a                                       ; $5ecb: $5f
    cp a                                          ; $5ecc: $bf
    rst $28                                       ; $5ecd: $ef
    sbc a                                         ; $5ece: $9f
    ld [hl], a                                    ; $5ecf: $77
    adc a                                         ; $5ed0: $8f
    xor a                                         ; $5ed1: $af
    rst $18                                       ; $5ed2: $df
    ret c                                         ; $5ed3: $d8

    ldh [$d8], a                                  ; $5ed4: $e0 $d8
    ldh [$60], a                                  ; $5ed6: $e0 $60
    ld a, b                                       ; $5ed8: $78
    ld l, b                                       ; $5ed9: $68
    ld [hl], b                                    ; $5eda: $70
    jr z, jr_0f4_5edf                             ; $5edb: $28 $02

    jr nc, jr_0f4_5e61                            ; $5edd: $30 $82

jr_0f4_5edf:
    jr c, jr_0f4_5ef1                             ; $5edf: $38 $10

    rlca                                          ; $5ee1: $07
    jr @+$04                                      ; $5ee2: $18 $02

    ld [$0f85], sp                                ; $5ee4: $08 $85 $0f
    ld c, $28                                     ; $5ee7: $0e $28

jr_0f4_5ee9:
    cpl                                           ; $5ee9: $2f
    rrca                                          ; $5eea: $0f
    ld [bc], a                                    ; $5eeb: $02
    inc c                                         ; $5eec: $0c
    add c                                         ; $5eed: $81
    rrca                                          ; $5eee: $0f
    ld [bc], a                                    ; $5eef: $02
    rlca                                          ; $5ef0: $07

jr_0f4_5ef1:
    ld [bc], a                                    ; $5ef1: $02
    ld bc, $0002                                  ; $5ef2: $01 $02 $00
    ld [bc], a                                    ; $5ef5: $02
    ld [bc], a                                    ; $5ef6: $02
    add c                                         ; $5ef7: $81
    ld e, [hl]                                    ; $5ef8: $5e
    ld [bc], a                                    ; $5ef9: $02
    ld a, $98                                     ; $5efa: $3e $98
    ld a, [hl]                                    ; $5efc: $7e
    ld e, [hl]                                    ; $5efd: $5e
    ld a, $6f                                     ; $5efe: $3e $6f
    rra                                           ; $5f00: $1f
    ld e, a                                       ; $5f01: $5f
    ccf                                           ; $5f02: $3f
    rst $20                                       ; $5f03: $e7
    sbc a                                         ; $5f04: $9f
    ld l, a                                       ; $5f05: $6f
    sbc a                                         ; $5f06: $9f
    scf                                           ; $5f07: $37
    rst $38                                       ; $5f08: $ff
    rst $18                                       ; $5f09: $df
    ccf                                           ; $5f0a: $3f
    ld l, a                                       ; $5f0b: $6f
    sbc a                                         ; $5f0c: $9f
    ld [hl], a                                    ; $5f0d: $77
    adc a                                         ; $5f0e: $8f
    cp a                                          ; $5f0f: $bf
    rst $18                                       ; $5f10: $df
    rst $38                                       ; $5f11: $ff
    rst $28                                       ; $5f12: $ef
    ld b, b                                       ; $5f13: $40
    inc bc                                        ; $5f14: $03
    ld h, b                                       ; $5f15: $60
    add c                                         ; $5f16: $81
    ld b, b                                       ; $5f17: $40
    dec bc                                        ; $5f18: $0b
    ld h, b                                       ; $5f19: $60
    sub b                                         ; $5f1a: $90
    ld l, a                                       ; $5f1b: $6f
    ld [hl], e                                    ; $5f1c: $73
    ld a, b                                       ; $5f1d: $78
    ld [hl], a                                    ; $5f1e: $77
    ld e, e                                       ; $5f1f: $5b
    ld [hl], a                                    ; $5f20: $77
    ld a, l                                       ; $5f21: $7d
    ld h, e                                       ; $5f22: $63
    add sp, -$09                                  ; $5f23: $e8 $f7
    rst $18                                       ; $5f25: $df
    db $e3                                        ; $5f26: $e3
    ei                                            ; $5f27: $fb
    rst $20                                       ; $5f28: $e7
    or l                                          ; $5f29: $b5
    db $eb                                        ; $5f2a: $eb
    ld [$0807], sp                                ; $5f2b: $08 $07 $08
    ld b, $8b                                     ; $5f2e: $06 $8b
    sbc $3e                                       ; $5f30: $de $3e
    sbc h                                         ; $5f32: $9c
    ld a, h                                       ; $5f33: $7c
    cp h                                          ; $5f34: $bc
    ld a, h                                       ; $5f35: $7c
    cp b                                          ; $5f36: $b8
    ld a, b                                       ; $5f37: $78
    ld a, d                                       ; $5f38: $7a
    ld a, [$0370]                                 ; $5f39: $fa $70 $03
    ldh a, [rSC]                                  ; $5f3c: $f0 $02
    ldh [rTMA], a                                 ; $5f3e: $e0 $06
    ld bc, $0304                                  ; $5f40: $01 $04 $03
    ld [bc], a                                    ; $5f43: $02
    rlca                                          ; $5f44: $07
    adc [hl]                                      ; $5f45: $8e
    dec c                                         ; $5f46: $0d
    ld c, $0f                                     ; $5f47: $0e $0f
    inc c                                         ; $5f49: $0c
    dec de                                        ; $5f4a: $1b
    inc e                                         ; $5f4b: $1c
    ld d, $19                                     ; $5f4c: $16 $19
    ld a, [hl-]                                   ; $5f4e: $3a
    dec a                                         ; $5f4f: $3d
    ld [hl], c                                    ; $5f50: $71
    ld a, a                                       ; $5f51: $7f
    ld h, $3f                                     ; $5f52: $26 $3f
    ld [bc], a                                    ; $5f54: $02
    ei                                            ; $5f55: $fb
    ld [bc], a                                    ; $5f56: $02
    ld d, a                                       ; $5f57: $57
    ld [bc], a                                    ; $5f58: $02
    ld l, c                                       ; $5f59: $69
    add e                                         ; $5f5a: $83
    jr nc, jr_0f4_5f95                            ; $5f5b: $30 $38

    jr z, jr_0f4_5f61                             ; $5f5d: $28 $02

    jr nc, jr_0f4_5ee9                            ; $5f5f: $30 $88

jr_0f4_5f61:
    jr c, jr_0f4_5f8b                             ; $5f61: $38 $28

    jr nc, jr_0f4_5f7d                            ; $5f63: $30 $18

    jr nz, jr_0f4_5f7f                            ; $5f65: $20 $18

    jr nz, jr_0f4_5f79                            ; $5f67: $20 $10

    ld [bc], a                                    ; $5f69: $02
    jr z, @-$76                                   ; $5f6a: $28 $88

    jr jr_0f4_5f75                                ; $5f6c: $18 $07

    ccf                                           ; $5f6e: $3f
    ld e, $3e                                     ; $5f6f: $1e $3e
    inc l                                         ; $5f71: $2c
    inc a                                         ; $5f72: $3c
    inc e                                         ; $5f73: $1c
    inc bc                                        ; $5f74: $03

jr_0f4_5f75:
    inc a                                         ; $5f75: $3c
    inc b                                         ; $5f76: $04
    jr c, jr_0f4_5f7b                             ; $5f77: $38 $02

jr_0f4_5f79:
    db $10                                        ; $5f79: $10
    rst $38                                       ; $5f7a: $ff

jr_0f4_5f7b:
    dec h                                         ; $5f7b: $25
    db $10                                        ; $5f7c: $10

jr_0f4_5f7d:
    ld hl, sp+$0b                                 ; $5f7d: $f8 $0b

jr_0f4_5f7f:
    ldh a, [$0d]                                  ; $5f7f: $f0 $0d
    xor e                                         ; $5f81: $ab
    db $fd                                        ; $5f82: $fd
    xor [hl]                                      ; $5f83: $ae
    nop                                           ; $5f84: $00
    cp [hl]                                       ; $5f85: $be
    di                                            ; $5f86: $f3
    cp e                                          ; $5f87: $bb
    ei                                            ; $5f88: $fb
    cp [hl]                                       ; $5f89: $be
    db $fd                                        ; $5f8a: $fd

jr_0f4_5f8b:
    call $cbef                                    ; $5f8b: $cd $ef $cb
    or $d1                                        ; $5f8e: $f6 $d1
    ld sp, hl                                     ; $5f90: $f9
    db $db                                        ; $5f91: $db
    push af                                       ; $5f92: $f5
    pop hl                                        ; $5f93: $e1
    db $fd                                        ; $5f94: $fd

jr_0f4_5f95:
    jp hl                                         ; $5f95: $e9


    inc bc                                        ; $5f96: $03
    pop af                                        ; $5f97: $f1
    cp $f9                                        ; $5f98: $fe $f9
    ld bc, $fb01                                  ; $5f9a: $01 $01 $fb
    add hl, bc                                    ; $5f9d: $09
    cp $0b                                        ; $5f9e: $fe $0b
    di                                            ; $5fa0: $f3
    ld [bc], a                                    ; $5fa1: $02
    inc b                                         ; $5fa2: $04
    ld [bc], a                                    ; $5fa3: $02
    add hl, hl                                    ; $5fa4: $29
    ld [bc], a                                    ; $5fa5: $02
    ld d, $02                                     ; $5fa6: $16 $02
    ld a, $8d                                     ; $5fa8: $3e $8d
    ld e, c                                       ; $5faa: $59
    ld e, l                                       ; $5fab: $5d
    dec sp                                        ; $5fac: $3b
    ccf                                           ; $5fad: $3f
    dec e                                         ; $5fae: $1d
    rra                                           ; $5faf: $1f
    dec sp                                        ; $5fb0: $3b
    dec a                                         ; $5fb1: $3d
    ld e, e                                       ; $5fb2: $5b
    ld e, l                                       ; $5fb3: $5d
    jr c, @+$41                                   ; $5fb4: $38 $3f

    ld [hl], e                                    ; $5fb6: $73
    ld [bc], a                                    ; $5fb7: $02
    ld a, h                                       ; $5fb8: $7c
    adc c                                         ; $5fb9: $89
    ld a, a                                       ; $5fba: $7f
    ld a, l                                       ; $5fbb: $7d
    ld a, [hl]                                    ; $5fbc: $7e
    rst $20                                       ; $5fbd: $e7
    ld hl, sp-$0a                                 ; $5fbe: $f8 $f6
    ld sp, hl                                     ; $5fc0: $f9
    push af                                       ; $5fc1: $f5
    ei                                            ; $5fc2: $fb
    ld [bc], a                                    ; $5fc3: $02
    inc b                                         ; $5fc4: $04
    ld [bc], a                                    ; $5fc5: $02
    nop                                           ; $5fc6: $00
    ld [bc], a                                    ; $5fc7: $02
    inc b                                         ; $5fc8: $04
    ld [bc], a                                    ; $5fc9: $02
    ld b, $02                                     ; $5fca: $06 $02
    ld [bc], a                                    ; $5fcc: $02
    ld [bc], a                                    ; $5fcd: $02
    ld b, $02                                     ; $5fce: $06 $02
    dec b                                         ; $5fd0: $05
    add c                                         ; $5fd1: $81
    ld [bc], a                                    ; $5fd2: $02
    inc bc                                        ; $5fd3: $03
    ld b, $02                                     ; $5fd4: $06 $02
    rlca                                          ; $5fd6: $07
    add c                                         ; $5fd7: $81
    ld [bc], a                                    ; $5fd8: $02
    inc bc                                        ; $5fd9: $03
    ld b, $02                                     ; $5fda: $06 $02
    inc b                                         ; $5fdc: $04
    add [hl]                                      ; $5fdd: $86
    inc a                                         ; $5fde: $3c
    call z, $dcbc                                 ; $5fdf: $cc $bc $dc
    ld l, h                                       ; $5fe2: $6c
    sbc h                                         ; $5fe3: $9c
    ld [bc], a                                    ; $5fe4: $02
    dec b                                         ; $5fe5: $05
    ld [bc], a                                    ; $5fe6: $02
    ld bc, $0302                                  ; $5fe7: $01 $02 $03
    inc b                                         ; $5fea: $04
    rlca                                          ; $5feb: $07
    ld [bc], a                                    ; $5fec: $02
    rrca                                          ; $5fed: $0f
    ld [bc], a                                    ; $5fee: $02
    rra                                           ; $5fef: $1f
    sub d                                         ; $5ff0: $92
    ld e, $1f                                     ; $5ff1: $1e $1f
    dec a                                         ; $5ff3: $3d
    ld a, $3c                                     ; $5ff4: $3e $3c
    ccf                                           ; $5ff6: $3f
    ld a, e                                       ; $5ff7: $7b
    ld a, h                                       ; $5ff8: $7c
    ld a, l                                       ; $5ff9: $7d
    ld a, [hl]                                    ; $5ffa: $7e
    ld a, [c]                                     ; $5ffb: $f2
    db $fd                                        ; $5ffc: $fd
    and $f9                                       ; $5ffd: $e6 $f9
    push af                                       ; $5fff: $f5
    ei                                            ; $6000: $fb
    call Call_000_02f3                            ; $6001: $cd $f3 $02
    ld a, b                                       ; $6004: $78
    add c                                         ; $6005: $81
    ldh a, [$03]                                  ; $6006: $f0 $03
    ld hl, sp-$69                                 ; $6008: $f8 $97
    cp $f9                                        ; $600a: $fe $f9
    push hl                                       ; $600c: $e5
    ei                                            ; $600d: $fb
    sbc e                                         ; $600e: $9b
    rst $30                                       ; $600f: $f7
    call Call_0f4_6bf3                            ; $6010: $cd $f3 $6b
    rst $30                                       ; $6013: $f7
    cp a                                          ; $6014: $bf
    rst $08                                       ; $6015: $cf
    ld l, [hl]                                    ; $6016: $6e
    sbc [hl]                                      ; $6017: $9e
    ld a, h                                       ; $6018: $7c
    sbc h                                         ; $6019: $9c
    ret c                                         ; $601a: $d8

    jr c, @-$46                                   ; $601b: $38 $b8

    ld a, b                                       ; $601d: $78
    ld [hl], b                                    ; $601e: $70
    ldh a, [$60]                                  ; $601f: $f0 $60
    inc bc                                        ; $6021: $03
    ldh [rDIV], a                                 ; $6022: $e0 $04
    inc bc                                        ; $6024: $03
    inc b                                         ; $6025: $04
    ld [bc], a                                    ; $6026: $02
    jr jr_0f4_6029                                ; $6027: $18 $00

jr_0f4_6029:
    ld [bc], a                                    ; $6029: $02
    db $10                                        ; $602a: $10
    ld [bc], a                                    ; $602b: $02
    rra                                           ; $602c: $1f
    adc h                                         ; $602d: $8c
    dec e                                         ; $602e: $1d
    rra                                           ; $602f: $1f
    ld e, $1f                                     ; $6030: $1e $1f
    inc e                                         ; $6032: $1c
    rra                                           ; $6033: $1f
    ld e, $1f                                     ; $6034: $1e $1f
    dec e                                         ; $6036: $1d
    ld e, $9c                                     ; $6037: $1e $9c
    sbc a                                         ; $6039: $9f
    ld [bc], a                                    ; $603a: $02
    rra                                           ; $603b: $1f
    add d                                         ; $603c: $82
    ld e, $1f                                     ; $603d: $1e $1f
    ld [bc], a                                    ; $603f: $02
    rrca                                          ; $6040: $0f
    add c                                         ; $6041: $81
    ld c, $03                                     ; $6042: $0e $03
    rrca                                          ; $6044: $0f

jr_0f4_6045:
    inc b                                         ; $6045: $04
    rlca                                          ; $6046: $07
    ld [bc], a                                    ; $6047: $02
    inc bc                                        ; $6048: $03
    inc b                                         ; $6049: $04
    ld b, $02                                     ; $604a: $06 $02
    inc b                                         ; $604c: $04
    sbc d                                         ; $604d: $9a
    inc l                                         ; $604e: $2c
    ld e, h                                       ; $604f: $5c
    inc [hl]                                      ; $6050: $34
    ld c, h                                       ; $6051: $4c
    ld a, h                                       ; $6052: $7c
    inc e                                         ; $6053: $1c
    ld c, h                                       ; $6054: $4c
    inc a                                         ; $6055: $3c
    ld e, h                                       ; $6056: $5c
    inc a                                         ; $6057: $3c
    ld h, h                                       ; $6058: $64
    inc e                                         ; $6059: $1c
    ld l, h                                       ; $605a: $6c
    inc e                                         ; $605b: $1c
    inc l                                         ; $605c: $2c
    ld e, h                                       ; $605d: $5c
    halt                                          ; $605e: $76
    ld c, $1e                                     ; $605f: $0e $1e
    ld l, [hl]                                    ; $6061: $6e
    ld [hl], $4e                                  ; $6062: $36 $4e
    ld d, e                                       ; $6064: $53
    ld l, a                                       ; $6065: $6f
    add hl, de                                    ; $6066: $19
    ld h, a                                       ; $6067: $67
    ld [bc], a                                    ; $6068: $02
    ld [bc], a                                    ; $6069: $02
    ld [de], a                                    ; $606a: $12
    nop                                           ; $606b: $00
    adc l                                         ; $606c: $8d
    ret c                                         ; $606d: $d8

    jr c, jr_0f4_60ad                             ; $606e: $38 $3d

    db $fd                                        ; $6070: $fd
    add h                                         ; $6071: $84
    db $fc                                        ; $6072: $fc
    ld l, $de                                     ; $6073: $2e $de
    or [hl]                                       ; $6075: $b6
    adc $db                                       ; $6076: $ce $db
    rst $20                                       ; $6078: $e7
    jr nz, @+$05                                  ; $6079: $20 $03

    jr nc, jr_0f4_607f                            ; $607b: $30 $02

    ldh a, [rDIV]                                 ; $607d: $f0 $04

jr_0f4_607f:
    ld [hl], b                                    ; $607f: $70
    ld [bc], a                                    ; $6080: $02
    jr nc, @-$7a                                  ; $6081: $30 $84

    add hl, sp                                    ; $6083: $39
    ld a, $1e                                     ; $6084: $3e $1e
    rra                                           ; $6086: $1f
    ld [bc], a                                    ; $6087: $02
    rrca                                          ; $6088: $0f
    add d                                         ; $6089: $82
    ld c, $0f                                     ; $608a: $0e $0f
    ld [bc], a                                    ; $608c: $02
    rlca                                          ; $608d: $07
    inc b                                         ; $608e: $04
    inc bc                                        ; $608f: $03
    inc b                                         ; $6090: $04

jr_0f4_6091:
    ld bc, $0002                                  ; $6091: $01 $02 $00
    and b                                         ; $6094: $a0
    ldh a, [rSVBK]                                ; $6095: $f0 $70
    jr c, jr_0f4_6091                             ; $6097: $38 $f8

    ld e, b                                       ; $6099: $58
    cp b                                          ; $609a: $b8
    db $fc                                        ; $609b: $fc
    sbc h                                         ; $609c: $9c
    ld [hl], $ce                                  ; $609d: $36 $ce
    cp d                                          ; $609f: $ba
    add $d7                                       ; $60a0: $c6 $d7
    rst $28                                       ; $60a2: $ef
    adc e                                         ; $60a3: $8b
    rst $30                                       ; $60a4: $f7
    db $ed                                        ; $60a5: $ed
    di                                            ; $60a6: $f3
    or $f9                                        ; $60a7: $f6 $f9
    push af                                       ; $60a9: $f5
    ei                                            ; $60aa: $fb
    xor $f1                                       ; $60ab: $ee $f1

jr_0f4_60ad:
    ei                                            ; $60ad: $fb
    db $fd                                        ; $60ae: $fd
    ld [hl], e                                    ; $60af: $73
    ld a, h                                       ; $60b0: $7c
    ld a, l                                       ; $60b1: $7d
    ld a, [hl]                                    ; $60b2: $7e
    ld a, l                                       ; $60b3: $7d
    ld a, [hl]                                    ; $60b4: $7e
    inc b                                         ; $60b5: $04
    jr nz, jr_0f4_60ba                            ; $60b6: $20 $02

    jr nc, jr_0f4_60bc                            ; $60b8: $30 $02

jr_0f4_60ba:
    ld [hl-], a                                   ; $60ba: $32
    ld [bc], a                                    ; $60bb: $02

jr_0f4_60bc:
    jr nc, jr_0f4_6045                            ; $60bc: $30 $87

    jr jr_0f4_60f8                                ; $60be: $18 $38

    jr jr_0f4_60fa                                ; $60c0: $18 $38

    jr z, jr_0f4_60dc                             ; $60c2: $28 $18

    ld e, b                                       ; $60c4: $58
    ld [bc], a                                    ; $60c5: $02
    cp b                                          ; $60c6: $b8
    adc a                                         ; $60c7: $8f
    ret c                                         ; $60c8: $d8

    ld l, h                                       ; $60c9: $6c
    sbc h                                         ; $60ca: $9c
    ld [hl], h                                    ; $60cb: $74
    adc h                                         ; $60cc: $8c
    dec l                                         ; $60cd: $2d
    db $dd                                        ; $60ce: $dd
    and h                                         ; $60cf: $a4
    call c, $dc6c                                 ; $60d0: $dc $6c $dc
    or h                                          ; $60d3: $b4
    call z, $f8e0                                 ; $60d4: $cc $e0 $f8
    inc b                                         ; $60d7: $04
    ld a, b                                       ; $60d8: $78
    add c                                         ; $60d9: $81
    ld [hl], b                                    ; $60da: $70
    dec b                                         ; $60db: $05

jr_0f4_60dc:
    ld a, b                                       ; $60dc: $78
    add c                                         ; $60dd: $81
    ld [hl], b                                    ; $60de: $70
    inc bc                                        ; $60df: $03
    ld a, b                                       ; $60e0: $78
    sub c                                         ; $60e1: $91
    ld a, l                                       ; $60e2: $7d
    ld a, [hl]                                    ; $60e3: $7e
    ld a, e                                       ; $60e4: $7b
    ld a, h                                       ; $60e5: $7c
    ld [hl], l                                    ; $60e6: $75
    ld a, [hl]                                    ; $60e7: $7e
    ld a, e                                       ; $60e8: $7b
    ld a, h                                       ; $60e9: $7c
    ld a, l                                       ; $60ea: $7d
    ld a, [hl]                                    ; $60eb: $7e
    ld a, c                                       ; $60ec: $79
    ld a, [hl]                                    ; $60ed: $7e
    ld a, c                                       ; $60ee: $79
    ld a, [hl]                                    ; $60ef: $7e
    ld [hl], e                                    ; $60f0: $73
    ld a, h                                       ; $60f1: $7c
    ld bc, $0702                                  ; $60f2: $01 $02 $07
    add d                                         ; $60f5: $82
    inc bc                                        ; $60f6: $03
    dec b                                         ; $60f7: $05

jr_0f4_60f8:
    ld [bc], a                                    ; $60f8: $02
    inc bc                                        ; $60f9: $03

jr_0f4_60fa:
    add h                                         ; $60fa: $84
    rlca                                          ; $60fb: $07
    inc bc                                        ; $60fc: $03
    rlca                                          ; $60fd: $07
    dec b                                         ; $60fe: $05
    ld [bc], a                                    ; $60ff: $02
    inc bc                                        ; $6100: $03
    inc bc                                        ; $6101: $03
    rlca                                          ; $6102: $07
    sub b                                         ; $6103: $90
    dec hl                                        ; $6104: $2b
    rst $30                                       ; $6105: $f7
    jp z, $d6f6                                   ; $6106: $ca $f6 $d6

    xor $1e                                       ; $6109: $ee $1e
    and $b6                                       ; $610b: $e6 $b6
    adc $74                                       ; $610d: $ce $74
    adc h                                         ; $610f: $8c
    ld l, h                                       ; $6110: $6c
    sbc h                                         ; $6111: $9c
    ret c                                         ; $6112: $d8

    jr c, @+$04                                   ; $6113: $38 $02

    inc c                                         ; $6115: $0c
    ld [$821c], sp                                ; $6116: $08 $1c $82
    jr jr_0f4_6137                                ; $6119: $18 $1c

    ld [bc], a                                    ; $611b: $02
    inc a                                         ; $611c: $3c
    add h                                         ; $611d: $84
    jr nc, jr_0f4_615c                            ; $611e: $30 $3c

    ld [hl], h                                    ; $6120: $74
    ld a, a                                       ; $6121: $7f
    ld [bc], a                                    ; $6122: $02
    rst $38                                       ; $6123: $ff
    ld [bc], a                                    ; $6124: $02
    ei                                            ; $6125: $fb
    ld [bc], a                                    ; $6126: $02
    ld [hl], a                                    ; $6127: $77
    ld [bc], a                                    ; $6128: $02
    jp nc, Jump_000_0006                          ; $6129: $d2 $06 $00

    inc b                                         ; $612c: $04
    rlca                                          ; $612d: $07
    ld [bc], a                                    ; $612e: $02
    ld b, $02                                     ; $612f: $06 $02
    dec b                                         ; $6131: $05
    ld [bc], a                                    ; $6132: $02
    inc b                                         ; $6133: $04
    jr jr_0f4_6136                                ; $6134: $18 $00

jr_0f4_6136:
    ld [bc], a                                    ; $6136: $02

jr_0f4_6137:
    ld bc, $001c                                  ; $6137: $01 $1c $00
    rst $38                                       ; $613a: $ff
    inc hl                                        ; $613b: $23
    rrca                                          ; $613c: $0f
    ld hl, sp+$0b                                 ; $613d: $f8 $0b
    ldh a, [$0d]                                  ; $613f: $f0 $0d
    xor e                                         ; $6141: $ab
    db $fc                                        ; $6142: $fc
    xor h                                         ; $6143: $ac
    ld [bc], a                                    ; $6144: $02
    cp [hl]                                       ; $6145: $be
    di                                            ; $6146: $f3
    cp e                                          ; $6147: $bb
    ei                                            ; $6148: $fb
    cp h                                          ; $6149: $bc
    cp $cd                                        ; $614a: $fe $cd
    ld a, [c]                                     ; $614c: $f2
    set 6, [hl]                                   ; $614d: $cb $f6
    db $db                                        ; $614f: $db
    push af                                       ; $6150: $f5
    db $db                                        ; $6151: $db
    db $fd                                        ; $6152: $fd
    push hl                                       ; $6153: $e5
    ld bc, $fdeb                                  ; $6154: $01 $eb $fd
    push af                                       ; $6157: $f5
    ld bc, $fbfb                                  ; $6158: $01 $fb $fb
    dec b                                         ; $615b: $05

jr_0f4_615c:
    nop                                           ; $615c: $00
    dec bc                                        ; $615d: $0b
    ld hl, sp+$02                                 ; $615e: $f8 $02
    ld [bc], a                                    ; $6160: $02
    ld [bc], a                                    ; $6161: $02
    nop                                           ; $6162: $00
    ld [bc], a                                    ; $6163: $02
    dec bc                                        ; $6164: $0b
    ld [bc], a                                    ; $6165: $02
    dec d                                         ; $6166: $15
    ld [bc], a                                    ; $6167: $02
    ld c, $96                                     ; $6168: $0e $96
    dec e                                         ; $616a: $1d
    rra                                           ; $616b: $1f
    add hl, bc                                    ; $616c: $09
    rrca                                          ; $616d: $0f
    dec de                                        ; $616e: $1b
    rra                                           ; $616f: $1f
    jr z, @+$31                                   ; $6170: $28 $2f

    dec e                                         ; $6172: $1d
    rra                                           ; $6173: $1f
    cp c                                          ; $6174: $b9
    cp a                                          ; $6175: $bf
    ld [hl], $39                                  ; $6176: $36 $39
    dec [hl]                                      ; $6178: $35
    dec sp                                        ; $6179: $3b
    ld [hl], a                                    ; $617a: $77
    ld a, e                                       ; $617b: $7b
    ld l, e                                       ; $617c: $6b
    ld [hl], a                                    ; $617d: $77
    ld l, h                                       ; $617e: $6c
    ld [hl], e                                    ; $617f: $73
    ld [bc], a                                    ; $6180: $02
    jr nz, jr_0f4_6185                            ; $6181: $20 $02

    nop                                           ; $6183: $00
    ld [bc], a                                    ; $6184: $02

jr_0f4_6185:
    db $10                                        ; $6185: $10
    ld [bc], a                                    ; $6186: $02
    jr nz, jr_0f4_618b                            ; $6187: $20 $02

    jr nc, jr_0f4_618d                            ; $6189: $30 $02

jr_0f4_618b:
    jr c, jr_0f4_618f                             ; $618b: $38 $02

jr_0f4_618d:
    jr z, jr_0f4_6191                             ; $618d: $28 $02

jr_0f4_618f:
    jr c, jr_0f4_6193                             ; $618f: $38 $02

jr_0f4_6191:
    inc [hl]                                      ; $6191: $34
    ld [bc], a                                    ; $6192: $02

jr_0f4_6193:
    dec a                                         ; $6193: $3d
    ld [bc], a                                    ; $6194: $02
    jr c, jr_0f4_6199                             ; $6195: $38 $02

    inc a                                         ; $6197: $3c
    inc b                                         ; $6198: $04

jr_0f4_6199:
    jr c, jr_0f4_619d                             ; $6199: $38 $02

    jr nc, jr_0f4_619f                            ; $619b: $30 $02

jr_0f4_619d:
    ldh a, [rDIV]                                 ; $619d: $f0 $04

jr_0f4_619f:
    ld bc, $0302                                  ; $619f: $01 $02 $03
    add c                                         ; $61a2: $81
    ld b, $03                                     ; $61a3: $06 $03
    rlca                                          ; $61a5: $07
    and l                                         ; $61a6: $a5
    inc c                                         ; $61a7: $0c
    rrca                                          ; $61a8: $0f
    add hl, de                                    ; $61a9: $19
    ld e, $1a                                     ; $61aa: $1e $1a
    dec e                                         ; $61ac: $1d
    dec [hl]                                      ; $61ad: $35
    dec sp                                        ; $61ae: $3b
    dec l                                         ; $61af: $2d
    inc sp                                        ; $61b0: $33
    halt                                          ; $61b1: $76
    ld a, c                                       ; $61b2: $79
    ld h, h                                       ; $61b3: $64
    ld a, e                                       ; $61b4: $7b
    db $dd                                        ; $61b5: $dd
    db $e3                                        ; $61b6: $e3
    db $ed                                        ; $61b7: $ed
    rst $30                                       ; $61b8: $f7
    rst $00                                       ; $61b9: $c7
    rst $38                                       ; $61ba: $ff
    rst $28                                       ; $61bb: $ef
    rst $18                                       ; $61bc: $df
    ld a, b                                       ; $61bd: $78
    ld a, [hl]                                    ; $61be: $7e
    ld b, l                                       ; $61bf: $45
    ld a, e                                       ; $61c0: $7b
    db $eb                                        ; $61c1: $eb
    rst $30                                       ; $61c2: $f7
    rst $10                                       ; $61c3: $d7
    rst $28                                       ; $61c4: $ef
    or e                                          ; $61c5: $b3
    rst $08                                       ; $61c6: $cf
    xor a                                         ; $61c7: $af
    rst $18                                       ; $61c8: $df
    ld e, a                                       ; $61c9: $5f
    cp a                                          ; $61ca: $bf
    rrca                                          ; $61cb: $0f
    ld [bc], a                                    ; $61cc: $02
    rst $38                                       ; $61cd: $ff
    add l                                         ; $61ce: $85
    ld a, a                                       ; $61cf: $7f
    cp [hl]                                       ; $61d0: $be
    ld a, [hl]                                    ; $61d1: $7e
    ld a, h                                       ; $61d2: $7c
    db $fc                                        ; $61d3: $fc
    inc b                                         ; $61d4: $04
    ld hl, sp+$02                                 ; $61d5: $f8 $02
    ldh a, [rSC]                                  ; $61d7: $f0 $02
    ldh [rSC], a                                  ; $61d9: $e0 $02
    add sp, $04                                   ; $61db: $e8 $04
    rlca                                          ; $61dd: $07
    inc b                                         ; $61de: $04
    ld b, $04                                     ; $61df: $06 $04
    inc b                                         ; $61e1: $04
    inc d                                         ; $61e2: $14
    nop                                           ; $61e3: $00
    ld [bc], a                                    ; $61e4: $02
    add b                                         ; $61e5: $80
    sbc [hl]                                      ; $61e6: $9e
    sbc e                                         ; $61e7: $9b
    rst $20                                       ; $61e8: $e7
    rst $10                                       ; $61e9: $d7
    rst $28                                       ; $61ea: $ef
    db $d3                                        ; $61eb: $d3
    rst $28                                       ; $61ec: $ef
    or a                                          ; $61ed: $b7
    rst $08                                       ; $61ee: $cf
    cp e                                          ; $61ef: $bb
    rst $00                                       ; $61f0: $c7
    reti                                          ; $61f1: $d9


    rst $20                                       ; $61f2: $e7
    rst $10                                       ; $61f3: $d7
    rst $28                                       ; $61f4: $ef
    rst $20                                       ; $61f5: $e7
    rst $38                                       ; $61f6: $ff
    db $db                                        ; $61f7: $db
    rst $20                                       ; $61f8: $e7
    ld l, h                                       ; $61f9: $6c
    ld [hl], e                                    ; $61fa: $73
    ld [hl], l                                    ; $61fb: $75
    ld a, e                                       ; $61fc: $7b
    ld h, [hl]                                    ; $61fd: $66
    ld a, c                                       ; $61fe: $79
    ld [hl], $39                                  ; $61ff: $36 $39
    ld a, [hl-]                                   ; $6201: $3a
    dec a                                         ; $6202: $3d
    dec e                                         ; $6203: $1d
    ld e, $04                                     ; $6204: $1e $04
    ld b, $02                                     ; $6206: $06 $02
    inc b                                         ; $6208: $04
    db $10                                        ; $6209: $10
    inc c                                         ; $620a: $0c
    ld b, $0e                                     ; $620b: $06 $0e
    ld [bc], a                                    ; $620d: $02
    rrca                                          ; $620e: $0f
    add d                                         ; $620f: $82
    rlca                                          ; $6210: $07
    rrca                                          ; $6211: $0f
    ld [bc], a                                    ; $6212: $02
    rlca                                          ; $6213: $07
    adc a                                         ; $6214: $8f
    inc bc                                        ; $6215: $03
    rlca                                          ; $6216: $07
    call Call_0f4_6df3                            ; $6217: $cd $f3 $6d
    ld [hl], e                                    ; $621a: $73
    ld [hl], l                                    ; $621b: $75
    ld a, e                                       ; $621c: $7b
    ld a, [hl-]                                   ; $621d: $3a
    dec a                                         ; $621e: $3d
    ld [hl-], a                                   ; $621f: $32
    dec a                                         ; $6220: $3d
    dec e                                         ; $6221: $1d
    ld e, $09                                     ; $6222: $1e $09
    ld [bc], a                                    ; $6224: $02
    ld c, $84                                     ; $6225: $0e $84
    rrca                                          ; $6227: $0f
    ld b, $07                                     ; $6228: $06 $07
    ld [bc], a                                    ; $622a: $02
    inc bc                                        ; $622b: $03
    inc bc                                        ; $622c: $03
    inc b                                         ; $622d: $04
    ld bc, $0002                                  ; $622e: $01 $02 $00
    ld [bc], a                                    ; $6231: $02
    add b                                         ; $6232: $80
    inc b                                         ; $6233: $04
    ret nz                                        ; $6234: $c0

    inc b                                         ; $6235: $04
    ldh [$81], a                                  ; $6236: $e0 $81
    ld [hl], b                                    ; $6238: $70
    inc bc                                        ; $6239: $03
    ldh a, [$89]                                  ; $623a: $f0 $89
    ld a, b                                       ; $623c: $78
    ld hl, sp+$78                                 ; $623d: $f8 $78
    ld hl, sp-$44                                 ; $623f: $f8 $bc
    ld a, h                                       ; $6241: $7c
    sbc [hl]                                      ; $6242: $9e
    ld a, [hl]                                    ; $6243: $7e
    adc a                                         ; $6244: $8f
    ld [bc], a                                    ; $6245: $02
    ld a, a                                       ; $6246: $7f
    add a                                         ; $6247: $87
    cp a                                          ; $6248: $bf
    and a                                         ; $6249: $a7
    rst $18                                       ; $624a: $df
    xor a                                         ; $624b: $af
    rst $18                                       ; $624c: $df
    rst $08                                       ; $624d: $cf
    rst $38                                       ; $624e: $ff
    ld [bc], a                                    ; $624f: $02
    ld [$0004], sp                                ; $6250: $08 $04 $00
    ld [bc], a                                    ; $6253: $02
    ld bc, $0804                                  ; $6254: $01 $04 $08
    sbc e                                         ; $6257: $9b
    ld a, h                                       ; $6258: $7c
    db $fc                                        ; $6259: $fc
    inc a                                         ; $625a: $3c
    db $fc                                        ; $625b: $fc
    ld a, h                                       ; $625c: $7c
    db $fc                                        ; $625d: $fc
    cp [hl]                                       ; $625e: $be
    ld a, [hl]                                    ; $625f: $7e
    ld e, [hl]                                    ; $6260: $5e
    cp [hl]                                       ; $6261: $be
    ld e, [hl]                                    ; $6262: $5e
    cp [hl]                                       ; $6263: $be
    xor $1e                                       ; $6264: $ee $1e
    ld h, [hl]                                    ; $6266: $66
    sbc [hl]                                      ; $6267: $9e
    ld e, a                                       ; $6268: $5f
    cp a                                          ; $6269: $bf
    ld e, a                                       ; $626a: $5f
    cp a                                          ; $626b: $bf
    ret nc                                        ; $626c: $d0

    ldh [$90], a                                  ; $626d: $e0 $90
    ldh [$d0], a                                  ; $626f: $e0 $d0
    ldh [$60], a                                  ; $6271: $e0 $60
    inc bc                                        ; $6273: $03
    ld [hl], b                                    ; $6274: $70
    add h                                         ; $6275: $84
    ld h, b                                       ; $6276: $60
    ld [hl], b                                    ; $6277: $70
    ld h, b                                       ; $6278: $60
    ld [hl], b                                    ; $6279: $70
    ld b, $30                                     ; $627a: $06 $30
    adc h                                         ; $627c: $8c
    ld l, $31                                     ; $627d: $2e $31
    ld h, $39                                     ; $627f: $26 $39
    ld a, [hl-]                                   ; $6281: $3a
    dec a                                         ; $6282: $3d
    ld [hl], $39                                  ; $6283: $36 $39
    scf                                           ; $6285: $37
    jr c, @+$25                                   ; $6286: $38 $23

    inc a                                         ; $6288: $3c
    ld [bc], a                                    ; $6289: $02
    rrca                                          ; $628a: $0f
    add c                                         ; $628b: $81
    rlca                                          ; $628c: $07
    dec b                                         ; $628d: $05
    rrca                                          ; $628e: $0f
    sub l                                         ; $628f: $95
    inc bc                                        ; $6290: $03
    rrca                                          ; $6291: $0f
    rlca                                          ; $6292: $07
    rrca                                          ; $6293: $0f
    ld h, a                                       ; $6294: $67
    sbc a                                         ; $6295: $9f
    ld h, a                                       ; $6296: $67
    sbc a                                         ; $6297: $9f
    rst $28                                       ; $6298: $ef
    sbc a                                         ; $6299: $9f
    ld b, a                                       ; $629a: $47
    cp a                                          ; $629b: $bf
    ld e, a                                       ; $629c: $5f
    cp a                                          ; $629d: $bf
    ld c, a                                       ; $629e: $4f
    cp a                                          ; $629f: $bf
    ld e, a                                       ; $62a0: $5f
    cp a                                          ; $62a1: $bf
    ld b, [hl]                                    ; $62a2: $46
    cp [hl]                                       ; $62a3: $be
    ld e, [hl]                                    ; $62a4: $5e
    ld [bc], a                                    ; $62a5: $02
    cp [hl]                                       ; $62a6: $be
    add c                                         ; $62a7: $81
    ld a, [hl]                                    ; $62a8: $7e
    ld [$810c], sp                                ; $62a9: $08 $0c $81
    ld [$0c03], sp                                ; $62ac: $08 $03 $0c
    add d                                         ; $62af: $82
    ld [$040c], sp                                ; $62b0: $08 $0c $04
    inc e                                         ; $62b3: $1c
    adc h                                         ; $62b4: $8c
    db $10                                        ; $62b5: $10
    inc e                                         ; $62b6: $1c
    ld a, [de]                                    ; $62b7: $1a
    dec e                                         ; $62b8: $1d
    dec d                                         ; $62b9: $15
    dec de                                        ; $62ba: $1b
    ld a, $39                                     ; $62bb: $3e $39
    ld sp, $623f                                  ; $62bd: $31 $3f $62
    ld a, a                                       ; $62c0: $7f
    ld [bc], a                                    ; $62c1: $02
    rst $38                                       ; $62c2: $ff
    add d                                         ; $62c3: $82
    rrca                                          ; $62c4: $0f
    rra                                           ; $62c5: $1f
    inc b                                         ; $62c6: $04
    ld e, $04                                     ; $62c7: $1e $04
    inc e                                         ; $62c9: $1c
    ld [bc], a                                    ; $62ca: $02
    ld e, $02                                     ; $62cb: $1e $02
    ld a, b                                       ; $62cd: $78
    ld [bc], a                                    ; $62ce: $02
    db $f4                                        ; $62cf: $f4
    ld [bc], a                                    ; $62d0: $02
    ld d, b                                       ; $62d1: $50
    ld c, $00                                     ; $62d2: $0e $00
    ld [bc], a                                    ; $62d4: $02
    rra                                           ; $62d5: $1f
    ld [bc], a                                    ; $62d6: $02
    ld l, $02                                     ; $62d7: $2e $02
    ld [de], a                                    ; $62d9: $12
    ld a, [de]                                    ; $62da: $1a
    nop                                           ; $62db: $00
    rst $38                                       ; $62dc: $ff
    ld hl, $f80e                                  ; $62dd: $21 $0e $f8
    dec bc                                        ; $62e0: $0b
    ldh a, [$0d]                                  ; $62e1: $f0 $0d
    xor h                                         ; $62e3: $ac
    ld hl, sp-$53                                 ; $62e4: $f8 $ad
    nop                                           ; $62e6: $00
    cp h                                          ; $62e7: $bc
    db $fc                                        ; $62e8: $fc
    cp h                                          ; $62e9: $bc
    ld [bc], a                                    ; $62ea: $02
    call z, $ccf8                                 ; $62eb: $cc $f8 $cc
    nop                                           ; $62ee: $00
    call c, $dcf3                                 ; $62ef: $dc $f3 $dc
    ld a, [$f6ec]                                 ; $62f2: $fa $ec $f6
    db $ec                                        ; $62f5: $ec
    cp $f9                                        ; $62f6: $fe $f9
    nop                                           ; $62f8: $00
    db $fc                                        ; $62f9: $fc
    db $fc                                        ; $62fa: $fc
    add hl, bc                                    ; $62fb: $09
    rst $38                                       ; $62fc: $ff
    inc c                                         ; $62fd: $0c
    or $02                                        ; $62fe: $f6 $02
    ld c, b                                       ; $6300: $48
    ld [bc], a                                    ; $6301: $02
    inc b                                         ; $6302: $04
    ld [bc], a                                    ; $6303: $02
    xor e                                         ; $6304: $ab
    ld [bc], a                                    ; $6305: $02
    ld [hl], $02                                  ; $6306: $36 $02
    ld e, a                                       ; $6308: $5f
    add [hl]                                      ; $6309: $86
    ld a, d                                       ; $630a: $7a
    ld a, l                                       ; $630b: $7d
    add hl, hl                                    ; $630c: $29
    ld l, $1e                                     ; $630d: $2e $1e
    rra                                           ; $630f: $1f
    inc b                                         ; $6310: $04
    rrca                                          ; $6311: $0f
    ld [bc], a                                    ; $6312: $02
    rlca                                          ; $6313: $07
    inc b                                         ; $6314: $04
    inc bc                                        ; $6315: $03
    ld b, $01                                     ; $6316: $06 $01
    ld [bc], a                                    ; $6318: $02
    add b                                         ; $6319: $80
    ld [bc], a                                    ; $631a: $02
    nop                                           ; $631b: $00
    ld [bc], a                                    ; $631c: $02
    ret nz                                        ; $631d: $c0

    ld [bc], a                                    ; $631e: $02
    and b                                         ; $631f: $a0
    sbc b                                         ; $6320: $98
    ld b, b                                       ; $6321: $40
    ret nz                                        ; $6322: $c0

    or b                                          ; $6323: $b0
    ld [hl], b                                    ; $6324: $70
    ret nc                                        ; $6325: $d0

    jr nc, jr_0f4_6380                            ; $6326: $30 $58

    cp b                                          ; $6328: $b8
    ld l, l                                       ; $6329: $6d
    sbc l                                         ; $632a: $9d
    sub h                                         ; $632b: $94
    db $ec                                        ; $632c: $ec
    ld d, $ee                                     ; $632d: $16 $ee
    jp c, $cbe6                                   ; $632f: $da $e6 $cb

    rst $30                                       ; $6332: $f7
    xor a                                         ; $6333: $af
    di                                            ; $6334: $f3
    db $ed                                        ; $6335: $ed
    di                                            ; $6336: $f3
    rst $00                                       ; $6337: $c7
    ei                                            ; $6338: $fb
    ld [bc], a                                    ; $6339: $02
    db $10                                        ; $633a: $10
    add e                                         ; $633b: $83
    ld c, $0f                                     ; $633c: $0e $0f
    dec c                                         ; $633e: $0d
    dec b                                         ; $633f: $05
    rrca                                          ; $6340: $0f
    add d                                         ; $6341: $82
    ld c, $0f                                     ; $6342: $0e $0f
    ld b, $07                                     ; $6344: $06 $07
    add d                                         ; $6346: $82
    adc h                                         ; $6347: $8c
    adc a                                         ; $6348: $8f
    inc b                                         ; $6349: $04
    rrca                                          ; $634a: $0f
    add c                                         ; $634b: $81
    ld c, $03                                     ; $634c: $0e $03
    rrca                                          ; $634e: $0f
    add h                                         ; $634f: $84
    ld e, $1f                                     ; $6350: $1e $1f
    inc e                                         ; $6352: $1c
    rra                                           ; $6353: $1f
    ld [bc], a                                    ; $6354: $02
    ld [bc], a                                    ; $6355: $02
    sub l                                         ; $6356: $95
    ld [hl], $0e                                  ; $6357: $36 $0e
    ld a, [de]                                    ; $6359: $1a
    ld h, $2a                                     ; $635a: $26 $2a
    ld [hl], $06                                  ; $635c: $36 $06
    ld a, $1f                                     ; $635e: $3e $1f
    daa                                           ; $6360: $27

jr_0f4_6361:
    dec hl                                        ; $6361: $2b
    scf                                           ; $6362: $37
    dec hl                                        ; $6363: $2b
    scf                                           ; $6364: $37
    dec de                                        ; $6365: $1b
    daa                                           ; $6366: $27
    ld l, $36                                     ; $6367: $2e $36
    ld a, [de]                                    ; $6369: $1a
    ld h, $2e                                     ; $636a: $26 $2e
    ld [bc], a                                    ; $636c: $02
    ld [hl], $87                                  ; $636d: $36 $87
    ld c, $1a                                     ; $636f: $0e $1a
    ld h, $16                                     ; $6371: $26 $16
    ld l, $34                                     ; $6373: $2e $34
    inc c                                         ; $6375: $0c
    inc b                                         ; $6376: $04
    ld bc, $0304                                  ; $6377: $01 $04 $03
    ld [bc], a                                    ; $637a: $02
    rlca                                          ; $637b: $07
    add c                                         ; $637c: $81
    ld c, $03                                     ; $637d: $0e $03
    rrca                                          ; $637f: $0f

jr_0f4_6380:
    and c                                         ; $6380: $a1
    ld e, $1f                                     ; $6381: $1e $1f
    inc e                                         ; $6383: $1c
    rra                                           ; $6384: $1f
    dec e                                         ; $6385: $1d
    ld e, $3e                                     ; $6386: $1e $3e
    ccf                                           ; $6388: $3f
    dec [hl]                                      ; $6389: $35
    ld a, $79                                     ; $638a: $3e $79
    ld a, [hl]                                    ; $638c: $7e
    di                                            ; $638d: $f3
    db $fc                                        ; $638e: $fc
    and $f9                                       ; $638f: $e6 $f9
    or $f9                                        ; $6391: $f6 $f9
    rst $30                                       ; $6393: $f7
    ei                                            ; $6394: $fb
    rst $28                                       ; $6395: $ef
    di                                            ; $6396: $f3
    reti                                          ; $6397: $d9


    rst $20                                       ; $6398: $e7
    scf                                           ; $6399: $37
    rst $28                                       ; $639a: $ef
    jp c, Jump_0f4_76e6                           ; $639b: $da $e6 $76

jr_0f4_639e:
    adc $ac                                       ; $639e: $ce $ac
    call c, Call_000_020c                         ; $63a0: $dc $0c $02
    db $fc                                        ; $63a3: $fc
    adc d                                         ; $63a4: $8a
    inc a                                         ; $63a5: $3c
    ret c                                         ; $63a6: $d8

    jr c, jr_0f4_6361                             ; $63a7: $38 $b8

    ld a, b                                       ; $63a9: $78
    jr nc, @-$0e                                  ; $63aa: $30 $f0

    or b                                          ; $63ac: $b0
    ld [hl], b                                    ; $63ad: $70
    ld h, b                                       ; $63ae: $60
    inc bc                                        ; $63af: $03
    ldh [rSC], a                                  ; $63b0: $e0 $02
    ret nz                                        ; $63b2: $c0

    add d                                         ; $63b3: $82
    ld b, $07                                     ; $63b4: $06 $07
    inc b                                         ; $63b6: $04
    rrca                                          ; $63b7: $0f
    adc c                                         ; $63b8: $89
    inc e                                         ; $63b9: $1c
    rra                                           ; $63ba: $1f
    ld e, $1f                                     ; $63bb: $1e $1f
    ld e, $1f                                     ; $63bd: $1e $1f
    sbc l                                         ; $63bf: $9d
    sbc a                                         ; $63c0: $9f
    dec a                                         ; $63c1: $3d
    ld [bc], a                                    ; $63c2: $02
    ld a, $03                                     ; $63c3: $3e $03
    ccf                                           ; $63c5: $3f
    add l                                         ; $63c6: $85
    jr c, @+$41                                   ; $63c7: $38 $3f

    ld a, $3f                                     ; $63c9: $3e $3f
    inc e                                         ; $63cb: $1c
    inc bc                                        ; $63cc: $03
    rra                                           ; $63cd: $1f
    add c                                         ; $63ce: $81
    ld e, $03                                     ; $63cf: $1e $03
    rra                                           ; $63d1: $1f
    sbc l                                         ; $63d2: $9d
    ld d, a                                       ; $63d3: $57
    ld l, a                                       ; $63d4: $6f
    ld a, $46                                     ; $63d5: $3e $46
    ld d, $6e                                     ; $63d7: $16 $6e
    ld a, d                                       ; $63d9: $7a
    ld c, $26                                     ; $63da: $0e $26
    ld e, [hl]                                    ; $63dc: $5e
    ld l, h                                       ; $63dd: $6c
    inc e                                         ; $63de: $1c
    inc [hl]                                      ; $63df: $34
    ld c, h                                       ; $63e0: $4c
    ld l, l                                       ; $63e1: $6d
    dec e                                         ; $63e2: $1d
    ld l, h                                       ; $63e3: $6c
    inc e                                         ; $63e4: $1c
    inc [hl]                                      ; $63e5: $34
    ld c, h                                       ; $63e6: $4c
    ld l, h                                       ; $63e7: $6c
    inc e                                         ; $63e8: $1c
    inc h                                         ; $63e9: $24
    ld e, h                                       ; $63ea: $5c
    inc l                                         ; $63eb: $2c
    ld e, h                                       ; $63ec: $5c
    ld [hl], h                                    ; $63ed: $74
    ld c, h                                       ; $63ee: $4c
    ld a, $02                                     ; $63ef: $3e $02
    ld c, [hl]                                    ; $63f1: $4e
    adc [hl]                                      ; $63f2: $8e
    ld a, [hl]                                    ; $63f3: $7e
    di                                            ; $63f4: $f3
    db $fc                                        ; $63f5: $fc
    ld a, h                                       ; $63f6: $7c
    ld a, a                                       ; $63f7: $7f
    ld a, c                                       ; $63f8: $79
    ld a, [hl]                                    ; $63f9: $7e
    inc a                                         ; $63fa: $3c
    ccf                                           ; $63fb: $3f
    ld a, $3f                                     ; $63fc: $3e $3f
    dec e                                         ; $63fe: $1d
    rra                                           ; $63ff: $1f
    ld e, $03                                     ; $6400: $1e $03
    rra                                           ; $6402: $1f
    inc b                                         ; $6403: $04
    rrca                                          ; $6404: $0f
    inc b                                         ; $6405: $04
    rlca                                          ; $6406: $07
    ld b, $03                                     ; $6407: $06 $03
    ld [bc], a                                    ; $6409: $02
    ld bc, $2089                                  ; $640a: $01 $89 $20
    ldh [$60], a                                  ; $640d: $e0 $60
    ldh [$b0], a                                  ; $640f: $e0 $b0
    ld [hl], b                                    ; $6411: $70
    ldh a, [rSVBK]                                ; $6412: $f0 $70
    ret c                                         ; $6414: $d8

    ld [bc], a                                    ; $6415: $02
    jr c, jr_0f4_639e                             ; $6416: $38 $86

    ld hl, sp+$0c                                 ; $6418: $f8 $0c
    db $fc                                        ; $641a: $fc
    ld l, h                                       ; $641b: $6c
    call c, Call_000_0236                         ; $641c: $dc $36 $02
    adc $8d                                       ; $641f: $ce $8d
    cp $77                                        ; $6421: $fe $77
    rst $08                                       ; $6423: $cf
    sbc e                                         ; $6424: $9b
    rst $20                                       ; $6425: $e7
    pop hl                                        ; $6426: $e1
    rst $38                                       ; $6427: $ff
    call $e3f3                                    ; $6428: $cd $f3 $e3
    rst $38                                       ; $642b: $ff
    xor $f3                                       ; $642c: $ee $f3
    ld b, $02                                     ; $642e: $06 $02
    adc e                                         ; $6430: $8b
    db $db                                        ; $6431: $db
    rst $20                                       ; $6432: $e7
    dec e                                         ; $6433: $1d
    rst $20                                       ; $6434: $e7
    ld h, e                                       ; $6435: $63
    rst $38                                       ; $6436: $ff
    xor a                                         ; $6437: $af
    di                                            ; $6438: $f3
    call $adf3                                    ; $6439: $cd $f3 $ad
    ld [bc], a                                    ; $643c: $02
    di                                            ; $643d: $f3
    adc l                                         ; $643e: $8d
    rst $38                                       ; $643f: $ff
    adc l                                         ; $6440: $8d
    di                                            ; $6441: $f3
    add e                                         ; $6442: $83
    rst $38                                       ; $6443: $ff
    ld a, d                                       ; $6444: $7a
    and $76                                       ; $6445: $e6 $76
    adc [hl]                                      ; $6447: $8e
    ld d, d                                       ; $6448: $52
    xor [hl]                                      ; $6449: $ae
    ld [hl-], a                                   ; $644a: $32
    adc $04                                       ; $644b: $ce $04
    ld [hl], b                                    ; $644d: $70
    db $10                                        ; $644e: $10
    jr nc, jr_0f4_6453                            ; $644f: $30 $02

    ld [hl], b                                    ; $6451: $70
    add c                                         ; $6452: $81

jr_0f4_6453:
    ld h, b                                       ; $6453: $60
    inc bc                                        ; $6454: $03
    ld [hl], b                                    ; $6455: $70
    add h                                         ; $6456: $84
    ld l, b                                       ; $6457: $68
    ld a, a                                       ; $6458: $7f
    db $fc                                        ; $6459: $fc
    rst $38                                       ; $645a: $ff
    ld [bc], a                                    ; $645b: $02
    ld l, a                                       ; $645c: $6f
    add d                                         ; $645d: $82
    inc bc                                        ; $645e: $03
    rlca                                          ; $645f: $07
    ld [bc], a                                    ; $6460: $02
    ld b, $02                                     ; $6461: $06 $02
    dec b                                         ; $6463: $05
    ld [bc], a                                    ; $6464: $02
    jp c, $a802                                   ; $6465: $da $02 $a8

    ld d, $00                                     ; $6468: $16 $00
    ld [bc], a                                    ; $646a: $02
    inc bc                                        ; $646b: $03
    ld [bc], a                                    ; $646c: $02
    ld bc, $001c                                  ; $646d: $01 $1c $00
    rst $38                                       ; $6470: $ff
    ld hl, $f80e                                  ; $6471: $21 $0e $f8
    dec bc                                        ; $6474: $0b
    ldh a, [$0d]                                  ; $6475: $f0 $0d
    xor h                                         ; $6477: $ac
    ld hl, sp-$53                                 ; $6478: $f8 $ad
    nop                                           ; $647a: $00
    cp h                                          ; $647b: $bc
    rst $38                                       ; $647c: $ff
    cp h                                          ; $647d: $bc
    ld [bc], a                                    ; $647e: $02
    call z, $ccf8                                 ; $647f: $cc $f8 $cc
    nop                                           ; $6482: $00
    call c, $dcf5                                 ; $6483: $dc $f5 $dc
    ld a, [$f6ec]                                 ; $6486: $fa $ec $f6
    db $ec                                        ; $6489: $ec
    cp $f9                                        ; $648a: $fe $f9
    nop                                           ; $648c: $00
    db $fc                                        ; $648d: $fc
    ei                                            ; $648e: $fb
    add hl, bc                                    ; $648f: $09
    rst $38                                       ; $6490: $ff
    inc c                                         ; $6491: $0c
    rst $30                                       ; $6492: $f7
    ld [bc], a                                    ; $6493: $02
    jr nz, jr_0f4_6498                            ; $6494: $20 $02

    ld a, [bc]                                    ; $6496: $0a
    ld [bc], a                                    ; $6497: $02

jr_0f4_6498:
    ld d, a                                       ; $6498: $57
    ld [bc], a                                    ; $6499: $02
    cp [hl]                                       ; $649a: $be
    adc [hl]                                      ; $649b: $8e
    ld e, e                                       ; $649c: $5b
    ld e, a                                       ; $649d: $5f
    ld h, c                                       ; $649e: $61
    ld a, a                                       ; $649f: $7f
    ld [hl], $39                                  ; $64a0: $36 $39
    dec de                                        ; $64a2: $1b
    inc e                                         ; $64a3: $1c
    dec c                                         ; $64a4: $0d
    ld c, $0d                                     ; $64a5: $0e $0d
    ld c, $06                                     ; $64a7: $0e $06
    rlca                                          ; $64a9: $07
    ld [bc], a                                    ; $64aa: $02
    inc bc                                        ; $64ab: $03
    ld [bc], a                                    ; $64ac: $02
    dec bc                                        ; $64ad: $0b
    ld b, $01                                     ; $64ae: $06 $01
    ld [bc], a                                    ; $64b0: $02
    add b                                         ; $64b1: $80
    ld [bc], a                                    ; $64b2: $02
    nop                                           ; $64b3: $00
    ld [bc], a                                    ; $64b4: $02
    ret nz                                        ; $64b5: $c0

    ld [bc], a                                    ; $64b6: $02
    and b                                         ; $64b7: $a0
    ld [bc], a                                    ; $64b8: $02
    ret nz                                        ; $64b9: $c0

    ld [bc], a                                    ; $64ba: $02
    ldh a, [$94]                                  ; $64bb: $f0 $94
    jr nc, @-$0e                                  ; $64bd: $30 $f0

    ld a, b                                       ; $64bf: $78
    ld hl, sp-$44                                 ; $64c0: $f8 $bc
    ld a, h                                       ; $64c2: $7c
    ld e, h                                       ; $64c3: $5c
    cp h                                          ; $64c4: $bc
    ld e, [hl]                                    ; $64c5: $5e
    cp [hl]                                       ; $64c6: $be
    ld h, [hl]                                    ; $64c7: $66
    sbc [hl]                                      ; $64c8: $9e
    cpl                                           ; $64c9: $2f
    rst $18                                       ; $64ca: $df
    cp a                                          ; $64cb: $bf
    rst $08                                       ; $64cc: $cf
    or a                                          ; $64cd: $b7
    rst $08                                       ; $64ce: $cf
    rst $18                                       ; $64cf: $df
    rst $28                                       ; $64d0: $ef
    ld [bc], a                                    ; $64d1: $02
    add b                                         ; $64d2: $80
    sbc [hl]                                      ; $64d3: $9e
    ld e, e                                       ; $64d4: $5b
    ld h, a                                       ; $64d5: $67
    ld l, l                                       ; $64d6: $6d
    ld [hl], e                                    ; $64d7: $73
    ld [hl], l                                    ; $64d8: $75
    ld a, e                                       ; $64d9: $7b
    ld h, e                                       ; $64da: $63
    ld a, a                                       ; $64db: $7f
    ld c, a                                       ; $64dc: $4f
    ld [hl], e                                    ; $64dd: $73
    inc [hl]                                      ; $64de: $34
    dec sp                                        ; $64df: $3b
    dec [hl]                                      ; $64e0: $35
    dec sp                                        ; $64e1: $3b
    dec l                                         ; $64e2: $2d
    inc sp                                        ; $64e3: $33
    ld [hl], a                                    ; $64e4: $77
    ld a, e                                       ; $64e5: $7b
    ld l, l                                       ; $64e6: $6d
    ld [hl], e                                    ; $64e7: $73
    ld [hl], a                                    ; $64e8: $77
    ld a, e                                       ; $64e9: $7b
    ld e, e                                       ; $64ea: $5b
    ld h, a                                       ; $64eb: $67
    ld l, h                                       ; $64ec: $6c
    ld [hl], e                                    ; $64ed: $73
    db $eb                                        ; $64ee: $eb
    rst $30                                       ; $64ef: $f7
    db $db                                        ; $64f0: $db
    rst $20                                       ; $64f1: $e7
    ld [bc], a                                    ; $64f2: $02
    ld [bc], a                                    ; $64f3: $02
    ld [$0806], sp                                ; $64f4: $08 $06 $08
    rlca                                          ; $64f7: $07
    inc c                                         ; $64f8: $0c
    ld b, $02                                     ; $64f9: $06 $02
    inc b                                         ; $64fb: $04
    inc b                                         ; $64fc: $04
    ld bc, $0304                                  ; $64fd: $01 $04 $03
    ld [bc], a                                    ; $6500: $02
    rlca                                          ; $6501: $07
    and l                                         ; $6502: $a5
    dec l                                         ; $6503: $2d
    cpl                                           ; $6504: $2f
    ld c, $0f                                     ; $6505: $0e $0f
    jr jr_0f4_6528                                ; $6507: $18 $1f

    dec de                                        ; $6509: $1b
    inc e                                         ; $650a: $1c
    rla                                           ; $650b: $17
    jr jr_0f4_6548                                ; $650c: $18 $3a

    dec a                                         ; $650e: $3d
    inc [hl]                                      ; $650f: $34
    dec sp                                        ; $6510: $3b
    ld h, [hl]                                    ; $6511: $66
    ld a, c                                       ; $6512: $79
    call $dff7                                    ; $6513: $cd $f7 $df
    rst $28                                       ; $6516: $ef
    db $dd                                        ; $6517: $dd
    rst $20                                       ; $6518: $e7
    rst $18                                       ; $6519: $df
    rst $28                                       ; $651a: $ef
    cp a                                          ; $651b: $bf
    rst $08                                       ; $651c: $cf
    ld h, a                                       ; $651d: $67
    sbc a                                         ; $651e: $9f
    rst $18                                       ; $651f: $df
    cp a                                          ; $6520: $bf
    ld l, [hl]                                    ; $6521: $6e
    sbc [hl]                                      ; $6522: $9e
    sbc $3e                                       ; $6523: $de $3e
    cp h                                          ; $6525: $bc
    ld a, h                                       ; $6526: $7c
    inc a                                         ; $6527: $3c

jr_0f4_6528:
    inc bc                                        ; $6528: $03
    db $fc                                        ; $6529: $fc
    add d                                         ; $652a: $82
    ld a, b                                       ; $652b: $78
    ld hl, sp+$02                                 ; $652c: $f8 $02
    ld a, [$f004]                                 ; $652e: $fa $04 $f0
    inc b                                         ; $6531: $04
    ldh [rSC], a                                  ; $6532: $e0 $02
    ret nz                                        ; $6534: $c0

    sbc l                                         ; $6535: $9d
    ld a, [de]                                    ; $6536: $1a
    dec e                                         ; $6537: $1d
    scf                                           ; $6538: $37
    jr c, jr_0f4_656d                             ; $6539: $38 $32

    dec a                                         ; $653b: $3d
    ld l, a                                       ; $653c: $6f
    ld [hl], c                                    ; $653d: $71
    ld [hl], h                                    ; $653e: $74
    ld a, e                                       ; $653f: $7b
    ld l, l                                       ; $6540: $6d
    ld [hl], e                                    ; $6541: $73
    ld d, [hl]                                    ; $6542: $56
    ld a, c                                       ; $6543: $79
    db $fd                                        ; $6544: $fd
    db $e3                                        ; $6545: $e3
    db $ed                                        ; $6546: $ed

jr_0f4_6547:
    di                                            ; $6547: $f3

jr_0f4_6548:
    or $f9                                        ; $6548: $f6 $f9
    call $e4f3                                    ; $654a: $cd $f3 $e4
    ei                                            ; $654d: $fb
    ld [hl], l                                    ; $654e: $75
    ld a, e                                       ; $654f: $7b
    ld a, [hl]                                    ; $6550: $7e
    ld a, c                                       ; $6551: $79
    ld h, a                                       ; $6552: $67
    ld [bc], a                                    ; $6553: $02
    ld a, c                                       ; $6554: $79
    add c                                         ; $6555: $81
    ld a, a                                       ; $6556: $7f
    ld [bc], a                                    ; $6557: $02
    rra                                           ; $6558: $1f
    inc b                                         ; $6559: $04

jr_0f4_655a:
    ld e, $81                                     ; $655a: $1e $81
    ld c, $03                                     ; $655c: $0e $03
    ld e, $10                                     ; $655e: $1e $10
    inc e                                         ; $6560: $1c
    add d                                         ; $6561: $82
    inc c                                         ; $6562: $0c
    inc e                                         ; $6563: $1c
    inc b                                         ; $6564: $04
    ld e, $8d                                     ; $6565: $1e $8d
    db $ec                                        ; $6567: $ec
    di                                            ; $6568: $f3
    ld [hl], c                                    ; $6569: $71
    ld a, a                                       ; $656a: $7f
    ld h, [hl]                                    ; $656b: $66
    ld a, c                                       ; $656c: $79

jr_0f4_656d:
    inc sp                                        ; $656d: $33
    dec a                                         ; $656e: $3d
    dec sp                                        ; $656f: $3b
    inc a                                         ; $6570: $3c
    inc e                                         ; $6571: $1c
    rra                                           ; $6572: $1f
    jr jr_0f4_6578                                ; $6573: $18 $03

    rra                                           ; $6575: $1f
    add c                                         ; $6576: $81
    inc c                                         ; $6577: $0c

jr_0f4_6578:
    inc bc                                        ; $6578: $03
    rrca                                          ; $6579: $0f
    ld [bc], a                                    ; $657a: $02
    rlca                                          ; $657b: $07
    add d                                         ; $657c: $82
    ld b, $07                                     ; $657d: $06 $07
    ld b, $03                                     ; $657f: $06 $03
    ld [bc], a                                    ; $6581: $02
    ld bc, $e004                                  ; $6582: $01 $04 $e0
    add c                                         ; $6585: $81
    ld [hl], b                                    ; $6586: $70
    inc bc                                        ; $6587: $03
    ldh a, [$81]                                  ; $6588: $f0 $81
    ld a, b                                       ; $658a: $78
    inc bc                                        ; $658b: $03
    ld hl, sp-$7b                                 ; $658c: $f8 $85
    inc a                                         ; $658e: $3c
    db $fc                                        ; $658f: $fc
    cp h                                          ; $6590: $bc
    ld a, h                                       ; $6591: $7c
    adc $02                                       ; $6592: $ce $02
    ld a, $8d                                     ; $6594: $3e $8d
    cp $df                                        ; $6596: $fe $df
    ccf                                           ; $6598: $3f
    ld l, a                                       ; $6599: $6f
    sbc a                                         ; $659a: $9f
    add a                                         ; $659b: $87
    rst $38                                       ; $659c: $ff
    inc sp                                        ; $659d: $33
    rst $08                                       ; $659e: $cf
    adc a                                         ; $659f: $8f
    rst $38                                       ; $65a0: $ff
    cp e                                          ; $65a1: $bb
    rst $08                                       ; $65a2: $cf
    ld b, $02                                     ; $65a3: $06 $02
    adc e                                         ; $65a5: $8b
    ld l, a                                       ; $65a6: $6f
    sbc a                                         ; $65a7: $9f
    ld [hl], a                                    ; $65a8: $77
    sbc a                                         ; $65a9: $9f
    adc a                                         ; $65aa: $8f
    rst $38                                       ; $65ab: $ff
    cp a                                          ; $65ac: $bf
    rst $08                                       ; $65ad: $cf
    scf                                           ; $65ae: $37
    rst $08                                       ; $65af: $cf
    or e                                          ; $65b0: $b3
    ld [bc], a                                    ; $65b1: $02
    rst $08                                       ; $65b2: $cf
    add [hl]                                      ; $65b3: $86
    rst $38                                       ; $65b4: $ff
    scf                                           ; $65b5: $37
    rst $08                                       ; $65b6: $cf
    rrca                                          ; $65b7: $0f
    rst $38                                       ; $65b8: $ff
    and $02                                       ; $65b9: $e6 $02
    sbc [hl]                                      ; $65bb: $9e
    add l                                         ; $65bc: $85
    ld a, [hl]                                    ; $65bd: $7e
    ld a, $fe                                     ; $65be: $3e $fe
    sbc [hl]                                      ; $65c0: $9e
    ld a, [hl]                                    ; $65c1: $7e
    ld [bc], a                                    ; $65c2: $02
    jr c, jr_0f4_6547                             ; $65c3: $38 $82

    jr nc, @+$3a                                  ; $65c5: $30 $38

    ld a, [bc]                                    ; $65c7: $0a
    jr jr_0f4_65cc                                ; $65c8: $18 $02

    ld e, b                                       ; $65ca: $58
    add d                                         ; $65cb: $82

jr_0f4_65cc:
    db $10                                        ; $65cc: $10
    jr @+$05                                      ; $65cd: $18 $03

    jr c, jr_0f4_655a                             ; $65cf: $38 $89

    jr nc, jr_0f4_663b                            ; $65d1: $30 $68

    ld [hl], b                                    ; $65d3: $70
    ld l, b                                       ; $65d4: $68
    ld [hl], b                                    ; $65d5: $70
    ld b, b                                       ; $65d6: $40
    ld a, a                                       ; $65d7: $7f
    pop de                                        ; $65d8: $d1
    rst $30                                       ; $65d9: $f7
    ld [bc], a                                    ; $65da: $02
    cp a                                          ; $65db: $bf
    ld [bc], a                                    ; $65dc: $02
    inc c                                         ; $65dd: $0c
    ld [bc], a                                    ; $65de: $02
    rrca                                          ; $65df: $0f
    ld [bc], a                                    ; $65e0: $02
    dec b                                         ; $65e1: $05
    ld [bc], a                                    ; $65e2: $02
    jp c, Jump_000_2802                           ; $65e3: $da $02 $28

    ld d, $00                                     ; $65e6: $16 $00
    ld [bc], a                                    ; $65e8: $02
    ld b, $02                                     ; $65e9: $06 $02
    ld bc, $001c                                  ; $65eb: $01 $1c $00
    rst $38                                       ; $65ee: $ff
    inc hl                                        ; $65ef: $23
    rrca                                          ; $65f0: $0f
    ld hl, sp+$0b                                 ; $65f1: $f8 $0b
    ldh a, [$0d]                                  ; $65f3: $f0 $0d
    xor [hl]                                      ; $65f5: $ae
    db $f4                                        ; $65f6: $f4
    xor l                                         ; $65f7: $ad
    db $fc                                        ; $65f8: $fc
    cp l                                          ; $65f9: $bd
    ld hl, sp-$43                                 ; $65fa: $f8 $bd
    nop                                           ; $65fc: $00
    call z, $cd03                                 ; $65fd: $cc $03 $cd
    rst $38                                       ; $6600: $ff
    call c, $e001                                 ; $6601: $dc $01 $e0
    rst $30                                       ; $6604: $f7
    db $dd                                        ; $6605: $dd
    ei                                            ; $6606: $fb
    ldh a, [$f4]                                  ; $6607: $f0 $f4
    db $ed                                        ; $6609: $ed
    ld a, [$f8fd]                                 ; $660a: $fa $fd $f8
    db $fd                                        ; $660d: $fd
    nop                                           ; $660e: $00
    dec c                                         ; $660f: $0d
    db $fd                                        ; $6610: $fd
    dec c                                         ; $6611: $0d
    rst $38                                       ; $6612: $ff
    ld [bc], a                                    ; $6613: $02
    ld [bc], a                                    ; $6614: $02
    ld [bc], a                                    ; $6615: $02
    ld bc, $0202                                  ; $6616: $01 $02 $02
    ld [bc], a                                    ; $6619: $02
    ld bc, $0702                                  ; $661a: $01 $02 $07
    ld [bc], a                                    ; $661d: $02
    dec bc                                        ; $661e: $0b
    ld [bc], a                                    ; $661f: $02
    rlca                                          ; $6620: $07
    add d                                         ; $6621: $82
    ld c, $0f                                     ; $6622: $0e $0f
    ld [bc], a                                    ; $6624: $02
    rra                                           ; $6625: $1f
    adc b                                         ; $6626: $88
    inc c                                         ; $6627: $0c
    rrca                                          ; $6628: $0f
    rra                                           ; $6629: $1f
    ld e, $19                                     ; $662a: $1e $19
    ld e, $9e                                     ; $662c: $1e $9e
    sbc a                                         ; $662e: $9f
    inc b                                         ; $662f: $04
    rrca                                          ; $6630: $0f
    add d                                         ; $6631: $82
    inc c                                         ; $6632: $0c
    rrca                                          ; $6633: $0f
    ld [bc], a                                    ; $6634: $02
    ld c, b                                       ; $6635: $48
    ld [bc], a                                    ; $6636: $02
    or h                                          ; $6637: $b4
    ld [bc], a                                    ; $6638: $02
    add sp, -$61                                  ; $6639: $e8 $9f

jr_0f4_663b:
    sbc h                                         ; $663b: $9c

Call_0f4_663c:
    db $fc                                        ; $663c: $fc

jr_0f4_663d:
    add sp, -$28                                  ; $663d: $e8 $d8
    db $fc                                        ; $663f: $fc
    sbc h                                         ; $6640: $9c
    sbc b                                         ; $6641: $98
    ld hl, sp+$30                                 ; $6642: $f8 $30
    ldh a, [$f8]                                  ; $6644: $f0 $f8
    jr c, jr_0f4_6678                             ; $6646: $38 $30

    ldh a, [$58]                                  ; $6648: $f0 $58
    cp b                                          ; $664a: $b8
    ld e, b                                       ; $664b: $58
    cp b                                          ; $664c: $b8
    ldh a, [rSVBK]                                ; $664d: $f0 $70
    ld a, b                                       ; $664f: $78
    ld hl, sp-$28                                 ; $6650: $f8 $d8
    jr c, jr_0f4_663d                             ; $6652: $38 $e9

    sbc c                                         ; $6654: $99
    dec c                                         ; $6655: $0d
    inc bc                                        ; $6656: $03
    db $e4                                        ; $6657: $e4
    ei                                            ; $6658: $fb
    db $fc                                        ; $6659: $fc
    ld [bc], a                                    ; $665a: $02
    ei                                            ; $665b: $fb
    adc l                                         ; $665c: $8d
    db $fd                                        ; $665d: $fd
    ld h, d                                       ; $665e: $62
    ld a, l                                       ; $665f: $7d
    ld a, a                                       ; $6660: $7f
    ld a, b                                       ; $6661: $78
    ld a, l                                       ; $6662: $7d
    ld a, [hl]                                    ; $6663: $7e
    jr c, jr_0f4_66a5                             ; $6664: $38 $3f

    ld a, $3f                                     ; $6666: $3e $3f
    ld e, $1f                                     ; $6668: $1e $1f
    ld [bc], a                                    ; $666a: $02
    rrca                                          ; $666b: $0f

jr_0f4_666c:
    ld [bc], a                                    ; $666c: $02
    rlca                                          ; $666d: $07
    inc b                                         ; $666e: $04
    inc bc                                        ; $666f: $03
    inc b                                         ; $6670: $04
    ld bc, $8002                                  ; $6671: $01 $02 $80
    ld b, $c0                                     ; $6674: $06 $c0
    add e                                         ; $6676: $83
    ld h, b                                       ; $6677: $60

jr_0f4_6678:
    ldh [$b0], a                                  ; $6678: $e0 $b0
    ld [bc], a                                    ; $667a: $02
    ld [hl], b                                    ; $667b: $70
    inc bc                                        ; $667c: $03
    ldh a, [$90]                                  ; $667d: $f0 $90
    ld e, b                                       ; $667f: $58
    cp b                                          ; $6680: $b8
    sbc b                                         ; $6681: $98
    ld a, b                                       ; $6682: $78
    ld a, h                                       ; $6683: $7c
    sbc h                                         ; $6684: $9c
    inc l                                         ; $6685: $2c
    call c, $eede                                 ; $6686: $dc $de $ee
    or [hl]                                       ; $6689: $b6
    adc $e7                                       ; $668a: $ce $e7
    rst $38                                       ; $668c: $ff
    db $fd                                        ; $668d: $fd
    db $e3                                        ; $668e: $e3
    ld [bc], a                                    ; $668f: $02
    ld [bc], a                                    ; $6690: $02
    adc e                                         ; $6691: $8b
    jr c, jr_0f4_666c                             ; $6692: $38 $d8

    ld a, h                                       ; $6694: $7c
    sbc h                                         ; $6695: $9c
    inc l                                         ; $6696: $2c
    call c, $ec5c                                 ; $6697: $dc $5c $ec
    sub $ee                                       ; $669a: $d6 $ee
    ld a, $02                                     ; $669c: $3e $02
    adc $93                                       ; $669e: $ce $93
    cp $d6                                        ; $66a0: $fe $d6
    xor $b7                                       ; $66a2: $ee $b7
    rst $08                                       ; $66a4: $cf

jr_0f4_66a5:
    ld l, $de                                     ; $66a5: $2e $de
    or h                                          ; $66a7: $b4
    call z, $fc1c                                 ; $66a8: $cc $1c $fc
    ld [hl], h                                    ; $66ab: $74
    adc h                                         ; $66ac: $8c
    xor h                                         ; $66ad: $ac
    call c, $fccc                                 ; $66ae: $dc $cc $fc
    ret nz                                        ; $66b1: $c0

    ldh a, [rDIV]                                 ; $66b2: $f0 $04
    ld [hl], b                                    ; $66b4: $70
    add c                                         ; $66b5: $81
    ld h, b                                       ; $66b6: $60
    inc bc                                        ; $66b7: $03
    ld [hl], b                                    ; $66b8: $70
    ld a, [bc]                                    ; $66b9: $0a
    jr nc, jr_0f4_66c0                            ; $66ba: $30 $04

    ld [hl], b                                    ; $66bc: $70
    add c                                         ; $66bd: $81
    ld h, b                                       ; $66be: $60
    dec b                                         ; $66bf: $05

jr_0f4_66c0:
    ld [hl], b                                    ; $66c0: $70
    add d                                         ; $66c1: $82
    di                                            ; $66c2: $f3
    db $fd                                        ; $66c3: $fd
    ld [bc], a                                    ; $66c4: $02
    inc bc                                        ; $66c5: $03
    add c                                         ; $66c6: $81
    sbc d                                         ; $66c7: $9a
    ld [bc], a                                    ; $66c8: $02
    and $91                                       ; $66c9: $e6 $91
    cp $9a                                        ; $66cb: $fe $9a
    and $36                                       ; $66cd: $e6 $36
    adc $9e                                       ; $66cf: $ce $9e
    xor $3c                                       ; $66d1: $ee $3c
    call c, $9c6c                                 ; $66d3: $dc $6c $9c
    sbc b                                         ; $66d6: $98
    ld hl, sp-$18                                 ; $66d7: $f8 $e8
    jr @-$46                                      ; $66d9: $18 $b8

    ld a, b                                       ; $66db: $78
    ld [bc], a                                    ; $66dc: $02
    ldh a, [$86]                                  ; $66dd: $f0 $86
    or b                                          ; $66df: $b0
    ld [hl], b                                    ; $66e0: $70
    ld h, b                                       ; $66e1: $60
    ldh [$60], a                                  ; $66e2: $e0 $60
    ldh [rSC], a                                  ; $66e4: $e0 $02
    ret nz                                        ; $66e6: $c0

    inc b                                         ; $66e7: $04
    ld bc, $0302                                  ; $66e8: $01 $02 $03
    inc b                                         ; $66eb: $04
    rlca                                          ; $66ec: $07
    ld [bc], a                                    ; $66ed: $02
    rrca                                          ; $66ee: $0f
    add c                                         ; $66ef: $81
    ld c, $03                                     ; $66f0: $0e $03
    rrca                                          ; $66f2: $0f
    sub b                                         ; $66f3: $90
    ld e, $1f                                     ; $66f4: $1e $1f
    sbc h                                         ; $66f6: $9c
    sbc a                                         ; $66f7: $9f
    inc a                                         ; $66f8: $3c
    ccf                                           ; $66f9: $3f
    ld a, a                                       ; $66fa: $7f
    ld a, [hl]                                    ; $66fb: $7e
    ld a, e                                       ; $66fc: $7b
    ld a, h                                       ; $66fd: $7c
    ld h, [hl]                                    ; $66fe: $66
    ld a, a                                       ; $66ff: $7f
    ld h, a                                       ; $6700: $67
    ld a, b                                       ; $6701: $78
    rst $38                                       ; $6702: $ff
    db $fc                                        ; $6703: $fc
    ld a, [bc]                                    ; $6704: $0a
    inc c                                         ; $6705: $0c
    add c                                         ; $6706: $81
    ld [$0c05], sp                                ; $6707: $08 $05 $0c
    add e                                         ; $670a: $83
    ld [$000c], sp                                ; $670b: $08 $0c $00
    ld [bc], a                                    ; $670e: $02
    inc c                                         ; $670f: $0c
    adc [hl]                                      ; $6710: $8e
    ld [$000c], sp                                ; $6711: $08 $0c $00
    inc c                                         ; $6714: $0c
    nop                                           ; $6715: $00
    ld [$0804], sp                                ; $6716: $08 $04 $08
    inc b                                         ; $6719: $04
    dec bc                                        ; $671a: $0b
    rlca                                          ; $671b: $07
    inc e                                         ; $671c: $1c
    rra                                           ; $671d: $1f
    ld a, $03                                     ; $671e: $3e $03
    ccf                                           ; $6720: $3f
    sub e                                         ; $6721: $93
    inc sp                                        ; $6722: $33
    inc a                                         ; $6723: $3c
    dec a                                         ; $6724: $3d
    ld a, $72                                     ; $6725: $3e $72
    ld a, a                                       ; $6727: $7f
    ld a, l                                       ; $6728: $7d
    ld a, [hl]                                    ; $6729: $7e
    ld a, l                                       ; $672a: $7d
    ld a, [hl]                                    ; $672b: $7e
    ld a, l                                       ; $672c: $7d
    ld a, [hl]                                    ; $672d: $7e
    ld a, $3f                                     ; $672e: $3e $3f
    dec a                                         ; $6730: $3d
    ld a, $b1                                     ; $6731: $3e $b1
    cp [hl]                                       ; $6733: $be
    ld sp, $3e02                                  ; $6734: $31 $02 $3e
    add e                                         ; $6737: $83
    ccf                                           ; $6738: $3f
    add hl, de                                    ; $6739: $19
    ld e, $02                                     ; $673a: $1e $02
    rra                                           ; $673c: $1f
    ld [bc], a                                    ; $673d: $02
    rlca                                          ; $673e: $07
    adc l                                         ; $673f: $8d
    inc bc                                        ; $6740: $03
    rlca                                          ; $6741: $07
    ld [bc], a                                    ; $6742: $02
    ld b, $36                                     ; $6743: $06 $36
    ld c, $1e                                     ; $6745: $0e $1e
    ld a, $36                                     ; $6747: $3e $36
    ld l, $34                                     ; $6749: $2e $34
    inc c                                         ; $674b: $0c
    inc [hl]                                      ; $674c: $34
    ld [bc], a                                    ; $674d: $02
    inc c                                         ; $674e: $0c
    add d                                         ; $674f: $82
    inc a                                         ; $6750: $3c
    inc e                                         ; $6751: $1c
    ld [bc], a                                    ; $6752: $02
    inc l                                         ; $6753: $2c
    adc [hl]                                      ; $6754: $8e
    inc e                                         ; $6755: $1c
    inc l                                         ; $6756: $2c
    inc e                                         ; $6757: $1c
    inc l                                         ; $6758: $2c
    inc e                                         ; $6759: $1c
    inc a                                         ; $675a: $3c
    inc e                                         ; $675b: $1c
    ld l, $1e                                     ; $675c: $2e $1e
    ld c, $3e                                     ; $675e: $0e $3e
    inc c                                         ; $6760: $0c
    inc bc                                        ; $6761: $03
    add hl, bc                                    ; $6762: $09
    ld [bc], a                                    ; $6763: $02
    rlca                                          ; $6764: $07
    adc d                                         ; $6765: $8a
    dec bc                                        ; $6766: $0b
    db $ed                                        ; $6767: $ed
    di                                            ; $6768: $f3
    adc $f1                                       ; $6769: $ce $f1
    ld a, [$78fd]                                 ; $676b: $fa $fd $78
    ld a, a                                       ; $676e: $7f
    ld sp, $3e02                                  ; $676f: $31 $02 $3e
    adc l                                         ; $6772: $8d
    ccf                                           ; $6773: $3f
    dec a                                         ; $6774: $3d
    ccf                                           ; $6775: $3f
    ld e, $1f                                     ; $6776: $1e $1f
    ld l, $2f                                     ; $6778: $2e $2f

jr_0f4_677a:
    inc c                                         ; $677a: $0c
    rrca                                          ; $677b: $0f
    dec bc                                        ; $677c: $0b
    rrca                                          ; $677d: $0f
    dec b                                         ; $677e: $05
    rlca                                          ; $677f: $07
    ld [bc], a                                    ; $6780: $02
    ld a, [bc]                                    ; $6781: $0a
    inc b                                         ; $6782: $04
    add b                                         ; $6783: $80
    inc b                                         ; $6784: $04
    ret nz                                        ; $6785: $c0

    add c                                         ; $6786: $81
    ld h, b                                       ; $6787: $60

jr_0f4_6788:
    inc bc                                        ; $6788: $03
    ldh [$94], a                                  ; $6789: $e0 $94
    or b                                          ; $678b: $b0
    ldh a, [$d0]                                  ; $678c: $f0 $d0
    jr nc, jr_0f4_6788                            ; $678e: $30 $f8

    jr c, jr_0f4_677a                             ; $6790: $38 $e8

    jr jr_0f4_67a0                                ; $6792: $18 $0c

    db $fc                                        ; $6794: $fc
    call c, Call_0f4_663c                         ; $6795: $dc $3c $66
    cp $9a                                        ; $6798: $fe $9a
    ld a, [$7f7b]                                 ; $679a: $fa $7b $7f
    xor l                                         ; $679d: $ad
    db $ed                                        ; $679e: $ed
    ld [bc], a                                    ; $679f: $02

jr_0f4_67a0:
    db $d3                                        ; $67a0: $d3
    ld e, $00                                     ; $67a1: $1e $00
    ld [bc], a                                    ; $67a3: $02
    ld bc, $001e                                  ; $67a4: $01 $1e $00
    rst $38                                       ; $67a7: $ff
    ld hl, $f80e                                  ; $67a8: $21 $0e $f8
    dec bc                                        ; $67ab: $0b
    ldh a, [$0d]                                  ; $67ac: $f0 $0d
    xor l                                         ; $67ae: $ad
    rst $30                                       ; $67af: $f7
    xor [hl]                                      ; $67b0: $ae
    ld a, [$f8bd]                                 ; $67b1: $fa $bd $f8
    cp [hl]                                       ; $67b4: $be
    nop                                           ; $67b5: $00
    call $ceff                                    ; $67b6: $cd $ff $ce
    ld [bc], a                                    ; $67b9: $02
    db $dd                                        ; $67ba: $dd
    ld hl, sp-$23                                 ; $67bb: $f8 $dd
    nop                                           ; $67bd: $00
    db $ed                                        ; $67be: $ed
    push af                                       ; $67bf: $f5
    db $ed                                        ; $67c0: $ed
    ld a, [$f6fd]                                 ; $67c1: $fa $fd $f6
    db $fd                                        ; $67c4: $fd
    cp $09                                        ; $67c5: $fe $09
    nop                                           ; $67c7: $00
    dec c                                         ; $67c8: $0d
    rst $30                                       ; $67c9: $f7
    ld [bc], a                                    ; $67ca: $02
    add hl, bc                                    ; $67cb: $09
    ld [bc], a                                    ; $67cc: $02
    dec b                                         ; $67cd: $05
    ld [bc], a                                    ; $67ce: $02
    cpl                                           ; $67cf: $2f
    sbc d                                         ; $67d0: $9a
    dec de                                        ; $67d1: $1b
    rra                                           ; $67d2: $1f
    dec c                                         ; $67d3: $0d
    dec bc                                        ; $67d4: $0b
    scf                                           ; $67d5: $37
    dec sp                                        ; $67d6: $3b
    ld d, l                                       ; $67d7: $55
    ld e, e                                       ; $67d8: $5b
    dec hl                                        ; $67d9: $2b
    scf                                           ; $67da: $37
    ld l, e                                       ; $67db: $6b
    ld [hl], a                                    ; $67dc: $77
    rst $30                                       ; $67dd: $f7
    db $ed                                        ; $67de: $ed
    ld e, e                                       ; $67df: $5b
    ld h, a                                       ; $67e0: $67
    ld sp, hl                                     ; $67e1: $f9
    rst $00                                       ; $67e2: $c7
    sub a                                         ; $67e3: $97
    rst $28                                       ; $67e4: $ef
    rst $10                                       ; $67e5: $d7
    rst $28                                       ; $67e6: $ef
    ld a, e                                       ; $67e7: $7b
    ld h, a                                       ; $67e8: $67
    ld a, l                                       ; $67e9: $7d
    ld [hl], e                                    ; $67ea: $73
    ld [bc], a                                    ; $67eb: $02
    dec b                                         ; $67ec: $05
    ld [bc], a                                    ; $67ed: $02
    ld [bc], a                                    ; $67ee: $02
    ld [bc], a                                    ; $67ef: $02
    rlca                                          ; $67f0: $07
    ld [bc], a                                    ; $67f1: $02
    ld b, $02                                     ; $67f2: $06 $02
    rlca                                          ; $67f4: $07
    ld [bc], a                                    ; $67f5: $02
    ld b, $02                                     ; $67f6: $06 $02
    inc b                                         ; $67f8: $04
    ld [bc], a                                    ; $67f9: $02
    ld b, $02                                     ; $67fa: $06 $02
    inc b                                         ; $67fc: $04
    inc b                                         ; $67fd: $04
    ld b, $02                                     ; $67fe: $06 $02
    inc b                                         ; $6800: $04
    ld b, $06                                     ; $6801: $06 $06
    add a                                         ; $6803: $87
    sbc $3e                                       ; $6804: $de $3e
    add b                                         ; $6806: $80
    ret nz                                        ; $6807: $c0

    db $d3                                        ; $6808: $d3
    rst $28                                       ; $6809: $ef
    pop af                                        ; $680a: $f1
    ld [bc], a                                    ; $680b: $02
    rst $28                                       ; $680c: $ef
    sub c                                         ; $680d: $91
    rst $30                                       ; $680e: $f7
    ld c, c                                       ; $680f: $49
    ld [hl], a                                    ; $6810: $77
    ld a, [hl]                                    ; $6811: $7e
    ld h, c                                       ; $6812: $61
    ld [hl], l                                    ; $6813: $75
    ld a, e                                       ; $6814: $7b
    inc sp                                        ; $6815: $33
    ccf                                           ; $6816: $3f
    add hl, sp                                    ; $6817: $39
    ld a, $1a                                     ; $6818: $3e $1a
    dec e                                         ; $681a: $1d
    dec c                                         ; $681b: $0d
    ld c, $04                                     ; $681c: $0e $04
    rlca                                          ; $681e: $07
    inc b                                         ; $681f: $04
    inc bc                                        ; $6820: $03
    inc b                                         ; $6821: $04
    ld bc, $c002                                  ; $6822: $01 $02 $c0
    ld [bc], a                                    ; $6825: $02
    ret nc                                        ; $6826: $d0

    inc b                                         ; $6827: $04
    ldh [rTMA], a                                 ; $6828: $e0 $06
    ldh a, [$92]                                  ; $682a: $f0 $92
    ld a, b                                       ; $682c: $78
    ld hl, sp+$18                                 ; $682d: $f8 $18
    ld hl, sp-$44                                 ; $682f: $f8 $bc
    ld a, h                                       ; $6831: $7c
    cp h                                          ; $6832: $bc
    ld a, h                                       ; $6833: $7c
    ld a, [hl]                                    ; $6834: $7e
    cp [hl]                                       ; $6835: $be
    ld c, [hl]                                    ; $6836: $4e
    cp [hl]                                       ; $6837: $be
    sbc a                                         ; $6838: $9f
    rst $38                                       ; $6839: $ff
    di                                            ; $683a: $f3
    adc a                                         ; $683b: $8f
    sub a                                         ; $683c: $97
    rst $28                                       ; $683d: $ef
    ld [bc], a                                    ; $683e: $02
    add b                                         ; $683f: $80
    add e                                         ; $6840: $83
    ld a, a                                       ; $6841: $7f
    ld h, a                                       ; $6842: $67
    ld c, e                                       ; $6843: $4b
    ld [bc], a                                    ; $6844: $02
    ld [hl], a                                    ; $6845: $77
    add h                                         ; $6846: $84
    ld a, e                                       ; $6847: $7b
    ld [hl], l                                    ; $6848: $75
    ld a, e                                       ; $6849: $7b
    cpl                                           ; $684a: $2f
    ld [bc], a                                    ; $684b: $02
    inc sp                                        ; $684c: $33
    sub e                                         ; $684d: $93
    ccf                                           ; $684e: $3f
    dec [hl]                                      ; $684f: $35
    dec sp                                        ; $6850: $3b
    inc l                                         ; $6851: $2c
    inc sp                                        ; $6852: $33
    dec sp                                        ; $6853: $3b
    scf                                           ; $6854: $37
    ld l, l                                       ; $6855: $6d
    ld [hl], e                                    ; $6856: $73
    ld h, a                                       ; $6857: $67
    ld a, a                                       ; $6858: $7f
    db $dd                                        ; $6859: $dd
    db $e3                                        ; $685a: $e3
    ld l, e                                       ; $685b: $6b
    ld [hl], a                                    ; $685c: $77
    ld [hl], e                                    ; $685d: $73
    ld a, a                                       ; $685e: $7f
    rst $08                                       ; $685f: $cf
    rst $30                                       ; $6860: $f7
    ld b, $06                                     ; $6861: $06 $06
    inc c                                         ; $6863: $0c
    rlca                                          ; $6864: $07
    inc c                                         ; $6865: $0c
    ld b, $82                                     ; $6866: $06 $82
    call z, $063c                                 ; $6868: $cc $3c $06
    ld bc, $0304                                  ; $686b: $01 $04 $03
    add e                                         ; $686e: $83
    inc b                                         ; $686f: $04
    rlca                                          ; $6870: $07
    ld c, $03                                     ; $6871: $0e $03
    rrca                                          ; $6873: $0f
    and h                                         ; $6874: $a4
    dec e                                         ; $6875: $1d
    ld e, $11                                     ; $6876: $1e $11
    ld e, $1f                                     ; $6878: $1e $1f
    dec e                                         ; $687a: $1d
    scf                                           ; $687b: $37
    jr c, jr_0f4_68a4                             ; $687c: $38 $26

    add hl, sp                                    ; $687e: $39
    ld h, h                                       ; $687f: $64
    ld a, e                                       ; $6880: $7b
    db $fd                                        ; $6881: $fd
    di                                            ; $6882: $f3
    db $dd                                        ; $6883: $dd
    db $e3                                        ; $6884: $e3
    add b                                         ; $6885: $80
    ret nz                                        ; $6886: $c0

    rst $08                                       ; $6887: $cf
    rst $38                                       ; $6888: $ff
    scf                                           ; $6889: $37
    rst $08                                       ; $688a: $cf
    rst $28                                       ; $688b: $ef
    sbc a                                         ; $688c: $9f
    ccf                                           ; $688d: $3f
    rst $18                                       ; $688e: $df
    ld a, [hl]                                    ; $688f: $7e
    cp [hl]                                       ; $6890: $be
    sbc $3e                                       ; $6891: $de $3e
    inc a                                         ; $6893: $3c
    db $fc                                        ; $6894: $fc
    call c, Call_0f4_7c3c                         ; $6895: $dc $3c $7c
    db $fc                                        ; $6898: $fc
    ld [bc], a                                    ; $6899: $02
    ld hl, sp-$7e                                 ; $689a: $f8 $82
    ld a, b                                       ; $689c: $78
    ld hl, sp+$02                                 ; $689d: $f8 $02
    ldh a, [$82]                                  ; $689f: $f0 $82
    ld [hl], b                                    ; $68a1: $70
    ldh a, [rDIV]                                 ; $68a2: $f0 $04

jr_0f4_68a4:
    ldh [$a0], a                                  ; $68a4: $e0 $a0
    ld e, $1f                                     ; $68a6: $1e $1f
    rla                                           ; $68a8: $17
    jr @-$3f                                      ; $68a9: $18 $bf

    cp h                                          ; $68ab: $bc
    ld h, $39                                     ; $68ac: $26 $39
    ld [hl], e                                    ; $68ae: $73
    ld a, a                                       ; $68af: $7f
    ld a, [hl]                                    ; $68b0: $7e
    ld a, l                                       ; $68b1: $7d
    ld e, [hl]                                    ; $68b2: $5e
    ld h, c                                       ; $68b3: $61
    ld l, [hl]                                    ; $68b4: $6e
    ld [hl], c                                    ; $68b5: $71
    pop de                                        ; $68b6: $d1
    rst $38                                       ; $68b7: $ff
    db $eb                                        ; $68b8: $eb
    push af                                       ; $68b9: $f5
    db $ed                                        ; $68ba: $ed
    di                                            ; $68bb: $f3
    db $ec                                        ; $68bc: $ec
    di                                            ; $68bd: $f3
    ld [hl], l                                    ; $68be: $75
    ld a, e                                       ; $68bf: $7b
    ld l, a                                       ; $68c0: $6f
    ld [hl], e                                    ; $68c1: $73
    ld c, l                                       ; $68c2: $4d
    ld [hl], e                                    ; $68c3: $73
    ld l, c                                       ; $68c4: $69
    ld [hl], a                                    ; $68c5: $77
    ld [bc], a                                    ; $68c6: $02
    rra                                           ; $68c7: $1f
    add e                                         ; $68c8: $83
    rrca                                          ; $68c9: $0f
    rra                                           ; $68ca: $1f
    ld c, $07                                     ; $68cb: $0e $07
    ld e, $81                                     ; $68cd: $1e $81
    inc c                                         ; $68cf: $0c
    rrca                                          ; $68d0: $0f
    inc e                                         ; $68d1: $1c
    inc b                                         ; $68d2: $04
    ld e, $8f                                     ; $68d3: $1e $8f
    db $ec                                        ; $68d5: $ec
    di                                            ; $68d6: $f3
    ld e, c                                       ; $68d7: $59
    ld h, a                                       ; $68d8: $67
    ld [hl], a                                    ; $68d9: $77
    ld a, e                                       ; $68da: $7b
    dec l                                         ; $68db: $2d
    inc sp                                        ; $68dc: $33
    ccf                                           ; $68dd: $3f
    ld sp, $3d3a                                  ; $68de: $31 $3a $3d
    jr @+$21                                      ; $68e1: $18 $1f

    add hl, bc                                    ; $68e3: $09
    ld [bc], a                                    ; $68e4: $02
    ld c, $83                                     ; $68e5: $0e $83
    rrca                                          ; $68e7: $0f
    dec b                                         ; $68e8: $05
    rlca                                          ; $68e9: $07
    inc b                                         ; $68ea: $04
    inc bc                                        ; $68eb: $03
    add d                                         ; $68ec: $82
    ld [bc], a                                    ; $68ed: $02
    inc bc                                        ; $68ee: $03
    inc b                                         ; $68ef: $04
    ld bc, $0002                                  ; $68f0: $01 $02 $00
    inc b                                         ; $68f3: $04
    ldh [rDIV], a                                 ; $68f4: $e0 $04
    ldh a, [rDIV]                                 ; $68f6: $f0 $04
    ld hl, sp-$6c                                 ; $68f8: $f8 $94
    cp h                                          ; $68fa: $bc
    db $fc                                        ; $68fb: $fc
    call c, $fe3c                                 ; $68fc: $dc $3c $fe
    ld a, $e6                                     ; $68ff: $3e $e6
    ld e, $0f                                     ; $6901: $1e $0f
    rst $38                                       ; $6903: $ff
    jp nz, $853e                                  ; $6904: $c2 $3e $85

    rst $38                                       ; $6907: $ff
    ld a, [hl-]                                   ; $6908: $3a
    cp $4b                                        ; $6909: $fe $4b
    db $eb                                        ; $690b: $eb
    cp h                                          ; $690c: $bc
    cp l                                          ; $690d: $bd
    inc bc                                        ; $690e: $03
    ld [bc], a                                    ; $690f: $02
    add c                                         ; $6910: $81
    inc bc                                        ; $6911: $03
    ld [bc], a                                    ; $6912: $02
    nop                                           ; $6913: $00
    ld [bc], a                                    ; $6914: $02
    inc bc                                        ; $6915: $03
    ld [bc], a                                    ; $6916: $02
    sbc d                                         ; $6917: $9a
    ld d, $00                                     ; $6918: $16 $00
    ld [bc], a                                    ; $691a: $02
    inc bc                                        ; $691b: $03
    ld e, $00                                     ; $691c: $1e $00
    rst $38                                       ; $691e: $ff
    rlca                                          ; $691f: $07
    ld bc, $08f8                                  ; $6920: $01 $f8 $08
    db $f4                                        ; $6923: $f4
    ld a, [bc]                                    ; $6924: $0a
    cp $f8                                        ; $6925: $fe $f8
    add c                                         ; $6927: $81
    inc b                                         ; $6928: $04
    ld [bc], a                                    ; $6929: $02
    ld [bc], a                                    ; $692a: $02
    add a                                         ; $692b: $87
    ld bc, $0102                                  ; $692c: $01 $02 $01
    ld [bc], a                                    ; $692f: $02
    ld bc, $0204                                  ; $6930: $01 $04 $02
    ld d, $00                                     ; $6933: $16 $00
    rst $38                                       ; $6935: $ff
    rlca                                          ; $6936: $07
    ld bc, $08f8                                  ; $6937: $01 $f8 $08
    db $f4                                        ; $693a: $f4
    ld a, [bc]                                    ; $693b: $0a
    db $fc                                        ; $693c: $fc
    ld sp, hl                                     ; $693d: $f9
    adc e                                         ; $693e: $8b
    jr z, jr_0f4_6999                             ; $693f: $28 $58

    ld [$0514], sp                                ; $6941: $08 $14 $05
    dec bc                                        ; $6944: $0b
    ld [bc], a                                    ; $6945: $02
    dec b                                         ; $6946: $05
    ld a, [bc]                                    ; $6947: $0a
    dec d                                         ; $6948: $15
    ld [bc], a                                    ; $6949: $02
    ld [bc], a                                    ; $694a: $02
    dec b                                         ; $694b: $05
    add l                                         ; $694c: $85
    dec bc                                        ; $694d: $0b
    ld [$2814], sp                                ; $694e: $08 $14 $28
    ld e, b                                       ; $6951: $58
    ld c, $00                                     ; $6952: $0e $00
    rst $38                                       ; $6954: $ff
    add hl, bc                                    ; $6955: $09
    ld [bc], a                                    ; $6956: $02
    ld hl, sp+$08                                 ; $6957: $f8 $08
    db $f4                                        ; $6959: $f4
    ld a, [bc]                                    ; $695a: $0a
    ld a, [$faf8]                                 ; $695b: $fa $f8 $fa
    ld sp, hl                                     ; $695e: $f9
    add d                                         ; $695f: $82
    ld d, b                                       ; $6960: $50
    or b                                          ; $6961: $b0
    ld [bc], a                                    ; $6962: $02
    nop                                           ; $6963: $00
    adc l                                         ; $6964: $8d
    dec b                                         ; $6965: $05
    dec bc                                        ; $6966: $0b
    ld [bc], a                                    ; $6967: $02
    dec b                                         ; $6968: $05
    ld bc, $0102                                  ; $6969: $01 $02 $01
    ld [bc], a                                    ; $696c: $02
    ld d, c                                       ; $696d: $51
    or d                                          ; $696e: $b2
    ld bc, $0102                                  ; $696f: $01 $02 $01
    ld [bc], a                                    ; $6972: $02
    ld [bc], a                                    ; $6973: $02
    ld [bc], a                                    ; $6974: $02
    dec b                                         ; $6975: $05
    add c                                         ; $6976: $81
    dec bc                                        ; $6977: $0b
    ld [bc], a                                    ; $6978: $02
    nop                                           ; $6979: $00
    add d                                         ; $697a: $82
    ld d, b                                       ; $697b: $50
    or b                                          ; $697c: $b0
    inc c                                         ; $697d: $0c
    nop                                           ; $697e: $00
    ld [bc], a                                    ; $697f: $02
    ld bc, $0089                                  ; $6980: $01 $89 $00
    ld bc, $0100                                  ; $6983: $01 $00 $01
    nop                                           ; $6986: $00
    ld bc, $0100                                  ; $6987: $01 $00 $01
    nop                                           ; $698a: $00
    inc bc                                        ; $698b: $03
    ld bc, $000c                                  ; $698c: $01 $0c $00
    rst $38                                       ; $698f: $ff
    add hl, bc                                    ; $6990: $09
    ld [bc], a                                    ; $6991: $02
    ld hl, sp+$08                                 ; $6992: $f8 $08
    db $f4                                        ; $6994: $f4
    ld a, [bc]                                    ; $6995: $0a
    ld sp, hl                                     ; $6996: $f9
    rst $30                                       ; $6997: $f7
    ld sp, hl                                     ; $6998: $f9

jr_0f4_6999:
    ld sp, hl                                     ; $6999: $f9
    add d                                         ; $699a: $82
    ld d, b                                       ; $699b: $50
    or b                                          ; $699c: $b0
    ld [bc], a                                    ; $699d: $02
    nop                                           ; $699e: $00
    add d                                         ; $699f: $82
    dec b                                         ; $69a0: $05
    dec bc                                        ; $69a1: $0b
    ld [bc], a                                    ; $69a2: $02
    nop                                           ; $69a3: $00
    adc e                                         ; $69a4: $8b
    ld bc, $0002                                  ; $69a5: $01 $02 $00
    ld bc, $0100                                  ; $69a8: $01 $00 $01
    ld d, b                                       ; $69ab: $50
    ld sp, $0100                                  ; $69ac: $31 $00 $01
    nop                                           ; $69af: $00
    ld [bc], a                                    ; $69b0: $02
    ld bc, $0281                                  ; $69b1: $01 $81 $02
    ld [bc], a                                    ; $69b4: $02
    nop                                           ; $69b5: $00
    add d                                         ; $69b6: $82
    dec b                                         ; $69b7: $05
    dec bc                                        ; $69b8: $0b
    ld [bc], a                                    ; $69b9: $02
    nop                                           ; $69ba: $00
    add d                                         ; $69bb: $82
    ld d, b                                       ; $69bc: $50
    or b                                          ; $69bd: $b0
    ld a, [bc]                                    ; $69be: $0a
    nop                                           ; $69bf: $00
    adc e                                         ; $69c0: $8b
    ld bc, $0203                                  ; $69c1: $01 $03 $02
    ld bc, $0102                                  ; $69c4: $01 $02 $01
    ld [bc], a                                    ; $69c7: $02
    ld bc, $0102                                  ; $69c8: $01 $02 $01
    ld [bc], a                                    ; $69cb: $02
    ld [bc], a                                    ; $69cc: $02
    ld bc, $0381                                  ; $69cd: $01 $81 $03
    ld a, [bc]                                    ; $69d0: $0a
    nop                                           ; $69d1: $00
    rst $38                                       ; $69d2: $ff
    add hl, bc                                    ; $69d3: $09
    ld [bc], a                                    ; $69d4: $02
    ld hl, sp+$08                                 ; $69d5: $f8 $08
    db $f4                                        ; $69d7: $f4
    ld a, [bc]                                    ; $69d8: $0a
    ld sp, hl                                     ; $69d9: $f9
    rst $30                                       ; $69da: $f7
    ld sp, hl                                     ; $69db: $f9
    ld hl, sp-$7e                                 ; $69dc: $f8 $82
    ld b, b                                       ; $69de: $40
    add b                                         ; $69df: $80
    ld [bc], a                                    ; $69e0: $02
    nop                                           ; $69e1: $00
    add d                                         ; $69e2: $82
    inc b                                         ; $69e3: $04
    ld [$0002], sp                                ; $69e4: $08 $02 $00
    adc e                                         ; $69e7: $8b
    ld bc, $0002                                  ; $69e8: $01 $02 $00
    ld bc, $0100                                  ; $69eb: $01 $00 $01
    ld b, b                                       ; $69ee: $40
    add c                                         ; $69ef: $81
    nop                                           ; $69f0: $00
    ld bc, $0200                                  ; $69f1: $01 $00 $02
    ld bc, $0281                                  ; $69f4: $01 $81 $02
    ld [bc], a                                    ; $69f7: $02
    nop                                           ; $69f8: $00
    add d                                         ; $69f9: $82
    inc b                                         ; $69fa: $04
    ld [$0002], sp                                ; $69fb: $08 $02 $00
    add d                                         ; $69fe: $82
    ld b, b                                       ; $69ff: $40
    add b                                         ; $6a00: $80
    inc c                                         ; $6a01: $0c
    nop                                           ; $6a02: $00
    adc c                                         ; $6a03: $89
    ld bc, $0100                                  ; $6a04: $01 $00 $01
    nop                                           ; $6a07: $00
    ld bc, $0100                                  ; $6a08: $01 $00 $01
    nop                                           ; $6a0b: $00
    ld bc, $000d                                  ; $6a0c: $01 $0d $00
    rst $38                                       ; $6a0f: $ff
    add hl, bc                                    ; $6a10: $09
    ld [bc], a                                    ; $6a11: $02
    ld hl, sp+$08                                 ; $6a12: $f8 $08
    db $f4                                        ; $6a14: $f4
    ld a, [bc]                                    ; $6a15: $0a
    ld sp, hl                                     ; $6a16: $f9
    rst $30                                       ; $6a17: $f7
    ld sp, hl                                     ; $6a18: $f9
    ld hl, sp-$7e                                 ; $6a19: $f8 $82
    add b                                         ; $6a1b: $80
    ld b, b                                       ; $6a1c: $40
    ld [bc], a                                    ; $6a1d: $02
    nop                                           ; $6a1e: $00
    add d                                         ; $6a1f: $82
    ld [$0204], sp                                ; $6a20: $08 $04 $02
    nop                                           ; $6a23: $00
    add c                                         ; $6a24: $81
    ld [bc], a                                    ; $6a25: $02
    ld [bc], a                                    ; $6a26: $02
    ld bc, $008b                                  ; $6a27: $01 $8b $00
    ld bc, $8100                                  ; $6a2a: $01 $00 $81
    ld b, b                                       ; $6a2d: $40
    ld bc, $0100                                  ; $6a2e: $01 $00 $01
    nop                                           ; $6a31: $00
    ld [bc], a                                    ; $6a32: $02
    ld bc, $0002                                  ; $6a33: $01 $02 $00
    add d                                         ; $6a36: $82
    ld [$0204], sp                                ; $6a37: $08 $04 $02
    nop                                           ; $6a3a: $00
    add d                                         ; $6a3b: $82
    add b                                         ; $6a3c: $80
    ld b, b                                       ; $6a3d: $40
    dec c                                         ; $6a3e: $0d
    nop                                           ; $6a3f: $00
    adc c                                         ; $6a40: $89
    ld bc, $0100                                  ; $6a41: $01 $00 $01
    nop                                           ; $6a44: $00
    ld bc, $0100                                  ; $6a45: $01 $00 $01
    nop                                           ; $6a48: $00
    ld bc, $000c                                  ; $6a49: $01 $0c $00
    rst $38                                       ; $6a4c: $ff
    rlca                                          ; $6a4d: $07
    ld bc, $08f8                                  ; $6a4e: $01 $f8 $08
    db $f4                                        ; $6a51: $f4
    ld a, [bc]                                    ; $6a52: $0a
    dec bc                                        ; $6a53: $0b
    ld a, [$0583]                                 ; $6a54: $fa $83 $05
    rlca                                          ; $6a57: $07
    ld [bc], a                                    ; $6a58: $02
    ld [bc], a                                    ; $6a59: $02
    dec b                                         ; $6a5a: $05
    add c                                         ; $6a5b: $81
    rlca                                          ; $6a5c: $07
    ld a, [de]                                    ; $6a5d: $1a
    nop                                           ; $6a5e: $00
    rst $38                                       ; $6a5f: $ff
    rlca                                          ; $6a60: $07
    ld bc, $08f8                                  ; $6a61: $01 $f8 $08
    db $f4                                        ; $6a64: $f4
    ld a, [bc]                                    ; $6a65: $0a
    inc bc                                        ; $6a66: $03
    ld sp, hl                                     ; $6a67: $f9
    adc h                                         ; $6a68: $8c
    nop                                           ; $6a69: $00
    jr nz, jr_0f4_6adc                            ; $6a6a: $20 $70

    ld d, b                                       ; $6a6c: $50
    ld [hl], b                                    ; $6a6d: $70
    adc b                                         ; $6a6e: $88
    ld [hl], b                                    ; $6a6f: $70
    ld d, b                                       ; $6a70: $50
    nop                                           ; $6a71: $00
    jr nz, jr_0f4_6a74                            ; $6a72: $20 $00

jr_0f4_6a74:
    ld [$0002], sp                                ; $6a74: $08 $02 $00
    add e                                         ; $6a77: $83
    dec b                                         ; $6a78: $05
    rlca                                          ; $6a79: $07
    ld [bc], a                                    ; $6a7a: $02
    ld [bc], a                                    ; $6a7b: $02
    dec b                                         ; $6a7c: $05
    add c                                         ; $6a7d: $81
    rlca                                          ; $6a7e: $07
    inc c                                         ; $6a7f: $0c
    nop                                           ; $6a80: $00
    rst $38                                       ; $6a81: $ff
    add hl, bc                                    ; $6a82: $09
    ld [bc], a                                    ; $6a83: $02
    ld hl, sp+$08                                 ; $6a84: $f8 $08
    db $f4                                        ; $6a86: $f4
    ld a, [bc]                                    ; $6a87: $0a
    ei                                            ; $6a88: $fb
    ld hl, sp-$04                                 ; $6a89: $f8 $fc
    ld a, [$008a]                                 ; $6a8b: $fa $8a $00
    ld bc, $0203                                  ; $6a8e: $01 $03 $02
    inc bc                                        ; $6a91: $03
    inc b                                         ; $6a92: $04
    inc bc                                        ; $6a93: $03
    ld [bc], a                                    ; $6a94: $02
    nop                                           ; $6a95: $00
    ld bc, $0402                                  ; $6a96: $01 $02 $04
    add e                                         ; $6a99: $83
    ld d, b                                       ; $6a9a: $50
    ld [hl], b                                    ; $6a9b: $70
    jr nz, jr_0f4_6aa0                            ; $6a9c: $20 $02

    ld d, b                                       ; $6a9e: $50
    add c                                         ; $6a9f: $81

jr_0f4_6aa0:
    ld [hl], b                                    ; $6aa0: $70
    ld [bc], a                                    ; $6aa1: $02
    add b                                         ; $6aa2: $80
    ld [bc], a                                    ; $6aa3: $02
    nop                                           ; $6aa4: $00
    add e                                         ; $6aa5: $83
    ld d, b                                       ; $6aa6: $50
    ld [hl], b                                    ; $6aa7: $70
    jr nz, jr_0f4_6aac                            ; $6aa8: $20 $02

    ld d, b                                       ; $6aaa: $50
    add l                                         ; $6aab: $85

jr_0f4_6aac:
    ld [hl], b                                    ; $6aac: $70
    ld a, [bc]                                    ; $6aad: $0a
    ld c, $04                                     ; $6aae: $0e $04
    ld a, [bc]                                    ; $6ab0: $0a
    inc bc                                        ; $6ab1: $03
    ld [bc], a                                    ; $6ab2: $02
    add c                                         ; $6ab3: $81
    ld bc, $0202                                  ; $6ab4: $01 $02 $02
    inc bc                                        ; $6ab7: $03
    nop                                           ; $6ab8: $00
    add c                                         ; $6ab9: $81
    ld bc, $0014                                  ; $6aba: $01 $14 $00
    add d                                         ; $6abd: $82
    jr z, jr_0f4_6af8                             ; $6abe: $28 $38

    rst $38                                       ; $6ac0: $ff
    dec bc                                        ; $6ac1: $0b
    inc bc                                        ; $6ac2: $03
    ld hl, sp+$08                                 ; $6ac3: $f8 $08
    db $f4                                        ; $6ac5: $f4
    ld a, [bc]                                    ; $6ac6: $0a
    cp $f8                                        ; $6ac7: $fe $f8
    db $f4                                        ; $6ac9: $f4
    nop                                           ; $6aca: $00
    rst $30                                       ; $6acb: $f7
    ld bc, $1486                                  ; $6acc: $01 $86 $14
    inc e                                         ; $6acf: $1c
    ld [$5414], sp                                ; $6ad0: $08 $14 $54
    ld e, h                                       ; $6ad3: $5c
    inc b                                         ; $6ad4: $04
    nop                                           ; $6ad5: $00
    add e                                         ; $6ad6: $83
    and b                                         ; $6ad7: $a0
    db $e4                                        ; $6ad8: $e4
    ld b, b                                       ; $6ad9: $40
    ld [bc], a                                    ; $6ada: $02
    and b                                         ; $6adb: $a0

jr_0f4_6adc:
    add c                                         ; $6adc: $81
    ldh [rDIV], a                                 ; $6add: $e0 $04
    nop                                           ; $6adf: $00
    add e                                         ; $6ae0: $83
    ld d, b                                       ; $6ae1: $50
    ld [hl], b                                    ; $6ae2: $70
    jr nz, jr_0f4_6ae7                            ; $6ae3: $20 $02

    ld d, b                                       ; $6ae5: $50
    add c                                         ; $6ae6: $81

jr_0f4_6ae7:
    ld [hl], b                                    ; $6ae7: $70
    rlca                                          ; $6ae8: $07
    nop                                           ; $6ae9: $00
    sub e                                         ; $6aea: $93
    inc b                                         ; $6aeb: $04
    ld a, [bc]                                    ; $6aec: $0a
    ld c, $15                                     ; $6aed: $0e $15
    dec de                                        ; $6aef: $1b
    ld c, $31                                     ; $6af0: $0e $31
    dec d                                         ; $6af2: $15
    dec de                                        ; $6af3: $1b
    ld a, [bc]                                    ; $6af4: $0a
    ld l, $00                                     ; $6af5: $2e $00
    inc b                                         ; $6af7: $04

jr_0f4_6af8:
    and b                                         ; $6af8: $a0
    ldh [rLCDC], a                                ; $6af9: $e0 $40
    and h                                         ; $6afb: $a4
    and b                                         ; $6afc: $a0
    ldh [$03], a                                  ; $6afd: $e0 $03
    nop                                           ; $6aff: $00
    add c                                         ; $6b00: $81
    add b                                         ; $6b01: $80
    add hl, bc                                    ; $6b02: $09
    nop                                           ; $6b03: $00
    add c                                         ; $6b04: $81
    ld bc, $001e                                  ; $6b05: $01 $1e $00
    rst $38                                       ; $6b08: $ff
    dec bc                                        ; $6b09: $0b
    inc bc                                        ; $6b0a: $03
    ld hl, sp+$08                                 ; $6b0b: $f8 $08
    db $f4                                        ; $6b0d: $f4
    ld a, [bc]                                    ; $6b0e: $0a
    xor $fb                                       ; $6b0f: $ee $fb
    ld a, [c]                                     ; $6b11: $f2
    cp $fe                                        ; $6b12: $fe $fe
    ld a, [$0802]                                 ; $6b14: $fa $02 $08
    sub b                                         ; $6b17: $90
    nop                                           ; $6b18: $00
    ld [$141c], sp                                ; $6b19: $08 $1c $14
    ld a, [hl+]                                   ; $6b1c: $2a
    ld [hl], $be                                  ; $6b1d: $36 $be
    pop bc                                        ; $6b1f: $c1
    ld a, [hl+]                                   ; $6b20: $2a
    ld [hl], $1c                                  ; $6b21: $36 $1c
    inc d                                         ; $6b23: $14
    ld bc, $0a29                                  ; $6b24: $01 $29 $0a
    dec bc                                        ; $6b27: $0b
    ld [bc], a                                    ; $6b28: $02
    ld bc, $0082                                  ; $6b29: $01 $82 $00
    ld [bc], a                                    ; $6b2c: $02
    ld [bc], a                                    ; $6b2d: $02
    nop                                           ; $6b2e: $00
    ld [bc], a                                    ; $6b2f: $02
    ld bc, $0081                                  ; $6b30: $01 $81 $00
    inc bc                                        ; $6b33: $03
    ld bc, $1482                                  ; $6b34: $01 $82 $14
    inc e                                         ; $6b37: $1c
    ld [bc], a                                    ; $6b38: $02
    inc b                                         ; $6b39: $04
    ld [bc], a                                    ; $6b3a: $02
    nop                                           ; $6b3b: $00
    ld [bc], a                                    ; $6b3c: $02
    inc b                                         ; $6b3d: $04
    add [hl]                                      ; $6b3e: $86
    ld [bc], a                                    ; $6b3f: $02
    ld b, $05                                     ; $6b40: $06 $05
    inc bc                                        ; $6b42: $03
    ld [bc], a                                    ; $6b43: $02
    ld b, $02                                     ; $6b44: $06 $02
    inc b                                         ; $6b46: $04
    ld [bc], a                                    ; $6b47: $02
    nop                                           ; $6b48: $00
    add e                                         ; $6b49: $83
    ld [bc], a                                    ; $6b4a: $02
    ld b, $04                                     ; $6b4b: $06 $04
    ld [bc], a                                    ; $6b4d: $02
    ld [bc], a                                    ; $6b4e: $02
    add c                                         ; $6b4f: $81
    ld b, $02                                     ; $6b50: $06 $02
    nop                                           ; $6b52: $00
    add h                                         ; $6b53: $84
    ld b, b                                       ; $6b54: $40
    xor b                                         ; $6b55: $a8
    and b                                         ; $6b56: $a0
    ldh [$0a], a                                  ; $6b57: $e0 $0a
    nop                                           ; $6b59: $00
    add e                                         ; $6b5a: $83
    and b                                         ; $6b5b: $a0
    ldh [rLCDC], a                                ; $6b5c: $e0 $40
    ld [bc], a                                    ; $6b5e: $02
    and b                                         ; $6b5f: $a0
    add c                                         ; $6b60: $81
    ldh [rNR14], a                                ; $6b61: $e0 $14
    nop                                           ; $6b63: $00
    rst $38                                       ; $6b64: $ff
    add hl, bc                                    ; $6b65: $09
    ld [bc], a                                    ; $6b66: $02
    ld hl, sp+$08                                 ; $6b67: $f8 $08
    db $f4                                        ; $6b69: $f4
    ld a, [bc]                                    ; $6b6a: $0a
    ldh a, [$fc]                                  ; $6b6b: $f0 $fc
    ldh a, [$fd]                                  ; $6b6d: $f0 $fd
    adc e                                         ; $6b6f: $8b
    jr nc, jr_0f4_6b72                            ; $6b70: $30 $00

jr_0f4_6b72:
    ld c, b                                       ; $6b72: $48
    nop                                           ; $6b73: $00
    add h                                         ; $6b74: $84
    nop                                           ; $6b75: $00
    add h                                         ; $6b76: $84
    nop                                           ; $6b77: $00
    ld c, b                                       ; $6b78: $48
    nop                                           ; $6b79: $00
    jr nc, @+$06                                  ; $6b7a: $30 $04

    nop                                           ; $6b7c: $00
    add e                                         ; $6b7d: $83
    ld bc, $2000                                  ; $6b7e: $01 $00 $20
    ld [bc], a                                    ; $6b81: $02
    ld [bc], a                                    ; $6b82: $02
    add [hl]                                      ; $6b83: $86
    dec b                                         ; $6b84: $05
    rlca                                          ; $6b85: $07
    ld a, [bc]                                    ; $6b86: $0a
    dec c                                         ; $6b87: $0d
    dec b                                         ; $6b88: $05
    rlca                                          ; $6b89: $07
    ld [bc], a                                    ; $6b8a: $02
    ld [bc], a                                    ; $6b8b: $02
    ld a, [de]                                    ; $6b8c: $1a
    nop                                           ; $6b8d: $00
    ld [bc], a                                    ; $6b8e: $02
    ld bc, $0008                                  ; $6b8f: $01 $08 $00
    rst $38                                       ; $6b92: $ff
    add hl, bc                                    ; $6b93: $09
    ld [bc], a                                    ; $6b94: $02
    ld hl, sp+$08                                 ; $6b95: $f8 $08
    db $f4                                        ; $6b97: $f4
    ld a, [bc]                                    ; $6b98: $0a
    xor $fa                                       ; $6b99: $ee $fa
    xor $fc                                       ; $6b9b: $ee $fc
    add l                                         ; $6b9d: $85
    ld d, d                                       ; $6b9e: $52
    ld h, c                                       ; $6b9f: $61
    ret nz                                        ; $6ba0: $c0

    add b                                         ; $6ba1: $80
    nop                                           ; $6ba2: $00
    ld [bc], a                                    ; $6ba3: $02
    add b                                         ; $6ba4: $80
    dec b                                         ; $6ba5: $05
    nop                                           ; $6ba6: $00
    add c                                         ; $6ba7: $81
    add b                                         ; $6ba8: $80
    ld [bc], a                                    ; $6ba9: $02
    nop                                           ; $6baa: $00
    add l                                         ; $6bab: $85
    add b                                         ; $6bac: $80
    ret nz                                        ; $6bad: $c0

    add b                                         ; $6bae: $80
    ld d, d                                       ; $6baf: $52
    ld h, c                                       ; $6bb0: $61
    inc c                                         ; $6bb1: $0c
    nop                                           ; $6bb2: $00
    ld [bc], a                                    ; $6bb3: $02
    ld [bc], a                                    ; $6bb4: $02
    add e                                         ; $6bb5: $83
    inc bc                                        ; $6bb6: $03
    ld bc, $0200                                  ; $6bb7: $01 $00 $02
    ld bc, $0005                                  ; $6bba: $01 $05 $00
    add c                                         ; $6bbd: $81
    ld bc, $0002                                  ; $6bbe: $01 $02 $00
    add e                                         ; $6bc1: $83
    ld bc, $0103                                  ; $6bc2: $01 $03 $01
    ld [bc], a                                    ; $6bc5: $02
    ld [bc], a                                    ; $6bc6: $02
    inc c                                         ; $6bc7: $0c
    nop                                           ; $6bc8: $00
    rst $38                                       ; $6bc9: $ff
    rlca                                          ; $6bca: $07
    ld bc, $0bf5                                  ; $6bcb: $01 $f5 $0b
    push af                                       ; $6bce: $f5
    ld a, [bc]                                    ; $6bcf: $0a
    db $fd                                        ; $6bd0: $fd
    ld sp, hl                                     ; $6bd1: $f9
    add [hl]                                      ; $6bd2: $86
    nop                                           ; $6bd3: $00
    ld [bc], a                                    ; $6bd4: $02
    inc bc                                        ; $6bd5: $03
    dec b                                         ; $6bd6: $05
    nop                                           ; $6bd7: $00
    ld [bc], a                                    ; $6bd8: $02
    ld a, [de]                                    ; $6bd9: $1a
    nop                                           ; $6bda: $00
    rst $38                                       ; $6bdb: $ff
    rlca                                          ; $6bdc: $07
    ld bc, $0bf5                                  ; $6bdd: $01 $f5 $0b
    push af                                       ; $6be0: $f5
    ld a, [bc]                                    ; $6be1: $0a
    db $fc                                        ; $6be2: $fc
    ld a, [$0088]                                 ; $6be3: $fa $88 $00
    ld [bc], a                                    ; $6be6: $02
    inc bc                                        ; $6be7: $03
    dec b                                         ; $6be8: $05
    ld b, $0a                                     ; $6be9: $06 $0a
    rlca                                          ; $6beb: $07
    dec b                                         ; $6bec: $05
    ld [bc], a                                    ; $6bed: $02
    ld [bc], a                                    ; $6bee: $02
    ld d, $00                                     ; $6bef: $16 $00
    rst $38                                       ; $6bf1: $ff
    rlca                                          ; $6bf2: $07

Call_0f4_6bf3:
    ld bc, $0bf5                                  ; $6bf3: $01 $f5 $0b
    push af                                       ; $6bf6: $f5
    ld a, [bc]                                    ; $6bf7: $0a
    db $fc                                        ; $6bf8: $fc
    ei                                            ; $6bf9: $fb
    adc d                                         ; $6bfa: $8a
    nop                                           ; $6bfb: $00
    ld [bc], a                                    ; $6bfc: $02
    inc bc                                        ; $6bfd: $03
    dec b                                         ; $6bfe: $05
    nop                                           ; $6bff: $00
    ld a, [bc]                                    ; $6c00: $0a
    rrca                                          ; $6c01: $0f
    dec d                                         ; $6c02: $15
    nop                                           ; $6c03: $00
    ld a, [bc]                                    ; $6c04: $0a
    ld d, $00                                     ; $6c05: $16 $00
    rst $38                                       ; $6c07: $ff
    add hl, bc                                    ; $6c08: $09
    ld [bc], a                                    ; $6c09: $02
    push af                                       ; $6c0a: $f5
    dec bc                                        ; $6c0b: $0b
    push af                                       ; $6c0c: $f5
    ld a, [bc]                                    ; $6c0d: $0a
    ei                                            ; $6c0e: $fb
    ei                                            ; $6c0f: $fb
    ei                                            ; $6c10: $fb
    db $fc                                        ; $6c11: $fc
    sub b                                         ; $6c12: $90
    nop                                           ; $6c13: $00
    ld [bc], a                                    ; $6c14: $02
    inc bc                                        ; $6c15: $03
    dec b                                         ; $6c16: $05
    ld [bc], a                                    ; $6c17: $02
    ld [hl+], a                                   ; $6c18: $22
    jr nc, @+$57                                  ; $6c19: $30 $55

    ld h, $2b                                     ; $6c1b: $26 $2b
    dec b                                         ; $6c1d: $05
    ld b, l                                       ; $6c1e: $45
    ld h, b                                       ; $6c1f: $60
    and d                                         ; $6c20: $a2
    ld b, e                                       ; $6c21: $43
    ld d, l                                       ; $6c22: $55
    ld [bc], a                                    ; $6c23: $02
    ld [bc], a                                    ; $6c24: $02
    stop                                          ; $6c25: $10 $00
    ld [bc], a                                    ; $6c27: $02
    ld bc, $0004                                  ; $6c28: $01 $04 $00
    ld [bc], a                                    ; $6c2b: $02
    ld bc, $0016                                  ; $6c2c: $01 $16 $00
    rst $38                                       ; $6c2f: $ff
    add hl, bc                                    ; $6c30: $09
    ld [bc], a                                    ; $6c31: $02
    push af                                       ; $6c32: $f5
    dec bc                                        ; $6c33: $0b
    push af                                       ; $6c34: $f5
    ld a, [bc]                                    ; $6c35: $0a
    db $fc                                        ; $6c36: $fc
    ei                                            ; $6c37: $fb
    db $fc                                        ; $6c38: $fc
    db $fd                                        ; $6c39: $fd
    adc [hl]                                      ; $6c3a: $8e
    nop                                           ; $6c3b: $00
    ld [hl+], a                                   ; $6c3c: $22
    inc sp                                        ; $6c3d: $33
    ld d, l                                       ; $6c3e: $55
    ld a, [hl+]                                   ; $6c3f: $2a
    ld l, $00                                     ; $6c40: $2e $00
    ld b, h                                       ; $6c42: $44
    ld h, [hl]                                    ; $6c43: $66
    xor d                                         ; $6c44: $aa
    ld d, b                                       ; $6c45: $50
    ld e, b                                       ; $6c46: $58
    dec c                                         ; $6c47: $0d
    dec d                                         ; $6c48: $15
    ld [bc], a                                    ; $6c49: $02
    ld [$0010], sp                                ; $6c4a: $08 $10 $00
    ld [bc], a                                    ; $6c4d: $02
    ld bc, $0004                                  ; $6c4e: $01 $04 $00
    ld [bc], a                                    ; $6c51: $02
    ld [bc], a                                    ; $6c52: $02
    jr jr_0f4_6c55                                ; $6c53: $18 $00

jr_0f4_6c55:
    rst $38                                       ; $6c55: $ff
    add hl, bc                                    ; $6c56: $09
    ld [bc], a                                    ; $6c57: $02
    push af                                       ; $6c58: $f5
    dec bc                                        ; $6c59: $0b
    push af                                       ; $6c5a: $f5
    ld a, [bc]                                    ; $6c5b: $0a
    ei                                            ; $6c5c: $fb
    db $fc                                        ; $6c5d: $fc
    ei                                            ; $6c5e: $fb
    cp $90                                        ; $6c5f: $fe $90
    nop                                           ; $6c61: $00
    inc b                                         ; $6c62: $04
    ld b, $2a                                     ; $6c63: $06 $2a
    inc [hl]                                      ; $6c65: $34
    ld d, h                                       ; $6c66: $54

jr_0f4_6c67:
    ld [hl+], a                                   ; $6c67: $22
    ld a, [hl+]                                   ; $6c68: $2a
    inc c                                         ; $6c69: $0c
    ld d, h                                       ; $6c6a: $54
    ld e, b                                       ; $6c6b: $58
    sbc b                                         ; $6c6c: $98
    ld b, h                                       ; $6c6d: $44
    ld h, h                                       ; $6c6e: $64
    ld sp, $0251                                  ; $6c6f: $31 $51 $02
    jr nz, jr_0f4_6c84                            ; $6c72: $20 $10

    nop                                           ; $6c74: $00
    ld [bc], a                                    ; $6c75: $02
    ld bc, $0004                                  ; $6c76: $01 $04 $00
    ld [bc], a                                    ; $6c79: $02
    ld [bc], a                                    ; $6c7a: $02
    ld d, $00                                     ; $6c7b: $16 $00
    rst $38                                       ; $6c7d: $ff
    add hl, bc                                    ; $6c7e: $09
    ld [bc], a                                    ; $6c7f: $02
    push af                                       ; $6c80: $f5
    dec bc                                        ; $6c81: $0b
    push af                                       ; $6c82: $f5
    ld a, [bc]                                    ; $6c83: $0a

jr_0f4_6c84:
    db $fc                                        ; $6c84: $fc
    ei                                            ; $6c85: $fb
    db $fc                                        ; $6c86: $fc
    db $fd                                        ; $6c87: $fd
    adc [hl]                                      ; $6c88: $8e
    nop                                           ; $6c89: $00
    ld [hl+], a                                   ; $6c8a: $22
    inc sp                                        ; $6c8b: $33
    ld d, l                                       ; $6c8c: $55
    ld a, [hl+]                                   ; $6c8d: $2a
    ld l, $00                                     ; $6c8e: $2e $00
    ld b, h                                       ; $6c90: $44
    ld h, [hl]                                    ; $6c91: $66
    xor d                                         ; $6c92: $aa
    ld d, h                                       ; $6c93: $54
    ld e, h                                       ; $6c94: $5c
    dec c                                         ; $6c95: $0d
    dec d                                         ; $6c96: $15
    ld [bc], a                                    ; $6c97: $02
    ld [$0010], sp                                ; $6c98: $08 $10 $00
    ld [bc], a                                    ; $6c9b: $02
    ld bc, $0004                                  ; $6c9c: $01 $04 $00
    ld [bc], a                                    ; $6c9f: $02
    ld [bc], a                                    ; $6ca0: $02
    jr jr_0f4_6ca3                                ; $6ca1: $18 $00

jr_0f4_6ca3:
    rst $38                                       ; $6ca3: $ff
    add hl, bc                                    ; $6ca4: $09
    ld [bc], a                                    ; $6ca5: $02
    push af                                       ; $6ca6: $f5
    dec bc                                        ; $6ca7: $0b
    push af                                       ; $6ca8: $f5
    ld a, [bc]                                    ; $6ca9: $0a
    ei                                            ; $6caa: $fb
    ei                                            ; $6cab: $fb
    ei                                            ; $6cac: $fb
    db $fd                                        ; $6cad: $fd
    ld [bc], a                                    ; $6cae: $02
    ld [$0d8e], sp                                ; $6caf: $08 $8e $0d
    dec d                                         ; $6cb2: $15
    ld d, b                                       ; $6cb3: $50
    ld e, b                                       ; $6cb4: $58
    ld h, [hl]                                    ; $6cb5: $66
    xor d                                         ; $6cb6: $aa
    nop                                           ; $6cb7: $00
    ld b, h                                       ; $6cb8: $44
    ld a, [hl+]                                   ; $6cb9: $2a
    ld l, $33                                     ; $6cba: $2e $33
    ld d, l                                       ; $6cbc: $55
    nop                                           ; $6cbd: $00
    ld [hl+], a                                   ; $6cbe: $22
    jr jr_0f4_6cc1                                ; $6cbf: $18 $00

jr_0f4_6cc1:
    ld [bc], a                                    ; $6cc1: $02
    ld [bc], a                                    ; $6cc2: $02
    inc b                                         ; $6cc3: $04
    nop                                           ; $6cc4: $00
    ld [bc], a                                    ; $6cc5: $02
    ld bc, $0010                                  ; $6cc6: $01 $10 $00
    rst $38                                       ; $6cc9: $ff
    add hl, bc                                    ; $6cca: $09
    ld [bc], a                                    ; $6ccb: $02
    push af                                       ; $6ccc: $f5
    dec bc                                        ; $6ccd: $0b
    push af                                       ; $6cce: $f5
    ld a, [bc]                                    ; $6ccf: $0a
    ei                                            ; $6cd0: $fb
    db $fc                                        ; $6cd1: $fc
    ei                                            ; $6cd2: $fb
    cp $02                                        ; $6cd3: $fe $02
    jr nz, jr_0f4_6c67                            ; $6cd5: $20 $90

    ld sp, $4451                                  ; $6cd7: $31 $51 $44
    ld h, h                                       ; $6cda: $64
    ld l, b                                       ; $6cdb: $68
    xor b                                         ; $6cdc: $a8
    inc c                                         ; $6cdd: $0c
    ld d, h                                       ; $6cde: $54
    ld [hl+], a                                   ; $6cdf: $22
    ld a, [hl+]                                   ; $6ce0: $2a
    inc [hl]                                      ; $6ce1: $34
    ld d, h                                       ; $6ce2: $54
    ld b, $2a                                     ; $6ce3: $06 $2a
    nop                                           ; $6ce5: $00
    inc b                                         ; $6ce6: $04
    ld d, $00                                     ; $6ce7: $16 $00
    ld [bc], a                                    ; $6ce9: $02
    ld [bc], a                                    ; $6cea: $02
    inc b                                         ; $6ceb: $04
    nop                                           ; $6cec: $00
    ld [bc], a                                    ; $6ced: $02
    ld bc, $0010                                  ; $6cee: $01 $10 $00
    rst $38                                       ; $6cf1: $ff
    add hl, bc                                    ; $6cf2: $09
    ld [bc], a                                    ; $6cf3: $02
    push af                                       ; $6cf4: $f5
    dec bc                                        ; $6cf5: $0b
    push af                                       ; $6cf6: $f5
    ld a, [bc]                                    ; $6cf7: $0a
    ei                                            ; $6cf8: $fb
    ei                                            ; $6cf9: $fb
    ei                                            ; $6cfa: $fb
    db $fc                                        ; $6cfb: $fc
    sub d                                         ; $6cfc: $92
    nop                                           ; $6cfd: $00
    ld de, $0400                                  ; $6cfe: $11 $00 $04
    ld [de], a                                    ; $6d01: $12
    ld b, b                                       ; $6d02: $40
    nop                                           ; $6d03: $00
    inc hl                                        ; $6d04: $23
    ld hl, $4829                                  ; $6d05: $21 $29 $48
    add h                                         ; $6d08: $84
    nop                                           ; $6d09: $00
    ld [bc], a                                    ; $6d0a: $02
    ld c, b                                       ; $6d0b: $48
    ld d, b                                       ; $6d0c: $50
    nop                                           ; $6d0d: $00
    ld [$0010], sp                                ; $6d0e: $08 $10 $00
    ld [bc], a                                    ; $6d11: $02
    ld bc, $000a                                  ; $6d12: $01 $0a $00
    ld [bc], a                                    ; $6d15: $02
    ld bc, $0010                                  ; $6d16: $01 $10 $00
    rst $38                                       ; $6d19: $ff
    add hl, bc                                    ; $6d1a: $09
    ld [bc], a                                    ; $6d1b: $02
    push af                                       ; $6d1c: $f5
    dec bc                                        ; $6d1d: $0b
    push af                                       ; $6d1e: $f5
    ld a, [bc]                                    ; $6d1f: $0a
    ld hl, sp-$06                                 ; $6d20: $f8 $fa
    ld hl, sp-$01                                 ; $6d22: $f8 $ff
    add d                                         ; $6d24: $82
    nop                                           ; $6d25: $00
    ld bc, $1002                                  ; $6d26: $01 $02 $10
    inc bc                                        ; $6d29: $03
    nop                                           ; $6d2a: $00
    add c                                         ; $6d2b: $81
    ld b, d                                       ; $6d2c: $42
    ld [bc], a                                    ; $6d2d: $02
    ld hl, $0002                                  ; $6d2e: $21 $02 $00
    add d                                         ; $6d31: $82
    ld [$0280], sp                                ; $6d32: $08 $80 $02
    ld [hl+], a                                   ; $6d35: $22
    add d                                         ; $6d36: $82
    add b                                         ; $6d37: $80
    inc b                                         ; $6d38: $04
    ld [bc], a                                    ; $6d39: $02
    nop                                           ; $6d3a: $00
    add l                                         ; $6d3b: $85
    ld b, b                                       ; $6d3c: $40
    ld b, d                                       ; $6d3d: $42
    nop                                           ; $6d3e: $00
    ld [$0220], sp                                ; $6d3f: $08 $20 $02
    nop                                           ; $6d42: $00
    add c                                         ; $6d43: $81
    inc b                                         ; $6d44: $04
    ld [$8200], sp                                ; $6d45: $08 $00 $82
    ld [de], a                                    ; $6d48: $12
    ld [bc], a                                    ; $6d49: $02
    dec b                                         ; $6d4a: $05
    nop                                           ; $6d4b: $00
    add d                                         ; $6d4c: $82
    ld [bc], a                                    ; $6d4d: $02
    inc b                                         ; $6d4e: $04
    inc bc                                        ; $6d4f: $03
    nop                                           ; $6d50: $00
    add d                                         ; $6d51: $82
    ld [$020c], sp                                ; $6d52: $08 $0c $02
    nop                                           ; $6d55: $00
    add d                                         ; $6d56: $82
    ld [bc], a                                    ; $6d57: $02
    nop                                           ; $6d58: $00
    ld [bc], a                                    ; $6d59: $02
    ld de, $0008                                  ; $6d5a: $11 $08 $00
    rst $38                                       ; $6d5d: $ff
    dec bc                                        ; $6d5e: $0b
    inc bc                                        ; $6d5f: $03
    push af                                       ; $6d60: $f5
    dec bc                                        ; $6d61: $0b
    push af                                       ; $6d62: $f5
    ld a, [bc]                                    ; $6d63: $0a
    rlca                                          ; $6d64: $07
    rst $30                                       ; $6d65: $f7
    rlca                                          ; $6d66: $07
    cp $07                                        ; $6d67: $fe $07
    ld [bc], a                                    ; $6d69: $02
    add h                                         ; $6d6a: $84
    ld [hl+], a                                   ; $6d6b: $22
    nop                                           ; $6d6c: $00
    add c                                         ; $6d6d: $81
    rst $30                                       ; $6d6e: $f7
    ld [bc], a                                    ; $6d6f: $02
    ld d, [hl]                                    ; $6d70: $56
    ld a, [de]                                    ; $6d71: $1a
    nop                                           ; $6d72: $00
    add h                                         ; $6d73: $84
    ld hl, $4200                                  ; $6d74: $21 $00 $42
    ld a, e                                       ; $6d77: $7b
    ld [bc], a                                    ; $6d78: $02
    add hl, hl                                    ; $6d79: $29
    ld a, [de]                                    ; $6d7a: $1a
    nop                                           ; $6d7b: $00
    add h                                         ; $6d7c: $84
    ld [bc], a                                    ; $6d7d: $02
    nop                                           ; $6d7e: $00
    ld bc, $0207                                  ; $6d7f: $01 $07 $02
    ld b, $1a                                     ; $6d82: $06 $1a
    nop                                           ; $6d84: $00
    rst $38                                       ; $6d85: $ff
    dec bc                                        ; $6d86: $0b
    inc bc                                        ; $6d87: $03
    push af                                       ; $6d88: $f5
    dec bc                                        ; $6d89: $0b
    push af                                       ; $6d8a: $f5
    ld a, [bc]                                    ; $6d8b: $0a
    ld bc, $01f7                                  ; $6d8c: $01 $f7 $01
    rst $38                                       ; $6d8f: $ff
    ld bc, $0202                                  ; $6d90: $01 $02 $02
    nop                                           ; $6d93: $00
    adc h                                         ; $6d94: $8c
    inc b                                         ; $6d95: $04
    nop                                           ; $6d96: $00
    ld c, h                                       ; $6d97: $4c
    nop                                           ; $6d98: $00
    pop hl                                        ; $6d99: $e1
    inc c                                         ; $6d9a: $0c
    ld c, d                                       ; $6d9b: $4a
    cp a                                          ; $6d9c: $bf
    jr z, jr_0f4_6e1e                             ; $6d9d: $28 $7f

    ld d, [hl]                                    ; $6d9f: $56
    ld d, a                                       ; $6da0: $57
    ld [bc], a                                    ; $6da1: $02
    dec b                                         ; $6da2: $05
    stop                                          ; $6da3: $10 $00
    adc [hl]                                      ; $6da5: $8e
    ld b, b                                       ; $6da6: $40
    nop                                           ; $6da7: $00
    ld b, h                                       ; $6da8: $44
    nop                                           ; $6da9: $00
    db $e4                                        ; $6daa: $e4
    nop                                           ; $6dab: $00
    ld c, d                                       ; $6dac: $4a
    and h                                         ; $6dad: $a4
    ld [hl+], a                                   ; $6dae: $22
    rst $38                                       ; $6daf: $ff
    adc d                                         ; $6db0: $8a
    rst $38                                       ; $6db1: $ff
    dec h                                         ; $6db2: $25
    ld [hl], l                                    ; $6db3: $75
    ld [bc], a                                    ; $6db4: $02
    ld d, h                                       ; $6db5: $54
    inc d                                         ; $6db6: $14
    nop                                           ; $6db7: $00
    adc b                                         ; $6db8: $88
    ld [bc], a                                    ; $6db9: $02
    nop                                           ; $6dba: $00
    rlca                                          ; $6dbb: $07
    nop                                           ; $6dbc: $00
    ld bc, $0407                                  ; $6dbd: $01 $07 $04
    ld b, $02                                     ; $6dc0: $06 $02
    ld [bc], a                                    ; $6dc2: $02
    ld [de], a                                    ; $6dc3: $12
    nop                                           ; $6dc4: $00
    rst $38                                       ; $6dc5: $ff
    dec bc                                        ; $6dc6: $0b
    inc bc                                        ; $6dc7: $03
    push af                                       ; $6dc8: $f5
    dec bc                                        ; $6dc9: $0b
    push af                                       ; $6dca: $f5
    ld a, [bc]                                    ; $6dcb: $0a
    ld sp, hl                                     ; $6dcc: $f9
    rst $30                                       ; $6dcd: $f7
    ld sp, hl                                     ; $6dce: $f9
    rst $38                                       ; $6dcf: $ff
    ld sp, hl                                     ; $6dd0: $f9
    ld [bc], a                                    ; $6dd1: $02
    ld [bc], a                                    ; $6dd2: $02
    nop                                           ; $6dd3: $00
    sbc d                                         ; $6dd4: $9a
    inc b                                         ; $6dd5: $04
    nop                                           ; $6dd6: $00
    inc b                                         ; $6dd7: $04
    nop                                           ; $6dd8: $00
    ld b, h                                       ; $6dd9: $44
    ld [HeaderMaskROMVersion], sp                 ; $6dda: $08 $4c $01
    ld e, c                                       ; $6ddd: $59
    inc b                                         ; $6dde: $04
    ld l, d                                       ; $6ddf: $6a
    sub l                                         ; $6de0: $95
    ld l, $d1                                     ; $6de1: $2e $d1
    adc d                                         ; $6de3: $8a
    push af                                       ; $6de4: $f5
    and b                                         ; $6de5: $a0
    rst $38                                       ; $6de6: $ff
    ld a, [hl+]                                   ; $6de7: $2a
    ld a, a                                       ; $6de8: $7f
    ld e, $5f                                     ; $6de9: $1e $5f
    ld d, d                                       ; $6deb: $52
    ld d, a                                       ; $6dec: $57
    ld bc, $0205                                  ; $6ded: $01 $05 $02
    inc b                                         ; $6df0: $04
    ld [bc], a                                    ; $6df1: $02
    nop                                           ; $6df2: $00

Call_0f4_6df3:
    sbc h                                         ; $6df3: $9c
    ld b, b                                       ; $6df4: $40
    nop                                           ; $6df5: $00
    ld b, h                                       ; $6df6: $44
    nop                                           ; $6df7: $00
    ld b, h                                       ; $6df8: $44
    nop                                           ; $6df9: $00
    ld b, h                                       ; $6dfa: $44
    add b                                         ; $6dfb: $80
    call nz, $af22                                ; $6dfc: $c4 $22 $af
    ld b, b                                       ; $6dff: $40
    and $19                                       ; $6e00: $e6 $19
    and l                                         ; $6e02: $a5
    ld e, d                                       ; $6e03: $5a
    ld [bc], a                                    ; $6e04: $02
    rst $38                                       ; $6e05: $ff
    and h                                         ; $6e06: $a4
    ld a, a                                       ; $6e07: $7f
    ld b, $ff                                     ; $6e08: $06 $ff
    xor l                                         ; $6e0a: $ad
    rst $38                                       ; $6e0b: $ff
    cp d                                          ; $6e0c: $ba
    ld a, [$5a0a]                                 ; $6e0d: $fa $0a $5a
    ld [bc], a                                    ; $6e10: $02
    ld d, b                                       ; $6e11: $50
    ld [$9200], sp                                ; $6e12: $08 $00 $92
    ld [bc], a                                    ; $6e15: $02
    nop                                           ; $6e16: $00
    ld [bc], a                                    ; $6e17: $02
    nop                                           ; $6e18: $00
    ld [bc], a                                    ; $6e19: $02
    ld bc, $0205                                  ; $6e1a: $01 $05 $02
    inc b                                         ; $6e1d: $04

jr_0f4_6e1e:
    inc bc                                        ; $6e1e: $03
    dec b                                         ; $6e1f: $05
    inc bc                                        ; $6e20: $03
    ld bc, $0507                                  ; $6e21: $01 $07 $05
    rlca                                          ; $6e24: $07
    dec b                                         ; $6e25: $05
    rlca                                          ; $6e26: $07
    ld [bc], a                                    ; $6e27: $02
    ld [bc], a                                    ; $6e28: $02
    ld b, $00                                     ; $6e29: $06 $00
    rst $38                                       ; $6e2b: $ff
    dec c                                         ; $6e2c: $0d
    inc b                                         ; $6e2d: $04
    push af                                       ; $6e2e: $f5
    dec bc                                        ; $6e2f: $0b
    push af                                       ; $6e30: $f5
    ld a, [bc]                                    ; $6e31: $0a
    push af                                       ; $6e32: $f5
    rst $30                                       ; $6e33: $f7
    db $f4                                        ; $6e34: $f4
    rst $38                                       ; $6e35: $ff
    rst $30                                       ; $6e36: $f7
    ld [bc], a                                    ; $6e37: $02
    inc b                                         ; $6e38: $04
    ld sp, hl                                     ; $6e39: $f9
    ret c                                         ; $6e3a: $d8

    inc b                                         ; $6e3b: $04
    nop                                           ; $6e3c: $00
    inc b                                         ; $6e3d: $04
    nop                                           ; $6e3e: $00
    ld b, h                                       ; $6e3f: $44
    ld [HeaderMaskROMVersion], sp                 ; $6e40: $08 $4c $01
    ld e, c                                       ; $6e43: $59
    inc b                                         ; $6e44: $04
    ld l, d                                       ; $6e45: $6a
    sub l                                         ; $6e46: $95
    ld l, $51                                     ; $6e47: $2e $51
    adc d                                         ; $6e49: $8a
    or l                                          ; $6e4a: $b5
    and b                                         ; $6e4b: $a0
    rst $38                                       ; $6e4c: $ff
    ld a, [hl+]                                   ; $6e4d: $2a
    ld d, l                                       ; $6e4e: $55
    or [hl]                                       ; $6e4f: $b6
    db $fd                                        ; $6e50: $fd
    sbc l                                         ; $6e51: $9d
    rst $18                                       ; $6e52: $df
    ld [hl+], a                                   ; $6e53: $22
    ld [hl], a                                    ; $6e54: $77
    inc e                                         ; $6e55: $1c
    ld e, l                                       ; $6e56: $5d
    ld d, e                                       ; $6e57: $53
    ld d, a                                       ; $6e58: $57
    ld bc, $4005                                  ; $6e59: $01 $05 $40
    nop                                           ; $6e5c: $00
    ld b, h                                       ; $6e5d: $44
    nop                                           ; $6e5e: $00
    ld b, h                                       ; $6e5f: $44
    nop                                           ; $6e60: $00
    ld b, h                                       ; $6e61: $44
    add b                                         ; $6e62: $80
    call nz, $af22                                ; $6e63: $c4 $22 $af
    ld b, b                                       ; $6e66: $40
    and [hl]                                      ; $6e67: $a6
    ld e, c                                       ; $6e68: $59
    jp nz, $063d                                  ; $6e69: $c2 $3d $06

    db $fd                                        ; $6e6c: $fd
    and h                                         ; $6e6d: $a4
    ld a, a                                       ; $6e6e: $7f
    xor b                                         ; $6e6f: $a8
    ld a, a                                       ; $6e70: $7f
    ld a, [bc]                                    ; $6e71: $0a
    rst $38                                       ; $6e72: $ff
    and a                                         ; $6e73: $a7
    ld a, a                                       ; $6e74: $7f
    ld l, [hl]                                    ; $6e75: $6e
    cp $a8                                        ; $6e76: $fe $a8
    ld a, [$da9a]                                 ; $6e78: $fa $9a $da
    ld [bc], a                                    ; $6e7b: $02
    nop                                           ; $6e7c: $00
    ld [bc], a                                    ; $6e7d: $02
    nop                                           ; $6e7e: $00
    ld [bc], a                                    ; $6e7f: $02
    ld bc, $0205                                  ; $6e80: $01 $05 $02
    inc b                                         ; $6e83: $04
    ld [bc], a                                    ; $6e84: $02
    ld bc, $0105                                  ; $6e85: $01 $05 $01
    rlca                                          ; $6e88: $07
    inc b                                         ; $6e89: $04
    inc bc                                        ; $6e8a: $03
    nop                                           ; $6e8b: $00
    ld b, $01                                     ; $6e8c: $06 $01
    rlca                                          ; $6e8e: $07
    inc b                                         ; $6e8f: $04
    ld b, $05                                     ; $6e90: $06 $05
    rlca                                          ; $6e92: $07
    ld [bc], a                                    ; $6e93: $02
    ld [bc], a                                    ; $6e94: $02
    add d                                         ; $6e95: $82
    ld d, b                                       ; $6e96: $50
    ret nc                                        ; $6e97: $d0

    ld [bc], a                                    ; $6e98: $02
    add b                                         ; $6e99: $80
    inc bc                                        ; $6e9a: $03
    nop                                           ; $6e9b: $00
    add c                                         ; $6e9c: $81
    ld bc, $1102                                  ; $6e9d: $01 $02 $11
    inc e                                         ; $6ea0: $1c
    nop                                           ; $6ea1: $00
    rst $38                                       ; $6ea2: $ff
    dec bc                                        ; $6ea3: $0b
    inc bc                                        ; $6ea4: $03
    push af                                       ; $6ea5: $f5
    dec bc                                        ; $6ea6: $0b
    push af                                       ; $6ea7: $f5
    ld a, [bc]                                    ; $6ea8: $0a
    ld a, [c]                                     ; $6ea9: $f2
    rst $30                                       ; $6eaa: $f7
    ld a, [c]                                     ; $6eab: $f2
    rst $38                                       ; $6eac: $ff
    ld a, [c]                                     ; $6ead: $f2
    ld [bc], a                                    ; $6eae: $02
    ld [bc], a                                    ; $6eaf: $02
    nop                                           ; $6eb0: $00
    sub [hl]                                      ; $6eb1: $96
    inc b                                         ; $6eb2: $04
    nop                                           ; $6eb3: $00
    inc b                                         ; $6eb4: $04
    nop                                           ; $6eb5: $00
    ld b, h                                       ; $6eb6: $44
    ld [$005d], sp                                ; $6eb7: $08 $5d $00
    ld l, d                                       ; $6eba: $6a
    sub l                                         ; $6ebb: $95
    dec sp                                        ; $6ebc: $3b
    call nz, $f58a                                ; $6ebd: $c4 $8a $f5
    or l                                          ; $6ec0: $b5
    rst $38                                       ; $6ec1: $ff
    ld d, d                                       ; $6ec2: $52
    ld e, a                                       ; $6ec3: $5f
    ld e, b                                       ; $6ec4: $58
    ld e, l                                       ; $6ec5: $5d
    add hl, bc                                    ; $6ec6: $09
    dec c                                         ; $6ec7: $0d
    ld [bc], a                                    ; $6ec8: $02
    inc b                                         ; $6ec9: $04
    ld b, $00                                     ; $6eca: $06 $00
    sbc b                                         ; $6ecc: $98
    ld b, b                                       ; $6ecd: $40
    nop                                           ; $6ece: $00
    ld b, h                                       ; $6ecf: $44
    nop                                           ; $6ed0: $00
    ld b, h                                       ; $6ed1: $44
    nop                                           ; $6ed2: $00
    ld b, [hl]                                    ; $6ed3: $46
    add b                                         ; $6ed4: $80
    call $a422                                    ; $6ed5: $cd $22 $a4
    ld e, e                                       ; $6ed8: $5b
    ret z                                         ; $6ed9: $c8

    ccf                                           ; $6eda: $3f
    ld b, b                                       ; $6edb: $40
    cp a                                          ; $6edc: $bf
    ld a, [hl+]                                   ; $6edd: $2a
    rst $38                                       ; $6ede: $ff
    xor d                                         ; $6edf: $aa
    rst $38                                       ; $6ee0: $ff
    adc e                                         ; $6ee1: $8b
    db $db                                        ; $6ee2: $db
    ld a, [bc]                                    ; $6ee3: $0a
    ld c, d                                       ; $6ee4: $4a
    ld [bc], a                                    ; $6ee5: $02
    ld c, b                                       ; $6ee6: $48
    inc c                                         ; $6ee7: $0c
    nop                                           ; $6ee8: $00
    add a                                         ; $6ee9: $87
    ld [bc], a                                    ; $6eea: $02
    nop                                           ; $6eeb: $00
    ld [bc], a                                    ; $6eec: $02
    ld bc, $0205                                  ; $6eed: $01 $05 $02
    ld b, $02                                     ; $6ef0: $06 $02
    ld bc, $0785                                  ; $6ef2: $01 $85 $07
    dec b                                         ; $6ef5: $05
    rlca                                          ; $6ef6: $07
    inc b                                         ; $6ef7: $04
    ld b, $02                                     ; $6ef8: $06 $02
    ld [bc], a                                    ; $6efa: $02
    ld a, [bc]                                    ; $6efb: $0a
    nop                                           ; $6efc: $00
    rst $38                                       ; $6efd: $ff
    dec bc                                        ; $6efe: $0b
    inc bc                                        ; $6eff: $03
    push af                                       ; $6f00: $f5
    dec bc                                        ; $6f01: $0b
    push af                                       ; $6f02: $f5
    ld a, [bc]                                    ; $6f03: $0a
    rst $28                                       ; $6f04: $ef
    rst $30                                       ; $6f05: $f7
    rst $28                                       ; $6f06: $ef
    rst $38                                       ; $6f07: $ff
    rst $28                                       ; $6f08: $ef
    ld [bc], a                                    ; $6f09: $02
    adc [hl]                                      ; $6f0a: $8e
    inc b                                         ; $6f0b: $04
    nop                                           ; $6f0c: $00
    ld b, h                                       ; $6f0d: $44
    nop                                           ; $6f0e: $00
    ld h, h                                       ; $6f0f: $64
    ld [$49b6], sp                                ; $6f10: $08 $b6 $49
    add hl, bc                                    ; $6f13: $09
    rst $38                                       ; $6f14: $ff
    db $db                                        ; $6f15: $db
    rst $38                                       ; $6f16: $ff
    ld e, c                                       ; $6f17: $59
    ld e, l                                       ; $6f18: $5d
    ld [bc], a                                    ; $6f19: $02
    dec b                                         ; $6f1a: $05
    ld [bc], a                                    ; $6f1b: $02
    inc b                                         ; $6f1c: $04
    ld c, $00                                     ; $6f1d: $0e $00
    adc [hl]                                      ; $6f1f: $8e
    ld b, h                                       ; $6f20: $44
    nop                                           ; $6f21: $00
    ld b, h                                       ; $6f22: $44
    nop                                           ; $6f23: $00
    ld l, [hl]                                    ; $6f24: $6e
    add b                                         ; $6f25: $80
    sub h                                         ; $6f26: $94
    ld l, e                                       ; $6f27: $6b
    ld bc, $abff                                  ; $6f28: $01 $ff $ab
    rst $38                                       ; $6f2b: $ff
    sbc e                                         ; $6f2c: $9b
    db $db                                        ; $6f2d: $db
    ld [bc], a                                    ; $6f2e: $02
    ld e, c                                       ; $6f2f: $59
    ld [bc], a                                    ; $6f30: $02
    ld [$0010], sp                                ; $6f31: $08 $10 $00
    adc e                                         ; $6f34: $8b
    ld [bc], a                                    ; $6f35: $02
    nop                                           ; $6f36: $00
    ld b, $00                                     ; $6f37: $06 $00
    ld b, $01                                     ; $6f39: $06 $01
    nop                                           ; $6f3b: $00
    rlca                                          ; $6f3c: $07
    dec b                                         ; $6f3d: $05
    rlca                                          ; $6f3e: $07
    nop                                           ; $6f3f: $00
    inc bc                                        ; $6f40: $03
    ld [bc], a                                    ; $6f41: $02
    stop                                          ; $6f42: $10 $00
    rst $38                                       ; $6f44: $ff
    dec bc                                        ; $6f45: $0b
    inc bc                                        ; $6f46: $03
    push af                                       ; $6f47: $f5
    dec bc                                        ; $6f48: $0b
    push af                                       ; $6f49: $f5
    ld a, [bc]                                    ; $6f4a: $0a
    ld a, [c]                                     ; $6f4b: $f2
    ld hl, sp-$0e                                 ; $6f4c: $f8 $f2
    nop                                           ; $6f4e: $00
    ld a, [c]                                     ; $6f4f: $f2
    ld bc, $0884                                  ; $6f50: $01 $84 $08
    nop                                           ; $6f53: $00
    sbc h                                         ; $6f54: $9c
    ld d, l                                       ; $6f55: $55
    ld [bc], a                                    ; $6f56: $02
    ld [$001a], sp                                ; $6f57: $08 $1a $00
    add h                                         ; $6f5a: $84
    adc b                                         ; $6f5b: $88
    nop                                           ; $6f5c: $00
    ld d, b                                       ; $6f5d: $50
    db $dd                                        ; $6f5e: $dd
    ld [bc], a                                    ; $6f5f: $02
    adc b                                         ; $6f60: $88
    inc e                                         ; $6f61: $1c
    nop                                           ; $6f62: $00
    add c                                         ; $6f63: $81
    ld bc, $001d                                  ; $6f64: $01 $1d $00
    rst $38                                       ; $6f67: $ff
    rlca                                          ; $6f68: $07
    ld bc, $0af6                                  ; $6f69: $01 $f6 $0a
    ld sp, hl                                     ; $6f6c: $f9
    ld b, $fe                                     ; $6f6d: $06 $fe
    ei                                            ; $6f6f: $fb
    ld [bc], a                                    ; $6f70: $02
    inc b                                         ; $6f71: $04
    add h                                         ; $6f72: $84
    add hl, bc                                    ; $6f73: $09
    ld c, $06                                     ; $6f74: $0e $06
    inc b                                         ; $6f76: $04
    ld a, [de]                                    ; $6f77: $1a
    nop                                           ; $6f78: $00
    rst $38                                       ; $6f79: $ff
    add hl, bc                                    ; $6f7a: $09
    ld [bc], a                                    ; $6f7b: $02
    or $0a                                        ; $6f7c: $f6 $0a
    ld sp, hl                                     ; $6f7e: $f9
    ld b, $fc                                     ; $6f7f: $06 $fc
    ld a, [$fbfc]                                 ; $6f81: $fa $fc $fb
    ld [bc], a                                    ; $6f84: $02
    ld h, b                                       ; $6f85: $60
    adc d                                         ; $6f86: $8a
    ld d, $34                                     ; $6f87: $16 $34
    adc b                                         ; $6f89: $88
    ei                                            ; $6f8a: $fb
    ld b, e                                       ; $6f8b: $43
    ld a, h                                       ; $6f8c: $7c
    dec [hl]                                      ; $6f8d: $35
    ld a, $b2                                     ; $6f8e: $3e $b2
    ld hl, sp+$02                                 ; $6f90: $f8 $02
    ld c, b                                       ; $6f92: $48
    ld d, $00                                     ; $6f93: $16 $00
    add c                                         ; $6f95: $81
    ld bc, $001b                                  ; $6f96: $01 $1b $00
    rst $38                                       ; $6f99: $ff
    add hl, bc                                    ; $6f9a: $09
    ld [bc], a                                    ; $6f9b: $02
    or $0a                                        ; $6f9c: $f6 $0a
    ld sp, hl                                     ; $6f9e: $f9
    ld b, $fb                                     ; $6f9f: $06 $fb
    db $f4                                        ; $6fa1: $f4
    ei                                            ; $6fa2: $fb
    ei                                            ; $6fa3: $fb
    ld [bc], a                                    ; $6fa4: $02
    inc b                                         ; $6fa5: $04
    adc [hl]                                      ; $6fa6: $8e
    inc de                                        ; $6fa7: $13
    ld [de], a                                    ; $6fa8: $12
    ld c, b                                       ; $6fa9: $48
    ld c, l                                       ; $6faa: $4d
    ld [hl+], a                                   ; $6fab: $22
    ld h, $8a                                     ; $6fac: $26 $8a
    cp a                                          ; $6fae: $bf
    dec h                                         ; $6faf: $25
    dec l                                         ; $6fb0: $2d
    dec de                                        ; $6fb1: $1b
    ld e, $57                                     ; $6fb2: $1e $57
    ld d, l                                       ; $6fb4: $55
    ld [bc], a                                    ; $6fb5: $02
    add hl, bc                                    ; $6fb6: $09
    ld c, $00                                     ; $6fb7: $0e $00
    ld [bc], a                                    ; $6fb9: $02
    ld b, b                                       ; $6fba: $40
    adc [hl]                                      ; $6fbb: $8e
    jr nc, jr_0f4_6fde                            ; $6fbc: $30 $20

    ld l, h                                       ; $6fbe: $6c
    ld e, b                                       ; $6fbf: $58
    dec h                                         ; $6fc0: $25
    ld a, [hl]                                    ; $6fc1: $7e
    ld [de], a                                    ; $6fc2: $12
    ld l, h                                       ; $6fc3: $6c
    scf                                           ; $6fc4: $37
    ld l, h                                       ; $6fc5: $6c
    inc [hl]                                      ; $6fc6: $34
    ld b, b                                       ; $6fc7: $40
    ld [hl], b                                    ; $6fc8: $70
    ld d, b                                       ; $6fc9: $50
    stop                                          ; $6fca: $10 $00
    rst $38                                       ; $6fcc: $ff
    dec bc                                        ; $6fcd: $0b
    inc bc                                        ; $6fce: $03
    or $0a                                        ; $6fcf: $f6 $0a
    ld sp, hl                                     ; $6fd1: $f9
    ld b, $fb                                     ; $6fd2: $06 $fb
    ld a, [c]                                     ; $6fd4: $f2
    ei                                            ; $6fd5: $fb
    ld a, [$fbfb]                                 ; $6fd6: $fa $fb $fb
    ld [bc], a                                    ; $6fd9: $02
    inc b                                         ; $6fda: $04
    ld [bc], a                                    ; $6fdb: $02
    add hl, hl                                    ; $6fdc: $29
    add [hl]                                      ; $6fdd: $86

jr_0f4_6fde:
    inc b                                         ; $6fde: $04
    dec c                                         ; $6fdf: $0d
    and b                                         ; $6fe0: $a0
    and [hl]                                      ; $6fe1: $a6
    ld [de], a                                    ; $6fe2: $12
    rra                                           ; $6fe3: $1f
    ld [bc], a                                    ; $6fe4: $02
    or h                                          ; $6fe5: $b4
    add h                                         ; $6fe6: $84
    add hl, bc                                    ; $6fe7: $09
    dec de                                        ; $6fe8: $1b
    inc h                                         ; $6fe9: $24
    jr nz, @+$04                                  ; $6fea: $20 $02

    add hl, bc                                    ; $6fec: $09
    ld c, $00                                     ; $6fed: $0e $00
    ld [bc], a                                    ; $6fef: $02
    add b                                         ; $6ff0: $80
    adc [hl]                                      ; $6ff1: $8e
    ld d, b                                       ; $6ff2: $50
    nop                                           ; $6ff3: $00
    sbc d                                         ; $6ff4: $9a
    cp b                                          ; $6ff5: $b8
    dec b                                         ; $6ff6: $05
    sbc $48                                       ; $6ff7: $de $48
    ld a, a                                       ; $6ff9: $7f
    sub l                                         ; $6ffa: $95
    jp c, Jump_0f4_584a                           ; $6ffb: $da $4a $58

    or b                                          ; $6ffe: $b0
    jr nz, jr_0f4_7019                            ; $6fff: $20 $18

    nop                                           ; $7001: $00
    add c                                         ; $7002: $81
    ld bc, $0017                                  ; $7003: $01 $17 $00
    rst $38                                       ; $7006: $ff
    add hl, bc                                    ; $7007: $09
    ld [bc], a                                    ; $7008: $02
    or $0a                                        ; $7009: $f6 $0a
    ld sp, hl                                     ; $700b: $f9
    ld b, $fc                                     ; $700c: $06 $fc
    ld a, [c]                                     ; $700e: $f2
    db $fc                                        ; $700f: $fc
    rst $30                                       ; $7010: $f7
    ld [bc], a                                    ; $7011: $02
    ld [bc], a                                    ; $7012: $02
    add h                                         ; $7013: $84
    jr nz, @+$2b                                  ; $7014: $20 $29

    adc c                                         ; $7016: $89
    adc l                                         ; $7017: $8d
    ld [bc], a                                    ; $7018: $02

jr_0f4_7019:
    ld [de], a                                    ; $7019: $12
    add d                                         ; $701a: $82
    and h                                         ; $701b: $a4
    or [hl]                                       ; $701c: $b6
    ld [bc], a                                    ; $701d: $02
    ld c, d                                       ; $701e: $4a
    ld [bc], a                                    ; $701f: $02
    dec b                                         ; $7020: $05
    inc d                                         ; $7021: $14
    nop                                           ; $7022: $00
    add [hl]                                      ; $7023: $86
    jr jr_0f4_7036                                ; $7024: $18 $10

    nop                                           ; $7026: $00
    inc b                                         ; $7027: $04
    dec b                                         ; $7028: $05
    ld e, $02                                     ; $7029: $1e $02
    ld a, [bc]                                    ; $702b: $0a
    add d                                         ; $702c: $82
    ld [$1410], sp                                ; $702d: $08 $10 $14
    nop                                           ; $7030: $00
    rst $38                                       ; $7031: $ff
    add hl, bc                                    ; $7032: $09
    ld [bc], a                                    ; $7033: $02

jr_0f4_7034:
    or $0a                                        ; $7034: $f6 $0a

jr_0f4_7036:
    ld sp, hl                                     ; $7036: $f9
    ld b, $fc                                     ; $7037: $06 $fc
    ldh a, [$fc]                                  ; $7039: $f0 $fc
    di                                            ; $703b: $f3
    add h                                         ; $703c: $84
    ld bc, $4000                                  ; $703d: $01 $00 $40
    ld c, c                                       ; $7040: $49
    ld [bc], a                                    ; $7041: $02
    ld [$8002], sp                                ; $7042: $08 $02 $80
    add d                                         ; $7045: $82
    inc b                                         ; $7046: $04
    ld d, $02                                     ; $7047: $16 $02
    ld hl, $0281                                  ; $7049: $21 $81 $02
    dec d                                         ; $704c: $15
    nop                                           ; $704d: $00
    ld [bc], a                                    ; $704e: $02
    inc b                                         ; $704f: $04
    add c                                         ; $7050: $81
    nop                                           ; $7051: $00
    ld [bc], a                                    ; $7052: $02
    ld bc, $0581                                  ; $7053: $01 $81 $05
    ld [bc], a                                    ; $7056: $02
    nop                                           ; $7057: $00
    add c                                         ; $7058: $81
    ld [bc], a                                    ; $7059: $02
    dec d                                         ; $705a: $15
    nop                                           ; $705b: $00
    rst $38                                       ; $705c: $ff
    add hl, bc                                    ; $705d: $09
    ld [bc], a                                    ; $705e: $02
    or $0a                                        ; $705f: $f6 $0a
    ld sp, hl                                     ; $7061: $f9
    ld b, $08                                     ; $7062: $06 $08
    ld hl, sp+$08                                 ; $7064: $f8 $08
    nop                                           ; $7066: $00
    adc b                                         ; $7067: $88
    add b                                         ; $7068: $80
    nop                                           ; $7069: $00
    db $10                                        ; $706a: $10
    ret nz                                        ; $706b: $c0

    ret z                                         ; $706c: $c8

    ld a, [c]                                     ; $706d: $f2
    ld l, e                                       ; $706e: $6b
    ld a, a                                       ; $706f: $7f
    ld [bc], a                                    ; $7070: $02
    rra                                           ; $7071: $1f
    ld d, $00                                     ; $7072: $16 $00
    adc b                                         ; $7074: $88
    ld bc, $4100                                  ; $7075: $01 $00 $41
    dec bc                                        ; $7078: $0b
    adc e                                         ; $7079: $8b
    ld l, l                                       ; $707a: $6d
    xor [hl]                                      ; $707b: $ae
    cp $02                                        ; $707c: $fe $02
    ld hl, sp+$16                                 ; $707e: $f8 $16
    nop                                           ; $7080: $00
    rst $38                                       ; $7081: $ff
    dec bc                                        ; $7082: $0b
    inc bc                                        ; $7083: $03
    or $0a                                        ; $7084: $f6 $0a
    di                                            ; $7086: $f3
    nop                                           ; $7087: $00
    rst $38                                       ; $7088: $ff
    rst $30                                       ; $7089: $f7
    rst $38                                       ; $708a: $ff
    rst $38                                       ; $708b: $ff
    rst $38                                       ; $708c: $ff
    ld bc, $608e                                  ; $708d: $01 $8e $60
    jr nz, @+$42                                  ; $7090: $20 $40

    ret nz                                        ; $7092: $c0

    ret nc                                        ; $7093: $d0

    ret nz                                        ; $7094: $c0

    ld e, d                                       ; $7095: $5a
    ret z                                         ; $7096: $c8

    xor h                                         ; $7097: $ac
    cp $49                                        ; $7098: $fe $49
    ld [hl], a                                    ; $709a: $77
    inc sp                                        ; $709b: $33
    ccf                                           ; $709c: $3f
    ld [bc], a                                    ; $709d: $02
    rrca                                          ; $709e: $0f
    stop                                          ; $709f: $10 $00
    ld [bc], a                                    ; $70a1: $02
    ld bc, $0002                                  ; $70a2: $01 $02 $00
    adc d                                         ; $70a5: $8a
    ld b, b                                       ; $70a6: $40
    nop                                           ; $70a7: $00
    ld h, h                                       ; $70a8: $64
    jr nz, jr_0f4_7034                            ; $70a9: $20 $89

    rst $20                                       ; $70ab: $e7
    inc [hl]                                      ; $70ac: $34
    rst $38                                       ; $70ad: $ff
    dec hl                                        ; $70ae: $2b
    rst $38                                       ; $70af: $ff
    ld [bc], a                                    ; $70b0: $02
    db $fc                                        ; $70b1: $fc
    stop                                          ; $70b2: $10 $00
    add e                                         ; $70b4: $83
    ld [bc], a                                    ; $70b5: $02
    nop                                           ; $70b6: $00
    ld [bc], a                                    ; $70b7: $02
    inc bc                                        ; $70b8: $03
    inc bc                                        ; $70b9: $03
    add h                                         ; $70ba: $84
    ld [bc], a                                    ; $70bb: $02
    inc bc                                        ; $70bc: $03
    ld bc, $0203                                  ; $70bd: $01 $03 $02
    ld [bc], a                                    ; $70c0: $02
    inc d                                         ; $70c1: $14
    nop                                           ; $70c2: $00
    rst $38                                       ; $70c3: $ff
    dec bc                                        ; $70c4: $0b
    inc bc                                        ; $70c5: $03
    or $0a                                        ; $70c6: $f6 $0a
    ld sp, hl                                     ; $70c8: $f9
    ld b, $03                                     ; $70c9: $06 $03
    or $03                                        ; $70cb: $f6 $03
    cp $03                                        ; $70cd: $fe $03
    inc bc                                        ; $70cf: $03
    add d                                         ; $70d0: $82
    jr nc, @+$12                                  ; $70d1: $30 $10

    ld [bc], a                                    ; $70d3: $02
    ld h, b                                       ; $70d4: $60
    ld [bc], a                                    ; $70d5: $02
    ret nz                                        ; $70d6: $c0

    adc h                                         ; $70d7: $8c
    ret nc                                        ; $70d8: $d0

    ret nz                                        ; $70d9: $c0

    cp c                                          ; $70da: $b9
    add sp, -$55                                  ; $70db: $e8 $ab
    ld a, [$794a]                                 ; $70dd: $fa $4a $79
    inc h                                         ; $70e0: $24
    ccf                                           ; $70e1: $3f
    ld e, $1f                                     ; $70e2: $1e $1f
    ld [bc], a                                    ; $70e4: $02
    inc bc                                        ; $70e5: $03
    ld [de], a                                    ; $70e6: $12
    nop                                           ; $70e7: $00
    adc h                                         ; $70e8: $8c
    jr nz, jr_0f4_70eb                            ; $70e9: $20 $00

jr_0f4_70eb:
    ld sp, $0310                                  ; $70eb: $31 $10 $03
    jr nc, @+$52                                  ; $70ee: $30 $50

    ld [hl], e                                    ; $70f0: $73
    sbc b                                         ; $70f1: $98
    rst $38                                       ; $70f2: $ff
    dec hl                                        ; $70f3: $2b
    rst $38                                       ; $70f4: $ff
    ld [bc], a                                    ; $70f5: $02
    cp $0c                                        ; $70f6: $fe $0c
    nop                                           ; $70f8: $00
    add d                                         ; $70f9: $82
    inc c                                         ; $70fa: $0c
    ld [$0602], sp                                ; $70fb: $08 $02 $06
    inc b                                         ; $70fe: $04
    inc bc                                        ; $70ff: $03
    adc b                                         ; $7100: $88
    dec b                                         ; $7101: $05
    rlca                                          ; $7102: $07
    add hl, bc                                    ; $7103: $09
    rlca                                          ; $7104: $07
    ld a, [de]                                    ; $7105: $1a
    ld e, $04                                     ; $7106: $1e $04
    inc e                                         ; $7108: $1c
    ld [bc], a                                    ; $7109: $02
    jr jr_0f4_711a                                ; $710a: $18 $0e

    nop                                           ; $710c: $00
    rst $38                                       ; $710d: $ff
    dec bc                                        ; $710e: $0b
    inc bc                                        ; $710f: $03
    or $0a                                        ; $7110: $f6 $0a
    ld sp, hl                                     ; $7112: $f9
    ld b, $fe                                     ; $7113: $06 $fe
    or $fe                                        ; $7115: $f6 $fe
    cp $fe                                        ; $7117: $fe $fe
    inc bc                                        ; $7119: $03

jr_0f4_711a:
    adc b                                         ; $711a: $88
    ld bc, $0800                                  ; $711b: $01 $00 $08
    inc bc                                        ; $711e: $03
    dec d                                         ; $711f: $15
    rrca                                          ; $7120: $0f
    inc e                                         ; $7121: $1c
    inc a                                         ; $7122: $3c
    ld [bc], a                                    ; $7123: $02
    ld [hl], b                                    ; $7124: $70
    ld [bc], a                                    ; $7125: $02
    ld h, b                                       ; $7126: $60
    sub b                                         ; $7127: $90
    ret nz                                        ; $7128: $c0

    ld b, b                                       ; $7129: $40
    ld [$e9c0], sp                                ; $712a: $08 $c0 $e9
    and b                                         ; $712d: $a0
    or h                                          ; $712e: $b4
    ld sp, hl                                     ; $712f: $f9
    ld b, h                                       ; $7130: $44
    ld a, c                                       ; $7131: $79
    ld d, d                                       ; $7132: $52
    ld a, a                                       ; $7133: $7f
    dec hl                                        ; $7134: $2b
    ccf                                           ; $7135: $3f
    inc e                                         ; $7136: $1c
    rra                                           ; $7137: $1f
    ld [bc], a                                    ; $7138: $02
    inc bc                                        ; $7139: $03
    ld [bc], a                                    ; $713a: $02
    nop                                           ; $713b: $00
    add h                                         ; $713c: $84
    inc h                                         ; $713d: $24
    nop                                           ; $713e: $00
    jp nz, Jump_000_02b4                          ; $713f: $c2 $b4 $02

    rst $38                                       ; $7142: $ff
    ld [bc], a                                    ; $7143: $02
    ld bc, $0006                                  ; $7144: $01 $06 $00
    adc [hl]                                      ; $7147: $8e
    ld hl, $2300                                  ; $7148: $21 $00 $23
    nop                                           ; $714b: $00
    or l                                          ; $714c: $b5
    ld [bc], a                                    ; $714d: $02
    reti                                          ; $714e: $d9


    ld l, a                                       ; $714f: $6f
    sbc c                                         ; $7150: $99
    ld a, a                                       ; $7151: $7f
    inc c                                         ; $7152: $0c
    rst $38                                       ; $7153: $ff
    and c                                         ; $7154: $a1
    rst $38                                       ; $7155: $ff
    ld [bc], a                                    ; $7156: $02
    cp $04                                        ; $7157: $fe $04
    nop                                           ; $7159: $00
    adc b                                         ; $715a: $88
    stop                                          ; $715b: $10 $00
    inc b                                         ; $715d: $04
    db $10                                        ; $715e: $10
    jr jr_0f4_717d                                ; $715f: $18 $1c

    inc c                                         ; $7161: $0c
    ld c, $02                                     ; $7162: $0e $02
    ld b, $8e                                     ; $7164: $06 $8e
    ld [bc], a                                    ; $7166: $02
    inc bc                                        ; $7167: $03
    dec b                                         ; $7168: $05
    inc bc                                        ; $7169: $03
    dec c                                         ; $716a: $0d
    rlca                                          ; $716b: $07
    dec b                                         ; $716c: $05
    rrca                                          ; $716d: $0f
    ld [de], a                                    ; $716e: $12
    ld e, $02                                     ; $716f: $1e $02
    ld e, $04                                     ; $7171: $1e $04
    inc e                                         ; $7173: $1c
    ld [bc], a                                    ; $7174: $02
    jr jr_0f4_717b                                ; $7175: $18 $04

    nop                                           ; $7177: $00
    rst $38                                       ; $7178: $ff
    dec bc                                        ; $7179: $0b
    inc bc                                        ; $717a: $03

jr_0f4_717b:
    or $0a                                        ; $717b: $f6 $0a

jr_0f4_717d:
    ld sp, hl                                     ; $717d: $f9
    ld b, $fe                                     ; $717e: $06 $fe
    or $fe                                        ; $7180: $f6 $fe
    cp $fe                                        ; $7182: $fe $fe
    inc bc                                        ; $7184: $03
    adc b                                         ; $7185: $88
    ld bc, $1200                                  ; $7186: $01 $00 $12
    inc bc                                        ; $7189: $03
    dec b                                         ; $718a: $05
    rra                                           ; $718b: $1f
    inc e                                         ; $718c: $1c
    inc a                                         ; $718d: $3c
    ld [bc], a                                    ; $718e: $02
    ld [hl], b                                    ; $718f: $70
    add l                                         ; $7190: $85
    jr nz, jr_0f4_71f3                            ; $7191: $20 $60

    add b                                         ; $7193: $80
    ret nz                                        ; $7194: $c0

    ld h, h                                       ; $7195: $64
    ld [bc], a                                    ; $7196: $02
    and h                                         ; $7197: $a4
    adc e                                         ; $7198: $8b
    ldh [$b2], a                                  ; $7199: $e0 $b2
    db $f4                                        ; $719b: $f4
    ld c, a                                       ; $719c: $4f
    ld a, l                                       ; $719d: $7d
    ld b, c                                       ; $719e: $41
    ld a, a                                       ; $719f: $7f
    ld [hl], $3f                                  ; $71a0: $36 $3f
    dec e                                         ; $71a2: $1d
    rra                                           ; $71a3: $1f
    ld [bc], a                                    ; $71a4: $02
    inc bc                                        ; $71a5: $03
    ld [bc], a                                    ; $71a6: $02
    nop                                           ; $71a7: $00
    add [hl]                                      ; $71a8: $86
    stop                                          ; $71a9: $10 $00
    inc h                                         ; $71ab: $24
    ldh a, [$fe]                                  ; $71ac: $f0 $fe
    rst $38                                       ; $71ae: $ff
    ld [bc], a                                    ; $71af: $02
    ld bc, $0004                                  ; $71b0: $01 $04 $00
    sub b                                         ; $71b3: $90
    inc b                                         ; $71b4: $04
    nop                                           ; $71b5: $00
    ld b, [hl]                                    ; $71b6: $46
    ld [bc], a                                    ; $71b7: $02
    call nz, Call_0f4_4d82                        ; $71b8: $c4 $82 $4d
    adc e                                         ; $71bb: $8b
    ld h, b                                       ; $71bc: $60
    adc a                                         ; $71bd: $8f
    dec d                                         ; $71be: $15
    rst $38                                       ; $71bf: $ff
    jr nc, @+$01                                  ; $71c0: $30 $ff

    and l                                         ; $71c2: $a5
    rst $38                                       ; $71c3: $ff
    ld [bc], a                                    ; $71c4: $02
    cp $04                                        ; $71c5: $fe $04
    nop                                           ; $71c7: $00
    add e                                         ; $71c8: $83
    stop                                          ; $71c9: $10 $00
    inc b                                         ; $71cb: $04
    ld [bc], a                                    ; $71cc: $02
    db $10                                        ; $71cd: $10
    sub e                                         ; $71ce: $93
    inc e                                         ; $71cf: $1c
    ld c, $0c                                     ; $71d0: $0e $0c
    nop                                           ; $71d2: $00
    ld b, $03                                     ; $71d3: $06 $03
    rlca                                          ; $71d5: $07
    dec b                                         ; $71d6: $05
    rlca                                          ; $71d7: $07
    dec b                                         ; $71d8: $05
    rlca                                          ; $71d9: $07
    add hl, bc                                    ; $71da: $09
    rrca                                          ; $71db: $0f
    ld [de], a                                    ; $71dc: $12
    ld e, $12                                     ; $71dd: $1e $12
    ld e, $04                                     ; $71df: $1e $04
    inc e                                         ; $71e1: $1c
    ld [bc], a                                    ; $71e2: $02
    jr jr_0f4_71e9                                ; $71e3: $18 $04

    nop                                           ; $71e5: $00
    rst $38                                       ; $71e6: $ff
    dec bc                                        ; $71e7: $0b
    inc bc                                        ; $71e8: $03

jr_0f4_71e9:
    or $0a                                        ; $71e9: $f6 $0a
    ld sp, hl                                     ; $71eb: $f9
    ld b, $fe                                     ; $71ec: $06 $fe
    or $fe                                        ; $71ee: $f6 $fe
    cp $fe                                        ; $71f0: $fe $fe
    inc bc                                        ; $71f2: $03

jr_0f4_71f3:
    ld [bc], a                                    ; $71f3: $02
    nop                                           ; $71f4: $00
    sbc d                                         ; $71f5: $9a
    ld a, [bc]                                    ; $71f6: $0a
    inc bc                                        ; $71f7: $03
    dec b                                         ; $71f8: $05
    rra                                           ; $71f9: $1f
    inc e                                         ; $71fa: $1c
    inc a                                         ; $71fb: $3c
    ld [hl], b                                    ; $71fc: $70
    ld d, b                                       ; $71fd: $50
    ld h, b                                       ; $71fe: $60
    jr nz, @-$5e                                  ; $71ff: $20 $a0

    ld h, b                                       ; $7201: $60
    and b                                         ; $7202: $a0
    ldh [$a8], a                                  ; $7203: $e0 $a8
    ret z                                         ; $7205: $c8

    sbc b                                         ; $7206: $98
    ldh a, [rRP]                                  ; $7207: $f0 $56
    ld l, [hl]                                    ; $7209: $6e
    ld c, c                                       ; $720a: $49
    ld a, [hl]                                    ; $720b: $7e
    ld [hl], $3f                                  ; $720c: $36 $3f
    inc e                                         ; $720e: $1c
    rra                                           ; $720f: $1f
    ld [bc], a                                    ; $7210: $02
    inc bc                                        ; $7211: $03
    ld [bc], a                                    ; $7212: $02
    nop                                           ; $7213: $00
    add [hl]                                      ; $7214: $86
    inc h                                         ; $7215: $24
    nop                                           ; $7216: $00
    ld hl, $fef4                                  ; $7217: $21 $f4 $fe
    rst $38                                       ; $721a: $ff
    ld [bc], a                                    ; $721b: $02
    ld bc, $0006                                  ; $721c: $01 $06 $00
    adc [hl]                                      ; $721f: $8e
    inc b                                         ; $7220: $04
    nop                                           ; $7221: $00
    adc h                                         ; $7222: $8c
    ld [$48c4], sp                                ; $7223: $08 $c4 $48
    ld d, a                                       ; $7226: $57
    sbc e                                         ; $7227: $9b
    ld h, d                                       ; $7228: $62
    cp a                                          ; $7229: $bf
    ld bc, $cbff                                  ; $722a: $01 $ff $cb
    rst $38                                       ; $722d: $ff
    ld [bc], a                                    ; $722e: $02
    cp $07                                        ; $722f: $fe $07
    nop                                           ; $7231: $00
    sub l                                         ; $7232: $95
    db $10                                        ; $7233: $10
    inc d                                         ; $7234: $14
    jr jr_0f4_7243                                ; $7235: $18 $0c

    ld c, $04                                     ; $7237: $0e $04
    ld b, $05                                     ; $7239: $06 $05
    rlca                                          ; $723b: $07
    dec b                                         ; $723c: $05
    rlca                                          ; $723d: $07
    dec d                                         ; $723e: $15
    rlca                                          ; $723f: $07
    add hl, de                                    ; $7240: $19
    rrca                                          ; $7241: $0f
    ld [bc], a                                    ; $7242: $02

jr_0f4_7243:
    ld e, $02                                     ; $7243: $1e $02
    ld e, $0c                                     ; $7245: $1e $0c
    inc e                                         ; $7247: $1c
    ld [bc], a                                    ; $7248: $02
    jr @+$06                                      ; $7249: $18 $04

    nop                                           ; $724b: $00
    rst $38                                       ; $724c: $ff
    rlca                                          ; $724d: $07
    ld bc, $06fa                                  ; $724e: $01 $fa $06
    rst $30                                       ; $7251: $f7
    add hl, bc                                    ; $7252: $09
    cp $fb                                        ; $7253: $fe $fb
    add a                                         ; $7255: $87
    ld [de], a                                    ; $7256: $12
    inc b                                         ; $7257: $04
    rlca                                          ; $7258: $07
    ld c, $02                                     ; $7259: $0e $02
    inc b                                         ; $725b: $04
    ld [$0019], sp                                ; $725c: $08 $19 $00
    rst $38                                       ; $725f: $ff
    add hl, bc                                    ; $7260: $09
    ld [bc], a                                    ; $7261: $02
    ld a, [$f706]                                 ; $7262: $fa $06 $f7
    add hl, bc                                    ; $7265: $09
    db $fc                                        ; $7266: $fc
    db $f4                                        ; $7267: $f4
    db $fc                                        ; $7268: $fc
    ei                                            ; $7269: $fb
    adc h                                         ; $726a: $8c
    nop                                           ; $726b: $00
    add hl, bc                                    ; $726c: $09
    ld a, [hl+]                                   ; $726d: $2a
    ld c, h                                       ; $726e: $4c
    ld [bc], a                                    ; $726f: $02
    rla                                           ; $7270: $17
    ld d, b                                       ; $7271: $50
    sbc b                                         ; $7272: $98
    ld d, $27                                     ; $7273: $16 $27
    ld hl, $1444                                  ; $7275: $21 $44 $14
    nop                                           ; $7278: $00
    add c                                         ; $7279: $81
    ld b, b                                       ; $727a: $40
    ld [bc], a                                    ; $727b: $02
    nop                                           ; $727c: $00
    adc c                                         ; $727d: $89
    jr nz, jr_0f4_72d4                            ; $727e: $20 $54

    ld [$7e59], sp                                ; $7280: $08 $59 $7e
    ld c, $10                                     ; $7283: $0e $10
    nop                                           ; $7285: $00
    ld b, b                                       ; $7286: $40
    inc d                                         ; $7287: $14
    nop                                           ; $7288: $00
    rst $38                                       ; $7289: $ff
    dec bc                                        ; $728a: $0b
    inc bc                                        ; $728b: $03
    ld a, [$f706]                                 ; $728c: $fa $06 $f7
    add hl, bc                                    ; $728f: $09
    ei                                            ; $7290: $fb
    xor $fb                                       ; $7291: $ee $fb
    or $fb                                        ; $7293: $f6 $fb
    ei                                            ; $7295: $fb
    adc a                                         ; $7296: $8f
    dec b                                         ; $7297: $05
    ld bc, $0800                                  ; $7298: $01 $00 $08
    jr z, jr_0f4_72e6                             ; $729b: $28 $49

    ld [bc], a                                    ; $729d: $02
    inc d                                         ; $729e: $14
    ld d, b                                       ; $729f: $50
    sbc d                                         ; $72a0: $9a
    dec bc                                        ; $72a1: $0b
    ld [de], a                                    ; $72a2: $12
    ld hl, $0412                                  ; $72a3: $21 $12 $04
    ld de, $9000                                  ; $72a6: $11 $00 $90
    inc b                                         ; $72a9: $04
    ld [$4828], sp                                ; $72aa: $08 $28 $48
    ld b, b                                       ; $72ad: $40
    and l                                         ; $72ae: $a5
    sub [hl]                                      ; $72af: $96
    sbc d                                         ; $72b0: $9a
    ld hl, $5447                                  ; $72b1: $21 $47 $54
    db $ec                                        ; $72b4: $ec
    ld [$2000], sp                                ; $72b5: $08 $00 $20
    ld b, h                                       ; $72b8: $44
    inc d                                         ; $72b9: $14
    nop                                           ; $72ba: $00
    adc b                                         ; $72bb: $88
    stop                                          ; $72bc: $10 $00
    inc e                                         ; $72be: $1c
    nop                                           ; $72bf: $00
    ld de, $0e1a                                  ; $72c0: $11 $1a $0e
    db $10                                        ; $72c3: $10
    inc d                                         ; $72c4: $14
    nop                                           ; $72c5: $00
    rst $38                                       ; $72c6: $ff
    dec bc                                        ; $72c7: $0b
    inc bc                                        ; $72c8: $03
    ld a, [$f706]                                 ; $72c9: $fa $06 $f7
    add hl, bc                                    ; $72cc: $09
    db $fc                                        ; $72cd: $fc
    db $ec                                        ; $72ce: $ec
    db $fc                                        ; $72cf: $fc
    di                                            ; $72d0: $f3
    db $fc                                        ; $72d1: $fc
    or $8d                                        ; $72d2: $f6 $8d

jr_0f4_72d4:
    ld [$0200], sp                                ; $72d4: $08 $00 $02
    inc d                                         ; $72d7: $14
    inc l                                         ; $72d8: $2c
    ld [hl], l                                    ; $72d9: $75
    or d                                          ; $72da: $b2
    rst $10                                       ; $72db: $d7
    dec c                                         ; $72dc: $0d
    ld d, $20                                     ; $72dd: $16 $20
    ld a, [bc]                                    ; $72df: $0a
    ld bc, $0013                                  ; $72e0: $01 $13 $00
    add c                                         ; $72e3: $81
    jr nz, jr_0f4_72e8                            ; $72e4: $20 $02

jr_0f4_72e6:
    nop                                           ; $72e6: $00
    adc c                                         ; $72e7: $89

jr_0f4_72e8:
    ld c, b                                       ; $72e8: $48
    ld [de], a                                    ; $72e9: $12
    inc h                                         ; $72ea: $24
    ld h, [hl]                                    ; $72eb: $66
    cpl                                           ; $72ec: $2f
    ld b, d                                       ; $72ed: $42
    ld d, h                                       ; $72ee: $54
    jr nz, jr_0f4_7331                            ; $72ef: $20 $40

    ld a, [de]                                    ; $72f1: $1a
    nop                                           ; $72f2: $00
    add d                                         ; $72f3: $82
    ld bc, $1802                                  ; $72f4: $01 $02 $18
    nop                                           ; $72f7: $00
    rst $38                                       ; $72f8: $ff
    rlca                                          ; $72f9: $07
    ld bc, $06fa                                  ; $72fa: $01 $fa $06
    rst $30                                       ; $72fd: $f7
    add hl, bc                                    ; $72fe: $09
    nop                                           ; $72ff: $00
    db $fc                                        ; $7300: $fc
    sub c                                         ; $7301: $91
    inc e                                         ; $7302: $1c
    ld a, $4d                                     ; $7303: $3e $4d
    ld a, $5d                                     ; $7305: $3e $5d
    ld a, $4d                                     ; $7307: $3e $4d
    ld a, $2a                                     ; $7309: $3e $2a
    inc e                                         ; $730b: $1c
    ld a, [hl+]                                   ; $730c: $2a
    inc e                                         ; $730d: $1c
    ld a, [hl+]                                   ; $730e: $2a
    inc e                                         ; $730f: $1c
    inc d                                         ; $7310: $14
    ld [$0214], sp                                ; $7311: $08 $14 $02
    ld [$000d], sp                                ; $7314: $08 $0d $00
    rst $38                                       ; $7317: $ff
    dec bc                                        ; $7318: $0b
    inc bc                                        ; $7319: $03
    ld a, [$f706]                                 ; $731a: $fa $06 $f7
    add hl, bc                                    ; $731d: $09
    or $fb                                        ; $731e: $f6 $fb
    or $fe                                        ; $7320: $f6 $fe
    ld b, $fb                                     ; $7322: $06 $fb
    or c                                          ; $7324: $b1
    rra                                           ; $7325: $1f
    ld a, a                                       ; $7326: $7f
    cp a                                          ; $7327: $bf
    ld a, a                                       ; $7328: $7f
    sbc a                                         ; $7329: $9f
    ld a, a                                       ; $732a: $7f
    adc a                                         ; $732b: $8f
    ld a, a                                       ; $732c: $7f
    sbc a                                         ; $732d: $9f
    ld a, a                                       ; $732e: $7f
    ld c, a                                       ; $732f: $4f
    ccf                                           ; $7330: $3f

jr_0f4_7331:
    ld c, a                                       ; $7331: $4f
    ccf                                           ; $7332: $3f
    ld b, [hl]                                    ; $7333: $46
    ccf                                           ; $7334: $3f
    ld c, a                                       ; $7335: $4f
    ccf                                           ; $7336: $3f
    ld l, $1f                                     ; $7337: $2e $1f
    ld h, $1f                                     ; $7339: $26 $1f
    inc h                                         ; $733b: $24
    rra                                           ; $733c: $1f
    ld h, $1f                                     ; $733d: $26 $1f
    dec d                                         ; $733f: $15
    ld c, $15                                     ; $7340: $0e $15
    ld c, $15                                     ; $7342: $0e $15
    ld c, $04                                     ; $7344: $0e $04
    ld b, $01                                     ; $7346: $06 $01
    ld b, $05                                     ; $7348: $06 $05
    ld b, $01                                     ; $734a: $06 $01
    ld b, $05                                     ; $734c: $06 $05
    ld b, $02                                     ; $734e: $06 $02
    inc b                                         ; $7350: $04
    ld [bc], a                                    ; $7351: $02
    inc b                                         ; $7352: $04
    ld [bc], a                                    ; $7353: $02
    inc b                                         ; $7354: $04
    ld [bc], a                                    ; $7355: $02
    ld [bc], a                                    ; $7356: $02
    inc b                                         ; $7357: $04
    add [hl]                                      ; $7358: $86
    nop                                           ; $7359: $00
    inc b                                         ; $735a: $04
    nop                                           ; $735b: $00
    inc b                                         ; $735c: $04
    nop                                           ; $735d: $00
    inc b                                         ; $735e: $04
    rlca                                          ; $735f: $07
    nop                                           ; $7360: $00
    add l                                         ; $7361: $85
    dec d                                         ; $7362: $15
    ld c, $0a                                     ; $7363: $0e $0a
    inc b                                         ; $7365: $04
    ld a, [bc]                                    ; $7366: $0a
    ld [bc], a                                    ; $7367: $02
    inc b                                         ; $7368: $04
    add hl, de                                    ; $7369: $19
    nop                                           ; $736a: $00
    rst $38                                       ; $736b: $ff
    dec bc                                        ; $736c: $0b
    inc bc                                        ; $736d: $03
    ld a, [$f706]                                 ; $736e: $fa $06 $f7
    add hl, bc                                    ; $7371: $09
    or $f8                                        ; $7372: $f6 $f8
    or $fc                                        ; $7374: $f6 $fc
    ld b, $fa                                     ; $7376: $06 $fa
    or l                                          ; $7378: $b5
    ccf                                           ; $7379: $3f
    ld a, a                                       ; $737a: $7f
    sbc a                                         ; $737b: $9f
    ld a, a                                       ; $737c: $7f
    sbc a                                         ; $737d: $9f
    ld a, a                                       ; $737e: $7f
    adc a                                         ; $737f: $8f
    ld a, a                                       ; $7380: $7f
    ld e, a                                       ; $7381: $5f
    ccf                                           ; $7382: $3f
    ld c, a                                       ; $7383: $4f
    ccf                                           ; $7384: $3f
    daa                                           ; $7385: $27
    rra                                           ; $7386: $1f
    inc hl                                        ; $7387: $23
    rra                                           ; $7388: $1f
    rla                                           ; $7389: $17
    rrca                                          ; $738a: $0f
    inc de                                        ; $738b: $13
    rrca                                          ; $738c: $0f
    dec bc                                        ; $738d: $0b
    rlca                                          ; $738e: $07
    add hl, bc                                    ; $738f: $09
    rlca                                          ; $7390: $07
    dec b                                         ; $7391: $05
    inc bc                                        ; $7392: $03
    dec b                                         ; $7393: $05
    inc bc                                        ; $7394: $03
    inc b                                         ; $7395: $04
    inc bc                                        ; $7396: $03
    ld [bc], a                                    ; $7397: $02
    ld bc, $0e0c                                  ; $7398: $01 $0c $0e
    add hl, bc                                    ; $739b: $09
    ld c, $0d                                     ; $739c: $0e $0d
    ld c, $0d                                     ; $739e: $0e $0d
    ld c, $09                                     ; $73a0: $0e $09
    ld c, $0a                                     ; $73a2: $0e $0a
    inc c                                         ; $73a4: $0c
    ld [bc], a                                    ; $73a5: $02
    inc c                                         ; $73a6: $0c
    ld a, [bc]                                    ; $73a7: $0a
    inc c                                         ; $73a8: $0c
    ld a, [bc]                                    ; $73a9: $0a
    inc c                                         ; $73aa: $0c
    ld a, [bc]                                    ; $73ab: $0a
    inc c                                         ; $73ac: $0c
    ld [bc], a                                    ; $73ad: $02
    ld [bc], a                                    ; $73ae: $02
    inc c                                         ; $73af: $0c
    adc [hl]                                      ; $73b0: $8e
    ld [$080c], sp                                ; $73b1: $08 $0c $08
    inc c                                         ; $73b4: $0c
    ld [$080c], sp                                ; $73b5: $08 $0c $08
    inc c                                         ; $73b8: $0c
    ld [$060b], sp                                ; $73b9: $08 $0b $06
    dec b                                         ; $73bc: $05
    ld [bc], a                                    ; $73bd: $02
    dec b                                         ; $73be: $05
    ld [bc], a                                    ; $73bf: $02
    ld [bc], a                                    ; $73c0: $02
    add hl, de                                    ; $73c1: $19
    nop                                           ; $73c2: $00
    rst $38                                       ; $73c3: $ff
    dec bc                                        ; $73c4: $0b
    inc bc                                        ; $73c5: $03
    ld a, [$f706]                                 ; $73c6: $fa $06 $f7
    add hl, bc                                    ; $73c9: $09
    ld hl, sp-$0b                                 ; $73ca: $f8 $f5
    ld hl, sp-$06                                 ; $73cc: $f8 $fa
    ld [$95fa], sp                                ; $73ce: $08 $fa $95
    ccf                                           ; $73d1: $3f
    ld a, a                                       ; $73d2: $7f
    sbc a                                         ; $73d3: $9f
    ld a, a                                       ; $73d4: $7f
    ld c, a                                       ; $73d5: $4f
    ccf                                           ; $73d6: $3f
    inc hl                                        ; $73d7: $23
    rra                                           ; $73d8: $1f
    daa                                           ; $73d9: $27
    rra                                           ; $73da: $1f
    inc de                                        ; $73db: $13
    rrca                                          ; $73dc: $0f
    add hl, bc                                    ; $73dd: $09
    rlca                                          ; $73de: $07
    add hl, bc                                    ; $73df: $09
    rlca                                          ; $73e0: $07
    inc b                                         ; $73e1: $04
    inc bc                                        ; $73e2: $03
    ld [bc], a                                    ; $73e3: $02
    ld bc, $0202                                  ; $73e4: $01 $02 $02
    ld bc, $0009                                  ; $73e7: $01 $09 $00
    and c                                         ; $73ea: $a1
    jr @+$1e                                      ; $73eb: $18 $1c

    ld [de], a                                    ; $73ed: $12
    inc e                                         ; $73ee: $1c
    ld a, [de]                                    ; $73ef: $1a
    inc e                                         ; $73f0: $1c
    ld a, [de]                                    ; $73f1: $1a
    inc e                                         ; $73f2: $1c
    ld [de], a                                    ; $73f3: $12
    inc e                                         ; $73f4: $1c
    ld a, [de]                                    ; $73f5: $1a
    inc e                                         ; $73f6: $1c
    ld a, [de]                                    ; $73f7: $1a
    inc e                                         ; $73f8: $1c
    ld e, $1c                                     ; $73f9: $1e $1c
    ld a, [de]                                    ; $73fb: $1a
    inc e                                         ; $73fc: $1c
    dec e                                         ; $73fd: $1d
    ld e, $0d                                     ; $73fe: $1e $0d
    ld e, $0f                                     ; $7400: $1e $0f
    ld e, $15                                     ; $7402: $1e $15
    ld c, $13                                     ; $7404: $0e $13
    ld c, $0b                                     ; $7406: $0e $0b
    ld b, $05                                     ; $7408: $06 $05
    ld [bc], a                                    ; $740a: $02
    dec b                                         ; $740b: $05
    ld [bc], a                                    ; $740c: $02
    ld [bc], a                                    ; $740d: $02
    dec e                                         ; $740e: $1d
    nop                                           ; $740f: $00
    rst $38                                       ; $7410: $ff
    dec bc                                        ; $7411: $0b
    inc bc                                        ; $7412: $03
    ld a, [$f706]                                 ; $7413: $fa $06 $f7
    add hl, bc                                    ; $7416: $09
    ld sp, hl                                     ; $7417: $f9
    ld hl, sp-$07                                 ; $7418: $f8 $f9
    ei                                            ; $741a: $fb
    add hl, bc                                    ; $741b: $09
    ld sp, hl                                     ; $741c: $f9
    sbc e                                         ; $741d: $9b
    ccf                                           ; $741e: $3f
    ld a, a                                       ; $741f: $7f
    sbc a                                         ; $7420: $9f
    ld a, a                                       ; $7421: $7f
    ld c, a                                       ; $7422: $4f
    ccf                                           ; $7423: $3f
    ld e, a                                       ; $7424: $5f
    ccf                                           ; $7425: $3f
    daa                                           ; $7426: $27
    rra                                           ; $7427: $1f
    inc hl                                        ; $7428: $23
    rra                                           ; $7429: $1f
    rla                                           ; $742a: $17
    rrca                                          ; $742b: $0f
    inc de                                        ; $742c: $13
    rrca                                          ; $742d: $0f
    add hl, bc                                    ; $742e: $09
    rlca                                          ; $742f: $07
    dec bc                                        ; $7430: $0b
    rlca                                          ; $7431: $07
    dec b                                         ; $7432: $05
    inc bc                                        ; $7433: $03
    dec b                                         ; $7434: $05
    inc bc                                        ; $7435: $03
    ld [bc], a                                    ; $7436: $02
    ld bc, $0202                                  ; $7437: $01 $02 $02
    ld bc, $0090                                  ; $743a: $01 $90 $00
    ld bc, $0400                                  ; $743d: $01 $00 $04
    ld b, $01                                     ; $7440: $06 $01
    ld b, $05                                     ; $7442: $06 $05
    ld b, $05                                     ; $7444: $06 $05
    ld b, $05                                     ; $7446: $06 $05
    ld b, $05                                     ; $7448: $06 $05
    ld b, $01                                     ; $744a: $06 $01
    ld [bc], a                                    ; $744c: $02
    ld b, $92                                     ; $744d: $06 $92
    inc b                                         ; $744f: $04
    ld b, $04                                     ; $7450: $06 $04
    ld b, $04                                     ; $7452: $06 $04
    ld [bc], a                                    ; $7454: $02
    inc b                                         ; $7455: $04
    ld b, $04                                     ; $7456: $06 $04
    ld b, $04                                     ; $7458: $06 $04
    ld b, $04                                     ; $745a: $06 $04
    ld [bc], a                                    ; $745c: $02
    inc b                                         ; $745d: $04
    ld [bc], a                                    ; $745e: $02
    inc b                                         ; $745f: $04
    ld bc, $001f                                  ; $7460: $01 $1f $00
    rst $38                                       ; $7463: $ff
    dec bc                                        ; $7464: $0b
    inc bc                                        ; $7465: $03
    ld a, [$f706]                                 ; $7466: $fa $06 $f7
    add hl, bc                                    ; $7469: $09
    ld sp, hl                                     ; $746a: $f9
    ei                                            ; $746b: $fb
    ld sp, hl                                     ; $746c: $f9
    cp $09                                        ; $746d: $fe $09
    ei                                            ; $746f: $fb
    and a                                         ; $7470: $a7
    cp a                                          ; $7471: $bf
    ld a, a                                       ; $7472: $7f
    cp a                                          ; $7473: $bf
    ld a, a                                       ; $7474: $7f
    sbc a                                         ; $7475: $9f
    ld a, a                                       ; $7476: $7f
    cp a                                          ; $7477: $bf
    ld a, a                                       ; $7478: $7f
    ld e, a                                       ; $7479: $5f
    ccf                                           ; $747a: $3f
    ld c, a                                       ; $747b: $4f
    ccf                                           ; $747c: $3f
    ld e, a                                       ; $747d: $5f
    ccf                                           ; $747e: $3f
    cpl                                           ; $747f: $2f
    rra                                           ; $7480: $1f
    ld l, $1f                                     ; $7481: $2e $1f
    ld h, $1f                                     ; $7483: $26 $1f
    rla                                           ; $7485: $17
    ld c, $15                                     ; $7486: $0e $15
    ld c, $15                                     ; $7488: $0e $15
    ld c, $15                                     ; $748a: $0e $15
    ld c, $0a                                     ; $748c: $0e $0a
    inc b                                         ; $748e: $04
    ld a, [bc]                                    ; $748f: $0a
    inc b                                         ; $7490: $04
    dec b                                         ; $7491: $05
    ld b, $05                                     ; $7492: $06 $05
    ld b, $05                                     ; $7494: $06 $05
    ld b, $01                                     ; $7496: $06 $01
    ld [bc], a                                    ; $7498: $02
    ld b, $84                                     ; $7499: $06 $84
    inc b                                         ; $749b: $04
    ld [bc], a                                    ; $749c: $02
    inc b                                         ; $749d: $04
    ld [bc], a                                    ; $749e: $02
    ld [bc], a                                    ; $749f: $02
    inc b                                         ; $74a0: $04
    add h                                         ; $74a1: $84
    nop                                           ; $74a2: $00
    inc b                                         ; $74a3: $04
    nop                                           ; $74a4: $00
    inc b                                         ; $74a5: $04
    dec c                                         ; $74a6: $0d
    nop                                           ; $74a7: $00
    add c                                         ; $74a8: $81
    inc b                                         ; $74a9: $04
    rra                                           ; $74aa: $1f
    nop                                           ; $74ab: $00
    rst $38                                       ; $74ac: $ff
    dec bc                                        ; $74ad: $0b
    inc bc                                        ; $74ae: $03
    ld a, [$f706]                                 ; $74af: $fa $06 $f7
    add hl, bc                                    ; $74b2: $09
    ld sp, hl                                     ; $74b3: $f9
    cp $f9                                        ; $74b4: $fe $f9
    ld bc, $fe09                                  ; $74b6: $01 $09 $fe
    and a                                         ; $74b9: $a7
    rra                                           ; $74ba: $1f
    ld a, a                                       ; $74bb: $7f
    cp a                                          ; $74bc: $bf
    ld a, a                                       ; $74bd: $7f
    sbc a                                         ; $74be: $9f
    ld a, a                                       ; $74bf: $7f
    cp l                                          ; $74c0: $bd
    ld a, a                                       ; $74c1: $7f
    cp [hl]                                       ; $74c2: $be
    ld a, a                                       ; $74c3: $7f
    sbc [hl]                                      ; $74c4: $9e
    ld a, a                                       ; $74c5: $7f
    sbc c                                         ; $74c6: $99
    ld a, [hl]                                    ; $74c7: $7e
    ld e, l                                       ; $74c8: $5d
    ld a, $5a                                     ; $74c9: $3e $5a
    inc a                                         ; $74cb: $3c
    ld c, d                                       ; $74cc: $4a
    inc a                                         ; $74cd: $3c
    ld d, h                                       ; $74ce: $54
    jr c, jr_0f4_7525                             ; $74cf: $38 $54

    jr c, jr_0f4_752b                             ; $74d1: $38 $58

    jr nc, jr_0f4_753d                            ; $74d3: $30 $68

    jr nc, jr_0f4_7527                            ; $74d5: $30 $50

    jr nz, jr_0f4_7529                            ; $74d7: $20 $50

    jr nz, jr_0f4_74db                            ; $74d9: $20 $00

jr_0f4_74db:
    ld b, $05                                     ; $74db: $06 $05
    ld b, $02                                     ; $74dd: $06 $02
    inc b                                         ; $74df: $04
    ld [bc], a                                    ; $74e0: $02
    ld [bc], a                                    ; $74e1: $02
    inc b                                         ; $74e2: $04
    add d                                         ; $74e3: $82
    nop                                           ; $74e4: $00
    inc b                                         ; $74e5: $04
    dec d                                         ; $74e6: $15
    nop                                           ; $74e7: $00
    add c                                         ; $74e8: $81
    jr nz, jr_0f4_750a                            ; $74e9: $20 $1f

    nop                                           ; $74eb: $00

Call_0f4_74ec:
    rst $38                                       ; $74ec: $ff
    dec bc                                        ; $74ed: $0b
    inc bc                                        ; $74ee: $03
    ld a, [$f706]                                 ; $74ef: $fa $06 $f7
    add hl, bc                                    ; $74f2: $09
    rst $30                                       ; $74f3: $f7
    rst $38                                       ; $74f4: $ff
    rst $30                                       ; $74f5: $f7
    inc b                                         ; $74f6: $04
    rlca                                          ; $74f7: $07
    rst $38                                       ; $74f8: $ff
    xor l                                         ; $74f9: $ad
    rrca                                          ; $74fa: $0f
    ccf                                           ; $74fb: $3f
    ld d, a                                       ; $74fc: $57
    ccf                                           ; $74fd: $3f
    ld e, a                                       ; $74fe: $5f
    ccf                                           ; $74ff: $3f
    ld c, a                                       ; $7500: $4f
    ccf                                           ; $7501: $3f
    ld c, a                                       ; $7502: $4f
    ccf                                           ; $7503: $3f
    ld e, a                                       ; $7504: $5f
    ccf                                           ; $7505: $3f
    ld e, a                                       ; $7506: $5f
    ccf                                           ; $7507: $3f
    ld e, [hl]                                    ; $7508: $5e
    ccf                                           ; $7509: $3f

jr_0f4_750a:
    ld c, h                                       ; $750a: $4c
    ccf                                           ; $750b: $3f
    ld e, l                                       ; $750c: $5d
    ld a, $5a                                     ; $750d: $3e $5a
    inc a                                         ; $750f: $3c
    cp d                                          ; $7510: $ba
    ld a, h                                       ; $7511: $7c
    sub h                                         ; $7512: $94
    ld a, b                                       ; $7513: $78
    xor b                                         ; $7514: $a8
    ld [hl], b                                    ; $7515: $70
    add sp, $70                                   ; $7516: $e8 $70
    ret nc                                        ; $7518: $d0

    ld h, b                                       ; $7519: $60
    ld e, $1f                                     ; $751a: $1e $1f
    dec e                                         ; $751c: $1d
    ld e, $15                                     ; $751d: $1e $15
    ld e, $1a                                     ; $751f: $1e $1a
    inc e                                         ; $7521: $1c
    inc d                                         ; $7522: $14
    jr jr_0f4_7539                                ; $7523: $18 $14

jr_0f4_7525:
    jr jr_0f4_752f                                ; $7525: $18 $08

jr_0f4_7527:
    ld [bc], a                                    ; $7527: $02
    db $10                                        ; $7528: $10

jr_0f4_7529:
    add d                                         ; $7529: $82
    nop                                           ; $752a: $00

jr_0f4_752b:
    db $10                                        ; $752b: $10
    rrca                                          ; $752c: $0f
    nop                                           ; $752d: $00
    add e                                         ; $752e: $83

jr_0f4_752f:
    and b                                         ; $752f: $a0
    ld b, b                                       ; $7530: $40
    and b                                         ; $7531: $a0
    ld [bc], a                                    ; $7532: $02
    ld b, b                                       ; $7533: $40
    dec de                                        ; $7534: $1b
    nop                                           ; $7535: $00
    rst $38                                       ; $7536: $ff
    dec bc                                        ; $7537: $0b
    inc bc                                        ; $7538: $03

jr_0f4_7539:
    ld a, [$f706]                                 ; $7539: $fa $06 $f7
    add hl, bc                                    ; $753c: $09

jr_0f4_753d:
    or $fd                                        ; $753d: $f6 $fd
    or $01                                        ; $753f: $f6 $01
    ld b, $fd                                     ; $7541: $06 $fd
    xor a                                         ; $7543: $af
    ccf                                           ; $7544: $3f
    ld a, a                                       ; $7545: $7f
    sbc a                                         ; $7546: $9f
    ld a, a                                       ; $7547: $7f
    adc a                                         ; $7548: $8f
    ld a, a                                       ; $7549: $7f
    sbc a                                         ; $754a: $9f
    ld a, a                                       ; $754b: $7f
    sbc a                                         ; $754c: $9f
    ld a, a                                       ; $754d: $7f
    ld c, a                                       ; $754e: $4f
    ccf                                           ; $754f: $3f
    ld e, a                                       ; $7550: $5f
    ccf                                           ; $7551: $3f
    ld e, a                                       ; $7552: $5f
    ccf                                           ; $7553: $3f
    ld c, [hl]                                    ; $7554: $4e
    ccf                                           ; $7555: $3f
    ld e, [hl]                                    ; $7556: $5e
    ccf                                           ; $7557: $3f
    ld e, l                                       ; $7558: $5d
    ld a, $4d                                     ; $7559: $3e $4d
    ld a, $2e                                     ; $755b: $3e $2e
    inc e                                         ; $755d: $1c
    ld a, [hl+]                                   ; $755e: $2a
    inc e                                         ; $755f: $1c
    ld a, [hl+]                                   ; $7560: $2a
    inc e                                         ; $7561: $1c
    inc [hl]                                      ; $7562: $34
    jr @+$0f                                      ; $7563: $18 $0d

    ld c, $09                                     ; $7565: $0e $09
    ld c, $0d                                     ; $7567: $0e $0d
    ld c, $0d                                     ; $7569: $0e $0d
    ld c, $0a                                     ; $756b: $0e $0a
    inc c                                         ; $756d: $0c
    ld a, [bc]                                    ; $756e: $0a
    inc c                                         ; $756f: $0c
    inc b                                         ; $7570: $04
    ld [$0204], sp                                ; $7571: $08 $04 $02
    ld [$0082], sp                                ; $7574: $08 $82 $00
    ld [$000d], sp                                ; $7577: $08 $0d $00
    add l                                         ; $757a: $85
    inc [hl]                                      ; $757b: $34
    jr jr_0f4_75a6                                ; $757c: $18 $28

    db $10                                        ; $757e: $10
    jr z, jr_0f4_7583                             ; $757f: $28 $02

    db $10                                        ; $7581: $10
    add hl, de                                    ; $7582: $19

jr_0f4_7583:
    nop                                           ; $7583: $00
    rst $38                                       ; $7584: $ff
    dec bc                                        ; $7585: $0b
    inc bc                                        ; $7586: $03
    ld a, [$f706]                                 ; $7587: $fa $06 $f7
    add hl, bc                                    ; $758a: $09
    db $f4                                        ; $758b: $f4
    ei                                            ; $758c: $fb
    db $f4                                        ; $758d: $f4
    cp $04                                        ; $758e: $fe $04
    ei                                            ; $7590: $fb
    or l                                          ; $7591: $b5
    ccf                                           ; $7592: $3f
    ld a, a                                       ; $7593: $7f
    cp a                                          ; $7594: $bf
    ld a, a                                       ; $7595: $7f
    sbc a                                         ; $7596: $9f
    ld a, a                                       ; $7597: $7f
    cp a                                          ; $7598: $bf
    ld a, a                                       ; $7599: $7f
    cp a                                          ; $759a: $bf
    ld a, a                                       ; $759b: $7f
    sbc a                                         ; $759c: $9f
    ld a, a                                       ; $759d: $7f
    ld e, a                                       ; $759e: $5f
    ccf                                           ; $759f: $3f
    ld e, a                                       ; $75a0: $5f
    ccf                                           ; $75a1: $3f
    ld c, [hl]                                    ; $75a2: $4e
    ccf                                           ; $75a3: $3f
    ld e, a                                       ; $75a4: $5f
    ccf                                           ; $75a5: $3f

jr_0f4_75a6:
    ld c, a                                       ; $75a6: $4f
    ccf                                           ; $75a7: $3f
    ld l, $1f                                     ; $75a8: $2e $1f
    ld h, $1f                                     ; $75aa: $26 $1f
    ld l, $1f                                     ; $75ac: $2e $1f
    ld h, $1f                                     ; $75ae: $26 $1f
    rla                                           ; $75b0: $17
    ld c, $04                                     ; $75b1: $0e $04
    ld b, $01                                     ; $75b3: $06 $01
    ld b, $05                                     ; $75b5: $06 $05
    ld b, $05                                     ; $75b7: $06 $05
    ld b, $05                                     ; $75b9: $06 $05
    ld b, $01                                     ; $75bb: $06 $01
    ld b, $02                                     ; $75bd: $06 $02
    inc b                                         ; $75bf: $04
    ld [bc], a                                    ; $75c0: $02
    inc b                                         ; $75c1: $04
    ld [bc], a                                    ; $75c2: $02
    inc b                                         ; $75c3: $04
    ld [bc], a                                    ; $75c4: $02
    inc b                                         ; $75c5: $04
    ld [bc], a                                    ; $75c6: $02
    ld [bc], a                                    ; $75c7: $02
    inc b                                         ; $75c8: $04
    add [hl]                                      ; $75c9: $86
    nop                                           ; $75ca: $00
    inc b                                         ; $75cb: $04
    nop                                           ; $75cc: $00
    inc b                                         ; $75cd: $04
    nop                                           ; $75ce: $00
    inc b                                         ; $75cf: $04
    inc bc                                        ; $75d0: $03
    nop                                           ; $75d1: $00
    adc c                                         ; $75d2: $89
    dec d                                         ; $75d3: $15
    ld c, $15                                     ; $75d4: $0e $15
    ld c, $15                                     ; $75d6: $0e $15
    ld c, $0a                                     ; $75d8: $0e $0a
    inc b                                         ; $75da: $04
    ld a, [bc]                                    ; $75db: $0a
    ld [bc], a                                    ; $75dc: $02
    inc b                                         ; $75dd: $04
    dec d                                         ; $75de: $15
    nop                                           ; $75df: $00
    rst $38                                       ; $75e0: $ff
    rlca                                          ; $75e1: $07
    ld bc, $06fa                                  ; $75e2: $01 $fa $06
    rst $30                                       ; $75e5: $f7
    add hl, bc                                    ; $75e6: $09
    ei                                            ; $75e7: $fb
    db $fd                                        ; $75e8: $fd
    add c                                         ; $75e9: $81
    nop                                           ; $75ea: $00
    ld [bc], a                                    ; $75eb: $02
    ld [bc], a                                    ; $75ec: $02
    add e                                         ; $75ed: $83
    rlca                                          ; $75ee: $07
    nop                                           ; $75ef: $00
    ld [bc], a                                    ; $75f0: $02
    ld a, [de]                                    ; $75f1: $1a
    nop                                           ; $75f2: $00
    rst $38                                       ; $75f3: $ff
    rlca                                          ; $75f4: $07
    ld bc, $06fa                                  ; $75f5: $01 $fa $06
    rst $30                                       ; $75f8: $f7
    add hl, bc                                    ; $75f9: $09
    ld a, [$87fe]                                 ; $75fa: $fa $fe $87
    ld c, $00                                     ; $75fd: $0e $00
    dec d                                         ; $75ff: $15
    ld c, $1f                                     ; $7600: $0e $1f
    ld c, $15                                     ; $7602: $0e $15
    ld [bc], a                                    ; $7604: $02
    ld c, $17                                     ; $7605: $0e $17
    nop                                           ; $7607: $00
    rst $38                                       ; $7608: $ff
    rlca                                          ; $7609: $07
    ld bc, $06fa                                  ; $760a: $01 $fa $06
    rst $30                                       ; $760d: $f7
    add hl, bc                                    ; $760e: $09
    ld sp, hl                                     ; $760f: $f9
    rst $38                                       ; $7610: $ff
    adc e                                         ; $7611: $8b
    inc e                                         ; $7612: $1c
    nop                                           ; $7613: $00
    ld [hl+], a                                   ; $7614: $22
    inc e                                         ; $7615: $1c
    ld e, l                                       ; $7616: $5d
    ld a, $5d                                     ; $7617: $3e $5d
    ld a, $5d                                     ; $7619: $3e $5d
    ld a, $22                                     ; $761b: $3e $22
    ld [bc], a                                    ; $761d: $02
    inc e                                         ; $761e: $1c
    inc de                                        ; $761f: $13
    nop                                           ; $7620: $00
    rst $38                                       ; $7621: $ff
    add hl, bc                                    ; $7622: $09
    ld [bc], a                                    ; $7623: $02
    ld a, [$f706]                                 ; $7624: $fa $06 $f7
    add hl, bc                                    ; $7627: $09
    ld hl, sp-$04                                 ; $7628: $f8 $fc
    ld hl, sp+$00                                 ; $762a: $f8 $00
    adc a                                         ; $762c: $8f
    inc bc                                        ; $762d: $03
    ld b, b                                       ; $762e: $40
    ld b, h                                       ; $762f: $44
    db $e3                                        ; $7630: $e3
    dec bc                                        ; $7631: $0b
    ld b, a                                       ; $7632: $47
    rla                                           ; $7633: $17
    rrca                                          ; $7634: $0f
    rla                                           ; $7635: $17
    rrca                                          ; $7636: $0f
    rla                                           ; $7637: $17
    rrca                                          ; $7638: $0f
    dec bc                                        ; $7639: $0b
    rlca                                          ; $763a: $07
    inc b                                         ; $763b: $04
    ld [bc], a                                    ; $763c: $02
    inc bc                                        ; $763d: $03
    rrca                                          ; $763e: $0f
    nop                                           ; $763f: $00
    adc a                                         ; $7640: $8f
    ld [$0400], sp                                ; $7641: $08 $00 $04
    ld [$0c0a], sp                                ; $7644: $08 $0a $0c
    dec c                                         ; $7647: $0d
    ld c, $0d                                     ; $7648: $0e $0d
    ld c, $0d                                     ; $764a: $0e $0d
    ld c, $0a                                     ; $764c: $0e $0a
    inc c                                         ; $764e: $0c
    inc b                                         ; $764f: $04
    ld [bc], a                                    ; $7650: $02
    ld [$000f], sp                                ; $7651: $08 $0f $00
    rst $38                                       ; $7654: $ff
    rlca                                          ; $7655: $07
    ld bc, $06fa                                  ; $7656: $01 $fa $06
    rst $30                                       ; $7659: $f7
    add hl, bc                                    ; $765a: $09
    rst $30                                       ; $765b: $f7
    ld sp, hl                                     ; $765c: $f9
    add a                                         ; $765d: $87
    inc e                                         ; $765e: $1c
    nop                                           ; $765f: $00
    ld a, [hl+]                                   ; $7660: $2a
    inc e                                         ; $7661: $1c
    ld a, $1c                                     ; $7662: $3e $1c
    ld a, [hl+]                                   ; $7664: $2a
    ld [bc], a                                    ; $7665: $02
    inc e                                         ; $7666: $1c
    ld b, $00                                     ; $7667: $06 $00
    ld [bc], a                                    ; $7669: $02
    ld [bc], a                                    ; $766a: $02
    add e                                         ; $766b: $83
    rlca                                          ; $766c: $07
    nop                                           ; $766d: $00
    ld [bc], a                                    ; $766e: $02
    inc c                                         ; $766f: $0c
    nop                                           ; $7670: $00
    rst $38                                       ; $7671: $ff
    rlca                                          ; $7672: $07
    ld bc, $06fa                                  ; $7673: $01 $fa $06
    rst $30                                       ; $7676: $f7
    add hl, bc                                    ; $7677: $09
    ld hl, sp-$06                                 ; $7678: $f8 $fa
    add c                                         ; $767a: $81
    nop                                           ; $767b: $00
    ld [bc], a                                    ; $767c: $02
    db $10                                        ; $767d: $10
    add e                                         ; $767e: $83
    jr c, jr_0f4_7681                             ; $767f: $38 $00

jr_0f4_7681:
    db $10                                        ; $7681: $10
    inc b                                         ; $7682: $04
    nop                                           ; $7683: $00
    add a                                         ; $7684: $87
    ld c, $00                                     ; $7685: $0e $00
    dec d                                         ; $7687: $15
    ld c, $1f                                     ; $7688: $0e $1f
    ld c, $15                                     ; $768a: $0e $15
    ld [bc], a                                    ; $768c: $02
    ld c, $0d                                     ; $768d: $0e $0d
    nop                                           ; $768f: $00
    rst $38                                       ; $7690: $ff
    rlca                                          ; $7691: $07
    ld bc, $06fa                                  ; $7692: $01 $fa $06
    rst $30                                       ; $7695: $f7
    add hl, bc                                    ; $7696: $09
    db $fc                                        ; $7697: $fc
    ei                                            ; $7698: $fb
    adc e                                         ; $7699: $8b
    inc e                                         ; $769a: $1c
    nop                                           ; $769b: $00
    ld [hl+], a                                   ; $769c: $22
    inc e                                         ; $769d: $1c
    ld e, l                                       ; $769e: $5d
    ld a, $5d                                     ; $769f: $3e $5d
    ld a, $5d                                     ; $76a1: $3e $5d
    ld a, $22                                     ; $76a3: $3e $22
    ld [bc], a                                    ; $76a5: $02
    inc e                                         ; $76a6: $1c
    inc de                                        ; $76a7: $13
    nop                                           ; $76a8: $00
    rst $38                                       ; $76a9: $ff
    add hl, bc                                    ; $76aa: $09
    ld [bc], a                                    ; $76ab: $02
    ld a, [$f706]                                 ; $76ac: $fa $06 $f7
    add hl, bc                                    ; $76af: $09
    ei                                            ; $76b0: $fb
    ei                                            ; $76b1: $fb
    ei                                            ; $76b2: $fb
    db $fc                                        ; $76b3: $fc
    adc a                                         ; $76b4: $8f
    inc e                                         ; $76b5: $1c
    nop                                           ; $76b6: $00
    ld [hl+], a                                   ; $76b7: $22
    inc e                                         ; $76b8: $1c
    ld e, l                                       ; $76b9: $5d
    ld a, $be                                     ; $76ba: $3e $be
    ld a, a                                       ; $76bc: $7f
    cp [hl]                                       ; $76bd: $be
    ld a, a                                       ; $76be: $7f
    cp [hl]                                       ; $76bf: $be
    ld a, a                                       ; $76c0: $7f
    ld e, l                                       ; $76c1: $5d
    ld a, $22                                     ; $76c2: $3e $22
    ld [bc], a                                    ; $76c4: $02
    inc e                                         ; $76c5: $1c
    dec d                                         ; $76c6: $15
    nop                                           ; $76c7: $00
    add l                                         ; $76c8: $85
    ld bc, $0100                                  ; $76c9: $01 $00 $01
    nop                                           ; $76cc: $00
    ld bc, $0015                                  ; $76cd: $01 $15 $00
    rst $38                                       ; $76d0: $ff
    rlca                                          ; $76d1: $07
    ld bc, $08fc                                  ; $76d2: $01 $fc $08
    db $fd                                        ; $76d5: $fd
    inc b                                         ; $76d6: $04
    rst $38                                       ; $76d7: $ff
    rst $38                                       ; $76d8: $ff
    adc b                                         ; $76d9: $88
    jr jr_0f4_7754                                ; $76da: $18 $78

    ld c, [hl]                                    ; $76dc: $4e
    cp [hl]                                       ; $76dd: $be
    ld h, a                                       ; $76de: $67
    sbc a                                         ; $76df: $9f
    jr jr_0f4_775a                                ; $76e0: $18 $78

    jr jr_0f4_76e4                                ; $76e2: $18 $00

jr_0f4_76e4:
    rst $38                                       ; $76e4: $ff
    add hl, bc                                    ; $76e5: $09

Jump_0f4_76e6:
    ld [bc], a                                    ; $76e6: $02
    db $fc                                        ; $76e7: $fc
    ld [$04fd], sp                                ; $76e8: $08 $fd $04
    rst $38                                       ; $76eb: $ff
    rst $38                                       ; $76ec: $ff
    rst $38                                       ; $76ed: $ff
    ld bc, $0a88                                  ; $76ee: $01 $88 $0a
    ld a, d                                       ; $76f1: $7a
    ld [hl], a                                    ; $76f2: $77
    adc a                                         ; $76f3: $8f
    ld b, e                                       ; $76f4: $43
    cp a                                          ; $76f5: $bf
    inc c                                         ; $76f6: $0c
    ld a, h                                       ; $76f7: $7c
    ld a, [de]                                    ; $76f8: $1a
    nop                                           ; $76f9: $00
    ld [bc], a                                    ; $76fa: $02
    ld [bc], a                                    ; $76fb: $02
    ld [bc], a                                    ; $76fc: $02
    ld bc, $001a                                  ; $76fd: $01 $1a $00
    rst $38                                       ; $7700: $ff
    add hl, bc                                    ; $7701: $09
    ld [bc], a                                    ; $7702: $02
    db $fc                                        ; $7703: $fc
    ld [$04fd], sp                                ; $7704: $08 $fd $04
    rst $38                                       ; $7707: $ff
    rst $38                                       ; $7708: $ff
    rst $38                                       ; $7709: $ff
    inc bc                                        ; $770a: $03
    adc b                                         ; $770b: $88
    inc d                                         ; $770c: $14
    ld [hl], h                                    ; $770d: $74
    ld h, [hl]                                    ; $770e: $66

jr_0f4_770f:
    sbc [hl]                                      ; $770f: $9e
    ld [hl], e                                    ; $7710: $73
    adc a                                         ; $7711: $8f
    add hl, bc                                    ; $7712: $09
    ld a, c                                       ; $7713: $79
    jr jr_0f4_7716                                ; $7714: $18 $00

jr_0f4_7716:
    ld [bc], a                                    ; $7716: $02
    ld [$0a02], sp                                ; $7717: $08 $02 $0a
    ld [bc], a                                    ; $771a: $02
    ld bc, $0802                                  ; $771b: $01 $02 $08
    jr jr_0f4_7720                                ; $771e: $18 $00

jr_0f4_7720:
    rst $38                                       ; $7720: $ff
    add hl, bc                                    ; $7721: $09
    ld [bc], a                                    ; $7722: $02
    db $fc                                        ; $7723: $fc
    ld [$04fd], sp                                ; $7724: $08 $fd $04
    rst $38                                       ; $7727: $ff
    rst $38                                       ; $7728: $ff
    rst $38                                       ; $7729: $ff
    inc b                                         ; $772a: $04
    adc b                                         ; $772b: $88
    add hl, bc                                    ; $772c: $09
    ld a, c                                       ; $772d: $79
    halt                                          ; $772e: $76
    adc [hl]                                      ; $772f: $8e
    ld h, e                                       ; $7730: $63
    sbc a                                         ; $7731: $9f

jr_0f4_7732:
    inc e                                         ; $7732: $1c
    ld a, h                                       ; $7733: $7c
    jr jr_0f4_7736                                ; $7734: $18 $00

jr_0f4_7736:
    ld [bc], a                                    ; $7736: $02
    inc b                                         ; $7737: $04
    ld [bc], a                                    ; $7738: $02
    add hl, bc                                    ; $7739: $09
    ld [bc], a                                    ; $773a: $02
    nop                                           ; $773b: $00
    ld [bc], a                                    ; $773c: $02
    inc d                                         ; $773d: $14
    jr jr_0f4_7740                                ; $773e: $18 $00

jr_0f4_7740:
    rst $38                                       ; $7740: $ff
    add hl, bc                                    ; $7741: $09
    ld [bc], a                                    ; $7742: $02
    db $fc                                        ; $7743: $fc
    ld [$04fd], sp                                ; $7744: $08 $fd $04

jr_0f4_7747:
    rst $38                                       ; $7747: $ff
    rst $38                                       ; $7748: $ff
    rst $38                                       ; $7749: $ff
    dec b                                         ; $774a: $05
    adc b                                         ; $774b: $88
    inc d                                         ; $774c: $14
    ld [hl], h                                    ; $774d: $74
    ld b, [hl]                                    ; $774e: $46
    cp [hl]                                       ; $774f: $be
    ld [hl], c                                    ; $7750: $71
    adc l                                         ; $7751: $8d
    inc d                                         ; $7752: $14
    ld [hl], h                                    ; $7753: $74

jr_0f4_7754:
    jr jr_0f4_7756                                ; $7754: $18 $00

jr_0f4_7756:
    ld [bc], a                                    ; $7756: $02
    inc h                                         ; $7757: $24
    ld [bc], a                                    ; $7758: $02
    add hl, hl                                    ; $7759: $29

jr_0f4_775a:
    ld [bc], a                                    ; $775a: $02
    jr nz, @+$04                                  ; $775b: $20 $02

    inc d                                         ; $775d: $14
    jr jr_0f4_7760                                ; $775e: $18 $00

jr_0f4_7760:
    rst $38                                       ; $7760: $ff
    rlca                                          ; $7761: $07
    ld bc, $08fc                                  ; $7762: $01 $fc $08
    db $fd                                        ; $7765: $fd
    inc b                                         ; $7766: $04
    db $fd                                        ; $7767: $fd
    db $fc                                        ; $7768: $fc
    adc d                                         ; $7769: $8a
    nop                                           ; $776a: $00
    ld [$1a04], sp                                ; $776b: $08 $04 $1a
    add hl, bc                                    ; $776e: $09
    ld c, $00                                     ; $776f: $0e $00
    dec de                                        ; $7771: $1b
    ld a, [bc]                                    ; $7772: $0a
    ld e, $16                                     ; $7773: $1e $16
    nop                                           ; $7775: $00
    rst $38                                       ; $7776: $ff
    add hl, bc                                    ; $7777: $09
    ld [bc], a                                    ; $7778: $02
    db $fc                                        ; $7779: $fc
    ld [$04fd], sp                                ; $777a: $08 $fd $04
    ld sp, hl                                     ; $777d: $f9
    ld hl, sp-$07                                 ; $777e: $f8 $f9
    ld [bc], a                                    ; $7780: $02
    add c                                         ; $7781: $81
    db $10                                        ; $7782: $10
    ld [bc], a                                    ; $7783: $02
    jr jr_0f4_770f                                ; $7784: $18 $89

    inc d                                         ; $7786: $14
    ld b, b                                       ; $7787: $40
    ld h, h                                       ; $7788: $64
    ld h, b                                       ; $7789: $60
    ld e, h                                       ; $778a: $5c
    inc bc                                        ; $778b: $03
    ld [de], a                                    ; $778c: $12
    dec b                                         ; $778d: $05
    inc bc                                        ; $778e: $03
    ld [bc], a                                    ; $778f: $02
    nop                                           ; $7790: $00
    add a                                         ; $7791: $87
    jp $80b7                                      ; $7792: $c3 $b7 $80


    ret nz                                        ; $7795: $c0

    dec b                                         ; $7796: $05
    inc bc                                        ; $7797: $03
    ld bc, $0002                                  ; $7798: $01 $02 $00
    adc d                                         ; $779b: $8a
    inc e                                         ; $779c: $1c
    ld h, b                                       ; $779d: $60
    ld d, b                                       ; $779e: $50
    ld b, b                                       ; $779f: $40
    ld h, [hl]                                    ; $77a0: $66
    jr jr_0f4_77b7                                ; $77a1: $18 $14

    db $10                                        ; $77a3: $10
    jr jr_0f4_77ae                                ; $77a4: $18 $08

    ld [bc], a                                    ; $77a6: $02
    jr jr_0f4_7732                                ; $77a7: $18 $89

    ld l, b                                       ; $77a9: $68
    add d                                         ; $77aa: $82
    and [hl]                                      ; $77ab: $a6
    ld b, $3a                                     ; $77ac: $06 $3a

jr_0f4_77ae:
    ret nz                                        ; $77ae: $c0

    ld c, b                                       ; $77af: $48
    and b                                         ; $77b0: $a0
    ret nz                                        ; $77b1: $c0

    ld [bc], a                                    ; $77b2: $02
    nop                                           ; $77b3: $00
    add l                                         ; $77b4: $85
    rst $10                                       ; $77b5: $d7
    jp hl                                         ; $77b6: $e9


jr_0f4_77b7:
    ld bc, $a007                                  ; $77b7: $01 $07 $a0
    ld [bc], a                                    ; $77ba: $02
    ret nz                                        ; $77bb: $c0

    adc e                                         ; $77bc: $8b
    ld b, b                                       ; $77bd: $40
    nop                                           ; $77be: $00
    jr c, jr_0f4_7747                             ; $77bf: $38 $86

    adc d                                         ; $77c1: $8a
    ld [bc], a                                    ; $77c2: $02
    ld h, [hl]                                    ; $77c3: $66
    jr jr_0f4_77ee                                ; $77c4: $18 $28

    ld [$ff18], sp                                ; $77c6: $08 $18 $ff
    ld de, $fc06                                  ; $77c9: $11 $06 $fc
    ld [$04fd], sp                                ; $77cc: $08 $fd $04
    ld sp, hl                                     ; $77cf: $f9
    di                                            ; $77d0: $f3
    ld sp, hl                                     ; $77d1: $f9
    ei                                            ; $77d2: $fb
    ld sp, hl                                     ; $77d3: $f9
    inc bc                                        ; $77d4: $03
    ld a, [$0907]                                 ; $77d5: $fa $07 $09
    di                                            ; $77d8: $f3
    add hl, bc                                    ; $77d9: $09
    ld b, $89                                     ; $77da: $06 $89
    inc b                                         ; $77dc: $04
    inc c                                         ; $77dd: $0c
    inc d                                         ; $77de: $14
    inc c                                         ; $77df: $0c
    ld [de], a                                    ; $77e0: $12
    ld sp, $3152                                  ; $77e1: $31 $52 $31
    ld b, b                                       ; $77e4: $40
    dec b                                         ; $77e5: $05
    nop                                           ; $77e6: $00
    adc [hl]                                      ; $77e7: $8e
    dec b                                         ; $77e8: $05
    inc bc                                        ; $77e9: $03
    inc b                                         ; $77ea: $04
    ld [bc], a                                    ; $77eb: $02
    jr nz, @+$62                                  ; $77ec: $20 $60

jr_0f4_77ee:
    and b                                         ; $77ee: $a0
    ld h, b                                       ; $77ef: $60
    add b                                         ; $77f0: $80
    nop                                           ; $77f1: $00
    ld [bc], a                                    ; $77f2: $02
    ld bc, $0102                                  ; $77f3: $01 $02 $01
    inc b                                         ; $77f6: $04
    nop                                           ; $77f7: $00
    add h                                         ; $77f8: $84
    add b                                         ; $77f9: $80
    ld b, b                                       ; $77fa: $40
    and b                                         ; $77fb: $a0
    ld h, b                                       ; $77fc: $60
    ld [bc], a                                    ; $77fd: $02
    inc h                                         ; $77fe: $24
    inc b                                         ; $77ff: $04
    add b                                         ; $7800: $80
    ld [bc], a                                    ; $7801: $02
    ld [$2002], sp                                ; $7802: $08 $02 $20
    dec b                                         ; $7805: $05
    nop                                           ; $7806: $00
    add c                                         ; $7807: $81
    jr nz, jr_0f4_780c                            ; $7808: $20 $02

    ld [bc], a                                    ; $780a: $02
    ld [bc], a                                    ; $780b: $02

jr_0f4_780c:
    and b                                         ; $780c: $a0
    ld [bc], a                                    ; $780d: $02

jr_0f4_780e:
    add b                                         ; $780e: $80
    adc [hl]                                      ; $780f: $8e
    jr nz, jr_0f4_7833                            ; $7810: $20 $21

    and b                                         ; $7812: $a0
    ld h, b                                       ; $7813: $60
    add b                                         ; $7814: $80
    ld b, b                                       ; $7815: $40
    ld [de], a                                    ; $7816: $12
    inc hl                                        ; $7817: $23
    ld d, d                                       ; $7818: $52
    ld h, e                                       ; $7819: $63
    ld b, h                                       ; $781a: $44
    ld c, b                                       ; $781b: $48
    inc d                                         ; $781c: $14
    sbc b                                         ; $781d: $98
    ld [bc], a                                    ; $781e: $02
    db $10                                        ; $781f: $10
    ld [bc], a                                    ; $7820: $02
    add b                                         ; $7821: $80
    ld [bc], a                                    ; $7822: $02
    nop                                           ; $7823: $00
    add [hl]                                      ; $7824: $86
    add d                                         ; $7825: $82
    add h                                         ; $7826: $84
    ld a, [bc]                                    ; $7827: $0a

jr_0f4_7828:
    inc c                                         ; $7828: $0c
    nop                                           ; $7829: $00
    db $10                                        ; $782a: $10
    ld [bc], a                                    ; $782b: $02
    add b                                         ; $782c: $80
    ld [bc], a                                    ; $782d: $02
    db $10                                        ; $782e: $10
    adc a                                         ; $782f: $8f
    inc d                                         ; $7830: $14
    jr @+$46                                      ; $7831: $18 $44

jr_0f4_7833:
    ld c, b                                       ; $7833: $48
    ld d, b                                       ; $7834: $50
    ld h, b                                       ; $7835: $60
    db $10                                        ; $7836: $10
    jr nz, jr_0f4_7841                            ; $7837: $20 $08

    nop                                           ; $7839: $00
    ld [$0a0c], sp                                ; $783a: $08 $0c $0a
    inc c                                         ; $783d: $0c
    ld [bc], a                                    ; $783e: $02
    add hl, bc                                    ; $783f: $09
    nop                                           ; $7840: $00

jr_0f4_7841:
    add l                                         ; $7841: $85
    inc b                                         ; $7842: $04
    ld b, $05                                     ; $7843: $06 $05
    ld b, $01                                     ; $7845: $06 $01
    add hl, bc                                    ; $7847: $09
    nop                                           ; $7848: $00
    adc e                                         ; $7849: $8b
    ld [$100c], sp                                ; $784a: $08 $0c $10
    jr nc, jr_0f4_789f                            ; $784d: $30 $50

    jr nc, jr_0f4_7895                            ; $784f: $30 $44

    inc c                                         ; $7851: $0c
    inc d                                         ; $7852: $14
    inc c                                         ; $7853: $0c
    db $10                                        ; $7854: $10
    add hl, de                                    ; $7855: $19
    nop                                           ; $7856: $00
    add a                                         ; $7857: $87
    dec b                                         ; $7858: $05
    ld b, $11                                     ; $7859: $06 $11
    jr @+$16                                      ; $785b: $18 $14

    jr @+$06                                      ; $785d: $18 $04

    rla                                           ; $785f: $17
    nop                                           ; $7860: $00
    rst $38                                       ; $7861: $ff
    ld de, $fc06                                  ; $7862: $11 $06 $fc
    ld [$04fd], sp                                ; $7865: $08 $fd $04
    or $f3                                        ; $7868: $f6 $f3
    ei                                            ; $786a: $fb
    or $f6                                        ; $786b: $f6 $f6
    inc b                                         ; $786d: $04
    db $fd                                        ; $786e: $fd
    rlca                                          ; $786f: $07
    ld b, $f3                                     ; $7870: $06 $f3
    ld b, $05                                     ; $7872: $06 $05
    ld [bc], a                                    ; $7874: $02
    ld bc, $0584                                  ; $7875: $01 $84 $05
    inc bc                                        ; $7878: $03
    inc b                                         ; $7879: $04
    ld [bc], a                                    ; $787a: $02
    ld [bc], a                                    ; $787b: $02
    inc b                                         ; $787c: $04
    add h                                         ; $787d: $84
    dec d                                         ; $787e: $15
    dec c                                         ; $787f: $0d
    inc d                                         ; $7880: $14
    inc c                                         ; $7881: $0c
    ld [bc], a                                    ; $7882: $02
    inc b                                         ; $7883: $04
    inc bc                                        ; $7884: $03
    jr nz, jr_0f4_780e                            ; $7885: $20 $87

    ld h, b                                       ; $7887: $60
    nop                                           ; $7888: $00
    ld b, b                                       ; $7889: $40
    ld d, b                                       ; $788a: $50
    ld a, [bc]                                    ; $788b: $0a
    db $10                                        ; $788c: $10
    jr z, jr_0f4_7891                             ; $788d: $28 $02

    ld [bc], a                                    ; $788f: $02
    ld [bc], a                                    ; $7890: $02

jr_0f4_7891:
    nop                                           ; $7891: $00
    ld [bc], a                                    ; $7892: $02
    ld b, b                                       ; $7893: $40
    add h                                         ; $7894: $84

jr_0f4_7895:
    ld b, c                                       ; $7895: $41
    pop bc                                        ; $7896: $c1
    nop                                           ; $7897: $00
    ld bc, $0002                                  ; $7898: $01 $02 $00
    ld [bc], a                                    ; $789b: $02
    inc b                                         ; $789c: $04
    ld [de], a                                    ; $789d: $12
    nop                                           ; $789e: $00

jr_0f4_789f:
    ld [bc], a                                    ; $789f: $02
    jr nz, jr_0f4_7828                            ; $78a0: $20 $86

    and b                                         ; $78a2: $a0
    ld h, b                                       ; $78a3: $60
    adc b                                         ; $78a4: $88
    ld c, b                                       ; $78a5: $48
    jr z, @+$1a                                   ; $78a6: $28 $18

    ld [bc], a                                    ; $78a8: $02
    db $10                                        ; $78a9: $10
    adc b                                         ; $78aa: $88
    inc d                                         ; $78ab: $14
    jr jr_0f4_78b2                                ; $78ac: $18 $04

    inc c                                         ; $78ae: $0c
    dec b                                         ; $78af: $05
    ld b, $01                                     ; $78b0: $06 $01

jr_0f4_78b2:
    ld [bc], a                                    ; $78b2: $02
    ld [bc], a                                    ; $78b3: $02
    inc h                                         ; $78b4: $24
    ld [bc], a                                    ; $78b5: $02
    inc b                                         ; $78b6: $04
    inc bc                                        ; $78b7: $03
    nop                                           ; $78b8: $00
    add c                                         ; $78b9: $81
    db $10                                        ; $78ba: $10
    ld [bc], a                                    ; $78bb: $02
    inc b                                         ; $78bc: $04
    add h                                         ; $78bd: $84
    ld bc, $0102                                  ; $78be: $01 $02 $01
    ld [bc], a                                    ; $78c1: $02
    ld b, $00                                     ; $78c2: $06 $00
    ld [bc], a                                    ; $78c4: $02
    adc b                                         ; $78c5: $88
    inc bc                                        ; $78c6: $03
    inc b                                         ; $78c7: $04
    add d                                         ; $78c8: $82
    ld b, $00                                     ; $78c9: $06 $00
    ld [bc], a                                    ; $78cb: $02
    ld [bc], a                                    ; $78cc: $02
    ld [bc], a                                    ; $78cd: $02
    nop                                           ; $78ce: $00
    add c                                         ; $78cf: $81
    inc b                                         ; $78d0: $04
    inc b                                         ; $78d1: $04
    nop                                           ; $78d2: $00
    inc bc                                        ; $78d3: $03
    ld [bc], a                                    ; $78d4: $02
    add d                                         ; $78d5: $82
    inc bc                                        ; $78d6: $03
    db $10                                        ; $78d7: $10
    ld [bc], a                                    ; $78d8: $02
    ld de, $2887                                  ; $78d9: $11 $87 $28
    ld d, b                                       ; $78dc: $50
    ld l, b                                       ; $78dd: $68
    ld b, b                                       ; $78de: $40
    and b                                         ; $78df: $a0

jr_0f4_78e0:
    ld b, b                                       ; $78e0: $40
    and b                                         ; $78e1: $a0
    inc bc                                        ; $78e2: $03
    ld [$0c82], sp                                ; $78e3: $08 $82 $0c
    nop                                           ; $78e6: $00
    ld [bc], a                                    ; $78e7: $02
    add b                                         ; $78e8: $80
    rlca                                          ; $78e9: $07
    nop                                           ; $78ea: $00
    add l                                         ; $78eb: $85
    inc d                                         ; $78ec: $14
    ld [de], a                                    ; $78ed: $12
    db $10                                        ; $78ee: $10
    jr nc, jr_0f4_78f5                            ; $78ef: $30 $04

    ld [bc], a                                    ; $78f1: $02
    inc h                                         ; $78f2: $24
    add d                                         ; $78f3: $82
    inc c                                         ; $78f4: $0c

jr_0f4_78f5:
    nop                                           ; $78f5: $00
    ld [bc], a                                    ; $78f6: $02
    ld [$000e], sp                                ; $78f7: $08 $0e $00
    add c                                         ; $78fa: $81
    ld b, b                                       ; $78fb: $40
    ld a, [bc]                                    ; $78fc: $0a
    nop                                           ; $78fd: $00
    add c                                         ; $78fe: $81
    ld [$0902], sp                                ; $78ff: $08 $02 $09
    add d                                         ; $7902: $82
    inc c                                         ; $7903: $0c
    nop                                           ; $7904: $00
    ld [bc], a                                    ; $7905: $02
    inc b                                         ; $7906: $04
    dec bc                                        ; $7907: $0b
    nop                                           ; $7908: $00
    rst $38                                       ; $7909: $ff
    rrca                                          ; $790a: $0f
    dec b                                         ; $790b: $05
    db $fc                                        ; $790c: $fc
    ld [$04fd], sp                                ; $790d: $08 $fd $04
    ld hl, sp-$0e                                 ; $7910: $f8 $f2
    db $fc                                        ; $7912: $fc
    di                                            ; $7913: $f3
    ld hl, sp+$08                                 ; $7914: $f8 $08
    ld [$08f2], sp                                ; $7916: $08 $f2 $08
    ld [$0302], sp                                ; $7919: $08 $02 $03
    adc b                                         ; $791c: $88
    ld [bc], a                                    ; $791d: $02
    dec b                                         ; $791e: $05
    ld a, [bc]                                    ; $791f: $0a
    dec c                                         ; $7920: $0d
    ld [$0814], sp                                ; $7921: $08 $14 $08
    inc d                                         ; $7924: $14
    ld [bc], a                                    ; $7925: $02
    nop                                           ; $7926: $00
    ld [bc], a                                    ; $7927: $02
    ld bc, $0002                                  ; $7928: $01 $02 $00
    adc b                                         ; $792b: $88
    add b                                         ; $792c: $80
    nop                                           ; $792d: $00
    jr nc, jr_0f4_78e0                            ; $792e: $30 $b0

    db $10                                        ; $7930: $10
    jr z, @+$12                                   ; $7931: $28 $10

    jr z, @+$08                                   ; $7933: $28 $06

    nop                                           ; $7935: $00
    ld [bc], a                                    ; $7936: $02
    ld [bc], a                                    ; $7937: $02
    add d                                         ; $7938: $82
    nop                                           ; $7939: $00
    ld bc, $000b                                  ; $793a: $01 $0b $00
    add c                                         ; $793d: $81
    ld bc, $000a                                  ; $793e: $01 $0a $00
    ld [bc], a                                    ; $7941: $02
    jr nc, @-$78                                  ; $7942: $30 $86

    db $10                                        ; $7944: $10
    add hl, hl                                    ; $7945: $29
    inc d                                         ; $7946: $14
    inc l                                         ; $7947: $2c
    inc b                                         ; $7948: $04
    ld a, [bc]                                    ; $7949: $0a
    ld [bc], a                                    ; $794a: $02
    ret nz                                        ; $794b: $c0

    adc b                                         ; $794c: $88
    ld b, b                                       ; $794d: $40
    and b                                         ; $794e: $a0
    ld d, b                                       ; $794f: $50
    or b                                          ; $7950: $b0
    db $10                                        ; $7951: $10
    jr z, jr_0f4_7964                             ; $7952: $28 $10

    jr z, jr_0f4_795a                             ; $7954: $28 $04

    nop                                           ; $7956: $00
    ld [bc], a                                    ; $7957: $02
    jr nz, @-$74                                  ; $7958: $20 $8a

jr_0f4_795a:
    ld bc, $0c00                                  ; $795a: $01 $00 $0c
    dec c                                         ; $795d: $0d
    ld [$0814], sp                                ; $795e: $08 $14 $08
    inc d                                         ; $7961: $14
    nop                                           ; $7962: $00
    ld b, b                                       ; $7963: $40

jr_0f4_7964:
    ld b, $00                                     ; $7964: $06 $00
    add c                                         ; $7966: $81
    add b                                         ; $7967: $80
    ld [bc], a                                    ; $7968: $02
    nop                                           ; $7969: $00
    add c                                         ; $796a: $81
    add b                                         ; $796b: $80
    inc b                                         ; $796c: $04
    nop                                           ; $796d: $00
    add d                                         ; $796e: $82
    ld [bc], a                                    ; $796f: $02
    dec b                                         ; $7970: $05
    ld [bc], a                                    ; $7971: $02
    nop                                           ; $7972: $00
    add c                                         ; $7973: $81
    jr nz, jr_0f4_7978                            ; $7974: $20 $02

    nop                                           ; $7976: $00
    add d                                         ; $7977: $82

jr_0f4_7978:
    jr nz, jr_0f4_797e                            ; $7978: $20 $04

    ld [bc], a                                    ; $797a: $02
    nop                                           ; $797b: $00
    add c                                         ; $797c: $81
    inc b                                         ; $797d: $04

jr_0f4_797e:
    inc c                                         ; $797e: $0c
    nop                                           ; $797f: $00
    adc d                                         ; $7980: $8a
    sbc c                                         ; $7981: $99
    sbc b                                         ; $7982: $98
    db $10                                        ; $7983: $10
    add hl, hl                                    ; $7984: $29
    ld d, b                                       ; $7985: $50
    ld l, b                                       ; $7986: $68

jr_0f4_7987:
    ld b, b                                       ; $7987: $40
    and b                                         ; $7988: $a0
    ld b, b                                       ; $7989: $40
    and b                                         ; $798a: $a0
    ld [bc], a                                    ; $798b: $02
    nop                                           ; $798c: $00
    add c                                         ; $798d: $81
    inc b                                         ; $798e: $04
    ld [bc], a                                    ; $798f: $02
    nop                                           ; $7990: $00
    add d                                         ; $7991: $82
    inc b                                         ; $7992: $04
    jr nz, jr_0f4_7997                            ; $7993: $20 $02

    nop                                           ; $7995: $00
    add c                                         ; $7996: $81

jr_0f4_7997:
    jr nz, @+$0e                                  ; $7997: $20 $0c

    nop                                           ; $7999: $00
    rst $38                                       ; $799a: $ff
    rrca                                          ; $799b: $0f
    dec b                                         ; $799c: $05
    db $fc                                        ; $799d: $fc
    ld [$04fd], sp                                ; $799e: $08 $fd $04
    ld a, [$faf2]                                 ; $79a1: $fa $f2 $fa
    ld [$f20a], sp                                ; $79a4: $08 $0a $f2
    ld a, [bc]                                    ; $79a7: $0a
    db $f4                                        ; $79a8: $f4
    ld a, [bc]                                    ; $79a9: $0a
    ld [$0102], sp                                ; $79aa: $08 $02 $01
    adc b                                         ; $79ad: $88
    ld [bc], a                                    ; $79ae: $02
    ld bc, $0506                                  ; $79af: $01 $06 $05
    ld [$0804], sp                                ; $79b2: $08 $04 $08
    inc b                                         ; $79b5: $04
    inc bc                                        ; $79b6: $03
    nop                                           ; $79b7: $00
    add c                                         ; $79b8: $81
    ld [bc], a                                    ; $79b9: $02
    inc b                                         ; $79ba: $04
    nop                                           ; $79bb: $00
    ld [bc], a                                    ; $79bc: $02
    ld [$1084], sp                                ; $79bd: $08 $84 $10
    adc b                                         ; $79c0: $88
    db $10                                        ; $79c1: $10
    add hl, bc                                    ; $79c2: $09
    ld [$0200], sp                                ; $79c3: $08 $00 $02
    add b                                         ; $79c6: $80
    adc b                                         ; $79c7: $88
    ld b, b                                       ; $79c8: $40
    add b                                         ; $79c9: $80
    ld h, b                                       ; $79ca: $60
    and b                                         ; $79cb: $a0
    db $10                                        ; $79cc: $10
    jr nz, jr_0f4_79df                            ; $79cd: $20 $10

    jr nz, @+$05                                  ; $79cf: $20 $03

    nop                                           ; $79d1: $00
    add c                                         ; $79d2: $81
    jr nz, jr_0f4_79d8                            ; $79d3: $20 $03

    nop                                           ; $79d5: $00
    add c                                         ; $79d6: $81
    add b                                         ; $79d7: $80

jr_0f4_79d8:
    ld [bc], a                                    ; $79d8: $02
    db $10                                        ; $79d9: $10
    add h                                         ; $79da: $84
    ld [$0811], sp                                ; $79db: $08 $11 $08
    db $10                                        ; $79de: $10

jr_0f4_79df:
    rlca                                          ; $79df: $07
    nop                                           ; $79e0: $00
    add c                                         ; $79e1: $81
    add b                                         ; $79e2: $80
    ld [bc], a                                    ; $79e3: $02
    inc b                                         ; $79e4: $04
    adc b                                         ; $79e5: $88
    ld [$0984], sp                                ; $79e6: $08 $84 $09
    dec b                                         ; $79e9: $05
    ld [bc], a                                    ; $79ea: $02
    ld bc, $0102                                  ; $79eb: $01 $02 $01
    dec b                                         ; $79ee: $05
    nop                                           ; $79ef: $00
    add c                                         ; $79f0: $81
    db $10                                        ; $79f1: $10
    inc bc                                        ; $79f2: $03
    nop                                           ; $79f3: $00
    add c                                         ; $79f4: $81
    ld [bc], a                                    ; $79f5: $02
    rrca                                          ; $79f6: $0f
    nop                                           ; $79f7: $00
    add c                                         ; $79f8: $81
    ld bc, $001c                                  ; $79f9: $01 $1c $00
    ld [bc], a                                    ; $79fc: $02
    jr nz, jr_0f4_7987                            ; $79fd: $20 $88

    db $10                                        ; $79ff: $10
    ld hl, $a090                                  ; $7a00: $21 $90 $a0
    ld b, b                                       ; $7a03: $40
    add b                                         ; $7a04: $80
    ld b, b                                       ; $7a05: $40
    add b                                         ; $7a06: $80
    dec b                                         ; $7a07: $05
    nop                                           ; $7a08: $00
    add c                                         ; $7a09: $81
    inc b                                         ; $7a0a: $04
    inc bc                                        ; $7a0b: $03
    nop                                           ; $7a0c: $00
    add c                                         ; $7a0d: $81
    jr nz, jr_0f4_7a1c                            ; $7a0e: $20 $0c

    nop                                           ; $7a10: $00
    rst $38                                       ; $7a11: $ff
    dec c                                         ; $7a12: $0d
    inc b                                         ; $7a13: $04
    db $fc                                        ; $7a14: $fc
    ld [$04fd], sp                                ; $7a15: $08 $fd $04
    db $fc                                        ; $7a18: $fc
    db $f4                                        ; $7a19: $f4
    db $fc                                        ; $7a1a: $fc
    dec b                                         ; $7a1b: $05

jr_0f4_7a1c:
    inc c                                         ; $7a1c: $0c
    db $f4                                        ; $7a1d: $f4
    inc c                                         ; $7a1e: $0c
    dec b                                         ; $7a1f: $05
    ld [bc], a                                    ; $7a20: $02
    ld [$1088], sp                                ; $7a21: $08 $88 $10
    ld [$2830], sp                                ; $7a24: $08 $30 $28
    ld b, b                                       ; $7a27: $40
    jr nz, jr_0f4_7a6a                            ; $7a28: $20 $40

    jr z, jr_0f4_7a32                             ; $7a2a: $28 $06

    nop                                           ; $7a2c: $00
    ld [bc], a                                    ; $7a2d: $02
    ld b, b                                       ; $7a2e: $40
    add h                                         ; $7a2f: $84
    add b                                         ; $7a30: $80
    ld b, b                                       ; $7a31: $40

jr_0f4_7a32:
    add b                                         ; $7a32: $80
    ld b, b                                       ; $7a33: $40
    inc bc                                        ; $7a34: $03
    nop                                           ; $7a35: $00
    add c                                         ; $7a36: $81
    db $10                                        ; $7a37: $10
    inc b                                         ; $7a38: $04
    nop                                           ; $7a39: $00
    ld [bc], a                                    ; $7a3a: $02
    jr nz, @+$04                                  ; $7a3b: $20 $02

    ld [$0488], sp                                ; $7a3d: $08 $88 $04
    ld [$0a06], sp                                ; $7a40: $08 $06 $0a
    ld bc, $0102                                  ; $7a43: $01 $02 $01
    ld [bc], a                                    ; $7a46: $02
    inc bc                                        ; $7a47: $03
    nop                                           ; $7a48: $00
    add c                                         ; $7a49: $81
    ld bc, $0002                                  ; $7a4a: $01 $02 $00
    add [hl]                                      ; $7a4d: $86
    ld [bc], a                                    ; $7a4e: $02
    ld a, [bc]                                    ; $7a4f: $0a
    ld bc, $0102                                  ; $7a50: $01 $02 $01
    ld [bc], a                                    ; $7a53: $02
    ld [$0200], sp                                ; $7a54: $08 $00 $02
    ld [bc], a                                    ; $7a57: $02
    adc d                                         ; $7a58: $8a
    ld b, b                                       ; $7a59: $40
    jr nz, jr_0f4_7a9c                            ; $7a5a: $20 $40

    jr nz, jr_0f4_7a62                            ; $7a5c: $20 $04

    dec b                                         ; $7a5e: $05
    ld [$0804], sp                                ; $7a5f: $08 $04 $08

jr_0f4_7a62:
    inc b                                         ; $7a62: $04
    ld d, $00                                     ; $7a63: $16 $00
    add h                                         ; $7a65: $84
    ld bc, $010a                                  ; $7a66: $01 $0a $01
    ld [bc], a                                    ; $7a69: $02

jr_0f4_7a6a:
    ld [bc], a                                    ; $7a6a: $02
    db $10                                        ; $7a6b: $10
    add h                                         ; $7a6c: $84
    ld [$0810], sp                                ; $7a6d: $08 $10 $08
    db $10                                        ; $7a70: $10
    ld d, $00                                     ; $7a71: $16 $00
    rst $38                                       ; $7a73: $ff
    rlca                                          ; $7a74: $07
    ld bc, $04fd                                  ; $7a75: $01 $fd $04
    ld a, [$ff06]                                 ; $7a78: $fa $06 $ff
    ld [bc], a                                    ; $7a7b: $02
    add [hl]                                      ; $7a7c: $86
    nop                                           ; $7a7d: $00
    ld c, $06                                     ; $7a7e: $0e $06
    ld bc, $0e00                                  ; $7a80: $01 $00 $0e
    ld a, [de]                                    ; $7a83: $1a
    nop                                           ; $7a84: $00
    rst $38                                       ; $7a85: $ff
    rlca                                          ; $7a86: $07
    ld bc, $04fd                                  ; $7a87: $01 $fd $04
    ld a, [$ff06]                                 ; $7a8a: $fa $06 $ff
    ld [bc], a                                    ; $7a8d: $02
    add [hl]                                      ; $7a8e: $86
    ld d, b                                       ; $7a8f: $50
    and h                                         ; $7a90: $a4
    ld l, $51                                     ; $7a91: $2e $51
    db $10                                        ; $7a93: $10
    ld c, h                                       ; $7a94: $4c
    ld a, [de]                                    ; $7a95: $1a
    nop                                           ; $7a96: $00
    rst $38                                       ; $7a97: $ff
    add hl, bc                                    ; $7a98: $09
    ld [bc], a                                    ; $7a99: $02
    db $fd                                        ; $7a9a: $fd
    inc b                                         ; $7a9b: $04

jr_0f4_7a9c:
    ld a, [$fe06]                                 ; $7a9c: $fa $06 $fe
    db $fd                                        ; $7a9f: $fd
    cp $02                                        ; $7aa0: $fe $02
    adc d                                         ; $7aa2: $8a
    nop                                           ; $7aa3: $00
    ld a, [bc]                                    ; $7aa4: $0a
    ld [bc], a                                    ; $7aa5: $02
    ld b, l                                       ; $7aa6: $45
    ld b, c                                       ; $7aa7: $41
    xor d                                         ; $7aa8: $aa
    ld [$0255], sp                                ; $7aa9: $08 $55 $02
    ld a, [bc]                                    ; $7aac: $0a
    rla                                           ; $7aad: $17
    nop                                           ; $7aae: $00
    add d                                         ; $7aaf: $82
    db $10                                        ; $7ab0: $10
    ld [$0602], sp                                ; $7ab1: $08 $02 $06
    add l                                         ; $7ab4: $85
    add hl, de                                    ; $7ab5: $19
    ld bc, $0c0f                                  ; $7ab6: $01 $0f $0c
    inc e                                         ; $7ab9: $1c
    ld d, $00                                     ; $7aba: $16 $00
    rst $38                                       ; $7abc: $ff
    add hl, bc                                    ; $7abd: $09
    ld [bc], a                                    ; $7abe: $02
    db $fd                                        ; $7abf: $fd
    inc b                                         ; $7ac0: $04
    ld a, [$fe06]                                 ; $7ac1: $fa $06 $fe
    ei                                            ; $7ac4: $fb
    cp $02                                        ; $7ac5: $fe $02
    adc d                                         ; $7ac7: $8a
    nop                                           ; $7ac8: $00
    dec bc                                        ; $7ac9: $0b
    ld [bc], a                                    ; $7aca: $02
    ld b, l                                       ; $7acb: $45
    ld c, d                                       ; $7acc: $4a
    and b                                         ; $7acd: $a0
    nop                                           ; $7ace: $00
    ld c, e                                       ; $7acf: $4b
    ld bc, $1713                                  ; $7ad0: $01 $13 $17
    nop                                           ; $7ad3: $00
    add a                                         ; $7ad4: $87
    jr nc, jr_0f4_7aff                            ; $7ad5: $30 $28

    ld b, [hl]                                    ; $7ad7: $46
    ld d, a                                       ; $7ad8: $57
    add hl, hl                                    ; $7ad9: $29
    ld a, [bc]                                    ; $7ada: $0a
    ld [hl], $02                                  ; $7adb: $36 $02
    jr jr_0f4_7af5                                ; $7add: $18 $16

    nop                                           ; $7adf: $00
    rst $38                                       ; $7ae0: $ff
    dec bc                                        ; $7ae1: $0b
    inc bc                                        ; $7ae2: $03
    db $fd                                        ; $7ae3: $fd
    inc b                                         ; $7ae4: $04
    ld a, [$fe06]                                 ; $7ae5: $fa $06 $fe
    rst $30                                       ; $7ae8: $f7
    cp $ff                                        ; $7ae9: $fe $ff
    cp $01                                        ; $7aeb: $fe $01
    add e                                         ; $7aed: $83
    nop                                           ; $7aee: $00
    inc b                                         ; $7aef: $04
    ld [bc], a                                    ; $7af0: $02
    ld [bc], a                                    ; $7af1: $02
    ld b, c                                       ; $7af2: $41
    add l                                         ; $7af3: $85
    or h                                          ; $7af4: $b4

jr_0f4_7af5:
    inc b                                         ; $7af5: $04
    ld c, d                                       ; $7af6: $4a
    nop                                           ; $7af7: $00
    dec b                                         ; $7af8: $05
    rla                                           ; $7af9: $17
    nop                                           ; $7afa: $00
    adc c                                         ; $7afb: $89
    or [hl]                                       ; $7afc: $b6
    sub [hl]                                      ; $7afd: $96
    ld c, c                                       ; $7afe: $49

jr_0f4_7aff:
    ld hl, $0a9a                                  ; $7aff: $21 $9a $0a
    ld [hl], l                                    ; $7b02: $75
    sub [hl]                                      ; $7b03: $96
    or [hl]                                       ; $7b04: $b6
    add hl, de                                    ; $7b05: $19
    nop                                           ; $7b06: $00
    add e                                         ; $7b07: $83
    ld [bc], a                                    ; $7b08: $02
    inc bc                                        ; $7b09: $03
    ld bc, $0202                                  ; $7b0a: $01 $02 $02
    jr jr_0f4_7b0f                                ; $7b0d: $18 $00

jr_0f4_7b0f:
    rst $38                                       ; $7b0f: $ff
    dec bc                                        ; $7b10: $0b
    inc bc                                        ; $7b11: $03
    db $fd                                        ; $7b12: $fd
    inc b                                         ; $7b13: $04
    ld a, [$fe06]                                 ; $7b14: $fa $06 $fe
    db $f4                                        ; $7b17: $f4
    cp $fc                                        ; $7b18: $fe $fc
    cp $00                                        ; $7b1a: $fe $00
    adc d                                         ; $7b1c: $8a
    nop                                           ; $7b1d: $00
    ld [bc], a                                    ; $7b1e: $02
    ld [de], a                                    ; $7b1f: $12
    ld c, c                                       ; $7b20: $49
    ld b, c                                       ; $7b21: $41
    and b                                         ; $7b22: $a0
    inc b                                         ; $7b23: $04
    ld c, e                                       ; $7b24: $4b
    nop                                           ; $7b25: $00
    ld [$0017], sp                                ; $7b26: $08 $17 $00
    adc c                                         ; $7b29: $89
    push bc                                       ; $7b2a: $c5
    ld d, b                                       ; $7b2b: $50
    ld a, [hl+]                                   ; $7b2c: $2a
    ld [hl+], a                                   ; $7b2d: $22
    sub l                                         ; $7b2e: $95
    ld [$2b56], sp                                ; $7b2f: $08 $56 $2b
    xor e                                         ; $7b32: $ab
    rla                                           ; $7b33: $17
    nop                                           ; $7b34: $00
    ld [bc], a                                    ; $7b35: $02
    ld [$0685], sp                                ; $7b36: $08 $85 $06
    rlca                                          ; $7b39: $07
    add hl, bc                                    ; $7b3a: $09
    ld a, [bc]                                    ; $7b3b: $0a
    ld b, $02                                     ; $7b3c: $06 $02
    ld [$0016], sp                                ; $7b3e: $08 $16 $00
    rst $38                                       ; $7b41: $ff
    rlca                                          ; $7b42: $07
    ld bc, $04fd                                  ; $7b43: $01 $fd $04
    ld a, [$0306]                                 ; $7b46: $fa $06 $03
    ei                                            ; $7b49: $fb
    add e                                         ; $7b4a: $83
    inc b                                         ; $7b4b: $04
    ld a, [bc]                                    ; $7b4c: $0a
    inc d                                         ; $7b4d: $14
    ld [bc], a                                    ; $7b4e: $02
    dec de                                        ; $7b4f: $1b
    add c                                         ; $7b50: $81
    rra                                           ; $7b51: $1f
    ld [bc], a                                    ; $7b52: $02
    ld c, $18                                     ; $7b53: $0e $18

Jump_0f4_7b55:
    nop                                           ; $7b55: $00
    rst $38                                       ; $7b56: $ff
    rlca                                          ; $7b57: $07
    ld bc, $04fd                                  ; $7b58: $01 $fd $04
    ld a, [$0006]                                 ; $7b5b: $fa $06 $00
    db $fc                                        ; $7b5e: $fc
    add c                                         ; $7b5f: $81
    nop                                           ; $7b60: $00
    ld [bc], a                                    ; $7b61: $02
    ld [$1489], sp                                ; $7b62: $08 $89 $14
    inc c                                         ; $7b65: $0c
    ld [hl-], a                                   ; $7b66: $32
    dec a                                         ; $7b67: $3d
    inc hl                                        ; $7b68: $23
    dec l                                         ; $7b69: $2d
    inc sp                                        ; $7b6a: $33
    ld [hl-], a                                   ; $7b6b: $32
    ld a, $02                                     ; $7b6c: $3e $02
    ld e, $12                                     ; $7b6e: $1e $12
    nop                                           ; $7b70: $00
    rst $38                                       ; $7b71: $ff
    rlca                                          ; $7b72: $07
    ld bc, $04fd                                  ; $7b73: $01 $fd $04
    ld a, [$fe06]                                 ; $7b76: $fa $06 $fe
    db $fc                                        ; $7b79: $fc
    adc [hl]                                      ; $7b7a: $8e
    nop                                           ; $7b7b: $00
    ld [$160a], sp                                ; $7b7c: $08 $0a $16
    ld c, $32                                     ; $7b7f: $0e $32
    ld e, l                                       ; $7b81: $5d
    ld h, e                                       ; $7b82: $63
    ld e, l                                       ; $7b83: $5d
    ld h, e                                       ; $7b84: $63
    ld e, c                                       ; $7b85: $59
    ld h, a                                       ; $7b86: $67
    ld h, e                                       ; $7b87: $63
    ld a, a                                       ; $7b88: $7f
    ld [bc], a                                    ; $7b89: $02
    ccf                                           ; $7b8a: $3f
    ld [bc], a                                    ; $7b8b: $02
    ld e, $0e                                     ; $7b8c: $1e $0e
    nop                                           ; $7b8e: $00
    rst $38                                       ; $7b8f: $ff
    rlca                                          ; $7b90: $07
    ld bc, $04fd                                  ; $7b91: $01 $fd $04
    ld a, [$fc06]                                 ; $7b94: $fa $06 $fc
    db $fd                                        ; $7b97: $fd
    add c                                         ; $7b98: $81
    nop                                           ; $7b99: $00
    ld [bc], a                                    ; $7b9a: $02
    ld [$148f], sp                                ; $7b9b: $08 $8f $14
    ld a, [bc]                                    ; $7b9e: $0a
    ld [hl], $5a                                  ; $7b9f: $36 $5a
    ld h, [hl]                                    ; $7ba1: $66
    dec a                                         ; $7ba2: $3d
    ld b, e                                       ; $7ba3: $43
    cp l                                          ; $7ba4: $bd
    jp $e799                                      ; $7ba5: $c3 $99 $e7


    db $db                                        ; $7ba8: $db
    rst $20                                       ; $7ba9: $e7
    add $fe                                       ; $7baa: $c6 $fe
    ld [bc], a                                    ; $7bac: $02
    ld a, [hl]                                    ; $7bad: $7e
    ld [bc], a                                    ; $7bae: $02
    inc a                                         ; $7baf: $3c
    ld a, [bc]                                    ; $7bb0: $0a
    nop                                           ; $7bb1: $00
    rst $38                                       ; $7bb2: $ff
    add hl, bc                                    ; $7bb3: $09
    ld [bc], a                                    ; $7bb4: $02
    db $fd                                        ; $7bb5: $fd
    inc b                                         ; $7bb6: $04
    ld a, [$fb06]                                 ; $7bb7: $fa $06 $fb
    db $fc                                        ; $7bba: $fc
    ei                                            ; $7bbb: $fb
    db $fd                                        ; $7bbc: $fd
    sub h                                         ; $7bbd: $94
    nop                                           ; $7bbe: $00
    ld [$160a], sp                                ; $7bbf: $08 $0a $16
    ld a, [bc]                                    ; $7bc2: $0a
    ld [hl], $5d                                  ; $7bc3: $36 $5d
    ld h, e                                       ; $7bc5: $63
    ld e, l                                       ; $7bc6: $5d
    ld h, e                                       ; $7bc7: $63
    cp l                                          ; $7bc8: $bd
    jp $c1be                                      ; $7bc9: $c3 $be $c1


    ld e, [hl]                                    ; $7bcc: $5e
    ld h, c                                       ; $7bcd: $61
    ld e, c                                       ; $7bce: $59
    ld h, a                                       ; $7bcf: $67
    ld h, e                                       ; $7bd0: $63
    ld a, a                                       ; $7bd1: $7f
    ld [bc], a                                    ; $7bd2: $02
    ccf                                           ; $7bd3: $3f
    ld [bc], a                                    ; $7bd4: $02
    ld e, $14                                     ; $7bd5: $1e $14
    nop                                           ; $7bd7: $00
    ld b, $01                                     ; $7bd8: $06 $01
    ld c, $00                                     ; $7bda: $0e $00
    rst $38                                       ; $7bdc: $ff
    rlca                                          ; $7bdd: $07
    ld bc, $04fd                                  ; $7bde: $01 $fd $04
    ld a, [$fd06]                                 ; $7be1: $fa $06 $fd
    db $fc                                        ; $7be4: $fc
    sub b                                         ; $7be5: $90
    nop                                           ; $7be6: $00
    db $10                                        ; $7be7: $10
    inc d                                         ; $7be8: $14
    inc l                                         ; $7be9: $2c
    ld d, $2e                                     ; $7bea: $16 $2e
    add hl, sp                                    ; $7bec: $39
    ld b, a                                       ; $7bed: $47
    dec a                                         ; $7bee: $3d
    ld b, e                                       ; $7bef: $43
    ld e, l                                       ; $7bf0: $5d
    ld h, e                                       ; $7bf1: $63
    ld e, c                                       ; $7bf2: $59
    ld h, a                                       ; $7bf3: $67
    ld h, e                                       ; $7bf4: $63
    ld a, a                                       ; $7bf5: $7f
    ld [bc], a                                    ; $7bf6: $02
    ccf                                           ; $7bf7: $3f
    ld [bc], a                                    ; $7bf8: $02
    ld e, $0c                                     ; $7bf9: $1e $0c
    nop                                           ; $7bfb: $00
    rst $38                                       ; $7bfc: $ff
    rlca                                          ; $7bfd: $07
    ld bc, $04fd                                  ; $7bfe: $01 $fd $04
    ld a, [$fd06]                                 ; $7c01: $fa $06 $fd
    ei                                            ; $7c04: $fb
    add c                                         ; $7c05: $81
    nop                                           ; $7c06: $00
    ld [bc], a                                    ; $7c07: $02
    ld [$148a], sp                                ; $7c08: $08 $8a $14
    ld a, [bc]                                    ; $7c0b: $0a
    ld d, $0d                                     ; $7c0c: $16 $0d
    inc de                                        ; $7c0e: $13
    dec c                                         ; $7c0f: $0d
    inc de                                        ; $7c10: $13
    dec c                                         ; $7c11: $0d
    inc de                                        ; $7c12: $13
    dec d                                         ; $7c13: $15
    ld [bc], a                                    ; $7c14: $02
    dec de                                        ; $7c15: $1b
    add c                                         ; $7c16: $81
    rra                                           ; $7c17: $1f
    ld [bc], a                                    ; $7c18: $02
    rrca                                          ; $7c19: $0f
    ld [bc], a                                    ; $7c1a: $02
    ld c, $0c                                     ; $7c1b: $0e $0c
    nop                                           ; $7c1d: $00
    rst $38                                       ; $7c1e: $ff
    rlca                                          ; $7c1f: $07
    ld bc, $04fd                                  ; $7c20: $01 $fd $04
    ld a, [$fd06]                                 ; $7c23: $fa $06 $fd
    ld a, [$0081]                                 ; $7c26: $fa $81 $00
    ld [bc], a                                    ; $7c29: $02
    ld [bc], a                                    ; $7c2a: $02
    add h                                         ; $7c2b: $84
    inc b                                         ; $7c2c: $04
    ld [bc], a                                    ; $7c2d: $02
    dec b                                         ; $7c2e: $05
    ld [bc], a                                    ; $7c2f: $02
    ld [bc], a                                    ; $7c30: $02
    dec b                                         ; $7c31: $05
    add d                                         ; $7c32: $82
    rlca                                          ; $7c33: $07
    dec b                                         ; $7c34: $05
    inc bc                                        ; $7c35: $03
    rlca                                          ; $7c36: $07
    ld [bc], a                                    ; $7c37: $02
    inc bc                                        ; $7c38: $03
    stop                                          ; $7c39: $10 $00
    rst $38                                       ; $7c3b: $ff

Call_0f4_7c3c:
    rlca                                          ; $7c3c: $07
    ld bc, $04fd                                  ; $7c3d: $01 $fd $04
    ld a, [$fd06]                                 ; $7c40: $fa $06 $fd
    ld a, [$0081]                                 ; $7c43: $fa $81 $00
    ld [bc], a                                    ; $7c46: $02
    ld [bc], a                                    ; $7c47: $02
    add l                                         ; $7c48: $85
    dec b                                         ; $7c49: $05
    inc bc                                        ; $7c4a: $03
    dec b                                         ; $7c4b: $05
    inc bc                                        ; $7c4c: $03
    dec b                                         ; $7c4d: $05
    ld [bc], a                                    ; $7c4e: $02
    rlca                                          ; $7c4f: $07
    ld [bc], a                                    ; $7c50: $02
    ld [bc], a                                    ; $7c51: $02
    inc d                                         ; $7c52: $14
    nop                                           ; $7c53: $00
    rst $38                                       ; $7c54: $ff
    rlca                                          ; $7c55: $07
    ld bc, $0bf5                                  ; $7c56: $01 $f5 $0b
    ldh a, [$09]                                  ; $7c59: $f0 $09
    db $fd                                        ; $7c5b: $fd
    db $f4                                        ; $7c5c: $f4
    add [hl]                                      ; $7c5d: $86
    nop                                           ; $7c5e: $00
    rlca                                          ; $7c5f: $07
    ld b, $08                                     ; $7c60: $06 $08
    nop                                           ; $7c62: $00
    rlca                                          ; $7c63: $07
    ld a, [de]                                    ; $7c64: $1a
    nop                                           ; $7c65: $00
    rst $38                                       ; $7c66: $ff
    rlca                                          ; $7c67: $07
    ld bc, $0bf5                                  ; $7c68: $01 $f5 $0b
    ldh a, [$09]                                  ; $7c6b: $f0 $09
    db $fd                                        ; $7c6d: $fd
    ld hl, sp-$7a                                 ; $7c6e: $f8 $86
    ld a, [bc]                                    ; $7c70: $0a
    dec h                                         ; $7c71: $25
    ld [hl], h                                    ; $7c72: $74
    adc d                                         ; $7c73: $8a
    ld [$1a32], sp                                ; $7c74: $08 $32 $1a
    nop                                           ; $7c77: $00
    rst $38                                       ; $7c78: $ff
    add hl, bc                                    ; $7c79: $09
    ld [bc], a                                    ; $7c7a: $02
    push af                                       ; $7c7b: $f5
    dec bc                                        ; $7c7c: $0b
    ldh a, [$09]                                  ; $7c7d: $f0 $09
    db $fc                                        ; $7c7f: $fc
    ld hl, sp-$04                                 ; $7c80: $f8 $fc
    db $fd                                        ; $7c82: $fd
    adc d                                         ; $7c83: $8a
    nop                                           ; $7c84: $00
    ld a, [bc]                                    ; $7c85: $0a
    ld [de], a                                    ; $7c86: $12
    ld h, l                                       ; $7c87: $65
    ld h, h                                       ; $7c88: $64
    sbc d                                         ; $7c89: $9a
    add b                                         ; $7c8a: $80
    push af                                       ; $7c8b: $f5
    ld [hl-], a                                   ; $7c8c: $32
    ld a, [hl-]                                   ; $7c8d: $3a
    rla                                           ; $7c8e: $17
    nop                                           ; $7c8f: $00
    add d                                         ; $7c90: $82
    stop                                          ; $7c91: $10 $00
    ld [bc], a                                    ; $7c93: $02
    ld [bc], a                                    ; $7c94: $02
    add l                                         ; $7c95: $85
    dec d                                         ; $7c96: $15
    db $10                                        ; $7c97: $10
    ld a, [bc]                                    ; $7c98: $0a
    nop                                           ; $7c99: $00
    db $10                                        ; $7c9a: $10
    ld d, $00                                     ; $7c9b: $16 $00
    rst $38                                       ; $7c9d: $ff
    add hl, bc                                    ; $7c9e: $09
    ld [bc], a                                    ; $7c9f: $02
    push af                                       ; $7ca0: $f5
    dec bc                                        ; $7ca1: $0b
    ldh a, [$09]                                  ; $7ca2: $f0 $09
    db $fc                                        ; $7ca4: $fc
    ld hl, sp-$04                                 ; $7ca5: $f8 $fc
    rst $38                                       ; $7ca7: $ff
    adc b                                         ; $7ca8: $88
    nop                                           ; $7ca9: $00
    dec c                                         ; $7caa: $0d
    inc d                                         ; $7cab: $14
    ld h, e                                       ; $7cac: $63
    ld [$5094], a                                 ; $7cad: $ea $94 $50
    ld l, l                                       ; $7cb0: $6d
    ld [bc], a                                    ; $7cb1: $02
    add hl, de                                    ; $7cb2: $19
    rla                                           ; $7cb3: $17
    nop                                           ; $7cb4: $00
    adc c                                         ; $7cb5: $89
    ld d, b                                       ; $7cb6: $50
    ld b, b                                       ; $7cb7: $40
    ld [hl+], a                                   ; $7cb8: $22
    ld d, d                                       ; $7cb9: $52
    dec b                                         ; $7cba: $05
    nop                                           ; $7cbb: $00
    ld d, d                                       ; $7cbc: $52
    nop                                           ; $7cbd: $00
    ld c, b                                       ; $7cbe: $48
    ld d, $00                                     ; $7cbf: $16 $00
    rst $38                                       ; $7cc1: $ff
    dec bc                                        ; $7cc2: $0b
    inc bc                                        ; $7cc3: $03
    push af                                       ; $7cc4: $f5
    dec bc                                        ; $7cc5: $0b
    ldh a, [$09]                                  ; $7cc6: $f0 $09
    db $fc                                        ; $7cc8: $fc
    ld hl, sp-$04                                 ; $7cc9: $f8 $fc
    nop                                           ; $7ccb: $00
    db $fc                                        ; $7ccc: $fc
    ld [bc], a                                    ; $7ccd: $02
    adc d                                         ; $7cce: $8a
    nop                                           ; $7ccf: $00
    dec de                                        ; $7cd0: $1b
    ld a, [de]                                    ; $7cd1: $1a
    ld h, h                                       ; $7cd2: $64
    pop hl                                        ; $7cd3: $e1
    sub [hl]                                      ; $7cd4: $96
    ld d, h                                       ; $7cd5: $54
    ld l, e                                       ; $7cd6: $6b
    ld a, [de]                                    ; $7cd7: $1a
    dec de                                        ; $7cd8: $1b
    rla                                           ; $7cd9: $17
    nop                                           ; $7cda: $00
    adc c                                         ; $7cdb: $89
    ld c, b                                       ; $7cdc: $48
    ld d, b                                       ; $7cdd: $50
    and b                                         ; $7cde: $a0
    jr nz, jr_0f4_7d2c                            ; $7cdf: $20 $4b

    ld [$4094], sp                                ; $7ce1: $08 $94 $40
    ld l, b                                       ; $7ce4: $68
    add hl, de                                    ; $7ce5: $19
    nop                                           ; $7ce6: $00
    ld [bc], a                                    ; $7ce7: $02
    ld [bc], a                                    ; $7ce8: $02
    add e                                         ; $7ce9: $83
    ld bc, $0200                                  ; $7cea: $01 $00 $02
    jr jr_0f4_7cef                                ; $7ced: $18 $00

jr_0f4_7cef:
    rst $38                                       ; $7cef: $ff
    dec bc                                        ; $7cf0: $0b
    inc bc                                        ; $7cf1: $03
    push af                                       ; $7cf2: $f5
    dec bc                                        ; $7cf3: $0b
    ldh a, [$09]                                  ; $7cf4: $f0 $09
    db $fc                                        ; $7cf6: $fc
    ld hl, sp-$04                                 ; $7cf7: $f8 $fc
    nop                                           ; $7cf9: $00
    db $fc                                        ; $7cfa: $fc
    inc b                                         ; $7cfb: $04
    adc b                                         ; $7cfc: $88
    nop                                           ; $7cfd: $00
    ld a, [de]                                    ; $7cfe: $1a
    db $10                                        ; $7cff: $10
    ld h, l                                       ; $7d00: $65
    db $e4                                        ; $7d01: $e4
    sbc d                                         ; $7d02: $9a
    ld d, c                                       ; $7d03: $51
    ld h, [hl]                                    ; $7d04: $66
    ld [bc], a                                    ; $7d05: $02
    dec e                                         ; $7d06: $1d
    rla                                           ; $7d07: $17
    nop                                           ; $7d08: $00
    adc c                                         ; $7d09: $89
    or h                                          ; $7d0a: $b4
    and h                                         ; $7d0b: $a4
    ld c, c                                       ; $7d0c: $49
    ld c, b                                       ; $7d0d: $48
    sub b                                         ; $7d0e: $90
    ld [bc], a                                    ; $7d0f: $02
    xor l                                         ; $7d10: $ad
    ld b, b                                       ; $7d11: $40
    ld d, c                                       ; $7d12: $51
    jr jr_0f4_7d15                                ; $7d13: $18 $00

jr_0f4_7d15:
    add c                                         ; $7d15: $81
    ld [$0202], sp                                ; $7d16: $08 $02 $02
    add e                                         ; $7d19: $83
    dec b                                         ; $7d1a: $05
    nop                                           ; $7d1b: $00
    ld [bc], a                                    ; $7d1c: $02
    jr jr_0f4_7d1f                                ; $7d1d: $18 $00

jr_0f4_7d1f:
    rst $38                                       ; $7d1f: $ff
    add hl, bc                                    ; $7d20: $09
    ld [bc], a                                    ; $7d21: $02
    push af                                       ; $7d22: $f5
    dec bc                                        ; $7d23: $0b
    ldh a, [$09]                                  ; $7d24: $f0 $09
    dec b                                         ; $7d26: $05
    db $fc                                        ; $7d27: $fc
    dec b                                         ; $7d28: $05
    db $fd                                        ; $7d29: $fd
    add c                                         ; $7d2a: $81
    nop                                           ; $7d2b: $00

jr_0f4_7d2c:
    ld [bc], a                                    ; $7d2c: $02
    ld [hl+], a                                   ; $7d2d: $22
    add l                                         ; $7d2e: $85
    sub l                                         ; $7d2f: $95
    db $fd                                        ; $7d30: $fd
    add d                                         ; $7d31: $82
    ld b, c                                       ; $7d32: $41
    ld a, a                                       ; $7d33: $7f
    inc e                                         ; $7d34: $1c
    nop                                           ; $7d35: $00
    ld [bc], a                                    ; $7d36: $02
    ld bc, $001a                                  ; $7d37: $01 $1a $00
    rst $38                                       ; $7d3a: $ff
    dec bc                                        ; $7d3b: $0b
    inc bc                                        ; $7d3c: $03
    push af                                       ; $7d3d: $f5
    dec bc                                        ; $7d3e: $0b
    ldh a, [$09]                                  ; $7d3f: $f0 $09
    ld bc, $01f8                                  ; $7d41: $01 $f8 $01
    nop                                           ; $7d44: $00
    ld bc, $9001                                  ; $7d45: $01 $01 $90
    jr nz, jr_0f4_7d5a                            ; $7d48: $20 $10

    ld d, b                                       ; $7d4a: $50
    jr nc, jr_0f4_7d6d                            ; $7d4b: $30 $20

    ld h, b                                       ; $7d4d: $60
    and b                                         ; $7d4e: $a0
    ld l, b                                       ; $7d4f: $68
    ldh [$ad], a                                  ; $7d50: $e0 $ad
    inc h                                         ; $7d52: $24
    ld e, e                                       ; $7d53: $5b
    ld h, e                                       ; $7d54: $63
    ld a, h                                       ; $7d55: $7c
    jr @+$21                                      ; $7d56: $18 $1f

    ld [bc], a                                    ; $7d58: $02
    rlca                                          ; $7d59: $07

jr_0f4_7d5a:
    ld c, $00                                     ; $7d5a: $0e $00
    sub b                                         ; $7d5c: $90
    ld [bc], a                                    ; $7d5d: $02
    inc b                                         ; $7d5e: $04
    dec b                                         ; $7d5f: $05
    ld b, $02                                     ; $7d60: $06 $02
    inc hl                                        ; $7d62: $23
    ld [bc], a                                    ; $7d63: $02
    and e                                         ; $7d64: $a3
    ld [hl+], a                                   ; $7d65: $22
    sub e                                         ; $7d66: $93
    ld [hl-], a                                   ; $7d67: $32
    call Call_000_0ff3                            ; $7d68: $cd $f3 $0f
    inc c                                         ; $7d6b: $0c
    db $fc                                        ; $7d6c: $fc

jr_0f4_7d6d:
    ld [bc], a                                    ; $7d6d: $02
    ldh a, [rNR14]                                ; $7d6e: $f0 $14
    nop                                           ; $7d70: $00
    add d                                         ; $7d71: $82
    ld bc, $0200                                  ; $7d72: $01 $00 $02
    ld bc, $0016                                  ; $7d75: $01 $16 $00
    rst $38                                       ; $7d78: $ff
    dec bc                                        ; $7d79: $0b
    inc bc                                        ; $7d7a: $03
    push af                                       ; $7d7b: $f5
    dec bc                                        ; $7d7c: $0b
    ldh a, [$09]                                  ; $7d7d: $f0 $09
    db $fd                                        ; $7d7f: $fd
    push af                                       ; $7d80: $f5
    db $fd                                        ; $7d81: $fd
    db $fd                                        ; $7d82: $fd
    db $fd                                        ; $7d83: $fd
    inc b                                         ; $7d84: $04
    inc b                                         ; $7d85: $04
    nop                                           ; $7d86: $00
    sub h                                         ; $7d87: $94
    jr nz, @+$12                                  ; $7d88: $20 $10

    ld d, b                                       ; $7d8a: $50
    jr nc, jr_0f4_7dad                            ; $7d8b: $30 $20

    ld h, b                                       ; $7d8d: $60
    and b                                         ; $7d8e: $a0
    ld h, b                                       ; $7d8f: $60
    jr nz, @-$1a                                  ; $7d90: $20 $e4

    ldh [$a6], a                                  ; $7d92: $e0 $a6
    ld [hl+], a                                   ; $7d94: $22
    ld d, l                                       ; $7d95: $55
    ld e, a                                       ; $7d96: $5f
    ld h, b                                       ; $7d97: $60
    ld hl, $1c3e                                  ; $7d98: $21 $3e $1c
    rra                                           ; $7d9b: $1f
    ld [bc], a                                    ; $7d9c: $02
    inc bc                                        ; $7d9d: $03
    rlca                                          ; $7d9e: $07
    nop                                           ; $7d9f: $00
    sub h                                         ; $7da0: $94
    db $10                                        ; $7da1: $10
    jr nz, jr_0f4_7ddc                            ; $7da2: $20 $38

    ld d, b                                       ; $7da4: $50
    ld l, b                                       ; $7da5: $68
    ld a, b                                       ; $7da6: $78
    ld b, h                                       ; $7da7: $44
    or b                                          ; $7da8: $b0
    call z, $c7ba                                 ; $7da9: $cc $ba $c7
    add d                                         ; $7dac: $82

jr_0f4_7dad:
    rst $38                                       ; $7dad: $ff
    ld l, l                                       ; $7dae: $6d
    db $fc                                        ; $7daf: $fc
    ld bc, $9392                                  ; $7db0: $01 $92 $93
    ld l, h                                       ; $7db3: $6c
    rst $38                                       ; $7db4: $ff
    ld [bc], a                                    ; $7db5: $02
    nop                                           ; $7db6: $00
    inc bc                                        ; $7db7: $03
    rst $38                                       ; $7db8: $ff
    ld a, [bc]                                    ; $7db9: $0a
    nop                                           ; $7dba: $00
    sub h                                         ; $7dbb: $94
    inc b                                         ; $7dbc: $04
    ld [$0c0a], sp                                ; $7dbd: $08 $0a $0c
    inc b                                         ; $7dc0: $04
    ld b, $05                                     ; $7dc1: $06 $05
    ld b, $04                                     ; $7dc3: $06 $04
    rlca                                          ; $7dc5: $07
    dec b                                         ; $7dc6: $05
    ld b, a                                       ; $7dc7: $47
    ld b, h                                       ; $7dc8: $44
    ld a, [hl+]                                   ; $7dc9: $2a
    ld a, d                                       ; $7dca: $7a
    ld b, $44                                     ; $7dcb: $06 $44
    inc a                                         ; $7dcd: $3c
    jr c, jr_0f4_7e48                             ; $7dce: $38 $78

    ld [bc], a                                    ; $7dd0: $02
    ld b, b                                       ; $7dd1: $40
    ld b, $00                                     ; $7dd2: $06 $00
    rst $38                                       ; $7dd4: $ff
    dec c                                         ; $7dd5: $0d
    inc b                                         ; $7dd6: $04
    push af                                       ; $7dd7: $f5
    dec bc                                        ; $7dd8: $0b
    ldh a, [$09]                                  ; $7dd9: $f0 $09
    db $fd                                        ; $7ddb: $fd

jr_0f4_7ddc:
    db $f4                                        ; $7ddc: $f4
    ld a, [c]                                     ; $7ddd: $f2
    db $fc                                        ; $7dde: $fc
    ld [bc], a                                    ; $7ddf: $02
    db $fc                                        ; $7de0: $fc
    ei                                            ; $7de1: $fb
    inc b                                         ; $7de2: $04
    inc b                                         ; $7de3: $04
    ld bc, $1381                                  ; $7de4: $01 $81 $13
    ld [bc], a                                    ; $7de7: $02
    dec bc                                        ; $7de8: $0b
    add d                                         ; $7de9: $82
    dec sp                                        ; $7dea: $3b
    ld sp, $1102                                  ; $7deb: $31 $02 $11
    adc l                                         ; $7dee: $8d
    ld [hl], c                                    ; $7def: $71
    ld d, b                                       ; $7df0: $50
    inc [hl]                                      ; $7df1: $34
    ld [hl], b                                    ; $7df2: $70
    ld d, [hl]                                    ; $7df3: $56
    ld [de], a                                    ; $7df4: $12
    dec l                                         ; $7df5: $2d
    cpl                                           ; $7df6: $2f
    jr nc, jr_0f4_7e09                            ; $7df7: $30 $10

    rra                                           ; $7df9: $1f
    ld c, $0f                                     ; $7dfa: $0e $0f
    ld [bc], a                                    ; $7dfc: $02
    ld bc, $0007                                  ; $7dfd: $01 $07 $00
    xor d                                         ; $7e00: $aa
    jr z, jr_0f4_7e23                             ; $7e01: $28 $20

    ld c, b                                       ; $7e03: $48
    jr z, @+$56                                   ; $7e04: $28 $54

    ld [$1834], sp                                ; $7e06: $08 $34 $18

jr_0f4_7e09:
    inc h                                         ; $7e09: $24
    ld d, b                                       ; $7e0a: $50
    ld l, h                                       ; $7e0b: $6c
    jr c, jr_0f4_7e54                             ; $7e0c: $38 $46

    xor h                                         ; $7e0e: $ac
    jp nc, $e39d                                  ; $7e0f: $d2 $9d $e3

    ld e, d                                       ; $7e12: $5a
    ld h, l                                       ; $7e13: $65
    cp a                                          ; $7e14: $bf
    ret nz                                        ; $7e15: $c0

    adc [hl]                                      ; $7e16: $8e
    pop af                                        ; $7e17: $f1
    dec e                                         ; $7e18: $1d
    ld [c], a                                     ; $7e19: $e2

jr_0f4_7e1a:
    or a                                          ; $7e1a: $b7
    ret z                                         ; $7e1b: $c8

    dec c                                         ; $7e1c: $0d
    ld a, [c]                                     ; $7e1d: $f2
    cp d                                          ; $7e1e: $ba
    push bc                                       ; $7e1f: $c5
    add b                                         ; $7e20: $80
    rst $38                                       ; $7e21: $ff
    rst $20                                       ; $7e22: $e7

jr_0f4_7e23:
    rst $38                                       ; $7e23: $ff
    ld a, [hl-]                                   ; $7e24: $3a
    cp [hl]                                       ; $7e25: $be
    nop                                           ; $7e26: $00
    add h                                         ; $7e27: $84
    push bc                                       ; $7e28: $c5
    ld a, [hl+]                                   ; $7e29: $2a
    rst $38                                       ; $7e2a: $ff
    ld [bc], a                                    ; $7e2b: $02
    nop                                           ; $7e2c: $00
    inc bc                                        ; $7e2d: $03
    rst $38                                       ; $7e2e: $ff
    stop                                          ; $7e2f: $10 $00
    ld [bc], a                                    ; $7e31: $02
    add b                                         ; $7e32: $80
    sbc d                                         ; $7e33: $9a
    ld b, b                                       ; $7e34: $40
    ret nz                                        ; $7e35: $c0

    ld b, b                                       ; $7e36: $40
    ret nz                                        ; $7e37: $c0

    jr nz, jr_0f4_7e1a                            ; $7e38: $20 $e0

    ld h, b                                       ; $7e3a: $60
    db $ec                                        ; $7e3b: $ec
    ld a, [hl+]                                   ; $7e3c: $2a
    db $ec                                        ; $7e3d: $ec
    ld h, [hl]                                    ; $7e3e: $66
    db $e4                                        ; $7e3f: $e4
    call nz, $85e7                                ; $7e40: $c4 $e7 $85
    and [hl]                                      ; $7e43: $a6
    dec h                                         ; $7e44: $25
    ld b, a                                       ; $7e45: $47

jr_0f4_7e46:
    ld h, h                                       ; $7e46: $64
    sbc d                                         ; $7e47: $9a

jr_0f4_7e48:
    ld a, [$c406]                                 ; $7e48: $fa $06 $c4
    inc a                                         ; $7e4b: $3c
    jr c, jr_0f4_7e46                             ; $7e4c: $38 $f8

    ld [bc], a                                    ; $7e4e: $02
    ret nz                                        ; $7e4f: $c0

    ld [bc], a                                    ; $7e50: $02
    nop                                           ; $7e51: $00
    rst $38                                       ; $7e52: $ff
    rrca                                          ; $7e53: $0f

jr_0f4_7e54:
    dec b                                         ; $7e54: $05
    push af                                       ; $7e55: $f5
    dec bc                                        ; $7e56: $0b
    ldh a, [$09]                                  ; $7e57: $f0 $09
    xor $fa                                       ; $7e59: $ee $fa
    ld a, [c]                                     ; $7e5b: $f2
    ld [bc], a                                    ; $7e5c: $02
    cp $f5                                        ; $7e5d: $fe $f5
    cp $fd                                        ; $7e5f: $fe $fd
    cp $04                                        ; $7e61: $fe $04
    add c                                         ; $7e63: $81
    nop                                           ; $7e64: $00

jr_0f4_7e65:
    ld [bc], a                                    ; $7e65: $02
    ld [bc], a                                    ; $7e66: $02
    and h                                         ; $7e67: $a4
    ld bc, $0102                                  ; $7e68: $01 $02 $01
    nop                                           ; $7e6b: $00
    dec bc                                        ; $7e6c: $0b
    ld a, [bc]                                    ; $7e6d: $0a
    dec d                                         ; $7e6e: $15
    rrca                                          ; $7e6f: $0f
    db $10                                        ; $7e70: $10
    inc bc                                        ; $7e71: $03
    inc c                                         ; $7e72: $0c
    rlca                                          ; $7e73: $07
    ld [$1916], sp                                ; $7e74: $08 $16 $19
    daa                                           ; $7e77: $27
    jr c, jr_0f4_7ea9                             ; $7e78: $38 $2f

    jr nc, @+$49                                  ; $7e7a: $30 $47

    ld a, b                                       ; $7e7c: $78
    ld l, a                                       ; $7e7d: $6f
    ld [hl], b                                    ; $7e7e: $70
    ld d, e                                       ; $7e7f: $53
    ld l, h                                       ; $7e80: $6c
    add c                                         ; $7e81: $81
    cp $e5                                        ; $7e82: $fe $e5
    ld a, [$8000]                                 ; $7e84: $fa $00 $80

jr_0f4_7e87:
    nop                                           ; $7e87: $00
    ret nz                                        ; $7e88: $c0

    ld b, b                                       ; $7e89: $40
    add b                                         ; $7e8a: $80
    ld b, b                                       ; $7e8b: $40
    ld [bc], a                                    ; $7e8c: $02
    add b                                         ; $7e8d: $80
    ld [bc], a                                    ; $7e8e: $02
    ld b, b                                       ; $7e8f: $40
    and b                                         ; $7e90: $a0
    ret nz                                        ; $7e91: $c0

    and b                                         ; $7e92: $a0
    ld h, b                                       ; $7e93: $60
    and b                                         ; $7e94: $a0
    ld h, b                                       ; $7e95: $60
    db $10                                        ; $7e96: $10
    ldh a, [$90]                                  ; $7e97: $f0 $90
    ld [hl], b                                    ; $7e99: $70
    ret nc                                        ; $7e9a: $d0

    jr nc, jr_0f4_7e65                            ; $7e9b: $30 $c8

    jr c, jr_0f4_7e87                             ; $7e9d: $38 $e8

    jr @-$35                                      ; $7e9f: $18 $c9

    ld a, [hl-]                                   ; $7ea1: $3a
    ld d, d                                       ; $7ea2: $52
    or e                                          ; $7ea3: $b3

jr_0f4_7ea4:
    ld sp, $06f1                                  ; $7ea4: $31 $f1 $06
    rlca                                          ; $7ea7: $07
    ld [hl+], a                                   ; $7ea8: $22

jr_0f4_7ea9:
    inc de                                        ; $7ea9: $13
    ld d, e                                       ; $7eaa: $53
    inc sp                                        ; $7eab: $33
    ld h, c                                       ; $7eac: $61
    ld hl, $61a1                                  ; $7ead: $21 $a1 $61
    jr nz, jr_0f4_7eb4                            ; $7eb0: $20 $02

    ldh [$89], a                                  ; $7eb2: $e0 $89

jr_0f4_7eb4:
    and l                                         ; $7eb4: $a5
    jr nz, jr_0f4_7f14                            ; $7eb5: $20 $5d

    ld e, a                                       ; $7eb7: $5f
    ld h, b                                       ; $7eb8: $60
    ld hl, $1c3e                                  ; $7eb9: $21 $3e $1c
    rra                                           ; $7ebc: $1f
    ld [bc], a                                    ; $7ebd: $02
    inc bc                                        ; $7ebe: $03
    ld [$9300], sp                                ; $7ebf: $08 $00 $93
    jr jr_0f4_7ea4                                ; $7ec2: $18 $e0

    sub b                                         ; $7ec4: $90
    add sp, -$80                                  ; $7ec5: $e8 $80
    ld hl, sp+$40                                 ; $7ec7: $f8 $40
    ld hl, sp-$29                                 ; $7ec9: $f8 $d7
    rst $38                                       ; $7ecb: $ff
    ld l, [hl]                                    ; $7ecc: $6e
    cp $6c                                        ; $7ecd: $fe $6c
    db $fc                                        ; $7ecf: $fc
    sub b                                         ; $7ed0: $90

jr_0f4_7ed1:
    jr z, jr_0f4_7ed1                             ; $7ed1: $28 $fe

    ld bc, $02ff                                  ; $7ed3: $01 $ff $02
    nop                                           ; $7ed6: $00
    inc bc                                        ; $7ed7: $03
    rst $38                                       ; $7ed8: $ff
    inc c                                         ; $7ed9: $0c
    nop                                           ; $7eda: $00
    add c                                         ; $7edb: $81
    ld [bc], a                                    ; $7edc: $02
    ld [bc], a                                    ; $7edd: $02
    nop                                           ; $7ede: $00
    adc a                                         ; $7edf: $8f
    ld [bc], a                                    ; $7ee0: $02
    dec b                                         ; $7ee1: $05
    ld b, $05                                     ; $7ee2: $06 $05
    ld h, $05                                     ; $7ee4: $26 $05
    daa                                           ; $7ee6: $27
    inc h                                         ; $7ee7: $24
    ld c, d                                       ; $7ee8: $4a
    ld l, d                                       ; $7ee9: $6a
    ld d, $44                                     ; $7eea: $16 $44
    inc a                                         ; $7eec: $3c
    jr c, jr_0f4_7f67                             ; $7eed: $38 $78

    ld [bc], a                                    ; $7eef: $02
    ld b, b                                       ; $7ef0: $40
    ld [$ff00], sp                                ; $7ef1: $08 $00 $ff
    rrca                                          ; $7ef4: $0f
    dec b                                         ; $7ef5: $05
    push af                                       ; $7ef6: $f5
    dec bc                                        ; $7ef7: $0b
    ldh a, [$09]                                  ; $7ef8: $f0 $09
    ld [$f0fb], a                                 ; $7efa: $ea $fb $f0
    ld [bc], a                                    ; $7efd: $02
    ld a, [$faf5]                                 ; $7efe: $fa $f5 $fa
    db $fd                                        ; $7f01: $fd
    ld a, [$8104]                                 ; $7f02: $fa $04 $81
    nop                                           ; $7f05: $00
    ld [bc], a                                    ; $7f06: $02
    inc b                                         ; $7f07: $04

jr_0f4_7f08:
    add [hl]                                      ; $7f08: $86
    ld [bc], a                                    ; $7f09: $02
    inc b                                         ; $7f0a: $04
    ld [bc], a                                    ; $7f0b: $02

jr_0f4_7f0c:
    nop                                           ; $7f0c: $00

jr_0f4_7f0d:
    inc b                                         ; $7f0d: $04

jr_0f4_7f0e:
    nop                                           ; $7f0e: $00
    ld [bc], a                                    ; $7f0f: $02
    db $10                                        ; $7f10: $10
    sub [hl]                                      ; $7f11: $96
    jr nz, jr_0f4_7f24                            ; $7f12: $20 $10

jr_0f4_7f14:
    jr nz, jr_0f4_7f16                            ; $7f14: $20 $00

jr_0f4_7f16:
    add hl, de                                    ; $7f16: $19
    ld [$0815], sp                                ; $7f17: $08 $15 $08
    inc d                                         ; $7f1a: $14
    ld [$1c34], sp                                ; $7f1b: $08 $34 $1c
    ld [hl+], a                                   ; $7f1e: $22
    ld c, h                                       ; $7f1f: $4c
    ld [hl], e                                    ; $7f20: $73
    ld c, a                                       ; $7f21: $4f
    ld [hl], b                                    ; $7f22: $70
    ld d, [hl]                                    ; $7f23: $56

jr_0f4_7f24:
    ld l, c                                       ; $7f24: $69
    adc a                                         ; $7f25: $8f
    ldh a, [rP1]                                  ; $7f26: $f0 $00
    ld [bc], a                                    ; $7f28: $02
    ld b, b                                       ; $7f29: $40

jr_0f4_7f2a:
    add d                                         ; $7f2a: $82
    nop                                           ; $7f2b: $00
    ld b, b                                       ; $7f2c: $40
    ld [bc], a                                    ; $7f2d: $02
    nop                                           ; $7f2e: $00
    add c                                         ; $7f2f: $81
    ld b, b                                       ; $7f30: $40
    rlca                                          ; $7f31: $07
    nop                                           ; $7f32: $00
    sub e                                         ; $7f33: $93
    ld b, b                                       ; $7f34: $40
    jr nz, jr_0f4_7f97                            ; $7f35: $20 $60

    db $10                                        ; $7f37: $10
    ld [hl], b                                    ; $7f38: $70
    ret nc                                        ; $7f39: $d0

    jr nc, jr_0f4_7f0c                            ; $7f3a: $30 $d0

jr_0f4_7f3c:
    jr nc, jr_0f4_7f0e                            ; $7f3c: $30 $d0

    jr nc, jr_0f4_7f08                            ; $7f3e: $30 $c8

    jr c, jr_0f4_7f2a                             ; $7f40: $38 $e8

    jr jr_0f4_7f0d                                ; $7f42: $18 $c9

    ld a, [hl-]                                   ; $7f44: $3a
    ld [bc], a                                    ; $7f45: $02
    inc bc                                        ; $7f46: $03
    ld [bc], a                                    ; $7f47: $02
    rlca                                          ; $7f48: $07

jr_0f4_7f49:
    add c                                         ; $7f49: $81
    inc b                                         ; $7f4a: $04
    dec b                                         ; $7f4b: $05
    rlca                                          ; $7f4c: $07
    sub h                                         ; $7f4d: $94
    ld h, $17                                     ; $7f4e: $26 $17
    ld d, e                                       ; $7f50: $53
    inc sp                                        ; $7f51: $33
    inc hl                                        ; $7f52: $23
    ld h, e                                       ; $7f53: $63
    and c                                         ; $7f54: $a1
    ld h, c                                       ; $7f55: $61
    jr nz, jr_0f4_7f3c                            ; $7f56: $20 $e4

    ldh [$a6], a                                  ; $7f58: $e0 $a6
    ld [hl+], a                                   ; $7f5a: $22
    ld d, l                                       ; $7f5b: $55
    ld e, a                                       ; $7f5c: $5f
    ld h, b                                       ; $7f5d: $60
    ld hl, $1c3e                                  ; $7f5e: $21 $3e $1c
    rra                                           ; $7f61: $1f
    ld [bc], a                                    ; $7f62: $02
    inc bc                                        ; $7f63: $03
    sbc e                                         ; $7f64: $9b
    xor b                                         ; $7f65: $a8
    ret nc                                        ; $7f66: $d0

jr_0f4_7f67:
    jr jr_0f4_7f49                                ; $7f67: $18 $e0

    adc b                                         ; $7f69: $88
    ldh a, [rNR23]                                ; $7f6a: $f0 $18
    ldh [rNR23], a                                ; $7f6c: $e0 $18
    ldh [$a8], a                                  ; $7f6e: $e0 $a8
    ret nc                                        ; $7f70: $d0

    ld a, [bc]                                    ; $7f71: $0a
    push af                                       ; $7f72: $f5
    ld b, h                                       ; $7f73: $44
    ei                                            ; $7f74: $fb
    sub d                                         ; $7f75: $92
    rst $38                                       ; $7f76: $ff
    xor $ff                                       ; $7f77: $ee $ff
    ld l, l                                       ; $7f79: $6d
    db $fc                                        ; $7f7a: $fc
    ld bc, $9392                                  ; $7f7b: $01 $92 $93
    ld l, h                                       ; $7f7e: $6c
    rst $38                                       ; $7f7f: $ff
    ld [bc], a                                    ; $7f80: $02
    nop                                           ; $7f81: $00
    inc bc                                        ; $7f82: $03
    rst $38                                       ; $7f83: $ff
    inc c                                         ; $7f84: $0c
    nop                                           ; $7f85: $00
    sub d                                         ; $7f86: $92
    ld c, d                                       ; $7f87: $4a
    ld c, h                                       ; $7f88: $4c
    ld b, h                                       ; $7f89: $44
    ld b, [hl]                                    ; $7f8a: $46
    dec b                                         ; $7f8b: $05
    ld b, $04                                     ; $7f8c: $06 $04
    rlca                                          ; $7f8e: $07
    dec b                                         ; $7f8f: $05
    ld b, a                                       ; $7f90: $47
    ld b, h                                       ; $7f91: $44
    ld a, [hl+]                                   ; $7f92: $2a
    ld a, d                                       ; $7f93: $7a
    ld b, $44                                     ; $7f94: $06 $44
    inc a                                         ; $7f96: $3c

jr_0f4_7f97:
    jr c, @+$7a                                   ; $7f97: $38 $78

    ld [bc], a                                    ; $7f99: $02
    ld b, b                                       ; $7f9a: $40
    rst $38                                       ; $7f9b: $ff
    rlca                                          ; $7f9c: $07
    ld bc, $0bf4                                  ; $7f9d: $01 $f4 $0b
    or $0d                                        ; $7fa0: $f6 $0d
    rst $38                                       ; $7fa2: $ff
    xor $86                                       ; $7fa3: $ee $86
    inc c                                         ; $7fa5: $0c
    ld c, $16                                     ; $7fa6: $0e $16
    add hl, de                                    ; $7fa8: $19
    inc c                                         ; $7fa9: $0c
    ld c, $1a                                     ; $7faa: $0e $1a
    nop                                           ; $7fac: $00
    rst $38                                       ; $7fad: $ff
    add hl, bc                                    ; $7fae: $09
    ld [bc], a                                    ; $7faf: $02
    db $f4                                        ; $7fb0: $f4
    dec bc                                        ; $7fb1: $0b
    or $0d                                        ; $7fb2: $f6 $0d
    cp $f1                                        ; $7fb4: $fe $f1
    cp $f5                                        ; $7fb6: $fe $f5
    ld [bc], a                                    ; $7fb8: $02
    ld a, [de]                                    ; $7fb9: $1a
    add [hl]                                      ; $7fba: $86
    ld l, l                                       ; $7fbb: $6d
    ld [hl], a                                    ; $7fbc: $77
    cp h                                          ; $7fbd: $bc
    jp Jump_0f4_7b55                              ; $7fbe: $c3 $55 $7b


    ld [bc], a                                    ; $7fc1: $02
    ld l, $18                                     ; $7fc2: $2e $18
    nop                                           ; $7fc4: $00
    ld [bc], a                                    ; $7fc5: $02
    inc b                                         ; $7fc6: $04
    add d                                         ; $7fc7: $82
    dec b                                         ; $7fc8: $05
    dec c                                         ; $7fc9: $0d
    inc b                                         ; $7fca: $04
    ld [$0016], sp                                ; $7fcb: $08 $16 $00
    rst $38                                       ; $7fce: $ff
    add hl, bc                                    ; $7fcf: $09
    ld [bc], a                                    ; $7fd0: $02
    db $f4                                        ; $7fd1: $f4
    dec bc                                        ; $7fd2: $0b
    or $0d                                        ; $7fd3: $f6 $0d
    cp $f1                                        ; $7fd5: $fe $f1
    cp $f6                                        ; $7fd7: $fe $f6
    ld [bc], a                                    ; $7fd9: $02
    ld e, [hl]                                    ; $7fda: $5e
    add [hl]                                      ; $7fdb: $86
    xor l                                         ; $7fdc: $ad
    ei                                            ; $7fdd: $fb
    cp $89                                        ; $7fde: $fe $89
    and b                                         ; $7fe0: $a0
    rst $18                                       ; $7fe1: $df
    ld [bc], a                                    ; $7fe2: $02
    ld l, [hl]                                    ; $7fe3: $6e
    jr jr_0f4_7fe6                                ; $7fe4: $18 $00

jr_0f4_7fe6:
    ld [bc], a                                    ; $7fe6: $02
    db $10                                        ; $7fe7: $10
    ld [bc], a                                    ; $7fe8: $02
    dec e                                         ; $7fe9: $1d
    ld [bc], a                                    ; $7fea: $02
    ld d, $02                                     ; $7feb: $16 $02
    ld [$0016], sp                                ; $7fed: $08 $16 $00
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
