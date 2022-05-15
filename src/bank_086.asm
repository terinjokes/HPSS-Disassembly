; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $086", ROMX[$4000], BANK[$86]

    add [hl]                                      ; $4000: $86
    ld [$0a00], sp                                ; $4001: $08 $00 $0a
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    ld [$d1d1], sp                                ; $4006: $08 $d1 $d1
    pop de                                        ; $4009: $d1
    pop de                                        ; $400a: $d1
    pop de                                        ; $400b: $d1
    pop de                                        ; $400c: $d1
    pop de                                        ; $400d: $d1
    pop de                                        ; $400e: $d1
    pop de                                        ; $400f: $d1
    pop de                                        ; $4010: $d1
    pop de                                        ; $4011: $d1
    pop de                                        ; $4012: $d1
    pop de                                        ; $4013: $d1
    pop de                                        ; $4014: $d1
    pop de                                        ; $4015: $d1
    pop de                                        ; $4016: $d1
    add c                                         ; $4017: $81
    add c                                         ; $4018: $81
    add c                                         ; $4019: $81
    add c                                         ; $401a: $81
    ld bc, $0101                                  ; $401b: $01 $01 $01
    add c                                         ; $401e: $81
    ld bc, $0101                                  ; $401f: $01 $01 $01
    add c                                         ; $4022: $81
    ld bc, $8101                                  ; $4023: $01 $01 $81
    add c                                         ; $4026: $81
    jp nc, $d4d3                                  ; $4027: $d2 $d3 $d4

    push de                                       ; $402a: $d5
    jp nc, $d7d6                                  ; $402b: $d2 $d6 $d7

    ret c                                         ; $402e: $d8

    jp nc, $dad9                                  ; $402f: $d2 $d9 $da

    db $db                                        ; $4032: $db
    jp nc, $dddc                                  ; $4033: $d2 $dc $dd

    sbc $80                                       ; $4036: $de $80
    ld bc, $0101                                  ; $4038: $01 $01 $01
    add b                                         ; $403b: $80
    ld bc, $0101                                  ; $403c: $01 $01 $01

Jump_086_403f:
    add b                                         ; $403f: $80
    ld bc, $0101                                  ; $4040: $01 $01 $01
    add b                                         ; $4043: $80
    ld bc, $0101                                  ; $4044: $01 $01 $01
    rst $18                                       ; $4047: $df
    ldh [$e1], a                                  ; $4048: $e0 $e1
    ld [c], a                                     ; $404a: $e2
    db $e3                                        ; $404b: $e3
    db $e4                                        ; $404c: $e4
    push hl                                       ; $404d: $e5
    and $e7                                       ; $404e: $e6 $e7
    reti                                          ; $4050: $d9


    add sp, -$17                                  ; $4051: $e8 $e9
    ld [$ebdc], a                                 ; $4053: $ea $dc $eb
    db $ec                                        ; $4056: $ec
    ld bc, $0101                                  ; $4057: $01 $01 $01
    ld bc, $0101                                  ; $405a: $01 $01 $01
    ld bc, $0101                                  ; $405d: $01 $01 $01
    ld bc, $0101                                  ; $4060: $01 $01 $01
    ld bc, $0101                                  ; $4063: $01 $01 $01
    ld bc, $eeed                                  ; $4066: $01 $ed $ee
    rst $28                                       ; $4069: $ef
    ldh a, [$f1]                                  ; $406a: $f0 $f1
    ld a, [c]                                     ; $406c: $f2
    di                                            ; $406d: $f3
    db $f4                                        ; $406e: $f4
    push af                                       ; $406f: $f5
    or $f7                                        ; $4070: $f6 $f7
    ld hl, sp-$07                                 ; $4072: $f8 $f9
    ld a, [$fcfb]                                 ; $4074: $fa $fb $fc
    ld bc, $0202                                  ; $4077: $01 $02 $02
    ld [bc], a                                    ; $407a: $02
    ld bc, $0202                                  ; $407b: $01 $02 $02
    ld [bc], a                                    ; $407e: $02
    ld bc, $0202                                  ; $407f: $01 $02 $02
    ld [bc], a                                    ; $4082: $02
    ld bc, $0202                                  ; $4083: $01 $02 $02
    ld [bc], a                                    ; $4086: $02
    jp nc, $fefd                                  ; $4087: $d2 $fd $fe

    rst $38                                       ; $408a: $ff
    jp nc, $0100                                  ; $408b: $d2 $00 $01

    ld [bc], a                                    ; $408e: $02
    jp nc, $0403                                  ; $408f: $d2 $03 $04

    dec b                                         ; $4092: $05
    jp nc, $0706                                  ; $4093: $d2 $06 $07

    ld [$0180], sp                                ; $4096: $08 $80 $01
    ld bc, $8001                                  ; $4099: $01 $01 $80
    dec b                                         ; $409c: $05
    dec b                                         ; $409d: $05
    dec b                                         ; $409e: $05
    add b                                         ; $409f: $80
    dec b                                         ; $40a0: $05
    inc b                                         ; $40a1: $04
    inc b                                         ; $40a2: $04
    add b                                         ; $40a3: $80
    dec b                                         ; $40a4: $05
    inc b                                         ; $40a5: $04
    inc b                                         ; $40a6: $04
    add hl, bc                                    ; $40a7: $09
    db $fd                                        ; $40a8: $fd
    ld a, [bc]                                    ; $40a9: $0a
    dec bc                                        ; $40aa: $0b
    inc c                                         ; $40ab: $0c
    dec c                                         ; $40ac: $0d
    ld c, $02                                     ; $40ad: $0e $02
    rrca                                          ; $40af: $0f
    db $10                                        ; $40b0: $10
    ld de, $1312                                  ; $40b1: $11 $12 $13
    inc d                                         ; $40b4: $14
    dec d                                         ; $40b5: $15
    nop                                           ; $40b6: $00
    ld bc, $0101                                  ; $40b7: $01 $01 $01
    ld bc, $0505                                  ; $40ba: $01 $05 $05
    dec b                                         ; $40bd: $05
    dec b                                         ; $40be: $05
    inc b                                         ; $40bf: $04
    inc b                                         ; $40c0: $04
    inc b                                         ; $40c1: $04
    inc b                                         ; $40c2: $04
    inc b                                         ; $40c3: $04
    inc b                                         ; $40c4: $04
    inc b                                         ; $40c5: $04
    inc b                                         ; $40c6: $04
    ld d, $17                                     ; $40c7: $16 $17
    jr jr_086_40e4                                ; $40c9: $18 $19

    inc c                                         ; $40cb: $0c
    ld [$1b1a], sp                                ; $40cc: $08 $1a $1b
    inc e                                         ; $40cf: $1c
    dec e                                         ; $40d0: $1d
    ld e, $1f                                     ; $40d1: $1e $1f
    jr nz, jr_086_40f6                            ; $40d3: $20 $21

    dec d                                         ; $40d5: $15
    nop                                           ; $40d6: $00
    ld bc, $0101                                  ; $40d7: $01 $01 $01
    ld bc, $0505                                  ; $40da: $01 $05 $05
    dec b                                         ; $40dd: $05
    dec b                                         ; $40de: $05
    inc b                                         ; $40df: $04
    inc b                                         ; $40e0: $04
    inc b                                         ; $40e1: $04
    inc b                                         ; $40e2: $04
    inc b                                         ; $40e3: $04

jr_086_40e4:
    inc b                                         ; $40e4: $04
    inc b                                         ; $40e5: $04
    inc b                                         ; $40e6: $04
    pop de                                        ; $40e7: $d1
    pop de                                        ; $40e8: $d1
    ld [hl+], a                                   ; $40e9: $22
    inc hl                                        ; $40ea: $23
    pop de                                        ; $40eb: $d1
    pop de                                        ; $40ec: $d1
    jp nc, $d124                                  ; $40ed: $d2 $24 $d1

    pop de                                        ; $40f0: $d1
    dec h                                         ; $40f1: $25
    ld h, $d1                                     ; $40f2: $26 $d1
    pop de                                        ; $40f4: $d1
    dec h                                         ; $40f5: $25

jr_086_40f6:
    jp hl                                         ; $40f6: $e9


    ld bc, $8081                                  ; $40f7: $01 $81 $80
    add b                                         ; $40fa: $80
    ld bc, $8081                                  ; $40fb: $01 $81 $80
    ld bc, $8101                                  ; $40fe: $01 $01 $81
    add b                                         ; $4101: $80
    ld bc, $8101                                  ; $4102: $01 $01 $81
    add b                                         ; $4105: $80
    ld bc, $1227                                  ; $4106: $01 $27 $12
    rrca                                          ; $4109: $0f
    db $10                                        ; $410a: $10
    db $ed                                        ; $410b: $ed
    nop                                           ; $410c: $00
    inc de                                        ; $410d: $13
    inc d                                         ; $410e: $14
    pop af                                        ; $410f: $f1
    jr z, jr_086_413b                             ; $4110: $28 $29

    dec b                                         ; $4112: $05
    push af                                       ; $4113: $f5
    ld [bc], a                                    ; $4114: $02
    inc c                                         ; $4115: $0c
    ld [$0580], sp                                ; $4116: $08 $80 $05
    inc b                                         ; $4119: $04
    inc b                                         ; $411a: $04
    ld bc, $0405                                  ; $411b: $01 $05 $04
    inc b                                         ; $411e: $04
    ld bc, $0405                                  ; $411f: $01 $05 $04
    inc b                                         ; $4122: $04
    ld bc, $0405                                  ; $4123: $01 $05 $04
    inc b                                         ; $4126: $04
    ld de, $2b2a                                  ; $4127: $11 $2a $2b
    jr z, jr_086_4141                             ; $412a: $28 $15

    dec c                                         ; $412c: $0d
    ld c, $02                                     ; $412d: $0e $02
    inc l                                         ; $412f: $2c
    jr z, jr_086_415b                             ; $4130: $28 $29

    dec b                                         ; $4132: $05
    ld bc, $0c02                                  ; $4133: $01 $02 $0c
    ld [$0404], sp                                ; $4136: $08 $04 $04
    inc b                                         ; $4139: $04
    inc b                                         ; $413a: $04

jr_086_413b:
    inc b                                         ; $413b: $04
    inc b                                         ; $413c: $04
    inc b                                         ; $413d: $04
    inc b                                         ; $413e: $04
    inc b                                         ; $413f: $04
    inc b                                         ; $4140: $04

jr_086_4141:
    inc b                                         ; $4141: $04
    inc b                                         ; $4142: $04
    inc b                                         ; $4143: $04
    inc b                                         ; $4144: $04
    inc b                                         ; $4145: $04
    inc b                                         ; $4146: $04
    add hl, hl                                    ; $4147: $29
    dec b                                         ; $4148: $05
    inc l                                         ; $4149: $2c
    jr z, jr_086_4158                             ; $414a: $28 $0c

    ld [$0201], sp                                ; $414c: $08 $01 $02
    rrca                                          ; $414f: $0f
    add hl, hl                                    ; $4150: $29
    dec b                                         ; $4151: $05
    ld [de], a                                    ; $4152: $12
    inc de                                        ; $4153: $13
    inc c                                         ; $4154: $0c
    dec l                                         ; $4155: $2d
    nop                                           ; $4156: $00
    inc b                                         ; $4157: $04

jr_086_4158:
    inc b                                         ; $4158: $04
    inc b                                         ; $4159: $04
    inc b                                         ; $415a: $04

jr_086_415b:
    inc b                                         ; $415b: $04
    inc b                                         ; $415c: $04
    inc b                                         ; $415d: $04
    inc b                                         ; $415e: $04
    inc b                                         ; $415f: $04
    inc b                                         ; $4160: $04
    inc b                                         ; $4161: $04
    inc b                                         ; $4162: $04
    inc b                                         ; $4163: $04
    inc b                                         ; $4164: $04
    add [hl]                                      ; $4165: $86
    inc b                                         ; $4166: $04
    pop de                                        ; $4167: $d1
    pop de                                        ; $4168: $d1
    dec h                                         ; $4169: $25
    db $ec                                        ; $416a: $ec
    pop de                                        ; $416b: $d1
    pop de                                        ; $416c: $d1
    dec h                                         ; $416d: $25
    dec bc                                        ; $416e: $0b
    pop de                                        ; $416f: $d1
    ld l, $25                                     ; $4170: $2e $25
    rra                                           ; $4172: $1f
    pop de                                        ; $4173: $d1
    ld l, $d2                                     ; $4174: $2e $d2
    ld [$8101], sp                                ; $4176: $08 $01 $81
    add b                                         ; $4179: $80
    ld bc, $8101                                  ; $417a: $01 $01 $81
    add b                                         ; $417d: $80
    ld bc, $8001                                  ; $417e: $01 $01 $80
    add b                                         ; $4181: $80
    dec b                                         ; $4182: $05
    ld bc, $8080                                  ; $4183: $01 $80 $80
    dec b                                         ; $4186: $05
    ld sp, hl                                     ; $4187: $f9
    ld [de], a                                    ; $4188: $12
    rrca                                          ; $4189: $0f
    cpl                                           ; $418a: $2f
    jr nc, jr_086_418d                            ; $418b: $30 $00

jr_086_418d:
    inc de                                        ; $418d: $13
    ld a, [de]                                    ; $418e: $1a
    inc l                                         ; $418f: $2c
    jr z, jr_086_41bb                             ; $4190: $28 $29

    ld e, $01                                     ; $4192: $1e $01
    ld [bc], a                                    ; $4194: $02
    inc c                                         ; $4195: $0c
    ld [$0501], sp                                ; $4196: $08 $01 $05
    inc b                                         ; $4199: $04
    inc b                                         ; $419a: $04
    ld bc, $0405                                  ; $419b: $01 $05 $04
    inc b                                         ; $419e: $04
    dec b                                         ; $419f: $05
    dec b                                         ; $41a0: $05
    inc b                                         ; $41a1: $04
    inc b                                         ; $41a2: $04
    inc b                                         ; $41a3: $04
    inc b                                         ; $41a4: $04
    inc b                                         ; $41a5: $04
    inc b                                         ; $41a6: $04
    ld sp, $0f12                                  ; $41a7: $31 $12 $0f
    db $10                                        ; $41aa: $10
    dec de                                        ; $41ab: $1b
    nop                                           ; $41ac: $00
    inc de                                        ; $41ad: $13
    inc d                                         ; $41ae: $14
    rra                                           ; $41af: $1f
    jr z, jr_086_41db                             ; $41b0: $28 $29

    ld [hl-], a                                   ; $41b2: $32
    ld bc, $0c02                                  ; $41b3: $01 $02 $0c
    ld [$0404], sp                                ; $41b6: $08 $04 $04
    inc b                                         ; $41b9: $04
    inc b                                         ; $41ba: $04

jr_086_41bb:
    inc b                                         ; $41bb: $04
    inc b                                         ; $41bc: $04
    inc b                                         ; $41bd: $04
    inc b                                         ; $41be: $04
    inc b                                         ; $41bf: $04
    inc b                                         ; $41c0: $04
    inc b                                         ; $41c1: $04
    inc b                                         ; $41c2: $04
    inc b                                         ; $41c3: $04
    inc b                                         ; $41c4: $04
    inc b                                         ; $41c5: $04
    inc b                                         ; $41c6: $04
    ld de, $3310                                  ; $41c7: $11 $10 $33
    inc [hl]                                      ; $41ca: $34
    dec d                                         ; $41cb: $15
    nop                                           ; $41cc: $00
    dec [hl]                                      ; $41cd: $35
    ld [hl], $37                                  ; $41ce: $36 $37
    jr z, jr_086_420a                             ; $41d0: $28 $38

    add hl, sp                                    ; $41d2: $39
    ld bc, $0c02                                  ; $41d3: $01 $02 $0c
    ld [$0404], sp                                ; $41d6: $08 $04 $04
    ld b, $06                                     ; $41d9: $06 $06

jr_086_41db:
    inc b                                         ; $41db: $04
    inc b                                         ; $41dc: $04
    ld b, $06                                     ; $41dd: $06 $06
    inc b                                         ; $41df: $04
    inc b                                         ; $41e0: $04
    ld b, $06                                     ; $41e1: $06 $06
    inc b                                         ; $41e3: $04
    inc b                                         ; $41e4: $04
    inc b                                         ; $41e5: $04
    inc b                                         ; $41e6: $04
    ld a, [hl-]                                   ; $41e7: $3a
    dec sp                                        ; $41e8: $3b
    inc a                                         ; $41e9: $3c
    dec a                                         ; $41ea: $3d
    ld a, $3f                                     ; $41eb: $3e $3f
    ld b, b                                       ; $41ed: $40
    ld b, c                                       ; $41ee: $41
    ld b, d                                       ; $41ef: $42
    ld b, e                                       ; $41f0: $43
    ld b, h                                       ; $41f1: $44
    ld b, l                                       ; $41f2: $45
    ld b, [hl]                                    ; $41f3: $46
    ld b, a                                       ; $41f4: $47
    ld c, b                                       ; $41f5: $48
    dec a                                         ; $41f6: $3d
    ld [bc], a                                    ; $41f7: $02
    ld [bc], a                                    ; $41f8: $02
    ld [bc], a                                    ; $41f9: $02
    ld [bc], a                                    ; $41fa: $02
    ld [bc], a                                    ; $41fb: $02
    ld [bc], a                                    ; $41fc: $02
    ld [bc], a                                    ; $41fd: $02
    ld [bc], a                                    ; $41fe: $02
    ld [bc], a                                    ; $41ff: $02
    ld [bc], a                                    ; $4200: $02
    ld [bc], a                                    ; $4201: $02
    ld [bc], a                                    ; $4202: $02
    ld [bc], a                                    ; $4203: $02
    ld [bc], a                                    ; $4204: $02
    ld [bc], a                                    ; $4205: $02
    ld b, d                                       ; $4206: $42
    rst $28                                       ; $4207: $ef
    xor $49                                       ; $4208: $ee $49

jr_086_420a:
    inc h                                         ; $420a: $24
    ld c, d                                       ; $420b: $4a
    ld c, e                                       ; $420c: $4b
    ld c, h                                       ; $420d: $4c
    ld h, $4d                                     ; $420e: $26 $4d
    ld c, [hl]                                    ; $4210: $4e
    ld c, a                                       ; $4211: $4f
    jp hl                                         ; $4212: $e9


    ld d, b                                       ; $4213: $50
    xor $51                                       ; $4214: $ee $51
    db $ec                                        ; $4216: $ec
    ld [hl+], a                                   ; $4217: $22
    ld [hl+], a                                   ; $4218: $22
    ld bc, $0201                                  ; $4219: $01 $01 $02
    ld [bc], a                                    ; $421c: $02
    ld bc, $0201                                  ; $421d: $01 $01 $02
    ld [bc], a                                    ; $4220: $02
    ld bc, $0201                                  ; $4221: $01 $01 $02
    ld h, d                                       ; $4224: $62
    ld bc, $ed01                                  ; $4225: $01 $01 $ed
    ld d, d                                       ; $4228: $52
    ld d, e                                       ; $4229: $53
    ld d, h                                       ; $422a: $54
    pop af                                        ; $422b: $f1
    ld d, l                                       ; $422c: $55
    ld d, [hl]                                    ; $422d: $56
    ld d, a                                       ; $422e: $57
    push af                                       ; $422f: $f5
    ld e, b                                       ; $4230: $58
    ld e, c                                       ; $4231: $59
    ld e, d                                       ; $4232: $5a
    ld sp, hl                                     ; $4233: $f9
    ld d, l                                       ; $4234: $55
    ld d, [hl]                                    ; $4235: $56
    ld e, e                                       ; $4236: $5b
    ld bc, $0101                                  ; $4237: $01 $01 $01
    ld bc, $0201                                  ; $423a: $01 $01 $02
    ld [bc], a                                    ; $423d: $02
    ld [bc], a                                    ; $423e: $02
    ld bc, $0202                                  ; $423f: $01 $02 $02
    ld [bc], a                                    ; $4242: $02
    ld bc, $0202                                  ; $4243: $01 $02 $02
    ld [bc], a                                    ; $4246: $02
    ld e, h                                       ; $4247: $5c
    jp nc, $d1d1                                  ; $4248: $d2 $d1 $d1

    ld e, l                                       ; $424b: $5d
    jp nc, $d1d1                                  ; $424c: $d2 $d1 $d1

    ld e, d                                       ; $424f: $5a
    jp nc, $d1d1                                  ; $4250: $d2 $d1 $d1

    ld e, [hl]                                    ; $4253: $5e
    jp nc, $d1d1                                  ; $4254: $d2 $d1 $d1

    ld bc, $8180                                  ; $4257: $01 $80 $81
    ld bc, $8002                                  ; $425a: $01 $02 $80
    add c                                         ; $425d: $81
    ld bc, $8002                                  ; $425e: $01 $02 $80
    add c                                         ; $4261: $81
    ld bc, $8002                                  ; $4262: $01 $02 $80
    add c                                         ; $4265: $81
    ld bc, $605f                                  ; $4266: $01 $5f $60
    ld a, [bc]                                    ; $4269: $0a
    dec bc                                        ; $426a: $0b
    inc c                                         ; $426b: $0c
    ld [$2001], sp                                ; $426c: $08 $01 $20
    rrca                                          ; $426f: $0f
    db $10                                        ; $4270: $10
    ld de, $1312                                  ; $4271: $11 $12 $13
    inc d                                         ; $4274: $14
    dec d                                         ; $4275: $15
    nop                                           ; $4276: $00
    ld bc, $0101                                  ; $4277: $01 $01 $01
    ld bc, $0505                                  ; $427a: $01 $05 $05
    dec b                                         ; $427d: $05
    dec b                                         ; $427e: $05
    inc b                                         ; $427f: $04
    inc b                                         ; $4280: $04
    inc b                                         ; $4281: $04
    inc b                                         ; $4282: $04
    inc b                                         ; $4283: $04
    inc b                                         ; $4284: $04
    inc b                                         ; $4285: $04
    inc b                                         ; $4286: $04
    ld h, c                                       ; $4287: $61
    ld h, d                                       ; $4288: $62
    ld h, e                                       ; $4289: $63
    dec bc                                        ; $428a: $0b
    ld hl, $0108                                  ; $428b: $21 $08 $01
    ld [bc], a                                    ; $428e: $02
    rrca                                          ; $428f: $0f
    db $10                                        ; $4290: $10
    ld de, $1312                                  ; $4291: $11 $12 $13
    inc d                                         ; $4294: $14
    dec d                                         ; $4295: $15
    nop                                           ; $4296: $00
    ld bc, $0101                                  ; $4297: $01 $01 $01
    ld bc, $0505                                  ; $429a: $01 $05 $05
    dec b                                         ; $429d: $05
    dec b                                         ; $429e: $05
    inc b                                         ; $429f: $04
    inc b                                         ; $42a0: $04
    inc b                                         ; $42a1: $04
    inc b                                         ; $42a2: $04
    inc b                                         ; $42a3: $04
    inc b                                         ; $42a4: $04
    inc b                                         ; $42a5: $04
    inc b                                         ; $42a6: $04
    jr nc, @+$66                                  ; $42a7: $30 $64

    ld h, l                                       ; $42a9: $65
    ld h, [hl]                                    ; $42aa: $66
    ld a, [de]                                    ; $42ab: $1a
    ld h, a                                       ; $42ac: $67
    ld l, b                                       ; $42ad: $68
    ld l, c                                       ; $42ae: $69
    ld e, $1f                                     ; $42af: $1e $1f
    inc l                                         ; $42b1: $2c
    jr z, jr_086_42c7                             ; $42b2: $28 $13

    inc d                                         ; $42b4: $14
    ld bc, $0102                                  ; $42b5: $01 $02 $01
    ld [bc], a                                    ; $42b8: $02
    ld [bc], a                                    ; $42b9: $02
    ld [bc], a                                    ; $42ba: $02
    dec b                                         ; $42bb: $05
    ld [bc], a                                    ; $42bc: $02
    ld [bc], a                                    ; $42bd: $02
    ld [bc], a                                    ; $42be: $02
    dec b                                         ; $42bf: $05
    dec b                                         ; $42c0: $05
    dec b                                         ; $42c1: $05
    dec b                                         ; $42c2: $05
    inc b                                         ; $42c3: $04
    inc b                                         ; $42c4: $04
    inc b                                         ; $42c5: $04
    inc b                                         ; $42c6: $04

jr_086_42c7:
    ld l, d                                       ; $42c7: $6a
    jp nc, $d1d1                                  ; $42c8: $d2 $d1 $d1

    ld d, [hl]                                    ; $42cb: $56
    jp nc, $d1d1                                  ; $42cc: $d2 $d1 $d1

    add hl, hl                                    ; $42cf: $29
    jp nc, $d1d1                                  ; $42d0: $d2 $d1 $d1

    inc c                                         ; $42d3: $0c
    jp nc, $d1d1                                  ; $42d4: $d2 $d1 $d1

    ld [bc], a                                    ; $42d7: $02
    add b                                         ; $42d8: $80
    add c                                         ; $42d9: $81
    ld bc, $8002                                  ; $42da: $01 $02 $80
    add c                                         ; $42dd: $81
    ld bc, $8005                                  ; $42de: $01 $05 $80
    add c                                         ; $42e1: $81
    ld bc, $8005                                  ; $42e2: $01 $05 $80
    add c                                         ; $42e5: $81
    ld bc, $3732                                  ; $42e6: $01 $32 $37
    inc l                                         ; $42e9: $2c
    jr z, jr_086_42f8                             ; $42ea: $28 $0c

    ld [$0201], sp                                ; $42ec: $08 $01 $02
    rrca                                          ; $42ef: $0f
    ld a, [hl+]                                   ; $42f0: $2a
    dec hl                                        ; $42f1: $2b
    ld [de], a                                    ; $42f2: $12
    inc de                                        ; $42f3: $13
    dec c                                         ; $42f4: $0d
    ld c, $00                                     ; $42f5: $0e $00
    inc b                                         ; $42f7: $04

jr_086_42f8:
    inc b                                         ; $42f8: $04
    inc b                                         ; $42f9: $04
    inc b                                         ; $42fa: $04
    inc b                                         ; $42fb: $04
    inc b                                         ; $42fc: $04
    inc b                                         ; $42fd: $04
    inc b                                         ; $42fe: $04
    inc b                                         ; $42ff: $04
    inc b                                         ; $4300: $04
    inc b                                         ; $4301: $04
    inc b                                         ; $4302: $04
    inc b                                         ; $4303: $04
    inc b                                         ; $4304: $04
    inc b                                         ; $4305: $04
    inc b                                         ; $4306: $04
    ld l, e                                       ; $4307: $6b
    inc bc                                        ; $4308: $03
    inc b                                         ; $4309: $04
    jr z, jr_086_4378                             ; $430a: $28 $6c

    ld b, $07                                     ; $430c: $06 $07
    ld [bc], a                                    ; $430e: $02
    rrca                                          ; $430f: $0f
    db $10                                        ; $4310: $10
    ld de, $1312                                  ; $4311: $11 $12 $13
    inc d                                         ; $4314: $14
    dec d                                         ; $4315: $15
    nop                                           ; $4316: $00
    inc b                                         ; $4317: $04
    inc b                                         ; $4318: $04
    inc b                                         ; $4319: $04
    inc b                                         ; $431a: $04
    inc b                                         ; $431b: $04
    inc b                                         ; $431c: $04
    inc b                                         ; $431d: $04
    inc b                                         ; $431e: $04
    inc b                                         ; $431f: $04
    inc b                                         ; $4320: $04
    inc b                                         ; $4321: $04
    inc b                                         ; $4322: $04
    inc b                                         ; $4323: $04
    inc b                                         ; $4324: $04
    inc b                                         ; $4325: $04
    inc b                                         ; $4326: $04
    add hl, hl                                    ; $4327: $29
    dec b                                         ; $4328: $05
    ld de, $0c2a                                  ; $4329: $11 $2a $0c
    ld [$0d15], sp                                ; $432c: $08 $15 $0d
    rrca                                          ; $432f: $0f
    db $10                                        ; $4330: $10
    inc l                                         ; $4331: $2c
    jr z, jr_086_4347                             ; $4332: $28 $13

    inc d                                         ; $4334: $14
    ld bc, $0402                                  ; $4335: $01 $02 $04
    inc b                                         ; $4338: $04
    inc b                                         ; $4339: $04
    inc b                                         ; $433a: $04
    inc b                                         ; $433b: $04
    inc b                                         ; $433c: $04
    inc b                                         ; $433d: $04
    inc b                                         ; $433e: $04
    inc b                                         ; $433f: $04
    inc b                                         ; $4340: $04
    inc b                                         ; $4341: $04
    inc b                                         ; $4342: $04
    inc b                                         ; $4343: $04
    inc b                                         ; $4344: $04
    inc b                                         ; $4345: $04
    inc b                                         ; $4346: $04

jr_086_4347:
    dec hl                                        ; $4347: $2b
    jp nc, $d1d1                                  ; $4348: $d2 $d1 $d1

    ld c, $d2                                     ; $434b: $0e $d2
    pop de                                        ; $434d: $d1
    pop de                                        ; $434e: $d1
    add hl, hl                                    ; $434f: $29
    jp nc, $d1d1                                  ; $4350: $d2 $d1 $d1

    inc c                                         ; $4353: $0c
    jp nc, $d1d1                                  ; $4354: $d2 $d1 $d1

    dec b                                         ; $4357: $05
    add b                                         ; $4358: $80
    add c                                         ; $4359: $81
    ld bc, $8005                                  ; $435a: $01 $05 $80
    add c                                         ; $435d: $81
    ld bc, $8005                                  ; $435e: $01 $05 $80
    add c                                         ; $4361: $81
    ld bc, $8005                                  ; $4362: $01 $05 $80
    add c                                         ; $4365: $81
    ld bc, $0529                                  ; $4366: $01 $29 $05
    inc l                                         ; $4369: $2c
    jr z, jr_086_4378                             ; $436a: $28 $0c

    ld [$0201], sp                                ; $436c: $08 $01 $02
    rrca                                          ; $436f: $0f
    db $10                                        ; $4370: $10
    ld [hl-], a                                   ; $4371: $32
    scf                                           ; $4372: $37
    inc de                                        ; $4373: $13
    inc d                                         ; $4374: $14
    dec d                                         ; $4375: $15
    nop                                           ; $4376: $00
    inc b                                         ; $4377: $04

jr_086_4378:
    inc b                                         ; $4378: $04
    inc b                                         ; $4379: $04
    inc b                                         ; $437a: $04
    inc b                                         ; $437b: $04
    inc b                                         ; $437c: $04
    inc b                                         ; $437d: $04
    dec b                                         ; $437e: $05
    inc b                                         ; $437f: $04
    inc b                                         ; $4380: $04
    inc b                                         ; $4381: $04
    dec b                                         ; $4382: $05
    inc b                                         ; $4383: $04
    inc b                                         ; $4384: $04
    inc b                                         ; $4385: $04
    dec b                                         ; $4386: $05
    ld l, l                                       ; $4387: $6d
    ld l, [hl]                                    ; $4388: $6e
    ld l, [hl]                                    ; $4389: $6e
    ld l, l                                       ; $438a: $6d
    ld l, a                                       ; $438b: $6f
    ld [hl], b                                    ; $438c: $70
    ld [hl], b                                    ; $438d: $70
    ld l, a                                       ; $438e: $6f
    ld [hl], c                                    ; $438f: $71
    ld [hl], d                                    ; $4390: $72
    ld [hl], e                                    ; $4391: $73
    ld [hl], h                                    ; $4392: $74
    ld [hl], l                                    ; $4393: $75
    halt                                          ; $4394: $76
    ld [hl], a                                    ; $4395: $77
    ld a, b                                       ; $4396: $78
    add c                                         ; $4397: $81
    add c                                         ; $4398: $81
    and c                                         ; $4399: $a1
    and c                                         ; $439a: $a1
    add c                                         ; $439b: $81
    add c                                         ; $439c: $81
    add c                                         ; $439d: $81
    and c                                         ; $439e: $a1
    ld bc, $0101                                  ; $439f: $01 $01 $01
    ld bc, $0101                                  ; $43a2: $01 $01 $01
    ld bc, $7901                                  ; $43a5: $01 $01 $79
    ld a, d                                       ; $43a8: $7a
    ld de, $7b12                                  ; $43a9: $11 $12 $7b
    ld a, h                                       ; $43ac: $7c
    dec d                                         ; $43ad: $15
    nop                                           ; $43ae: $00
    ld a, l                                       ; $43af: $7d
    ld a, [hl]                                    ; $43b0: $7e
    inc l                                         ; $43b1: $2c
    ld l, e                                       ; $43b2: $6b
    ld a, a                                       ; $43b3: $7f
    add b                                         ; $43b4: $80
    ld bc, $046c                                  ; $43b5: $01 $6c $04
    add [hl]                                      ; $43b8: $86
    inc b                                         ; $43b9: $04
    inc b                                         ; $43ba: $04
    add [hl]                                      ; $43bb: $86
    add [hl]                                      ; $43bc: $86
    inc b                                         ; $43bd: $04
    inc b                                         ; $43be: $04
    ld b, $06                                     ; $43bf: $06 $06
    inc b                                         ; $43c1: $04
    inc b                                         ; $43c2: $04
    ld b, $0e                                     ; $43c3: $06 $0e
    inc b                                         ; $43c5: $04
    inc b                                         ; $43c6: $04
    rrca                                          ; $43c7: $0f
    jp nc, $d1d1                                  ; $43c8: $d2 $d1 $d1

    inc de                                        ; $43cb: $13
    jp nc, $d1d1                                  ; $43cc: $d2 $d1 $d1

    inc bc                                        ; $43cf: $03
    jp nc, $d1d1                                  ; $43d0: $d2 $d1 $d1

    ld b, $d2                                     ; $43d3: $06 $d2
    pop de                                        ; $43d5: $d1
    pop de                                        ; $43d6: $d1
    dec b                                         ; $43d7: $05
    add b                                         ; $43d8: $80
    add c                                         ; $43d9: $81
    ld bc, $8005                                  ; $43da: $01 $05 $80
    add c                                         ; $43dd: $81
    ld bc, $8005                                  ; $43de: $01 $05 $80
    add c                                         ; $43e1: $81
    ld bc, $8005                                  ; $43e2: $01 $05 $80
    add c                                         ; $43e5: $81
    ld bc, $2ed1                                  ; $43e6: $01 $d1 $2e
    add c                                         ; $43e9: $81
    inc hl                                        ; $43ea: $23
    pop de                                        ; $43eb: $d1
    pop de                                        ; $43ec: $d1
    pop de                                        ; $43ed: $d1
    pop de                                        ; $43ee: $d1
    pop de                                        ; $43ef: $d1
    pop de                                        ; $43f0: $d1
    pop de                                        ; $43f1: $d1
    pop de                                        ; $43f2: $d1
    pop de                                        ; $43f3: $d1
    pop de                                        ; $43f4: $d1
    pop de                                        ; $43f5: $d1
    pop de                                        ; $43f6: $d1
    ld bc, $8880                                  ; $43f7: $01 $80 $88
    add b                                         ; $43fa: $80
    ld bc, $8181                                  ; $43fb: $01 $81 $81
    add c                                         ; $43fe: $81
    ld bc, $0101                                  ; $43ff: $01 $01 $01
    add c                                         ; $4402: $81
    ld bc, $0101                                  ; $4403: $01 $01 $01
    add c                                         ; $4406: $81
    add d                                         ; $4407: $82
    ld [de], a                                    ; $4408: $12
    rrca                                          ; $4409: $0f
    db $10                                        ; $440a: $10
    jp nc, Jump_000_132b                          ; $440b: $d2 $2b $13

    inc d                                         ; $440e: $14
    jp nc, $290e                                  ; $440f: $d2 $0e $29

    dec b                                         ; $4412: $05
    jp nc, Jump_000_0c02                          ; $4413: $d2 $02 $0c

    ld [hl-], a                                   ; $4416: $32
    adc b                                         ; $4417: $88
    inc b                                         ; $4418: $04
    inc b                                         ; $4419: $04
    inc b                                         ; $441a: $04
    add b                                         ; $441b: $80
    inc b                                         ; $441c: $04
    inc b                                         ; $441d: $04
    inc b                                         ; $441e: $04
    add b                                         ; $441f: $80
    dec b                                         ; $4420: $05
    inc b                                         ; $4421: $04
    inc b                                         ; $4422: $04
    add b                                         ; $4423: $80
    dec b                                         ; $4424: $05
    inc b                                         ; $4425: $04
    inc b                                         ; $4426: $04
    ld de, $2b2a                                  ; $4427: $11 $2a $2b
    db $10                                        ; $442a: $10
    dec d                                         ; $442b: $15
    dec c                                         ; $442c: $0d
    ld c, $14                                     ; $442d: $0e $14
    inc l                                         ; $442f: $2c
    jr z, jr_086_445b                             ; $4430: $28 $29

    dec b                                         ; $4432: $05
    scf                                           ; $4433: $37
    ld [bc], a                                    ; $4434: $02
    inc c                                         ; $4435: $0c
    ld [$0404], sp                                ; $4436: $08 $04 $04
    inc b                                         ; $4439: $04
    inc b                                         ; $443a: $04
    inc b                                         ; $443b: $04
    inc b                                         ; $443c: $04
    inc b                                         ; $443d: $04
    inc b                                         ; $443e: $04
    inc b                                         ; $443f: $04
    inc b                                         ; $4440: $04
    inc b                                         ; $4441: $04
    inc b                                         ; $4442: $04
    inc b                                         ; $4443: $04
    inc b                                         ; $4444: $04
    inc b                                         ; $4445: $04
    inc b                                         ; $4446: $04
    add hl, hl                                    ; $4447: $29
    dec b                                         ; $4448: $05
    rrca                                          ; $4449: $0f
    db $10                                        ; $444a: $10
    inc c                                         ; $444b: $0c
    ld [$142d], sp                                ; $444c: $08 $2d $14
    rrca                                          ; $444f: $0f
    db $10                                        ; $4450: $10
    inc sp                                        ; $4451: $33
    inc [hl]                                      ; $4452: $34
    inc de                                        ; $4453: $13
    inc d                                         ; $4454: $14
    dec [hl]                                      ; $4455: $35
    ld [hl], $04                                  ; $4456: $36 $04
    inc b                                         ; $4458: $04
    inc b                                         ; $4459: $04
    inc b                                         ; $445a: $04

jr_086_445b:
    inc b                                         ; $445b: $04
    inc b                                         ; $445c: $04
    add [hl]                                      ; $445d: $86
    inc b                                         ; $445e: $04
    inc b                                         ; $445f: $04
    inc b                                         ; $4460: $04
    ld b, $06                                     ; $4461: $06 $06
    inc b                                         ; $4463: $04
    inc b                                         ; $4464: $04
    ld b, $06                                     ; $4465: $06 $06
    jp nc, $0f12                                  ; $4467: $d2 $12 $0f

    db $10                                        ; $446a: $10
    jp nc, Jump_000_1300                          ; $446b: $d2 $00 $13

    inc d                                         ; $446e: $14
    jp nc, Jump_000_2928                          ; $446f: $d2 $28 $29

    dec b                                         ; $4472: $05
    jp nc, Jump_000_0c02                          ; $4473: $d2 $02 $0c

    ld [$0580], sp                                ; $4476: $08 $80 $05
    inc b                                         ; $4479: $04
    inc b                                         ; $447a: $04
    add b                                         ; $447b: $80
    dec b                                         ; $447c: $05
    inc b                                         ; $447d: $04
    inc b                                         ; $447e: $04
    add b                                         ; $447f: $80
    dec b                                         ; $4480: $05
    inc b                                         ; $4481: $04
    inc b                                         ; $4482: $04
    add b                                         ; $4483: $80
    dec b                                         ; $4484: $05
    inc b                                         ; $4485: $04
    inc b                                         ; $4486: $04
    ld de, $0f12                                  ; $4487: $11 $12 $0f
    db $10                                        ; $448a: $10
    inc e                                         ; $448b: $1c
    dec e                                         ; $448c: $1d
    inc de                                        ; $448d: $13
    inc d                                         ; $448e: $14
    jr nz, jr_086_44b2                            ; $448f: $20 $21

    cpl                                           ; $4491: $2f
    ld sp, $0201                                  ; $4492: $31 $01 $02
    ld a, [de]                                    ; $4495: $1a
    dec de                                        ; $4496: $1b
    inc b                                         ; $4497: $04
    inc b                                         ; $4498: $04
    inc b                                         ; $4499: $04
    inc b                                         ; $449a: $04
    inc b                                         ; $449b: $04
    inc b                                         ; $449c: $04
    inc b                                         ; $449d: $04
    inc b                                         ; $449e: $04
    inc b                                         ; $449f: $04
    inc b                                         ; $44a0: $04
    inc b                                         ; $44a1: $04
    inc b                                         ; $44a2: $04
    inc b                                         ; $44a3: $04
    inc b                                         ; $44a4: $04
    inc b                                         ; $44a5: $04
    inc b                                         ; $44a6: $04
    ld l, e                                       ; $44a7: $6b
    inc bc                                        ; $44a8: $03
    jr c, jr_086_44e4                             ; $44a9: $38 $39

    ld l, h                                       ; $44ab: $6c
    ld b, $07                                     ; $44ac: $06 $07
    ld [bc], a                                    ; $44ae: $02
    inc l                                         ; $44af: $2c
    jr z, jr_086_44db                             ; $44b0: $28 $29

jr_086_44b2:
    dec b                                         ; $44b2: $05
    ld bc, $0c02                                  ; $44b3: $01 $02 $0c
    ld [$0404], sp                                ; $44b6: $08 $04 $04
    ld b, $06                                     ; $44b9: $06 $06
    inc b                                         ; $44bb: $04
    inc b                                         ; $44bc: $04
    inc b                                         ; $44bd: $04
    inc b                                         ; $44be: $04
    inc b                                         ; $44bf: $04
    inc b                                         ; $44c0: $04
    inc b                                         ; $44c1: $04
    inc b                                         ; $44c2: $04
    inc b                                         ; $44c3: $04
    inc b                                         ; $44c4: $04
    inc b                                         ; $44c5: $04
    inc b                                         ; $44c6: $04
    jp nc, $0f12                                  ; $44c7: $d2 $12 $0f

    db $10                                        ; $44ca: $10
    jp nc, $0403                                  ; $44cb: $d2 $03 $04

    inc d                                         ; $44ce: $14
    jp nc, $0706                                  ; $44cf: $d2 $06 $07

    dec b                                         ; $44d2: $05
    jp nc, Jump_000_0c02                          ; $44d3: $d2 $02 $0c

    ld [$0580], sp                                ; $44d6: $08 $80 $05
    inc b                                         ; $44d9: $04
    inc b                                         ; $44da: $04

jr_086_44db:
    add b                                         ; $44db: $80
    dec b                                         ; $44dc: $05
    inc b                                         ; $44dd: $04
    inc b                                         ; $44de: $04
    add b                                         ; $44df: $80
    dec b                                         ; $44e0: $05
    inc b                                         ; $44e1: $04
    inc b                                         ; $44e2: $04
    add b                                         ; $44e3: $80

jr_086_44e4:
    dec b                                         ; $44e4: $05
    inc b                                         ; $44e5: $04
    inc b                                         ; $44e6: $04
    ld de, $8483                                  ; $44e7: $11 $83 $84
    add l                                         ; $44ea: $85
    dec d                                         ; $44eb: $15
    add [hl]                                      ; $44ec: $86
    add a                                         ; $44ed: $87
    adc b                                         ; $44ee: $88
    inc l                                         ; $44ef: $2c
    adc c                                         ; $44f0: $89
    adc d                                         ; $44f1: $8a
    adc e                                         ; $44f2: $8b
    ld bc, $8d8c                                  ; $44f3: $01 $8c $8d
    adc [hl]                                      ; $44f6: $8e
    inc b                                         ; $44f7: $04
    adc d                                         ; $44f8: $8a
    adc d                                         ; $44f9: $8a
    adc d                                         ; $44fa: $8a
    inc b                                         ; $44fb: $04
    adc d                                         ; $44fc: $8a
    adc d                                         ; $44fd: $8a
    adc d                                         ; $44fe: $8a
    inc b                                         ; $44ff: $04
    ld a, [bc]                                    ; $4500: $0a
    ld a, [bc]                                    ; $4501: $0a
    ld a, [bc]                                    ; $4502: $0a
    inc b                                         ; $4503: $04
    ld a, [bc]                                    ; $4504: $0a
    ld a, [bc]                                    ; $4505: $0a
    ld a, [bc]                                    ; $4506: $0a
    adc a                                         ; $4507: $8f
    sub b                                         ; $4508: $90
    add h                                         ; $4509: $84
    add l                                         ; $450a: $85
    sub c                                         ; $450b: $91
    sub d                                         ; $450c: $92
    add a                                         ; $450d: $87
    adc b                                         ; $450e: $88
    sub e                                         ; $450f: $93
    sub h                                         ; $4510: $94
    adc d                                         ; $4511: $8a
    adc e                                         ; $4512: $8b
    sub l                                         ; $4513: $95
    sub [hl]                                      ; $4514: $96
    adc l                                         ; $4515: $8d
    adc [hl]                                      ; $4516: $8e
    adc d                                         ; $4517: $8a
    adc d                                         ; $4518: $8a
    adc d                                         ; $4519: $8a
    adc d                                         ; $451a: $8a
    adc d                                         ; $451b: $8a
    adc d                                         ; $451c: $8a
    adc d                                         ; $451d: $8a
    adc d                                         ; $451e: $8a
    ld a, [bc]                                    ; $451f: $0a
    ld a, [bc]                                    ; $4520: $0a
    ld a, [bc]                                    ; $4521: $0a
    ld a, [bc]                                    ; $4522: $0a
    ld a, [bc]                                    ; $4523: $0a
    ld a, [bc]                                    ; $4524: $0a
    ld a, [bc]                                    ; $4525: $0a
    ld a, [bc]                                    ; $4526: $0a
    jp nc, $0f12                                  ; $4527: $d2 $12 $0f

    db $10                                        ; $452a: $10
    jp nc, Jump_000_1300                          ; $452b: $d2 $00 $13

    inc d                                         ; $452e: $14
    jp nc, $9897                                  ; $452f: $d2 $97 $98

    add hl, hl                                    ; $4532: $29
    jp nc, $9a99                                  ; $4533: $d2 $99 $9a

    sbc e                                         ; $4536: $9b
    add b                                         ; $4537: $80
    dec b                                         ; $4538: $05
    inc b                                         ; $4539: $04
    inc b                                         ; $453a: $04
    add b                                         ; $453b: $80
    dec b                                         ; $453c: $05
    inc b                                         ; $453d: $04
    inc b                                         ; $453e: $04
    add b                                         ; $453f: $80
    xor c                                         ; $4540: $a9
    adc [hl]                                      ; $4541: $8e
    inc b                                         ; $4542: $04
    add b                                         ; $4543: $80
    xor c                                         ; $4544: $a9
    adc [hl]                                      ; $4545: $8e
    adc a                                         ; $4546: $8f
    inc e                                         ; $4547: $1c
    sbc h                                         ; $4548: $9c
    sbc l                                         ; $4549: $9d
    sbc [hl]                                      ; $454a: $9e
    jr nz, jr_086_456e                            ; $454b: $20 $21

    inc de                                        ; $454d: $13
    inc d                                         ; $454e: $14
    dec b                                         ; $454f: $05
    inc l                                         ; $4550: $2c
    jr z, jr_086_457c                             ; $4551: $28 $29

    sbc a                                         ; $4553: $9f
    and b                                         ; $4554: $a0
    and c                                         ; $4555: $a1
    and d                                         ; $4556: $a2
    dec b                                         ; $4557: $05
    ld a, [bc]                                    ; $4558: $0a
    ld a, [bc]                                    ; $4559: $0a
    ld a, [bc]                                    ; $455a: $0a
    dec b                                         ; $455b: $05
    dec b                                         ; $455c: $05
    dec b                                         ; $455d: $05
    dec b                                         ; $455e: $05
    inc b                                         ; $455f: $04
    inc b                                         ; $4560: $04
    inc b                                         ; $4561: $04
    inc b                                         ; $4562: $04
    adc a                                         ; $4563: $8f
    adc a                                         ; $4564: $8f
    adc a                                         ; $4565: $8f
    adc a                                         ; $4566: $8f
    and e                                         ; $4567: $a3
    and h                                         ; $4568: $a4
    sbc l                                         ; $4569: $9d
    sbc [hl]                                      ; $456a: $9e
    inc l                                         ; $456b: $2c
    jr z, @+$2b                                   ; $456c: $28 $29

jr_086_456e:
    dec b                                         ; $456e: $05
    ld [hl-], a                                   ; $456f: $32
    scf                                           ; $4570: $37
    inc c                                         ; $4571: $0c
    ld [$1211], sp                                ; $4572: $08 $11 $12
    rrca                                          ; $4575: $0f
    db $10                                        ; $4576: $10
    ld a, [bc]                                    ; $4577: $0a
    ld a, [bc]                                    ; $4578: $0a
    ld a, [bc]                                    ; $4579: $0a
    ld a, [bc]                                    ; $457a: $0a
    dec b                                         ; $457b: $05

jr_086_457c:
    dec b                                         ; $457c: $05
    dec b                                         ; $457d: $05
    dec b                                         ; $457e: $05
    inc b                                         ; $457f: $04
    inc b                                         ; $4580: $04
    inc b                                         ; $4581: $04
    inc b                                         ; $4582: $04
    inc b                                         ; $4583: $04
    inc b                                         ; $4584: $04
    inc b                                         ; $4585: $04
    inc b                                         ; $4586: $04
    ld de, $2c12                                  ; $4587: $11 $12 $2c
    jr z, jr_086_45a1                             ; $458a: $28 $15

    nop                                           ; $458c: $00
    ld bc, $322f                                  ; $458d: $01 $2f $32
    scf                                           ; $4590: $37
    ld de, $011a                                  ; $4591: $11 $1a $01
    ld [bc], a                                    ; $4594: $02
    dec d                                         ; $4595: $15
    ld e, $04                                     ; $4596: $1e $04
    inc b                                         ; $4598: $04
    inc b                                         ; $4599: $04
    dec b                                         ; $459a: $05
    inc b                                         ; $459b: $04
    inc b                                         ; $459c: $04
    inc b                                         ; $459d: $04
    dec b                                         ; $459e: $05
    inc b                                         ; $459f: $04
    inc b                                         ; $45a0: $04

jr_086_45a1:
    inc b                                         ; $45a1: $04
    dec b                                         ; $45a2: $05
    inc b                                         ; $45a3: $04
    inc b                                         ; $45a4: $04
    inc b                                         ; $45a5: $04
    dec b                                         ; $45a6: $05
    and l                                         ; $45a7: $a5
    and [hl]                                      ; $45a8: $a6
    and [hl]                                      ; $45a9: $a6
    and l                                         ; $45aa: $a5
    and a                                         ; $45ab: $a7
    xor b                                         ; $45ac: $a8
    xor c                                         ; $45ad: $a9
    xor d                                         ; $45ae: $aa
    xor e                                         ; $45af: $ab
    xor h                                         ; $45b0: $ac
    xor h                                         ; $45b1: $ac
    xor l                                         ; $45b2: $ad
    rra                                           ; $45b3: $1f
    inc d                                         ; $45b4: $14
    dec d                                         ; $45b5: $15
    nop                                           ; $45b6: $00
    add hl, bc                                    ; $45b7: $09
    add hl, bc                                    ; $45b8: $09
    add hl, hl                                    ; $45b9: $29
    add hl, hl                                    ; $45ba: $29
    add hl, bc                                    ; $45bb: $09
    add hl, bc                                    ; $45bc: $09
    add hl, bc                                    ; $45bd: $09
    add hl, bc                                    ; $45be: $09
    add hl, bc                                    ; $45bf: $09
    add hl, bc                                    ; $45c0: $09
    add hl, bc                                    ; $45c1: $09
    add hl, bc                                    ; $45c2: $09
    dec b                                         ; $45c3: $05
    dec b                                         ; $45c4: $05
    dec b                                         ; $45c5: $05
    dec b                                         ; $45c6: $05
    xor [hl]                                      ; $45c7: $ae
    xor a                                         ; $45c8: $af
    ld de, $7912                                  ; $45c9: $11 $12 $79
    ld a, c                                       ; $45cc: $79
    dec d                                         ; $45cd: $15
    nop                                           ; $45ce: $00
    rrca                                          ; $45cf: $0f
    db $10                                        ; $45d0: $10
    inc e                                         ; $45d1: $1c
    dec e                                         ; $45d2: $1d
    inc de                                        ; $45d3: $13
    inc d                                         ; $45d4: $14
    jr nz, jr_086_45f8                            ; $45d5: $20 $21

    ld c, $0e                                     ; $45d7: $0e $0e
    inc b                                         ; $45d9: $04
    inc b                                         ; $45da: $04
    inc b                                         ; $45db: $04
    inc b                                         ; $45dc: $04
    inc b                                         ; $45dd: $04
    inc b                                         ; $45de: $04
    inc b                                         ; $45df: $04
    inc b                                         ; $45e0: $04
    inc b                                         ; $45e1: $04
    inc b                                         ; $45e2: $04
    inc b                                         ; $45e3: $04
    inc b                                         ; $45e4: $04
    inc b                                         ; $45e5: $04
    inc b                                         ; $45e6: $04
    rrca                                          ; $45e7: $0f
    jp nc, $d1d1                                  ; $45e8: $d2 $d1 $d1

    inc de                                        ; $45eb: $13
    jp nc, $d1d1                                  ; $45ec: $d2 $d1 $d1

    add hl, hl                                    ; $45ef: $29
    jp nc, $d1d1                                  ; $45f0: $d2 $d1 $d1

    inc c                                         ; $45f3: $0c
    jp nc, $d1d1                                  ; $45f4: $d2 $d1 $d1

    dec b                                         ; $45f7: $05

jr_086_45f8:
    add b                                         ; $45f8: $80
    add c                                         ; $45f9: $81
    ld bc, $8005                                  ; $45fa: $01 $05 $80
    add c                                         ; $45fd: $81
    ld bc, $8005                                  ; $45fe: $01 $05 $80
    add c                                         ; $4601: $81
    ld bc, $8005                                  ; $4602: $01 $05 $80
    add c                                         ; $4605: $81
    ld bc, $0529                                  ; $4606: $01 $29 $05
    inc l                                         ; $4609: $2c
    jr z, jr_086_4618                             ; $460a: $28 $0c

    ld l, e                                       ; $460c: $6b
    inc bc                                        ; $460d: $03
    inc b                                         ; $460e: $04
    rrca                                          ; $460f: $0f
    ld l, h                                       ; $4610: $6c
    ld b, $07                                     ; $4611: $06 $07
    inc de                                        ; $4613: $13
    inc d                                         ; $4614: $14
    dec d                                         ; $4615: $15
    nop                                           ; $4616: $00
    inc b                                         ; $4617: $04

jr_086_4618:
    inc b                                         ; $4618: $04
    inc b                                         ; $4619: $04
    inc b                                         ; $461a: $04
    inc b                                         ; $461b: $04
    inc b                                         ; $461c: $04
    inc b                                         ; $461d: $04
    inc b                                         ; $461e: $04
    inc b                                         ; $461f: $04
    inc b                                         ; $4620: $04
    inc b                                         ; $4621: $04
    inc b                                         ; $4622: $04
    inc b                                         ; $4623: $04
    inc b                                         ; $4624: $04
    inc b                                         ; $4625: $04
    inc b                                         ; $4626: $04
    add hl, hl                                    ; $4627: $29
    dec b                                         ; $4628: $05
    inc l                                         ; $4629: $2c
    jr z, jr_086_4638                             ; $462a: $28 $0c

    ld [$b001], sp                                ; $462c: $08 $01 $b0
    rrca                                          ; $462f: $0f
    db $10                                        ; $4630: $10
    ld de, $13b1                                  ; $4631: $11 $b1 $13
    ld [hl-], a                                   ; $4634: $32
    scf                                           ; $4635: $37
    or d                                          ; $4636: $b2
    inc b                                         ; $4637: $04

jr_086_4638:
    inc b                                         ; $4638: $04
    inc b                                         ; $4639: $04
    inc b                                         ; $463a: $04
    inc b                                         ; $463b: $04
    inc b                                         ; $463c: $04
    inc b                                         ; $463d: $04
    adc [hl]                                      ; $463e: $8e
    inc b                                         ; $463f: $04
    inc b                                         ; $4640: $04
    inc b                                         ; $4641: $04
    adc [hl]                                      ; $4642: $8e
    inc b                                         ; $4643: $04
    inc b                                         ; $4644: $04
    inc b                                         ; $4645: $04
    adc [hl]                                      ; $4646: $8e
    add hl, hl                                    ; $4647: $29
    dec b                                         ; $4648: $05
    ld a, c                                       ; $4649: $79
    nop                                           ; $464a: $00
    or e                                          ; $464b: $b3
    or h                                          ; $464c: $b4
    or l                                          ; $464d: $b5
    ld bc, $b7b6                                  ; $464e: $01 $b6 $b7
    cp b                                          ; $4651: $b8
    ld bc, $bab9                                  ; $4652: $01 $b9 $ba
    cp e                                          ; $4655: $bb
    ld de, $0404                                  ; $4656: $11 $04 $04
    inc b                                         ; $4659: $04
    inc b                                         ; $465a: $04
    adc [hl]                                      ; $465b: $8e
    adc [hl]                                      ; $465c: $8e
    adc [hl]                                      ; $465d: $8e
    inc b                                         ; $465e: $04
    adc [hl]                                      ; $465f: $8e
    adc [hl]                                      ; $4660: $8e
    adc [hl]                                      ; $4661: $8e
    inc b                                         ; $4662: $04
    adc [hl]                                      ; $4663: $8e
    adc [hl]                                      ; $4664: $8e
    adc [hl]                                      ; $4665: $8e
    inc b                                         ; $4666: $04
    ld a, c                                       ; $4667: $79
    jp nc, $d1d1                                  ; $4668: $d2 $d1 $d1

    ld l, e                                       ; $466b: $6b
    jp nc, $d1d1                                  ; $466c: $d2 $d1 $d1

    ld l, h                                       ; $466f: $6c
    jp nc, $d1d1                                  ; $4670: $d2 $d1 $d1

    ld [$d1d2], sp                                ; $4673: $08 $d2 $d1
    pop de                                        ; $4676: $d1
    dec b                                         ; $4677: $05
    add b                                         ; $4678: $80
    add c                                         ; $4679: $81
    ld bc, $8005                                  ; $467a: $01 $05 $80
    add c                                         ; $467d: $81
    ld bc, $8005                                  ; $467e: $01 $05 $80
    add c                                         ; $4681: $81
    ld bc, $8005                                  ; $4682: $01 $05 $80
    add c                                         ; $4685: $81
    ld bc, $d28f                                  ; $4686: $01 $8f $d2
    pop de                                        ; $4689: $d1
    pop de                                        ; $468a: $d1
    sub c                                         ; $468b: $91
    jp nc, $d1d1                                  ; $468c: $d2 $d1 $d1

    sub e                                         ; $468f: $93
    jp nc, $d1d1                                  ; $4690: $d2 $d1 $d1

    sub l                                         ; $4693: $95
    jp nc, $d1d1                                  ; $4694: $d2 $d1 $d1

    adc d                                         ; $4697: $8a
    add b                                         ; $4698: $80
    add c                                         ; $4699: $81
    ld bc, $808a                                  ; $469a: $01 $8a $80
    add c                                         ; $469d: $81
    ld bc, $800a                                  ; $469e: $01 $0a $80
    add c                                         ; $46a1: $81
    ld bc, $800a                                  ; $46a2: $01 $0a $80
    add c                                         ; $46a5: $81
    ld bc, $a4a3                                  ; $46a6: $01 $a3 $a4
    sbc l                                         ; $46a9: $9d
    sbc [hl]                                      ; $46aa: $9e
    inc l                                         ; $46ab: $2c
    jr z, jr_086_46d7                             ; $46ac: $28 $29

    jr nz, @+$6d                                  ; $46ae: $20 $6b

    inc bc                                        ; $46b0: $03
    inc b                                         ; $46b1: $04
    ld [$066c], sp                                ; $46b2: $08 $6c $06
    rlca                                          ; $46b5: $07
    db $10                                        ; $46b6: $10
    ld a, [bc]                                    ; $46b7: $0a
    ld a, [bc]                                    ; $46b8: $0a
    ld a, [bc]                                    ; $46b9: $0a
    ld a, [bc]                                    ; $46ba: $0a
    dec b                                         ; $46bb: $05
    dec b                                         ; $46bc: $05
    dec b                                         ; $46bd: $05
    dec b                                         ; $46be: $05
    inc b                                         ; $46bf: $04
    inc b                                         ; $46c0: $04
    inc b                                         ; $46c1: $04
    inc b                                         ; $46c2: $04
    inc b                                         ; $46c3: $04
    inc b                                         ; $46c4: $04
    inc b                                         ; $46c5: $04
    inc b                                         ; $46c6: $04
    and e                                         ; $46c7: $a3
    and h                                         ; $46c8: $a4
    sbc l                                         ; $46c9: $9d
    sbc [hl]                                      ; $46ca: $9e
    ld hl, $2928                                  ; $46cb: $21 $28 $29
    ld a, [de]                                    ; $46ce: $1a
    ld bc, $0c02                                  ; $46cf: $01 $02 $0c
    ld e, $11                                     ; $46d2: $1e $11
    ld [de], a                                    ; $46d4: $12
    rrca                                          ; $46d5: $0f
    db $10                                        ; $46d6: $10

jr_086_46d7:
    ld a, [bc]                                    ; $46d7: $0a
    ld a, [bc]                                    ; $46d8: $0a
    ld a, [bc]                                    ; $46d9: $0a
    ld a, [bc]                                    ; $46da: $0a
    dec b                                         ; $46db: $05
    dec b                                         ; $46dc: $05
    dec b                                         ; $46dd: $05
    dec b                                         ; $46de: $05
    inc b                                         ; $46df: $04
    inc b                                         ; $46e0: $04
    inc b                                         ; $46e1: $04
    inc b                                         ; $46e2: $04
    inc b                                         ; $46e3: $04
    inc b                                         ; $46e4: $04
    inc b                                         ; $46e5: $04
    inc b                                         ; $46e6: $04
    and e                                         ; $46e7: $a3
    sub a                                         ; $46e8: $97
    cp h                                          ; $46e9: $bc
    cp l                                          ; $46ea: $bd
    dec de                                        ; $46eb: $1b
    sbc c                                         ; $46ec: $99
    cp [hl]                                       ; $46ed: $be
    cp a                                          ; $46ee: $bf
    rra                                           ; $46ef: $1f
    ret nz                                        ; $46f0: $c0

    pop bc                                        ; $46f1: $c1
    jp nz, $c311                                  ; $46f2: $c2 $11 $c3

    call nz, Call_000_0ac5                        ; $46f5: $c4 $c5 $0a
    add hl, bc                                    ; $46f8: $09
    add hl, bc                                    ; $46f9: $09
    add hl, bc                                    ; $46fa: $09
    dec b                                         ; $46fb: $05
    add hl, bc                                    ; $46fc: $09
    add hl, bc                                    ; $46fd: $09
    add hl, bc                                    ; $46fe: $09
    inc b                                         ; $46ff: $04
    add hl, bc                                    ; $4700: $09
    add hl, bc                                    ; $4701: $09
    add hl, bc                                    ; $4702: $09
    dec b                                         ; $4703: $05
    add hl, bc                                    ; $4704: $09
    add hl, bc                                    ; $4705: $09
    add hl, bc                                    ; $4706: $09
    add $d2                                       ; $4707: $c6 $d2
    pop de                                        ; $4709: $d1
    pop de                                        ; $470a: $d1
    rst $00                                       ; $470b: $c7
    jp nc, $d1d1                                  ; $470c: $d2 $d1 $d1

    ret z                                         ; $470f: $c8

    jp nc, $d1d1                                  ; $4710: $d2 $d1 $d1

    ret                                           ; $4713: $c9


    jp nc, $d1d1                                  ; $4714: $d2 $d1 $d1

    add hl, bc                                    ; $4717: $09
    add b                                         ; $4718: $80
    add c                                         ; $4719: $81
    ld bc, $8009                                  ; $471a: $01 $09 $80
    add c                                         ; $471d: $81
    ld bc, $8009                                  ; $471e: $01 $09 $80
    add c                                         ; $4721: $81
    ld bc, $8009                                  ; $4722: $01 $09 $80
    add c                                         ; $4725: $81
    ld bc, $c0d2                                  ; $4726: $01 $d2 $c0
    jp z, $d2cb                                   ; $4729: $ca $cb $d2

    ret nz                                        ; $472c: $c0

    sbc d                                         ; $472d: $9a
    call z, Call_000_2381                         ; $472e: $cc $81 $23
    inc hl                                        ; $4731: $23
    inc hl                                        ; $4732: $23
    pop de                                        ; $4733: $d1
    pop de                                        ; $4734: $d1
    pop de                                        ; $4735: $d1
    pop de                                        ; $4736: $d1
    add b                                         ; $4737: $80
    xor c                                         ; $4738: $a9
    adc [hl]                                      ; $4739: $8e
    adc a                                         ; $473a: $8f
    add b                                         ; $473b: $80
    add hl, hl                                    ; $473c: $29
    ld c, $0f                                     ; $473d: $0e $0f
    adc b                                         ; $473f: $88
    add b                                         ; $4740: $80
    add b                                         ; $4741: $80
    add b                                         ; $4742: $80
    add c                                         ; $4743: $81
    add c                                         ; $4744: $81
    add c                                         ; $4745: $81
    add c                                         ; $4746: $81
    call $cfce                                    ; $4747: $cd $ce $cf
    ret nc                                        ; $474a: $d0

    pop de                                        ; $474b: $d1
    jp nc, $d4d3                                  ; $474c: $d2 $d3 $d4

    inc hl                                        ; $474f: $23
    inc hl                                        ; $4750: $23
    inc hl                                        ; $4751: $23
    inc hl                                        ; $4752: $23
    pop de                                        ; $4753: $d1
    pop de                                        ; $4754: $d1
    pop de                                        ; $4755: $d1
    pop de                                        ; $4756: $d1
    adc a                                         ; $4757: $8f
    adc a                                         ; $4758: $8f
    adc a                                         ; $4759: $8f
    adc a                                         ; $475a: $8f
    rrca                                          ; $475b: $0f
    rrca                                          ; $475c: $0f
    rrca                                          ; $475d: $0f
    rrca                                          ; $475e: $0f
    add b                                         ; $475f: $80
    add b                                         ; $4760: $80
    add b                                         ; $4761: $80
    add b                                         ; $4762: $80
    add c                                         ; $4763: $81
    add c                                         ; $4764: $81
    add c                                         ; $4765: $81
    add c                                         ; $4766: $81
    dec d                                         ; $4767: $15
    nop                                           ; $4768: $00
    inc de                                        ; $4769: $13
    cpl                                           ; $476a: $2f
    dec hl                                        ; $476b: $2b
    jr z, jr_086_4797                             ; $476c: $28 $29

    ld a, [de]                                    ; $476e: $1a
    inc hl                                        ; $476f: $23
    inc hl                                        ; $4770: $23
    inc hl                                        ; $4771: $23
    inc hl                                        ; $4772: $23
    pop de                                        ; $4773: $d1
    pop de                                        ; $4774: $d1
    pop de                                        ; $4775: $d1
    pop de                                        ; $4776: $d1
    dec b                                         ; $4777: $05
    inc b                                         ; $4778: $04
    inc b                                         ; $4779: $04
    inc b                                         ; $477a: $04
    dec b                                         ; $477b: $05
    inc b                                         ; $477c: $04
    inc b                                         ; $477d: $04
    inc b                                         ; $477e: $04
    add b                                         ; $477f: $80
    add b                                         ; $4780: $80
    add b                                         ; $4781: $80
    add b                                         ; $4782: $80
    add c                                         ; $4783: $81
    add c                                         ; $4784: $81
    add c                                         ; $4785: $81
    add c                                         ; $4786: $81
    ld sp, $1300                                  ; $4787: $31 $00 $13
    inc d                                         ; $478a: $14
    dec de                                        ; $478b: $1b
    jr z, jr_086_47b7                             ; $478c: $28 $29

    dec b                                         ; $478e: $05
    inc hl                                        ; $478f: $23
    inc hl                                        ; $4790: $23
    inc hl                                        ; $4791: $23
    inc hl                                        ; $4792: $23
    pop de                                        ; $4793: $d1
    pop de                                        ; $4794: $d1
    pop de                                        ; $4795: $d1
    pop de                                        ; $4796: $d1

jr_086_4797:
    inc b                                         ; $4797: $04
    inc b                                         ; $4798: $04
    inc b                                         ; $4799: $04
    inc b                                         ; $479a: $04
    inc b                                         ; $479b: $04
    inc b                                         ; $479c: $04
    inc b                                         ; $479d: $04
    inc b                                         ; $479e: $04
    add b                                         ; $479f: $80
    add b                                         ; $47a0: $80
    add b                                         ; $47a1: $80
    add b                                         ; $47a2: $80
    add c                                         ; $47a3: $81
    add c                                         ; $47a4: $81
    add c                                         ; $47a5: $81
    add c                                         ; $47a6: $81
    dec d                                         ; $47a7: $15
    nop                                           ; $47a8: $00
    inc de                                        ; $47a9: $13
    inc d                                         ; $47aa: $14
    ld l, e                                       ; $47ab: $6b
    inc bc                                        ; $47ac: $03
    inc b                                         ; $47ad: $04
    dec b                                         ; $47ae: $05
    inc hl                                        ; $47af: $23
    inc hl                                        ; $47b0: $23
    inc hl                                        ; $47b1: $23
    inc hl                                        ; $47b2: $23
    pop de                                        ; $47b3: $d1
    pop de                                        ; $47b4: $d1
    pop de                                        ; $47b5: $d1
    pop de                                        ; $47b6: $d1

jr_086_47b7:
    inc b                                         ; $47b7: $04
    inc b                                         ; $47b8: $04
    inc b                                         ; $47b9: $04
    inc b                                         ; $47ba: $04
    inc b                                         ; $47bb: $04
    inc b                                         ; $47bc: $04
    inc b                                         ; $47bd: $04
    inc b                                         ; $47be: $04
    add b                                         ; $47bf: $80
    add b                                         ; $47c0: $80
    add b                                         ; $47c1: $80
    add b                                         ; $47c2: $80
    add c                                         ; $47c3: $81
    add c                                         ; $47c4: $81
    add c                                         ; $47c5: $81
    add c                                         ; $47c6: $81
    ld [hl-], a                                   ; $47c7: $32
    push de                                       ; $47c8: $d5
    sub $d7                                       ; $47c9: $d6 $d7
    inc l                                         ; $47cb: $2c
    ret c                                         ; $47cc: $d8

    reti                                          ; $47cd: $d9


    jp c, Jump_000_2323                           ; $47ce: $da $23 $23

    inc hl                                        ; $47d1: $23
    inc hl                                        ; $47d2: $23
    pop de                                        ; $47d3: $d1
    pop de                                        ; $47d4: $d1
    pop de                                        ; $47d5: $d1
    pop de                                        ; $47d6: $d1
    dec b                                         ; $47d7: $05
    add hl, bc                                    ; $47d8: $09
    add hl, bc                                    ; $47d9: $09
    add hl, bc                                    ; $47da: $09
    dec b                                         ; $47db: $05
    add hl, bc                                    ; $47dc: $09
    add hl, bc                                    ; $47dd: $09
    add hl, bc                                    ; $47de: $09
    add b                                         ; $47df: $80
    add b                                         ; $47e0: $80
    add b                                         ; $47e1: $80
    add b                                         ; $47e2: $80
    add c                                         ; $47e3: $81
    add c                                         ; $47e4: $81
    add c                                         ; $47e5: $81
    add c                                         ; $47e6: $81
    db $db                                        ; $47e7: $db
    jp nc, $d1d1                                  ; $47e8: $d2 $d1 $d1

    call c, $d1d2                                 ; $47eb: $dc $d2 $d1
    pop de                                        ; $47ee: $d1
    inc hl                                        ; $47ef: $23
    daa                                           ; $47f0: $27
    pop de                                        ; $47f1: $d1
    pop de                                        ; $47f2: $d1
    pop de                                        ; $47f3: $d1
    pop de                                        ; $47f4: $d1
    pop de                                        ; $47f5: $d1
    pop de                                        ; $47f6: $d1
    add hl, bc                                    ; $47f7: $09
    add b                                         ; $47f8: $80
    add c                                         ; $47f9: $81
    ld bc, $8009                                  ; $47fa: $01 $09 $80
    add c                                         ; $47fd: $81
    ld bc, $8080                                  ; $47fe: $01 $80 $80
    add c                                         ; $4801: $81
    ld bc, $8181                                  ; $4802: $01 $81 $81
    add c                                         ; $4805: $81
    ld bc, $000b                                  ; $4806: $01 $0b $00
    ld a, [bc]                                    ; $4809: $0a
    nop                                           ; $480a: $00
    nop                                           ; $480b: $00
    add hl, bc                                    ; $480c: $09
    pop de                                        ; $480d: $d1
    jp nc, $d4d3                                  ; $480e: $d2 $d3 $d4

    pop de                                        ; $4811: $d1
    jp nc, $d6d5                                  ; $4812: $d2 $d5 $d6

    pop de                                        ; $4815: $d1
    jp nc, $d8d7                                  ; $4816: $d2 $d7 $d8

    pop de                                        ; $4819: $d1
    jp nc, $dad9                                  ; $481a: $d2 $d9 $da

    add b                                         ; $481d: $80
    add b                                         ; $481e: $80
    ld [bc], a                                    ; $481f: $02
    ld [bc], a                                    ; $4820: $02
    add b                                         ; $4821: $80
    add b                                         ; $4822: $80
    ld [bc], a                                    ; $4823: $02
    ld [bc], a                                    ; $4824: $02
    add b                                         ; $4825: $80
    add b                                         ; $4826: $80
    ld [bc], a                                    ; $4827: $02
    ld [bc], a                                    ; $4828: $02
    add b                                         ; $4829: $80
    add b                                         ; $482a: $80
    ld [bc], a                                    ; $482b: $02
    ld [bc], a                                    ; $482c: $02
    db $db                                        ; $482d: $db
    call c, $dedd                                 ; $482e: $dc $dd $de
    rst $18                                       ; $4831: $df
    ldh [$e1], a                                  ; $4832: $e0 $e1
    ld [c], a                                     ; $4834: $e2
    db $e3                                        ; $4835: $e3
    db $e4                                        ; $4836: $e4
    push hl                                       ; $4837: $e5
    and $e7                                       ; $4838: $e6 $e7
    add sp, -$17                                  ; $483a: $e8 $e9
    ld [$0202], a                                 ; $483c: $ea $02 $02
    ld [bc], a                                    ; $483f: $02
    ld [bc], a                                    ; $4840: $02
    ld [bc], a                                    ; $4841: $02
    ld [bc], a                                    ; $4842: $02
    ld [bc], a                                    ; $4843: $02
    ld [bc], a                                    ; $4844: $02
    ld [bc], a                                    ; $4845: $02
    ld [bc], a                                    ; $4846: $02
    ld [bc], a                                    ; $4847: $02
    ld [bc], a                                    ; $4848: $02
    ld [bc], a                                    ; $4849: $02
    ld [bc], a                                    ; $484a: $02
    ld [bc], a                                    ; $484b: $02
    ld [bc], a                                    ; $484c: $02
    db $d3                                        ; $484d: $d3
    call nc, $dcdb                                ; $484e: $d4 $db $dc
    db $eb                                        ; $4851: $eb
    db $ec                                        ; $4852: $ec
    db $ed                                        ; $4853: $ed
    xor $ef                                       ; $4854: $ee $ef
    and $e6                                       ; $4856: $e6 $e6
    and $f0                                       ; $4858: $e6 $f0
    pop af                                        ; $485a: $f1
    ld a, [c]                                     ; $485b: $f2
    di                                            ; $485c: $f3
    ld [bc], a                                    ; $485d: $02
    ld [bc], a                                    ; $485e: $02
    ld [bc], a                                    ; $485f: $02
    ld [bc], a                                    ; $4860: $02
    ld [bc], a                                    ; $4861: $02
    ld [bc], a                                    ; $4862: $02
    ld [bc], a                                    ; $4863: $02
    ld [bc], a                                    ; $4864: $02
    ld [bc], a                                    ; $4865: $02
    ld [bc], a                                    ; $4866: $02
    ld [bc], a                                    ; $4867: $02
    ld [bc], a                                    ; $4868: $02
    ld [bc], a                                    ; $4869: $02
    ld [bc], a                                    ; $486a: $02
    ld [bc], a                                    ; $486b: $02
    ld [bc], a                                    ; $486c: $02
    db $dd                                        ; $486d: $dd
    sbc $d3                                       ; $486e: $de $d3
    call nc, $f5f4                                ; $4870: $d4 $f4 $f5
    or $f7                                        ; $4873: $f6 $f7
    and $f8                                       ; $4875: $e6 $f8
    ld sp, hl                                     ; $4877: $f9
    ld a, [$fbe6]                                 ; $4878: $fa $e6 $fb
    db $fc                                        ; $487b: $fc
    db $fd                                        ; $487c: $fd
    ld [bc], a                                    ; $487d: $02
    ld [bc], a                                    ; $487e: $02
    ld [bc], a                                    ; $487f: $02
    ld [bc], a                                    ; $4880: $02
    ld [bc], a                                    ; $4881: $02
    ld bc, $0101                                  ; $4882: $01 $01 $01
    ld [bc], a                                    ; $4885: $02
    ld bc, $0101                                  ; $4886: $01 $01 $01
    ld [bc], a                                    ; $4889: $02
    ld bc, $0101                                  ; $488a: $01 $01 $01
    pop de                                        ; $488d: $d1
    jp nc, $fffe                                  ; $488e: $d2 $fe $ff

    pop de                                        ; $4891: $d1
    jp nc, $0100                                  ; $4892: $d2 $00 $01

    pop de                                        ; $4895: $d1
    jp nc, Jump_000_0302                          ; $4896: $d2 $02 $03

    pop de                                        ; $4899: $d1
    jp nc, $0504                                  ; $489a: $d2 $04 $05

    add b                                         ; $489d: $80
    add b                                         ; $489e: $80
    ld [bc], a                                    ; $489f: $02
    ld [bc], a                                    ; $48a0: $02
    add b                                         ; $48a1: $80
    add b                                         ; $48a2: $80
    ld [bc], a                                    ; $48a3: $02
    ld [bc], a                                    ; $48a4: $02
    add b                                         ; $48a5: $80
    add b                                         ; $48a6: $80
    ld [bc], a                                    ; $48a7: $02
    ld [bc], a                                    ; $48a8: $02
    add b                                         ; $48a9: $80
    add b                                         ; $48aa: $80
    rlca                                          ; $48ab: $07
    rlca                                          ; $48ac: $07
    ld b, $07                                     ; $48ad: $06 $07
    ld [$0a09], sp                                ; $48af: $08 $09 $0a
    dec bc                                        ; $48b2: $0b
    inc c                                         ; $48b3: $0c
    dec c                                         ; $48b4: $0d
    ld c, $0f                                     ; $48b5: $0e $0f
    db $10                                        ; $48b7: $10
    ld de, $1312                                  ; $48b8: $11 $12 $13
    inc d                                         ; $48bb: $14
    dec d                                         ; $48bc: $15
    ld [bc], a                                    ; $48bd: $02
    ld [bc], a                                    ; $48be: $02
    ld [bc], a                                    ; $48bf: $02
    ld [bc], a                                    ; $48c0: $02
    ld [bc], a                                    ; $48c1: $02
    ld [bc], a                                    ; $48c2: $02
    ld [bc], a                                    ; $48c3: $02
    ld [bc], a                                    ; $48c4: $02
    ld [bc], a                                    ; $48c5: $02
    ld [bc], a                                    ; $48c6: $02
    ld [bc], a                                    ; $48c7: $02
    ld [bc], a                                    ; $48c8: $02
    rlca                                          ; $48c9: $07
    rlca                                          ; $48ca: $07
    rlca                                          ; $48cb: $07
    rlca                                          ; $48cc: $07
    ld d, $17                                     ; $48cd: $16 $17
    push af                                       ; $48cf: $f5
    or $18                                        ; $48d0: $f6 $18
    add hl, de                                    ; $48d2: $19
    ld hl, sp-$07                                 ; $48d3: $f8 $f9
    ld [bc], a                                    ; $48d5: $02
    inc bc                                        ; $48d6: $03
    ei                                            ; $48d7: $fb
    db $fc                                        ; $48d8: $fc
    ld a, [de]                                    ; $48d9: $1a
    dec de                                        ; $48da: $1b
    inc e                                         ; $48db: $1c
    dec e                                         ; $48dc: $1d
    ld [bc], a                                    ; $48dd: $02
    ld [bc], a                                    ; $48de: $02
    ld bc, $0201                                  ; $48df: $01 $01 $02
    ld [bc], a                                    ; $48e2: $02
    ld bc, $0201                                  ; $48e3: $01 $01 $02
    ld [bc], a                                    ; $48e6: $02
    ld bc, $0701                                  ; $48e7: $01 $01 $07
    rlca                                          ; $48ea: $07
    ld bc, $f701                                  ; $48eb: $01 $01 $f7
    inc e                                         ; $48ee: $1c
    dec e                                         ; $48ef: $1d
    ld e, $fa                                     ; $48f0: $1e $fa
    rra                                           ; $48f2: $1f
    jr nz, jr_086_4916                            ; $48f3: $20 $21

    db $fd                                        ; $48f5: $fd
    ld [hl+], a                                   ; $48f6: $22
    inc hl                                        ; $48f7: $23
    inc h                                         ; $48f8: $24
    ld e, $f5                                     ; $48f9: $1e $f5
    or $f7                                        ; $48fb: $f6 $f7
    ld bc, $0101                                  ; $48fd: $01 $01 $01
    ld bc, $0101                                  ; $4900: $01 $01 $01
    ld bc, $0101                                  ; $4903: $01 $01 $01
    ld bc, $0101                                  ; $4906: $01 $01 $01
    ld bc, $0101                                  ; $4909: $01 $01 $01
    ld bc, $d2d1                                  ; $490c: $01 $d1 $d2
    dec h                                         ; $490f: $25
    ld h, $d1                                     ; $4910: $26 $d1
    jp nc, $2827                                  ; $4912: $d2 $27 $28

    pop de                                        ; $4915: $d1

jr_086_4916:
    jp nc, $2a29                                  ; $4916: $d2 $29 $2a

    pop de                                        ; $4919: $d1
    jp nc, $2c2b                                  ; $491a: $d2 $2b $2c

    add b                                         ; $491d: $80
    add b                                         ; $491e: $80
    ld bc, $8001                                  ; $491f: $01 $01 $80
    add b                                         ; $4922: $80
    ld bc, $8001                                  ; $4923: $01 $01 $80
    add b                                         ; $4926: $80
    ld bc, $8001                                  ; $4927: $01 $01 $80
    add b                                         ; $492a: $80
    ld bc, $2d01                                  ; $492b: $01 $01 $2d
    ld l, $2f                                     ; $492e: $2e $2f
    jr nc, jr_086_4958                            ; $4930: $30 $26

    dec h                                         ; $4932: $25
    ld h, $25                                     ; $4933: $26 $25
    jr z, jr_086_495e                             ; $4935: $28 $27

    jr z, jr_086_4960                             ; $4937: $28 $27

    dec h                                         ; $4939: $25
    ld h, $31                                     ; $493a: $26 $31
    ld [hl-], a                                   ; $493c: $32
    ld b, $06                                     ; $493d: $06 $06
    ld b, $06                                     ; $493f: $06 $06
    ld hl, $2121                                  ; $4941: $21 $21 $21
    ld hl, $2121                                  ; $4944: $21 $21 $21
    ld hl, $0121                                  ; $4947: $21 $21 $01
    ld bc, $0101                                  ; $494a: $01 $01 $01
    inc sp                                        ; $494d: $33
    inc [hl]                                      ; $494e: $34
    rra                                           ; $494f: $1f
    jr nz, @+$37                                  ; $4950: $20 $35

    ld [hl], $22                                  ; $4952: $36 $22
    inc hl                                        ; $4954: $23
    scf                                           ; $4955: $37
    jr c, jr_086_4991                             ; $4956: $38 $39

jr_086_4958:
    ld a, [hl-]                                   ; $4958: $3a
    dec sp                                        ; $4959: $3b
    inc a                                         ; $495a: $3c
    dec a                                         ; $495b: $3d
    ld a, $06                                     ; $495c: $3e $06

jr_086_495e:
    ld b, $01                                     ; $495e: $06 $01

jr_086_4960:
    ld bc, $0606                                  ; $4960: $01 $06 $06
    ld bc, $0601                                  ; $4963: $01 $01 $06
    ld b, $07                                     ; $4966: $06 $07
    rlca                                          ; $4968: $07
    rlca                                          ; $4969: $07
    ld b, $06                                     ; $496a: $06 $06
    ld b, $21                                     ; $496c: $06 $21
    ld hl, sp-$07                                 ; $496e: $f8 $f9
    ld a, [$fb24]                                 ; $4970: $fa $24 $fb
    db $fc                                        ; $4973: $fc
    db $fd                                        ; $4974: $fd
    ccf                                           ; $4975: $3f
    inc e                                         ; $4976: $1c
    dec e                                         ; $4977: $1d
    ld e, $40                                     ; $4978: $1e $40
    rra                                           ; $497a: $1f
    jr nz, jr_086_499e                            ; $497b: $20 $21

    ld bc, $0101                                  ; $497d: $01 $01 $01
    ld bc, $0101                                  ; $4980: $01 $01 $01
    ld bc, $0701                                  ; $4983: $01 $01 $07
    ld bc, $0101                                  ; $4986: $01 $01 $01
    ld b, $01                                     ; $4989: $06 $01
    ld bc, $d101                                  ; $498b: $01 $01 $d1
    jp nc, Jump_000_2728                          ; $498e: $d2 $28 $27

jr_086_4991:
    pop de                                        ; $4991: $d1
    jp nc, Jump_000_3231                          ; $4992: $d2 $31 $32

    pop de                                        ; $4995: $d1
    jp nc, Jump_000_2b2c                          ; $4996: $d2 $2c $2b

    pop de                                        ; $4999: $d1
    jp nc, $0504                                  ; $499a: $d2 $04 $05

    add b                                         ; $499d: $80

jr_086_499e:
    add b                                         ; $499e: $80
    ld hl, $8021                                  ; $499f: $21 $21 $80
    add b                                         ; $49a2: $80
    ld bc, $8001                                  ; $49a3: $01 $01 $80
    add b                                         ; $49a6: $80
    ld hl, $8021                                  ; $49a7: $21 $21 $80
    add b                                         ; $49aa: $80
    rlca                                          ; $49ab: $07
    rlca                                          ; $49ac: $07
    daa                                           ; $49ad: $27
    jr z, jr_086_49dc                             ; $49ae: $28 $2c

    dec hl                                        ; $49b0: $2b
    add hl, hl                                    ; $49b1: $29
    ld a, [hl+]                                   ; $49b2: $2a
    ld b, c                                       ; $49b3: $41
    ld b, d                                       ; $49b4: $42
    dec hl                                        ; $49b5: $2b
    inc l                                         ; $49b6: $2c
    ld b, e                                       ; $49b7: $43
    ld b, h                                       ; $49b8: $44
    ld [de], a                                    ; $49b9: $12
    inc de                                        ; $49ba: $13
    inc d                                         ; $49bb: $14
    ld b, l                                       ; $49bc: $45
    ld bc, $2101                                  ; $49bd: $01 $01 $21
    ld hl, $0101                                  ; $49c0: $21 $01 $01
    rlca                                          ; $49c3: $07
    rlca                                          ; $49c4: $07
    ld bc, $0701                                  ; $49c5: $01 $01 $07
    ld b, $07                                     ; $49c8: $06 $07
    rlca                                          ; $49ca: $07
    rlca                                          ; $49cb: $07
    ld b, $46                                     ; $49cc: $06 $46
    ld b, a                                       ; $49ce: $47
    ld c, b                                       ; $49cf: $48
    ld c, c                                       ; $49d0: $49
    ld c, d                                       ; $49d1: $4a
    ld c, e                                       ; $49d2: $4b
    ld c, h                                       ; $49d3: $4c
    ld c, l                                       ; $49d4: $4d
    ld c, [hl]                                    ; $49d5: $4e
    ld c, a                                       ; $49d6: $4f
    ld d, b                                       ; $49d7: $50
    ld d, c                                       ; $49d8: $51
    ld d, d                                       ; $49d9: $52
    ld d, e                                       ; $49da: $53
    ld d, h                                       ; $49db: $54

jr_086_49dc:
    dec b                                         ; $49dc: $05
    rlca                                          ; $49dd: $07
    ld b, $06                                     ; $49de: $06 $06
    ld b, $07                                     ; $49e0: $06 $07
    ld b, $06                                     ; $49e2: $06 $06
    ld b, $06                                     ; $49e4: $06 $06
    ld b, $06                                     ; $49e6: $06 $06
    ld b, $06                                     ; $49e8: $06 $06
    ld b, $06                                     ; $49ea: $06 $06
    ld b, $55                                     ; $49ec: $06 $55
    ld d, [hl]                                    ; $49ee: $56
    ld d, a                                       ; $49ef: $57
    ld e, b                                       ; $49f0: $58
    ld e, c                                       ; $49f1: $59
    ld e, d                                       ; $49f2: $5a
    ld e, e                                       ; $49f3: $5b
    ld e, h                                       ; $49f4: $5c
    ld e, l                                       ; $49f5: $5d
    ld e, [hl]                                    ; $49f6: $5e
    ld e, a                                       ; $49f7: $5f
    ld h, b                                       ; $49f8: $60
    ld [de], a                                    ; $49f9: $12
    ld h, c                                       ; $49fa: $61
    ld h, d                                       ; $49fb: $62
    dec d                                         ; $49fc: $15
    ld b, $03                                     ; $49fd: $06 $03
    inc bc                                        ; $49ff: $03
    inc bc                                        ; $4a00: $03
    ld b, $03                                     ; $4a01: $06 $03
    inc bc                                        ; $4a03: $03
    inc bc                                        ; $4a04: $03
    ld b, $06                                     ; $4a05: $06 $06
    ld b, $06                                     ; $4a07: $06 $06
    ld b, $06                                     ; $4a09: $06 $06
    ld b, $06                                     ; $4a0b: $06 $06
    ei                                            ; $4a0d: $fb
    db $fc                                        ; $4a0e: $fc
    db $fd                                        ; $4a0f: $fd
    sbc $1c                                       ; $4a10: $de $1c
    dec e                                         ; $4a12: $1d
    ld e, $f5                                     ; $4a13: $1e $f5
    rra                                           ; $4a15: $1f
    jr nz, jr_086_4a39                            ; $4a16: $20 $21

    ld hl, sp+$22                                 ; $4a18: $f8 $22
    inc hl                                        ; $4a1a: $23
    inc h                                         ; $4a1b: $24
    ei                                            ; $4a1c: $fb
    ld bc, $0101                                  ; $4a1d: $01 $01 $01
    ld [bc], a                                    ; $4a20: $02
    ld bc, $0101                                  ; $4a21: $01 $01 $01
    ld bc, $0101                                  ; $4a24: $01 $01 $01
    ld bc, $0101                                  ; $4a27: $01 $01 $01
    ld bc, $0101                                  ; $4a2a: $01 $01 $01
    db $d3                                        ; $4a2d: $d3
    call nc, $dcdb                                ; $4a2e: $d4 $db $dc
    or $f7                                        ; $4a31: $f6 $f7
    ld h, e                                       ; $4a33: $63
    xor $f9                                       ; $4a34: $ee $f9
    ld a, [$e664]                                 ; $4a36: $fa $64 $e6

jr_086_4a39:
    db $fc                                        ; $4a39: $fc
    db $fd                                        ; $4a3a: $fd
    ld h, l                                       ; $4a3b: $65
    di                                            ; $4a3c: $f3
    ld [bc], a                                    ; $4a3d: $02
    ld [bc], a                                    ; $4a3e: $02
    ld [bc], a                                    ; $4a3f: $02
    ld [bc], a                                    ; $4a40: $02
    ld bc, $0201                                  ; $4a41: $01 $01 $02
    ld [bc], a                                    ; $4a44: $02
    ld bc, $0201                                  ; $4a45: $01 $01 $02
    ld [bc], a                                    ; $4a48: $02
    ld bc, $0201                                  ; $4a49: $01 $01 $02
    ld [bc], a                                    ; $4a4c: $02
    db $dd                                        ; $4a4d: $dd
    sbc $d3                                       ; $4a4e: $de $d3
    call nc, $e2f4                                ; $4a50: $d4 $f4 $e2
    ld h, [hl]                                    ; $4a53: $66
    db $ec                                        ; $4a54: $ec
    ld h, a                                       ; $4a55: $67
    ld l, b                                       ; $4a56: $68
    ld l, c                                       ; $4a57: $69
    ld l, d                                       ; $4a58: $6a
    ld l, e                                       ; $4a59: $6b
    ld l, h                                       ; $4a5a: $6c
    ld l, l                                       ; $4a5b: $6d
    ld l, [hl]                                    ; $4a5c: $6e
    ld [bc], a                                    ; $4a5d: $02
    ld [bc], a                                    ; $4a5e: $02
    ld [bc], a                                    ; $4a5f: $02
    ld [bc], a                                    ; $4a60: $02
    ld [bc], a                                    ; $4a61: $02
    ld [bc], a                                    ; $4a62: $02
    ld [bc], a                                    ; $4a63: $02
    ld [bc], a                                    ; $4a64: $02
    ld [bc], a                                    ; $4a65: $02
    ld [bc], a                                    ; $4a66: $02
    ld [bc], a                                    ; $4a67: $02
    ld [bc], a                                    ; $4a68: $02
    ld [bc], a                                    ; $4a69: $02
    ld [bc], a                                    ; $4a6a: $02
    ld [bc], a                                    ; $4a6b: $02
    ld [bc], a                                    ; $4a6c: $02
    jp nc, $d1d1                                  ; $4a6d: $d2 $d1 $d1

    pop de                                        ; $4a70: $d1
    jp nc, $d1d1                                  ; $4a71: $d2 $d1 $d1

    pop de                                        ; $4a74: $d1
    jp nc, $d1d1                                  ; $4a75: $d2 $d1 $d1

    pop de                                        ; $4a78: $d1
    jp nc, $d1d1                                  ; $4a79: $d2 $d1 $d1

    pop de                                        ; $4a7c: $d1
    add b                                         ; $4a7d: $80
    add b                                         ; $4a7e: $80
    add b                                         ; $4a7f: $80
    add b                                         ; $4a80: $80
    add b                                         ; $4a81: $80
    add b                                         ; $4a82: $80
    add b                                         ; $4a83: $80
    add b                                         ; $4a84: $80
    add b                                         ; $4a85: $80
    add b                                         ; $4a86: $80
    add b                                         ; $4a87: $80
    add b                                         ; $4a88: $80
    add b                                         ; $4a89: $80
    add b                                         ; $4a8a: $80
    add b                                         ; $4a8b: $80
    add b                                         ; $4a8c: $80
    inc e                                         ; $4a8d: $1c
    dec e                                         ; $4a8e: $1d
    ld e, $1c                                     ; $4a8f: $1e $1c
    rra                                           ; $4a91: $1f
    jr nz, jr_086_4ab5                            ; $4a92: $20 $21

    rra                                           ; $4a94: $1f
    ld [hl+], a                                   ; $4a95: $22
    inc hl                                        ; $4a96: $23
    inc h                                         ; $4a97: $24
    ld [hl+], a                                   ; $4a98: $22
    inc e                                         ; $4a99: $1c
    dec e                                         ; $4a9a: $1d
    ld e, $1c                                     ; $4a9b: $1e $1c
    ld bc, $0101                                  ; $4a9d: $01 $01 $01
    ld bc, $0101                                  ; $4aa0: $01 $01 $01
    ld bc, $0101                                  ; $4aa3: $01 $01 $01
    ld bc, $0101                                  ; $4aa6: $01 $01 $01
    ld bc, $0101                                  ; $4aa9: $01 $01 $01
    ld bc, $1e1d                                  ; $4aac: $01 $1d $1e
    ld l, a                                       ; $4aaf: $6f
    ld [hl], b                                    ; $4ab0: $70
    jr nz, jr_086_4ad4                            ; $4ab1: $20 $21

    ld [hl], c                                    ; $4ab3: $71
    ld [hl], d                                    ; $4ab4: $72

jr_086_4ab5:
    inc hl                                        ; $4ab5: $23
    inc h                                         ; $4ab6: $24
    ld [hl], e                                    ; $4ab7: $73
    rrca                                          ; $4ab8: $0f
    dec e                                         ; $4ab9: $1d
    ld e, $14                                     ; $4aba: $1e $14
    ld b, l                                       ; $4abc: $45
    ld bc, $0201                                  ; $4abd: $01 $01 $02
    ld [bc], a                                    ; $4ac0: $02
    ld bc, $0201                                  ; $4ac1: $01 $01 $02
    ld [bc], a                                    ; $4ac4: $02
    ld bc, $0201                                  ; $4ac5: $01 $01 $02
    ld [bc], a                                    ; $4ac8: $02
    ld bc, $0701                                  ; $4ac9: $01 $01 $07
    rlca                                          ; $4acc: $07
    ld [hl], h                                    ; $4acd: $74
    ld [hl], l                                    ; $4ace: $75
    halt                                          ; $4acf: $76
    ld [hl], a                                    ; $4ad0: $77
    ld a, b                                       ; $4ad1: $78
    ld a, c                                       ; $4ad2: $79
    ld a, d                                       ; $4ad3: $7a

jr_086_4ad4:
    ld a, e                                       ; $4ad4: $7b
    ld a, h                                       ; $4ad5: $7c
    ld a, l                                       ; $4ad6: $7d
    ld a, [hl]                                    ; $4ad7: $7e
    ld a, a                                       ; $4ad8: $7f
    add b                                         ; $4ad9: $80
    add c                                         ; $4ada: $81
    add b                                         ; $4adb: $80
    add c                                         ; $4adc: $81
    ld [bc], a                                    ; $4add: $02
    ld [bc], a                                    ; $4ade: $02
    ld [bc], a                                    ; $4adf: $02
    ld [bc], a                                    ; $4ae0: $02
    ld [bc], a                                    ; $4ae1: $02
    ld [bc], a                                    ; $4ae2: $02
    ld [bc], a                                    ; $4ae3: $02
    ld [bc], a                                    ; $4ae4: $02
    ld bc, $0101                                  ; $4ae5: $01 $01 $01
    ld bc, $0909                                  ; $4ae8: $01 $09 $09
    add hl, bc                                    ; $4aeb: $09
    add hl, bc                                    ; $4aec: $09
    rra                                           ; $4aed: $1f
    jr nz, jr_086_4b11                            ; $4aee: $20 $21

    rra                                           ; $4af0: $1f
    ld [hl+], a                                   ; $4af1: $22
    inc hl                                        ; $4af2: $23
    inc h                                         ; $4af3: $24
    ld [hl+], a                                   ; $4af4: $22
    scf                                           ; $4af5: $37
    jr c, jr_086_4b31                             ; $4af6: $38 $39

    ld a, [hl-]                                   ; $4af8: $3a
    dec sp                                        ; $4af9: $3b
    inc a                                         ; $4afa: $3c
    dec a                                         ; $4afb: $3d
    ld a, $01                                     ; $4afc: $3e $01
    ld bc, $0101                                  ; $4afe: $01 $01 $01
    ld bc, $0101                                  ; $4b01: $01 $01 $01
    ld bc, $0707                                  ; $4b04: $01 $07 $07
    rlca                                          ; $4b07: $07
    rlca                                          ; $4b08: $07
    rlca                                          ; $4b09: $07
    ld b, $06                                     ; $4b0a: $06 $06
    ld b, $20                                     ; $4b0c: $06 $20
    ld hl, $822f                                  ; $4b0e: $21 $2f $82

jr_086_4b11:
    inc hl                                        ; $4b11: $23
    inc h                                         ; $4b12: $24
    add e                                         ; $4b13: $83
    add h                                         ; $4b14: $84
    ccf                                           ; $4b15: $3f
    add l                                         ; $4b16: $85
    add [hl]                                      ; $4b17: $86
    add a                                         ; $4b18: $87
    ld b, b                                       ; $4b19: $40
    adc b                                         ; $4b1a: $88
    adc c                                         ; $4b1b: $89
    adc d                                         ; $4b1c: $8a
    ld bc, $0701                                  ; $4b1d: $01 $01 $07
    ld c, $01                                     ; $4b20: $0e $01
    ld bc, $0e0f                                  ; $4b22: $01 $0f $0e
    rlca                                          ; $4b25: $07
    rrca                                          ; $4b26: $0f
    rrca                                          ; $4b27: $0f
    ld c, $06                                     ; $4b28: $0e $06
    ld c, $0e                                     ; $4b2a: $0e $0e
    ld c, $8b                                     ; $4b2c: $0e $8b
    adc h                                         ; $4b2e: $8c
    adc e                                         ; $4b2f: $8b
    adc l                                         ; $4b30: $8d

jr_086_4b31:
    adc [hl]                                      ; $4b31: $8e
    adc a                                         ; $4b32: $8f
    sub b                                         ; $4b33: $90
    sub c                                         ; $4b34: $91
    scf                                           ; $4b35: $37
    jr c, jr_086_4b71                             ; $4b36: $38 $39

    ld a, [hl-]                                   ; $4b38: $3a
    sub d                                         ; $4b39: $92
    inc a                                         ; $4b3a: $3c
    dec a                                         ; $4b3b: $3d
    ld a, $09                                     ; $4b3c: $3e $09
    add hl, bc                                    ; $4b3e: $09
    add hl, bc                                    ; $4b3f: $09
    add hl, bc                                    ; $4b40: $09
    ld c, $0e                                     ; $4b41: $0e $0e
    ld c, $0f                                     ; $4b43: $0e $0f
    ld b, $06                                     ; $4b45: $06 $06
    ld b, $07                                     ; $4b47: $06 $07
    ld c, $06                                     ; $4b49: $0e $06
    ld b, $07                                     ; $4b4b: $06 $07
    ld d, [hl]                                    ; $4b4d: $56
    ld d, a                                       ; $4b4e: $57
    ld e, b                                       ; $4b4f: $58
    sub e                                         ; $4b50: $93
    ld e, d                                       ; $4b51: $5a
    ld e, e                                       ; $4b52: $5b
    ld e, h                                       ; $4b53: $5c
    sub h                                         ; $4b54: $94
    sub l                                         ; $4b55: $95
    sub [hl]                                      ; $4b56: $96
    ld d, b                                       ; $4b57: $50
    sub a                                         ; $4b58: $97
    ld a, [de]                                    ; $4b59: $1a
    dec de                                        ; $4b5a: $1b
    inc b                                         ; $4b5b: $04
    dec b                                         ; $4b5c: $05
    inc bc                                        ; $4b5d: $03
    inc bc                                        ; $4b5e: $03
    inc bc                                        ; $4b5f: $03
    add hl, bc                                    ; $4b60: $09
    inc bc                                        ; $4b61: $03
    inc bc                                        ; $4b62: $03
    inc bc                                        ; $4b63: $03
    add hl, bc                                    ; $4b64: $09
    ld c, $0e                                     ; $4b65: $0e $0e
    ld b, $0e                                     ; $4b67: $06 $0e
    ld b, $06                                     ; $4b69: $06 $06
    ld b, $06                                     ; $4b6b: $06 $06
    sbc b                                         ; $4b6d: $98
    sub e                                         ; $4b6e: $93
    sbc b                                         ; $4b6f: $98
    sub e                                         ; $4b70: $93

jr_086_4b71:
    sbc c                                         ; $4b71: $99
    sub h                                         ; $4b72: $94
    sbc c                                         ; $4b73: $99
    sub h                                         ; $4b74: $94
    sbc d                                         ; $4b75: $9a
    ld e, [hl]                                    ; $4b76: $5e
    sbc e                                         ; $4b77: $9b
    sbc h                                         ; $4b78: $9c
    ld a, h                                       ; $4b79: $7c
    ld a, l                                       ; $4b7a: $7d
    sbc l                                         ; $4b7b: $9d
    sbc [hl]                                      ; $4b7c: $9e
    add hl, bc                                    ; $4b7d: $09
    add hl, bc                                    ; $4b7e: $09
    add hl, bc                                    ; $4b7f: $09
    add hl, bc                                    ; $4b80: $09
    add hl, bc                                    ; $4b81: $09
    add hl, bc                                    ; $4b82: $09
    add hl, bc                                    ; $4b83: $09
    add hl, bc                                    ; $4b84: $09
    ld c, $06                                     ; $4b85: $0e $06
    inc c                                         ; $4b87: $0c
    inc c                                         ; $4b88: $0c
    ld bc, $0c01                                  ; $4b89: $01 $01 $0c
    inc c                                         ; $4b8c: $0c
    sbc b                                         ; $4b8d: $98
    ld b, a                                       ; $4b8e: $47
    sbc a                                         ; $4b8f: $9f
    and b                                         ; $4b90: $a0
    sbc c                                         ; $4b91: $99
    and c                                         ; $4b92: $a1
    and d                                         ; $4b93: $a2
    ld c, l                                       ; $4b94: $4d
    ld c, [hl]                                    ; $4b95: $4e
    sub [hl]                                      ; $4b96: $96
    ld d, b                                       ; $4b97: $50
    ld d, c                                       ; $4b98: $51
    ld a, [de]                                    ; $4b99: $1a
    dec de                                        ; $4b9a: $1b
    inc b                                         ; $4b9b: $04
    dec b                                         ; $4b9c: $05
    add hl, bc                                    ; $4b9d: $09
    ld b, $0e                                     ; $4b9e: $06 $0e
    rrca                                          ; $4ba0: $0f
    add hl, bc                                    ; $4ba1: $09
    ld c, $0e                                     ; $4ba2: $0e $0e
    rlca                                          ; $4ba4: $07
    ld b, $0e                                     ; $4ba5: $06 $0e
    ld b, $07                                     ; $4ba7: $06 $07
    ld b, $06                                     ; $4ba9: $06 $06
    ld b, $07                                     ; $4bab: $06 $07
    pop de                                        ; $4bad: $d1
    pop de                                        ; $4bae: $d1
    pop de                                        ; $4baf: $d1
    pop de                                        ; $4bb0: $d1
    pop de                                        ; $4bb1: $d1
    pop de                                        ; $4bb2: $d1
    pop de                                        ; $4bb3: $d1
    pop de                                        ; $4bb4: $d1
    pop de                                        ; $4bb5: $d1
    pop de                                        ; $4bb6: $d1
    pop de                                        ; $4bb7: $d1
    pop de                                        ; $4bb8: $d1
    pop de                                        ; $4bb9: $d1
    pop de                                        ; $4bba: $d1
    pop de                                        ; $4bbb: $d1
    pop de                                        ; $4bbc: $d1
    add b                                         ; $4bbd: $80
    add b                                         ; $4bbe: $80
    add b                                         ; $4bbf: $80
    add b                                         ; $4bc0: $80
    add b                                         ; $4bc1: $80
    add b                                         ; $4bc2: $80
    add b                                         ; $4bc3: $80
    add b                                         ; $4bc4: $80
    add b                                         ; $4bc5: $80
    add b                                         ; $4bc6: $80
    add b                                         ; $4bc7: $80
    add b                                         ; $4bc8: $80
    add b                                         ; $4bc9: $80
    add b                                         ; $4bca: $80
    add b                                         ; $4bcb: $80
    add b                                         ; $4bcc: $80
    pop de                                        ; $4bcd: $d1
    and e                                         ; $4bce: $a3
    and h                                         ; $4bcf: $a4
    and h                                         ; $4bd0: $a4
    pop de                                        ; $4bd1: $d1
    pop de                                        ; $4bd2: $d1
    pop de                                        ; $4bd3: $d1
    pop de                                        ; $4bd4: $d1
    pop de                                        ; $4bd5: $d1
    pop de                                        ; $4bd6: $d1
    pop de                                        ; $4bd7: $d1
    pop de                                        ; $4bd8: $d1
    pop de                                        ; $4bd9: $d1
    pop de                                        ; $4bda: $d1
    pop de                                        ; $4bdb: $d1
    pop de                                        ; $4bdc: $d1
    add b                                         ; $4bdd: $80
    adc b                                         ; $4bde: $88
    adc b                                         ; $4bdf: $88
    adc b                                         ; $4be0: $88
    add b                                         ; $4be1: $80
    add b                                         ; $4be2: $80
    add b                                         ; $4be3: $80
    add b                                         ; $4be4: $80
    add b                                         ; $4be5: $80
    add b                                         ; $4be6: $80
    add b                                         ; $4be7: $80
    add b                                         ; $4be8: $80
    add b                                         ; $4be9: $80
    add b                                         ; $4bea: $80
    add b                                         ; $4beb: $80
    add b                                         ; $4bec: $80
    and h                                         ; $4bed: $a4
    and h                                         ; $4bee: $a4
    and h                                         ; $4bef: $a4
    and h                                         ; $4bf0: $a4
    pop de                                        ; $4bf1: $d1
    pop de                                        ; $4bf2: $d1
    pop de                                        ; $4bf3: $d1
    pop de                                        ; $4bf4: $d1
    pop de                                        ; $4bf5: $d1
    pop de                                        ; $4bf6: $d1
    pop de                                        ; $4bf7: $d1
    pop de                                        ; $4bf8: $d1
    pop de                                        ; $4bf9: $d1
    pop de                                        ; $4bfa: $d1
    pop de                                        ; $4bfb: $d1
    pop de                                        ; $4bfc: $d1
    adc b                                         ; $4bfd: $88
    adc b                                         ; $4bfe: $88
    adc b                                         ; $4bff: $88
    adc b                                         ; $4c00: $88
    add b                                         ; $4c01: $80
    add b                                         ; $4c02: $80
    add b                                         ; $4c03: $80
    add b                                         ; $4c04: $80
    add b                                         ; $4c05: $80
    add b                                         ; $4c06: $80
    add b                                         ; $4c07: $80
    add b                                         ; $4c08: $80
    add b                                         ; $4c09: $80
    add b                                         ; $4c0a: $80
    add b                                         ; $4c0b: $80
    add b                                         ; $4c0c: $80
    and h                                         ; $4c0d: $a4
    and h                                         ; $4c0e: $a4
    and h                                         ; $4c0f: $a4
    and l                                         ; $4c10: $a5
    pop de                                        ; $4c11: $d1
    pop de                                        ; $4c12: $d1
    pop de                                        ; $4c13: $d1
    jp nc, $d1d1                                  ; $4c14: $d2 $d1 $d1

    pop de                                        ; $4c17: $d1
    jp nc, $d1d1                                  ; $4c18: $d2 $d1 $d1

    pop de                                        ; $4c1b: $d1
    jp nc, $8888                                  ; $4c1c: $d2 $88 $88

    adc b                                         ; $4c1f: $88
    adc b                                         ; $4c20: $88
    add b                                         ; $4c21: $80
    add b                                         ; $4c22: $80
    add b                                         ; $4c23: $80
    add b                                         ; $4c24: $80
    add b                                         ; $4c25: $80
    add b                                         ; $4c26: $80
    add b                                         ; $4c27: $80
    add b                                         ; $4c28: $80
    add b                                         ; $4c29: $80
    add b                                         ; $4c2a: $80
    add b                                         ; $4c2b: $80
    add b                                         ; $4c2c: $80
    pop de                                        ; $4c2d: $d1
    pop de                                        ; $4c2e: $d1
    pop de                                        ; $4c2f: $d1
    jp nc, $d1d1                                  ; $4c30: $d2 $d1 $d1

    pop de                                        ; $4c33: $d1
    jp nc, $d1d1                                  ; $4c34: $d2 $d1 $d1

    pop de                                        ; $4c37: $d1
    jp nc, $d1d1                                  ; $4c38: $d2 $d1 $d1

    pop de                                        ; $4c3b: $d1
    jp nc, $8080                                  ; $4c3c: $d2 $80 $80

    add b                                         ; $4c3f: $80
    add b                                         ; $4c40: $80
    add b                                         ; $4c41: $80
    add b                                         ; $4c42: $80
    add b                                         ; $4c43: $80
    add b                                         ; $4c44: $80
    add b                                         ; $4c45: $80
    add b                                         ; $4c46: $80
    add b                                         ; $4c47: $80
    add b                                         ; $4c48: $80
    add b                                         ; $4c49: $80
    add b                                         ; $4c4a: $80
    add b                                         ; $4c4b: $80
    add b                                         ; $4c4c: $80
    pop de                                        ; $4c4d: $d1
    pop de                                        ; $4c4e: $d1
    and [hl]                                      ; $4c4f: $a6
    and h                                         ; $4c50: $a4
    pop de                                        ; $4c51: $d1
    pop de                                        ; $4c52: $d1
    jp nc, $d1d3                                  ; $4c53: $d2 $d3 $d1

    pop de                                        ; $4c56: $d1
    jp nc, $d166                                  ; $4c57: $d2 $66 $d1

    pop de                                        ; $4c5a: $d1
    jp nc, $80a7                                  ; $4c5b: $d2 $a7 $80

    add b                                         ; $4c5e: $80
    adc b                                         ; $4c5f: $88
    adc b                                         ; $4c60: $88
    add b                                         ; $4c61: $80
    add b                                         ; $4c62: $80
    add b                                         ; $4c63: $80
    ld [bc], a                                    ; $4c64: $02
    add b                                         ; $4c65: $80
    add b                                         ; $4c66: $80
    add b                                         ; $4c67: $80
    ld [bc], a                                    ; $4c68: $02
    add b                                         ; $4c69: $80
    add b                                         ; $4c6a: $80
    add b                                         ; $4c6b: $80
    ld a, [bc]                                    ; $4c6c: $0a
    and h                                         ; $4c6d: $a4
    and h                                         ; $4c6e: $a4
    and h                                         ; $4c6f: $a4
    xor b                                         ; $4c70: $a8
    xor c                                         ; $4c71: $a9
    xor d                                         ; $4c72: $aa
    xor e                                         ; $4c73: $ab
    xor h                                         ; $4c74: $ac
    xor l                                         ; $4c75: $ad
    xor [hl]                                      ; $4c76: $ae
    xor a                                         ; $4c77: $af
    or b                                          ; $4c78: $b0
    or c                                          ; $4c79: $b1
    or d                                          ; $4c7a: $b2
    or e                                          ; $4c7b: $b3
    or h                                          ; $4c7c: $b4
    adc b                                         ; $4c7d: $88
    adc b                                         ; $4c7e: $88
    adc b                                         ; $4c7f: $88
    adc b                                         ; $4c80: $88
    inc c                                         ; $4c81: $0c
    inc c                                         ; $4c82: $0c
    inc c                                         ; $4c83: $0c
    ld a, [bc]                                    ; $4c84: $0a
    inc c                                         ; $4c85: $0c
    inc c                                         ; $4c86: $0c
    inc c                                         ; $4c87: $0c
    ld a, [bc]                                    ; $4c88: $0a
    inc c                                         ; $4c89: $0c
    inc c                                         ; $4c8a: $0c
    inc c                                         ; $4c8b: $0c
    ld a, [bc]                                    ; $4c8c: $0a
    inc sp                                        ; $4c8d: $33
    inc [hl]                                      ; $4c8e: $34
    or l                                          ; $4c8f: $b5
    or [hl]                                       ; $4c90: $b6
    adc [hl]                                      ; $4c91: $8e
    ld [hl], $b7                                  ; $4c92: $36 $b7
    cp b                                          ; $4c94: $b8
    cp c                                          ; $4c95: $b9
    cp d                                          ; $4c96: $ba
    add hl, sp                                    ; $4c97: $39
    ld a, [hl-]                                   ; $4c98: $3a
    dec sp                                        ; $4c99: $3b
    cp e                                          ; $4c9a: $bb
    cp h                                          ; $4c9b: $bc
    cp l                                          ; $4c9c: $bd
    ld b, $06                                     ; $4c9d: $06 $06
    ld c, $0e                                     ; $4c9f: $0e $0e
    ld c, $06                                     ; $4ca1: $0e $06
    ld c, $0e                                     ; $4ca3: $0e $0e
    ld c, $0e                                     ; $4ca5: $0e $0e
    ld b, $06                                     ; $4ca7: $06 $06
    rlca                                          ; $4ca9: $07
    ld c, $0e                                     ; $4caa: $0e $0e
    ld c, $80                                     ; $4cac: $0e $80
    add c                                         ; $4cae: $81
    cp [hl]                                       ; $4caf: $be
    cp a                                          ; $4cb0: $bf
    ret nz                                        ; $4cb1: $c0

    pop bc                                        ; $4cb2: $c1
    add e                                         ; $4cb3: $83
    add h                                         ; $4cb4: $84
    add b                                         ; $4cb5: $80
    add c                                         ; $4cb6: $81
    add [hl]                                      ; $4cb7: $86
    add a                                         ; $4cb8: $87
    adc e                                         ; $4cb9: $8b
    adc h                                         ; $4cba: $8c
    sbc e                                         ; $4cbb: $9b
    sbc h                                         ; $4cbc: $9c
    add hl, bc                                    ; $4cbd: $09
    add hl, bc                                    ; $4cbe: $09
    inc c                                         ; $4cbf: $0c
    inc c                                         ; $4cc0: $0c
    add hl, bc                                    ; $4cc1: $09
    add hl, bc                                    ; $4cc2: $09
    ld c, $0e                                     ; $4cc3: $0e $0e
    add hl, bc                                    ; $4cc5: $09
    add hl, bc                                    ; $4cc6: $09
    ld c, $0e                                     ; $4cc7: $0e $0e
    add hl, bc                                    ; $4cc9: $09
    add hl, bc                                    ; $4cca: $09
    inc c                                         ; $4ccb: $0c
    inc c                                         ; $4ccc: $0c
    inc sp                                        ; $4ccd: $33
    inc [hl]                                      ; $4cce: $34
    jp nz, Jump_000_35c3                          ; $4ccf: $c2 $c3 $35

    ld [hl], $c4                                  ; $4cd2: $36 $c4
    push bc                                       ; $4cd4: $c5
    scf                                           ; $4cd5: $37
    jr c, @-$38                                   ; $4cd6: $38 $c6

    rst $00                                       ; $4cd8: $c7
    dec sp                                        ; $4cd9: $3b
    inc a                                         ; $4cda: $3c
    jp nz, Jump_000_06c3                          ; $4cdb: $c2 $c3 $06

    ld b, $0b                                     ; $4cde: $06 $0b
    dec bc                                        ; $4ce0: $0b
    ld b, $06                                     ; $4ce1: $06 $06
    dec bc                                        ; $4ce3: $0b
    dec bc                                        ; $4ce4: $0b
    ld b, $06                                     ; $4ce5: $06 $06
    dec bc                                        ; $4ce7: $0b
    dec bc                                        ; $4ce8: $0b
    ld b, $06                                     ; $4ce9: $06 $06
    dec bc                                        ; $4ceb: $0b
    dec bc                                        ; $4cec: $0b
    ld b, [hl]                                    ; $4ced: $46
    ld b, a                                       ; $4cee: $47
    ld c, b                                       ; $4cef: $48
    ld c, c                                       ; $4cf0: $49
    ret z                                         ; $4cf1: $c8

    ld c, e                                       ; $4cf2: $4b
    ld c, h                                       ; $4cf3: $4c
    ret                                           ; $4cf4: $c9


    sub l                                         ; $4cf5: $95
    sub [hl]                                      ; $4cf6: $96
    ld d, b                                       ; $4cf7: $50
    sub a                                         ; $4cf8: $97
    ld a, [de]                                    ; $4cf9: $1a
    dec de                                        ; $4cfa: $1b
    inc b                                         ; $4cfb: $04
    dec b                                         ; $4cfc: $05
    rlca                                          ; $4cfd: $07
    ld b, $06                                     ; $4cfe: $06 $06
    ld b, $0f                                     ; $4d00: $06 $0f
    ld b, $06                                     ; $4d02: $06 $06
    ld c, $0f                                     ; $4d04: $0e $0f
    ld c, $06                                     ; $4d06: $0e $06
    ld c, $07                                     ; $4d08: $0e $07
    ld b, $06                                     ; $4d0a: $06 $06
    ld b, $ca                                     ; $4d0c: $06 $ca
    res 3, l                                      ; $4d0e: $cb $9d
    sbc [hl]                                      ; $4d10: $9e
    call z, $becd                                 ; $4d11: $cc $cd $be
    cp a                                          ; $4d14: $bf
    sbc e                                         ; $4d15: $9b
    sbc h                                         ; $4d16: $9c
    ld e, a                                       ; $4d17: $5f
    ld h, b                                       ; $4d18: $60
    sbc l                                         ; $4d19: $9d
    sbc [hl]                                      ; $4d1a: $9e
    adc $ce                                       ; $4d1b: $ce $ce
    ld c, $0e                                     ; $4d1d: $0e $0e
    inc c                                         ; $4d1f: $0c
    inc c                                         ; $4d20: $0c
    ld c, $0e                                     ; $4d21: $0e $0e
    inc c                                         ; $4d23: $0c
    inc c                                         ; $4d24: $0c
    inc c                                         ; $4d25: $0c
    inc c                                         ; $4d26: $0c
    ld b, $06                                     ; $4d27: $06 $06
    inc c                                         ; $4d29: $0c
    inc c                                         ; $4d2a: $0c
    inc c                                         ; $4d2b: $0c
    inc c                                         ; $4d2c: $0c
    ld b, [hl]                                    ; $4d2d: $46
    ld b, a                                       ; $4d2e: $47
    call nz, $c8c5                                ; $4d2f: $c4 $c5 $c8
    ld c, e                                       ; $4d32: $4b
    add $c7                                       ; $4d33: $c6 $c7
    sub l                                         ; $4d35: $95
    sub [hl]                                      ; $4d36: $96
    ld d, b                                       ; $4d37: $50
    sub a                                         ; $4d38: $97
    ld a, [de]                                    ; $4d39: $1a
    dec de                                        ; $4d3a: $1b
    inc b                                         ; $4d3b: $04
    dec b                                         ; $4d3c: $05
    ld b, $06                                     ; $4d3d: $06 $06
    dec bc                                        ; $4d3f: $0b
    dec bc                                        ; $4d40: $0b
    ld c, $06                                     ; $4d41: $0e $06
    dec bc                                        ; $4d43: $0b
    dec bc                                        ; $4d44: $0b
    ld c, $0e                                     ; $4d45: $0e $0e
    ld b, $0f                                     ; $4d47: $06 $0f
    ld b, $06                                     ; $4d49: $06 $06
    ld b, $07                                     ; $4d4b: $06 $07
    jp nc, $d1d1                                  ; $4d4d: $d2 $d1 $d1

    pop de                                        ; $4d50: $d1
    jp nc, $d1d1                                  ; $4d51: $d2 $d1 $d1

    pop de                                        ; $4d54: $d1
    and e                                         ; $4d55: $a3
    and h                                         ; $4d56: $a4
    and h                                         ; $4d57: $a4
    and h                                         ; $4d58: $a4
    rst $08                                       ; $4d59: $cf
    call nc, $dcd0                                ; $4d5a: $d4 $d0 $dc
    add b                                         ; $4d5d: $80
    add b                                         ; $4d5e: $80
    add b                                         ; $4d5f: $80
    add b                                         ; $4d60: $80
    add b                                         ; $4d61: $80
    add b                                         ; $4d62: $80
    add b                                         ; $4d63: $80
    add b                                         ; $4d64: $80
    adc b                                         ; $4d65: $88
    adc b                                         ; $4d66: $88
    adc b                                         ; $4d67: $88
    adc b                                         ; $4d68: $88
    ld a, [bc]                                    ; $4d69: $0a
    ld [bc], a                                    ; $4d6a: $02
    ld a, [bc]                                    ; $4d6b: $0a
    ld [bc], a                                    ; $4d6c: $02
    inc sp                                        ; $4d6d: $33
    inc [hl]                                      ; $4d6e: $34
    or l                                          ; $4d6f: $b5
    or [hl]                                       ; $4d70: $b6
    dec [hl]                                      ; $4d71: $35
    ld [hl], $90                                  ; $4d72: $36 $90
    sub c                                         ; $4d74: $91
    scf                                           ; $4d75: $37
    cp d                                          ; $4d76: $ba
    pop de                                        ; $4d77: $d1
    ld a, [hl-]                                   ; $4d78: $3a
    sub d                                         ; $4d79: $92
    cp e                                          ; $4d7a: $bb
    dec a                                         ; $4d7b: $3d
    ld a, $07                                     ; $4d7c: $3e $07
    ld b, $0e                                     ; $4d7e: $06 $0e
    ld c, $07                                     ; $4d80: $0e $07
    ld b, $0e                                     ; $4d82: $06 $0e
    ld c, $07                                     ; $4d84: $0e $07
    ld c, $0e                                     ; $4d86: $0e $0e
    ld b, $0f                                     ; $4d88: $06 $0f
    ld c, $06                                     ; $4d8a: $0e $06
    ld b, $d2                                     ; $4d8c: $06 $d2
    db $d3                                        ; $4d8e: $d3
    call nc, $9dd4                                ; $4d8f: $d4 $d4 $9d
    sbc [hl]                                      ; $4d92: $9e
    call nc, $d2d4                                ; $4d93: $d4 $d4 $d2
    db $d3                                        ; $4d96: $d3
    call nc, $9dd4                                ; $4d97: $d4 $d4 $9d
    sbc [hl]                                      ; $4d9a: $9e
    push de                                       ; $4d9b: $d5
    push de                                       ; $4d9c: $d5
    inc c                                         ; $4d9d: $0c
    inc c                                         ; $4d9e: $0c
    inc c                                         ; $4d9f: $0c
    inc c                                         ; $4da0: $0c
    inc c                                         ; $4da1: $0c
    inc c                                         ; $4da2: $0c
    inc c                                         ; $4da3: $0c
    inc c                                         ; $4da4: $0c
    inc c                                         ; $4da5: $0c
    inc c                                         ; $4da6: $0c
    inc c                                         ; $4da7: $0c
    inc c                                         ; $4da8: $0c
    inc c                                         ; $4da9: $0c
    inc c                                         ; $4daa: $0c
    inc c                                         ; $4dab: $0c
    inc c                                         ; $4dac: $0c
    inc sp                                        ; $4dad: $33
    inc [hl]                                      ; $4dae: $34
    or l                                          ; $4daf: $b5
    or [hl]                                       ; $4db0: $b6
    dec [hl]                                      ; $4db1: $35
    ld [hl], $b7                                  ; $4db2: $36 $b7
    cp b                                          ; $4db4: $b8
    scf                                           ; $4db5: $37
    jr c, jr_086_4df1                             ; $4db6: $38 $39

    ld a, [hl-]                                   ; $4db8: $3a
    dec sp                                        ; $4db9: $3b
    inc a                                         ; $4dba: $3c
    dec a                                         ; $4dbb: $3d
    ld a, $06                                     ; $4dbc: $3e $06
    ld b, $0e                                     ; $4dbe: $06 $0e
    rrca                                          ; $4dc0: $0f
    ld b, $06                                     ; $4dc1: $06 $06
    ld c, $0f                                     ; $4dc3: $0e $0f
    ld b, $06                                     ; $4dc5: $06 $06
    ld b, $07                                     ; $4dc7: $06 $07
    ld b, $06                                     ; $4dc9: $06 $06
    ld b, $07                                     ; $4dcb: $06 $07
    sub $d5                                       ; $4dcd: $d6 $d5
    rst $10                                       ; $4dcf: $d7
    rst $18                                       ; $4dd0: $df
    ret c                                         ; $4dd1: $d8

    rst $10                                       ; $4dd2: $d7
    reti                                          ; $4dd3: $d9


    db $e3                                        ; $4dd4: $e3
    jp c, $dbd9                                   ; $4dd5: $da $d9 $db

    rst $20                                       ; $4dd8: $e7
    call c, $dedd                                 ; $4dd9: $dc $dd $de
    rst $18                                       ; $4ddc: $df
    ld a, [bc]                                    ; $4ddd: $0a
    ld [bc], a                                    ; $4dde: $02
    ld a, [bc]                                    ; $4ddf: $0a
    ld [bc], a                                    ; $4de0: $02
    ld a, [bc]                                    ; $4de1: $0a
    ld [bc], a                                    ; $4de2: $02
    ld a, [bc]                                    ; $4de3: $0a
    ld [bc], a                                    ; $4de4: $02
    ld a, [bc]                                    ; $4de5: $0a
    ld [bc], a                                    ; $4de6: $02
    ld a, [bc]                                    ; $4de7: $0a
    ld [bc], a                                    ; $4de8: $02
    ld a, [bc]                                    ; $4de9: $0a
    ld a, [bc]                                    ; $4dea: $0a
    ld a, [bc]                                    ; $4deb: $0a
    ld a, [bc]                                    ; $4dec: $0a
    ldh [rBGP], a                                 ; $4ded: $e0 $47
    ld c, b                                       ; $4def: $48
    ld c, c                                       ; $4df0: $49

jr_086_4df1:
    ret z                                         ; $4df1: $c8

    ld c, e                                       ; $4df2: $4b
    ld c, h                                       ; $4df3: $4c
    ret                                           ; $4df4: $c9


    sub l                                         ; $4df5: $95
    sub [hl]                                      ; $4df6: $96
    ld d, b                                       ; $4df7: $50
    sub a                                         ; $4df8: $97
    ld a, [de]                                    ; $4df9: $1a
    dec de                                        ; $4dfa: $1b
    inc b                                         ; $4dfb: $04
    dec b                                         ; $4dfc: $05
    rrca                                          ; $4dfd: $0f
    ld b, $06                                     ; $4dfe: $06 $06
    ld b, $0f                                     ; $4e00: $06 $0f
    ld b, $06                                     ; $4e02: $06 $06
    ld c, $0f                                     ; $4e04: $0e $0f
    ld c, $06                                     ; $4e06: $0e $06
    ld c, $07                                     ; $4e08: $0e $07
    ld b, $06                                     ; $4e0a: $06 $06
    ld b, $be                                     ; $4e0c: $06 $be
    cp a                                          ; $4e0e: $bf
    pop hl                                        ; $4e0f: $e1
    pop hl                                        ; $4e10: $e1
    call z, $e2cd                                 ; $4e11: $cc $cd $e2
    db $e3                                        ; $4e14: $e3
    sbc d                                         ; $4e15: $9a
    db $e4                                        ; $4e16: $e4
    ld e, a                                       ; $4e17: $5f
    ld h, b                                       ; $4e18: $60
    ld [de], a                                    ; $4e19: $12
    inc de                                        ; $4e1a: $13
    inc d                                         ; $4e1b: $14
    dec d                                         ; $4e1c: $15
    inc c                                         ; $4e1d: $0c
    inc c                                         ; $4e1e: $0c
    inc c                                         ; $4e1f: $0c
    inc c                                         ; $4e20: $0c
    ld c, $0e                                     ; $4e21: $0e $0e
    ld c, $0e                                     ; $4e23: $0e $0e
    ld c, $0e                                     ; $4e25: $0e $0e
    ld b, $06                                     ; $4e27: $06 $06
    ld b, $06                                     ; $4e29: $06 $06
    ld b, $06                                     ; $4e2b: $06 $06
    ld b, [hl]                                    ; $4e2d: $46
    ld b, a                                       ; $4e2e: $47
    ld c, b                                       ; $4e2f: $48
    ld c, c                                       ; $4e30: $49
    ret z                                         ; $4e31: $c8

    ld c, e                                       ; $4e32: $4b
    ld c, h                                       ; $4e33: $4c
    ret                                           ; $4e34: $c9


    sub l                                         ; $4e35: $95
    sub [hl]                                      ; $4e36: $96
    ld d, b                                       ; $4e37: $50
    ld d, c                                       ; $4e38: $51
    ld a, [de]                                    ; $4e39: $1a
    ld d, e                                       ; $4e3a: $53
    ld d, h                                       ; $4e3b: $54
    dec b                                         ; $4e3c: $05
    ld b, $06                                     ; $4e3d: $06 $06
    ld b, $07                                     ; $4e3f: $06 $07
    ld c, $06                                     ; $4e41: $0e $06
    ld b, $0f                                     ; $4e43: $06 $0f
    ld c, $0e                                     ; $4e45: $0e $0e
    ld b, $07                                     ; $4e47: $06 $07
    ld b, $06                                     ; $4e49: $06 $06
    ld b, $06                                     ; $4e4b: $06 $06
    push hl                                       ; $4e4d: $e5
    and $e7                                       ; $4e4e: $e6 $e7
    add sp, -$17                                  ; $4e50: $e8 $e9
    ld [$eceb], a                                 ; $4e52: $ea $eb $ec
    sbc d                                         ; $4e55: $9a
    db $e4                                        ; $4e56: $e4
    ld e, a                                       ; $4e57: $5f
    ld h, b                                       ; $4e58: $60
    ld [de], a                                    ; $4e59: $12
    inc de                                        ; $4e5a: $13
    inc d                                         ; $4e5b: $14
    dec d                                         ; $4e5c: $15
    ld a, [bc]                                    ; $4e5d: $0a
    ld a, [bc]                                    ; $4e5e: $0a
    dec c                                         ; $4e5f: $0d
    dec c                                         ; $4e60: $0d
    ld a, [bc]                                    ; $4e61: $0a
    ld a, [bc]                                    ; $4e62: $0a
    dec c                                         ; $4e63: $0d
    dec c                                         ; $4e64: $0d
    rrca                                          ; $4e65: $0f
    rrca                                          ; $4e66: $0f
    rlca                                          ; $4e67: $07
    rlca                                          ; $4e68: $07
    ld b, $06                                     ; $4e69: $06 $06
    ld b, $06                                     ; $4e6b: $06 $06
    pop de                                        ; $4e6d: $d1
    pop de                                        ; $4e6e: $d1
    pop de                                        ; $4e6f: $d1
    pop de                                        ; $4e70: $d1
    pop de                                        ; $4e71: $d1
    pop de                                        ; $4e72: $d1
    pop de                                        ; $4e73: $d1
    pop de                                        ; $4e74: $d1
    and h                                         ; $4e75: $a4
    and h                                         ; $4e76: $a4
    and h                                         ; $4e77: $a4
    and h                                         ; $4e78: $a4
    db $dd                                        ; $4e79: $dd
    sbc $d3                                       ; $4e7a: $de $d3
    call nc, $8080                                ; $4e7c: $d4 $80 $80
    add b                                         ; $4e7f: $80
    add b                                         ; $4e80: $80
    add b                                         ; $4e81: $80
    add b                                         ; $4e82: $80
    add b                                         ; $4e83: $80
    add b                                         ; $4e84: $80
    adc b                                         ; $4e85: $88
    adc b                                         ; $4e86: $88
    adc b                                         ; $4e87: $88
    adc b                                         ; $4e88: $88
    ld [bc], a                                    ; $4e89: $02
    ld [bc], a                                    ; $4e8a: $02
    ld [bc], a                                    ; $4e8b: $02
    ld [bc], a                                    ; $4e8c: $02
    pop de                                        ; $4e8d: $d1
    pop de                                        ; $4e8e: $d1
    pop de                                        ; $4e8f: $d1
    pop de                                        ; $4e90: $d1
    pop de                                        ; $4e91: $d1
    pop de                                        ; $4e92: $d1
    pop de                                        ; $4e93: $d1
    pop de                                        ; $4e94: $d1
    and h                                         ; $4e95: $a4
    and h                                         ; $4e96: $a4
    and h                                         ; $4e97: $a4
    and h                                         ; $4e98: $a4
    db $db                                        ; $4e99: $db
    call c, $dedd                                 ; $4e9a: $dc $dd $de
    add b                                         ; $4e9d: $80
    add b                                         ; $4e9e: $80
    add b                                         ; $4e9f: $80
    add b                                         ; $4ea0: $80
    add b                                         ; $4ea1: $80
    add b                                         ; $4ea2: $80
    add b                                         ; $4ea3: $80
    add b                                         ; $4ea4: $80
    adc b                                         ; $4ea5: $88
    adc b                                         ; $4ea6: $88
    adc b                                         ; $4ea7: $88
    adc b                                         ; $4ea8: $88
    ld [bc], a                                    ; $4ea9: $02
    ld [bc], a                                    ; $4eaa: $02
    ld [bc], a                                    ; $4eab: $02
    ld [bc], a                                    ; $4eac: $02
    pop de                                        ; $4ead: $d1
    pop de                                        ; $4eae: $d1
    pop de                                        ; $4eaf: $d1
    pop de                                        ; $4eb0: $d1
    pop de                                        ; $4eb1: $d1
    pop de                                        ; $4eb2: $d1
    pop de                                        ; $4eb3: $d1
    pop de                                        ; $4eb4: $d1
    and h                                         ; $4eb5: $a4
    and h                                         ; $4eb6: $a4
    and l                                         ; $4eb7: $a5
    pop de                                        ; $4eb8: $d1
    db $d3                                        ; $4eb9: $d3
    call nc, $d1d2                                ; $4eba: $d4 $d2 $d1
    add b                                         ; $4ebd: $80
    add b                                         ; $4ebe: $80
    add b                                         ; $4ebf: $80
    add b                                         ; $4ec0: $80
    add b                                         ; $4ec1: $80
    add b                                         ; $4ec2: $80
    add b                                         ; $4ec3: $80
    add b                                         ; $4ec4: $80
    adc b                                         ; $4ec5: $88
    adc b                                         ; $4ec6: $88
    adc b                                         ; $4ec7: $88
    add b                                         ; $4ec8: $80
    ld [bc], a                                    ; $4ec9: $02
    ld [bc], a                                    ; $4eca: $02
    add b                                         ; $4ecb: $80
    add b                                         ; $4ecc: $80
    ldh [$ed], a                                  ; $4ecd: $e0 $ed
    ld h, [hl]                                    ; $4ecf: $66
    db $ec                                        ; $4ed0: $ec
    db $e4                                        ; $4ed1: $e4
    xor $e6                                       ; $4ed2: $ee $e6
    and $e8                                       ; $4ed4: $e6 $e8
    rst $28                                       ; $4ed6: $ef
    and $f1                                       ; $4ed7: $e6 $f1
    ldh a, [$f1]                                  ; $4ed9: $f0 $f1
    and a                                         ; $4edb: $a7
    db $dd                                        ; $4edc: $dd
    ld [bc], a                                    ; $4edd: $02
    ld a, [bc]                                    ; $4ede: $0a
    ld [bc], a                                    ; $4edf: $02
    ld [bc], a                                    ; $4ee0: $02
    ld [bc], a                                    ; $4ee1: $02
    ld a, [bc]                                    ; $4ee2: $0a
    ld [bc], a                                    ; $4ee3: $02
    ld [bc], a                                    ; $4ee4: $02
    ld [bc], a                                    ; $4ee5: $02
    ld a, [bc]                                    ; $4ee6: $0a
    ld [bc], a                                    ; $4ee7: $02
    ld [bc], a                                    ; $4ee8: $02
    ld a, [bc]                                    ; $4ee9: $0a
    ld a, [bc]                                    ; $4eea: $0a
    ld a, [bc]                                    ; $4eeb: $0a
    ld a, [bc]                                    ; $4eec: $0a
    db $ed                                        ; $4eed: $ed
    xor $f2                                       ; $4eee: $ee $f2
    di                                            ; $4ef0: $f3
    and $f4                                       ; $4ef1: $e6 $f4
    ld l, d                                       ; $4ef3: $6a
    ld l, c                                       ; $4ef4: $69
    ld a, [c]                                     ; $4ef5: $f2
    push af                                       ; $4ef6: $f5
    ld l, [hl]                                    ; $4ef7: $6e
    ld l, l                                       ; $4ef8: $6d
    or $f7                                        ; $4ef9: $f6 $f7
    ld [hl], a                                    ; $4efb: $77
    halt                                          ; $4efc: $76
    ld [bc], a                                    ; $4efd: $02
    ld [bc], a                                    ; $4efe: $02
    ld a, [bc]                                    ; $4eff: $0a
    ld a, [bc]                                    ; $4f00: $0a
    ld [bc], a                                    ; $4f01: $02
    ld a, [bc]                                    ; $4f02: $0a
    ld [hl+], a                                   ; $4f03: $22
    ld [hl+], a                                   ; $4f04: $22
    ld [bc], a                                    ; $4f05: $02
    ld a, [bc]                                    ; $4f06: $0a
    ld [hl+], a                                   ; $4f07: $22
    ld [hl+], a                                   ; $4f08: $22
    ld a, [bc]                                    ; $4f09: $0a
    ld a, [bc]                                    ; $4f0a: $0a
    ld [hl+], a                                   ; $4f0b: $22
    ld [hl+], a                                   ; $4f0c: $22
    ld h, [hl]                                    ; $4f0d: $66
    db $ec                                        ; $4f0e: $ec
    jp nc, Jump_086_68d1                          ; $4f0f: $d2 $d1 $68

    ld h, a                                       ; $4f12: $67
    jp nc, Jump_086_6cd1                          ; $4f13: $d2 $d1 $6c

    ld l, e                                       ; $4f16: $6b
    jp nc, Jump_086_75d1                          ; $4f17: $d2 $d1 $75

    ld [hl], h                                    ; $4f1a: $74
    jp nc, Jump_000_02d1                          ; $4f1b: $d2 $d1 $02

    ld [bc], a                                    ; $4f1e: $02
    add b                                         ; $4f1f: $80
    add b                                         ; $4f20: $80
    ld [hl+], a                                   ; $4f21: $22
    ld [hl+], a                                   ; $4f22: $22
    add b                                         ; $4f23: $80
    add b                                         ; $4f24: $80
    ld [hl+], a                                   ; $4f25: $22
    ld [hl+], a                                   ; $4f26: $22
    add b                                         ; $4f27: $80
    add b                                         ; $4f28: $80
    ld [hl+], a                                   ; $4f29: $22
    ld [hl+], a                                   ; $4f2a: $22
    add b                                         ; $4f2b: $80
    add b                                         ; $4f2c: $80
    ld hl, sp-$07                                 ; $4f2d: $f8 $f9
    ld a, d                                       ; $4f2f: $7a
    ld a, e                                       ; $4f30: $7b
    ld a, [$02fb]                                 ; $4f31: $fa $fb $02
    inc bc                                        ; $4f34: $03
    sub l                                         ; $4f35: $95
    ld c, a                                       ; $4f36: $4f
    ld d, b                                       ; $4f37: $50
    ld d, c                                       ; $4f38: $51
    ld d, d                                       ; $4f39: $52
    ld d, e                                       ; $4f3a: $53
    ld d, h                                       ; $4f3b: $54
    db $fc                                        ; $4f3c: $fc
    dec c                                         ; $4f3d: $0d
    ld a, [bc]                                    ; $4f3e: $0a
    ld [bc], a                                    ; $4f3f: $02
    ld [bc], a                                    ; $4f40: $02
    dec c                                         ; $4f41: $0d
    ld a, [bc]                                    ; $4f42: $0a
    ld [bc], a                                    ; $4f43: $02
    ld [bc], a                                    ; $4f44: $02
    rrca                                          ; $4f45: $0f
    rlca                                          ; $4f46: $07
    rlca                                          ; $4f47: $07
    rlca                                          ; $4f48: $07
    ld b, $06                                     ; $4f49: $06 $06
    ld b, $0e                                     ; $4f4b: $06 $0e
    db $fd                                        ; $4f4d: $fd
    ld [hl], d                                    ; $4f4e: $72
    ld a, b                                       ; $4f4f: $78
    ld a, c                                       ; $4f50: $79
    ld a, h                                       ; $4f51: $7c
    ld a, l                                       ; $4f52: $7d
    ld a, [hl]                                    ; $4f53: $7e
    ld a, a                                       ; $4f54: $7f
    add b                                         ; $4f55: $80
    add c                                         ; $4f56: $81
    add b                                         ; $4f57: $80
    add c                                         ; $4f58: $81
    adc e                                         ; $4f59: $8b
    adc h                                         ; $4f5a: $8c
    adc e                                         ; $4f5b: $8b
    adc h                                         ; $4f5c: $8c
    ld a, [bc]                                    ; $4f5d: $0a
    ld [bc], a                                    ; $4f5e: $02
    ld [bc], a                                    ; $4f5f: $02
    ld [bc], a                                    ; $4f60: $02
    ld bc, $0101                                  ; $4f61: $01 $01 $01
    ld bc, $0909                                  ; $4f64: $01 $09 $09
    add hl, bc                                    ; $4f67: $09
    add hl, bc                                    ; $4f68: $09
    add hl, bc                                    ; $4f69: $09
    add hl, bc                                    ; $4f6a: $09
    add hl, bc                                    ; $4f6b: $09
    add hl, bc                                    ; $4f6c: $09
    ld a, d                                       ; $4f6d: $7a
    ld a, e                                       ; $4f6e: $7b
    jp nc, $fed1                                  ; $4f6f: $d2 $d1 $fe

    ld a, a                                       ; $4f72: $7f
    jp nc, $80d1                                  ; $4f73: $d2 $d1 $80

    add c                                         ; $4f76: $81
    jp nc, $8bd1                                  ; $4f77: $d2 $d1 $8b

    adc l                                         ; $4f7a: $8d
    jp nc, Jump_000_02d1                          ; $4f7b: $d2 $d1 $02

    ld [bc], a                                    ; $4f7e: $02
    add b                                         ; $4f7f: $80
    add b                                         ; $4f80: $80
    add hl, bc                                    ; $4f81: $09
    ld bc, $8080                                  ; $4f82: $01 $80 $80
    add hl, bc                                    ; $4f85: $09
    add hl, bc                                    ; $4f86: $09
    add b                                         ; $4f87: $80
    add b                                         ; $4f88: $80
    add hl, bc                                    ; $4f89: $09
    add hl, bc                                    ; $4f8a: $09
    add b                                         ; $4f8b: $80
    add b                                         ; $4f8c: $80
    pop de                                        ; $4f8d: $d1
    pop de                                        ; $4f8e: $d1
    jp nc, $d17a                                  ; $4f8f: $d2 $7a $d1

    pop de                                        ; $4f92: $d1
    jp nc, $d102                                  ; $4f93: $d2 $02 $d1

    pop de                                        ; $4f96: $d1
    jp nc, $d13a                                  ; $4f97: $d2 $3a $d1

    pop de                                        ; $4f9a: $d1
    and e                                         ; $4f9b: $a3
    and h                                         ; $4f9c: $a4
    add b                                         ; $4f9d: $80
    add b                                         ; $4f9e: $80
    add b                                         ; $4f9f: $80
    ld [bc], a                                    ; $4fa0: $02
    add b                                         ; $4fa1: $80
    add b                                         ; $4fa2: $80
    add b                                         ; $4fa3: $80
    ld [bc], a                                    ; $4fa4: $02
    add b                                         ; $4fa5: $80
    add b                                         ; $4fa6: $80
    add b                                         ; $4fa7: $80
    rlca                                          ; $4fa8: $07
    add b                                         ; $4fa9: $80
    add b                                         ; $4faa: $80
    adc b                                         ; $4fab: $88
    adc b                                         ; $4fac: $88
    rst $38                                       ; $4fad: $ff
    nop                                           ; $4fae: $00
    ld bc, $0302                                  ; $4faf: $01 $02 $03
    ld c, $0f                                     ; $4fb2: $0e $0f
    inc bc                                        ; $4fb4: $03
    ccf                                           ; $4fb5: $3f
    add l                                         ; $4fb6: $85
    add [hl]                                      ; $4fb7: $86
    add a                                         ; $4fb8: $87
    and h                                         ; $4fb9: $a4
    and h                                         ; $4fba: $a4
    and h                                         ; $4fbb: $a4
    and h                                         ; $4fbc: $a4
    inc c                                         ; $4fbd: $0c
    inc c                                         ; $4fbe: $0c
    inc c                                         ; $4fbf: $0c
    ld a, [bc]                                    ; $4fc0: $0a
    ld [bc], a                                    ; $4fc1: $02
    ld [bc], a                                    ; $4fc2: $02
    ld [bc], a                                    ; $4fc3: $02
    ld a, [bc]                                    ; $4fc4: $0a
    rlca                                          ; $4fc5: $07
    rrca                                          ; $4fc6: $0f
    rrca                                          ; $4fc7: $0f
    rrca                                          ; $4fc8: $0f
    adc b                                         ; $4fc9: $88
    adc b                                         ; $4fca: $88
    adc b                                         ; $4fcb: $88
    adc b                                         ; $4fcc: $88
    inc sp                                        ; $4fcd: $33
    inc [hl]                                      ; $4fce: $34
    or l                                          ; $4fcf: $b5
    or [hl]                                       ; $4fd0: $b6
    dec [hl]                                      ; $4fd1: $35
    ld [hl], $b7                                  ; $4fd2: $36 $b7
    cp b                                          ; $4fd4: $b8
    scf                                           ; $4fd5: $37
    jr c, jr_086_5011                             ; $4fd6: $38 $39

    ld a, [hl-]                                   ; $4fd8: $3a
    and h                                         ; $4fd9: $a4
    and h                                         ; $4fda: $a4
    and h                                         ; $4fdb: $a4
    and h                                         ; $4fdc: $a4
    rlca                                          ; $4fdd: $07
    ld b, $0e                                     ; $4fde: $06 $0e
    ld c, $07                                     ; $4fe0: $0e $07
    ld b, $0e                                     ; $4fe2: $06 $0e
    ld c, $07                                     ; $4fe4: $0e $07
    ld b, $06                                     ; $4fe6: $06 $06
    ld b, $88                                     ; $4fe8: $06 $88
    adc b                                         ; $4fea: $88
    adc b                                         ; $4feb: $88
    adc b                                         ; $4fec: $88
    dec l                                         ; $4fed: $2d
    ld l, $2f                                     ; $4fee: $2e $2f
    jr nc, jr_086_4ff6                            ; $4ff0: $30 $04

    dec b                                         ; $4ff2: $05
    ld b, $07                                     ; $4ff3: $06 $07
    ccf                                           ; $4ff5: $3f

jr_086_4ff6:
    ld [$0a09], sp                                ; $4ff6: $08 $09 $0a
    and h                                         ; $4ff9: $a4
    and h                                         ; $4ffa: $a4
    and h                                         ; $4ffb: $a4
    and h                                         ; $4ffc: $a4
    ld b, $06                                     ; $4ffd: $06 $06
    ld b, $06                                     ; $4fff: $06 $06
    ld c, $0e                                     ; $5001: $0e $0e
    ld c, $0e                                     ; $5003: $0e $0e
    ld b, $0e                                     ; $5005: $06 $0e
    ld c, $0e                                     ; $5007: $0e $0e
    adc b                                         ; $5009: $88
    adc b                                         ; $500a: $88
    adc b                                         ; $500b: $88
    adc b                                         ; $500c: $88
    dec bc                                        ; $500d: $0b
    inc c                                         ; $500e: $0c
    dec c                                         ; $500f: $0d
    or [hl]                                       ; $5010: $b6

jr_086_5011:
    adc [hl]                                      ; $5011: $8e
    adc a                                         ; $5012: $8f
    or a                                          ; $5013: $b7
    cp b                                          ; $5014: $b8
    cp c                                          ; $5015: $b9
    jr c, @+$3b                                   ; $5016: $38 $39

    ld a, [hl-]                                   ; $5018: $3a
    and h                                         ; $5019: $a4
    and h                                         ; $501a: $a4
    and h                                         ; $501b: $a4
    and h                                         ; $501c: $a4
    ld c, $0e                                     ; $501d: $0e $0e
    ld c, $0e                                     ; $501f: $0e $0e
    ld c, $0e                                     ; $5021: $0e $0e
    ld c, $0e                                     ; $5023: $0e $0e
    ld c, $06                                     ; $5025: $0e $06
    ld b, $06                                     ; $5027: $06 $06
    adc b                                         ; $5029: $88
    adc b                                         ; $502a: $88
    adc b                                         ; $502b: $88
    adc b                                         ; $502c: $88
    dec l                                         ; $502d: $2d
    ld l, $2f                                     ; $502e: $2e $2f
    jr nc, jr_086_5036                            ; $5030: $30 $04

    dec b                                         ; $5032: $05
    add e                                         ; $5033: $83
    rlca                                          ; $5034: $07
    ccf                                           ; $5035: $3f

jr_086_5036:
    ld [$0a09], sp                                ; $5036: $08 $09 $0a
    and h                                         ; $5039: $a4
    and h                                         ; $503a: $a4
    and h                                         ; $503b: $a4
    and l                                         ; $503c: $a5
    ld b, $06                                     ; $503d: $06 $06
    ld b, $06                                     ; $503f: $06 $06
    ld c, $0e                                     ; $5041: $0e $0e
    ld c, $0e                                     ; $5043: $0e $0e
    ld b, $0e                                     ; $5045: $06 $0e
    ld c, $0e                                     ; $5047: $0e $0e
    adc b                                         ; $5049: $88
    adc b                                         ; $504a: $88
    adc b                                         ; $504b: $88
    adc b                                         ; $504c: $88
    pop de                                        ; $504d: $d1
    pop de                                        ; $504e: $d1
    pop de                                        ; $504f: $d1
    jp nc, $d1d1                                  ; $5050: $d2 $d1 $d1

    pop de                                        ; $5053: $d1
    and e                                         ; $5054: $a3
    pop de                                        ; $5055: $d1
    pop de                                        ; $5056: $d1
    pop de                                        ; $5057: $d1
    pop de                                        ; $5058: $d1
    pop de                                        ; $5059: $d1
    pop de                                        ; $505a: $d1
    pop de                                        ; $505b: $d1
    pop de                                        ; $505c: $d1
    add b                                         ; $505d: $80
    add b                                         ; $505e: $80
    add b                                         ; $505f: $80
    add b                                         ; $5060: $80
    add b                                         ; $5061: $80
    add b                                         ; $5062: $80
    add b                                         ; $5063: $80
    adc b                                         ; $5064: $88
    add b                                         ; $5065: $80
    add b                                         ; $5066: $80
    add b                                         ; $5067: $80
    add b                                         ; $5068: $80
    add b                                         ; $5069: $80
    add b                                         ; $506a: $80
    add b                                         ; $506b: $80
    add b                                         ; $506c: $80
    inc sp                                        ; $506d: $33
    inc c                                         ; $506e: $0c
    dec c                                         ; $506f: $0d
    or [hl]                                       ; $5070: $b6
    adc [hl]                                      ; $5071: $8e
    ld [hl], $90                                  ; $5072: $36 $90
    sub c                                         ; $5074: $91
    cp c                                          ; $5075: $b9
    cp d                                          ; $5076: $ba
    pop de                                        ; $5077: $d1
    ld c, $92                                     ; $5078: $0e $92
    inc a                                         ; $507a: $3c
    dec a                                         ; $507b: $3d
    ld a, $06                                     ; $507c: $3e $06
    ld c, $0e                                     ; $507e: $0e $0e
    ld c, $0e                                     ; $5080: $0e $0e
    ld b, $0e                                     ; $5082: $06 $0e
    ld c, $0e                                     ; $5084: $0e $0e
    ld c, $0e                                     ; $5086: $0e $0e
    ld c, $0e                                     ; $5088: $0e $0e

jr_086_508a:
    ld b, $06                                     ; $508a: $06 $06
    ld b, $0f                                     ; $508c: $06 $0f
    db $10                                        ; $508e: $10
    ld de, $0482                                  ; $508f: $11 $82 $04
    dec b                                         ; $5092: $05
    add e                                         ; $5093: $83
    add h                                         ; $5094: $84
    ld [de], a                                    ; $5095: $12
    add l                                         ; $5096: $85
    add [hl]                                      ; $5097: $86
    add a                                         ; $5098: $87
    ld b, b                                       ; $5099: $40
    and [hl]                                      ; $509a: $a6
    and h                                         ; $509b: $a4
    and h                                         ; $509c: $a4
    ld c, $0e                                     ; $509d: $0e $0e
    ld c, $0e                                     ; $509f: $0e $0e
    ld c, $0e                                     ; $50a1: $0e $0e
    ld c, $0e                                     ; $50a3: $0e $0e
    ld c, $0e                                     ; $50a5: $0e $0e
    ld c, $0e                                     ; $50a7: $0e $0e
    ld b, $88                                     ; $50a9: $06 $88
    adc b                                         ; $50ab: $88
    adc b                                         ; $50ac: $88
    dec bc                                        ; $50ad: $0b
    inc c                                         ; $50ae: $0c
    jp nc, $35d1                                  ; $50af: $d2 $d1 $35

    ld [hl], $d2                                  ; $50b2: $36 $d2
    pop de                                        ; $50b4: $d1
    scf                                           ; $50b5: $37
    jr c, jr_086_508a                             ; $50b6: $38 $d2

    pop de                                        ; $50b8: $d1
    and h                                         ; $50b9: $a4
    and h                                         ; $50ba: $a4
    xor b                                         ; $50bb: $a8
    pop de                                        ; $50bc: $d1
    ld c, $0f                                     ; $50bd: $0e $0f
    add b                                         ; $50bf: $80
    add b                                         ; $50c0: $80
    ld b, $07                                     ; $50c1: $06 $07
    add b                                         ; $50c3: $80
    add b                                         ; $50c4: $80
    ld b, $07                                     ; $50c5: $06 $07
    add b                                         ; $50c7: $80
    add b                                         ; $50c8: $80
    adc b                                         ; $50c9: $88
    adc b                                         ; $50ca: $88
    adc b                                         ; $50cb: $88
    add b                                         ; $50cc: $80
    ld b, [hl]                                    ; $50cd: $46
    ld b, a                                       ; $50ce: $47
    ld c, b                                       ; $50cf: $48
    ld c, c                                       ; $50d0: $49
    inc de                                        ; $50d1: $13
    inc de                                        ; $50d2: $13
    inc de                                        ; $50d3: $13
    inc de                                        ; $50d4: $13
    inc d                                         ; $50d5: $14
    inc d                                         ; $50d6: $14
    inc d                                         ; $50d7: $14
    inc d                                         ; $50d8: $14
    pop de                                        ; $50d9: $d1
    pop de                                        ; $50da: $d1
    pop de                                        ; $50db: $d1
    pop de                                        ; $50dc: $d1
    ld b, $06                                     ; $50dd: $06 $06
    ld b, $06                                     ; $50df: $06 $06
    adc b                                         ; $50e1: $88
    adc b                                         ; $50e2: $88
    adc b                                         ; $50e3: $88
    adc b                                         ; $50e4: $88
    adc b                                         ; $50e5: $88
    adc b                                         ; $50e6: $88
    adc b                                         ; $50e7: $88
    adc b                                         ; $50e8: $88
    add b                                         ; $50e9: $80
    add b                                         ; $50ea: $80
    add b                                         ; $50eb: $80
    add b                                         ; $50ec: $80
    ld d, l                                       ; $50ed: $55
    jp nc, $d1d1                                  ; $50ee: $d2 $d1 $d1

    inc de                                        ; $50f1: $13
    xor b                                         ; $50f2: $a8
    pop de                                        ; $50f3: $d1
    pop de                                        ; $50f4: $d1
    inc d                                         ; $50f5: $14
    pop de                                        ; $50f6: $d1
    pop de                                        ; $50f7: $d1
    pop de                                        ; $50f8: $d1
    pop de                                        ; $50f9: $d1
    pop de                                        ; $50fa: $d1
    pop de                                        ; $50fb: $d1
    pop de                                        ; $50fc: $d1
    ld b, $80                                     ; $50fd: $06 $80
    add b                                         ; $50ff: $80
    add b                                         ; $5100: $80
    adc b                                         ; $5101: $88
    adc b                                         ; $5102: $88
    add b                                         ; $5103: $80
    add b                                         ; $5104: $80
    adc b                                         ; $5105: $88
    add b                                         ; $5106: $80
    add b                                         ; $5107: $80
    add b                                         ; $5108: $80
    add b                                         ; $5109: $80
    add b                                         ; $510a: $80
    add b                                         ; $510b: $80
    add b                                         ; $510c: $80
    dec bc                                        ; $510d: $0b
    nop                                           ; $510e: $00
    dec bc                                        ; $510f: $0b
    nop                                           ; $5110: $00
    ld h, b                                       ; $5111: $60
    ld a, [bc]                                    ; $5112: $0a
    pop de                                        ; $5113: $d1
    pop de                                        ; $5114: $d1
    pop de                                        ; $5115: $d1
    jp nc, $d1d1                                  ; $5116: $d2 $d1 $d1

    pop de                                        ; $5119: $d1
    jp nc, $d1d1                                  ; $511a: $d2 $d1 $d1

    pop de                                        ; $511d: $d1
    jp nc, $d1d1                                  ; $511e: $d2 $d1 $d1

    pop de                                        ; $5121: $d1
    jp nc, $8080                                  ; $5122: $d2 $80 $80

    add b                                         ; $5125: $80
    add b                                         ; $5126: $80
    add b                                         ; $5127: $80
    add b                                         ; $5128: $80
    add b                                         ; $5129: $80
    add b                                         ; $512a: $80
    add b                                         ; $512b: $80
    add b                                         ; $512c: $80
    add b                                         ; $512d: $80
    add b                                         ; $512e: $80
    add b                                         ; $512f: $80
    add b                                         ; $5130: $80
    add b                                         ; $5131: $80
    add b                                         ; $5132: $80
    db $d3                                        ; $5133: $d3
    call nc, $d6d5                                ; $5134: $d4 $d5 $d6
    rst $10                                       ; $5137: $d7
    ret c                                         ; $5138: $d8

    reti                                          ; $5139: $d9


    jp c, $dbd7                                   ; $513a: $da $d7 $db

    reti                                          ; $513d: $d9


    call c, $ddd7                                 ; $513e: $dc $d7 $dd
    sbc $df                                       ; $5141: $de $df
    rlca                                          ; $5143: $07
    ld bc, $0101                                  ; $5144: $01 $01 $01
    rlca                                          ; $5147: $07
    ld bc, $0101                                  ; $5148: $01 $01 $01
    rlca                                          ; $514b: $07
    ld bc, $0101                                  ; $514c: $01 $01 $01
    rlca                                          ; $514f: $07
    ld bc, $0101                                  ; $5150: $01 $01 $01
    ldh [$d6], a                                  ; $5153: $e0 $d6
    ldh [$d1], a                                  ; $5155: $e0 $d1
    pop hl                                        ; $5157: $e1
    ld [c], a                                     ; $5158: $e2
    db $e3                                        ; $5159: $e3
    db $e4                                        ; $515a: $e4
    push hl                                       ; $515b: $e5
    and $e7                                       ; $515c: $e6 $e7
    add sp, -$17                                  ; $515e: $e8 $e9
    ld [$eceb], a                                 ; $5160: $ea $eb $ec
    ld bc, $0101                                  ; $5163: $01 $01 $01
    ld bc, $0101                                  ; $5166: $01 $01 $01
    ld bc, $0101                                  ; $5169: $01 $01 $01
    ld bc, $0101                                  ; $516c: $01 $01 $01
    ld bc, $0101                                  ; $516f: $01 $01 $01
    ld bc, $d1ed                                  ; $5172: $01 $ed $d1
    xor $ef                                       ; $5175: $ee $ef
    ldh a, [$f1]                                  ; $5177: $f0 $f1
    ld a, [c]                                     ; $5179: $f2
    di                                            ; $517a: $f3
    db $f4                                        ; $517b: $f4
    push af                                       ; $517c: $f5
    or $f7                                        ; $517d: $f6 $f7
    ld hl, sp-$07                                 ; $517f: $f8 $f9
    ld a, [$01fb]                                 ; $5181: $fa $fb $01
    ld bc, $0101                                  ; $5184: $01 $01 $01
    ld bc, $0101                                  ; $5187: $01 $01 $01
    ld bc, $0101                                  ; $518a: $01 $01 $01
    ld bc, $0101                                  ; $518d: $01 $01 $01
    ld bc, $0101                                  ; $5190: $01 $01 $01
    rst $10                                       ; $5193: $d7
    db $fc                                        ; $5194: $fc
    db $fd                                        ; $5195: $fd
    cp $ff                                        ; $5196: $fe $ff
    nop                                           ; $5198: $00
    ld bc, $0302                                  ; $5199: $01 $02 $03
    inc b                                         ; $519c: $04
    dec b                                         ; $519d: $05
    ld b, $07                                     ; $519e: $06 $07
    ld [$0a09], sp                                ; $51a0: $08 $09 $0a
    rlca                                          ; $51a3: $07
    ld bc, $0101                                  ; $51a4: $01 $01 $01
    rlca                                          ; $51a7: $07
    ld bc, $0101                                  ; $51a8: $01 $01 $01
    rlca                                          ; $51ab: $07
    ld bc, $0101                                  ; $51ac: $01 $01 $01
    rlca                                          ; $51af: $07
    ld bc, $8301                                  ; $51b0: $01 $01 $83
    dec bc                                        ; $51b3: $0b
    inc c                                         ; $51b4: $0c
    dec c                                         ; $51b5: $0d
    ld c, $0f                                     ; $51b6: $0e $0f
    db $10                                        ; $51b8: $10
    ld de, $1312                                  ; $51b9: $11 $12 $13
    inc d                                         ; $51bc: $14
    dec d                                         ; $51bd: $15
    ld d, $17                                     ; $51be: $16 $17
    jr jr_086_51db                                ; $51c0: $18 $19

    ld a, [de]                                    ; $51c2: $1a
    ld bc, $0101                                  ; $51c3: $01 $01 $01
    ld bc, $0101                                  ; $51c6: $01 $01 $01
    ld bc, $0101                                  ; $51c9: $01 $01 $01
    ld bc, $0101                                  ; $51cc: $01 $01 $01
    add e                                         ; $51cf: $83
    add e                                         ; $51d0: $83
    ld bc, $1b01                                  ; $51d1: $01 $01 $1b
    inc e                                         ; $51d4: $1c
    dec e                                         ; $51d5: $1d
    ld e, $1f                                     ; $51d6: $1e $1f
    jr nz, @+$23                                  ; $51d8: $20 $21

    ld [hl+], a                                   ; $51da: $22

jr_086_51db:
    inc hl                                        ; $51db: $23
    inc h                                         ; $51dc: $24
    inc d                                         ; $51dd: $14
    dec d                                         ; $51de: $15
    dec h                                         ; $51df: $25
    ld h, $27                                     ; $51e0: $26 $27
    jr z, @+$03                                   ; $51e2: $28 $01

    ld bc, $0101                                  ; $51e4: $01 $01 $01
    ld bc, $0101                                  ; $51e7: $01 $01 $01
    ld bc, $0106                                  ; $51ea: $01 $06 $01
    ld b, $01                                     ; $51ed: $06 $01
    ld bc, $0101                                  ; $51ef: $01 $01 $01
    add e                                         ; $51f2: $83
    add hl, hl                                    ; $51f3: $29
    ld a, [hl+]                                   ; $51f4: $2a
    dec hl                                        ; $51f5: $2b
    inc l                                         ; $51f6: $2c
    dec l                                         ; $51f7: $2d
    ld l, $2f                                     ; $51f8: $2e $2f
    jr nc, jr_086_522d                            ; $51fa: $30 $31

    ld [hl-], a                                   ; $51fc: $32
    inc sp                                        ; $51fd: $33
    inc [hl]                                      ; $51fe: $34
    dec [hl]                                      ; $51ff: $35
    ld [hl+], a                                   ; $5200: $22
    ld [hl], $37                                  ; $5201: $36 $37
    rlca                                          ; $5203: $07
    ld bc, $8301                                  ; $5204: $01 $01 $83
    rlca                                          ; $5207: $07
    ld b, $01                                     ; $5208: $06 $01
    add e                                         ; $520a: $83
    rlca                                          ; $520b: $07
    ld bc, $0306                                  ; $520c: $01 $06 $03
    rlca                                          ; $520f: $07
    ld bc, $0301                                  ; $5210: $01 $01 $03
    jr c, jr_086_524e                             ; $5213: $38 $39

    ld a, [hl-]                                   ; $5215: $3a
    dec hl                                        ; $5216: $2b
    dec sp                                        ; $5217: $3b
    inc a                                         ; $5218: $3c
    ld l, $2f                                     ; $5219: $2e $2f
    dec a                                         ; $521b: $3d
    ld a, $32                                     ; $521c: $3e $32
    inc sp                                        ; $521e: $33
    ccf                                           ; $521f: $3f
    ld b, b                                       ; $5220: $40
    ld [hl+], a                                   ; $5221: $22
    ld [hl], $83                                  ; $5222: $36 $83
    add e                                         ; $5224: $83
    ld b, $01                                     ; $5225: $06 $01
    add e                                         ; $5227: $83
    add e                                         ; $5228: $83
    ld b, $06                                     ; $5229: $06 $06
    inc bc                                        ; $522b: $03
    inc bc                                        ; $522c: $03

jr_086_522d:
    ld b, $01                                     ; $522d: $06 $01
    inc bc                                        ; $522f: $03
    inc bc                                        ; $5230: $03
    ld bc, $4101                                  ; $5231: $01 $01 $41
    ld b, d                                       ; $5234: $42
    ld b, e                                       ; $5235: $43
    ld b, h                                       ; $5236: $44
    ld b, l                                       ; $5237: $45
    ld b, [hl]                                    ; $5238: $46
    ld b, a                                       ; $5239: $47
    ld c, b                                       ; $523a: $48
    ld c, c                                       ; $523b: $49
    ld c, d                                       ; $523c: $4a
    ld c, e                                       ; $523d: $4b
    ld c, h                                       ; $523e: $4c
    ld c, l                                       ; $523f: $4d
    ld c, [hl]                                    ; $5240: $4e
    ld c, a                                       ; $5241: $4f
    ld d, b                                       ; $5242: $50
    ld b, $01                                     ; $5243: $06 $01
    ld bc, $0183                                  ; $5245: $01 $83 $01
    add d                                         ; $5248: $82
    add d                                         ; $5249: $82
    add d                                         ; $524a: $82
    ld b, $82                                     ; $524b: $06 $82
    add d                                         ; $524d: $82

jr_086_524e:
    add d                                         ; $524e: $82
    ld bc, $0202                                  ; $524f: $01 $02 $02
    ld [bc], a                                    ; $5252: $02
    inc d                                         ; $5253: $14
    dec d                                         ; $5254: $15
    ld d, $51                                     ; $5255: $16 $51
    daa                                           ; $5257: $27
    add hl, de                                    ; $5258: $19
    ld a, [de]                                    ; $5259: $1a
    dec h                                         ; $525a: $25
    ld b, e                                       ; $525b: $43
    ld a, [hl-]                                   ; $525c: $3a
    dec hl                                        ; $525d: $2b
    ld b, c                                       ; $525e: $41
    ld d, d                                       ; $525f: $52
    ld l, $2f                                     ; $5260: $2e $2f
    ld b, l                                       ; $5262: $45
    rlca                                          ; $5263: $07
    ld bc, $0701                                  ; $5264: $01 $01 $07
    rlca                                          ; $5267: $07
    ld b, $01                                     ; $5268: $06 $01
    rlca                                          ; $526a: $07
    rlca                                          ; $526b: $07
    ld bc, $0101                                  ; $526c: $01 $01 $01
    rlca                                          ; $526f: $07
    ld bc, $0106                                  ; $5270: $01 $06 $01
    ld d, e                                       ; $5273: $53
    ld d, h                                       ; $5274: $54
    dec d                                         ; $5275: $15
    ld d, $26                                     ; $5276: $16 $26
    daa                                           ; $5278: $27
    add hl, de                                    ; $5279: $19
    ld a, [de]                                    ; $527a: $1a
    ld b, d                                       ; $527b: $42
    ld b, e                                       ; $527c: $43
    ld a, [hl-]                                   ; $527d: $3a
    dec hl                                        ; $527e: $2b
    ld d, l                                       ; $527f: $55
    ld d, d                                       ; $5280: $52
    ld l, $2f                                     ; $5281: $2e $2f
    rlca                                          ; $5283: $07
    rlca                                          ; $5284: $07
    rlca                                          ; $5285: $07
    ld bc, $0707                                  ; $5286: $01 $07 $07
    rlca                                          ; $5289: $07
    ld bc, $0601                                  ; $528a: $01 $01 $06
    ld bc, $0106                                  ; $528d: $01 $06 $01
    ld bc, $0101                                  ; $5290: $01 $01 $01
    inc hl                                        ; $5293: $23
    ld d, [hl]                                    ; $5294: $56
    ld d, a                                       ; $5295: $57
    ld d, a                                       ; $5296: $57
    dec h                                         ; $5297: $25
    ld e, b                                       ; $5298: $58
    ld e, c                                       ; $5299: $59
    ld e, c                                       ; $529a: $59
    ld b, c                                       ; $529b: $41
    ld b, d                                       ; $529c: $42
    ld b, e                                       ; $529d: $43
    ld a, [hl-]                                   ; $529e: $3a
    ld b, l                                       ; $529f: $45
    ld d, l                                       ; $52a0: $55
    ld d, d                                       ; $52a1: $52
    ld l, $01                                     ; $52a2: $2e $01
    ld [bc], a                                    ; $52a4: $02
    ld [bc], a                                    ; $52a5: $02
    ld [bc], a                                    ; $52a6: $02
    ld bc, $0202                                  ; $52a7: $01 $02 $02
    ld [bc], a                                    ; $52aa: $02
    ld bc, $0707                                  ; $52ab: $01 $07 $07
    rlca                                          ; $52ae: $07
    ld bc, $0101                                  ; $52af: $01 $01 $01
    ld bc, $eeef                                  ; $52b2: $01 $ef $ee
    pop de                                        ; $52b5: $d1
    db $ed                                        ; $52b6: $ed
    di                                            ; $52b7: $f3
    ld a, [c]                                     ; $52b8: $f2
    pop af                                        ; $52b9: $f1
    ldh a, [$f7]                                  ; $52ba: $f0 $f7
    or $f5                                        ; $52bc: $f6 $f5
    db $f4                                        ; $52be: $f4
    ei                                            ; $52bf: $fb
    ld a, [$f8f9]                                 ; $52c0: $fa $f9 $f8
    ld hl, $0121                                  ; $52c3: $21 $21 $01
    ld hl, $2121                                  ; $52c6: $21 $21 $21
    ld hl, $2121                                  ; $52c9: $21 $21 $21
    ld hl, $2121                                  ; $52cc: $21 $21 $21
    ld hl, $2121                                  ; $52cf: $21 $21 $21
    ld hl, $e0d1                                  ; $52d2: $21 $d1 $e0
    sub $e0                                       ; $52d5: $d6 $e0
    db $e4                                        ; $52d7: $e4
    db $e3                                        ; $52d8: $e3
    ld [c], a                                     ; $52d9: $e2
    pop hl                                        ; $52da: $e1
    add sp, -$19                                  ; $52db: $e8 $e7
    and $e5                                       ; $52dd: $e6 $e5
    db $ec                                        ; $52df: $ec
    db $eb                                        ; $52e0: $eb
    ld [$01e9], a                                 ; $52e1: $ea $e9 $01
    ld hl, $2121                                  ; $52e4: $21 $21 $21
    ld hl, $2121                                  ; $52e7: $21 $21 $21
    ld hl, $2121                                  ; $52ea: $21 $21 $21
    ld hl, $2121                                  ; $52ed: $21 $21 $21
    ld hl, $2121                                  ; $52f0: $21 $21 $21
    sub $d5                                       ; $52f3: $d6 $d5
    call nc, $dad3                                ; $52f5: $d4 $d3 $da
    reti                                          ; $52f8: $d9


    ret c                                         ; $52f9: $d8

    rst $10                                       ; $52fa: $d7
    call c, $dbd9                                 ; $52fb: $dc $d9 $db
    rst $10                                       ; $52fe: $d7
    rst $18                                       ; $52ff: $df
    sbc $dd                                       ; $5300: $de $dd
    rst $10                                       ; $5302: $d7
    ld hl, $2121                                  ; $5303: $21 $21 $21
    daa                                           ; $5306: $27
    ld hl, $2121                                  ; $5307: $21 $21 $21
    daa                                           ; $530a: $27
    ld hl, $2121                                  ; $530b: $21 $21 $21
    daa                                           ; $530e: $27
    ld hl, $2121                                  ; $530f: $21 $21 $21
    daa                                           ; $5312: $27
    jp nc, $d1d1                                  ; $5313: $d2 $d1 $d1

    pop de                                        ; $5316: $d1
    jp nc, $d1d1                                  ; $5317: $d2 $d1 $d1

    pop de                                        ; $531a: $d1
    jp nc, $d1d1                                  ; $531b: $d2 $d1 $d1

    pop de                                        ; $531e: $d1
    jp nc, $d1d1                                  ; $531f: $d2 $d1 $d1

    pop de                                        ; $5322: $d1
    add b                                         ; $5323: $80
    add b                                         ; $5324: $80
    add b                                         ; $5325: $80
    add b                                         ; $5326: $80
    add b                                         ; $5327: $80
    add b                                         ; $5328: $80
    add b                                         ; $5329: $80
    add b                                         ; $532a: $80
    add b                                         ; $532b: $80
    add b                                         ; $532c: $80
    add b                                         ; $532d: $80
    add b                                         ; $532e: $80
    add b                                         ; $532f: $80
    add b                                         ; $5330: $80
    add b                                         ; $5331: $80
    add b                                         ; $5332: $80
    ld e, d                                       ; $5333: $5a
    dec e                                         ; $5334: $1d
    inc e                                         ; $5335: $1c
    dec de                                        ; $5336: $1b
    ld [hl], $5b                                  ; $5337: $36 $5b
    jr nz, jr_086_5397                            ; $5339: $20 $5c

    ld d, $23                                     ; $533b: $16 $23
    inc h                                         ; $533d: $24
    inc d                                         ; $533e: $14
    ld e, l                                       ; $533f: $5d
    dec h                                         ; $5340: $25
    ld h, $27                                     ; $5341: $26 $27
    ld bc, $2121                                  ; $5343: $01 $21 $21
    ld hl, $0106                                  ; $5346: $21 $06 $01
    ld bc, $0101                                  ; $5349: $01 $01 $01
    ld bc, $0601                                  ; $534c: $01 $01 $06
    add e                                         ; $534f: $83
    ld b, $01                                     ; $5350: $06 $01
    ld b, $0e                                     ; $5352: $06 $0e
    dec c                                         ; $5354: $0d
    inc c                                         ; $5355: $0c
    dec bc                                        ; $5356: $0b
    ld e, [hl]                                    ; $5357: $5e
    ld e, a                                       ; $5358: $5f
    ld h, b                                       ; $5359: $60
    rrca                                          ; $535a: $0f
    dec d                                         ; $535b: $15
    ld d, $23                                     ; $535c: $16 $23
    ld h, c                                       ; $535e: $61
    add hl, de                                    ; $535f: $19
    ld a, [de]                                    ; $5360: $1a
    ld h, d                                       ; $5361: $62
    ld h, e                                       ; $5362: $63
    ld hl, $2121                                  ; $5363: $21 $21 $21
    ld hl, $0101                                  ; $5366: $21 $01 $01
    ld bc, $0121                                  ; $5369: $01 $21 $01
    ld bc, $0101                                  ; $536c: $01 $01 $01
    ld b, $01                                     ; $536f: $06 $01
    add e                                         ; $5371: $83
    add e                                         ; $5372: $83
    cp $fd                                        ; $5373: $fe $fd
    db $fc                                        ; $5375: $fc
    rst $10                                       ; $5376: $d7
    ld [bc], a                                    ; $5377: $02
    ld bc, $ff00                                  ; $5378: $01 $00 $ff
    ld h, h                                       ; $537b: $64
    dec b                                         ; $537c: $05
    inc b                                         ; $537d: $04
    inc bc                                        ; $537e: $03
    ld h, l                                       ; $537f: $65
    ld h, [hl]                                    ; $5380: $66
    ld h, a                                       ; $5381: $67
    rlca                                          ; $5382: $07
    ld hl, $2121                                  ; $5383: $21 $21 $21
    daa                                           ; $5386: $27
    ld hl, $2121                                  ; $5387: $21 $21 $21
    daa                                           ; $538a: $27
    ld bc, $2121                                  ; $538b: $01 $21 $21
    daa                                           ; $538e: $27
    add e                                         ; $538f: $83
    ld bc, $2701                                  ; $5390: $01 $01 $27
    ld b, h                                       ; $5393: $44
    ld b, c                                       ; $5394: $41
    ld b, d                                       ; $5395: $42
    ld b, e                                       ; $5396: $43

jr_086_5397:
    ld c, b                                       ; $5397: $48
    ld l, b                                       ; $5398: $68
    ld l, c                                       ; $5399: $69
    ld d, d                                       ; $539a: $52
    ld c, h                                       ; $539b: $4c
    ld l, d                                       ; $539c: $6a
    ld l, e                                       ; $539d: $6b
    ld sp, $6d6c                                  ; $539e: $31 $6c $6d
    ld l, [hl]                                    ; $53a1: $6e
    dec [hl]                                      ; $53a2: $35
    and e                                         ; $53a3: $a3
    ld bc, $0601                                  ; $53a4: $01 $01 $06
    add d                                         ; $53a7: $82
    add d                                         ; $53a8: $82
    add d                                         ; $53a9: $82
    ld bc, $82a2                                  ; $53aa: $01 $a2 $82
    add d                                         ; $53ad: $82
    ld bc, $0202                                  ; $53ae: $01 $02 $02
    ld [bc], a                                    ; $53b1: $02
    rlca                                          ; $53b2: $07
    ld a, [hl-]                                   ; $53b3: $3a
    dec hl                                        ; $53b4: $2b
    ld l, a                                       ; $53b5: $6f
    ld [hl], b                                    ; $53b6: $70
    ld l, $2f                                     ; $53b7: $2e $2f
    ld [hl], c                                    ; $53b9: $71
    ld [hl], d                                    ; $53ba: $72
    ld [hl-], a                                   ; $53bb: $32
    inc sp                                        ; $53bc: $33
    ld [hl], e                                    ; $53bd: $73
    ld [hl], h                                    ; $53be: $74
    ld [hl+], a                                   ; $53bf: $22
    ld [hl], $75                                  ; $53c0: $36 $75
    halt                                          ; $53c2: $76
    ld bc, $8301                                  ; $53c3: $01 $01 $83
    add e                                         ; $53c6: $83
    ld bc, $8306                                  ; $53c7: $01 $06 $83
    add e                                         ; $53ca: $83
    ld b, $01                                     ; $53cb: $06 $01
    inc bc                                        ; $53cd: $03
    inc bc                                        ; $53ce: $03
    ld bc, $0301                                  ; $53cf: $01 $01 $03
    inc bc                                        ; $53d2: $03
    ld [hl], a                                    ; $53d3: $77
    ld a, [hl-]                                   ; $53d4: $3a
    ld a, b                                       ; $53d5: $78
    ld a, c                                       ; $53d6: $79
    ld a, d                                       ; $53d7: $7a
    ld l, $2f                                     ; $53d8: $2e $2f
    ld a, e                                       ; $53da: $7b
    ld a, h                                       ; $53db: $7c
    ld [hl-], a                                   ; $53dc: $32
    inc sp                                        ; $53dd: $33
    ld c, c                                       ; $53de: $49
    ld a, l                                       ; $53df: $7d
    ld [hl+], a                                   ; $53e0: $22
    ld [hl], $4d                                  ; $53e1: $36 $4d
    add e                                         ; $53e3: $83
    ld bc, $0701                                  ; $53e4: $01 $01 $07
    add e                                         ; $53e7: $83
    ld b, $01                                     ; $53e8: $06 $01
    rlca                                          ; $53ea: $07
    inc bc                                        ; $53eb: $03
    ld bc, $0706                                  ; $53ec: $01 $06 $07
    inc bc                                        ; $53ef: $03
    ld bc, $0701                                  ; $53f0: $01 $01 $07
    ld d, a                                       ; $53f3: $57
    ld d, a                                       ; $53f4: $57
    ld a, [hl]                                    ; $53f5: $7e
    inc d                                         ; $53f6: $14
    ld e, c                                       ; $53f7: $59
    ld e, c                                       ; $53f8: $59
    ld a, a                                       ; $53f9: $7f
    daa                                           ; $53fa: $27
    dec hl                                        ; $53fb: $2b
    ld b, c                                       ; $53fc: $41
    ld b, d                                       ; $53fd: $42
    ld b, e                                       ; $53fe: $43
    cpl                                           ; $53ff: $2f
    ld b, l                                       ; $5400: $45
    ld d, l                                       ; $5401: $55
    ld d, d                                       ; $5402: $52
    ld [bc], a                                    ; $5403: $02
    ld [bc], a                                    ; $5404: $02
    ld [bc], a                                    ; $5405: $02
    rlca                                          ; $5406: $07
    ld [bc], a                                    ; $5407: $02
    ld [bc], a                                    ; $5408: $02
    ld [bc], a                                    ; $5409: $02
    rlca                                          ; $540a: $07
    rlca                                          ; $540b: $07
    rlca                                          ; $540c: $07
    rlca                                          ; $540d: $07
    rlca                                          ; $540e: $07
    ld bc, $0601                                  ; $540f: $01 $01 $06
    ld b, $15                                     ; $5412: $06 $15
    ld d, $51                                     ; $5414: $16 $51
    ld d, e                                       ; $5416: $53
    add hl, de                                    ; $5417: $19
    ld a, [de]                                    ; $5418: $1a
    dec h                                         ; $5419: $25
    ld h, $3a                                     ; $541a: $26 $3a
    dec hl                                        ; $541c: $2b
    ld b, c                                       ; $541d: $41
    ld b, d                                       ; $541e: $42
    ld l, $2f                                     ; $541f: $2e $2f
    ld b, l                                       ; $5421: $45
    ld d, l                                       ; $5422: $55
    ld b, $01                                     ; $5423: $06 $01
    rlca                                          ; $5425: $07
    rlca                                          ; $5426: $07
    ld bc, $0701                                  ; $5427: $01 $01 $07
    rlca                                          ; $542a: $07
    ld bc, $0106                                  ; $542b: $01 $06 $01
    ld bc, $0101                                  ; $542e: $01 $01 $01
    ld bc, $5401                                  ; $5431: $01 $01 $54
    dec d                                         ; $5434: $15
    ld d, $23                                     ; $5435: $16 $23
    daa                                           ; $5437: $27
    add hl, de                                    ; $5438: $19
    ld a, [de]                                    ; $5439: $1a
    dec h                                         ; $543a: $25
    ld b, e                                       ; $543b: $43
    ld a, [hl-]                                   ; $543c: $3a
    dec hl                                        ; $543d: $2b
    ld b, c                                       ; $543e: $41
    ld d, d                                       ; $543f: $52
    ld l, $2f                                     ; $5440: $2e $2f
    ld b, l                                       ; $5442: $45
    rlca                                          ; $5443: $07
    rlca                                          ; $5444: $07
    ld bc, $0707                                  ; $5445: $01 $07 $07
    rlca                                          ; $5448: $07
    ld b, $07                                     ; $5449: $06 $07
    ld b, $01                                     ; $544b: $06 $01
    ld bc, $0107                                  ; $544d: $01 $07 $01
    ld bc, $0706                                  ; $5450: $01 $06 $07
    pop de                                        ; $5453: $d1
    pop de                                        ; $5454: $d1
    pop de                                        ; $5455: $d1
    pop de                                        ; $5456: $d1
    pop de                                        ; $5457: $d1
    pop de                                        ; $5458: $d1
    pop de                                        ; $5459: $d1
    pop de                                        ; $545a: $d1
    pop de                                        ; $545b: $d1
    pop de                                        ; $545c: $d1
    pop de                                        ; $545d: $d1
    pop de                                        ; $545e: $d1
    pop de                                        ; $545f: $d1
    pop de                                        ; $5460: $d1
    pop de                                        ; $5461: $d1
    pop de                                        ; $5462: $d1
    add b                                         ; $5463: $80
    add b                                         ; $5464: $80
    add b                                         ; $5465: $80
    add b                                         ; $5466: $80
    add b                                         ; $5467: $80
    add b                                         ; $5468: $80
    add b                                         ; $5469: $80
    add b                                         ; $546a: $80
    add b                                         ; $546b: $80
    add b                                         ; $546c: $80
    add b                                         ; $546d: $80
    add b                                         ; $546e: $80
    add b                                         ; $546f: $80
    add b                                         ; $5470: $80
    add b                                         ; $5471: $80
    add b                                         ; $5472: $80
    ld sp, $3332                                  ; $5473: $31 $32 $33
    ld c, c                                       ; $5476: $49
    dec [hl]                                      ; $5477: $35
    ld [hl+], a                                   ; $5478: $22
    ld [hl], $4d                                  ; $5479: $36 $4d
    inc d                                         ; $547b: $14
    dec d                                         ; $547c: $15
    ld d, $23                                     ; $547d: $16 $23
    daa                                           ; $547f: $27
    add hl, de                                    ; $5480: $19
    ld a, [de]                                    ; $5481: $1a
    dec h                                         ; $5482: $25
    rlca                                          ; $5483: $07
    ld bc, $0601                                  ; $5484: $01 $01 $06
    rlca                                          ; $5487: $07
    ld bc, $0101                                  ; $5488: $01 $01 $01
    rlca                                          ; $548b: $07
    ld b, $01                                     ; $548c: $06 $01
    ld bc, $0107                                  ; $548e: $01 $07 $01
    ld bc, $8006                                  ; $5491: $01 $06 $80
    ld sp, $3332                                  ; $5494: $31 $32 $33
    add c                                         ; $5497: $81
    add d                                         ; $5498: $82
    add e                                         ; $5499: $83
    add h                                         ; $549a: $84
    inc h                                         ; $549b: $24
    add l                                         ; $549c: $85
    add [hl]                                      ; $549d: $86
    add a                                         ; $549e: $87
    ld h, $88                                     ; $549f: $26 $88
    adc c                                         ; $54a1: $89
    adc d                                         ; $54a2: $8a
    add hl, bc                                    ; $54a3: $09
    ld b, $01                                     ; $54a4: $06 $01
    ld bc, $8a09                                  ; $54a6: $01 $09 $8a
    adc d                                         ; $54a9: $8a
    adc d                                         ; $54aa: $8a
    ld b, $8a                                     ; $54ab: $06 $8a
    adc d                                         ; $54ad: $8a
    adc d                                         ; $54ae: $8a
    ld bc, $0a0a                                  ; $54af: $01 $0a $0a
    ld a, [bc]                                    ; $54b2: $0a
    ld c, c                                       ; $54b3: $49
    add b                                         ; $54b4: $80
    ld sp, $8b32                                  ; $54b5: $31 $32 $8b
    add c                                         ; $54b8: $81
    dec [hl]                                      ; $54b9: $35
    ld [hl+], a                                   ; $54ba: $22
    adc h                                         ; $54bb: $8c
    inc h                                         ; $54bc: $24
    inc d                                         ; $54bd: $14
    dec d                                         ; $54be: $15
    adc l                                         ; $54bf: $8d
    ld h, $27                                     ; $54c0: $26 $27
    add hl, de                                    ; $54c2: $19
    ld bc, $0609                                  ; $54c3: $01 $09 $06
    ld b, $8a                                     ; $54c6: $06 $8a
    ld c, $01                                     ; $54c8: $0e $01
    ld bc, $018a                                  ; $54ca: $01 $8a $01
    ld bc, $0a01                                  ; $54cd: $01 $01 $0a
    rlca                                          ; $54d0: $07
    ld b, $06                                     ; $54d1: $06 $06
    ld b, e                                       ; $54d3: $43
    ld a, [hl-]                                   ; $54d4: $3a
    dec hl                                        ; $54d5: $2b
    ld b, c                                       ; $54d6: $41
    ld d, d                                       ; $54d7: $52
    ld l, $2f                                     ; $54d8: $2e $2f
    ld b, l                                       ; $54da: $45
    ld sp, $3332                                  ; $54db: $31 $32 $33
    ld c, c                                       ; $54de: $49
    dec [hl]                                      ; $54df: $35
    ld [hl+], a                                   ; $54e0: $22
    ld [hl], $4d                                  ; $54e1: $36 $4d
    rlca                                          ; $54e3: $07
    ld bc, $0606                                  ; $54e4: $01 $06 $06
    rlca                                          ; $54e7: $07
    ld bc, $0101                                  ; $54e8: $01 $01 $01
    rlca                                          ; $54eb: $07
    ld b, $01                                     ; $54ec: $06 $01
    ld b, $07                                     ; $54ee: $06 $07
    ld bc, $0106                                  ; $54f0: $01 $06 $01
    ld b, d                                       ; $54f3: $42
    adc [hl]                                      ; $54f4: $8e
    adc a                                         ; $54f5: $8f
    sub b                                         ; $54f6: $90
    ld d, l                                       ; $54f7: $55
    sub c                                         ; $54f8: $91
    sub d                                         ; $54f9: $92
    sub e                                         ; $54fa: $93
    add b                                         ; $54fb: $80
    ld sp, $9594                                  ; $54fc: $31 $94 $95
    add c                                         ; $54ff: $81
    dec [hl]                                      ; $5500: $35
    ld [hl+], a                                   ; $5501: $22
    ld [hl], $01                                  ; $5502: $36 $01
    rrca                                          ; $5504: $0f
    rrca                                          ; $5505: $0f
    rrca                                          ; $5506: $0f
    ld bc, $0a0f                                  ; $5507: $01 $0f $0a
    ld a, [bc]                                    ; $550a: $0a
    add hl, bc                                    ; $550b: $09
    rlca                                          ; $550c: $07
    ld a, [bc]                                    ; $550d: $0a
    ld a, [bc]                                    ; $550e: $0a
    add hl, bc                                    ; $550f: $09
    ld bc, $0707                                  ; $5510: $01 $07 $07
    sub [hl]                                      ; $5513: $96
    ld b, d                                       ; $5514: $42
    ld b, e                                       ; $5515: $43
    ld a, [hl-]                                   ; $5516: $3a
    sub a                                         ; $5517: $97
    ld d, l                                       ; $5518: $55
    ld d, d                                       ; $5519: $52
    ld l, $49                                     ; $551a: $2e $49
    add b                                         ; $551c: $80
    ld sp, $4d32                                  ; $551d: $31 $32 $4d
    add c                                         ; $5520: $81
    dec [hl]                                      ; $5521: $35
    ld [hl+], a                                   ; $5522: $22
    rrca                                          ; $5523: $0f
    rlca                                          ; $5524: $07
    ld bc, $0f01                                  ; $5525: $01 $01 $0f
    rlca                                          ; $5528: $07
    ld b, $01                                     ; $5529: $06 $01
    rlca                                          ; $552b: $07
    rrca                                          ; $552c: $0f
    ld b, $06                                     ; $552d: $06 $06
    rlca                                          ; $552f: $07
    add hl, bc                                    ; $5530: $09
    ld bc, $1401                                  ; $5531: $01 $01 $14
    dec d                                         ; $5534: $15
    ld d, $23                                     ; $5535: $16 $23
    daa                                           ; $5537: $27
    add hl, de                                    ; $5538: $19
    ld a, [de]                                    ; $5539: $1a
    dec h                                         ; $553a: $25
    ld b, e                                       ; $553b: $43
    ld a, [hl-]                                   ; $553c: $3a
    dec hl                                        ; $553d: $2b
    ld b, c                                       ; $553e: $41
    ld d, d                                       ; $553f: $52
    ld l, $2f                                     ; $5540: $2e $2f
    ld b, l                                       ; $5542: $45
    rlca                                          ; $5543: $07
    ld b, $01                                     ; $5544: $06 $01
    ld bc, $0107                                  ; $5546: $01 $07 $01
    ld bc, $0701                                  ; $5549: $01 $01 $07
    ld bc, $0106                                  ; $554c: $01 $06 $01
    rlca                                          ; $554f: $07
    ld bc, $0601                                  ; $5550: $01 $01 $06
    inc h                                         ; $5553: $24
    inc d                                         ; $5554: $14
    dec d                                         ; $5555: $15
    ld d, $26                                     ; $5556: $16 $26
    add d                                         ; $5558: $82
    add e                                         ; $5559: $83
    add h                                         ; $555a: $84
    ld b, d                                       ; $555b: $42
    sbc b                                         ; $555c: $98
    sbc c                                         ; $555d: $99
    sbc d                                         ; $555e: $9a
    ld d, l                                       ; $555f: $55
    sbc e                                         ; $5560: $9b
    sbc h                                         ; $5561: $9c
    sbc l                                         ; $5562: $9d
    ld b, $06                                     ; $5563: $06 $06
    ld bc, $0101                                  ; $5565: $01 $01 $01
    adc d                                         ; $5568: $8a
    adc d                                         ; $5569: $8a
    adc d                                         ; $556a: $8a
    ld bc, $8a8a                                  ; $556b: $01 $8a $8a
    adc d                                         ; $556e: $8a
    ld bc, $0a0a                                  ; $556f: $01 $0a $0a
    ld a, [bc]                                    ; $5572: $0a
    inc hl                                        ; $5573: $23
    inc h                                         ; $5574: $24
    inc d                                         ; $5575: $14
    dec d                                         ; $5576: $15
    adc e                                         ; $5577: $8b
    ld h, $27                                     ; $5578: $26 $27
    add hl, de                                    ; $557a: $19
    adc h                                         ; $557b: $8c
    ld b, d                                       ; $557c: $42
    ld b, e                                       ; $557d: $43
    ld a, [hl-]                                   ; $557e: $3a
    adc l                                         ; $557f: $8d
    ld d, l                                       ; $5580: $55
    ld d, d                                       ; $5581: $52
    ld l, $01                                     ; $5582: $2e $01
    ld bc, $0106                                  ; $5584: $01 $06 $01
    adc d                                         ; $5587: $8a
    ld bc, $0101                                  ; $5588: $01 $01 $01
    adc d                                         ; $558b: $8a
    ld bc, $0106                                  ; $558c: $01 $06 $01
    ld a, [bc]                                    ; $558f: $0a
    rlca                                          ; $5590: $07
    ld b, $01                                     ; $5591: $06 $01
    ld sp, $3332                                  ; $5593: $31 $32 $33
    ld c, c                                       ; $5596: $49
    dec [hl]                                      ; $5597: $35
    ld [hl+], a                                   ; $5598: $22
    ld [hl], $4d                                  ; $5599: $36 $4d
    inc d                                         ; $559b: $14
    dec d                                         ; $559c: $15
    ld d, $23                                     ; $559d: $16 $23
    daa                                           ; $559f: $27
    add hl, de                                    ; $55a0: $19
    ld a, [de]                                    ; $55a1: $1a
    dec h                                         ; $55a2: $25
    rlca                                          ; $55a3: $07
    ld bc, $0106                                  ; $55a4: $01 $06 $01
    rlca                                          ; $55a7: $07
    ld bc, $0101                                  ; $55a8: $01 $01 $01
    rlca                                          ; $55ab: $07
    ld b, $01                                     ; $55ac: $06 $01
    ld b, $07                                     ; $55ae: $06 $07
    ld bc, $0606                                  ; $55b0: $01 $06 $06
    add b                                         ; $55b3: $80
    sbc [hl]                                      ; $55b4: $9e
    sbc a                                         ; $55b5: $9f
    and b                                         ; $55b6: $a0
    add c                                         ; $55b7: $81
    and c                                         ; $55b8: $a1
    sub d                                         ; $55b9: $92
    sub e                                         ; $55ba: $93
    inc h                                         ; $55bb: $24
    inc d                                         ; $55bc: $14
    sub h                                         ; $55bd: $94
    sub l                                         ; $55be: $95
    ld h, $27                                     ; $55bf: $26 $27
    add hl, de                                    ; $55c1: $19
    ld a, [de]                                    ; $55c2: $1a
    add hl, bc                                    ; $55c3: $09
    rrca                                          ; $55c4: $0f
    rrca                                          ; $55c5: $0f
    rrca                                          ; $55c6: $0f
    ld c, $0f                                     ; $55c7: $0e $0f
    ld a, [bc]                                    ; $55c9: $0a
    ld a, [bc]                                    ; $55ca: $0a
    ld bc, $0a07                                  ; $55cb: $01 $07 $0a
    ld a, [bc]                                    ; $55ce: $0a
    ld bc, $0701                                  ; $55cf: $01 $01 $07
    rlca                                          ; $55d2: $07
    and d                                         ; $55d3: $a2
    add b                                         ; $55d4: $80
    ld sp, $a332                                  ; $55d5: $31 $32 $a3
    add c                                         ; $55d8: $81
    dec [hl]                                      ; $55d9: $35
    ld [hl+], a                                   ; $55da: $22
    inc hl                                        ; $55db: $23
    inc h                                         ; $55dc: $24
    inc d                                         ; $55dd: $14
    dec d                                         ; $55de: $15
    dec h                                         ; $55df: $25
    ld h, $27                                     ; $55e0: $26 $27
    add hl, de                                    ; $55e2: $19
    rrca                                          ; $55e3: $0f
    rrca                                          ; $55e4: $0f
    ld b, $06                                     ; $55e5: $06 $06
    rrca                                          ; $55e7: $0f
    rrca                                          ; $55e8: $0f
    ld b, $01                                     ; $55e9: $06 $01
    rlca                                          ; $55eb: $07
    rlca                                          ; $55ec: $07
    ld bc, $0701                                  ; $55ed: $01 $01 $07
    ld bc, $0601                                  ; $55f0: $01 $01 $06
    inc sp                                        ; $55f3: $33
    ld c, c                                       ; $55f4: $49
    add b                                         ; $55f5: $80
    ld sp, $4d36                                  ; $55f6: $31 $36 $4d
    add c                                         ; $55f9: $81
    and h                                         ; $55fa: $a4
    ld d, $23                                     ; $55fb: $16 $23
    inc h                                         ; $55fd: $24
    and l                                         ; $55fe: $a5
    ld a, [de]                                    ; $55ff: $1a
    dec h                                         ; $5600: $25
    ld h, $a6                                     ; $5601: $26 $a6
    ld bc, $0901                                  ; $5603: $01 $01 $09
    ld bc, $0101                                  ; $5606: $01 $01 $01
    ld c, $8a                                     ; $5609: $0e $8a
    ld bc, $0106                                  ; $560b: $01 $06 $01
    adc d                                         ; $560e: $8a
    ld bc, $0101                                  ; $560f: $01 $01 $01
    ld a, [bc]                                    ; $5612: $0a
    ld [hl-], a                                   ; $5613: $32
    inc sp                                        ; $5614: $33
    ld c, c                                       ; $5615: $49
    add b                                         ; $5616: $80
    and a                                         ; $5617: $a7
    add h                                         ; $5618: $84
    adc e                                         ; $5619: $8b
    add c                                         ; $561a: $81
    xor b                                         ; $561b: $a8
    sbc d                                         ; $561c: $9a
    adc h                                         ; $561d: $8c
    inc h                                         ; $561e: $24
    xor c                                         ; $561f: $a9
    xor d                                         ; $5620: $aa
    adc l                                         ; $5621: $8d
    ld h, $01                                     ; $5622: $26 $01
    ld b, $01                                     ; $5624: $06 $01
    add hl, bc                                    ; $5626: $09
    adc d                                         ; $5627: $8a
    adc d                                         ; $5628: $8a
    adc d                                         ; $5629: $8a
    add hl, bc                                    ; $562a: $09
    adc d                                         ; $562b: $8a
    adc d                                         ; $562c: $8a
    adc d                                         ; $562d: $8a
    ld bc, $0a0a                                  ; $562e: $01 $0a $0a
    ld a, [bc]                                    ; $5631: $0a
    rlca                                          ; $5632: $07
    ld sp, $3332                                  ; $5633: $31 $32 $33
    ld c, c                                       ; $5636: $49
    dec [hl]                                      ; $5637: $35
    ld [hl+], a                                   ; $5638: $22
    ld [hl], $4d                                  ; $5639: $36 $4d
    inc d                                         ; $563b: $14
    dec d                                         ; $563c: $15
    ld d, $23                                     ; $563d: $16 $23
    daa                                           ; $563f: $27
    add hl, de                                    ; $5640: $19
    ld a, [de]                                    ; $5641: $1a
    dec h                                         ; $5642: $25
    ld b, $01                                     ; $5643: $06 $01
    ld bc, $0107                                  ; $5645: $01 $07 $01
    ld b, $01                                     ; $5648: $06 $01
    rlca                                          ; $564a: $07
    ld bc, $0101                                  ; $564b: $01 $01 $01
    rlca                                          ; $564e: $07
    ld bc, $0106                                  ; $564f: $01 $06 $01
    rlca                                          ; $5652: $07
    jp nc, $d1d1                                  ; $5653: $d2 $d1 $d1

    pop de                                        ; $5656: $d1
    jp nc, $d1d1                                  ; $5657: $d2 $d1 $d1

    pop de                                        ; $565a: $d1
    jp nc, $d1d1                                  ; $565b: $d2 $d1 $d1

    pop de                                        ; $565e: $d1
    xor e                                         ; $565f: $ab
    xor h                                         ; $5660: $ac
    xor h                                         ; $5661: $ac
    xor h                                         ; $5662: $ac
    add b                                         ; $5663: $80
    add b                                         ; $5664: $80
    add b                                         ; $5665: $80
    add b                                         ; $5666: $80
    add b                                         ; $5667: $80
    add b                                         ; $5668: $80
    add b                                         ; $5669: $80
    add b                                         ; $566a: $80
    add b                                         ; $566b: $80
    add b                                         ; $566c: $80
    add b                                         ; $566d: $80
    add b                                         ; $566e: $80
    adc b                                         ; $566f: $88
    adc b                                         ; $5670: $88
    adc b                                         ; $5671: $88
    adc b                                         ; $5672: $88
    dec hl                                        ; $5673: $2b
    ld b, c                                       ; $5674: $41
    ld b, d                                       ; $5675: $42
    adc [hl]                                      ; $5676: $8e
    cpl                                           ; $5677: $2f
    ld b, l                                       ; $5678: $45
    ld d, l                                       ; $5679: $55
    sub c                                         ; $567a: $91
    inc sp                                        ; $567b: $33
    ld c, c                                       ; $567c: $49
    add b                                         ; $567d: $80
    ld sp, $4d36                                  ; $567e: $31 $36 $4d
    add c                                         ; $5681: $81
    dec [hl]                                      ; $5682: $35
    ld bc, $0106                                  ; $5683: $01 $06 $01
    rrca                                          ; $5686: $0f
    ld b, $01                                     ; $5687: $06 $01
    ld bc, $010f                                  ; $5689: $01 $0f $01
    ld bc, $0709                                  ; $568c: $01 $09 $07
    ld bc, $0906                                  ; $568f: $01 $06 $09
    ld bc, $aead                                  ; $5692: $01 $ad $ae
    sub [hl]                                      ; $5695: $96
    ld b, d                                       ; $5696: $42
    sub d                                         ; $5697: $92
    sub e                                         ; $5698: $93
    sub a                                         ; $5699: $97
    ld d, l                                       ; $569a: $55
    sub h                                         ; $569b: $94
    sub l                                         ; $569c: $95
    ld c, c                                       ; $569d: $49
    add b                                         ; $569e: $80
    ld [hl+], a                                   ; $569f: $22
    ld [hl], $4d                                  ; $56a0: $36 $4d
    add c                                         ; $56a2: $81
    rrca                                          ; $56a3: $0f
    rrca                                          ; $56a4: $0f
    rrca                                          ; $56a5: $0f
    rlca                                          ; $56a6: $07
    ld a, [bc]                                    ; $56a7: $0a
    ld a, [bc]                                    ; $56a8: $0a
    rrca                                          ; $56a9: $0f
    rlca                                          ; $56aa: $07
    ld a, [bc]                                    ; $56ab: $0a
    ld a, [bc]                                    ; $56ac: $0a
    rlca                                          ; $56ad: $07
    rrca                                          ; $56ae: $0f
    rlca                                          ; $56af: $07
    rlca                                          ; $56b0: $07
    rlca                                          ; $56b1: $07
    add hl, bc                                    ; $56b2: $09
    ld b, e                                       ; $56b3: $43
    ld a, [hl-]                                   ; $56b4: $3a
    dec hl                                        ; $56b5: $2b
    ld b, c                                       ; $56b6: $41
    ld d, d                                       ; $56b7: $52
    ld l, $2f                                     ; $56b8: $2e $2f
    ld b, l                                       ; $56ba: $45
    ld sp, $3332                                  ; $56bb: $31 $32 $33
    ld c, c                                       ; $56be: $49
    dec [hl]                                      ; $56bf: $35
    ld [hl+], a                                   ; $56c0: $22
    ld [hl], $4d                                  ; $56c1: $36 $4d
    ld b, $01                                     ; $56c3: $06 $01
    ld b, $07                                     ; $56c5: $06 $07
    ld bc, $0601                                  ; $56c7: $01 $01 $06
    rlca                                          ; $56ca: $07
    ld bc, $0106                                  ; $56cb: $01 $06 $01
    rlca                                          ; $56ce: $07
    ld b, $01                                     ; $56cf: $06 $01
    ld bc, $af07                                  ; $56d1: $01 $07 $af
    or b                                          ; $56d4: $b0
    or c                                          ; $56d5: $b1
    or d                                          ; $56d6: $b2
    or e                                          ; $56d7: $b3
    or h                                          ; $56d8: $b4
    or l                                          ; $56d9: $b5
    or [hl]                                       ; $56da: $b6
    or a                                          ; $56db: $b7
    cp b                                          ; $56dc: $b8
    cp c                                          ; $56dd: $b9
    cp d                                          ; $56de: $ba
    cp e                                          ; $56df: $bb
    cp h                                          ; $56e0: $bc
    cp l                                          ; $56e1: $bd
    cp [hl]                                       ; $56e2: $be
    dec c                                         ; $56e3: $0d
    ld a, [bc]                                    ; $56e4: $0a
    ld a, [bc]                                    ; $56e5: $0a
    ld a, [bc]                                    ; $56e6: $0a
    dec c                                         ; $56e7: $0d
    ld a, [bc]                                    ; $56e8: $0a
    ld a, [bc]                                    ; $56e9: $0a
    ld a, [bc]                                    ; $56ea: $0a
    dec c                                         ; $56eb: $0d
    inc c                                         ; $56ec: $0c
    inc c                                         ; $56ed: $0c
    inc c                                         ; $56ee: $0c
    dec c                                         ; $56ef: $0d
    inc c                                         ; $56f0: $0c
    inc c                                         ; $56f1: $0c
    inc c                                         ; $56f2: $0c
    ld d, $23                                     ; $56f3: $16 $23
    inc h                                         ; $56f5: $24
    inc d                                         ; $56f6: $14
    ld a, [de]                                    ; $56f7: $1a
    dec h                                         ; $56f8: $25
    ld h, $82                                     ; $56f9: $26 $82
    dec hl                                        ; $56fb: $2b
    ld b, c                                       ; $56fc: $41
    ld b, d                                       ; $56fd: $42
    cp a                                          ; $56fe: $bf
    cpl                                           ; $56ff: $2f
    ld b, l                                       ; $5700: $45
    ld d, l                                       ; $5701: $55
    ret nz                                        ; $5702: $c0

    ld bc, $0601                                  ; $5703: $01 $01 $06
    ld bc, $0106                                  ; $5706: $01 $06 $01
    ld b, $8a                                     ; $5709: $06 $8a
    ld bc, $0106                                  ; $570b: $01 $06 $01
    adc d                                         ; $570e: $8a
    ld bc, $0101                                  ; $570f: $01 $01 $01
    ld a, [bc]                                    ; $5712: $0a
    dec d                                         ; $5713: $15
    ld d, $23                                     ; $5714: $16 $23
    inc h                                         ; $5716: $24
    add e                                         ; $5717: $83
    add h                                         ; $5718: $84
    adc e                                         ; $5719: $8b
    ld h, $c1                                     ; $571a: $26 $c1
    sbc d                                         ; $571c: $9a
    adc h                                         ; $571d: $8c
    ld b, d                                       ; $571e: $42
    jp nz, $8d9d                                  ; $571f: $c2 $9d $8d

    ld d, l                                       ; $5722: $55
    ld bc, $0601                                  ; $5723: $01 $01 $06
    ld bc, $8a8a                                  ; $5726: $01 $8a $8a
    adc d                                         ; $5729: $8a
    ld bc, $8a8a                                  ; $572a: $01 $8a $8a
    adc d                                         ; $572d: $8a
    ld bc, $0a0a                                  ; $572e: $01 $0a $0a
    ld a, [bc]                                    ; $5731: $0a
    rlca                                          ; $5732: $07
    inc d                                         ; $5733: $14
    dec d                                         ; $5734: $15
    ld d, $23                                     ; $5735: $16 $23
    daa                                           ; $5737: $27
    add hl, de                                    ; $5738: $19
    ld a, [de]                                    ; $5739: $1a
    dec h                                         ; $573a: $25
    ld b, e                                       ; $573b: $43
    ld a, [hl-]                                   ; $573c: $3a
    dec hl                                        ; $573d: $2b
    ld b, c                                       ; $573e: $41
    ld d, d                                       ; $573f: $52
    ld l, $2f                                     ; $5740: $2e $2f
    ld b, l                                       ; $5742: $45
    ld bc, $0601                                  ; $5743: $01 $01 $06
    rlca                                          ; $5746: $07
    ld b, $01                                     ; $5747: $06 $01
    ld bc, $0107                                  ; $5749: $01 $07 $01
    ld bc, $0101                                  ; $574c: $01 $01 $01
    ld bc, $0601                                  ; $574f: $01 $01 $06
    ld bc, $c4c3                                  ; $5752: $01 $c3 $c4
    push bc                                       ; $5755: $c5
    add $26                                       ; $5756: $c6 $26
    cp b                                          ; $5758: $b8
    cp c                                          ; $5759: $b9
    cp d                                          ; $575a: $ba
    ld b, d                                       ; $575b: $42
    rst $00                                       ; $575c: $c7
    cp l                                          ; $575d: $bd
    ret z                                         ; $575e: $c8

    ld d, l                                       ; $575f: $55
    ld d, d                                       ; $5760: $52
    ld l, $2f                                     ; $5761: $2e $2f
    dec c                                         ; $5763: $0d
    inc c                                         ; $5764: $0c
    inc c                                         ; $5765: $0c
    inc c                                         ; $5766: $0c
    rlca                                          ; $5767: $07
    inc c                                         ; $5768: $0c
    inc c                                         ; $5769: $0c
    inc c                                         ; $576a: $0c
    rlca                                          ; $576b: $07
    inc c                                         ; $576c: $0c
    inc c                                         ; $576d: $0c
    inc c                                         ; $576e: $0c
    rlca                                          ; $576f: $07
    rlca                                          ; $5770: $07
    rlca                                          ; $5771: $07
    rlca                                          ; $5772: $07
    inc sp                                        ; $5773: $33
    ld c, c                                       ; $5774: $49
    add b                                         ; $5775: $80
    sbc [hl]                                      ; $5776: $9e
    ld [hl], $4d                                  ; $5777: $36 $4d
    add c                                         ; $5779: $81
    and c                                         ; $577a: $a1
    ld d, $23                                     ; $577b: $16 $23
    inc h                                         ; $577d: $24
    inc d                                         ; $577e: $14
    ld a, [de]                                    ; $577f: $1a
    dec h                                         ; $5780: $25
    ld h, $27                                     ; $5781: $26 $27
    ld bc, $0e01                                  ; $5783: $01 $01 $0e
    rrca                                          ; $5786: $0f
    ld b, $01                                     ; $5787: $06 $01
    add hl, bc                                    ; $5789: $09
    rrca                                          ; $578a: $0f
    ld bc, $0101                                  ; $578b: $01 $01 $01
    rlca                                          ; $578e: $07
    ld bc, $0601                                  ; $578f: $01 $01 $06
    ld bc, $a09f                                  ; $5792: $01 $9f $a0
    and d                                         ; $5795: $a2
    add b                                         ; $5796: $80
    sub d                                         ; $5797: $92
    sub e                                         ; $5798: $93
    and e                                         ; $5799: $a3
    add c                                         ; $579a: $81
    sub h                                         ; $579b: $94
    sub l                                         ; $579c: $95
    inc hl                                        ; $579d: $23
    inc h                                         ; $579e: $24
    add hl, de                                    ; $579f: $19
    ld a, [de]                                    ; $57a0: $1a
    dec h                                         ; $57a1: $25
    ld h, $0f                                     ; $57a2: $26 $0f
    rrca                                          ; $57a4: $0f
    rrca                                          ; $57a5: $0f
    rrca                                          ; $57a6: $0f
    ld a, [bc]                                    ; $57a7: $0a
    ld a, [bc]                                    ; $57a8: $0a
    rrca                                          ; $57a9: $0f
    rrca                                          ; $57aa: $0f
    ld a, [bc]                                    ; $57ab: $0a
    ld a, [bc]                                    ; $57ac: $0a
    rlca                                          ; $57ad: $07
    rlca                                          ; $57ae: $07
    rlca                                          ; $57af: $07
    rlca                                          ; $57b0: $07
    rlca                                          ; $57b1: $07
    ld bc, $3231                                  ; $57b2: $01 $31 $32
    inc sp                                        ; $57b5: $33
    ld c, c                                       ; $57b6: $49
    dec [hl]                                      ; $57b7: $35
    ld [hl+], a                                   ; $57b8: $22
    ld [hl], $4d                                  ; $57b9: $36 $4d
    inc d                                         ; $57bb: $14
    dec d                                         ; $57bc: $15
    ld d, $23                                     ; $57bd: $16 $23
    daa                                           ; $57bf: $27
    add hl, de                                    ; $57c0: $19
    ld a, [de]                                    ; $57c1: $1a
    dec h                                         ; $57c2: $25
    ld b, $01                                     ; $57c3: $06 $01
    ld bc, $0101                                  ; $57c5: $01 $01 $01
    ld bc, $0106                                  ; $57c8: $01 $06 $01
    ld b, $06                                     ; $57cb: $06 $06
    ld bc, $0601                                  ; $57cd: $01 $01 $06
    ld bc, $0601                                  ; $57d0: $01 $01 $06
    add b                                         ; $57d3: $80
    ld sp, $3332                                  ; $57d4: $31 $32 $33
    add c                                         ; $57d7: $81
    dec [hl]                                      ; $57d8: $35
    ld [hl+], a                                   ; $57d9: $22
    ld [hl], $c9                                  ; $57da: $36 $c9
    xor h                                         ; $57dc: $ac
    xor h                                         ; $57dd: $ac
    xor h                                         ; $57de: $ac
    jp nc, $d1d1                                  ; $57df: $d2 $d1 $d1

    pop de                                        ; $57e2: $d1
    ld c, $01                                     ; $57e3: $0e $01
    ld b, $01                                     ; $57e5: $06 $01
    add hl, bc                                    ; $57e7: $09
    ld b, $01                                     ; $57e8: $06 $01
    ld bc, $8888                                  ; $57ea: $01 $88 $88
    adc b                                         ; $57ed: $88
    adc b                                         ; $57ee: $88
    add b                                         ; $57ef: $80
    add b                                         ; $57f0: $80
    add b                                         ; $57f1: $80
    add b                                         ; $57f2: $80
    pop de                                        ; $57f3: $d1
    pop de                                        ; $57f4: $d1
    pop de                                        ; $57f5: $d1
    pop de                                        ; $57f6: $d1
    pop de                                        ; $57f7: $d1
    pop de                                        ; $57f8: $d1
    pop de                                        ; $57f9: $d1
    pop de                                        ; $57fa: $d1
    pop de                                        ; $57fb: $d1
    pop de                                        ; $57fc: $d1
    pop de                                        ; $57fd: $d1
    pop de                                        ; $57fe: $d1
    xor h                                         ; $57ff: $ac
    xor h                                         ; $5800: $ac
    xor h                                         ; $5801: $ac
    jp z, $8080                                   ; $5802: $ca $80 $80

    add b                                         ; $5805: $80
    add b                                         ; $5806: $80
    add b                                         ; $5807: $80
    add b                                         ; $5808: $80
    add b                                         ; $5809: $80
    add b                                         ; $580a: $80
    add b                                         ; $580b: $80
    add b                                         ; $580c: $80
    add b                                         ; $580d: $80
    add b                                         ; $580e: $80
    adc b                                         ; $580f: $88
    adc b                                         ; $5810: $88
    adc b                                         ; $5811: $88
    adc b                                         ; $5812: $88
    set 1, h                                      ; $5813: $cb $cc
    call $ced2                                    ; $5815: $cd $d2 $ce
    rst $08                                       ; $5818: $cf
    ret nc                                        ; $5819: $d0

    jp nc, $d2d1                                  ; $581a: $d2 $d1 $d2

    db $d3                                        ; $581d: $d3
    xor e                                         ; $581e: $ab
    call nc, $d6d5                                ; $581f: $d4 $d5 $d6
    xor a                                         ; $5822: $af
    ld a, [bc]                                    ; $5823: $0a
    ld a, [bc]                                    ; $5824: $0a
    ld a, [bc]                                    ; $5825: $0a
    add b                                         ; $5826: $80
    ld a, [bc]                                    ; $5827: $0a
    ld a, [bc]                                    ; $5828: $0a
    ld a, [bc]                                    ; $5829: $0a
    add b                                         ; $582a: $80
    inc c                                         ; $582b: $0c
    inc c                                         ; $582c: $0c
    inc c                                         ; $582d: $0c
    adc b                                         ; $582e: $88
    inc c                                         ; $582f: $0c
    inc c                                         ; $5830: $0c
    inc c                                         ; $5831: $0c
    dec c                                         ; $5832: $0d
    pop de                                        ; $5833: $d1
    pop de                                        ; $5834: $d1
    pop de                                        ; $5835: $d1
    pop de                                        ; $5836: $d1
    pop de                                        ; $5837: $d1
    pop de                                        ; $5838: $d1
    pop de                                        ; $5839: $d1
    pop de                                        ; $583a: $d1
    xor h                                         ; $583b: $ac
    xor h                                         ; $583c: $ac
    xor h                                         ; $583d: $ac
    jp z, $d8d7                                   ; $583e: $ca $d7 $d8

    reti                                          ; $5841: $d9


    jp nc, $8080                                  ; $5842: $d2 $80 $80

    add b                                         ; $5845: $80
    add b                                         ; $5846: $80
    add b                                         ; $5847: $80
    add b                                         ; $5848: $80
    add b                                         ; $5849: $80
    add b                                         ; $584a: $80
    adc b                                         ; $584b: $88
    adc b                                         ; $584c: $88
    adc b                                         ; $584d: $88
    adc b                                         ; $584e: $88
    dec c                                         ; $584f: $0d
    dec c                                         ; $5850: $0d
    dec c                                         ; $5851: $0d
    add b                                         ; $5852: $80
    jp c, $dcdb                                   ; $5853: $da $db $dc

    or e                                          ; $5856: $b3
    db $dd                                        ; $5857: $dd
    sbc $d3                                       ; $5858: $de $d3
    or a                                          ; $585a: $b7
    rst $18                                       ; $585b: $df
    ldh [$d6], a                                  ; $585c: $e0 $d6
    cp e                                          ; $585e: $bb
    ld b, l                                       ; $585f: $45
    ld d, l                                       ; $5860: $55
    ld d, d                                       ; $5861: $52
    jp $0c0c                                      ; $5862: $c3 $0c $0c


    inc c                                         ; $5865: $0c
    dec c                                         ; $5866: $0d
    inc c                                         ; $5867: $0c
    inc c                                         ; $5868: $0c
    inc c                                         ; $5869: $0c
    dec c                                         ; $586a: $0d
    inc c                                         ; $586b: $0c
    inc c                                         ; $586c: $0c
    inc c                                         ; $586d: $0c
    dec c                                         ; $586e: $0d
    rlca                                          ; $586f: $07
    rlca                                          ; $5870: $07
    rlca                                          ; $5871: $07
    dec c                                         ; $5872: $0d
    pop hl                                        ; $5873: $e1
    ld [c], a                                     ; $5874: $e2
    db $e3                                        ; $5875: $e3
    db $e4                                        ; $5876: $e4
    push hl                                       ; $5877: $e5
    and $e7                                       ; $5878: $e6 $e7
    db $e4                                        ; $587a: $e4
    add sp, -$17                                  ; $587b: $e8 $e9
    ld [$ebe4], a                                 ; $587d: $ea $e4 $eb
    db $ec                                        ; $5880: $ec
    db $ed                                        ; $5881: $ed
    db $e4                                        ; $5882: $e4
    dec c                                         ; $5883: $0d
    dec c                                         ; $5884: $0d
    dec c                                         ; $5885: $0d
    adc b                                         ; $5886: $88
    dec c                                         ; $5887: $0d
    dec c                                         ; $5888: $0d
    dec c                                         ; $5889: $0d
    adc b                                         ; $588a: $88
    dec c                                         ; $588b: $0d
    dec c                                         ; $588c: $0d
    dec c                                         ; $588d: $0d
    adc b                                         ; $588e: $88
    dec c                                         ; $588f: $0d
    dec c                                         ; $5890: $0d
    dec c                                         ; $5891: $0d
    adc b                                         ; $5892: $88
    ld c, c                                       ; $5893: $49
    add b                                         ; $5894: $80
    ld sp, $4d32                                  ; $5895: $31 $32 $4d
    add c                                         ; $5898: $81
    dec [hl]                                      ; $5899: $35
    ld [hl+], a                                   ; $589a: $22
    xor h                                         ; $589b: $ac
    xor h                                         ; $589c: $ac
    xor h                                         ; $589d: $ac
    xor h                                         ; $589e: $ac
    pop de                                        ; $589f: $d1
    pop de                                        ; $58a0: $d1
    pop de                                        ; $58a1: $d1
    pop de                                        ; $58a2: $d1
    ld b, $0e                                     ; $58a3: $06 $0e
    rlca                                          ; $58a5: $07
    rlca                                          ; $58a6: $07
    ld b, $09                                     ; $58a7: $06 $09
    ld b, $01                                     ; $58a9: $06 $01
    adc b                                         ; $58ab: $88
    adc b                                         ; $58ac: $88
    adc b                                         ; $58ad: $88
    adc b                                         ; $58ae: $88
    add b                                         ; $58af: $80
    add b                                         ; $58b0: $80
    add b                                         ; $58b1: $80
    add b                                         ; $58b2: $80
    inc sp                                        ; $58b3: $33
    ld c, c                                       ; $58b4: $49
    add b                                         ; $58b5: $80
    db $e4                                        ; $58b6: $e4
    ld [hl], $4d                                  ; $58b7: $36 $4d
    add c                                         ; $58b9: $81
    jp nc, $acac                                  ; $58ba: $d2 $ac $ac

    xor h                                         ; $58bd: $ac
    xor $d1                                       ; $58be: $ee $d1
    pop de                                        ; $58c0: $d1
    pop de                                        ; $58c1: $d1
    pop de                                        ; $58c2: $d1
    rlca                                          ; $58c3: $07
    rlca                                          ; $58c4: $07
    rrca                                          ; $58c5: $0f
    adc b                                         ; $58c6: $88
    ld b, $01                                     ; $58c7: $06 $01
    rrca                                          ; $58c9: $0f
    add b                                         ; $58ca: $80
    adc b                                         ; $58cb: $88
    adc b                                         ; $58cc: $88
    adc b                                         ; $58cd: $88
    adc b                                         ; $58ce: $88
    add b                                         ; $58cf: $80
    add b                                         ; $58d0: $80
    add b                                         ; $58d1: $80
    add b                                         ; $58d2: $80
    rst $28                                       ; $58d3: $ef
    pop de                                        ; $58d4: $d1
    pop de                                        ; $58d5: $d1
    pop de                                        ; $58d6: $d1
    rst $28                                       ; $58d7: $ef
    pop de                                        ; $58d8: $d1
    pop de                                        ; $58d9: $d1
    pop de                                        ; $58da: $d1
    rst $28                                       ; $58db: $ef
    pop de                                        ; $58dc: $d1
    pop de                                        ; $58dd: $d1
    pop de                                        ; $58de: $d1
    pop de                                        ; $58df: $d1
    pop de                                        ; $58e0: $d1
    pop de                                        ; $58e1: $d1
    pop de                                        ; $58e2: $d1
    adc b                                         ; $58e3: $88
    add b                                         ; $58e4: $80
    add b                                         ; $58e5: $80
    add b                                         ; $58e6: $80
    adc b                                         ; $58e7: $88
    add b                                         ; $58e8: $80
    add b                                         ; $58e9: $80
    add b                                         ; $58ea: $80
    adc b                                         ; $58eb: $88
    add b                                         ; $58ec: $80
    add b                                         ; $58ed: $80
    add b                                         ; $58ee: $80
    add b                                         ; $58ef: $80
    add b                                         ; $58f0: $80
    add b                                         ; $58f1: $80
    add b                                         ; $58f2: $80
    ld b, e                                       ; $58f3: $43
    ld a, [hl-]                                   ; $58f4: $3a
    dec hl                                        ; $58f5: $2b
    ld b, c                                       ; $58f6: $41
    ld d, d                                       ; $58f7: $52
    ld l, $2f                                     ; $58f8: $2e $2f
    ld b, l                                       ; $58fa: $45
    ld sp, $3332                                  ; $58fb: $31 $32 $33
    ld c, c                                       ; $58fe: $49
    dec [hl]                                      ; $58ff: $35
    ld [hl+], a                                   ; $5900: $22
    ld [hl], $4d                                  ; $5901: $36 $4d
    rlca                                          ; $5903: $07
    ld bc, $0601                                  ; $5904: $01 $01 $06
    rlca                                          ; $5907: $07
    ld b, $01                                     ; $5908: $06 $01
    ld bc, $0607                                  ; $590a: $01 $07 $06
    ld bc, $0706                                  ; $590d: $01 $06 $07
    ld bc, $0101                                  ; $5910: $01 $01 $01
    ld b, d                                       ; $5913: $42
    ld b, e                                       ; $5914: $43
    ld a, [hl-]                                   ; $5915: $3a
    dec hl                                        ; $5916: $2b
    ld d, l                                       ; $5917: $55
    add d                                         ; $5918: $82
    add e                                         ; $5919: $83
    add h                                         ; $591a: $84
    add b                                         ; $591b: $80
    add l                                         ; $591c: $85
    add [hl]                                      ; $591d: $86
    add a                                         ; $591e: $87
    add c                                         ; $591f: $81
    adc b                                         ; $5920: $88
    adc c                                         ; $5921: $89
    adc d                                         ; $5922: $8a
    ld b, $01                                     ; $5923: $06 $01
    ld b, $01                                     ; $5925: $06 $01
    ld bc, $8a8a                                  ; $5927: $01 $8a $8a
    adc d                                         ; $592a: $8a
    add hl, bc                                    ; $592b: $09
    adc d                                         ; $592c: $8a
    adc d                                         ; $592d: $8a
    adc d                                         ; $592e: $8a
    ld c, $0a                                     ; $592f: $0e $0a
    ld a, [bc]                                    ; $5931: $0a
    ld a, [bc]                                    ; $5932: $0a
    ld b, c                                       ; $5933: $41
    ld b, d                                       ; $5934: $42
    ld b, e                                       ; $5935: $43
    ld a, [hl-]                                   ; $5936: $3a
    adc e                                         ; $5937: $8b
    ld d, l                                       ; $5938: $55
    ld d, d                                       ; $5939: $52
    ld l, $8c                                     ; $593a: $2e $8c
    add b                                         ; $593c: $80
    ld sp, $8d32                                  ; $593d: $31 $32 $8d
    add c                                         ; $5940: $81
    dec [hl]                                      ; $5941: $35
    ld [hl+], a                                   ; $5942: $22
    ld bc, $0106                                  ; $5943: $01 $06 $01
    ld b, $8a                                     ; $5946: $06 $8a
    ld b, $01                                     ; $5948: $06 $01
    ld bc, $098a                                  ; $594a: $01 $8a $09
    ld bc, $0a01                                  ; $594d: $01 $01 $0a
    rrca                                          ; $5950: $0f
    ld bc, $1406                                  ; $5951: $01 $06 $14
    dec d                                         ; $5954: $15
    ld d, $23                                     ; $5955: $16 $23
    daa                                           ; $5957: $27
    add hl, de                                    ; $5958: $19
    ld a, [de]                                    ; $5959: $1a
    dec h                                         ; $595a: $25
    ld b, e                                       ; $595b: $43
    ld a, [hl-]                                   ; $595c: $3a
    dec hl                                        ; $595d: $2b
    ld b, c                                       ; $595e: $41
    ld d, d                                       ; $595f: $52
    ld l, $2f                                     ; $5960: $2e $2f
    ld b, l                                       ; $5962: $45
    rlca                                          ; $5963: $07
    ld bc, $0106                                  ; $5964: $01 $06 $01
    rlca                                          ; $5967: $07
    ld b, $01                                     ; $5968: $06 $01
    ld bc, $0107                                  ; $596a: $01 $07 $01
    ld b, $01                                     ; $596d: $06 $01
    rlca                                          ; $596f: $07
    ld bc, $0606                                  ; $5970: $01 $06 $06
    inc h                                         ; $5973: $24
    ldh a, [$f1]                                  ; $5974: $f0 $f1
    ld a, [c]                                     ; $5976: $f2
    ld h, $f3                                     ; $5977: $26 $f3
    sub d                                         ; $5979: $92
    sub e                                         ; $597a: $93
    ld b, d                                       ; $597b: $42
    ld b, e                                       ; $597c: $43
    sub h                                         ; $597d: $94
    sub l                                         ; $597e: $95
    ld d, l                                       ; $597f: $55
    ld d, d                                       ; $5980: $52
    ld l, $2f                                     ; $5981: $2e $2f
    ld bc, $0f0f                                  ; $5983: $01 $0f $0f
    rrca                                          ; $5986: $0f
    ld b, $0f                                     ; $5987: $06 $0f
    ld a, [bc]                                    ; $5989: $0a
    ld a, [bc]                                    ; $598a: $0a
    ld bc, $0a07                                  ; $598b: $01 $07 $0a
    ld a, [bc]                                    ; $598e: $0a
    ld bc, $0701                                  ; $598f: $01 $01 $07
    rlca                                          ; $5992: $07
    db $f4                                        ; $5993: $f4
    inc h                                         ; $5994: $24
    inc d                                         ; $5995: $14
    dec d                                         ; $5996: $15
    push af                                       ; $5997: $f5
    ld h, $27                                     ; $5998: $26 $27
    add hl, de                                    ; $599a: $19
    ld b, c                                       ; $599b: $41
    ld b, d                                       ; $599c: $42
    ld b, e                                       ; $599d: $43
    ld a, [hl-]                                   ; $599e: $3a
    ld b, l                                       ; $599f: $45
    ld d, l                                       ; $59a0: $55
    ld d, d                                       ; $59a1: $52
    ld l, $0f                                     ; $59a2: $2e $0f
    rlca                                          ; $59a4: $07
    ld b, $01                                     ; $59a5: $06 $01
    rrca                                          ; $59a7: $0f
    rlca                                          ; $59a8: $07
    ld bc, $0701                                  ; $59a9: $01 $01 $07
    rlca                                          ; $59ac: $07
    ld bc, $0706                                  ; $59ad: $01 $06 $07
    ld bc, $0101                                  ; $59b0: $01 $01 $01
    pop de                                        ; $59b3: $d1
    pop de                                        ; $59b4: $d1
    pop de                                        ; $59b5: $d1
    jp nc, $d1d1                                  ; $59b6: $d2 $d1 $d1

    pop de                                        ; $59b9: $d1
    xor e                                         ; $59ba: $ab
    pop de                                        ; $59bb: $d1
    pop de                                        ; $59bc: $d1
    pop de                                        ; $59bd: $d1
    pop de                                        ; $59be: $d1
    pop de                                        ; $59bf: $d1
    pop de                                        ; $59c0: $d1
    pop de                                        ; $59c1: $d1
    pop de                                        ; $59c2: $d1
    add b                                         ; $59c3: $80
    add b                                         ; $59c4: $80
    add b                                         ; $59c5: $80
    add b                                         ; $59c6: $80
    add b                                         ; $59c7: $80
    add b                                         ; $59c8: $80
    add b                                         ; $59c9: $80
    adc b                                         ; $59ca: $88
    add b                                         ; $59cb: $80
    add b                                         ; $59cc: $80
    add b                                         ; $59cd: $80
    add b                                         ; $59ce: $80
    add b                                         ; $59cf: $80
    add b                                         ; $59d0: $80
    add b                                         ; $59d1: $80
    add b                                         ; $59d2: $80
    ld sp, $3332                                  ; $59d3: $31 $32 $33
    ld c, c                                       ; $59d6: $49
    xor h                                         ; $59d7: $ac
    xor h                                         ; $59d8: $ac
    xor h                                         ; $59d9: $ac
    xor h                                         ; $59da: $ac
    pop de                                        ; $59db: $d1
    pop de                                        ; $59dc: $d1
    pop de                                        ; $59dd: $d1
    pop de                                        ; $59de: $d1
    pop de                                        ; $59df: $d1
    pop de                                        ; $59e0: $d1
    pop de                                        ; $59e1: $d1
    pop de                                        ; $59e2: $d1
    rlca                                          ; $59e3: $07
    ld b, $01                                     ; $59e4: $06 $01
    ld bc, $8888                                  ; $59e6: $01 $88 $88
    adc b                                         ; $59e9: $88
    adc b                                         ; $59ea: $88
    add b                                         ; $59eb: $80
    add b                                         ; $59ec: $80
    add b                                         ; $59ed: $80
    add b                                         ; $59ee: $80
    add b                                         ; $59ef: $80
    add b                                         ; $59f0: $80
    add b                                         ; $59f1: $80
    add b                                         ; $59f2: $80
    add b                                         ; $59f3: $80
    ld sp, $3332                                  ; $59f4: $31 $32 $33
    xor h                                         ; $59f7: $ac
    xor h                                         ; $59f8: $ac
    xor h                                         ; $59f9: $ac
    xor h                                         ; $59fa: $ac
    pop de                                        ; $59fb: $d1
    pop de                                        ; $59fc: $d1
    pop de                                        ; $59fd: $d1
    pop de                                        ; $59fe: $d1
    pop de                                        ; $59ff: $d1
    pop de                                        ; $5a00: $d1
    pop de                                        ; $5a01: $d1
    pop de                                        ; $5a02: $d1
    ld c, $01                                     ; $5a03: $0e $01
    ld bc, $8806                                  ; $5a05: $01 $06 $88
    adc b                                         ; $5a08: $88
    adc b                                         ; $5a09: $88
    adc b                                         ; $5a0a: $88
    add b                                         ; $5a0b: $80
    add b                                         ; $5a0c: $80
    add b                                         ; $5a0d: $80
    add b                                         ; $5a0e: $80
    add b                                         ; $5a0f: $80
    add b                                         ; $5a10: $80
    add b                                         ; $5a11: $80
    add b                                         ; $5a12: $80
    ld c, c                                       ; $5a13: $49
    add b                                         ; $5a14: $80
    ld sp, $ac32                                  ; $5a15: $31 $32 $ac
    xor h                                         ; $5a18: $ac
    xor h                                         ; $5a19: $ac
    xor h                                         ; $5a1a: $ac
    pop de                                        ; $5a1b: $d1
    pop de                                        ; $5a1c: $d1
    pop de                                        ; $5a1d: $d1
    pop de                                        ; $5a1e: $d1
    pop de                                        ; $5a1f: $d1
    pop de                                        ; $5a20: $d1
    pop de                                        ; $5a21: $d1
    pop de                                        ; $5a22: $d1
    ld b, $09                                     ; $5a23: $06 $09
    ld bc, $8806                                  ; $5a25: $01 $06 $88
    adc b                                         ; $5a28: $88
    adc b                                         ; $5a29: $88
    adc b                                         ; $5a2a: $88
    add b                                         ; $5a2b: $80
    add b                                         ; $5a2c: $80
    add b                                         ; $5a2d: $80
    add b                                         ; $5a2e: $80
    add b                                         ; $5a2f: $80
    add b                                         ; $5a30: $80
    add b                                         ; $5a31: $80
    add b                                         ; $5a32: $80
    dec hl                                        ; $5a33: $2b
    ld b, c                                       ; $5a34: $41
    ld b, d                                       ; $5a35: $42
    ld b, e                                       ; $5a36: $43
    cpl                                           ; $5a37: $2f
    ld b, l                                       ; $5a38: $45
    ld d, l                                       ; $5a39: $55
    add d                                         ; $5a3a: $82
    inc sp                                        ; $5a3b: $33
    ld c, c                                       ; $5a3c: $49
    add b                                         ; $5a3d: $80
    cp a                                          ; $5a3e: $bf
    ld [hl], $4d                                  ; $5a3f: $36 $4d
    add c                                         ; $5a41: $81
    ret nz                                        ; $5a42: $c0

    ld bc, $0106                                  ; $5a43: $01 $06 $01
    ld bc, $0106                                  ; $5a46: $01 $06 $01
    ld b, $8a                                     ; $5a49: $06 $8a
    ld bc, $0906                                  ; $5a4b: $01 $06 $09
    adc d                                         ; $5a4e: $8a
    ld bc, $0e01                                  ; $5a4f: $01 $01 $0e
    ld a, [bc]                                    ; $5a52: $0a
    ld a, [hl-]                                   ; $5a53: $3a
    dec hl                                        ; $5a54: $2b
    ld b, c                                       ; $5a55: $41
    ld b, d                                       ; $5a56: $42
    add e                                         ; $5a57: $83
    add h                                         ; $5a58: $84
    adc e                                         ; $5a59: $8b
    ld d, l                                       ; $5a5a: $55
    pop bc                                        ; $5a5b: $c1
    sbc d                                         ; $5a5c: $9a
    adc h                                         ; $5a5d: $8c
    add b                                         ; $5a5e: $80
    jp nz, $8d9d                                  ; $5a5f: $c2 $9d $8d

    add c                                         ; $5a62: $81
    ld bc, $0601                                  ; $5a63: $01 $01 $06
    ld bc, $8a8a                                  ; $5a66: $01 $8a $8a
    adc d                                         ; $5a69: $8a
    ld bc, $8a8a                                  ; $5a6a: $01 $8a $8a
    adc d                                         ; $5a6d: $8a
    add hl, bc                                    ; $5a6e: $09
    ld a, [bc]                                    ; $5a6f: $0a
    ld a, [bc]                                    ; $5a70: $0a
    ld a, [bc]                                    ; $5a71: $0a
    rrca                                          ; $5a72: $0f
    ld b, e                                       ; $5a73: $43
    ld a, [hl-]                                   ; $5a74: $3a
    dec hl                                        ; $5a75: $2b
    ld b, c                                       ; $5a76: $41
    ld d, d                                       ; $5a77: $52
    ld l, $2f                                     ; $5a78: $2e $2f
    ld b, l                                       ; $5a7a: $45
    ld sp, $3332                                  ; $5a7b: $31 $32 $33
    ld c, c                                       ; $5a7e: $49
    dec [hl]                                      ; $5a7f: $35
    ld [hl+], a                                   ; $5a80: $22
    ld [hl], $4d                                  ; $5a81: $36 $4d
    ld bc, $0601                                  ; $5a83: $01 $01 $06
    rlca                                          ; $5a86: $07
    ld b, $01                                     ; $5a87: $06 $01
    ld bc, $0107                                  ; $5a89: $01 $07 $01
    ld bc, $0706                                  ; $5a8c: $01 $06 $07
    ld bc, $0101                                  ; $5a8f: $01 $01 $01
    rlca                                          ; $5a92: $07
    ld d, $23                                     ; $5a93: $16 $23
    inc h                                         ; $5a95: $24
    ldh a, [rNR30]                                ; $5a96: $f0 $1a
    dec h                                         ; $5a98: $25
    ld h, $f3                                     ; $5a99: $26 $f3
    dec hl                                        ; $5a9b: $2b
    ld b, c                                       ; $5a9c: $41
    ld b, d                                       ; $5a9d: $42
    ld b, e                                       ; $5a9e: $43
    cpl                                           ; $5a9f: $2f
    ld b, l                                       ; $5aa0: $45
    ld d, l                                       ; $5aa1: $55
    ld d, d                                       ; $5aa2: $52
    ld bc, $0606                                  ; $5aa3: $01 $06 $06
    rrca                                          ; $5aa6: $0f
    ld b, $01                                     ; $5aa7: $06 $01
    ld b, $0f                                     ; $5aa9: $06 $0f
    ld bc, $0101                                  ; $5aab: $01 $01 $01
    rlca                                          ; $5aae: $07
    ld bc, $0106                                  ; $5aaf: $01 $06 $01
    ld bc, $f7f6                                  ; $5ab2: $01 $f6 $f7
    db $f4                                        ; $5ab5: $f4
    inc h                                         ; $5ab6: $24
    sub d                                         ; $5ab7: $92
    sub e                                         ; $5ab8: $93
    push af                                       ; $5ab9: $f5
    ld h, $94                                     ; $5aba: $26 $94
    sub l                                         ; $5abc: $95
    ld b, c                                       ; $5abd: $41
    ld b, d                                       ; $5abe: $42
    ld l, $2f                                     ; $5abf: $2e $2f
    ld b, l                                       ; $5ac1: $45
    ld d, l                                       ; $5ac2: $55
    rrca                                          ; $5ac3: $0f
    rrca                                          ; $5ac4: $0f
    rrca                                          ; $5ac5: $0f
    rlca                                          ; $5ac6: $07
    ld a, [bc]                                    ; $5ac7: $0a
    ld a, [bc]                                    ; $5ac8: $0a
    rrca                                          ; $5ac9: $0f
    rlca                                          ; $5aca: $07
    ld a, [bc]                                    ; $5acb: $0a
    ld a, [bc]                                    ; $5acc: $0a
    rlca                                          ; $5acd: $07
    rlca                                          ; $5ace: $07
    rlca                                          ; $5acf: $07
    rlca                                          ; $5ad0: $07
    rlca                                          ; $5ad1: $07
    ld bc, $1514                                  ; $5ad2: $01 $14 $15
    ld d, $23                                     ; $5ad5: $16 $23
    daa                                           ; $5ad7: $27
    add hl, de                                    ; $5ad8: $19
    ld a, [de]                                    ; $5ad9: $1a
    dec h                                         ; $5ada: $25
    ld b, e                                       ; $5adb: $43
    ld a, [hl-]                                   ; $5adc: $3a
    dec hl                                        ; $5add: $2b
    ld b, c                                       ; $5ade: $41
    ld d, d                                       ; $5adf: $52
    ld l, $2f                                     ; $5ae0: $2e $2f
    ld b, l                                       ; $5ae2: $45
    ld b, $06                                     ; $5ae3: $06 $06
    ld bc, $0107                                  ; $5ae5: $01 $07 $01
    ld b, $01                                     ; $5ae8: $06 $01
    rlca                                          ; $5aea: $07
    ld bc, $0101                                  ; $5aeb: $01 $01 $01
    rlca                                          ; $5aee: $07
    ld b, $01                                     ; $5aef: $06 $01
    ld b, $07                                     ; $5af1: $06 $07
    inc sp                                        ; $5af3: $33
    ld c, c                                       ; $5af4: $49
    add b                                         ; $5af5: $80
    ld sp, $acac                                  ; $5af6: $31 $ac $ac
    xor h                                         ; $5af9: $ac
    xor h                                         ; $5afa: $ac
    pop de                                        ; $5afb: $d1
    pop de                                        ; $5afc: $d1
    pop de                                        ; $5afd: $d1
    pop de                                        ; $5afe: $d1
    pop de                                        ; $5aff: $d1
    pop de                                        ; $5b00: $d1
    pop de                                        ; $5b01: $d1
    pop de                                        ; $5b02: $d1
    ld bc, $0e01                                  ; $5b03: $01 $01 $0e
    ld bc, $8888                                  ; $5b06: $01 $88 $88
    adc b                                         ; $5b09: $88
    adc b                                         ; $5b0a: $88
    add b                                         ; $5b0b: $80
    add b                                         ; $5b0c: $80
    add b                                         ; $5b0d: $80
    add b                                         ; $5b0e: $80
    add b                                         ; $5b0f: $80
    add b                                         ; $5b10: $80
    add b                                         ; $5b11: $80
    add b                                         ; $5b12: $80
    ld [hl-], a                                   ; $5b13: $32
    inc sp                                        ; $5b14: $33
    ld c, c                                       ; $5b15: $49
    add b                                         ; $5b16: $80
    xor h                                         ; $5b17: $ac
    xor h                                         ; $5b18: $ac
    xor h                                         ; $5b19: $ac
    xor h                                         ; $5b1a: $ac
    pop de                                        ; $5b1b: $d1
    pop de                                        ; $5b1c: $d1
    pop de                                        ; $5b1d: $d1
    pop de                                        ; $5b1e: $d1
    pop de                                        ; $5b1f: $d1
    pop de                                        ; $5b20: $d1
    pop de                                        ; $5b21: $d1
    pop de                                        ; $5b22: $d1
    ld bc, $0601                                  ; $5b23: $01 $01 $06
    add hl, bc                                    ; $5b26: $09
    adc b                                         ; $5b27: $88
    adc b                                         ; $5b28: $88
    adc b                                         ; $5b29: $88
    adc b                                         ; $5b2a: $88
    add b                                         ; $5b2b: $80
    add b                                         ; $5b2c: $80
    add b                                         ; $5b2d: $80
    add b                                         ; $5b2e: $80
    add b                                         ; $5b2f: $80
    add b                                         ; $5b30: $80
    add b                                         ; $5b31: $80
    add b                                         ; $5b32: $80
    ld sp, $3332                                  ; $5b33: $31 $32 $33
    ld c, c                                       ; $5b36: $49
    xor h                                         ; $5b37: $ac
    xor h                                         ; $5b38: $ac
    xor h                                         ; $5b39: $ac
    xor h                                         ; $5b3a: $ac
    pop de                                        ; $5b3b: $d1
    pop de                                        ; $5b3c: $d1
    pop de                                        ; $5b3d: $d1
    pop de                                        ; $5b3e: $d1
    pop de                                        ; $5b3f: $d1
    pop de                                        ; $5b40: $d1
    pop de                                        ; $5b41: $d1
    pop de                                        ; $5b42: $d1
    ld b, $06                                     ; $5b43: $06 $06
    ld b, $07                                     ; $5b45: $06 $07
    adc b                                         ; $5b47: $88
    adc b                                         ; $5b48: $88
    adc b                                         ; $5b49: $88
    adc b                                         ; $5b4a: $88
    add b                                         ; $5b4b: $80
    add b                                         ; $5b4c: $80
    add b                                         ; $5b4d: $80
    add b                                         ; $5b4e: $80
    add b                                         ; $5b4f: $80
    add b                                         ; $5b50: $80
    add b                                         ; $5b51: $80
    add b                                         ; $5b52: $80
    jp nc, $d1d1                                  ; $5b53: $d2 $d1 $d1

    pop de                                        ; $5b56: $d1
    xor $d1                                       ; $5b57: $ee $d1
    pop de                                        ; $5b59: $d1
    pop de                                        ; $5b5a: $d1
    pop de                                        ; $5b5b: $d1
    pop de                                        ; $5b5c: $d1
    pop de                                        ; $5b5d: $d1
    pop de                                        ; $5b5e: $d1
    pop de                                        ; $5b5f: $d1
    pop de                                        ; $5b60: $d1
    pop de                                        ; $5b61: $d1
    pop de                                        ; $5b62: $d1
    add b                                         ; $5b63: $80
    add b                                         ; $5b64: $80
    add b                                         ; $5b65: $80
    add b                                         ; $5b66: $80
    adc b                                         ; $5b67: $88
    add b                                         ; $5b68: $80
    add b                                         ; $5b69: $80
    add b                                         ; $5b6a: $80
    add b                                         ; $5b6b: $80
    add b                                         ; $5b6c: $80
    add b                                         ; $5b6d: $80
    add b                                         ; $5b6e: $80
    add b                                         ; $5b6f: $80
    add b                                         ; $5b70: $80
    add b                                         ; $5b71: $80
    add b                                         ; $5b72: $80
    stop                                          ; $5b73: $10 $00
    ld b, $00                                     ; $5b75: $06 $00
    and b                                         ; $5b77: $a0
    add hl, bc                                    ; $5b78: $09
    db $ed                                        ; $5b79: $ed
    xor $ef                                       ; $5b7a: $ee $ef
    ldh a, [$ed]                                  ; $5b7c: $f0 $ed
    xor $f1                                       ; $5b7e: $ee $f1
    ld a, [c]                                     ; $5b80: $f2
    db $ed                                        ; $5b81: $ed
    xor $f1                                       ; $5b82: $ee $f1
    di                                            ; $5b84: $f3
    db $ed                                        ; $5b85: $ed
    xor $f4                                       ; $5b86: $ee $f4
    push af                                       ; $5b88: $f5
    add b                                         ; $5b89: $80
    add b                                         ; $5b8a: $80
    inc bc                                        ; $5b8b: $03
    inc bc                                        ; $5b8c: $03
    add b                                         ; $5b8d: $80
    add b                                         ; $5b8e: $80
    inc bc                                        ; $5b8f: $03
    inc bc                                        ; $5b90: $03
    add b                                         ; $5b91: $80
    add b                                         ; $5b92: $80
    inc bc                                        ; $5b93: $03
    inc bc                                        ; $5b94: $03
    add b                                         ; $5b95: $80
    add b                                         ; $5b96: $80
    inc bc                                        ; $5b97: $03
    inc bc                                        ; $5b98: $03
    or $f7                                        ; $5b99: $f6 $f7
    ld hl, sp-$07                                 ; $5b9b: $f8 $f9
    ld a, [$fcfb]                                 ; $5b9d: $fa $fb $fc
    db $fd                                        ; $5ba0: $fd
    cp $ff                                        ; $5ba1: $fe $ff
    nop                                           ; $5ba3: $00
    ld bc, $0302                                  ; $5ba4: $01 $02 $03
    inc b                                         ; $5ba7: $04
    dec b                                         ; $5ba8: $05
    inc bc                                        ; $5ba9: $03
    inc bc                                        ; $5baa: $03
    inc bc                                        ; $5bab: $03
    inc bc                                        ; $5bac: $03
    inc bc                                        ; $5bad: $03
    inc bc                                        ; $5bae: $03
    inc bc                                        ; $5baf: $03
    inc bc                                        ; $5bb0: $03
    inc bc                                        ; $5bb1: $03
    inc bc                                        ; $5bb2: $03
    inc bc                                        ; $5bb3: $03
    inc bc                                        ; $5bb4: $03
    inc bc                                        ; $5bb5: $03
    inc bc                                        ; $5bb6: $03
    inc bc                                        ; $5bb7: $03
    inc bc                                        ; $5bb8: $03
    ld b, $07                                     ; $5bb9: $06 $07
    ld [$0a09], sp                                ; $5bbb: $08 $09 $0a
    dec bc                                        ; $5bbe: $0b
    inc c                                         ; $5bbf: $0c
    dec c                                         ; $5bc0: $0d
    ld c, $07                                     ; $5bc1: $0e $07
    ld [$100f], sp                                ; $5bc3: $08 $0f $10
    dec bc                                        ; $5bc6: $0b
    inc c                                         ; $5bc7: $0c
    ld de, $0202                                  ; $5bc8: $11 $02 $02
    ld [bc], a                                    ; $5bcb: $02
    ld [bc], a                                    ; $5bcc: $02
    ld [bc], a                                    ; $5bcd: $02
    ld [bc], a                                    ; $5bce: $02
    ld [bc], a                                    ; $5bcf: $02
    ld [bc], a                                    ; $5bd0: $02
    ld [bc], a                                    ; $5bd1: $02
    ld [bc], a                                    ; $5bd2: $02
    ld [bc], a                                    ; $5bd3: $02
    ld [bc], a                                    ; $5bd4: $02
    ld [bc], a                                    ; $5bd5: $02
    ld [bc], a                                    ; $5bd6: $02
    ld [bc], a                                    ; $5bd7: $02
    ld [bc], a                                    ; $5bd8: $02
    ld [de], a                                    ; $5bd9: $12
    inc de                                        ; $5bda: $13
    ld sp, hl                                     ; $5bdb: $f9
    inc d                                         ; $5bdc: $14
    db $fd                                        ; $5bdd: $fd
    pop af                                        ; $5bde: $f1
    db $fd                                        ; $5bdf: $fd
    dec d                                         ; $5be0: $15
    ld d, $f1                                     ; $5be1: $16 $f1
    ld bc, $1817                                  ; $5be3: $01 $17 $18
    push af                                       ; $5be6: $f5
    dec b                                         ; $5be7: $05
    add hl, de                                    ; $5be8: $19
    inc bc                                        ; $5be9: $03
    inc bc                                        ; $5bea: $03
    inc bc                                        ; $5beb: $03
    ld [bc], a                                    ; $5bec: $02
    inc hl                                        ; $5bed: $23
    inc bc                                        ; $5bee: $03
    inc bc                                        ; $5bef: $03
    ld [bc], a                                    ; $5bf0: $02
    inc bc                                        ; $5bf1: $03
    inc bc                                        ; $5bf2: $03
    inc bc                                        ; $5bf3: $03
    inc b                                         ; $5bf4: $04
    inc bc                                        ; $5bf5: $03
    inc bc                                        ; $5bf6: $03
    inc bc                                        ; $5bf7: $03
    inc b                                         ; $5bf8: $04
    db $ed                                        ; $5bf9: $ed
    xor $1a                                       ; $5bfa: $ee $1a
    dec de                                        ; $5bfc: $1b
    db $ed                                        ; $5bfd: $ed
    xor $1c                                       ; $5bfe: $ee $1c
    dec e                                         ; $5c00: $1d
    db $ed                                        ; $5c01: $ed
    xor $1e                                       ; $5c02: $ee $1e
    rra                                           ; $5c04: $1f
    db $ed                                        ; $5c05: $ed
    xor $20                                       ; $5c06: $ee $20
    ld hl, $8080                                  ; $5c08: $21 $80 $80
    inc bc                                        ; $5c0b: $03
    inc bc                                        ; $5c0c: $03
    add b                                         ; $5c0d: $80
    add b                                         ; $5c0e: $80
    rlca                                          ; $5c0f: $07
    rlca                                          ; $5c10: $07
    add b                                         ; $5c11: $80
    add b                                         ; $5c12: $80
    rlca                                          ; $5c13: $07
    ld b, $80                                     ; $5c14: $06 $80
    add b                                         ; $5c16: $80
    rlca                                          ; $5c17: $07
    ld b, $22                                     ; $5c18: $06 $22
    inc hl                                        ; $5c1a: $23
    inc h                                         ; $5c1b: $24
    dec h                                         ; $5c1c: $25
    ld h, $27                                     ; $5c1d: $26 $27
    jr z, jr_086_5c4a                             ; $5c1f: $28 $29

    ld a, [hl+]                                   ; $5c21: $2a
    dec hl                                        ; $5c22: $2b
    inc l                                         ; $5c23: $2c
    dec l                                         ; $5c24: $2d
    ld l, $2f                                     ; $5c25: $2e $2f
    jr nc, jr_086_5c5a                            ; $5c27: $30 $31

    inc bc                                        ; $5c29: $03
    inc bc                                        ; $5c2a: $03
    inc bc                                        ; $5c2b: $03
    inc bc                                        ; $5c2c: $03
    rlca                                          ; $5c2d: $07
    rlca                                          ; $5c2e: $07
    rlca                                          ; $5c2f: $07
    rlca                                          ; $5c30: $07
    ld b, $06                                     ; $5c31: $06 $06
    ld b, $06                                     ; $5c33: $06 $06
    ld b, $06                                     ; $5c35: $06 $06
    ld b, $06                                     ; $5c37: $06 $06
    ld [hl-], a                                   ; $5c39: $32
    inc sp                                        ; $5c3a: $33
    inc [hl]                                      ; $5c3b: $34
    dec [hl]                                      ; $5c3c: $35
    ld [hl], $37                                  ; $5c3d: $36 $37
    inc e                                         ; $5c3f: $1c
    dec e                                         ; $5c40: $1d
    jr c, jr_086_5c7c                             ; $5c41: $38 $39

    ld e, $1f                                     ; $5c43: $1e $1f
    ld a, [hl-]                                   ; $5c45: $3a
    dec sp                                        ; $5c46: $3b
    jr nz, jr_086_5c6a                            ; $5c47: $20 $21

    ld [bc], a                                    ; $5c49: $02

jr_086_5c4a:
    ld [bc], a                                    ; $5c4a: $02
    ld [bc], a                                    ; $5c4b: $02
    ld [bc], a                                    ; $5c4c: $02
    rlca                                          ; $5c4d: $07
    rlca                                          ; $5c4e: $07
    rlca                                          ; $5c4f: $07
    rlca                                          ; $5c50: $07
    ld b, $06                                     ; $5c51: $06 $06
    ld b, $06                                     ; $5c53: $06 $06
    ld b, $06                                     ; $5c55: $06 $06
    ld b, $06                                     ; $5c57: $06 $06
    inc a                                         ; $5c59: $3c

jr_086_5c5a:
    dec de                                        ; $5c5a: $1b
    dec h                                         ; $5c5b: $25
    dec a                                         ; $5c5c: $3d
    ld h, $27                                     ; $5c5d: $26 $27
    jr z, jr_086_5c9f                             ; $5c5f: $28 $3e

    ld a, [hl+]                                   ; $5c61: $2a
    dec hl                                        ; $5c62: $2b
    inc l                                         ; $5c63: $2c
    ccf                                           ; $5c64: $3f
    ld l, $2f                                     ; $5c65: $2e $2f
    jr nc, jr_086_5c9a                            ; $5c67: $30 $31

    inc bc                                        ; $5c69: $03

jr_086_5c6a:
    inc bc                                        ; $5c6a: $03
    inc bc                                        ; $5c6b: $03
    ld bc, $0707                                  ; $5c6c: $01 $07 $07
    rlca                                          ; $5c6f: $07
    inc b                                         ; $5c70: $04
    ld b, $06                                     ; $5c71: $06 $06
    ld b, $01                                     ; $5c73: $06 $01
    ld b, $06                                     ; $5c75: $06 $06
    ld b, $07                                     ; $5c77: $06 $07
    db $ed                                        ; $5c79: $ed
    xor $40                                       ; $5c7a: $ee $40

jr_086_5c7c:
    ld b, c                                       ; $5c7c: $41
    db $ed                                        ; $5c7d: $ed
    xor $42                                       ; $5c7e: $ee $42
    ld b, e                                       ; $5c80: $43
    db $ed                                        ; $5c81: $ed
    xor $44                                       ; $5c82: $ee $44
    ld b, l                                       ; $5c84: $45
    db $ed                                        ; $5c85: $ed
    xor $1c                                       ; $5c86: $ee $1c
    ld b, [hl]                                    ; $5c88: $46
    add b                                         ; $5c89: $80
    add b                                         ; $5c8a: $80
    rlca                                          ; $5c8b: $07
    ld b, $80                                     ; $5c8c: $06 $80
    add b                                         ; $5c8e: $80
    rlca                                          ; $5c8f: $07
    ld b, $80                                     ; $5c90: $06 $80
    add b                                         ; $5c92: $80
    rlca                                          ; $5c93: $07
    ld b, $80                                     ; $5c94: $06 $80
    add b                                         ; $5c96: $80
    rlca                                          ; $5c97: $07
    ld b, $47                                     ; $5c98: $06 $47

jr_086_5c9a:
    ld c, b                                       ; $5c9a: $48
    ld c, c                                       ; $5c9b: $49
    ld c, d                                       ; $5c9c: $4a
    ld c, e                                       ; $5c9d: $4b
    ld c, h                                       ; $5c9e: $4c

jr_086_5c9f:
    ld c, l                                       ; $5c9f: $4d
    ld c, [hl]                                    ; $5ca0: $4e
    ld c, a                                       ; $5ca1: $4f
    ld d, b                                       ; $5ca2: $50
    ld d, c                                       ; $5ca3: $51
    ld d, d                                       ; $5ca4: $52
    ld d, e                                       ; $5ca5: $53
    ld d, h                                       ; $5ca6: $54
    ld d, l                                       ; $5ca7: $55
    add hl, hl                                    ; $5ca8: $29
    ld b, $06                                     ; $5ca9: $06 $06
    ld b, $06                                     ; $5cab: $06 $06
    ld b, $06                                     ; $5cad: $06 $06
    ld b, $06                                     ; $5caf: $06 $06
    ld b, $06                                     ; $5cb1: $06 $06
    ld b, $06                                     ; $5cb3: $06 $06
    add l                                         ; $5cb5: $85
    add l                                         ; $5cb6: $85
    ld b, $06                                     ; $5cb7: $06 $06
    ld d, [hl]                                    ; $5cb9: $56
    ld d, a                                       ; $5cba: $57
    ld b, b                                       ; $5cbb: $40
    ld b, c                                       ; $5cbc: $41
    ld e, b                                       ; $5cbd: $58
    ld e, c                                       ; $5cbe: $59
    ld b, d                                       ; $5cbf: $42
    ld b, e                                       ; $5cc0: $43
    ld e, d                                       ; $5cc1: $5a
    ld e, e                                       ; $5cc2: $5b
    ld b, h                                       ; $5cc3: $44
    ld b, l                                       ; $5cc4: $45
    ld [hl], $37                                  ; $5cc5: $36 $37
    inc e                                         ; $5cc7: $1c
    dec e                                         ; $5cc8: $1d
    ld b, $06                                     ; $5cc9: $06 $06
    ld b, $06                                     ; $5ccb: $06 $06
    ld b, $06                                     ; $5ccd: $06 $06
    ld b, $06                                     ; $5ccf: $06 $06
    ld b, $06                                     ; $5cd1: $06 $06
    ld b, $06                                     ; $5cd3: $06 $06
    ld b, $06                                     ; $5cd5: $06 $06
    ld b, $06                                     ; $5cd7: $06 $06
    ld b, a                                       ; $5cd9: $47
    ld c, b                                       ; $5cda: $48
    ld c, c                                       ; $5cdb: $49
    ld c, d                                       ; $5cdc: $4a
    ld c, e                                       ; $5cdd: $4b
    ld c, h                                       ; $5cde: $4c
    ld c, l                                       ; $5cdf: $4d
    ld c, [hl]                                    ; $5ce0: $4e
    ld e, h                                       ; $5ce1: $5c
    ld e, l                                       ; $5ce2: $5d
    ld d, c                                       ; $5ce3: $51
    ld d, d                                       ; $5ce4: $52
    ld h, $27                                     ; $5ce5: $26 $27
    jr z, jr_086_5d12                             ; $5ce7: $28 $29

    ld b, $06                                     ; $5ce9: $06 $06
    ld b, $06                                     ; $5ceb: $06 $06
    ld b, $06                                     ; $5ced: $06 $06
    ld b, $06                                     ; $5cef: $06 $06
    ld b, $06                                     ; $5cf1: $06 $06
    ld b, $06                                     ; $5cf3: $06 $06
    ld b, $06                                     ; $5cf5: $06 $06
    ld b, $06                                     ; $5cf7: $06 $06
    db $ed                                        ; $5cf9: $ed
    xor $1e                                       ; $5cfa: $ee $1e
    ld e, [hl]                                    ; $5cfc: $5e
    db $ed                                        ; $5cfd: $ed
    xor $20                                       ; $5cfe: $ee $20
    ld e, a                                       ; $5d00: $5f
    db $ed                                        ; $5d01: $ed
    xor $40                                       ; $5d02: $ee $40
    ld h, b                                       ; $5d04: $60
    db $ed                                        ; $5d05: $ed
    xor $42                                       ; $5d06: $ee $42
    ld h, c                                       ; $5d08: $61
    add b                                         ; $5d09: $80
    add b                                         ; $5d0a: $80
    rlca                                          ; $5d0b: $07
    ld b, $80                                     ; $5d0c: $06 $80
    add b                                         ; $5d0e: $80
    rlca                                          ; $5d0f: $07
    dec b                                         ; $5d10: $05
    add b                                         ; $5d11: $80

jr_086_5d12:
    add b                                         ; $5d12: $80
    rlca                                          ; $5d13: $07
    dec b                                         ; $5d14: $05
    add b                                         ; $5d15: $80
    add b                                         ; $5d16: $80
    rlca                                          ; $5d17: $07
    dec b                                         ; $5d18: $05
    ld h, d                                       ; $5d19: $62
    ld h, e                                       ; $5d1a: $63
    ld h, h                                       ; $5d1b: $64
    dec l                                         ; $5d1c: $2d
    ld h, l                                       ; $5d1d: $65
    ld h, [hl]                                    ; $5d1e: $66
    ld h, a                                       ; $5d1f: $67
    ld sp, $6968                                  ; $5d20: $31 $68 $69
    ld h, b                                       ; $5d23: $60
    ld c, d                                       ; $5d24: $4a
    ld l, d                                       ; $5d25: $6a
    ld l, e                                       ; $5d26: $6b
    ld h, c                                       ; $5d27: $61
    ld c, [hl]                                    ; $5d28: $4e
    add l                                         ; $5d29: $85
    add l                                         ; $5d2a: $85
    ld b, $06                                     ; $5d2b: $06 $06
    add l                                         ; $5d2d: $85
    add l                                         ; $5d2e: $85
    dec b                                         ; $5d2f: $05
    ld b, $05                                     ; $5d30: $06 $05
    dec b                                         ; $5d32: $05
    dec h                                         ; $5d33: $25
    rlca                                          ; $5d34: $07
    dec b                                         ; $5d35: $05
    dec b                                         ; $5d36: $05
    dec h                                         ; $5d37: $25
    rlca                                          ; $5d38: $07
    jr c, @+$6e                                   ; $5d39: $38 $6c

    ld l, l                                       ; $5d3b: $6d
    ld l, [hl]                                    ; $5d3c: $6e
    ld a, [hl-]                                   ; $5d3d: $3a
    ld l, a                                       ; $5d3e: $6f
    ld [hl], b                                    ; $5d3f: $70
    ld [hl], c                                    ; $5d40: $71
    ld d, [hl]                                    ; $5d41: $56
    ld [hl], d                                    ; $5d42: $72
    ld [hl], e                                    ; $5d43: $73
    ld [hl], h                                    ; $5d44: $74
    ld e, b                                       ; $5d45: $58
    ld [hl], l                                    ; $5d46: $75
    halt                                          ; $5d47: $76
    ld [hl], a                                    ; $5d48: $77
    ld b, $01                                     ; $5d49: $06 $01
    ld bc, $0601                                  ; $5d4b: $01 $01 $06
    ld bc, $0401                                  ; $5d4e: $01 $01 $04
    ld b, $01                                     ; $5d51: $06 $01
    ld bc, $0604                                  ; $5d53: $01 $04 $06
    ld bc, $0401                                  ; $5d56: $01 $01 $04
    ld a, b                                       ; $5d59: $78
    ld a, c                                       ; $5d5a: $79
    ld a, d                                       ; $5d5b: $7a
    ld a, e                                       ; $5d5c: $7b
    ld a, h                                       ; $5d5d: $7c
    ld a, l                                       ; $5d5e: $7d
    ld a, [hl]                                    ; $5d5f: $7e
    ld a, a                                       ; $5d60: $7f
    add b                                         ; $5d61: $80
    add c                                         ; $5d62: $81
    add d                                         ; $5d63: $82
    add e                                         ; $5d64: $83
    add h                                         ; $5d65: $84
    add l                                         ; $5d66: $85
    add [hl]                                      ; $5d67: $86
    add a                                         ; $5d68: $87
    ld bc, $0101                                  ; $5d69: $01 $01 $01
    ld bc, $0101                                  ; $5d6c: $01 $01 $01
    ld bc, $0901                                  ; $5d6f: $01 $01 $09
    add hl, bc                                    ; $5d72: $09
    add hl, bc                                    ; $5d73: $09
    add hl, bc                                    ; $5d74: $09
    add hl, bc                                    ; $5d75: $09
    add hl, bc                                    ; $5d76: $09
    add hl, bc                                    ; $5d77: $09
    add hl, bc                                    ; $5d78: $09
    adc b                                         ; $5d79: $88
    adc c                                         ; $5d7a: $89
    adc d                                         ; $5d7b: $8a
    adc e                                         ; $5d7c: $8b
    adc h                                         ; $5d7d: $8c
    adc l                                         ; $5d7e: $8d
    adc [hl]                                      ; $5d7f: $8e
    adc a                                         ; $5d80: $8f
    sub b                                         ; $5d81: $90
    sub c                                         ; $5d82: $91
    sub d                                         ; $5d83: $92
    sub e                                         ; $5d84: $93
    sub h                                         ; $5d85: $94
    sub l                                         ; $5d86: $95
    sub [hl]                                      ; $5d87: $96
    sub a                                         ; $5d88: $97
    ld a, [bc]                                    ; $5d89: $0a
    ld a, [bc]                                    ; $5d8a: $0a
    ld a, [bc]                                    ; $5d8b: $0a
    ld a, [bc]                                    ; $5d8c: $0a
    ld a, [bc]                                    ; $5d8d: $0a
    ld a, [bc]                                    ; $5d8e: $0a
    ld a, [bc]                                    ; $5d8f: $0a
    ld a, [bc]                                    ; $5d90: $0a
    inc c                                         ; $5d91: $0c
    add hl, bc                                    ; $5d92: $09
    add hl, bc                                    ; $5d93: $09
    inc c                                         ; $5d94: $0c
    inc c                                         ; $5d95: $0c
    add hl, bc                                    ; $5d96: $09
    add hl, bc                                    ; $5d97: $09
    inc c                                         ; $5d98: $0c
    sbc b                                         ; $5d99: $98
    ld [de], a                                    ; $5d9a: $12
    inc de                                        ; $5d9b: $13
    sbc c                                         ; $5d9c: $99

jr_086_5d9d:
    sbc d                                         ; $5d9d: $9a
    db $fd                                        ; $5d9e: $fd
    pop af                                        ; $5d9f: $f1
    sbc e                                         ; $5da0: $9b
    sbc h                                         ; $5da1: $9c
    ld d, $f1                                     ; $5da2: $16 $f1
    sbc l                                         ; $5da4: $9d
    sbc [hl]                                      ; $5da5: $9e
    jr jr_086_5d9d                                ; $5da6: $18 $f5

    sbc a                                         ; $5da8: $9f
    ld a, [bc]                                    ; $5da9: $0a
    inc bc                                        ; $5daa: $03
    inc bc                                        ; $5dab: $03
    dec bc                                        ; $5dac: $0b
    ld a, [bc]                                    ; $5dad: $0a
    inc hl                                        ; $5dae: $23
    inc bc                                        ; $5daf: $03
    dec bc                                        ; $5db0: $0b
    inc c                                         ; $5db1: $0c
    inc bc                                        ; $5db2: $03
    inc bc                                        ; $5db3: $03
    dec bc                                        ; $5db4: $0b
    inc c                                         ; $5db5: $0c
    inc bc                                        ; $5db6: $03
    inc bc                                        ; $5db7: $03
    dec bc                                        ; $5db8: $0b
    and b                                         ; $5db9: $a0
    and c                                         ; $5dba: $a1
    and d                                         ; $5dbb: $a2
    ld sp, hl                                     ; $5dbc: $f9
    and e                                         ; $5dbd: $a3
    and h                                         ; $5dbe: $a4
    and l                                         ; $5dbf: $a5
    db $fd                                        ; $5dc0: $fd
    and [hl]                                      ; $5dc1: $a6
    and a                                         ; $5dc2: $a7
    pop af                                        ; $5dc3: $f1
    ld bc, $a9a8                                  ; $5dc4: $01 $a8 $a9
    xor d                                         ; $5dc7: $aa
    dec b                                         ; $5dc8: $05
    dec bc                                        ; $5dc9: $0b
    dec bc                                        ; $5dca: $0b
    dec bc                                        ; $5dcb: $0b
    inc bc                                        ; $5dcc: $03
    dec bc                                        ; $5dcd: $0b
    dec bc                                        ; $5dce: $0b
    dec bc                                        ; $5dcf: $0b
    inc bc                                        ; $5dd0: $03
    dec bc                                        ; $5dd1: $0b
    dec bc                                        ; $5dd2: $0b
    inc bc                                        ; $5dd3: $03
    inc bc                                        ; $5dd4: $03
    dec bc                                        ; $5dd5: $0b
    dec bc                                        ; $5dd6: $0b
    dec bc                                        ; $5dd7: $0b
    inc bc                                        ; $5dd8: $03
    sbc b                                         ; $5dd9: $98
    adc e                                         ; $5dda: $8b
    adc d                                         ; $5ddb: $8a
    adc c                                         ; $5ddc: $89
    sbc d                                         ; $5ddd: $9a
    adc a                                         ; $5dde: $8f
    adc [hl]                                      ; $5ddf: $8e
    adc l                                         ; $5de0: $8d
    xor e                                         ; $5de1: $ab
    xor h                                         ; $5de2: $ac
    xor l                                         ; $5de3: $ad
    xor [hl]                                      ; $5de4: $ae
    xor a                                         ; $5de5: $af
    or b                                          ; $5de6: $b0
    or c                                          ; $5de7: $b1
    or d                                          ; $5de8: $b2
    ld a, [hl+]                                   ; $5de9: $2a
    ld a, [hl+]                                   ; $5dea: $2a
    ld a, [hl+]                                   ; $5deb: $2a
    ld a, [hl+]                                   ; $5dec: $2a
    ld a, [hl+]                                   ; $5ded: $2a
    ld a, [hl+]                                   ; $5dee: $2a
    ld a, [hl+]                                   ; $5def: $2a
    ld a, [hl+]                                   ; $5df0: $2a
    add hl, bc                                    ; $5df1: $09
    add hl, bc                                    ; $5df2: $09
    add hl, bc                                    ; $5df3: $09
    add hl, bc                                    ; $5df4: $09
    add hl, bc                                    ; $5df5: $09
    add hl, bc                                    ; $5df6: $09
    add hl, bc                                    ; $5df7: $09
    add hl, bc                                    ; $5df8: $09
    or e                                          ; $5df9: $b3
    or h                                          ; $5dfa: $b4
    or l                                          ; $5dfb: $b5
    or [hl]                                       ; $5dfc: $b6
    or a                                          ; $5dfd: $b7
    cp b                                          ; $5dfe: $b8
    cp c                                          ; $5dff: $b9
    cp d                                          ; $5e00: $ba
    cp e                                          ; $5e01: $bb
    cp h                                          ; $5e02: $bc
    cp l                                          ; $5e03: $bd
    cp [hl]                                       ; $5e04: $be
    ld a, [hl-]                                   ; $5e05: $3a
    dec sp                                        ; $5e06: $3b
    jr nz, jr_086_5e2a                            ; $5e07: $20 $21

    add hl, bc                                    ; $5e09: $09
    add hl, bc                                    ; $5e0a: $09
    add hl, bc                                    ; $5e0b: $09
    add hl, bc                                    ; $5e0c: $09
    inc c                                         ; $5e0d: $0c
    add hl, bc                                    ; $5e0e: $09
    add hl, bc                                    ; $5e0f: $09
    add hl, bc                                    ; $5e10: $09
    inc c                                         ; $5e11: $0c
    inc c                                         ; $5e12: $0c
    inc c                                         ; $5e13: $0c
    add hl, bc                                    ; $5e14: $09
    rlca                                          ; $5e15: $07
    rlca                                          ; $5e16: $07
    rlca                                          ; $5e17: $07
    rlca                                          ; $5e18: $07
    cp a                                          ; $5e19: $bf
    inc a                                         ; $5e1a: $3c
    dec de                                        ; $5e1b: $1b
    ld [hl+], a                                   ; $5e1c: $22
    ret nz                                        ; $5e1d: $c0

    daa                                           ; $5e1e: $27
    jr z, jr_086_5e4a                             ; $5e1f: $28 $29

    pop bc                                        ; $5e21: $c1
    dec hl                                        ; $5e22: $2b
    inc l                                         ; $5e23: $2c
    dec l                                         ; $5e24: $2d
    ld l, $2f                                     ; $5e25: $2e $2f
    jr nc, @+$33                                  ; $5e27: $30 $31

    add hl, bc                                    ; $5e29: $09

jr_086_5e2a:
    inc bc                                        ; $5e2a: $03
    inc bc                                        ; $5e2b: $03
    inc bc                                        ; $5e2c: $03
    add hl, bc                                    ; $5e2d: $09
    rlca                                          ; $5e2e: $07
    rlca                                          ; $5e2f: $07
    rlca                                          ; $5e30: $07
    add hl, bc                                    ; $5e31: $09
    rlca                                          ; $5e32: $07
    ld b, $06                                     ; $5e33: $06 $06
    rlca                                          ; $5e35: $07
    rlca                                          ; $5e36: $07
    ld b, $06                                     ; $5e37: $06 $06
    inc hl                                        ; $5e39: $23
    inc h                                         ; $5e3a: $24
    jp nz, $3625                                  ; $5e3b: $c2 $25 $36

    scf                                           ; $5e3e: $37
    inc e                                         ; $5e3f: $1c
    dec e                                         ; $5e40: $1d
    jr c, jr_086_5e7c                             ; $5e41: $38 $39

    ld e, $1f                                     ; $5e43: $1e $1f
    ld a, [hl-]                                   ; $5e45: $3a
    dec sp                                        ; $5e46: $3b
    jr nz, jr_086_5e6a                            ; $5e47: $20 $21

    inc bc                                        ; $5e49: $03

jr_086_5e4a:
    inc bc                                        ; $5e4a: $03
    dec bc                                        ; $5e4b: $0b
    inc bc                                        ; $5e4c: $03
    rlca                                          ; $5e4d: $07
    rlca                                          ; $5e4e: $07
    rlca                                          ; $5e4f: $07
    rlca                                          ; $5e50: $07
    ld b, $06                                     ; $5e51: $06 $06
    ld b, $06                                     ; $5e53: $06 $06
    ld b, $06                                     ; $5e55: $06 $06
    ld b, $06                                     ; $5e57: $06 $06
    jp $c5c4                                      ; $5e59: $c3 $c4 $c5


    add $c7                                       ; $5e5c: $c6 $c7
    ret z                                         ; $5e5e: $c8

    ret                                           ; $5e5f: $c9


    jp z, $cccb                                   ; $5e60: $ca $cb $cc

    call Call_000_2ece                            ; $5e63: $cd $ce $2e
    cpl                                           ; $5e66: $2f
    jr nc, jr_086_5e9a                            ; $5e67: $30 $31

    add hl, bc                                    ; $5e69: $09

jr_086_5e6a:
    add hl, bc                                    ; $5e6a: $09
    add hl, bc                                    ; $5e6b: $09
    add hl, bc                                    ; $5e6c: $09
    add hl, bc                                    ; $5e6d: $09
    add hl, bc                                    ; $5e6e: $09
    inc c                                         ; $5e6f: $0c
    add hl, bc                                    ; $5e70: $09
    add hl, bc                                    ; $5e71: $09
    add hl, bc                                    ; $5e72: $09
    inc c                                         ; $5e73: $0c
    add hl, bc                                    ; $5e74: $09
    rlca                                          ; $5e75: $07
    rlca                                          ; $5e76: $07
    rlca                                          ; $5e77: $07
    rlca                                          ; $5e78: $07
    ld b, a                                       ; $5e79: $47
    ld c, b                                       ; $5e7a: $48
    ld c, c                                       ; $5e7b: $49

jr_086_5e7c:
    ld c, d                                       ; $5e7c: $4a
    ld c, e                                       ; $5e7d: $4b
    ld c, h                                       ; $5e7e: $4c
    ld c, l                                       ; $5e7f: $4d
    ld c, [hl]                                    ; $5e80: $4e
    ld e, h                                       ; $5e81: $5c
    rst $08                                       ; $5e82: $cf
    ret nc                                        ; $5e83: $d0

    ld d, d                                       ; $5e84: $52
    pop de                                        ; $5e85: $d1
    ld d, e                                       ; $5e86: $53
    jp nc, Jump_000_06d3                          ; $5e87: $d2 $d3 $06

    ld b, $06                                     ; $5e8a: $06 $06
    ld b, $06                                     ; $5e8c: $06 $06
    ld b, $06                                     ; $5e8e: $06 $06
    ld b, $06                                     ; $5e90: $06 $06
    ld c, $0e                                     ; $5e92: $0e $0e
    ld b, $0e                                     ; $5e94: $06 $0e
    add l                                         ; $5e96: $85
    adc l                                         ; $5e97: $8d
    ld c, $d4                                     ; $5e98: $0e $d4

jr_086_5e9a:
    add hl, sp                                    ; $5e9a: $39
    ld e, $1f                                     ; $5e9b: $1e $1f
    push de                                       ; $5e9d: $d5
    dec sp                                        ; $5e9e: $3b
    jr nz, jr_086_5ec2                            ; $5e9f: $20 $21

    sub $57                                       ; $5ea1: $d6 $57
    ld b, b                                       ; $5ea3: $40
    ld b, c                                       ; $5ea4: $41
    rst $10                                       ; $5ea5: $d7
    ld e, c                                       ; $5ea6: $59
    ld b, d                                       ; $5ea7: $42
    ld b, e                                       ; $5ea8: $43
    add hl, bc                                    ; $5ea9: $09
    ld b, $06                                     ; $5eaa: $06 $06
    ld b, $09                                     ; $5eac: $06 $09
    ld b, $06                                     ; $5eae: $06 $06
    ld b, $09                                     ; $5eb0: $06 $09
    rlca                                          ; $5eb2: $07
    ld b, $06                                     ; $5eb3: $06 $06
    add hl, bc                                    ; $5eb5: $09
    rlca                                          ; $5eb6: $07
    ld b, $06                                     ; $5eb7: $06 $06
    ret c                                         ; $5eb9: $d8

    reti                                          ; $5eba: $d9


    jp c, Jump_086_5fdb                           ; $5ebb: $da $db $5f

jr_086_5ebe:
    ld h, l                                       ; $5ebe: $65
    ld h, [hl]                                    ; $5ebf: $66
    ld h, a                                       ; $5ec0: $67
    ld h, b                                       ; $5ec1: $60

jr_086_5ec2:
    ld l, b                                       ; $5ec2: $68
    ld l, c                                       ; $5ec3: $69
    ld h, b                                       ; $5ec4: $60
    ld h, c                                       ; $5ec5: $61
    ld l, d                                       ; $5ec6: $6a
    ld l, e                                       ; $5ec7: $6b
    ld h, c                                       ; $5ec8: $61
    ld c, $8d                                     ; $5ec9: $0e $8d
    adc l                                         ; $5ecb: $8d
    ld c, $05                                     ; $5ecc: $0e $05
    add l                                         ; $5ece: $85
    add l                                         ; $5ecf: $85
    dec b                                         ; $5ed0: $05
    dec b                                         ; $5ed1: $05
    dec b                                         ; $5ed2: $05
    dec b                                         ; $5ed3: $05
    dec h                                         ; $5ed4: $25
    dec b                                         ; $5ed5: $05
    dec b                                         ; $5ed6: $05
    dec b                                         ; $5ed7: $05
    dec h                                         ; $5ed8: $25
    jr c, jr_086_5f14                             ; $5ed9: $38 $39

    ld e, $dc                                     ; $5edb: $1e $dc
    ld a, [hl-]                                   ; $5edd: $3a
    dec sp                                        ; $5ede: $3b
    jr nz, jr_086_5ebe                            ; $5edf: $20 $dd

    ld d, [hl]                                    ; $5ee1: $56
    ld d, a                                       ; $5ee2: $57
    ld b, b                                       ; $5ee3: $40
    push de                                       ; $5ee4: $d5
    ld e, b                                       ; $5ee5: $58
    ld e, c                                       ; $5ee6: $59
    ld b, d                                       ; $5ee7: $42
    sbc $06                                       ; $5ee8: $de $06
    ld b, $06                                     ; $5eea: $06 $06
    add hl, bc                                    ; $5eec: $09
    ld b, $06                                     ; $5eed: $06 $06
    ld b, $09                                     ; $5eef: $06 $09
    rlca                                          ; $5ef1: $07
    ld b, $06                                     ; $5ef2: $06 $06
    add hl, hl                                    ; $5ef4: $29
    rlca                                          ; $5ef5: $07
    ld b, $06                                     ; $5ef6: $06 $06
    add hl, bc                                    ; $5ef8: $09
    rst $18                                       ; $5ef9: $df
    ldh [$e1], a                                  ; $5efa: $e0 $e1
    ld [c], a                                     ; $5efc: $e2
    db $e3                                        ; $5efd: $e3
    db $e4                                        ; $5efe: $e4
    push hl                                       ; $5eff: $e5
    and $e7                                       ; $5f00: $e6 $e7
    add sp, -$17                                  ; $5f02: $e8 $e9
    ld [$eceb], a                                 ; $5f04: $ea $eb $ec
    db $ed                                        ; $5f07: $ed
    xor $09                                       ; $5f08: $ee $09
    add hl, bc                                    ; $5f0a: $09
    add hl, bc                                    ; $5f0b: $09
    add hl, bc                                    ; $5f0c: $09
    inc c                                         ; $5f0d: $0c
    inc c                                         ; $5f0e: $0c
    add hl, bc                                    ; $5f0f: $09
    add hl, bc                                    ; $5f10: $09
    add hl, bc                                    ; $5f11: $09
    add hl, bc                                    ; $5f12: $09
    add hl, bc                                    ; $5f13: $09

jr_086_5f14:
    add hl, bc                                    ; $5f14: $09
    add hl, bc                                    ; $5f15: $09
    add hl, bc                                    ; $5f16: $09
    add hl, bc                                    ; $5f17: $09
    add hl, bc                                    ; $5f18: $09
    adc b                                         ; $5f19: $88
    inc d                                         ; $5f1a: $14
    ld [de], a                                    ; $5f1b: $12
    inc de                                        ; $5f1c: $13
    adc h                                         ; $5f1d: $8c

jr_086_5f1e:
    dec d                                         ; $5f1e: $15
    db $fd                                        ; $5f1f: $fd
    pop af                                        ; $5f20: $f1
    rst $28                                       ; $5f21: $ef
    ldh a, [rNR21]                                ; $5f22: $f0 $16
    pop af                                        ; $5f24: $f1
    pop af                                        ; $5f25: $f1
    ld a, [c]                                     ; $5f26: $f2
    jr jr_086_5f1e                                ; $5f27: $18 $f5

    ld a, [hl+]                                   ; $5f29: $2a
    ld [hl+], a                                   ; $5f2a: $22
    inc bc                                        ; $5f2b: $03
    inc bc                                        ; $5f2c: $03
    ld a, [hl+]                                   ; $5f2d: $2a
    ld [hl+], a                                   ; $5f2e: $22
    inc hl                                        ; $5f2f: $23
    inc bc                                        ; $5f30: $03
    inc c                                         ; $5f31: $0c
    inc c                                         ; $5f32: $0c
    inc bc                                        ; $5f33: $03
    inc bc                                        ; $5f34: $03
    inc c                                         ; $5f35: $0c
    inc c                                         ; $5f36: $0c
    inc bc                                        ; $5f37: $03
    inc bc                                        ; $5f38: $03
    di                                            ; $5f39: $f3
    db $f4                                        ; $5f3a: $f4
    push af                                       ; $5f3b: $f5
    or $f7                                        ; $5f3c: $f6 $f7
    ld hl, sp-$07                                 ; $5f3e: $f8 $f9
    ld a, [$fcfb]                                 ; $5f40: $fa $fb $fc
    db $fd                                        ; $5f43: $fd
    cp $ff                                        ; $5f44: $fe $ff
    nop                                           ; $5f46: $00
    ld bc, $0baa                                  ; $5f47: $01 $aa $0b
    dec bc                                        ; $5f4a: $0b
    dec bc                                        ; $5f4b: $0b
    dec bc                                        ; $5f4c: $0b
    dec bc                                        ; $5f4d: $0b
    dec bc                                        ; $5f4e: $0b
    dec bc                                        ; $5f4f: $0b
    dec bc                                        ; $5f50: $0b
    dec bc                                        ; $5f51: $0b
    dec bc                                        ; $5f52: $0b
    dec bc                                        ; $5f53: $0b
    dec bc                                        ; $5f54: $0b
    dec bc                                        ; $5f55: $0b
    dec bc                                        ; $5f56: $0b
    dec bc                                        ; $5f57: $0b
    dec bc                                        ; $5f58: $0b
    ld sp, hl                                     ; $5f59: $f9
    inc d                                         ; $5f5a: $14
    adc b                                         ; $5f5b: $88
    adc c                                         ; $5f5c: $89
    db $fd                                        ; $5f5d: $fd
    dec d                                         ; $5f5e: $15
    adc h                                         ; $5f5f: $8c
    adc l                                         ; $5f60: $8d
    ld bc, $9017                                  ; $5f61: $01 $17 $90
    sub c                                         ; $5f64: $91
    dec b                                         ; $5f65: $05
    add hl, de                                    ; $5f66: $19
    sub h                                         ; $5f67: $94
    sub l                                         ; $5f68: $95
    inc bc                                        ; $5f69: $03
    ld [bc], a                                    ; $5f6a: $02
    ld a, [bc]                                    ; $5f6b: $0a
    ld a, [bc]                                    ; $5f6c: $0a
    inc bc                                        ; $5f6d: $03
    ld [bc], a                                    ; $5f6e: $02
    ld a, [bc]                                    ; $5f6f: $0a
    ld a, [bc]                                    ; $5f70: $0a
    inc bc                                        ; $5f71: $03
    inc b                                         ; $5f72: $04
    inc c                                         ; $5f73: $0c
    add hl, bc                                    ; $5f74: $09
    inc bc                                        ; $5f75: $03
    inc b                                         ; $5f76: $04
    inc c                                         ; $5f77: $0c
    add hl, bc                                    ; $5f78: $09
    adc d                                         ; $5f79: $8a
    adc e                                         ; $5f7a: $8b
    sbc b                                         ; $5f7b: $98
    ld [de], a                                    ; $5f7c: $12
    adc [hl]                                      ; $5f7d: $8e
    adc a                                         ; $5f7e: $8f
    sbc d                                         ; $5f7f: $9a
    db $fd                                        ; $5f80: $fd
    sub d                                         ; $5f81: $92
    sub e                                         ; $5f82: $93
    sbc h                                         ; $5f83: $9c
    ld d, $96                                     ; $5f84: $16 $96
    sub a                                         ; $5f86: $97
    sbc [hl]                                      ; $5f87: $9e
    jr jr_086_5f94                                ; $5f88: $18 $0a

    ld a, [bc]                                    ; $5f8a: $0a
    ld a, [bc]                                    ; $5f8b: $0a
    inc bc                                        ; $5f8c: $03
    ld a, [bc]                                    ; $5f8d: $0a
    ld a, [bc]                                    ; $5f8e: $0a
    ld a, [bc]                                    ; $5f8f: $0a
    inc hl                                        ; $5f90: $23
    add hl, bc                                    ; $5f91: $09
    inc c                                         ; $5f92: $0c
    inc c                                         ; $5f93: $0c

jr_086_5f94:
    inc bc                                        ; $5f94: $03
    add hl, bc                                    ; $5f95: $09
    inc c                                         ; $5f96: $0c
    inc c                                         ; $5f97: $0c
    inc bc                                        ; $5f98: $03
    ld [bc], a                                    ; $5f99: $02
    inc bc                                        ; $5f9a: $03
    inc a                                         ; $5f9b: $3c
    dec de                                        ; $5f9c: $1b
    inc b                                         ; $5f9d: $04
    dec b                                         ; $5f9e: $05
    inc e                                         ; $5f9f: $1c
    dec e                                         ; $5fa0: $1d
    ld b, $07                                     ; $5fa1: $06 $07
    ld e, $1f                                     ; $5fa3: $1e $1f
    ld a, [hl-]                                   ; $5fa5: $3a
    dec sp                                        ; $5fa6: $3b
    jr nz, jr_086_5fca                            ; $5fa7: $20 $21

    add hl, bc                                    ; $5fa9: $09
    add hl, bc                                    ; $5faa: $09
    inc bc                                        ; $5fab: $03
    inc bc                                        ; $5fac: $03
    add hl, bc                                    ; $5fad: $09
    add hl, bc                                    ; $5fae: $09
    rlca                                          ; $5faf: $07
    rlca                                          ; $5fb0: $07
    add hl, bc                                    ; $5fb1: $09
    add hl, bc                                    ; $5fb2: $09
    rlca                                          ; $5fb3: $07
    ld b, $07                                     ; $5fb4: $06 $07
    rlca                                          ; $5fb6: $07
    rlca                                          ; $5fb7: $07
    ld b, $22                                     ; $5fb8: $06 $22
    inc hl                                        ; $5fba: $23
    inc h                                         ; $5fbb: $24
    jp nz, Jump_000_2726                          ; $5fbc: $c2 $26 $27

    jr z, jr_086_5fea                             ; $5fbf: $28 $29

    ld a, [hl+]                                   ; $5fc1: $2a
    dec hl                                        ; $5fc2: $2b
    inc l                                         ; $5fc3: $2c
    dec l                                         ; $5fc4: $2d
    ld l, $2f                                     ; $5fc5: $2e $2f
    jr nc, jr_086_5ffa                            ; $5fc7: $30 $31

    inc bc                                        ; $5fc9: $03

jr_086_5fca:
    inc bc                                        ; $5fca: $03
    inc bc                                        ; $5fcb: $03
    dec bc                                        ; $5fcc: $0b
    rlca                                          ; $5fcd: $07
    rlca                                          ; $5fce: $07
    rlca                                          ; $5fcf: $07
    rlca                                          ; $5fd0: $07
    ld b, $06                                     ; $5fd1: $06 $06
    ld b, $06                                     ; $5fd3: $06 $06
    ld b, $06                                     ; $5fd5: $06 $06
    ld b, $06                                     ; $5fd7: $06 $06
    dec h                                         ; $5fd9: $25
    dec a                                         ; $5fda: $3d

Jump_086_5fdb:
    or e                                          ; $5fdb: $b3
    or h                                          ; $5fdc: $b4
    ld [hl], $3e                                  ; $5fdd: $36 $3e
    or a                                          ; $5fdf: $b7
    cp b                                          ; $5fe0: $b8
    jr c, jr_086_6022                             ; $5fe1: $38 $3f

    cp e                                          ; $5fe3: $bb
    cp h                                          ; $5fe4: $bc
    ld a, [hl-]                                   ; $5fe5: $3a
    dec sp                                        ; $5fe6: $3b
    jr nz, jr_086_600a                            ; $5fe7: $20 $21

    inc bc                                        ; $5fe9: $03

jr_086_5fea:
    ld bc, $0909                                  ; $5fea: $01 $09 $09
    rlca                                          ; $5fed: $07
    inc b                                         ; $5fee: $04
    inc c                                         ; $5fef: $0c
    add hl, bc                                    ; $5ff0: $09
    ld b, $01                                     ; $5ff1: $06 $01
    inc c                                         ; $5ff3: $0c
    inc c                                         ; $5ff4: $0c
    ld b, $07                                     ; $5ff5: $06 $07
    rlca                                          ; $5ff7: $07
    rlca                                          ; $5ff8: $07
    or l                                          ; $5ff9: $b5

jr_086_5ffa:
    or [hl]                                       ; $5ffa: $b6
    cp a                                          ; $5ffb: $bf
    inc a                                         ; $5ffc: $3c
    cp c                                          ; $5ffd: $b9
    cp d                                          ; $5ffe: $ba
    ret nz                                        ; $5fff: $c0

    add hl, hl                                    ; $6000: $29
    cp l                                          ; $6001: $bd
    cp [hl]                                       ; $6002: $be
    pop bc                                        ; $6003: $c1
    dec l                                         ; $6004: $2d
    ld l, $2f                                     ; $6005: $2e $2f
    jr nc, jr_086_603a                            ; $6007: $30 $31

    add hl, bc                                    ; $6009: $09

jr_086_600a:
    add hl, bc                                    ; $600a: $09
    add hl, bc                                    ; $600b: $09
    inc bc                                        ; $600c: $03
    add hl, bc                                    ; $600d: $09
    add hl, bc                                    ; $600e: $09
    add hl, bc                                    ; $600f: $09
    rlca                                          ; $6010: $07
    inc c                                         ; $6011: $0c
    add hl, bc                                    ; $6012: $09
    add hl, bc                                    ; $6013: $09
    rlca                                          ; $6014: $07
    rlca                                          ; $6015: $07
    rlca                                          ; $6016: $07
    rlca                                          ; $6017: $07
    rlca                                          ; $6018: $07
    ld b, a                                       ; $6019: $47
    ld c, b                                       ; $601a: $48
    ld c, c                                       ; $601b: $49
    ld c, d                                       ; $601c: $4a
    ld c, e                                       ; $601d: $4b
    ld c, h                                       ; $601e: $4c
    ld c, l                                       ; $601f: $4d
    ld c, [hl]                                    ; $6020: $4e
    ld e, h                                       ; $6021: $5c

jr_086_6022:
    ld e, l                                       ; $6022: $5d
    ld d, c                                       ; $6023: $51
    ld [$2726], sp                                ; $6024: $08 $26 $27
    add hl, bc                                    ; $6027: $09
    ld d, e                                       ; $6028: $53
    ld b, $06                                     ; $6029: $06 $06
    ld b, $06                                     ; $602b: $06 $06
    ld b, $06                                     ; $602d: $06 $06
    ld b, $06                                     ; $602f: $06 $06
    ld b, $06                                     ; $6031: $06 $06
    ld b, $0e                                     ; $6033: $06 $0e
    ld b, $06                                     ; $6035: $06 $06
    ld c, $85                                     ; $6037: $0e $85
    ld d, [hl]                                    ; $6039: $56

jr_086_603a:
    ld d, a                                       ; $603a: $57
    ld b, b                                       ; $603b: $40
    ld b, c                                       ; $603c: $41
    ld e, b                                       ; $603d: $58
    ld e, c                                       ; $603e: $59
    ld b, d                                       ; $603f: $42
    ld b, e                                       ; $6040: $43
    ld a, [bc]                                    ; $6041: $0a
    ld e, e                                       ; $6042: $5b
    ld b, h                                       ; $6043: $44
    ld b, l                                       ; $6044: $45
    jp nc, Jump_000_1c0b                          ; $6045: $d2 $0b $1c

    dec e                                         ; $6048: $1d
    ld b, $06                                     ; $6049: $06 $06
    ld b, $06                                     ; $604b: $06 $06
    ld b, $06                                     ; $604d: $06 $06
    ld b, $06                                     ; $604f: $06 $06
    ld c, $06                                     ; $6051: $0e $06
    ld b, $06                                     ; $6053: $06 $06
    adc l                                         ; $6055: $8d
    ld c, $06                                     ; $6056: $0e $06
    ld b, $6e                                     ; $6058: $06 $6e
    inc c                                         ; $605a: $0c
    dec c                                         ; $605b: $0d
    rra                                           ; $605c: $1f
    ld c, $0f                                     ; $605d: $0e $0f
    db $10                                        ; $605f: $10
    ld hl, $1211                                  ; $6060: $21 $11 $12
    inc de                                        ; $6063: $13
    ld b, c                                       ; $6064: $41
    inc d                                         ; $6065: $14
    dec d                                         ; $6066: $15
    ld d, $43                                     ; $6067: $16 $43
    ld hl, $0909                                  ; $6069: $21 $09 $09
    ld b, $09                                     ; $606c: $06 $09
    inc c                                         ; $606e: $0c
    add hl, bc                                    ; $606f: $09
    ld b, $09                                     ; $6070: $06 $09
    inc c                                         ; $6072: $0c
    add hl, bc                                    ; $6073: $09
    rlca                                          ; $6074: $07
    add hl, bc                                    ; $6075: $09
    inc c                                         ; $6076: $0c
    add hl, bc                                    ; $6077: $09
    rlca                                          ; $6078: $07
    ld a, [hl+]                                   ; $6079: $2a
    dec hl                                        ; $607a: $2b
    rla                                           ; $607b: $17
    reti                                          ; $607c: $d9


    ld l, $2f                                     ; $607d: $2e $2f
    ld e, a                                       ; $607f: $5f
    ld h, l                                       ; $6080: $65
    ld b, a                                       ; $6081: $47
    ld c, b                                       ; $6082: $48
    ld h, b                                       ; $6083: $60
    ld l, b                                       ; $6084: $68
    ld c, e                                       ; $6085: $4b
    ld c, h                                       ; $6086: $4c
    ld h, c                                       ; $6087: $61
    ld l, d                                       ; $6088: $6a
    ld b, $06                                     ; $6089: $06 $06
    ld c, $8d                                     ; $608b: $0e $8d
    ld b, $06                                     ; $608d: $06 $06
    dec b                                         ; $608f: $05
    add l                                         ; $6090: $85
    ld b, $06                                     ; $6091: $06 $06
    dec b                                         ; $6093: $05
    dec b                                         ; $6094: $05
    ld b, $06                                     ; $6095: $06 $06
    dec b                                         ; $6097: $05
    dec b                                         ; $6098: $05
    jp c, $1e18                                   ; $6099: $da $18 $1e

    rra                                           ; $609c: $1f
    ld h, [hl]                                    ; $609d: $66
    ld h, a                                       ; $609e: $67
    jr nz, jr_086_60c2                            ; $609f: $20 $21

    ld l, c                                       ; $60a1: $69
    ld h, b                                       ; $60a2: $60
    ld b, b                                       ; $60a3: $40
    ld b, c                                       ; $60a4: $41
    ld l, e                                       ; $60a5: $6b
    ld h, c                                       ; $60a6: $61
    ld b, d                                       ; $60a7: $42
    ld b, e                                       ; $60a8: $43
    adc l                                         ; $60a9: $8d
    ld c, $06                                     ; $60aa: $0e $06
    ld b, $85                                     ; $60ac: $06 $85
    dec b                                         ; $60ae: $05
    ld b, $06                                     ; $60af: $06 $06
    dec b                                         ; $60b1: $05
    dec h                                         ; $60b2: $25
    rlca                                          ; $60b3: $07
    ld b, $05                                     ; $60b4: $06 $05
    dec h                                         ; $60b6: $25
    rlca                                          ; $60b7: $07
    ld b, $2a                                     ; $60b8: $06 $2a
    add hl, de                                    ; $60ba: $19
    ld a, [de]                                    ; $60bb: $1a
    ld l, [hl]                                    ; $60bc: $6e
    ld l, $1b                                     ; $60bd: $2e $1b
    inc e                                         ; $60bf: $1c
    dec e                                         ; $60c0: $1d
    ld b, a                                       ; $60c1: $47

jr_086_60c2:
    ld e, $1f                                     ; $60c2: $1e $1f
    jr nz, jr_086_6111                            ; $60c4: $20 $4b

    ld hl, $2322                                  ; $60c6: $21 $22 $23
    ld b, $09                                     ; $60c9: $06 $09
    add hl, bc                                    ; $60cb: $09
    ld bc, $0906                                  ; $60cc: $01 $06 $09
    add hl, bc                                    ; $60cf: $09
    add hl, bc                                    ; $60d0: $09
    ld b, $09                                     ; $60d1: $06 $09

jr_086_60d3:
    add hl, bc                                    ; $60d3: $09
    add hl, bc                                    ; $60d4: $09
    ld b, $09                                     ; $60d5: $06 $09
    add hl, bc                                    ; $60d7: $09
    add hl, bc                                    ; $60d8: $09
    inc h                                         ; $60d9: $24
    ld sp, hl                                     ; $60da: $f9
    dec h                                         ; $60db: $25
    ld h, $f1                                     ; $60dc: $26 $f1
    db $fd                                        ; $60de: $fd
    daa                                           ; $60df: $27
    jr z, jr_086_60d3                             ; $60e0: $28 $f1

    ld bc, $2a29                                  ; $60e2: $01 $29 $2a
    inc b                                         ; $60e5: $04
    dec b                                         ; $60e6: $05
    dec hl                                        ; $60e7: $2b
    inc l                                         ; $60e8: $2c
    dec bc                                        ; $60e9: $0b
    inc bc                                        ; $60ea: $03
    ld a, [bc]                                    ; $60eb: $0a
    ld a, [bc]                                    ; $60ec: $0a
    inc bc                                        ; $60ed: $03
    inc bc                                        ; $60ee: $03
    ld a, [bc]                                    ; $60ef: $0a
    ld a, [bc]                                    ; $60f0: $0a
    inc bc                                        ; $60f1: $03
    inc bc                                        ; $60f2: $03
    ld a, [bc]                                    ; $60f3: $0a
    ld a, [bc]                                    ; $60f4: $0a
    inc bc                                        ; $60f5: $03
    inc bc                                        ; $60f6: $03
    ld a, [bc]                                    ; $60f7: $0a
    ld a, [bc]                                    ; $60f8: $0a
    add hl, bc                                    ; $60f9: $09
    dec l                                         ; $60fa: $2d
    ld l, $2f                                     ; $60fb: $2e $2f
    dec c                                         ; $60fd: $0d
    jr nc, jr_086_6131                            ; $60fe: $30 $31

    ld [hl-], a                                   ; $6100: $32
    rrca                                          ; $6101: $0f
    inc sp                                        ; $6102: $33
    inc [hl]                                      ; $6103: $34
    dec [hl]                                      ; $6104: $35
    ld de, $3736                                  ; $6105: $11 $36 $37
    jr c, jr_086_610c                             ; $6108: $38 $02

    ld a, [bc]                                    ; $610a: $0a
    ld a, [bc]                                    ; $610b: $0a

jr_086_610c:
    ld a, [bc]                                    ; $610c: $0a
    ld [bc], a                                    ; $610d: $02
    ld a, [bc]                                    ; $610e: $0a
    ld a, [bc]                                    ; $610f: $0a
    ld a, [bc]                                    ; $6110: $0a

jr_086_6111:
    ld [bc], a                                    ; $6111: $02
    ld a, [bc]                                    ; $6112: $0a
    ld a, [bc]                                    ; $6113: $0a
    ld a, [bc]                                    ; $6114: $0a
    ld [bc], a                                    ; $6115: $02
    ld a, [bc]                                    ; $6116: $0a
    ld a, [bc]                                    ; $6117: $0a
    ld a, [bc]                                    ; $6118: $0a
    ld [de], a                                    ; $6119: $12
    inc de                                        ; $611a: $13
    add hl, sp                                    ; $611b: $39

jr_086_611c:
    ld a, [hl-]                                   ; $611c: $3a
    db $fd                                        ; $611d: $fd
    dec sp                                        ; $611e: $3b
    inc a                                         ; $611f: $3c
    dec a                                         ; $6120: $3d
    ld d, $3e                                     ; $6121: $16 $3e
    ccf                                           ; $6123: $3f
    ld b, b                                       ; $6124: $40
    jr jr_086_611c                                ; $6125: $18 $f5

    ld b, c                                       ; $6127: $41
    ld b, d                                       ; $6128: $42
    inc bc                                        ; $6129: $03
    inc bc                                        ; $612a: $03
    dec bc                                        ; $612b: $0b
    dec bc                                        ; $612c: $0b
    inc hl                                        ; $612d: $23
    dec bc                                        ; $612e: $0b
    dec bc                                        ; $612f: $0b
    dec bc                                        ; $6130: $0b

jr_086_6131:
    inc bc                                        ; $6131: $03
    dec bc                                        ; $6132: $0b
    dec bc                                        ; $6133: $0b
    dec bc                                        ; $6134: $0b
    inc bc                                        ; $6135: $03
    inc bc                                        ; $6136: $03
    dec bc                                        ; $6137: $0b
    dec bc                                        ; $6138: $0b
    inc h                                         ; $6139: $24
    or $ee                                        ; $613a: $f6 $ee
    db $ed                                        ; $613c: $ed
    ld b, e                                       ; $613d: $43
    pop af                                        ; $613e: $f1
    xor $ed                                       ; $613f: $ee $ed
    ld b, h                                       ; $6141: $44
    pop af                                        ; $6142: $f1
    xor $ed                                       ; $6143: $ee $ed
    inc b                                         ; $6145: $04
    xor d                                         ; $6146: $aa
    xor $ed                                       ; $6147: $ee $ed
    dec bc                                        ; $6149: $0b
    dec bc                                        ; $614a: $0b
    add b                                         ; $614b: $80
    add b                                         ; $614c: $80
    dec bc                                        ; $614d: $0b
    inc bc                                        ; $614e: $03
    add b                                         ; $614f: $80
    add b                                         ; $6150: $80
    dec bc                                        ; $6151: $0b
    inc bc                                        ; $6152: $03
    add b                                         ; $6153: $80
    add b                                         ; $6154: $80
    inc bc                                        ; $6155: $03
    dec bc                                        ; $6156: $0b
    add b                                         ; $6157: $80
    add b                                         ; $6158: $80
    inc h                                         ; $6159: $24
    dec h                                         ; $615a: $25
    ld b, l                                       ; $615b: $45
    ld b, [hl]                                    ; $615c: $46
    ld [hl], $37                                  ; $615d: $36 $37
    inc e                                         ; $615f: $1c
    dec e                                         ; $6160: $1d
    jr c, jr_086_619c                             ; $6161: $38 $39

    ld e, $1f                                     ; $6163: $1e $1f
    ld a, [hl-]                                   ; $6165: $3a
    dec sp                                        ; $6166: $3b
    jr nz, jr_086_618a                            ; $6167: $20 $21

    inc bc                                        ; $6169: $03
    inc bc                                        ; $616a: $03
    ld a, [bc]                                    ; $616b: $0a
    ld a, [bc]                                    ; $616c: $0a
    rlca                                          ; $616d: $07
    rlca                                          ; $616e: $07
    rlca                                          ; $616f: $07
    rlca                                          ; $6170: $07
    ld b, $06                                     ; $6171: $06 $06
    ld b, $06                                     ; $6173: $06 $06
    ld b, $06                                     ; $6175: $06 $06
    ld b, $06                                     ; $6177: $06 $06
    ld b, a                                       ; $6179: $47
    ld c, b                                       ; $617a: $48
    ld c, c                                       ; $617b: $49
    ld c, d                                       ; $617c: $4a
    ld h, $27                                     ; $617d: $26 $27
    jr z, jr_086_61aa                             ; $617f: $28 $29

    ld a, [hl+]                                   ; $6181: $2a
    dec hl                                        ; $6182: $2b
    inc l                                         ; $6183: $2c
    dec l                                         ; $6184: $2d
    ld l, $2f                                     ; $6185: $2e $2f
    jr nc, jr_086_61ba                            ; $6187: $30 $31

    ld a, [bc]                                    ; $6189: $0a

jr_086_618a:
    ld a, [bc]                                    ; $618a: $0a
    ld a, [bc]                                    ; $618b: $0a
    ld a, [bc]                                    ; $618c: $0a
    rlca                                          ; $618d: $07
    rlca                                          ; $618e: $07
    rlca                                          ; $618f: $07
    rlca                                          ; $6190: $07
    ld b, $06                                     ; $6191: $06 $06
    ld b, $06                                     ; $6193: $06 $06
    ld b, $06                                     ; $6195: $06 $06
    ld b, $06                                     ; $6197: $06 $06
    inc a                                         ; $6199: $3c
    dec de                                        ; $619a: $1b
    ld [hl+], a                                   ; $619b: $22

jr_086_619c:
    inc hl                                        ; $619c: $23
    ld [hl], $37                                  ; $619d: $36 $37
    inc e                                         ; $619f: $1c
    dec e                                         ; $61a0: $1d
    jr c, jr_086_61dc                             ; $61a1: $38 $39

    ld e, $1f                                     ; $61a3: $1e $1f
    ld a, [hl-]                                   ; $61a5: $3a
    dec sp                                        ; $61a6: $3b
    jr nz, jr_086_61ca                            ; $61a7: $20 $21

    inc bc                                        ; $61a9: $03

jr_086_61aa:
    inc bc                                        ; $61aa: $03
    inc bc                                        ; $61ab: $03
    inc bc                                        ; $61ac: $03
    rlca                                          ; $61ad: $07
    rlca                                          ; $61ae: $07
    rlca                                          ; $61af: $07
    rlca                                          ; $61b0: $07
    ld b, $06                                     ; $61b1: $06 $06
    ld b, $06                                     ; $61b3: $06 $06
    ld b, $06                                     ; $61b5: $06 $06
    ld b, $06                                     ; $61b7: $06 $06
    inc h                                         ; $61b9: $24

jr_086_61ba:
    jp nz, $edee                                  ; $61ba: $c2 $ee $ed

    ld h, $27                                     ; $61bd: $26 $27
    xor $ed                                       ; $61bf: $ee $ed
    ld a, [hl+]                                   ; $61c1: $2a
    dec hl                                        ; $61c2: $2b
    xor $ed                                       ; $61c3: $ee $ed
    ld l, $2f                                     ; $61c5: $2e $2f
    xor $ed                                       ; $61c7: $ee $ed
    inc bc                                        ; $61c9: $03

jr_086_61ca:
    dec bc                                        ; $61ca: $0b
    add b                                         ; $61cb: $80
    add b                                         ; $61cc: $80
    rlca                                          ; $61cd: $07
    rlca                                          ; $61ce: $07
    add b                                         ; $61cf: $80
    add b                                         ; $61d0: $80
    ld b, $07                                     ; $61d1: $06 $07
    add b                                         ; $61d3: $80
    add b                                         ; $61d4: $80
    ld b, $07                                     ; $61d5: $06 $07
    add b                                         ; $61d7: $80
    add b                                         ; $61d8: $80
    ld d, [hl]                                    ; $61d9: $56
    ld d, a                                       ; $61da: $57
    ld b, b                                       ; $61db: $40

jr_086_61dc:
    ld b, c                                       ; $61dc: $41
    ld e, b                                       ; $61dd: $58
    ld e, c                                       ; $61de: $59
    ld b, d                                       ; $61df: $42
    ld c, e                                       ; $61e0: $4b
    ld e, d                                       ; $61e1: $5a
    ld e, e                                       ; $61e2: $5b
    ld c, h                                       ; $61e3: $4c
    ld c, l                                       ; $61e4: $4d
    ld [hl], $4e                                  ; $61e5: $36 $4e
    ld d, e                                       ; $61e7: $53
    ld d, h                                       ; $61e8: $54
    ld b, $06                                     ; $61e9: $06 $06
    ld b, $06                                     ; $61eb: $06 $06
    ld b, $06                                     ; $61ed: $06 $06
    ld b, $0e                                     ; $61ef: $06 $0e
    ld b, $06                                     ; $61f1: $06 $06
    ld c, $0e                                     ; $61f3: $0e $0e
    ld b, $0e                                     ; $61f5: $06 $0e
    add l                                         ; $61f7: $85
    add l                                         ; $61f8: $85
    ld b, a                                       ; $61f9: $47
    ld c, b                                       ; $61fa: $48
    xor $ed                                       ; $61fb: $ee $ed
    ld c, e                                       ; $61fd: $4b
    ld c, h                                       ; $61fe: $4c
    xor $ed                                       ; $61ff: $ee $ed
    ld e, h                                       ; $6201: $5c
    ld e, l                                       ; $6202: $5d
    xor $ed                                       ; $6203: $ee $ed
    ld c, a                                       ; $6205: $4f
    daa                                           ; $6206: $27
    xor $ed                                       ; $6207: $ee $ed
    ld b, $07                                     ; $6209: $06 $07
    add b                                         ; $620b: $80
    add b                                         ; $620c: $80
    ld b, $07                                     ; $620d: $06 $07
    add b                                         ; $620f: $80
    add b                                         ; $6210: $80
    ld b, $07                                     ; $6211: $06 $07
    add b                                         ; $6213: $80
    add b                                         ; $6214: $80
    ld c, $07                                     ; $6215: $0e $07
    add b                                         ; $6217: $80
    add b                                         ; $6218: $80
    ld a, b                                       ; $6219: $78
    ld d, b                                       ; $621a: $50
    ld d, c                                       ; $621b: $51
    ld d, d                                       ; $621c: $52
    ld d, e                                       ; $621d: $53
    ld d, h                                       ; $621e: $54
    ld d, l                                       ; $621f: $55
    ld d, [hl]                                    ; $6220: $56
    ld d, a                                       ; $6221: $57
    ld e, b                                       ; $6222: $58
    ld e, c                                       ; $6223: $59
    ld e, d                                       ; $6224: $5a
    ld e, e                                       ; $6225: $5b
    ld e, h                                       ; $6226: $5c
    ld e, l                                       ; $6227: $5d
    ld e, [hl]                                    ; $6228: $5e
    ld bc, $0909                                  ; $6229: $01 $09 $09
    add hl, bc                                    ; $622c: $09
    add hl, bc                                    ; $622d: $09
    add hl, bc                                    ; $622e: $09
    inc c                                         ; $622f: $0c
    inc c                                         ; $6230: $0c
    add hl, bc                                    ; $6231: $09
    add hl, bc                                    ; $6232: $09
    inc c                                         ; $6233: $0c
    inc c                                         ; $6234: $0c
    add hl, bc                                    ; $6235: $09
    add hl, bc                                    ; $6236: $09
    add hl, bc                                    ; $6237: $09
    add hl, bc                                    ; $6238: $09
    ld e, a                                       ; $6239: $5f
    dec hl                                        ; $623a: $2b
    inc l                                         ; $623b: $2c
    dec l                                         ; $623c: $2d
    ld h, b                                       ; $623d: $60
    cpl                                           ; $623e: $2f
    jr nc, @+$33                                  ; $623f: $30 $31

    ld h, c                                       ; $6241: $61
    ld c, b                                       ; $6242: $48
    ld c, c                                       ; $6243: $49
    ld c, d                                       ; $6244: $4a
    ld h, d                                       ; $6245: $62
    ld c, h                                       ; $6246: $4c
    ld c, l                                       ; $6247: $4d
    ld c, [hl]                                    ; $6248: $4e
    add hl, bc                                    ; $6249: $09
    ld b, $06                                     ; $624a: $06 $06
    ld b, $09                                     ; $624c: $06 $09
    ld b, $06                                     ; $624e: $06 $06
    ld b, $09                                     ; $6250: $06 $09
    rlca                                          ; $6252: $07
    ld b, $06                                     ; $6253: $06 $06
    add hl, bc                                    ; $6255: $09
    rlca                                          ; $6256: $07
    ld b, $06                                     ; $6257: $06 $06
    jr c, @+$65                                   ; $6259: $38 $63

    ld h, d                                       ; $625b: $62
    ld h, e                                       ; $625c: $63
    ld a, [hl-]                                   ; $625d: $3a
    ld e, a                                       ; $625e: $5f
    ld h, l                                       ; $625f: $65
    ld h, [hl]                                    ; $6260: $66
    ld d, [hl]                                    ; $6261: $56
    ld h, b                                       ; $6262: $60
    ld l, b                                       ; $6263: $68
    ld l, c                                       ; $6264: $69
    ld e, b                                       ; $6265: $58
    ld h, c                                       ; $6266: $61
    ld l, d                                       ; $6267: $6a
    ld l, e                                       ; $6268: $6b
    ld b, $0e                                     ; $6269: $06 $0e
    add l                                         ; $626b: $85
    add l                                         ; $626c: $85
    ld b, $05                                     ; $626d: $06 $05
    add l                                         ; $626f: $85
    add l                                         ; $6270: $85
    ld b, $05                                     ; $6271: $06 $05
    dec b                                         ; $6273: $05
    dec b                                         ; $6274: $05
    ld b, $05                                     ; $6275: $06 $05
    dec b                                         ; $6277: $05
    dec b                                         ; $6278: $05
    ld h, h                                       ; $6279: $64
    dec hl                                        ; $627a: $2b
    xor $ed                                       ; $627b: $ee $ed
    ld h, a                                       ; $627d: $67
    cpl                                           ; $627e: $2f
    xor $ed                                       ; $627f: $ee $ed
    ld h, b                                       ; $6281: $60
    ld c, b                                       ; $6282: $48
    xor $ed                                       ; $6283: $ee $ed
    ld h, c                                       ; $6285: $61
    ld c, h                                       ; $6286: $4c
    xor $ed                                       ; $6287: $ee $ed
    ld c, $07                                     ; $6289: $0e $07
    add b                                         ; $628b: $80
    add b                                         ; $628c: $80
    dec b                                         ; $628d: $05
    rlca                                          ; $628e: $07
    add b                                         ; $628f: $80
    add b                                         ; $6290: $80
    dec h                                         ; $6291: $25
    rlca                                          ; $6292: $07
    add b                                         ; $6293: $80
    add b                                         ; $6294: $80
    dec h                                         ; $6295: $25
    rlca                                          ; $6296: $07
    add b                                         ; $6297: $80
    add b                                         ; $6298: $80
    db $ed                                        ; $6299: $ed
    xor $44                                       ; $629a: $ee $44
    ld h, l                                       ; $629c: $65
    db $ed                                        ; $629d: $ed
    xor $1c                                       ; $629e: $ee $1c
    dec e                                         ; $62a0: $1d
    db $ed                                        ; $62a1: $ed
    xor $1e                                       ; $62a2: $ee $1e
    rra                                           ; $62a4: $1f
    db $ed                                        ; $62a5: $ed
    xor $20                                       ; $62a6: $ee $20
    ld hl, $8080                                  ; $62a8: $21 $80 $80
    rlca                                          ; $62ab: $07
    dec c                                         ; $62ac: $0d
    add b                                         ; $62ad: $80
    add b                                         ; $62ae: $80
    rlca                                          ; $62af: $07
    rlca                                          ; $62b0: $07
    add b                                         ; $62b1: $80
    add b                                         ; $62b2: $80
    rlca                                          ; $62b3: $07
    ld b, $80                                     ; $62b4: $06 $80
    add b                                         ; $62b6: $80
    rlca                                          ; $62b7: $07
    ld b, $66                                     ; $62b8: $06 $66
    ld h, a                                       ; $62ba: $67
    ld l, b                                       ; $62bb: $68
    ld d, d                                       ; $62bc: $52
    ld h, $27                                     ; $62bd: $26 $27
    jr z, @+$2b                                   ; $62bf: $28 $29

    ld a, [hl+]                                   ; $62c1: $2a
    dec hl                                        ; $62c2: $2b
    inc l                                         ; $62c3: $2c
    dec l                                         ; $62c4: $2d
    ld l, $2f                                     ; $62c5: $2e $2f
    jr nc, jr_086_62fa                            ; $62c7: $30 $31

    dec c                                         ; $62c9: $0d
    dec c                                         ; $62ca: $0d
    dec c                                         ; $62cb: $0d
    rlca                                          ; $62cc: $07
    rlca                                          ; $62cd: $07
    rlca                                          ; $62ce: $07
    rlca                                          ; $62cf: $07
    rlca                                          ; $62d0: $07
    ld b, $06                                     ; $62d1: $06 $06
    ld b, $06                                     ; $62d3: $06 $06
    ld b, $06                                     ; $62d5: $06 $06
    ld b, $06                                     ; $62d7: $06 $06
    ld e, d                                       ; $62d9: $5a
    ld l, c                                       ; $62da: $69
    ld l, d                                       ; $62db: $6a
    ld l, d                                       ; $62dc: $6a
    ld [hl], $6b                                  ; $62dd: $36 $6b
    ld l, h                                       ; $62df: $6c
    ld l, l                                       ; $62e0: $6d
    jr c, jr_086_631c                             ; $62e1: $38 $39

    ld e, $1f                                     ; $62e3: $1e $1f
    ld a, [hl-]                                   ; $62e5: $3a
    dec sp                                        ; $62e6: $3b
    jr nz, jr_086_630a                            ; $62e7: $20 $21

    ld b, $0a                                     ; $62e9: $06 $0a
    ld a, [bc]                                    ; $62eb: $0a
    ld a, [bc]                                    ; $62ec: $0a
    ld b, $0a                                     ; $62ed: $06 $0a
    ld a, [bc]                                    ; $62ef: $0a
    ld a, [bc]                                    ; $62f0: $0a
    ld b, $07                                     ; $62f1: $06 $07
    rlca                                          ; $62f3: $07
    rlca                                          ; $62f4: $07
    ld b, $06                                     ; $62f5: $06 $06
    ld b, $06                                     ; $62f7: $06 $06
    ld l, d                                       ; $62f9: $6a

jr_086_62fa:
    ld l, d                                       ; $62fa: $6a
    ld l, d                                       ; $62fb: $6a
    ld l, d                                       ; $62fc: $6a
    ld l, [hl]                                    ; $62fd: $6e
    ld l, a                                       ; $62fe: $6f
    ld [hl], b                                    ; $62ff: $70
    ld [hl], c                                    ; $6300: $71
    ld a, [hl+]                                   ; $6301: $2a
    dec hl                                        ; $6302: $2b
    inc l                                         ; $6303: $2c
    dec l                                         ; $6304: $2d
    ld l, $2f                                     ; $6305: $2e $2f
    jr nc, jr_086_633a                            ; $6307: $30 $31

    ld a, [bc]                                    ; $6309: $0a

jr_086_630a:
    ld a, [bc]                                    ; $630a: $0a
    ld a, [bc]                                    ; $630b: $0a
    ld a, [bc]                                    ; $630c: $0a
    ld a, [bc]                                    ; $630d: $0a
    ld a, [bc]                                    ; $630e: $0a
    ld a, [bc]                                    ; $630f: $0a
    ld a, [bc]                                    ; $6310: $0a
    rlca                                          ; $6311: $07
    rlca                                          ; $6312: $07
    rlca                                          ; $6313: $07
    rlca                                          ; $6314: $07
    ld b, $06                                     ; $6315: $06 $06
    ld b, $06                                     ; $6317: $06 $06
    db $ed                                        ; $6319: $ed
    xor $40                                       ; $631a: $ee $40

jr_086_631c:
    ld b, c                                       ; $631c: $41
    db $ed                                        ; $631d: $ed
    ld [hl], d                                    ; $631e: $72
    ld [hl], e                                    ; $631f: $73
    ld [hl], e                                    ; $6320: $73
    db $ed                                        ; $6321: $ed
    db $ed                                        ; $6322: $ed
    db $ed                                        ; $6323: $ed
    db $ed                                        ; $6324: $ed
    db $ed                                        ; $6325: $ed
    db $ed                                        ; $6326: $ed
    db $ed                                        ; $6327: $ed
    db $ed                                        ; $6328: $ed
    add b                                         ; $6329: $80
    add b                                         ; $632a: $80
    rlca                                          ; $632b: $07
    ld b, $80                                     ; $632c: $06 $80
    adc b                                         ; $632e: $88
    adc b                                         ; $632f: $88
    adc b                                         ; $6330: $88
    add b                                         ; $6331: $80
    add b                                         ; $6332: $80
    add b                                         ; $6333: $80
    add b                                         ; $6334: $80
    add b                                         ; $6335: $80
    add b                                         ; $6336: $80
    add b                                         ; $6337: $80
    add b                                         ; $6338: $80
    ld b, a                                       ; $6339: $47

jr_086_633a:
    ld c, b                                       ; $633a: $48
    ld c, c                                       ; $633b: $49
    ld c, d                                       ; $633c: $4a
    ld [hl], e                                    ; $633d: $73
    ld [hl], e                                    ; $633e: $73
    ld [hl], e                                    ; $633f: $73
    ld [hl], e                                    ; $6340: $73
    db $ed                                        ; $6341: $ed
    db $ed                                        ; $6342: $ed
    db $ed                                        ; $6343: $ed
    db $ed                                        ; $6344: $ed
    db $ed                                        ; $6345: $ed
    db $ed                                        ; $6346: $ed
    db $ed                                        ; $6347: $ed
    db $ed                                        ; $6348: $ed
    ld b, $06                                     ; $6349: $06 $06
    ld b, $06                                     ; $634b: $06 $06
    adc b                                         ; $634d: $88
    adc b                                         ; $634e: $88
    adc b                                         ; $634f: $88
    adc b                                         ; $6350: $88
    add b                                         ; $6351: $80
    add b                                         ; $6352: $80
    add b                                         ; $6353: $80
    add b                                         ; $6354: $80
    add b                                         ; $6355: $80
    add b                                         ; $6356: $80
    add b                                         ; $6357: $80
    add b                                         ; $6358: $80
    ld d, [hl]                                    ; $6359: $56
    ld d, a                                       ; $635a: $57
    ld b, b                                       ; $635b: $40
    ld b, c                                       ; $635c: $41
    ld [hl], e                                    ; $635d: $73
    ld [hl], e                                    ; $635e: $73
    ld [hl], e                                    ; $635f: $73
    ld [hl], e                                    ; $6360: $73
    db $ed                                        ; $6361: $ed
    db $ed                                        ; $6362: $ed
    db $ed                                        ; $6363: $ed
    db $ed                                        ; $6364: $ed
    db $ed                                        ; $6365: $ed
    db $ed                                        ; $6366: $ed
    db $ed                                        ; $6367: $ed
    db $ed                                        ; $6368: $ed
    ld b, $06                                     ; $6369: $06 $06
    ld b, $06                                     ; $636b: $06 $06
    adc b                                         ; $636d: $88
    adc b                                         ; $636e: $88
    adc b                                         ; $636f: $88
    adc b                                         ; $6370: $88
    add b                                         ; $6371: $80
    add b                                         ; $6372: $80
    add b                                         ; $6373: $80
    add b                                         ; $6374: $80
    add b                                         ; $6375: $80
    add b                                         ; $6376: $80
    add b                                         ; $6377: $80
    add b                                         ; $6378: $80
    ld [hl], h                                    ; $6379: $74
    ld e, e                                       ; $637a: $5b
    ld b, h                                       ; $637b: $44
    ld b, l                                       ; $637c: $45
    ld [hl], l                                    ; $637d: $75
    scf                                           ; $637e: $37
    inc e                                         ; $637f: $1c
    dec e                                         ; $6380: $1d
    jr c, jr_086_63bc                             ; $6381: $38 $39

    ld e, $1f                                     ; $6383: $1e $1f
    ld a, [hl-]                                   ; $6385: $3a
    dec sp                                        ; $6386: $3b
    jr nz, jr_086_63aa                            ; $6387: $20 $21

    ld a, [bc]                                    ; $6389: $0a
    rlca                                          ; $638a: $07
    ld b, $06                                     ; $638b: $06 $06
    ld a, [bc]                                    ; $638d: $0a
    rlca                                          ; $638e: $07
    ld b, $06                                     ; $638f: $06 $06
    rlca                                          ; $6391: $07
    rlca                                          ; $6392: $07
    ld b, $06                                     ; $6393: $06 $06
    ld b, $06                                     ; $6395: $06 $06
    ld b, $06                                     ; $6397: $06 $06
    ld h, l                                       ; $6399: $65
    ld h, [hl]                                    ; $639a: $66
    ld h, a                                       ; $639b: $67
    ld l, b                                       ; $639c: $68
    ld h, $27                                     ; $639d: $26 $27
    jr z, jr_086_63ca                             ; $639f: $28 $29

    ld a, [hl+]                                   ; $63a1: $2a
    dec hl                                        ; $63a2: $2b
    inc l                                         ; $63a3: $2c
    dec l                                         ; $63a4: $2d
    ld l, $2f                                     ; $63a5: $2e $2f
    jr nc, jr_086_63da                            ; $63a7: $30 $31

    dec c                                         ; $63a9: $0d

jr_086_63aa:
    dec c                                         ; $63aa: $0d
    dec c                                         ; $63ab: $0d
    dec c                                         ; $63ac: $0d
    rlca                                          ; $63ad: $07
    rlca                                          ; $63ae: $07
    rlca                                          ; $63af: $07
    rlca                                          ; $63b0: $07
    ld b, $06                                     ; $63b1: $06 $06
    ld b, $06                                     ; $63b3: $06 $06
    ld b, $06                                     ; $63b5: $06 $06
    ld b, $06                                     ; $63b7: $06 $06
    ld e, d                                       ; $63b9: $5a
    ld e, e                                       ; $63ba: $5b
    ld b, h                                       ; $63bb: $44

jr_086_63bc:
    ld l, c                                       ; $63bc: $69
    ld [hl], $37                                  ; $63bd: $36 $37
    inc e                                         ; $63bf: $1c
    ld l, e                                       ; $63c0: $6b
    jr c, jr_086_63fc                             ; $63c1: $38 $39

    ld e, $1f                                     ; $63c3: $1e $1f
    ld a, [hl-]                                   ; $63c5: $3a
    dec sp                                        ; $63c6: $3b
    jr nz, jr_086_63ea                            ; $63c7: $20 $21

    rlca                                          ; $63c9: $07

jr_086_63ca:
    ld b, $06                                     ; $63ca: $06 $06
    ld a, [bc]                                    ; $63cc: $0a
    rlca                                          ; $63cd: $07
    ld b, $06                                     ; $63ce: $06 $06
    ld a, [bc]                                    ; $63d0: $0a
    ld b, $06                                     ; $63d1: $06 $06
    ld b, $07                                     ; $63d3: $06 $07
    ld b, $06                                     ; $63d5: $06 $06
    ld b, $06                                     ; $63d7: $06 $06
    ld l, d                                       ; $63d9: $6a

jr_086_63da:
    ld l, d                                       ; $63da: $6a
    ld l, d                                       ; $63db: $6a
    ld l, d                                       ; $63dc: $6a
    ld l, h                                       ; $63dd: $6c
    ld l, l                                       ; $63de: $6d
    ld l, [hl]                                    ; $63df: $6e
    ld l, a                                       ; $63e0: $6f
    ld a, [hl+]                                   ; $63e1: $2a
    dec hl                                        ; $63e2: $2b
    inc l                                         ; $63e3: $2c
    dec l                                         ; $63e4: $2d
    ld l, $2f                                     ; $63e5: $2e $2f
    jr nc, jr_086_641a                            ; $63e7: $30 $31

    ld a, [bc]                                    ; $63e9: $0a

jr_086_63ea:
    ld a, [bc]                                    ; $63ea: $0a
    ld a, [bc]                                    ; $63eb: $0a
    ld a, [bc]                                    ; $63ec: $0a
    ld a, [bc]                                    ; $63ed: $0a
    ld a, [bc]                                    ; $63ee: $0a
    ld a, [bc]                                    ; $63ef: $0a
    ld a, [bc]                                    ; $63f0: $0a
    rlca                                          ; $63f1: $07
    rlca                                          ; $63f2: $07
    rlca                                          ; $63f3: $07
    rlca                                          ; $63f4: $07
    ld b, $06                                     ; $63f5: $06 $06
    ld b, $06                                     ; $63f7: $06 $06
    ld l, d                                       ; $63f9: $6a
    ld l, d                                       ; $63fa: $6a
    ld [hl], h                                    ; $63fb: $74

jr_086_63fc:
    ld b, l                                       ; $63fc: $45
    ld [hl], b                                    ; $63fd: $70
    ld [hl], c                                    ; $63fe: $71
    ld [hl], l                                    ; $63ff: $75
    dec e                                         ; $6400: $1d
    jr c, jr_086_643c                             ; $6401: $38 $39

    ld e, $1f                                     ; $6403: $1e $1f
    ld a, [hl-]                                   ; $6405: $3a
    dec sp                                        ; $6406: $3b
    jr nz, @+$23                                  ; $6407: $20 $21

    ld a, [bc]                                    ; $6409: $0a
    ld a, [bc]                                    ; $640a: $0a
    ld a, [bc]                                    ; $640b: $0a
    rlca                                          ; $640c: $07
    ld a, [bc]                                    ; $640d: $0a
    ld a, [bc]                                    ; $640e: $0a
    ld a, [bc]                                    ; $640f: $0a
    rlca                                          ; $6410: $07
    rlca                                          ; $6411: $07
    rlca                                          ; $6412: $07
    rlca                                          ; $6413: $07
    rlca                                          ; $6414: $07
    ld b, $06                                     ; $6415: $06 $06
    ld b, $06                                     ; $6417: $06 $06
    ld e, h                                       ; $6419: $5c

jr_086_641a:
    ld e, l                                       ; $641a: $5d
    ld h, l                                       ; $641b: $65
    ld h, [hl]                                    ; $641c: $66
    ld h, $27                                     ; $641d: $26 $27
    jr z, jr_086_644a                             ; $641f: $28 $29

    ld a, [hl+]                                   ; $6421: $2a
    dec hl                                        ; $6422: $2b
    inc l                                         ; $6423: $2c
    dec l                                         ; $6424: $2d
    ld l, $2f                                     ; $6425: $2e $2f
    jr nc, jr_086_645a                            ; $6427: $30 $31

    ld b, $06                                     ; $6429: $06 $06
    dec c                                         ; $642b: $0d
    dec c                                         ; $642c: $0d
    ld b, $06                                     ; $642d: $06 $06
    rlca                                          ; $642f: $07
    rlca                                          ; $6430: $07
    ld b, $06                                     ; $6431: $06 $06
    ld b, $06                                     ; $6433: $06 $06
    ld b, $06                                     ; $6435: $06 $06
    ld b, $06                                     ; $6437: $06 $06
    ld h, a                                       ; $6439: $67
    ld l, b                                       ; $643a: $68
    ld b, h                                       ; $643b: $44

jr_086_643c:
    ld b, l                                       ; $643c: $45
    ld [hl], $37                                  ; $643d: $36 $37
    inc e                                         ; $643f: $1c
    dec e                                         ; $6440: $1d
    jr c, jr_086_647c                             ; $6441: $38 $39

    ld e, $1f                                     ; $6443: $1e $1f
    ld a, [hl-]                                   ; $6445: $3a
    dec sp                                        ; $6446: $3b
    jr nz, @+$23                                  ; $6447: $20 $21

    dec c                                         ; $6449: $0d

jr_086_644a:
    dec c                                         ; $644a: $0d
    rlca                                          ; $644b: $07
    ld b, $07                                     ; $644c: $06 $07
    rlca                                          ; $644e: $07
    rlca                                          ; $644f: $07
    ld b, $06                                     ; $6450: $06 $06
    ld b, $06                                     ; $6452: $06 $06
    ld b, $06                                     ; $6454: $06 $06
    ld b, $06                                     ; $6456: $06 $06
    ld b, $5c                                     ; $6458: $06 $5c

jr_086_645a:
    ld l, c                                       ; $645a: $69
    ld l, d                                       ; $645b: $6a
    ld l, d                                       ; $645c: $6a
    ld h, $6b                                     ; $645d: $26 $6b
    ld l, h                                       ; $645f: $6c
    ld l, l                                       ; $6460: $6d
    ld a, [hl+]                                   ; $6461: $2a
    dec hl                                        ; $6462: $2b
    inc l                                         ; $6463: $2c
    dec l                                         ; $6464: $2d
    ld l, $2f                                     ; $6465: $2e $2f
    jr nc, jr_086_649a                            ; $6467: $30 $31

    ld b, $0a                                     ; $6469: $06 $0a
    ld a, [bc]                                    ; $646b: $0a
    ld a, [bc]                                    ; $646c: $0a
    ld b, $0a                                     ; $646d: $06 $0a
    ld a, [bc]                                    ; $646f: $0a
    ld a, [bc]                                    ; $6470: $0a
    ld b, $07                                     ; $6471: $06 $07
    rlca                                          ; $6473: $07
    rlca                                          ; $6474: $07
    ld b, $06                                     ; $6475: $06 $06
    ld b, $06                                     ; $6477: $06 $06
    ld l, d                                       ; $6479: $6a
    ld l, d                                       ; $647a: $6a
    ld l, d                                       ; $647b: $6a

jr_086_647c:
    ld l, d                                       ; $647c: $6a
    ld l, [hl]                                    ; $647d: $6e
    ld l, a                                       ; $647e: $6f
    ld [hl], b                                    ; $647f: $70
    ld [hl], c                                    ; $6480: $71
    jr c, jr_086_64bc                             ; $6481: $38 $39

    ld e, $1f                                     ; $6483: $1e $1f
    ld a, [hl-]                                   ; $6485: $3a
    dec sp                                        ; $6486: $3b
    jr nz, jr_086_64aa                            ; $6487: $20 $21

    ld a, [bc]                                    ; $6489: $0a
    ld a, [bc]                                    ; $648a: $0a
    ld a, [bc]                                    ; $648b: $0a
    ld a, [bc]                                    ; $648c: $0a
    ld a, [bc]                                    ; $648d: $0a
    ld a, [bc]                                    ; $648e: $0a
    ld a, [bc]                                    ; $648f: $0a
    ld a, [bc]                                    ; $6490: $0a
    rlca                                          ; $6491: $07
    rlca                                          ; $6492: $07
    rlca                                          ; $6493: $07
    rlca                                          ; $6494: $07
    ld b, $06                                     ; $6495: $06 $06
    ld b, $06                                     ; $6497: $06 $06
    ld [hl], h                                    ; $6499: $74

jr_086_649a:
    ld e, l                                       ; $649a: $5d
    ld d, c                                       ; $649b: $51
    ld d, d                                       ; $649c: $52
    ld [hl], l                                    ; $649d: $75
    daa                                           ; $649e: $27
    jr z, @+$2b                                   ; $649f: $28 $29

    ld a, [hl+]                                   ; $64a1: $2a
    dec hl                                        ; $64a2: $2b
    inc l                                         ; $64a3: $2c
    dec l                                         ; $64a4: $2d
    ld l, $2f                                     ; $64a5: $2e $2f
    jr nc, jr_086_64da                            ; $64a7: $30 $31

    ld a, [bc]                                    ; $64a9: $0a

jr_086_64aa:
    rlca                                          ; $64aa: $07
    ld b, $06                                     ; $64ab: $06 $06
    ld a, [bc]                                    ; $64ad: $0a
    rlca                                          ; $64ae: $07
    ld b, $06                                     ; $64af: $06 $06
    rlca                                          ; $64b1: $07
    rlca                                          ; $64b2: $07
    ld b, $06                                     ; $64b3: $06 $06
    ld b, $06                                     ; $64b5: $06 $06
    ld b, $06                                     ; $64b7: $06 $06
    ld e, d                                       ; $64b9: $5a
    ld h, l                                       ; $64ba: $65
    ld h, [hl]                                    ; $64bb: $66

jr_086_64bc:
    ld h, a                                       ; $64bc: $67
    ld [hl], $37                                  ; $64bd: $36 $37
    inc e                                         ; $64bf: $1c
    dec e                                         ; $64c0: $1d
    jr c, @+$3b                                   ; $64c1: $38 $39

    ld e, $1f                                     ; $64c3: $1e $1f
    ld a, [hl-]                                   ; $64c5: $3a
    dec sp                                        ; $64c6: $3b
    jr nz, jr_086_64ea                            ; $64c7: $20 $21

    ld b, $0d                                     ; $64c9: $06 $0d
    dec c                                         ; $64cb: $0d
    dec c                                         ; $64cc: $0d
    ld b, $07                                     ; $64cd: $06 $07
    rlca                                          ; $64cf: $07
    rlca                                          ; $64d0: $07
    ld b, $06                                     ; $64d1: $06 $06
    ld b, $06                                     ; $64d3: $06 $06
    ld b, $06                                     ; $64d5: $06 $06
    ld b, $06                                     ; $64d7: $06 $06
    ld l, b                                       ; $64d9: $68

jr_086_64da:
    ld e, l                                       ; $64da: $5d
    xor $ed                                       ; $64db: $ee $ed
    ld h, $27                                     ; $64dd: $26 $27
    xor $ed                                       ; $64df: $ee $ed
    ld a, [hl+]                                   ; $64e1: $2a
    dec hl                                        ; $64e2: $2b
    xor $ed                                       ; $64e3: $ee $ed
    ld l, $2f                                     ; $64e5: $2e $2f
    xor $ed                                       ; $64e7: $ee $ed
    dec c                                         ; $64e9: $0d

jr_086_64ea:
    rlca                                          ; $64ea: $07
    add b                                         ; $64eb: $80
    add b                                         ; $64ec: $80
    rlca                                          ; $64ed: $07
    rlca                                          ; $64ee: $07
    add b                                         ; $64ef: $80
    add b                                         ; $64f0: $80
    ld b, $07                                     ; $64f1: $06 $07
    add b                                         ; $64f3: $80
    add b                                         ; $64f4: $80
    ld b, $07                                     ; $64f5: $06 $07
    add b                                         ; $64f7: $80
    add b                                         ; $64f8: $80
    ld b, a                                       ; $64f9: $47
    ld c, b                                       ; $64fa: $48
    xor $ed                                       ; $64fb: $ee $ed
    ld [hl], e                                    ; $64fd: $73
    ld [hl], e                                    ; $64fe: $73
    halt                                          ; $64ff: $76
    db $ed                                        ; $6500: $ed
    db $ed                                        ; $6501: $ed
    db $ed                                        ; $6502: $ed
    db $ed                                        ; $6503: $ed
    db $ed                                        ; $6504: $ed
    db $ed                                        ; $6505: $ed
    db $ed                                        ; $6506: $ed
    db $ed                                        ; $6507: $ed
    db $ed                                        ; $6508: $ed
    ld b, $07                                     ; $6509: $06 $07
    add b                                         ; $650b: $80
    add b                                         ; $650c: $80
    adc b                                         ; $650d: $88
    adc b                                         ; $650e: $88
    adc b                                         ; $650f: $88
    add b                                         ; $6510: $80
    add b                                         ; $6511: $80
    add b                                         ; $6512: $80
    add b                                         ; $6513: $80
    add b                                         ; $6514: $80
    add b                                         ; $6515: $80
    add b                                         ; $6516: $80
    add b                                         ; $6517: $80
    add b                                         ; $6518: $80
    ld a, [bc]                                    ; $6519: $0a
    nop                                           ; $651a: $00
    inc c                                         ; $651b: $0c
    nop                                           ; $651c: $00
    ldh [$0b], a                                  ; $651d: $e0 $0b
    pop de                                        ; $651f: $d1
    pop de                                        ; $6520: $d1
    pop de                                        ; $6521: $d1
    pop de                                        ; $6522: $d1
    jp nc, $d2d2                                  ; $6523: $d2 $d2 $d2

    jp nc, $d3d3                                  ; $6526: $d2 $d3 $d3

    db $d3                                        ; $6529: $d3
    db $d3                                        ; $652a: $d3
    call nc, $d4d4                                ; $652b: $d4 $d4 $d4
    call nc, $0101                                ; $652e: $d4 $01 $01
    ld bc, $0101                                  ; $6531: $01 $01 $01
    ld bc, $0101                                  ; $6534: $01 $01 $01
    ld bc, $0101                                  ; $6537: $01 $01 $01
    ld bc, $0101                                  ; $653a: $01 $01 $01
    ld bc, $d101                                  ; $653d: $01 $01 $d1
    pop de                                        ; $6540: $d1
    pop de                                        ; $6541: $d1
    push de                                       ; $6542: $d5
    jp nc, $d2d2                                  ; $6543: $d2 $d2 $d2

    sub $d3                                       ; $6546: $d6 $d3
    db $d3                                        ; $6548: $d3
    db $d3                                        ; $6549: $d3
    rst $10                                       ; $654a: $d7
    call nc, $d4d4                                ; $654b: $d4 $d4 $d4
    ret c                                         ; $654e: $d8

    ld bc, $0101                                  ; $654f: $01 $01 $01
    ld bc, $0101                                  ; $6552: $01 $01 $01
    ld bc, $0101                                  ; $6555: $01 $01 $01
    ld bc, $0101                                  ; $6558: $01 $01 $01
    ld bc, $0101                                  ; $655b: $01 $01 $01
    ld bc, $dad9                                  ; $655e: $01 $d9 $da
    db $db                                        ; $6561: $db
    pop de                                        ; $6562: $d1
    call c, $dedd                                 ; $6563: $dc $dd $de
    jp nc, $e0df                                  ; $6566: $d2 $df $e0

    pop hl                                        ; $6569: $e1
    db $d3                                        ; $656a: $d3
    ld [c], a                                     ; $656b: $e2
    db $e3                                        ; $656c: $e3
    db $e4                                        ; $656d: $e4
    call nc, Call_000_0505                        ; $656e: $d4 $05 $05
    ld bc, $0501                                  ; $6571: $01 $01 $05
    dec b                                         ; $6574: $05
    ld bc, $0501                                  ; $6575: $01 $01 $05
    dec b                                         ; $6578: $05
    ld bc, $0301                                  ; $6579: $01 $01 $03
    inc bc                                        ; $657c: $03
    ld bc, $e501                                  ; $657d: $01 $01 $e5
    and $e5                                       ; $6580: $e6 $e5
    push hl                                       ; $6582: $e5
    rst $20                                       ; $6583: $e7
    add sp, -$17                                  ; $6584: $e8 $e9
    ld [$eceb], a                                 ; $6586: $ea $eb $ec
    db $ed                                        ; $6589: $ed
    xor $ef                                       ; $658a: $ee $ef
    ldh a, [$ef]                                  ; $658c: $f0 $ef
    rst $28                                       ; $658e: $ef
    ld [bc], a                                    ; $658f: $02
    ld [bc], a                                    ; $6590: $02
    ld [bc], a                                    ; $6591: $02
    ld [bc], a                                    ; $6592: $02
    nop                                           ; $6593: $00
    ld [bc], a                                    ; $6594: $02
    nop                                           ; $6595: $00
    nop                                           ; $6596: $00
    nop                                           ; $6597: $00
    ld [bc], a                                    ; $6598: $02
    nop                                           ; $6599: $00
    nop                                           ; $659a: $00
    ld [bc], a                                    ; $659b: $02
    ld [bc], a                                    ; $659c: $02
    ld [bc], a                                    ; $659d: $02
    ld [bc], a                                    ; $659e: $02
    and $e5                                       ; $659f: $e6 $e5
    push hl                                       ; $65a1: $e5
    and $e8                                       ; $65a2: $e6 $e8
    pop af                                        ; $65a4: $f1
    ld a, [c]                                     ; $65a5: $f2
    add sp, -$14                                  ; $65a6: $e8 $ec
    di                                            ; $65a8: $f3
    db $f4                                        ; $65a9: $f4
    db $ec                                        ; $65aa: $ec
    ldh a, [$ef]                                  ; $65ab: $f0 $ef
    rst $28                                       ; $65ad: $ef
    ldh a, [rSC]                                  ; $65ae: $f0 $02
    ld [bc], a                                    ; $65b0: $02
    ld [bc], a                                    ; $65b1: $02
    ld [bc], a                                    ; $65b2: $02
    ld [bc], a                                    ; $65b3: $02
    nop                                           ; $65b4: $00
    nop                                           ; $65b5: $00
    ld [bc], a                                    ; $65b6: $02
    ld [bc], a                                    ; $65b7: $02
    nop                                           ; $65b8: $00
    nop                                           ; $65b9: $00
    ld [bc], a                                    ; $65ba: $02
    ld [bc], a                                    ; $65bb: $02
    ld [bc], a                                    ; $65bc: $02
    ld [bc], a                                    ; $65bd: $02
    ld [bc], a                                    ; $65be: $02
    push hl                                       ; $65bf: $e5
    push hl                                       ; $65c0: $e5
    push af                                       ; $65c1: $f5
    or $f7                                        ; $65c2: $f6 $f7
    ld hl, sp-$07                                 ; $65c4: $f8 $f9
    ld a, [$fcfb]                                 ; $65c6: $fa $fb $fc
    db $fd                                        ; $65c9: $fd
    cp $ef                                        ; $65ca: $fe $ef
    rst $28                                       ; $65cc: $ef
    rst $38                                       ; $65cd: $ff
    nop                                           ; $65ce: $00
    ld [bc], a                                    ; $65cf: $02
    ld [bc], a                                    ; $65d0: $02
    ld [bc], a                                    ; $65d1: $02
    ld [bc], a                                    ; $65d2: $02
    nop                                           ; $65d3: $00
    nop                                           ; $65d4: $00
    ld [bc], a                                    ; $65d5: $02
    ld [bc], a                                    ; $65d6: $02
    nop                                           ; $65d7: $00
    nop                                           ; $65d8: $00
    ld [bc], a                                    ; $65d9: $02
    ld [bc], a                                    ; $65da: $02
    ld [bc], a                                    ; $65db: $02
    ld [bc], a                                    ; $65dc: $02
    ld [bc], a                                    ; $65dd: $02
    ld [bc], a                                    ; $65de: $02
    ld bc, $0302                                  ; $65df: $01 $02 $03
    inc b                                         ; $65e2: $04
    dec b                                         ; $65e3: $05
    dec b                                         ; $65e4: $05
    ld b, $07                                     ; $65e5: $06 $07
    ld [$0908], sp                                ; $65e7: $08 $08 $09
    ld a, [bc]                                    ; $65ea: $0a
    dec bc                                        ; $65eb: $0b
    dec bc                                        ; $65ec: $0b
    inc c                                         ; $65ed: $0c
    dec c                                         ; $65ee: $0d
    inc bc                                        ; $65ef: $03
    inc bc                                        ; $65f0: $03
    ld [bc], a                                    ; $65f1: $02
    ld [bc], a                                    ; $65f2: $02
    inc bc                                        ; $65f3: $03
    inc bc                                        ; $65f4: $03
    ld [bc], a                                    ; $65f5: $02
    ld [bc], a                                    ; $65f6: $02
    inc bc                                        ; $65f7: $03
    inc bc                                        ; $65f8: $03
    ld [bc], a                                    ; $65f9: $02
    ld [bc], a                                    ; $65fa: $02
    ld bc, $0201                                  ; $65fb: $01 $01 $02
    ld [bc], a                                    ; $65fe: $02
    ld c, $0e                                     ; $65ff: $0e $0e
    ld c, $0e                                     ; $6601: $0e $0e
    rrca                                          ; $6603: $0f
    rrca                                          ; $6604: $0f
    rrca                                          ; $6605: $0f
    rrca                                          ; $6606: $0f
    db $10                                        ; $6607: $10
    db $10                                        ; $6608: $10
    db $10                                        ; $6609: $10
    db $10                                        ; $660a: $10
    ld de, $1111                                  ; $660b: $11 $11 $11
    ld de, $0202                                  ; $660e: $11 $02 $02
    ld [bc], a                                    ; $6611: $02
    ld [bc], a                                    ; $6612: $02
    ld [bc], a                                    ; $6613: $02
    ld [bc], a                                    ; $6614: $02
    ld [bc], a                                    ; $6615: $02
    ld [bc], a                                    ; $6616: $02
    inc bc                                        ; $6617: $03
    inc bc                                        ; $6618: $03
    inc bc                                        ; $6619: $03
    inc bc                                        ; $661a: $03
    inc bc                                        ; $661b: $03
    inc bc                                        ; $661c: $03
    inc bc                                        ; $661d: $03
    inc bc                                        ; $661e: $03
    ld c, $0e                                     ; $661f: $0e $0e
    ld c, $12                                     ; $6621: $0e $12
    rrca                                          ; $6623: $0f
    rrca                                          ; $6624: $0f
    rrca                                          ; $6625: $0f
    inc de                                        ; $6626: $13
    inc d                                         ; $6627: $14
    dec d                                         ; $6628: $15
    ld d, $17                                     ; $6629: $16 $17
    ld de, $1111                                  ; $662b: $11 $11 $11
    ld de, $0202                                  ; $662e: $11 $02 $02
    ld [bc], a                                    ; $6631: $02
    ld [bc], a                                    ; $6632: $02
    ld [bc], a                                    ; $6633: $02
    ld [bc], a                                    ; $6634: $02
    ld [bc], a                                    ; $6635: $02
    ld [bc], a                                    ; $6636: $02
    inc bc                                        ; $6637: $03
    inc bc                                        ; $6638: $03
    inc bc                                        ; $6639: $03
    inc bc                                        ; $663a: $03
    inc bc                                        ; $663b: $03
    inc bc                                        ; $663c: $03
    inc bc                                        ; $663d: $03
    inc bc                                        ; $663e: $03
    jr jr_086_6659                                ; $663f: $18 $18

    add hl, de                                    ; $6641: $19
    ld c, $1a                                     ; $6642: $0e $1a
    ld a, [de]                                    ; $6644: $1a
    dec de                                        ; $6645: $1b
    rrca                                          ; $6646: $0f
    inc e                                         ; $6647: $1c
    inc e                                         ; $6648: $1c
    dec e                                         ; $6649: $1d
    inc d                                         ; $664a: $14
    ld de, $1111                                  ; $664b: $11 $11 $11
    ld de, $0101                                  ; $664e: $11 $01 $01
    ld [bc], a                                    ; $6651: $02
    ld [bc], a                                    ; $6652: $02
    inc bc                                        ; $6653: $03
    inc bc                                        ; $6654: $03
    ld [bc], a                                    ; $6655: $02
    ld [bc], a                                    ; $6656: $02
    inc bc                                        ; $6657: $03
    inc bc                                        ; $6658: $03

jr_086_6659:
    inc bc                                        ; $6659: $03
    inc bc                                        ; $665a: $03
    inc bc                                        ; $665b: $03
    inc bc                                        ; $665c: $03
    inc bc                                        ; $665d: $03
    inc bc                                        ; $665e: $03
    ld bc, $1e02                                  ; $665f: $01 $02 $1e
    rra                                           ; $6662: $1f
    ld [c], a                                     ; $6663: $e2
    db $e3                                        ; $6664: $e3
    jr nz, jr_086_6688                            ; $6665: $20 $21

    ld [hl+], a                                   ; $6667: $22
    inc hl                                        ; $6668: $23
    inc h                                         ; $6669: $24
    dec h                                         ; $666a: $25
    ld h, $27                                     ; $666b: $26 $27
    jr z, jr_086_6698                             ; $666d: $28 $29

    ld b, e                                       ; $666f: $43
    ld b, e                                       ; $6670: $43
    ld b, e                                       ; $6671: $43
    inc bc                                        ; $6672: $03
    ld b, e                                       ; $6673: $43
    ld b, e                                       ; $6674: $43
    ld b, e                                       ; $6675: $43
    inc bc                                        ; $6676: $03
    rlca                                          ; $6677: $07
    dec b                                         ; $6678: $05
    rlca                                          ; $6679: $07
    dec b                                         ; $667a: $05
    dec b                                         ; $667b: $05
    ld bc, $0505                                  ; $667c: $01 $05 $05
    ld bc, $1e02                                  ; $667f: $01 $02 $1e
    rra                                           ; $6682: $1f
    ld [c], a                                     ; $6683: $e2
    db $e3                                        ; $6684: $e3
    jr nz, jr_086_66a8                            ; $6685: $20 $21

    ld [hl+], a                                   ; $6687: $22

jr_086_6688:
    inc hl                                        ; $6688: $23
    inc h                                         ; $6689: $24
    ld a, [hl+]                                   ; $668a: $2a
    ld h, $27                                     ; $668b: $26 $27
    jr z, jr_086_66b8                             ; $668d: $28 $29

    ld b, e                                       ; $668f: $43
    ld b, e                                       ; $6690: $43
    ld b, e                                       ; $6691: $43
    inc bc                                        ; $6692: $03
    ld b, e                                       ; $6693: $43
    ld b, e                                       ; $6694: $43
    ld b, e                                       ; $6695: $43
    inc bc                                        ; $6696: $03
    dec b                                         ; $6697: $05

jr_086_6698:
    ld bc, $0705                                  ; $6698: $01 $05 $07
    rlca                                          ; $669b: $07
    dec b                                         ; $669c: $05
    dec b                                         ; $669d: $05
    ld bc, $0201                                  ; $669e: $01 $01 $02
    ld e, $1f                                     ; $66a1: $1e $1f
    ld [c], a                                     ; $66a3: $e2
    db $e3                                        ; $66a4: $e3
    jr nz, jr_086_66c8                            ; $66a5: $20 $21

    dec hl                                        ; $66a7: $2b

jr_086_66a8:
    inc l                                         ; $66a8: $2c
    dec l                                         ; $66a9: $2d
    ld l, $26                                     ; $66aa: $2e $26
    daa                                           ; $66ac: $27
    jr z, @+$2b                                   ; $66ad: $28 $29

    ld b, e                                       ; $66af: $43
    ld b, e                                       ; $66b0: $43
    ld b, e                                       ; $66b1: $43
    inc bc                                        ; $66b2: $03
    ld b, e                                       ; $66b3: $43
    ld b, e                                       ; $66b4: $43
    ld b, e                                       ; $66b5: $43
    inc bc                                        ; $66b6: $03
    dec b                                         ; $66b7: $05

jr_086_66b8:
    dec b                                         ; $66b8: $05
    dec b                                         ; $66b9: $05
    dec b                                         ; $66ba: $05
    dec b                                         ; $66bb: $05
    rlca                                          ; $66bc: $07
    ld bc, $0101                                  ; $66bd: $01 $01 $01
    ld [bc], a                                    ; $66c0: $02
    ld e, $1f                                     ; $66c1: $1e $1f
    ld [c], a                                     ; $66c3: $e2
    db $e3                                        ; $66c4: $e3
    jr nz, @+$23                                  ; $66c5: $20 $21

    cpl                                           ; $66c7: $2f

jr_086_66c8:
    jr nc, jr_086_66fb                            ; $66c8: $30 $31

    ld [hl-], a                                   ; $66ca: $32
    ld h, $27                                     ; $66cb: $26 $27
    jr z, jr_086_66f8                             ; $66cd: $28 $29

    ld b, e                                       ; $66cf: $43
    ld b, e                                       ; $66d0: $43
    ld b, e                                       ; $66d1: $43
    inc bc                                        ; $66d2: $03
    ld b, e                                       ; $66d3: $43
    ld b, e                                       ; $66d4: $43
    ld b, e                                       ; $66d5: $43
    inc bc                                        ; $66d6: $03
    ld bc, $0101                                  ; $66d7: $01 $01 $01
    dec b                                         ; $66da: $05

jr_086_66db:
    dec b                                         ; $66db: $05
    rlca                                          ; $66dc: $07
    dec b                                         ; $66dd: $05
    dec b                                         ; $66de: $05
    push hl                                       ; $66df: $e5
    push hl                                       ; $66e0: $e5
    and $e5                                       ; $66e1: $e6 $e5
    inc sp                                        ; $66e3: $33
    inc [hl]                                      ; $66e4: $34
    add sp, $35                                   ; $66e5: $e8 $35
    ld [hl], $37                                  ; $66e7: $36 $37
    db $ec                                        ; $66e9: $ec
    jr c, jr_086_66db                             ; $66ea: $38 $ef

    rst $28                                       ; $66ec: $ef
    ldh a, [$ef]                                  ; $66ed: $f0 $ef
    ld [bc], a                                    ; $66ef: $02
    ld [bc], a                                    ; $66f0: $02
    ld [bc], a                                    ; $66f1: $02
    ld [bc], a                                    ; $66f2: $02
    nop                                           ; $66f3: $00
    nop                                           ; $66f4: $00
    ld [bc], a                                    ; $66f5: $02
    nop                                           ; $66f6: $00
    nop                                           ; $66f7: $00

jr_086_66f8:
    nop                                           ; $66f8: $00
    ld [bc], a                                    ; $66f9: $02
    nop                                           ; $66fa: $00

jr_086_66fb:
    ld [bc], a                                    ; $66fb: $02
    ld [bc], a                                    ; $66fc: $02
    ld [bc], a                                    ; $66fd: $02
    ld [bc], a                                    ; $66fe: $02
    ld c, $0e                                     ; $66ff: $0e $0e
    ld c, $0e                                     ; $6701: $0e $0e
    rrca                                          ; $6703: $0f
    rrca                                          ; $6704: $0f
    rrca                                          ; $6705: $0f
    rrca                                          ; $6706: $0f
    dec d                                         ; $6707: $15
    ld d, $39                                     ; $6708: $16 $39
    db $10                                        ; $670a: $10
    ld de, $1111                                  ; $670b: $11 $11 $11
    ld de, $0202                                  ; $670e: $11 $02 $02
    ld [bc], a                                    ; $6711: $02
    ld [bc], a                                    ; $6712: $02
    ld [bc], a                                    ; $6713: $02
    ld [bc], a                                    ; $6714: $02
    ld [bc], a                                    ; $6715: $02
    ld [bc], a                                    ; $6716: $02
    inc bc                                        ; $6717: $03
    inc bc                                        ; $6718: $03
    inc bc                                        ; $6719: $03
    inc bc                                        ; $671a: $03
    inc bc                                        ; $671b: $03
    inc bc                                        ; $671c: $03
    inc bc                                        ; $671d: $03
    inc bc                                        ; $671e: $03
    ld c, $0e                                     ; $671f: $0e $0e
    ld c, $12                                     ; $6721: $0e $12
    rrca                                          ; $6723: $0f
    rrca                                          ; $6724: $0f
    rrca                                          ; $6725: $0f
    inc de                                        ; $6726: $13
    inc d                                         ; $6727: $14
    dec d                                         ; $6728: $15
    ld d, $17                                     ; $6729: $16 $17
    ld de, $1111                                  ; $672b: $11 $11 $11
    ld a, [hl-]                                   ; $672e: $3a
    ld [bc], a                                    ; $672f: $02
    ld [bc], a                                    ; $6730: $02
    ld [bc], a                                    ; $6731: $02
    ld [bc], a                                    ; $6732: $02
    ld [bc], a                                    ; $6733: $02
    ld [bc], a                                    ; $6734: $02
    ld [bc], a                                    ; $6735: $02
    ld [bc], a                                    ; $6736: $02
    inc bc                                        ; $6737: $03
    inc bc                                        ; $6738: $03
    inc bc                                        ; $6739: $03
    inc bc                                        ; $673a: $03
    inc bc                                        ; $673b: $03
    inc bc                                        ; $673c: $03
    inc bc                                        ; $673d: $03
    inc bc                                        ; $673e: $03
    ld bc, $1e02                                  ; $673f: $01 $02 $1e
    rra                                           ; $6742: $1f
    ld [c], a                                     ; $6743: $e2
    db $e3                                        ; $6744: $e3
    jr nz, jr_086_6768                            ; $6745: $20 $21

    ld [hl+], a                                   ; $6747: $22
    inc hl                                        ; $6748: $23
    inc h                                         ; $6749: $24
    ld a, [hl+]                                   ; $674a: $2a
    ld h, $27                                     ; $674b: $26 $27
    jr z, jr_086_6778                             ; $674d: $28 $29

    ld b, e                                       ; $674f: $43
    ld b, e                                       ; $6750: $43
    ld b, e                                       ; $6751: $43
    inc bc                                        ; $6752: $03
    ld b, e                                       ; $6753: $43
    ld b, e                                       ; $6754: $43
    ld b, e                                       ; $6755: $43
    inc bc                                        ; $6756: $03
    rlca                                          ; $6757: $07
    dec b                                         ; $6758: $05
    rlca                                          ; $6759: $07
    dec b                                         ; $675a: $05
    ld bc, $0101                                  ; $675b: $01 $01 $01
    dec b                                         ; $675e: $05
    ld bc, $1e02                                  ; $675f: $01 $02 $1e
    rra                                           ; $6762: $1f
    ld [c], a                                     ; $6763: $e2
    db $e3                                        ; $6764: $e3
    jr nz, jr_086_6788                            ; $6765: $20 $21

    dec hl                                        ; $6767: $2b

jr_086_6768:
    inc l                                         ; $6768: $2c
    dec l                                         ; $6769: $2d
    ld l, $26                                     ; $676a: $2e $26
    daa                                           ; $676c: $27
    jr z, jr_086_6798                             ; $676d: $28 $29

    ld b, e                                       ; $676f: $43
    ld b, e                                       ; $6770: $43
    ld b, e                                       ; $6771: $43
    inc bc                                        ; $6772: $03
    ld b, e                                       ; $6773: $43
    ld b, e                                       ; $6774: $43
    ld b, e                                       ; $6775: $43
    inc bc                                        ; $6776: $03
    dec b                                         ; $6777: $05

jr_086_6778:
    dec b                                         ; $6778: $05
    dec b                                         ; $6779: $05
    rlca                                          ; $677a: $07
    ld bc, $0101                                  ; $677b: $01 $01 $01
    ld bc, $0201                                  ; $677e: $01 $01 $02
    ld e, $1f                                     ; $6781: $1e $1f
    ld [c], a                                     ; $6783: $e2
    db $e3                                        ; $6784: $e3
    jr nz, jr_086_67a8                            ; $6785: $20 $21

    cpl                                           ; $6787: $2f

jr_086_6788:
    jr nc, jr_086_67bb                            ; $6788: $30 $31

    ld [hl-], a                                   ; $678a: $32
    ld h, $27                                     ; $678b: $26 $27
    jr z, @+$2b                                   ; $678d: $28 $29

    ld b, e                                       ; $678f: $43
    ld b, e                                       ; $6790: $43
    ld b, e                                       ; $6791: $43
    inc bc                                        ; $6792: $03
    ld b, e                                       ; $6793: $43
    ld b, e                                       ; $6794: $43
    ld b, e                                       ; $6795: $43
    inc bc                                        ; $6796: $03
    rlca                                          ; $6797: $07

jr_086_6798:
    dec b                                         ; $6798: $05
    ld bc, $0501                                  ; $6799: $01 $01 $05
    dec b                                         ; $679c: $05
    rlca                                          ; $679d: $07
    dec b                                         ; $679e: $05
    ld bc, $1e02                                  ; $679f: $01 $02 $1e
    dec sp                                        ; $67a2: $3b
    ld [c], a                                     ; $67a3: $e2
    db $e3                                        ; $67a4: $e3
    jr nz, jr_086_67e3                            ; $67a5: $20 $3c

    dec a                                         ; $67a7: $3d

jr_086_67a8:
    inc hl                                        ; $67a8: $23
    inc h                                         ; $67a9: $24
    ld a, $26                                     ; $67aa: $3e $26
    daa                                           ; $67ac: $27
    jr z, jr_086_67d8                             ; $67ad: $28 $29

    ld b, e                                       ; $67af: $43
    ld b, e                                       ; $67b0: $43
    ld b, e                                       ; $67b1: $43
    inc bc                                        ; $67b2: $03
    ld b, e                                       ; $67b3: $43
    ld b, e                                       ; $67b4: $43
    ld b, e                                       ; $67b5: $43
    inc bc                                        ; $67b6: $03
    ld bc, $0705                                  ; $67b7: $01 $05 $07
    dec b                                         ; $67ba: $05

jr_086_67bb:
    dec b                                         ; $67bb: $05
    ld bc, $0501                                  ; $67bc: $01 $01 $05
    reti                                          ; $67bf: $d9


    jp c, $d1db                                   ; $67c0: $da $db $d1

    call c, $dedd                                 ; $67c3: $dc $dd $de
    jp nc, Jump_086_403f                          ; $67c6: $d2 $3f $40

    pop hl                                        ; $67c9: $e1
    db $d3                                        ; $67ca: $d3
    ld [c], a                                     ; $67cb: $e2
    db $e3                                        ; $67cc: $e3
    db $e4                                        ; $67cd: $e4
    call nc, Call_000_0505                        ; $67ce: $d4 $05 $05
    ld bc, $0501                                  ; $67d1: $01 $01 $05
    dec b                                         ; $67d4: $05
    ld bc, $0501                                  ; $67d5: $01 $01 $05

jr_086_67d8:
    dec b                                         ; $67d8: $05
    ld bc, $0301                                  ; $67d9: $01 $01 $03
    inc bc                                        ; $67dc: $03
    ld bc, $0101                                  ; $67dd: $01 $01 $01
    ld [bc], a                                    ; $67e0: $02
    ld e, $03                                     ; $67e1: $1e $03

jr_086_67e3:
    dec b                                         ; $67e3: $05
    dec b                                         ; $67e4: $05
    dec b                                         ; $67e5: $05
    ld b, $08                                     ; $67e6: $06 $08
    ld [$0908], sp                                ; $67e8: $08 $08 $09
    ld b, c                                       ; $67eb: $41
    dec bc                                        ; $67ec: $0b
    ld b, d                                       ; $67ed: $42
    ld b, e                                       ; $67ee: $43
    inc bc                                        ; $67ef: $03
    inc bc                                        ; $67f0: $03
    inc bc                                        ; $67f1: $03
    ld [bc], a                                    ; $67f2: $02
    inc bc                                        ; $67f3: $03
    inc bc                                        ; $67f4: $03
    inc bc                                        ; $67f5: $03
    ld [bc], a                                    ; $67f6: $02
    inc bc                                        ; $67f7: $03
    inc bc                                        ; $67f8: $03
    inc bc                                        ; $67f9: $03
    ld [bc], a                                    ; $67fa: $02
    ld bc, $0101                                  ; $67fb: $01 $01 $01
    ld [bc], a                                    ; $67fe: $02
    inc b                                         ; $67ff: $04
    push hl                                       ; $6800: $e5
    push af                                       ; $6801: $f5
    ld b, h                                       ; $6802: $44
    rlca                                          ; $6803: $07
    ld b, l                                       ; $6804: $45
    ld sp, hl                                     ; $6805: $f9
    ld b, [hl]                                    ; $6806: $46
    ld a, [bc]                                    ; $6807: $0a
    ld b, a                                       ; $6808: $47
    db $fd                                        ; $6809: $fd
    ld c, b                                       ; $680a: $48
    ld c, c                                       ; $680b: $49
    ld c, d                                       ; $680c: $4a
    ld c, e                                       ; $680d: $4b
    ld c, h                                       ; $680e: $4c
    ld [bc], a                                    ; $680f: $02
    ld [bc], a                                    ; $6810: $02
    ld [bc], a                                    ; $6811: $02
    ld [bc], a                                    ; $6812: $02
    ld [bc], a                                    ; $6813: $02
    ld bc, $0202                                  ; $6814: $01 $02 $02
    ld [bc], a                                    ; $6817: $02
    ld bc, $0202                                  ; $6818: $01 $02 $02
    ld [bc], a                                    ; $681b: $02
    ld [bc], a                                    ; $681c: $02
    ld [bc], a                                    ; $681d: $02
    ld [bc], a                                    ; $681e: $02
    ld c, l                                       ; $681f: $4d
    jr jr_086_6870                                ; $6820: $18 $4e

    ld c, a                                       ; $6822: $4f
    ld d, b                                       ; $6823: $50
    ld d, c                                       ; $6824: $51
    ld d, d                                       ; $6825: $52
    ld d, e                                       ; $6826: $53
    ld d, b                                       ; $6827: $50
    ld d, c                                       ; $6828: $51
    ld d, h                                       ; $6829: $54
    ld d, l                                       ; $682a: $55
    ld d, b                                       ; $682b: $50
    ld d, c                                       ; $682c: $51
    ld d, [hl]                                    ; $682d: $56
    ld de, $0101                                  ; $682e: $11 $01 $01
    ld bc, $0502                                  ; $6831: $01 $02 $05
    dec b                                         ; $6834: $05
    dec b                                         ; $6835: $05
    ld [bc], a                                    ; $6836: $02
    dec b                                         ; $6837: $05
    dec b                                         ; $6838: $05
    dec b                                         ; $6839: $05
    inc bc                                        ; $683a: $03
    dec b                                         ; $683b: $05
    dec b                                         ; $683c: $05
    dec b                                         ; $683d: $05
    inc bc                                        ; $683e: $03
    ld d, a                                       ; $683f: $57
    ld e, b                                       ; $6840: $58
    ld e, c                                       ; $6841: $59
    ld e, d                                       ; $6842: $5a
    ld e, e                                       ; $6843: $5b
    ld e, h                                       ; $6844: $5c
    ld e, l                                       ; $6845: $5d
    ld e, [hl]                                    ; $6846: $5e
    ld e, a                                       ; $6847: $5f
    ld h, b                                       ; $6848: $60
    ld h, c                                       ; $6849: $61
    ld h, d                                       ; $684a: $62
    ld de, $1111                                  ; $684b: $11 $11 $11
    ld de, $0404                                  ; $684e: $11 $04 $04
    inc b                                         ; $6851: $04
    ld [bc], a                                    ; $6852: $02
    ld [bc], a                                    ; $6853: $02
    ld [bc], a                                    ; $6854: $02
    ld [bc], a                                    ; $6855: $02
    ld [bc], a                                    ; $6856: $02
    inc bc                                        ; $6857: $03
    inc bc                                        ; $6858: $03
    inc bc                                        ; $6859: $03
    inc bc                                        ; $685a: $03
    inc bc                                        ; $685b: $03
    inc bc                                        ; $685c: $03
    inc bc                                        ; $685d: $03
    inc bc                                        ; $685e: $03
    ld d, b                                       ; $685f: $50
    ld d, c                                       ; $6860: $51
    ld d, [hl]                                    ; $6861: $56
    rra                                           ; $6862: $1f
    ld h, e                                       ; $6863: $63
    ld h, h                                       ; $6864: $64
    ld h, l                                       ; $6865: $65
    ld hl, $6766                                  ; $6866: $21 $66 $67
    ld l, b                                       ; $6869: $68
    ld l, c                                       ; $686a: $69
    ld h, $27                                     ; $686b: $26 $27
    jr z, jr_086_6898                             ; $686d: $28 $29

    dec b                                         ; $686f: $05

jr_086_6870:
    dec b                                         ; $6870: $05
    dec b                                         ; $6871: $05
    inc bc                                        ; $6872: $03
    dec b                                         ; $6873: $05
    dec b                                         ; $6874: $05
    dec b                                         ; $6875: $05
    inc bc                                        ; $6876: $03
    dec b                                         ; $6877: $05
    dec b                                         ; $6878: $05
    dec b                                         ; $6879: $05
    dec b                                         ; $687a: $05
    rlca                                          ; $687b: $07
    dec b                                         ; $687c: $05
    dec b                                         ; $687d: $05
    ld bc, $0201                                  ; $687e: $01 $01 $02
    ld e, $1f                                     ; $6881: $1e $1f
    ld [c], a                                     ; $6883: $e2
    db $e3                                        ; $6884: $e3
    jr nz, jr_086_68a8                            ; $6885: $20 $21

    cpl                                           ; $6887: $2f
    jr nc, jr_086_68bb                            ; $6888: $30 $31

    ld [hl-], a                                   ; $688a: $32
    ld h, $27                                     ; $688b: $26 $27
    jr z, jr_086_68b8                             ; $688d: $28 $29

    ld b, e                                       ; $688f: $43
    ld b, e                                       ; $6890: $43
    ld b, e                                       ; $6891: $43
    inc bc                                        ; $6892: $03
    ld b, e                                       ; $6893: $43
    ld b, e                                       ; $6894: $43
    ld b, e                                       ; $6895: $43
    inc bc                                        ; $6896: $03
    rlca                                          ; $6897: $07

jr_086_6898:
    dec b                                         ; $6898: $05
    ld bc, $0101                                  ; $6899: $01 $01 $01
    dec b                                         ; $689c: $05
    rlca                                          ; $689d: $07
    dec b                                         ; $689e: $05
    ld l, d                                       ; $689f: $6a
    ld l, e                                       ; $68a0: $6b
    ld l, h                                       ; $68a1: $6c
    ld l, l                                       ; $68a2: $6d
    ld l, [hl]                                    ; $68a3: $6e
    ld l, a                                       ; $68a4: $6f
    ld [hl], b                                    ; $68a5: $70
    ld [hl], c                                    ; $68a6: $71
    ld [hl], d                                    ; $68a7: $72

jr_086_68a8:
    ld [hl], e                                    ; $68a8: $73
    ld [hl], h                                    ; $68a9: $74
    ld [hl], l                                    ; $68aa: $75
    halt                                          ; $68ab: $76
    ld [hl], a                                    ; $68ac: $77
    ld a, b                                       ; $68ad: $78
    ld a, c                                       ; $68ae: $79
    dec b                                         ; $68af: $05
    ld bc, $0505                                  ; $68b0: $01 $05 $05
    dec b                                         ; $68b3: $05
    ld bc, $0105                                  ; $68b4: $01 $05 $01
    rlca                                          ; $68b7: $07

jr_086_68b8:
    dec b                                         ; $68b8: $05
    dec b                                         ; $68b9: $05
    rlca                                          ; $68ba: $07

jr_086_68bb:
    dec b                                         ; $68bb: $05
    rlca                                          ; $68bc: $07
    dec b                                         ; $68bd: $05
    dec b                                         ; $68be: $05
    ld l, d                                       ; $68bf: $6a
    ld l, e                                       ; $68c0: $6b
    ld l, h                                       ; $68c1: $6c
    ld l, l                                       ; $68c2: $6d
    ld l, [hl]                                    ; $68c3: $6e
    ld l, a                                       ; $68c4: $6f
    ld [hl], b                                    ; $68c5: $70
    ld [hl], c                                    ; $68c6: $71
    ld [hl], d                                    ; $68c7: $72
    ld [hl], e                                    ; $68c8: $73
    ld [hl], h                                    ; $68c9: $74
    ld [hl], l                                    ; $68ca: $75
    halt                                          ; $68cb: $76
    ld [hl], a                                    ; $68cc: $77
    ld a, b                                       ; $68cd: $78
    ld a, c                                       ; $68ce: $79
    dec b                                         ; $68cf: $05
    dec b                                         ; $68d0: $05

Jump_086_68d1:
    dec b                                         ; $68d1: $05
    dec b                                         ; $68d2: $05
    dec b                                         ; $68d3: $05
    ld bc, $0705                                  ; $68d4: $01 $05 $07
    dec b                                         ; $68d7: $05
    ld bc, $0101                                  ; $68d8: $01 $01 $01
    dec b                                         ; $68db: $05
    dec b                                         ; $68dc: $05
    dec b                                         ; $68dd: $05
    dec b                                         ; $68de: $05
    ld l, d                                       ; $68df: $6a
    ld l, e                                       ; $68e0: $6b
    ld l, h                                       ; $68e1: $6c
    ld l, l                                       ; $68e2: $6d
    ld l, [hl]                                    ; $68e3: $6e
    ld l, a                                       ; $68e4: $6f
    ld [hl], b                                    ; $68e5: $70
    ld [hl], c                                    ; $68e6: $71
    ld [hl], d                                    ; $68e7: $72
    ld [hl], e                                    ; $68e8: $73
    ld [hl], h                                    ; $68e9: $74
    ld [hl], l                                    ; $68ea: $75
    halt                                          ; $68eb: $76
    ld [hl], a                                    ; $68ec: $77
    ld a, b                                       ; $68ed: $78
    ld a, c                                       ; $68ee: $79
    rlca                                          ; $68ef: $07
    dec b                                         ; $68f0: $05
    ld bc, $0505                                  ; $68f1: $01 $05 $05
    dec b                                         ; $68f4: $05
    ld bc, $0505                                  ; $68f5: $01 $05 $05
    dec b                                         ; $68f8: $05
    ld bc, $0101                                  ; $68f9: $01 $01 $01
    ld bc, $0505                                  ; $68fc: $01 $05 $05
    ld l, d                                       ; $68ff: $6a
    ld l, e                                       ; $6900: $6b
    ld l, h                                       ; $6901: $6c
    ld l, l                                       ; $6902: $6d
    ld l, [hl]                                    ; $6903: $6e
    ld l, a                                       ; $6904: $6f
    ld [hl], b                                    ; $6905: $70
    ld [hl], c                                    ; $6906: $71
    ld [hl], d                                    ; $6907: $72
    ld [hl], e                                    ; $6908: $73
    ld [hl], h                                    ; $6909: $74
    ld [hl], l                                    ; $690a: $75
    halt                                          ; $690b: $76
    ld [hl], a                                    ; $690c: $77
    ld a, b                                       ; $690d: $78
    ld a, c                                       ; $690e: $79
    dec b                                         ; $690f: $05
    dec b                                         ; $6910: $05
    dec b                                         ; $6911: $05
    rlca                                          ; $6912: $07
    dec b                                         ; $6913: $05
    rlca                                          ; $6914: $07
    dec b                                         ; $6915: $05
    dec b                                         ; $6916: $05
    dec b                                         ; $6917: $05
    dec b                                         ; $6918: $05
    ld bc, $0501                                  ; $6919: $01 $01 $05
    ld bc, $0505                                  ; $691c: $01 $05 $05
    ld a, d                                       ; $691f: $7a
    ld a, e                                       ; $6920: $7b
    ld a, h                                       ; $6921: $7c
    ld a, l                                       ; $6922: $7d
    ld a, [hl]                                    ; $6923: $7e
    ld a, a                                       ; $6924: $7f
    add b                                         ; $6925: $80
    add c                                         ; $6926: $81
    add d                                         ; $6927: $82
    add e                                         ; $6928: $83
    add h                                         ; $6929: $84
    add l                                         ; $692a: $85
    add [hl]                                      ; $692b: $86
    add a                                         ; $692c: $87
    adc b                                         ; $692d: $88
    adc c                                         ; $692e: $89
    rlca                                          ; $692f: $07
    ld bc, $0501                                  ; $6930: $01 $01 $05
    dec b                                         ; $6933: $05
    ld bc, $0d09                                  ; $6934: $01 $09 $0d
    add hl, bc                                    ; $6937: $09
    dec c                                         ; $6938: $0d
    dec c                                         ; $6939: $0d
    rrca                                          ; $693a: $0f
    dec c                                         ; $693b: $0d
    dec c                                         ; $693c: $0d
    dec c                                         ; $693d: $0d
    dec c                                         ; $693e: $0d
    ld a, d                                       ; $693f: $7a
    ld a, e                                       ; $6940: $7b
    ld a, h                                       ; $6941: $7c
    ld a, l                                       ; $6942: $7d
    ld a, [hl]                                    ; $6943: $7e
    ld a, a                                       ; $6944: $7f
    add b                                         ; $6945: $80
    add c                                         ; $6946: $81
    add d                                         ; $6947: $82
    add e                                         ; $6948: $83
    add h                                         ; $6949: $84
    add l                                         ; $694a: $85
    add [hl]                                      ; $694b: $86
    add a                                         ; $694c: $87
    adc b                                         ; $694d: $88
    adc c                                         ; $694e: $89
    dec b                                         ; $694f: $05
    rlca                                          ; $6950: $07
    rlca                                          ; $6951: $07
    dec b                                         ; $6952: $05
    rlca                                          ; $6953: $07
    dec b                                         ; $6954: $05
    dec c                                         ; $6955: $0d
    dec c                                         ; $6956: $0d
    dec c                                         ; $6957: $0d
    add hl, bc                                    ; $6958: $09
    add hl, bc                                    ; $6959: $09
    dec c                                         ; $695a: $0d
    dec c                                         ; $695b: $0d
    dec c                                         ; $695c: $0d
    dec c                                         ; $695d: $0d
    add hl, bc                                    ; $695e: $09
    ld a, d                                       ; $695f: $7a
    ld a, e                                       ; $6960: $7b
    ld a, h                                       ; $6961: $7c
    ld a, l                                       ; $6962: $7d
    ld a, [hl]                                    ; $6963: $7e
    ld a, a                                       ; $6964: $7f
    add b                                         ; $6965: $80
    add c                                         ; $6966: $81
    add d                                         ; $6967: $82
    add e                                         ; $6968: $83
    add h                                         ; $6969: $84
    add l                                         ; $696a: $85
    add [hl]                                      ; $696b: $86
    add a                                         ; $696c: $87
    adc b                                         ; $696d: $88
    adc c                                         ; $696e: $89
    rlca                                          ; $696f: $07
    dec b                                         ; $6970: $05
    rlca                                          ; $6971: $07
    dec b                                         ; $6972: $05
    dec b                                         ; $6973: $05
    rlca                                          ; $6974: $07
    dec c                                         ; $6975: $0d
    rrca                                          ; $6976: $0f
    add hl, bc                                    ; $6977: $09
    dec c                                         ; $6978: $0d
    dec c                                         ; $6979: $0d
    dec c                                         ; $697a: $0d
    dec c                                         ; $697b: $0d
    rrca                                          ; $697c: $0f
    dec c                                         ; $697d: $0d
    add hl, bc                                    ; $697e: $09
    ld a, d                                       ; $697f: $7a
    ld a, e                                       ; $6980: $7b
    ld a, h                                       ; $6981: $7c
    ld a, l                                       ; $6982: $7d
    ld a, [hl]                                    ; $6983: $7e
    ld a, a                                       ; $6984: $7f
    add b                                         ; $6985: $80
    add c                                         ; $6986: $81
    add d                                         ; $6987: $82
    add e                                         ; $6988: $83
    add h                                         ; $6989: $84
    add l                                         ; $698a: $85
    add [hl]                                      ; $698b: $86
    add a                                         ; $698c: $87
    adc b                                         ; $698d: $88
    adc c                                         ; $698e: $89
    ld bc, $0505                                  ; $698f: $01 $05 $05
    dec b                                         ; $6992: $05
    dec b                                         ; $6993: $05
    dec b                                         ; $6994: $05
    add hl, bc                                    ; $6995: $09
    rrca                                          ; $6996: $0f
    rrca                                          ; $6997: $0f
    rrca                                          ; $6998: $0f
    dec c                                         ; $6999: $0d
    rrca                                          ; $699a: $0f
    dec c                                         ; $699b: $0d
    dec c                                         ; $699c: $0d
    add hl, bc                                    ; $699d: $09
    dec c                                         ; $699e: $0d
    call c, $8add                                 ; $699f: $dc $dd $8a
    call c, $e0df                                 ; $69a2: $dc $df $e0
    adc e                                         ; $69a5: $8b
    rst $18                                       ; $69a6: $df
    ld [c], a                                     ; $69a7: $e2
    db $e3                                        ; $69a8: $e3
    jr nz, jr_086_69cc                            ; $69a9: $20 $21

    adc h                                         ; $69ab: $8c
    adc l                                         ; $69ac: $8d
    adc [hl]                                      ; $69ad: $8e
    adc a                                         ; $69ae: $8f
    rlca                                          ; $69af: $07
    rlca                                          ; $69b0: $07
    dec c                                         ; $69b1: $0d
    ld bc, $0505                                  ; $69b2: $01 $05 $05
    dec c                                         ; $69b5: $0d
    dec b                                         ; $69b6: $05
    inc bc                                        ; $69b7: $03
    inc bc                                        ; $69b8: $03
    inc bc                                        ; $69b9: $03
    ld b, e                                       ; $69ba: $43
    dec bc                                        ; $69bb: $0b
    dec bc                                        ; $69bc: $0b
    dec bc                                        ; $69bd: $0b
    dec bc                                        ; $69be: $0b
    db $dd                                        ; $69bf: $dd
    adc d                                         ; $69c0: $8a
    call c, $e0dd                                 ; $69c1: $dc $dd $e0
    sub b                                         ; $69c4: $90
    sub c                                         ; $69c5: $91
    sub c                                         ; $69c6: $91
    sub d                                         ; $69c7: $92
    sub e                                         ; $69c8: $93
    sub h                                         ; $69c9: $94
    sub h                                         ; $69ca: $94
    sub l                                         ; $69cb: $95

jr_086_69cc:
    sub [hl]                                      ; $69cc: $96
    sub a                                         ; $69cd: $97
    sub a                                         ; $69ce: $97
    dec b                                         ; $69cf: $05
    dec c                                         ; $69d0: $0d
    dec b                                         ; $69d1: $05
    dec b                                         ; $69d2: $05
    dec b                                         ; $69d3: $05
    add hl, bc                                    ; $69d4: $09
    add hl, bc                                    ; $69d5: $09
    add hl, bc                                    ; $69d6: $09
    dec bc                                        ; $69d7: $0b
    add hl, bc                                    ; $69d8: $09
    add hl, bc                                    ; $69d9: $09
    add hl, bc                                    ; $69da: $09
    dec bc                                        ; $69db: $0b
    add hl, bc                                    ; $69dc: $09
    add hl, bc                                    ; $69dd: $09
    add hl, bc                                    ; $69de: $09
    adc d                                         ; $69df: $8a
    call c, $8add                                 ; $69e0: $dc $dd $8a
    sub c                                         ; $69e3: $91
    sub c                                         ; $69e4: $91
    sbc b                                         ; $69e5: $98
    adc e                                         ; $69e6: $8b
    sub h                                         ; $69e7: $94
    sub h                                         ; $69e8: $94
    sub h                                         ; $69e9: $94
    ld hl, $9797                                  ; $69ea: $21 $97 $97
    sbc c                                         ; $69ed: $99
    adc a                                         ; $69ee: $8f
    rrca                                          ; $69ef: $0f
    dec b                                         ; $69f0: $05
    rlca                                          ; $69f1: $07
    dec c                                         ; $69f2: $0d
    add hl, bc                                    ; $69f3: $09
    add hl, bc                                    ; $69f4: $09
    add hl, bc                                    ; $69f5: $09
    dec c                                         ; $69f6: $0d
    add hl, bc                                    ; $69f7: $09
    add hl, bc                                    ; $69f8: $09
    add hl, bc                                    ; $69f9: $09
    ld b, e                                       ; $69fa: $43
    add hl, bc                                    ; $69fb: $09
    add hl, bc                                    ; $69fc: $09
    add hl, bc                                    ; $69fd: $09
    dec bc                                        ; $69fe: $0b
    call c, $8add                                 ; $69ff: $dc $dd $8a
    call c, $e0df                                 ; $6a02: $dc $df $e0
    adc e                                         ; $6a05: $8b
    rst $18                                       ; $6a06: $df
    ld [c], a                                     ; $6a07: $e2
    db $e3                                        ; $6a08: $e3
    jr nz, jr_086_6a2c                            ; $6a09: $20 $21

    adc h                                         ; $6a0b: $8c
    adc l                                         ; $6a0c: $8d
    adc [hl]                                      ; $6a0d: $8e
    adc a                                         ; $6a0e: $8f
    dec b                                         ; $6a0f: $05
    ld bc, $0509                                  ; $6a10: $01 $09 $05
    dec b                                         ; $6a13: $05
    dec b                                         ; $6a14: $05
    dec c                                         ; $6a15: $0d
    dec b                                         ; $6a16: $05
    inc bc                                        ; $6a17: $03
    inc bc                                        ; $6a18: $03
    inc bc                                        ; $6a19: $03
    ld b, e                                       ; $6a1a: $43
    dec bc                                        ; $6a1b: $0b
    dec bc                                        ; $6a1c: $0b
    dec bc                                        ; $6a1d: $0b
    dec bc                                        ; $6a1e: $0b
    sbc d                                         ; $6a1f: $9a
    sbc d                                         ; $6a20: $9a
    sbc d                                         ; $6a21: $9a
    sbc d                                         ; $6a22: $9a
    sbc e                                         ; $6a23: $9b
    sbc e                                         ; $6a24: $9b
    sbc e                                         ; $6a25: $9b
    sbc e                                         ; $6a26: $9b
    sbc h                                         ; $6a27: $9c
    sbc h                                         ; $6a28: $9c
    sbc h                                         ; $6a29: $9c
    sbc h                                         ; $6a2a: $9c
    sbc h                                         ; $6a2b: $9c

jr_086_6a2c:
    sbc h                                         ; $6a2c: $9c
    sbc h                                         ; $6a2d: $9c
    sbc h                                         ; $6a2e: $9c
    dec bc                                        ; $6a2f: $0b
    dec bc                                        ; $6a30: $0b
    dec bc                                        ; $6a31: $0b
    dec bc                                        ; $6a32: $0b
    dec bc                                        ; $6a33: $0b
    dec bc                                        ; $6a34: $0b
    dec bc                                        ; $6a35: $0b
    dec bc                                        ; $6a36: $0b
    dec bc                                        ; $6a37: $0b
    dec bc                                        ; $6a38: $0b
    dec bc                                        ; $6a39: $0b
    dec bc                                        ; $6a3a: $0b
    dec bc                                        ; $6a3b: $0b
    dec bc                                        ; $6a3c: $0b
    dec bc                                        ; $6a3d: $0b
    dec bc                                        ; $6a3e: $0b
    sbc d                                         ; $6a3f: $9a
    sbc d                                         ; $6a40: $9a
    sbc d                                         ; $6a41: $9a
    sbc d                                         ; $6a42: $9a
    sbc e                                         ; $6a43: $9b
    sub b                                         ; $6a44: $90
    sub c                                         ; $6a45: $91
    sub c                                         ; $6a46: $91
    sbc h                                         ; $6a47: $9c
    sub e                                         ; $6a48: $93
    sub h                                         ; $6a49: $94
    sub h                                         ; $6a4a: $94
    sbc h                                         ; $6a4b: $9c
    sub [hl]                                      ; $6a4c: $96
    sub a                                         ; $6a4d: $97
    sub a                                         ; $6a4e: $97
    dec bc                                        ; $6a4f: $0b
    dec bc                                        ; $6a50: $0b
    dec bc                                        ; $6a51: $0b
    dec bc                                        ; $6a52: $0b
    dec bc                                        ; $6a53: $0b
    add hl, bc                                    ; $6a54: $09
    add hl, bc                                    ; $6a55: $09
    add hl, bc                                    ; $6a56: $09
    dec bc                                        ; $6a57: $0b
    add hl, bc                                    ; $6a58: $09
    add hl, bc                                    ; $6a59: $09
    add hl, bc                                    ; $6a5a: $09
    dec bc                                        ; $6a5b: $0b
    add hl, bc                                    ; $6a5c: $09
    add hl, bc                                    ; $6a5d: $09
    add hl, bc                                    ; $6a5e: $09
    sbc d                                         ; $6a5f: $9a
    sbc d                                         ; $6a60: $9a
    sbc d                                         ; $6a61: $9a
    sbc d                                         ; $6a62: $9a
    sub c                                         ; $6a63: $91
    sub c                                         ; $6a64: $91
    sbc b                                         ; $6a65: $98
    sbc e                                         ; $6a66: $9b
    sub h                                         ; $6a67: $94
    sub h                                         ; $6a68: $94
    sub h                                         ; $6a69: $94
    sbc h                                         ; $6a6a: $9c
    sub a                                         ; $6a6b: $97
    sub a                                         ; $6a6c: $97
    sbc c                                         ; $6a6d: $99
    sbc h                                         ; $6a6e: $9c
    dec bc                                        ; $6a6f: $0b
    dec bc                                        ; $6a70: $0b
    dec bc                                        ; $6a71: $0b
    dec bc                                        ; $6a72: $0b
    add hl, bc                                    ; $6a73: $09
    add hl, bc                                    ; $6a74: $09
    add hl, bc                                    ; $6a75: $09
    dec bc                                        ; $6a76: $0b
    add hl, bc                                    ; $6a77: $09
    add hl, bc                                    ; $6a78: $09
    add hl, bc                                    ; $6a79: $09
    dec bc                                        ; $6a7a: $0b
    add hl, bc                                    ; $6a7b: $09
    add hl, bc                                    ; $6a7c: $09
    add hl, bc                                    ; $6a7d: $09
    dec bc                                        ; $6a7e: $0b
    ld l, d                                       ; $6a7f: $6a
    ld l, e                                       ; $6a80: $6b
    ld l, h                                       ; $6a81: $6c
    ld l, l                                       ; $6a82: $6d
    ld l, [hl]                                    ; $6a83: $6e
    ld l, a                                       ; $6a84: $6f
    ld [hl], b                                    ; $6a85: $70
    ld [hl], c                                    ; $6a86: $71
    ld [hl], d                                    ; $6a87: $72
    ld [hl], e                                    ; $6a88: $73
    ld [hl], h                                    ; $6a89: $74
    ld [hl], l                                    ; $6a8a: $75
    halt                                          ; $6a8b: $76
    ld [hl], a                                    ; $6a8c: $77
    ld a, b                                       ; $6a8d: $78
    ld a, c                                       ; $6a8e: $79
    dec b                                         ; $6a8f: $05
    dec b                                         ; $6a90: $05
    rlca                                          ; $6a91: $07
    dec b                                         ; $6a92: $05
    ld bc, $0501                                  ; $6a93: $01 $01 $05
    rlca                                          ; $6a96: $07
    dec b                                         ; $6a97: $05
    ld bc, $0501                                  ; $6a98: $01 $01 $05
    rlca                                          ; $6a9b: $07
    dec b                                         ; $6a9c: $05
    dec b                                         ; $6a9d: $05
    dec b                                         ; $6a9e: $05
    ld l, d                                       ; $6a9f: $6a
    ld l, e                                       ; $6aa0: $6b
    ld l, h                                       ; $6aa1: $6c
    ld l, l                                       ; $6aa2: $6d
    ld l, [hl]                                    ; $6aa3: $6e
    ld l, a                                       ; $6aa4: $6f
    ld [hl], b                                    ; $6aa5: $70
    ld [hl], c                                    ; $6aa6: $71
    ld [hl], d                                    ; $6aa7: $72
    ld [hl], e                                    ; $6aa8: $73
    ld [hl], h                                    ; $6aa9: $74
    ld [hl], l                                    ; $6aaa: $75
    halt                                          ; $6aab: $76
    ld [hl], a                                    ; $6aac: $77
    ld a, b                                       ; $6aad: $78
    ld a, c                                       ; $6aae: $79
    dec b                                         ; $6aaf: $05
    ld bc, $0505                                  ; $6ab0: $01 $05 $05
    dec b                                         ; $6ab3: $05
    dec b                                         ; $6ab4: $05
    ld bc, $0101                                  ; $6ab5: $01 $01 $01
    dec b                                         ; $6ab8: $05
    dec b                                         ; $6ab9: $05
    dec b                                         ; $6aba: $05
    dec b                                         ; $6abb: $05
    ld bc, $0105                                  ; $6abc: $01 $05 $01
    ld l, d                                       ; $6abf: $6a
    ld l, e                                       ; $6ac0: $6b
    ld l, h                                       ; $6ac1: $6c
    ld l, l                                       ; $6ac2: $6d
    ld l, [hl]                                    ; $6ac3: $6e
    ld l, a                                       ; $6ac4: $6f
    ld [hl], b                                    ; $6ac5: $70
    ld [hl], c                                    ; $6ac6: $71
    ld [hl], d                                    ; $6ac7: $72
    ld [hl], e                                    ; $6ac8: $73
    ld [hl], h                                    ; $6ac9: $74
    ld [hl], l                                    ; $6aca: $75
    halt                                          ; $6acb: $76
    ld [hl], a                                    ; $6acc: $77
    ld a, b                                       ; $6acd: $78
    ld a, c                                       ; $6ace: $79
    rlca                                          ; $6acf: $07
    dec b                                         ; $6ad0: $05
    dec b                                         ; $6ad1: $05
    dec b                                         ; $6ad2: $05
    ld bc, $0501                                  ; $6ad3: $01 $01 $05
    ld bc, $0507                                  ; $6ad6: $01 $07 $05
    rlca                                          ; $6ad9: $07
    ld bc, $0505                                  ; $6ada: $01 $05 $05
    dec b                                         ; $6add: $05
    ld bc, $6b6a                                  ; $6ade: $01 $6a $6b
    ld l, h                                       ; $6ae1: $6c
    ld l, l                                       ; $6ae2: $6d
    ld l, [hl]                                    ; $6ae3: $6e
    ld l, a                                       ; $6ae4: $6f
    ld [hl], b                                    ; $6ae5: $70
    ld [hl], c                                    ; $6ae6: $71
    ld [hl], d                                    ; $6ae7: $72
    ld [hl], e                                    ; $6ae8: $73
    ld [hl], h                                    ; $6ae9: $74
    ld [hl], l                                    ; $6aea: $75
    halt                                          ; $6aeb: $76
    ld [hl], a                                    ; $6aec: $77
    ld a, b                                       ; $6aed: $78
    ld a, c                                       ; $6aee: $79
    ld bc, $0501                                  ; $6aef: $01 $01 $05
    dec b                                         ; $6af2: $05
    dec b                                         ; $6af3: $05
    dec b                                         ; $6af4: $05
    ld bc, $0501                                  ; $6af5: $01 $01 $05
    ld bc, $0501                                  ; $6af8: $01 $01 $05
    ld bc, $0505                                  ; $6afb: $01 $05 $05
    rlca                                          ; $6afe: $07
    ld a, d                                       ; $6aff: $7a
    ld a, e                                       ; $6b00: $7b
    ld a, h                                       ; $6b01: $7c
    ld a, l                                       ; $6b02: $7d
    ld a, [hl]                                    ; $6b03: $7e
    ld a, a                                       ; $6b04: $7f
    add b                                         ; $6b05: $80
    add c                                         ; $6b06: $81
    add d                                         ; $6b07: $82
    add e                                         ; $6b08: $83
    add h                                         ; $6b09: $84
    add l                                         ; $6b0a: $85
    add [hl]                                      ; $6b0b: $86
    add a                                         ; $6b0c: $87
    adc b                                         ; $6b0d: $88
    adc c                                         ; $6b0e: $89
    dec b                                         ; $6b0f: $05
    ld bc, $0501                                  ; $6b10: $01 $01 $05
    dec b                                         ; $6b13: $05
    ld bc, $0f0d                                  ; $6b14: $01 $0d $0f
    rrca                                          ; $6b17: $0f
    dec c                                         ; $6b18: $0d
    dec c                                         ; $6b19: $0d
    dec c                                         ; $6b1a: $0d
    dec c                                         ; $6b1b: $0d
    rrca                                          ; $6b1c: $0f
    dec c                                         ; $6b1d: $0d
    dec c                                         ; $6b1e: $0d
    ld a, d                                       ; $6b1f: $7a
    ld a, e                                       ; $6b20: $7b
    ld a, h                                       ; $6b21: $7c
    ld a, l                                       ; $6b22: $7d
    ld a, [hl]                                    ; $6b23: $7e
    ld a, a                                       ; $6b24: $7f
    add b                                         ; $6b25: $80
    add c                                         ; $6b26: $81
    add d                                         ; $6b27: $82
    add e                                         ; $6b28: $83
    add h                                         ; $6b29: $84
    add l                                         ; $6b2a: $85
    add [hl]                                      ; $6b2b: $86
    add a                                         ; $6b2c: $87
    adc b                                         ; $6b2d: $88
    adc c                                         ; $6b2e: $89
    rlca                                          ; $6b2f: $07
    dec b                                         ; $6b30: $05
    ld bc, $0501                                  ; $6b31: $01 $01 $05
    dec b                                         ; $6b34: $05
    add hl, bc                                    ; $6b35: $09
    dec c                                         ; $6b36: $0d
    dec c                                         ; $6b37: $0d
    add hl, bc                                    ; $6b38: $09
    dec c                                         ; $6b39: $0d
    dec c                                         ; $6b3a: $0d
    dec c                                         ; $6b3b: $0d
    rrca                                          ; $6b3c: $0f
    dec c                                         ; $6b3d: $0d
    rrca                                          ; $6b3e: $0f
    ld a, d                                       ; $6b3f: $7a
    ld a, e                                       ; $6b40: $7b
    ld a, h                                       ; $6b41: $7c
    ld a, l                                       ; $6b42: $7d
    ld a, [hl]                                    ; $6b43: $7e
    ld a, a                                       ; $6b44: $7f
    add b                                         ; $6b45: $80
    add c                                         ; $6b46: $81
    add d                                         ; $6b47: $82
    add e                                         ; $6b48: $83
    add h                                         ; $6b49: $84
    add l                                         ; $6b4a: $85
    add [hl]                                      ; $6b4b: $86
    add a                                         ; $6b4c: $87
    adc b                                         ; $6b4d: $88
    adc c                                         ; $6b4e: $89
    dec b                                         ; $6b4f: $05
    rlca                                          ; $6b50: $07
    dec b                                         ; $6b51: $05
    rlca                                          ; $6b52: $07
    dec b                                         ; $6b53: $05
    dec b                                         ; $6b54: $05
    add hl, bc                                    ; $6b55: $09
    add hl, bc                                    ; $6b56: $09
    rrca                                          ; $6b57: $0f
    dec c                                         ; $6b58: $0d
    dec c                                         ; $6b59: $0d
    dec c                                         ; $6b5a: $0d
    dec c                                         ; $6b5b: $0d
    dec c                                         ; $6b5c: $0d
    rrca                                          ; $6b5d: $0f
    rrca                                          ; $6b5e: $0f
    ld a, d                                       ; $6b5f: $7a
    ld a, e                                       ; $6b60: $7b
    ld a, h                                       ; $6b61: $7c
    ld a, l                                       ; $6b62: $7d
    ld a, [hl]                                    ; $6b63: $7e
    ld a, a                                       ; $6b64: $7f
    add b                                         ; $6b65: $80
    add c                                         ; $6b66: $81
    add d                                         ; $6b67: $82
    add e                                         ; $6b68: $83
    add h                                         ; $6b69: $84
    add l                                         ; $6b6a: $85
    add [hl]                                      ; $6b6b: $86
    add a                                         ; $6b6c: $87
    adc b                                         ; $6b6d: $88
    adc c                                         ; $6b6e: $89
    dec b                                         ; $6b6f: $05
    rlca                                          ; $6b70: $07
    rlca                                          ; $6b71: $07
    dec b                                         ; $6b72: $05
    dec b                                         ; $6b73: $05
    rlca                                          ; $6b74: $07
    dec c                                         ; $6b75: $0d
    add hl, bc                                    ; $6b76: $09
    rrca                                          ; $6b77: $0f
    dec c                                         ; $6b78: $0d
    add hl, bc                                    ; $6b79: $09
    add hl, bc                                    ; $6b7a: $09
    dec c                                         ; $6b7b: $0d
    add hl, bc                                    ; $6b7c: $09
    dec c                                         ; $6b7d: $0d
    dec c                                         ; $6b7e: $0d
    db $dd                                        ; $6b7f: $dd
    adc d                                         ; $6b80: $8a
    call c, $e0dd                                 ; $6b81: $dc $dd $e0
    adc e                                         ; $6b84: $8b
    rst $18                                       ; $6b85: $df
    ldh [$e2], a                                  ; $6b86: $e0 $e2
    db $e3                                        ; $6b88: $e3
    jr nz, jr_086_6bac                            ; $6b89: $20 $21

    adc h                                         ; $6b8b: $8c
    adc l                                         ; $6b8c: $8d
    adc [hl]                                      ; $6b8d: $8e
    adc a                                         ; $6b8e: $8f
    rlca                                          ; $6b8f: $07
    dec c                                         ; $6b90: $0d
    dec b                                         ; $6b91: $05
    rlca                                          ; $6b92: $07
    dec b                                         ; $6b93: $05
    dec c                                         ; $6b94: $0d
    dec b                                         ; $6b95: $05
    dec b                                         ; $6b96: $05
    inc bc                                        ; $6b97: $03
    inc bc                                        ; $6b98: $03
    inc bc                                        ; $6b99: $03
    ld b, e                                       ; $6b9a: $43
    dec bc                                        ; $6b9b: $0b
    dec bc                                        ; $6b9c: $0b
    dec bc                                        ; $6b9d: $0b
    dec bc                                        ; $6b9e: $0b
    adc d                                         ; $6b9f: $8a
    call c, $8add                                 ; $6ba0: $dc $dd $8a
    adc e                                         ; $6ba3: $8b
    rst $18                                       ; $6ba4: $df
    ldh [$8b], a                                  ; $6ba5: $e0 $8b
    ld [c], a                                     ; $6ba7: $e2
    db $e3                                        ; $6ba8: $e3
    jr nz, jr_086_6bcc                            ; $6ba9: $20 $21

    adc h                                         ; $6bab: $8c

jr_086_6bac:
    adc l                                         ; $6bac: $8d
    adc [hl]                                      ; $6bad: $8e
    adc a                                         ; $6bae: $8f
    dec c                                         ; $6baf: $0d
    dec b                                         ; $6bb0: $05
    ld bc, $0d09                                  ; $6bb1: $01 $09 $0d
    dec b                                         ; $6bb4: $05
    dec b                                         ; $6bb5: $05
    dec c                                         ; $6bb6: $0d
    inc bc                                        ; $6bb7: $03
    inc bc                                        ; $6bb8: $03
    inc bc                                        ; $6bb9: $03
    ld b, e                                       ; $6bba: $43
    dec bc                                        ; $6bbb: $0b
    dec bc                                        ; $6bbc: $0b
    dec bc                                        ; $6bbd: $0b
    dec bc                                        ; $6bbe: $0b
    call c, $8add                                 ; $6bbf: $dc $dd $8a
    call c, $e0df                                 ; $6bc2: $dc $df $e0
    adc e                                         ; $6bc5: $8b
    rst $18                                       ; $6bc6: $df
    ld [c], a                                     ; $6bc7: $e2
    db $e3                                        ; $6bc8: $e3
    jr nz, jr_086_6bec                            ; $6bc9: $20 $21

    adc h                                         ; $6bcb: $8c

jr_086_6bcc:
    adc l                                         ; $6bcc: $8d

jr_086_6bcd:
    adc [hl]                                      ; $6bcd: $8e
    adc a                                         ; $6bce: $8f
    ld bc, $0d05                                  ; $6bcf: $01 $05 $0d
    dec b                                         ; $6bd2: $05
    dec b                                         ; $6bd3: $05
    dec b                                         ; $6bd4: $05
    dec c                                         ; $6bd5: $0d
    dec b                                         ; $6bd6: $05
    inc bc                                        ; $6bd7: $03
    inc bc                                        ; $6bd8: $03
    inc bc                                        ; $6bd9: $03
    ld b, e                                       ; $6bda: $43
    dec bc                                        ; $6bdb: $0b
    dec bc                                        ; $6bdc: $0b
    dec bc                                        ; $6bdd: $0b
    dec bc                                        ; $6bde: $0b
    db $dd                                        ; $6bdf: $dd
    adc d                                         ; $6be0: $8a
    call c, $e0dd                                 ; $6be1: $dc $dd $e0
    adc e                                         ; $6be4: $8b
    rst $18                                       ; $6be5: $df
    ldh [$e2], a                                  ; $6be6: $e0 $e2
    db $e3                                        ; $6be8: $e3
    jr nz, jr_086_6bcd                            ; $6be9: $20 $e2

    adc h                                         ; $6beb: $8c

jr_086_6bec:
    adc l                                         ; $6bec: $8d
    adc [hl]                                      ; $6bed: $8e
    adc h                                         ; $6bee: $8c
    rlca                                          ; $6bef: $07
    dec c                                         ; $6bf0: $0d
    dec b                                         ; $6bf1: $05
    rlca                                          ; $6bf2: $07
    dec b                                         ; $6bf3: $05
    dec c                                         ; $6bf4: $0d
    dec b                                         ; $6bf5: $05
    dec b                                         ; $6bf6: $05
    inc bc                                        ; $6bf7: $03
    inc bc                                        ; $6bf8: $03
    inc bc                                        ; $6bf9: $03
    inc bc                                        ; $6bfa: $03
    dec bc                                        ; $6bfb: $0b
    dec bc                                        ; $6bfc: $0b
    dec bc                                        ; $6bfd: $0b
    dec bc                                        ; $6bfe: $0b
    ld l, d                                       ; $6bff: $6a
    ld l, e                                       ; $6c00: $6b
    ld l, h                                       ; $6c01: $6c
    ld l, l                                       ; $6c02: $6d
    ld l, [hl]                                    ; $6c03: $6e
    ld l, a                                       ; $6c04: $6f
    ld [hl], b                                    ; $6c05: $70
    ld [hl], c                                    ; $6c06: $71
    ld [hl], d                                    ; $6c07: $72
    ld [hl], e                                    ; $6c08: $73
    ld [hl], h                                    ; $6c09: $74
    ld [hl], l                                    ; $6c0a: $75
    halt                                          ; $6c0b: $76
    ld [hl], a                                    ; $6c0c: $77
    ld a, b                                       ; $6c0d: $78
    ld a, c                                       ; $6c0e: $79
    dec b                                         ; $6c0f: $05
    rlca                                          ; $6c10: $07
    dec b                                         ; $6c11: $05
    dec b                                         ; $6c12: $05
    dec b                                         ; $6c13: $05
    dec b                                         ; $6c14: $05
    rlca                                          ; $6c15: $07
    dec b                                         ; $6c16: $05
    dec b                                         ; $6c17: $05
    rlca                                          ; $6c18: $07
    dec b                                         ; $6c19: $05
    rlca                                          ; $6c1a: $07
    rlca                                          ; $6c1b: $07
    dec b                                         ; $6c1c: $05
    ld bc, $6a05                                  ; $6c1d: $01 $05 $6a
    ld l, e                                       ; $6c20: $6b
    ld l, h                                       ; $6c21: $6c
    ld l, l                                       ; $6c22: $6d
    ld l, [hl]                                    ; $6c23: $6e
    ld l, a                                       ; $6c24: $6f
    ld [hl], b                                    ; $6c25: $70
    ld [hl], c                                    ; $6c26: $71
    ld [hl], d                                    ; $6c27: $72
    ld [hl], e                                    ; $6c28: $73
    ld [hl], h                                    ; $6c29: $74
    ld [hl], l                                    ; $6c2a: $75
    halt                                          ; $6c2b: $76
    ld [hl], a                                    ; $6c2c: $77
    ld a, b                                       ; $6c2d: $78
    ld a, c                                       ; $6c2e: $79
    rlca                                          ; $6c2f: $07
    dec b                                         ; $6c30: $05
    ld bc, $0505                                  ; $6c31: $01 $05 $05
    rlca                                          ; $6c34: $07
    ld bc, $0505                                  ; $6c35: $01 $05 $05
    dec b                                         ; $6c38: $05
    dec b                                         ; $6c39: $05
    ld bc, $0705                                  ; $6c3a: $01 $05 $07
    dec b                                         ; $6c3d: $05
    dec b                                         ; $6c3e: $05
    ld a, d                                       ; $6c3f: $7a
    ld a, e                                       ; $6c40: $7b
    ld a, h                                       ; $6c41: $7c
    ld a, l                                       ; $6c42: $7d
    ld a, [hl]                                    ; $6c43: $7e
    ld a, a                                       ; $6c44: $7f
    add b                                         ; $6c45: $80
    add c                                         ; $6c46: $81
    add d                                         ; $6c47: $82
    add e                                         ; $6c48: $83
    add h                                         ; $6c49: $84
    add l                                         ; $6c4a: $85
    add [hl]                                      ; $6c4b: $86
    add a                                         ; $6c4c: $87
    adc b                                         ; $6c4d: $88
    adc c                                         ; $6c4e: $89
    dec b                                         ; $6c4f: $05
    dec b                                         ; $6c50: $05
    ld bc, $0505                                  ; $6c51: $01 $05 $05
    rlca                                          ; $6c54: $07
    dec c                                         ; $6c55: $0d
    add hl, bc                                    ; $6c56: $09
    dec c                                         ; $6c57: $0d
    add hl, bc                                    ; $6c58: $09
    add hl, bc                                    ; $6c59: $09
    dec c                                         ; $6c5a: $0d
    dec c                                         ; $6c5b: $0d
    add hl, bc                                    ; $6c5c: $09
    dec c                                         ; $6c5d: $0d
    dec c                                         ; $6c5e: $0d
    ld a, d                                       ; $6c5f: $7a
    ld a, e                                       ; $6c60: $7b
    ld a, h                                       ; $6c61: $7c
    ld a, l                                       ; $6c62: $7d
    ld a, [hl]                                    ; $6c63: $7e
    ld a, a                                       ; $6c64: $7f
    add b                                         ; $6c65: $80
    add c                                         ; $6c66: $81
    add d                                         ; $6c67: $82
    add e                                         ; $6c68: $83
    add h                                         ; $6c69: $84
    add l                                         ; $6c6a: $85
    add [hl]                                      ; $6c6b: $86
    add a                                         ; $6c6c: $87
    adc b                                         ; $6c6d: $88
    adc c                                         ; $6c6e: $89
    dec b                                         ; $6c6f: $05
    dec b                                         ; $6c70: $05
    dec b                                         ; $6c71: $05
    rlca                                          ; $6c72: $07
    dec b                                         ; $6c73: $05
    rlca                                          ; $6c74: $07
    dec c                                         ; $6c75: $0d
    dec c                                         ; $6c76: $0d
    add hl, bc                                    ; $6c77: $09
    add hl, bc                                    ; $6c78: $09
    dec c                                         ; $6c79: $0d
    dec c                                         ; $6c7a: $0d
    dec c                                         ; $6c7b: $0d
    dec c                                         ; $6c7c: $0d
    add hl, bc                                    ; $6c7d: $09
    dec c                                         ; $6c7e: $0d
    adc d                                         ; $6c7f: $8a
    call c, $8add                                 ; $6c80: $dc $dd $8a
    adc e                                         ; $6c83: $8b
    rst $18                                       ; $6c84: $df
    ldh [$8b], a                                  ; $6c85: $e0 $8b
    db $e3                                        ; $6c87: $e3
    jr nz, jr_086_6cab                            ; $6c88: $20 $21

    ld [c], a                                     ; $6c8a: $e2
    adc l                                         ; $6c8b: $8d
    adc [hl]                                      ; $6c8c: $8e
    adc a                                         ; $6c8d: $8f
    adc h                                         ; $6c8e: $8c
    rrca                                          ; $6c8f: $0f
    dec b                                         ; $6c90: $05
    dec b                                         ; $6c91: $05
    rrca                                          ; $6c92: $0f
    dec c                                         ; $6c93: $0d
    dec b                                         ; $6c94: $05
    dec b                                         ; $6c95: $05
    dec c                                         ; $6c96: $0d
    inc bc                                        ; $6c97: $03
    inc bc                                        ; $6c98: $03
    ld b, e                                       ; $6c99: $43
    inc bc                                        ; $6c9a: $03
    dec bc                                        ; $6c9b: $0b
    dec bc                                        ; $6c9c: $0b
    dec bc                                        ; $6c9d: $0b
    dec bc                                        ; $6c9e: $0b
    call c, $8add                                 ; $6c9f: $dc $dd $8a
    call c, $e0df                                 ; $6ca2: $dc $df $e0
    adc e                                         ; $6ca5: $8b
    rst $18                                       ; $6ca6: $df
    db $e3                                        ; $6ca7: $e3
    jr nz, jr_086_6ccb                            ; $6ca8: $20 $21

    ld [c], a                                     ; $6caa: $e2

jr_086_6cab:
    adc l                                         ; $6cab: $8d
    adc [hl]                                      ; $6cac: $8e
    adc a                                         ; $6cad: $8f
    adc h                                         ; $6cae: $8c
    rlca                                          ; $6caf: $07
    dec b                                         ; $6cb0: $05
    dec c                                         ; $6cb1: $0d
    dec b                                         ; $6cb2: $05
    dec b                                         ; $6cb3: $05
    dec b                                         ; $6cb4: $05
    dec c                                         ; $6cb5: $0d
    dec b                                         ; $6cb6: $05
    inc bc                                        ; $6cb7: $03
    inc bc                                        ; $6cb8: $03
    ld b, e                                       ; $6cb9: $43
    inc bc                                        ; $6cba: $03
    dec bc                                        ; $6cbb: $0b
    dec bc                                        ; $6cbc: $0b
    dec bc                                        ; $6cbd: $0b
    dec bc                                        ; $6cbe: $0b
    inc e                                         ; $6cbf: $1c
    inc e                                         ; $6cc0: $1c
    inc e                                         ; $6cc1: $1c
    inc e                                         ; $6cc2: $1c
    ld de, $1111                                  ; $6cc3: $11 $11 $11
    ld de, $0201                                  ; $6cc6: $11 $01 $02
    ld e, $1f                                     ; $6cc9: $1e $1f

jr_086_6ccb:
    ld [c], a                                     ; $6ccb: $e2
    db $e3                                        ; $6ccc: $e3
    jr nz, jr_086_6cf0                            ; $6ccd: $20 $21

    inc bc                                        ; $6ccf: $03
    inc bc                                        ; $6cd0: $03

Jump_086_6cd1:
    inc bc                                        ; $6cd1: $03
    inc bc                                        ; $6cd2: $03
    inc bc                                        ; $6cd3: $03
    inc bc                                        ; $6cd4: $03
    inc bc                                        ; $6cd5: $03
    inc bc                                        ; $6cd6: $03
    ld b, e                                       ; $6cd7: $43
    ld b, e                                       ; $6cd8: $43
    ld b, e                                       ; $6cd9: $43
    inc bc                                        ; $6cda: $03

Jump_086_6cdb:
    ld b, e                                       ; $6cdb: $43
    ld b, e                                       ; $6cdc: $43
    ld b, e                                       ; $6cdd: $43
    inc bc                                        ; $6cde: $03
    inc e                                         ; $6cdf: $1c
    sbc l                                         ; $6ce0: $9d
    sbc l                                         ; $6ce1: $9d
    sbc l                                         ; $6ce2: $9d
    ld de, $9190                                  ; $6ce3: $11 $90 $91
    sub c                                         ; $6ce6: $91
    sbc [hl]                                      ; $6ce7: $9e
    sub e                                         ; $6ce8: $93
    sub h                                         ; $6ce9: $94
    sub h                                         ; $6cea: $94
    sbc a                                         ; $6ceb: $9f
    sub [hl]                                      ; $6cec: $96
    sub a                                         ; $6ced: $97
    sub a                                         ; $6cee: $97
    inc bc                                        ; $6cef: $03

jr_086_6cf0:
    dec bc                                        ; $6cf0: $0b
    dec bc                                        ; $6cf1: $0b
    dec bc                                        ; $6cf2: $0b
    inc bc                                        ; $6cf3: $03
    add hl, bc                                    ; $6cf4: $09
    add hl, bc                                    ; $6cf5: $09
    add hl, bc                                    ; $6cf6: $09
    dec bc                                        ; $6cf7: $0b
    add hl, bc                                    ; $6cf8: $09
    add hl, bc                                    ; $6cf9: $09
    add hl, bc                                    ; $6cfa: $09
    dec bc                                        ; $6cfb: $0b
    add hl, bc                                    ; $6cfc: $09
    add hl, bc                                    ; $6cfd: $09
    add hl, bc                                    ; $6cfe: $09
    sbc l                                         ; $6cff: $9d
    sbc l                                         ; $6d00: $9d
    sbc l                                         ; $6d01: $9d
    inc e                                         ; $6d02: $1c
    sub c                                         ; $6d03: $91
    sub c                                         ; $6d04: $91
    sbc b                                         ; $6d05: $98
    ld de, $9494                                  ; $6d06: $11 $94 $94
    sub h                                         ; $6d09: $94
    rra                                           ; $6d0a: $1f
    sub a                                         ; $6d0b: $97
    sub a                                         ; $6d0c: $97
    sbc c                                         ; $6d0d: $99
    ld hl, $0b0b                                  ; $6d0e: $21 $0b $0b
    dec bc                                        ; $6d11: $0b
    inc bc                                        ; $6d12: $03
    add hl, bc                                    ; $6d13: $09
    add hl, bc                                    ; $6d14: $09
    add hl, bc                                    ; $6d15: $09
    inc bc                                        ; $6d16: $03
    add hl, bc                                    ; $6d17: $09
    add hl, bc                                    ; $6d18: $09
    add hl, bc                                    ; $6d19: $09
    inc bc                                        ; $6d1a: $03
    add hl, bc                                    ; $6d1b: $09
    add hl, bc                                    ; $6d1c: $09
    add hl, bc                                    ; $6d1d: $09
    inc bc                                        ; $6d1e: $03
    cpl                                           ; $6d1f: $2f
    jr nc, jr_086_6d53                            ; $6d20: $30 $31

    ld [hl-], a                                   ; $6d22: $32
    jr z, jr_086_6d4e                             ; $6d23: $28 $29

    ld h, $27                                     ; $6d25: $26 $27
    ld l, h                                       ; $6d27: $6c
    ld l, l                                       ; $6d28: $6d
    ld l, d                                       ; $6d29: $6a
    ld l, e                                       ; $6d2a: $6b
    ld [hl], b                                    ; $6d2b: $70
    and b                                         ; $6d2c: $a0
    and c                                         ; $6d2d: $a1
    and d                                         ; $6d2e: $a2
    ld bc, $0507                                  ; $6d2f: $01 $07 $05
    ld bc, $0105                                  ; $6d32: $01 $05 $01
    dec b                                         ; $6d35: $05
    ld bc, $0501                                  ; $6d36: $01 $01 $05
    rlca                                          ; $6d39: $07
    dec b                                         ; $6d3a: $05
    dec b                                         ; $6d3b: $05
    add hl, bc                                    ; $6d3c: $09
    dec c                                         ; $6d3d: $0d
    adc [hl]                                      ; $6d3e: $8e
    dec a                                         ; $6d3f: $3d
    inc hl                                        ; $6d40: $23
    inc h                                         ; $6d41: $24
    ld a, $28                                     ; $6d42: $3e $28
    add hl, hl                                    ; $6d44: $29
    ld h, $27                                     ; $6d45: $26 $27
    ld l, h                                       ; $6d47: $6c
    ld l, l                                       ; $6d48: $6d
    ld l, d                                       ; $6d49: $6a
    ld l, e                                       ; $6d4a: $6b
    and e                                         ; $6d4b: $a3
    and b                                         ; $6d4c: $a0
    and c                                         ; $6d4d: $a1

jr_086_6d4e:
    and h                                         ; $6d4e: $a4
    dec b                                         ; $6d4f: $05
    dec b                                         ; $6d50: $05
    dec b                                         ; $6d51: $05
    rlca                                          ; $6d52: $07

jr_086_6d53:
    dec b                                         ; $6d53: $05
    dec b                                         ; $6d54: $05
    ld bc, $0705                                  ; $6d55: $01 $05 $07
    dec b                                         ; $6d58: $05
    dec b                                         ; $6d59: $05
    ld bc, $0d8e                                  ; $6d5a: $01 $8e $0d
    dec c                                         ; $6d5d: $0d
    dec c                                         ; $6d5e: $0d
    ld [hl+], a                                   ; $6d5f: $22
    inc hl                                        ; $6d60: $23
    inc h                                         ; $6d61: $24
    dec h                                         ; $6d62: $25
    jr z, jr_086_6d8e                             ; $6d63: $28 $29

    ld h, $27                                     ; $6d65: $26 $27
    ld l, h                                       ; $6d67: $6c
    ld l, l                                       ; $6d68: $6d
    ld l, d                                       ; $6d69: $6a
    ld l, e                                       ; $6d6a: $6b
    ld [hl], b                                    ; $6d6b: $70
    and b                                         ; $6d6c: $a0
    and c                                         ; $6d6d: $a1
    and d                                         ; $6d6e: $a2
    dec b                                         ; $6d6f: $05
    dec b                                         ; $6d70: $05
    ld bc, $0505                                  ; $6d71: $01 $05 $05
    rlca                                          ; $6d74: $07
    dec b                                         ; $6d75: $05
    ld bc, $0505                                  ; $6d76: $01 $05 $05
    ld bc, $0105                                  ; $6d79: $01 $05 $01
    dec c                                         ; $6d7c: $0d
    rrca                                          ; $6d7d: $0f
    adc [hl]                                      ; $6d7e: $8e
    ld [hl+], a                                   ; $6d7f: $22
    inc hl                                        ; $6d80: $23
    inc h                                         ; $6d81: $24
    ld a, [hl+]                                   ; $6d82: $2a
    jr z, jr_086_6dae                             ; $6d83: $28 $29

    ld h, $27                                     ; $6d85: $26 $27
    ld l, h                                       ; $6d87: $6c
    ld l, l                                       ; $6d88: $6d
    ld l, d                                       ; $6d89: $6a
    ld l, e                                       ; $6d8a: $6b
    and e                                         ; $6d8b: $a3
    and b                                         ; $6d8c: $a0
    and c                                         ; $6d8d: $a1

jr_086_6d8e:
    and h                                         ; $6d8e: $a4
    dec b                                         ; $6d8f: $05
    ld bc, $0505                                  ; $6d90: $01 $05 $05
    ld bc, $0501                                  ; $6d93: $01 $01 $05
    ld bc, $0705                                  ; $6d96: $01 $05 $07
    dec b                                         ; $6d99: $05
    ld bc, $0d8e                                  ; $6d9a: $01 $8e $0d
    rrca                                          ; $6d9d: $0f
    dec c                                         ; $6d9e: $0d
    and l                                         ; $6d9f: $a5
    and [hl]                                      ; $6da0: $a6
    and a                                         ; $6da1: $a7
    xor b                                         ; $6da2: $a8
    xor c                                         ; $6da3: $a9
    xor d                                         ; $6da4: $aa
    xor e                                         ; $6da5: $ab
    xor h                                         ; $6da6: $ac
    xor l                                         ; $6da7: $ad
    xor e                                         ; $6da8: $ab
    xor [hl]                                      ; $6da9: $ae
    xor a                                         ; $6daa: $af
    or b                                          ; $6dab: $b0
    xor [hl]                                      ; $6dac: $ae
    xor e                                         ; $6dad: $ab

jr_086_6dae:
    or c                                          ; $6dae: $b1
    dec c                                         ; $6daf: $0d
    dec c                                         ; $6db0: $0d
    dec c                                         ; $6db1: $0d
    adc [hl]                                      ; $6db2: $8e
    add hl, bc                                    ; $6db3: $09
    dec c                                         ; $6db4: $0d
    dec c                                         ; $6db5: $0d
    adc [hl]                                      ; $6db6: $8e
    dec c                                         ; $6db7: $0d
    dec c                                         ; $6db8: $0d
    dec c                                         ; $6db9: $0d
    adc [hl]                                      ; $6dba: $8e
    rrca                                          ; $6dbb: $0f
    dec c                                         ; $6dbc: $0d
    dec c                                         ; $6dbd: $0d
    adc [hl]                                      ; $6dbe: $8e
    or d                                          ; $6dbf: $b2
    or e                                          ; $6dc0: $b3
    or h                                          ; $6dc1: $b4
    or l                                          ; $6dc2: $b5
    or [hl]                                       ; $6dc3: $b6
    xor [hl]                                      ; $6dc4: $ae
    or a                                          ; $6dc5: $b7
    cp b                                          ; $6dc6: $b8
    cp c                                          ; $6dc7: $b9
    xor e                                         ; $6dc8: $ab
    cp d                                          ; $6dc9: $ba
    cp e                                          ; $6dca: $bb
    cp h                                          ; $6dcb: $bc
    xor [hl]                                      ; $6dcc: $ae
    or a                                          ; $6dcd: $b7
    cp l                                          ; $6dce: $bd
    adc [hl]                                      ; $6dcf: $8e
    dec c                                         ; $6dd0: $0d
    dec c                                         ; $6dd1: $0d
    dec c                                         ; $6dd2: $0d
    adc [hl]                                      ; $6dd3: $8e
    dec c                                         ; $6dd4: $0d
    dec c                                         ; $6dd5: $0d
    add hl, bc                                    ; $6dd6: $09
    adc [hl]                                      ; $6dd7: $8e
    dec c                                         ; $6dd8: $0d
    dec c                                         ; $6dd9: $0d
    dec c                                         ; $6dda: $0d
    adc [hl]                                      ; $6ddb: $8e
    dec c                                         ; $6ddc: $0d
    dec c                                         ; $6ddd: $0d
    add hl, bc                                    ; $6dde: $09
    and l                                         ; $6ddf: $a5
    and [hl]                                      ; $6de0: $a6
    and a                                         ; $6de1: $a7
    xor b                                         ; $6de2: $a8
    xor c                                         ; $6de3: $a9
    xor d                                         ; $6de4: $aa
    xor e                                         ; $6de5: $ab
    xor h                                         ; $6de6: $ac
    xor l                                         ; $6de7: $ad
    xor e                                         ; $6de8: $ab
    xor [hl]                                      ; $6de9: $ae
    xor a                                         ; $6dea: $af
    or b                                          ; $6deb: $b0
    xor [hl]                                      ; $6dec: $ae
    xor e                                         ; $6ded: $ab
    or c                                          ; $6dee: $b1
    dec c                                         ; $6def: $0d
    dec c                                         ; $6df0: $0d
    dec c                                         ; $6df1: $0d
    adc [hl]                                      ; $6df2: $8e
    dec c                                         ; $6df3: $0d
    dec c                                         ; $6df4: $0d
    dec c                                         ; $6df5: $0d
    adc [hl]                                      ; $6df6: $8e
    rrca                                          ; $6df7: $0f
    dec c                                         ; $6df8: $0d
    dec c                                         ; $6df9: $0d
    adc [hl]                                      ; $6dfa: $8e
    dec c                                         ; $6dfb: $0d
    dec c                                         ; $6dfc: $0d
    dec c                                         ; $6dfd: $0d
    adc [hl]                                      ; $6dfe: $8e
    or d                                          ; $6dff: $b2
    or e                                          ; $6e00: $b3
    or h                                          ; $6e01: $b4
    or l                                          ; $6e02: $b5
    or [hl]                                       ; $6e03: $b6
    xor [hl]                                      ; $6e04: $ae
    or a                                          ; $6e05: $b7
    cp b                                          ; $6e06: $b8
    cp c                                          ; $6e07: $b9
    xor e                                         ; $6e08: $ab
    cp d                                          ; $6e09: $ba
    cp e                                          ; $6e0a: $bb
    cp h                                          ; $6e0b: $bc
    xor [hl]                                      ; $6e0c: $ae
    or a                                          ; $6e0d: $b7
    cp l                                          ; $6e0e: $bd
    adc [hl]                                      ; $6e0f: $8e
    dec c                                         ; $6e10: $0d
    dec c                                         ; $6e11: $0d
    add hl, bc                                    ; $6e12: $09
    adc [hl]                                      ; $6e13: $8e
    dec c                                         ; $6e14: $0d
    dec c                                         ; $6e15: $0d
    dec c                                         ; $6e16: $0d
    adc [hl]                                      ; $6e17: $8e
    dec c                                         ; $6e18: $0d
    dec c                                         ; $6e19: $0d
    dec c                                         ; $6e1a: $0d
    adc [hl]                                      ; $6e1b: $8e
    dec c                                         ; $6e1c: $0d
    dec c                                         ; $6e1d: $0d
    dec c                                         ; $6e1e: $0d
    cp [hl]                                       ; $6e1f: $be
    xor e                                         ; $6e20: $ab
    xor [hl]                                      ; $6e21: $ae
    cp a                                          ; $6e22: $bf
    ret nz                                        ; $6e23: $c0

    xor [hl]                                      ; $6e24: $ae
    xor e                                         ; $6e25: $ab
    pop bc                                        ; $6e26: $c1
    jp nz, $aeab                                  ; $6e27: $c2 $ab $ae

    jp $aec4                                      ; $6e2a: $c3 $c4 $ae


    xor e                                         ; $6e2d: $ab
    xor [hl]                                      ; $6e2e: $ae
    dec c                                         ; $6e2f: $0d
    dec c                                         ; $6e30: $0d
    dec c                                         ; $6e31: $0d
    adc [hl]                                      ; $6e32: $8e
    rrca                                          ; $6e33: $0f
    dec c                                         ; $6e34: $0d
    dec c                                         ; $6e35: $0d
    adc [hl]                                      ; $6e36: $8e
    add hl, bc                                    ; $6e37: $09
    dec c                                         ; $6e38: $0d
    dec c                                         ; $6e39: $0d
    dec c                                         ; $6e3a: $0d
    dec c                                         ; $6e3b: $0d
    dec c                                         ; $6e3c: $0d
    dec c                                         ; $6e3d: $0d
    dec c                                         ; $6e3e: $0d
    push bc                                       ; $6e3f: $c5
    xor e                                         ; $6e40: $ab
    cp d                                          ; $6e41: $ba
    add $c7                                       ; $6e42: $c6 $c7
    xor [hl]                                      ; $6e44: $ae
    or a                                          ; $6e45: $b7
    ret z                                         ; $6e46: $c8

    ret                                           ; $6e47: $c9


    xor e                                         ; $6e48: $ab
    cp d                                          ; $6e49: $ba
    jp z, $aeab                                   ; $6e4a: $ca $ab $ae

    or a                                          ; $6e4d: $b7
    res 1, [hl]                                   ; $6e4e: $cb $8e
    dec c                                         ; $6e50: $0d
    dec c                                         ; $6e51: $0d
    dec c                                         ; $6e52: $0d
    adc [hl]                                      ; $6e53: $8e
    dec c                                         ; $6e54: $0d
    dec c                                         ; $6e55: $0d
    dec c                                         ; $6e56: $0d
    dec c                                         ; $6e57: $0d
    dec c                                         ; $6e58: $0d
    dec c                                         ; $6e59: $0d
    add hl, bc                                    ; $6e5a: $09
    dec c                                         ; $6e5b: $0d
    dec c                                         ; $6e5c: $0d
    dec c                                         ; $6e5d: $0d
    dec c                                         ; $6e5e: $0d
    cp [hl]                                       ; $6e5f: $be
    xor e                                         ; $6e60: $ab
    xor [hl]                                      ; $6e61: $ae
    cp a                                          ; $6e62: $bf
    ret nz                                        ; $6e63: $c0

    xor [hl]                                      ; $6e64: $ae
    xor e                                         ; $6e65: $ab
    pop bc                                        ; $6e66: $c1
    jp nz, $aeab                                  ; $6e67: $c2 $ab $ae

    jp $aec4                                      ; $6e6a: $c3 $c4 $ae


    xor e                                         ; $6e6d: $ab
    xor [hl]                                      ; $6e6e: $ae
    add hl, bc                                    ; $6e6f: $09
    dec c                                         ; $6e70: $0d
    dec c                                         ; $6e71: $0d
    adc [hl]                                      ; $6e72: $8e
    dec c                                         ; $6e73: $0d
    dec c                                         ; $6e74: $0d
    dec c                                         ; $6e75: $0d
    adc [hl]                                      ; $6e76: $8e
    dec c                                         ; $6e77: $0d
    dec c                                         ; $6e78: $0d
    dec c                                         ; $6e79: $0d
    dec c                                         ; $6e7a: $0d
    dec c                                         ; $6e7b: $0d
    dec c                                         ; $6e7c: $0d
    dec c                                         ; $6e7d: $0d
    dec c                                         ; $6e7e: $0d
    push bc                                       ; $6e7f: $c5
    xor e                                         ; $6e80: $ab
    cp d                                          ; $6e81: $ba
    add $c7                                       ; $6e82: $c6 $c7
    xor [hl]                                      ; $6e84: $ae
    or a                                          ; $6e85: $b7
    ret z                                         ; $6e86: $c8

    ret                                           ; $6e87: $c9


    xor e                                         ; $6e88: $ab
    cp d                                          ; $6e89: $ba
    jp z, $aeab                                   ; $6e8a: $ca $ab $ae

    or a                                          ; $6e8d: $b7
    res 1, [hl]                                   ; $6e8e: $cb $8e
    dec c                                         ; $6e90: $0d

jr_086_6e91:
    dec c                                         ; $6e91: $0d
    rrca                                          ; $6e92: $0f
    adc [hl]                                      ; $6e93: $8e
    dec c                                         ; $6e94: $0d
    dec c                                         ; $6e95: $0d
    dec c                                         ; $6e96: $0d
    dec c                                         ; $6e97: $0d
    dec c                                         ; $6e98: $0d
    dec c                                         ; $6e99: $0d
    add hl, bc                                    ; $6e9a: $09
    dec c                                         ; $6e9b: $0d
    dec c                                         ; $6e9c: $0d
    dec c                                         ; $6e9d: $0d
    dec c                                         ; $6e9e: $0d
    inc e                                         ; $6e9f: $1c
    inc e                                         ; $6ea0: $1c
    inc e                                         ; $6ea1: $1c
    inc e                                         ; $6ea2: $1c
    ld de, $1111                                  ; $6ea3: $11 $11 $11
    ld de, $0201                                  ; $6ea6: $11 $01 $02
    ld e, $01                                     ; $6ea9: $1e $01
    ld [c], a                                     ; $6eab: $e2
    db $e3                                        ; $6eac: $e3
    jr nz, jr_086_6e91                            ; $6ead: $20 $e2

    inc bc                                        ; $6eaf: $03
    inc bc                                        ; $6eb0: $03
    inc bc                                        ; $6eb1: $03
    inc bc                                        ; $6eb2: $03
    inc bc                                        ; $6eb3: $03
    inc bc                                        ; $6eb4: $03
    inc bc                                        ; $6eb5: $03
    inc bc                                        ; $6eb6: $03
    ld b, e                                       ; $6eb7: $43
    ld b, e                                       ; $6eb8: $43
    ld b, e                                       ; $6eb9: $43
    ld b, e                                       ; $6eba: $43
    ld b, e                                       ; $6ebb: $43
    ld b, e                                       ; $6ebc: $43
    ld b, e                                       ; $6ebd: $43
    ld b, e                                       ; $6ebe: $43
    ld [hl+], a                                   ; $6ebf: $22
    inc hl                                        ; $6ec0: $23
    inc h                                         ; $6ec1: $24
    dec h                                         ; $6ec2: $25
    jr z, jr_086_6eee                             ; $6ec3: $28 $29

    ld h, $27                                     ; $6ec5: $26 $27
    ld l, h                                       ; $6ec7: $6c
    ld l, l                                       ; $6ec8: $6d
    ld l, d                                       ; $6ec9: $6a
    ld l, e                                       ; $6eca: $6b
    ld [hl], b                                    ; $6ecb: $70
    and b                                         ; $6ecc: $a0
    and c                                         ; $6ecd: $a1
    and d                                         ; $6ece: $a2
    rlca                                          ; $6ecf: $07
    dec b                                         ; $6ed0: $05
    dec b                                         ; $6ed1: $05
    rlca                                          ; $6ed2: $07
    dec b                                         ; $6ed3: $05
    rlca                                          ; $6ed4: $07
    dec b                                         ; $6ed5: $05
    ld bc, $0501                                  ; $6ed6: $01 $01 $05
    rlca                                          ; $6ed9: $07
    dec b                                         ; $6eda: $05
    rlca                                          ; $6edb: $07
    dec c                                         ; $6edc: $0d
    dec c                                         ; $6edd: $0d
    adc [hl]                                      ; $6ede: $8e
    ld [hl+], a                                   ; $6edf: $22
    inc hl                                        ; $6ee0: $23
    inc h                                         ; $6ee1: $24
    ld a, [hl+]                                   ; $6ee2: $2a
    jr z, jr_086_6f0e                             ; $6ee3: $28 $29

    ld h, $27                                     ; $6ee5: $26 $27
    ld l, h                                       ; $6ee7: $6c
    ld l, l                                       ; $6ee8: $6d
    ld l, d                                       ; $6ee9: $6a
    ld l, e                                       ; $6eea: $6b
    and e                                         ; $6eeb: $a3
    and b                                         ; $6eec: $a0
    and c                                         ; $6eed: $a1

jr_086_6eee:
    and h                                         ; $6eee: $a4
    dec b                                         ; $6eef: $05
    rlca                                          ; $6ef0: $07
    dec b                                         ; $6ef1: $05
    dec b                                         ; $6ef2: $05
    rlca                                          ; $6ef3: $07
    dec b                                         ; $6ef4: $05
    ld bc, $0505                                  ; $6ef5: $01 $05 $05
    ld bc, $0505                                  ; $6ef8: $01 $05 $05
    adc [hl]                                      ; $6efb: $8e
    dec c                                         ; $6efc: $0d
    dec c                                         ; $6efd: $0d
    dec c                                         ; $6efe: $0d
    cpl                                           ; $6eff: $2f
    jr nc, jr_086_6f33                            ; $6f00: $30 $31

    ld [hl-], a                                   ; $6f02: $32
    jr z, jr_086_6f2e                             ; $6f03: $28 $29

    ld h, $27                                     ; $6f05: $26 $27
    ld l, h                                       ; $6f07: $6c
    ld l, l                                       ; $6f08: $6d
    ld l, d                                       ; $6f09: $6a
    ld l, e                                       ; $6f0a: $6b
    ld [hl], b                                    ; $6f0b: $70
    and b                                         ; $6f0c: $a0
    and c                                         ; $6f0d: $a1

jr_086_6f0e:
    and d                                         ; $6f0e: $a2
    ld bc, $0505                                  ; $6f0f: $01 $05 $05
    dec b                                         ; $6f12: $05
    dec b                                         ; $6f13: $05
    ld bc, $0101                                  ; $6f14: $01 $01 $01
    dec b                                         ; $6f17: $05
    ld bc, $0705                                  ; $6f18: $01 $05 $07
    ld bc, $0d0d                                  ; $6f1b: $01 $0d $0d
    adc [hl]                                      ; $6f1e: $8e
    dec a                                         ; $6f1f: $3d
    inc hl                                        ; $6f20: $23
    inc h                                         ; $6f21: $24
    ld a, $28                                     ; $6f22: $3e $28
    add hl, hl                                    ; $6f24: $29
    ld h, $27                                     ; $6f25: $26 $27
    ld l, h                                       ; $6f27: $6c
    ld l, l                                       ; $6f28: $6d
    ld l, d                                       ; $6f29: $6a
    ld l, e                                       ; $6f2a: $6b
    and e                                         ; $6f2b: $a3
    and b                                         ; $6f2c: $a0
    and c                                         ; $6f2d: $a1

jr_086_6f2e:
    and h                                         ; $6f2e: $a4
    ld bc, $0505                                  ; $6f2f: $01 $05 $05
    rlca                                          ; $6f32: $07

jr_086_6f33:
    dec b                                         ; $6f33: $05
    rlca                                          ; $6f34: $07
    dec b                                         ; $6f35: $05
    ld bc, $0505                                  ; $6f36: $01 $05 $05
    rlca                                          ; $6f39: $07
    dec b                                         ; $6f3a: $05
    adc [hl]                                      ; $6f3b: $8e
    dec c                                         ; $6f3c: $0d
    add hl, bc                                    ; $6f3d: $09
    dec c                                         ; $6f3e: $0d
    and l                                         ; $6f3f: $a5
    and [hl]                                      ; $6f40: $a6
    and a                                         ; $6f41: $a7
    xor b                                         ; $6f42: $a8
    xor c                                         ; $6f43: $a9
    xor d                                         ; $6f44: $aa
    xor e                                         ; $6f45: $ab
    xor h                                         ; $6f46: $ac
    xor l                                         ; $6f47: $ad
    xor e                                         ; $6f48: $ab
    xor [hl]                                      ; $6f49: $ae
    xor a                                         ; $6f4a: $af
    or b                                          ; $6f4b: $b0
    xor [hl]                                      ; $6f4c: $ae
    xor e                                         ; $6f4d: $ab
    or c                                          ; $6f4e: $b1
    dec c                                         ; $6f4f: $0d
    dec c                                         ; $6f50: $0d
    dec c                                         ; $6f51: $0d
    adc [hl]                                      ; $6f52: $8e
    rrca                                          ; $6f53: $0f
    dec c                                         ; $6f54: $0d
    dec c                                         ; $6f55: $0d
    adc [hl]                                      ; $6f56: $8e
    dec c                                         ; $6f57: $0d
    dec c                                         ; $6f58: $0d
    dec c                                         ; $6f59: $0d
    adc [hl]                                      ; $6f5a: $8e
    add hl, bc                                    ; $6f5b: $09
    dec c                                         ; $6f5c: $0d
    dec c                                         ; $6f5d: $0d
    adc [hl]                                      ; $6f5e: $8e
    or d                                          ; $6f5f: $b2
    or e                                          ; $6f60: $b3
    or h                                          ; $6f61: $b4
    or l                                          ; $6f62: $b5
    or [hl]                                       ; $6f63: $b6
    xor [hl]                                      ; $6f64: $ae
    or a                                          ; $6f65: $b7
    cp b                                          ; $6f66: $b8
    cp c                                          ; $6f67: $b9
    xor e                                         ; $6f68: $ab
    cp d                                          ; $6f69: $ba
    cp e                                          ; $6f6a: $bb
    cp h                                          ; $6f6b: $bc
    xor [hl]                                      ; $6f6c: $ae
    or a                                          ; $6f6d: $b7
    cp l                                          ; $6f6e: $bd
    adc [hl]                                      ; $6f6f: $8e
    dec c                                         ; $6f70: $0d
    dec c                                         ; $6f71: $0d
    add hl, bc                                    ; $6f72: $09
    adc [hl]                                      ; $6f73: $8e
    dec c                                         ; $6f74: $0d
    dec c                                         ; $6f75: $0d
    dec c                                         ; $6f76: $0d
    adc [hl]                                      ; $6f77: $8e
    dec c                                         ; $6f78: $0d
    dec c                                         ; $6f79: $0d
    dec c                                         ; $6f7a: $0d
    adc [hl]                                      ; $6f7b: $8e
    dec c                                         ; $6f7c: $0d
    dec c                                         ; $6f7d: $0d
    add hl, bc                                    ; $6f7e: $09
    and l                                         ; $6f7f: $a5
    and [hl]                                      ; $6f80: $a6
    and a                                         ; $6f81: $a7
    xor b                                         ; $6f82: $a8
    xor c                                         ; $6f83: $a9
    xor d                                         ; $6f84: $aa
    xor e                                         ; $6f85: $ab
    xor h                                         ; $6f86: $ac
    xor l                                         ; $6f87: $ad
    xor e                                         ; $6f88: $ab
    xor [hl]                                      ; $6f89: $ae
    xor a                                         ; $6f8a: $af
    or b                                          ; $6f8b: $b0
    xor [hl]                                      ; $6f8c: $ae
    xor e                                         ; $6f8d: $ab
    or c                                          ; $6f8e: $b1
    rrca                                          ; $6f8f: $0f
    dec c                                         ; $6f90: $0d
    dec c                                         ; $6f91: $0d
    adc [hl]                                      ; $6f92: $8e
    dec c                                         ; $6f93: $0d
    dec c                                         ; $6f94: $0d
    dec c                                         ; $6f95: $0d
    adc [hl]                                      ; $6f96: $8e
    add hl, bc                                    ; $6f97: $09
    dec c                                         ; $6f98: $0d
    dec c                                         ; $6f99: $0d
    adc [hl]                                      ; $6f9a: $8e
    dec c                                         ; $6f9b: $0d
    dec c                                         ; $6f9c: $0d
    dec c                                         ; $6f9d: $0d
    adc [hl]                                      ; $6f9e: $8e
    or d                                          ; $6f9f: $b2
    or e                                          ; $6fa0: $b3
    or h                                          ; $6fa1: $b4
    or l                                          ; $6fa2: $b5
    or [hl]                                       ; $6fa3: $b6
    xor [hl]                                      ; $6fa4: $ae
    or a                                          ; $6fa5: $b7
    cp b                                          ; $6fa6: $b8
    cp c                                          ; $6fa7: $b9
    xor e                                         ; $6fa8: $ab
    cp d                                          ; $6fa9: $ba
    cp e                                          ; $6faa: $bb
    cp h                                          ; $6fab: $bc
    xor [hl]                                      ; $6fac: $ae
    or a                                          ; $6fad: $b7
    cp l                                          ; $6fae: $bd
    adc [hl]                                      ; $6faf: $8e
    dec c                                         ; $6fb0: $0d
    dec c                                         ; $6fb1: $0d
    dec c                                         ; $6fb2: $0d
    adc [hl]                                      ; $6fb3: $8e
    dec c                                         ; $6fb4: $0d
    dec c                                         ; $6fb5: $0d
    dec c                                         ; $6fb6: $0d
    adc [hl]                                      ; $6fb7: $8e
    dec c                                         ; $6fb8: $0d
    dec c                                         ; $6fb9: $0d
    add hl, bc                                    ; $6fba: $09
    adc [hl]                                      ; $6fbb: $8e
    dec c                                         ; $6fbc: $0d
    dec c                                         ; $6fbd: $0d
    add hl, bc                                    ; $6fbe: $09
    cp [hl]                                       ; $6fbf: $be
    xor e                                         ; $6fc0: $ab
    xor [hl]                                      ; $6fc1: $ae
    cp a                                          ; $6fc2: $bf
    ret nz                                        ; $6fc3: $c0

    xor [hl]                                      ; $6fc4: $ae
    xor e                                         ; $6fc5: $ab
    pop bc                                        ; $6fc6: $c1
    jp nz, $aeab                                  ; $6fc7: $c2 $ab $ae

    jp $aec4                                      ; $6fca: $c3 $c4 $ae


    xor e                                         ; $6fcd: $ab
    xor [hl]                                      ; $6fce: $ae
    dec c                                         ; $6fcf: $0d
    dec c                                         ; $6fd0: $0d
    dec c                                         ; $6fd1: $0d
    adc [hl]                                      ; $6fd2: $8e
    add hl, bc                                    ; $6fd3: $09
    dec c                                         ; $6fd4: $0d
    dec c                                         ; $6fd5: $0d
    adc [hl]                                      ; $6fd6: $8e
    dec c                                         ; $6fd7: $0d
    dec c                                         ; $6fd8: $0d
    dec c                                         ; $6fd9: $0d
    dec c                                         ; $6fda: $0d
    rrca                                          ; $6fdb: $0f
    dec c                                         ; $6fdc: $0d
    dec c                                         ; $6fdd: $0d
    dec c                                         ; $6fde: $0d
    push bc                                       ; $6fdf: $c5
    xor e                                         ; $6fe0: $ab
    cp d                                          ; $6fe1: $ba
    add $c7                                       ; $6fe2: $c6 $c7
    xor [hl]                                      ; $6fe4: $ae
    or a                                          ; $6fe5: $b7
    ret z                                         ; $6fe6: $c8

    ret                                           ; $6fe7: $c9


    xor e                                         ; $6fe8: $ab
    cp d                                          ; $6fe9: $ba
    jp z, $aeab                                   ; $6fea: $ca $ab $ae

    or a                                          ; $6fed: $b7
    res 1, [hl]                                   ; $6fee: $cb $8e
    dec c                                         ; $6ff0: $0d
    dec c                                         ; $6ff1: $0d
    dec c                                         ; $6ff2: $0d
    adc [hl]                                      ; $6ff3: $8e
    dec c                                         ; $6ff4: $0d
    dec c                                         ; $6ff5: $0d
    rrca                                          ; $6ff6: $0f
    dec c                                         ; $6ff7: $0d
    dec c                                         ; $6ff8: $0d
    dec c                                         ; $6ff9: $0d
    dec c                                         ; $6ffa: $0d
    dec c                                         ; $6ffb: $0d
    dec c                                         ; $6ffc: $0d
    dec c                                         ; $6ffd: $0d
    dec c                                         ; $6ffe: $0d
    cp [hl]                                       ; $6fff: $be
    xor e                                         ; $7000: $ab
    xor [hl]                                      ; $7001: $ae
    cp a                                          ; $7002: $bf
    ret nz                                        ; $7003: $c0

    xor [hl]                                      ; $7004: $ae
    xor e                                         ; $7005: $ab
    pop bc                                        ; $7006: $c1
    jp nz, $aeab                                  ; $7007: $c2 $ab $ae

    jp $aec4                                      ; $700a: $c3 $c4 $ae


    xor e                                         ; $700d: $ab
    xor [hl]                                      ; $700e: $ae
    dec c                                         ; $700f: $0d
    dec c                                         ; $7010: $0d
    dec c                                         ; $7011: $0d
    adc [hl]                                      ; $7012: $8e
    add hl, bc                                    ; $7013: $09
    dec c                                         ; $7014: $0d
    dec c                                         ; $7015: $0d
    adc [hl]                                      ; $7016: $8e
    rrca                                          ; $7017: $0f
    dec c                                         ; $7018: $0d
    dec c                                         ; $7019: $0d
    dec c                                         ; $701a: $0d
    dec c                                         ; $701b: $0d
    dec c                                         ; $701c: $0d
    dec c                                         ; $701d: $0d
    dec c                                         ; $701e: $0d
    push bc                                       ; $701f: $c5
    xor e                                         ; $7020: $ab
    cp d                                          ; $7021: $ba
    add $c7                                       ; $7022: $c6 $c7
    xor [hl]                                      ; $7024: $ae
    or a                                          ; $7025: $b7
    ret z                                         ; $7026: $c8

    ret                                           ; $7027: $c9


    xor e                                         ; $7028: $ab
    cp d                                          ; $7029: $ba
    jp z, $aeab                                   ; $702a: $ca $ab $ae

    or a                                          ; $702d: $b7
    res 1, [hl]                                   ; $702e: $cb $8e
    dec c                                         ; $7030: $0d
    dec c                                         ; $7031: $0d
    dec c                                         ; $7032: $0d
    adc [hl]                                      ; $7033: $8e
    dec c                                         ; $7034: $0d
    dec c                                         ; $7035: $0d
    dec c                                         ; $7036: $0d
    dec c                                         ; $7037: $0d
    dec c                                         ; $7038: $0d
    dec c                                         ; $7039: $0d
    rrca                                          ; $703a: $0f
    dec c                                         ; $703b: $0d
    dec c                                         ; $703c: $0d
    dec c                                         ; $703d: $0d
    dec c                                         ; $703e: $0d
    inc e                                         ; $703f: $1c
    inc e                                         ; $7040: $1c
    inc e                                         ; $7041: $1c
    inc e                                         ; $7042: $1c
    ld de, $1111                                  ; $7043: $11 $11 $11
    ld de, $1e02                                  ; $7046: $11 $02 $1e
    rra                                           ; $7049: $1f
    ld bc, $20e3                                  ; $704a: $01 $e3 $20
    ld hl, $03e2                                  ; $704d: $21 $e2 $03
    inc bc                                        ; $7050: $03
    inc bc                                        ; $7051: $03
    inc bc                                        ; $7052: $03
    inc bc                                        ; $7053: $03
    inc bc                                        ; $7054: $03
    inc bc                                        ; $7055: $03
    inc bc                                        ; $7056: $03
    ld b, e                                       ; $7057: $43
    ld b, e                                       ; $7058: $43
    inc bc                                        ; $7059: $03
    ld b, e                                       ; $705a: $43
    ld b, e                                       ; $705b: $43
    ld b, e                                       ; $705c: $43
    inc bc                                        ; $705d: $03
    ld b, e                                       ; $705e: $43
    ld [hl+], a                                   ; $705f: $22
    inc hl                                        ; $7060: $23
    inc h                                         ; $7061: $24
    dec h                                         ; $7062: $25
    jr z, jr_086_708e                             ; $7063: $28 $29

    ld h, $27                                     ; $7065: $26 $27
    ld l, h                                       ; $7067: $6c
    ld l, l                                       ; $7068: $6d
    ld l, d                                       ; $7069: $6a
    ld l, e                                       ; $706a: $6b
    ld [hl], b                                    ; $706b: $70
    and b                                         ; $706c: $a0
    and c                                         ; $706d: $a1
    and d                                         ; $706e: $a2
    rlca                                          ; $706f: $07
    dec b                                         ; $7070: $05
    ld bc, $0505                                  ; $7071: $01 $05 $05
    ld bc, $0105                                  ; $7074: $01 $05 $01
    ld bc, $0705                                  ; $7077: $01 $05 $07
    dec b                                         ; $707a: $05
    dec b                                         ; $707b: $05
    rrca                                          ; $707c: $0f
    dec c                                         ; $707d: $0d
    adc [hl]                                      ; $707e: $8e
    ld [hl+], a                                   ; $707f: $22
    inc hl                                        ; $7080: $23
    inc h                                         ; $7081: $24
    ld a, [hl+]                                   ; $7082: $2a
    jr z, jr_086_70ae                             ; $7083: $28 $29

    ld h, $27                                     ; $7085: $26 $27
    ld l, h                                       ; $7087: $6c
    ld l, l                                       ; $7088: $6d
    ld l, d                                       ; $7089: $6a
    ld l, e                                       ; $708a: $6b
    and e                                         ; $708b: $a3
    and b                                         ; $708c: $a0
    and c                                         ; $708d: $a1

jr_086_708e:
    and h                                         ; $708e: $a4
    ld bc, $0505                                  ; $708f: $01 $05 $05
    ld bc, $0705                                  ; $7092: $01 $05 $07
    dec b                                         ; $7095: $05
    dec b                                         ; $7096: $05
    dec b                                         ; $7097: $05
    dec b                                         ; $7098: $05
    ld bc, $8e07                                  ; $7099: $01 $07 $8e
    dec c                                         ; $709c: $0d
    dec c                                         ; $709d: $0d
    dec c                                         ; $709e: $0d
    and l                                         ; $709f: $a5
    and [hl]                                      ; $70a0: $a6
    and a                                         ; $70a1: $a7
    xor b                                         ; $70a2: $a8
    xor c                                         ; $70a3: $a9
    xor d                                         ; $70a4: $aa
    xor e                                         ; $70a5: $ab
    xor h                                         ; $70a6: $ac
    xor l                                         ; $70a7: $ad
    xor e                                         ; $70a8: $ab
    xor [hl]                                      ; $70a9: $ae
    xor a                                         ; $70aa: $af
    or b                                          ; $70ab: $b0
    xor [hl]                                      ; $70ac: $ae
    xor e                                         ; $70ad: $ab

jr_086_70ae:
    or c                                          ; $70ae: $b1
    rrca                                          ; $70af: $0f
    dec c                                         ; $70b0: $0d
    dec c                                         ; $70b1: $0d
    adc [hl]                                      ; $70b2: $8e
    dec c                                         ; $70b3: $0d
    dec c                                         ; $70b4: $0d
    dec c                                         ; $70b5: $0d
    adc [hl]                                      ; $70b6: $8e
    dec c                                         ; $70b7: $0d
    dec c                                         ; $70b8: $0d
    dec c                                         ; $70b9: $0d
    adc [hl]                                      ; $70ba: $8e
    dec c                                         ; $70bb: $0d
    dec c                                         ; $70bc: $0d
    dec c                                         ; $70bd: $0d
    adc [hl]                                      ; $70be: $8e
    cp [hl]                                       ; $70bf: $be
    xor e                                         ; $70c0: $ab
    xor [hl]                                      ; $70c1: $ae
    cp a                                          ; $70c2: $bf
    ret nz                                        ; $70c3: $c0

    xor [hl]                                      ; $70c4: $ae
    xor e                                         ; $70c5: $ab
    pop bc                                        ; $70c6: $c1
    jp nz, $aeab                                  ; $70c7: $c2 $ab $ae

    jp $aec4                                      ; $70ca: $c3 $c4 $ae


    xor e                                         ; $70cd: $ab
    xor [hl]                                      ; $70ce: $ae
    rrca                                          ; $70cf: $0f
    dec c                                         ; $70d0: $0d
    dec c                                         ; $70d1: $0d
    adc [hl]                                      ; $70d2: $8e
    add hl, bc                                    ; $70d3: $09
    dec c                                         ; $70d4: $0d
    dec c                                         ; $70d5: $0d
    adc [hl]                                      ; $70d6: $8e
    dec c                                         ; $70d7: $0d
    dec c                                         ; $70d8: $0d
    dec c                                         ; $70d9: $0d
    dec c                                         ; $70da: $0d
    dec c                                         ; $70db: $0d
    dec c                                         ; $70dc: $0d
    dec c                                         ; $70dd: $0d
    dec c                                         ; $70de: $0d
    push bc                                       ; $70df: $c5
    xor e                                         ; $70e0: $ab
    cp d                                          ; $70e1: $ba
    add $c7                                       ; $70e2: $c6 $c7
    xor [hl]                                      ; $70e4: $ae
    or a                                          ; $70e5: $b7
    ret z                                         ; $70e6: $c8

    ret                                           ; $70e7: $c9


    xor e                                         ; $70e8: $ab
    cp d                                          ; $70e9: $ba
    jp z, $aeab                                   ; $70ea: $ca $ab $ae

    or a                                          ; $70ed: $b7
    res 1, [hl]                                   ; $70ee: $cb $8e
    dec c                                         ; $70f0: $0d
    dec c                                         ; $70f1: $0d
    add hl, bc                                    ; $70f2: $09
    adc [hl]                                      ; $70f3: $8e
    dec c                                         ; $70f4: $0d
    dec c                                         ; $70f5: $0d
    dec c                                         ; $70f6: $0d
    dec c                                         ; $70f7: $0d
    dec c                                         ; $70f8: $0d
    dec c                                         ; $70f9: $0d
    dec c                                         ; $70fa: $0d
    dec c                                         ; $70fb: $0d
    dec c                                         ; $70fc: $0d
    dec c                                         ; $70fd: $0d
    rrca                                          ; $70fe: $0f
    ld a, [bc]                                    ; $70ff: $0a
    nop                                           ; $7100: $00
    dec bc                                        ; $7101: $0b
    nop                                           ; $7102: $00
    add b                                         ; $7103: $80
    add hl, bc                                    ; $7104: $09
    pop de                                        ; $7105: $d1
    jp nc, $d4d3                                  ; $7106: $d2 $d3 $d4

    push de                                       ; $7109: $d5
    sub $d7                                       ; $710a: $d6 $d7
    ret c                                         ; $710c: $d8

    reti                                          ; $710d: $d9


    jp c, $dcdb                                   ; $710e: $da $db $dc

    db $dd                                        ; $7111: $dd
    sbc $df                                       ; $7112: $de $df
    ldh [rP1], a                                  ; $7114: $e0 $00
    add b                                         ; $7116: $80
    nop                                           ; $7117: $00
    nop                                           ; $7118: $00
    nop                                           ; $7119: $00
    nop                                           ; $711a: $00
    nop                                           ; $711b: $00
    nop                                           ; $711c: $00
    nop                                           ; $711d: $00
    nop                                           ; $711e: $00
    nop                                           ; $711f: $00
    nop                                           ; $7120: $00
    nop                                           ; $7121: $00
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    nop                                           ; $7124: $00
    pop hl                                        ; $7125: $e1
    ld [c], a                                     ; $7126: $e2
    db $e3                                        ; $7127: $e3
    db $e4                                        ; $7128: $e4
    push hl                                       ; $7129: $e5
    and $e7                                       ; $712a: $e6 $e7
    add sp, -$17                                  ; $712c: $e8 $e9
    ld [$eceb], a                                 ; $712e: $ea $eb $ec
    db $ed                                        ; $7131: $ed
    xor $ef                                       ; $7132: $ee $ef
    ldh a, [rP1]                                  ; $7134: $f0 $00
    nop                                           ; $7136: $00
    nop                                           ; $7137: $00
    nop                                           ; $7138: $00
    nop                                           ; $7139: $00
    nop                                           ; $713a: $00
    nop                                           ; $713b: $00
    nop                                           ; $713c: $00
    nop                                           ; $713d: $00
    nop                                           ; $713e: $00
    nop                                           ; $713f: $00
    nop                                           ; $7140: $00
    nop                                           ; $7141: $00
    nop                                           ; $7142: $00
    nop                                           ; $7143: $00
    nop                                           ; $7144: $00
    pop af                                        ; $7145: $f1
    pop af                                        ; $7146: $f1
    pop af                                        ; $7147: $f1
    pop af                                        ; $7148: $f1
    pop af                                        ; $7149: $f1
    pop af                                        ; $714a: $f1
    pop af                                        ; $714b: $f1
    pop af                                        ; $714c: $f1
    pop af                                        ; $714d: $f1
    pop af                                        ; $714e: $f1
    pop af                                        ; $714f: $f1
    pop af                                        ; $7150: $f1
    pop af                                        ; $7151: $f1
    pop af                                        ; $7152: $f1
    pop af                                        ; $7153: $f1
    pop af                                        ; $7154: $f1
    dec b                                         ; $7155: $05
    dec b                                         ; $7156: $05
    dec b                                         ; $7157: $05
    dec b                                         ; $7158: $05
    dec b                                         ; $7159: $05
    dec b                                         ; $715a: $05
    dec b                                         ; $715b: $05
    dec b                                         ; $715c: $05
    dec b                                         ; $715d: $05
    dec b                                         ; $715e: $05
    dec b                                         ; $715f: $05
    dec b                                         ; $7160: $05
    dec b                                         ; $7161: $05
    dec b                                         ; $7162: $05
    dec b                                         ; $7163: $05
    dec b                                         ; $7164: $05
    ld a, [c]                                     ; $7165: $f2
    ld a, [c]                                     ; $7166: $f2
    ld a, [c]                                     ; $7167: $f2
    ld a, [c]                                     ; $7168: $f2
    di                                            ; $7169: $f3
    di                                            ; $716a: $f3
    di                                            ; $716b: $f3
    di                                            ; $716c: $f3
    db $f4                                        ; $716d: $f4
    db $f4                                        ; $716e: $f4
    db $f4                                        ; $716f: $f4
    db $f4                                        ; $7170: $f4
    push af                                       ; $7171: $f5
    push af                                       ; $7172: $f5
    push af                                       ; $7173: $f5
    push af                                       ; $7174: $f5

Call_086_7175:
    ld bc, $0101                                  ; $7175: $01 $01 $01
    ld bc, $0101                                  ; $7178: $01 $01 $01
    ld bc, $0101                                  ; $717b: $01 $01 $01
    ld bc, $0101                                  ; $717e: $01 $01 $01
    ld bc, $0101                                  ; $7181: $01 $01 $01
    ld bc, $f2f2                                  ; $7184: $01 $f2 $f2
    ld a, [c]                                     ; $7187: $f2
    or $f3                                        ; $7188: $f6 $f3
    di                                            ; $718a: $f3
    di                                            ; $718b: $f3
    rst $30                                       ; $718c: $f7
    db $f4                                        ; $718d: $f4
    db $f4                                        ; $718e: $f4
    db $f4                                        ; $718f: $f4
    ld hl, sp-$0b                                 ; $7190: $f8 $f5
    push af                                       ; $7192: $f5
    push af                                       ; $7193: $f5
    ld sp, hl                                     ; $7194: $f9
    ld bc, $0101                                  ; $7195: $01 $01 $01
    ld bc, $0101                                  ; $7198: $01 $01 $01
    ld bc, $0101                                  ; $719b: $01 $01 $01
    ld bc, $0101                                  ; $719e: $01 $01 $01
    ld bc, $0101                                  ; $71a1: $01 $01 $01
    ld bc, $f1f1                                  ; $71a4: $01 $f1 $f1
    ld a, [$f1f2]                                 ; $71a7: $fa $f2 $f1
    pop af                                        ; $71aa: $f1
    ei                                            ; $71ab: $fb
    di                                            ; $71ac: $f3
    db $fc                                        ; $71ad: $fc
    db $fc                                        ; $71ae: $fc
    db $fd                                        ; $71af: $fd
    db $f4                                        ; $71b0: $f4
    cp $ff                                        ; $71b1: $fe $ff
    nop                                           ; $71b3: $00
    push af                                       ; $71b4: $f5
    dec b                                         ; $71b5: $05
    dec b                                         ; $71b6: $05
    ld bc, $0501                                  ; $71b7: $01 $01 $05
    dec b                                         ; $71ba: $05
    ld bc, $0501                                  ; $71bb: $01 $01 $05
    dec b                                         ; $71be: $05
    ld bc, $0301                                  ; $71bf: $01 $01 $03
    inc bc                                        ; $71c2: $03
    ld bc, $0101                                  ; $71c3: $01 $01 $01
    ld [bc], a                                    ; $71c6: $02
    ld bc, $0301                                  ; $71c7: $01 $01 $03
    inc b                                         ; $71ca: $04
    dec b                                         ; $71cb: $05
    ld b, $07                                     ; $71cc: $06 $07
    ld [$0a09], sp                                ; $71ce: $08 $09 $0a
    dec bc                                        ; $71d1: $0b
    inc c                                         ; $71d2: $0c
    dec bc                                        ; $71d3: $0b
    dec bc                                        ; $71d4: $0b
    ld [bc], a                                    ; $71d5: $02
    ld [bc], a                                    ; $71d6: $02
    ld [bc], a                                    ; $71d7: $02
    ld [bc], a                                    ; $71d8: $02
    nop                                           ; $71d9: $00
    ld [bc], a                                    ; $71da: $02
    nop                                           ; $71db: $00
    nop                                           ; $71dc: $00
    nop                                           ; $71dd: $00
    ld [bc], a                                    ; $71de: $02
    nop                                           ; $71df: $00
    nop                                           ; $71e0: $00
    ld [bc], a                                    ; $71e1: $02
    ld [bc], a                                    ; $71e2: $02
    ld [bc], a                                    ; $71e3: $02
    ld [bc], a                                    ; $71e4: $02
    ld [bc], a                                    ; $71e5: $02
    ld bc, $0201                                  ; $71e6: $01 $01 $02
    inc b                                         ; $71e9: $04
    dec c                                         ; $71ea: $0d
    ld c, $04                                     ; $71eb: $0e $04
    ld [$100f], sp                                ; $71ed: $08 $0f $10
    ld [$0b0c], sp                                ; $71f0: $08 $0c $0b
    dec bc                                        ; $71f3: $0b
    inc c                                         ; $71f4: $0c
    ld [bc], a                                    ; $71f5: $02
    ld [bc], a                                    ; $71f6: $02
    ld [bc], a                                    ; $71f7: $02
    ld [bc], a                                    ; $71f8: $02
    ld [bc], a                                    ; $71f9: $02
    nop                                           ; $71fa: $00
    nop                                           ; $71fb: $00
    ld [bc], a                                    ; $71fc: $02
    ld [bc], a                                    ; $71fd: $02
    nop                                           ; $71fe: $00
    nop                                           ; $71ff: $00
    ld [bc], a                                    ; $7200: $02
    ld [bc], a                                    ; $7201: $02
    ld [bc], a                                    ; $7202: $02
    ld [bc], a                                    ; $7203: $02
    ld [bc], a                                    ; $7204: $02
    ld bc, $1101                                  ; $7205: $01 $01 $11
    ld [de], a                                    ; $7208: $12
    inc de                                        ; $7209: $13
    inc d                                         ; $720a: $14
    dec d                                         ; $720b: $15
    ld d, $17                                     ; $720c: $16 $17
    jr @+$1b                                      ; $720e: $18 $19

    ld a, [de]                                    ; $7210: $1a
    dec bc                                        ; $7211: $0b
    dec bc                                        ; $7212: $0b
    dec de                                        ; $7213: $1b
    inc e                                         ; $7214: $1c
    ld [bc], a                                    ; $7215: $02
    ld [bc], a                                    ; $7216: $02
    ld [bc], a                                    ; $7217: $02
    ld [bc], a                                    ; $7218: $02
    nop                                           ; $7219: $00
    nop                                           ; $721a: $00
    ld [bc], a                                    ; $721b: $02
    ld [bc], a                                    ; $721c: $02
    nop                                           ; $721d: $00
    nop                                           ; $721e: $00
    ld [bc], a                                    ; $721f: $02
    ld [bc], a                                    ; $7220: $02
    ld [bc], a                                    ; $7221: $02
    ld [bc], a                                    ; $7222: $02
    ld [bc], a                                    ; $7223: $02
    ld [bc], a                                    ; $7224: $02
    dec e                                         ; $7225: $1d
    ld e, $1f                                     ; $7226: $1e $1f
    jr nz, jr_086_724b                            ; $7228: $20 $21

    ld hl, $2322                                  ; $722a: $21 $22 $23
    inc h                                         ; $722d: $24
    inc h                                         ; $722e: $24
    dec h                                         ; $722f: $25
    ld h, $27                                     ; $7230: $26 $27
    daa                                           ; $7232: $27
    jr z, jr_086_725e                             ; $7233: $28 $29

    inc bc                                        ; $7235: $03
    inc bc                                        ; $7236: $03
    ld [bc], a                                    ; $7237: $02
    ld [bc], a                                    ; $7238: $02
    inc bc                                        ; $7239: $03
    inc bc                                        ; $723a: $03
    ld [bc], a                                    ; $723b: $02
    ld [bc], a                                    ; $723c: $02
    inc bc                                        ; $723d: $03
    inc bc                                        ; $723e: $03
    ld [bc], a                                    ; $723f: $02
    ld [bc], a                                    ; $7240: $02
    ld bc, $0201                                  ; $7241: $01 $01 $02
    ld [bc], a                                    ; $7244: $02
    ld bc, $0201                                  ; $7245: $01 $01 $02
    ld bc, $2b2a                                  ; $7248: $01 $2a $2b

jr_086_724b:
    inc b                                         ; $724b: $04
    inc l                                         ; $724c: $2c
    dec l                                         ; $724d: $2d
    ld l, $08                                     ; $724e: $2e $08
    cpl                                           ; $7250: $2f
    dec bc                                        ; $7251: $0b
    dec bc                                        ; $7252: $0b
    inc c                                         ; $7253: $0c
    dec bc                                        ; $7254: $0b
    ld [bc], a                                    ; $7255: $02
    ld [bc], a                                    ; $7256: $02
    ld [bc], a                                    ; $7257: $02
    ld [bc], a                                    ; $7258: $02
    nop                                           ; $7259: $00
    nop                                           ; $725a: $00
    ld [bc], a                                    ; $725b: $02
    nop                                           ; $725c: $00
    nop                                           ; $725d: $00

jr_086_725e:
    nop                                           ; $725e: $00
    ld [bc], a                                    ; $725f: $02
    nop                                           ; $7260: $00
    ld [bc], a                                    ; $7261: $02
    ld [bc], a                                    ; $7262: $02
    ld [bc], a                                    ; $7263: $02
    ld [bc], a                                    ; $7264: $02
    dec e                                         ; $7265: $1d
    ld e, $30                                     ; $7266: $1e $30
    rra                                           ; $7268: $1f
    ld hl, $2121                                  ; $7269: $21 $21 $21
    ld [hl+], a                                   ; $726c: $22
    inc h                                         ; $726d: $24
    inc h                                         ; $726e: $24
    inc h                                         ; $726f: $24
    dec h                                         ; $7270: $25
    ld sp, $3227                                  ; $7271: $31 $27 $32
    inc sp                                        ; $7274: $33
    inc bc                                        ; $7275: $03
    inc bc                                        ; $7276: $03
    inc bc                                        ; $7277: $03
    ld [bc], a                                    ; $7278: $02
    inc bc                                        ; $7279: $03
    inc bc                                        ; $727a: $03
    inc bc                                        ; $727b: $03
    ld [bc], a                                    ; $727c: $02
    inc bc                                        ; $727d: $03
    inc bc                                        ; $727e: $03
    inc bc                                        ; $727f: $03
    ld [bc], a                                    ; $7280: $02
    ld bc, $0101                                  ; $7281: $01 $01 $01
    ld [bc], a                                    ; $7284: $02
    jr nz, @+$03                                  ; $7285: $20 $01

    ld de, $2334                                  ; $7287: $11 $34 $23
    pop af                                        ; $728a: $f1
    dec d                                         ; $728b: $15
    dec [hl]                                      ; $728c: $35
    ld h, $36                                     ; $728d: $26 $36
    add hl, de                                    ; $728f: $19
    scf                                           ; $7290: $37
    jr c, jr_086_72cc                             ; $7291: $38 $39

    ld a, [hl-]                                   ; $7293: $3a
    dec sp                                        ; $7294: $3b
    ld [bc], a                                    ; $7295: $02
    ld [bc], a                                    ; $7296: $02
    ld [bc], a                                    ; $7297: $02
    ld [bc], a                                    ; $7298: $02
    ld [bc], a                                    ; $7299: $02
    ld bc, $0202                                  ; $729a: $01 $02 $02
    ld [bc], a                                    ; $729d: $02
    ld bc, $0202                                  ; $729e: $01 $02 $02
    ld [bc], a                                    ; $72a1: $02
    ld [bc], a                                    ; $72a2: $02
    ld [bc], a                                    ; $72a3: $02
    ld [bc], a                                    ; $72a4: $02
    inc a                                         ; $72a5: $3c
    inc a                                         ; $72a6: $3c
    inc a                                         ; $72a7: $3c
    inc a                                         ; $72a8: $3c
    dec a                                         ; $72a9: $3d
    dec a                                         ; $72aa: $3d
    dec a                                         ; $72ab: $3d
    dec a                                         ; $72ac: $3d
    ld a, $3e                                     ; $72ad: $3e $3e
    ld a, $3e                                     ; $72af: $3e $3e
    ccf                                           ; $72b1: $3f
    ccf                                           ; $72b2: $3f
    ccf                                           ; $72b3: $3f
    ccf                                           ; $72b4: $3f
    ld [bc], a                                    ; $72b5: $02
    ld [bc], a                                    ; $72b6: $02
    ld [bc], a                                    ; $72b7: $02
    ld [bc], a                                    ; $72b8: $02
    ld [bc], a                                    ; $72b9: $02
    ld [bc], a                                    ; $72ba: $02
    ld [bc], a                                    ; $72bb: $02
    ld [bc], a                                    ; $72bc: $02
    inc bc                                        ; $72bd: $03
    inc bc                                        ; $72be: $03
    inc bc                                        ; $72bf: $03
    inc bc                                        ; $72c0: $03
    inc bc                                        ; $72c1: $03
    inc bc                                        ; $72c2: $03
    inc bc                                        ; $72c3: $03
    inc bc                                        ; $72c4: $03
    inc a                                         ; $72c5: $3c
    inc a                                         ; $72c6: $3c
    inc a                                         ; $72c7: $3c
    ld b, b                                       ; $72c8: $40
    dec a                                         ; $72c9: $3d
    dec a                                         ; $72ca: $3d
    dec a                                         ; $72cb: $3d

jr_086_72cc:
    ld b, c                                       ; $72cc: $41
    ld b, d                                       ; $72cd: $42
    ld b, e                                       ; $72ce: $43
    ld b, h                                       ; $72cf: $44
    ld b, l                                       ; $72d0: $45
    ccf                                           ; $72d1: $3f
    ccf                                           ; $72d2: $3f
    ccf                                           ; $72d3: $3f
    ccf                                           ; $72d4: $3f
    ld [bc], a                                    ; $72d5: $02
    ld [bc], a                                    ; $72d6: $02
    ld [bc], a                                    ; $72d7: $02
    ld [bc], a                                    ; $72d8: $02
    ld [bc], a                                    ; $72d9: $02
    ld [bc], a                                    ; $72da: $02
    ld [bc], a                                    ; $72db: $02
    ld [bc], a                                    ; $72dc: $02
    inc bc                                        ; $72dd: $03
    inc bc                                        ; $72de: $03
    inc bc                                        ; $72df: $03
    inc bc                                        ; $72e0: $03
    inc bc                                        ; $72e1: $03
    inc bc                                        ; $72e2: $03
    inc bc                                        ; $72e3: $03
    inc bc                                        ; $72e4: $03
    ld b, [hl]                                    ; $72e5: $46
    ld b, [hl]                                    ; $72e6: $46
    ld b, a                                       ; $72e7: $47
    inc a                                         ; $72e8: $3c
    ld c, b                                       ; $72e9: $48
    ld c, b                                       ; $72ea: $48
    ld c, c                                       ; $72eb: $49
    dec a                                         ; $72ec: $3d
    ld c, d                                       ; $72ed: $4a
    ld c, d                                       ; $72ee: $4a
    ld c, e                                       ; $72ef: $4b
    ld b, d                                       ; $72f0: $42
    ccf                                           ; $72f1: $3f
    ccf                                           ; $72f2: $3f
    ccf                                           ; $72f3: $3f
    ccf                                           ; $72f4: $3f
    ld bc, $0201                                  ; $72f5: $01 $01 $02
    ld [bc], a                                    ; $72f8: $02
    inc bc                                        ; $72f9: $03
    inc bc                                        ; $72fa: $03
    ld [bc], a                                    ; $72fb: $02
    ld [bc], a                                    ; $72fc: $02
    inc bc                                        ; $72fd: $03
    inc bc                                        ; $72fe: $03
    inc bc                                        ; $72ff: $03
    inc bc                                        ; $7300: $03
    inc bc                                        ; $7301: $03
    inc bc                                        ; $7302: $03
    inc bc                                        ; $7303: $03
    inc bc                                        ; $7304: $03
    dec e                                         ; $7305: $1d
    ld e, $30                                     ; $7306: $1e $30
    ld c, h                                       ; $7308: $4c
    cp $ff                                        ; $7309: $fe $ff
    ld c, l                                       ; $730b: $4d
    ld c, [hl]                                    ; $730c: $4e
    ld c, a                                       ; $730d: $4f
    ld d, b                                       ; $730e: $50
    ld d, c                                       ; $730f: $51
    ld d, d                                       ; $7310: $52
    ld d, e                                       ; $7311: $53
    ld d, h                                       ; $7312: $54
    ld d, l                                       ; $7313: $55
    ld d, [hl]                                    ; $7314: $56
    ld b, e                                       ; $7315: $43
    ld b, e                                       ; $7316: $43
    ld b, e                                       ; $7317: $43
    inc bc                                        ; $7318: $03
    ld b, e                                       ; $7319: $43
    ld b, e                                       ; $731a: $43
    ld b, e                                       ; $731b: $43
    inc bc                                        ; $731c: $03
    ld bc, $0101                                  ; $731d: $01 $01 $01
    ld bc, $0101                                  ; $7320: $01 $01 $01
    ld bc, $1d01                                  ; $7323: $01 $01 $1d
    ld e, $30                                     ; $7326: $1e $30
    ld c, h                                       ; $7328: $4c
    cp $ff                                        ; $7329: $fe $ff
    ld c, l                                       ; $732b: $4d
    ld c, [hl]                                    ; $732c: $4e
    ld d, a                                       ; $732d: $57
    ld e, b                                       ; $732e: $58
    ld e, c                                       ; $732f: $59
    ld e, d                                       ; $7330: $5a
    ld e, e                                       ; $7331: $5b
    ld e, h                                       ; $7332: $5c
    ld e, l                                       ; $7333: $5d
    ld e, [hl]                                    ; $7334: $5e
    ld b, e                                       ; $7335: $43
    ld b, e                                       ; $7336: $43
    ld b, e                                       ; $7337: $43
    inc bc                                        ; $7338: $03
    ld b, e                                       ; $7339: $43
    ld b, e                                       ; $733a: $43
    ld b, e                                       ; $733b: $43
    inc bc                                        ; $733c: $03
    ld bc, $0101                                  ; $733d: $01 $01 $01
    ld bc, $0101                                  ; $7340: $01 $01 $01
    ld bc, $1d01                                  ; $7343: $01 $01 $1d
    ld e, $30                                     ; $7346: $1e $30
    ld c, h                                       ; $7348: $4c
    cp $ff                                        ; $7349: $fe $ff
    ld c, l                                       ; $734b: $4d
    ld c, [hl]                                    ; $734c: $4e
    ld e, a                                       ; $734d: $5f
    ld h, b                                       ; $734e: $60
    ld c, a                                       ; $734f: $4f
    ld d, b                                       ; $7350: $50
    ld h, c                                       ; $7351: $61
    ld h, d                                       ; $7352: $62
    ld d, e                                       ; $7353: $53
    ld d, h                                       ; $7354: $54
    ld b, e                                       ; $7355: $43
    ld b, e                                       ; $7356: $43
    ld b, e                                       ; $7357: $43
    inc bc                                        ; $7358: $03
    ld b, e                                       ; $7359: $43
    ld b, e                                       ; $735a: $43
    ld b, e                                       ; $735b: $43
    inc bc                                        ; $735c: $03
    ld bc, $0101                                  ; $735d: $01 $01 $01
    ld bc, $0101                                  ; $7360: $01 $01 $01
    ld bc, $1d01                                  ; $7363: $01 $01 $1d
    ld e, $30                                     ; $7366: $1e $30
    ld c, h                                       ; $7368: $4c
    cp $ff                                        ; $7369: $fe $ff
    ld c, l                                       ; $736b: $4d
    ld c, [hl]                                    ; $736c: $4e
    ld d, c                                       ; $736d: $51
    ld d, d                                       ; $736e: $52
    ld d, a                                       ; $736f: $57
    ld e, b                                       ; $7370: $58
    ld d, l                                       ; $7371: $55
    ld d, [hl]                                    ; $7372: $56
    ld e, e                                       ; $7373: $5b
    ld e, h                                       ; $7374: $5c
    ld b, e                                       ; $7375: $43
    ld b, e                                       ; $7376: $43
    ld b, e                                       ; $7377: $43
    inc bc                                        ; $7378: $03
    ld b, e                                       ; $7379: $43
    ld b, e                                       ; $737a: $43
    ld b, e                                       ; $737b: $43
    inc bc                                        ; $737c: $03
    ld bc, $0101                                  ; $737d: $01 $01 $01
    ld bc, $0101                                  ; $7380: $01 $01 $01
    ld bc, $6301                                  ; $7383: $01 $01 $63
    ld h, h                                       ; $7386: $64
    ld h, l                                       ; $7387: $65
    ld h, [hl]                                    ; $7388: $66
    ld h, a                                       ; $7389: $67
    ld l, b                                       ; $738a: $68
    ld l, c                                       ; $738b: $69
    ld l, d                                       ; $738c: $6a
    ld l, e                                       ; $738d: $6b
    ld l, h                                       ; $738e: $6c
    ld l, l                                       ; $738f: $6d
    ld l, [hl]                                    ; $7390: $6e
    ld l, a                                       ; $7391: $6f
    ld [hl], b                                    ; $7392: $70
    ld [hl], c                                    ; $7393: $71
    ld [hl], d                                    ; $7394: $72
    inc bc                                        ; $7395: $03
    inc bc                                        ; $7396: $03
    dec b                                         ; $7397: $05
    dec b                                         ; $7398: $05
    dec b                                         ; $7399: $05
    dec b                                         ; $739a: $05
    dec b                                         ; $739b: $05
    inc bc                                        ; $739c: $03
    dec b                                         ; $739d: $05
    inc bc                                        ; $739e: $03
    dec b                                         ; $739f: $05
    dec b                                         ; $73a0: $05
    dec b                                         ; $73a1: $05
    inc bc                                        ; $73a2: $03
    inc bc                                        ; $73a3: $03
    dec b                                         ; $73a4: $05
    ld h, e                                       ; $73a5: $63
    ld h, h                                       ; $73a6: $64
    ld h, l                                       ; $73a7: $65
    ld h, [hl]                                    ; $73a8: $66
    ld h, a                                       ; $73a9: $67
    ld l, b                                       ; $73aa: $68
    ld l, c                                       ; $73ab: $69
    ld l, d                                       ; $73ac: $6a
    ld l, e                                       ; $73ad: $6b
    ld [hl], e                                    ; $73ae: $73
    ld [hl], h                                    ; $73af: $74
    ld l, [hl]                                    ; $73b0: $6e
    ld l, a                                       ; $73b1: $6f
    ld [hl], l                                    ; $73b2: $75
    ld [hl], c                                    ; $73b3: $71
    ld [hl], d                                    ; $73b4: $72
    dec b                                         ; $73b5: $05
    inc bc                                        ; $73b6: $03
    inc bc                                        ; $73b7: $03
    dec b                                         ; $73b8: $05
    inc bc                                        ; $73b9: $03
    dec b                                         ; $73ba: $05
    dec b                                         ; $73bb: $05
    dec b                                         ; $73bc: $05
    dec b                                         ; $73bd: $05
    dec b                                         ; $73be: $05
    inc bc                                        ; $73bf: $03
    dec b                                         ; $73c0: $05
    inc bc                                        ; $73c1: $03
    dec b                                         ; $73c2: $05
    dec b                                         ; $73c3: $05
    dec b                                         ; $73c4: $05
    ld h, e                                       ; $73c5: $63
    ld h, h                                       ; $73c6: $64
    ld h, l                                       ; $73c7: $65
    ld h, [hl]                                    ; $73c8: $66
    ld h, a                                       ; $73c9: $67
    halt                                          ; $73ca: $76
    ld l, c                                       ; $73cb: $69
    ld l, d                                       ; $73cc: $6a
    ld l, e                                       ; $73cd: $6b
    ld [hl], a                                    ; $73ce: $77
    ld [hl], h                                    ; $73cf: $74
    ld l, [hl]                                    ; $73d0: $6e
    ld l, a                                       ; $73d1: $6f
    ld [hl], l                                    ; $73d2: $75
    ld [hl], c                                    ; $73d3: $71
    ld [hl], d                                    ; $73d4: $72
    inc bc                                        ; $73d5: $03
    dec b                                         ; $73d6: $05
    inc bc                                        ; $73d7: $03
    dec b                                         ; $73d8: $05
    dec b                                         ; $73d9: $05
    inc bc                                        ; $73da: $03
    dec b                                         ; $73db: $05
    dec b                                         ; $73dc: $05
    dec b                                         ; $73dd: $05
    dec b                                         ; $73de: $05
    inc bc                                        ; $73df: $03
    dec b                                         ; $73e0: $05
    dec b                                         ; $73e1: $05
    inc bc                                        ; $73e2: $03
    dec b                                         ; $73e3: $05
    dec b                                         ; $73e4: $05
    ld h, e                                       ; $73e5: $63
    ld h, h                                       ; $73e6: $64
    ld h, l                                       ; $73e7: $65
    ld h, [hl]                                    ; $73e8: $66
    ld h, a                                       ; $73e9: $67
    ld l, b                                       ; $73ea: $68
    ld l, c                                       ; $73eb: $69
    ld l, d                                       ; $73ec: $6a
    ld a, b                                       ; $73ed: $78
    ld a, c                                       ; $73ee: $79
    ld a, d                                       ; $73ef: $7a
    ld a, e                                       ; $73f0: $7b
    ld a, h                                       ; $73f1: $7c
    ld a, l                                       ; $73f2: $7d
    ld a, [hl]                                    ; $73f3: $7e
    ld a, a                                       ; $73f4: $7f
    dec b                                         ; $73f5: $05
    dec b                                         ; $73f6: $05
    inc bc                                        ; $73f7: $03
    dec b                                         ; $73f8: $05
    inc bc                                        ; $73f9: $03
    dec b                                         ; $73fa: $05
    dec b                                         ; $73fb: $05
    dec b                                         ; $73fc: $05
    dec b                                         ; $73fd: $05
    inc bc                                        ; $73fe: $03
    dec b                                         ; $73ff: $05
    dec b                                         ; $7400: $05
    dec b                                         ; $7401: $05
    dec b                                         ; $7402: $05
    dec b                                         ; $7403: $05
    dec b                                         ; $7404: $05
    add b                                         ; $7405: $80
    add c                                         ; $7406: $81
    add d                                         ; $7407: $82
    add e                                         ; $7408: $83
    add h                                         ; $7409: $84
    add l                                         ; $740a: $85
    add [hl]                                      ; $740b: $86
    add a                                         ; $740c: $87
    adc b                                         ; $740d: $88
    adc c                                         ; $740e: $89
    adc d                                         ; $740f: $8a
    adc e                                         ; $7410: $8b
    adc h                                         ; $7411: $8c
    adc l                                         ; $7412: $8d
    adc [hl]                                      ; $7413: $8e
    adc a                                         ; $7414: $8f
    dec c                                         ; $7415: $0d
    dec c                                         ; $7416: $0d
    dec c                                         ; $7417: $0d
    dec c                                         ; $7418: $0d
    dec bc                                        ; $7419: $0b
    dec c                                         ; $741a: $0d
    dec c                                         ; $741b: $0d
    dec bc                                        ; $741c: $0b
    dec c                                         ; $741d: $0d
    dec c                                         ; $741e: $0d
    dec bc                                        ; $741f: $0b
    dec c                                         ; $7420: $0d
    dec bc                                        ; $7421: $0b
    dec c                                         ; $7422: $0d
    dec c                                         ; $7423: $0d
    dec c                                         ; $7424: $0d
    sub b                                         ; $7425: $90
    sub c                                         ; $7426: $91
    add d                                         ; $7427: $82
    add e                                         ; $7428: $83
    sub d                                         ; $7429: $92
    sub e                                         ; $742a: $93
    add [hl]                                      ; $742b: $86
    sub h                                         ; $742c: $94
    adc b                                         ; $742d: $88
    adc c                                         ; $742e: $89
    sub l                                         ; $742f: $95
    sub [hl]                                      ; $7430: $96
    adc h                                         ; $7431: $8c
    adc l                                         ; $7432: $8d
    sub a                                         ; $7433: $97
    sbc b                                         ; $7434: $98
    dec bc                                        ; $7435: $0b
    dec bc                                        ; $7436: $0b
    dec c                                         ; $7437: $0d
    dec c                                         ; $7438: $0d
    dec bc                                        ; $7439: $0b
    add hl, bc                                    ; $743a: $09
    dec bc                                        ; $743b: $0b
    dec c                                         ; $743c: $0d
    dec c                                         ; $743d: $0d
    dec c                                         ; $743e: $0d
    dec bc                                        ; $743f: $0b
    dec c                                         ; $7440: $0d
    dec c                                         ; $7441: $0d
    dec c                                         ; $7442: $0d
    dec c                                         ; $7443: $0d
    dec c                                         ; $7444: $0d
    add b                                         ; $7445: $80
    add c                                         ; $7446: $81
    add d                                         ; $7447: $82
    add e                                         ; $7448: $83
    add h                                         ; $7449: $84
    add l                                         ; $744a: $85
    add [hl]                                      ; $744b: $86
    add a                                         ; $744c: $87
    adc b                                         ; $744d: $88
    adc c                                         ; $744e: $89
    sub l                                         ; $744f: $95
    sub [hl]                                      ; $7450: $96
    adc h                                         ; $7451: $8c
    adc l                                         ; $7452: $8d
    sub a                                         ; $7453: $97
    sbc b                                         ; $7454: $98
    dec bc                                        ; $7455: $0b
    dec c                                         ; $7456: $0d
    dec c                                         ; $7457: $0d
    dec c                                         ; $7458: $0d
    dec c                                         ; $7459: $0d
    dec bc                                        ; $745a: $0b
    dec c                                         ; $745b: $0d
    dec bc                                        ; $745c: $0b
    dec c                                         ; $745d: $0d
    dec c                                         ; $745e: $0d
    dec bc                                        ; $745f: $0b
    dec c                                         ; $7460: $0d
    dec bc                                        ; $7461: $0b
    dec bc                                        ; $7462: $0b
    dec c                                         ; $7463: $0d
    dec c                                         ; $7464: $0d
    sbc c                                         ; $7465: $99
    sbc d                                         ; $7466: $9a
    sbc e                                         ; $7467: $9b
    sbc h                                         ; $7468: $9c
    sbc l                                         ; $7469: $9d
    sbc [hl]                                      ; $746a: $9e
    sbc a                                         ; $746b: $9f
    and b                                         ; $746c: $a0
    and c                                         ; $746d: $a1
    and d                                         ; $746e: $a2
    and e                                         ; $746f: $a3
    and h                                         ; $7470: $a4
    and l                                         ; $7471: $a5
    and [hl]                                      ; $7472: $a6
    and a                                         ; $7473: $a7
    xor b                                         ; $7474: $a8
    dec c                                         ; $7475: $0d
    dec c                                         ; $7476: $0d
    dec c                                         ; $7477: $0d
    dec c                                         ; $7478: $0d
    dec c                                         ; $7479: $0d
    dec c                                         ; $747a: $0d
    dec c                                         ; $747b: $0d
    dec c                                         ; $747c: $0d
    dec c                                         ; $747d: $0d
    dec c                                         ; $747e: $0d
    dec c                                         ; $747f: $0d
    dec c                                         ; $7480: $0d
    dec c                                         ; $7481: $0d
    dec c                                         ; $7482: $0d
    dec c                                         ; $7483: $0d
    dec c                                         ; $7484: $0d
    inc a                                         ; $7485: $3c
    inc a                                         ; $7486: $3c
    inc a                                         ; $7487: $3c
    inc a                                         ; $7488: $3c
    dec a                                         ; $7489: $3d
    dec a                                         ; $748a: $3d
    dec a                                         ; $748b: $3d
    dec a                                         ; $748c: $3d
    ld b, e                                       ; $748d: $43
    ld b, h                                       ; $748e: $44
    xor c                                         ; $748f: $a9
    ld a, $3f                                     ; $7490: $3e $3f
    ccf                                           ; $7492: $3f
    ccf                                           ; $7493: $3f
    ccf                                           ; $7494: $3f
    ld [bc], a                                    ; $7495: $02
    ld [bc], a                                    ; $7496: $02
    ld [bc], a                                    ; $7497: $02
    ld [bc], a                                    ; $7498: $02
    ld [bc], a                                    ; $7499: $02
    ld [bc], a                                    ; $749a: $02
    ld [bc], a                                    ; $749b: $02
    ld [bc], a                                    ; $749c: $02
    inc bc                                        ; $749d: $03
    inc bc                                        ; $749e: $03
    dec bc                                        ; $749f: $0b
    inc bc                                        ; $74a0: $03
    inc bc                                        ; $74a1: $03
    inc bc                                        ; $74a2: $03
    inc bc                                        ; $74a3: $03
    inc bc                                        ; $74a4: $03
    inc a                                         ; $74a5: $3c
    inc a                                         ; $74a6: $3c
    inc a                                         ; $74a7: $3c
    ld b, b                                       ; $74a8: $40
    dec a                                         ; $74a9: $3d
    dec a                                         ; $74aa: $3d
    dec a                                         ; $74ab: $3d
    ld b, c                                       ; $74ac: $41
    ld b, d                                       ; $74ad: $42
    ld b, e                                       ; $74ae: $43
    ld b, h                                       ; $74af: $44
    ld b, l                                       ; $74b0: $45
    ccf                                           ; $74b1: $3f
    ccf                                           ; $74b2: $3f
    ccf                                           ; $74b3: $3f
    xor d                                         ; $74b4: $aa
    ld [bc], a                                    ; $74b5: $02
    ld [bc], a                                    ; $74b6: $02
    ld [bc], a                                    ; $74b7: $02
    ld [bc], a                                    ; $74b8: $02
    ld [bc], a                                    ; $74b9: $02
    ld [bc], a                                    ; $74ba: $02
    ld [bc], a                                    ; $74bb: $02
    ld [bc], a                                    ; $74bc: $02
    inc bc                                        ; $74bd: $03
    inc bc                                        ; $74be: $03
    inc bc                                        ; $74bf: $03
    inc bc                                        ; $74c0: $03
    inc bc                                        ; $74c1: $03
    inc bc                                        ; $74c2: $03
    inc bc                                        ; $74c3: $03
    dec bc                                        ; $74c4: $0b
    dec e                                         ; $74c5: $1d
    ld e, $30                                     ; $74c6: $1e $30
    ld c, h                                       ; $74c8: $4c
    cp $ff                                        ; $74c9: $fe $ff
    ld c, l                                       ; $74cb: $4d
    ld c, [hl]                                    ; $74cc: $4e
    ld e, c                                       ; $74cd: $59
    ld e, d                                       ; $74ce: $5a
    ld e, a                                       ; $74cf: $5f
    ld h, b                                       ; $74d0: $60
    ld e, l                                       ; $74d1: $5d
    ld e, [hl]                                    ; $74d2: $5e
    ld h, c                                       ; $74d3: $61
    ld h, d                                       ; $74d4: $62
    ld b, e                                       ; $74d5: $43
    ld b, e                                       ; $74d6: $43
    ld b, e                                       ; $74d7: $43
    inc bc                                        ; $74d8: $03
    ld b, e                                       ; $74d9: $43
    ld b, e                                       ; $74da: $43
    ld b, e                                       ; $74db: $43
    inc bc                                        ; $74dc: $03
    ld bc, $0101                                  ; $74dd: $01 $01 $01
    ld bc, $0101                                  ; $74e0: $01 $01 $01
    ld bc, $1d01                                  ; $74e3: $01 $01 $1d
    ld e, $30                                     ; $74e6: $1e $30
    xor e                                         ; $74e8: $ab
    cp $ff                                        ; $74e9: $fe $ff
    ld c, l                                       ; $74eb: $4d
    xor h                                         ; $74ec: $ac
    ld e, a                                       ; $74ed: $5f
    ld h, b                                       ; $74ee: $60
    ld c, a                                       ; $74ef: $4f
    ld d, b                                       ; $74f0: $50
    ld h, c                                       ; $74f1: $61
    ld h, d                                       ; $74f2: $62
    ld d, e                                       ; $74f3: $53
    ld d, h                                       ; $74f4: $54
    ld b, e                                       ; $74f5: $43
    ld b, e                                       ; $74f6: $43
    ld b, e                                       ; $74f7: $43
    dec bc                                        ; $74f8: $0b
    ld b, e                                       ; $74f9: $43
    ld b, e                                       ; $74fa: $43
    ld b, e                                       ; $74fb: $43
    dec bc                                        ; $74fc: $0b
    ld bc, $0101                                  ; $74fd: $01 $01 $01
    ld bc, $0101                                  ; $7500: $01 $01 $01
    ld bc, $6301                                  ; $7503: $01 $01 $63
    ld h, h                                       ; $7506: $64
    ld h, l                                       ; $7507: $65
    ld h, [hl]                                    ; $7508: $66
    ld h, a                                       ; $7509: $67
    ld l, b                                       ; $750a: $68
    ld l, c                                       ; $750b: $69
    ld l, d                                       ; $750c: $6a
    ld l, e                                       ; $750d: $6b
    ld [hl], e                                    ; $750e: $73
    ld [hl], h                                    ; $750f: $74
    ld l, [hl]                                    ; $7510: $6e
    ld l, a                                       ; $7511: $6f
    ld [hl], l                                    ; $7512: $75
    ld [hl], c                                    ; $7513: $71
    ld [hl], d                                    ; $7514: $72
    dec b                                         ; $7515: $05
    inc bc                                        ; $7516: $03
    inc bc                                        ; $7517: $03
    dec b                                         ; $7518: $05
    dec b                                         ; $7519: $05
    dec b                                         ; $751a: $05
    dec b                                         ; $751b: $05
    inc bc                                        ; $751c: $03
    inc bc                                        ; $751d: $03
    dec b                                         ; $751e: $05
    dec b                                         ; $751f: $05
    inc bc                                        ; $7520: $03
    dec b                                         ; $7521: $05
    inc bc                                        ; $7522: $03
    dec b                                         ; $7523: $05
    dec b                                         ; $7524: $05
    ld h, e                                       ; $7525: $63
    ld h, h                                       ; $7526: $64
    ld h, l                                       ; $7527: $65
    ld h, [hl]                                    ; $7528: $66
    xor l                                         ; $7529: $ad
    ld l, b                                       ; $752a: $68
    ld l, c                                       ; $752b: $69
    ld l, d                                       ; $752c: $6a
    xor [hl]                                      ; $752d: $ae
    ld [hl], e                                    ; $752e: $73
    ld [hl], h                                    ; $752f: $74
    ld l, [hl]                                    ; $7530: $6e
    ld l, a                                       ; $7531: $6f
    ld [hl], l                                    ; $7532: $75
    ld [hl], c                                    ; $7533: $71
    ld [hl], d                                    ; $7534: $72
    dec b                                         ; $7535: $05
    dec b                                         ; $7536: $05
    dec b                                         ; $7537: $05
    inc bc                                        ; $7538: $03
    dec c                                         ; $7539: $0d
    dec b                                         ; $753a: $05
    dec b                                         ; $753b: $05
    dec b                                         ; $753c: $05
    dec bc                                        ; $753d: $0b
    dec b                                         ; $753e: $05
    inc bc                                        ; $753f: $03
    dec b                                         ; $7540: $05
    dec b                                         ; $7541: $05
    dec b                                         ; $7542: $05
    dec b                                         ; $7543: $05
    inc bc                                        ; $7544: $03
    ld h, e                                       ; $7545: $63
    ld h, h                                       ; $7546: $64
    ld h, l                                       ; $7547: $65
    ld h, [hl]                                    ; $7548: $66
    ld h, a                                       ; $7549: $67
    ld l, b                                       ; $754a: $68
    ld l, c                                       ; $754b: $69
    ld l, d                                       ; $754c: $6a
    ld l, e                                       ; $754d: $6b
    ld [hl], e                                    ; $754e: $73
    ld [hl], h                                    ; $754f: $74
    ld l, [hl]                                    ; $7550: $6e
    ld l, a                                       ; $7551: $6f
    ld [hl], l                                    ; $7552: $75
    ld [hl], c                                    ; $7553: $71
    ld [hl], d                                    ; $7554: $72
    dec b                                         ; $7555: $05
    dec b                                         ; $7556: $05
    inc bc                                        ; $7557: $03
    dec b                                         ; $7558: $05
    dec b                                         ; $7559: $05
    inc bc                                        ; $755a: $03
    dec b                                         ; $755b: $05
    dec b                                         ; $755c: $05
    dec b                                         ; $755d: $05
    dec b                                         ; $755e: $05
    dec b                                         ; $755f: $05
    dec b                                         ; $7560: $05
    dec b                                         ; $7561: $05
    dec b                                         ; $7562: $05
    inc bc                                        ; $7563: $03
    dec b                                         ; $7564: $05
    ld h, e                                       ; $7565: $63
    ld h, h                                       ; $7566: $64
    ld h, l                                       ; $7567: $65
    ld h, [hl]                                    ; $7568: $66
    ld h, a                                       ; $7569: $67
    ld l, b                                       ; $756a: $68
    ld l, c                                       ; $756b: $69
    ld l, d                                       ; $756c: $6a
    ld l, e                                       ; $756d: $6b
    ld [hl], e                                    ; $756e: $73
    xor a                                         ; $756f: $af
    or b                                          ; $7570: $b0
    ld l, a                                       ; $7571: $6f
    ld [hl], l                                    ; $7572: $75
    ld [hl], c                                    ; $7573: $71
    ld [hl], d                                    ; $7574: $72
    inc bc                                        ; $7575: $03
    inc bc                                        ; $7576: $03
    dec b                                         ; $7577: $05
    dec b                                         ; $7578: $05
    dec b                                         ; $7579: $05
    inc bc                                        ; $757a: $03
    dec b                                         ; $757b: $05
    inc bc                                        ; $757c: $03
    inc bc                                        ; $757d: $03
    inc bc                                        ; $757e: $03
    dec c                                         ; $757f: $0d
    dec c                                         ; $7580: $0d
    dec b                                         ; $7581: $05
    dec b                                         ; $7582: $05
    dec b                                         ; $7583: $05
    dec b                                         ; $7584: $05
    add b                                         ; $7585: $80
    add c                                         ; $7586: $81
    add d                                         ; $7587: $82
    add e                                         ; $7588: $83
    add h                                         ; $7589: $84
    add l                                         ; $758a: $85
    add [hl]                                      ; $758b: $86
    add a                                         ; $758c: $87
    adc b                                         ; $758d: $88
    adc c                                         ; $758e: $89
    sub l                                         ; $758f: $95
    sub [hl]                                      ; $7590: $96
    adc h                                         ; $7591: $8c
    adc l                                         ; $7592: $8d
    sub a                                         ; $7593: $97
    or c                                          ; $7594: $b1
    dec c                                         ; $7595: $0d
    dec c                                         ; $7596: $0d
    dec c                                         ; $7597: $0d
    dec bc                                        ; $7598: $0b
    dec bc                                        ; $7599: $0b
    dec c                                         ; $759a: $0d
    dec bc                                        ; $759b: $0b
    dec c                                         ; $759c: $0d
    dec c                                         ; $759d: $0d
    dec c                                         ; $759e: $0d
    dec c                                         ; $759f: $0d
    dec c                                         ; $75a0: $0d
    dec c                                         ; $75a1: $0d
    dec c                                         ; $75a2: $0d
    dec bc                                        ; $75a3: $0b
    dec bc                                        ; $75a4: $0b
    add b                                         ; $75a5: $80
    add c                                         ; $75a6: $81
    add d                                         ; $75a7: $82
    add e                                         ; $75a8: $83
    add h                                         ; $75a9: $84
    or d                                          ; $75aa: $b2
    add [hl]                                      ; $75ab: $86
    add a                                         ; $75ac: $87
    adc b                                         ; $75ad: $88
    or e                                          ; $75ae: $b3
    sub l                                         ; $75af: $95
    sub [hl]                                      ; $75b0: $96
    adc h                                         ; $75b1: $8c
    adc l                                         ; $75b2: $8d
    sub a                                         ; $75b3: $97
    sbc b                                         ; $75b4: $98
    dec c                                         ; $75b5: $0d
    dec bc                                        ; $75b6: $0b
    dec c                                         ; $75b7: $0d
    dec c                                         ; $75b8: $0d
    dec bc                                        ; $75b9: $0b
    dec c                                         ; $75ba: $0d
    dec c                                         ; $75bb: $0d
    dec bc                                        ; $75bc: $0b
    dec c                                         ; $75bd: $0d
    dec c                                         ; $75be: $0d
    dec bc                                        ; $75bf: $0b
    dec c                                         ; $75c0: $0d
    dec c                                         ; $75c1: $0d
    dec c                                         ; $75c2: $0d
    dec c                                         ; $75c3: $0d
    dec c                                         ; $75c4: $0d
    add b                                         ; $75c5: $80
    or h                                          ; $75c6: $b4
    add d                                         ; $75c7: $82
    add e                                         ; $75c8: $83
    add h                                         ; $75c9: $84
    or l                                          ; $75ca: $b5
    add [hl]                                      ; $75cb: $86
    add a                                         ; $75cc: $87
    adc b                                         ; $75cd: $88
    adc c                                         ; $75ce: $89
    sub l                                         ; $75cf: $95
    sub [hl]                                      ; $75d0: $96

Jump_086_75d1:
    adc h                                         ; $75d1: $8c
    adc l                                         ; $75d2: $8d
    or [hl]                                       ; $75d3: $b6
    or a                                          ; $75d4: $b7
    dec c                                         ; $75d5: $0d
    dec c                                         ; $75d6: $0d
    dec c                                         ; $75d7: $0d
    dec c                                         ; $75d8: $0d
    dec c                                         ; $75d9: $0d
    dec bc                                        ; $75da: $0b
    dec c                                         ; $75db: $0d
    dec c                                         ; $75dc: $0d
    dec c                                         ; $75dd: $0d
    dec c                                         ; $75de: $0d
    dec c                                         ; $75df: $0d
    dec c                                         ; $75e0: $0d
    dec c                                         ; $75e1: $0d
    dec c                                         ; $75e2: $0d
    dec bc                                        ; $75e3: $0b
    dec c                                         ; $75e4: $0d
    add b                                         ; $75e5: $80
    add c                                         ; $75e6: $81
    add d                                         ; $75e7: $82
    add e                                         ; $75e8: $83
    add h                                         ; $75e9: $84
    add l                                         ; $75ea: $85
    add [hl]                                      ; $75eb: $86
    add a                                         ; $75ec: $87
    adc b                                         ; $75ed: $88
    adc c                                         ; $75ee: $89
    sub l                                         ; $75ef: $95
    sub [hl]                                      ; $75f0: $96
    cp b                                          ; $75f1: $b8
    cp c                                          ; $75f2: $b9
    cp d                                          ; $75f3: $ba
    sbc b                                         ; $75f4: $98
    dec c                                         ; $75f5: $0d
    dec bc                                        ; $75f6: $0b
    dec c                                         ; $75f7: $0d
    dec bc                                        ; $75f8: $0b
    dec bc                                        ; $75f9: $0b
    dec c                                         ; $75fa: $0d
    dec c                                         ; $75fb: $0d
    dec c                                         ; $75fc: $0d
    dec c                                         ; $75fd: $0d
    dec c                                         ; $75fe: $0d
    dec bc                                        ; $75ff: $0b
    dec c                                         ; $7600: $0d
    dec c                                         ; $7601: $0d
    dec bc                                        ; $7602: $0b
    dec c                                         ; $7603: $0d
    dec bc                                        ; $7604: $0b
    cp e                                          ; $7605: $bb
    ld b, [hl]                                    ; $7606: $46
    cp h                                          ; $7607: $bc
    cp l                                          ; $7608: $bd
    cp [hl]                                       ; $7609: $be
    cp a                                          ; $760a: $bf
    ret nz                                        ; $760b: $c0

    pop bc                                        ; $760c: $c1
    cp [hl]                                       ; $760d: $be
    cp a                                          ; $760e: $bf
    jp nz, $bec3                                  ; $760f: $c2 $c3 $be

    cp a                                          ; $7612: $bf
    call nz, $093f                                ; $7613: $c4 $3f $09
    ld bc, $0a09                                  ; $7616: $01 $09 $0a
    add hl, bc                                    ; $7619: $09
    add hl, bc                                    ; $761a: $09
    add hl, bc                                    ; $761b: $09
    ld a, [bc]                                    ; $761c: $0a
    dec bc                                        ; $761d: $0b
    dec bc                                        ; $761e: $0b
    dec bc                                        ; $761f: $0b
    dec bc                                        ; $7620: $0b
    dec bc                                        ; $7621: $0b
    dec bc                                        ; $7622: $0b
    dec bc                                        ; $7623: $0b
    inc bc                                        ; $7624: $03
    push bc                                       ; $7625: $c5
    add $c7                                       ; $7626: $c6 $c7
    ret z                                         ; $7628: $c8

    ret                                           ; $7629: $c9


    jp z, $cccb                                   ; $762a: $ca $cb $cc

    call $cfce                                    ; $762d: $cd $ce $cf
    ret nc                                        ; $7630: $d0

    ccf                                           ; $7631: $3f
    ccf                                           ; $7632: $3f
    ccf                                           ; $7633: $3f
    ccf                                           ; $7634: $3f
    inc c                                         ; $7635: $0c
    inc c                                         ; $7636: $0c
    inc c                                         ; $7637: $0c
    ld a, [bc]                                    ; $7638: $0a
    ld a, [bc]                                    ; $7639: $0a
    ld a, [bc]                                    ; $763a: $0a
    ld a, [bc]                                    ; $763b: $0a
    ld a, [bc]                                    ; $763c: $0a
    dec bc                                        ; $763d: $0b
    dec bc                                        ; $763e: $0b
    dec bc                                        ; $763f: $0b
    dec bc                                        ; $7640: $0b
    inc bc                                        ; $7641: $03
    inc bc                                        ; $7642: $03
    inc bc                                        ; $7643: $03
    inc bc                                        ; $7644: $03
    cp [hl]                                       ; $7645: $be
    cp a                                          ; $7646: $bf
    call nz, $d14c                                ; $7647: $c4 $4c $d1
    jp nc, $4ed3                                  ; $764a: $d2 $d3 $4e

    ld d, c                                       ; $764d: $51
    ld d, d                                       ; $764e: $52
    ld d, a                                       ; $764f: $57
    ld e, b                                       ; $7650: $58
    ld d, l                                       ; $7651: $55
    ld d, [hl]                                    ; $7652: $56
    ld e, e                                       ; $7653: $5b
    ld e, h                                       ; $7654: $5c
    dec bc                                        ; $7655: $0b
    dec bc                                        ; $7656: $0b
    dec bc                                        ; $7657: $0b
    inc bc                                        ; $7658: $03
    dec bc                                        ; $7659: $0b
    dec bc                                        ; $765a: $0b
    dec bc                                        ; $765b: $0b
    inc bc                                        ; $765c: $03
    ld bc, $0101                                  ; $765d: $01 $01 $01
    ld bc, $0101                                  ; $7660: $01 $01 $01
    ld bc, $6301                                  ; $7663: $01 $01 $63
    ld h, h                                       ; $7666: $64
    ld h, l                                       ; $7667: $65
    ld h, [hl]                                    ; $7668: $66
    ld h, a                                       ; $7669: $67
    ld l, b                                       ; $766a: $68
    ld l, c                                       ; $766b: $69
    ld l, d                                       ; $766c: $6a
    ld l, e                                       ; $766d: $6b
    ld [hl], e                                    ; $766e: $73
    ld [hl], h                                    ; $766f: $74
    ld l, [hl]                                    ; $7670: $6e
    ld l, a                                       ; $7671: $6f
    ld [hl], l                                    ; $7672: $75
    ld [hl], c                                    ; $7673: $71
    ld [hl], d                                    ; $7674: $72
    dec b                                         ; $7675: $05
    dec b                                         ; $7676: $05
    inc bc                                        ; $7677: $03
    dec b                                         ; $7678: $05
    dec b                                         ; $7679: $05
    dec b                                         ; $767a: $05
    dec b                                         ; $767b: $05
    dec b                                         ; $767c: $05
    inc bc                                        ; $767d: $03
    dec b                                         ; $767e: $05
    dec b                                         ; $767f: $05
    inc bc                                        ; $7680: $03
    dec b                                         ; $7681: $05
    dec b                                         ; $7682: $05
    dec b                                         ; $7683: $05
    dec b                                         ; $7684: $05
    ld h, e                                       ; $7685: $63
    ld h, h                                       ; $7686: $64
    ld h, l                                       ; $7687: $65
    ld h, [hl]                                    ; $7688: $66
    ld h, a                                       ; $7689: $67
    ld l, b                                       ; $768a: $68
    ld l, c                                       ; $768b: $69
    ld l, d                                       ; $768c: $6a
    ld l, e                                       ; $768d: $6b
    ld [hl], e                                    ; $768e: $73
    ld [hl], h                                    ; $768f: $74
    ld l, [hl]                                    ; $7690: $6e
    call nc, Call_086_7175                        ; $7691: $d4 $75 $71
    ld [hl], d                                    ; $7694: $72
    dec b                                         ; $7695: $05
    dec b                                         ; $7696: $05
    inc bc                                        ; $7697: $03
    inc bc                                        ; $7698: $03
    inc bc                                        ; $7699: $03
    dec b                                         ; $769a: $05
    dec b                                         ; $769b: $05
    dec b                                         ; $769c: $05
    dec b                                         ; $769d: $05
    dec b                                         ; $769e: $05
    inc bc                                        ; $769f: $03
    dec b                                         ; $76a0: $05
    dec c                                         ; $76a1: $0d
    dec b                                         ; $76a2: $05
    dec b                                         ; $76a3: $05
    dec b                                         ; $76a4: $05
    add b                                         ; $76a5: $80
    add c                                         ; $76a6: $81
    push de                                       ; $76a7: $d5
    sub $84                                       ; $76a8: $d6 $84
    add l                                         ; $76aa: $85
    rst $10                                       ; $76ab: $d7
    ret c                                         ; $76ac: $d8

    adc b                                         ; $76ad: $88
    adc c                                         ; $76ae: $89
    sub l                                         ; $76af: $95
    sub [hl]                                      ; $76b0: $96
    adc h                                         ; $76b1: $8c
    adc l                                         ; $76b2: $8d
    sub a                                         ; $76b3: $97
    sbc b                                         ; $76b4: $98
    dec c                                         ; $76b5: $0d
    dec c                                         ; $76b6: $0d
    dec bc                                        ; $76b7: $0b
    dec c                                         ; $76b8: $0d
    dec c                                         ; $76b9: $0d
    dec bc                                        ; $76ba: $0b
    dec c                                         ; $76bb: $0d
    dec c                                         ; $76bc: $0d
    dec c                                         ; $76bd: $0d
    dec c                                         ; $76be: $0d
    dec c                                         ; $76bf: $0d
    dec bc                                        ; $76c0: $0b
    dec c                                         ; $76c1: $0d
    dec c                                         ; $76c2: $0d
    dec c                                         ; $76c3: $0d
    dec c                                         ; $76c4: $0d
    reti                                          ; $76c5: $d9


    jp c, $8382                                   ; $76c6: $da $82 $83

    db $db                                        ; $76c9: $db
    call c, $8786                                 ; $76ca: $dc $86 $87
    adc b                                         ; $76cd: $88
    adc c                                         ; $76ce: $89
    sub l                                         ; $76cf: $95
    sub [hl]                                      ; $76d0: $96
    adc h                                         ; $76d1: $8c
    adc l                                         ; $76d2: $8d
    sub a                                         ; $76d3: $97
    sbc b                                         ; $76d4: $98
    dec bc                                        ; $76d5: $0b
    dec c                                         ; $76d6: $0d
    dec c                                         ; $76d7: $0d
    dec bc                                        ; $76d8: $0b
    dec c                                         ; $76d9: $0d
    dec c                                         ; $76da: $0d
    dec bc                                        ; $76db: $0b
    dec c                                         ; $76dc: $0d
    dec c                                         ; $76dd: $0d
    dec c                                         ; $76de: $0d
    dec c                                         ; $76df: $0d
    dec c                                         ; $76e0: $0d
    dec c                                         ; $76e1: $0d
    dec bc                                        ; $76e2: $0b
    dec c                                         ; $76e3: $0d
    dec c                                         ; $76e4: $0d
    db $dd                                        ; $76e5: $dd
    sbc $df                                       ; $76e6: $de $df
    ldh [$e1], a                                  ; $76e8: $e0 $e1
    ld [c], a                                     ; $76ea: $e2
    db $e3                                        ; $76eb: $e3
    db $e4                                        ; $76ec: $e4
    push hl                                       ; $76ed: $e5
    and $e7                                       ; $76ee: $e6 $e7
    add sp, -$17                                  ; $76f0: $e8 $e9
    ld [$eceb], a                                 ; $76f2: $ea $eb $ec
    dec c                                         ; $76f5: $0d
    dec c                                         ; $76f6: $0d
    dec c                                         ; $76f7: $0d
    dec c                                         ; $76f8: $0d
    dec c                                         ; $76f9: $0d
    dec c                                         ; $76fa: $0d
    dec c                                         ; $76fb: $0d
    dec c                                         ; $76fc: $0d
    dec c                                         ; $76fd: $0d
    dec c                                         ; $76fe: $0d
    dec c                                         ; $76ff: $0d
    dec c                                         ; $7700: $0d
    dec c                                         ; $7701: $0d
    dec c                                         ; $7702: $0d
    dec c                                         ; $7703: $0d
    dec c                                         ; $7704: $0d
    db $dd                                        ; $7705: $dd
    db $ed                                        ; $7706: $ed
    rst $18                                       ; $7707: $df
    ldh [$e1], a                                  ; $7708: $e0 $e1
    xor $ef                                       ; $770a: $ee $ef
    db $e4                                        ; $770c: $e4
    push hl                                       ; $770d: $e5
    and $e7                                       ; $770e: $e6 $e7
    add sp, -$17                                  ; $7710: $e8 $e9
    ld [$eceb], a                                 ; $7712: $ea $eb $ec
    dec bc                                        ; $7715: $0b
    dec c                                         ; $7716: $0d
    dec bc                                        ; $7717: $0b
    dec c                                         ; $7718: $0d
    dec c                                         ; $7719: $0d
    dec c                                         ; $771a: $0d
    dec c                                         ; $771b: $0d
    dec c                                         ; $771c: $0d
    dec c                                         ; $771d: $0d
    dec c                                         ; $771e: $0d
    dec c                                         ; $771f: $0d
    dec c                                         ; $7720: $0d
    dec c                                         ; $7721: $0d
    dec c                                         ; $7722: $0d
    dec c                                         ; $7723: $0d
    dec c                                         ; $7724: $0d
    db $dd                                        ; $7725: $dd
    sbc $df                                       ; $7726: $de $df
    ldh a, [$e1]                                  ; $7728: $f0 $e1
    ld [c], a                                     ; $772a: $e2
    db $e3                                        ; $772b: $e3
    pop af                                        ; $772c: $f1
    push hl                                       ; $772d: $e5
    and $e7                                       ; $772e: $e6 $e7
    ld a, [c]                                     ; $7730: $f2
    jp hl                                         ; $7731: $e9


    ld [$f3eb], a                                 ; $7732: $ea $eb $f3
    dec c                                         ; $7735: $0d
    dec c                                         ; $7736: $0d
    dec c                                         ; $7737: $0d
    dec c                                         ; $7738: $0d
    dec c                                         ; $7739: $0d
    dec c                                         ; $773a: $0d
    dec c                                         ; $773b: $0d
    dec c                                         ; $773c: $0d
    dec c                                         ; $773d: $0d
    dec c                                         ; $773e: $0d
    dec c                                         ; $773f: $0d
    dec c                                         ; $7740: $0d
    dec c                                         ; $7741: $0d
    dec c                                         ; $7742: $0d
    dec c                                         ; $7743: $0d
    dec c                                         ; $7744: $0d
    db $f4                                        ; $7745: $f4
    push af                                       ; $7746: $f5
    or $f7                                        ; $7747: $f6 $f7
    ld hl, sp-$07                                 ; $7749: $f8 $f9
    ld a, [$a1fb]                                 ; $774b: $fa $fb $a1
    and d                                         ; $774e: $a2
    db $fc                                        ; $774f: $fc
    and h                                         ; $7750: $a4
    and l                                         ; $7751: $a5
    and [hl]                                      ; $7752: $a6
    and a                                         ; $7753: $a7
    xor b                                         ; $7754: $a8
    dec c                                         ; $7755: $0d
    dec c                                         ; $7756: $0d
    dec c                                         ; $7757: $0d
    dec c                                         ; $7758: $0d
    dec c                                         ; $7759: $0d
    dec c                                         ; $775a: $0d
    dec c                                         ; $775b: $0d
    dec c                                         ; $775c: $0d
    dec c                                         ; $775d: $0d
    dec c                                         ; $775e: $0d
    dec c                                         ; $775f: $0d
    dec c                                         ; $7760: $0d
    dec c                                         ; $7761: $0d
    dec c                                         ; $7762: $0d
    dec c                                         ; $7763: $0d
    dec c                                         ; $7764: $0d
    pop de                                        ; $7765: $d1
    jp nc, $d4d3                                  ; $7766: $d2 $d3 $d4

    reti                                          ; $7769: $d9


    jp c, $dcdb                                   ; $776a: $da $db $dc

    pop af                                        ; $776d: $f1
    pop hl                                        ; $776e: $e1
    ld [c], a                                     ; $776f: $e2
    db $e3                                        ; $7770: $e3
    ld [$eceb], a                                 ; $7771: $ea $eb $ec
    ldh a, [rTMA]                                 ; $7774: $f0 $06
    ld b, $06                                     ; $7776: $06 $06
    ld b, $06                                     ; $7778: $06 $06
    ld b, $06                                     ; $777a: $06 $06
    ld b, $00                                     ; $777c: $06 $00
    nop                                           ; $777e: $00
    nop                                           ; $777f: $00
    nop                                           ; $7780: $00
    nop                                           ; $7781: $00
    nop                                           ; $7782: $00
    nop                                           ; $7783: $00
    nop                                           ; $7784: $00
    push de                                       ; $7785: $d5
    sub $d7                                       ; $7786: $d6 $d7
    ret c                                         ; $7788: $d8

    db $dd                                        ; $7789: $dd
    sbc $df                                       ; $778a: $de $df
    ldh [$e4], a                                  ; $778c: $e0 $e4
    push hl                                       ; $778e: $e5
    and $e7                                       ; $778f: $e6 $e7
    db $fd                                        ; $7791: $fd
    rst $28                                       ; $7792: $ef
    ldh a, [$e9]                                  ; $7793: $f0 $e9
    ld b, $06                                     ; $7795: $06 $06
    ld b, $06                                     ; $7797: $06 $06
    ld b, $06                                     ; $7799: $06 $06
    ld b, $06                                     ; $779b: $06 $06
    nop                                           ; $779d: $00
    nop                                           ; $779e: $00
    nop                                           ; $779f: $00
    nop                                           ; $77a0: $00
    ld [$0000], sp                                ; $77a1: $08 $00 $00
    nop                                           ; $77a4: $00
    pop de                                        ; $77a5: $d1
    jp nc, $d4d3                                  ; $77a6: $d2 $d3 $d4

    reti                                          ; $77a9: $d9


    jp c, $dcdb                                   ; $77aa: $da $db $dc

    add sp, -$10                                  ; $77ad: $e8 $f0
    db $fd                                        ; $77af: $fd
    rst $28                                       ; $77b0: $ef
    ld [$eceb], a                                 ; $77b1: $ea $eb $ec
    pop af                                        ; $77b4: $f1
    ld b, $06                                     ; $77b5: $06 $06
    ld b, $07                                     ; $77b7: $06 $07
    ld b, $06                                     ; $77b9: $06 $06
    ld b, $07                                     ; $77bb: $06 $07
    nop                                           ; $77bd: $00
    nop                                           ; $77be: $00
    ld [$0007], sp                                ; $77bf: $08 $07 $00
    nop                                           ; $77c2: $00
    nop                                           ; $77c3: $00
    rlca                                          ; $77c4: $07
    db $f4                                        ; $77c5: $f4
    push af                                       ; $77c6: $f5
    or $f7                                        ; $77c7: $f6 $f7
    cp $ff                                        ; $77c9: $fe $ff
    ld a, [$a1fb]                                 ; $77cb: $fa $fb $a1
    and d                                         ; $77ce: $a2
    and e                                         ; $77cf: $a3
    and h                                         ; $77d0: $a4
    and l                                         ; $77d1: $a5
    and [hl]                                      ; $77d2: $a6
    nop                                           ; $77d3: $00
    ld bc, $0d0d                                  ; $77d4: $01 $0d $0d
    dec c                                         ; $77d7: $0d
    dec c                                         ; $77d8: $0d
    dec c                                         ; $77d9: $0d
    dec c                                         ; $77da: $0d
    dec c                                         ; $77db: $0d
    dec c                                         ; $77dc: $0d
    dec c                                         ; $77dd: $0d
    dec c                                         ; $77de: $0d
    dec c                                         ; $77df: $0d
    dec c                                         ; $77e0: $0d
    dec c                                         ; $77e1: $0d
    dec c                                         ; $77e2: $0d
    dec c                                         ; $77e3: $0d
    dec c                                         ; $77e4: $0d
    ldh a, [$fd]                                  ; $77e5: $f0 $fd
    rst $28                                       ; $77e7: $ef
    ldh a, [$e2]                                  ; $77e8: $f0 $e2
    db $e3                                        ; $77ea: $e3
    db $e4                                        ; $77eb: $e4
    jp hl                                         ; $77ec: $e9


    rst $20                                       ; $77ed: $e7
    add sp, -$0f                                  ; $77ee: $e8 $f1
    pop af                                        ; $77f0: $f1
    pop af                                        ; $77f1: $f1
    pop hl                                        ; $77f2: $e1
    ld [c], a                                     ; $77f3: $e2
    db $e3                                        ; $77f4: $e3
    nop                                           ; $77f5: $00
    ld [$0000], sp                                ; $77f6: $08 $00 $00
    nop                                           ; $77f9: $00
    nop                                           ; $77fa: $00
    nop                                           ; $77fb: $00
    nop                                           ; $77fc: $00
    nop                                           ; $77fd: $00
    nop                                           ; $77fe: $00
    nop                                           ; $77ff: $00
    nop                                           ; $7800: $00
    nop                                           ; $7801: $00
    nop                                           ; $7802: $00
    nop                                           ; $7803: $00
    nop                                           ; $7804: $00
    pop af                                        ; $7805: $f1
    pop hl                                        ; $7806: $e1
    ld [c], a                                     ; $7807: $e2
    db $e3                                        ; $7808: $e3
    ld [$eceb], a                                 ; $7809: $ea $eb $ec
    pop af                                        ; $780c: $f1
    pop hl                                        ; $780d: $e1
    ld [c], a                                     ; $780e: $e2
    db $e3                                        ; $780f: $e3
    db $e4                                        ; $7810: $e4
    db $e4                                        ; $7811: $e4
    pop af                                        ; $7812: $f1
    pop hl                                        ; $7813: $e1
    ld [c], a                                     ; $7814: $e2
    nop                                           ; $7815: $00
    nop                                           ; $7816: $00
    nop                                           ; $7817: $00
    nop                                           ; $7818: $00
    nop                                           ; $7819: $00
    nop                                           ; $781a: $00
    nop                                           ; $781b: $00
    nop                                           ; $781c: $00
    nop                                           ; $781d: $00
    nop                                           ; $781e: $00
    nop                                           ; $781f: $00
    rlca                                          ; $7820: $07
    nop                                           ; $7821: $00
    nop                                           ; $7822: $00
    nop                                           ; $7823: $00
    rlca                                          ; $7824: $07
    db $e4                                        ; $7825: $e4
    pop af                                        ; $7826: $f1
    ldh a, [$fd]                                  ; $7827: $f0 $fd
    ld [bc], a                                    ; $7829: $02
    inc bc                                        ; $782a: $03
    inc b                                         ; $782b: $04
    dec b                                         ; $782c: $05
    ld b, $07                                     ; $782d: $06 $07
    ld [$09eb], sp                                ; $782f: $08 $eb $09
    ld a, [bc]                                    ; $7832: $0a
    dec bc                                        ; $7833: $0b
    ldh a, [rP1]                                  ; $7834: $f0 $00
    nop                                           ; $7836: $00
    nop                                           ; $7837: $00
    rrca                                          ; $7838: $0f
    dec bc                                        ; $7839: $0b
    dec bc                                        ; $783a: $0b
    dec bc                                        ; $783b: $0b
    rrca                                          ; $783c: $0f
    dec bc                                        ; $783d: $0b
    dec bc                                        ; $783e: $0b
    dec bc                                        ; $783f: $0b
    rlca                                          ; $7840: $07
    dec bc                                        ; $7841: $0b
    dec bc                                        ; $7842: $0b
    dec bc                                        ; $7843: $0b
    rlca                                          ; $7844: $07
    db $f4                                        ; $7845: $f4
    push af                                       ; $7846: $f5
    or $f7                                        ; $7847: $f6 $f7
    inc c                                         ; $7849: $0c
    dec c                                         ; $784a: $0d
    ld a, [$a1fb]                                 ; $784b: $fa $fb $a1
    and d                                         ; $784e: $a2
    and e                                         ; $784f: $a3
    and h                                         ; $7850: $a4
    and l                                         ; $7851: $a5
    and [hl]                                      ; $7852: $a6
    and a                                         ; $7853: $a7
    xor b                                         ; $7854: $a8
    dec c                                         ; $7855: $0d
    dec c                                         ; $7856: $0d
    dec c                                         ; $7857: $0d
    dec c                                         ; $7858: $0d
    dec c                                         ; $7859: $0d
    dec c                                         ; $785a: $0d
    dec c                                         ; $785b: $0d
    dec c                                         ; $785c: $0d
    dec c                                         ; $785d: $0d
    dec c                                         ; $785e: $0d
    dec c                                         ; $785f: $0d
    dec c                                         ; $7860: $0d
    dec c                                         ; $7861: $0d
    dec c                                         ; $7862: $0d
    dec c                                         ; $7863: $0d
    dec c                                         ; $7864: $0d
    db $dd                                        ; $7865: $dd
    sbc $df                                       ; $7866: $de $df
    ld c, $e1                                     ; $7868: $0e $e1
    ld [c], a                                     ; $786a: $e2
    db $e3                                        ; $786b: $e3
    db $e4                                        ; $786c: $e4
    push hl                                       ; $786d: $e5
    and $e7                                       ; $786e: $e6 $e7
    add sp, -$17                                  ; $7870: $e8 $e9
    ld [$eceb], a                                 ; $7872: $ea $eb $ec
    dec c                                         ; $7875: $0d
    dec c                                         ; $7876: $0d
    dec c                                         ; $7877: $0d
    dec bc                                        ; $7878: $0b
    dec c                                         ; $7879: $0d
    dec c                                         ; $787a: $0d
    dec c                                         ; $787b: $0d
    dec c                                         ; $787c: $0d
    dec c                                         ; $787d: $0d
    dec c                                         ; $787e: $0d
    dec c                                         ; $787f: $0d
    dec c                                         ; $7880: $0d
    dec c                                         ; $7881: $0d
    dec c                                         ; $7882: $0d
    dec c                                         ; $7883: $0d
    dec c                                         ; $7884: $0d
    db $dd                                        ; $7885: $dd
    sbc $df                                       ; $7886: $de $df
    ldh [$e1], a                                  ; $7888: $e0 $e1
    ld [c], a                                     ; $788a: $e2
    db $e3                                        ; $788b: $e3
    db $e4                                        ; $788c: $e4
    push hl                                       ; $788d: $e5
    and $e7                                       ; $788e: $e6 $e7
    add sp, -$17                                  ; $7890: $e8 $e9
    ld [$eceb], a                                 ; $7892: $ea $eb $ec
    dec c                                         ; $7895: $0d
    dec c                                         ; $7896: $0d
    dec c                                         ; $7897: $0d
    dec bc                                        ; $7898: $0b
    dec c                                         ; $7899: $0d
    dec c                                         ; $789a: $0d
    dec c                                         ; $789b: $0d
    dec c                                         ; $789c: $0d
    dec c                                         ; $789d: $0d
    dec c                                         ; $789e: $0d
    dec c                                         ; $789f: $0d
    dec c                                         ; $78a0: $0d
    dec c                                         ; $78a1: $0d
    dec c                                         ; $78a2: $0d
    dec c                                         ; $78a3: $0d
    dec c                                         ; $78a4: $0d
    rrca                                          ; $78a5: $0f
    db $10                                        ; $78a6: $10
    ld de, $1312                                  ; $78a7: $11 $12 $13
    ld [c], a                                     ; $78aa: $e2
    db $e3                                        ; $78ab: $e3
    db $e4                                        ; $78ac: $e4
    push hl                                       ; $78ad: $e5
    and $e7                                       ; $78ae: $e6 $e7
    add sp, -$17                                  ; $78b0: $e8 $e9
    ld [$eceb], a                                 ; $78b2: $ea $eb $ec
    dec c                                         ; $78b5: $0d
    dec c                                         ; $78b6: $0d
    dec c                                         ; $78b7: $0d
    dec c                                         ; $78b8: $0d
    dec c                                         ; $78b9: $0d
    dec c                                         ; $78ba: $0d
    dec c                                         ; $78bb: $0d
    dec c                                         ; $78bc: $0d
    dec c                                         ; $78bd: $0d
    dec c                                         ; $78be: $0d
    dec c                                         ; $78bf: $0d
    dec c                                         ; $78c0: $0d
    dec c                                         ; $78c1: $0d
    dec c                                         ; $78c2: $0d
    dec c                                         ; $78c3: $0d
    dec c                                         ; $78c4: $0d
    inc d                                         ; $78c5: $14
    sbc $df                                       ; $78c6: $de $df
    ldh [$e1], a                                  ; $78c8: $e0 $e1
    ld [c], a                                     ; $78ca: $e2
    db $e3                                        ; $78cb: $e3
    db $e4                                        ; $78cc: $e4
    push hl                                       ; $78cd: $e5
    and $e7                                       ; $78ce: $e6 $e7
    add sp, -$17                                  ; $78d0: $e8 $e9
    ld [$eceb], a                                 ; $78d2: $ea $eb $ec
    dec c                                         ; $78d5: $0d
    dec c                                         ; $78d6: $0d
    dec c                                         ; $78d7: $0d
    dec c                                         ; $78d8: $0d
    dec c                                         ; $78d9: $0d
    dec c                                         ; $78da: $0d
    dec c                                         ; $78db: $0d
    dec c                                         ; $78dc: $0d
    dec c                                         ; $78dd: $0d
    dec c                                         ; $78de: $0d
    dec c                                         ; $78df: $0d
    dec c                                         ; $78e0: $0d
    dec c                                         ; $78e1: $0d
    dec c                                         ; $78e2: $0d
    dec c                                         ; $78e3: $0d
    dec c                                         ; $78e4: $0d
    pop de                                        ; $78e5: $d1
    jp nc, $d4d3                                  ; $78e6: $d2 $d3 $d4

    reti                                          ; $78e9: $d9


    jp c, $dcdb                                   ; $78ea: $da $db $dc

    pop af                                        ; $78ed: $f1
    pop hl                                        ; $78ee: $e1
    ld [c], a                                     ; $78ef: $e2
    db $e3                                        ; $78f0: $e3
    pop af                                        ; $78f1: $f1
    pop af                                        ; $78f2: $f1
    jp hl                                         ; $78f3: $e9


    ld [$0606], a                                 ; $78f4: $ea $06 $06
    ld b, $06                                     ; $78f7: $06 $06
    ld b, $06                                     ; $78f9: $06 $06
    ld b, $06                                     ; $78fb: $06 $06
    nop                                           ; $78fd: $00
    nop                                           ; $78fe: $00
    nop                                           ; $78ff: $00
    nop                                           ; $7900: $00
    nop                                           ; $7901: $00
    nop                                           ; $7902: $00
    nop                                           ; $7903: $00
    nop                                           ; $7904: $00
    push de                                       ; $7905: $d5
    sub $d7                                       ; $7906: $d6 $d7
    ret c                                         ; $7908: $d8

    db $dd                                        ; $7909: $dd
    sbc $df                                       ; $790a: $de $df
    ldh [$e4], a                                  ; $790c: $e0 $e4
    pop af                                        ; $790e: $f1
    jp hl                                         ; $790f: $e9


    ld [$eceb], a                                 ; $7910: $ea $eb $ec
    pop af                                        ; $7913: $f1
    pop af                                        ; $7914: $f1
    ld b, $06                                     ; $7915: $06 $06
    ld b, $06                                     ; $7917: $06 $06
    ld b, $06                                     ; $7919: $06 $06
    ld b, $06                                     ; $791b: $06 $06
    nop                                           ; $791d: $00
    nop                                           ; $791e: $00
    nop                                           ; $791f: $00
    nop                                           ; $7920: $00
    nop                                           ; $7921: $00
    nop                                           ; $7922: $00
    nop                                           ; $7923: $00
    nop                                           ; $7924: $00
    pop de                                        ; $7925: $d1
    jp nc, $d4d3                                  ; $7926: $d2 $d3 $d4

    reti                                          ; $7929: $d9


    jp c, $dcdb                                   ; $792a: $da $db $dc

    db $eb                                        ; $792d: $eb
    db $ec                                        ; $792e: $ec
    pop hl                                        ; $792f: $e1
    ld [c], a                                     ; $7930: $e2
    ldh a, [$fd]                                  ; $7931: $f0 $fd
    rst $28                                       ; $7933: $ef
    ldh a, [rTMA]                                 ; $7934: $f0 $06
    ld b, $06                                     ; $7936: $06 $06
    ld b, $06                                     ; $7938: $06 $06
    ld b, $06                                     ; $793a: $06 $06
    ld b, $00                                     ; $793c: $06 $00
    nop                                           ; $793e: $00
    nop                                           ; $793f: $00
    nop                                           ; $7940: $00
    nop                                           ; $7941: $00
    ld [$0000], sp                                ; $7942: $08 $00 $00
    push de                                       ; $7945: $d5
    sub $d7                                       ; $7946: $d6 $d7
    ret c                                         ; $7948: $d8

    db $dd                                        ; $7949: $dd
    sbc $df                                       ; $794a: $de $df
    ldh [$e3], a                                  ; $794c: $e0 $e3
    db $e4                                        ; $794e: $e4
    push hl                                       ; $794f: $e5
    and $f1                                       ; $7950: $e6 $f1
    pop hl                                        ; $7952: $e1
    ld [c], a                                     ; $7953: $e2
    db $e3                                        ; $7954: $e3
    ld b, $06                                     ; $7955: $06 $06
    ld b, $06                                     ; $7957: $06 $06
    ld b, $06                                     ; $7959: $06 $06
    ld b, $06                                     ; $795b: $06 $06
    nop                                           ; $795d: $00
    nop                                           ; $795e: $00
    nop                                           ; $795f: $00
    nop                                           ; $7960: $00
    nop                                           ; $7961: $00
    nop                                           ; $7962: $00
    nop                                           ; $7963: $00
    nop                                           ; $7964: $00
    push hl                                       ; $7965: $e5
    and $e7                                       ; $7966: $e6 $e7
    add sp, -$10                                  ; $7968: $e8 $f0
    db $fd                                        ; $796a: $fd
    rst $28                                       ; $796b: $ef
    ldh a, [$15]                                  ; $796c: $f0 $15
    ld [bc], a                                    ; $796e: $02
    inc bc                                        ; $796f: $03
    inc b                                         ; $7970: $04
    pop af                                        ; $7971: $f1
    ld b, $07                                     ; $7972: $06 $07
    ld [$0000], sp                                ; $7974: $08 $00 $00
    nop                                           ; $7977: $00
    nop                                           ; $7978: $00
    nop                                           ; $7979: $00
    ld [$0000], sp                                ; $797a: $08 $00 $00
    ld [$0b0b], sp                                ; $797d: $08 $0b $0b
    dec bc                                        ; $7980: $0b
    rlca                                          ; $7981: $07
    dec bc                                        ; $7982: $0b
    dec bc                                        ; $7983: $0b
    dec bc                                        ; $7984: $0b
    pop af                                        ; $7985: $f1
    pop af                                        ; $7986: $f1
    pop hl                                        ; $7987: $e1
    ld [c], a                                     ; $7988: $e2
    ldh a, [$fd]                                  ; $7989: $f0 $fd
    rst $28                                       ; $798b: $ef
    ldh a, [$e9]                                  ; $798c: $f0 $e9
    ld [$eceb], a                                 ; $798e: $ea $eb $ec
    pop af                                        ; $7991: $f1
    pop hl                                        ; $7992: $e1
    ld [c], a                                     ; $7993: $e2
    db $e3                                        ; $7994: $e3
    nop                                           ; $7995: $00
    nop                                           ; $7996: $00
    nop                                           ; $7997: $00
    nop                                           ; $7998: $00
    nop                                           ; $7999: $00
    ld [$0000], sp                                ; $799a: $08 $00 $00
    nop                                           ; $799d: $00
    nop                                           ; $799e: $00
    nop                                           ; $799f: $00
    nop                                           ; $79a0: $00
    nop                                           ; $79a1: $00
    nop                                           ; $79a2: $00
    nop                                           ; $79a3: $00
    nop                                           ; $79a4: $00
    db $e3                                        ; $79a5: $e3
    db $e4                                        ; $79a6: $e4
    pop af                                        ; $79a7: $f1
    jp hl                                         ; $79a8: $e9


    pop af                                        ; $79a9: $f1
    ldh a, [$fd]                                  ; $79aa: $f0 $fd
    rst $28                                       ; $79ac: $ef
    pop af                                        ; $79ad: $f1
    pop af                                        ; $79ae: $f1
    pop hl                                        ; $79af: $e1
    ld [c], a                                     ; $79b0: $e2
    db $e4                                        ; $79b1: $e4
    push hl                                       ; $79b2: $e5
    and $e7                                       ; $79b3: $e6 $e7
    nop                                           ; $79b5: $00
    nop                                           ; $79b6: $00
    nop                                           ; $79b7: $00
    nop                                           ; $79b8: $00
    nop                                           ; $79b9: $00
    nop                                           ; $79ba: $00
    ld [$0000], sp                                ; $79bb: $08 $00 $00
    nop                                           ; $79be: $00
    nop                                           ; $79bf: $00
    nop                                           ; $79c0: $00
    nop                                           ; $79c1: $00
    nop                                           ; $79c2: $00
    nop                                           ; $79c3: $00
    nop                                           ; $79c4: $00
    ld [$eceb], a                                 ; $79c5: $ea $eb $ec
    pop af                                        ; $79c8: $f1
    ldh a, [$f1]                                  ; $79c9: $f0 $f1
    push hl                                       ; $79cb: $e5
    and $e3                                       ; $79cc: $e6 $e3
    db $e4                                        ; $79ce: $e4
    pop af                                        ; $79cf: $f1
    jp hl                                         ; $79d0: $e9


    add sp, -$17                                  ; $79d1: $e8 $e9
    ld [$00eb], a                                 ; $79d3: $ea $eb $00
    nop                                           ; $79d6: $00
    nop                                           ; $79d7: $00
    nop                                           ; $79d8: $00
    nop                                           ; $79d9: $00
    nop                                           ; $79da: $00
    nop                                           ; $79db: $00
    nop                                           ; $79dc: $00
    nop                                           ; $79dd: $00
    nop                                           ; $79de: $00
    nop                                           ; $79df: $00
    nop                                           ; $79e0: $00
    nop                                           ; $79e1: $00
    nop                                           ; $79e2: $00
    nop                                           ; $79e3: $00
    nop                                           ; $79e4: $00
    db $dd                                        ; $79e5: $dd
    sbc $df                                       ; $79e6: $de $df
    ldh [$e1], a                                  ; $79e8: $e0 $e1
    ld [c], a                                     ; $79ea: $e2
    db $e3                                        ; $79eb: $e3
    db $e4                                        ; $79ec: $e4
    push hl                                       ; $79ed: $e5
    and $e7                                       ; $79ee: $e6 $e7
    add sp, -$17                                  ; $79f0: $e8 $e9
    ld [$eceb], a                                 ; $79f2: $ea $eb $ec
    dec c                                         ; $79f5: $0d
    dec c                                         ; $79f6: $0d
    dec bc                                        ; $79f7: $0b
    dec c                                         ; $79f8: $0d
    dec c                                         ; $79f9: $0d
    dec c                                         ; $79fa: $0d
    dec c                                         ; $79fb: $0d
    dec c                                         ; $79fc: $0d
    dec c                                         ; $79fd: $0d
    dec c                                         ; $79fe: $0d
    dec c                                         ; $79ff: $0d
    dec c                                         ; $7a00: $0d
    dec c                                         ; $7a01: $0d
    dec c                                         ; $7a02: $0d
    dec c                                         ; $7a03: $0d
    dec c                                         ; $7a04: $0d
    pop de                                        ; $7a05: $d1
    jp nc, $d4d3                                  ; $7a06: $d2 $d3 $d4

    reti                                          ; $7a09: $d9


    jp c, $dcdb                                   ; $7a0a: $da $db $dc

    rst $20                                       ; $7a0d: $e7
    add sp, -$0f                                  ; $7a0e: $e8 $f1
    pop af                                        ; $7a10: $f1
    db $e4                                        ; $7a11: $e4
    pop af                                        ; $7a12: $f1
    pop af                                        ; $7a13: $f1
    push hl                                       ; $7a14: $e5
    ld b, $06                                     ; $7a15: $06 $06
    ld b, $06                                     ; $7a17: $06 $06
    ld b, $06                                     ; $7a19: $06 $06
    ld b, $06                                     ; $7a1b: $06 $06
    nop                                           ; $7a1d: $00
    nop                                           ; $7a1e: $00
    nop                                           ; $7a1f: $00
    nop                                           ; $7a20: $00
    nop                                           ; $7a21: $00
    nop                                           ; $7a22: $00
    nop                                           ; $7a23: $00
    nop                                           ; $7a24: $00
    push de                                       ; $7a25: $d5
    sub $d7                                       ; $7a26: $d6 $d7
    ret c                                         ; $7a28: $d8

    db $dd                                        ; $7a29: $dd
    sbc $df                                       ; $7a2a: $de $df
    ldh [$e1], a                                  ; $7a2c: $e0 $e1
    ld [c], a                                     ; $7a2e: $e2
    db $e3                                        ; $7a2f: $e3
    db $e4                                        ; $7a30: $e4
    and $e7                                       ; $7a31: $e6 $e7
    add sp, -$0f                                  ; $7a33: $e8 $f1
    ld b, $06                                     ; $7a35: $06 $06
    ld b, $06                                     ; $7a37: $06 $06
    ld b, $06                                     ; $7a39: $06 $06
    ld b, $06                                     ; $7a3b: $06 $06
    nop                                           ; $7a3d: $00
    nop                                           ; $7a3e: $00
    nop                                           ; $7a3f: $00
    nop                                           ; $7a40: $00
    nop                                           ; $7a41: $00
    nop                                           ; $7a42: $00
    nop                                           ; $7a43: $00
    nop                                           ; $7a44: $00
    ldh a, [$fd]                                  ; $7a45: $f0 $fd
    rst $28                                       ; $7a47: $ef
    ldh a, [$e7]                                  ; $7a48: $f0 $e7
    add sp, -$0f                                  ; $7a4a: $e8 $f1
    push hl                                       ; $7a4c: $e5
    ld [$eceb], a                                 ; $7a4d: $ea $eb $ec
    pop af                                        ; $7a50: $f1
    db $ec                                        ; $7a51: $ec
    db $ed                                        ; $7a52: $ed
    xor $ef                                       ; $7a53: $ee $ef
    nop                                           ; $7a55: $00
    ld [$0000], sp                                ; $7a56: $08 $00 $00
    nop                                           ; $7a59: $00
    nop                                           ; $7a5a: $00
    nop                                           ; $7a5b: $00
    nop                                           ; $7a5c: $00
    nop                                           ; $7a5d: $00
    nop                                           ; $7a5e: $00
    nop                                           ; $7a5f: $00
    nop                                           ; $7a60: $00
    nop                                           ; $7a61: $00
    nop                                           ; $7a62: $00
    nop                                           ; $7a63: $00
    nop                                           ; $7a64: $00
    pop af                                        ; $7a65: $f1
    jp hl                                         ; $7a66: $e9


    ld [$e6eb], a                                 ; $7a67: $ea $eb $e6
    rst $20                                       ; $7a6a: $e7
    add sp, -$0f                                  ; $7a6b: $e8 $f1
    pop hl                                        ; $7a6d: $e1
    ld [c], a                                     ; $7a6e: $e2
    db $e3                                        ; $7a6f: $e3
    db $e4                                        ; $7a70: $e4
    ldh a, [$fd]                                  ; $7a71: $f0 $fd
    rst $28                                       ; $7a73: $ef
    ldh a, [rP1]                                  ; $7a74: $f0 $00
    nop                                           ; $7a76: $00
    nop                                           ; $7a77: $00
    nop                                           ; $7a78: $00
    nop                                           ; $7a79: $00
    nop                                           ; $7a7a: $00
    nop                                           ; $7a7b: $00
    nop                                           ; $7a7c: $00
    nop                                           ; $7a7d: $00
    nop                                           ; $7a7e: $00
    nop                                           ; $7a7f: $00
    nop                                           ; $7a80: $00
    nop                                           ; $7a81: $00
    ld [$0000], sp                                ; $7a82: $08 $00 $00
    add hl, bc                                    ; $7a85: $09
    nop                                           ; $7a86: $00
    ld b, $00                                     ; $7a87: $06 $00
    ld h, b                                       ; $7a89: $60
    dec b                                         ; $7a8a: $05
    pop de                                        ; $7a8b: $d1
    pop de                                        ; $7a8c: $d1
    pop de                                        ; $7a8d: $d1
    pop de                                        ; $7a8e: $d1
    pop de                                        ; $7a8f: $d1
    pop de                                        ; $7a90: $d1
    pop de                                        ; $7a91: $d1
    pop de                                        ; $7a92: $d1
    pop de                                        ; $7a93: $d1
    pop de                                        ; $7a94: $d1
    pop de                                        ; $7a95: $d1
    pop de                                        ; $7a96: $d1
    pop de                                        ; $7a97: $d1
    pop de                                        ; $7a98: $d1
    pop de                                        ; $7a99: $d1
    pop de                                        ; $7a9a: $d1
    add b                                         ; $7a9b: $80
    add b                                         ; $7a9c: $80
    add b                                         ; $7a9d: $80
    add b                                         ; $7a9e: $80
    add b                                         ; $7a9f: $80
    add b                                         ; $7aa0: $80
    add b                                         ; $7aa1: $80
    add b                                         ; $7aa2: $80
    add b                                         ; $7aa3: $80
    add b                                         ; $7aa4: $80
    add b                                         ; $7aa5: $80
    add b                                         ; $7aa6: $80
    add b                                         ; $7aa7: $80
    add b                                         ; $7aa8: $80
    add b                                         ; $7aa9: $80
    add b                                         ; $7aaa: $80
    jp nc, $d4d3                                  ; $7aab: $d2 $d3 $d4

    push de                                       ; $7aae: $d5
    jp nc, $d7d6                                  ; $7aaf: $d2 $d6 $d7

    ret c                                         ; $7ab2: $d8

    jp nc, $dad9                                  ; $7ab3: $d2 $d9 $da

    db $db                                        ; $7ab6: $db
    jp nc, $dddc                                  ; $7ab7: $d2 $dc $dd

    sbc $80                                       ; $7aba: $de $80
    ld [bc], a                                    ; $7abc: $02
    ld [bc], a                                    ; $7abd: $02
    ld [bc], a                                    ; $7abe: $02
    add b                                         ; $7abf: $80
    ld [bc], a                                    ; $7ac0: $02
    ld [bc], a                                    ; $7ac1: $02
    ld [bc], a                                    ; $7ac2: $02
    add b                                         ; $7ac3: $80
    ld [bc], a                                    ; $7ac4: $02
    ld [bc], a                                    ; $7ac5: $02
    ld [bc], a                                    ; $7ac6: $02
    add b                                         ; $7ac7: $80
    ld [bc], a                                    ; $7ac8: $02
    ld [bc], a                                    ; $7ac9: $02
    ld [bc], a                                    ; $7aca: $02
    rst $18                                       ; $7acb: $df
    ldh [$e1], a                                  ; $7acc: $e0 $e1
    ld [c], a                                     ; $7ace: $e2
    db $e3                                        ; $7acf: $e3
    db $e4                                        ; $7ad0: $e4
    push hl                                       ; $7ad1: $e5
    and $e7                                       ; $7ad2: $e6 $e7
    add sp, -$17                                  ; $7ad4: $e8 $e9
    ld [$eceb], a                                 ; $7ad6: $ea $eb $ec
    db $ed                                        ; $7ad9: $ed
    xor $01                                       ; $7ada: $ee $01
    ld bc, $0101                                  ; $7adc: $01 $01 $01
    ld bc, $0101                                  ; $7adf: $01 $01 $01
    ld bc, $0404                                  ; $7ae2: $01 $04 $04
    inc b                                         ; $7ae5: $04
    inc b                                         ; $7ae6: $04
    inc b                                         ; $7ae7: $04
    inc b                                         ; $7ae8: $04
    inc b                                         ; $7ae9: $04
    inc b                                         ; $7aea: $04
    rst $28                                       ; $7aeb: $ef
    db $d3                                        ; $7aec: $d3
    ldh a, [$f1]                                  ; $7aed: $f0 $f1
    ld a, [c]                                     ; $7aef: $f2
    sub $f3                                       ; $7af0: $d6 $f3
    db $f4                                        ; $7af2: $f4
    push af                                       ; $7af3: $f5
    reti                                          ; $7af4: $d9


    or $f7                                        ; $7af5: $f6 $f7
    ld hl, sp-$24                                 ; $7af7: $f8 $dc
    ld sp, hl                                     ; $7af9: $f9
    ld a, [$0201]                                 ; $7afa: $fa $01 $02
    ld [bc], a                                    ; $7afd: $02
    dec b                                         ; $7afe: $05
    ld bc, $0202                                  ; $7aff: $01 $02 $02
    dec b                                         ; $7b02: $05
    inc b                                         ; $7b03: $04
    ld [bc], a                                    ; $7b04: $02
    ld [bc], a                                    ; $7b05: $02
    dec b                                         ; $7b06: $05
    inc b                                         ; $7b07: $04
    ld [bc], a                                    ; $7b08: $02
    ld [bc], a                                    ; $7b09: $02
    dec b                                         ; $7b0a: $05
    jp nc, $fcfb                                  ; $7b0b: $d2 $fb $fc

    db $fd                                        ; $7b0e: $fd
    jp nc, $fffe                                  ; $7b0f: $d2 $fe $ff

    nop                                           ; $7b12: $00
    jp nc, $0201                                  ; $7b13: $d2 $01 $02

    inc bc                                        ; $7b16: $03
    jp nc, $0504                                  ; $7b17: $d2 $04 $05

    ld b, $80                                     ; $7b1a: $06 $80
    ld [bc], a                                    ; $7b1c: $02
    ld [bc], a                                    ; $7b1d: $02
    ld [bc], a                                    ; $7b1e: $02
    add b                                         ; $7b1f: $80
    rlca                                          ; $7b20: $07
    rlca                                          ; $7b21: $07
    rlca                                          ; $7b22: $07
    add b                                         ; $7b23: $80
    rlca                                          ; $7b24: $07
    ld b, $06                                     ; $7b25: $06 $06
    add b                                         ; $7b27: $80
    rlca                                          ; $7b28: $07
    ld b, $06                                     ; $7b29: $06 $06
    rlca                                          ; $7b2b: $07
    ld [$0a09], sp                                ; $7b2c: $08 $09 $0a
    dec bc                                        ; $7b2f: $0b
    inc c                                         ; $7b30: $0c
    dec c                                         ; $7b31: $0d
    ld c, $0f                                     ; $7b32: $0e $0f
    db $10                                        ; $7b34: $10
    ld de, $1312                                  ; $7b35: $11 $12 $13
    inc d                                         ; $7b38: $14
    dec d                                         ; $7b39: $15
    inc b                                         ; $7b3a: $04
    inc b                                         ; $7b3b: $04
    inc b                                         ; $7b3c: $04
    inc b                                         ; $7b3d: $04
    inc b                                         ; $7b3e: $04
    inc b                                         ; $7b3f: $04
    inc b                                         ; $7b40: $04
    inc b                                         ; $7b41: $04
    inc b                                         ; $7b42: $04
    inc b                                         ; $7b43: $04
    inc b                                         ; $7b44: $04
    inc b                                         ; $7b45: $04
    inc b                                         ; $7b46: $04
    rlca                                          ; $7b47: $07
    rlca                                          ; $7b48: $07
    rlca                                          ; $7b49: $07
    rlca                                          ; $7b4a: $07
    ld d, $fb                                     ; $7b4b: $16 $fb
    rla                                           ; $7b4d: $17
    jr jr_086_7b69                                ; $7b4e: $18 $19

    nop                                           ; $7b50: $00
    ld a, [de]                                    ; $7b51: $1a
    dec de                                        ; $7b52: $1b
    inc e                                         ; $7b53: $1c
    inc bc                                        ; $7b54: $03
    dec e                                         ; $7b55: $1d
    ld e, $05                                     ; $7b56: $1e $05
    ld b, $13                                     ; $7b58: $06 $13
    inc d                                         ; $7b5a: $14
    inc b                                         ; $7b5b: $04
    ld [bc], a                                    ; $7b5c: $02
    ld [bc], a                                    ; $7b5d: $02
    ld [bc], a                                    ; $7b5e: $02
    inc b                                         ; $7b5f: $04
    rlca                                          ; $7b60: $07
    rlca                                          ; $7b61: $07
    rlca                                          ; $7b62: $07
    inc b                                         ; $7b63: $04
    rlca                                          ; $7b64: $07
    ld b, $06                                     ; $7b65: $06 $06
    rlca                                          ; $7b67: $07
    rlca                                          ; $7b68: $07

jr_086_7b69:
    ld b, $06                                     ; $7b69: $06 $06
    jp nc, $201f                                  ; $7b6b: $d2 $1f $20

    ld hl, $22d2                                  ; $7b6e: $21 $d2 $22
    inc hl                                        ; $7b71: $23
    inc h                                         ; $7b72: $24
    jp nc, Jump_000_2625                          ; $7b73: $d2 $25 $26

    daa                                           ; $7b76: $27
    jp nc, $fffe                                  ; $7b77: $d2 $fe $ff

    nop                                           ; $7b7a: $00
    add b                                         ; $7b7b: $80
    rlca                                          ; $7b7c: $07
    ld b, $06                                     ; $7b7d: $06 $06
    add b                                         ; $7b7f: $80
    rlca                                          ; $7b80: $07
    ld b, $06                                     ; $7b81: $06 $06
    add b                                         ; $7b83: $80
    rlca                                          ; $7b84: $07
    ld b, $06                                     ; $7b85: $06 $06
    add b                                         ; $7b87: $80
    rlca                                          ; $7b88: $07
    ld b, $06                                     ; $7b89: $06 $06
    jr z, jr_086_7bb6                             ; $7b8b: $28 $29

    ld a, [hl+]                                   ; $7b8d: $2a
    rra                                           ; $7b8e: $1f
    dec hl                                        ; $7b8f: $2b
    inc l                                         ; $7b90: $2c
    dec l                                         ; $7b91: $2d
    ld l, $2f                                     ; $7b92: $2e $2f
    jr nc, jr_086_7bc7                            ; $7b94: $30 $31

    ld [hl-], a                                   ; $7b96: $32
    ld a, [de]                                    ; $7b97: $1a
    dec de                                        ; $7b98: $1b
    inc sp                                        ; $7b99: $33
    inc [hl]                                      ; $7b9a: $34
    ld b, $06                                     ; $7b9b: $06 $06
    ld b, $06                                     ; $7b9d: $06 $06
    ld b, $06                                     ; $7b9f: $06 $06
    ld b, $06                                     ; $7ba1: $06 $06
    ld b, $06                                     ; $7ba3: $06 $06
    ld b, $06                                     ; $7ba5: $06 $06
    ld b, $06                                     ; $7ba7: $06 $06
    ld b, $06                                     ; $7ba9: $06 $06
    jr nz, jr_086_7bce                            ; $7bab: $20 $21

    jr z, @+$2b                                   ; $7bad: $28 $29

    dec [hl]                                      ; $7baf: $35
    ld [hl], $37                                  ; $7bb0: $36 $37
    jr c, @+$3b                                   ; $7bb2: $38 $39

    ld a, [hl-]                                   ; $7bb4: $3a
    dec sp                                        ; $7bb5: $3b

jr_086_7bb6:
    inc a                                         ; $7bb6: $3c
    dec a                                         ; $7bb7: $3d
    ld a, $3f                                     ; $7bb8: $3e $3f
    ld b, b                                       ; $7bba: $40
    ld b, $06                                     ; $7bbb: $06 $06
    ld b, $06                                     ; $7bbd: $06 $06
    ld b, $06                                     ; $7bbf: $06 $06
    ld b, $06                                     ; $7bc1: $06 $06
    ld b, $06                                     ; $7bc3: $06 $06
    ld b, $03                                     ; $7bc5: $06 $03

jr_086_7bc7:
    ld b, $06                                     ; $7bc7: $06 $06
    ld b, $03                                     ; $7bc9: $06 $03
    jp nc, $0201                                  ; $7bcb: $d2 $01 $02

jr_086_7bce:
    inc bc                                        ; $7bce: $03
    jp nc, $0504                                  ; $7bcf: $d2 $04 $05

    ld b, $d2                                     ; $7bd2: $06 $d2
    ld b, c                                       ; $7bd4: $41
    jr nz, jr_086_7bf8                            ; $7bd5: $20 $21

    jp nc, $2342                                  ; $7bd7: $d2 $42 $23

    inc h                                         ; $7bda: $24
    add b                                         ; $7bdb: $80
    rlca                                          ; $7bdc: $07
    ld b, $06                                     ; $7bdd: $06 $06
    add b                                         ; $7bdf: $80
    rlca                                          ; $7be0: $07
    ld b, $06                                     ; $7be1: $06 $06
    add b                                         ; $7be3: $80
    add h                                         ; $7be4: $84
    ld b, $06                                     ; $7be5: $06 $06
    add b                                         ; $7be7: $80
    add h                                         ; $7be8: $84
    ld b, $06                                     ; $7be9: $06 $06
    dec e                                         ; $7beb: $1d
    ld e, $43                                     ; $7bec: $1e $43
    ld b, h                                       ; $7bee: $44
    inc de                                        ; $7bef: $13
    inc d                                         ; $7bf0: $14
    dec d                                         ; $7bf1: $15
    ld b, l                                       ; $7bf2: $45
    jr z, jr_086_7c1e                             ; $7bf3: $28 $29

    ld a, [hl+]                                   ; $7bf5: $2a
    ld b, [hl]                                    ; $7bf6: $46
    dec hl                                        ; $7bf7: $2b

jr_086_7bf8:
    inc l                                         ; $7bf8: $2c
    dec l                                         ; $7bf9: $2d
    ld b, a                                       ; $7bfa: $47
    ld b, $06                                     ; $7bfb: $06 $06
    ld b, $06                                     ; $7bfd: $06 $06
    ld b, $06                                     ; $7bff: $06 $06
    ld b, $06                                     ; $7c01: $06 $06
    ld b, $06                                     ; $7c03: $06 $06
    ld b, $06                                     ; $7c05: $06 $06
    ld b, $06                                     ; $7c07: $06 $06
    ld b, $06                                     ; $7c09: $06 $06
    ld c, b                                       ; $7c0b: $48
    ld c, c                                       ; $7c0c: $49
    dec e                                         ; $7c0d: $1d
    ld c, d                                       ; $7c0e: $4a
    ld c, e                                       ; $7c0f: $4b
    ld c, h                                       ; $7c10: $4c
    inc de                                        ; $7c11: $13
    ld c, l                                       ; $7c12: $4d
    ld c, [hl]                                    ; $7c13: $4e
    ld c, a                                       ; $7c14: $4f
    ld d, b                                       ; $7c15: $50
    ld d, c                                       ; $7c16: $51
    ld d, d                                       ; $7c17: $52
    ld d, e                                       ; $7c18: $53
    ld d, h                                       ; $7c19: $54
    ld d, l                                       ; $7c1a: $55
    ld b, $06                                     ; $7c1b: $06 $06
    rlca                                          ; $7c1d: $07

jr_086_7c1e:
    inc bc                                        ; $7c1e: $03
    ld b, $06                                     ; $7c1f: $06 $06
    rlca                                          ; $7c21: $07
    inc bc                                        ; $7c22: $03
    ld b, $06                                     ; $7c23: $06 $06
    rlca                                          ; $7c25: $07
    rlca                                          ; $7c26: $07
    ld b, $06                                     ; $7c27: $06 $06
    ld b, $06                                     ; $7c29: $06 $06
    ld d, [hl]                                    ; $7c2b: $56
    ld d, a                                       ; $7c2c: $57
    ld e, b                                       ; $7c2d: $58
    ld e, c                                       ; $7c2e: $59
    ld e, d                                       ; $7c2f: $5a
    ld e, e                                       ; $7c30: $5b
    ld e, h                                       ; $7c31: $5c
    ld e, l                                       ; $7c32: $5d
    ld e, [hl]                                    ; $7c33: $5e
    ld e, a                                       ; $7c34: $5f
    ld h, b                                       ; $7c35: $60
    ld h, c                                       ; $7c36: $61
    ld h, d                                       ; $7c37: $62
    ld h, e                                       ; $7c38: $63
    ld h, h                                       ; $7c39: $64
    ld h, l                                       ; $7c3a: $65
    dec b                                         ; $7c3b: $05
    dec b                                         ; $7c3c: $05
    dec b                                         ; $7c3d: $05
    dec b                                         ; $7c3e: $05
    dec b                                         ; $7c3f: $05
    dec b                                         ; $7c40: $05
    dec b                                         ; $7c41: $05
    dec b                                         ; $7c42: $05
    dec b                                         ; $7c43: $05
    dec b                                         ; $7c44: $05
    dec b                                         ; $7c45: $05
    dec b                                         ; $7c46: $05
    dec b                                         ; $7c47: $05
    dec b                                         ; $7c48: $05
    dec b                                         ; $7c49: $05
    dec b                                         ; $7c4a: $05
    ld h, [hl]                                    ; $7c4b: $66
    ld h, a                                       ; $7c4c: $67
    call nc, $68d5                                ; $7c4d: $d4 $d5 $68
    ld l, c                                       ; $7c50: $69
    rst $10                                       ; $7c51: $d7
    ret c                                         ; $7c52: $d8

    ld l, d                                       ; $7c53: $6a
    ld l, e                                       ; $7c54: $6b
    jp c, Jump_086_6cdb                           ; $7c55: $da $db $6c

    ld l, l                                       ; $7c58: $6d
    db $dd                                        ; $7c59: $dd
    sbc $05                                       ; $7c5a: $de $05
    ld [bc], a                                    ; $7c5c: $02
    ld [bc], a                                    ; $7c5d: $02
    ld [bc], a                                    ; $7c5e: $02
    dec b                                         ; $7c5f: $05
    ld [bc], a                                    ; $7c60: $02
    ld [bc], a                                    ; $7c61: $02
    ld [bc], a                                    ; $7c62: $02
    dec b                                         ; $7c63: $05
    ld [bc], a                                    ; $7c64: $02
    ld [bc], a                                    ; $7c65: $02
    ld [bc], a                                    ; $7c66: $02
    dec b                                         ; $7c67: $05
    ld [bc], a                                    ; $7c68: $02
    ld [bc], a                                    ; $7c69: $02
    ld [bc], a                                    ; $7c6a: $02
    ld l, [hl]                                    ; $7c6b: $6e
    ld l, a                                       ; $7c6c: $6f
    ld [hl], b                                    ; $7c6d: $70
    ld l, a                                       ; $7c6e: $6f
    ld [hl], c                                    ; $7c6f: $71
    ld [hl], d                                    ; $7c70: $72
    ld [hl], e                                    ; $7c71: $73
    ld [hl], h                                    ; $7c72: $74
    ld [hl], l                                    ; $7c73: $75
    halt                                          ; $7c74: $76
    ld [hl], a                                    ; $7c75: $77
    ld a, b                                       ; $7c76: $78
    ld a, c                                       ; $7c77: $79
    ld a, d                                       ; $7c78: $7a
    ld a, e                                       ; $7c79: $7b
    ld a, h                                       ; $7c7a: $7c
    ld [bc], a                                    ; $7c7b: $02
    ld [bc], a                                    ; $7c7c: $02
    ld [bc], a                                    ; $7c7d: $02
    ld [bc], a                                    ; $7c7e: $02
    ld [bc], a                                    ; $7c7f: $02
    ld bc, $0101                                  ; $7c80: $01 $01 $01
    ld [bc], a                                    ; $7c83: $02
    ld bc, $0101                                  ; $7c84: $01 $01 $01
    ld [bc], a                                    ; $7c87: $02
    ld bc, $0101                                  ; $7c88: $01 $01 $01
    push de                                       ; $7c8b: $d5
    call nc, $d2d5                                ; $7c8c: $d4 $d5 $d2
    ld a, l                                       ; $7c8f: $7d
    rst $10                                       ; $7c90: $d7
    ret c                                         ; $7c91: $d8

    jp nc, $da7e                                  ; $7c92: $d2 $7e $da

    db $db                                        ; $7c95: $db
    jp nc, $dd7f                                  ; $7c96: $d2 $7f $dd

    sbc $d2                                       ; $7c99: $de $d2
    ld [bc], a                                    ; $7c9b: $02
    ld [bc], a                                    ; $7c9c: $02
    ld [bc], a                                    ; $7c9d: $02
    add b                                         ; $7c9e: $80
    ld [bc], a                                    ; $7c9f: $02
    ld [bc], a                                    ; $7ca0: $02
    ld [bc], a                                    ; $7ca1: $02
    add b                                         ; $7ca2: $80
    ld [bc], a                                    ; $7ca3: $02
    ld [bc], a                                    ; $7ca4: $02
    ld [bc], a                                    ; $7ca5: $02
    add b                                         ; $7ca6: $80
    ld [bc], a                                    ; $7ca7: $02
    ld [bc], a                                    ; $7ca8: $02
    ld [bc], a                                    ; $7ca9: $02
    add b                                         ; $7caa: $80
    add b                                         ; $7cab: $80
    add c                                         ; $7cac: $81
    add d                                         ; $7cad: $82
    jr jr_086_7ce3                                ; $7cae: $18 $33

    cp $ff                                        ; $7cb0: $fe $ff
    nop                                           ; $7cb2: $00
    ld b, e                                       ; $7cb3: $43
    ld bc, $0302                                  ; $7cb4: $01 $02 $03
    dec d                                         ; $7cb7: $15
    inc b                                         ; $7cb8: $04
    dec b                                         ; $7cb9: $05
    ld b, $0a                                     ; $7cba: $06 $0a
    ld a, [bc]                                    ; $7cbc: $0a
    ld a, [bc]                                    ; $7cbd: $0a
    ld [bc], a                                    ; $7cbe: $02
    rlca                                          ; $7cbf: $07
    rlca                                          ; $7cc0: $07
    rlca                                          ; $7cc1: $07
    rlca                                          ; $7cc2: $07
    ld b, $06                                     ; $7cc3: $06 $06
    ld b, $06                                     ; $7cc5: $06 $06
    ld b, $06                                     ; $7cc7: $06 $06
    ld b, $06                                     ; $7cc9: $06 $06
    add e                                         ; $7ccb: $83
    add h                                         ; $7ccc: $84
    db $fc                                        ; $7ccd: $fc
    db $fd                                        ; $7cce: $fd
    ld a, [de]                                    ; $7ccf: $1a
    dec de                                        ; $7cd0: $1b
    inc sp                                        ; $7cd1: $33
    cp $1d                                        ; $7cd2: $fe $1d
    ld e, $43                                     ; $7cd4: $1e $43
    ld bc, $1413                                  ; $7cd6: $01 $13 $14

jr_086_7cd9:
    dec d                                         ; $7cd9: $15
    inc b                                         ; $7cda: $04
    ld a, [bc]                                    ; $7cdb: $0a
    ld a, [bc]                                    ; $7cdc: $0a
    ld [bc], a                                    ; $7cdd: $02
    ld [bc], a                                    ; $7cde: $02
    rlca                                          ; $7cdf: $07
    rlca                                          ; $7ce0: $07
    rlca                                          ; $7ce1: $07
    rlca                                          ; $7ce2: $07

jr_086_7ce3:
    ld b, $06                                     ; $7ce3: $06 $06
    ld b, $06                                     ; $7ce5: $06 $06
    ld b, $06                                     ; $7ce7: $06 $06
    ld b, $06                                     ; $7ce9: $06 $06
    add l                                         ; $7ceb: $85
    halt                                          ; $7cec: $76
    ld [hl], a                                    ; $7ced: $77
    ld a, b                                       ; $7cee: $78
    rst $38                                       ; $7cef: $ff
    nop                                           ; $7cf0: $00
    ld a, [de]                                    ; $7cf1: $1a
    dec de                                        ; $7cf2: $1b
    ld [bc], a                                    ; $7cf3: $02
    inc bc                                        ; $7cf4: $03
    dec e                                         ; $7cf5: $1d
    ld e, $05                                     ; $7cf6: $1e $05
    ld b, $13                                     ; $7cf8: $06 $13
    inc d                                         ; $7cfa: $14
    ld a, [bc]                                    ; $7cfb: $0a
    ld bc, $0101                                  ; $7cfc: $01 $01 $01
    rlca                                          ; $7cff: $07
    rlca                                          ; $7d00: $07
    rlca                                          ; $7d01: $07
    rlca                                          ; $7d02: $07
    ld b, $06                                     ; $7d03: $06 $06
    ld b, $06                                     ; $7d05: $06 $06
    ld b, $06                                     ; $7d07: $06 $06
    ld b, $06                                     ; $7d09: $06 $06
    add [hl]                                      ; $7d0b: $86
    db $fc                                        ; $7d0c: $fc
    db $fd                                        ; $7d0d: $fd

jr_086_7d0e:
    jp nc, $fe33                                  ; $7d0e: $d2 $33 $fe

    rst $38                                       ; $7d11: $ff
    jp nc, $0143                                  ; $7d12: $d2 $43 $01

    ld [bc], a                                    ; $7d15: $02
    jp nc, Jump_000_0415                          ; $7d16: $d2 $15 $04

    dec b                                         ; $7d19: $05
    jp nc, $020a                                  ; $7d1a: $d2 $0a $02

    ld [bc], a                                    ; $7d1d: $02
    add b                                         ; $7d1e: $80
    rlca                                          ; $7d1f: $07
    rlca                                          ; $7d20: $07
    rlca                                          ; $7d21: $07
    add b                                         ; $7d22: $80
    ld b, $06                                     ; $7d23: $06 $06
    rlca                                          ; $7d25: $07
    add b                                         ; $7d26: $80
    ld b, $06                                     ; $7d27: $06 $06
    rlca                                          ; $7d29: $07
    add b                                         ; $7d2a: $80
    ld a, [hl+]                                   ; $7d2b: $2a
    rra                                           ; $7d2c: $1f
    jr nz, jr_086_7d50                            ; $7d2d: $20 $21

    add a                                         ; $7d2f: $87
    adc b                                         ; $7d30: $88
    dec [hl]                                      ; $7d31: $35
    ld [hl], $89                                  ; $7d32: $36 $89
    adc d                                         ; $7d34: $8a
    adc e                                         ; $7d35: $8b
    adc d                                         ; $7d36: $8a
    adc h                                         ; $7d37: $8c
    adc l                                         ; $7d38: $8d
    adc [hl]                                      ; $7d39: $8e
    adc l                                         ; $7d3a: $8d
    ld b, $06                                     ; $7d3b: $06 $06
    ld b, $06                                     ; $7d3d: $06 $06
    ld c, $0e                                     ; $7d3f: $0e $0e
    ld b, $06                                     ; $7d41: $06 $06
    dec bc                                        ; $7d43: $0b
    dec bc                                        ; $7d44: $0b
    dec bc                                        ; $7d45: $0b
    dec hl                                        ; $7d46: $2b
    dec bc                                        ; $7d47: $0b
    dec bc                                        ; $7d48: $0b
    dec bc                                        ; $7d49: $0b
    dec hl                                        ; $7d4a: $2b
    jr z, jr_086_7d76                             ; $7d4b: $28 $29

    ld a, [hl+]                                   ; $7d4d: $2a
    rra                                           ; $7d4e: $1f
    scf                                           ; $7d4f: $37

jr_086_7d50:
    jr c, jr_086_7cd9                             ; $7d50: $38 $87

    adc b                                         ; $7d52: $88
    adc c                                         ; $7d53: $89
    inc a                                         ; $7d54: $3c
    adc a                                         ; $7d55: $8f
    sub b                                         ; $7d56: $90
    adc h                                         ; $7d57: $8c
    ld b, b                                       ; $7d58: $40
    sub c                                         ; $7d59: $91
    sub d                                         ; $7d5a: $92
    ld b, $06                                     ; $7d5b: $06 $06
    ld b, $06                                     ; $7d5d: $06 $06
    ld b, $06                                     ; $7d5f: $06 $06

jr_086_7d61:
    ld c, $0e                                     ; $7d61: $0e $0e
    dec hl                                        ; $7d63: $2b
    inc hl                                        ; $7d64: $23
    ld c, $0e                                     ; $7d65: $0e $0e
    dec hl                                        ; $7d67: $2b
    inc hl                                        ; $7d68: $23
    ld c, $0e                                     ; $7d69: $0e $0e
    jr nz, @+$23                                  ; $7d6b: $20 $21

    jr z, jr_086_7d98                             ; $7d6d: $28 $29

    dec [hl]                                      ; $7d6f: $35
    sub e                                         ; $7d70: $93
    dec hl                                        ; $7d71: $2b
    inc l                                         ; $7d72: $2c
    sub h                                         ; $7d73: $94
    sub l                                         ; $7d74: $95
    cpl                                           ; $7d75: $2f

jr_086_7d76:
    jr nc, jr_086_7d0e                            ; $7d76: $30 $96

    sub a                                         ; $7d78: $97
    ld a, [de]                                    ; $7d79: $1a
    dec de                                        ; $7d7a: $1b
    ld b, $06                                     ; $7d7b: $06 $06
    ld b, $06                                     ; $7d7d: $06 $06
    ld b, $0e                                     ; $7d7f: $06 $0e
    ld b, $06                                     ; $7d81: $06 $06
    ld c, $0e                                     ; $7d83: $0e $0e
    ld b, $06                                     ; $7d85: $06 $06
    ld c, $0e                                     ; $7d87: $0e $0e
    ld b, $06                                     ; $7d89: $06 $06
    ld a, [hl+]                                   ; $7d8b: $2a
    rra                                           ; $7d8c: $1f
    jr nz, jr_086_7d61                            ; $7d8d: $20 $d2

    dec l                                         ; $7d8f: $2d
    ld [hl+], a                                   ; $7d90: $22
    inc hl                                        ; $7d91: $23
    jp nc, $2531                                  ; $7d92: $d2 $31 $25

    ld h, $d2                                     ; $7d95: $26 $d2
    inc sp                                        ; $7d97: $33

jr_086_7d98:
    cp $ff                                        ; $7d98: $fe $ff
    jp nc, Jump_000_0606                          ; $7d9a: $d2 $06 $06

    rlca                                          ; $7d9d: $07
    add b                                         ; $7d9e: $80
    ld b, $06                                     ; $7d9f: $06 $06
    rlca                                          ; $7da1: $07
    add b                                         ; $7da2: $80
    ld b, $06                                     ; $7da3: $06 $06
    rlca                                          ; $7da5: $07
    add b                                         ; $7da6: $80
    ld b, $06                                     ; $7da7: $06 $06
    rlca                                          ; $7da9: $07
    add b                                         ; $7daa: $80
    sbc b                                         ; $7dab: $98
    sbc c                                         ; $7dac: $99
    sbc d                                         ; $7dad: $9a
    sbc e                                         ; $7dae: $9b
    sbc h                                         ; $7daf: $9c
    sbc l                                         ; $7db0: $9d
    sbc [hl]                                      ; $7db1: $9e
    sbc l                                         ; $7db2: $9d
    sbc a                                         ; $7db3: $9f
    and b                                         ; $7db4: $a0
    and c                                         ; $7db5: $a1
    and d                                         ; $7db6: $a2
    and e                                         ; $7db7: $a3
    and h                                         ; $7db8: $a4
    and l                                         ; $7db9: $a5
    ld d, e                                       ; $7dba: $53
    dec bc                                        ; $7dbb: $0b
    dec bc                                        ; $7dbc: $0b
    dec bc                                        ; $7dbd: $0b
    dec bc                                        ; $7dbe: $0b
    dec bc                                        ; $7dbf: $0b
    dec bc                                        ; $7dc0: $0b
    dec bc                                        ; $7dc1: $0b
    dec hl                                        ; $7dc2: $2b
    rrca                                          ; $7dc3: $0f
    rrca                                          ; $7dc4: $0f
    rrca                                          ; $7dc5: $0f
    rrca                                          ; $7dc6: $0f
    ld c, $0e                                     ; $7dc7: $0e $0e
    ld c, $06                                     ; $7dc9: $0e $06
    and [hl]                                      ; $7dcb: $a6
    ld c, d                                       ; $7dcc: $4a
    ld b, e                                       ; $7dcd: $43
    and a                                         ; $7dce: $a7
    sbc h                                         ; $7dcf: $9c
    ld c, l                                       ; $7dd0: $4d
    dec d                                         ; $7dd1: $15
    xor b                                         ; $7dd2: $a8
    ld d, b                                       ; $7dd3: $50
    ld d, c                                       ; $7dd4: $51
    sbc a                                         ; $7dd5: $9f
    xor c                                         ; $7dd6: $a9
    ld d, h                                       ; $7dd7: $54
    ld d, l                                       ; $7dd8: $55
    and e                                         ; $7dd9: $a3
    and h                                         ; $7dda: $a4
    dec bc                                        ; $7ddb: $0b
    inc hl                                        ; $7ddc: $23
    rlca                                          ; $7ddd: $07
    ld c, $2b                                     ; $7dde: $0e $2b
    inc hl                                        ; $7de0: $23
    rlca                                          ; $7de1: $07
    ld c, $07                                     ; $7de2: $0e $07
    rlca                                          ; $7de4: $07
    rrca                                          ; $7de5: $0f
    ld c, $06                                     ; $7de6: $0e $06
    ld b, $0e                                     ; $7de8: $06 $0e
    ld c, $aa                                     ; $7dea: $0e $aa
    xor e                                         ; $7dec: $ab
    dec e                                         ; $7ded: $1d
    ld e, $ac                                     ; $7dee: $1e $ac
    xor l                                         ; $7df0: $ad
    inc de                                        ; $7df1: $13
    inc d                                         ; $7df2: $14
    xor [hl]                                      ; $7df3: $ae
    xor a                                         ; $7df4: $af
    jr z, @+$2b                                   ; $7df5: $28 $29

    or b                                          ; $7df7: $b0
    or c                                          ; $7df8: $b1
    dec hl                                        ; $7df9: $2b
    inc l                                         ; $7dfa: $2c
    ld c, $0e                                     ; $7dfb: $0e $0e
    ld b, $06                                     ; $7dfd: $06 $06
    ld c, $0e                                     ; $7dff: $0e $0e
    ld b, $06                                     ; $7e01: $06 $06
    ld c, $0e                                     ; $7e03: $0e $0e
    ld b, $06                                     ; $7e05: $06 $06
    ld c, $0e                                     ; $7e07: $0e $0e
    ld b, $06                                     ; $7e09: $06 $06
    ld b, e                                       ; $7e0b: $43
    ld bc, $d202                                  ; $7e0c: $01 $02 $d2
    dec d                                         ; $7e0f: $15
    inc b                                         ; $7e10: $04
    dec b                                         ; $7e11: $05
    jp nc, $1f2a                                  ; $7e12: $d2 $2a $1f

    jr nz, @-$2c                                  ; $7e15: $20 $d2

    dec l                                         ; $7e17: $2d
    ld [hl+], a                                   ; $7e18: $22
    inc hl                                        ; $7e19: $23
    jp nc, Jump_000_0606                          ; $7e1a: $d2 $06 $06

    rlca                                          ; $7e1d: $07
    add b                                         ; $7e1e: $80
    ld b, $06                                     ; $7e1f: $06 $06
    rlca                                          ; $7e21: $07
    add b                                         ; $7e22: $80
    ld b, $06                                     ; $7e23: $06 $06
    rlca                                          ; $7e25: $07
    add b                                         ; $7e26: $80
    ld b, $06                                     ; $7e27: $06 $06
    rlca                                          ; $7e29: $07
    add b                                         ; $7e2a: $80
    jp nc, $26b2                                  ; $7e2b: $d2 $b2 $26

    daa                                           ; $7e2e: $27
    jp nc, $b3b2                                  ; $7e2f: $d2 $b2 $b3

    or h                                          ; $7e32: $b4
    jp nc, $b6b5                                  ; $7e33: $d2 $b5 $b6

    or a                                          ; $7e36: $b7
    jp nc, $b9b8                                  ; $7e37: $d2 $b8 $b9

    cp d                                          ; $7e3a: $ba
    add b                                         ; $7e3b: $80
    adc h                                         ; $7e3c: $8c
    ld b, $06                                     ; $7e3d: $06 $06
    add b                                         ; $7e3f: $80
    adc h                                         ; $7e40: $8c
    ld a, [bc]                                    ; $7e41: $0a
    ld a, [bc]                                    ; $7e42: $0a
    add b                                         ; $7e43: $80
    adc h                                         ; $7e44: $8c
    ld a, [bc]                                    ; $7e45: $0a
    ld a, [bc]                                    ; $7e46: $0a
    add b                                         ; $7e47: $80
    adc h                                         ; $7e48: $8c
    ld a, [bc]                                    ; $7e49: $0a
    ld a, [bc]                                    ; $7e4a: $0a
    cpl                                           ; $7e4b: $2f
    jr nc, jr_086_7e7f                            ; $7e4c: $30 $31

    cp e                                          ; $7e4e: $bb
    ld a, [de]                                    ; $7e4f: $1a
    dec de                                        ; $7e50: $1b
    inc sp                                        ; $7e51: $33
    cp h                                          ; $7e52: $bc
    dec e                                         ; $7e53: $1d
    ld e, $43                                     ; $7e54: $1e $43
    ld bc, $1413                                  ; $7e56: $01 $13 $14
    dec d                                         ; $7e59: $15
    inc b                                         ; $7e5a: $04
    ld b, $06                                     ; $7e5b: $06 $06
    ld b, $0e                                     ; $7e5d: $06 $0e
    ld b, $06                                     ; $7e5f: $06 $06
    ld b, $0e                                     ; $7e61: $06 $0e
    ld b, $06                                     ; $7e63: $06 $06
    ld b, $06                                     ; $7e65: $06 $06
    ld b, $06                                     ; $7e67: $06 $06
    ld b, $06                                     ; $7e69: $06 $06
    cp l                                          ; $7e6b: $bd
    cp [hl]                                       ; $7e6c: $be
    cp a                                          ; $7e6d: $bf
    ret nz                                        ; $7e6e: $c0

    pop bc                                        ; $7e6f: $c1
    jp nz, $c4c3                                  ; $7e70: $c2 $c3 $c4

    ld [bc], a                                    ; $7e73: $02
    inc bc                                        ; $7e74: $03
    dec e                                         ; $7e75: $1d
    ld e, $05                                     ; $7e76: $1e $05
    ld b, $13                                     ; $7e78: $06 $13
    inc d                                         ; $7e7a: $14
    ld c, $0e                                     ; $7e7b: $0e $0e
    ld c, $0e                                     ; $7e7d: $0e $0e

jr_086_7e7f:
    ld c, $0e                                     ; $7e7f: $0e $0e
    ld c, $0e                                     ; $7e81: $0e $0e
    ld b, $06                                     ; $7e83: $06 $06
    ld b, $06                                     ; $7e85: $06 $06
    ld b, $06                                     ; $7e87: $06 $06
    ld b, $06                                     ; $7e89: $06 $06
    jp nc, $c6c5                                  ; $7e8b: $d2 $c5 $c6

    rst $00                                       ; $7e8e: $c7
    ret z                                         ; $7e8f: $c8

    ret                                           ; $7e90: $c9


    ret                                           ; $7e91: $c9


    ret                                           ; $7e92: $c9


    pop de                                        ; $7e93: $d1
    pop de                                        ; $7e94: $d1
    pop de                                        ; $7e95: $d1
    pop de                                        ; $7e96: $d1
    pop de                                        ; $7e97: $d1
    pop de                                        ; $7e98: $d1
    pop de                                        ; $7e99: $d1
    pop de                                        ; $7e9a: $d1
    add b                                         ; $7e9b: $80
    adc h                                         ; $7e9c: $8c
    ld a, [bc]                                    ; $7e9d: $0a
    ld a, [bc]                                    ; $7e9e: $0a
    adc b                                         ; $7e9f: $88
    adc b                                         ; $7ea0: $88
    adc b                                         ; $7ea1: $88
    adc b                                         ; $7ea2: $88
    add b                                         ; $7ea3: $80
    add b                                         ; $7ea4: $80
    add b                                         ; $7ea5: $80
    add b                                         ; $7ea6: $80
    add b                                         ; $7ea7: $80
    add b                                         ; $7ea8: $80
    add b                                         ; $7ea9: $80
    add b                                         ; $7eaa: $80
    jr z, jr_086_7ed6                             ; $7eab: $28 $29

    ld a, [hl+]                                   ; $7ead: $2a
    rra                                           ; $7eae: $1f
    ret                                           ; $7eaf: $c9


    ret                                           ; $7eb0: $c9


    ret                                           ; $7eb1: $c9


    ret                                           ; $7eb2: $c9


    pop de                                        ; $7eb3: $d1
    pop de                                        ; $7eb4: $d1
    pop de                                        ; $7eb5: $d1
    pop de                                        ; $7eb6: $d1
    pop de                                        ; $7eb7: $d1
    pop de                                        ; $7eb8: $d1
    pop de                                        ; $7eb9: $d1
    pop de                                        ; $7eba: $d1
    ld b, $06                                     ; $7ebb: $06 $06
    ld b, $06                                     ; $7ebd: $06 $06
    adc b                                         ; $7ebf: $88
    adc b                                         ; $7ec0: $88
    adc b                                         ; $7ec1: $88
    adc b                                         ; $7ec2: $88
    add b                                         ; $7ec3: $80
    add b                                         ; $7ec4: $80
    add b                                         ; $7ec5: $80
    add b                                         ; $7ec6: $80
    add b                                         ; $7ec7: $80
    add b                                         ; $7ec8: $80
    add b                                         ; $7ec9: $80
    add b                                         ; $7eca: $80
    jr nz, jr_086_7eee                            ; $7ecb: $20 $21

    jr z, jr_086_7ef8                             ; $7ecd: $28 $29

    ret                                           ; $7ecf: $c9


    ret                                           ; $7ed0: $c9


    ret                                           ; $7ed1: $c9


    ret                                           ; $7ed2: $c9


    pop de                                        ; $7ed3: $d1
    pop de                                        ; $7ed4: $d1
    pop de                                        ; $7ed5: $d1

jr_086_7ed6:
    pop de                                        ; $7ed6: $d1
    pop de                                        ; $7ed7: $d1
    pop de                                        ; $7ed8: $d1
    pop de                                        ; $7ed9: $d1
    pop de                                        ; $7eda: $d1
    ld b, $06                                     ; $7edb: $06 $06
    ld b, $06                                     ; $7edd: $06 $06
    adc b                                         ; $7edf: $88
    adc b                                         ; $7ee0: $88
    adc b                                         ; $7ee1: $88
    adc b                                         ; $7ee2: $88
    add b                                         ; $7ee3: $80
    add b                                         ; $7ee4: $80
    add b                                         ; $7ee5: $80
    add b                                         ; $7ee6: $80
    add b                                         ; $7ee7: $80
    add b                                         ; $7ee8: $80
    add b                                         ; $7ee9: $80
    add b                                         ; $7eea: $80
    jp z, $bdcb                                   ; $7eeb: $ca $cb $bd

jr_086_7eee:
    cp [hl]                                       ; $7eee: $be
    call z, $c1cd                                 ; $7eef: $cc $cd $c1
    jp nz, $0143                                  ; $7ef2: $c2 $43 $01

    ld [bc], a                                    ; $7ef5: $02
    inc bc                                        ; $7ef6: $03
    dec d                                         ; $7ef7: $15

jr_086_7ef8:
    inc b                                         ; $7ef8: $04
    adc $06                                       ; $7ef9: $ce $06
    ld c, $0e                                     ; $7efb: $0e $0e
    ld c, $0e                                     ; $7efd: $0e $0e
    ld c, $0e                                     ; $7eff: $0e $0e
    ld c, $0e                                     ; $7f01: $0e $0e
    ld b, $06                                     ; $7f03: $06 $06
    ld b, $06                                     ; $7f05: $06 $06
    ld b, $06                                     ; $7f07: $06 $06
    add hl, bc                                    ; $7f09: $09
    ld b, $bf                                     ; $7f0a: $06 $bf
    ret nz                                        ; $7f0c: $c0

    rst $08                                       ; $7f0d: $cf
    ret nc                                        ; $7f0e: $d0

    jp $d1c4                                      ; $7f0f: $c3 $c4 $d1


    jp nc, $d4d3                                  ; $7f12: $d2 $d3 $d4

    push de                                       ; $7f15: $d5
    sub $d7                                       ; $7f16: $d6 $d7
    ret c                                         ; $7f18: $d8

    reti                                          ; $7f19: $d9


    jp c, Jump_000_0e0e                           ; $7f1a: $da $0e $0e

    add hl, bc                                    ; $7f1d: $09
    add hl, bc                                    ; $7f1e: $09
    ld c, $0e                                     ; $7f1f: $0e $0e
    add hl, bc                                    ; $7f21: $09
    add hl, bc                                    ; $7f22: $09
    inc c                                         ; $7f23: $0c
    inc c                                         ; $7f24: $0c
    inc c                                         ; $7f25: $0c
    inc c                                         ; $7f26: $0c
    inc c                                         ; $7f27: $0c
    inc c                                         ; $7f28: $0c
    inc c                                         ; $7f29: $0c
    inc c                                         ; $7f2a: $0c
    db $db                                        ; $7f2b: $db
    call c, Call_000_302f                         ; $7f2c: $dc $2f $30
    db $dd                                        ; $7f2f: $dd
    sbc $1a                                       ; $7f30: $de $1a
    dec de                                        ; $7f32: $1b
    rst $18                                       ; $7f33: $df
    ldh [rSC], a                                  ; $7f34: $e0 $02
    inc bc                                        ; $7f36: $03
    pop hl                                        ; $7f37: $e1
    ld [c], a                                     ; $7f38: $e2
    dec b                                         ; $7f39: $05
    adc $0e                                       ; $7f3a: $ce $0e
    ld c, $06                                     ; $7f3c: $0e $06
    ld b, $0e                                     ; $7f3e: $06 $0e
    ld c, $06                                     ; $7f40: $0e $06
    ld b, $0c                                     ; $7f42: $06 $0c
    inc c                                         ; $7f44: $0c
    ld b, $06                                     ; $7f45: $06 $06
    inc c                                         ; $7f47: $0c
    inc c                                         ; $7f48: $0c
    ld b, $29                                     ; $7f49: $06 $29
    ld sp, $2625                                  ; $7f4b: $31 $25 $26
    jp nc, $fe33                                  ; $7f4e: $d2 $33 $fe

    rst $38                                       ; $7f51: $ff
    jp nc, $0143                                  ; $7f52: $d2 $43 $01

    ld [bc], a                                    ; $7f55: $02
    jp nc, Jump_000_1e15                          ; $7f56: $d2 $15 $1e

    dec b                                         ; $7f59: $05
    jp nc, Jump_000_0606                          ; $7f5a: $d2 $06 $06

    rlca                                          ; $7f5d: $07
    add b                                         ; $7f5e: $80
    ld b, $06                                     ; $7f5f: $06 $06
    rlca                                          ; $7f61: $07
    add b                                         ; $7f62: $80
    ld b, $06                                     ; $7f63: $06 $06
    rlca                                          ; $7f65: $07
    add b                                         ; $7f66: $80
    ld b, $06                                     ; $7f67: $06 $06
    rlca                                          ; $7f69: $07
    add b                                         ; $7f6a: $80
    ld a, [hl+]                                   ; $7f6b: $2a
    rra                                           ; $7f6c: $1f
    db $e3                                        ; $7f6d: $e3
    db $e4                                        ; $7f6e: $e4
    ret                                           ; $7f6f: $c9


    ret                                           ; $7f70: $c9


    ret                                           ; $7f71: $c9


    ret                                           ; $7f72: $c9


    pop de                                        ; $7f73: $d1
    pop de                                        ; $7f74: $d1
    pop de                                        ; $7f75: $d1
    pop de                                        ; $7f76: $d1
    pop de                                        ; $7f77: $d1
    pop de                                        ; $7f78: $d1
    pop de                                        ; $7f79: $d1
    pop de                                        ; $7f7a: $d1
    ld b, $06                                     ; $7f7b: $06 $06
    add hl, bc                                    ; $7f7d: $09
    add hl, bc                                    ; $7f7e: $09
    adc b                                         ; $7f7f: $88
    adc b                                         ; $7f80: $88
    adc b                                         ; $7f81: $88
    adc b                                         ; $7f82: $88
    add b                                         ; $7f83: $80
    add b                                         ; $7f84: $80
    add b                                         ; $7f85: $80
    add b                                         ; $7f86: $80
    add b                                         ; $7f87: $80
    add b                                         ; $7f88: $80
    add b                                         ; $7f89: $80
    add b                                         ; $7f8a: $80
    push hl                                       ; $7f8b: $e5
    and $e7                                       ; $7f8c: $e6 $e7
    rst $20                                       ; $7f8e: $e7
    ret                                           ; $7f8f: $c9


    ret                                           ; $7f90: $c9


    ret                                           ; $7f91: $c9


    ret                                           ; $7f92: $c9


    pop de                                        ; $7f93: $d1
    pop de                                        ; $7f94: $d1
    pop de                                        ; $7f95: $d1
    pop de                                        ; $7f96: $d1
    pop de                                        ; $7f97: $d1
    pop de                                        ; $7f98: $d1
    pop de                                        ; $7f99: $d1
    pop de                                        ; $7f9a: $d1
    inc c                                         ; $7f9b: $0c
    inc c                                         ; $7f9c: $0c
    inc c                                         ; $7f9d: $0c
    inc c                                         ; $7f9e: $0c
    adc b                                         ; $7f9f: $88
    adc b                                         ; $7fa0: $88

jr_086_7fa1:
    adc b                                         ; $7fa1: $88
    adc b                                         ; $7fa2: $88
    add b                                         ; $7fa3: $80
    add b                                         ; $7fa4: $80
    add b                                         ; $7fa5: $80
    add b                                         ; $7fa6: $80
    add b                                         ; $7fa7: $80
    add b                                         ; $7fa8: $80
    add b                                         ; $7fa9: $80
    add b                                         ; $7faa: $80
    add sp, -$17                                  ; $7fab: $e8 $e9
    db $e4                                        ; $7fad: $e4
    db $e3                                        ; $7fae: $e3
    ret                                           ; $7faf: $c9


    ret                                           ; $7fb0: $c9


    ret                                           ; $7fb1: $c9


    ret                                           ; $7fb2: $c9


    pop de                                        ; $7fb3: $d1
    pop de                                        ; $7fb4: $d1
    pop de                                        ; $7fb5: $d1
    pop de                                        ; $7fb6: $d1
    pop de                                        ; $7fb7: $d1
    pop de                                        ; $7fb8: $d1
    pop de                                        ; $7fb9: $d1
    pop de                                        ; $7fba: $d1
    inc c                                         ; $7fbb: $0c
    inc c                                         ; $7fbc: $0c
    add hl, hl                                    ; $7fbd: $29
    add hl, hl                                    ; $7fbe: $29
    adc b                                         ; $7fbf: $88
    adc b                                         ; $7fc0: $88
    adc b                                         ; $7fc1: $88
    adc b                                         ; $7fc2: $88
    add b                                         ; $7fc3: $80
    add b                                         ; $7fc4: $80
    add b                                         ; $7fc5: $80
    add b                                         ; $7fc6: $80
    add b                                         ; $7fc7: $80
    add b                                         ; $7fc8: $80
    add b                                         ; $7fc9: $80
    add b                                         ; $7fca: $80
    jr z, jr_086_7fe1                             ; $7fcb: $28 $14

    jr nz, jr_086_7fa1                            ; $7fcd: $20 $d2

    ret                                           ; $7fcf: $c9


    ret                                           ; $7fd0: $c9


    ret                                           ; $7fd1: $c9


    ld [$d1d1], a                                 ; $7fd2: $ea $d1 $d1
    pop de                                        ; $7fd5: $d1
    pop de                                        ; $7fd6: $d1
    pop de                                        ; $7fd7: $d1
    pop de                                        ; $7fd8: $d1
    pop de                                        ; $7fd9: $d1
    pop de                                        ; $7fda: $d1
    ld b, $06                                     ; $7fdb: $06 $06
    rlca                                          ; $7fdd: $07
    add b                                         ; $7fde: $80
    adc b                                         ; $7fdf: $88
    adc b                                         ; $7fe0: $88

jr_086_7fe1:
    adc b                                         ; $7fe1: $88
    adc b                                         ; $7fe2: $88
    add b                                         ; $7fe3: $80
    add b                                         ; $7fe4: $80
    add b                                         ; $7fe5: $80
    add b                                         ; $7fe6: $80
    add b                                         ; $7fe7: $80
    add b                                         ; $7fe8: $80
    add b                                         ; $7fe9: $80
    add b                                         ; $7fea: $80
    nop                                           ; $7feb: $00
    jr c, @+$61                                   ; $7fec: $38 $5f

    add hl, hl                                    ; $7fee: $29
    ld c, d                                       ; $7fef: $4a
    add hl, hl                                    ; $7ff0: $29
    nop                                           ; $7ff1: $00
    nop                                           ; $7ff2: $00
    nop                                           ; $7ff3: $00
    jr c, @+$12                                   ; $7ff4: $38 $10

    ld [bc], a                                    ; $7ff6: $02
    ld a, a                                       ; $7ff7: $7f
    ld b, e                                       ; $7ff8: $43
    nop                                           ; $7ff9: $00
    nop                                           ; $7ffa: $00
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
