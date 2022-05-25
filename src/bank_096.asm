; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $096", ROMX[$4000], BANK[$96]

    sub [hl]                                      ; $4000: $96

Jump_096_4001:
    ret nz                                        ; $4001: $c0

    rla                                           ; $4002: $17
    inc sp                                        ; $4003: $33
    dec bc                                        ; $4004: $0b
    ld b, d                                       ; $4005: $42
    rst $38                                       ; $4006: $ff
    ld bc, $9360                                  ; $4007: $01 $60 $93
    cpl                                           ; $400a: $2f
    push hl                                       ; $400b: $e5

Jump_096_400c:
    rra                                           ; $400c: $1f

Jump_096_400d:
    inc b                                         ; $400d: $04
    ld [$8192], sp                                ; $400e: $08 $92 $81
    inc b                                         ; $4011: $04
    db $10                                        ; $4012: $10
    rst $20                                       ; $4013: $e7
    rra                                           ; $4014: $1f
    push af                                       ; $4015: $f5
    db $e3                                        ; $4016: $e3
    ld a, [c]                                     ; $4017: $f2
    rst $20                                       ; $4018: $e7
    inc b                                         ; $4019: $04
    jr c, jr_096_4021                             ; $401a: $38 $05

    or e                                          ; $401c: $b3
    rst $20                                       ; $401d: $e7
    sub d                                         ; $401e: $92
    cpl                                           ; $401f: $2f
    and a                                         ; $4020: $a7

jr_096_4021:
    inc e                                         ; $4021: $1c
    nop                                           ; $4022: $00
    and a                                         ; $4023: $a7
    inc h                                         ; $4024: $24
    nop                                           ; $4025: $00
    call c, $1804                                 ; $4026: $dc $04 $18
    ld b, b                                       ; $4029: $40
    jr c, @+$81                                   ; $402a: $38 $7f

    inc b                                         ; $402c: $04
    db $10                                        ; $402d: $10
    inc h                                         ; $402e: $24
    ld [$0028], sp                                ; $402f: $08 $28 $00
    and a                                         ; $4032: $a7
    ld d, c                                       ; $4033: $51
    nop                                           ; $4034: $00
    ld b, a                                       ; $4035: $47
    or l                                          ; $4036: $b5
    db $e3                                        ; $4037: $e3
    pop de                                        ; $4038: $d1
    rst $20                                       ; $4039: $e7
    or l                                          ; $403a: $b5
    db $e3                                        ; $403b: $e3
    sub d                                         ; $403c: $92
    nop                                           ; $403d: $00
    cpl                                           ; $403e: $2f
    and l                                         ; $403f: $a5
    rra                                           ; $4040: $1f
    add d                                         ; $4041: $82
    ccf                                           ; $4042: $3f
    and l                                         ; $4043: $a5
    rra                                           ; $4044: $1f
    add e                                         ; $4045: $83
    add e                                         ; $4046: $83
    inc b                                         ; $4047: $04
    nop                                           ; $4048: $00
    jp $a73f                                      ; $4049: $c3 $3f $a7


    rra                                           ; $404c: $1f
    cp a                                          ; $404d: $bf
    jr z, jr_096_4070                             ; $404e: $28 $20

    ld a, b                                       ; $4050: $78
    jr z, jr_096_4053                             ; $4051: $28 $00

jr_096_4053:
    ld d, c                                       ; $4053: $51
    rst $20                                       ; $4054: $e7
    dec [hl]                                      ; $4055: $35
    db $e3                                        ; $4056: $e3
    ld d, e                                       ; $4057: $53
    rst $20                                       ; $4058: $e7
    or l                                          ; $4059: $b5
    and e                                         ; $405a: $a3
    ld bc, $475b                                  ; $405b: $01 $5b $47
    dec [hl]                                      ; $405e: $35
    and e                                         ; $405f: $a3
    ld e, e                                       ; $4060: $5b
    rst $20                                       ; $4061: $e7

jr_096_4062:
    dec d                                         ; $4062: $15
    jr nc, jr_096_4075                            ; $4063: $30 $10

    ld d, a                                       ; $4065: $57
    jp nc, Jump_000_0034                          ; $4066: $d2 $34 $00

    db $d3                                        ; $4069: $d3
    ld l, b                                       ; $406a: $68
    nop                                           ; $406b: $00
    db $d3                                        ; $406c: $d3
    inc a                                         ; $406d: $3c
    nop                                           ; $406e: $00
    inc d                                         ; $406f: $14

jr_096_4070:
    ld [$2804], sp                                ; $4070: $08 $04 $28
    dec c                                         ; $4073: $0d
    dec de                                        ; $4074: $1b

jr_096_4075:
    rst $20                                       ; $4075: $e7
    inc de                                        ; $4076: $13
    rst $20                                       ; $4077: $e7
    or b                                          ; $4078: $b0
    jr c, @+$4c                                   ; $4079: $38 $4a

    ld [$bf3f], sp                                ; $407b: $08 $3f $bf
    ld d, b                                       ; $407e: $50
    nop                                           ; $407f: $00
    rst $30                                       ; $4080: $f7
    rst $38                                       ; $4081: $ff
    rst $28                                       ; $4082: $ef
    rst $38                                       ; $4083: $ff
    rst $18                                       ; $4084: $df
    ld a, a                                       ; $4085: $7f
    ccf                                           ; $4086: $3f
    rst $38                                       ; $4087: $ff
    nop                                           ; $4088: $00
    sbc a                                         ; $4089: $9f
    ld a, a                                       ; $408a: $7f
    ld l, a                                       ; $408b: $6f
    cp a                                          ; $408c: $bf
    sbc a                                         ; $408d: $9f
    ld a, a                                       ; $408e: $7f
    rst $10                                       ; $408f: $d7
    ccf                                           ; $4090: $3f
    ld [$3fdb], sp                                ; $4091: $08 $db $3f
    rst $30                                       ; $4094: $f7
    rra                                           ; $4095: $1f
    inc d                                         ; $4096: $14
    ld [$eff7], sp                                ; $4097: $08 $f7 $ef
    db $eb                                        ; $409a: $eb
    nop                                           ; $409b: $00
    rst $30                                       ; $409c: $f7
    push hl                                       ; $409d: $e5
    rst $38                                       ; $409e: $ff
    db $fd                                        ; $409f: $fd
    db $e3                                        ; $40a0: $e3
    ld a, [$fde5]                                 ; $40a1: $fa $e5 $fd
    dec c                                         ; $40a4: $0d
    db $e3                                        ; $40a5: $e3
    rst $38                                       ; $40a6: $ff
    rst $38                                       ; $40a7: $ff
    ld [hl], a                                    ; $40a8: $77
    di                                            ; $40a9: $f3
    jr nz, @+$0a                                  ; $40aa: $20 $08

    ld [$ff55], sp                                ; $40ac: $08 $55 $ff
    jr nc, jr_096_411f                            ; $40af: $30 $6e

    cp $04                                        ; $40b1: $fe $04
    jr nz, @+$12                                  ; $40b3: $20 $10

    ld c, c                                       ; $40b5: $49
    ei                                            ; $40b6: $fb
    ld d, d                                       ; $40b7: $52
    nop                                           ; $40b8: $00
    jr jr_096_40e3                                ; $40b9: $18 $28

    jr nz, jr_096_40f5                            ; $40bb: $20 $38

    ld a, a                                       ; $40bd: $7f
    ldh [$7a], a                                  ; $40be: $e0 $7a
    db $10                                        ; $40c0: $10
    inc b                                         ; $40c1: $04
    jr z, jr_096_40e8                             ; $40c2: $28 $24

    ld [$f7fb], sp                                ; $40c4: $08 $fb $f7
    push af                                       ; $40c7: $f5
    ei                                            ; $40c8: $fb
    ld a, [c]                                     ; $40c9: $f2
    nop                                           ; $40ca: $00
    rst $38                                       ; $40cb: $ff
    ld a, [hl]                                    ; $40cc: $7e
    pop af                                        ; $40cd: $f1
    db $fd                                        ; $40ce: $fd
    ld a, [c]                                     ; $40cf: $f2
    ld a, [hl]                                    ; $40d0: $7e
    pop af                                        ; $40d1: $f1
    cp $a3                                        ; $40d2: $fe $a3
    ld c, d                                       ; $40d4: $4a
    ld [$04fe], sp                                ; $40d5: $08 $fe $04
    ld [$febf], sp                                ; $40d8: $08 $bf $fe
    ld a, a                                       ; $40db: $7f
    inc b                                         ; $40dc: $04
    nop                                           ; $40dd: $00
    and [hl]                                      ; $40de: $a6
    jr nz, jr_096_4062                            ; $40df: $20 $81

    sub [hl]                                      ; $40e1: $96
    nop                                           ; $40e2: $00

jr_096_40e3:
    sub a                                         ; $40e3: $97
    ld a, a                                       ; $40e4: $7f
    rst $08                                       ; $40e5: $cf
    ccf                                           ; $40e6: $3f
    sbc a                                         ; $40e7: $9f

jr_096_40e8:
    ld a, a                                       ; $40e8: $7f
    jr nc, jr_096_4123                            ; $40e9: $30 $38

    ld b, b                                       ; $40eb: $40
    cp $30                                        ; $40ec: $fe $30
    nop                                           ; $40ee: $00
    cp $f1                                        ; $40ef: $fe $f1
    ld hl, sp-$0d                                 ; $40f1: $f8 $f3
    db $fd                                        ; $40f3: $fd
    di                                            ; $40f4: $f3

jr_096_40f5:
    and b                                         ; $40f5: $a0
    inc b                                         ; $40f6: $04
    ld [$3efa], sp                                ; $40f7: $08 $fa $3e
    nop                                           ; $40fa: $00
    ld a, [$ddf1]                                 ; $40fb: $fa $f1 $dd
    ld a, [c]                                     ; $40fe: $f2
    cp a                                          ; $40ff: $bf
    inc [hl]                                      ; $4100: $34
    cp $f7                                        ; $4101: $fe $f7
    ld a, [hl-]                                   ; $4103: $3a
    nop                                           ; $4104: $00
    ld a, $08                                     ; $4105: $3e $08
    ld [hl], a                                    ; $4107: $77
    ld b, d                                       ; $4108: $42
    nop                                           ; $4109: $00
    ld [hl], l                                    ; $410a: $75
    cp $45                                        ; $410b: $fe $45
    ld e, a                                       ; $410d: $5f
    inc [hl]                                      ; $410e: $34
    nop                                           ; $410f: $00
    ld e, a                                       ; $4110: $5f
    ccf                                           ; $4111: $3f
    sub a                                         ; $4112: $97
    inc b                                         ; $4113: $04
    nop                                           ; $4114: $00
    rla                                           ; $4115: $17
    inc b                                         ; $4116: $04
    db $10                                        ; $4117: $10
    ld bc, $f3f9                                  ; $4118: $01 $f9 $f3
    cp h                                          ; $411b: $bc
    di                                            ; $411c: $f3
    ld sp, hl                                     ; $411d: $f9
    di                                            ; $411e: $f3

jr_096_411f:
    db $fc                                        ; $411f: $fc
    inc b                                         ; $4120: $04
    nop                                           ; $4121: $00
    inc bc                                        ; $4122: $03

jr_096_4123:
    cp [hl]                                       ; $4123: $be
    pop af                                        ; $4124: $f1
    ld sp, hl                                     ; $4125: $f9
    ld a, [c]                                     ; $4126: $f2
    xor [hl]                                      ; $4127: $ae
    pop af                                        ; $4128: $f1
    ld a, [bc]                                    ; $4129: $0a
    add hl, hl                                    ; $412a: $29
    sub h                                         ; $412b: $94
    jr jr_096_419e                                ; $412c: $18 $70

    ld e, a                                       ; $412e: $5f
    rst $08                                       ; $412f: $cf
    ld b, c                                       ; $4130: $41
    and [hl]                                      ; $4131: $a6
    jr @+$16                                      ; $4132: $18 $14

    ld [$7fbf], sp                                ; $4134: $08 $bf $7f
    ld e, a                                       ; $4137: $5f
    cp a                                          ; $4138: $bf
    nop                                           ; $4139: $00
    cp a                                          ; $413a: $bf
    ld a, a                                       ; $413b: $7f
    xor $1f                                       ; $413c: $ee $1f
    rst $00                                       ; $413e: $c7
    ccf                                           ; $413f: $3f
    xor $1f                                       ; $4140: $ee $1f
    jr jr_096_41c3                                ; $4142: $18 $7f

    rst $38                                       ; $4144: $ff
    xor $aa                                       ; $4145: $ee $aa
    ld hl, $0808                                  ; $4147: $21 $08 $08
    xor d                                         ; $414a: $aa

jr_096_414b:
    rst $38                                       ; $414b: $ff
    rst $00                                       ; $414c: $c7
    inc a                                         ; $414d: $3c
    ccf                                           ; $414e: $3f
    xor a                                         ; $414f: $af
    jr jr_096_4152                                ; $4150: $18 $00

jr_096_4152:
    inc b                                         ; $4152: $04
    jr c, jr_096_414b                             ; $4153: $38 $f6

    ld [$28fe], sp                                ; $4155: $08 $fe $28
    rst $38                                       ; $4158: $ff

jr_096_4159:
    rst $38                                       ; $4159: $ff
    nop                                           ; $415a: $00
    ld [$a7ff], a                                 ; $415b: $ea $ff $a7
    rra                                           ; $415e: $1f
    xor e                                         ; $415f: $ab
    rra                                           ; $4160: $1f
    and a                                         ; $4161: $a7
    rra                                           ; $4162: $1f
    nop                                           ; $4163: $00
    xor a                                         ; $4164: $af
    rra                                           ; $4165: $1f
    sub a                                         ; $4166: $97
    ccf                                           ; $4167: $3f
    rst $28                                       ; $4168: $ef
    rra                                           ; $4169: $1f
    sub a                                         ; $416a: $97
    cpl                                           ; $416b: $2f
    jr nz, jr_096_4159                            ; $416c: $20 $eb

    rra                                           ; $416e: $1f
    add h                                         ; $416f: $84
    ld bc, $1bef                                  ; $4170: $01 $ef $1b
    rst $20                                       ; $4173: $e7
    rla                                           ; $4174: $17
    rst $28                                       ; $4175: $ef
    nop                                           ; $4176: $00
    ld de, $02ed                                  ; $4177: $11 $ed $02
    xor d                                         ; $417a: $aa
    ld bc, $0255                                  ; $417b: $01 $55 $02
    xor d                                         ; $417e: $aa
    nop                                           ; $417f: $00
    dec d                                         ; $4180: $15
    ld d, l                                       ; $4181: $55
    cpl                                           ; $4182: $2f
    rst $38                                       ; $4183: $ff
    ld de, $02ff                                  ; $4184: $11 $ff $02
    rst $38                                       ; $4187: $ff
    db $10                                        ; $4188: $10

jr_096_4189:
    ld [$00ff], sp                                ; $4189: $08 $ff $00
    ld [bc], a                                    ; $418c: $02
    jr z, jr_096_4189                             ; $418d: $28 $fa

    nop                                           ; $418f: $00
    ld d, l                                       ; $4190: $55
    nop                                           ; $4191: $00
    ld c, [hl]                                    ; $4192: $4e
    xor d                                         ; $4193: $aa
    ld c, $18                                     ; $4194: $0e $18
    ld bc, $16fe                                  ; $4196: $01 $fe $16
    jr nc, jr_096_41bb                            ; $4199: $30 $20

    jr nz, jr_096_4211                            ; $419b: $20 $74

    add hl, de                                    ; $419d: $19

jr_096_419e:
    nop                                           ; $419e: $00
    ld a, [bc]                                    ; $419f: $0a
    xor d                                         ; $41a0: $aa
    ld de, $5555                                  ; $41a1: $11 $55 $55
    adc d                                         ; $41a4: $8a
    nop                                           ; $41a5: $00
    ld d, l                                       ; $41a6: $55
    add d                                         ; $41a7: $82
    nop                                           ; $41a8: $00
    ld de, $86a1                                  ; $41a9: $11 $a1 $86
    nop                                           ; $41ac: $00
    ld d, b                                       ; $41ad: $50
    inc [hl]                                      ; $41ae: $34
    jr jr_096_4206                                ; $41af: $18 $55

    nop                                           ; $41b1: $00
    xor a                                         ; $41b2: $af
    xor d                                         ; $41b3: $aa
    ld c, b                                       ; $41b4: $48
    nop                                           ; $41b5: $00
    xor b                                         ; $41b6: $a8
    inc b                                         ; $41b7: $04
    ld [$5022], sp                                ; $41b8: $08 $22 $50

jr_096_41bb:
    nop                                           ; $41bb: $00
    adc b                                         ; $41bc: $88
    inc a                                         ; $41bd: $3c
    ld b, b                                       ; $41be: $40
    add b                                         ; $41bf: $80
    rst $38                                       ; $41c0: $ff
    add b                                         ; $41c1: $80
    dec b                                         ; $41c2: $05

jr_096_41c3:
    cp $00                                        ; $41c3: $fe $00
    ld d, l                                       ; $41c5: $55
    add b                                         ; $41c6: $80
    xor d                                         ; $41c7: $aa
    ld b, h                                       ; $41c8: $44
    ld a, [bc]                                    ; $41c9: $0a
    rlc h                                         ; $41ca: $cb $04
    jr nc, jr_096_41fe                            ; $41cc: $30 $30

    and l                                         ; $41ce: $a5
    ld e, a                                       ; $41cf: $5f
    inc [hl]                                      ; $41d0: $34
    ld bc, $013c                                  ; $41d1: $01 $3c $01
    ret z                                         ; $41d4: $c8

    ld [c], a                                     ; $41d5: $e2
    ret nc                                        ; $41d6: $d0

    pop de                                        ; $41d7: $d1
    ld bc, $e3c9                                  ; $41d8: $01 $c9 $e3
    ld [$d9f1], a                                 ; $41db: $ea $f1 $d9
    di                                            ; $41de: $f3
    rst $38                                       ; $41df: $ff
    inc [hl]                                      ; $41e0: $34
    ld bc, $ff01                                  ; $41e1: $01 $01 $ff
    cp $a1                                        ; $41e4: $fe $a1
    xor d                                         ; $41e6: $aa
    ld d, c                                       ; $41e7: $51
    ld d, h                                       ; $41e8: $54
    push af                                       ; $41e9: $f5
    adc e                                         ; $41ea: $8b
    ld bc, $f576                                  ; $41eb: $01 $76 $f5
    ld b, b                                       ; $41ee: $40
    ld bc, $1938                                  ; $41ef: $01 $38 $19
    ld b, b                                       ; $41f2: $40
    add hl, bc                                    ; $41f3: $09
    ld c, a                                       ; $41f4: $4f
    ld b, b                                       ; $41f5: $40
    add hl, bc                                    ; $41f6: $09
    inc [hl]                                      ; $41f7: $34
    ld bc, $0051                                  ; $41f8: $01 $51 $00
    ld d, c                                       ; $41fb: $51
    xor d                                         ; $41fc: $aa
    and b                                         ; $41fd: $a0

jr_096_41fe:
    pop de                                        ; $41fe: $d1
    pop de                                        ; $41ff: $d1
    xor [hl]                                      ; $4200: $ae
    pop af                                        ; $4201: $f1
    ld a, c                                       ; $4202: $79
    ld bc, $aaf3                                  ; $4203: $01 $f3 $aa

Jump_096_4206:
jr_096_4206:
    pop af                                        ; $4206: $f1
    add sp, -$0d                                  ; $4207: $e8 $f3
    reti                                          ; $4209: $d9


    di                                            ; $420a: $f3
    inc b                                         ; $420b: $04
    ld [$c808], sp                                ; $420c: $08 $08 $c8
    db $d3                                        ; $420f: $d3
    ret                                           ; $4210: $c9


jr_096_4211:
    db $e3                                        ; $4211: $e3
    inc b                                         ; $4212: $04
    ld [$fefb], sp                                ; $4213: $08 $fb $fe
    pop af                                        ; $4216: $f1

jr_096_4217:
    jr nz, jr_096_4217                            ; $4217: $20 $fe

    ei                                            ; $4219: $fb
    jr c, jr_096_421c                             ; $421a: $38 $00

jr_096_421c:
    di                                            ; $421c: $f3
    or $f1                                        ; $421d: $f6 $f1
    ld a, [$16f1]                                 ; $421f: $fa $f1 $16
    db $f4                                        ; $4222: $f4
    pop af                                        ; $4223: $f1
    ld a, [$0834]                                 ; $4224: $fa $34 $08
    ld c, a                                       ; $4227: $4f
    cp b                                          ; $4228: $b8
    ld bc, $2804                                  ; $4229: $01 $04 $28
    ld e, l                                       ; $422c: $5d
    nop                                           ; $422d: $00
    di                                            ; $422e: $f3
    adc d                                         ; $422f: $8a
    pop af                                        ; $4230: $f1
    ld e, c                                       ; $4231: $59
    di                                            ; $4232: $f3
    xor b                                         ; $4233: $a8
    di                                            ; $4234: $f3
    ld e, c                                       ; $4235: $59
    nop                                           ; $4236: $00
    di                                            ; $4237: $f3
    adc b                                         ; $4238: $88

jr_096_4239:
    and e                                         ; $4239: $a3
    ld e, b                                       ; $423a: $58
    ld d, e                                       ; $423b: $53
    ld [$e9a3], sp                                ; $423c: $08 $a3 $e9
    db $10                                        ; $423f: $10
    di                                            ; $4240: $f3
    ret                                           ; $4241: $c9


    di                                            ; $4242: $f3
    inc b                                         ; $4243: $04
    ld [$f1eb], sp                                ; $4244: $08 $eb $f1
    call $71f3                                    ; $4247: $cd $f3 $71
    jp z, Jump_000_0004                           ; $424a: $ca $04 $00

    inc [hl]                                      ; $424d: $34
    nop                                           ; $424e: $00
    ld b, b                                       ; $424f: $40
    nop                                           ; $4250: $00
    pop af                                        ; $4251: $f1
    cp $f3                                        ; $4252: $fe $f3
    ld c, b                                       ; $4254: $48
    nop                                           ; $4255: $00
    ld h, c                                       ; $4256: $61
    ld sp, hl                                     ; $4257: $f9
    ld c, h                                       ; $4258: $4c
    nop                                           ; $4259: $00
    inc a                                         ; $425a: $3c
    ld c, b                                       ; $425b: $48
    ld c, a                                       ; $425c: $4f
    ccf                                           ; $425d: $3f
    rra                                           ; $425e: $1f
    ld a, a                                       ; $425f: $7f
    inc [hl]                                      ; $4260: $34

jr_096_4261:
    nop                                           ; $4261: $00
    ld [bc], a                                    ; $4262: $02
    di                                            ; $4263: $f3
    ld e, b                                       ; $4264: $58
    di                                            ; $4265: $f3
    ld [$1cf3], sp                                ; $4266: $08 $f3 $1c
    inc b                                         ; $4269: $04
    nop                                           ; $426a: $00
    ld c, b                                       ; $426b: $48
    jr nz, jr_096_4261                            ; $426c: $20 $f3

    dec c                                         ; $426e: $0d
    inc [hl]                                      ; $426f: $34
    db $10                                        ; $4270: $10
    jp z, $c8f1                                   ; $4271: $ca $f1 $c8

    ld a, [c]                                     ; $4274: $f2
    ld b, b                                       ; $4275: $40
    dec d                                         ; $4276: $15
    ld d, c                                       ; $4277: $51
    adc b                                         ; $4278: $88
    and d                                         ; $4279: $a2
    inc b                                         ; $427a: $04
    ld [$80f1], sp                                ; $427b: $08 $f1 $80
    nop                                           ; $427e: $00
    pop af                                        ; $427f: $f1
    ret nz                                        ; $4280: $c0

    nop                                           ; $4281: $00
    ld h, $11                                     ; $4282: $26 $11
    ld d, h                                       ; $4284: $54
    inc b                                         ; $4285: $04
    ld [$aa21], sp                                ; $4286: $08 $21 $aa
    add b                                         ; $4289: $80
    jr @-$42                                      ; $428a: $18 $bc

    jr jr_096_42e9                                ; $428c: $18 $5b

    or b                                          ; $428e: $b0
    inc b                                         ; $428f: $04
    ld [bc], a                                    ; $4290: $02
    ld [$0034], sp                                ; $4291: $08 $34 $00
    inc b                                         ; $4294: $04
    ld [$5100], sp                                ; $4295: $08 $00 $51
    ld [$c0a2], sp                                ; $4298: $08 $a2 $c0
    inc b                                         ; $429b: $04
    ld [$09c4], sp                                ; $429c: $08 $c4 $09
    ld a, a                                       ; $429f: $7f

jr_096_42a0:
    ld a, a                                       ; $42a0: $7f
    xor d                                         ; $42a1: $aa
    xor d                                         ; $42a2: $aa
    ld d, l                                       ; $42a3: $55
    ld d, l                                       ; $42a4: $55
    db $10                                        ; $42a5: $10
    xor d                                         ; $42a6: $aa
    xor d                                         ; $42a7: $aa
    db $fd                                        ; $42a8: $fd
    or b                                          ; $42a9: $b0
    ld bc, $3fc7                                  ; $42aa: $01 $c7 $3f
    xor [hl]                                      ; $42ad: $ae
    rra                                           ; $42ae: $1f
    ld e, h                                       ; $42af: $5c
    add a                                         ; $42b0: $87
    inc b                                         ; $42b1: $04
    jr nz, jr_096_4239                            ; $42b2: $20 $85

    inc c                                         ; $42b4: $0c
    nop                                           ; $42b5: $00
    call nz, $c809                                ; $42b6: $c4 $09 $c8
    add hl, bc                                    ; $42b9: $09
    push de                                       ; $42ba: $d5
    push de                                       ; $42bb: $d5
    inc d                                         ; $42bc: $14
    ld [$f7ea], a                                 ; $42bd: $ea $ea $f7
    ret nc                                        ; $42c0: $d0

    ld bc, $1697                                  ; $42c1: $01 $97 $16
    inc bc                                        ; $42c4: $03
    or a                                          ; $42c5: $b7
    rra                                           ; $42c6: $1f
    nop                                           ; $42c7: $00
    jp z, Jump_000_152a                           ; $42c8: $ca $2a $15

    dec d                                         ; $42cb: $15
    adc d                                         ; $42cc: $8a
    ld a, [hl+]                                   ; $42cd: $2a
    xor a                                         ; $42ce: $af
    rra                                           ; $42cf: $1f
    nop                                           ; $42d0: $00
    sbc a                                         ; $42d1: $9f
    ccf                                           ; $42d2: $3f
    push af                                       ; $42d3: $f5
    rst $38                                       ; $42d4: $ff
    ld [c], a                                     ; $42d5: $e2
    rst $38                                       ; $42d6: $ff
    push af                                       ; $42d7: $f5
    rst $38                                       ; $42d8: $ff
    nop                                           ; $42d9: $00
    ld [$f5fe], a                                 ; $42da: $ea $fe $f5
    push af                                       ; $42dd: $f5
    ld [c], a                                     ; $42de: $e2
    ld [$f5f5], a                                 ; $42df: $ea $f5 $f5
    db $10                                        ; $42e2: $10
    ldh [$ea], a                                  ; $42e3: $e0 $ea
    add l                                         ; $42e5: $85
    add sp, $01                                   ; $42e6: $e8 $01
    sub l                                         ; $42e8: $95

jr_096_42e9:
    cpl                                           ; $42e9: $2f
    db $eb                                        ; $42ea: $eb
    rla                                           ; $42eb: $17
    and b                                         ; $42ec: $a0
    db $ec                                        ; $42ed: $ec
    add hl, bc                                    ; $42ee: $09
    add a                                         ; $42ef: $87
    db $f4                                        ; $42f0: $f4
    ld bc, $ffd5                                  ; $42f1: $01 $d5 $ff
    ret z                                         ; $42f4: $c8

    rst $38                                       ; $42f5: $ff
    push de                                       ; $42f6: $d5
    nop                                           ; $42f7: $00
    rst $38                                       ; $42f8: $ff
    ld [$d5eb], a                                 ; $42f9: $ea $eb $d5
    push de                                       ; $42fc: $d5
    ret z                                         ; $42fd: $c8

    ld [$19d5], a                                 ; $42fe: $ea $d5 $19
    push de                                       ; $4301: $d5
    ret nz                                        ; $4302: $c0

    ld [$0834], a                                 ; $4303: $ea $34 $08
    inc b                                         ; $4306: $04
    jr c, jr_096_42a0                             ; $4307: $38 $97

    ccf                                           ; $4309: $3f
    inc [hl]                                      ; $430a: $34
    nop                                           ; $430b: $00
    adc d                                         ; $430c: $8a
    ld b, b                                       ; $430d: $40
    nop                                           ; $430e: $00
    ldh [rIE], a                                  ; $430f: $e0 $ff
    db $e4                                        ; $4311: $e4
    inc b                                         ; $4312: $04

jr_096_4313:
    nop                                           ; $4313: $00
    pop af                                        ; $4314: $f1
    ld [$8700], sp                                ; $4315: $08 $00 $87
    inc h                                         ; $4318: $24
    ccf                                           ; $4319: $3f
    xor e                                         ; $431a: $ab
    add b                                         ; $431b: $80
    nop                                           ; $431c: $00
    db $eb                                        ; $431d: $eb
    rla                                           ; $431e: $17
    ld b, h                                       ; $431f: $44
    ld [$2f95], sp                                ; $4320: $08 $95 $2f
    sub c                                         ; $4323: $91
    ld b, b                                       ; $4324: $40
    nop                                           ; $4325: $00
    rst $10                                       ; $4326: $d7
    ret nz                                        ; $4327: $c0

    ld b, b                                       ; $4328: $40
    nop                                           ; $4329: $00
    ret nz                                        ; $432a: $c0

    rst $38                                       ; $432b: $ff
    pop de                                        ; $432c: $d1
    inc b                                         ; $432d: $04
    nop                                           ; $432e: $00
    ld l, c                                       ; $432f: $69
    call nz, RST_08                               ; $4330: $c4 $08 $00
    ld c, d                                       ; $4333: $4a
    ld a, [bc]                                    ; $4334: $0a
    xor e                                         ; $4335: $ab
    ld c, d                                       ; $4336: $4a
    ld [de], a                                    ; $4337: $12
    sbc a                                         ; $4338: $9f
    ccf                                           ; $4339: $3f
    inc b                                         ; $433a: $04
    ld [$e062], sp                                ; $433b: $08 $62 $e0
    inc a                                         ; $433e: $3c
    nop                                           ; $433f: $00
    inc b                                         ; $4340: $04
    ld [$ffa0], sp                                ; $4341: $08 $a0 $ff

jr_096_4344:
    and b                                         ; $4344: $a0
    nop                                           ; $4345: $00
    ld [bc], a                                    ; $4346: $02
    jr nz, jr_096_437e                            ; $4347: $20 $35

    xor d                                         ; $4349: $aa
    add l                                         ; $434a: $85
    sub b                                         ; $434b: $90
    ld [bc], a                                    ; $434c: $02
    inc b                                         ; $434d: $04
    ld [$0487], sp                                ; $434e: $08 $87 $04
    jr nz, jr_096_4313                            ; $4351: $20 $c0

    inc a                                         ; $4353: $3c
    nop                                           ; $4354: $00
    sub h                                         ; $4355: $94
    inc b                                         ; $4356: $04
    jr nz, jr_096_4344                            ; $4357: $20 $eb

    ret nz                                        ; $4359: $c0

    add b                                         ; $435a: $80
    nop                                           ; $435b: $00
    rst $28                                       ; $435c: $ef
    or h                                          ; $435d: $b4
    nop                                           ; $435e: $00
    rst $28                                       ; $435f: $ef
    rra                                           ; $4360: $1f
    ld b, c                                       ; $4361: $41
    sbc e                                         ; $4362: $9b
    adc [hl]                                      ; $4363: $8e
    ld [de], a                                    ; $4364: $12
    ld b, l                                       ; $4365: $45

jr_096_4366:
    dec d                                         ; $4366: $15
    add d                                         ; $4367: $82
    ld a, [hl+]                                   ; $4368: $2a
    nop                                           ; $4369: $00
    ld bc, $0800                                  ; $436a: $01 $00 $08
    jr nz, jr_096_438f                            ; $436d: $20 $20

    inc b                                         ; $436f: $04
    inc b                                         ; $4370: $04
    ld [$0400], sp                                ; $4371: $08 $00 $04
    nop                                           ; $4374: $00
    inc hl                                        ; $4375: $23
    nop                                           ; $4376: $00
    nop                                           ; $4377: $00
    dec c                                         ; $4378: $0d
    nop                                           ; $4379: $00
    dec bc                                        ; $437a: $0b
    nop                                           ; $437b: $00
    cpl                                           ; $437c: $2f
    nop                                           ; $437d: $00

jr_096_437e:
    rla                                           ; $437e: $17
    ld [bc], a                                    ; $437f: $02
    nop                                           ; $4380: $00
    xor a                                         ; $4381: $af
    nop                                           ; $4382: $00

Jump_096_4383:
    dec sp                                        ; $4383: $3b
    nop                                           ; $4384: $00
    ld a, a                                       ; $4385: $7f
    ld [bc], a                                    ; $4386: $02
    nop                                           ; $4387: $00
    cpl                                           ; $4388: $2f
    nop                                           ; $4389: $00
    nop                                           ; $438a: $00
    ccf                                           ; $438b: $3f
    nop                                           ; $438c: $00
    dec de                                        ; $438d: $1b
    nop                                           ; $438e: $00

jr_096_438f:
    ld c, a                                       ; $438f: $4f
    nop                                           ; $4390: $00
    dec l                                         ; $4391: $2d
    dec l                                         ; $4392: $2d
    nop                                           ; $4393: $00
    ld d, $1a                                     ; $4394: $16 $1a
    nop                                           ; $4396: $00
    dec h                                         ; $4397: $25
    ld l, $00                                     ; $4398: $2e $00
    xor b                                         ; $439a: $a8
    ld a, [hl+]                                   ; $439b: $2a
    db $fd                                        ; $439c: $fd
    ld [hl], b                                    ; $439d: $70
    ld [de], a                                    ; $439e: $12
    ldh a, [$74]                                  ; $439f: $f0 $74
    ld [bc], a                                    ; $43a1: $02
    ld e, d                                       ; $43a2: $5a
    ld [bc], a                                    ; $43a3: $02
    ld [bc], a                                    ; $43a4: $02
    ld b, b                                       ; $43a5: $40
    ld d, h                                       ; $43a6: $54
    ld a, [bc]                                    ; $43a7: $0a
    rst $08                                       ; $43a8: $cf
    ccf                                           ; $43a9: $3f
    add l                                         ; $43aa: $85
    ld a, a                                       ; $43ab: $7f
    ld b, d                                       ; $43ac: $42
    adc $04                                       ; $43ad: $ce $04
    nop                                           ; $43af: $00
    jp z, $873f                                   ; $43b0: $ca $3f $87

    ld a, a                                       ; $43b3: $7f
    ldh [$5a], a                                  ; $43b4: $e0 $5a
    add b                                         ; $43b6: $80
    ld [$00ff], sp                                ; $43b7: $08 $ff $00
    ld e, a                                       ; $43ba: $5f
    add b                                         ; $43bb: $80
    xor b                                         ; $43bc: $a8
    ld [bc], a                                    ; $43bd: $02
    and b                                         ; $43be: $a0
    xor d                                         ; $43bf: $aa
    ld b, b                                       ; $43c0: $40
    push hl                                       ; $43c1: $e5
    inc c                                         ; $43c2: $0c
    ld [$02f4], sp                                ; $43c3: $08 $f4 $02
    inc h                                         ; $43c6: $24
    nop                                           ; $43c7: $00
    cpl                                           ; $43c8: $2f
    ld b, b                                       ; $43c9: $40
    adc b                                         ; $43ca: $88

jr_096_43cb:
    nop                                           ; $43cb: $00
    res 4, h                                      ; $43cc: $cb $a4
    inc bc                                        ; $43ce: $03
    ld h, c                                       ; $43cf: $61
    rst $08                                       ; $43d0: $cf
    xor b                                         ; $43d1: $a8
    inc bc                                        ; $43d2: $03
    ld [$550d], sp                                ; $43d3: $08 $0d $55
    ld d, l                                       ; $43d6: $55
    ld a, [hl+]                                   ; $43d7: $2a
    xor d                                         ; $43d8: $aa
    db $e4                                        ; $43d9: $e4
    inc l                                         ; $43da: $2c
    jp z, Jump_000_02b8                           ; $43db: $ca $b8 $02

    db $10                                        ; $43de: $10
    inc bc                                        ; $43df: $03
    add b                                         ; $43e0: $80
    xor d                                         ; $43e1: $aa
    ld h, [hl]                                    ; $43e2: $66
    jr jr_096_4366                                ; $43e3: $18 $81

    db $10                                        ; $43e5: $10
    inc bc                                        ; $43e6: $03
    inc b                                         ; $43e7: $04
    ld [$40fb], sp                                ; $43e8: $08 $fb $40
    cp a                                          ; $43eb: $bf
    ld [bc], a                                    ; $43ec: $02
    ld l, $03                                     ; $43ed: $2e $03
    ld [bc], a                                    ; $43ef: $02
    rst $38                                       ; $43f0: $ff
    add hl, bc                                    ; $43f1: $09
    ld [$90ff], sp                                ; $43f2: $08 $ff $90
    ld l, a                                       ; $43f5: $6f
    rrca                                          ; $43f6: $0f
    jr jr_096_43fd                                ; $43f7: $18 $04

    rrca                                          ; $43f9: $0f
    rst $38                                       ; $43fa: $ff
    rra                                           ; $43fb: $1f
    adc b                                         ; $43fc: $88

jr_096_43fd:
    adc $14                                       ; $43fd: $ce $14
    ld a, a                                       ; $43ff: $7f

Jump_096_4400:
    rst $38                                       ; $4400: $ff
    sbc a                                         ; $4401: $9f
    adc a                                         ; $4402: $8f
    ld d, l                                       ; $4403: $55
    cp $ff                                        ; $4404: $fe $ff
    ld sp, hl                                     ; $4406: $f9
    and b                                         ; $4407: $a0
    sbc h                                         ; $4408: $9c
    jr nz, jr_096_43cb                            ; $4409: $20 $c0

    inc c                                         ; $440b: $0c
    inc bc                                        ; $440c: $03
    ld [hl+], a                                   ; $440d: $22
    db $fd                                        ; $440e: $fd
    sub b                                         ; $440f: $90
    rst $38                                       ; $4410: $ff
    ld de, $ee00                                  ; $4411: $11 $00 $ee
    ld b, $ff                                     ; $4414: $06 $ff
    ld e, $ff                                     ; $4416: $1e $ff
    inc l                                         ; $4418: $2c
    rst $38                                       ; $4419: $ff
    ld [hl], h                                    ; $441a: $74
    jr nz, @+$01                                  ; $441b: $20 $ff

    db $fd                                        ; $441d: $fd
    cp c                                          ; $441e: $b9
    dec h                                         ; $441f: $25
    nop                                           ; $4420: $00
    rst $38                                       ; $4421: $ff
    jr nc, @+$01                                  ; $4422: $30 $ff

    ld l, h                                       ; $4424: $6c
    ld [$f6ff], sp                                ; $4425: $08 $ff $f6
    rst $38                                       ; $4428: $ff
    db $eb                                        ; $4429: $eb
    or b                                          ; $442a: $b0
    inc d                                         ; $442b: $14
    cp $ff                                        ; $442c: $fe $ff
    nop                                           ; $442e: $00
    nop                                           ; $442f: $00
    nop                                           ; $4430: $00
    ld b, b                                       ; $4431: $40
    ld b, b                                       ; $4432: $40
    nop                                           ; $4433: $00
    nop                                           ; $4434: $00
    add b                                         ; $4435: $80
    add h                                         ; $4436: $84
    nop                                           ; $4437: $00
    ld d, $08                                     ; $4438: $16 $08
    nop                                           ; $443a: $00
    inc d                                         ; $443b: $14
    ld a, [bc]                                    ; $443c: $0a
    ld bc, $20fe                                  ; $443d: $01 $fe $20
    add hl, bc                                    ; $4440: $09
    ld [de], a                                    ; $4441: $12
    nop                                           ; $4442: $00
    ld [bc], a                                    ; $4443: $02
    nop                                           ; $4444: $00
    nop                                           ; $4445: $00
    ld h, $00                                     ; $4446: $26 $00
    db $db                                        ; $4448: $db
    nop                                           ; $4449: $00
    rst $30                                       ; $444a: $f7
    nop                                           ; $444b: $00
    rst $38                                       ; $444c: $ff
    nop                                           ; $444d: $00
    ld b, b                                       ; $444e: $40
    ld d, l                                       ; $444f: $55
    sbc b                                         ; $4450: $98
    ld a, [c]                                     ; $4451: $f2
    ld c, b                                       ; $4452: $48
    rst $30                                       ; $4453: $f7
    dec c                                         ; $4454: $0d
    di                                            ; $4455: $f3
    inc c                                         ; $4456: $0c
    ld a, [bc]                                    ; $4457: $0a
    rst $30                                       ; $4458: $f7
    add hl, bc                                    ; $4459: $09
    rst $30                                       ; $445a: $f7
    inc b                                         ; $445b: $04
    ld [$0a64], sp                                ; $445c: $08 $64 $0a
    pop af                                        ; $445f: $f1
    db $f4                                        ; $4460: $f4
    ld l, l                                       ; $4461: $6d
    ld [hl], c                                    ; $4462: $71
    halt                                          ; $4463: $76
    ld [de], a                                    ; $4464: $12
    ld a, h                                       ; $4465: $7c
    ld a, [bc]                                    ; $4466: $0a
    db $db                                        ; $4467: $db
    ld l, b                                       ; $4468: $68
    inc b                                         ; $4469: $04
    inc b                                         ; $446a: $04
    ld [$70fb], sp                                ; $446b: $08 $fb $70
    inc b                                         ; $446e: $04
    ld [$7fbf], sp                                ; $446f: $08 $bf $7f
    rra                                           ; $4472: $1f
    ld a, a                                       ; $4473: $7f
    ld l, b                                       ; $4474: $68
    ld a, [bc]                                    ; $4475: $0a
    inc b                                         ; $4476: $04
    ld d, c                                       ; $4477: $51
    ld [$e204], sp                                ; $4478: $08 $04 $e2
    inc c                                         ; $447b: $0c
    di                                            ; $447c: $f3
    add hl, bc                                    ; $447d: $09
    rst $30                                       ; $447e: $f7
    inc b                                         ; $447f: $04
    ld [$f70b], sp                                ; $4480: $08 $0b $f7
    nop                                           ; $4483: $00
    add hl, bc                                    ; $4484: $09
    rst $38                                       ; $4485: $ff
    ld bc, $0a55                                  ; $4486: $01 $55 $0a
    xor d                                         ; $4489: $aa
    dec h                                         ; $448a: $25
    push af                                       ; $448b: $f5
    ld [bc], a                                    ; $448c: $02
    rrca                                          ; $448d: $0f
    rst $38                                       ; $448e: $ff
    rla                                           ; $448f: $17
    rst $38                                       ; $4490: $ff
    ld a, [bc]                                    ; $4491: $0a
    rst $38                                       ; $4492: $ff
    or b                                          ; $4493: $b0
    ld a, [bc]                                    ; $4494: $0a
    ld d, c                                       ; $4495: $51
    jr nz, jr_096_44ec                            ; $4496: $20 $54

    and b                                         ; $4498: $a0
    ld [hl], b                                    ; $4499: $70
    inc bc                                        ; $449a: $03
    pop af                                        ; $449b: $f1
    cp $e9                                        ; $449c: $fe $e9
    cp $91                                        ; $449e: $fe $91
    nop                                           ; $44a0: $00
    cp $bf                                        ; $44a1: $fe $bf
    ld a, a                                       ; $44a3: $7f
    sbc d                                         ; $44a4: $9a
    ld a, d                                       ; $44a5: $7a
    dec d                                         ; $44a6: $15
    ld d, l                                       ; $44a7: $55
    adc d                                         ; $44a8: $8a
    ld [$1f2a], sp                                ; $44a9: $08 $2a $1f
    ld e, a                                       ; $44ac: $5f
    sbc a                                         ; $44ad: $9f
    adc d                                         ; $44ae: $8a
    dec b                                         ; $44af: $05
    cp a                                          ; $44b0: $bf
    ld a, a                                       ; $44b1: $7f
    inc b                                         ; $44b2: $04
    ld b, b                                       ; $44b3: $40
    pop de                                        ; $44b4: $d1
    ld b, b                                       ; $44b5: $40
    ld [$a709], sp                                ; $44b6: $08 $09 $a7
    dec bc                                        ; $44b9: $0b
    rst $30                                       ; $44ba: $f7
    ld bc, $14ff                                  ; $44bb: $01 $ff $14
    inc hl                                        ; $44be: $23
    rst $38                                       ; $44bf: $ff
    dec bc                                        ; $44c0: $0b
    ld h, $04                                     ; $44c1: $26 $04
    inc b                                         ; $44c3: $04
    ld a, [hl+]                                   ; $44c4: $2a
    inc b                                         ; $44c5: $04
    ld b, b                                       ; $44c6: $40
    cp a                                          ; $44c7: $bf
    add b                                         ; $44c8: $80
    nop                                           ; $44c9: $00
    ld bc, $10fd                                  ; $44ca: $01 $fd $10
    rst $28                                       ; $44cd: $ef
    ld b, c                                       ; $44ce: $41
    cp [hl]                                       ; $44cf: $be
    ld b, c                                       ; $44d0: $41
    cp $11                                        ; $44d1: $fe $11
    ld bc, $03fe                                  ; $44d3: $01 $fe $03
    ld h, $04                                     ; $44d6: $26 $04
    ld c, c                                       ; $44d8: $49
    cp a                                          ; $44d9: $bf
    ld bc, $0446                                  ; $44da: $01 $46 $04
    inc e                                         ; $44dd: $1c
    ld de, $3fef                                  ; $44de: $11 $ef $3f
    sub $15                                       ; $44e1: $d6 $15
    inc c                                         ; $44e3: $0c
    add hl, bc                                    ; $44e4: $09
    cp $08                                        ; $44e5: $fe $08
    ld d, h                                       ; $44e7: $54
    rst $38                                       ; $44e8: $ff
    ld d, l                                       ; $44e9: $55
    cpl                                           ; $44ea: $2f
    ld h, [hl]                                    ; $44eb: $66

jr_096_44ec:
    db $10                                        ; $44ec: $10
    ld b, b                                       ; $44ed: $40
    ld l, $00                                     ; $44ee: $2e $00
    ld c, b                                       ; $44f0: $48
    inc a                                         ; $44f1: $3c
    ld [$defb], sp                                ; $44f2: $08 $fb $de
    ld [$eb80], sp                                ; $44f5: $08 $80 $eb
    ld bc, $0044                                  ; $44f8: $01 $44 $00
    and b                                         ; $44fb: $a0
    nop                                           ; $44fc: $00
    ld d, b                                       ; $44fd: $50
    nop                                           ; $44fe: $00

Jump_096_44ff:
    xor $88                                       ; $44ff: $ee $88
    jr jr_096_4507                                ; $4501: $18 $04

    add b                                         ; $4503: $80
    ld [bc], a                                    ; $4504: $02
    ld [bc], a                                    ; $4505: $02
    ld a, [c]                                     ; $4506: $f2

jr_096_4507:
    ld [$4840], sp                                ; $4507: $08 $40 $48
    nop                                           ; $450a: $00
    ld d, d                                       ; $450b: $52
    db $10                                        ; $450c: $10
    cp $01                                        ; $450d: $fe $01
    ld a, a                                       ; $450f: $7f
    ld a, [bc]                                    ; $4510: $0a
    ld a, [bc]                                    ; $4511: $0a
    ld b, b                                       ; $4512: $40
    ld d, b                                       ; $4513: $50
    cp $10                                        ; $4514: $fe $10
    cp d                                          ; $4516: $ba
    inc bc                                        ; $4517: $03
    nop                                           ; $4518: $00
    ld [hl], l                                    ; $4519: $75
    nop                                           ; $451a: $00
    rst $28                                       ; $451b: $ef
    jr nz, @+$22                                  ; $451c: $20 $20

    ld [hl+], a                                   ; $451e: $22
    ld a, [de]                                    ; $451f: $1a
    jr z, jr_096_4524                             ; $4520: $28 $02

    ld [de], a                                    ; $4522: $12
    adc d                                         ; $4523: $8a

jr_096_4524:
    nop                                           ; $4524: $00

jr_096_4525:
    db $dd                                        ; $4525: $dd
    nop                                           ; $4526: $00
    add hl, bc                                    ; $4527: $09
    jr nz, @-$54                                  ; $4528: $20 $aa

    inc b                                         ; $452a: $04
    ld [$30e0], sp                                ; $452b: $08 $e0 $30
    rst $38                                       ; $452e: $ff
    ld h, b                                       ; $452f: $60
    ld a, d                                       ; $4530: $7a
    ld [de], a                                    ; $4531: $12
    jr nc, @+$0d                                  ; $4532: $30 $0b

    rst $10                                       ; $4534: $d7
    cpl                                           ; $4535: $2f
    xor d                                         ; $4536: $aa
    rla                                           ; $4537: $17
    dec b                                         ; $4538: $05
    push bc                                       ; $4539: $c5
    ccf                                           ; $453a: $3f
    xor d                                         ; $453b: $aa
    rra                                           ; $453c: $1f
    call Call_000_02bc                            ; $453d: $cd $bc $02
    ldh [rDIV], a                                 ; $4540: $e0 $04

jr_096_4542:
    inc bc                                        ; $4542: $03
    jr nz, jr_096_4525                            ; $4543: $20 $e0

    rst $30                                       ; $4545: $f7
    sub [hl]                                      ; $4546: $96
    ld a, [hl+]                                   ; $4547: $2a
    ldh [$ea], a                                  ; $4548: $e0 $ea
    ld d, c                                       ; $454a: $51
    dec d                                         ; $454b: $15
    add a                                         ; $454c: $87
    ld [bc], a                                    ; $454d: $02
    cpl                                           ; $454e: $2f
    cp e                                          ; $454f: $bb
    ld a, a                                       ; $4550: $7f
    sbc a                                         ; $4551: $9f
    ld a, a                                       ; $4552: $7f
    cp e                                          ; $4553: $bb
    sbc a                                         ; $4554: $9f
    ld bc, $08bf                                  ; $4555: $01 $bf $08
    ld a, a                                       ; $4558: $7f
    ccf                                           ; $4559: $3f
    cp a                                          ; $455a: $bf
    ld b, b                                       ; $455b: $40
    db $fc                                        ; $455c: $fc
    add hl, bc                                    ; $455d: $09
    ld d, l                                       ; $455e: $55
    ldh a, [rIE]                                  ; $455f: $f0 $ff
    add b                                         ; $4561: $80
    ld [bc], a                                    ; $4562: $02
    jr z, jr_096_4542                             ; $4563: $28 $dd

    ccf                                           ; $4565: $3f
    ld c, a                                       ; $4566: $4f
    cp a                                          ; $4567: $bf
    rst $18                                       ; $4568: $df
    ccf                                           ; $4569: $3f
    ld c, l                                       ; $456a: $4d
    jp nz, Jump_000_0004                          ; $456b: $c2 $04 $00

    dec bc                                        ; $456e: $0b
    rlca                                          ; $456f: $07
    cp a                                          ; $4570: $bf
    cp a                                          ; $4571: $bf
    rst $38                                       ; $4572: $ff
    ldh [rOBP0], a                                ; $4573: $e0 $48
    inc bc                                        ; $4575: $03
    ldh [$08], a                                  ; $4576: $e0 $08
    push af                                       ; $4578: $f5
    db $e4                                        ; $4579: $e4
    rst $38                                       ; $457a: $ff
    pop hl                                        ; $457b: $e1
    ret c                                         ; $457c: $d8

    ld [de], a                                    ; $457d: $12
    ld [c], a                                     ; $457e: $e2
    db $fd                                        ; $457f: $fd
    dec d                                         ; $4580: $15
    add b                                         ; $4581: $80
    inc c                                         ; $4582: $0c
    ld [bc], a                                    ; $4583: $02
    ld d, l                                       ; $4584: $55
    ld d, l                                       ; $4585: $55
    cp $fe                                        ; $4586: $fe $fe
    ld a, [hl]                                    ; $4588: $7e
    rst $38                                       ; $4589: $ff
    inc d                                         ; $458a: $14
    ld b, h                                       ; $458b: $44
    rst $38                                       ; $458c: $ff
    jp nz, $f408                                  ; $458d: $c2 $08 $f4

    rst $38                                       ; $4590: $ff
    add sp, $30                                   ; $4591: $e8 $30
    dec b                                         ; $4593: $05
    ld bc, $41ff                                  ; $4594: $01 $ff $41
    dec h                                         ; $4597: $25
    inc [hl]                                      ; $4598: $34
    dec b                                         ; $4599: $05
    sub c                                         ; $459a: $91
    rst $28                                       ; $459b: $ef
    inc b                                         ; $459c: $04
    ei                                            ; $459d: $fb
    cp a                                          ; $459e: $bf
    add c                                         ; $459f: $81
    ld b, a                                       ; $45a0: $47
    db $10                                        ; $45a1: $10
    ccf                                           ; $45a2: $3f
    rst $38                                       ; $45a3: $ff
    ld c, d                                       ; $45a4: $4a
    ld c, $23                                     ; $45a5: $0e $23
    pop hl                                        ; $45a7: $e1
    cp $e8                                        ; $45a8: $fe $e8
    rst $38                                       ; $45aa: $ff
    inc c                                         ; $45ab: $0c
    ret nc                                        ; $45ac: $d0

    rst $38                                       ; $45ad: $ff
    and c                                         ; $45ae: $a1
    cp $2c                                        ; $45af: $fe $2c
    ld a, [bc]                                    ; $45b1: $0a
    ld e, b                                       ; $45b2: $58
    dec c                                         ; $45b3: $0d
    inc b                                         ; $45b4: $04
    ei                                            ; $45b5: $fb
    ld [$df20], sp                                ; $45b6: $08 $20 $df
    ld [bc], a                                    ; $45b9: $02
    db $fd                                        ; $45ba: $fd
    jr c, @+$13                                   ; $45bb: $38 $11

    nop                                           ; $45bd: $00
    add b                                         ; $45be: $80
    add b                                         ; $45bf: $80
    jr nz, jr_096_45ca                            ; $45c0: $20 $08

    ld [$09d5], sp                                ; $45c2: $08 $d5 $09
    nop                                           ; $45c5: $00
    or b                                          ; $45c6: $b0
    nop                                           ; $45c7: $00
    ld l, e                                       ; $45c8: $6b
    nop                                           ; $45c9: $00

jr_096_45ca:
    jr @-$07                                      ; $45ca: $18 $f7

    db $10                                        ; $45cc: $10
    stop                                          ; $45cd: $10 $00
    add hl, de                                    ; $45cf: $19
    ldh a, [rSB]                                  ; $45d0: $f0 $01
    add h                                         ; $45d2: $84
    nop                                           ; $45d3: $00
    ld e, e                                       ; $45d4: $5b
    or e                                          ; $45d5: $b3
    add h                                         ; $45d6: $84
    dec b                                         ; $45d7: $05
    ld d, l                                       ; $45d8: $55
    adc b                                         ; $45d9: $88
    dec e                                         ; $45da: $1d
    or b                                          ; $45db: $b0
    ld a, [hl+]                                   ; $45dc: $2a
    ld de, $3011                                  ; $45dd: $11 $11 $30
    ld de, $0b20                                  ; $45e0: $11 $20 $0b
    dec b                                         ; $45e3: $05
    add c                                         ; $45e4: $81
    nop                                           ; $45e5: $00
    ld c, d                                       ; $45e6: $4a
    nop                                           ; $45e7: $00
    or a                                          ; $45e8: $b7
    inc c                                         ; $45e9: $0c
    jr nz, @+$12                                  ; $45ea: $20 $10

    ld c, $01                                     ; $45ec: $0e $01
    ld a, [de]                                    ; $45ee: $1a
    ld d, l                                       ; $45ef: $55
    nop                                           ; $45f0: $00
    ei                                            ; $45f1: $fb
    or h                                          ; $45f2: $b4
    dec b                                         ; $45f3: $05
    dec c                                         ; $45f4: $0d
    ld [$4e10], sp                                ; $45f5: $08 $10 $4e
    nop                                           ; $45f8: $00
    or d                                          ; $45f9: $b2
    jp nz, $011e                                  ; $45fa: $c2 $1e $01

    xor [hl]                                      ; $45fd: $ae
    dec b                                         ; $45fe: $05
    ld b, b                                       ; $45ff: $40
    ld b, b                                       ; $4600: $40
    ld [bc], a                                    ; $4601: $02
    ld [bc], a                                    ; $4602: $02
    inc a                                         ; $4603: $3c
    ld [bc], a                                    ; $4604: $02
    inc l                                         ; $4605: $2c
    ld sp, $5400                                  ; $4606: $31 $00 $54
    ld b, b                                       ; $4609: $40
    ld bc, $05d4                                  ; $460a: $01 $d4 $05
    ld a, [$7df1]                                 ; $460d: $fa $f1 $7d
    sbc h                                         ; $4610: $9c
    ld c, $aa                                     ; $4611: $0e $aa
    and b                                         ; $4613: $a0

jr_096_4614:
    ld b, $79                                     ; $4614: $06 $79
    xor b                                         ; $4616: $a8
    ld b, $59                                     ; $4617: $06 $59
    xor b                                         ; $4619: $a8
    ld b, $5d                                     ; $461a: $06 $5d
    xor h                                         ; $461c: $ac
    ld b, $59                                     ; $461d: $06 $59
    jr z, jr_096_4614                             ; $461f: $28 $f3

    cp d                                          ; $4621: $ba
    ld [$e800], sp                                ; $4622: $08 $00 $e8
    ld b, $05                                     ; $4625: $06 $05
    xor d                                         ; $4627: $aa
    pop af                                        ; $4628: $f1
    dec e                                         ; $4629: $1d
    xor d                                         ; $462a: $aa
    ld b, [hl]                                    ; $462b: $46
    dec b                                         ; $462c: $05
    ld e, l                                       ; $462d: $5d
    ld c, d                                       ; $462e: $4a
    dec b                                         ; $462f: $05
    add hl, de                                    ; $4630: $19
    ld d, $05                                     ; $4631: $16 $05
    add hl, bc                                    ; $4633: $09
    ld d, d                                       ; $4634: $52
    dec b                                         ; $4635: $05
    dec c                                         ; $4636: $0d
    add d                                         ; $4637: $82
    inc b                                         ; $4638: $04
    db $10                                        ; $4639: $10
    ld a, [hl+]                                   ; $463a: $2a
    pop af                                        ; $463b: $f1
    add hl, bc                                    ; $463c: $09
    di                                            ; $463d: $f3
    adc b                                         ; $463e: $88
    stop                                          ; $463f: $10 $00
    ld a, [bc]                                    ; $4641: $0a
    and b                                         ; $4642: $a0
    stop                                          ; $4643: $10 $00
    ld a, [bc]                                    ; $4645: $0a
    inc c                                         ; $4646: $0c
    nop                                           ; $4647: $00
    ld a, [bc]                                    ; $4648: $0a
    ld d, c                                       ; $4649: $51
    dec c                                         ; $464a: $0d
    and e                                         ; $464b: $a3
    ld [$531a], sp                                ; $464c: $08 $1a $53
    add hl, bc                                    ; $464f: $09
    and e                                         ; $4650: $a3
    db $10                                        ; $4651: $10
    jr jr_096_4668                                ; $4652: $18 $14

    jr @+$0a                                      ; $4654: $18 $08

    jr nz, jr_096_4670                            ; $4656: $20 $18

    and e                                         ; $4658: $a3
    ld a, [$081c]                                 ; $4659: $fa $1c $08
    db $10                                        ; $465c: $10
    jr z, jr_096_469f                             ; $465d: $28 $40

    ccf                                           ; $465f: $3f
    ld [bc], a                                    ; $4660: $02
    jr jr_096_469f                                ; $4661: $18 $3c

    nop                                           ; $4663: $00
    ld a, [c]                                     ; $4664: $f2
    inc b                                         ; $4665: $04
    jr c, jr_096_4675                             ; $4666: $38 $0d

jr_096_4668:
    xor e                                         ; $4668: $ab
    scf                                           ; $4669: $37
    rlca                                          ; $466a: $07
    rst $30                                       ; $466b: $f7
    ld a, [de]                                    ; $466c: $1a
    jr nz, @+$79                                  ; $466d: $20 $77

    ld l, e                                       ; $466f: $6b

jr_096_4670:
    rlca                                          ; $4670: $07
    ld [hl], l                                    ; $4671: $75
    ld h, b                                       ; $4672: $60
    ld [hl], $28                                  ; $4673: $36 $28

jr_096_4675:
    add hl, de                                    ; $4675: $19
    cpl                                           ; $4676: $2f
    and b                                         ; $4677: $a0
    ld e, a                                       ; $4678: $5f
    ld a, [hl+]                                   ; $4679: $2a
    ld b, $7f                                     ; $467a: $06 $7f
    adc d                                         ; $467c: $8a
    ld l, $6a                                     ; $467d: $2e $6a
    ld a, [bc]                                    ; $467f: $0a
    inc e                                         ; $4680: $1c
    db $10                                        ; $4681: $10
    add h                                         ; $4682: $84
    ld d, [hl]                                    ; $4683: $56
    add hl, de                                    ; $4684: $19
    ld d, b                                       ; $4685: $50
    xor a                                         ; $4686: $af
    ld b, h                                       ; $4687: $44
    ld hl, sp+$00                                 ; $4688: $f8 $00
    or b                                          ; $468a: $b0
    ld c, $8a                                     ; $468b: $0e $8a
    push af                                       ; $468d: $f5
    adc b                                         ; $468e: $88
    ld [de], a                                    ; $468f: $12
    and l                                         ; $4690: $a5
    jr nz, jr_096_46a3                            ; $4691: $20 $10

    ld bc, $26c0                                  ; $4693: $01 $c0 $26
    db $10                                        ; $4696: $10
    rst $28                                       ; $4697: $ef
    or d                                          ; $4698: $b2
    ld a, $11                                     ; $4699: $3e $11
    inc c                                         ; $469b: $0c
    nop                                           ; $469c: $00
    ld b, h                                       ; $469d: $44

jr_096_469e:
    inc b                                         ; $469e: $04

jr_096_469f:
    xor h                                         ; $469f: $ac
    ld [bc], a                                    ; $46a0: $02
    add b                                         ; $46a1: $80
    ld a, a                                       ; $46a2: $7f

jr_096_46a3:
    db $10                                        ; $46a3: $10
    jp z, Jump_096_4206                           ; $46a4: $ca $06 $42

    cp a                                          ; $46a7: $bf
    halt                                          ; $46a8: $76
    db $10                                        ; $46a9: $10
    or b                                          ; $46aa: $b0
    ld bc, $0c70                                  ; $46ab: $01 $70 $0c
    ld [hl], h                                    ; $46ae: $74
    inc c                                         ; $46af: $0c
    and b                                         ; $46b0: $a0
    or c                                          ; $46b1: $b1
    ld h, $01                                     ; $46b2: $26 $01
    jr c, jr_096_4706                             ; $46b4: $38 $50

    or b                                          ; $46b6: $b0
    db $10                                        ; $46b7: $10
    ld h, b                                       ; $46b8: $60
    nop                                           ; $46b9: $00
    dec b                                         ; $46ba: $05
    rlca                                          ; $46bb: $07
    ld [hl], b                                    ; $46bc: $70
    inc c                                         ; $46bd: $0c
    ld [bc], a                                    ; $46be: $02
    db $fd                                        ; $46bf: $fd
    add b                                         ; $46c0: $80
    ld a, a                                       ; $46c1: $7f
    ld d, b                                       ; $46c2: $50
    ld a, [bc]                                    ; $46c3: $0a
    cp h                                          ; $46c4: $bc
    ld de, $8022                                  ; $46c5: $11 $22 $80
    ld [bc], a                                    ; $46c8: $02
    add b                                         ; $46c9: $80
    rst $38                                       ; $46ca: $ff
    add hl, bc                                    ; $46cb: $09
    or $ba                                        ; $46cc: $f6 $ba
    sub d                                         ; $46ce: $92
    ld [$8c08], sp                                ; $46cf: $08 $08 $8c
    inc bc                                        ; $46d2: $03
    ld l, [hl]                                    ; $46d3: $6e
    ld [$0c46], sp                                ; $46d4: $08 $46 $0c
    db $10                                        ; $46d7: $10
    inc a                                         ; $46d8: $3c
    rlca                                          ; $46d9: $07
    dec b                                         ; $46da: $05
    ld b, c                                       ; $46db: $41
    ld a, [$0b14]                                 ; $46dc: $fa $14 $0b
    add d                                         ; $46df: $82
    ld a, a                                       ; $46e0: $7f
    ld [bc], a                                    ; $46e1: $02
    db $fd                                        ; $46e2: $fd
    add h                                         ; $46e3: $84
    sub [hl]                                      ; $46e4: $96
    ld bc, $689d                                  ; $46e5: $01 $9d $68
    nop                                           ; $46e8: $00

jr_096_46e9:
    rst $38                                       ; $46e9: $ff

jr_096_46ea:
    jr nz, @-$3e                                  ; $46ea: $20 $c0

    jr nc, jr_096_46ea                            ; $46ec: $30 $fc

    add hl, bc                                    ; $46ee: $09
    ld l, [hl]                                    ; $46ef: $6e
    inc c                                         ; $46f0: $0c
    ld [$0706], sp                                ; $46f1: $08 $06 $07
    res 5, [hl]                                   ; $46f4: $cb $ae
    nop                                           ; $46f6: $00
    inc a                                         ; $46f7: $3c
    inc bc                                        ; $46f8: $03
    db $10                                        ; $46f9: $10
    rst $38                                       ; $46fa: $ff
    call nz, $0108                                ; $46fb: $c4 $08 $01
    db $10                                        ; $46fe: $10
    ld [de], a                                    ; $46ff: $12
    add e                                         ; $4700: $83
    jr c, jr_096_476a                             ; $4701: $38 $67

    and b                                         ; $4703: $a0
    ld [hl], b                                    ; $4704: $70
    db $10                                        ; $4705: $10

jr_096_4706:
    db $10                                        ; $4706: $10
    ld c, c                                       ; $4707: $49
    jr nz, jr_096_46e9                            ; $4708: $20 $df

    add b                                         ; $470a: $80
    ccf                                           ; $470b: $3f
    ld [hl], d                                    ; $470c: $72
    jr jr_096_4759                                ; $470d: $18 $4a

    ld a, [bc]                                    ; $470f: $0a
    ldh [$7c], a                                  ; $4710: $e0 $7c
    inc c                                         ; $4712: $0c
    halt                                          ; $4713: $76
    ld [$0866], sp                                ; $4714: $08 $66 $08
    db $10                                        ; $4717: $10
    rst $28                                       ; $4718: $ef
    add d                                         ; $4719: $82
    db $fd                                        ; $471a: $fd
    jr nz, jr_096_469e                            ; $471b: $20 $81

    cp h                                          ; $471d: $bc
    rlca                                          ; $471e: $07
    ld [de], a                                    ; $471f: $12
    db $ed                                        ; $4720: $ed
    adc b                                         ; $4721: $88
    ld [hl], a                                    ; $4722: $77
    ld [de], a                                    ; $4723: $12
    db $ed                                        ; $4724: $ed
    ld [hl-], a                                   ; $4725: $32
    jr @+$14                                      ; $4726: $18 $12

    add b                                         ; $4728: $80
    ld a, a                                       ; $4729: $7f
    ld [hl+], a                                   ; $472a: $22
    jr c, jr_096_472d                             ; $472b: $38 $00

jr_096_472d:
    adc b                                         ; $472d: $88
    ld [hl], a                                    ; $472e: $77
    jp nc, $fc17                                  ; $472f: $d2 $17 $fc

    ld [bc], a                                    ; $4732: $02
    nop                                           ; $4733: $00
    ld hl, sp+$00                                 ; $4734: $f8 $00
    ld [$f400], a                                 ; $4736: $ea $00 $f4
    ld b, $00                                     ; $4739: $06 $00
    db $fc                                        ; $473b: $fc

jr_096_473c:
    scf                                           ; $473c: $37
    nop                                           ; $473d: $00
    or $32                                        ; $473e: $f6 $32
    ld [bc], a                                    ; $4740: $02
    ld a, [c]                                     ; $4741: $f2
    jr nc, @+$03                                  ; $4742: $30 $01

    ldh [rNR23], a                                ; $4744: $e0 $18
    ld [bc], a                                    ; $4746: $02
    ld sp, $0ff5                                  ; $4747: $31 $f5 $0f
    di                                            ; $474a: $f3
    db $fc                                        ; $474b: $fc
    ld c, b                                       ; $474c: $48
    pop de                                        ; $474d: $d1
    rra                                           ; $474e: $1f
    nop                                           ; $474f: $00
    ld a, [de]                                    ; $4750: $1a
    xor h                                         ; $4751: $ac
    ld c, $09                                     ; $4752: $0e $09
    db $e3                                        ; $4754: $e3
    db $f4                                        ; $4755: $f4
    add hl, hl                                    ; $4756: $29
    inc b                                         ; $4757: $04
    db $10                                        ; $4758: $10

jr_096_4759:
    adc l                                         ; $4759: $8d
    inc c                                         ; $475a: $0c
    ld [bc], a                                    ; $475b: $02
    ld [$09d3], sp                                ; $475c: $08 $d3 $09
    ld [hl-], a                                   ; $475f: $32
    ld [bc], a                                    ; $4760: $02
    inc b                                         ; $4761: $04
    jr jr_096_476f                                ; $4762: $18 $0b

    jr @+$34                                      ; $4764: $18 $32

    cp e                                          ; $4766: $bb
    jr nc, jr_096_4779                            ; $4767: $30 $10

    ld a, [c]                                     ; $4769: $f2

jr_096_476a:
    ldh [$2e], a                                  ; $476a: $e0 $2e
    jr nc, jr_096_4783                            ; $476c: $30 $15

    or h                                          ; $476e: $b4

jr_096_476f:
    dec b                                         ; $476f: $05
    jr z, jr_096_473c                             ; $4770: $28 $ca

    nop                                           ; $4772: $00
    ld [de], a                                    ; $4773: $12
    ld bc, $fb5e                                  ; $4774: $01 $5e $fb
    halt                                          ; $4777: $76
    dec c                                         ; $4778: $0d

jr_096_4779:
    ld [hl+], a                                   ; $4779: $22
    ld a, [bc]                                    ; $477a: $0a
    inc de                                        ; $477b: $13
    sbc d                                         ; $477c: $9a
    add hl, bc                                    ; $477d: $09
    ldh a, [rSB]                                  ; $477e: $f0 $01
    push bc                                       ; $4780: $c5
    dec b                                         ; $4781: $05
    xor b                                         ; $4782: $a8

jr_096_4783:
    rst $38                                       ; $4783: $ff
    halt                                          ; $4784: $76
    ld c, c                                       ; $4785: $49
    ldh [$15], a                                  ; $4786: $e0 $15
    inc l                                         ; $4788: $2c
    dec bc                                        ; $4789: $0b
    ld a, [hl-]                                   ; $478a: $3a
    add hl, de                                    ; $478b: $19
    inc l                                         ; $478c: $2c
    ld [$0dbc], sp                                ; $478d: $08 $bc $0d
    ld [hl], d                                    ; $4790: $72
    inc c                                         ; $4791: $0c
    ld b, [hl]                                    ; $4792: $46
    dec bc                                        ; $4793: $0b
    adc c                                         ; $4794: $89
    db $ec                                        ; $4795: $ec
    ld [$ff00], sp                                ; $4796: $08 $00 $ff
    ld b, h                                       ; $4799: $44
    add b                                         ; $479a: $80
    inc b                                         ; $479b: $04
    ld c, b                                       ; $479c: $48
    or a                                          ; $479d: $b7
    ld h, [hl]                                    ; $479e: $66
    add hl, bc                                    ; $479f: $09
    and h                                         ; $47a0: $a4
    db $10                                        ; $47a1: $10
    ld c, $22                                     ; $47a2: $0e $22
    inc d                                         ; $47a4: $14
    ld d, $89                                     ; $47a5: $16 $89
    ld a, [hl]                                    ; $47a7: $7e
    jr nc, @+$1b                                  ; $47a8: $30 $19

    add h                                         ; $47aa: $84
    ld a, e                                       ; $47ab: $7b
    ld hl, sp-$18                                 ; $47ac: $f8 $e8
    ld bc, $017e                                  ; $47ae: $01 $7e $01
    ld a, [bc]                                    ; $47b1: $0a
    nop                                           ; $47b2: $00
    db $10                                        ; $47b3: $10
    ld [de], a                                    ; $47b4: $12
    ld b, h                                       ; $47b5: $44
    add hl, bc                                    ; $47b6: $09
    dec b                                         ; $47b7: $05
    cp $20                                        ; $47b8: $fe $20
    ld c, c                                       ; $47ba: $49
    rst $18                                       ; $47bb: $df
    add d                                         ; $47bc: $82
    ld de, $10f7                                  ; $47bd: $11 $f7 $10
    and h                                         ; $47c0: $a4
    ld bc, $d728                                  ; $47c1: $01 $28 $d7
    add $1c                                       ; $47c4: $c6 $1c
    jp Jump_000_095e                              ; $47c6: $c3 $5e $09


    ld e, h                                       ; $47c9: $5c
    ld a, [bc]                                    ; $47ca: $0a
    adc d                                         ; $47cb: $8a
    ld [hl], a                                    ; $47cc: $77
    inc b                                         ; $47cd: $04
    ei                                            ; $47ce: $fb
    ld [hl+], a                                   ; $47cf: $22
    ld [bc], a                                    ; $47d0: $02
    sbc [hl]                                      ; $47d1: $9e
    add hl, bc                                    ; $47d2: $09
    ld [hl], h                                    ; $47d3: $74
    db $fd                                        ; $47d4: $fd
    ld b, $08                                     ; $47d5: $06 $08
    or d                                          ; $47d7: $b2
    add hl, bc                                    ; $47d8: $09
    jr nc, jr_096_47f9                            ; $47d9: $30 $1e

    ld b, d                                       ; $47db: $42
    add sp, $04                                   ; $47dc: $e8 $04
    ld [$c1f7], sp                                ; $47de: $08 $f7 $c1
    xor $01                                       ; $47e1: $ee $01
    halt                                          ; $47e3: $76
    ld b, $82                                     ; $47e4: $06 $82
    ld a, l                                       ; $47e6: $7d
    ld b, b                                       ; $47e7: $40
    cp a                                          ; $47e8: $bf
    ld [$05c8], sp                                ; $47e9: $08 $c8 $05
    adc b                                         ; $47ec: $88
    ld l, h                                       ; $47ed: $6c
    ld a, [bc]                                    ; $47ee: $0a
    adc b                                         ; $47ef: $88
    ld [hl], a                                    ; $47f0: $77
    stop                                          ; $47f1: $10 $00
    dec b                                         ; $47f3: $05
    ld b, b                                       ; $47f4: $40

jr_096_47f5:
    rst $38                                       ; $47f5: $ff
    ld a, [bc]                                    ; $47f6: $0a
    ld a, l                                       ; $47f7: $7d
    db $fd                                        ; $47f8: $fd

jr_096_47f9:
    ld a, h                                       ; $47f9: $7c
    ld [$0838], sp                                ; $47fa: $08 $38 $08
    sub h                                         ; $47fd: $94
    jr @+$3a                                      ; $47fe: $18 $38

    nop                                           ; $4800: $00
    jr jr_096_4815                                ; $4801: $18 $12

    ld [hl+], a                                   ; $4803: $22
    ld [$1f00], sp                                ; $4804: $08 $00 $1f
    ld bc, $08fe                                  ; $4807: $01 $fe $08
    cp d                                          ; $480a: $ba
    ld [de], a                                    ; $480b: $12
    ld b, h                                       ; $480c: $44
    ld [$0a0e], sp                                ; $480d: $08 $0e $0a
    call nz, $1619                                ; $4810: $c4 $19 $16
    nop                                           ; $4813: $00
    ld d, e                                       ; $4814: $53

jr_096_4815:
    rst $30                                       ; $4815: $f7
    ld [c], a                                     ; $4816: $e2
    ld a, [bc]                                    ; $4817: $0a
    inc h                                         ; $4818: $24
    jp c, $2101                                   ; $4819: $da $01 $21

    rst $18                                       ; $481c: $df
    ld a, [hl-]                                   ; $481d: $3a
    ld a, [bc]                                    ; $481e: $0a
    ld c, d                                       ; $481f: $4a
    ld a, [bc]                                    ; $4820: $0a
    adc c                                         ; $4821: $89
    ld c, h                                       ; $4822: $4c
    nop                                           ; $4823: $00
    cp a                                          ; $4824: $bf
    jr nz, @-$1f                                  ; $4825: $20 $df

    ld a, [hl+]                                   ; $4827: $2a
    add hl, de                                    ; $4828: $19
    db $10                                        ; $4829: $10
    rst $28                                       ; $482a: $ef
    cp b                                          ; $482b: $b8
    db $10                                        ; $482c: $10
    sub $04                                       ; $482d: $d6 $04
    ld sp, $2ae0                                  ; $482f: $31 $e0 $2a
    sub b                                         ; $4832: $90
    jp c, $0102                                   ; $4833: $da $02 $01

    db $10                                        ; $4836: $10
    ld d, $b8                                     ; $4837: $16 $b8
    ld d, c                                       ; $4839: $51
    ld d, l                                       ; $483a: $55
    dec e                                         ; $483b: $1d
    ld [$08f2], sp                                ; $483c: $08 $f2 $08
    db $10                                        ; $483f: $10
    ld b, [hl]                                    ; $4840: $46
    jr nz, jr_096_4872                            ; $4841: $20 $2f

    ld b, b                                       ; $4843: $40
    jr c, jr_096_4887                             ; $4844: $38 $41

    add d                                         ; $4846: $82
    inc h                                         ; $4847: $24
    ld a, [de]                                    ; $4848: $1a
    add b                                         ; $4849: $80
    ld a, a                                       ; $484a: $7f
    ld bc, $0294                                  ; $484b: $01 $94 $02
    jr nz, @+$1d                                  ; $484e: $20 $1b

    ld b, d                                       ; $4850: $42
    ld h, b                                       ; $4851: $60
    ld de, $0d91                                  ; $4852: $11 $91 $0d
    ld l, a                                       ; $4855: $6f
    nop                                           ; $4856: $00
    rst $38                                       ; $4857: $ff
    ld c, d                                       ; $4858: $4a
    ld a, [c]                                     ; $4859: $f2
    ld d, d                                       ; $485a: $52
    dec c                                         ; $485b: $0d
    ld e, b                                       ; $485c: $58
    ld [de], a                                    ; $485d: $12
    sbc l                                         ; $485e: $9d
    rlca                                          ; $485f: $07
    ld a, [hl+]                                   ; $4860: $2a
    ld b, d                                       ; $4861: $42
    cp l                                          ; $4862: $bd
    ld a, d                                       ; $4863: $7a
    ld a, [bc]                                    ; $4864: $0a
    add c                                         ; $4865: $81
    ld a, $1f                                     ; $4866: $3e $1f
    ld a, a                                       ; $4868: $7f
    jp nz, Jump_096_7f02                          ; $4869: $c2 $02 $7f

    ld b, e                                       ; $486c: $43
    jr z, jr_096_47f5                             ; $486d: $28 $86

    ld b, $04                                     ; $486f: $06 $04
    ei                                            ; $4871: $fb

jr_096_4872:
    ld bc, $16fe                                  ; $4872: $01 $fe $16
    add hl, bc                                    ; $4875: $09
    xor h                                         ; $4876: $ac
    dec bc                                        ; $4877: $0b
    ld [bc], a                                    ; $4878: $02

jr_096_4879:
    inc b                                         ; $4879: $04
    ei                                            ; $487a: $fb
    ld [$44f7], sp                                ; $487b: $08 $f7 $44
    cp e                                          ; $487e: $bb
    ld a, b                                       ; $487f: $78
    dec bc                                        ; $4880: $0b
    ld bc, $fe10                                  ; $4881: $01 $10 $fe
    db $10                                        ; $4884: $10
    rst $28                                       ; $4885: $ef
    ld a, [de]                                    ; $4886: $1a

jr_096_4887:
    dec de                                        ; $4887: $1b
    add b                                         ; $4888: $80
    ld a, a                                       ; $4889: $7f
    ld d, c                                       ; $488a: $51
    cp [hl]                                       ; $488b: $be
    add sp, $28                                   ; $488c: $e8 $28
    rrca                                          ; $488e: $0f
    ret nz                                        ; $488f: $c0

    ld [bc], a                                    ; $4890: $02
    ld h, d                                       ; $4891: $62
    ld b, e                                       ; $4892: $43
    ld [bc], a                                    ; $4893: $02
    or c                                          ; $4894: $b1
    rlca                                          ; $4895: $07
    inc e                                         ; $4896: $1c
    inc e                                         ; $4897: $1c
    ld a, $08                                     ; $4898: $3e $08
    ld a, $6b                                     ; $489a: $3e $6b
    ld a, a                                       ; $489c: $7f
    push af                                       ; $489d: $f5
    ld h, $0c                                     ; $489e: $26 $0c
    rst $38                                       ; $48a0: $ff
    rst $38                                       ; $48a1: $ff
    ld d, l                                       ; $48a2: $55
    jr nc, jr_096_4923                            ; $48a3: $30 $7e

    cpl                                           ; $48a5: $2f
    ld [hl], b                                    ; $48a6: $70
    ld e, e                                       ; $48a7: $5b
    sub h                                         ; $48a8: $94
    dec de                                        ; $48a9: $1b
    ld [$7540], a                                 ; $48aa: $ea $40 $75
    ld h, b                                       ; $48ad: $60
    ld b, $60                                     ; $48ae: $06 $60

Jump_096_48b0:
    ld h, b                                       ; $48b0: $60
    ldh [$e0], a                                  ; $48b1: $e0 $e0
    ret nz                                        ; $48b3: $c0

    ld bc, $8800                                  ; $48b4: $01 $00 $88
    ld a, [hl+]                                   ; $48b7: $2a
    ld a, [hl+]                                   ; $48b8: $2a
    add b                                         ; $48b9: $80
    ld b, b                                       ; $48ba: $40
    ld [$0302], sp                                ; $48bb: $08 $02 $03
    inc bc                                        ; $48be: $03
    cp a                                          ; $48bf: $bf
    dec d                                         ; $48c0: $15
    ld e, a                                       ; $48c1: $5f
    ld a, [bc]                                    ; $48c2: $0a
    nop                                           ; $48c3: $00
    xor a                                         ; $48c4: $af
    dec b                                         ; $48c5: $05
    ld d, a                                       ; $48c6: $57
    ld [bc], a                                    ; $48c7: $02
    xor e                                         ; $48c8: $ab
    ld bc, $0001                                  ; $48c9: $01 $01 $00
    jr nc, jr_096_4879                            ; $48cc: $30 $ab

    ld bc, $42ce                                  ; $48ce: $01 $ce $42
    ld bc, $ab00                                  ; $48d1: $01 $00 $ab
    ld bc, $0203                                  ; $48d4: $01 $03 $02
    db $10                                        ; $48d7: $10
    pop bc                                        ; $48d8: $c1
    pop bc                                        ; $48d9: $c1
    jp $1001                                      ; $48da: $c3 $01 $10


    rst $00                                       ; $48dd: $c7
    rst $00                                       ; $48de: $c7
    and $e6                                       ; $48df: $e6 $e6
    nop                                           ; $48e1: $00
    xor [hl]                                      ; $48e2: $ae
    inc b                                         ; $48e3: $04
    cp $aa                                        ; $48e4: $fe $aa
    add c                                         ; $48e6: $81
    add c                                         ; $48e7: $81
    add b                                         ; $48e8: $80
    add b                                         ; $48e9: $80
    add b                                         ; $48ea: $80
    db $f4                                        ; $48eb: $f4
    dec de                                        ; $48ec: $1b
    ld b, $06                                     ; $48ed: $06 $06
    xor a                                         ; $48ef: $af
    dec b                                         ; $48f0: $05
    rrca                                          ; $48f1: $0f
    rrca                                          ; $48f2: $0f
    ret nz                                        ; $48f3: $c0

    nop                                           ; $48f4: $00
    ret nz                                        ; $48f5: $c0

    ldh [$e0], a                                  ; $48f6: $e0 $e0
    ld [hl], b                                    ; $48f8: $70
    ld [hl], b                                    ; $48f9: $70
    inc e                                         ; $48fa: $1c
    inc e                                         ; $48fb: $1c
    ld c, $06                                     ; $48fc: $0e $06
    ld c, $07                                     ; $48fe: $0e $07
    rlca                                          ; $4900: $07
    add e                                         ; $4901: $83
    inc bc                                        ; $4902: $03
    ld b, l                                       ; $4903: $45
    nop                                           ; $4904: $00
    ld h, c                                       ; $4905: $61
    rlca                                          ; $4906: $07
    add b                                         ; $4907: $80
    nop                                           ; $4908: $00
    add b                                         ; $4909: $80
    ld [hl], b                                    ; $490a: $70
    ldh a, [$ac]                                  ; $490b: $f0 $ac
    db $fc                                        ; $490d: $fc
    ld d, [hl]                                    ; $490e: $56
    cp $e3                                        ; $490f: $fe $e3
    inc [hl]                                      ; $4911: $34
    ld a, a                                       ; $4912: $7f
    pop af                                        ; $4913: $f1
    ld d, b                                       ; $4914: $50
    dec d                                         ; $4915: $15
    inc h                                         ; $4916: $24
    inc e                                         ; $4917: $1c
    dec b                                         ; $4918: $05
    ld d, h                                       ; $4919: $54
    nop                                           ; $491a: $00
    add c                                         ; $491b: $81
    add c                                         ; $491c: $81
    add b                                         ; $491d: $80
    jr nc, @+$1e                                  ; $491e: $30 $1c

    add b                                         ; $4920: $80
    add b                                         ; $4921: $80
    ret nz                                        ; $4922: $c0

jr_096_4923:
    ret nz                                        ; $4923: $c0

    ld d, l                                       ; $4924: $55
    nop                                           ; $4925: $00
    ld l, d                                       ; $4926: $6a
    inc [hl]                                      ; $4927: $34
    ld b, b                                       ; $4928: $40
    and b                                         ; $4929: $a0
    and e                                         ; $492a: $a3
    inc de                                        ; $492b: $13
    ld b, h                                       ; $492c: $44
    inc e                                         ; $492d: $1c
    ld b, b                                       ; $492e: $40
    ld b, b                                       ; $492f: $40
    inc b                                         ; $4930: $04
    ld bc, $0400                                  ; $4931: $01 $00 $04
    cp d                                          ; $4934: $ba
    ld d, l                                       ; $4935: $55
    db $fd                                        ; $4936: $fd
    xor d                                         ; $4937: $aa
    ld a, [$0004]                                 ; $4938: $fa $04 $00
    cp $57                                        ; $493b: $fe $57
    nop                                           ; $493d: $00
    db $fd                                        ; $493e: $fd
    xor d                                         ; $493f: $aa
    rst $38                                       ; $4940: $ff
    ld e, a                                       ; $4941: $5f
    rst $38                                       ; $4942: $ff
    rst $38                                       ; $4943: $ff
    pop hl                                        ; $4944: $e1
    ld b, c                                       ; $4945: $41
    nop                                           ; $4946: $00
    ld [hl], l                                    ; $4947: $75
    and b                                         ; $4948: $a0
    cp d                                          ; $4949: $ba
    ld d, b                                       ; $494a: $50
    ld d, l                                       ; $494b: $55
    and b                                         ; $494c: $a0
    or b                                          ; $494d: $b0
    ldh a, [rP1]                                  ; $494e: $f0 $00
    ld d, l                                       ; $4950: $55
    and b                                         ; $4951: $a0
    cp d                                          ; $4952: $ba

jr_096_4953:
    ret nc                                        ; $4953: $d0

    ld e, b                                       ; $4954: $58
    ld hl, sp-$4e                                 ; $4955: $f8 $b2
    or b                                          ; $4957: $b0
    nop                                           ; $4958: $00
    push de                                       ; $4959: $d5
    sub b                                         ; $495a: $90
    ld a, [$dcd8]                                 ; $495b: $fa $d8 $dc
    ret z                                         ; $495e: $c8

    ld c, h                                       ; $495f: $4c
    ld c, h                                       ; $4960: $4c
    inc bc                                        ; $4961: $03
    ld [hl], l                                    ; $4962: $75
    jr nz, jr_096_4953                            ; $4963: $20 $ee

    ld b, h                                       ; $4965: $44
    ld [hl], e                                    ; $4966: $73
    ld [hl], e                                    ; $4967: $73
    ld e, b                                       ; $4968: $58
    dec de                                        ; $4969: $1b
    ld b, b                                       ; $496a: $40
    jr z, jr_096_496e                             ; $496b: $28 $01

    nop                                           ; $496d: $00

jr_096_496e:
    nop                                           ; $496e: $00
    ld a, a                                       ; $496f: $7f
    ld a, a                                       ; $4970: $7f
    ccf                                           ; $4971: $3f
    ccf                                           ; $4972: $3f
    rra                                           ; $4973: $1f
    ld bc, $0020                                  ; $4974: $01 $20 $00
    sbc a                                         ; $4977: $9f
    sbc a                                         ; $4978: $9f
    rst $18                                       ; $4979: $df
    jp z, $fcac                                   ; $497a: $ca $ac $fc

    sub $fe                                       ; $497d: $d6 $fe
    nop                                           ; $497f: $00
    ld [c], a                                     ; $4980: $e2
    cp $f1                                        ; $4981: $fe $f1
    rst $38                                       ; $4983: $ff
    ei                                            ; $4984: $fb
    rst $38                                       ; $4985: $ff
    db $ed                                        ; $4986: $ed
    rst $38                                       ; $4987: $ff
    nop                                           ; $4988: $00
    or $ff                                        ; $4989: $f6 $ff
    rst $38                                       ; $498b: $ff
    xor d                                         ; $498c: $aa
    inc sp                                        ; $498d: $33
    inc sp                                        ; $498e: $33
    ld sp, $0031                                  ; $498f: $31 $31 $00
    add hl, hl                                    ; $4992: $29
    add hl, sp                                    ; $4993: $39
    jr c, jr_096_49ce                             ; $4994: $38 $38

    xor b                                         ; $4996: $a8
    cp b                                          ; $4997: $b8
    cp b                                          ; $4998: $b8
    cp b                                          ; $4999: $b8
    inc d                                         ; $499a: $14
    ld [$7d50], a                                 ; $499b: $ea $50 $7d
    dec hl                                        ; $499e: $2b
    inc bc                                        ; $499f: $03
    add b                                         ; $49a0: $80
    ld bc, $c000                                  ; $49a1: $01 $00 $c0
    ret nz                                        ; $49a4: $c0

    ld bc, $c1c1                                  ; $49a5: $01 $c1 $c1
    pop hl                                        ; $49a8: $e1
    pop hl                                        ; $49a9: $e1
    jp hl                                         ; $49aa: $e9


    ld b, c                                       ; $49ab: $41
    ld [hl], l                                    ; $49ac: $75
    ld e, $17                                     ; $49ad: $1e $17
    push af                                       ; $49af: $f5
    call nz, $cf4b                                ; $49b0: $c4 $4b $cf
    ld e, c                                       ; $49b3: $59
    db $e4                                        ; $49b4: $e4
    dec bc                                        ; $49b5: $0b
    ret c                                         ; $49b6: $d8

    dec sp                                        ; $49b7: $3b
    xor b                                         ; $49b8: $a8
    ld h, $01                                     ; $49b9: $26 $01
    inc bc                                        ; $49bb: $03
    ld bc, $1010                                  ; $49bc: $01 $10 $10
    add e                                         ; $49bf: $83
    add e                                         ; $49c0: $83
    add d                                         ; $49c1: $82
    ld bc, $aa00                                  ; $49c2: $01 $00 $aa
    add b                                         ; $49c5: $80
    rst $10                                       ; $49c6: $d7
    add d                                         ; $49c7: $82
    rst $08                                       ; $49c8: $cf
    ld a, $39                                     ; $49c9: $3e $39
    ld b, b                                       ; $49cb: $40
    add hl, bc                                    ; $49cc: $09
    ld e, l                                       ; $49cd: $5d

jr_096_49ce:
    ld [$1980], sp                                ; $49ce: $08 $80 $19
    ld a, a                                       ; $49d1: $7f
    ld bc, $2180                                  ; $49d2: $01 $80 $21
    ld d, b                                       ; $49d5: $50
    ld e, c                                       ; $49d6: $59
    ld [hl], a                                    ; $49d7: $77
    rst $38                                       ; $49d8: $ff
    inc sp                                        ; $49d9: $33
    ld d, h                                       ; $49da: $54
    sub h                                         ; $49db: $94
    add hl, bc                                    ; $49dc: $09
    ld sp, $a84d                                  ; $49dd: $31 $4d $a8
    ld d, h                                       ; $49e0: $54
    dec h                                         ; $49e1: $25
    ld [hl], c                                    ; $49e2: $71
    ld hl, $2544                                  ; $49e3: $21 $44 $25
    ld b, a                                       ; $49e6: $47
    ld d, b                                       ; $49e7: $50
    ld h, d                                       ; $49e8: $62
    jp nz, VBlankInterrupt                        ; $49e9: $c2 $40 $00

    ld a, [bc]                                    ; $49ec: $0a
    xor c                                         ; $49ed: $a9
    ld b, $74                                     ; $49ee: $06 $74
    ld e, l                                       ; $49f0: $5d
    push de                                       ; $49f1: $d5
    ld b, c                                       ; $49f2: $41
    ret nz                                        ; $49f3: $c0

    sbc $51                                       ; $49f4: $de $51
    ldh [$09], a                                  ; $49f6: $e0 $09
    dec b                                         ; $49f8: $05
    nop                                           ; $49f9: $00
    db $f4                                        ; $49fa: $f4
    rst $38                                       ; $49fb: $ff
    call c, $54ff                                 ; $49fc: $dc $ff $54
    db $ec                                        ; $49ff: $ec
    ld a, [de]                                    ; $4a00: $1a
    ld bc, $04fa                                  ; $4a01: $01 $fa $04
    db $10                                        ; $4a04: $10
    db $fd                                        ; $4a05: $fd
    ld a, [hl]                                    ; $4a06: $7e
    rla                                           ; $4a07: $17
    rst $28                                       ; $4a08: $ef
    rst $38                                       ; $4a09: $ff
    ld b, b                                       ; $4a0a: $40
    rst $30                                       ; $4a0b: $f7
    add [hl]                                      ; $4a0c: $86
    rlca                                          ; $4a0d: $07
    or $fe                                        ; $4a0e: $f6 $fe
    ld a, [$f5fe]                                 ; $4a10: $fa $fe $f5
    rst $38                                       ; $4a13: $ff
    nop                                           ; $4a14: $00
    ld b, b                                       ; $4a15: $40
    ret nz                                        ; $4a16: $c0

    and b                                         ; $4a17: $a0
    ldh [$50], a                                  ; $4a18: $e0 $50
    ldh a, [$88]                                  ; $4a1a: $f0 $88
    ld hl, sp+$00                                 ; $4a1c: $f8 $00
    ret c                                         ; $4a1e: $d8

    ld hl, sp-$18                                 ; $4a1f: $f8 $e8
    ld hl, sp+$7c                                 ; $4a21: $f8 $7c
    ld a, h                                       ; $4a23: $7c
    inc a                                         ; $4a24: $3c
    inc a                                         ; $4a25: $3c
    ld e, b                                       ; $4a26: $58
    ei                                            ; $4a27: $fb
    inc h                                         ; $4a28: $24
    db $10                                        ; $4a29: $10
    db $fd                                        ; $4a2a: $fd
    ld [hl], b                                    ; $4a2b: $70
    ld a, [de]                                    ; $4a2c: $1a
    sbc h                                         ; $4a2d: $9c
    ld b, $3c                                     ; $4a2e: $06 $3c
    inc a                                         ; $4a30: $3c
    inc [hl]                                      ; $4a31: $34
    nop                                           ; $4a32: $00
    inc a                                         ; $4a33: $3c
    dec sp                                        ; $4a34: $3b
    ccf                                           ; $4a35: $3f
    cp l                                          ; $4a36: $bd
    cp a                                          ; $4a37: $bf
    ld a, [$7fff]                                 ; $4a38: $fa $ff $7f
    or b                                          ; $4a3b: $b0
    cp d                                          ; $4a3c: $ba
    rlca                                          ; $4a3d: $07
    rst $30                                       ; $4a3e: $f7
    ldh a, [rNR42]                                ; $4a3f: $f0 $21
    ldh [$09], a                                  ; $4a41: $e0 $09
    ldh [$e0], a                                  ; $4a43: $e0 $e0
    or b                                          ; $4a45: $b0
    ldh a, [rNR32]                                ; $4a46: $f0 $1c
    ret c                                         ; $4a48: $d8

    ld hl, sp-$43                                 ; $4a49: $f8 $bd
    ld e, d                                       ; $4a4b: $5a
    nop                                           ; $4a4c: $00
    jr nc, @+$0a                                  ; $4a4d: $30 $08

    rst $10                                       ; $4a4f: $d7
    rrca                                          ; $4a50: $0f
    db $db                                        ; $4a51: $db
    rst $18                                       ; $4a52: $df
    nop                                           ; $4a53: $00
    ld l, a                                       ; $4a54: $6f
    rst $28                                       ; $4a55: $ef
    add sp, -$08                                  ; $4a56: $e8 $f8
    call nc, $ecfc                                ; $4a58: $d4 $fc $ec
    db $fc                                        ; $4a5b: $fc
    ld d, b                                       ; $4a5c: $50
    push af                                       ; $4a5d: $f5
    ld l, c                                       ; $4a5e: $69
    nop                                           ; $4a5f: $00
    rst $30                                       ; $4a60: $f7
    ld l, [hl]                                    ; $4a61: $6e
    db $10                                        ; $4a62: $10
    and l                                         ; $4a63: $a5
    rst $20                                       ; $4a64: $e7
    ld d, [hl]                                    ; $4a65: $56
    rst $30                                       ; $4a66: $f7
    nop                                           ; $4a67: $00
    or e                                          ; $4a68: $b3
    di                                            ; $4a69: $f3
    jp nc, $fbf3                                  ; $4a6a: $d2 $f3 $fb

    ei                                            ; $4a6d: $fb
    rst $28                                       ; $4a6e: $ef
    rst $38                                       ; $4a6f: $ff
    ld d, a                                       ; $4a70: $57
    rst $10                                       ; $4a71: $d7
    ld a, d                                       ; $4a72: $7a
    nop                                           ; $4a73: $00
    ei                                            ; $4a74: $fb
    rst $38                                       ; $4a75: $ff
    rlca                                          ; $4a76: $07
    ld a, a                                       ; $4a77: $7f
    add b                                         ; $4a78: $80
    db $10                                        ; $4a79: $10
    pop de                                        ; $4a7a: $d1
    ld a, [bc]                                    ; $4a7b: $0a
    ld d, h                                       ; $4a7c: $54
    ld [$12bc], sp                                ; $4a7d: $08 $bc $12
    ld [$92fb], sp                                ; $4a80: $08 $fb $92
    nop                                           ; $4a83: $00
    inc b                                         ; $4a84: $04
    jr jr_096_4a97                                ; $4a85: $18 $10

    jr jr_096_4a8c                                ; $4a87: $18 $03

    jr c, @+$1e                                   ; $4a89: $38 $1c

    inc e                                         ; $4a8b: $1c

jr_096_4a8c:
    nop                                           ; $4a8c: $00
    ld [hl], h                                    ; $4a8d: $74
    ld a, h                                       ; $4a8e: $7c
    ret c                                         ; $4a8f: $d8

    ld hl, sp-$48                                 ; $4a90: $f8 $b8
    ld hl, sp+$70                                 ; $4a92: $f8 $70
    ldh a, [rNR41]                                ; $4a94: $f0 $20
    ld sp, hl                                     ; $4a96: $f9

jr_096_4a97:
    ld sp, hl                                     ; $4a97: $f9
    inc bc                                        ; $4a98: $03
    dec bc                                        ; $4a99: $0b
    nop                                           ; $4a9a: $00
    nop                                           ; $4a9b: $00
    jr nc, jr_096_4ace                            ; $4a9c: $30 $30

    jr z, jr_096_4aa2                             ; $4a9e: $28 $02

    jr c, jr_096_4ada                             ; $4aa0: $38 $38

jr_096_4aa2:
    jr c, @+$5e                                   ; $4aa2: $38 $5c

    ld a, h                                       ; $4aa4: $7c
    xor l                                         ; $4aa5: $ad
    call $db00                                    ; $4aa6: $cd $00 $db
    add e                                         ; $4aa9: $83
    add b                                         ; $4aaa: $80
    ld [hl-], a                                   ; $4aab: $32
    ld [hl], b                                    ; $4aac: $70
    ld [hl], b                                    ; $4aad: $70
    ldh a, [$f0]                                  ; $4aae: $f0 $f0
    ldh [rSB], a                                  ; $4ab0: $e0 $01
    nop                                           ; $4ab2: $00
    ld [c], a                                     ; $4ab3: $e2
    jr @-$2e                                      ; $4ab4: $18 $d0

    ld b, e                                       ; $4ab6: $43
    jr c, jr_096_4acd                             ; $4ab7: $38 $14

    ld [$01f0], sp                                ; $4ab9: $08 $f0 $01
    nop                                           ; $4abc: $00
    ld hl, sp-$08                                 ; $4abd: $f8 $f8
    db $fc                                        ; $4abf: $fc
    db $fc                                        ; $4ac0: $fc
    sbc $67                                       ; $4ac1: $de $67
    rrca                                          ; $4ac3: $0f
    cp $08                                        ; $4ac4: $fe $08
    cp $fa                                        ; $4ac6: $fe $fa
    nop                                           ; $4ac8: $00
    inc b                                         ; $4ac9: $04
    ld [$08e6], sp                                ; $4aca: $08 $e6 $08

jr_096_4acd:
    rst $08                                       ; $4acd: $cf

jr_096_4ace:
    ld e, e                                       ; $4ace: $5b
    xor d                                         ; $4acf: $aa
    ld [bc], a                                    ; $4ad0: $02
    add b                                         ; $4ad1: $80
    ld d, l                                       ; $4ad2: $55
    ret nz                                        ; $4ad3: $c0

    xor d                                         ; $4ad4: $aa
    ldh [rHDMA5], a                               ; $4ad5: $e0 $55
    db $10                                        ; $4ad7: $10
    ld b, c                                       ; $4ad8: $41
    cp e                                          ; $4ad9: $bb

jr_096_4ada:
    jr nz, @+$13                                  ; $4ada: $20 $11

    inc sp                                        ; $4adc: $33
    ld bc, $7300                                  ; $4add: $01 $00 $73
    inc hl                                        ; $4ae0: $23
    ld h, e                                       ; $4ae1: $63
    ld h, e                                       ; $4ae2: $63
    ld h, c                                       ; $4ae3: $61
    ld b, b                                       ; $4ae4: $40
    ld h, c                                       ; $4ae5: $61
    ld h, h                                       ; $4ae6: $64
    dec bc                                        ; $4ae7: $0b
    xor $44                                       ; $4ae8: $ee $44
    rst $10                                       ; $4aea: $d7
    add d                                         ; $4aeb: $82
    add $c6                                       ; $4aec: $c6 $c6
    nop                                           ; $4aee: $00
    rst $10                                       ; $4aef: $d7
    add d                                         ; $4af0: $82
    and [hl]                                      ; $4af1: $a6
    and $e6                                       ; $4af2: $e6 $e6
    and $ac                                       ; $4af4: $e6 $ac
    db $ec                                        ; $4af6: $ec
    nop                                           ; $4af7: $00
    db $ec                                        ; $4af8: $ec
    db $ec                                        ; $4af9: $ec
    cp e                                          ; $4afa: $bb
    ld de, $287d                                  ; $4afb: $11 $7d $28
    cp b                                          ; $4afe: $b8
    jr jr_096_4b02                                ; $4aff: $18 $01

    ld a, l                                       ; $4b01: $7d

jr_096_4b02:
    jr z, jr_096_4b54                             ; $4b02: $28 $50

    ld [hl], b                                    ; $4b04: $70
    ldh [$f0], a                                  ; $4b05: $e0 $f0
    ret nc                                        ; $4b07: $d0

    ld l, c                                       ; $4b08: $69
    nop                                           ; $4b09: $00
    add h                                         ; $4b0a: $84
    ld [bc], a                                    ; $4b0b: $02
    ld a, [de]                                    ; $4b0c: $1a
    rst $10                                       ; $4b0d: $d7
    jp $87af                                      ; $4b0e: $c3 $af $87


    ld bc, $0708                                  ; $4b11: $01 $08 $07
    rlca                                          ; $4b14: $07
    nop                                           ; $4b15: $00
    db $fc                                        ; $4b16: $fc
    db $fc                                        ; $4b17: $fc
    ld hl, sp-$08                                 ; $4b18: $f8 $f8
    ld [hl], b                                    ; $4b1a: $70
    ld [hl], b                                    ; $4b1b: $70
    ld [hl], l                                    ; $4b1c: $75
    ld h, c                                       ; $4b1d: $61
    nop                                           ; $4b1e: $00
    db $eb                                        ; $4b1f: $eb
    ld h, c                                       ; $4b20: $61
    ld [hl], l                                    ; $4b21: $75
    ld [hl], c                                    ; $4b22: $71
    ld [hl], e                                    ; $4b23: $73
    ld [hl], e                                    ; $4b24: $73
    di                                            ; $4b25: $f3
    di                                            ; $4b26: $f3
    db $10                                        ; $4b27: $10
    ret nc                                        ; $4b28: $d0

    ldh a, [rSVBK]                                ; $4b29: $f0 $70
    adc h                                         ; $4b2b: $8c
    nop                                           ; $4b2c: $00
    ld a, l                                       ; $4b2d: $7d
    db $ec                                        ; $4b2e: $ec
    xor [hl]                                      ; $4b2f: $ae
    db $ec                                        ; $4b30: $ec
    ld bc, $e677                                  ; $4b31: $01 $77 $e6
    and e                                         ; $4b34: $a3
    db $e3                                        ; $4b35: $e3
    ld h, c                                       ; $4b36: $61
    pop hl                                        ; $4b37: $e1
    rlca                                          ; $4b38: $07
    ld bc, $0000                                  ; $4b39: $01 $00 $00
    dec c                                         ; $4b3c: $0d
    dec c                                         ; $4b3d: $0d
    add hl, de                                    ; $4b3e: $19
    add hl, de                                    ; $4b3f: $19
    ld sp, $6131                                  ; $4b40: $31 $31 $61
    ld h, c                                       ; $4b43: $61
    nop                                           ; $4b44: $00
    db $e3                                        ; $4b45: $e3
    db $e3                                        ; $4b46: $e3
    jp $b3c3                                      ; $4b47: $c3 $c3 $b3


    di                                            ; $4b4a: $f3
    ld [hl], a                                    ; $4b4b: $77
    rst $30                                       ; $4b4c: $f7

jr_096_4b4d:
    nop                                           ; $4b4d: $00
    rst $20                                       ; $4b4e: $e7
    rst $20                                       ; $4b4f: $e7
    add $c6                                       ; $4b50: $c6 $c6
    adc $ce                                       ; $4b52: $ce $ce

jr_096_4b54:
    adc [hl]                                      ; $4b54: $8e
    adc [hl]                                      ; $4b55: $8e
    nop                                           ; $4b56: $00
    inc b                                         ; $4b57: $04
    inc c                                         ; $4b58: $0c
    dec e                                         ; $4b59: $1d
    dec e                                         ; $4b5a: $1d
    and b                                         ; $4b5b: $a0
    ldh [$e1], a                                  ; $4b5c: $e0 $e1
    pop hl                                        ; $4b5e: $e1
    ld bc, $e1a1                                  ; $4b5f: $01 $a1 $e1
    ld [hl], d                                    ; $4b62: $72
    di                                            ; $4b63: $f3
    or l                                          ; $4b64: $b5
    rst $30                                       ; $4b65: $f7
    ei                                            ; $4b66: $fb
    cpl                                           ; $4b67: $2f
    inc bc                                        ; $4b68: $03
    nop                                           ; $4b69: $00
    rst $28                                       ; $4b6a: $ef
    rst $38                                       ; $4b6b: $ff
    xor d                                         ; $4b6c: $aa
    ldh a, [$5d]                                  ; $4b6d: $f0 $5d
    xor b                                         ; $4b6f: $a8
    xor [hl]                                      ; $4b70: $ae
    ld d, h                                       ; $4b71: $54
    ld bc, $ead7                                  ; $4b72: $01 $d7 $ea
    ld h, e                                       ; $4b75: $63
    rst $38                                       ; $4b76: $ff
    push af                                       ; $4b77: $f5
    rst $38                                       ; $4b78: $ff
    db $eb                                        ; $4b79: $eb
    inc b                                         ; $4b7a: $04
    nop                                           ; $4b7b: $00
    or d                                          ; $4b7c: $b2
    jr @+$06                                      ; $4b7d: $18 $04

    xor d                                         ; $4b7f: $aa
    jr jr_096_4b86                                ; $4b80: $18 $04

    ld d, $03                                     ; $4b82: $16 $03
    ccf                                           ; $4b84: $3f
    ccf                                           ; $4b85: $3f

jr_096_4b86:
    db $10                                        ; $4b86: $10
    inc bc                                        ; $4b87: $03
    rst $18                                       ; $4b88: $df
    nop                                           ; $4b89: $00
    ld sp, hl                                     ; $4b8a: $f9
    ld sp, hl                                     ; $4b8b: $f9
    ld a, l                                       ; $4b8c: $7d
    jr z, jr_096_4b4d                             ; $4b8d: $28 $be

    inc d                                         ; $4b8f: $14
    ld e, $1e                                     ; $4b90: $1e $1e

jr_096_4b92:
    inc de                                        ; $4b92: $13
    rra                                           ; $4b93: $1f
    rra                                           ; $4b94: $1f
    rrca                                          ; $4b95: $0f
    ld bc, $0d00                                  ; $4b96: $01 $00 $0d
    dec c                                         ; $4b99: $0d
    cp b                                          ; $4b9a: $b8
    rlca                                          ; $4b9b: $07
    adc h                                         ; $4b9c: $8c
    inc bc                                        ; $4b9d: $03
    ld b, b                                       ; $4b9e: $40
    and b                                         ; $4b9f: $a0
    dec de                                        ; $4ba0: $1b
    ld bc, $f0d0                                  ; $4ba1: $01 $d0 $f0
    add sp, -$08                                  ; $4ba4: $e8 $f8
    ld a, b                                       ; $4ba6: $78
    ld a, b                                       ; $4ba7: $78
    ld b, l                                       ; $4ba8: $45
    ld a, [$0210]                                 ; $4ba9: $fa $10 $02
    ld [$f4ff], a                                 ; $4bac: $ea $ff $f4
    ld d, b                                       ; $4baf: $50
    inc b                                         ; $4bb0: $04
    ei                                            ; $4bb1: $fb
    db $e4                                        ; $4bb2: $e4
    ld hl, $90c4                                  ; $4bb3: $21 $c4 $90
    ld bc, $0354                                  ; $4bb6: $01 $54 $03
    cp a                                          ; $4bb9: $bf
    rra                                           ; $4bba: $1f
    ld e, a                                       ; $4bbb: $5f
    ld d, b                                       ; $4bbc: $50
    inc bc                                        ; $4bbd: $03
    sbc a                                         ; $4bbe: $9f
    sbc a                                         ; $4bbf: $9f
    nop                                           ; $4bc0: $00
    rlca                                          ; $4bc1: $07
    rlca                                          ; $4bc2: $07
    ld b, $06                                     ; $4bc3: $06 $06
    ld d, [hl]                                    ; $4bc5: $56
    ld b, $87                                     ; $4bc6: $06 $87
    add a                                         ; $4bc8: $87
    ld b, b                                       ; $4bc9: $40
    ld b, e                                       ; $4bca: $43
    call nz, Call_096_6b00                        ; $4bcb: $c4 $00 $6b
    db $e3                                        ; $4bce: $e3
    or c                                          ; $4bcf: $b1
    pop af                                        ; $4bd0: $f1
    ld [hl], h                                    ; $4bd1: $74
    ld a, h                                       ; $4bd2: $7c
    nop                                           ; $4bd3: $00
    ld a, d                                       ; $4bd4: $7a
    ld a, [hl]                                    ; $4bd5: $7e
    db $fd                                        ; $4bd6: $fd
    ld e, a                                       ; $4bd7: $5f
    ld e, [hl]                                    ; $4bd8: $5e
    ld e, a                                       ; $4bd9: $5f
    rst $08                                       ; $4bda: $cf
    rst $08                                       ; $4bdb: $cf
    rra                                           ; $4bdc: $1f
    sub $c7                                       ; $4bdd: $d6 $c7
    db $eb                                        ; $4bdf: $eb
    ret c                                         ; $4be0: $d8

    nop                                           ; $4be1: $00
    ld a, [de]                                    ; $4be2: $1a
    ld a, [hl+]                                   ; $4be3: $2a
    and l                                         ; $4be4: $a5
    add hl, hl                                    ; $4be5: $29
    ld [hl], h                                    ; $4be6: $74
    ld [$0802], sp                                ; $4be7: $08 $02 $08
    add h                                         ; $4bea: $84
    or l                                          ; $4beb: $b5
    add hl, hl                                    ; $4bec: $29
    reti                                          ; $4bed: $d9


    ld sp, hl                                     ; $4bee: $f9
    db $ed                                        ; $4bef: $ed
    db $fd                                        ; $4bf0: $fd
    ld e, d                                       ; $4bf1: $5a
    ld a, [bc]                                    ; $4bf2: $0a
    cp a                                          ; $4bf3: $bf
    cp a                                          ; $4bf4: $bf
    adc b                                         ; $4bf5: $88
    adc [hl]                                      ; $4bf6: $8e
    ld [$cfcf], sp                                ; $4bf7: $08 $cf $cf
    pop bc                                        ; $4bfa: $c1
    ld bc, $e100                                  ; $4bfb: $01 $00 $e1
    pop hl                                        ; $4bfe: $e1
    ldh [rP1], a                                  ; $4bff: $e0 $00
    ldh [$60], a                                  ; $4c01: $e0 $60
    ld h, b                                       ; $4c03: $60
    ld [hl], b                                    ; $4c04: $70
    ld [hl], b                                    ; $4c05: $70

jr_096_4c06:
    jr nc, jr_096_4c38                            ; $4c06: $30 $30

    jr c, @+$24                                   ; $4c08: $38 $22

    jr c, jr_096_4b92                             ; $4c0a: $38 $86

    ld bc, $0c00                                  ; $4c0c: $01 $00 $0c
    inc c                                         ; $4c0f: $0c
    inc e                                         ; $4c10: $1c
    ld bc, $3c00                                  ; $4c11: $01 $00 $3c
    nop                                           ; $4c14: $00
    inc a                                         ; $4c15: $3c
    halt                                          ; $4c16: $76
    halt                                          ; $4c17: $76
    ld [hl], d                                    ; $4c18: $72
    ld [hl], d                                    ; $4c19: $72
    cpl                                           ; $4c1a: $2f
    ccf                                           ; $4c1b: $3f
    ld e, a                                       ; $4c1c: $5f
    nop                                           ; $4c1d: $00
    ld a, a                                       ; $4c1e: $7f
    cp a                                          ; $4c1f: $bf
    rst $38                                       ; $4c20: $ff
    ld e, l                                       ; $4c21: $5d
    db $fd                                        ; $4c22: $fd
    cp e                                          ; $4c23: $bb
    ei                                            ; $4c24: $fb
    di                                            ; $4c25: $f3
    nop                                           ; $4c26: $00
    di                                            ; $4c27: $f3
    db $e3                                        ; $4c28: $e3
    db $e3                                        ; $4c29: $e3
    ld h, [hl]                                    ; $4c2a: $66
    and $be                                       ; $4c2b: $e6 $be
    cp $d7                                        ; $4c2d: $fe $d7
    xor e                                         ; $4c2f: $ab
    ld [$6d04], a                                 ; $4c30: $ea $04 $6d
    jp c, $ad01                                   ; $4c33: $da $01 $ad

    inc e                                         ; $4c36: $1c
    ld [de], a                                    ; $4c37: $12

jr_096_4c38:
    db $e3                                        ; $4c38: $e3
    ld bc, $a400                                  ; $4c39: $01 $00 $a4
    inc c                                         ; $4c3c: $0c
    jr nc, jr_096_4c06                            ; $4c3d: $30 $c7

    rst $00                                       ; $4c3f: $c7
    cp b                                          ; $4c40: $b8
    ld a, [bc]                                    ; $4c41: $0a
    or [hl]                                       ; $4c42: $b6
    ld [bc], a                                    ; $4c43: $02
    or $be                                        ; $4c44: $f6 $be
    cp $ef                                        ; $4c46: $fe $ef
    cp h                                          ; $4c48: $bc
    ret z                                         ; $4c49: $c8

    ld [bc], a                                    ; $4c4a: $02
    sbc $4a                                       ; $4c4b: $de $4a
    ld [de], a                                    ; $4c4d: $12
    ld d, $0d                                     ; $4c4e: $16 $0d
    ld a, [c]                                     ; $4c50: $f2
    add hl, sp                                    ; $4c51: $39
    ld e, h                                       ; $4c52: $5c
    ld a, [bc]                                    ; $4c53: $0a
    rst $00                                       ; $4c54: $c7
    rst $00                                       ; $4c55: $c7
    sub b                                         ; $4c56: $90
    ret nc                                        ; $4c57: $d0

    inc c                                         ; $4c58: $0c
    rst $20                                       ; $4c59: $e7
    rst $20                                       ; $4c5a: $e7
    ld h, [hl]                                    ; $4c5b: $66
    ld a, [bc]                                    ; $4c5c: $0a
    rst $18                                       ; $4c5d: $df
    rst $38                                       ; $4c5e: $ff
    ld l, a                                       ; $4c5f: $6f
    rst $38                                       ; $4c60: $ff
    dec c                                         ; $4c61: $0d
    cp b                                          ; $4c62: $b8
    cp b                                          ; $4c63: $b8
    sbc h                                         ; $4c64: $9c
    sbc h                                         ; $4c65: $9c
    ld h, h                                       ; $4c66: $64
    ld a, [bc]                                    ; $4c67: $0a
    inc [hl]                                      ; $4c68: $34
    ld [$f8fe], sp                                ; $4c69: $08 $fe $f8
    ld [de], a                                    ; $4c6c: $12
    ld l, a                                       ; $4c6d: $6f
    ei                                            ; $4c6e: $fb
    jr jr_096_4c71                                ; $4c6f: $18 $00

jr_096_4c71:
    ld h, e                                       ; $4c71: $63
    ld a, [hl+]                                   ; $4c72: $2a
    cp a                                          ; $4c73: $bf
    and $22                                       ; $4c74: $e6 $22
    ld [hl], e                                    ; $4c76: $73
    ld a, [hl-]                                   ; $4c77: $3a
    jp z, $aa1f                                   ; $4c78: $ca $1f $aa

    dec sp                                        ; $4c7b: $3b
    ld d, b                                       ; $4c7c: $50
    xor [hl]                                      ; $4c7d: $ae
    inc a                                         ; $4c7e: $3c
    dec b                                         ; $4c7f: $05
    inc bc                                        ; $4c80: $03
    ld hl, sp+$04                                 ; $4c81: $f8 $04
    ld bc, $4001                                  ; $4c83: $01 $01 $40
    ld b, b                                       ; $4c86: $40
    adc b                                         ; $4c87: $88
    ld h, b                                       ; $4c88: $60
    dec c                                         ; $4c89: $0d
    cp [hl]                                       ; $4c8a: $be
    inc d                                         ; $4c8b: $14
    dec e                                         ; $4c8c: $1d
    cp l                                          ; $4c8d: $bd
    nop                                           ; $4c8e: $00
    jr c, jr_096_4cc9                             ; $4c8f: $38 $38

    cp b                                          ; $4c91: $b8
    jr nz, @-$46                                  ; $4c92: $20 $b8

    ld hl, sp+$01                                 ; $4c94: $f8 $01
    nop                                           ; $4c96: $00
    ret c                                         ; $4c97: $d8

    ld hl, sp-$40                                 ; $4c98: $f8 $c0
    ret nz                                        ; $4c9a: $c0

    jp nz, $c220                                  ; $4c9b: $c2 $20 $c2

    xor [hl]                                      ; $4c9e: $ae
    push de                                       ; $4c9f: $d5
    ld [$d786], sp                                ; $4ca0: $08 $86 $d7
    add [hl]                                      ; $4ca3: $86
    xor [hl]                                      ; $4ca4: $ae
    add [hl]                                      ; $4ca5: $86
    ld [$8c8d], sp                                ; $4ca6: $08 $8d $8c
    ld hl, sp-$08                                 ; $4ca9: $f8 $f8
    ld d, $0a                                     ; $4cab: $16 $0a
    ld l, l                                       ; $4cad: $6d
    db $ed                                        ; $4cae: $ed
    rst $28                                       ; $4caf: $ef
    nop                                           ; $4cb0: $00

jr_096_4cb1:
    rst $00                                       ; $4cb1: $c7
    ld d, a                                       ; $4cb2: $57
    rst $00                                       ; $4cb3: $c7
    and a                                         ; $4cb4: $a7
    rst $20                                       ; $4cb5: $e7
    rst $20                                       ; $4cb6: $e7
    rst $20                                       ; $4cb7: $e7
    adc h                                         ; $4cb8: $8c
    jr nz, @-$72                                  ; $4cb9: $20 $8c

    sbc h                                         ; $4cbb: $9c
    ld bc, $1e00                                  ; $4cbc: $01 $00 $1e
    ld e, $3e                                     ; $4cbf: $1e $3e
    ld a, $36                                     ; $4cc1: $3e $36
    nop                                           ; $4cc3: $00
    ld [hl], $37                                  ; $4cc4: $36 $37
    scf                                           ; $4cc6: $37
    db $e3                                        ; $4cc7: $e3
    db $e3                                        ; $4cc8: $e3

jr_096_4cc9:
    or e                                          ; $4cc9: $b3
    di                                            ; $4cca: $f3
    db $d3                                        ; $4ccb: $d3
    nop                                           ; $4ccc: $00
    di                                            ; $4ccd: $f3
    di                                            ; $4cce: $f3
    di                                            ; $4ccf: $f3
    db $db                                        ; $4cd0: $db
    ei                                            ; $4cd1: $fb
    db $eb                                        ; $4cd2: $eb
    ei                                            ; $4cd3: $fb
    rst $30                                       ; $4cd4: $f7
    jp hl                                         ; $4cd5: $e9


    adc b                                         ; $4cd6: $88
    inc de                                        ; $4cd7: $13
    ld c, a                                       ; $4cd8: $4f
    ld l, [hl]                                    ; $4cd9: $6e
    jp nc, Jump_096_400d                          ; $4cda: $d2 $0d $40

    ldh [rTAC], a                                 ; $4cdd: $e0 $07
    jr jr_096_4cf9                                ; $4cdf: $18 $18

    ld c, d                                       ; $4ce1: $4a
    nop                                           ; $4ce2: $00
    inc e                                         ; $4ce3: $1c
    db $fc                                        ; $4ce4: $fc
    db $f4                                        ; $4ce5: $f4
    db $fc                                        ; $4ce6: $fc
    add b                                         ; $4ce7: $80
    inc e                                         ; $4ce8: $1c
    add d                                         ; $4ce9: $82
    jr @-$48                                      ; $4cea: $18 $b6

    dec c                                         ; $4cec: $0d
    call c, $46fc                                 ; $4ced: $dc $fc $46
    ld [$04ee], a                                 ; $4cf0: $ea $ee $04
    jp c, Jump_096_7dff                           ; $4cf3: $da $ff $7d

    ld a, $23                                     ; $4cf6: $3e $23
    and d                                         ; $4cf8: $a2

jr_096_4cf9:
    inc l                                         ; $4cf9: $2c
    xor e                                         ; $4cfa: $ab
    ccf                                           ; $4cfb: $3f
    inc bc                                        ; $4cfc: $03
    rla                                           ; $4cfd: $17
    dec hl                                        ; $4cfe: $2b
    jr z, jr_096_4d09                             ; $4cff: $28 $08

jr_096_4d01:
    jr nc, jr_096_4cb1                            ; $4d01: $30 $ae

    dec e                                         ; $4d03: $1d
    sbc h                                         ; $4d04: $9c
    ld a, $0c                                     ; $4d05: $3e $0c
    rrca                                          ; $4d07: $0f
    ld c, [hl]                                    ; $4d08: $4e

jr_096_4d09:
    add hl, bc                                    ; $4d09: $09
    and d                                         ; $4d0a: $a2
    ld c, h                                       ; $4d0b: $4c
    add hl, bc                                    ; $4d0c: $09
    xor $7d                                       ; $4d0d: $ee $7d
    dec b                                         ; $4d0f: $05
    ei                                            ; $4d10: $fb
    rst $38                                       ; $4d11: $ff
    ld [hl], a                                    ; $4d12: $77
    jr c, jr_096_4d1a                             ; $4d13: $38 $05

    ld a, l                                       ; $4d15: $7d
    nop                                           ; $4d16: $00
    ld a, a                                       ; $4d17: $7f
    ld a, d                                       ; $4d18: $7a
    ld a, a                                       ; $4d19: $7f

jr_096_4d1a:
    ld a, l                                       ; $4d1a: $7d
    ld a, a                                       ; $4d1b: $7f
    ld a, [hl]                                    ; $4d1c: $7e
    ld a, a                                       ; $4d1d: $7f
    dec a                                         ; $4d1e: $3d
    add hl, hl                                    ; $4d1f: $29
    ccf                                           ; $4d20: $3f
    ld a, $45                                     ; $4d21: $3e $45
    ld [bc], a                                    ; $4d23: $02
    sbc $40                                       ; $4d24: $de $40
    ld h, e                                       ; $4d26: $63
    ld a, [hl]                                    ; $4d27: $7e
    ld a, a                                       ; $4d28: $7f
    ld l, b                                       ; $4d29: $68
    add hl, hl                                    ; $4d2a: $29
    db $f4                                        ; $4d2b: $f4
    jr nz, jr_096_4d57                            ; $4d2c: $20 $29

    ld c, l                                       ; $4d2e: $4d
    ccf                                           ; $4d2f: $3f
    ld e, b                                       ; $4d30: $58
    ld a, [bc]                                    ; $4d31: $0a
    jr nz, jr_096_4d4c                            ; $4d32: $20 $18

    ld a, [hl]                                    ; $4d34: $7e
    ld c, d                                       ; $4d35: $4a
    ld hl, $ffff                                  ; $4d36: $21 $ff $ff
    add b                                         ; $4d39: $80
    ld h, [hl]                                    ; $4d3a: $66
    ld a, [bc]                                    ; $4d3b: $0a
    push af                                       ; $4d3c: $f5
    db $fd                                        ; $4d3d: $fd
    ld a, e                                       ; $4d3e: $7b
    ld a, a                                       ; $4d3f: $7f
    ld a, $3f                                     ; $4d40: $3e $3f
    dec e                                         ; $4d42: $1d
    ret nz                                        ; $4d43: $c0

    add d                                         ; $4d44: $82
    ld [de], a                                    ; $4d45: $12
    ldh [$0a], a                                  ; $4d46: $e0 $0a
    rlca                                          ; $4d48: $07
    rlca                                          ; $4d49: $07
    rst $00                                       ; $4d4a: $c7
    rst $00                                       ; $4d4b: $c7

jr_096_4d4c:
    ld l, a                                       ; $4d4c: $6f
    rst $28                                       ; $4d4d: $ef
    ld h, b                                       ; $4d4e: $60
    cp a                                          ; $4d4f: $bf
    nop                                           ; $4d50: $00
    inc d                                         ; $4d51: $14
    adc e                                         ; $4d52: $8b
    rra                                           ; $4d53: $1f
    jr c, jr_096_4d8e                             ; $4d54: $38 $38

    halt                                          ; $4d56: $76

jr_096_4d57:
    ld a, [hl]                                    ; $4d57: $7e
    dec sp                                        ; $4d58: $3b
    jr jr_096_4d9a                                ; $4d59: $18 $3f

    rrca                                          ; $4d5b: $0f
    rrca                                          ; $4d5c: $0f
    ret c                                         ; $4d5d: $d8

    jr z, jr_096_4d01                             ; $4d5e: $28 $a1

    ccf                                           ; $4d60: $3f
    ld h, b                                       ; $4d61: $60
    ld h, b                                       ; $4d62: $60
    sbc $81                                       ; $4d63: $de $81
    sub [hl]                                      ; $4d65: $96
    inc b                                         ; $4d66: $04
    ld a, d                                       ; $4d67: $7a
    ld a, a                                       ; $4d68: $7f
    dec e                                         ; $4d69: $1d
    rra                                           ; $4d6a: $1f
    rlca                                          ; $4d6b: $07
    rlca                                          ; $4d6c: $07
    jp nz, $f158                                  ; $4d6d: $c2 $58 $f1

    ld a, d                                       ; $4d70: $7a
    ld e, $3a                                     ; $4d71: $1e $3a
    ld a, [bc]                                    ; $4d73: $0a
    add b                                         ; $4d74: $80
    ld c, c                                       ; $4d75: $49
    ld [hl], b                                    ; $4d76: $70
    add hl, hl                                    ; $4d77: $29
    rst $00                                       ; $4d78: $c7
    rst $00                                       ; $4d79: $c7
    ld b, a                                       ; $4d7a: $47
    ld [hl], b                                    ; $4d7b: $70
    ld de, $70fb                                  ; $4d7c: $11 $fb $70
    ld b, [hl]                                    ; $4d7f: $46
    or b                                          ; $4d80: $b0
    ld de, $09a0                                  ; $4d81: $11 $a0 $09
    sbc a                                         ; $4d84: $9f
    ld de, $11a4                                  ; $4d85: $11 $a4 $11
    adc h                                         ; $4d88: $8c
    ld bc, $9000                                  ; $4d89: $01 $00 $90
    add hl, bc                                    ; $4d8c: $09
    inc b                                         ; $4d8d: $04

jr_096_4d8e:
    jr jr_096_4da8                                ; $4d8e: $18 $18

    jr c, jr_096_4dca                             ; $4d90: $38 $38

jr_096_4d92:
    jr nc, jr_096_4d95                            ; $4d92: $30 $01

    nop                                           ; $4d94: $00

jr_096_4d95:
    ldh [$e0], a                                  ; $4d95: $e0 $e0
    add h                                         ; $4d97: $84
    rst $08                                       ; $4d98: $cf
    ld c, a                                       ; $4d99: $4f

jr_096_4d9a:
    ld [$0c08], sp                                ; $4d9a: $08 $08 $0c
    inc c                                         ; $4d9d: $0c
    ld b, [hl]                                    ; $4d9e: $46
    rra                                           ; $4d9f: $1f
    db $fc                                        ; $4da0: $fc
    db $fc                                        ; $4da1: $fc
    jr nc, jr_096_4d92                            ; $4da2: $30 $ee

    cp $20                                        ; $4da4: $fe $20
    add hl, de                                    ; $4da6: $19
    rst $28                                       ; $4da7: $ef

jr_096_4da8:
    cpl                                           ; $4da8: $2f
    rlca                                          ; $4da9: $07
    rlca                                          ; $4daa: $07
    sbc [hl]                                      ; $4dab: $9e

jr_096_4dac:
    sbc a                                         ; $4dac: $9f
    inc b                                         ; $4dad: $04
    rst $38                                       ; $4dae: $ff
    rst $38                                       ; $4daf: $ff
    ld hl, sp-$08                                 ; $4db0: $f8 $f8
    inc c                                         ; $4db2: $0c
    ld bc, $0e00                                  ; $4db3: $01 $00 $0e
    ld c, $47                                     ; $4db6: $0e $47
    db $db                                        ; $4db8: $db
    add b                                         ; $4db9: $80
    ld bc, $eeee                                  ; $4dba: $01 $ee $ee
    ld b, $01                                     ; $4dbd: $06 $01
    nop                                           ; $4dbf: $00
    ldh a, [$2e]                                  ; $4dc0: $f0 $2e
    ld e, b                                       ; $4dc2: $58
    ccf                                           ; $4dc3: $3f
    ldh a, [$7e]                                  ; $4dc4: $f0 $7e
    ld l, c                                       ; $4dc6: $69
    inc l                                         ; $4dc7: $2c
    ld e, $06                                     ; $4dc8: $1e $06

jr_096_4dca:
    jr z, jr_096_4dac                             ; $4dca: $28 $e0

    ccf                                           ; $4dcc: $3f
    jr jr_096_4de7                                ; $4dcd: $18 $18

    inc e                                         ; $4dcf: $1c
    inc e                                         ; $4dd0: $1c
    inc a                                         ; $4dd1: $3c
    inc c                                         ; $4dd2: $0c
    inc c                                         ; $4dd3: $0c
    ld e, $48                                     ; $4dd4: $1e $48
    ld l, h                                       ; $4dd6: $6c
    ld c, $3e                                     ; $4dd7: $0e $3e
    cpl                                           ; $4dd9: $2f
    cp h                                          ; $4dda: $bc
    jr @-$06                                      ; $4ddb: $18 $f8

    ld hl, sp-$7c                                 ; $4ddd: $f8 $84
    ldh a, [$1f]                                  ; $4ddf: $f0 $1f
    db $10                                        ; $4de1: $10
    db $10                                        ; $4de2: $10
    ld a, $3e                                     ; $4de3: $3e $3e
    ld c, h                                       ; $4de5: $4c
    add hl, bc                                    ; $4de6: $09

jr_096_4de7:
    inc bc                                        ; $4de7: $03
    inc bc                                        ; $4de8: $03
    ld [$0e0e], sp                                ; $4de9: $08 $0e $0e
    ld b, $06                                     ; $4dec: $06 $06
    ld a, [de]                                    ; $4dee: $1a
    add hl, bc                                    ; $4def: $09
    inc bc                                        ; $4df0: $03
    inc bc                                        ; $4df1: $03
    add c                                         ; $4df2: $81
    ld b, $81                                     ; $4df3: $06 $81
    ld b, c                                       ; $4df5: $41
    pop bc                                        ; $4df6: $c1
    and c                                         ; $4df7: $a1
    pop hl                                        ; $4df8: $e1
    add h                                         ; $4df9: $84
    ld [$0b50], sp                                ; $4dfa: $08 $50 $0b
    sbc h                                         ; $4dfd: $9c
    ld bc, $bc9c                                  ; $4dfe: $01 $9c $bc
    cp h                                          ; $4e01: $bc
    or $f6                                        ; $4e02: $f6 $f6
    ld a, [c]                                     ; $4e04: $f2
    ld a, [c]                                     ; $4e05: $f2
    ld [$cc1c], a                                 ; $4e06: $ea $1c $cc
    sub $3a                                       ; $4e09: $d6 $3a
    and h                                         ; $4e0b: $a4
    ld [$1f1b], sp                                ; $4e0c: $08 $1b $1f
    ld [hl], h                                    ; $4e0f: $74
    dec c                                         ; $4e10: $0d
    ld a, [de]                                    ; $4e11: $1a
    dec bc                                        ; $4e12: $0b
    and e                                         ; $4e13: $a3
    db $e3                                        ; $4e14: $e3
    ld [bc], a                                    ; $4e15: $02
    rlca                                          ; $4e16: $07
    rlca                                          ; $4e17: $07
    cp a                                          ; $4e18: $bf
    rst $38                                       ; $4e19: $ff
    ld a, h                                       ; $4e1a: $7c
    db $fc                                        ; $4e1b: $fc
    inc d                                         ; $4e1c: $14
    dec c                                         ; $4e1d: $0d
    inc a                                         ; $4e1e: $3c
    ld e, h                                       ; $4e1f: $5c
    inc a                                         ; $4e20: $3c
    call nc, $f20f                                ; $4e21: $d4 $0f $f2
    sbc d                                         ; $4e24: $9a
    dec b                                         ; $4e25: $05
    db $ec                                        ; $4e26: $ec
    dec c                                         ; $4e27: $0d
    inc c                                         ; $4e28: $0c
    inc l                                         ; $4e29: $2c
    add e                                         ; $4e2a: $83
    add e                                         ; $4e2b: $83
    ld b, $81                                     ; $4e2c: $06 $81
    add c                                         ; $4e2e: $81
    add a                                         ; $4e2f: $87
    add a                                         ; $4e30: $87
    ld a, a                                       ; $4e31: $7f
    ld a, [de]                                    ; $4e32: $1a
    inc de                                        ; $4e33: $13
    ld e, $0b                                     ; $4e34: $1e $0b
    db $eb                                        ; $4e36: $eb
    add b                                         ; $4e37: $80
    or [hl]                                       ; $4e38: $b6
    dec b                                         ; $4e39: $05
    rst $38                                       ; $4e3a: $ff
    rst $38                                       ; $4e3b: $ff
    db $f4                                        ; $4e3c: $f4
    db $f4                                        ; $4e3d: $f4
    add sp, -$18                                  ; $4e3e: $e8 $e8
    di                                            ; $4e40: $f3
    inc h                                         ; $4e41: $24
    di                                            ; $4e42: $f3
    db $fd                                        ; $4e43: $fd
    ld d, d                                       ; $4e44: $52
    inc bc                                        ; $4e45: $03
    cp $fe                                        ; $4e46: $fe $fe
    inc [hl]                                      ; $4e48: $34
    add hl, de                                    ; $4e49: $19
    rra                                           ; $4e4a: $1f
    rra                                           ; $4e4b: $1f
    add hl, de                                    ; $4e4c: $19
    ld [$57ff], a                                 ; $4e4d: $ea $ff $57
    cp [hl]                                       ; $4e50: $be
    dec h                                         ; $4e51: $25
    or $0c                                        ; $4e52: $f6 $0c
    pop hl                                        ; $4e54: $e1
    pop hl                                        ; $4e55: $e1
    ld l, $0e                                     ; $4e56: $2e $0e
    ld h, d                                       ; $4e58: $62
    ei                                            ; $4e59: $fb
    ld [hl+], a                                   ; $4e5a: $22
    ld bc, $1ff2                                  ; $4e5b: $01 $f2 $1f
    rst $38                                       ; $4e5e: $ff
    rst $38                                       ; $4e5f: $ff
    ld d, l                                       ; $4e60: $55
    ld e, [hl]                                    ; $4e61: $5e
    inc bc                                        ; $4e62: $03
    ld [$ea40], a                                 ; $4e63: $ea $40 $ea
    db $e3                                        ; $4e66: $e3
    rlca                                          ; $4e67: $07
    rst $38                                       ; $4e68: $ff
    pop hl                                        ; $4e69: $e1
    pop hl                                        ; $4e6a: $e1
    ld [hl], b                                    ; $4e6b: $70
    ld [hl], b                                    ; $4e6c: $70
    ld [hl], c                                    ; $4e6d: $71
    nop                                           ; $4e6e: $00
    ld [hl], c                                    ; $4e6f: $71
    inc sp                                        ; $4e70: $33
    inc sp                                        ; $4e71: $33
    ld a, $3e                                     ; $4e72: $3e $3e
    inc a                                         ; $4e74: $3c
    inc a                                         ; $4e75: $3c
    inc bc                                        ; $4e76: $03
    nop                                           ; $4e77: $00
    inc bc                                        ; $4e78: $03
    adc a                                         ; $4e79: $8f
    adc a                                         ; $4e7a: $8f
    sbc $de                                       ; $4e7b: $de $de
    ld hl, sp-$08                                 ; $4e7d: $f8 $f8
    ldh a, [rNR14]                                ; $4e7f: $f0 $14
    ldh a, [$b8]                                  ; $4e81: $f0 $b8
    cp b                                          ; $4e83: $b8
    ld [bc], a                                    ; $4e84: $02
    add hl, bc                                    ; $4e85: $09
    ret nc                                        ; $4e86: $d0

    sbc d                                         ; $4e87: $9a
    dec b                                         ; $4e88: $05
    dec e                                         ; $4e89: $1d
    dec e                                         ; $4e8a: $1d
    nop                                           ; $4e8b: $00
    dec c                                         ; $4e8c: $0d
    rrca                                          ; $4e8d: $0f
    ld c, $0f                                     ; $4e8e: $0e $0f
    dec de                                        ; $4e90: $1b
    rra                                           ; $4e91: $1f
    ccf                                           ; $4e92: $3f
    ccf                                           ; $4e93: $3f
    inc sp                                        ; $4e94: $33
    ld a, [hl]                                    ; $4e95: $7e
    ld a, a                                       ; $4e96: $7f
    cp h                                          ; $4e97: $bc
    jr jr_096_4e9a                                ; $4e98: $18 $00

jr_096_4e9a:
    ld c, [hl]                                    ; $4e9a: $4e
    rrca                                          ; $4e9b: $0f
    rrca                                          ; $4e9c: $0f
    ld de, $c04e                                  ; $4e9d: $11 $4e $c0
    cpl                                           ; $4ea0: $2f
    inc de                                        ; $4ea1: $13
    rst $38                                       ; $4ea2: $ff
    rst $38                                       ; $4ea3: $ff
    xor a                                         ; $4ea4: $af
    sbc $15                                       ; $4ea5: $de $15
    rlca                                          ; $4ea7: $07
    rlca                                          ; $4ea8: $07
    ld [hl], b                                    ; $4ea9: $70
    jr z, jr_096_4eb8                             ; $4eaa: $28 $0c

    dec bc                                        ; $4eac: $0b
    ld [bc], a                                    ; $4ead: $02
    nop                                           ; $4eae: $00
    nop                                           ; $4eaf: $00
    db $eb                                        ; $4eb0: $eb
    rst $38                                       ; $4eb1: $ff
    ccf                                           ; $4eb2: $3f
    ccf                                           ; $4eb3: $3f
    ld a, [hl+]                                   ; $4eb4: $2a
    dec bc                                        ; $4eb5: $0b
    add b                                         ; $4eb6: $80
    ld h, b                                       ; $4eb7: $60

jr_096_4eb8:
    add b                                         ; $4eb8: $80
    ld l, $1e                                     ; $4eb9: $2e $1e
    ldh a, [rNR21]                                ; $4ebb: $f0 $16
    rst $28                                       ; $4ebd: $ef
    scf                                           ; $4ebe: $37
    scf                                           ; $4ebf: $37
    dec bc                                        ; $4ec0: $0b
    dec bc                                        ; $4ec1: $0b
    inc sp                                        ; $4ec2: $33
    rlca                                          ; $4ec3: $07
    rlca                                          ; $4ec4: $07
    ld [$ff0c], a                                 ; $4ec5: $ea $0c $ff
    cpl                                           ; $4ec8: $2f
    ld hl, sp-$08                                 ; $4ec9: $f8 $f8
    ret nc                                        ; $4ecb: $d0

    ld c, $ff                                     ; $4ecc: $0e $ff
    ld c, a                                       ; $4ece: $4f
    ret nz                                        ; $4ecf: $c0

    ld a, [bc]                                    ; $4ed0: $0a
    dec e                                         ; $4ed1: $1d
    sbc $1f                                       ; $4ed2: $de $1f
    ccf                                           ; $4ed4: $3f
    ccf                                           ; $4ed5: $3f
    ret c                                         ; $4ed6: $d8

    ld hl, sp+$60                                 ; $4ed7: $f8 $60
    ldh [$f2], a                                  ; $4ed9: $e0 $f2
    dec l                                         ; $4edb: $2d
    rrca                                          ; $4edc: $0f
    ld c, b                                       ; $4edd: $48
    dec c                                         ; $4ede: $0d
    or h                                          ; $4edf: $b4
    ld c, $ac                                     ; $4ee0: $0e $ac
    ld a, [bc]                                    ; $4ee2: $0a
    di                                            ; $4ee3: $f3
    di                                            ; $4ee4: $f3
    ccf                                           ; $4ee5: $3f
    rrca                                          ; $4ee6: $0f
    db $fd                                        ; $4ee7: $fd
    sbc c                                         ; $4ee8: $99
    ld a, $17                                     ; $4ee9: $3e $17
    db $fc                                        ; $4eeb: $fc
    db $fc                                        ; $4eec: $fc
    db $ec                                        ; $4eed: $ec
    dec c                                         ; $4eee: $0d
    ld h, [hl]                                    ; $4eef: $66
    jr @-$06                                      ; $4ef0: $18 $f8

    ld hl, sp+$00                                 ; $4ef2: $f8 $00
    ld a, [hl-]                                   ; $4ef4: $3a
    cp c                                          ; $4ef5: $b9
    inc [hl]                                      ; $4ef6: $34
    rlca                                          ; $4ef7: $07
    cp $f4                                        ; $4ef8: $fe $f4
    dec c                                         ; $4efa: $0d
    ld [$301e], a                                 ; $4efb: $ea $1e $30
    dec sp                                        ; $4efe: $3b
    ld hl, sp-$08                                 ; $4eff: $f8 $f8
    ld a, [bc]                                    ; $4f01: $0a
    add hl, bc                                    ; $4f02: $09
    inc a                                         ; $4f03: $3c
    add b                                         ; $4f04: $80
    add b                                         ; $4f05: $80
    add h                                         ; $4f06: $84
    ld c, $e2                                     ; $4f07: $0e $e2
    ld l, $a8                                     ; $4f09: $2e $a8
    add hl, bc                                    ; $4f0b: $09
    ld c, h                                       ; $4f0c: $4c
    rrca                                          ; $4f0d: $0f
    ldh [$e0], a                                  ; $4f0e: $e0 $e0
    ld [de], a                                    ; $4f10: $12
    ld e, b                                       ; $4f11: $58
    ld hl, sp-$0c                                 ; $4f12: $f8 $f4
    sbc [hl]                                      ; $4f14: $9e
    ld b, $1c                                     ; $4f15: $06 $1c
    inc e                                         ; $4f17: $1c

jr_096_4f18:
    ld b, b                                       ; $4f18: $40
    jr jr_096_4f18                                ; $4f19: $18 $fd

    inc hl                                        ; $4f1b: $23

jr_096_4f1c:
    db $fc                                        ; $4f1c: $fc
    ld a, [$6040]                                 ; $4f1d: $fa $40 $60
    xor d                                         ; $4f20: $aa
    nop                                           ; $4f21: $00
    db $fd                                        ; $4f22: $fd
    ld b, b                                       ; $4f23: $40
    jr nz, jr_096_4f1c                            ; $4f24: $20 $f6

    cpl                                           ; $4f26: $2f
    db $ec                                        ; $4f27: $ec
    jr z, jr_096_4f36                             ; $4f28: $28 $0c

    ld hl, sp+$28                                 ; $4f2a: $f8 $28
    ld [hl+], a                                   ; $4f2c: $22
    ld e, e                                       ; $4f2d: $5b
    rst $38                                       ; $4f2e: $ff
    ld [bc], a                                    ; $4f2f: $02
    ld bc, $3ed6                                  ; $4f30: $01 $d6 $3e
    ld bc, $2401                                  ; $4f33: $01 $01 $24

jr_096_4f36:
    add b                                         ; $4f36: $80
    add b                                         ; $4f37: $80
    db $10                                        ; $4f38: $10
    ld a, [bc]                                    ; $4f39: $0a
    rrca                                          ; $4f3a: $0f
    rrca                                          ; $4f3b: $0f
    cp d                                          ; $4f3c: $ba
    rra                                           ; $4f3d: $1f
    ei                                            ; $4f3e: $fb
    rst $38                                       ; $4f3f: $ff
    add b                                         ; $4f40: $80
    ld e, d                                       ; $4f41: $5a
    dec bc                                        ; $4f42: $0b
    db $e3                                        ; $4f43: $e3
    db $e3                                        ; $4f44: $e3
    ei                                            ; $4f45: $fb
    ei                                            ; $4f46: $fb

jr_096_4f47:
    ld a, a                                       ; $4f47: $7f
    ld a, a                                       ; $4f48: $7f
    rlca                                          ; $4f49: $07
    ld d, l                                       ; $4f4a: $55
    rlca                                          ; $4f4b: $07
    ld d, h                                       ; $4f4c: $54
    inc c                                         ; $4f4d: $0c
    ld c, d                                       ; $4f4e: $4a
    ld d, b                                       ; $4f4f: $50
    ld b, b                                       ; $4f50: $40
    ld a, [bc]                                    ; $4f51: $0a
    ld l, h                                       ; $4f52: $6c
    db $10                                        ; $4f53: $10
    dec b                                         ; $4f54: $05
    inc b                                         ; $4f55: $04
    dec d                                         ; $4f56: $15
    rra                                           ; $4f57: $1f
    nop                                           ; $4f58: $00
    nop                                           ; $4f59: $00

jr_096_4f5a:
    dec d                                         ; $4f5a: $15
    ld h, h                                       ; $4f5b: $64
    db $10                                        ; $4f5c: $10
    ld l, h                                       ; $4f5d: $6c
    jr @+$12                                      ; $4f5e: $18 $10

    ld [$0814], sp                                ; $4f60: $08 $14 $08
    db $fc                                        ; $4f63: $fc
    rlca                                          ; $4f64: $07
    sub d                                         ; $4f65: $92
    and h                                         ; $4f66: $a4
    inc d                                         ; $4f67: $14
    ld e, a                                       ; $4f68: $5f
    rra                                           ; $4f69: $1f
    ld hl, sp+$0f                                 ; $4f6a: $f8 $0f
    ld bc, $3e01                                  ; $4f6c: $01 $01 $3e
    ld c, $7f                                     ; $4f6f: $0e $7f
    and b                                         ; $4f71: $a0
    ld a, $06                                     ; $4f72: $3e $06
    rst $30                                       ; $4f74: $f7
    ld d, [hl]                                    ; $4f75: $56
    dec h                                         ; $4f76: $25
    nop                                           ; $4f77: $00
    nop                                           ; $4f78: $00
    sub l                                         ; $4f79: $95
    add b                                         ; $4f7a: $80
    ld [$d080], a                                 ; $4f7b: $ea $80 $d0
    ld b, b                                       ; $4f7e: $40
    inc e                                         ; $4f7f: $1c
    inc e                                         ; $4f80: $1c
    inc [hl]                                      ; $4f81: $34
    inc a                                         ; $4f82: $3c
    inc l                                         ; $4f83: $2c
    inc a                                         ; $4f84: $3c
    ld d, [hl]                                    ; $4f85: $56
    dec a                                         ; $4f86: $3d
    ld a, [hl]                                    ; $4f87: $7e
    xor e                                         ; $4f88: $ab
    inc h                                         ; $4f89: $24
    inc b                                         ; $4f8a: $04
    ld b, b                                       ; $4f8b: $40
    ld c, h                                       ; $4f8c: $4c
    halt                                          ; $4f8d: $76
    ld [$380c], sp                                ; $4f8e: $08 $0c $38
    ld bc, $0576                                  ; $4f91: $01 $76 $05
    xor d                                         ; $4f94: $aa
    ld l, [hl]                                    ; $4f95: $6e
    ld [$de05], sp                                ; $4f96: $08 $05 $de
    jr nc, jr_096_4f5a                            ; $4f99: $30 $bf

    ld h, b                                       ; $4f9b: $60
    db $10                                        ; $4f9c: $10
    ld d, l                                       ; $4f9d: $55
    ld h, b                                       ; $4f9e: $60
    db $10                                        ; $4f9f: $10
    ccf                                           ; $4fa0: $3f
    jr nz, @+$41                                  ; $4fa1: $20 $3f

    ld e, a                                       ; $4fa3: $5f
    ld h, b                                       ; $4fa4: $60
    jr nc, jr_096_4f47                            ; $4fa5: $30 $a0

    rla                                           ; $4fa7: $17
    jp Jump_096_400c                              ; $4fa8: $c3 $0c $40


    rst $38                                       ; $4fab: $ff
    ld bc, $8160                                  ; $4fac: $01 $60 $81
    add c                                         ; $4faf: $81
    add b                                         ; $4fb0: $80
    add b                                         ; $4fb1: $80
    ret nz                                        ; $4fb2: $c0

    ret nz                                        ; $4fb3: $c0

    db $10                                        ; $4fb4: $10
    rst $28                                       ; $4fb5: $ef
    rst $28                                       ; $4fb6: $ef
    ld a, [$0019]                                 ; $4fb7: $fa $19 $00
    cp $fe                                        ; $4fba: $fe $fe
    ld hl, sp-$08                                 ; $4fbc: $f8 $f8
    nop                                           ; $4fbe: $00
    ldh a, [$f0]                                  ; $4fbf: $f0 $f0
    nop                                           ; $4fc1: $00
    nop                                           ; $4fc2: $00
    ret nz                                        ; $4fc3: $c0

    ret nz                                        ; $4fc4: $c0

    ld h, b                                       ; $4fc5: $60
    ldh [rDIV], a                                 ; $4fc6: $e0 $04

jr_096_4fc8:
    ldh a, [$f0]                                  ; $4fc8: $f0 $f0
    ldh [$e0], a                                  ; $4fca: $e0 $e0
    nop                                           ; $4fcc: $00
    ld bc, $ff08                                  ; $4fcd: $01 $08 $ff
    nop                                           ; $4fd0: $00
    ld [hl-], a                                   ; $4fd1: $32
    rst $38                                       ; $4fd2: $ff
    ld b, b                                       ; $4fd3: $40
    inc b                                         ; $4fd4: $04
    nop                                           ; $4fd5: $00
    ld [bc], a                                    ; $4fd6: $02
    ld l, b                                       ; $4fd7: $68
    ld b, b                                       ; $4fd8: $40
    cp a                                          ; $4fd9: $bf
    ld a, [de]                                    ; $4fda: $1a
    ld [$00a0], sp                                ; $4fdb: $08 $a0 $00
    ld e, a                                       ; $4fde: $5f
    db $ec                                        ; $4fdf: $ec
    db $ec                                        ; $4fe0: $ec
    jp $f1c3                                      ; $4fe1: $c3 $c3 $f1


    pop af                                        ; $4fe4: $f1
    db $fc                                        ; $4fe5: $fc
    nop                                           ; $4fe6: $00
    db $fc                                        ; $4fe7: $fc
    cp $fe                                        ; $4fe8: $fe $fe
    db $fc                                        ; $4fea: $fc
    db $fc                                        ; $4feb: $fc
    ldh a, [$f0]                                  ; $4fec: $f0 $f0
    ld sp, hl                                     ; $4fee: $f9
    ld h, b                                       ; $4fef: $60
    ld sp, hl                                     ; $4ff0: $f9
    inc [hl]                                      ; $4ff1: $34
    ld [$0852], sp                                ; $4ff2: $08 $52 $08
    ld h, e                                       ; $4ff5: $63
    ld h, e                                       ; $4ff6: $63
    ld a, [hl]                                    ; $4ff7: $7e
    ld a, [hl]                                    ; $4ff8: $7e
    ldh a, [rNR10]                                ; $4ff9: $f0 $10
    ldh a, [$80]                                  ; $4ffb: $f0 $80
    add b                                         ; $4ffd: $80
    ld a, [hl-]                                   ; $4ffe: $3a
    jr z, jr_096_5011                             ; $4fff: $28 $10

    rst $38                                       ; $5001: $ff
    ld [bc], a                                    ; $5002: $02
    db $fd                                        ; $5003: $fd
    and c                                         ; $5004: $a1
    ld b, [hl]                                    ; $5005: $46
    jr jr_096_500a                                ; $5006: $18 $02

    ld d, b                                       ; $5008: $50
    db $10                                        ; $5009: $10

jr_096_500a:
    ld bc, $90ff                                  ; $500a: $01 $ff $90
    rst $28                                       ; $500d: $ef
    ld b, $00                                     ; $500e: $06 $00
    nop                                           ; $5010: $00

jr_096_5011:
    cp $fb                                        ; $5011: $fe $fb
    rst $38                                       ; $5013: $ff
    rst $10                                       ; $5014: $d7
    rst $38                                       ; $5015: $ff
    adc a                                         ; $5016: $8f
    rst $38                                       ; $5017: $ff
    ld a, a                                       ; $5018: $7f
    add b                                         ; $5019: $80
    sub a                                         ; $501a: $97
    jr nz, jr_096_505c                            ; $501b: $20 $3f

    ccf                                           ; $501d: $3f
    ld [hl], b                                    ; $501e: $70
    ld [hl], b                                    ; $501f: $70
    ld c, $0e                                     ; $5020: $0e $0e
    inc bc                                        ; $5022: $03
    ld [$3d03], sp                                ; $5023: $08 $03 $3d
    ccf                                           ; $5026: $3f
    db $eb                                        ; $5027: $eb
    xor c                                         ; $5028: $a9
    nop                                           ; $5029: $00
    ld [$0408], sp                                ; $502a: $08 $08 $04
    jr z, @+$06                                   ; $502d: $28 $04

    ld [hl+], a                                   ; $502f: $22
    ld [hl], $00                                  ; $5030: $36 $00
    ld [$2070], sp                                ; $5032: $08 $70 $20
    inc b                                         ; $5035: $04
    ei                                            ; $5036: $fb
    jr nz, @+$2a                                  ; $5037: $20 $28

    rst $18                                       ; $5039: $df
    jr nz, jr_096_4fc8                            ; $503a: $20 $8c

    db $10                                        ; $503c: $10
    ld b, h                                       ; $503d: $44
    ld a, [hl]                                    ; $503e: $7e
    nop                                           ; $503f: $00

jr_096_5040:
    ld c, b                                       ; $5040: $48
    or a                                          ; $5041: $b7
    inc b                                         ; $5042: $04
    jr nz, jr_096_5040                            ; $5043: $20 $fb

    nop                                           ; $5045: $00
    ld [hl-], a                                   ; $5046: $32
    nop                                           ; $5047: $00
    ld a, a                                       ; $5048: $7f
    ld a, a                                       ; $5049: $7f
    rst $28                                       ; $504a: $ef
    rst $38                                       ; $504b: $ff
    ld e, a                                       ; $504c: $5f

Call_096_504d:
    add b                                         ; $504d: $80
    rst $10                                       ; $504e: $d7
    db $10                                        ; $504f: $10
    adc a                                         ; $5050: $8f
    adc a                                         ; $5051: $8f
    rra                                           ; $5052: $1f
    rra                                           ; $5053: $1f
    ld b, $06                                     ; $5054: $06 $06
    inc bc                                        ; $5056: $03
    nop                                           ; $5057: $00
    inc bc                                        ; $5058: $03
    ld bc, $0301                                  ; $5059: $01 $01 $03

jr_096_505c:
    inc bc                                        ; $505c: $03
    ld c, $0f                                     ; $505d: $0e $0f
    ld de, $1f00                                  ; $505f: $11 $00 $1f
    dec hl                                        ; $5062: $2b
    ccf                                           ; $5063: $3f
    ld a, $3e                                     ; $5064: $3e $3e
    nop                                           ; $5066: $00
    rst $38                                       ; $5067: $ff
    ld d, b                                       ; $5068: $50
    ld [hl-], a                                   ; $5069: $32
    xor a                                         ; $506a: $af
    ld b, h                                       ; $506b: $44
    jr z, jr_096_506e                             ; $506c: $28 $00

jr_096_506e:
    ld b, h                                       ; $506e: $44
    ld [$f58a], sp                                ; $506f: $08 $8a $f5
    or [hl]                                       ; $5072: $b6
    ld [$0584], sp                                ; $5073: $08 $84 $05
    ld a, e                                       ; $5076: $7b
    db $10                                        ; $5077: $10
    rst $28                                       ; $5078: $ef
    inc b                                         ; $5079: $04
    rst $38                                       ; $507a: $ff
    ld c, b                                       ; $507b: $48
    ld [$9884], sp                                ; $507c: $08 $84 $98
    ld [$8689], sp                                ; $507f: $08 $89 $86
    nop                                           ; $5082: $00
    nop                                           ; $5083: $00
    rst $38                                       ; $5084: $ff
    ld b, d                                       ; $5085: $42
    sbc h                                         ; $5086: $9c
    db $10                                        ; $5087: $10
    sub c                                         ; $5088: $91
    ld l, a                                       ; $5089: $6f
    sbc b                                         ; $508a: $98
    ld [$804c], sp                                ; $508b: $08 $4c $80
    ld a, [c]                                     ; $508e: $f2
    nop                                           ; $508f: $00
    jr nz, @-$1f                                  ; $5090: $20 $df

    ld [hl], h                                    ; $5092: $74
    ld [$0018], sp                                ; $5093: $08 $18 $00
    cp a                                          ; $5096: $bf
    ld [hl+], a                                   ; $5097: $22
    or d                                          ; $5098: $b2
    nop                                           ; $5099: $00
    ld bc, $bc80                                  ; $509a: $01 $80 $bc
    db $10                                        ; $509d: $10
    ld [hl], h                                    ; $509e: $74
    ld [$df20], sp                                ; $509f: $08 $20 $df
    nop                                           ; $50a2: $00
    ld e, c                                       ; $50a3: $59
    jr nz, jr_096_50a6                            ; $50a4: $20 $00

jr_096_50a6:
    rst $18                                       ; $50a6: $df
    jr jr_096_50c1                                ; $50a7: $18 $18

    inc bc                                        ; $50a9: $03
    inc bc                                        ; $50aa: $03
    ld e, $1e                                     ; $50ab: $1e $1e
    ld [hl], c                                    ; $50ad: $71
    nop                                           ; $50ae: $00
    ld [hl], c                                    ; $50af: $71
    ld c, $0f                                     ; $50b0: $0e $0f
    dec a                                         ; $50b2: $3d

jr_096_50b3:
    ccf                                           ; $50b3: $3f
    ld l, d                                       ; $50b4: $6a
    ld a, a                                       ; $50b5: $7f
    rst $10                                       ; $50b6: $d7
    dec hl                                        ; $50b7: $2b
    rst $38                                       ; $50b8: $ff
    ld a, a                                       ; $50b9: $7f
    rlc b                                         ; $50ba: $cb $00
    ld l, a                                       ; $50bc: $6f
    ld [$bf00], sp                                ; $50bd: $08 $00 $bf
    sub h                                         ; $50c0: $94

jr_096_50c1:
    jr nz, jr_096_50b3                            ; $50c1: $20 $f0

    nop                                           ; $50c3: $00
    ld [$80fd], sp                                ; $50c4: $08 $fd $80
    ld a, a                                       ; $50c7: $7f
    ld a, [bc]                                    ; $50c8: $0a
    db $fc                                        ; $50c9: $fc
    nop                                           ; $50ca: $00
    ld b, b                                       ; $50cb: $40
    cp a                                          ; $50cc: $bf
    ld [hl+], a                                   ; $50cd: $22
    ld c, b                                       ; $50ce: $48
    db $dd                                        ; $50cf: $dd
    ld c, [hl]                                    ; $50d0: $4e
    add hl, bc                                    ; $50d1: $09
    ld [$14f7], sp                                ; $50d2: $08 $f7 $14

jr_096_50d5:
    ld [$bf40], sp                                ; $50d5: $08 $40 $bf
    jr nz, jr_096_50e3                            ; $50d8: $20 $09

    rst $18                                       ; $50da: $df
    inc b                                         ; $50db: $04
    ei                                            ; $50dc: $fb
    ld b, b                                       ; $50dd: $40
    adc a                                         ; $50de: $8f
    ld bc, $7f7f                                  ; $50df: $01 $7f $7f
    ld l, b                                       ; $50e2: $68

jr_096_50e3:
    add hl, bc                                    ; $50e3: $09
    nop                                           ; $50e4: $00
    inc bc                                        ; $50e5: $03
    inc bc                                        ; $50e6: $03
    rlca                                          ; $50e7: $07
    rlca                                          ; $50e8: $07
    inc e                                         ; $50e9: $1c
    inc e                                         ; $50ea: $1c
    ld hl, sp-$08                                 ; $50eb: $f8 $f8
    ret nz                                        ; $50ed: $c0

    and b                                         ; $50ee: $a0
    add hl, bc                                    ; $50ef: $09
    ld b, h                                       ; $50f0: $44
    ld [$c7c7], sp                                ; $50f1: $08 $c7 $c7
    rlca                                          ; $50f4: $07
    rlca                                          ; $50f5: $07
    dec bc                                        ; $50f6: $0b
    rrca                                          ; $50f7: $0f
    ld b, $37                                     ; $50f8: $06 $37
    ccf                                           ; $50fa: $3f
    rst $38                                       ; $50fb: $ff
    rst $38                                       ; $50fc: $ff
    xor $b3                                       ; $50fd: $ee $b3
    ld hl, $0808                                  ; $50ff: $21 $08 $08
    ld [$ff00], a                                 ; $5102: $ea $00 $ff
    cpl                                           ; $5105: $2f
    rst $38                                       ; $5106: $ff
    sbc [hl]                                      ; $5107: $9e
    ld a, a                                       ; $5108: $7f
    rst $28                                       ; $5109: $ef
    ccf                                           ; $510a: $3f
    sbc a                                         ; $510b: $9f
    ld [$ff7f], sp                                ; $510c: $08 $7f $ff
    ccf                                           ; $510f: $3f
    sbc [hl]                                      ; $5110: $9e
    inc b                                         ; $5111: $04
    db $10                                        ; $5112: $10

jr_096_5113:
    db $fd                                        ; $5113: $fd
    ei                                            ; $5114: $fb
    db $ec                                        ; $5115: $ec
    nop                                           ; $5116: $00
    ei                                            ; $5117: $fb
    db $fc                                        ; $5118: $fc
    ei                                            ; $5119: $fb
    cp $f9                                        ; $511a: $fe $f9
    cp $f9                                        ; $511c: $fe $f9
    db $ed                                        ; $511e: $ed
    inc c                                         ; $511f: $0c
    ld hl, sp-$02                                 ; $5120: $f8 $fe
    ld sp, hl                                     ; $5122: $f9
    xor l                                         ; $5123: $ad
    ld b, b                                       ; $5124: $40
    db $10                                        ; $5125: $10
    db $e4                                        ; $5126: $e4
    add hl, de                                    ; $5127: $19
    ld a, [$14fa]                                 ; $5128: $fa $fa $14
    ld d, l                                       ; $512b: $55
    ld d, l                                       ; $512c: $55
    ld a, [$01d7]                                 ; $512d: $fa $d7 $01
    ld [$1038], a                                 ; $5130: $ea $38 $10
    push af                                       ; $5133: $f5
    push af                                       ; $5134: $f5
    ld bc, $aaaa                                  ; $5135: $01 $aa $aa
    ld d, l                                       ; $5138: $55
    ld d, l                                       ; $5139: $55
    xor d                                         ; $513a: $aa
    xor d                                         ; $513b: $aa
    rst $18                                       ; $513c: $df
    jr c, jr_096_513f                             ; $513d: $38 $00

jr_096_513f:
    add b                                         ; $513f: $80
    inc b                                         ; $5140: $04
    nop                                           ; $5141: $00
    ccf                                           ; $5142: $3f
    ld b, l                                       ; $5143: $45
    dec d                                         ; $5144: $15
    sbc [hl]                                      ; $5145: $9e
    ccf                                           ; $5146: $3f
    ld b, a                                       ; $5147: $47
    rla                                           ; $5148: $17
    jr nc, jr_096_50d5                            ; $5149: $30 $8a

    ld a, [hl+]                                   ; $514b: $2a
    inc [hl]                                      ; $514c: $34
    ld [$0838], sp                                ; $514d: $08 $38 $08
    ld d, h                                       ; $5150: $54
    ld d, c                                       ; $5151: $51
    xor l                                         ; $5152: $ad
    ld hl, sp+$0c                                 ; $5153: $f8 $0c
    call c, $adf9                                 ; $5155: $dc $f9 $ad
    xor b                                         ; $5158: $a8
    jr c, jr_096_5163                             ; $5159: $38 $08

    inc h                                         ; $515b: $24
    ld c, d                                       ; $515c: $4a
    push de                                       ; $515d: $d5
    push de                                       ; $515e: $d5
    add hl, bc                                    ; $515f: $09
    and d                                         ; $5160: $a2
    xor d                                         ; $5161: $aa
    push af                                       ; $5162: $f5

jr_096_5163:
    push af                                       ; $5163: $f5
    ld b, b                                       ; $5164: $40
    nop                                           ; $5165: $00
    rst $38                                       ; $5166: $ff
    ld [c], a                                     ; $5167: $e2
    inc b                                         ; $5168: $04
    nop                                           ; $5169: $00
    nop                                           ; $516a: $00
    ldh [rIE], a                                  ; $516b: $e0 $ff
    ld b, l                                       ; $516d: $45
    dec d                                         ; $516e: $15
    adc d                                         ; $516f: $8a
    ld a, [hl+]                                   ; $5170: $2a
    rst $28                                       ; $5171: $ef
    rra                                           ; $5172: $1f
    jr z, jr_096_5113                             ; $5173: $28 $9e

    ccf                                           ; $5175: $3f
    inc b                                         ; $5176: $04
    ld [$08af], sp                                ; $5177: $08 $af $08
    nop                                           ; $517a: $00
    ld d, l                                       ; $517b: $55
    ld d, b                                       ; $517c: $50
    jr nz, jr_096_5191                            ; $517d: $20 $12

    xor b                                         ; $517f: $a8
    ld d, l                                       ; $5180: $55
    ret nc                                        ; $5181: $d0

    ld b, b                                       ; $5182: $40
    nop                                           ; $5183: $00
    ld sp, hl                                     ; $5184: $f9
    dec h                                         ; $5185: $25
    inc b                                         ; $5186: $04
    nop                                           ; $5187: $00
    dec b                                         ; $5188: $05
    ld l, d                                       ; $5189: $6a
    ld hl, sp+$24                                 ; $518a: $f8 $24
    ld [$0828], sp                                ; $518c: $08 $28 $08
    db $e4                                        ; $518f: $e4
    inc l                                         ; $5190: $2c

jr_096_5191:
    nop                                           ; $5191: $00
    pop af                                        ; $5192: $f1
    jr nc, jr_096_5195                            ; $5193: $30 $00

jr_096_5195:
    xor a                                         ; $5195: $af
    ld [hl+], a                                   ; $5196: $22
    rra                                           ; $5197: $1f
    sub $28                                       ; $5198: $d6 $28
    nop                                           ; $519a: $00
    sub $3f                                       ; $519b: $d6 $3f
    cp [hl]                                       ; $519d: $be
    ld [$bf00], sp                                ; $519e: $08 $00 $bf
    pop bc                                        ; $51a1: $c1
    inc c                                         ; $51a2: $0c
    nop                                           ; $51a3: $00
    inc h                                         ; $51a4: $24
    ld [$f855], sp                                ; $51a5: $08 $55 $f8
    dec b                                         ; $51a8: $05
    ld hl, sp+$45                                 ; $51a9: $f8 $45
    inc b                                         ; $51ab: $04
    nop                                           ; $51ac: $00
    ld d, c                                       ; $51ad: $51
    inc d                                         ; $51ae: $14
    jr nc, jr_096_51b1                            ; $51af: $30 $00

jr_096_51b1:
    inc b                                         ; $51b1: $04
    ld c, d                                       ; $51b2: $4a
    ld [bc], a                                    ; $51b3: $02
    add b                                         ; $51b4: $80
    ld a, a                                       ; $51b5: $7f
    db $10                                        ; $51b6: $10
    ld a, [bc]                                    ; $51b7: $0a
    ld [bc], a                                    ; $51b8: $02
    add hl, sp                                    ; $51b9: $39
    ld b, d                                       ; $51ba: $42
    cp a                                          ; $51bb: $bf
    sbc b                                         ; $51bc: $98
    ld bc, $01e2                                  ; $51bd: $01 $e2 $01
    ld [hl], b                                    ; $51c0: $70
    ld bc, $227f                                  ; $51c1: $01 $7f $22
    ld l, b                                       ; $51c4: $68
    ld bc, $882a                                  ; $51c5: $01 $2a $88
    ld [hl], a                                    ; $51c8: $77
    sbc d                                         ; $51c9: $9a
    ld de, $32bd                                  ; $51ca: $11 $bd $32
    add hl, bc                                    ; $51cd: $09
    add c                                         ; $51ce: $81
    add d                                         ; $51cf: $82
    ld [de], a                                    ; $51d0: $12
    add b                                         ; $51d1: $80
    jr z, @+$81                                   ; $51d2: $28 $7f

    ld [$001c], sp                                ; $51d4: $08 $1c $00
    jr z, jr_096_5219                             ; $51d7: $28 $40

    ld bc, $fb04                                  ; $51d9: $01 $04 $fb
    ld bc, $fe20                                  ; $51dc: $01 $20 $fe
    ld b, b                                       ; $51df: $40
    jr jr_096_51e4                                ; $51e0: $18 $02

    add b                                         ; $51e2: $80
    ld a, a                                       ; $51e3: $7f

jr_096_51e4:
    ld l, a                                       ; $51e4: $6f
    ld a, a                                       ; $51e5: $7f
    rst $18                                       ; $51e6: $df
    jr nc, @+$01                                  ; $51e7: $30 $ff

    xor a                                         ; $51e9: $af
    nop                                           ; $51ea: $00
    ld [hl+], a                                   ; $51eb: $22
    call c, Call_096_600a                         ; $51ec: $dc $0a $60
    ld h, b                                       ; $51ef: $60
    nop                                           ; $51f0: $00
    nop                                           ; $51f1: $00
    inc b                                         ; $51f2: $04
    pop af                                        ; $51f3: $f1
    pop af                                        ; $51f4: $f1
    rst $28                                       ; $51f5: $ef
    rst $38                                       ; $51f6: $ff
    ld a, [$024c]                                 ; $51f7: $fa $4c $02
    rrca                                          ; $51fa: $0f
    rrca                                          ; $51fb: $0f
    dec [hl]                                      ; $51fc: $35
    inc bc                                        ; $51fd: $03
    inc bc                                        ; $51fe: $03
    ld [hl], $0a                                  ; $51ff: $36 $0a
    ret nz                                        ; $5201: $c0

    ld a, [bc]                                    ; $5202: $0a
    jr z, @-$44                                   ; $5203: $28 $ba

    ld bc, $4220                                  ; $5205: $01 $20 $42
    ld [bc], a                                    ; $5208: $02
    jp z, Jump_000_09de                           ; $5209: $ca $de $09

    ld d, h                                       ; $520c: $54
    ld a, [bc]                                    ; $520d: $0a
    ld b, b                                       ; $520e: $40
    cp a                                          ; $520f: $bf
    ld a, d                                       ; $5210: $7a
    ld [$39a0], sp                                ; $5211: $08 $a0 $39
    ld [bc], a                                    ; $5214: $02
    ei                                            ; $5215: $fb
    ld [$f6ff], sp                                ; $5216: $08 $ff $f6

jr_096_5219:
    rst $38                                       ; $5219: $ff
    db $fd                                        ; $521a: $fd
    rla                                           ; $521b: $17
    inc de                                        ; $521c: $13
    db $fc                                        ; $521d: $fc
    db $fc                                        ; $521e: $fc
    rst $08                                       ; $521f: $cf
    ld b, b                                       ; $5220: $40
    rst $08                                       ; $5221: $cf
    cp [hl]                                       ; $5222: $be
    ld a, [bc]                                    ; $5223: $0a
    ldh a, [$f0]                                  ; $5224: $f0 $f0
    ld e, h                                       ; $5226: $5c
    db $fc                                        ; $5227: $fc
    ld [$03fe], a                                 ; $5228: $ea $fe $03
    db $fd                                        ; $522b: $fd
    rst $38                                       ; $522c: $ff
    rra                                           ; $522d: $1f
    rra                                           ; $522e: $1f
    add e                                         ; $522f: $83
    add e                                         ; $5230: $83
    ld [hl+], a                                   ; $5231: $22
    ld a, [bc]                                    ; $5232: $0a
    jr z, jr_096_5247                             ; $5233: $28 $12

    jp nc, $22c0                                  ; $5235: $d2 $c0 $22

    ld e, $0a                                     ; $5238: $1e $0a
    db $10                                        ; $523a: $10
    inc d                                         ; $523b: $14
    inc bc                                        ; $523c: $03
    dec b                                         ; $523d: $05
    ld a, [$0b02]                                 ; $523e: $fa $02 $0b
    add d                                         ; $5241: $82
    rrca                                          ; $5242: $0f
    ld a, a                                       ; $5243: $7f
    ld [bc], a                                    ; $5244: $02
    db $fd                                        ; $5245: $fd
    add h                                         ; $5246: $84

jr_096_5247:
    add [hl]                                      ; $5247: $86
    ld [bc], a                                    ; $5248: $02
    adc d                                         ; $5249: $8a
    ld a, [bc]                                    ; $524a: $0a
    ld e, [hl]                                    ; $524b: $5e
    nop                                           ; $524c: $00
    jr z, jr_096_5262                             ; $524d: $28 $13

    ld [bc], a                                    ; $524f: $02
    inc b                                         ; $5250: $04
    ei                                            ; $5251: $fb
    ld [$44f7], sp                                ; $5252: $08 $f7 $44
    cp e                                          ; $5255: $bb
    ld e, b                                       ; $5256: $58
    ld a, [bc]                                    ; $5257: $0a
    ld bc, $fe40                                  ; $5258: $01 $40 $fe
    ld e, [hl]                                    ; $525b: $5e
    ld [bc], a                                    ; $525c: $02
    ld a, [$d602]                                 ; $525d: $fa $02 $d6
    nop                                           ; $5260: $00
    xor b                                         ; $5261: $a8

jr_096_5262:
    nop                                           ; $5262: $00
    nop                                           ; $5263: $00
    ret nc                                        ; $5264: $d0

    nop                                           ; $5265: $00
    or b                                          ; $5266: $b0
    nop                                           ; $5267: $00

jr_096_5268:
    ldh [rNR14], a                                ; $5268: $e0 $14
    sub h                                         ; $526a: $94
    ld bc, $0143                                  ; $526b: $01 $43 $01
    ldh a, [rSB]                                  ; $526e: $f0 $01
    rst $38                                       ; $5270: $ff
    ld l, a                                       ; $5271: $6f

jr_096_5272:
    rst $38                                       ; $5272: $ff
    ccf                                           ; $5273: $3f
    ret z                                         ; $5274: $c8

    ld bc, $0804                                  ; $5275: $01 $04 $08
    ld [hl], d                                    ; $5278: $72
    scf                                           ; $5279: $37
    sub $10                                       ; $527a: $d6 $10
    ld e, [hl]                                    ; $527c: $5e
    dec hl                                        ; $527d: $2b
    ld b, b                                       ; $527e: $40
    ld [$ef10], sp                                ; $527f: $08 $10 $ef
    ld h, h                                       ; $5282: $64
    ld a, [bc]                                    ; $5283: $0a
    dec b                                         ; $5284: $05

jr_096_5285:
    jr jr_096_5285                                ; $5285: $18 $fe

    jr nz, jr_096_5268                            ; $5287: $20 $df

    adc b                                         ; $5289: $88
    ld a, [bc]                                    ; $528a: $0a
    inc l                                         ; $528b: $2c
    ld [bc], a                                    ; $528c: $02
    add b                                         ; $528d: $80
    nop                                           ; $528e: $00
    ret nz                                        ; $528f: $c0

    nop                                           ; $5290: $00
    ld [$00c8], sp                                ; $5291: $08 $c8 $00

jr_096_5294:
    ret nz                                        ; $5294: $c0

    nop                                           ; $5295: $00
    and b                                         ; $5296: $a0
    nop                                           ; $5297: $00
    ret nc                                        ; $5298: $d0

    ld [$e901], sp                                ; $5299: $08 $01 $e9
    nop                                           ; $529c: $00
    ret nc                                        ; $529d: $d0

    inc [hl]                                      ; $529e: $34
    ld [$ff1b], sp                                ; $529f: $08 $1b $ff
    rla                                           ; $52a2: $17
    add l                                         ; $52a3: $85
    inc b                                         ; $52a4: $04
    jr nc, jr_096_52a7                            ; $52a5: $30 $00

jr_096_52a7:
    ldh [rP1], a                                  ; $52a7: $e0 $00
    ld hl, sp+$5e                                 ; $52a9: $f8 $5e
    nop                                           ; $52ab: $00
    and b                                         ; $52ac: $a0
    ld [$0500], sp                                ; $52ad: $08 $00 $05
    ret nc                                        ; $52b0: $d0

    inc b                                         ; $52b1: $04
    db $e4                                        ; $52b2: $e4
    nop                                           ; $52b3: $00
    ldh [rNR32], a                                ; $52b4: $e0 $1c
    ld [$041f], sp                                ; $52b6: $08 $1f $04
    db $10                                        ; $52b9: $10
    jr @+$11                                      ; $52ba: $18 $0f

    rst $38                                       ; $52bc: $ff
    rlca                                          ; $52bd: $07
    ld h, [hl]                                    ; $52be: $66
    inc bc                                        ; $52bf: $03
    ldh a, [$0b]                                  ; $52c0: $f0 $0b
    db $fd                                        ; $52c2: $fd
    db $fd                                        ; $52c3: $fd
    xor d                                         ; $52c4: $aa
    ld d, b                                       ; $52c5: $50
    xor d                                         ; $52c6: $aa
    call z, $ff19                                 ; $52c7: $cc $19 $ff
    jp nz, $e001                                  ; $52ca: $c2 $01 $e0

    rst $28                                       ; $52cd: $ef
    ld b, b                                       ; $52ce: $40
    ld d, l                                       ; $52cf: $55
    jr nz, jr_096_5272                            ; $52d0: $20 $a0

    xor d                                         ; $52d2: $aa
    inc b                                         ; $52d3: $04
    jr z, jr_096_5294                             ; $52d4: $28 $be

    rra                                           ; $52d6: $1f
    add d                                         ; $52d7: $82
    ld a, [hl+]                                   ; $52d8: $2a
    inc d                                         ; $52d9: $14
    ld [$8215], sp                                ; $52da: $08 $15 $82
    ld a, [hl+]                                   ; $52dd: $2a
    inc b                                         ; $52de: $04
    inc b                                         ; $52df: $04
    jr nz, jr_096_52e8                            ; $52e0: $20 $06

    ld sp, hl                                     ; $52e2: $f9
    dec b                                         ; $52e3: $05
    ld d, e                                       ; $52e4: $53
    xor b                                         ; $52e5: $a8
    inc b                                         ; $52e6: $04
    db $10                                        ; $52e7: $10

jr_096_52e8:
    ld d, c                                       ; $52e8: $51
    inc b                                         ; $52e9: $04
    jr @-$1e                                      ; $52ea: $18 $e0

    push af                                       ; $52ec: $f5
    ld [hl-], a                                   ; $52ed: $32
    nop                                           ; $52ee: $00
    ld [bc], a                                    ; $52ef: $02
    db $10                                        ; $52f0: $10
    sub b                                         ; $52f1: $90
    jp nc, $e009                                  ; $52f2: $d2 $09 $e0

    rst $38                                       ; $52f5: $ff
    jr z, jr_096_5300                             ; $52f6: $28 $08

    xor [hl]                                      ; $52f8: $ae
    rra                                           ; $52f9: $1f
    sbc $3f                                       ; $52fa: $de $3f
    ld d, l                                       ; $52fc: $55
    xor [hl]                                      ; $52fd: $ae
    inc b                                         ; $52fe: $04
    ld [bc], a                                    ; $52ff: $02

jr_096_5300:
    xor $08                                       ; $5300: $ee $08
    ld [bc], a                                    ; $5302: $02
    inc b                                         ; $5303: $04
    jr z, jr_096_5306                             ; $5304: $28 $00

jr_096_5306:
    dec b                                         ; $5306: $05
    ret nc                                        ; $5307: $d0

    ld hl, $ce81                                  ; $5308: $21 $81 $ce
    ld bc, $fff9                                  ; $530b: $01 $f9 $ff
    rst $38                                       ; $530e: $ff
    xor d                                         ; $530f: $aa
    xor d                                         ; $5310: $aa
    db $fd                                        ; $5311: $fd
    ld c, a                                       ; $5312: $4f
    add hl, de                                    ; $5313: $19
    sub d                                         ; $5314: $92
    ld l, e                                       ; $5315: $6b
    inc d                                         ; $5316: $14
    ldh a, [rIE]                                  ; $5317: $f0 $ff
    ld l, h                                       ; $5319: $6c
    ld [$eae0], sp                                ; $531a: $08 $e0 $ea
    ld c, b                                       ; $531d: $48
    ld [$0ae4], sp                                ; $531e: $08 $e4 $0a
    ei                                            ; $5321: $fb
    ldh [rIE], a                                  ; $5322: $e0 $ff
    call nz, Call_000_0240                        ; $5324: $c4 $40 $02
    ld d, h                                       ; $5327: $54
    inc b                                         ; $5328: $04
    db $10                                        ; $5329: $10
    sbc [hl]                                      ; $532a: $9e
    nop                                           ; $532b: $00
    ld a, a                                       ; $532c: $7f
    cp [hl]                                       ; $532d: $be
    ld a, a                                       ; $532e: $7f
    ld e, [hl]                                    ; $532f: $5e
    cp a                                          ; $5330: $bf
    ld d, l                                       ; $5331: $55
    jr @+$08                                      ; $5332: $18 $06

    nop                                           ; $5334: $00
    ld sp, hl                                     ; $5335: $f9
    ld b, l                                       ; $5336: $45
    ld d, b                                       ; $5337: $50
    add d                                         ; $5338: $82
    jr z, jr_096_5340                             ; $5339: $28 $05

    ld d, b                                       ; $533b: $50
    ld b, d                                       ; $533c: $42

jr_096_533d:
    add b                                         ; $533d: $80
    ld c, b                                       ; $533e: $48
    nop                                           ; $533f: $00

jr_096_5340:
    ld d, $e9                                     ; $5340: $16 $e9
    pop hl                                        ; $5342: $e1
    rst $38                                       ; $5343: $ff
    ldh a, [$ef]                                  ; $5344: $f0 $ef
    ld [c], a                                     ; $5346: $e2
    and c                                         ; $5347: $a1
    ld l, b                                       ; $5348: $68
    ld [bc], a                                    ; $5349: $02
    add sp, $6c                                   ; $534a: $e8 $6c
    ld [bc], a                                    ; $534c: $02
    push bc                                       ; $534d: $c5
    cp $20                                        ; $534e: $fe $20
    rst $38                                       ; $5350: $ff
    inc h                                         ; $5351: $24
    nop                                           ; $5352: $00
    add hl, bc                                    ; $5353: $09
    rst $38                                       ; $5354: $ff
    dec l                                         ; $5355: $2d
    rst $38                                       ; $5356: $ff
    add d                                         ; $5357: $82
    ld b, b                                       ; $5358: $40
    inc b                                         ; $5359: $04
    ld b, h                                       ; $535a: $44
    cp e                                          ; $535b: $bb
    ld a, [bc]                                    ; $535c: $0a
    inc c                                         ; $535d: $0c
    nop                                           ; $535e: $00
    add h                                         ; $535f: $84
    ld sp, hl                                     ; $5360: $f9
    ld b, $f9                                     ; $5361: $06 $f9
    ld b, [hl]                                    ; $5363: $46
    cp c                                          ; $5364: $b9
    dec c                                         ; $5365: $0d
    ei                                            ; $5366: $fb
    nop                                           ; $5367: $00
    ld [bc], a                                    ; $5368: $02
    db $fd                                        ; $5369: $fd
    sub l                                         ; $536a: $95
    ei                                            ; $536b: $fb
    ld [$24ff], sp                                ; $536c: $08 $ff $24
    rst $38                                       ; $536f: $ff
    add b                                         ; $5370: $80

jr_096_5371:
    and h                                         ; $5371: $a4
    inc d                                         ; $5372: $14
    nop                                           ; $5373: $00
    ld [hl], b                                    ; $5374: $70
    jr nc, jr_096_5371                            ; $5375: $30 $fa

    ld a, b                                       ; $5377: $78
    or l                                          ; $5378: $b5
    ldh a, [$08]                                  ; $5379: $f0 $08
    ld l, d                                       ; $537b: $6a
    ldh [$c0], a                                  ; $537c: $e0 $c0
    ret nz                                        ; $537e: $c0

    cp $0b                                        ; $537f: $fe $0b
    db $10                                        ; $5381: $10
    db $10                                        ; $5382: $10
    jr c, jr_096_5385                             ; $5383: $38 $00

jr_096_5385:
    jr c, jr_096_533d                             ; $5385: $38 $b6

    inc e                                         ; $5387: $1c
    ld e, e                                       ; $5388: $5b
    ld e, $ae                                     ; $5389: $1e $ae
    ld c, $07                                     ; $538b: $0e $07
    ld b, c                                       ; $538d: $41
    rlca                                          ; $538e: $07
    adc [hl]                                      ; $538f: $8e
    inc e                                         ; $5390: $1c
    ld [hl], l                                    ; $5391: $75
    ld h, b                                       ; $5392: $60
    ld a, [$6d70]                                 ; $5393: $fa $70 $6d
    inc d                                         ; $5396: $14
    nop                                           ; $5397: $00
    jr nc, jr_096_53a4                            ; $5398: $30 $0a

    ld c, $92                                     ; $539a: $0e $92
    inc b                                         ; $539c: $04
    rst $10                                       ; $539d: $d7
    inc d                                         ; $539e: $14
    and d                                         ; $539f: $a2
    ld [bc], a                                    ; $53a0: $02
    ld d, a                                       ; $53a1: $57
    ld [bc], a                                    ; $53a2: $02
    nop                                           ; $53a3: $00

jr_096_53a4:
    xor d                                         ; $53a4: $aa
    ld [bc], a                                    ; $53a5: $02
    inc b                                         ; $53a6: $04
    inc b                                         ; $53a7: $04
    ld b, $07                                     ; $53a8: $06 $07
    inc hl                                        ; $53aa: $23
    inc hl                                        ; $53ab: $23
    db $10                                        ; $53ac: $10
    ld h, e                                       ; $53ad: $63
    ld h, e                                       ; $53ae: $63
    ld h, c                                       ; $53af: $61
    ld bc, $7400                                  ; $53b0: $01 $00 $74
    ld h, b                                       ; $53b3: $60
    ld [$0060], a                                 ; $53b4: $ea $60 $00
    push de                                       ; $53b7: $d5
    ret nz                                        ; $53b8: $c0

    adc [hl]                                      ; $53b9: $8e
    adc [hl]                                      ; $53ba: $8e
    ld b, a                                       ; $53bb: $47
    rst $00                                       ; $53bc: $c7
    and e                                         ; $53bd: $a3
    db $e3                                        ; $53be: $e3
    nop                                           ; $53bf: $00
    pop bc                                        ; $53c0: $c1
    pop hl                                        ; $53c1: $e1
    or c                                          ; $53c2: $b1
    pop af                                        ; $53c3: $f1
    ret c                                         ; $53c4: $d8

    ld hl, sp-$12                                 ; $53c5: $f8 $ee
    db $fc                                        ; $53c7: $fc
    ld de, $7c75                                  ; $53c8: $11 $75 $7c

jr_096_53cb:
    inc b                                         ; $53cb: $04
    ld bc, $8820                                  ; $53cc: $01 $20 $88
    adc b                                         ; $53cf: $88
    ld [$1001], sp                                ; $53d0: $08 $01 $10
    ld bc, $c0c2                                  ; $53d3: $01 $c2 $c0

jr_096_53d6:
    ret nz                                        ; $53d6: $c0

    ret nz                                        ; $53d7: $c0

    pop bc                                        ; $53d8: $c1
    pop bc                                        ; $53d9: $c1
    pop hl                                        ; $53da: $e1
    ld bc, $0010                                  ; $53db: $01 $10 $00
    pop af                                        ; $53de: $f1
    pop af                                        ; $53df: $f1
    push af                                       ; $53e0: $f5
    ldh a, [$bc]                                  ; $53e1: $f0 $bc
    inc a                                         ; $53e3: $3c
    ld [hl], $3e                                  ; $53e4: $36 $3e
    nop                                           ; $53e6: $00
    ld a, [de]                                    ; $53e7: $1a
    ld e, $1e                                     ; $53e8: $1e $1e
    ld e, $1b                                     ; $53ea: $1e $1b
    rra                                           ; $53ec: $1f
    dec e                                         ; $53ed: $1d
    rra                                           ; $53ee: $1f
    ld c, $1e                                     ; $53ef: $0e $1e
    rra                                           ; $53f1: $1f
    db $dd                                        ; $53f2: $dd
    sbc a                                         ; $53f3: $9f
    db $e4                                        ; $53f4: $e4
    inc h                                         ; $53f5: $24
    db $ec                                        ; $53f6: $ec
    inc h                                         ; $53f7: $24
    jr nc, jr_096_53fe                            ; $53f8: $30 $04

    ldh a, [$80]                                  ; $53fa: $f0 $80
    cp $01                                        ; $53fc: $fe $01

jr_096_53fe:
    ldh a, [rP1]                                  ; $53fe: $f0 $00
    ld [$f700], a                                 ; $5400: $ea $00 $f7

Jump_096_5403:
    nop                                           ; $5403: $00
    ei                                            ; $5404: $fb
    add hl, hl                                    ; $5405: $29

jr_096_5406:
    nop                                           ; $5406: $00
    cp $4c                                        ; $5407: $fe $4c
    dec b                                         ; $5409: $05
    ld b, b                                       ; $540a: $40
    ld d, [hl]                                    ; $540b: $56
    dec c                                         ; $540c: $0d
    inc b                                         ; $540d: $04
    ld b, h                                       ; $540e: $44
    ret nc                                        ; $540f: $d0

    ld bc, $5002                                  ; $5410: $01 $02 $50
    nop                                           ; $5413: $00
    xor $00                                       ; $5414: $ee $00
    rst $38                                       ; $5416: $ff
    ld a, [bc]                                    ; $5417: $0a
    ld h, l                                       ; $5418: $65
    dec d                                         ; $5419: $15
    ld d, l                                       ; $541a: $55
    jr z, jr_096_541d                             ; $541b: $28 $00

jr_096_541d:
    xor d                                         ; $541d: $aa
    inc b                                         ; $541e: $04
    db $10                                        ; $541f: $10
    dec b                                         ; $5420: $05
    ld [$0100], sp                                ; $5421: $08 $00 $01
    nop                                           ; $5424: $00
    dec hl                                        ; $5425: $2b
    ld a, [bc]                                    ; $5426: $0a
    ld bc, $0155                                  ; $5427: $01 $55 $01
    xor e                                         ; $542a: $ab
    inc b                                         ; $542b: $04
    jr nz, jr_096_53d6                            ; $542c: $20 $a8

jr_096_542e:
    inc e                                         ; $542e: $1c
    jr nc, jr_096_5406                            ; $542f: $30 $d5

    dec bc                                        ; $5431: $0b
    add b                                         ; $5432: $80
    xor d                                         ; $5433: $aa
    add b                                         ; $5434: $80
    push de                                       ; $5435: $d5
    cp [hl]                                       ; $5436: $be
    nop                                           ; $5437: $00
    ld b, b                                       ; $5438: $40
    inc l                                         ; $5439: $2c
    jr nz, jr_096_5470                            ; $543a: $20 $34

    jr z, jr_096_53fe                             ; $543c: $28 $c0

    ld [hl], b                                    ; $543e: $70
    dec c                                         ; $543f: $0d
    call nz, $c00d                                ; $5440: $c4 $0d $c0
    ret nz                                        ; $5443: $c0

    ld [$75e0], a                                 ; $5444: $ea $e0 $75
    ld [hl], b                                    ; $5447: $70
    jr nz, jr_096_53cb                            ; $5448: $20 $81

    ld bc, $1850                                  ; $544a: $01 $50 $18
    nop                                           ; $544d: $00
    nop                                           ; $544e: $00
    dec d                                         ; $544f: $15
    db $10                                        ; $5450: $10
    cp d                                          ; $5451: $ba
    inc c                                         ; $5452: $0c
    db $10                                        ; $5453: $10
    ld [hl], b                                    ; $5454: $70
    jr nc, @-$54                                  ; $5455: $30 $aa

    dec e                                         ; $5457: $1d
    ld [$0038], sp                                ; $5458: $08 $38 $00
    ld [$03c0], a                                 ; $545b: $ea $c0 $03
    push de                                       ; $545e: $d5
    ret nz                                        ; $545f: $c0

    ld [$c5c0], a                                 ; $5460: $ea $c0 $c5
    ret nz                                        ; $5463: $c0

    ld h, b                                       ; $5464: $60
    nop                                           ; $5465: $00
    ld bc, $0000                                  ; $5466: $01 $00 $00
    ld d, l                                       ; $5469: $55
    ld bc, $0383                                  ; $546a: $01 $83 $03
    ld d, a                                       ; $546d: $57
    inc bc                                        ; $546e: $03
    ld [bc], a                                    ; $546f: $02

jr_096_5470:
    ld [bc], a                                    ; $5470: $02
    nop                                           ; $5471: $00
    ld d, [hl]                                    ; $5472: $56
    ld b, $70                                     ; $5473: $06 $70
    ld [hl], b                                    ; $5475: $70
    ld l, b                                       ; $5476: $68
    ld a, b                                       ; $5477: $78
    inc [hl]                                      ; $5478: $34
    inc a                                         ; $5479: $3c
    and b                                         ; $547a: $a0
    ld bc, $3808                                  ; $547b: $01 $08 $38
    ld bc, $b800                                  ; $547e: $01 $00 $b8
    cp b                                          ; $5481: $b8
    jr nc, @+$32                                  ; $5482: $30 $30

    jr nz, @+$22                                  ; $5484: $20 $20

    jr nz, jr_096_54e8                            ; $5486: $20 $60

    ld bc, $4310                                  ; $5488: $01 $10 $43
    ld b, e                                       ; $548b: $43
    push bc                                       ; $548c: $c5
    rst $00                                       ; $548d: $c7
    add $00                                       ; $548e: $c6 $00
    rst $00                                       ; $5490: $c7
    ret nz                                        ; $5491: $c0

jr_096_5492:
    ret nz                                        ; $5492: $c0

    ldh [$e0], a                                  ; $5493: $e0 $e0
    ld h, c                                       ; $5495: $61
    ld h, c                                       ; $5496: $61
    ld l, [hl]                                    ; $5497: $6e
    jr z, jr_096_5509                             ; $5498: $28 $6f

    push af                                       ; $549a: $f5
    ld h, [hl]                                    ; $549b: $66
    inc bc                                        ; $549c: $03
    ld a, a                                       ; $549d: $7f
    ld [hl+], a                                   ; $549e: $22
    ld b, $07                                     ; $549f: $06 $07
    rlca                                          ; $54a1: $07
    ld a, [hl-]                                   ; $54a2: $3a
    ld h, b                                       ; $54a3: $60
    ccf                                           ; $54a4: $3f
    sbc $0c                                       ; $54a5: $de $0c
    inc l                                         ; $54a7: $2c
    ld c, $f8                                     ; $54a8: $0e $f8
    ld hl, sp+$3d                                 ; $54aa: $f8 $3d
    jr c, jr_096_542e                             ; $54ac: $38 $80

    db $10                                        ; $54ae: $10
    add b                                         ; $54af: $80
    ld [bc], a                                    ; $54b0: $02
    ld [bc], a                                    ; $54b1: $02
    call nc, $4008                                ; $54b2: $d4 $08 $40
    ld c, b                                       ; $54b5: $48
    nop                                           ; $54b6: $00
    db $10                                        ; $54b7: $10
    ld [bc], a                                    ; $54b8: $02
    nop                                           ; $54b9: $00
    dec c                                         ; $54ba: $0d
    nop                                           ; $54bb: $00
    ld a, a                                       ; $54bc: $7f
    inc b                                         ; $54bd: $04
    inc b                                         ; $54be: $04
    and d                                         ; $54bf: $a2
    nop                                           ; $54c0: $00
    ld d, b                                       ; $54c1: $50
    nop                                           ; $54c2: $00
    nop                                           ; $54c3: $00
    ld [$1400], sp                                ; $54c4: $08 $00 $14
    nop                                           ; $54c7: $00
    cp d                                          ; $54c8: $ba
    nop                                           ; $54c9: $00
    ld [hl], l                                    ; $54ca: $75
    inc c                                         ; $54cb: $0c
    nop                                           ; $54cc: $00
    rst $28                                       ; $54cd: $ef
    jr nz, jr_096_54f0                            ; $54ce: $20 $20

    ld b, [hl]                                    ; $54d0: $46
    ld c, $06                                     ; $54d1: $0e $06
    db $10                                        ; $54d3: $10
    adc d                                         ; $54d4: $8a
    nop                                           ; $54d5: $00
    and l                                         ; $54d6: $a5
    nop                                           ; $54d7: $00
    dec c                                         ; $54d8: $0d
    nop                                           ; $54d9: $00
    ld [bc], a                                    ; $54da: $02
    add hl, bc                                    ; $54db: $09
    add b                                         ; $54dc: $80
    add h                                         ; $54dd: $84
    ld [hl+], a                                   ; $54de: $22
    db $10                                        ; $54df: $10
    cpl                                           ; $54e0: $2f
    ld [de], a                                    ; $54e1: $12
    ld bc, $0000                                  ; $54e2: $01 $00 $00
    dec h                                         ; $54e5: $25
    jr nz, jr_096_5492                            ; $54e6: $20 $aa

jr_096_54e8:
    jr nz, jr_096_553f                            ; $54e8: $20 $55

    ld b, b                                       ; $54ea: $40
    ld [$404b], a                                 ; $54eb: $ea $4b $40
    inc b                                         ; $54ee: $04
    nop                                           ; $54ef: $00

jr_096_54f0:
    ret nz                                        ; $54f0: $c0

    ret nc                                        ; $54f1: $d0

    sbc [hl]                                      ; $54f2: $9e
    ld bc, $f354                                  ; $54f3: $01 $54 $f3
    ld [bc], a                                    ; $54f6: $02
    db $10                                        ; $54f7: $10
    add hl, de                                    ; $54f8: $19
    ld e, $81                                     ; $54f9: $1e $81
    ld bc, $c006                                  ; $54fb: $01 $06 $c0
    ld bc, $3920                                  ; $54fe: $01 $20 $39
    ld e, h                                       ; $5501: $5c
    ld e, $ee                                     ; $5502: $1e $ee

Jump_096_5504:
    ld [$0200], sp                                ; $5504: $08 $00 $02
    nop                                           ; $5507: $00
    dec hl                                        ; $5508: $2b

jr_096_5509:
    inc bc                                        ; $5509: $03
    ld e, [hl]                                    ; $550a: $5e
    rrca                                          ; $550b: $0f
    dec [hl]                                      ; $550c: $35
    ld e, $05                                     ; $550d: $1e $05
    dec c                                         ; $550f: $0d
    nop                                           ; $5510: $00
    rrca                                          ; $5511: $0f
    dec de                                        ; $5512: $1b
    rra                                           ; $5513: $1f
    halt                                          ; $5514: $76
    ld a, [hl]                                    ; $5515: $7e
    xor h                                         ; $5516: $ac
    db $fc                                        ; $5517: $fc
    ld a, d                                       ; $5518: $7a
    ld h, $f8                                     ; $5519: $26 $f8
    push af                                       ; $551b: $f5
    or d                                          ; $551c: $b2
    ld b, $80                                     ; $551d: $06 $80
    add b                                         ; $551f: $80
    ret nc                                        ; $5520: $d0

    dec e                                         ; $5521: $1d
    or b                                          ; $5522: $b0
    ld e, $11                                     ; $5523: $1e $11
    cp b                                          ; $5525: $b8
    ld h, d                                       ; $5526: $62
    ld b, $7e                                     ; $5527: $06 $7e
    call nc, $1806                                ; $5529: $d4 $06 $18
    ld [$0ecc], sp                                ; $552c: $08 $cc $0e
    ld bc, $5101                                  ; $552f: $01 $01 $51
    nop                                           ; $5532: $00
    ld bc, $0c0c                                  ; $5533: $01 $0c $0c
    ld d, $1e                                     ; $5536: $16 $1e
    inc l                                         ; $5538: $2c
    inc a                                         ; $5539: $3c
    ld e, b                                       ; $553a: $58
    nop                                           ; $553b: $00
    ld a, b                                       ; $553c: $78
    ld a, b                                       ; $553d: $78
    ld a, b                                       ; $553e: $78

jr_096_553f:
    or c                                          ; $553f: $b1
    pop af                                        ; $5540: $f1
    ld h, d                                       ; $5541: $62
    ld [c], a                                     ; $5542: $e2
    ld [c], a                                     ; $5543: $e2
    nop                                           ; $5544: $00
    ld [c], a                                     ; $5545: $e2
    ld a, [bc]                                    ; $5546: $0a
    ld [$085d], sp                                ; $5547: $08 $5d $08
    cp e                                          ; $554a: $bb
    ld de, $0055                                  ; $554b: $11 $55 $00
    nop                                           ; $554e: $00
    cp e                                          ; $554f: $bb
    ld de, $3035                                  ; $5550: $11 $35 $30
    ld [hl-], a                                   ; $5553: $32
    inc sp                                        ; $5554: $33
    dec [hl]                                      ; $5555: $35
    nop                                           ; $5556: $00
    scf                                           ; $5557: $37
    ei                                            ; $5558: $fb
    ld d, c                                       ; $5559: $51
    push de                                       ; $555a: $d5
    add c                                         ; $555b: $81
    ei                                            ; $555c: $fb
    ld d, c                                       ; $555d: $51
    db $dd                                        ; $555e: $dd
    nop                                           ; $555f: $00
    adc b                                         ; $5560: $88
    ei                                            ; $5561: $fb
    ld d, c                                       ; $5562: $51
    rst $18                                       ; $5563: $df
    adc d                                         ; $5564: $8a
    db $eb                                        ; $5565: $eb
    pop bc                                        ; $5566: $c1
    rst $28                                       ; $5567: $ef
    nop                                           ; $5568: $00
    xor $bf                                       ; $5569: $ee $bf
    rra                                           ; $556b: $1f
    sbc a                                         ; $556c: $9f
    sbc a                                         ; $556d: $9f
    cp a                                          ; $556e: $bf
    rra                                           ; $556f: $1f
    rst $18                                       ; $5570: $df
    db $10                                        ; $5571: $10
    adc a                                         ; $5572: $8f
    xor a                                         ; $5573: $af
    rrca                                          ; $5574: $0f
    inc b                                         ; $5575: $04
    ld [$0f5f], sp                                ; $5576: $08 $5f $0f
    ld h, a                                       ; $5579: $67
    ld h, a                                       ; $557a: $67
    nop                                           ; $557b: $00
    ld c, a                                       ; $557c: $4f
    ld c, d                                       ; $557d: $4a
    rst $10                                       ; $557e: $d7
    rst $18                                       ; $557f: $df
    sbc [hl]                                      ; $5580: $9e
    sbc [hl]                                      ; $5581: $9e
    xor h                                         ; $5582: $ac
    cp h                                          ; $5583: $bc
    nop                                           ; $5584: $00
    inc [hl]                                      ; $5585: $34
    inc a                                         ; $5586: $3c
    ld e, h                                       ; $5587: $5c
    ld a, h                                       ; $5588: $7c
    ld a, b                                       ; $5589: $78
    ld a, b                                       ; $558a: $78
    rst $38                                       ; $558b: $ff
    push de                                       ; $558c: $d5
    ld bc, $2a7e                                  ; $558d: $01 $7e $2a
    ld a, [hl]                                    ; $5590: $7e
    ld a, [hl]                                    ; $5591: $7e
    ld l, [hl]                                    ; $5592: $6e
    ld a, [hl]                                    ; $5593: $7e
    ld e, [hl]                                    ; $5594: $5e
    inc b                                         ; $5595: $04
    nop                                           ; $5596: $00
    nop                                           ; $5597: $00
    sbc $fe                                       ; $5598: $de $fe
    cp [hl]                                       ; $559a: $be
    cp $ab                                        ; $559b: $fe $ab
    rrca                                          ; $559d: $0f
    rrca                                          ; $559e: $0f
    rrca                                          ; $559f: $0f
    ld b, b                                       ; $55a0: $40
    dec bc                                        ; $55a1: $0b
    inc b                                         ; $55a2: $04
    nop                                           ; $55a3: $00
    rla                                           ; $55a4: $17
    rra                                           ; $55a5: $1f
    rra                                           ; $55a6: $1f
    rra                                           ; $55a7: $1f
    scf                                           ; $55a8: $37
    ccf                                           ; $55a9: $3f
    nop                                           ; $55aa: $00
    cpl                                           ; $55ab: $2f
    ccf                                           ; $55ac: $3f
    cp b                                          ; $55ad: $b8
    ld hl, sp+$79                                 ; $55ae: $f8 $79
    ld sp, hl                                     ; $55b0: $f9
    pop af                                        ; $55b1: $f1
    pop af                                        ; $55b2: $f1
    nop                                           ; $55b3: $00
    pop de                                        ; $55b4: $d1
    pop de                                        ; $55b5: $d1
    di                                            ; $55b6: $f3
    di                                            ; $55b7: $f3
    and d                                         ; $55b8: $a2
    and e                                         ; $55b9: $a3
    dec h                                         ; $55ba: $25
    daa                                           ; $55bb: $27
    nop                                           ; $55bc: $00
    ld h, [hl]                                    ; $55bd: $66
    ld h, a                                       ; $55be: $67
    cp $fe                                        ; $55bf: $fe $fe
    cp e                                          ; $55c1: $bb
    ei                                            ; $55c2: $fb
    ld a, e                                       ; $55c3: $7b
    ei                                            ; $55c4: $fb
    nop                                           ; $55c5: $00
    di                                            ; $55c6: $f3
    di                                            ; $55c7: $f3
    ld [hl], c                                    ; $55c8: $71
    pop af                                        ; $55c9: $f1
    pop af                                        ; $55ca: $f1
    pop af                                        ; $55cb: $f1
    db $e3                                        ; $55cc: $e3
    db $e3                                        ; $55cd: $e3
    ld a, [de]                                    ; $55ce: $1a
    ld [c], a                                     ; $55cf: $e2
    db $e3                                        ; $55d0: $e3
    ld e, a                                       ; $55d1: $5f
    jp nz, Jump_000_2e14                          ; $55d2: $c2 $14 $2e

    ld c, $bf                                     ; $55d5: $0e $bf
    ld b, $17                                     ; $55d7: $06 $17
    ld b, l                                       ; $55d9: $45
    nop                                           ; $55da: $00
    ld b, a                                       ; $55db: $47
    db $db                                        ; $55dc: $db
    adc a                                         ; $55dd: $8f
    db $ed                                        ; $55de: $ed
    ld c, a                                       ; $55df: $4f
    cp e                                          ; $55e0: $bb
    cp a                                          ; $55e1: $bf
    rst $18                                       ; $55e2: $df
    and b                                         ; $55e3: $a0
    xor c                                         ; $55e4: $a9
    rlca                                          ; $55e5: $07
    ld l, a                                       ; $55e6: $6f
    xor l                                         ; $55e7: $ad
    rlca                                          ; $55e8: $07
    rst $08                                       ; $55e9: $cf
    push bc                                       ; $55ea: $c5
    jp z, $edcf                                   ; $55eb: $ca $cf $ed

    nop                                           ; $55ee: $00
    rst $00                                       ; $55ef: $c7
    rst $18                                       ; $55f0: $df
    adc d                                         ; $55f1: $8a
    cp a                                          ; $55f2: $bf
    sub l                                         ; $55f3: $95
    rst $20                                       ; $55f4: $e7
    and $cf                                       ; $55f5: $e6 $cf
    inc d                                         ; $55f7: $14
    rst $08                                       ; $55f8: $cf
    adc e                                         ; $55f9: $8b
    adc e                                         ; $55fa: $8b
    db $eb                                        ; $55fb: $eb
    ld b, $aa                                     ; $55fc: $06 $aa
    xor a                                         ; $55fe: $af
    inc b                                         ; $55ff: $04
    xor d                                         ; $5600: $aa
    rst $38                                       ; $5601: $ff
    ld b, b                                       ; $5602: $40
    ld d, l                                       ; $5603: $55
    ld [$ff10], sp                                ; $5604: $08 $10 $ff
    or b                                          ; $5607: $b0
    or b                                          ; $5608: $b0
    pop af                                        ; $5609: $f1
    pop af                                        ; $560a: $f1
    ei                                            ; $560b: $fb
    add b                                         ; $560c: $80
    adc b                                         ; $560d: $88
    ld [bc], a                                    ; $560e: $02
    ei                                            ; $560f: $fb
    pop af                                        ; $5610: $f1
    rst $30                                       ; $5611: $f7
    ld [c], a                                     ; $5612: $e2
    ld [$f7e0], a                                 ; $5613: $ea $e0 $f7
    nop                                           ; $5616: $00
    ld [c], a                                     ; $5617: $e2
    call $8bcf                                    ; $5618: $cd $cf $8b
    adc a                                         ; $561b: $8f
    sbc a                                         ; $561c: $9f
    sbc a                                         ; $561d: $9f
    rst $10                                       ; $561e: $d7
    nop                                           ; $561f: $00
    sbc a                                         ; $5620: $9f
    cp a                                          ; $5621: $bf
    ccf                                           ; $5622: $3f
    ld l, a                                       ; $5623: $6f
    ccf                                           ; $5624: $3f
    rst $18                                       ; $5625: $df
    ld a, a                                       ; $5626: $7f
    cp a                                          ; $5627: $bf
    ld d, b                                       ; $5628: $50
    cp $c8                                        ; $5629: $fe $c8
    rrca                                          ; $562b: $0f
    ret nz                                        ; $562c: $c0

    db $fc                                        ; $562d: $fc
    ld de, $80d5                                  ; $562e: $11 $d5 $80
    db $eb                                        ; $5631: $eb
    ld b, c                                       ; $5632: $41
    nop                                           ; $5633: $00
    db $d3                                        ; $5634: $d3
    add e                                         ; $5635: $83
    jr nc, jr_096_5668                            ; $5636: $30 $30

    ld [hl], c                                    ; $5638: $71
    ld [hl], b                                    ; $5639: $70
    ld [$0040], a                                 ; $563a: $ea $40 $00
    push af                                       ; $563d: $f5
    and b                                         ; $563e: $a0
    ld [$e040], a                                 ; $563f: $ea $40 $e0
    and b                                         ; $5642: $a0
    ld a, [$0050]                                 ; $5643: $fa $50 $00
    or b                                          ; $5646: $b0
    or b                                          ; $5647: $b0
    db $ec                                        ; $5648: $ec
    db $ec                                        ; $5649: $ec
    db $ed                                        ; $564a: $ed
    db $ed                                        ; $564b: $ed
    reti                                          ; $564c: $d9


    reti                                          ; $564d: $d9


    nop                                           ; $564e: $00
    jp nc, $f3d3                                  ; $564f: $d2 $d3 $f3

    di                                            ; $5652: $f3
    and $e7                                       ; $5653: $e6 $e7
    push hl                                       ; $5655: $e5
    rst $20                                       ; $5656: $e7
    nop                                           ; $5657: $00
    set 1, a                                      ; $5658: $cb $cf
    call c, $bdfc                                 ; $565a: $dc $fc $bd
    db $fd                                        ; $565d: $fd
    ld a, c                                       ; $565e: $79
    ld sp, hl                                     ; $565f: $f9
    inc [hl]                                      ; $5660: $34
    ld sp, hl                                     ; $5661: $f9
    ld sp, hl                                     ; $5662: $f9
    and b                                         ; $5663: $a0
    ld [$0ae6], sp                                ; $5664: $08 $e6 $0a
    adc a                                         ; $5667: $8f

jr_096_5668:
    ld c, [hl]                                    ; $5668: $4e
    nop                                           ; $5669: $00
    cp a                                          ; $566a: $bf
    cp a                                          ; $566b: $bf
    nop                                           ; $566c: $00
    rst $30                                       ; $566d: $f7
    rst $30                                       ; $566e: $f7
    rst $28                                       ; $566f: $ef
    rst $28                                       ; $5670: $ef
    rst $08                                       ; $5671: $cf
    rst $08                                       ; $5672: $cf
    adc a                                         ; $5673: $8f
    adc a                                         ; $5674: $8f
    nop                                           ; $5675: $00
    sbc e                                         ; $5676: $9b
    sbc e                                         ; $5677: $9b
    or c                                          ; $5678: $b1
    or c                                          ; $5679: $b1
    ld a, [hl-]                                   ; $567a: $3a
    dec sp                                        ; $567b: $3b
    dec a                                         ; $567c: $3d
    ccf                                           ; $567d: $3f
    db $10                                        ; $567e: $10
    dec de                                        ; $567f: $1b
    rra                                           ; $5680: $1f
    rla                                           ; $5681: $17
    ld e, [hl]                                    ; $5682: $5e
    rlca                                          ; $5683: $07
    ld d, a                                       ; $5684: $57
    ld a, a                                       ; $5685: $7f
    xor a                                         ; $5686: $af
    rst $38                                       ; $5687: $ff
    nop                                           ; $5688: $00
    call $cfcf                                    ; $5689: $cd $cf $cf
    rst $08                                       ; $568c: $cf
    push bc                                       ; $568d: $c5
    rst $00                                       ; $568e: $c7
    rst $20                                       ; $568f: $e7
    rst $20                                       ; $5690: $e7
    nop                                           ; $5691: $00
    rst $30                                       ; $5692: $f7
    rst $30                                       ; $5693: $f7
    push af                                       ; $5694: $f5
    rst $30                                       ; $5695: $f7
    rst $18                                       ; $5696: $df
    rst $18                                       ; $5697: $df
    rst $28                                       ; $5698: $ef
    rst $28                                       ; $5699: $ef
    nop                                           ; $569a: $00
    pop af                                        ; $569b: $f1
    pop af                                        ; $569c: $f1
    ld sp, hl                                     ; $569d: $f9
    ld sp, hl                                     ; $569e: $f9
    db $fc                                        ; $569f: $fc
    db $fc                                        ; $56a0: $fc
    cp $fe                                        ; $56a1: $fe $fe
    nop                                           ; $56a3: $00
    rst $30                                       ; $56a4: $f7
    rst $30                                       ; $56a5: $f7
    di                                            ; $56a6: $f3
    di                                            ; $56a7: $f3
    ld sp, hl                                     ; $56a8: $f9
    ld sp, hl                                     ; $56a9: $f9
    ld hl, sp-$08                                 ; $56aa: $f8 $f8
    nop                                           ; $56ac: $00
    sbc e                                         ; $56ad: $9b
    sbc e                                         ; $56ae: $9b
    or e                                          ; $56af: $b3
    or e                                          ; $56b0: $b3
    di                                            ; $56b1: $f3
    di                                            ; $56b2: $f3
    or $f7                                        ; $56b3: $f6 $f7
    ld bc, $6f6d                                  ; $56b5: $01 $6d $6f
    ld a, e                                       ; $56b8: $7b
    ld a, a                                       ; $56b9: $7f
    or a                                          ; $56ba: $b7
    cp a                                          ; $56bb: $bf
    ei                                            ; $56bc: $fb
    ld b, h                                       ; $56bd: $44
    ld [de], a                                    ; $56be: $12
    dec b                                         ; $56bf: $05
    cp $fe                                        ; $56c0: $fe $fe
    or $f6                                        ; $56c2: $f6 $f6
    and $01                                       ; $56c4: $e6 $01
    nop                                           ; $56c6: $00
    add $01                                       ; $56c7: $c6 $01
    nop                                           ; $56c9: $00
    nop                                           ; $56ca: $00
    rst $20                                       ; $56cb: $e7
    rst $20                                       ; $56cc: $e7
    db $e3                                        ; $56cd: $e3
    and e                                         ; $56ce: $a3
    ei                                            ; $56cf: $fb
    ld d, e                                       ; $56d0: $53
    push af                                       ; $56d1: $f5
    and c                                         ; $56d2: $a1
    nop                                           ; $56d3: $00
    ei                                            ; $56d4: $fb
    ld d, c                                       ; $56d5: $51
    ld sp, hl                                     ; $56d6: $f9
    xor c                                         ; $56d7: $a9
    rst $38                                       ; $56d8: $ff
    ld d, l                                       ; $56d9: $55
    db $ed                                        ; $56da: $ed
    db $fd                                        ; $56db: $fd
    ld bc, $f8e8                                  ; $56dc: $01 $e8 $f8
    db $f4                                        ; $56df: $f4
    db $fc                                        ; $56e0: $fc
    ld a, [$f5fe]                                 ; $56e1: $fa $fe $f5
    sub [hl]                                      ; $56e4: $96
    dec b                                         ; $56e5: $05
    db $10                                        ; $56e6: $10
    db $fd                                        ; $56e7: $fd
    rst $38                                       ; $56e8: $ff
    cp $9c                                        ; $56e9: $fe $9c
    dec b                                         ; $56eb: $05
    ld [hl], a                                    ; $56ec: $77
    ld a, a                                       ; $56ed: $7f
    ccf                                           ; $56ee: $3f
    ccf                                           ; $56ef: $3f
    inc b                                         ; $56f0: $04
    cp e                                          ; $56f1: $bb
    ccf                                           ; $56f2: $3f
    ld a, a                                       ; $56f3: $7f
    ccf                                           ; $56f4: $3f
    rra                                           ; $56f5: $1f
    adc b                                         ; $56f6: $88
    ld bc, $dfdf                                  ; $56f7: $01 $df $df
    nop                                           ; $56fa: $00
    ld l, a                                       ; $56fb: $6f
    rst $28                                       ; $56fc: $ef
    add h                                         ; $56fd: $84
    add h                                         ; $56fe: $84
    adc h                                         ; $56ff: $8c
    adc h                                         ; $5700: $8c
    xor a                                         ; $5701: $af
    add l                                         ; $5702: $85
    nop                                           ; $5703: $00
    db $dd                                        ; $5704: $dd
    adc b                                         ; $5705: $88
    xor a                                         ; $5706: $af
    add l                                         ; $5707: $85
    adc a                                         ; $5708: $8f
    adc a                                         ; $5709: $8f
    rst $00                                       ; $570a: $c7
    rst $00                                       ; $570b: $c7
    ld bc, $cfce                                  ; $570c: $01 $ce $cf
    dec hl                                        ; $570f: $2b
    inc bc                                        ; $5710: $03
    ld d, l                                       ; $5711: $55
    rlca                                          ; $5712: $07
    xor e                                         ; $5713: $ab
    sbc b                                         ; $5714: $98
    ld bc, $9e00                                  ; $5715: $01 $00 $9e
    ld e, $3c                                     ; $5718: $1e $3c
    inc a                                         ; $571a: $3c
    ld a, h                                       ; $571b: $7c
    ld a, h                                       ; $571c: $7c
    cp b                                          ; $571d: $b8
    ld hl, sp+$00                                 ; $571e: $f8 $00
    call nz, $ddc4                                ; $5720: $c4 $c4 $dd
    adc b                                         ; $5723: $88
    cp d                                          ; $5724: $ba
    db $10                                        ; $5725: $10
    ld d, l                                       ; $5726: $55
    nop                                           ; $5727: $00
    ld bc, $10ba                                  ; $5728: $01 $ba $10
    ld h, b                                       ; $572b: $60
    ld h, b                                       ; $572c: $60
    ld b, b                                       ; $572d: $40
    ld b, b                                       ; $572e: $40
    ret nz                                        ; $572f: $c0

    ldh a, [rSC]                                  ; $5730: $f0 $02
    ldh a, [$3c]                                  ; $5732: $f0 $3c
    ld a, [hl-]                                   ; $5734: $3a
    ld l, b                                       ; $5735: $68
    rrca                                          ; $5736: $0f
    inc a                                         ; $5737: $3c
    dec hl                                        ; $5738: $2b
    ld a, b                                       ; $5739: $78
    dec de                                        ; $573a: $1b
    nop                                           ; $573b: $00
    nop                                           ; $573c: $00
    ld [hl], c                                    ; $573d: $71
    pop af                                        ; $573e: $f1
    nop                                           ; $573f: $00
    or e                                          ; $5740: $b3
    di                                            ; $5741: $f3
    ld h, e                                       ; $5742: $63
    db $e3                                        ; $5743: $e3
    add $c6                                       ; $5744: $c6 $c6
    adc h                                         ; $5746: $8c
    adc h                                         ; $5747: $8c
    ld [bc], a                                    ; $5748: $02
    dec a                                         ; $5749: $3d
    dec a                                         ; $574a: $3d
    ld a, c                                       ; $574b: $79
    ld a, c                                       ; $574c: $79
    db $e3                                        ; $574d: $e3
    db $e3                                        ; $574e: $e3
    jr nz, @+$1e                                  ; $574f: $20 $1c

    ld b, c                                       ; $5751: $41
    nop                                           ; $5752: $00
    ld b, c                                       ; $5753: $41
    pop hl                                        ; $5754: $e1
    pop hl                                        ; $5755: $e1
    ld b, e                                       ; $5756: $43
    jp $8282                                      ; $5757: $c3 $82 $82


    add [hl]                                      ; $575a: $86
    nop                                           ; $575b: $00
    add [hl]                                      ; $575c: $86
    add l                                         ; $575d: $85
    add a                                         ; $575e: $87
    rlca                                          ; $575f: $07
    rlca                                          ; $5760: $07
    ld a, [bc]                                    ; $5761: $0a
    ld c, $14                                     ; $5762: $0e $14
    nop                                           ; $5764: $00
    inc e                                         ; $5765: $1c
    inc e                                         ; $5766: $1c
    inc e                                         ; $5767: $1c
    jr c, jr_096_57a2                             ; $5768: $38 $38

    ld d, b                                       ; $576a: $50
    ld [hl], b                                    ; $576b: $70
    jr nc, jr_096_576e                            ; $576c: $30 $00

jr_096_576e:
    ld [hl], b                                    ; $576e: $70
    inc c                                         ; $576f: $0c
    inc c                                         ; $5770: $0c
    add hl, bc                                    ; $5771: $09
    add hl, bc                                    ; $5772: $09
    add hl, de                                    ; $5773: $19
    add hl, de                                    ; $5774: $19
    inc de                                        ; $5775: $13
    nop                                           ; $5776: $00
    inc de                                        ; $5777: $13
    inc sp                                        ; $5778: $33
    inc sp                                        ; $5779: $33
    ld h, l                                       ; $577a: $65
    ld h, a                                       ; $577b: $67
    ld c, e                                       ; $577c: $4b
    ld c, a                                       ; $577d: $4f
    rst $10                                       ; $577e: $d7
    inc e                                         ; $577f: $1c
    rst $18                                       ; $5780: $df
    ret nz                                        ; $5781: $c0

    ret nz                                        ; $5782: $c0

    ld h, l                                       ; $5783: $65
    nop                                           ; $5784: $00
    inc d                                         ; $5785: $14
    inc b                                         ; $5786: $04
    sub [hl]                                      ; $5787: $96
    ld a, [de]                                    ; $5788: $1a
    nop                                           ; $5789: $00
    nop                                           ; $578a: $00
    inc bc                                        ; $578b: $03
    ei                                            ; $578c: $fb
    pop de                                        ; $578d: $d1
    and e                                         ; $578e: $a3
    ld [c], a                                     ; $578f: $e2
    rst $28                                       ; $5790: $ef
    ld b, l                                       ; $5791: $45
    and b                                         ; $5792: $a0
    ld de, $0779                                  ; $5793: $11 $79 $07
    nop                                           ; $5796: $00
    cp h                                          ; $5797: $bc
    db $fc                                        ; $5798: $fc
    xor [hl]                                      ; $5799: $ae
    ld a, $5f                                     ; $579a: $3e $5f
    ld a, [hl+]                                   ; $579c: $2a
    cp $54                                        ; $579d: $fe $54
    nop                                           ; $579f: $00
    db $fd                                        ; $57a0: $fd
    xor b                                         ; $57a1: $a8

jr_096_57a2:
    pop hl                                        ; $57a2: $e1
    pop hl                                        ; $57a3: $e1
    db $d3                                        ; $57a4: $d3
    add e                                         ; $57a5: $83
    rrca                                          ; $57a6: $0f
    rrca                                          ; $57a7: $0f
    nop                                           ; $57a8: $00
    dec a                                         ; $57a9: $3d
    ccf                                           ; $57aa: $3f
    inc bc                                        ; $57ab: $03
    inc bc                                        ; $57ac: $03
    ld a, l                                       ; $57ad: $7d
    ccf                                           ; $57ae: $3f
    ld [$a07f], a                                 ; $57af: $ea $7f $a0
    ld b, d                                       ; $57b2: $42
    dec de                                        ; $57b3: $1b
    db $fc                                        ; $57b4: $fc
    ld bc, $e000                                  ; $57b5: $01 $00 $e0
    ldh [$75], a                                  ; $57b8: $e0 $75
    ldh a, [$ea]                                  ; $57ba: $f0 $ea
    ld b, b                                       ; $57bc: $40
    ldh [$d8], a                                  ; $57bd: $e0 $d8
    dec bc                                        ; $57bf: $0b
    nop                                           ; $57c0: $00
    nop                                           ; $57c1: $00
    db $10                                        ; $57c2: $10
    db $10                                        ; $57c3: $10
    jr nz, jr_096_57e6                            ; $57c4: $20 $20

    ld a, [de]                                    ; $57c6: $1a
    ld a, a                                       ; $57c7: $7f
    rst $38                                       ; $57c8: $ff
    cp l                                          ; $57c9: $bd
    ld [hl+], a                                   ; $57ca: $22
    ld b, $0c                                     ; $57cb: $06 $0c
    ld a, [bc]                                    ; $57cd: $0a
    db $fd                                        ; $57ce: $fd
    inc b                                         ; $57cf: $04
    db $10                                        ; $57d0: $10
    cp $20                                        ; $57d1: $fe $20
    db $fd                                        ; $57d3: $fd
    call c, Call_000_0004                         ; $57d4: $dc $04 $00
    db $fd                                        ; $57d7: $fd
    cp $fe                                        ; $57d8: $fe $fe
    db $fd                                        ; $57da: $fd
    rst $18                                       ; $57db: $df
    nop                                           ; $57dc: $00
    db $fc                                        ; $57dd: $fc
    cp $fd                                        ; $57de: $fe $fd
    ld d, a                                       ; $57e0: $57
    db $fc                                        ; $57e1: $fc
    rst $38                                       ; $57e2: $ff
    rst $38                                       ; $57e3: $ff
    rst $30                                       ; $57e4: $f7
    ret nc                                        ; $57e5: $d0

jr_096_57e6:
    db $e3                                        ; $57e6: $e3
    rlca                                          ; $57e7: $07
    ld a, [hl+]                                   ; $57e8: $2a
    ld a, [bc]                                    ; $57e9: $0a
    ld [hl], a                                    ; $57ea: $77
    db $eb                                        ; $57eb: $eb
    rlca                                          ; $57ec: $07
    ld [hl], l                                    ; $57ed: $75
    rst $38                                       ; $57ee: $ff
    rst $30                                       ; $57ef: $f7
    rst $28                                       ; $57f0: $ef
    nop                                           ; $57f1: $00
    ld a, d                                       ; $57f2: $7a
    rst $20                                       ; $57f3: $e7
    rst $30                                       ; $57f4: $f7
    rst $28                                       ; $57f5: $ef
    ld a, [$fbe7]                                 ; $57f6: $fa $e7 $fb
    rst $20                                       ; $57f9: $e7
    nop                                           ; $57fa: $00
    ld [hl], d                                    ; $57fb: $72
    rst $20                                       ; $57fc: $e7
    ld sp, hl                                     ; $57fd: $f9
    rst $20                                       ; $57fe: $e7
    ld d, d                                       ; $57ff: $52
    rst $20                                       ; $5800: $e7
    rst $38                                       ; $5801: $ff
    rst $38                                       ; $5802: $ff
    ld b, d                                       ; $5803: $42
    ld a, l                                       ; $5804: $7d

jr_096_5805:
    rst $38                                       ; $5805: $ff
    rlca                                          ; $5806: $07
    ld a, l                                       ; $5807: $7d
    rst $38                                       ; $5808: $ff
    ld a, [hl]                                    ; $5809: $7e
    ld a, a                                       ; $580a: $7f
    ld [$ff18], sp                                ; $580b: $08 $18 $ff
    dec d                                         ; $580e: $15
    db $fc                                        ; $580f: $fc
    ld d, [hl]                                    ; $5810: $56
    db $fc                                        ; $5811: $fc
    inc b                                         ; $5812: $04
    ld [$08ef], sp                                ; $5813: $08 $ef $08
    nop                                           ; $5816: $00
    cp e                                          ; $5817: $bb
    inc c                                         ; $5818: $0c
    nop                                           ; $5819: $00
    ld d, h                                       ; $581a: $54
    cp a                                          ; $581b: $bf
    inc [hl]                                      ; $581c: $34
    nop                                           ; $581d: $00
    ccf                                           ; $581e: $3f
    jr c, jr_096_5821                             ; $581f: $38 $00

jr_096_5821:
    dec sp                                        ; $5821: $3b
    inc a                                         ; $5822: $3c
    nop                                           ; $5823: $00
    cp [hl]                                       ; $5824: $be
    ld a, a                                       ; $5825: $7f
    ld [bc], a                                    ; $5826: $02
    ld [hl], l                                    ; $5827: $75
    rst $38                                       ; $5828: $ff
    ld sp, hl                                     ; $5829: $f9
    rst $20                                       ; $582a: $e7
    ld d, a                                       ; $582b: $57
    db $e3                                        ; $582c: $e3
    inc b                                         ; $582d: $04
    ld [$80b9], sp                                ; $582e: $08 $b9 $80
    ld [$f100], sp                                ; $5831: $08 $00 $f1
    rst $20                                       ; $5834: $e7
    ld d, h                                       ; $5835: $54
    ld [c], a                                     ; $5836: $e2
    ld d, [hl]                                    ; $5837: $56
    ld d, a                                       ; $5838: $57
    jr z, jr_096_583b                             ; $5839: $28 $00

jr_096_583b:
    xor d                                         ; $583b: $aa
    ld d, h                                       ; $583c: $54
    ld d, l                                       ; $583d: $55
    ld e, l                                       ; $583e: $5d
    rst $38                                       ; $583f: $ff
    ld a, [hl]                                    ; $5840: $7e
    rst $38                                       ; $5841: $ff
    ld e, h                                       ; $5842: $5c
    add b                                         ; $5843: $80
    inc b                                         ; $5844: $04
    db $10                                        ; $5845: $10
    xor c                                         ; $5846: $a9
    db $fc                                        ; $5847: $fc
    ld [bc], a                                    ; $5848: $02
    xor b                                         ; $5849: $a8
    nop                                           ; $584a: $00
    ld d, h                                       ; $584b: $54
    ld d, a                                       ; $584c: $57
    ld [$aafc], sp                                ; $584d: $08 $fc $aa
    db $fc                                        ; $5850: $fc
    ld b, [hl]                                    ; $5851: $46
    inc b                                         ; $5852: $04
    nop                                           ; $5853: $00
    ld [bc], a                                    ; $5854: $02
    db $fc                                        ; $5855: $fc
    stop                                          ; $5856: $10 $00

jr_096_5858:
    ld d, l                                       ; $5858: $55
    jr nz, jr_096_5805                            ; $5859: $20 $aa

    db $10                                        ; $585b: $10
    ld d, l                                       ; $585c: $55
    ld [hl], l                                    ; $585d: $75
    rst $38                                       ; $585e: $ff
    ld a, [$7f20]                                 ; $585f: $fa $20 $7f
    ld [hl], c                                    ; $5862: $71
    inc b                                         ; $5863: $04
    nop                                           ; $5864: $00
    ld [hl], b                                    ; $5865: $70
    rst $38                                       ; $5866: $ff
    ld de, $0045                                  ; $5867: $11 $45 $00
    nop                                           ; $586a: $00
    and d                                         ; $586b: $a2
    ld sp, $5567                                  ; $586c: $31 $67 $55
    db $e3                                        ; $586f: $e3
    or l                                          ; $5870: $b5
    db $e3                                        ; $5871: $e3
    dec d                                         ; $5872: $15
    jr z, jr_096_5858                             ; $5873: $28 $e3

    cp h                                          ; $5875: $bc
    inc b                                         ; $5876: $04
    nop                                           ; $5877: $00
    ld a, $38                                     ; $5878: $3e $38
    nop                                           ; $587a: $00
    ld a, $ff                                     ; $587b: $3e $ff
    ld a, h                                       ; $587d: $7c
    ld l, $ff                                     ; $587e: $2e $ff
    inc a                                         ; $5880: $3c
    inc b                                         ; $5881: $04
    nop                                           ; $5882: $00
    ld e, [hl]                                    ; $5883: $5e
    ld [$3400], sp                                ; $5884: $08 $00 $34
    ld [$0838], sp                                ; $5887: $08 $38 $08
    adc d                                         ; $588a: $8a
    xor b                                         ; $588b: $a8
    inc a                                         ; $588c: $3c
    nop                                           ; $588d: $00
    ld [hl+], a                                   ; $588e: $22
    ld b, b                                       ; $588f: $40
    nop                                           ; $5890: $00
    cp d                                          ; $5891: $ba
    inc [hl]                                      ; $5892: $34
    nop                                           ; $5893: $00
    ld a, [hl-]                                   ; $5894: $3a
    rst $38                                       ; $5895: $ff
    ld [hl], b                                    ; $5896: $70
    jr z, @+$01                                   ; $5897: $28 $ff

    ld [hl-], a                                   ; $5899: $32
    inc b                                         ; $589a: $04
    nop                                           ; $589b: $00
    jr c, @+$0a                                   ; $589c: $38 $08

    nop                                           ; $589e: $00
    cp b                                          ; $589f: $b8
    rst $20                                       ; $58a0: $e7
    dec d                                         ; $58a1: $15
    ld d, a                                       ; $58a2: $57
    db $e3                                        ; $58a3: $e3
    inc b                                         ; $58a4: $04
    ld [$0838], sp                                ; $58a5: $08 $38 $08
    nop                                           ; $58a8: $00
    sub b                                         ; $58a9: $90
    inc c                                         ; $58aa: $0c
    nop                                           ; $58ab: $00
    sub b                                         ; $58ac: $90
    rrca                                          ; $58ad: $0f
    call $821f                                    ; $58ae: $cd $1f $82
    ld [$fa08], sp                                ; $58b1: $08 $08 $fa
    rst $38                                       ; $58b4: $ff
    rst $20                                       ; $58b5: $e7
    rst $18                                       ; $58b6: $df
    adc [hl]                                      ; $58b7: $8e
    inc b                                         ; $58b8: $04
    nop                                           ; $58b9: $00
    rst $08                                       ; $58ba: $cf
    add b                                         ; $58bb: $80
    ld [$be00], sp                                ; $58bc: $08 $00 $be
    rst $08                                       ; $58bf: $cf
    rst $20                                       ; $58c0: $e7
    rst $18                                       ; $58c1: $df
    or [hl]                                       ; $58c2: $b6
    rst $08                                       ; $58c3: $cf
    rst $18                                       ; $58c4: $df
    nop                                           ; $58c5: $00
    rst $38                                       ; $58c6: $ff
    adc $ff                                       ; $58c7: $ce $ff
    rst $28                                       ; $58c9: $ef
    rst $18                                       ; $58ca: $df
    and $df                                       ; $58cb: $e6 $df
    rst $20                                       ; $58cd: $e7
    rrca                                          ; $58ce: $0f
    rst $18                                       ; $58cf: $df
    or $cf                                        ; $58d0: $f6 $cf
    push hl                                       ; $58d2: $e5
    stop                                          ; $58d3: $10 $00
    ld sp, hl                                     ; $58d5: $f9
    cpl                                           ; $58d6: $2f
    inc a                                         ; $58d7: $3c
    dec bc                                        ; $58d8: $0b
    ld b, b                                       ; $58d9: $40
    dec bc                                        ; $58da: $0b
    sbc $34                                       ; $58db: $de $34
    ld [$0838], sp                                ; $58dd: $08 $38 $08
    db $fd                                        ; $58e0: $fd
    inc b                                         ; $58e1: $04
    ld [$06f8], sp                                ; $58e2: $08 $f8 $06
    inc [hl]                                      ; $58e5: $34
    ld [$0838], sp                                ; $58e6: $08 $38 $08
    rst $30                                       ; $58e9: $f7
    nop                                           ; $58ea: $00
    rst $08                                       ; $58eb: $cf
    or [hl]                                       ; $58ec: $b6
    rst $08                                       ; $58ed: $cf
    ld b, l                                       ; $58ee: $45
    ld b, l                                       ; $58ef: $45
    and d                                         ; $58f0: $a2
    adc d                                         ; $58f1: $8a
    pop hl                                        ; $58f2: $e1
    nop                                           ; $58f3: $00
    rst $18                                       ; $58f4: $df
    or b                                          ; $58f5: $b0
    rst $08                                       ; $58f6: $cf
    jp hl                                         ; $58f7: $e9


    rst $10                                       ; $58f8: $d7
    or b                                          ; $58f9: $b0
    rst $08                                       ; $58fa: $cf
    ld l, c                                       ; $58fb: $69
    ld bc, $b4d7                                  ; $58fc: $01 $d7 $b4
    bit 7, c                                      ; $58ff: $cb $79
    ld b, a                                       ; $5901: $47
    and h                                         ; $5902: $a4
    adc e                                         ; $5903: $8b
    jr c, jr_096_592e                             ; $5904: $38 $28

    add h                                         ; $5906: $84
    ld b, b                                       ; $5907: $40
    jr z, @+$57                                   ; $5908: $28 $55

    ld d, l                                       ; $590a: $55
    xor b                                         ; $590b: $a8
    xor d                                         ; $590c: $aa
    inc a                                         ; $590d: $3c
    db $10                                        ; $590e: $10
    rst $38                                       ; $590f: $ff
    ld hl, sp-$3e                                 ; $5910: $f8 $c2
    inc b                                         ; $5912: $04
    db $10                                        ; $5913: $10
    inc [hl]                                      ; $5914: $34
    ld [$c76f], sp                                ; $5915: $08 $6f $c7
    and d                                         ; $5918: $a2
    rst $08                                       ; $5919: $cf
    inc b                                         ; $591a: $04
    jr @+$24                                      ; $591b: $18 $22

    nop                                           ; $591d: $00
    rst $08                                       ; $591e: $cf
    ld a, c                                       ; $591f: $79
    ld b, a                                       ; $5920: $47
    inc h                                         ; $5921: $24
    adc e                                         ; $5922: $8b
    ld a, c                                       ; $5923: $79
    rst $00                                       ; $5924: $c7
    and l                                         ; $5925: $a5
    ld b, $cb                                     ; $5926: $06 $cb
    ld l, c                                       ; $5928: $69
    rst $00                                       ; $5929: $c7
    dec l                                         ; $592a: $2d
    jp $0804                                      ; $592b: $c3 $04 $08


jr_096_592e:
    jr z, @+$2a                                   ; $592e: $28 $28

    ld sp, hl                                     ; $5930: $f9
    or b                                          ; $5931: $b0
    jr nc, jr_096_5934                            ; $5932: $30 $00

jr_096_5934:
    db $fc                                        ; $5934: $fc
    inc [hl]                                      ; $5935: $34
    nop                                           ; $5936: $00
    inc h                                         ; $5937: $24
    ld [$c76f], sp                                ; $5938: $08 $6f $c7
    ld h, $cf                                     ; $593b: $26 $cf
    ld de, $c72e                                  ; $593d: $11 $2e $c7
    ld [hl], $34                                  ; $5940: $36 $34
    nop                                           ; $5942: $00
    ld [hl], $cf                                  ; $5943: $36 $cf
    ld h, c                                       ; $5945: $61
    jr z, jr_096_5948                             ; $5946: $28 $00

jr_096_5948:
    dec b                                         ; $5948: $05
    ld h, c                                       ; $5949: $61
    rst $00                                       ; $594a: $c7
    add hl, hl                                    ; $594b: $29
    rst $00                                       ; $594c: $c7
    ld [hl], c                                    ; $594d: $71
    inc b                                         ; $594e: $04
    nop                                           ; $594f: $00
    ld sp, $0008                                  ; $5950: $31 $08 $00
    ld h, b                                       ; $5953: $60
    ld e, h                                       ; $5954: $5c
    inc e                                         ; $5955: $1c
    ld bc, $1004                                  ; $5956: $01 $04 $10
    db $fd                                        ; $5959: $fd
    ld a, h                                       ; $595a: $7c
    cp $5c                                        ; $595b: $fe $5c
    db $fd                                        ; $595d: $fd
    jr @+$3e                                      ; $595e: $18 $3c

    cp $02                                        ; $5960: $fe $02
    ld d, h                                       ; $5962: $54
    ld bc, $0004                                  ; $5963: $01 $04 $00
    xor b                                         ; $5966: $a8
    ld [bc], a                                    ; $5967: $02
    ld d, h                                       ; $5968: $54
    add c                                         ; $5969: $81
    ld l, b                                       ; $596a: $68
    add hl, bc                                    ; $596b: $09
    ld [bc], a                                    ; $596c: $02
    xor b                                         ; $596d: $a8
    jr nc, @+$01                                  ; $596e: $30 $ff

    ldh a, [$7f]                                  ; $5970: $f0 $7f
    inc b                                         ; $5972: $04
    ld [$1003], sp                                ; $5973: $08 $03 $10
    push de                                       ; $5976: $d5
    and b                                         ; $5977: $a0
    ld a, [hl+]                                   ; $5978: $2a
    db $10                                        ; $5979: $10
    ld d, l                                       ; $597a: $55
    inc b                                         ; $597b: $04
    nop                                           ; $597c: $00
    jr nz, jr_096_5980                            ; $597d: $20 $01

    ld b, c                                       ; $597f: $41

jr_096_5980:
    inc d                                         ; $5980: $14
    ld e, h                                       ; $5981: $5c
    ld bc, $431e                                  ; $5982: $01 $1e $43
    dec d                                         ; $5985: $15
    and e                                         ; $5986: $a3
    rra                                           ; $5987: $1f
    inc b                                         ; $5988: $04
    nop                                           ; $5989: $00
    ret nc                                        ; $598a: $d0

    inc [hl]                                      ; $598b: $34
    ld [$195e], sp                                ; $598c: $08 $5e $19
    inc a                                         ; $598f: $3c
    ld [$7c01], a                                 ; $5990: $ea $01 $7c
    rst $38                                       ; $5993: $ff
    ld bc, $1054                                  ; $5994: $01 $54 $10
    ld [bc], a                                    ; $5997: $02
    db $fc                                        ; $5998: $fc
    inc bc                                        ; $5999: $03
    sbc b                                         ; $599a: $98
    ld bc, $fc03                                  ; $599b: $01 $03 $fc
    ld b, d                                       ; $599e: $42
    cp h                                          ; $599f: $bc
    nop                                           ; $59a0: $00
    inc bc                                        ; $59a1: $03
    db $fc                                        ; $59a2: $fc
    ld de, $10fe                                  ; $59a3: $11 $fe $10
    ld d, a                                       ; $59a6: $57
    and b                                         ; $59a7: $a0
    ld a, [hl+]                                   ; $59a8: $2a
    ld l, c                                       ; $59a9: $69
    ld [hl], b                                    ; $59aa: $70
    ld b, h                                       ; $59ab: $44
    nop                                           ; $59ac: $00
    inc b                                         ; $59ad: $04
    ld [$7e74], sp                                ; $59ae: $08 $74 $7e
    rlca                                          ; $59b1: $07
    rra                                           ; $59b2: $1f
    db $e3                                        ; $59b3: $e3
    jr c, jr_096_59b6                             ; $59b4: $38 $00

jr_096_59b6:
    and b                                         ; $59b6: $a0
    sbc h                                         ; $59b7: $9c
    ld bc, $a017                                  ; $59b8: $01 $17 $a0
    ld bc, $e315                                  ; $59bb: $01 $15 $e3
    ld de, $7ce7                                  ; $59be: $11 $e7 $7c
    nop                                           ; $59c1: $00
    rst $38                                       ; $59c2: $ff
    ld a, l                                       ; $59c3: $7d
    cp $54                                        ; $59c4: $fe $54
    ld d, l                                       ; $59c6: $55
    cp h                                          ; $59c7: $bc
    cp a                                          ; $59c8: $bf
    ld d, h                                       ; $59c9: $54
    ld [bc], a                                    ; $59ca: $02
    ld d, l                                       ; $59cb: $55
    xor b                                         ; $59cc: $a8
    xor e                                         ; $59cd: $ab
    ld d, h                                       ; $59ce: $54
    push de                                       ; $59cf: $d5
    db $fc                                        ; $59d0: $fc
    xor d                                         ; $59d1: $aa
    ld b, $21                                     ; $59d2: $06 $21
    nop                                           ; $59d4: $00
    sbc $03                                       ; $59d5: $de $03
    ld d, l                                       ; $59d7: $55
    nop                                           ; $59d8: $00
    rst $38                                       ; $59d9: $ff
    dec d                                         ; $59da: $15
    ld d, l                                       ; $59db: $55
    ld [bc], a                                    ; $59dc: $02
    nop                                           ; $59dd: $00
    rst $38                                       ; $59de: $ff
    nop                                           ; $59df: $00
    ld d, l                                       ; $59e0: $55
    ld b, b                                       ; $59e1: $40
    cp a                                          ; $59e2: $bf
    ld [hl], c                                    ; $59e3: $71
    cp $f0                                        ; $59e4: $fe $f0
    add b                                         ; $59e6: $80
    sbc [hl]                                      ; $59e7: $9e
    ld bc, $fff4                                  ; $59e8: $01 $f4 $ff
    ld b, c                                       ; $59eb: $41
    ld d, l                                       ; $59ec: $55
    ld [$81ff], sp                                ; $59ed: $08 $ff $81
    and b                                         ; $59f0: $a0
    or b                                          ; $59f1: $b0
    ld b, $35                                     ; $59f2: $06 $35
    inc [hl]                                      ; $59f4: $34
    nop                                           ; $59f5: $00
    inc d                                         ; $59f6: $14
    db $e3                                        ; $59f7: $e3
    ld [$54e2], sp                                ; $59f8: $08 $e2 $54
    inc bc                                        ; $59fb: $03
    ld bc, $e719                                  ; $59fc: $01 $19 $e7
    ld d, $e3                                     ; $59ff: $16 $e3
    add hl, de                                    ; $5a01: $19
    ld b, b                                       ; $5a02: $40
    nop                                           ; $5a03: $00
    ld c, a                                       ; $5a04: $4f
    ld [bc], a                                    ; $5a05: $02
    and d                                         ; $5a06: $a2
    sbc d                                         ; $5a07: $9a
    inc bc                                        ; $5a08: $03
    db $fc                                        ; $5a09: $fc
    ld l, b                                       ; $5a0a: $68
    ld [bc], a                                    ; $5a0b: $02
    cp d                                          ; $5a0c: $ba
    rst $38                                       ; $5a0d: $ff
    and c                                         ; $5a0e: $a1
    xor $06                                       ; $5a0f: $ee $06
    ld [hl+], a                                   ; $5a11: $22
    ld [$80fd], sp                                ; $5a12: $08 $fd $80
    ld a, a                                       ; $5a15: $7f
    ld de, $06ca                                  ; $5a16: $11 $ca $06
    ld bc, $08fe                                  ; $5a19: $01 $fe $08
    sub c                                         ; $5a1c: $91
    db $fc                                        ; $5a1d: $fc
    ld b, $25                                     ; $5a1e: $06 $25
    sbc $02                                       ; $5a20: $de $02
    rrca                                          ; $5a22: $0f
    ld [$40f7], sp                                ; $5a23: $08 $f7 $40
    inc b                                         ; $5a26: $04
    rla                                           ; $5a27: $17
    jr nz, jr_096_5a4a                            ; $5a28: $20 $20

    rst $38                                       ; $5a2a: $ff
    inc [hl]                                      ; $5a2b: $34
    ld [$e753], sp                                ; $5a2c: $08 $53 $e7
    dec hl                                        ; $5a2f: $2b
    rst $30                                       ; $5a30: $f7
    rla                                           ; $5a31: $17
    ld [$42ff], sp                                ; $5a32: $08 $ff $42
    rst $38                                       ; $5a35: $ff
    ld bc, $071c                                  ; $5a36: $01 $1c $07
    ld hl, sp-$01                                 ; $5a39: $f8 $ff
    ld a, b                                       ; $5a3b: $78
    inc d                                         ; $5a3c: $14
    rst $38                                       ; $5a3d: $ff
    ld hl, sp-$03                                 ; $5a3e: $f8 $fd
    inc b                                         ; $5a40: $04
    db $10                                        ; $5a41: $10
    ld a, [$0804]                                 ; $5a42: $fa $04 $08
    ld h, $cf                                     ; $5a45: $26 $cf
    nop                                           ; $5a47: $00
    ld [hl], $cf                                  ; $5a48: $36 $cf

jr_096_5a4a:
    ld b, $47                                     ; $5a4a: $06 $47
    ld [hl+], a                                   ; $5a4c: $22
    jp z, Jump_096_5504                           ; $5a4d: $ca $04 $55

    inc l                                         ; $5a50: $2c
    ld [hl+], a                                   ; $5a51: $22
    adc d                                         ; $5a52: $8a
    inc b                                         ; $5a53: $04
    ld [$2c30], sp                                ; $5a54: $08 $30 $2c
    ld bc, $0004                                  ; $5a57: $01 $04 $00
    add a                                         ; $5a5a: $87
    inc h                                         ; $5a5b: $24
    ld [hl], h                                    ; $5a5c: $74
    ld b, e                                       ; $5a5d: $43
    inc b                                         ; $5a5e: $04

jr_096_5a5f:
    jr jr_096_5a91                                ; $5a5f: $18 $30

    db $10                                        ; $5a61: $10
    ld [bc], a                                    ; $5a62: $02
    db $10                                        ; $5a63: $10
    ld a, h                                       ; $5a64: $7c
    inc a                                         ; $5a65: $3c
    db $10                                        ; $5a66: $10
    inc h                                         ; $5a67: $24
    push de                                       ; $5a68: $d5
    ld [$cf3a], sp                                ; $5a69: $08 $3a $cf
    ld l, $df                                     ; $5a6c: $2e $df
    inc b                                         ; $5a6e: $04
    ld [$ef1f], sp                                ; $5a6f: $08 $1f $ef
    xor [hl]                                      ; $5a72: $ae
    db $10                                        ; $5a73: $10
    rst $18                                       ; $5a74: $df
    ld c, l                                       ; $5a75: $4d
    rst $38                                       ; $5a76: $ff
    jr z, jr_096_5a79                             ; $5a77: $28 $00

jr_096_5a79:
    rst $00                                       ; $5a79: $c7
    inc l                                         ; $5a7a: $2c
    jp $3a29                                      ; $5a7b: $c3 $29 $3a


    rst $00                                       ; $5a7e: $c7
    inc a                                         ; $5a7f: $3c
    inc b                                         ; $5a80: $04
    jr nz, jr_096_5ac9                            ; $5a81: $20 $46

    dec c                                         ; $5a83: $0d
    inc b                                         ; $5a84: $04
    jr @+$01                                      ; $5a85: $18 $ff

    inc b                                         ; $5a87: $04
    db $10                                        ; $5a88: $10
    ld a, [$6c80]                                 ; $5a89: $fa $80 $6c
    ld [$28ff], sp                                ; $5a8c: $08 $ff $28
    xor d                                         ; $5a8f: $aa
    ld d, b                                       ; $5a90: $50

jr_096_5a91:
    ld d, l                                       ; $5a91: $55
    ld a, b                                       ; $5a92: $78
    cp $04                                        ; $5a93: $fe $04
    ld d, h                                       ; $5a95: $54
    ld d, c                                       ; $5a96: $51
    ld hl, sp-$01                                 ; $5a97: $f8 $ff
    ld [hl+], a                                   ; $5a99: $22
    and b                                         ; $5a9a: $a0
    rrca                                          ; $5a9b: $0f
    push de                                       ; $5a9c: $d5
    adc b                                         ; $5a9d: $88
    ld b, b                                       ; $5a9e: $40
    ld a, [hl+]                                   ; $5a9f: $2a
    ld [hl], e                                    ; $5aa0: $73
    rrca                                          ; $5aa1: $0f
    db $10                                        ; $5aa2: $10
    ld c, a                                       ; $5aa3: $4f
    ld bc, $34ff                                  ; $5aa4: $01 $ff $34
    rlc b                                         ; $5aa7: $cb $00
    xor c                                         ; $5aa9: $a9
    ld b, a                                       ; $5aaa: $47
    jr nc, jr_096_5afc                            ; $5aab: $30 $4f

    add hl, hl                                    ; $5aad: $29
    add a                                         ; $5aae: $87
    ld sp, $034f                                  ; $5aaf: $31 $4f $03
    add hl, hl                                    ; $5ab2: $29
    sub a                                         ; $5ab3: $97
    ld sp, $29cf                                  ; $5ab4: $31 $cf $29
    rst $10                                       ; $5ab7: $d7
    jr c, jr_096_5ae2                             ; $5ab8: $38 $28

    ld b, b                                       ; $5aba: $40
    jr z, jr_096_5a5f                             ; $5abb: $28 $a2

    call nc, $fa09                                ; $5abd: $d4 $09 $fa
    ld c, b                                       ; $5ac0: $48
    ld bc, $ffe8                                  ; $5ac1: $01 $e8 $ff
    sub d                                         ; $5ac4: $92
    call nc, $8417                                ; $5ac5: $d4 $17 $84
    inc b                                         ; $5ac8: $04

jr_096_5ac9:
    ld a, e                                       ; $5ac9: $7b
    nop                                           ; $5aca: $00
    rst $38                                       ; $5acb: $ff
    ld [de], a                                    ; $5acc: $12
    db $ed                                        ; $5acd: $ed
    jp c, $020f                                   ; $5ace: $da $0f $02

    rst $38                                       ; $5ad1: $ff
    ld b, b                                       ; $5ad2: $40
    ld de, $07ec                                  ; $5ad3: $11 $ec $07
    or c                                          ; $5ad6: $b1
    ld c, a                                       ; $5ad7: $4f
    dec hl                                        ; $5ad8: $2b
    rst $10                                       ; $5ad9: $d7
    ld sp, $00cf                                  ; $5ada: $31 $cf $00
    or e                                          ; $5add: $b3
    rst $08                                       ; $5ade: $cf
    dec h                                         ; $5adf: $25
    rst $18                                       ; $5ae0: $df
    sub e                                         ; $5ae1: $93

jr_096_5ae2:
    rst $28                                       ; $5ae2: $ef
    ld b, a                                       ; $5ae3: $47
    rst $38                                       ; $5ae4: $ff
    ld [hl], d                                    ; $5ae5: $72
    inc hl                                        ; $5ae6: $23
    ld a, b                                       ; $5ae7: $78
    jr nc, @-$66                                  ; $5ae8: $30 $98

    ld a, [hl+]                                   ; $5aea: $2a
    sbc [hl]                                      ; $5aeb: $9e
    rrca                                          ; $5aec: $0f
    ld [$f408], sp                                ; $5aed: $08 $08 $f4
    rlca                                          ; $5af0: $07
    ld b, b                                       ; $5af1: $40
    nop                                           ; $5af2: $00
    nop                                           ; $5af3: $00
    or b                                          ; $5af4: $b0
    nop                                           ; $5af5: $00
    ld l, e                                       ; $5af6: $6b
    nop                                           ; $5af7: $00
    rst $30                                       ; $5af8: $f7
    db $10                                        ; $5af9: $10
    db $10                                        ; $5afa: $10
    push bc                                       ; $5afb: $c5

jr_096_5afc:
    jr nc, jr_096_5b1d                            ; $5afc: $30 $1f

    ld [hl+], a                                   ; $5afe: $22
    rlca                                          ; $5aff: $07
    add h                                         ; $5b00: $84
    nop                                           ; $5b01: $00
    ld e, e                                       ; $5b02: $5b
    and h                                         ; $5b03: $a4
    ld b, $11                                     ; $5b04: $06 $11
    or b                                          ; $5b06: $b0
    rrca                                          ; $5b07: $0f
    add c                                         ; $5b08: $81
    ld [hl], $0f                                  ; $5b09: $36 $0f
    nop                                           ; $5b0b: $00
    add c                                         ; $5b0c: $81
    nop                                           ; $5b0d: $00
    ld c, d                                       ; $5b0e: $4a
    nop                                           ; $5b0f: $00
    or a                                          ; $5b10: $b7
    inc c                                         ; $5b11: $0c
    jr nz, jr_096_5b5b                            ; $5b12: $20 $47

    db $10                                        ; $5b14: $10
    ld l, $07                                     ; $5b15: $2e $07

jr_096_5b17:
    ld d, l                                       ; $5b17: $55
    nop                                           ; $5b18: $00
    ei                                            ; $5b19: $fb
    jr nc, jr_096_5b2b                            ; $5b1a: $30 $0f

    ret nc                                        ; $5b1c: $d0

jr_096_5b1d:
    cpl                                           ; $5b1d: $2f
    call nz, $f04c                                ; $5b1e: $c4 $4c $f0
    ld b, c                                       ; $5b21: $41
    ld [$24d4], sp                                ; $5b22: $08 $d4 $24
    ld l, h                                       ; $5b25: $6c
    ld de, $097a                                  ; $5b26: $11 $7a $09
    add d                                         ; $5b29: $82
    ld a, l                                       ; $5b2a: $7d

jr_096_5b2b:
    ld b, b                                       ; $5b2b: $40
    cp a                                          ; $5b2c: $bf
    db $10                                        ; $5b2d: $10
    ld [$88ff], sp                                ; $5b2e: $08 $ff $88
    cp $06                                        ; $5b31: $fe $06
    ld bc, $88ff                                  ; $5b33: $01 $ff $88
    ld [hl], a                                    ; $5b36: $77
    ld b, h                                       ; $5b37: $44
    db $10                                        ; $5b38: $10
    jp c, Jump_096_4001                           ; $5b39: $da $01 $40

    rst $38                                       ; $5b3c: $ff
    ld a, [bc]                                    ; $5b3d: $0a
    add h                                         ; $5b3e: $84
    ld bc, $bf42                                  ; $5b3f: $01 $42 $bf
    and h                                         ; $5b42: $a4
    ld [de], a                                    ; $5b43: $12
    rrca                                          ; $5b44: $0f
    jr nz, jr_096_5b5d                            ; $5b45: $20 $16

    rla                                           ; $5b47: $17
    ld [$a6f7], sp                                ; $5b48: $08 $f7 $a6
    ld bc, $80f7                                  ; $5b4b: $01 $f7 $80

jr_096_5b4e:
    nop                                           ; $5b4e: $00
    ld a, a                                       ; $5b4f: $7f
    nop                                           ; $5b50: $00
    rst $38                                       ; $5b51: $ff
    inc h                                         ; $5b52: $24
    rst $18                                       ; $5b53: $df
    nop                                           ; $5b54: $00
    rst $38                                       ; $5b55: $ff
    ld hl, $df25                                  ; $5b56: $21 $25 $df
    db $10                                        ; $5b59: $10
    ld h, b                                       ; $5b5a: $60

jr_096_5b5b:
    db $10                                        ; $5b5b: $10
    db $10                                        ; $5b5c: $10

jr_096_5b5d:
    db $10                                        ; $5b5d: $10
    sbc [hl]                                      ; $5b5e: $9e
    nop                                           ; $5b5f: $00
    or d                                          ; $5b60: $b2
    sbc [hl]                                      ; $5b61: $9e
    rlca                                          ; $5b62: $07
    xor e                                         ; $5b63: $ab
    ldh a, [rSB]                                  ; $5b64: $f0 $01
    xor b                                         ; $5b66: $a8
    ld a, h                                       ; $5b67: $7c
    daa                                           ; $5b68: $27
    xor d                                         ; $5b69: $aa
    ld [hl-], a                                   ; $5b6a: $32
    dec h                                         ; $5b6b: $25
    ld a, [bc]                                    ; $5b6c: $0a
    inc c                                         ; $5b6d: $0c
    jr nz, jr_096_5b80                            ; $5b6e: $20 $10

    jr z, jr_096_5b4e                             ; $5b70: $28 $dc

    inc c                                         ; $5b72: $0c
    jr z, jr_096_5b95                             ; $5b73: $28 $20

    jr z, jr_096_5b17                             ; $5b75: $28 $a0

    inc e                                         ; $5b77: $1c
    jr nz, jr_096_5b82                            ; $5b78: $20 $08

    ld [$0fea], sp                                ; $5b7a: $08 $ea $0f
    ld [bc], a                                    ; $5b7d: $02
    rst $38                                       ; $5b7e: $ff
    ld b, l                                       ; $5b7f: $45

jr_096_5b80:
    ld b, b                                       ; $5b80: $40
    ld [hl], b                                    ; $5b81: $70

jr_096_5b82:
    nop                                           ; $5b82: $00
    db $10                                        ; $5b83: $10
    rst $38                                       ; $5b84: $ff
    ld b, h                                       ; $5b85: $44
    cp h                                          ; $5b86: $bc
    nop                                           ; $5b87: $00
    ld bc, $000c                                  ; $5b88: $01 $0c $00
    add b                                         ; $5b8b: $80
    sbc h                                         ; $5b8c: $9c
    nop                                           ; $5b8d: $00
    rst $30                                       ; $5b8e: $f7
    nop                                           ; $5b8f: $00
    rst $38                                       ; $5b90: $ff
    add b                                         ; $5b91: $80
    ld a, a                                       ; $5b92: $7f
    ld d, c                                       ; $5b93: $51
    cp [hl]                                       ; $5b94: $be

jr_096_5b95:
    dec b                                         ; $5b95: $05
    inc b                                         ; $5b96: $04
    ei                                            ; $5b97: $fb
    ld b, b                                       ; $5b98: $40
    cp a                                          ; $5b99: $bf
    jr nz, jr_096_5c12                            ; $5b9a: $20 $76

    nop                                           ; $5b9c: $00
    ld b, c                                       ; $5b9d: $41

jr_096_5b9e:
    sub b                                         ; $5b9e: $90
    db $10                                        ; $5b9f: $10
    inc b                                         ; $5ba0: $04
    inc b                                         ; $5ba1: $04
    ei                                            ; $5ba2: $fb
    add b                                         ; $5ba3: $80
    ld a, a                                       ; $5ba4: $7f
    ld bc, $0220                                  ; $5ba5: $01 $20 $02
    inc b                                         ; $5ba8: $04
    ei                                            ; $5ba9: $fb
    add sp, $14                                   ; $5baa: $e8 $14
    ld [$027c], sp                                ; $5bac: $08 $7c $02
    inc [hl]                                      ; $5baf: $34
    nop                                           ; $5bb0: $00
    inc b                                         ; $5bb1: $04
    ldh a, [rP1]                                  ; $5bb2: $f0 $00
    xor d                                         ; $5bb4: $aa
    nop                                           ; $5bb5: $00
    ld d, h                                       ; $5bb6: $54
    add sp, $7c                                   ; $5bb7: $e8 $7c
    jr nc, @+$62                                  ; $5bb9: $30 $60

    ld c, b                                       ; $5bbb: $48
    pop bc                                        ; $5bbc: $c1
    dec l                                         ; $5bbd: $2d
    ld b, b                                       ; $5bbe: $40
    sbc $07                                       ; $5bbf: $de $07
    adc d                                         ; $5bc1: $8a
    ld [hl], a                                    ; $5bc2: $77
    inc b                                         ; $5bc3: $04
    cpl                                           ; $5bc4: $2f
    ei                                            ; $5bc5: $fb
    db $10                                        ; $5bc6: $10
    ld c, [hl]                                    ; $5bc7: $4e
    ld [bc], a                                    ; $5bc8: $02
    add b                                         ; $5bc9: $80
    ld h, h                                       ; $5bca: $64
    ld a, [bc]                                    ; $5bcb: $0a
    ld a, h                                       ; $5bcc: $7c
    ld b, b                                       ; $5bcd: $40
    rrca                                          ; $5bce: $0f
    ld de, $217e                                  ; $5bcf: $11 $7e $21
    ret nz                                        ; $5bd2: $c0

    dec de                                        ; $5bd3: $1b
    rlca                                          ; $5bd4: $07
    ld c, b                                       ; $5bd5: $48
    inc d                                         ; $5bd6: $14
    dec de                                        ; $5bd7: $1b
    dec de                                        ; $5bd8: $1b
    inc sp                                        ; $5bd9: $33
    inc sp                                        ; $5bda: $33
    and c                                         ; $5bdb: $a1
    and c                                         ; $5bdc: $a1
    nop                                           ; $5bdd: $00
    pop hl                                        ; $5bde: $e1
    pop hl                                        ; $5bdf: $e1
    pop bc                                        ; $5be0: $c1
    pop bc                                        ; $5be1: $c1
    db $e3                                        ; $5be2: $e3
    db $e3                                        ; $5be3: $e3
    halt                                          ; $5be4: $76
    rst $30                                       ; $5be5: $f7
    pop de                                        ; $5be6: $d1
    ld d, $28                                     ; $5be7: $16 $28
    ld l, $1c                                     ; $5be9: $2e $1c
    rst $28                                       ; $5beb: $ef
    ld a, b                                       ; $5bec: $78
    rlca                                          ; $5bed: $07
    ei                                            ; $5bee: $fb
    rst $38                                       ; $5bef: $ff
    db $ed                                        ; $5bf0: $ed
    xor [hl]                                      ; $5bf1: $ae
    ld b, c                                       ; $5bf2: $41
    xor $38                                       ; $5bf3: $ee $38
    jr jr_096_5bfb                                ; $5bf5: $18 $04

jr_096_5bf7:
    jr c, jr_096_5bfb                             ; $5bf7: $38 $02

    jr jr_096_5bf7                                ; $5bf9: $18 $fc

jr_096_5bfb:
    adc b                                         ; $5bfb: $88
    dec d                                         ; $5bfc: $15
    inc b                                         ; $5bfd: $04
    jr jr_096_5b9e                                ; $5bfe: $18 $9e

    ld c, $f6                                     ; $5c00: $0e $f6
    ld e, d                                       ; $5c02: $5a
    cp $9e                                        ; $5c03: $fe $9e
    ld c, $ee                                     ; $5c05: $0e $ee
    and d                                         ; $5c07: $a2
    ld d, $0a                                     ; $5c08: $16 $0a
    dec bc                                        ; $5c0a: $0b
    cp $b2                                        ; $5c0b: $fe $b2
    inc d                                         ; $5c0d: $14
    cp $80                                        ; $5c0e: $fe $80
    ret nz                                        ; $5c10: $c0

    rlca                                          ; $5c11: $07

jr_096_5c12:
    rst $18                                       ; $5c12: $df
    rst $38                                       ; $5c13: $ff
    xor l                                         ; $5c14: $ad
    rst $28                                       ; $5c15: $ef
    ld e, a                                       ; $5c16: $5f
    rst $38                                       ; $5c17: $ff
    xor e                                         ; $5c18: $ab
    adc b                                         ; $5c19: $88
    ld a, [$fb04]                                 ; $5c1a: $fa $04 $fb
    rst $38                                       ; $5c1d: $ff
    db $dd                                        ; $5c1e: $dd
    adc $07                                       ; $5c1f: $ce $07
    xor $ff                                       ; $5c21: $ee $ff
    rst $08                                       ; $5c23: $cf
    rst $38                                       ; $5c24: $ff
    and d                                         ; $5c25: $a2

jr_096_5c26:
    inc b                                         ; $5c26: $04
    adc [hl]                                      ; $5c27: $8e
    inc c                                         ; $5c28: $0c
    ld d, $2a                                     ; $5c29: $16 $2a
    sbc $0c                                       ; $5c2b: $de $0c
    jr nc, jr_096_5c47                            ; $5c2d: $30 $18

    cp d                                          ; $5c2f: $ba
    inc l                                         ; $5c30: $2c
    add [hl]                                      ; $5c31: $86
    ld [$0dd4], sp                                ; $5c32: $08 $d4 $0d
    ld a, [c]                                     ; $5c35: $f2
    ld [hl], $1a                                  ; $5c36: $36 $1a
    sbc $0d                                       ; $5c38: $de $0d
    ld e, $58                                     ; $5c3a: $1e $58
    ld [hl+], a                                   ; $5c3c: $22
    ld [$ffef], sp                                ; $5c3d: $08 $ef $ff
    reti                                          ; $5c40: $d9


    dec b                                         ; $5c41: $05
    rst $28                                       ; $5c42: $ef
    ld d, h                                       ; $5c43: $54
    rst $20                                       ; $5c44: $e7
    ld c, $10                                     ; $5c45: $0e $10

jr_096_5c47:
    rst $18                                       ; $5c47: $df
    inc b                                         ; $5c48: $04
    ld d, b                                       ; $5c49: $50
    rst $20                                       ; $5c4a: $e7
    ld [bc], a                                    ; $5c4b: $02
    ld b, $e7                                     ; $5c4c: $06 $e7
    rst $38                                       ; $5c4e: $ff
    ld d, c                                       ; $5c4f: $51
    or $1c                                        ; $5c50: $f6 $1c
    nop                                           ; $5c52: $00
    ld a, [c]                                     ; $5c53: $f2
    inc b                                         ; $5c54: $04
    db $10                                        ; $5c55: $10
    rst $18                                       ; $5c56: $df
    rst $38                                       ; $5c57: $ff
    rst $08                                       ; $5c58: $cf
    add [hl]                                      ; $5c59: $86
    nop                                           ; $5c5a: $00
    and l                                         ; $5c5b: $a5
    inc b                                         ; $5c5c: $04
    jr jr_096_5c26                                ; $5c5d: $18 $c7

    inc c                                         ; $5c5f: $0c
    nop                                           ; $5c60: $00
    pop af                                        ; $5c61: $f1
    pop af                                        ; $5c62: $f1

jr_096_5c63:
    jr nc, jr_096_5c6d                            ; $5c63: $30 $08

    cp a                                          ; $5c65: $bf
    ld c, b                                       ; $5c66: $48
    db $10                                        ; $5c67: $10
    cp b                                          ; $5c68: $b8
    inc d                                         ; $5c69: $14
    dec bc                                        ; $5c6a: $0b
    rst $28                                       ; $5c6b: $ef
    ld b, b                                       ; $5c6c: $40

jr_096_5c6d:
    ld b, $a0                                     ; $5c6d: $06 $a0
    ld e, d                                       ; $5c6f: $5a
    dec de                                        ; $5c70: $1b
    rrca                                          ; $5c71: $0f
    ccf                                           ; $5c72: $3f
    ccf                                           ; $5c73: $3f
    db $fd                                        ; $5c74: $fd
    cp e                                          ; $5c75: $bb
    or e                                          ; $5c76: $b3
    ld b, $5f                                     ; $5c77: $06 $5f
    ld a, d                                       ; $5c79: $7a
    dec h                                         ; $5c7a: $25
    ld h, d                                       ; $5c7b: $62
    ld c, b                                       ; $5c7c: $48
    dec e                                         ; $5c7d: $1d
    ld c, c                                       ; $5c7e: $49
    rst $18                                       ; $5c7f: $df
    adc [hl]                                      ; $5c80: $8e
    db $10                                        ; $5c81: $10
    ld d, e                                       ; $5c82: $53
    ld b, $e5                                     ; $5c83: $06 $e5
    add [hl]                                      ; $5c85: $86
    ld b, $dd                                     ; $5c86: $06 $dd
    ld b, $88                                     ; $5c88: $06 $88
    ld b, $e0                                     ; $5c8a: $06 $e0
    ldh [$8e], a                                  ; $5c8c: $e0 $8e
    jr @-$20                                      ; $5c8e: $18 $de

    ld a, [$4000]                                 ; $5c90: $fa $00 $40
    adc $04                                       ; $5c93: $ce $04
    db $10                                        ; $5c95: $10
    ld b, $06                                     ; $5c96: $06 $06
    inc e                                         ; $5c98: $1c
    inc e                                         ; $5c99: $1c
    cp a                                          ; $5c9a: $bf
    cp a                                          ; $5c9b: $bf
    ld b, b                                       ; $5c9c: $40
    rst $30                                       ; $5c9d: $f7
    ld c, h                                       ; $5c9e: $4c
    nop                                           ; $5c9f: $00
    db $fc                                        ; $5ca0: $fc
    db $fc                                        ; $5ca1: $fc
    ldh a, [$f0]                                  ; $5ca2: $f0 $f0
    ret nz                                        ; $5ca4: $c0

    ret nz                                        ; $5ca5: $c0

    ld [hl], $fe                                  ; $5ca6: $36 $fe
    db $fd                                        ; $5ca8: $fd
    ld l, $04                                     ; $5ca9: $2e $04
    ret nz                                        ; $5cab: $c0

    ld d, $ff                                     ; $5cac: $16 $ff
    ret nz                                        ; $5cae: $c0

    ld b, $3d                                     ; $5caf: $06 $3d
    inc c                                         ; $5cb1: $0c
    cp $c8                                        ; $5cb2: $fe $c8
    inc b                                         ; $5cb4: $04
    ld e, b                                       ; $5cb5: $58
    adc $06                                       ; $5cb6: $ce $06
    push af                                       ; $5cb8: $f5
    push af                                       ; $5cb9: $f5
    add b                                         ; $5cba: $80
    ld b, c                                       ; $5cbb: $41
    db $fc                                        ; $5cbc: $fc
    xor d                                         ; $5cbd: $aa
    xor b                                         ; $5cbe: $a8
    ld a, $54                                     ; $5cbf: $3e $54

jr_096_5cc1:
    ld d, h                                       ; $5cc1: $54
    ld h, $08                                     ; $5cc2: $26 $08
    ld [bc], a                                    ; $5cc4: $02
    jr jr_096_5c63                                ; $5cc5: $18 $9c

    ld d, c                                       ; $5cc7: $51
    push de                                       ; $5cc8: $d5
    ld bc, $2818                                  ; $5cc9: $01 $18 $28
    cp $00                                        ; $5ccc: $fe $00
    db $fc                                        ; $5cce: $fc
    ld [$54e8], a                                 ; $5ccf: $ea $e8 $54
    ld d, h                                       ; $5cd2: $54
    ld a, [$fbf8]                                 ; $5cd3: $fa $f8 $fb
    jr z, @+$01                                   ; $5cd6: $28 $ff

    xor $1f                                       ; $5cd8: $ee $1f
    rlca                                          ; $5cda: $07
    or a                                          ; $5cdb: $b7
    ld [hl], $06                                  ; $5cdc: $36 $06
    rst $28                                       ; $5cde: $ef
    rst $38                                       ; $5cdf: $ff
    push de                                       ; $5ce0: $d5
    ldh [$30], a                                  ; $5ce1: $e0 $30
    ld b, $88                                     ; $5ce3: $06 $88
    rrca                                          ; $5ce5: $0f
    adc h                                         ; $5ce6: $8c
    rrca                                          ; $5ce7: $0f
    ret nz                                        ; $5ce8: $c0

    ret nz                                        ; $5ce9: $c0

    ldh [$e0], a                                  ; $5cea: $e0 $e0
    ld a, b                                       ; $5cec: $78
    nop                                           ; $5ced: $00
    ld a, b                                       ; $5cee: $78
    adc $ce                                       ; $5cef: $ce $ce
    rst $28                                       ; $5cf1: $ef
    rst $28                                       ; $5cf2: $ef
    rst $00                                       ; $5cf3: $c7
    rst $00                                       ; $5cf4: $c7
    ret                                           ; $5cf5: $c9


    jr jr_096_5cc1                                ; $5cf6: $18 $c9

    sbc $de                                       ; $5cf8: $de $de
    adc h                                         ; $5cfa: $8c
    ld [$0fa4], sp                                ; $5cfb: $08 $a4 $0f
    ld b, [hl]                                    ; $5cfe: $46
    add $b0                                       ; $5cff: $c6 $b0
    ld bc, $f8f0                                  ; $5d01: $01 $f0 $f8
    ld hl, sp+$7c                                 ; $5d04: $f8 $7c
    ld a, h                                       ; $5d06: $7c
    jr c, jr_096_5d41                             ; $5d07: $38 $38

    ld c, a                                       ; $5d09: $4f
    inc hl                                        ; $5d0a: $23
    nop                                           ; $5d0b: $00
    inc bc                                        ; $5d0c: $03
    ld b, b                                       ; $5d0d: $40
    ld b, c                                       ; $5d0e: $41
    nop                                           ; $5d0f: $00
    inc bc                                        ; $5d10: $03
    nop                                           ; $5d11: $00
    dec bc                                        ; $5d12: $0b
    nop                                           ; $5d13: $00
    ld bc, $0005                                  ; $5d14: $01 $05 $00
    ld bc, $2928                                  ; $5d17: $01 $28 $29
    add b                                         ; $5d1a: $80
    add b                                         ; $5d1b: $80
    ld l, h                                       ; $5d1c: $6c
    rrca                                          ; $5d1d: $0f
    ei                                            ; $5d1e: $fb
    add l                                         ; $5d1f: $85
    nop                                           ; $5d20: $00
    sub h                                         ; $5d21: $94
    nop                                           ; $5d22: $00
    db $e4                                        ; $5d23: $e4
    inc c                                         ; $5d24: $0c
    db $ec                                        ; $5d25: $ec
    inc d                                         ; $5d26: $14
    jp nz, $fd00                                  ; $5d27: $c2 $00 $fd

    or l                                          ; $5d2a: $b5
    nop                                           ; $5d2b: $00
    inc b                                         ; $5d2c: $04
    ld [$8ac7], sp                                ; $5d2d: $08 $c7 $8a
    inc b                                         ; $5d30: $04
    ld bc, $ec00                                  ; $5d31: $01 $00 $ec
    db $fc                                        ; $5d34: $fc
    cp $01                                        ; $5d35: $fe $01
    nop                                           ; $5d37: $00
    inc b                                         ; $5d38: $04
    ld a, [bc]                                    ; $5d39: $0a
    xor h                                         ; $5d3a: $ac
    ld l, $94                                     ; $5d3b: $2e $94
    ld bc, $d522                                  ; $5d3d: $01 $22 $d5
    rst $38                                       ; $5d40: $ff

jr_096_5d41:
    ld c, [hl]                                    ; $5d41: $4e
    ld [de], a                                    ; $5d42: $12
    or $81                                        ; $5d43: $f6 $81
    ld a, [de]                                    ; $5d45: $1a
    xor d                                         ; $5d46: $aa
    rst $38                                       ; $5d47: $ff
    nop                                           ; $5d48: $00
    ld d, l                                       ; $5d49: $55
    rst $38                                       ; $5d4a: $ff
    rst $38                                       ; $5d4b: $ff
    add e                                         ; $5d4c: $83
    add e                                         ; $5d4d: $83
    pop bc                                        ; $5d4e: $c1
    pop bc                                        ; $5d4f: $c1
    ldh a, [$80]                                  ; $5d50: $f0 $80
    ld [hl], d                                    ; $5d52: $72
    nop                                           ; $5d53: $00
    or $5c                                        ; $5d54: $f6 $5c
    ei                                            ; $5d56: $fb
    cp [hl]                                       ; $5d57: $be
    cp $5e                                        ; $5d58: $fe $5e
    rst $30                                       ; $5d5a: $f7
    halt                                          ; $5d5b: $76
    rst $30                                       ; $5d5c: $f7
    jr nz, jr_096_5d9b                            ; $5d5d: $20 $3c

    inc a                                         ; $5d5f: $3c
    ld a, [de]                                    ; $5d60: $1a
    dec hl                                        ; $5d61: $2b
    ld b, h                                       ; $5d62: $44
    ld a, [$0830]                                 ; $5d63: $fa $30 $08
    dec sp                                        ; $5d66: $3b
    inc [hl]                                      ; $5d67: $34
    ld e, a                                       ; $5d68: $5f
    sbc $40                                       ; $5d69: $de $40
    jr jr_096_5d7a                                ; $5d6b: $18 $0d

    rla                                           ; $5d6d: $17
    push af                                       ; $5d6e: $f5
    sbc l                                         ; $5d6f: $9d
    ld bc, $3aa1                                  ; $5d70: $01 $a1 $3a
    ld e, b                                       ; $5d73: $58
    ld [$085c], sp                                ; $5d74: $08 $5c $08
    ld a, [$a9f8]                                 ; $5d77: $fa $f8 $a9

jr_096_5d7a:
    nop                                           ; $5d7a: $00
    pop af                                        ; $5d7b: $f1
    ld d, $3e                                     ; $5d7c: $16 $3e
    ld a, [bc]                                    ; $5d7e: $0a
    ret c                                         ; $5d7f: $d8

    add hl, bc                                    ; $5d80: $09
    ld a, [de]                                    ; $5d81: $1a
    ld a, [bc]                                    ; $5d82: $0a
    or $f7                                        ; $5d83: $f6 $f7
    db $e3                                        ; $5d85: $e3
    add b                                         ; $5d86: $80
    ld bc, $e700                                  ; $5d87: $01 $00 $e7
    rst $20                                       ; $5d8a: $e7
    db $ed                                        ; $5d8b: $ed
    db $ed                                        ; $5d8c: $ed
    db $fc                                        ; $5d8d: $fc
    xor b                                         ; $5d8e: $a8
    ld a, [$5000]                                 ; $5d8f: $fa $00 $50
    push af                                       ; $5d92: $f5
    ldh [$e2], a                                  ; $5d93: $e0 $e2
    ldh [$c0], a                                  ; $5d95: $e0 $c0
    ret nz                                        ; $5d97: $c0

    pop bc                                        ; $5d98: $c1
    nop                                           ; $5d99: $00
    pop bc                                        ; $5d9a: $c1

jr_096_5d9b:
    pop hl                                        ; $5d9b: $e1
    pop hl                                        ; $5d9c: $e1
    db $e3                                        ; $5d9d: $e3
    db $e3                                        ; $5d9e: $e3
    rst $28                                       ; $5d9f: $ef
    rst $28                                       ; $5da0: $ef
    db $fd                                        ; $5da1: $fd
    nop                                           ; $5da2: $00
    db $fd                                        ; $5da3: $fd
    db $fd                                        ; $5da4: $fd
    ld hl, sp-$44                                 ; $5da5: $f8 $bc
    inc a                                         ; $5da7: $3c
    ld [hl], $3e                                  ; $5da8: $36 $3e
    ld a, [de]                                    ; $5daa: $1a
    nop                                           ; $5dab: $00
    ld e, $fe                                     ; $5dac: $1e $fe
    cp $9b                                        ; $5dae: $fe $9b
    sbc a                                         ; $5db0: $9f
    dec e                                         ; $5db1: $1d
    rra                                           ; $5db2: $1f
    ld e, $00                                     ; $5db3: $1e $00
    rra                                           ; $5db5: $1f
    db $dd                                        ; $5db6: $dd
    sbc a                                         ; $5db7: $9f
    ei                                            ; $5db8: $fb
    ld d, c                                       ; $5db9: $51
    db $fd                                        ; $5dba: $fd
    xor c                                         ; $5dbb: $a9
    rst $38                                       ; $5dbc: $ff
    inc d                                         ; $5dbd: $14
    ld d, l                                       ; $5dbe: $55
    db $fd                                        ; $5dbf: $fd
    xor b                                         ; $5dc0: $a8
    ld d, h                                       ; $5dc1: $54
    db $10                                        ; $5dc2: $10
    push de                                       ; $5dc3: $d5
    call nz, $fe08                                ; $5dc4: $c4 $08 $fe
    xor d                                         ; $5dc7: $aa
    dec b                                         ; $5dc8: $05
    cp $fe                                        ; $5dc9: $fe $fe
    xor $fe                                       ; $5dcb: $ee $fe
    sbc $04                                       ; $5dcd: $de $04
    db $10                                        ; $5dcf: $10
    cp [hl]                                       ; $5dd0: $be
    ld [bc], a                                    ; $5dd1: $02
    ld b, $f2                                     ; $5dd2: $06 $f2
    jp nc, Jump_096_5403                          ; $5dd4: $d2 $03 $54

    inc d                                         ; $5dd7: $14
    ret c                                         ; $5dd8: $d8

    dec c                                         ; $5dd9: $0d
    sub b                                         ; $5dda: $90
    inc c                                         ; $5ddb: $0c
    ld bc, $fe01                                  ; $5ddc: $01 $01 $fe
    add hl, bc                                    ; $5ddf: $09
    ld d, a                                       ; $5de0: $57
    sbc b                                         ; $5de1: $98
    and [hl]                                      ; $5de2: $a6
    daa                                           ; $5de3: $27
    rra                                           ; $5de4: $1f
    rra                                           ; $5de5: $1f
    inc [hl]                                      ; $5de6: $34
    rlca                                          ; $5de7: $07
    ld a, [c]                                     ; $5de8: $f2
    inc h                                         ; $5de9: $24
    db $fc                                        ; $5dea: $fc
    db $fc                                        ; $5deb: $fc
    add b                                         ; $5dec: $80

jr_096_5ded:
    ld [hl-], a                                   ; $5ded: $32
    add b                                         ; $5dee: $80
    rst $38                                       ; $5def: $ff
    ld c, b                                       ; $5df0: $48
    ld [bc], a                                    ; $5df1: $02
    inc e                                         ; $5df2: $1c
    jr jr_096_5ded                                ; $5df3: $18 $f8

    ld hl, sp+$2c                                 ; $5df5: $f8 $2c
    ld [$20fe], sp                                ; $5df7: $08 $fe $20
    cp $ab                                        ; $5dfa: $fe $ab
    ret nc                                        ; $5dfc: $d0

    rla                                           ; $5dfd: $17
    ldh a, [$f0]                                  ; $5dfe: $f0 $f0
    nop                                           ; $5e00: $00
    nop                                           ; $5e01: $00
    rlca                                          ; $5e02: $07
    ld b, c                                       ; $5e03: $41
    rlca                                          ; $5e04: $07
    ld [$8008], sp                                ; $5e05: $08 $08 $80
    add b                                         ; $5e08: $80
    ccf                                           ; $5e09: $3f
    ccf                                           ; $5e0a: $3f
    ld [$15a0], a                                 ; $5e0b: $ea $a0 $15
    inc h                                         ; $5e0e: $24
    ldh [$e0], a                                  ; $5e0f: $e0 $e0
    db $fc                                        ; $5e11: $fc
    inc c                                         ; $5e12: $0c
    rrca                                          ; $5e13: $0f
    rrca                                          ; $5e14: $0f
    xor d                                         ; $5e15: $aa
    dec e                                         ; $5e16: $1d
    add b                                         ; $5e17: $80
    add b                                         ; $5e18: $80
    adc c                                         ; $5e19: $89
    ld a, [bc]                                    ; $5e1a: $0a
    dec c                                         ; $5e1b: $0d
    ld a, a                                       ; $5e1c: $7f
    ld a, a                                       ; $5e1d: $7f
    cp $1f                                        ; $5e1e: $fe $1f
    inc hl                                        ; $5e20: $23
    ld bc, $1a01                                  ; $5e21: $01 $01 $1a
    dec c                                         ; $5e24: $0d
    sbc h                                         ; $5e25: $9c
    jr c, jr_096_5e30                             ; $5e26: $38 $08

    cp $fe                                        ; $5e28: $fe $fe
    add hl, de                                    ; $5e2a: $19
    add hl, de                                    ; $5e2b: $19
    ldh a, [rNR32]                                ; $5e2c: $f0 $1c
    ld a, h                                       ; $5e2e: $7c
    dec d                                         ; $5e2f: $15

jr_096_5e30:
    db $fd                                        ; $5e30: $fd
    add b                                         ; $5e31: $80
    ld sp, hl                                     ; $5e32: $f9
    ld h, [hl]                                    ; $5e33: $66
    ld c, $02                                     ; $5e34: $0e $02
    inc b                                         ; $5e36: $04
    ld a, [c]                                     ; $5e37: $f2
    dec bc                                        ; $5e38: $0b
    db $ec                                        ; $5e39: $ec
    dec bc                                        ; $5e3a: $0b
    call nz, $fc0a                                ; $5e3b: $c4 $0a $fc
    db $fc                                        ; $5e3e: $fc
    ld c, h                                       ; $5e3f: $4c
    dec c                                         ; $5e40: $0d
    inc [hl]                                      ; $5e41: $34
    ldh [$e0], a                                  ; $5e42: $e0 $e0
    ret z                                         ; $5e44: $c8

    ld a, [hl+]                                   ; $5e45: $2a
    inc d                                         ; $5e46: $14
    inc a                                         ; $5e47: $3c
    xor e                                         ; $5e48: $ab
    db $10                                        ; $5e49: $10
    inc d                                         ; $5e4a: $14
    rra                                           ; $5e4b: $1f
    rra                                           ; $5e4c: $1f
    nop                                           ; $5e4d: $00
    ld bc, $8101                                  ; $5e4e: $01 $01 $81
    add c                                         ; $5e51: $81
    ld bc, $0301                                  ; $5e52: $01 $01 $03
    inc bc                                        ; $5e55: $03
    inc a                                         ; $5e56: $3c
    rst $30                                       ; $5e57: $f7
    rst $30                                       ; $5e58: $f7
    inc h                                         ; $5e59: $24
    ld e, b                                       ; $5e5a: $58
    and h                                         ; $5e5b: $a4
    dec bc                                        ; $5e5c: $0b
    jr nc, jr_096_5e97                            ; $5e5d: $30 $38

    sub d                                         ; $5e5f: $92
    dec c                                         ; $5e60: $0d
    cp $fe                                        ; $5e61: $fe $fe
    sub b                                         ; $5e63: $90
    sub l                                         ; $5e64: $95
    ld a, [bc]                                    ; $5e65: $0a
    inc bc                                        ; $5e66: $03
    inc bc                                        ; $5e67: $03
    sbc [hl]                                      ; $5e68: $9e
    dec c                                         ; $5e69: $0d
    ld bc, $0f01                                  ; $5e6a: $01 $01 $0f
    rrca                                          ; $5e6d: $0f
    ld de, $3f3d                                  ; $5e6e: $11 $3d $3f
    ei                                            ; $5e71: $fb
    ld h, b                                       ; $5e72: $60
    ld [de], a                                    ; $5e73: $12
    ld a, a                                       ; $5e74: $7f
    ld a, a                                       ; $5e75: $7f

jr_096_5e76:
    rst $28                                       ; $5e76: $ef
    and $03                                       ; $5e77: $e6 $03
    add b                                         ; $5e79: $80
    ld h, $3e                                     ; $5e7a: $26 $3e
    ld a, l                                       ; $5e7c: $7d

jr_096_5e7d:
    ld a, a                                       ; $5e7d: $7f
    rrca                                          ; $5e7e: $0f
    rrca                                          ; $5e7f: $0f
    inc bc                                        ; $5e80: $03
    inc bc                                        ; $5e81: $03
    dec a                                         ; $5e82: $3d
    jr nz, jr_096_5ec4                            ; $5e83: $20 $3f

    db $eb                                        ; $5e85: $eb
    ld [hl], b                                    ; $5e86: $70
    ld b, $08                                     ; $5e87: $06 $08
    ld [$0404], sp                                ; $5e89: $08 $04 $04
    ld a, e                                       ; $5e8c: $7b
    inc c                                         ; $5e8d: $0c
    rst $38                                       ; $5e8e: $ff
    rst $10                                       ; $5e8f: $d7
    rst $38                                       ; $5e90: $ff
    adc a                                         ; $5e91: $8f
    ld h, b                                       ; $5e92: $60
    inc d                                         ; $5e93: $14
    dec b                                         ; $5e94: $05
    ld c, $3f                                     ; $5e95: $0e $3f

jr_096_5e97:
    ccf                                           ; $5e97: $3f
    inc bc                                        ; $5e98: $03
    db $10                                        ; $5e99: $10
    rst $38                                       ; $5e9a: $ff
    add d                                         ; $5e9b: $82
    ld a, a                                       ; $5e9c: $7f
    jr z, jr_096_5e76                             ; $5e9d: $28 $d7

    ldh a, [rDIV]                                 ; $5e9f: $f0 $04
    cp b                                          ; $5ea1: $b8
    db $10                                        ; $5ea2: $10
    rst $08                                       ; $5ea3: $cf
    ld a, [de]                                    ; $5ea4: $1a
    rrca                                          ; $5ea5: $0f
    jr nz, @+$11                                  ; $5ea6: $20 $0f

    ld [hl+], a                                   ; $5ea8: $22
    rst $18                                       ; $5ea9: $df
    adc d                                         ; $5eaa: $8a
    dec d                                         ; $5eab: $15
    ld e, d                                       ; $5eac: $5a
    ld de, $2802                                  ; $5ead: $11 $02 $28
    ld a, [de]                                    ; $5eb0: $1a
    jr jr_096_5eb9                                ; $5eb1: $18 $06

    add b                                         ; $5eb3: $80
    rst $38                                       ; $5eb4: $ff
    add hl, bc                                    ; $5eb5: $09
    or $00                                        ; $5eb6: $f6 $00
    ld [hl], d                                    ; $5eb8: $72

jr_096_5eb9:
    ld bc, $1828                                  ; $5eb9: $01 $28 $18
    db $10                                        ; $5ebc: $10
    ld h, h                                       ; $5ebd: $64
    rst $28                                       ; $5ebe: $ef
    ld l, $10                                     ; $5ebf: $2e $10
    cp h                                          ; $5ec1: $bc
    dec d                                         ; $5ec2: $15
    adc c                                         ; $5ec3: $89

jr_096_5ec4:
    ld a, [hl]                                    ; $5ec4: $7e
    halt                                          ; $5ec5: $76
    ld c, $10                                     ; $5ec6: $0e $10
    rst $28                                       ; $5ec8: $ef
    ld hl, $fd82                                  ; $5ec9: $21 $82 $fd
    db $cc, $0d, $12                              ; $5ecc: $cc $0d $12
    db $ed                                        ; $5ecf: $ed
    adc b                                         ; $5ed0: $88
    ld [hl], a                                    ; $5ed1: $77
    adc b                                         ; $5ed2: $88
    ld c, $dc                                     ; $5ed3: $0e $dc
    jp z, $d21c                                   ; $5ed5: $ca $1c $d2

    inc l                                         ; $5ed8: $2c
    ld a, a                                       ; $5ed9: $7f
    ld h, b                                       ; $5eda: $60
    inc d                                         ; $5edb: $14
    inc b                                         ; $5edc: $04
    jr jr_096_5e7d                                ; $5edd: $18 $9e

    ld a, [bc]                                    ; $5edf: $0a
    ld sp, hl                                     ; $5ee0: $f9
    rst $38                                       ; $5ee1: $ff
    ld h, d                                       ; $5ee2: $62
    ccf                                           ; $5ee3: $3f
    db $ed                                        ; $5ee4: $ed
    inc b                                         ; $5ee5: $04
    inc b                                         ; $5ee6: $04
    ld [$ff2f], sp                                ; $5ee7: $08 $2f $ff
    cp a                                          ; $5eea: $bf
    inc b                                         ; $5eeb: $04
    nop                                           ; $5eec: $00
    sbc a                                         ; $5eed: $9f
    add e                                         ; $5eee: $83
    ld hl, $f900                                  ; $5eef: $21 $00 $f9
    rst $38                                       ; $5ef2: $ff
    db $fd                                        ; $5ef3: $fd
    ei                                            ; $5ef4: $fb
    ld hl, sp+$04                                 ; $5ef5: $f8 $04
    jr nc, jr_096_5f68                            ; $5ef7: $30 $6f

    ld e, h                                       ; $5ef9: $5c
    jp nc, $0f36                                  ; $5efa: $d2 $36 $0f

    jp c, $ea0b                                   ; $5efd: $da $0b $ea

    sub h                                         ; $5f00: $94
    inc bc                                        ; $5f01: $03
    ld [$04ea], a                                 ; $5f02: $ea $ea $04
    jr @-$1c                                      ; $5f05: $18 $e2

    call nc, Call_000_0808                        ; $5f07: $d4 $08 $08
    add e                                         ; $5f0a: $83

jr_096_5f0b:
    ld [bc], a                                    ; $5f0b: $02
    ld [c], a                                     ; $5f0c: $e2
    add a                                         ; $5f0d: $87
    ld [bc], a                                    ; $5f0e: $02
    ldh [rSC], a                                  ; $5f0f: $e0 $02
    ld [$e0ef], sp                                ; $5f11: $08 $ef $e0
    jr jr_096_5f0b                                ; $5f14: $18 $f5

    ldh [$ea], a                                  ; $5f16: $e0 $ea
    inc b                                         ; $5f18: $04
    jr z, @+$42                                   ; $5f19: $28 $40

    ld h, b                                       ; $5f1b: $60
    cp a                                          ; $5f1c: $bf
    ld d, l                                       ; $5f1d: $55
    ld d, l                                       ; $5f1e: $55
    ld a, h                                       ; $5f1f: $7c
    xor d                                         ; $5f20: $aa
    xor h                                         ; $5f21: $ac
    ld a, [hl-]                                   ; $5f22: $3a
    add h                                         ; $5f23: $84
    rla                                           ; $5f24: $17
    inc c                                         ; $5f25: $0c
    add hl, hl                                    ; $5f26: $29
    xor [hl]                                      ; $5f27: $ae
    ld a, [bc]                                    ; $5f28: $0a
    or d                                          ; $5f29: $b2
    ld [de], a                                    ; $5f2a: $12
    xor e                                         ; $5f2b: $ab
    rst $38                                       ; $5f2c: $ff
    inc d                                         ; $5f2d: $14
    ld d, l                                       ; $5f2e: $55
    ei                                            ; $5f2f: $fb

jr_096_5f30:
    cp $c6                                        ; $5f30: $fe $c6
    inc c                                         ; $5f32: $0c
    ld l, a                                       ; $5f33: $6f
    and h                                         ; $5f34: $a4
    rlca                                          ; $5f35: $07
    rst $08                                       ; $5f36: $cf
    push bc                                       ; $5f37: $c5
    nop                                           ; $5f38: $00
    jp z, $edcf                                   ; $5f39: $ca $cf $ed

    ld b, a                                       ; $5f3c: $47
    rst $18                                       ; $5f3d: $df
    adc d                                         ; $5f3e: $8a
    cp a                                          ; $5f3f: $bf
    sub l                                         ; $5f40: $95
    nop                                           ; $5f41: $00
    rst $20                                       ; $5f42: $e7
    and $cf                                       ; $5f43: $e6 $cf
    rst $08                                       ; $5f45: $cf
    adc e                                         ; $5f46: $8b
    adc e                                         ; $5f47: $8b
    inc c                                         ; $5f48: $0c
    inc c                                         ; $5f49: $0c
    nop                                           ; $5f4a: $00
    add hl, bc                                    ; $5f4b: $09
    add hl, bc                                    ; $5f4c: $09
    add hl, de                                    ; $5f4d: $19
    add hl, de                                    ; $5f4e: $19
    ld [de], a                                    ; $5f4f: $12
    inc de                                        ; $5f50: $13
    inc sp                                        ; $5f51: $33
    inc sp                                        ; $5f52: $33
    nop                                           ; $5f53: $00
    ld h, l                                       ; $5f54: $65
    ld h, a                                       ; $5f55: $67
    ld c, e                                       ; $5f56: $4b
    ld c, a                                       ; $5f57: $4f
    rst $10                                       ; $5f58: $d7
    rst $18                                       ; $5f59: $df
    ldh a, [rIE]                                  ; $5f5a: $f0 $ff
    add l                                         ; $5f5c: $85
    ld l, h                                       ; $5f5d: $6c
    jr nc, @+$01                                  ; $5f5e: $30 $ff

    db $e4                                        ; $5f60: $e4
    ei                                            ; $5f61: $fb
    ldh [$a4], a                                  ; $5f62: $e0 $a4
    ld b, c                                       ; $5f64: $41
    ld bc, $5628                                  ; $5f65: $01 $28 $56

jr_096_5f68:
    ld hl, sp-$64                                 ; $5f68: $f8 $9c
    ld l, $3b                                     ; $5f6a: $2e $3b
    ld a, $c4                                     ; $5f6c: $3e $c4
    ld a, $98                                     ; $5f6e: $3e $98
    ld d, $10                                     ; $5f70: $16 $10
    ld h, b                                       ; $5f72: $60
    and d                                         ; $5f73: $a2
    ld [bc], a                                    ; $5f74: $02
    ld d, a                                       ; $5f75: $57
    ld a, [bc]                                    ; $5f76: $0a
    ld [bc], a                                    ; $5f77: $02
    xor d                                         ; $5f78: $aa
    ld [bc], a                                    ; $5f79: $02
    inc b                                         ; $5f7a: $04
    ld bc, $0830                                  ; $5f7b: $01 $30 $08
    ld bc, $0020                                  ; $5f7e: $01 $20 $00
    nop                                           ; $5f81: $00
    nop                                           ; $5f82: $00
    dec h                                         ; $5f83: $25
    jr nz, jr_096_5f30                            ; $5f84: $20 $aa

    jr nz, jr_096_5fdd                            ; $5f86: $20 $55

    ld b, b                                       ; $5f88: $40
    db $eb                                        ; $5f89: $eb
    ld b, b                                       ; $5f8a: $40
    ld b, c                                       ; $5f8b: $41
    inc b                                         ; $5f8c: $04
    nop                                           ; $5f8d: $00
    pop bc                                        ; $5f8e: $c1
    db $d3                                        ; $5f8f: $d3
    add e                                         ; $5f90: $83
    add e                                         ; $5f91: $83
    add e                                         ; $5f92: $83
    add d                                         ; $5f93: $82
    nop                                           ; $5f94: $00
    add e                                         ; $5f95: $83
    add a                                         ; $5f96: $87
    add a                                         ; $5f97: $87
    ld b, $07                                     ; $5f98: $06 $07
    cpl                                           ; $5f9a: $2f
    rlca                                          ; $5f9b: $07
    ld e, [hl]                                    ; $5f9c: $5e
    jr nc, jr_096_5fae                            ; $5f9d: $30 $0f

    dec [hl]                                      ; $5f9f: $35
    ld c, l                                       ; $5fa0: $4d
    add hl, bc                                    ; $5fa1: $09
    or d                                          ; $5fa2: $b2
    dec c                                         ; $5fa3: $0d
    rst $28                                       ; $5fa4: $ef
    sbc a                                         ; $5fa5: $9f
    sbc a                                         ; $5fa6: $9f
    rra                                           ; $5fa7: $1f
    daa                                           ; $5fa8: $27
    rra                                           ; $5fa9: $1f
    ccf                                           ; $5faa: $3f
    ld bc, $7f00                                  ; $5fab: $01 $00 $7f

jr_096_5fae:
    cpl                                           ; $5fae: $2f
    ld a, b                                       ; $5faf: $78
    ld a, b                                       ; $5fb0: $78
    and b                                         ; $5fb1: $a0
    rrca                                          ; $5fb2: $0f
    xor h                                         ; $5fb3: $ac
    ccf                                           ; $5fb4: $3f
    ldh [$ae], a                                  ; $5fb5: $e0 $ae
    jr nc, @+$78                                  ; $5fb7: $30 $76

    ld [bc], a                                    ; $5fb9: $02
    ld [bc], a                                    ; $5fba: $02
    ld [$0707], sp                                ; $5fbb: $08 $07 $07
    dec bc                                        ; $5fbe: $0b
    rrca                                          ; $5fbf: $0f
    rla                                           ; $5fc0: $17
    nop                                           ; $5fc1: $00
    rra                                           ; $5fc2: $1f
    rra                                           ; $5fc3: $1f
    rra                                           ; $5fc4: $1f
    scf                                           ; $5fc5: $37
    ccf                                           ; $5fc6: $3f
    ld l, a                                       ; $5fc7: $6f
    ld a, a                                       ; $5fc8: $7f
    ld e, a                                       ; $5fc9: $5f
    nop                                           ; $5fca: $00
    ld a, a                                       ; $5fcb: $7f
    ld l, a                                       ; $5fcc: $6f
    ld a, a                                       ; $5fcd: $7f
    ccf                                           ; $5fce: $3f
    rla                                           ; $5fcf: $17
    ld a, l                                       ; $5fd0: $7d
    cpl                                           ; $5fd1: $2f
    ei                                            ; $5fd2: $fb
    ld a, [hl]                                    ; $5fd3: $7e
    ld e, a                                       ; $5fd4: $5f
    sbc a                                         ; $5fd5: $9f
    ld bc, $1233                                  ; $5fd6: $01 $33 $12
    ld l, $09                                     ; $5fd9: $2e $09
    ld [hl-], a                                   ; $5fdb: $32
    add hl, sp                                    ; $5fdc: $39

jr_096_5fdd:
    xor d                                         ; $5fdd: $aa
    ld l, $a0                                     ; $5fde: $2e $a0
    ld l, [hl]                                    ; $5fe0: $6e
    ei                                            ; $5fe1: $fb
    ld a, [c]                                     ; $5fe2: $f2
    ld h, $26                                     ; $5fe3: $26 $26
    adc b                                         ; $5fe5: $88
    ld a, [de]                                    ; $5fe6: $1a
    ld l, h                                       ; $5fe7: $6c
    ld a, [hl+]                                   ; $5fe8: $2a
    ld a, [bc]                                    ; $5fe9: $0a
    ld e, d                                       ; $5fea: $5a
    ld d, l                                       ; $5feb: $55
    ld d, l                                       ; $5fec: $55
    ld a, [hl-]                                   ; $5fed: $3a
    ld e, b                                       ; $5fee: $58
    rst $28                                       ; $5fef: $ef
    ld c, $ff                                     ; $5ff0: $0e $ff
    sbc a                                         ; $5ff2: $9f
    rst $38                                       ; $5ff3: $ff
    rrca                                          ; $5ff4: $0f
    ld [bc], a                                    ; $5ff5: $02
    ld [$0001], sp                                ; $5ff6: $08 $01 $00
    ld a, a                                       ; $5ff9: $7f
    nop                                           ; $5ffa: $00
    rra                                           ; $5ffb: $1f
    db $10                                        ; $5ffc: $10
    dec a                                         ; $5ffd: $3d
    ccf                                           ; $5ffe: $3f
    dec sp                                        ; $5fff: $3b
    pop bc                                        ; $6000: $c1
    ld [$373f], sp                                ; $6001: $08 $3f $37
    ccf                                           ; $6004: $3f
    cpl                                           ; $6005: $2f
    xor l                                         ; $6006: $ad
    ret                                           ; $6007: $c9


    nop                                           ; $6008: $00
    ld [hl], a                                    ; $6009: $77

Call_096_600a:
    adc d                                         ; $600a: $8a
    nop                                           ; $600b: $00
    ld d, a                                       ; $600c: $57
    jp c, Jump_000_3d12                           ; $600d: $da $12 $3d

    rlca                                          ; $6010: $07
    xor e                                         ; $6011: $ab
    rra                                           ; $6012: $1f
    rlca                                          ; $6013: $07
    ld [c], a                                     ; $6014: $e2
    ld h, h                                       ; $6015: $64
    inc e                                         ; $6016: $1c
    daa                                           ; $6017: $27

Jump_096_6018:
    rlca                                          ; $6018: $07
    ld a, [hl+]                                   ; $6019: $2a
    rrca                                          ; $601a: $0f
    rst $30                                       ; $601b: $f7
    rst $38                                       ; $601c: $ff
    xor a                                         ; $601d: $af
    sub h                                         ; $601e: $94
    ld b, b                                       ; $601f: $40
    rst $30                                       ; $6020: $f7
    db $fd                                        ; $6021: $fd
    jr c, @+$09                                   ; $6022: $38 $07

    ld d, h                                       ; $6024: $54
    ld e, $9c                                     ; $6025: $1e $9c
    ld e, b                                       ; $6027: $58
    db $f4                                        ; $6028: $f4
    ld a, [de]                                    ; $6029: $1a
    ldh [$3c], a                                  ; $602a: $e0 $3c
    ld [de], a                                    ; $602c: $12
    rrca                                          ; $602d: $0f
    ld hl, sp+$2c                                 ; $602e: $f8 $2c
    ld b, $19                                     ; $6030: $06 $19
    cp $fe                                        ; $6032: $fe $fe
    rst $30                                       ; $6034: $f7
    ld e, [hl]                                    ; $6035: $5e
    inc de                                        ; $6036: $13
    sub c                                         ; $6037: $91
    rra                                           ; $6038: $1f
    ld h, b                                       ; $6039: $60
    ld h, b                                       ; $603a: $60
    adc b                                         ; $603b: $88
    dec c                                         ; $603c: $0d
    ld b, $c0                                     ; $603d: $06 $c0
    ret nz                                        ; $603f: $c0

    ld [hl], c                                    ; $6040: $71
    pop af                                        ; $6041: $f1
    adc [hl]                                      ; $6042: $8e
    cpl                                           ; $6043: $2f
    dec c                                         ; $6044: $0d
    add b                                         ; $6045: $80
    ld [hl], $d5                                  ; $6046: $36 $d5
    db $dd                                        ; $6048: $dd
    ld h, h                                       ; $6049: $64
    jr nz, jr_096_6072                            ; $604a: $20 $26

    inc c                                         ; $604c: $0c
    db $fd                                        ; $604d: $fd
    add e                                         ; $604e: $83
    db $10                                        ; $604f: $10
    ld b, h                                       ; $6050: $44
    inc e                                         ; $6051: $1c
    inc d                                         ; $6052: $14
    rra                                           ; $6053: $1f
    db $eb                                        ; $6054: $eb
    ret nc                                        ; $6055: $d0

    rlca                                          ; $6056: $07
    call c, $3844                                 ; $6057: $dc $44 $38
    jp nz, $bf1f                                  ; $605a: $c2 $1f $bf

    add h                                         ; $605d: $84
    inc b                                         ; $605e: $04
    halt                                          ; $605f: $76
    dec bc                                        ; $6060: $0b
    ld e, [hl]                                    ; $6061: $5e
    inc e                                         ; $6062: $1c
    ldh [$e0], a                                  ; $6063: $e0 $e0
    sbc h                                         ; $6065: $9c
    ld b, b                                       ; $6066: $40
    inc e                                         ; $6067: $1c
    ret nz                                        ; $6068: $c0

    ret nz                                        ; $6069: $c0

    adc d                                         ; $606a: $8a
    rrca                                          ; $606b: $0f
    inc a                                         ; $606c: $3c
    inc e                                         ; $606d: $1c
    call c, Call_000_1f0e                         ; $606e: $dc $0e $1f
    rra                                           ; $6071: $1f

jr_096_6072:
    ld c, d                                       ; $6072: $4a
    ld [$36d8], a                                 ; $6073: $ea $d8 $36
    ret nz                                        ; $6076: $c0

    ret nz                                        ; $6077: $c0

    ld e, $0c                                     ; $6078: $1e $0c
    cp h                                          ; $607a: $bc
    ld d, h                                       ; $607b: $54
    ld [hl], $0f                                  ; $607c: $36 $0f
    nop                                           ; $607e: $00
    rrca                                          ; $607f: $0f
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    jr @+$1a                                      ; $6082: $18 $18

    inc bc                                        ; $6084: $03
    inc bc                                        ; $6085: $03
    sbc [hl]                                      ; $6086: $9e
    ld [bc], a                                    ; $6087: $02
    sbc [hl]                                      ; $6088: $9e
    pop af                                        ; $6089: $f1
    pop af                                        ; $608a: $f1
    xor [hl]                                      ; $608b: $ae
    rst $28                                       ; $608c: $ef
    db $dd                                        ; $608d: $dd
    call nc, $d706                                ; $608e: $d4 $06 $d7
    adc a                                         ; $6091: $8f
    db $10                                        ; $6092: $10
    rlca                                          ; $6093: $07
    ldh [$e0], a                                  ; $6094: $e0 $e0
    cp a                                          ; $6096: $bf
    cp $07                                        ; $6097: $fe $07
    inc e                                         ; $6099: $1c
    ld [$2c40], sp                                ; $609a: $08 $40 $2c
    ld d, d                                       ; $609d: $52
    inc c                                         ; $609e: $0c
    add sp, $20                                   ; $609f: $e8 $20
    inc c                                         ; $60a1: $0c
    jr nc, jr_096_60ac                            ; $60a2: $30 $08

    ld l, [hl]                                    ; $60a4: $6e
    inc bc                                        ; $60a5: $03
    ld a, a                                       ; $60a6: $7f
    inc [hl]                                      ; $60a7: $34
    rrca                                          ; $60a8: $0f
    db $e3                                        ; $60a9: $e3
    db $e3                                        ; $60aa: $e3
    ld e, a                                       ; $60ab: $5f

jr_096_60ac:
    push hl                                       ; $60ac: $e5
    sub [hl]                                      ; $60ad: $96
    db $10                                        ; $60ae: $10
    and h                                         ; $60af: $a4
    ld de, $03ef                                  ; $60b0: $11 $ef $03
    rst $00                                       ; $60b3: $c7
    rst $00                                       ; $60b4: $c7
    jp c, $f709                                   ; $60b5: $da $09 $f7

    jr nz, jr_096_60be                            ; $60b8: $20 $04

    inc b                                         ; $60ba: $04
    rrca                                          ; $60bb: $0f
    rrca                                          ; $60bc: $0f
    di                                            ; $60bd: $f3

jr_096_60be:
    di                                            ; $60be: $f3
    rst $28                                       ; $60bf: $ef
    db $f4                                        ; $60c0: $f4
    rlca                                          ; $60c1: $07
    ccf                                           ; $60c2: $3f
    ccf                                           ; $60c3: $3f
    xor h                                         ; $60c4: $ac
    ld a, [de]                                    ; $60c5: $1a
    inc c                                         ; $60c6: $0c
    ld l, a                                       ; $60c7: $6f
    or b                                          ; $60c8: $b0
    rlca                                          ; $60c9: $07
    xor a                                         ; $60ca: $af
    ld e, d                                       ; $60cb: $5a
    scf                                           ; $60cc: $37
    ld [hl], b                                    ; $60cd: $70
    rra                                           ; $60ce: $1f
    ld b, b                                       ; $60cf: $40
    ld b, b                                       ; $60d0: $40
    add h                                         ; $60d1: $84
    adc a                                         ; $60d2: $8f

jr_096_60d3:
    ld [bc], a                                    ; $60d3: $02
    ld h, $00                                     ; $60d4: $26 $00
    db $db                                        ; $60d6: $db
    nop                                           ; $60d7: $00
    inc c                                         ; $60d8: $0c
    inc b                                         ; $60d9: $04
    ld b, b                                       ; $60da: $40
    ld b, b                                       ; $60db: $40
    nop                                           ; $60dc: $00
    ld [bc], a                                    ; $60dd: $02
    ld [bc], a                                    ; $60de: $02
    nop                                           ; $60df: $00
    ld [$2c00], sp                                ; $60e0: $08 $00 $2c
    nop                                           ; $60e3: $00
    ld d, h                                       ; $60e4: $54
    jr nz, jr_096_60e7                            ; $60e5: $20 $00

jr_096_60e7:
    cp d                                          ; $60e7: $ba
    ld h, d                                       ; $60e8: $62
    dec c                                         ; $60e9: $0d
    ret nz                                        ; $60ea: $c0

    add hl, de                                    ; $60eb: $19
    ld a, [hl+]                                   ; $60ec: $2a
    ld c, $50                                     ; $60ed: $0e $50
    rst $38                                       ; $60ef: $ff
    ld bc, $fea0                                  ; $60f0: $01 $a0 $fe
    ld [bc], a                                    ; $60f3: $02
    jr nz, @+$01                                  ; $60f4: $20 $ff

    rst $38                                       ; $60f6: $ff
    cp a                                          ; $60f7: $bf
    rst $38                                       ; $60f8: $ff
    db $10                                        ; $60f9: $10
    rst $18                                       ; $60fa: $df
    rst $38                                       ; $60fb: $ff
    ld a, a                                       ; $60fc: $7f
    ld b, $00                                     ; $60fd: $06 $00
    ld e, a                                       ; $60ff: $5f
    rst $38                                       ; $6100: $ff
    cp e                                          ; $6101: $bb
    rst $38                                       ; $6102: $ff
    ld h, d                                       ; $6103: $62
    ld e, l                                       ; $6104: $5d
    cpl                                           ; $6105: $2f
    nop                                           ; $6106: $00
    inc c                                         ; $6107: $0c
    ld [$ff7f], sp                                ; $6108: $08 $7f $ff
    xor a                                         ; $610b: $af
    stop                                          ; $610c: $10 $00
    xor a                                         ; $610e: $af
    dec d                                         ; $610f: $15
    rst $38                                       ; $6110: $ff

jr_096_6111:
    ld d, l                                       ; $6111: $55
    cp a                                          ; $6112: $bf
    ld b, b                                       ; $6113: $40
    jr c, jr_096_6111                             ; $6114: $38 $fb

    jr z, jr_096_6118                             ; $6116: $28 $00

jr_096_6118:
    cp e                                          ; $6118: $bb
    jr nz, jr_096_612b                            ; $6119: $20 $10

    or b                                          ; $611b: $b0
    inc b                                         ; $611c: $04
    ld c, b                                       ; $611d: $48
    push af                                       ; $611e: $f5
    ld b, h                                       ; $611f: $44
    db $10                                        ; $6120: $10
    ld h, [hl]                                    ; $6121: $66
    jr c, jr_096_60d3                             ; $6122: $38 $af

    ld a, a                                       ; $6124: $7f
    ld d, a                                       ; $6125: $57
    cp a                                          ; $6126: $bf
    nop                                           ; $6127: $00
    add l                                         ; $6128: $85
    ld a, a                                       ; $6129: $7f
    ld b, d                                       ; $612a: $42

jr_096_612b:
    cp a                                          ; $612b: $bf
    push hl                                       ; $612c: $e5
    rra                                           ; $612d: $1f
    ld b, d                                       ; $612e: $42
    cp a                                          ; $612f: $bf
    nop                                           ; $6130: $00
    and c                                         ; $6131: $a1
    rra                                           ; $6132: $1f
    ld [hl], b                                    ; $6133: $70
    adc a                                         ; $6134: $8f
    dec bc                                        ; $6135: $0b
    rst $38                                       ; $6136: $ff
    ld b, l                                       ; $6137: $45
    cp a                                          ; $6138: $bf
    nop                                           ; $6139: $00
    ld [hl+], a                                   ; $613a: $22
    rst $18                                       ; $613b: $df
    ld b, c                                       ; $613c: $41
    cp a                                          ; $613d: $bf
    ld h, d                                       ; $613e: $62
    sbc a                                         ; $613f: $9f
    ld d, c                                       ; $6140: $51
    xor a                                         ; $6141: $af
    nop                                           ; $6142: $00
    ld l, b                                       ; $6143: $68
    sub a                                         ; $6144: $97
    pop af                                        ; $6145: $f1
    adc a                                         ; $6146: $8f
    ret c                                         ; $6147: $d8

    add a                                         ; $6148: $87
    ret nc                                        ; $6149: $d0

    adc a                                         ; $614a: $8f
    ld b, b                                       ; $614b: $40
    ld hl, sp+$04                                 ; $614c: $f8 $04
    ld [$f4c7], sp                                ; $614e: $08 $c7 $f4
    set 7, b                                      ; $6151: $cb $f8
    rst $00                                       ; $6153: $c7
    db $e4                                        ; $6154: $e4
    ld b, b                                       ; $6155: $40
    bit 1, [hl]                                   ; $6156: $cb $4e
    ld e, b                                       ; $6158: $58
    cp [hl]                                       ; $6159: $be
    ld sp, hl                                     ; $615a: $f9
    ret c                                         ; $615b: $d8

    add a                                         ; $615c: $87
    db $f4                                        ; $615d: $f4
    adc e                                         ; $615e: $8b

jr_096_615f:
    add b                                         ; $615f: $80
    inc b                                         ; $6160: $04
    jr jr_096_615f                                ; $6161: $18 $fc

    sbc e                                         ; $6163: $9b
    cp b                                          ; $6164: $b8
    rst $38                                       ; $6165: $ff
    db $f4                                        ; $6166: $f4
    ei                                            ; $6167: $fb
    rst $38                                       ; $6168: $ff
    ld b, $ff                                     ; $6169: $06 $ff
    ld a, [$f5fa]                                 ; $616b: $fa $fa $f5
    push af                                       ; $616e: $f5
    inc b                                         ; $616f: $04
    ld [$18ca], sp                                ; $6170: $08 $ca $18
    ld hl, sp+$00                                 ; $6173: $f8 $00
    rst $00                                       ; $6175: $c7
    and b                                         ; $6176: $a0
    adc e                                         ; $6177: $8b
    ld b, b                                       ; $6178: $40
    ld b, l                                       ; $6179: $45
    xor b                                         ; $617a: $a8
    add d                                         ; $617b: $82
    ld d, b                                       ; $617c: $50
    add d                                         ; $617d: $82
    inc b                                         ; $617e: $04
    nop                                           ; $617f: $00
    ldh a, [$c7]                                  ; $6180: $f0 $c7
    add sp, -$3e                                  ; $6182: $e8 $c2
    ld [hl], e                                    ; $6184: $73
    ret nz                                        ; $6185: $c0

    nop                                           ; $6186: $00
    ld d, l                                       ; $6187: $55
    db $10                                        ; $6188: $10
    ld d, l                                       ; $6189: $55
    xor d                                         ; $618a: $aa
    xor d                                         ; $618b: $aa
    inc b                                         ; $618c: $04
    ld [$d5d5], sp                                ; $618d: $08 $d5 $d5
    xor e                                         ; $6190: $ab
    xor e                                         ; $6191: $ab
    ld [bc], a                                    ; $6192: $02
    ldh a, [$8f]                                  ; $6193: $f0 $8f
    db $f4                                        ; $6195: $f4
    adc e                                         ; $6196: $8b
    ld e, b                                       ; $6197: $58
    rlca                                          ; $6198: $07
    inc b                                         ; $6199: $04
    jr z, @-$2d                                   ; $619a: $28 $d1

    inc c                                         ; $619c: $0c
    adc a                                         ; $619d: $8f
    rst $38                                       ; $619e: $ff
    rst $38                                       ; $619f: $ff
    rst $30                                       ; $61a0: $f7
    inc bc                                        ; $61a1: $03
    ld hl, $0808                                  ; $61a2: $21 $08 $08
    push af                                       ; $61a5: $f5
    rst $38                                       ; $61a6: $ff
    ld bc, $e5f2                                  ; $61a7: $01 $f2 $e5
    ld a, h                                       ; $61aa: $7c
    db $e3                                        ; $61ab: $e3
    ld a, [$f4e5]                                 ; $61ac: $fa $e5 $f4
    inc b                                         ; $61af: $04
    nop                                           ; $61b0: $00
    nop                                           ; $61b1: $00
    ld [hl], b                                    ; $61b2: $70
    rst $20                                       ; $61b3: $e7
    ld a, [$50e5]                                 ; $61b4: $fa $e5 $50
    rst $20                                       ; $61b7: $e7
    ret c                                         ; $61b8: $d8

    add a                                         ; $61b9: $87
    ld e, b                                       ; $61ba: $58
    ld d, c                                       ; $61bb: $51
    sub h                                         ; $61bc: $94
    nop                                           ; $61bd: $00
    pop de                                        ; $61be: $d1
    sbc b                                         ; $61bf: $98
    nop                                           ; $61c0: $00
    ld [$5108], sp                                ; $61c1: $08 $08 $51
    adc a                                         ; $61c4: $8f
    ld d, a                                       ; $61c5: $57
    nop                                           ; $61c6: $00
    rst $38                                       ; $61c7: $ff
    dec bc                                        ; $61c8: $0b
    rst $38                                       ; $61c9: $ff
    scf                                           ; $61ca: $37
    rst $18                                       ; $61cb: $df
    adc d                                         ; $61cc: $8a
    rst $38                                       ; $61cd: $ff
    and l                                         ; $61ce: $a5
    ld bc, $92df                                  ; $61cf: $01 $df $92
    rst $28                                       ; $61d2: $ef
    and l                                         ; $61d3: $a5
    rst $08                                       ; $61d4: $cf
    or c                                          ; $61d5: $b1
    rst $08                                       ; $61d6: $cf
    ld a, [hl+]                                   ; $61d7: $2a
    add hl, bc                                    ; $61d8: $09
    ld [hl], b                                    ; $61d9: $70
    ld a, [hl]                                    ; $61da: $7e
    ld l, $01                                     ; $61db: $2e $01
    or $08                                        ; $61dd: $f6 $08

jr_096_61df:
    ld c, h                                       ; $61df: $4c
    add hl, bc                                    ; $61e0: $09
    ld a, a                                       ; $61e1: $7f
    rst $38                                       ; $61e2: $ff
    dec l                                         ; $61e3: $2d
    rst $38                                       ; $61e4: $ff
    nop                                           ; $61e5: $00
    sub a                                         ; $61e6: $97
    ld a, a                                       ; $61e7: $7f
    jp z, $a53f                                   ; $61e8: $ca $3f $a5

    ld e, a                                       ; $61eb: $5f
    ld c, e                                       ; $61ec: $4b
    cp a                                          ; $61ed: $bf
    nop                                           ; $61ee: $00

jr_096_61ef:
    ld h, l                                       ; $61ef: $65
    sbc a                                         ; $61f0: $9f
    ld d, e                                       ; $61f1: $53
    adc a                                         ; $61f2: $8f
    ldh a, [$cf]                                  ; $61f3: $f0 $cf
    jp hl                                         ; $61f5: $e9


    rst $00                                       ; $61f6: $c7
    add h                                         ; $61f7: $84
    inc b                                         ; $61f8: $04
    jr z, jr_096_61ef                             ; $61f9: $28 $f4

    res 5, c                                      ; $61fb: $cb $a9
    add a                                         ; $61fd: $87
    ld e, [hl]                                    ; $61fe: $5e
    add hl, hl                                    ; $61ff: $29
    ei                                            ; $6200: $fb
    rst $20                                       ; $6201: $e7
    ld b, d                                       ; $6202: $42
    rst $28                                       ; $6203: $ef
    ld a, e                                       ; $6204: $7b
    ld de, $97e9                                  ; $6205: $11 $e9 $97
    db $d3                                        ; $6208: $d3
    adc a                                         ; $6209: $8f
    inc b                                         ; $620a: $04
    jr jr_096_61df                                ; $620b: $18 $d2

    add c                                         ; $620d: $81
    inc b                                         ; $620e: $04
    db $10                                        ; $620f: $10
    cp a                                          ; $6210: $bf
    rst $38                                       ; $6211: $ff
    ld a, d                                       ; $6212: $7a
    ld a, [$f5b5]                                 ; $6213: $fa $b5 $f5
    inc b                                         ; $6216: $04
    ld [$fa10], sp                                ; $6217: $08 $10 $fa
    ld a, [$9bb7]                                 ; $621a: $fa $b7 $9b
    nop                                           ; $621d: $00
    ld d, h                                       ; $621e: $54
    ld b, c                                       ; $621f: $41
    xor b                                         ; $6220: $a8
    add d                                         ; $6221: $82
    ld h, c                                       ; $6222: $61
    ld b, h                                       ; $6223: $44
    inc b                                         ; $6224: $04
    nop                                           ; $6225: $00
    ret nc                                        ; $6226: $d0

    ld [$c7f8], sp                                ; $6227: $08 $f8 $c7
    pop af                                        ; $622a: $f1
    rst $00                                       ; $622b: $c7
    call z, $0828                                 ; $622c: $cc $28 $08
    ld d, l                                       ; $622f: $55
    ld d, l                                       ; $6230: $55
    xor e                                         ; $6231: $ab
    xor e                                         ; $6232: $ab
    cp h                                          ; $6233: $bc
    add hl, bc                                    ; $6234: $09
    ld l, c                                       ; $6235: $69
    rla                                           ; $6236: $17
    jp nc, $8f22                                  ; $6237: $d2 $22 $8f

    ld c, c                                       ; $623a: $49
    inc b                                         ; $623b: $04
    db $10                                        ; $623c: $10
    db $d3                                        ; $623d: $d3
    adc a                                         ; $623e: $8f
    ret                                           ; $623f: $c9


    ld c, h                                       ; $6240: $4c
    nop                                           ; $6241: $00
    cp a                                          ; $6242: $bf
    add b                                         ; $6243: $80
    ret nc                                        ; $6244: $d0

    ld c, b                                       ; $6245: $48
    cp $f6                                        ; $6246: $fe $f6
    ld sp, hl                                     ; $6248: $f9
    ld sp, hl                                     ; $6249: $f9
    rst $20                                       ; $624a: $e7
    ld [hl], c                                    ; $624b: $71
    rst $20                                       ; $624c: $e7
    db $10                                        ; $624d: $10
    ld sp, hl                                     ; $624e: $f9
    rst $20                                       ; $624f: $e7
    pop af                                        ; $6250: $f1
    inc b                                         ; $6251: $04
    nop                                           ; $6252: $00
    ld d, c                                       ; $6253: $51
    or a                                          ; $6254: $b7
    or c                                          ; $6255: $b1
    ld [hl], a                                    ; $6256: $77
    ld b, $f1                                     ; $6257: $06 $f1
    rst $20                                       ; $6259: $e7
    ret                                           ; $625a: $c9


    sub a                                         ; $625b: $97
    ld d, e                                       ; $625c: $53
    jr z, @+$12                                   ; $625d: $28 $10

    ld [$5318], sp                                ; $625f: $08 $18 $53
    ret nz                                        ; $6262: $c0

    nop                                           ; $6263: $00
    ld bc, $0939                                  ; $6264: $01 $39 $09
    push af                                       ; $6267: $f5
    rst $38                                       ; $6268: $ff
    ldh a, [$f5]                                  ; $6269: $f0 $f5
    db $fd                                        ; $626b: $fd
    ei                                            ; $626c: $fb
    nop                                           ; $626d: $00
    or $ef                                        ; $626e: $f6 $ef
    db $fc                                        ; $6270: $fc
    cp $f8                                        ; $6271: $fe $f8
    rst $20                                       ; $6273: $e7
    ld d, c                                       ; $6274: $51
    rst $20                                       ; $6275: $e7
    nop                                           ; $6276: $00
    ldh a, [$e7]                                  ; $6277: $f0 $e7
    pop de                                        ; $6279: $d1
    rst $20                                       ; $627a: $e7
    db $10                                        ; $627b: $10
    ld b, a                                       ; $627c: $47
    nop                                           ; $627d: $00
    and d                                         ; $627e: $a2
    ld [$4550], sp                                ; $627f: $08 $50 $45
    nop                                           ; $6282: $00
    and d                                         ; $6283: $a2
    jr nz, jr_096_62ae                            ; $6284: $20 $28

    pop de                                        ; $6286: $d1
    push de                                       ; $6287: $d5
    jr nz, jr_096_628a                            ; $6288: $20 $00

jr_096_628a:
    xor d                                         ; $628a: $aa
    ld b, h                                       ; $628b: $44
    ld d, l                                       ; $628c: $55
    jr nz, @-$54                                  ; $628d: $20 $aa

    ret c                                         ; $628f: $d8

    add a                                         ; $6290: $87
    ld [hl], c                                    ; $6291: $71
    add d                                         ; $6292: $82
    and h                                         ; $6293: $a4
    ld bc, $8f71                                  ; $6294: $01 $71 $8f
    ld d, c                                       ; $6297: $51
    dec b                                         ; $6298: $05
    ld sp, $0004                                  ; $6299: $31 $04 $00
    jr nz, @+$04                                  ; $629c: $20 $02

    adc d                                         ; $629e: $8a
    ldh a, [$f5]                                  ; $629f: $f0 $f5
    ldh [$ea], a                                  ; $62a1: $e0 $ea
    ldh [rDIV], a                                 ; $62a3: $e0 $04
    nop                                           ; $62a5: $00
    ld [$ff00], a                                 ; $62a6: $ea $00 $ff
    pop af                                        ; $62a9: $f1
    rst $38                                       ; $62aa: $ff
    ld [$e0ff], a                                 ; $62ab: $ea $ff $e0

jr_096_62ae:
    rst $38                                       ; $62ae: $ff
    db $10                                        ; $62af: $10
    ret nz                                        ; $62b0: $c0

    inc [hl]                                      ; $62b1: $34
    nop                                           ; $62b2: $00
    inc b                                         ; $62b3: $04
    ld [$e530], sp                                ; $62b4: $08 $30 $e5
    dec d                                         ; $62b7: $15
    db $e3                                        ; $62b8: $e3
    add hl, sp                                    ; $62b9: $39
    rst $20                                       ; $62ba: $e7
    db $10                                        ; $62bb: $10
    dec d                                         ; $62bc: $15
    db $e3                                        ; $62bd: $e3
    ld b, b                                       ; $62be: $40
    inc [hl]                                      ; $62bf: $34
    nop                                           ; $62c0: $00
    ld d, b                                       ; $62c1: $50
    ld d, l                                       ; $62c2: $55
    dec a                                         ; $62c3: $3d
    cp [hl]                                       ; $62c4: $be
    nop                                           ; $62c5: $00
    ld b, h                                       ; $62c6: $44
    ld d, l                                       ; $62c7: $55
    ld [hl], e                                    ; $62c8: $73
    rst $38                                       ; $62c9: $ff
    db $eb                                        ; $62ca: $eb
    rst $38                                       ; $62cb: $ff
    ld h, b                                       ; $62cc: $60
    rst $38                                       ; $62cd: $ff
    nop                                           ; $62ce: $00
    ld de, $2045                                  ; $62cf: $11 $45 $20
    adc d                                         ; $62d2: $8a
    add hl, sp                                    ; $62d3: $39
    ld b, a                                       ; $62d4: $47
    ld h, c                                       ; $62d5: $61
    rst $08                                       ; $62d6: $cf
    nop                                           ; $62d7: $00
    xor c                                         ; $62d8: $a9
    ld b, a                                       ; $62d9: $47
    ld h, c                                       ; $62da: $61
    adc a                                         ; $62db: $8f
    or c                                          ; $62dc: $b1
    rst $08                                       ; $62dd: $cf
    pop hl                                        ; $62de: $e1
    rst $08                                       ; $62df: $cf
    ld a, [bc]                                    ; $62e0: $0a
    ld a, [$f0ff]                                 ; $62e1: $fa $ff $f0
    rst $38                                       ; $62e4: $ff
    inc b                                         ; $62e5: $04
    ld [$08f2], sp                                ; $62e6: $08 $f2 $08
    nop                                           ; $62e9: $00
    ldh a, [$0c]                                  ; $62ea: $f0 $0c
    push af                                       ; $62ec: $f5
    ldh a, [$fa]                                  ; $62ed: $f0 $fa
    cp d                                          ; $62ef: $ba
    jr c, jr_096_62f2                             ; $62f0: $38 $00

jr_096_62f2:
    inc b                                         ; $62f2: $04
    ld [$c53a], sp                                ; $62f3: $08 $3a $c5
    ld bc, $c335                                  ; $62f6: $01 $35 $c3
    ld a, [hl+]                                   ; $62f9: $2a
    ld b, l                                       ; $62fa: $45
    dec a                                         ; $62fb: $3d
    add e                                         ; $62fc: $83
    ld [$0034], a                                 ; $62fd: $ea $34 $00
    and b                                         ; $6300: $a0
    ld e, b                                       ; $6301: $58
    ld [$5ce2], sp                                ; $6302: $08 $e2 $5c
    nop                                           ; $6305: $00
    ldh [$f5], a                                  ; $6306: $e0 $f5
    ld h, b                                       ; $6308: $60
    ld [$00d1], a                                 ; $6309: $ea $d1 $00
    rst $28                                       ; $630c: $ef
    ld l, c                                       ; $630d: $69
    rst $30                                       ; $630e: $f7
    and l                                         ; $630f: $a5
    ei                                            ; $6310: $fb
    add hl, de                                    ; $6311: $19
    rst $20                                       ; $6312: $e7
    inc [hl]                                      ; $6313: $34
    ld bc, $29cb                                  ; $6314: $01 $cb $29
    rst $00                                       ; $6317: $c7
    jr nc, jr_096_6369                            ; $6318: $30 $4f

    add hl, hl                                    ; $631a: $29
    add a                                         ; $631b: $87
    inc [hl]                                      ; $631c: $34
    nop                                           ; $631d: $00
    ret nz                                        ; $631e: $c0

    ld a, [hl-]                                   ; $631f: $3a
    ld [$3004], sp                                ; $6320: $08 $04 $30
    ld a, [hl+]                                   ; $6323: $2a
    push bc                                       ; $6324: $c5
    dec a                                         ; $6325: $3d
    jp $c52a                                      ; $6326: $c3 $2a $c5


    ld b, c                                       ; $6329: $41
    dec l                                         ; $632a: $2d
    inc b                                         ; $632b: $04
    jr nz, jr_096_636b                            ; $632c: $20 $3d

    jp $fde0                                      ; $632e: $c3 $e0 $fd


    ld h, b                                       ; $6331: $60
    sub [hl]                                      ; $6332: $96
    nop                                           ; $6333: $00
    call nz, $3804                                ; $6334: $c4 $04 $38
    inc [hl]                                      ; $6337: $34
    nop                                           ; $6338: $00
    rst $00                                       ; $6339: $c7
    jr nz, @-$2f                                  ; $633a: $20 $cf

    inc b                                         ; $633c: $04
    jr z, jr_096_6367                             ; $633d: $28 $28

    add $40                                       ; $633f: $c6 $40
    di                                            ; $6341: $f3
    ld bc, $f513                                  ; $6342: $01 $13 $f5
    rst $38                                       ; $6345: $ff
    ld e, e                                       ; $6346: $5b
    ld e, a                                       ; $6347: $5f
    push af                                       ; $6348: $f5
    rst $38                                       ; $6349: $ff
    ld b, $54                                     ; $634a: $06 $54
    ld d, l                                       ; $634c: $55
    and b                                         ; $634d: $a0
    xor d                                         ; $634e: $aa
    pop af                                        ; $634f: $f1
    nop                                           ; $6350: $00
    ld bc, $0804                                  ; $6351: $01 $04 $08
    or c                                          ; $6354: $b1
    xor b                                         ; $6355: $a8
    ld [$4101], sp                                ; $6356: $08 $01 $41
    nop                                           ; $6359: $00
    ld de, $23d5                                  ; $635a: $11 $d5 $23
    inc bc                                        ; $635d: $03
    push de                                       ; $635e: $d5
    rst $38                                       ; $635f: $ff
    dec sp                                        ; $6360: $3b
    nop                                           ; $6361: $00
    rst $08                                       ; $6362: $cf
    jp z, $50e0                                   ; $6363: $ca $e0 $50

    ld d, h                                       ; $6366: $54

jr_096_6367:
    adc d                                         ; $6367: $8a
    xor d                                         ; $6368: $aa

jr_096_6369:
    jp hl                                         ; $6369: $e9


    db $10                                        ; $636a: $10

jr_096_636b:
    sub a                                         ; $636b: $97
    ld d, d                                       ; $636c: $52
    adc d                                         ; $636d: $8a
    inc b                                         ; $636e: $04
    nop                                           ; $636f: $00
    adc a                                         ; $6370: $8f
    pop bc                                        ; $6371: $c1
    sub a                                         ; $6372: $97
    ld [bc], a                                    ; $6373: $02
    ld [bc], a                                    ; $6374: $02
    adc d                                         ; $6375: $8a
    ld b, c                                       ; $6376: $41
    dec d                                         ; $6377: $15
    ld [bc], a                                    ; $6378: $02
    adc d                                         ; $6379: $8a
    ld d, b                                       ; $637a: $50
    inc [hl]                                      ; $637b: $34
    nop                                           ; $637c: $00
    ld a, [$e688]                                 ; $637d: $fa $88 $e6
    ld [bc], a                                    ; $6380: $02
    ld a, [$71ff]                                 ; $6381: $fa $ff $71
    ret z                                         ; $6384: $c8

    nop                                           ; $6385: $00
    ld [hl], b                                    ; $6386: $70
    rst $38                                       ; $6387: $ff
    ld bc, $3480                                  ; $6388: $01 $80 $34
    ld bc, $c7a9                                  ; $638b: $01 $a9 $c7

jr_096_638e:
    ld [hl], l                                    ; $638e: $75
    jp $c7a9                                      ; $638f: $c3 $a9 $c7


    dec a                                         ; $6392: $3d
    nop                                           ; $6393: $00

jr_096_6394:
    jp $c7ab                                      ; $6394: $c3 $ab $c7


    dec h                                         ; $6397: $25
    rlc c                                         ; $6398: $cb $01
    ld d, l                                       ; $639a: $55
    add b                                         ; $639b: $80
    nop                                           ; $639c: $00
    xor d                                         ; $639d: $aa
    xor d                                         ; $639e: $aa
    rst $38                                       ; $639f: $ff
    ret nc                                        ; $63a0: $d0

    ld a, [$ffaa]                                 ; $63a1: $fa $aa $ff
    sub c                                         ; $63a4: $91
    nop                                           ; $63a5: $00
    rst $38                                       ; $63a6: $ff
    xor d                                         ; $63a7: $aa
    rst $38                                       ; $63a8: $ff
    add b                                         ; $63a9: $80
    rst $38                                       ; $63aa: $ff
    ld b, c                                       ; $63ab: $41
    dec d                                         ; $63ac: $15
    add d                                         ; $63ad: $82
    nop                                           ; $63ae: $00
    ld a, [bc]                                    ; $63af: $0a
    db $e3                                        ; $63b0: $e3
    rra                                           ; $63b1: $1f
    add d                                         ; $63b2: $82
    ld a, [bc]                                    ; $63b3: $0a
    jp $d21f                                      ; $63b4: $c3 $1f $d2


    ld a, [hl-]                                   ; $63b7: $3a
    rrca                                          ; $63b8: $0f
    add e                                         ; $63b9: $83
    inc b                                         ; $63ba: $04
    nop                                           ; $63bb: $00
    inc [hl]                                      ; $63bc: $34
    ld [$0838], sp                                ; $63bd: $08 $38 $08
    ld a, [c]                                     ; $63c0: $f2
    inc a                                         ; $63c1: $3c
    nop                                           ; $63c2: $00
    ld hl, sp+$10                                 ; $63c3: $f8 $10
    rst $38                                       ; $63c5: $ff
    ld [hl], b                                    ; $63c6: $70
    ld a, [$0834]                                 ; $63c7: $fa $34 $08
    xor e                                         ; $63ca: $ab
    rst $00                                       ; $63cb: $c7
    ld hl, $40cf                                  ; $63cc: $21 $cf $40
    dec hl                                        ; $63cf: $2b
    inc b                                         ; $63d0: $04
    nop                                           ; $63d1: $00
    ld a, [hl+]                                   ; $63d2: $2a
    ld b, a                                       ; $63d3: $47
    ld hl, $aa8f                                  ; $63d4: $21 $8f $aa
    rst $38                                       ; $63d7: $ff
    ld d, b                                       ; $63d8: $50
    ret nz                                        ; $63d9: $c0

    ld e, b                                       ; $63da: $58
    ld bc, $00c0                                  ; $63db: $01 $c0 $00
    ld bc, $eac0                                  ; $63de: $01 $c0 $ea
    ret nz                                        ; $63e1: $c0

    push de                                       ; $63e2: $d5
    ld [bc], a                                    ; $63e3: $02
    ret nz                                        ; $63e4: $c0

    db $eb                                        ; $63e5: $eb
    and e                                         ; $63e6: $a3
    rra                                           ; $63e7: $1f
    rst $10                                       ; $63e8: $d7
    rrca                                          ; $63e9: $0f
    inc b                                         ; $63ea: $04
    jr jr_096_6394                                ; $63eb: $18 $a7

    inc b                                         ; $63ed: $04
    rra                                           ; $63ee: $1f
    jp $a73f                                      ; $63ef: $c3 $3f $a7


jr_096_63f2:
    rra                                           ; $63f2: $1f
    nop                                           ; $63f3: $00
    add hl, sp                                    ; $63f4: $39
    and b                                         ; $63f5: $a0
    xor d                                         ; $63f6: $aa
    sbc b                                         ; $63f7: $98
    inc b                                         ; $63f8: $04
    ld [$472b], sp                                ; $63f9: $08 $2b $47
    jr c, jr_096_63fe                             ; $63fc: $38 $00

jr_096_63fe:
    ld b, b                                       ; $63fe: $40
    nop                                           ; $63ff: $00
    ld a, [hl-]                                   ; $6400: $3a
    rst $00                                       ; $6401: $c7
    dec h                                         ; $6402: $25
    inc l                                         ; $6403: $2c
    adc a                                         ; $6404: $8f
    db $10                                        ; $6405: $10
    ld l, h                                       ; $6406: $6c
    ld bc, $40c0                                  ; $6407: $01 $c0 $40
    nop                                           ; $640a: $00
    inc b                                         ; $640b: $04
    jr jr_096_638e                                ; $640c: $18 $80

    xor d                                         ; $640e: $aa
    nop                                           ; $640f: $00
    ld b, b                                       ; $6410: $40
    ld d, a                                       ; $6411: $57
    add b                                         ; $6412: $80
    xor d                                         ; $6413: $aa
    add e                                         ; $6414: $83
    ccf                                           ; $6415: $3f
    rst $20                                       ; $6416: $e7
    rra                                           ; $6417: $1f
    ld bc, $3f83                                  ; $6418: $01 $83 $3f
    push hl                                       ; $641b: $e5
    rra                                           ; $641c: $1f
    adc e                                         ; $641d: $8b
    ccf                                           ; $641e: $3f
    and l                                         ; $641f: $a5
    inc b                                         ; $6420: $04
    nop                                           ; $6421: $00
    ccf                                           ; $6422: $3f
    and b                                         ; $6423: $a0
    ld a, [bc]                                    ; $6424: $0a
    ld [$f00b], a                                 ; $6425: $ea $0b $f0
    dec de                                        ; $6428: $1b
    ld a, [bc]                                    ; $6429: $0a
    jr z, jr_096_63f2                             ; $642a: $28 $c6

    ld a, [de]                                    ; $642c: $1a
    db $e4                                        ; $642d: $e4
    dec bc                                        ; $642e: $0b
    db $f4                                        ; $642f: $f4
    dec bc                                        ; $6430: $0b
    nop                                           ; $6431: $00
    dec l                                         ; $6432: $2d
    rst $38                                       ; $6433: $ff
    sbc e                                         ; $6434: $9b
    ld a, a                                       ; $6435: $7f
    ld c, a                                       ; $6436: $4f
    cp a                                          ; $6437: $bf
    ld l, e                                       ; $6438: $6b
    sbc a                                         ; $6439: $9f
    nop                                           ; $643a: $00
    ld b, l                                       ; $643b: $45
    cp a                                          ; $643c: $bf
    db $e3                                        ; $643d: $e3
    sbc a                                         ; $643e: $9f
    pop de                                        ; $643f: $d1
    xor a                                         ; $6440: $af
    db $e3                                        ; $6441: $e3
    sbc a                                         ; $6442: $9f
    ld h, b                                       ; $6443: $60
    cp $01                                        ; $6444: $fe $01
    db $10                                        ; $6446: $10
    ld [hl], $3c                                  ; $6447: $36 $3c
    ld d, h                                       ; $6449: $54
    ld d, l                                       ; $644a: $55
    xor a                                         ; $644b: $af
    xor a                                         ; $644c: $af
    ld d, l                                       ; $644d: $55
    ld b, d                                       ; $644e: $42
    ld d, l                                       ; $644f: $55
    ld b, [hl]                                    ; $6450: $46
    inc a                                         ; $6451: $3c
    pop af                                        ; $6452: $f1
    adc a                                         ; $6453: $8f
    db $d3                                        ; $6454: $d3
    adc a                                         ; $6455: $8f
    inc b                                         ; $6456: $04
    ld [$80d1], sp                                ; $6457: $08 $d1 $80
    ld [$5900], sp                                ; $645a: $08 $00 $59
    rlca                                          ; $645d: $07
    db $d3                                        ; $645e: $d3
    adc a                                         ; $645f: $8f
    db $fd                                        ; $6460: $fd
    db $fd                                        ; $6461: $fd
    cp $70                                        ; $6462: $fe $70
    cp $04                                        ; $6464: $fe $04
    jr nz, jr_096_64d3                            ; $6466: $20 $6b

    inc d                                         ; $6468: $14
    adc h                                         ; $6469: $8c
    dec de                                        ; $646a: $1b
    rst $30                                       ; $646b: $f7
    rst $08                                       ; $646c: $cf
    ld d, l                                       ; $646d: $55
    dec d                                         ; $646e: $15
    ldh [$32], a                                  ; $646f: $e0 $32
    dec de                                        ; $6471: $1b
    inc h                                         ; $6472: $24
    ld [$0828], sp                                ; $6473: $08 $28 $08
    reti                                          ; $6476: $d9


    add a                                         ; $6477: $87
    db $d3                                        ; $6478: $d3
    adc a                                         ; $6479: $8f
    ld sp, hl                                     ; $647a: $f9
    adc l                                         ; $647b: $8d
    inc b                                         ; $647c: $04
    nop                                           ; $647d: $00
    rst $38                                       ; $647e: $ff
    rst $38                                       ; $647f: $ff
    ld [hl], a                                    ; $6480: $77
    sub e                                         ; $6481: $93
    inc h                                         ; $6482: $24
    ld [$5508], sp                                ; $6483: $08 $08 $55
    jr nz, jr_096_648b                            ; $6486: $20 $03

    ld b, $52                                     ; $6488: $06 $52
    adc a                                         ; $648a: $8f

jr_096_648b:
    pop hl                                        ; $648b: $e1
    sbc a                                         ; $648c: $9f
    jp nc, Jump_000_0004                          ; $648d: $d2 $04 $00

    ld [$5208], sp                                ; $6490: $08 $08 $52
    add b                                         ; $6493: $80

jr_096_6494:
    or b                                          ; $6494: $b0
    inc bc                                        ; $6495: $03
    xor b                                         ; $6496: $a8
    xor d                                         ; $6497: $aa
    db $fd                                        ; $6498: $fd
    db $fd                                        ; $6499: $fd
    add sp, -$16                                  ; $649a: $e8 $ea
    ld d, l                                       ; $649c: $55
    ld [$a855], sp                                ; $649d: $08 $55 $a8
    xor d                                         ; $64a0: $aa
    ld d, h                                       ; $64a1: $54
    inc b                                         ; $64a2: $04
    nop                                           ; $64a3: $00
    rst $38                                       ; $64a4: $ff
    rst $38                                       ; $64a5: $ff
    dec b                                         ; $64a6: $05
    adc d                                         ; $64a7: $8a
    add b                                         ; $64a8: $80
    nop                                           ; $64a9: $00
    nop                                           ; $64aa: $00
    xor d                                         ; $64ab: $aa
    ld de, $0004                                  ; $64ac: $11 $04 $00
    ld b, h                                       ; $64af: $44
    ld [$e900], sp                                ; $64b0: $08 $00 $e9
    nop                                           ; $64b3: $00
    sub a                                         ; $64b4: $97
    ld a, [c]                                     ; $64b5: $f2
    rrca                                          ; $64b6: $0f
    db $eb                                        ; $64b7: $eb
    rla                                           ; $64b8: $17
    ld a, [c]                                     ; $64b9: $f2
    rrca                                          ; $64ba: $0f
    xor e                                         ; $64bb: $ab
    ld bc, $e217                                  ; $64bc: $01 $17 $e2
    rra                                           ; $64bf: $1f
    xor e                                         ; $64c0: $ab
    rla                                           ; $64c1: $17
    db $e3                                        ; $64c2: $e3
    rra                                           ; $64c3: $1f
    inc h                                         ; $64c4: $24
    ld [$d401], sp                                ; $64c5: $08 $01 $d4
    push de                                       ; $64c8: $d5
    xor b                                         ; $64c9: $a8
    xor d                                         ; $64ca: $aa
    cp $ff                                        ; $64cb: $fe $ff
    db $fd                                        ; $64cd: $fd
    call nc, Call_000_1404                        ; $64ce: $d4 $04 $14
    db $fc                                        ; $64d1: $fc
    rst $38                                       ; $64d2: $ff

jr_096_64d3:
    nop                                           ; $64d3: $00
    inc l                                         ; $64d4: $2c
    nop                                           ; $64d5: $00
    nop                                           ; $64d6: $00
    or c                                          ; $64d7: $b1
    nop                                           ; $64d8: $00
    xor d                                         ; $64d9: $aa
    rst $38                                       ; $64da: $ff
    ld b, c                                       ; $64db: $41
    ld de, $0190                                  ; $64dc: $11 $90 $01
    nop                                           ; $64df: $00
    rst $38                                       ; $64e0: $ff
    and e                                         ; $64e1: $a3
    rra                                           ; $64e2: $1f
    db $e3                                        ; $64e3: $e3
    ld c, d                                       ; $64e4: $4a
    ld bc, $04ce                                  ; $64e5: $01 $ce $04
    ld [$0952], sp                                ; $64e8: $08 $52 $09
    and e                                         ; $64eb: $a3
    rra                                           ; $64ec: $1f
    db $f4                                        ; $64ed: $f4
    inc e                                         ; $64ee: $1c
    nop                                           ; $64ef: $00
    dec d                                         ; $64f0: $15
    rst $20                                       ; $64f1: $e7
    nop                                           ; $64f2: $00
    cp $80                                        ; $64f3: $fe $80
    inc h                                         ; $64f5: $24
    db $10                                        ; $64f6: $10
    ld [$94ff], a                                 ; $64f7: $ea $ff $94
    db $e3                                        ; $64fa: $e3
    ld a, [c]                                     ; $64fb: $f2
    db $fc                                        ; $64fc: $fc
    inc e                                         ; $64fd: $1c
    dec b                                         ; $64fe: $05
    cp a                                          ; $64ff: $bf
    rrca                                          ; $6500: $0f
    ld e, a                                       ; $6501: $5f
    ld bc, $28eb                                  ; $6502: $01 $eb $28
    ld [$42a5], sp                                ; $6505: $08 $a5 $42
    ld bc, $0498                                  ; $6508: $01 $98 $04
    jr jr_096_6494                                ; $650b: $18 $87

    ccf                                           ; $650d: $3f
    jr z, @+$2f                                   ; $650e: $28 $2d

    jr nc, jr_096_652f                            ; $6510: $30 $1d

    xor d                                         ; $6512: $aa
    xor d                                         ; $6513: $aa
    nop                                           ; $6514: $00
    jp nz, $0054                                  ; $6515: $c2 $54 $00

    inc b                                         ; $6518: $04
    jr z, @+$03                                   ; $6519: $28 $01

    cp $00                                        ; $651b: $fe $00
    xor d                                         ; $651d: $aa
    inc h                                         ; $651e: $24
    ld [$10a5], sp                                ; $651f: $08 $a5 $10
    rra                                           ; $6522: $1f
    sub a                                         ; $6523: $97
    cpl                                           ; $6524: $2f
    inc b                                         ; $6525: $04
    ld [$1fe7], sp                                ; $6526: $08 $e7 $1f
    sub d                                         ; $6529: $92
    ld a, [hl+]                                   ; $652a: $2a
    ret nz                                        ; $652b: $c0

    ld d, b                                       ; $652c: $50
    dec e                                         ; $652d: $1d
    ld d, [hl]                                    ; $652e: $56

jr_096_652f:
    dec e                                         ; $652f: $1d
    cp e                                          ; $6530: $bb
    rst $38                                       ; $6531: $ff
    db $dd                                        ; $6532: $dd
    rst $38                                       ; $6533: $ff
    rst $28                                       ; $6534: $ef
    rst $38                                       ; $6535: $ff
    nop                                           ; $6536: $00
    rst $10                                       ; $6537: $d7
    rst $38                                       ; $6538: $ff
    push bc                                       ; $6539: $c5
    rst $38                                       ; $653a: $ff
    jp nz, $e5ff                                  ; $653b: $c2 $ff $e5

    rst $18                                       ; $653e: $df
    nop                                           ; $653f: $00
    jp nz, $e1ff                                  ; $6540: $c2 $ff $e1

    rst $18                                       ; $6543: $df
    ldh a, [$cf]                                  ; $6544: $f0 $cf
    ret c                                         ; $6546: $d8

    rst $00                                       ; $6547: $c7
    jr @-$2e                                      ; $6548: $18 $d0

    rst $08                                       ; $654a: $cf
    ld hl, sp+$04                                 ; $654b: $f8 $04
    stop                                          ; $654d: $10 $00
    dec e                                         ; $654f: $1d
    ld hl, sp-$39                                 ; $6550: $f8 $c7
    ldh [$03], a                                  ; $6552: $e0 $03
    set 0, b                                      ; $6554: $cb $c0
    push bc                                       ; $6556: $c5
    add sp, -$3e                                  ; $6557: $e8 $c2
    ret nc                                        ; $6559: $d0

    inc b                                         ; $655a: $04
    nop                                           ; $655b: $00
    ret nc                                        ; $655c: $d0

    inc c                                         ; $655d: $0c
    inc d                                         ; $655e: $14

jr_096_655f:
    ld a, [c]                                     ; $655f: $f2
    push hl                                       ; $6560: $e5
    db $fc                                        ; $6561: $fc
    and b                                         ; $6562: $a0
    inc h                                         ; $6563: $24
    ldh a, [$a0]                                  ; $6564: $f0 $a0
    inc b                                         ; $6566: $04
    ret nc                                        ; $6567: $d0

    rst $20                                       ; $6568: $e7

jr_096_6569:
    ld h, b                                       ; $6569: $60
    ld hl, sp-$54                                 ; $656a: $f8 $ac
    inc bc                                        ; $656c: $03
    or b                                          ; $656d: $b0
    dec bc                                        ; $656e: $0b
    ret nc                                        ; $656f: $d0

    rst $00                                       ; $6570: $c7
    ret nz                                        ; $6571: $c0

    ld [c], a                                     ; $6572: $e2
    ret nc                                        ; $6573: $d0

    ld b, b                                       ; $6574: $40
    push bc                                       ; $6575: $c5
    inc b                                         ; $6576: $04

jr_096_6577:
    jr c, jr_096_6569                             ; $6577: $38 $f0

    push hl                                       ; $6579: $e5
    push de                                       ; $657a: $d5
    db $e3                                        ; $657b: $e3
    ld sp, hl                                     ; $657c: $f9
    rst $20                                       ; $657d: $e7
    ld h, b                                       ; $657e: $60
    push de                                       ; $657f: $d5
    call z, Call_000_0404                         ; $6580: $cc $04 $04
    ld [$e395], sp                                ; $6583: $08 $95 $e3
    cp d                                          ; $6586: $ba
    push bc                                       ; $6587: $c5
    or l                                          ; $6588: $b5
    ld b, $c3                                     ; $6589: $06 $c3
    xor d                                         ; $658b: $aa
    push bc                                       ; $658c: $c5
    cp l                                          ; $658d: $bd
    add e                                         ; $658e: $83
    inc b                                         ; $658f: $04
    nop                                           ; $6590: $00
    ld [$ad00], sp                                ; $6591: $08 $00 $ad
    add b                                         ; $6594: $80
    inc b                                         ; $6595: $04
    jr nz, @-$41                                  ; $6596: $20 $bd

    jp $c7a8                                      ; $6598: $c3 $a8 $c7


    xor b                                         ; $659b: $a8
    add d                                         ; $659c: $82
    add c                                         ; $659d: $81
    nop                                           ; $659e: $00
    push bc                                       ; $659f: $c5
    ld hl, sp-$3e                                 ; $65a0: $f8 $c2
    xor c                                         ; $65a2: $a9
    rst $00                                       ; $65a3: $c7
    sub l                                         ; $65a4: $95
    db $eb                                        ; $65a5: $eb
    ret c                                         ; $65a6: $d8

    ld [bc], a                                    ; $65a7: $02
    rst $38                                       ; $65a8: $ff
    add a                                         ; $65a9: $87
    rst $38                                       ; $65aa: $ff
    ret                                           ; $65ab: $c9


    rst $38                                       ; $65ac: $ff
    add h                                         ; $65ad: $84
    and [hl]                                      ; $65ae: $a6
    ld [bc], a                                    ; $65af: $02
    add c                                         ; $65b0: $81
    db $10                                        ; $65b1: $10
    rst $38                                       ; $65b2: $ff
    ld c, b                                       ; $65b3: $48
    rst $30                                       ; $65b4: $f7
    cp [hl]                                       ; $65b5: $be
    nop                                           ; $65b6: $00
    rst $38                                       ; $65b7: $ff
    ld de, $00ef                                  ; $65b8: $11 $ef $00
    nop                                           ; $65bb: $00
    rst $38                                       ; $65bc: $ff
    ld [bc], a                                    ; $65bd: $02
    db $fd                                        ; $65be: $fd
    add b                                         ; $65bf: $80
    ld a, a                                       ; $65c0: $7f
    db $10                                        ; $65c1: $10
    rst $28                                       ; $65c2: $ef
    ld b, d                                       ; $65c3: $42
    ld c, b                                       ; $65c4: $48
    cp a                                          ; $65c5: $bf
    jp c, Jump_000_0408                           ; $65c6: $da $08 $04

    ei                                            ; $65c9: $fb
    ret nc                                        ; $65ca: $d0

    dec bc                                        ; $65cb: $0b
    ld b, b                                       ; $65cc: $40
    ld d, l                                       ; $65cd: $55
    ld hl, $6c80                                  ; $65ce: $21 $80 $6c
    ld [bc], a                                    ; $65d1: $02
    add sp, -$01                                  ; $65d2: $e8 $ff
    ret nc                                        ; $65d4: $d0

    rst $38                                       ; $65d5: $ff
    and b                                         ; $65d6: $a0
    rst $38                                       ; $65d7: $ff
    nop                                           ; $65d8: $00
    db $10                                        ; $65d9: $10
    ld b, l                                       ; $65da: $45
    jr z, jr_096_655f                             ; $65db: $28 $82

    inc b                                         ; $65dd: $04
    nop                                           ; $65de: $00
    jp nz, $cf20                                  ; $65df: $c2 $20 $cf

    add hl, sp                                    ; $65e2: $39
    adc b                                         ; $65e3: $88
    ld e, b                                       ; $65e4: $58
    inc bc                                        ; $65e5: $03
    cp c                                          ; $65e6: $b9

jr_096_65e7:
    ld b, a                                       ; $65e7: $47
    ld d, b                                       ; $65e8: $50
    inc h                                         ; $65e9: $24
    inc b                                         ; $65ea: $04
    ld [hl], d                                    ; $65eb: $72
    ld a, l                                       ; $65ec: $7d
    jr nz, jr_096_6577                            ; $65ed: $20 $88

    adc h                                         ; $65ef: $8c
    ld [bc], a                                    ; $65f0: $02
    ld [hl], h                                    ; $65f1: $74
    ei                                            ; $65f2: $fb
    ldh a, [rNR10]                                ; $65f3: $f0 $10
    inc bc                                        ; $65f5: $03
    db $10                                        ; $65f6: $10
    ld b, l                                       ; $65f7: $45
    ld [hl+], a                                   ; $65f8: $22
    nop                                           ; $65f9: $00
    adc d                                         ; $65fa: $8a
    ld [hl-], a                                   ; $65fb: $32
    rst $08                                       ; $65fc: $cf
    sub a                                         ; $65fd: $97
    rst $38                                       ; $65fe: $ff
    ld c, $ff                                     ; $65ff: $0e $ff
    jr nz, jr_096_6603                            ; $6601: $20 $00

jr_096_6603:
    rst $38                                       ; $6603: $ff
    inc b                                         ; $6604: $04
    rst $38                                       ; $6605: $ff
    ld [bc], a                                    ; $6606: $02
    rst $38                                       ; $6607: $ff
    ld [$82f7], sp                                ; $6608: $08 $f7 $82
    sub b                                         ; $660b: $90
    halt                                          ; $660c: $76
    ld bc, $ed12                                  ; $660d: $01 $12 $ed
    jr nz, jr_096_6623                            ; $6610: $20 $11

    rst $38                                       ; $6612: $ff
    jr nz, @-$1f                                  ; $6613: $20 $df

    inc h                                         ; $6615: $24
    db $10                                        ; $6616: $10
    srl c                                         ; $6617: $cb $39
    rst $00                                       ; $6619: $c7
    inc b                                         ; $661a: $04
    ld [$cb34], sp                                ; $661b: $08 $34 $cb
    jr c, jr_096_65e7                             ; $661e: $38 $c7

    add hl, de                                    ; $6620: $19
    inc [hl]                                      ; $6621: $34
    db $eb                                        ; $6622: $eb

jr_096_6623:
    ld e, h                                       ; $6623: $5c
    ld c, $04                                     ; $6624: $0e $04
    inc c                                         ; $6626: $0c
    inc bc                                        ; $6627: $03
    db $fd                                        ; $6628: $fd
    ld [hl], b                                    ; $6629: $70
    ld d, $04                                     ; $662a: $16 $04
    ld d, d                                       ; $662c: $52
    ld a, b                                       ; $662d: $78
    inc d                                         ; $662e: $14
    inc b                                         ; $662f: $04
    ld h, b                                       ; $6630: $60
    and d                                         ; $6631: $a2
    ld bc, $7f88                                  ; $6632: $01 $88 $7f
    ld d, h                                       ; $6635: $54
    add hl, de                                    ; $6636: $19
    ld [$f718], sp                                ; $6637: $08 $18 $f7
    ld b, c                                       ; $663a: $41
    cp [hl]                                       ; $663b: $be
    adc [hl]                                      ; $663c: $8e
    nop                                           ; $663d: $00
    ld h, b                                       ; $663e: $60
    ld de, $bf40                                  ; $663f: $11 $40 $bf
    ld [bc], a                                    ; $6642: $02
    and b                                         ; $6643: $a0
    ld e, [hl]                                    ; $6644: $5e
    ld bc, $9440                                  ; $6645: $01 $40 $94
    nop                                           ; $6648: $00
    inc hl                                        ; $6649: $23
    rst $38                                       ; $664a: $ff
    ld [$21ff], sp                                ; $664b: $08 $ff $21
    ld h, h                                       ; $664e: $64
    rst $18                                       ; $664f: $df
    inc d                                         ; $6650: $14
    db $10                                        ; $6651: $10
    ld [hl], b                                    ; $6652: $70
    add hl, bc                                    ; $6653: $09
    rst $38                                       ; $6654: $ff
    jp z, Jump_000_0068                           ; $6655: $ca $68 $00

    nop                                           ; $6658: $00
    rst $38                                       ; $6659: $ff
    add hl, hl                                    ; $665a: $29
    ld hl, $88de                                  ; $665b: $21 $de $88
    add hl, bc                                    ; $665e: $09
    db $10                                        ; $665f: $10
    adc h                                         ; $6660: $8c
    ld de, $f728                                  ; $6661: $11 $28 $f7
    adc d                                         ; $6664: $8a
    ld de, $6cca                                  ; $6665: $11 $ca $6c
    nop                                           ; $6668: $00
    ld b, h                                       ; $6669: $44
    nop                                           ; $666a: $00
    rst $38                                       ; $666b: $ff
    ld b, b                                       ; $666c: $40
    sub b                                         ; $666d: $90
    inc bc                                        ; $666e: $03
    ret nc                                        ; $666f: $d0

    adc b                                         ; $6670: $88
    inc bc                                        ; $6671: $03
    ld c, b                                       ; $6672: $48
    add b                                         ; $6673: $80
    ld [hl-], a                                   ; $6674: $32
    db $10                                        ; $6675: $10
    inc b                                         ; $6676: $04
    ei                                            ; $6677: $fb
    dec b                                         ; $6678: $05
    dec d                                         ; $6679: $15
    add b                                         ; $667a: $80
    ld a, [hl+]                                   ; $667b: $2a
    adc a                                         ; $667c: $8f
    nop                                           ; $667d: $00
    ccf                                           ; $667e: $3f
    push bc                                       ; $667f: $c5
    ccf                                           ; $6680: $3f
    adc a                                         ; $6681: $8f
    ccf                                           ; $6682: $3f
    rst $10                                       ; $6683: $d7
    ccf                                           ; $6684: $3f
    rst $08                                       ; $6685: $cf
    nop                                           ; $6686: $00
    ccf                                           ; $6687: $3f
    sub a                                         ; $6688: $97
    ld a, a                                       ; $6689: $7f
    ld bc, $0054                                  ; $668a: $01 $54 $00
    ld a, [$0001]                                 ; $668d: $fa $01 $00
    ld a, [hl]                                    ; $6690: $7e
    ld hl, $01fe                                  ; $6691: $21 $fe $01
    cp $09                                        ; $6694: $fe $09
    or $21                                        ; $6696: $f6 $21
    ld d, h                                       ; $6698: $54
    sbc $38                                       ; $6699: $de $38
    jr jr_096_669f                                ; $669b: $18 $02

    cp d                                          ; $669d: $ba
    nop                                           ; $669e: $00

jr_096_669f:
    ld b, c                                       ; $669f: $41
    ld a, d                                       ; $66a0: $7a
    db $10                                        ; $66a1: $10
    ld bc, $80fe                                  ; $66a2: $01 $fe $80
    inc h                                         ; $66a5: $24
    ld [$7f8f], sp                                ; $66a6: $08 $8f $7f
    rst $18                                       ; $66a9: $df
    rst $38                                       ; $66aa: $ff
    ld l, a                                       ; $66ab: $6f
    rst $38                                       ; $66ac: $ff
    sbc a                                         ; $66ad: $9f
    and e                                         ; $66ae: $a3
    ld b, h                                       ; $66af: $44
    nop                                           ; $66b0: $00
    ld [de], a                                    ; $66b1: $12
    jr nc, jr_096_66fb                            ; $66b2: $30 $47

    db $f4                                        ; $66b4: $f4
    rst $38                                       ; $66b5: $ff
    adc d                                         ; $66b6: $8a
    db $e4                                        ; $66b7: $e4
    nop                                           ; $66b8: $00
    jr c, @+$0a                                   ; $66b9: $38 $08

    ld a, [bc]                                    ; $66bb: $0a
    add c                                         ; $66bc: $81
    cp $50                                        ; $66bd: $fe $50
    ld a, [$0048]                                 ; $66bf: $fa $48 $00
    ld [$1840], a                                 ; $66c2: $ea $40 $18
    sub b                                         ; $66c5: $90
    db $fd                                        ; $66c6: $fd
    ld b, h                                       ; $66c7: $44
    ld bc, $0a0c                                  ; $66c8: $01 $0c $0a
    adc [hl]                                      ; $66cb: $8e
    ld [$0884], sp                                ; $66cc: $08 $84 $08
    adc d                                         ; $66cf: $8a
    nop                                           ; $66d0: $00
    ld a, [de]                                    ; $66d1: $1a
    ld [bc], a                                    ; $66d2: $02
    inc b                                         ; $66d3: $04
    jp nc, $5e10                                  ; $66d4: $d2 $10 $5e

    add b                                         ; $66d7: $80
    ld h, $12                                     ; $66d8: $26 $12
    ld [$08a2], sp                                ; $66da: $08 $a2 $08
    inc c                                         ; $66dd: $0c
    ld bc, $0972                                  ; $66de: $01 $72 $09
    ld a, d                                       ; $66e1: $7a
    ld [$1a01], sp                                ; $66e2: $08 $01 $1a
    cp $15                                        ; $66e5: $fe $15
    rst $28                                       ; $66e7: $ef
    ldh [rP1], a                                  ; $66e8: $e0 $00
    ld l, [hl]                                    ; $66ea: $6e
    ld bc, $3200                                  ; $66eb: $01 $00 $32
    rrca                                          ; $66ee: $0f
    xor a                                         ; $66ef: $af
    ldh a, [$3a]                                  ; $66f0: $f0 $3a
    daa                                           ; $66f2: $27
    ld l, b                                       ; $66f3: $68
    inc bc                                        ; $66f4: $03
    ld h, b                                       ; $66f5: $60
    ld [bc], a                                    ; $66f6: $02
    ld bc, $0800                                  ; $66f7: $01 $00 $08
    ld c, b                                       ; $66fa: $48

jr_096_66fb:
    nop                                           ; $66fb: $00
    ld [bc], a                                    ; $66fc: $02
    inc b                                         ; $66fd: $04
    nop                                           ; $66fe: $00
    jr z, jr_096_6701                             ; $66ff: $28 $00

jr_096_6701:
    call nc, Call_000_2000                        ; $6701: $d4 $00 $20
    nop                                           ; $6704: $00
    ld d, l                                       ; $6705: $55
    ld d, l                                       ; $6706: $55
    ld e, [hl]                                    ; $6707: $5e
    cp a                                          ; $6708: $bf
    add h                                         ; $6709: $84
    ld b, a                                       ; $670a: $47
    rst $38                                       ; $670b: $ff
    ld e, $19                                     ; $670c: $1e $19
    add h                                         ; $670e: $84
    ld b, d                                       ; $670f: $42
    jr nc, jr_096_671a                            ; $6710: $30 $08

    inc [hl]                                      ; $6712: $34
    ld [$8102], sp                                ; $6713: $08 $02 $81
    add hl, bc                                    ; $6716: $09
    db $10                                        ; $6717: $10
    ld d, l                                       ; $6718: $55
    nop                                           ; $6719: $00

jr_096_671a:
    add b                                         ; $671a: $80
    add b                                         ; $671b: $80
    db $10                                        ; $671c: $10
    db $10                                        ; $671d: $10
    ld b, h                                       ; $671e: $44
    nop                                           ; $671f: $00
    ld bc, $0022                                  ; $6720: $01 $22 $00
    ld [$9500], sp                                ; $6723: $08 $00 $95
    nop                                           ; $6726: $00
    ld a, [hl-]                                   ; $6727: $3a
    jr nz, jr_096_6742                            ; $6728: $20 $18

    nop                                           ; $672a: $00
    add b                                         ; $672b: $80
    sub b                                         ; $672c: $90
    nop                                           ; $672d: $00
    ld b, d                                       ; $672e: $42
    nop                                           ; $672f: $00
    xor b                                         ; $6730: $a8
    nop                                           ; $6731: $00
    ld d, h                                       ; $6732: $54
    and b                                         ; $6733: $a0
    ld d, b                                       ; $6734: $50
    nop                                           ; $6735: $00
    cp $5e                                        ; $6736: $fe $5e
    nop                                           ; $6738: $00
    ld [$8080], sp                                ; $6739: $08 $80 $80
    nop                                           ; $673c: $00
    add hl, bc                                    ; $673d: $09
    sub a                                         ; $673e: $97
    ld c, $00                                     ; $673f: $0e $00
    xor a                                         ; $6741: $af

jr_096_6742:
    nop                                           ; $6742: $00
    ld a, d                                       ; $6743: $7a
    ld bc, $be10                                  ; $6744: $01 $10 $be
    db $10                                        ; $6747: $10
    sub $1a                                       ; $6748: $d6 $1a
    ld c, $0a                                     ; $674a: $0e $0a
    and b                                         ; $674c: $a0
    adc b                                         ; $674d: $88
    add hl, bc                                    ; $674e: $09

jr_096_674f:
    ld b, b                                       ; $674f: $40
    ld [hl], h                                    ; $6750: $74
    ld bc, $ff00                                  ; $6751: $01 $00 $ff
    add d                                         ; $6754: $82
    ld a, l                                       ; $6755: $7d
    ld b, b                                       ; $6756: $40
    ld [$08bf], sp                                ; $6757: $08 $bf $08
    rst $38                                       ; $675a: $ff
    adc b                                         ; $675b: $88
    ret z                                         ; $675c: $c8

    ld de, $7788                                  ; $675d: $11 $88 $77
    db $10                                        ; $6760: $10
    add l                                         ; $6761: $85
    jr z, jr_096_6766                             ; $6762: $28 $02

    ld b, b                                       ; $6764: $40
    rst $38                                       ; $6765: $ff

jr_096_6766:
    ld a, [bc]                                    ; $6766: $0a
    db $fd                                        ; $6767: $fd
    nop                                           ; $6768: $00
    dec de                                        ; $6769: $1b
    ld [bc], a                                    ; $676a: $02
    ld [$2320], sp                                ; $676b: $08 $20 $23
    jr nz, jr_096_674f                            ; $676e: $20 $df

    call c, RST_08                                ; $6770: $dc $08 $00
    rst $38                                       ; $6773: $ff
    ld [hl+], a                                   ; $6774: $22
    ld [$e800], sp                                ; $6775: $08 $00 $e8
    nop                                           ; $6778: $00
    ld a, [$109a]                                 ; $6779: $fa $9a $10
    ld c, d                                       ; $677c: $4a
    ld a, [de]                                    ; $677d: $1a
    and [hl]                                      ; $677e: $a6
    add hl, bc                                    ; $677f: $09
    call nc, $fe09                                ; $6780: $d4 $09 $fe
    ld [$e280], sp                                ; $6783: $08 $80 $e2
    ld bc, $9c24                                  ; $6786: $01 $24 $9c
    call nz, $2101                                ; $6789: $c4 $01 $21
    rst $18                                       ; $678c: $df
    or d                                          ; $678d: $b2
    add hl, bc                                    ; $678e: $09
    ld [hl], b                                    ; $678f: $70
    ld a, [bc]                                    ; $6790: $0a
    ld c, b                                       ; $6791: $48
    ld [$bf40], sp                                ; $6792: $08 $40 $bf
    jr nc, @+$24                                  ; $6795: $30 $22

    db $dd                                        ; $6797: $dd
    ld c, [hl]                                    ; $6798: $4e
    dec sp                                        ; $6799: $3b
    db $ec                                        ; $679a: $ec
    add hl, bc                                    ; $679b: $09
    nop                                           ; $679c: $00
    rst $38                                       ; $679d: $ff
    and b                                         ; $679e: $a0
    ld e, a                                       ; $679f: $5f
    call Call_000_104e                            ; $67a0: $cd $4e $10
    ld h, h                                       ; $67a3: $64
    inc de                                        ; $67a4: $13
    adc c                                         ; $67a5: $89
    ld a, [hl]                                    ; $67a6: $7e
    call nc, Call_000_1011                        ; $67a7: $d4 $11 $10
    add hl, bc                                    ; $67aa: $09
    ld c, d                                       ; $67ab: $4a
    ld d, $01                                     ; $67ac: $16 $01
    ld [bc], a                                    ; $67ae: $02
    and d                                         ; $67af: $a2
    nop                                           ; $67b0: $00
    ld b, l                                       ; $67b1: $45
    nop                                           ; $67b2: $00
    xor e                                         ; $67b3: $ab
    nop                                           ; $67b4: $00
    db $10                                        ; $67b5: $10
    stop                                          ; $67b6: $10 $00
    ld de, $d400                                  ; $67b8: $11 $00 $d4
    add b                                         ; $67bb: $80
    ld hl, sp+$38                                 ; $67bc: $f8 $38
    ld d, l                                       ; $67be: $55
    nop                                           ; $67bf: $00
    ld a, [hl+]                                   ; $67c0: $2a
    db $db                                        ; $67c1: $db
    nop                                           ; $67c2: $00
    cp b                                          ; $67c3: $b8
    ld [$2229], sp                                ; $67c4: $08 $29 $22
    and d                                         ; $67c7: $a2
    nop                                           ; $67c8: $00
    cp [hl]                                       ; $67c9: $be
    ld [$0a3c], sp                                ; $67ca: $08 $3c $0a
    inc b                                         ; $67cd: $04
    ei                                            ; $67ce: $fb
    jr nz, jr_096_6824                            ; $67cf: $20 $53

    rst $18                                       ; $67d1: $df
    adc b                                         ; $67d2: $88
    jr jr_096_6819                                ; $67d3: $18 $44

    sbc $02                                       ; $67d5: $de $02
    ld c, b                                       ; $67d7: $48
    or a                                          ; $67d8: $b7
    ld [hl], b                                    ; $67d9: $70
    add hl, bc                                    ; $67da: $09
    ld e, h                                       ; $67db: $5c
    ld [$807c], sp                                ; $67dc: $08 $7c $80
    ret nz                                        ; $67df: $c0

    db $10                                        ; $67e0: $10
    inc d                                         ; $67e1: $14
    ld [$1234], sp                                ; $67e2: $08 $34 $12
    ld b, b                                       ; $67e5: $40
    ld [bc], a                                    ; $67e6: $02
    call c, $bf00                                 ; $67e7: $dc $00 $bf
    jr nz, jr_096_682c                            ; $67ea: $20 $40

    rst $18                                       ; $67ec: $df
    cp $02                                        ; $67ed: $fe $02
    rst $38                                       ; $67ef: $ff
    ld b, l                                       ; $67f0: $45
    dec d                                         ; $67f1: $15
    add d                                         ; $67f2: $82
    ld a, [hl+]                                   ; $67f3: $2a
    rst $00                                       ; $67f4: $c7
    nop                                           ; $67f5: $00
    ccf                                           ; $67f6: $3f
    sub e                                         ; $67f7: $93

jr_096_67f8:
    cpl                                           ; $67f8: $2f
    rst $00                                       ; $67f9: $c7
    ccf                                           ; $67fa: $3f
    ld c, e                                       ; $67fb: $4b
    ccf                                           ; $67fc: $3f
    add l                                         ; $67fd: $85
    ld b, b                                       ; $67fe: $40
    ld a, a                                       ; $67ff: $7f
    inc b                                         ; $6800: $04
    jr jr_096_6808                                ; $6801: $18 $05

    ld [hl], l                                    ; $6803: $75
    ld a, [bc]                                    ; $6804: $0a
    ld a, [hl+]                                   ; $6805: $2a
    dec b                                         ; $6806: $05
    ld d, l                                       ; $6807: $55

jr_096_6808:
    add hl, de                                    ; $6808: $19
    adc d                                         ; $6809: $8a
    ld a, [hl+]                                   ; $680a: $2a
    rla                                           ; $680b: $17
    ld a, [de]                                    ; $680c: $1a
    ld [bc], a                                    ; $680d: $02
    ld e, $0a                                     ; $680e: $1e $0a
    rra                                           ; $6810: $1f
    rst $38                                       ; $6811: $ff
    ld d, a                                       ; $6812: $57
    rlca                                          ; $6813: $07
    ld bc, $3fff                                  ; $6814: $01 $ff $3f
    rst $38                                       ; $6817: $ff
    sub d                                         ; $6818: $92

jr_096_6819:
    rst $38                                       ; $6819: $ff
    dec h                                         ; $681a: $25
    rst $38                                       ; $681b: $ff
    ld l, [hl]                                    ; $681c: $6e
    ld de, $2146                                  ; $681d: $11 $46 $21
    ld e, h                                       ; $6820: $5c
    ld bc, $00aa                                  ; $6821: $01 $aa $00

jr_096_6824:
    ld a, l                                       ; $6824: $7d
    inc e                                         ; $6825: $1c
    inc c                                         ; $6826: $0c
    ld h, b                                       ; $6827: $60
    cpl                                           ; $6828: $2f
    or b                                          ; $6829: $b0
    ld e, $e7                                     ; $682a: $1e $e7

jr_096_682c:
    ld b, b                                       ; $682c: $40
    ld [c], a                                     ; $682d: $e2
    ld h, b                                       ; $682e: $60
    rrca                                          ; $682f: $0f
    adc l                                         ; $6830: $8d
    inc b                                         ; $6831: $04
    sub c                                         ; $6832: $91
    inc b                                         ; $6833: $04
    ld bc, $3a38                                  ; $6834: $01 $38 $3a
    pop af                                        ; $6837: $f1
    db $fc                                        ; $6838: $fc
    ld c, $00                                     ; $6839: $0e $00

jr_096_683b:
    cpl                                           ; $683b: $2f
    call z, $dc06                                 ; $683c: $cc $06 $dc
    ld c, c                                       ; $683f: $49
    db $fd                                        ; $6840: $fd
    rst $38                                       ; $6841: $ff
    or $eb                                        ; $6842: $f6 $eb
    ld b, c                                       ; $6844: $41
    xor d                                         ; $6845: $aa
    sbc [hl]                                      ; $6846: $9e
    dec c                                         ; $6847: $0d
    ccf                                           ; $6848: $3f
    ld [$eb27], a                                 ; $6849: $ea $27 $eb
    sbc $04                                       ; $684c: $de $04
    ld a, [$17f8]                                 ; $684e: $fa $f8 $17
    jr jr_096_6853                                ; $6851: $18 $00

jr_096_6853:
    jr jr_096_6858                                ; $6853: $18 $03

    inc bc                                        ; $6855: $03
    ld e, $1e                                     ; $6856: $1e $1e

jr_096_6858:
    ld [hl], c                                    ; $6858: $71
    ld [hl], c                                    ; $6859: $71
    ld c, $00                                     ; $685a: $0e $00
    rrca                                          ; $685c: $0f
    dec a                                         ; $685d: $3d
    ccf                                           ; $685e: $3f
    ld l, d                                       ; $685f: $6a
    ld a, a                                       ; $6860: $7f
    rst $10                                       ; $6861: $d7
    rst $38                                       ; $6862: $ff
    ld d, b                                       ; $6863: $50
    ld c, d                                       ; $6864: $4a
    ld e, a                                       ; $6865: $5f
    jr jr_096_686e                                ; $6866: $18 $06

    db $fd                                        ; $6868: $fd
    db $f4                                        ; $6869: $f4
    adc h                                         ; $686a: $8c
    inc bc                                        ; $686b: $03
    ldh a, [$60]                                  ; $686c: $f0 $60

jr_096_686e:
    ld b, $f8                                     ; $686e: $06 $f8
    nop                                           ; $6870: $00
    rst $38                                       ; $6871: $ff
    jr z, jr_096_683b                             ; $6872: $28 $c7

    jr z, jr_096_67f8                             ; $6874: $28 $82

    ld bc, $7845                                  ; $6876: $01 $45 $78
    ld [hl+], a                                   ; $6879: $22
    jp nz, $f029                                  ; $687a: $c2 $29 $f0

    inc bc                                        ; $687d: $03
    ld e, b                                       ; $687e: $58
    rst $38                                       ; $687f: $ff
    rlca                                          ; $6880: $07
    ld [hl], h                                    ; $6881: $74
    ld b, $f9                                     ; $6882: $06 $f9
    ld [hl], a                                    ; $6884: $77
    cp $18                                        ; $6885: $fe $18
    ld [$081c], sp                                ; $6887: $08 $1c $08
    ld a, [bc]                                    ; $688a: $0a
    ld [$a649], sp                                ; $688b: $08 $49 $a6
    inc bc                                        ; $688e: $03
    sbc d                                         ; $688f: $9a
    dec bc                                        ; $6890: $0b
    nop                                           ; $6891: $00
    inc l                                         ; $6892: $2c
    xor e                                         ; $6893: $ab
    inc [hl]                                      ; $6894: $34
    ld [$9afc], sp                                ; $6895: $08 $fc $9a
    ld b, $fa                                     ; $6898: $06 $fa
    ldh [rSC], a                                  ; $689a: $e0 $02
    xor c                                         ; $689c: $a9
    ld d, d                                       ; $689d: $52
    dec bc                                        ; $689e: $0b
    cpl                                           ; $689f: $2f
    ld [bc], a                                    ; $68a0: $02
    adc [hl]                                      ; $68a1: $8e
    add b                                         ; $68a2: $80
    ld [bc], a                                    ; $68a3: $02
    add d                                         ; $68a4: $82
    nop                                           ; $68a5: $00
    add sp, -$80                                  ; $68a6: $e8 $80
    ld a, [de]                                    ; $68a8: $1a
    inc a                                         ; $68a9: $3c
    ld d, $43                                     ; $68aa: $16 $43
    ld b, $e3                                     ; $68ac: $06 $e3
    ld bc, $e0e3                                  ; $68ae: $01 $e3 $e0
    ldh [$d0], a                                  ; $68b1: $e0 $d0
    ldh a, [$ec]                                  ; $68b3: $f0 $ec
    db $fc                                        ; $68b5: $fc
    ld c, $08                                     ; $68b6: $0e $08
    add b                                         ; $68b8: $80
    and h                                         ; $68b9: $a4
    ld a, [bc]                                    ; $68ba: $0a
    ret nz                                        ; $68bb: $c0

    ret nz                                        ; $68bc: $c0

    ldh [$e0], a                                  ; $68bd: $e0 $e0
    jr c, jr_096_68f9                             ; $68bf: $38 $38

    rra                                           ; $68c1: $1f
    inc c                                         ; $68c2: $0c
    rra                                           ; $68c3: $1f
    or $fe                                        ; $68c4: $f6 $fe
    ei                                            ; $68c6: $fb
    ld e, $17                                     ; $68c7: $1e $17
    ld e, e                                       ; $68c9: $5b
    ld l, $06                                     ; $68ca: $2e $06
    ld b, $04                                     ; $68cc: $06 $04
    nop                                           ; $68ce: $00
    nop                                           ; $68cf: $00
    adc a                                         ; $68d0: $8f
    adc a                                         ; $68d1: $8f
    rst $30                                       ; $68d2: $f7
    ld e, d                                       ; $68d3: $5a
    ld b, $fc                                     ; $68d4: $06 $fc
    db $fc                                        ; $68d6: $fc
    dec b                                         ; $68d7: $05
    ldh a, [$f0]                                  ; $68d8: $f0 $f0
    ret nz                                        ; $68da: $c0

    ret nz                                        ; $68db: $c0

    rst $38                                       ; $68dc: $ff
    ld c, $05                                     ; $68dd: $0e $05
    ld l, a                                       ; $68df: $6f
    ld l, [hl]                                    ; $68e0: $6e
    ld b, $80                                     ; $68e1: $06 $80
    add a                                         ; $68e3: $87
    rrca                                          ; $68e4: $0f
    ccf                                           ; $68e5: $3f
    ccf                                           ; $68e6: $3f
    di                                            ; $68e7: $f3
    di                                            ; $68e8: $f3
    nop                                           ; $68e9: $00
    nop                                           ; $68ea: $00
    ld bc, $0100                                  ; $68eb: $01 $00 $01
    rrca                                          ; $68ee: $0f
    rrca                                          ; $68ef: $0f
    ld a, [hl-]                                   ; $68f0: $3a
    ccf                                           ; $68f1: $3f
    ld d, a                                       ; $68f2: $57
    ld a, a                                       ; $68f3: $7f
    cp a                                          ; $68f4: $bf
    nop                                           ; $68f5: $00
    rst $38                                       ; $68f6: $ff
    ld hl, sp-$08                                 ; $68f7: $f8 $f8

jr_096_68f9:
    pop bc                                        ; $68f9: $c1
    pop bc                                        ; $68fa: $c1
    add c                                         ; $68fb: $81
    add c                                         ; $68fc: $81
    ld bc, $0102                                  ; $68fd: $01 $02 $01
    inc bc                                        ; $6900: $03
    inc bc                                        ; $6901: $03
    rst $30                                       ; $6902: $f7
    rst $30                                       ; $6903: $f7
    ld e, a                                       ; $6904: $5f
    sub [hl]                                      ; $6905: $96
    ld c, $7f                                     ; $6906: $0e $7f
    nop                                           ; $6908: $00
    rra                                           ; $6909: $1f
    rra                                           ; $690a: $1f
    rrca                                          ; $690b: $0f
    rrca                                          ; $690c: $0f
    nop                                           ; $690d: $00
    nop                                           ; $690e: $00
    inc bc                                        ; $690f: $03
    inc bc                                        ; $6910: $03
    ld [bc], a                                    ; $6911: $02
    ld b, $07                                     ; $6912: $06 $07
    rrca                                          ; $6914: $0f
    rrca                                          ; $6915: $0f
    rlca                                          ; $6916: $07
    rlca                                          ; $6917: $07
    ret c                                         ; $6918: $d8

    ld [de], a                                    ; $6919: $12
    db $fd                                        ; $691a: $fd
    ld a, b                                       ; $691b: $78
    add h                                         ; $691c: $84
    ld h, $03                                     ; $691d: $26 $03
    ld a, [hl+]                                   ; $691f: $2a
    dec bc                                        ; $6920: $0b
    ld h, b                                       ; $6921: $60
    inc c                                         ; $6922: $0c
    and h                                         ; $6923: $a4
    inc e                                         ; $6924: $1c
    ld [$44f7], sp                                ; $6925: $08 $f7 $44

jr_096_6928:
    ld l, d                                       ; $6928: $6a
    cp e                                          ; $6929: $bb
    cp b                                          ; $692a: $b8
    ld a, [bc]                                    ; $692b: $0a
    ld [hl], h                                    ; $692c: $74
    inc bc                                        ; $692d: $03
    rst $28                                       ; $692e: $ef
    nop                                           ; $692f: $00
    dec hl                                        ; $6930: $2b
    ld b, b                                       ; $6931: $40
    add hl, sp                                    ; $6932: $39
    inc de                                        ; $6933: $13
    jr nz, jr_096_693c                            ; $6934: $20 $06

    ld d, c                                       ; $6936: $51
    add b                                         ; $6937: $80
    rst $38                                       ; $6938: $ff
    add hl, bc                                    ; $6939: $09
    or $2c                                        ; $693a: $f6 $2c

jr_096_693c:
    inc c                                         ; $693c: $0c
    sbc b                                         ; $693d: $98
    ld a, [de]                                    ; $693e: $1a
    db $10                                        ; $693f: $10
    inc b                                         ; $6940: $04
    rst $28                                       ; $6941: $ef
    db $10                                        ; $6942: $10
    rst $28                                       ; $6943: $ef
    add d                                         ; $6944: $82
    db $fd                                        ; $6945: $fd
    ld [hl-], a                                   ; $6946: $32
    inc c                                         ; $6947: $0c
    ld [de], a                                    ; $6948: $12
    db $ed                                        ; $6949: $ed
    inc hl                                        ; $694a: $23
    adc b                                         ; $694b: $88
    ld [hl], a                                    ; $694c: $77
    sub [hl]                                      ; $694d: $96

jr_096_694e:
    inc e                                         ; $694e: $1c
    ld d, b                                       ; $694f: $50
    xor a                                         ; $6950: $af
    ld b, h                                       ; $6951: $44
    ld a, b                                       ; $6952: $78
    inc bc                                        ; $6953: $03
    ld [c], a                                     ; $6954: $e2
    ld a, [bc]                                    ; $6955: $0a
    dec [hl]                                      ; $6956: $35
    adc d                                         ; $6957: $8a
    push af                                       ; $6958: $f5
    halt                                          ; $6959: $76
    ld a, [de]                                    ; $695a: $1a
    ld [bc], a                                    ; $695b: $02
    inc b                                         ; $695c: $04
    db $fd                                        ; $695d: $fd
    xor d                                         ; $695e: $aa
    dec bc                                        ; $695f: $0b
    ld [$0a1a], sp                                ; $6960: $08 $1a $0a
    sub l                                         ; $6963: $95
    adc d                                         ; $6964: $8a
    ld [de], a                                    ; $6965: $12
    db $10                                        ; $6966: $10
    rst $38                                       ; $6967: $ff
    inc h                                         ; $6968: $24
    ld [$8801], sp                                ; $6969: $08 $01 $88
    inc b                                         ; $696c: $04
    inc b                                         ; $696d: $04
    adc h                                         ; $696e: $8c
    inc b                                         ; $696f: $04
    jp $0520                                      ; $6970: $c3 $20 $05


    db $ec                                        ; $6973: $ec
    dec b                                         ; $6974: $05
    ld b, d                                       ; $6975: $42
    cp a                                          ; $6976: $bf
    db $10                                        ; $6977: $10
    rst $28                                       ; $6978: $ef
    ld d, d                                       ; $6979: $52
    ld a, [bc]                                    ; $697a: $0a
    ld b, b                                       ; $697b: $40
    ld [bc], a                                    ; $697c: $02
    inc h                                         ; $697d: $24
    ld a, a                                       ; $697e: $7f
    ld [hl+], a                                   ; $697f: $22
    sub d                                         ; $6980: $92
    inc b                                         ; $6981: $04
    adc b                                         ; $6982: $88
    ld [hl], a                                    ; $6983: $77
    add b                                         ; $6984: $80
    dec de                                        ; $6985: $1b
    ld b, c                                       ; $6986: $41
    ld bc, $0000                                  ; $6987: $01 $00 $00
    ld bc, $0200                                  ; $698a: $01 $00 $02
    inc b                                         ; $698d: $04
    ld de, $2a80                                  ; $698e: $11 $80 $2a
    ld bc, $5d01                                  ; $6991: $01 $01 $5d
    jr nz, jr_096_694e                            ; $6994: $20 $b8

    inc b                                         ; $6996: $04
    nop                                           ; $6997: $00
    jr nz, jr_096_6928                            ; $6998: $20 $8e

    dec bc                                        ; $699a: $0b
    add b                                         ; $699b: $80
    adc a                                         ; $699c: $8f
    inc bc                                        ; $699d: $03
    db $10                                        ; $699e: $10
    ld [de], a                                    ; $699f: $12
    inc b                                         ; $69a0: $04
    ld bc, $0a00                                  ; $69a1: $01 $00 $0a
    ld b, d                                       ; $69a4: $42
    adc b                                         ; $69a5: $88
    ret nc                                        ; $69a6: $d0

    dec bc                                        ; $69a7: $0b
    nop                                           ; $69a8: $00
    add c                                         ; $69a9: $81
    add c                                         ; $69aa: $81
    and c                                         ; $69ab: $a1
    nop                                           ; $69ac: $00
    xor b                                         ; $69ad: $a8
    add b                                         ; $69ae: $80
    ld d, h                                       ; $69af: $54
    ld b, b                                       ; $69b0: $40
    ld [$420b], sp                                ; $69b1: $08 $0b $42
    ld [$0000], sp                                ; $69b4: $08 $00 $00
    inc b                                         ; $69b7: $04
    nop                                           ; $69b8: $00
    nop                                           ; $69b9: $00
    nop                                           ; $69ba: $00
    scf                                           ; $69bb: $37
    scf                                           ; $69bc: $37
    jp $8fc3                                      ; $69bd: $c3 $c3 $8f


    adc a                                         ; $69c0: $8f
    ccf                                           ; $69c1: $3f
    ccf                                           ; $69c2: $3f
    nop                                           ; $69c3: $00
    ld a, a                                       ; $69c4: $7f
    ld a, a                                       ; $69c5: $7f
    ccf                                           ; $69c6: $3f
    ccf                                           ; $69c7: $3f
    rrca                                          ; $69c8: $0f
    rrca                                          ; $69c9: $0f
    sbc a                                         ; $69ca: $9f
    sbc a                                         ; $69cb: $9f
    ret nz                                        ; $69cc: $c0

    nop                                           ; $69cd: $00
    inc c                                         ; $69ce: $0c
    ld [de], a                                    ; $69cf: $12
    add hl, bc                                    ; $69d0: $09
    add $c6                                       ; $69d1: $c6 $c6
    ld a, [hl]                                    ; $69d3: $7e
    ld a, [hl]                                    ; $69d4: $7e
    rrca                                          ; $69d5: $0f
    rrca                                          ; $69d6: $0f
    ld d, $01                                     ; $69d7: $16 $01
    ld bc, $40fb                                  ; $69d9: $01 $fb $40
    ld b, $8f                                     ; $69dc: $06 $8f
    or b                                          ; $69de: $b0
    rlca                                          ; $69df: $07
    cp e                                          ; $69e0: $bb
    rra                                           ; $69e1: $1f
    ccf                                           ; $69e2: $3f
    nop                                           ; $69e3: $00
    ccf                                           ; $69e4: $3f
    ld [hl], b                                    ; $69e5: $70
    ld [hl], b                                    ; $69e6: $70
    ld c, $0e                                     ; $69e7: $0e $0e
    inc bc                                        ; $69e9: $03
    inc bc                                        ; $69ea: $03
    dec a                                         ; $69eb: $3d
    ld hl, $eb3f                                  ; $69ec: $21 $3f $eb
    sub $07                                       ; $69ef: $d6 $07
    ld [$0408], sp                                ; $69f1: $08 $08 $04
    inc b                                         ; $69f4: $04
    ld a, [hl-]                                   ; $69f5: $3a
    ld [$ef60], sp                                ; $69f6: $08 $60 $ef
    ret z                                         ; $69f9: $c8

    rlca                                          ; $69fa: $07
    push hl                                       ; $69fb: $e5
    rrca                                          ; $69fc: $0f
    adc a                                         ; $69fd: $8f
    adc a                                         ; $69fe: $8f
    rra                                           ; $69ff: $1f
    rra                                           ; $6a00: $1f
    ld b, $10                                     ; $6a01: $06 $10
    ld b, $03                                     ; $6a03: $06 $03
    inc bc                                        ; $6a05: $03
    ld d, d                                       ; $6a06: $52
    add hl, bc                                    ; $6a07: $09
    ld c, $0f                                     ; $6a08: $0e $0f
    ld de, $0f1f                                  ; $6a0a: $11 $1f $0f
    dec hl                                        ; $6a0d: $2b
    ccf                                           ; $6a0e: $3f
    ld a, $3e                                     ; $6a0f: $3e $3e
    add d                                         ; $6a11: $82
    inc c                                         ; $6a12: $0c
    inc d                                         ; $6a13: $14
    dec bc                                        ; $6a14: $0b
    jp z, Jump_096_6018                           ; $6a15: $ca $18 $60

    inc bc                                        ; $6a18: $03
    nop                                           ; $6a19: $00
    nop                                           ; $6a1a: $00
    add h                                         ; $6a1b: $84
    ld bc, $0210                                  ; $6a1c: $01 $10 $02
    inc b                                         ; $6a1f: $04
    inc b                                         ; $6a20: $04
    jr nz, jr_096_6a73                            ; $6a21: $20 $50

    jr z, jr_096_6a2f                             ; $6a23: $28 $0a

    nop                                           ; $6a25: $00
    add h                                         ; $6a26: $84

jr_096_6a27:
    cp d                                          ; $6a27: $ba
    nop                                           ; $6a28: $00
    xor e                                         ; $6a29: $ab
    nop                                           ; $6a2a: $00
    ld d, l                                       ; $6a2b: $55
    ld b, b                                       ; $6a2c: $40
    nop                                           ; $6a2d: $00
    db $eb                                        ; $6a2e: $eb

jr_096_6a2f:
    nop                                           ; $6a2f: $00
    dec d                                         ; $6a30: $15
    nop                                           ; $6a31: $00
    dec hl                                        ; $6a32: $2b
    nop                                           ; $6a33: $00
    ld d, a                                       ; $6a34: $57
    nop                                           ; $6a35: $00
    ld a, b                                       ; $6a36: $78
    rst $28                                       ; $6a37: $ef
    ld h, b                                       ; $6a38: $60
    inc bc                                        ; $6a39: $03
    ld [bc], a                                    ; $6a3a: $02
    add hl, bc                                    ; $6a3b: $09
    cp h                                          ; $6a3c: $bc
    dec d                                         ; $6a3d: $15
    ret c                                         ; $6a3e: $d8

    inc c                                         ; $6a3f: $0c
    ld bc, $88fe                                  ; $6a40: $01 $fe $88
    nop                                           ; $6a43: $00
    adc b                                         ; $6a44: $88
    nop                                           ; $6a45: $00
    add b                                         ; $6a46: $80
    ld bc, $8841                                  ; $6a47: $01 $41 $88
    jr nz, @+$12                                  ; $6a4a: $20 $10

    nop                                           ; $6a4c: $00
    ret nc                                        ; $6a4d: $d0

    ld [bc], a                                    ; $6a4e: $02
    and b                                         ; $6a4f: $a0
    ld b, b                                       ; $6a50: $40
    ld d, b                                       ; $6a51: $50
    ld a, [bc]                                    ; $6a52: $0a
    jr z, jr_096_6a55                             ; $6a53: $28 $00

jr_096_6a55:
    nop                                           ; $6a55: $00
    push af                                       ; $6a56: $f5
    ld [$40f6], sp                                ; $6a57: $08 $f6 $40
    ld a, a                                       ; $6a5a: $7f
    ld [$00af], sp                                ; $6a5b: $08 $af $00
    nop                                           ; $6a5e: $00
    ld d, l                                       ; $6a5f: $55
    add d                                         ; $6a60: $82
    nop                                           ; $6a61: $00
    ld b, b                                       ; $6a62: $40
    add b                                         ; $6a63: $80
    ld [$01e8], sp                                ; $6a64: $08 $e8 $01
    ret nc                                        ; $6a67: $d0

    ld l, c                                       ; $6a68: $69
    inc b                                         ; $6a69: $04
    adc l                                         ; $6a6a: $8d
    dec bc                                        ; $6a6b: $0b
    inc h                                         ; $6a6c: $24
    call z, Call_000_2100                         ; $6a6d: $cc $00 $21
    ld b, c                                       ; $6a70: $41
    db $10                                        ; $6a71: $10
    sub b                                         ; $6a72: $90

jr_096_6a73:
    nop                                           ; $6a73: $00
    nop                                           ; $6a74: $00
    ret nc                                        ; $6a75: $d0

    ld b, d                                       ; $6a76: $42
    xor d                                         ; $6a77: $aa
    nop                                           ; $6a78: $00
    db $f4                                        ; $6a79: $f4
    nop                                           ; $6a7a: $00
    ld a, [$2000]                                 ; $6a7b: $fa $00 $20
    push af                                       ; $6a7e: $f5
    nop                                           ; $6a7f: $00
    ld a, [$fd00]                                 ; $6a80: $fa $00 $fd
    ld [$abf6], sp                                ; $6a83: $08 $f6 $ab
    dec h                                         ; $6a86: $25
    nop                                           ; $6a87: $00
    jr nz, jr_096_6a27                            ; $6a88: $20 $9d

    ld bc, $0480                                  ; $6a8a: $01 $80 $04
    ld [$f004], sp                                ; $6a8d: $08 $04 $f0
    nop                                           ; $6a90: $00
    and b                                         ; $6a91: $a0
    ld hl, $14c0                                  ; $6a92: $21 $c0 $14
    dec c                                         ; $6a95: $0d
    jr nz, jr_096_6a98                            ; $6a96: $20 $00

jr_096_6a98:
    db $10                                        ; $6a98: $10
    ld [$7410], a                                 ; $6a99: $ea $10 $74
    add d                                         ; $6a9c: $82
    ld a, d                                       ; $6a9d: $7a
    nop                                           ; $6a9e: $00
    jr z, @+$52                                   ; $6a9f: $28 $50

    nop                                           ; $6aa1: $00
    add sp, $04                                   ; $6aa2: $e8 $04
    push af                                       ; $6aa4: $f5
    nop                                           ; $6aa5: $00
    db $eb                                        ; $6aa6: $eb
    jr nz, @+$22                                  ; $6aa7: $20 $20

    rst $10                                       ; $6aa9: $d7
    ld a, [$5505]                                 ; $6aaa: $fa $05 $55
    nop                                           ; $6aad: $00
    dec hl                                        ; $6aae: $2b
    adc d                                         ; $6aaf: $8a
    ld d, a                                       ; $6ab0: $57
    inc b                                         ; $6ab1: $04
    inc b                                         ; $6ab2: $04
    cp e                                          ; $6ab3: $bb
    db $10                                        ; $6ab4: $10
    ld a, a                                       ; $6ab5: $7f
    ld bc, $1ba8                                  ; $6ab6: $01 $a8 $1b
    db $fd                                        ; $6ab9: $fd
    nop                                           ; $6aba: $00
    ld d, b                                       ; $6abb: $50
    ld a, [$54f0]                                 ; $6abc: $fa $f0 $54
    dec b                                         ; $6abf: $05
    sbc h                                         ; $6ac0: $9c
    ld [bc], a                                    ; $6ac1: $02
    ld d, c                                       ; $6ac2: $51
    nop                                           ; $6ac3: $00
    and d                                         ; $6ac4: $a2
    ld b, b                                       ; $6ac5: $40
    ld d, c                                       ; $6ac6: $51
    or c                                          ; $6ac7: $b1
    ld e, $05                                     ; $6ac8: $1e $05
    db $ed                                        ; $6aca: $ed
    jr nc, jr_096_6ad9                            ; $6acb: $30 $0c

    db $10                                        ; $6acd: $10
    rst $28                                       ; $6ace: $ef
    add h                                         ; $6acf: $84
    inc c                                         ; $6ad0: $0c
    ld d, $91                                     ; $6ad1: $16 $91
    sub h                                         ; $6ad3: $94
    inc e                                         ; $6ad4: $1c
    ld [bc], a                                    ; $6ad5: $02
    ld [bc], a                                    ; $6ad6: $02
    ld a, [bc]                                    ; $6ad7: $0a
    ld a, [bc]                                    ; $6ad8: $0a

jr_096_6ad9:
    db $10                                        ; $6ad9: $10
    db $10                                        ; $6ada: $10
    ld b, h                                       ; $6adb: $44
    ld [hl], h                                    ; $6adc: $74
    nop                                           ; $6add: $00
    jr nz, @+$03                                  ; $6ade: $20 $01

    ld bc, $0216                                  ; $6ae0: $01 $16 $02
    db $f4                                        ; $6ae3: $f4
    nop                                           ; $6ae4: $00
    add sp, $20                                   ; $6ae5: $e8 $20
    ret nc                                        ; $6ae7: $d0

    nop                                           ; $6ae8: $00
    ld [bc], a                                    ; $6ae9: $02
    ld l, b                                       ; $6aea: $68
    add b                                         ; $6aeb: $80
    ret nz                                        ; $6aec: $c0

    nop                                           ; $6aed: $00
    add d                                         ; $6aee: $82
    ld [$0a5c], sp                                ; $6aef: $08 $5c $0a
    add b                                         ; $6af2: $80
    ld [$bd42], a                                 ; $6af3: $ea $42 $bd
    ld l, d                                       ; $6af6: $6a
    ld c, $81                                     ; $6af7: $0e $81
    add $17                                       ; $6af9: $c6 $17
    add b                                         ; $6afb: $80
    ld d, a                                       ; $6afc: $57
    ld a, a                                       ; $6afd: $7f
    add sp, $0c                                   ; $6afe: $e8 $0c

Call_096_6b00:
    ld b, c                                       ; $6b00: $41
    ld a, [$8026]                                 ; $6b01: $fa $26 $80
    ld [hl], d                                    ; $6b04: $72
    nop                                           ; $6b05: $00
    call nz, $e206                                ; $6b06: $c4 $06 $e2
    ld de, $86a4                                  ; $6b09: $11 $a4 $86
    ld c, $10                                     ; $6b0c: $0e $10
    and b                                         ; $6b0e: $a0
    dec d                                         ; $6b0f: $15
    add b                                         ; $6b10: $80
    ld a, a                                       ; $6b11: $7f
    ld h, b                                       ; $6b12: $60
    ld c, $04                                     ; $6b13: $0e $04
    ei                                            ; $6b15: $fb
    db $e3                                        ; $6b16: $e3
    adc [hl]                                      ; $6b17: $8e
    ld b, $20                                     ; $6b18: $06 $20
    ld a, [bc]                                    ; $6b1a: $0a
    ld a, [bc]                                    ; $6b1b: $0a
    ld [bc], a                                    ; $6b1c: $02
    add d                                         ; $6b1d: $82
    ld a, a                                       ; $6b1e: $7f
    jr z, @-$56                                   ; $6b1f: $28 $a8

    nop                                           ; $6b21: $00
    ldh [$0d], a                                  ; $6b22: $e0 $0d
    jp Jump_000_0e72                              ; $6b24: $c3 $72 $0e


    adc h                                         ; $6b27: $8c
    dec c                                         ; $6b28: $0d
    adc d                                         ; $6b29: $8a
    ld [hl], a                                    ; $6b2a: $77
    inc b                                         ; $6b2b: $04
    ei                                            ; $6b2c: $fb
    ld [hl+], a                                   ; $6b2d: $22
    ld [bc], a                                    ; $6b2e: $02
    ld e, b                                       ; $6b2f: $58
    inc h                                         ; $6b30: $24
    ld hl, sp+$46                                 ; $6b31: $f8 $46
    inc c                                         ; $6b33: $0c
    sub [hl]                                      ; $6b34: $96
    ld b, $b4                                     ; $6b35: $06 $b4
    ld b, $4e                                     ; $6b37: $06 $4e
    ld [$1e30], sp                                ; $6b39: $08 $30 $1e
    ld d, c                                       ; $6b3c: $51
    cp $81                                        ; $6b3d: $fe $81
    add hl, de                                    ; $6b3f: $19
    cp $05                                        ; $6b40: $fe $05
    ld a, [$0e70]                                 ; $6b42: $fa $70 $0e
    ld d, b                                       ; $6b45: $50
    inc d                                         ; $6b46: $14
    ld a, a                                       ; $6b47: $7f
    ld c, a                                       ; $6b48: $4f
    inc b                                         ; $6b49: $04
    nop                                           ; $6b4a: $00
    add hl, sp                                    ; $6b4b: $39
    rst $08                                       ; $6b4c: $cf
    ccf                                           ; $6b4d: $3f
    ld d, b                                       ; $6b4e: $50
    inc c                                         ; $6b4f: $0c
    ld [hl+], a                                   ; $6b50: $22
    ld c, $c8                                     ; $6b51: $0e $c8
    ld c, $05                                     ; $6b53: $0e $05
    ld a, [$0eee]                                 ; $6b55: $fa $ee $0e
    ld l, c                                       ; $6b58: $69
    add d                                         ; $6b59: $82
    adc d                                         ; $6b5a: $8a
    rlca                                          ; $6b5b: $07
    adc b                                         ; $6b5c: $88
    rrca                                          ; $6b5d: $0f
    ld b, d                                       ; $6b5e: $42
    ld l, b                                       ; $6b5f: $68
    dec d                                         ; $6b60: $15
    sub c                                         ; $6b61: $91
    ld l, a                                       ; $6b62: $6f
    ld b, h                                       ; $6b63: $44
    rrca                                          ; $6b64: $0f
    db $e4                                        ; $6b65: $e4
    ld b, h                                       ; $6b66: $44
    ld c, $68                                     ; $6b67: $0e $68
    dec b                                         ; $6b69: $05
    inc h                                         ; $6b6a: $24
    rla                                           ; $6b6b: $17
    ld b, d                                       ; $6b6c: $42
    cp a                                          ; $6b6d: $bf
    jp c, $801a                                   ; $6b6e: $da $1a $80

    ld a, a                                       ; $6b71: $7f
    jr nc, jr_096_6bc5                            ; $6b72: $30 $51

    cp [hl]                                       ; $6b74: $be
    xor h                                         ; $6b75: $ac
    rlca                                          ; $6b76: $07
    or h                                          ; $6b77: $b4
    inc b                                         ; $6b78: $04
    nop                                           ; $6b79: $00
    rst $38                                       ; $6b7a: $ff
    add h                                         ; $6b7b: $84
    ld a, e                                       ; $6b7c: $7b
    add sp, -$68                                  ; $6b7d: $e8 $98
    ld [bc], a                                    ; $6b7f: $02
    ld d, $17                                     ; $6b80: $16 $17
    ld [$ef11], sp                                ; $6b82: $08 $11 $ef
    ld [$050f], sp                                ; $6b85: $08 $0f $05
    cp $20                                        ; $6b88: $fe $20
    ld a, b                                       ; $6b8a: $78
    rst $18                                       ; $6b8b: $df
    jp nc, Jump_000_2c12                          ; $6b8c: $d2 $12 $2c

    db $10                                        ; $6b8f: $10
    ld l, $2e                                     ; $6b90: $2e $2e
    sub h                                         ; $6b92: $94
    ld c, $54                                     ; $6b93: $0e $54
    ld d, l                                       ; $6b95: $55
    xor [hl]                                      ; $6b96: $ae
    ld a, [de]                                    ; $6b97: $1a
    xor a                                         ; $6b98: $af
    ld d, h                                       ; $6b99: $54
    ld d, l                                       ; $6b9a: $55
    pop de                                        ; $6b9b: $d1
    inc bc                                        ; $6b9c: $03
    ld d, b                                       ; $6b9d: $50
    ld l, $bf                                     ; $6b9e: $2e $bf
    ld b, $06                                     ; $6ba0: $06 $06
    cpl                                           ; $6ba2: $2f
    nop                                           ; $6ba3: $00
    nop                                           ; $6ba4: $00
    rla                                           ; $6ba5: $17
    nop                                           ; $6ba6: $00
    dec bc                                        ; $6ba7: $0b
    ld b, b                                       ; $6ba8: $40
    ld b, a                                       ; $6ba9: $47
    nop                                           ; $6baa: $00
    dec bc                                        ; $6bab: $0b
    ld [$0500], sp                                ; $6bac: $08 $00 $05
    jr nz, jr_096_6bd8                            ; $6baf: $20 $27

    ld a, [bc]                                    ; $6bb1: $0a
    db $10                                        ; $6bb2: $10
    rrca                                          ; $6bb3: $0f
    nop                                           ; $6bb4: $00
    dec bc                                        ; $6bb5: $0b
    ld a, [bc]                                    ; $6bb6: $0a
    jr nz, jr_096_6be0                            ; $6bb7: $20 $27

    add b                                         ; $6bb9: $80
    adc a                                         ; $6bba: $8f
    jr jr_096_6bcd                                ; $6bbb: $18 $10

    ld d, a                                       ; $6bbd: $57
    jr jr_096_6bc0                                ; $6bbe: $18 $00

jr_096_6bc0:
    rlca                                          ; $6bc0: $07
    dec [hl]                                      ; $6bc1: $35
    nop                                           ; $6bc2: $00
    rrca                                          ; $6bc3: $0f
    ld a, [de]                                    ; $6bc4: $1a

jr_096_6bc5:
    ld [$0028], sp                                ; $6bc5: $08 $28 $00
    dec de                                        ; $6bc8: $1b
    ld l, $00                                     ; $6bc9: $2e $00
    ld d, a                                       ; $6bcb: $57
    inc a                                         ; $6bcc: $3c

jr_096_6bcd:
    ld b, $b6                                     ; $6bcd: $06 $b6
    add b                                         ; $6bcf: $80
    ld h, [hl]                                    ; $6bd0: $66
    and b                                         ; $6bd1: $a0
    db $e4                                        ; $6bd2: $e4
    ld b, h                                       ; $6bd3: $44
    adc b                                         ; $6bd4: $88
    ld c, $0a                                     ; $6bd5: $0e $0a
    xor c                                         ; $6bd7: $a9

jr_096_6bd8:
    ld bc, $1e9c                                  ; $6bd8: $01 $9c $1e
    dec d                                         ; $6bdb: $15
    push de                                       ; $6bdc: $d5
    inc e                                         ; $6bdd: $1c
    nop                                           ; $6bde: $00
    inc b                                         ; $6bdf: $04

jr_096_6be0:
    dec c                                         ; $6be0: $0d
    ld d, l                                       ; $6be1: $55
    jr nz, jr_096_6c34                            ; $6be2: $20 $50

    xor d                                         ; $6be4: $aa
    adc a                                         ; $6be5: $8f
    ld b, $2a                                     ; $6be6: $06 $2a
    adc h                                         ; $6be8: $8c
    ld b, $ae                                     ; $6be9: $06 $ae
    ret nz                                        ; $6beb: $c0

    ld l, $aa                                     ; $6bec: $2e $aa
    ld b, l                                       ; $6bee: $45
    inc bc                                        ; $6bef: $03
    ld a, [hl+]                                   ; $6bf0: $2a
    add $1b                                       ; $6bf1: $c6 $1b
    ld d, b                                       ; $6bf3: $50
    jr nz, jr_096_6c26                            ; $6bf4: $20 $30

    ld [$a015], sp                                ; $6bf6: $08 $15 $a0
    xor [hl]                                      ; $6bf9: $ae
    ld b, $10                                     ; $6bfa: $06 $10
    ld bc, $3010                                  ; $6bfc: $01 $10 $30
    jr nc, jr_096_6c14                            ; $6bff: $30 $13

    ld [bc], a                                    ; $6c01: $02
    ld a, [hl+]                                   ; $6c02: $2a
    inc l                                         ; $6c03: $2c
    nop                                           ; $6c04: $00
    ld [hl], l                                    ; $6c05: $75
    ld e, l                                       ; $6c06: $5d
    inc bc                                        ; $6c07: $03
    dec b                                         ; $6c08: $05
    ld d, b                                       ; $6c09: $50
    dec d                                         ; $6c0a: $15
    ld [hl], $0c                                  ; $6c0b: $36 $0c
    ld [bc], a                                    ; $6c0d: $02
    inc bc                                        ; $6c0e: $03
    jr nz, jr_096_6c14                            ; $6c0f: $20 $03

jr_096_6c11:
    inc bc                                        ; $6c11: $03
    ld h, b                                       ; $6c12: $60
    dec l                                         ; $6c13: $2d

jr_096_6c14:
    add b                                         ; $6c14: $80
    add b                                         ; $6c15: $80
    pop bc                                        ; $6c16: $c1
    pop bc                                        ; $6c17: $c1
    pop hl                                        ; $6c18: $e1
    add b                                         ; $6c19: $80
    ld bc, $ee00                                  ; $6c1a: $01 $00 $ee
    ld b, h                                       ; $6c1d: $44
    ld d, l                                       ; $6c1e: $55
    nop                                           ; $6c1f: $00
    xor $44                                       ; $6c20: $ee $44
    db $dd                                        ; $6c22: $dd
    inc b                                         ; $6c23: $04
    adc b                                         ; $6c24: $88
    ret z                                         ; $6c25: $c8

jr_096_6c26:
    ret z                                         ; $6c26: $c8

    sbc l                                         ; $6c27: $9d
    sbc b                                         ; $6c28: $98
    ld bc, $0608                                  ; $6c29: $01 $08 $06
    rlca                                          ; $6c2c: $07
    ld b, b                                       ; $6c2d: $40
    dec b                                         ; $6c2e: $05
    ld c, h                                       ; $6c2f: $4c
    inc b                                         ; $6c30: $04
    dec c                                         ; $6c31: $0d
    rrca                                          ; $6c32: $0f
    dec de                                        ; $6c33: $1b

jr_096_6c34:
    rra                                           ; $6c34: $1f
    rla                                           ; $6c35: $17
    rra                                           ; $6c36: $1f
    nop                                           ; $6c37: $00
    ld e, $1e                                     ; $6c38: $1e $1e
    ld a, $3e                                     ; $6c3a: $3e $3e
    pop bc                                        ; $6c3c: $c1
    pop bc                                        ; $6c3d: $c1
    ret nz                                        ; $6c3e: $c0

    ret nz                                        ; $6c3f: $c0

    inc b                                         ; $6c40: $04
    adc b                                         ; $6c41: $88
    adc b                                         ; $6c42: $88
    db $dd                                        ; $6c43: $dd
    adc b                                         ; $6c44: $88
    ld [de], a                                    ; $6c45: $12
    ld d, d                                       ; $6c46: $52
    nop                                           ; $6c47: $00
    and b                                         ; $6c48: $a0
    and b                                         ; $6c49: $a0
    inc b                                         ; $6c4a: $04
    db $e4                                        ; $6c4b: $e4
    db $e4                                        ; $6c4c: $e4
    adc b                                         ; $6c4d: $88
    adc b                                         ; $6c4e: $88
    call z, Call_000_0001                         ; $6c4f: $cc $01 $00
    call nz, $0084                                ; $6c52: $c4 $84 $00
    xor $44                                       ; $6c55: $ee $44
    add [hl]                                      ; $6c57: $86
    add $e2                                       ; $6c58: $c6 $e2
    ld [c], a                                     ; $6c5a: $e2
    jp $a8e3                                      ; $6c5b: $c3 $e3 $a8


    add b                                         ; $6c5e: $80
    rrca                                          ; $6c5f: $0f
    ld a, [bc]                                    ; $6c60: $0a
    ld c, b                                       ; $6c61: $48

jr_096_6c62:
    rlca                                          ; $6c62: $07
    xor b                                         ; $6c63: $a8
    adc c                                         ; $6c64: $89
    rlca                                          ; $6c65: $07
    xor [hl]                                      ; $6c66: $ae
    ld b, $04                                     ; $6c67: $06 $04
    nop                                           ; $6c69: $00
    inc b                                         ; $6c6a: $04
    inc bc                                        ; $6c6b: $03
    inc bc                                        ; $6c6c: $03
    ld d, a                                       ; $6c6d: $57
    rlca                                          ; $6c6e: $07
    xor a                                         ; $6c6f: $af
    rlca                                          ; $6c70: $07
    ld e, a                                       ; $6c71: $5f
    nop                                           ; $6c72: $00
    ld c, $aa                                     ; $6c73: $0e $aa
    ld c, $1e                                     ; $6c75: $0e $1e
    ld e, $14                                     ; $6c77: $1e $14
    inc e                                         ; $6c79: $1c
    inc e                                         ; $6c7a: $1c
    ld b, b                                       ; $6c7b: $40
    inc e                                         ; $6c7c: $1c
    inc e                                         ; $6c7d: $1c
    nop                                           ; $6c7e: $00
    ld bc, $01ab                                  ; $6c7f: $01 $ab $01
    ld d, a                                       ; $6c82: $57
    inc bc                                        ; $6c83: $03
    and e                                         ; $6c84: $a3
    ld [$0203], sp                                ; $6c85: $08 $03 $02
    ld [bc], a                                    ; $6c88: $02
    ld b, $01                                     ; $6c89: $06 $01
    nop                                           ; $6c8b: $00
    ld [$d540], a                                 ; $6c8c: $ea $40 $d5
    jr jr_096_6c11                                ; $6c8f: $18 $80

    xor d                                         ; $6c91: $aa
    add b                                         ; $6c92: $80
    ldh a, [$08]                                  ; $6c93: $f0 $08
    ldh [$08], a                                  ; $6c95: $e0 $08
    db $10                                        ; $6c97: $10
    db $10                                        ; $6c98: $10
    inc c                                         ; $6c99: $0c
    and b                                         ; $6c9a: $a0
    ld bc, $1800                                  ; $6c9b: $01 $00 $18
    ld bc, $3a00                                  ; $6c9e: $01 $00 $3a
    jr nc, jr_096_6d20                            ; $6ca1: $30 $7d

    jr z, jr_096_6c62                             ; $6ca3: $28 $bd

    nop                                           ; $6ca5: $00
    dec e                                         ; $6ca6: $1d
    ld e, a                                       ; $6ca7: $5f
    ld a, [bc]                                    ; $6ca8: $0a
    jr c, jr_096_6ce3                             ; $6ca9: $38 $38

    jr z, jr_096_6ce5                             ; $6cab: $28 $38

    ld d, c                                       ; $6cad: $51
    nop                                           ; $6cae: $00
    ld [hl], c                                    ; $6caf: $71
    ld [hl], c                                    ; $6cb0: $71
    ld [hl], c                                    ; $6cb1: $71
    db $eb                                        ; $6cb2: $eb
    ld b, c                                       ; $6cb3: $41
    ld a, [c]                                     ; $6cb4: $f2
    and d                                         ; $6cb5: $a2
    ld b, d                                       ; $6cb6: $42
    db $10                                        ; $6cb7: $10
    jp nz, $82d7                                  ; $6cb8: $c2 $d7 $82

    jr nz, jr_096_6cd5                            ; $6cbb: $20 $18

    add hl, de                                    ; $6cbd: $19
    add hl, de                                    ; $6cbe: $19
    or c                                          ; $6cbf: $b1
    ld de, $3300                                  ; $6cc0: $11 $00 $33
    inc sp                                        ; $6cc3: $33
    ld [hl-], a                                   ; $6cc4: $32
    inc sp                                        ; $6cc5: $33
    ld [hl], l                                    ; $6cc6: $75
    ld [hl], a                                    ; $6cc7: $77
    jr z, jr_096_6d02                             ; $6cc8: $28 $38

    nop                                           ; $6cca: $00
    ld e, b                                       ; $6ccb: $58
    ld a, b                                       ; $6ccc: $78
    cp b                                          ; $6ccd: $b8
    ld hl, sp+$70                                 ; $6cce: $f8 $70
    ldh a, [$f0]                                  ; $6cd0: $f0 $f0
    ldh a, [rP1]                                  ; $6cd2: $f0 $00
    ld h, l                                       ; $6cd4: $65

jr_096_6cd5:
    ldh [$e0], a                                  ; $6cd5: $e0 $e0
    ldh [$d5], a                                  ; $6cd7: $e0 $d5
    ret nz                                        ; $6cd9: $c0

    xor a                                         ; $6cda: $af
    dec b                                         ; $6cdb: $05
    nop                                           ; $6cdc: $00
    ld d, a                                       ; $6cdd: $57
    ld [bc], a                                    ; $6cde: $02
    xor e                                         ; $6cdf: $ab
    dec b                                         ; $6ce0: $05
    ld d, a                                       ; $6ce1: $57
    ld a, [bc]                                    ; $6ce2: $0a

jr_096_6ce3:
    ld l, $14                                     ; $6ce3: $2e $14

jr_096_6ce5:
    nop                                           ; $6ce5: $00
    ld [hl], a                                    ; $6ce6: $77
    ld a, [hl+]                                   ; $6ce7: $2a
    ld l, h                                       ; $6ce8: $6c
    ld a, h                                       ; $6ce9: $7c
    ld e, h                                       ; $6cea: $5c
    ld a, h                                       ; $6ceb: $7c
    xor [hl]                                      ; $6cec: $ae
    inc b                                         ; $6ced: $04
    nop                                           ; $6cee: $00
    push de                                       ; $6cef: $d5
    add b                                         ; $6cf0: $80
    xor [hl]                                      ; $6cf1: $ae
    inc b                                         ; $6cf2: $04
    ld e, l                                       ; $6cf3: $5d
    ld [$04ae], sp                                ; $6cf4: $08 $ae $04
    jr nz, jr_096_6d52                            ; $6cf7: $20 $59

    add hl, de                                    ; $6cf9: $19
    ld bc, $ef08                                  ; $6cfa: $01 $08 $ef
    ld h, a                                       ; $6cfd: $67
    db $fd                                        ; $6cfe: $fd
    rst $28                                       ; $6cff: $ef
    ei                                            ; $6d00: $fb
    ret nz                                        ; $6d01: $c0

jr_096_6d02:
    ld [de], a                                    ; $6d02: $12
    ld b, $30                                     ; $6d03: $06 $30
    ld d, $fd                                     ; $6d05: $16 $fd
    cp l                                          ; $6d07: $bd
    db $fd                                        ; $6d08: $fd
    xor e                                         ; $6d09: $ab
    add c                                         ; $6d0a: $81
    push de                                       ; $6d0b: $d5
    inc b                                         ; $6d0c: $04
    add c                                         ; $6d0d: $81
    xor e                                         ; $6d0e: $ab
    ld bc, $0155                                  ; $6d0f: $01 $55 $01
    ld bc, $0308                                  ; $6d12: $01 $08 $03
    inc bc                                        ; $6d15: $03
    nop                                           ; $6d16: $00
    add d                                         ; $6d17: $82
    add e                                         ; $6d18: $83
    ld l, h                                       ; $6d19: $6c
    ld a, h                                       ; $6d1a: $7c
    ld a, h                                       ; $6d1b: $7c
    ld a, h                                       ; $6d1c: $7c
    ld l, [hl]                                    ; $6d1d: $6e
    ld a, [hl]                                    ; $6d1e: $7e
    nop                                           ; $6d1f: $00

jr_096_6d20:
    ccf                                           ; $6d20: $3f
    ld a, [hl+]                                   ; $6d21: $2a
    xor a                                         ; $6d22: $af
    dec d                                         ; $6d23: $15
    ccf                                           ; $6d24: $3f
    ccf                                           ; $6d25: $3f
    ld l, $3e                                     ; $6d26: $2e $3e
    nop                                           ; $6d28: $00
    ld a, $3e                                     ; $6d29: $3e $3e
    ld sp, $6131                                  ; $6d2b: $31 $31 $61
    ld h, c                                       ; $6d2e: $61
    jp Jump_000_08c3                              ; $6d2f: $c3 $c3 $08


    rst $10                                       ; $6d32: $d7
    add e                                         ; $6d33: $83
    add [hl]                                      ; $6d34: $86
    add a                                         ; $6d35: $87
    inc b                                         ; $6d36: $04
    add hl, bc                                    ; $6d37: $09
    ld [hl], l                                    ; $6d38: $75
    ld a, a                                       ; $6d39: $7f
    db $fc                                        ; $6d3a: $fc
    nop                                           ; $6d3b: $00
    db $fc                                        ; $6d3c: $fc
    ld a, h                                       ; $6d3d: $7c
    db $fc                                        ; $6d3e: $fc
    db $fc                                        ; $6d3f: $fc
    db $fc                                        ; $6d40: $fc
    db $fd                                        ; $6d41: $fd
    add sp, -$14                                  ; $6d42: $e8 $ec
    nop                                           ; $6d44: $00
    db $ec                                        ; $6d45: $ec
    adc $ce                                       ; $6d46: $ce $ce
    add $c6                                       ; $6d48: $c6 $c6
    add [hl]                                      ; $6d4a: $86
    add [hl]                                      ; $6d4b: $86
    add e                                         ; $6d4c: $83
    nop                                           ; $6d4d: $00
    add e                                         ; $6d4e: $83
    add d                                         ; $6d4f: $82
    add e                                         ; $6d50: $83
    add e                                         ; $6d51: $83

jr_096_6d52:
    add e                                         ; $6d52: $83
    jp nc, Jump_096_4383                          ; $6d53: $d2 $83 $43

    add [hl]                                      ; $6d56: $86
    ld bc, $6700                                  ; $6d57: $01 $00 $67
    ld h, a                                       ; $6d5a: $67
    ld h, l                                       ; $6d5b: $65
    ld h, a                                       ; $6d5c: $67
    sbc h                                         ; $6d5d: $9c
    add hl, de                                    ; $6d5e: $19
    or h                                          ; $6d5f: $b4
    ld c, $50                                     ; $6d60: $0e $50
    add b                                         ; $6d62: $80
    ld h, d                                       ; $6d63: $62
    cpl                                           ; $6d64: $2f
    ld [bc], a                                    ; $6d65: $02
    xor [hl]                                      ; $6d66: $ae
    inc b                                         ; $6d67: $04
    ld d, l                                       ; $6d68: $55
    nop                                           ; $6d69: $00
    xor [hl]                                      ; $6d6a: $ae
    inc b                                         ; $6d6b: $04
    ld [$0c0c], sp                                ; $6d6c: $08 $0c $0c
    ld [$da08], sp                                ; $6d6f: $08 $08 $da
    ld [$3030], sp                                ; $6d72: $08 $30 $30
    ld a, [hl-]                                   ; $6d75: $3a
    inc bc                                        ; $6d76: $03
    jr nc, jr_096_6dee                            ; $6d77: $30 $75

    ld h, b                                       ; $6d79: $60
    ld [$c060], a                                 ; $6d7a: $ea $60 $c0
    ld bc, $d800                                  ; $6d7d: $01 $00 $d8
    inc b                                         ; $6d80: $04
    ret nz                                        ; $6d81: $c0

    db $fd                                        ; $6d82: $fd
    inc b                                         ; $6d83: $04
    db $e4                                        ; $6d84: $e4
    ld d, $20                                     ; $6d85: $16 $20
    ld [hl], l                                    ; $6d87: $75
    ld [hl], b                                    ; $6d88: $70
    ret nc                                        ; $6d89: $d0

    ldh a, [$b1]                                  ; $6d8a: $f0 $b1
    ld [hl], b                                    ; $6d8c: $70
    pop af                                        ; $6d8d: $f1
    push de                                       ; $6d8e: $d5
    inc b                                         ; $6d8f: $04
    ld bc, $3420                                  ; $6d90: $01 $20 $34
    nop                                           ; $6d93: $00
    add h                                         ; $6d94: $84
    db $dd                                        ; $6d95: $dd
    adc b                                         ; $6d96: $88
    ld de, $e880                                  ; $6d97: $11 $80 $e8
    nop                                           ; $6d9a: $00
    inc sp                                        ; $6d9b: $33
    inc sp                                        ; $6d9c: $33
    daa                                           ; $6d9d: $27
    daa                                           ; $6d9e: $27
    ld h, a                                       ; $6d9f: $67
    ld h, a                                       ; $6da0: $67
    ld l, a                                       ; $6da1: $6f
    ld bc, $ee6f                                  ; $6da2: $01 $6f $ee
    ld b, h                                       ; $6da5: $44
    ld a, a                                       ; $6da6: $7f
    ld a, [hl+]                                   ; $6da7: $2a
    add c                                         ; $6da8: $81
    add c                                         ; $6da9: $81
    or l                                          ; $6daa: $b5
    ld bc, $e080                                  ; $6dab: $01 $80 $e0
    dec b                                         ; $6dae: $05
    rlca                                          ; $6daf: $07
    dec b                                         ; $6db0: $05
    ld b, $07                                     ; $6db1: $06 $07
    dec c                                         ; $6db3: $0d
    rrca                                          ; $6db4: $0f
    ld e, a                                       ; $6db5: $5f
    nop                                           ; $6db6: $00
    ld a, [bc]                                    ; $6db7: $0a
    ld [hl], c                                    ; $6db8: $71
    pop af                                        ; $6db9: $f1
    or e                                          ; $6dba: $b3
    di                                            ; $6dbb: $f3
    ld h, [hl]                                    ; $6dbc: $66
    and $e6                                       ; $6dbd: $e6 $e6
    ld bc, $eee6                                  ; $6dbf: $01 $e6 $ee
    ld b, h                                       ; $6dc2: $44
    call $facc                                    ; $6dc3: $cd $cc $fa
    ret nc                                        ; $6dc6: $d0

    db $ec                                        ; $6dc7: $ec
    nop                                           ; $6dc8: $00
    add h                                         ; $6dc9: $84
    inc [hl]                                      ; $6dca: $34
    nop                                           ; $6dcb: $00
    xor [hl]                                      ; $6dcc: $ae
    add h                                         ; $6dcd: $84
    call c, $9a88                                 ; $6dce: $dc $88 $9a
    ld [$8181], sp                                ; $6dd1: $08 $81 $81
    nop                                           ; $6dd4: $00
    add b                                         ; $6dd5: $80
    add b                                         ; $6dd6: $80
    cp [hl]                                       ; $6dd7: $be
    inc d                                         ; $6dd8: $14
    ld e, a                                       ; $6dd9: $5f
    ld a, [bc]                                    ; $6dda: $0a
    cp d                                          ; $6ddb: $ba
    stop                                          ; $6ddc: $10 $00
    ld a, [hl-]                                   ; $6dde: $3a
    ld a, [hl-]                                   ; $6ddf: $3a
    ld [hl-], a                                   ; $6de0: $32
    ld [hl-], a                                   ; $6de1: $32
    halt                                          ; $6de2: $76
    halt                                          ; $6de3: $76
    or $f6                                        ; $6de4: $f6 $f6
    ld bc, $e6e6                                  ; $6de6: $01 $e6 $e6
    cp a                                          ; $6de9: $bf
    dec d                                         ; $6dea: $15
    ld e, a                                       ; $6deb: $5f
    ld a, [bc]                                    ; $6dec: $0a
    cp a                                          ; $6ded: $bf

jr_096_6dee:
    call c, RST_00                                ; $6dee: $dc $00 $00
    scf                                           ; $6df1: $37
    ccf                                           ; $6df2: $3f
    cpl                                           ; $6df3: $2f
    ccf                                           ; $6df4: $3f
    ld e, a                                       ; $6df5: $5f
    ld a, a                                       ; $6df6: $7f
    ld a, a                                       ; $6df7: $7f
    ld a, a                                       ; $6df8: $7f
    nop                                           ; $6df9: $00
    cp a                                          ; $6dfa: $bf
    dec d                                         ; $6dfb: $15
    db $fd                                        ; $6dfc: $fd
    xor b                                         ; $6dfd: $a8
    ld a, [$f050]                                 ; $6dfe: $fa $50 $f0
    ldh a, [rP1]                                  ; $6e01: $f0 $00
    pop hl                                        ; $6e03: $e1
    pop hl                                        ; $6e04: $e1
    jp $82c3                                      ; $6e05: $c3 $c3 $82


    add e                                         ; $6e08: $83
    inc bc                                        ; $6e09: $03
    inc bc                                        ; $6e0a: $03
    ld d, h                                       ; $6e0b: $54
    add b                                         ; $6e0c: $80
    ld bc, $8100                                  ; $6e0d: $01 $00 $81
    ld bc, $c300                                  ; $6e10: $01 $00 $c3
    ld bc, $c700                                  ; $6e13: $01 $00 $c7
    rst $00                                       ; $6e16: $c7
    nop                                           ; $6e17: $00
    set 1, a                                      ; $6e18: $cb $cf
    and $e6                                       ; $6e1a: $e6 $e6

jr_096_6e1c:
    push hl                                       ; $6e1c: $e5
    push hl                                       ; $6e1d: $e5
    rst $00                                       ; $6e1e: $c7
    rst $00                                       ; $6e1f: $c7
    dec d                                         ; $6e20: $15
    adc $cf                                       ; $6e21: $ce $cf
    db $fd                                        ; $6e23: $fd
    ld b, h                                       ; $6e24: $44
    rlca                                          ; $6e25: $07
    ld d, a                                       ; $6e26: $57
    ld d, h                                       ; $6e27: $54
    rlca                                          ; $6e28: $07
    rst $18                                       ; $6e29: $df
    ld e, b                                       ; $6e2a: $58
    rlca                                          ; $6e2b: $07
    sbc a                                         ; $6e2c: $9f
    ld c, [hl]                                    ; $6e2d: $4e
    dec c                                         ; $6e2e: $0d
    cp $fe                                        ; $6e2f: $fe $fe
    rlca                                          ; $6e31: $07
    ld bc, $010a                                  ; $6e32: $01 $0a $01
    or a                                          ; $6e35: $b7
    ld c, d                                       ; $6e36: $4a
    xor b                                         ; $6e37: $a8
    ld c, a                                       ; $6e38: $4f
    xor b                                         ; $6e39: $a8
    ld c, $09                                     ; $6e3a: $0e $09
    xor a                                         ; $6e3c: $af
    dec b                                         ; $6e3d: $05
    ld a, a                                       ; $6e3e: $7f
    ld a, [hl+]                                   ; $6e3f: $2a
    sub b                                         ; $6e40: $90
    ld e, $57                                     ; $6e41: $1e $57
    ld [bc], a                                    ; $6e43: $02
    sub b                                         ; $6e44: $90
    ld l, $8c                                     ; $6e45: $2e $8c
    or b                                          ; $6e47: $b0
    ld h, $a2                                     ; $6e48: $26 $a2
    ld e, a                                       ; $6e4a: $5f
    push af                                       ; $6e4b: $f5
    or b                                          ; $6e4c: $b0
    ld e, $16                                     ; $6e4d: $1e $16
    add hl, de                                    ; $6e4f: $19
    add hl, de                                    ; $6e50: $19
    add hl, de                                    ; $6e51: $19

jr_096_6e52:
    nop                                           ; $6e52: $00
    ld sp, $f331                                  ; $6e53: $31 $31 $f3
    di                                            ; $6e56: $f3
    cp $55                                        ; $6e57: $fe $55
    db $fd                                        ; $6e59: $fd
    xor d                                         ; $6e5a: $aa
    nop                                           ; $6e5b: $00
    inc l                                         ; $6e5c: $2c
    inc a                                         ; $6e5d: $3c
    ld e, h                                       ; $6e5e: $5c
    jr z, jr_096_6e1c                             ; $6e5f: $28 $bb

    pop af                                        ; $6e61: $f1
    ld a, c                                       ; $6e62: $79
    ld sp, hl                                     ; $6e63: $f9
    nop                                           ; $6e64: $00
    ei                                            ; $6e65: $fb
    pop af                                        ; $6e66: $f1
    ld [hl], a                                    ; $6e67: $77
    and d                                         ; $6e68: $a2
    xor $44                                       ; $6e69: $ee $44
    rst $30                                       ; $6e6b: $f7
    and d                                         ; $6e6c: $a2
    nop                                           ; $6e6d: $00
    ld b, d                                       ; $6e6e: $42
    ld b, d                                       ; $6e6f: $42
    jp nz, $abc2                                  ; $6e70: $c2 $c2 $ab

    ld bc, $80d5                                  ; $6e73: $01 $d5 $80
    and b                                         ; $6e76: $a0
    and h                                         ; $6e77: $a4
    ld bc, $5000                                  ; $6e78: $01 $00 $50
    ld [$7373], sp                                ; $6e7b: $08 $73 $73
    ld e, c                                       ; $6e7e: $59
    ld a, c                                       ; $6e7f: $79
    ld l, e                                       ; $6e80: $6b
    nop                                           ; $6e81: $00
    ld [hl], c                                    ; $6e82: $71
    db $fd                                        ; $6e83: $fd
    xor c                                         ; $6e84: $a9
    xor $54                                       ; $6e85: $ee $54
    push af                                       ; $6e87: $f5
    xor b                                         ; $6e88: $a8
    cp $0f                                        ; $6e89: $fe $0f
    ld d, h                                       ; $6e8b: $54
    rst $30                                       ; $6e8c: $f7
    xor d                                         ; $6e8d: $aa
    rst $38                                       ; $6e8e: $ff
    inc [hl]                                      ; $6e8f: $34
    nop                                           ; $6e90: $00
    ret nc                                        ; $6e91: $d0

    add hl, de                                    ; $6e92: $19
    sbc d                                         ; $6e93: $9a
    jr jr_096_6e52                                ; $6e94: $18 $bc

    ld [bc], a                                    ; $6e96: $02
    nop                                           ; $6e97: $00
    adc l                                         ; $6e98: $8d
    cp e                                          ; $6e99: $bb
    ld de, $bbbb                                  ; $6e9a: $11 $bb $bb
    or e                                          ; $6e9d: $b3
    or e                                          ; $6e9e: $b3
    or $02                                        ; $6e9f: $f6 $02
    rst $30                                       ; $6ea1: $f7
    db $ed                                        ; $6ea2: $ed
    rst $28                                       ; $6ea3: $ef
    rst $28                                       ; $6ea4: $ef
    rst $28                                       ; $6ea5: $ef
    rst $10                                       ; $6ea6: $d7
    jr z, jr_096_6eb0                             ; $6ea7: $28 $07

    rst $38                                       ; $6ea9: $ff
    ld b, b                                       ; $6eaa: $40
    ld e, a                                       ; $6eab: $5f
    ld [hl+], a                                   ; $6eac: $22
    ld a, [de]                                    ; $6ead: $1a
    ldh a, [$f0]                                  ; $6eae: $f0 $f0

jr_096_6eb0:
    or b                                          ; $6eb0: $b0
    or b                                          ; $6eb1: $b0
    ld a, [$44fe]                                 ; $6eb2: $fa $fe $44
    db $fd                                        ; $6eb5: $fd
    sub h                                         ; $6eb6: $94
    rlca                                          ; $6eb7: $07
    ld a, l                                       ; $6eb8: $7d
    ld a, a                                       ; $6eb9: $7f
    ld a, $32                                     ; $6eba: $3e $32
    ld b, $7e                                     ; $6ebc: $06 $7e
    ld a, a                                       ; $6ebe: $7f
    jr nc, @-$1f                                  ; $6ebf: $30 $df

    rst $18                                       ; $6ec1: $df
    ret z                                         ; $6ec2: $c8

    jr jr_096_6ec9                                ; $6ec3: $18 $04

    add hl, bc                                    ; $6ec5: $09
    ld sp, hl                                     ; $6ec6: $f9
    ld hl, sp-$06                                 ; $6ec7: $f8 $fa

jr_096_6ec9:
    ei                                            ; $6ec9: $fb
    db $10                                        ; $6eca: $10
    db $fd                                        ; $6ecb: $fd
    rst $38                                       ; $6ecc: $ff
    rst $18                                       ; $6ecd: $df
    ld bc, $ee00                                  ; $6ece: $01 $00 $ee
    db $fc                                        ; $6ed1: $fc
    rst $18                                       ; $6ed2: $df
    xor d                                         ; $6ed3: $aa
    nop                                           ; $6ed4: $00
    cp [hl]                                       ; $6ed5: $be
    ld d, h                                       ; $6ed6: $54
    ld e, l                                       ; $6ed7: $5d
    xor b                                         ; $6ed8: $a8
    cp h                                          ; $6ed9: $bc
    db $fc                                        ; $6eda: $fc
    ld a, l                                       ; $6edb: $7d
    ld hl, sp+$00                                 ; $6edc: $f8 $00
    or b                                          ; $6ede: $b0
    or b                                          ; $6edf: $b0
    ld sp, $bb31                                  ; $6ee0: $31 $31 $bb
    ld de, $3373                                  ; $6ee3: $11 $73 $33
    nop                                           ; $6ee6: $00
    db $eb                                        ; $6ee7: $eb
    ld b, c                                       ; $6ee8: $41
    ld [hl], a                                    ; $6ee9: $77
    ld [hl+], a                                   ; $6eea: $22
    ld c, d                                       ; $6eeb: $4a
    ld b, b                                       ; $6eec: $40
    rst $10                                       ; $6eed: $d7
    add d                                         ; $6eee: $82
    nop                                           ; $6eef: $00
    rst $18                                       ; $6ef0: $df
    rst $18                                       ; $6ef1: $df
    sbc a                                         ; $6ef2: $9f
    sbc a                                         ; $6ef3: $9f
    sbc [hl]                                      ; $6ef4: $9e
    rra                                           ; $6ef5: $1f
    ccf                                           ; $6ef6: $3f
    ccf                                           ; $6ef7: $3f
    nop                                           ; $6ef8: $00
    cp a                                          ; $6ef9: $bf
    rla                                           ; $6efa: $17
    ld [hl], a                                    ; $6efb: $77
    daa                                           ; $6efc: $27
    rst $28                                       ; $6efd: $ef
    ld b, a                                       ; $6efe: $47
    rst $00                                       ; $6eff: $c7
    rst $00                                       ; $6f00: $c7
    dec de                                        ; $6f01: $1b
    sbc d                                         ; $6f02: $9a
    sbc a                                         ; $6f03: $9f
    rst $38                                       ; $6f04: $ff
    ld c, [hl]                                    ; $6f05: $4e
    ld [de], a                                    ; $6f06: $12
    ld a, [de]                                    ; $6f07: $1a
    add hl, bc                                    ; $6f08: $09
    ld a, a                                       ; $6f09: $7f
    xor b                                         ; $6f0a: $a8
    rlca                                          ; $6f0b: $07
    ld h, a                                       ; $6f0c: $67
    ld [$48c8], sp                                ; $6f0d: $08 $c8 $48
    dec bc                                        ; $6f10: $0b
    adc $00                                       ; $6f11: $ce $00
    cp $ee                                        ; $6f13: $fe $ee
    call c, $8607                                 ; $6f15: $dc $07 $86
    add [hl]                                      ; $6f18: $86
    add l                                         ; $6f19: $85
    ld bc, $8785                                  ; $6f1a: $01 $85 $87
    add a                                         ; $6f1d: $87
    ld b, $06                                     ; $6f1e: $06 $06
    ld c, $0e                                     ; $6f20: $0e $0e
    jp c, Jump_000_140a                           ; $6f22: $da $0a $14

    adc b                                         ; $6f25: $88
    adc b                                         ; $6f26: $88
    adc a                                         ; $6f27: $8f
    ld bc, $0f00                                  ; $6f28: $01 $00 $0f
    ld bc, $0e00                                  ; $6f2b: $01 $00 $0e
    rrca                                          ; $6f2e: $0f
    ld d, a                                       ; $6f2f: $57
    rra                                           ; $6f30: $1f
    ld d, d                                       ; $6f31: $52
    inc bc                                        ; $6f32: $03
    ld l, a                                       ; $6f33: $6f
    or [hl]                                       ; $6f34: $b6
    ld b, $bf                                     ; $6f35: $06 $bf
    db $dd                                        ; $6f37: $dd
    rra                                           ; $6f38: $1f
    rst $38                                       ; $6f39: $ff
    rla                                           ; $6f3a: $17
    adc h                                         ; $6f3b: $8c
    ld e, $00                                     ; $6f3c: $1e $00
    cp [hl]                                       ; $6f3e: $be
    cp $fd                                        ; $6f3f: $fe $fd
    db $fc                                        ; $6f41: $fc
    ld a, [$d5f0]                                 ; $6f42: $fa $f0 $d5
    ret nz                                        ; $6f45: $c0

    ld b, [hl]                                    ; $6f46: $46
    xor d                                         ; $6f47: $aa
    adc l                                         ; $6f48: $8d
    ld bc, $8686                                  ; $6f49: $01 $86 $86
    ld b, $ed                                     ; $6f4c: $06 $ed
    ld bc, $0344                                  ; $6f4e: $01 $44 $03
    rrca                                          ; $6f51: $0f
    nop                                           ; $6f52: $00
    ld e, a                                       ; $6f53: $5f
    rra                                           ; $6f54: $1f
    cp e                                          ; $6f55: $bb
    dec de                                        ; $6f56: $1b
    dec sp                                        ; $6f57: $3b
    dec sp                                        ; $6f58: $3b
    daa                                           ; $6f59: $27
    daa                                           ; $6f5a: $27
    nop                                           ; $6f5b: $00
    dec [hl]                                      ; $6f5c: $35
    scf                                           ; $6f5d: $37
    scf                                           ; $6f5e: $37
    scf                                           ; $6f5f: $37
    ld [hl], l                                    ; $6f60: $75
    scf                                           ; $6f61: $37
    cp a                                          ; $6f62: $bf
    rla                                           ; $6f63: $17
    ld d, $df                                     ; $6f64: $16 $df
    sbc a                                         ; $6f66: $9f
    cp a                                          ; $6f67: $bf
    ld a, h                                       ; $6f68: $7c
    nop                                           ; $6f69: $00
    ld a, a                                       ; $6f6a: $7f
    jp z, Jump_096_4400                           ; $6f6b: $ca $00 $44

    ld [$829f], sp                                ; $6f6e: $08 $9f $82
    ld bc, $df00                                  ; $6f71: $01 $00 $df
    rst $18                                       ; $6f74: $df
    ld e, a                                       ; $6f75: $5f
    rst $18                                       ; $6f76: $df
    jp z, Jump_000_0257                           ; $6f77: $ca $57 $02

    ld h, b                                       ; $6f7a: $60
    nop                                           ; $6f7b: $00
    ldh [$b0], a                                  ; $6f7c: $e0 $b0
    ldh a, [$d1]                                  ; $6f7e: $f0 $d1
    pop af                                        ; $6f80: $f1
    xor c                                         ; $6f81: $a9
    ld sp, hl                                     ; $6f82: $f9
    db $db                                        ; $6f83: $db
    nop                                           ; $6f84: $00
    ei                                            ; $6f85: $fb
    ld l, a                                       ; $6f86: $6f
    rst $38                                       ; $6f87: $ff
    or c                                          ; $6f88: $b1
    ld sp, $7171                                  ; $6f89: $31 $71 $71
    ld h, c                                       ; $6f8c: $61
    nop                                           ; $6f8d: $00

jr_096_6f8e:
    ld h, c                                       ; $6f8e: $61
    pop hl                                        ; $6f8f: $e1
    pop hl                                        ; $6f90: $e1
    pop bc                                        ; $6f91: $c1
    pop bc                                        ; $6f92: $c1
    jp $c2c3                                      ; $6f93: $c3 $c3 $c2


    ld c, $c3                                     ; $6f96: $0e $c3
    add l                                         ; $6f98: $85
    add a                                         ; $6f99: $87
    rst $28                                       ; $6f9a: $ef
    jp nz, $c611                                  ; $6f9b: $c2 $11 $c6

    add hl, de                                    ; $6f9e: $19
    jp z, $cf09                                   ; $6f9f: $ca $09 $cf

    nop                                           ; $6fa2: $00
    rst $08                                       ; $6fa3: $cf
    ld l, a                                       ; $6fa4: $6f
    rst $28                                       ; $6fa5: $ef
    xor a                                         ; $6fa6: $af
    db $ed                                        ; $6fa7: $ed
    rst $20                                       ; $6fa8: $e7
    rst $20                                       ; $6fa9: $e7
    cp a                                          ; $6faa: $bf
    nop                                           ; $6fab: $00
    push af                                       ; $6fac: $f5
    ld d, a                                       ; $6fad: $57
    ld a, [c]                                     ; $6fae: $f2
    or e                                          ; $6faf: $b3
    di                                            ; $6fb0: $f3
    db $d3                                        ; $6fb1: $d3
    di                                            ; $6fb2: $f3
    or a                                          ; $6fb3: $b7
    nop                                           ; $6fb4: $00
    rst $38                                       ; $6fb5: $ff
    ei                                            ; $6fb6: $fb
    rst $38                                       ; $6fb7: $ff
    rst $38                                       ; $6fb8: $ff
    ld d, l                                       ; $6fb9: $55
    rst $38                                       ; $6fba: $ff
    ld a, [$01ff]                                 ; $6fbb: $fa $ff $01
    ld d, l                                       ; $6fbe: $55
    cp $ab                                        ; $6fbf: $fe $ab
    db $fd                                        ; $6fc1: $fd
    rst $38                                       ; $6fc2: $ff
    or $ff                                        ; $6fc3: $f6 $ff
    ld hl, sp+$0a                                 ; $6fc5: $f8 $0a
    nop                                           ; $6fc7: $00
    adc d                                         ; $6fc8: $8a
    rrca                                          ; $6fc9: $0f
    ld e, l                                       ; $6fca: $5d
    rrca                                          ; $6fcb: $0f
    cp e                                          ; $6fcc: $bb
    rra                                           ; $6fcd: $1f
    sub [hl]                                      ; $6fce: $96
    sbc a                                         ; $6fcf: $9f
    and d                                         ; $6fd0: $a2
    jr c, jr_096_6ffe                             ; $6fd1: $38 $2b

    cp $a0                                        ; $6fd3: $fe $a0
    nop                                           ; $6fd5: $00
    cp $fc                                        ; $6fd6: $fe $fc
    db $fd                                        ; $6fd8: $fd
    ld [$fe03], sp                                ; $6fd9: $08 $03 $fe
    ld bc, $bbfe                                  ; $6fdc: $01 $fe $bb
    ei                                            ; $6fdf: $fb
    ei                                            ; $6fe0: $fb
    ei                                            ; $6fe1: $fb
    db $db                                        ; $6fe2: $db
    ei                                            ; $6fe3: $fb
    jr jr_096_6ff0                                ; $6fe4: $18 $0a

    adc d                                         ; $6fe6: $8a
    ld l, d                                       ; $6fe7: $6a
    rrca                                          ; $6fe8: $0f
    cp $ff                                        ; $6fe9: $fe $ff
    xor $5c                                       ; $6feb: $ee $5c
    inc bc                                        ; $6fed: $03
    rst $28                                       ; $6fee: $ef
    ld b, h                                       ; $6fef: $44

jr_096_6ff0:
    nop                                           ; $6ff0: $00
    rst $28                                       ; $6ff1: $ef
    add b                                         ; $6ff2: $80
    ld [hl], d                                    ; $6ff3: $72
    daa                                           ; $6ff4: $27
    push de                                       ; $6ff5: $d5
    rst $18                                       ; $6ff6: $df
    rst $28                                       ; $6ff7: $ef
    rst $38                                       ; $6ff8: $ff
    jp c, $b5ff                                   ; $6ff9: $da $ff $b5

    ld hl, sp+$10                                 ; $6ffc: $f8 $10

jr_096_6ffe:
    db $10                                        ; $6ffe: $10
    jp hl                                         ; $6fff: $e9


    jr jr_096_6f8e                                ; $7000: $18 $8c

    rra                                           ; $7002: $1f
    ld b, b                                       ; $7003: $40
    ld a, [bc]                                    ; $7004: $0a
    ld b, h                                       ; $7005: $44
    ld [$ecec], sp                                ; $7006: $08 $ec $ec
    ret z                                         ; $7009: $c8

    nop                                           ; $700a: $00
    ret z                                         ; $700b: $c8

    sbc b                                         ; $700c: $98
    sbc b                                         ; $700d: $98
    add hl, de                                    ; $700e: $19
    add hl, de                                    ; $700f: $19
    ld de, $1311                                  ; $7010: $11 $11 $13
    inc b                                         ; $7013: $04
    inc de                                        ; $7014: $13
    cp [hl]                                       ; $7015: $be
    dec d                                         ; $7016: $15
    ld [hl], l                                    ; $7017: $75
    ld [hl+], a                                   ; $7018: $22
    ld e, c                                       ; $7019: $59
    dec l                                         ; $701a: $2d
    xor $ee                                       ; $701b: $ee $ee
    nop                                           ; $701d: $00
    adc $ce                                       ; $701e: $ce $ce
    sbc [hl]                                      ; $7020: $9e
    sbc [hl]                                      ; $7021: $9e
    sbc h                                         ; $7022: $9c
    sbc h                                         ; $7023: $9c
    xor $ec                                       ; $7024: $ee $ec
    ld [$ccdd], sp                                ; $7026: $08 $dd $cc
    adc h                                         ; $7029: $8c
    adc h                                         ; $702a: $8c
    inc d                                         ; $702b: $14
    inc e                                         ; $702c: $1c
    add hl, de                                    ; $702d: $19
    add hl, de                                    ; $702e: $19
    rra                                           ; $702f: $1f
    nop                                           ; $7030: $00
    rra                                           ; $7031: $1f
    xor a                                         ; $7032: $af
    dec b                                         ; $7033: $05
    ld a, l                                       ; $7034: $7d
    ld a, [hl+]                                   ; $7035: $2a
    ld a, e                                       ; $7036: $7b
    ld a, a                                       ; $7037: $7f
    ld [hl], a                                    ; $7038: $77
    ret nz                                        ; $7039: $c0

    cp d                                          ; $703a: $ba
    ld [bc], a                                    ; $703b: $02
    adc d                                         ; $703c: $8a
    ld a, [de]                                    ; $703d: $1a
    inc e                                         ; $703e: $1c
    inc e                                         ; $703f: $1c
    inc a                                         ; $7040: $3c
    inc a                                         ; $7041: $3c
    cp b                                          ; $7042: $b8
    stop                                          ; $7043: $10 $00
    ld a, l                                       ; $7045: $7d
    jr z, @+$01                                   ; $7046: $28 $ff

    ld d, l                                       ; $7048: $55
    halt                                          ; $7049: $76
    dec hl                                        ; $704a: $2b
    ld l, e                                       ; $704b: $6b
    ld d, l                                       ; $704c: $55
    nop                                           ; $704d: $00
    db $dd                                        ; $704e: $dd
    rst $38                                       ; $704f: $ff
    ld e, $1f                                     ; $7050: $1e $1f

jr_096_7052:
    dec [hl]                                      ; $7052: $35
    ccf                                           ; $7053: $3f
    dec hl                                        ; $7054: $2b
    ccf                                           ; $7055: $3f
    ld l, b                                       ; $7056: $68
    rst $38                                       ; $7057: $ff
    jr jr_096_705c                                ; $7058: $18 $02

    di                                            ; $705a: $f3
    rlca                                          ; $705b: $07

jr_096_705c:
    ld d, a                                       ; $705c: $57
    xor b                                         ; $705d: $a8

jr_096_705e:
    ld a, [bc]                                    ; $705e: $0a
    db $ec                                        ; $705f: $ec
    db $ec                                        ; $7060: $ec
    call z, $cc00                                 ; $7061: $cc $00 $cc

jr_096_7064:
    db $dd                                        ; $7064: $dd
    adc b                                         ; $7065: $88
    cp d                                          ; $7066: $ba
    db $10                                        ; $7067: $10
    sbc c                                         ; $7068: $99
    sbc b                                         ; $7069: $98
    sbc d                                         ; $706a: $9a
    rrca                                          ; $706b: $0f
    sbc e                                         ; $706c: $9b
    sbc l                                         ; $706d: $9d
    sbc a                                         ; $706e: $9f
    rst $28                                       ; $706f: $ef
    and [hl]                                      ; $7070: $a6
    nop                                           ; $7071: $00
    add $3a                                       ; $7072: $c6 $3a
    inc b                                         ; $7074: $04
    inc b                                         ; $7075: $04
    or h                                          ; $7076: $b4
    nop                                           ; $7077: $00
    or $f2                                        ; $7078: $f6 $f2
    nop                                           ; $707a: $00
    ld [$8200], sp                                ; $707b: $08 $00 $82
    ld hl, $003b                                  ; $707e: $21 $3b $00
    db $fd                                        ; $7081: $fd
    jp nz, Jump_000_1000                          ; $7082: $c2 $00 $10

    jr z, jr_096_7064                             ; $7085: $28 $dd

    ldh [$ce], a                                  ; $7087: $e0 $ce
    nop                                           ; $7089: $00
    or d                                          ; $708a: $b2
    jr @-$0b                                      ; $708b: $18 $f3

    dec e                                         ; $708d: $1d
    ld bc, $5701                                  ; $708e: $01 $01 $57
    ld [bc], a                                    ; $7091: $02
    xor h                                         ; $7092: $ac
    ld [bc], a                                    ; $7093: $02
    inc c                                         ; $7094: $0c
    ld e, l                                       ; $7095: $5d
    jr jr_096_7052                                ; $7096: $18 $ba

    jr nc, jr_096_710f                            ; $7098: $30 $75

    jr jr_096_70a0                                ; $709a: $18 $04

    add e                                         ; $709c: $83
    ld d, c                                       ; $709d: $51
    add e                                         ; $709e: $83
    ret nz                                        ; $709f: $c0

jr_096_70a0:
    dec c                                         ; $70a0: $0d
    jr nc, @-$2e                                  ; $70a1: $30 $d0

    dec bc                                        ; $70a3: $0b
    ret nz                                        ; $70a4: $c0

    call nc, $9080                                ; $70a5: $d4 $80 $90
    dec l                                         ; $70a8: $2d
    ld e, c                                       ; $70a9: $59

jr_096_70aa:
    dec bc                                        ; $70aa: $0b
    ldh [rDIV], a                                 ; $70ab: $e0 $04
    xor d                                         ; $70ad: $aa
    sbc $04                                       ; $70ae: $de $04
    nop                                           ; $70b0: $00
    dec c                                         ; $70b1: $0d
    ld b, $06                                     ; $70b2: $06 $06
    ret nc                                        ; $70b4: $d0

    inc c                                         ; $70b5: $0c
    inc bc                                        ; $70b6: $03
    jr nc, jr_096_70e9                            ; $70b7: $30 $30

    ldh [rLCDC], a                                ; $70b9: $e0 $40
    ld [hl], l                                    ; $70bb: $75
    jr nz, jr_096_70aa                            ; $70bc: $20 $ec

    inc c                                         ; $70be: $0c
    sub b                                         ; $70bf: $90
    dec a                                         ; $70c0: $3d
    rla                                           ; $70c1: $17
    ld [hl], e                                    ; $70c2: $73
    ld [hl+], a                                   ; $70c3: $22
    xor d                                         ; $70c4: $aa
    sub b                                         ; $70c5: $90
    dec d                                         ; $70c6: $15
    nop                                           ; $70c7: $00
    inc l                                         ; $70c8: $2c
    dec b                                         ; $70c9: $05
    call c, Call_096_504d                         ; $70ca: $dc $4d $50
    ld c, e                                       ; $70cd: $4b
    xor [hl]                                      ; $70ce: $ae
    jr jr_096_7139                                ; $70cf: $18 $68

    ld d, d                                       ; $70d1: $52
    sbc h                                         ; $70d2: $9c
    rlca                                          ; $70d3: $07
    ld d, h                                       ; $70d4: $54
    ld e, h                                       ; $70d5: $5c
    dec d                                         ; $70d6: $15
    nop                                           ; $70d7: $00
    ld c, $3c                                     ; $70d8: $0e $3c
    ld l, $80                                     ; $70da: $2e $80
    jr nz, jr_096_705e                            ; $70dc: $20 $80

    ld b, b                                       ; $70de: $40
    ld c, l                                       ; $70df: $4d
    inc b                                         ; $70e0: $04
    and b                                         ; $70e1: $a0
    ldh [$d8], a                                  ; $70e2: $e0 $d8

jr_096_70e4:
    ld hl, sp-$14                                 ; $70e4: $f8 $ec
    jr c, jr_096_70e4                             ; $70e6: $38 $fc

    ld a, a                                       ; $70e8: $7f

jr_096_70e9:
    ld d, d                                       ; $70e9: $52
    ld [bc], a                                    ; $70ea: $02
    ld d, h                                       ; $70eb: $54
    ld h, d                                       ; $70ec: $62
    ld a, b                                       ; $70ed: $78
    ld de, $f5bf                                  ; $70ee: $11 $bf $f5
    ld e, a                                       ; $70f1: $5f
    ld h, b                                       ; $70f2: $60
    ld a, [$0bbe]                                 ; $70f3: $fa $be $0b
    inc d                                         ; $70f6: $14
    inc c                                         ; $70f7: $0c
    ret nz                                        ; $70f8: $c0

    ret nz                                        ; $70f9: $c0

    rst $28                                       ; $70fa: $ef
    rst $28                                       ; $70fb: $ef
    ld a, [$2087]                                 ; $70fc: $fa $87 $20
    ld bc, $fefe                                  ; $70ff: $01 $fe $fe
    ld hl, sp-$08                                 ; $7102: $f8 $f8
    ld a, l                                       ; $7104: $7d
    ld a, [bc]                                    ; $7105: $0a
    ld [de], a                                    ; $7106: $12
    ld a, [de]                                    ; $7107: $1a
    ret nz                                        ; $7108: $c0

    add hl, de                                    ; $7109: $19
    ld [bc], a                                    ; $710a: $02
    cp $fe                                        ; $710b: $fe $fe
    ldh [$e0], a                                  ; $710d: $e0 $e0

jr_096_710f:
    ld sp, hl                                     ; $710f: $f9
    ld sp, hl                                     ; $7110: $f9
    ld [hl+], a                                   ; $7111: $22
    inc bc                                        ; $7112: $03
    rst $38                                       ; $7113: $ff
    ld b, b                                       ; $7114: $40
    cp e                                          ; $7115: $bb
    ldh a, [$03]                                  ; $7116: $f0 $03
    db $eb                                        ; $7118: $eb
    rst $38                                       ; $7119: $ff
    rlca                                          ; $711a: $07
    rlca                                          ; $711b: $07
    dec a                                         ; $711c: $3d
    ccf                                           ; $711d: $3f
    add h                                         ; $711e: $84
    db $ed                                        ; $711f: $ed
    ld l, $f0                                     ; $7120: $2e $f0
    ldh a, [$80]                                  ; $7122: $f0 $80
    add b                                         ; $7124: $80
    inc sp                                        ; $7125: $33
    inc b                                         ; $7126: $04
    ld a, a                                       ; $7127: $7f
    cpl                                           ; $7128: $2f
    nop                                           ; $7129: $00
    ccf                                           ; $712a: $3f
    dec d                                         ; $712b: $15
    rra                                           ; $712c: $1f
    ld a, [de]                                    ; $712d: $1a
    rra                                           ; $712e: $1f
    rrca                                          ; $712f: $0f
    rrca                                          ; $7130: $0f
    dec bc                                        ; $7131: $0b
    adc h                                         ; $7132: $8c
    ret                                           ; $7133: $c9


    ld [bc], a                                    ; $7134: $02
    ld hl, sp-$08                                 ; $7135: $f8 $f8
    ld d, a                                       ; $7137: $57
    dec l                                         ; $7138: $2d

jr_096_7139:
    ld [bc], a                                    ; $7139: $02
    rrca                                          ; $713a: $0f
    rra                                           ; $713b: $1f
    inc bc                                        ; $713c: $03
    inc bc                                        ; $713d: $03
    add e                                         ; $713e: $83
    adc $0e                                       ; $713f: $ce $0e
    ldh [$e0], a                                  ; $7141: $e0 $e0
    cp a                                          ; $7143: $bf
    rst $38                                       ; $7144: $ff
    push de                                       ; $7145: $d5
    ld a, [bc]                                    ; $7146: $0a
    ld [bc], a                                    ; $7147: $02
    inc hl                                        ; $7148: $23
    rrca                                          ; $7149: $0f
    inc hl                                        ; $714a: $23
    rra                                           ; $714b: $1f
    rra                                           ; $714c: $1f
    ldh [$0e], a                                  ; $714d: $e0 $0e
    ldh a, [$f0]                                  ; $714f: $f0 $f0
    ld e, a                                       ; $7151: $5f
    ld d, [hl]                                    ; $7152: $56
    ld de, $0d76                                  ; $7153: $11 $76 $0d
    add b                                         ; $7156: $80
    ldh a, [rNR34]                                ; $7157: $f0 $1e
    db $fc                                        ; $7159: $fc
    db $fc                                        ; $715a: $fc
    xor e                                         ; $715b: $ab
    rst $38                                       ; $715c: $ff
    push af                                       ; $715d: $f5
    rst $38                                       ; $715e: $ff
    ld a, [hl]                                    ; $715f: $7e
    and b                                         ; $7160: $a0
    ld b, [hl]                                    ; $7161: $46
    rlca                                          ; $7162: $07
    rrca                                          ; $7163: $0f
    ld e, d                                       ; $7164: $5a
    ld b, $37                                     ; $7165: $06 $37
    ccf                                           ; $7167: $3f
    ld l, a                                       ; $7168: $6f
    ld a, a                                       ; $7169: $7f
    ld e, a                                       ; $716a: $5f
    add b                                         ; $716b: $80
    ld d, l                                       ; $716c: $55
    inc b                                         ; $716d: $04
    rst $20                                       ; $716e: $e7
    rst $20                                       ; $716f: $e7
    adc l                                         ; $7170: $8d
    adc l                                         ; $7171: $8d
    jr c, @+$3a                                   ; $7172: $38 $38

    nop                                           ; $7174: $00
    nop                                           ; $7175: $00
    nop                                           ; $7176: $00
    add hl, de                                    ; $7177: $19
    add hl, de                                    ; $7178: $19
    cpl                                           ; $7179: $2f
    ccf                                           ; $717a: $3f

Jump_096_717b:
    inc sp                                        ; $717b: $33
    ccf                                           ; $717c: $3f
    rra                                           ; $717d: $1f
    nop                                           ; $717e: $00
    rra                                           ; $717f: $1f
    rlca                                          ; $7180: $07
    rlca                                          ; $7181: $07
    inc bc                                        ; $7182: $03
    inc bc                                        ; $7183: $03
    dec b                                         ; $7184: $05
    dec b                                         ; $7185: $05
    add hl, bc                                    ; $7186: $09
    nop                                           ; $7187: $00
    add hl, bc                                    ; $7188: $09
    dec bc                                        ; $7189: $0b
    dec bc                                        ; $718a: $0b
    rla                                           ; $718b: $17
    rla                                           ; $718c: $17
    sub a                                         ; $718d: $97
    sub a                                         ; $718e: $97
    ld [hl], a                                    ; $718f: $77
    nop                                           ; $7190: $00
    ld [hl], a                                    ; $7191: $77
    inc sp                                        ; $7192: $33
    inc sp                                        ; $7193: $33
    dec bc                                        ; $7194: $0b
    dec bc                                        ; $7195: $0b
    ld b, $06                                     ; $7196: $06 $06
    inc bc                                        ; $7198: $03
    ld b, c                                       ; $7199: $41
    inc bc                                        ; $719a: $03
    cp h                                          ; $719b: $bc
    ld c, $8e                                     ; $719c: $0e $8e
    adc a                                         ; $719e: $8f
    ld [hl], c                                    ; $719f: $71
    rst $38                                       ; $71a0: $ff
    xor e                                         ; $71a1: $ab
    add [hl]                                      ; $71a2: $86
    rlca                                          ; $71a3: $07
    ld [hl], c                                    ; $71a4: $71
    ccf                                           ; $71a5: $3f
    ret z                                         ; $71a6: $c8

    inc bc                                        ; $71a7: $03
    inc [hl]                                      ; $71a8: $34
    dec bc                                        ; $71a9: $0b
    ld bc, $5550                                  ; $71aa: $01 $50 $55
    rst $38                                       ; $71ad: $ff
    xor a                                         ; $71ae: $af
    or l                                          ; $71af: $b5
    ld c, c                                       ; $71b0: $49
    ld b, c                                       ; $71b1: $41
    cp $af                                        ; $71b2: $fe $af
    rlca                                          ; $71b4: $07
    db $e3                                        ; $71b5: $e3
    db $e3                                        ; $71b6: $e3
    ldh [$e0], a                                  ; $71b7: $e0 $e0
    rst $18                                       ; $71b9: $df
    sub [hl]                                      ; $71ba: $96
    ld [de], a                                    ; $71bb: $12
    inc hl                                        ; $71bc: $23
    cp $fe                                        ; $71bd: $fe $fe
    ld [hl], h                                    ; $71bf: $74
    rrca                                          ; $71c0: $0f
    rst $00                                       ; $71c1: $c7
    rst $00                                       ; $71c2: $c7
    ld a, [$02b0]                                 ; $71c3: $fa $b0 $02
    sub b                                         ; $71c6: $90
    jr jr_096_71db                                ; $71c7: $18 $12

    rlca                                          ; $71c9: $07
    rlca                                          ; $71ca: $07
    ld a, [$1042]                                 ; $71cb: $fa $42 $10
    ldh a, [$f0]                                  ; $71ce: $f0 $f0
    cp b                                          ; $71d0: $b8
    inc e                                         ; $71d1: $1c
    rst $38                                       ; $71d2: $ff
    inc a                                         ; $71d3: $3c
    rst $38                                       ; $71d4: $ff
    ld [$0a3b], a                                 ; $71d5: $ea $3b $0a
    jp nz, Jump_000_0f20                          ; $71d8: $c2 $20 $0f

jr_096_71db:
    dec bc                                        ; $71db: $0b
    and e                                         ; $71dc: $a3
    dec de                                        ; $71dd: $1b
    db $fc                                        ; $71de: $fc
    db $fc                                        ; $71df: $fc
    ld [hl+], a                                   ; $71e0: $22
    add b                                         ; $71e1: $80
    add b                                         ; $71e2: $80
    inc b                                         ; $71e3: $04
    add hl, bc                                    ; $71e4: $09
    ccf                                           ; $71e5: $3f
    ccf                                           ; $71e6: $3f
    ld [$12cc], a                                 ; $71e7: $ea $cc $12
    ldh [rOBP1], a                                ; $71ea: $e0 $49
    ldh [$be], a                                  ; $71ec: $e0 $be
    rrca                                          ; $71ee: $0f
    rrca                                          ; $71ef: $0f
    rrca                                          ; $71f0: $0f
    jp c, $801a                                   ; $71f1: $da $1a $80

    add b                                         ; $71f4: $80
    call z, Call_000_191f                         ; $71f5: $cc $1f $19
    rlca                                          ; $71f8: $07
    rlca                                          ; $71f9: $07
    db $fd                                        ; $71fa: $fd
    ld [$da14], sp                                ; $71fb: $08 $14 $da
    rra                                           ; $71fe: $1f
    inc bc                                        ; $71ff: $03
    inc bc                                        ; $7200: $03
    ld a, [c]                                     ; $7201: $f2
    ld a, [bc]                                    ; $7202: $0a
    sbc [hl]                                      ; $7203: $9e
    inc e                                         ; $7204: $1c
    jr z, jr_096_7207                             ; $7205: $28 $00

jr_096_7207:
    nop                                           ; $7207: $00
    db $ec                                        ; $7208: $ec
    dec de                                        ; $7209: $1b
    db $ed                                        ; $720a: $ed
    ccf                                           ; $720b: $3f
    db $fc                                        ; $720c: $fc
    dec de                                        ; $720d: $1b
    ld e, $0d                                     ; $720e: $1e $0d
    ld bc, $0176                                  ; $7210: $01 $76 $01
    jr nz, jr_096_724d                            ; $7213: $20 $38

    ld h, b                                       ; $7215: $60
    dec b                                         ; $7216: $05
    sbc d                                         ; $7217: $9a
    ld [bc], a                                    ; $7218: $02
    ld a, [$011e]                                 ; $7219: $fa $1e $01
    ld h, $0d                                     ; $721c: $26 $0d
    scf                                           ; $721e: $37
    nop                                           ; $721f: $00
    scf                                           ; $7220: $37
    ld c, l                                       ; $7221: $4d
    ld c, a                                       ; $7222: $4f
    dec sp                                        ; $7223: $3b
    ccf                                           ; $7224: $3f
    ld [hl], e                                    ; $7225: $73
    ld a, a                                       ; $7226: $7f
    ld h, a                                       ; $7227: $67
    ret c                                         ; $7228: $d8

    db $f4                                        ; $7229: $f4
    ld [bc], a                                    ; $722a: $02
    ld [hl], $0d                                  ; $722b: $36 $0d
    rlca                                          ; $722d: $07
    sub d                                         ; $722e: $92
    rlca                                          ; $722f: $07
    ld [hl-], a                                   ; $7230: $32
    dec bc                                        ; $7231: $0b
    inc hl                                        ; $7232: $23
    inc hl                                        ; $7233: $23
    rst $20                                       ; $7234: $e7
    nop                                           ; $7235: $00
    rst $20                                       ; $7236: $e7
    ld b, l                                       ; $7237: $45
    ld b, a                                       ; $7238: $47
    dec bc                                        ; $7239: $0b
    rrca                                          ; $723a: $0f
    set 1, a                                      ; $723b: $cb $cf
    rst $30                                       ; $723d: $f7
    ret c                                         ; $723e: $d8

    jp nc, $fa06                                  ; $723f: $d2 $06 $fa

    add hl, bc                                    ; $7242: $09
    rra                                           ; $7243: $1f
    sub [hl]                                      ; $7244: $96
    ld bc, $0d6a                                  ; $7245: $01 $6a $0d
    dec b                                         ; $7248: $05
    rlca                                          ; $7249: $07
    dec bc                                        ; $724a: $0b
    dec bc                                        ; $724b: $0b
    rrca                                          ; $724c: $0f

jr_096_724d:
    dec d                                         ; $724d: $15
    rra                                           ; $724e: $1f
    rra                                           ; $724f: $1f
    xor b                                         ; $7250: $a8
    inc b                                         ; $7251: $04
    rst $38                                       ; $7252: $ff
    dec bc                                        ; $7253: $0b
    inc bc                                        ; $7254: $03
    call z, Call_000_2618                         ; $7255: $cc $18 $26
    ld hl, sp-$08                                 ; $7258: $f8 $f8
    or $0f                                        ; $725a: $f6 $0f
    cp $fe                                        ; $725c: $fe $fe
    ld [hl], $09                                  ; $725e: $36 $09
    db $ec                                        ; $7260: $ec
    jr jr_096_726a                                ; $7261: $18 $07

    ld h, c                                       ; $7263: $61
    rlca                                          ; $7264: $07
    sub b                                         ; $7265: $90
    add hl, bc                                    ; $7266: $09
    db $fc                                        ; $7267: $fc
    ld a, [de]                                    ; $7268: $1a
    nop                                           ; $7269: $00

jr_096_726a:
    nop                                           ; $726a: $00
    ccf                                           ; $726b: $3f
    ccf                                           ; $726c: $3f
    adc $1d                                       ; $726d: $ce $1d
    inc sp                                        ; $726f: $33
    ldh [$e0], a                                  ; $7270: $e0 $e0
    ld c, [hl]                                    ; $7272: $4e
    add hl, hl                                    ; $7273: $29
    call z, $7f0f                                 ; $7274: $cc $0f $7f
    ld a, a                                       ; $7277: $7f
    ld a, $09                                     ; $7278: $3e $09
    ld a, [$871a]                                 ; $727a: $fa $1a $87
    call z, $0019                                 ; $727d: $cc $19 $00
    nop                                           ; $7280: $00
    cp $fe                                        ; $7281: $fe $fe
    ld e, l                                       ; $7283: $5d
    dec bc                                        ; $7284: $0b
    add $58                                       ; $7285: $c6 $58
    inc b                                         ; $7287: $04
    ld a, [bc]                                    ; $7288: $0a
    sbc e                                         ; $7289: $9b
    inc c                                         ; $728a: $0c
    ld c, [hl]                                    ; $728b: $4e
    cp $fe                                        ; $728c: $fe $fe
    pop hl                                        ; $728e: $e1
    dec b                                         ; $728f: $05
    ld [de], a                                    ; $7290: $12
    ld [hl+], a                                   ; $7291: $22
    rst $38                                       ; $7292: $ff
    xor d                                         ; $7293: $aa
    ld bc, $0d76                                  ; $7294: $01 $76 $0d
    ld a, [bc]                                    ; $7297: $0a
    rra                                           ; $7298: $1f
    rra                                           ; $7299: $1f
    ld bc, $0001                                  ; $729a: $01 $01 $00
    ld h, $f7                                     ; $729d: $26 $f7
    ld h, h                                       ; $729f: $64
    ld c, b                                       ; $72a0: $48
    ld bc, $0102                                  ; $72a1: $01 $02 $01
    rrca                                          ; $72a4: $0f
    rrca                                          ; $72a5: $0f
    dec a                                         ; $72a6: $3d
    ccf                                           ; $72a7: $3f
    ei                                            ; $72a8: $fb
    ld [hl], $02                                  ; $72a9: $36 $02
    ld a, [$02fa]                                 ; $72ab: $fa $fa $02
    dec d                                         ; $72ae: $15
    ld h, h                                       ; $72af: $64
    ld c, $2e                                     ; $72b0: $0e $2e
    inc e                                         ; $72b2: $1c
    dec de                                        ; $72b3: $1b
    dec e                                         ; $72b4: $1d
    ld l, h                                       ; $72b5: $6c
    ld c, $f8                                     ; $72b6: $0e $f8
    ld bc, $ec10                                  ; $72b8: $01 $10 $ec
    ldh [$82], a                                  ; $72bb: $e0 $82
    ld bc, $5b2b                                  ; $72bd: $01 $2b $5b
    ldh [rP1], a                                  ; $72c0: $e0 $00
    xor d                                         ; $72c2: $aa
    db $fd                                        ; $72c3: $fd
    db $fd                                        ; $72c4: $fd
    ld [$08ea], a                                 ; $72c5: $ea $ea $08
    ld d, l                                       ; $72c8: $55
    ld d, l                                       ; $72c9: $55
    xor d                                         ; $72ca: $aa
    xor d                                         ; $72cb: $aa
    inc b                                         ; $72cc: $04
    ld [$fcf4], sp                                ; $72cd: $08 $f4 $fc
    rst $38                                       ; $72d0: $ff
    jr nz, @-$53                                  ; $72d1: $20 $ab

    push af                                       ; $72d3: $f5
    rrca                                          ; $72d4: $0f
    ld a, [bc]                                    ; $72d5: $0a
    ld a, a                                       ; $72d6: $7f
    cp $ae                                        ; $72d7: $fe $ae
    cp $54                                        ; $72d9: $fe $54
    ld a, [hl]                                    ; $72db: $7e
    db $fd                                        ; $72dc: $fd
    dec hl                                        ; $72dd: $2b
    inc bc                                        ; $72de: $03
    ld e, $0b                                     ; $72df: $1e $0b
    db $fd                                        ; $72e1: $fd
    dec c                                         ; $72e2: $0d
    jr z, @+$05                                   ; $72e3: $28 $03

    sbc h                                         ; $72e5: $9c
    rlca                                          ; $72e6: $07
    jr z, jr_096_72f1                             ; $72e7: $28 $08

    push de                                       ; $72e9: $d5
    db $10                                        ; $72ea: $10
    push de                                       ; $72eb: $d5
    xor d                                         ; $72ec: $aa
    xor d                                         ; $72ed: $aa
    ld [hl], h                                    ; $72ee: $74
    dec l                                         ; $72ef: $2d
    db $f4                                        ; $72f0: $f4

jr_096_72f1:
    ld e, h                                       ; $72f1: $5c
    ld [$30fe], a                                 ; $72f2: $ea $fe $30
    db $fd                                        ; $72f5: $fd
    ld d, a                                       ; $72f6: $57
    jr nc, jr_096_72fd                            ; $72f7: $30 $04

    jr nz, jr_096_72fc                            ; $72f9: $20 $01

    ret nz                                        ; $72fb: $c0

jr_096_72fc:
    ret nz                                        ; $72fc: $c0

jr_096_72fd:
    add b                                         ; $72fd: $80
    add b                                         ; $72fe: $80
    inc b                                         ; $72ff: $04
    xor [hl]                                      ; $7300: $ae
    ld b, $57                                     ; $7301: $06 $57
    ld [bc], a                                    ; $7303: $02
    adc a                                         ; $7304: $8f
    jp c, $1702                                   ; $7305: $da $02 $17

    rra                                           ; $7308: $1f
    nop                                           ; $7309: $00
    ld a, $3e                                     ; $730a: $3e $3e
    ld [hl], $3e                                  ; $730c: $36 $3e
    ld l, [hl]                                    ; $730e: $6e
    ld a, [hl]                                    ; $730f: $7e
    call c, Call_000_00fc                         ; $7310: $dc $fc $00
    xor h                                         ; $7313: $ac
    db $fc                                        ; $7314: $fc
    ld e, b                                       ; $7315: $58
    ld hl, sp-$48                                 ; $7316: $f8 $b8
    ld hl, sp-$10                                 ; $7318: $f8 $f0
    ldh a, [rOBP1]                                ; $731a: $f0 $49
    ldh [rSB], a                                  ; $731c: $e0 $01
    nop                                           ; $731e: $00
    ret nz                                        ; $731f: $c0

    ret nz                                        ; $7320: $c0

    ret nz                                        ; $7321: $c0

    inc a                                         ; $7322: $3c
    ld hl, sp-$08                                 ; $7323: $f8 $f8
    db $10                                        ; $7325: $10
    ld [$e0dc], sp                                ; $7326: $08 $dc $e0
    dec e                                         ; $7329: $1d
    sub d                                         ; $732a: $92
    add hl, bc                                    ; $732b: $09
    rrca                                          ; $732c: $0f
    jp nc, $8605                                  ; $732d: $d2 $05 $86

    ld b, $20                                     ; $7330: $06 $20
    ld [hl], $7f                                  ; $7332: $36 $7f
    ld a, [hl+]                                   ; $7334: $2a
    db $eb                                        ; $7335: $eb
    add h                                         ; $7336: $84
    inc c                                         ; $7337: $0c
    ld l, $1f                                     ; $7338: $2e $1f
    db $f4                                        ; $733a: $f4
    inc d                                         ; $733b: $14
    xor d                                         ; $733c: $aa
    ld c, c                                       ; $733d: $49
    ld b, h                                       ; $733e: $44
    ld [$02ff], a                                 ; $733f: $ea $ff $02
    rst $30                                       ; $7342: $f7
    dec d                                         ; $7343: $15
    add d                                         ; $7344: $82
    ld a, [bc]                                    ; $7345: $0a
    inc c                                         ; $7346: $0c
    jr nc, @+$32                                  ; $7347: $30 $30

    jr nz, jr_096_736b                            ; $7349: $20 $20

    ld h, b                                       ; $734b: $60
    ld bc, $ea00                                  ; $734c: $01 $00 $ea
    ld a, [hl]                                    ; $734f: $7e
    ld b, b                                       ; $7350: $40
    ret z                                         ; $7351: $c8

    inc c                                         ; $7352: $0c
    ld a, l                                       ; $7353: $7d
    ld [bc], a                                    ; $7354: $02
    ld bc, $50a8                                  ; $7355: $01 $a8 $50
    ld [$0fb0], sp                                ; $7358: $08 $b0 $0f
    ld h, h                                       ; $735b: $64
    ld d, $e3                                     ; $735c: $16 $e3
    dec c                                         ; $735e: $0d
    db $e3                                        ; $735f: $e3
    ld a, [c]                                     ; $7360: $f2
    di                                            ; $7361: $f3
    ei                                            ; $7362: $fb
    cp e                                          ; $7363: $bb
    inc c                                         ; $7364: $0c
    ld c, e                                       ; $7365: $4b
    dec bc                                        ; $7366: $0b

jr_096_7367:
    rst $38                                       ; $7367: $ff
    ld c, a                                       ; $7368: $4f
    inc bc                                        ; $7369: $03
    add b                                         ; $736a: $80

jr_096_736b:
    db $f4                                        ; $736b: $f4
    inc c                                         ; $736c: $0c
    xor d                                         ; $736d: $aa
    jp nz, $f2c2                                  ; $736e: $c2 $c2 $f2

    ld a, [c]                                     ; $7371: $f2
    ei                                            ; $7372: $fb
    ld d, c                                       ; $7373: $51
    ld a, $fd                                     ; $7374: $3e $fd
    xor b                                         ; $7376: $a8
    inc c                                         ; $7377: $0c
    ld [$0810], sp                                ; $7378: $08 $10 $08
    ldh a, [rNR34]                                ; $737b: $f0 $1e
    and $0c                                       ; $737d: $e6 $0c
    ld d, h                                       ; $737f: $54
    ld a, [bc]                                    ; $7380: $0a
    rst $38                                       ; $7381: $ff
    ld [hl+], a                                   ; $7382: $22
    rst $38                                       ; $7383: $ff
    rst $10                                       ; $7384: $d7
    sub b                                         ; $7385: $90
    dec b                                         ; $7386: $05
    rst $18                                       ; $7387: $df
    rst $38                                       ; $7388: $ff
    or a                                          ; $7389: $b7
    sub b                                         ; $738a: $90
    dec [hl]                                      ; $738b: $35
    cp d                                          ; $738c: $ba
    nop                                           ; $738d: $00
    db $10                                        ; $738e: $10
    ld e, l                                       ; $738f: $5d
    ld [$10ba], sp                                ; $7390: $08 $ba $10
    jr c, jr_096_73cd                             ; $7393: $38 $38

    jr nc, jr_096_73d0                            ; $7395: $30 $39

    jr nc, jr_096_7409                            ; $7397: $30 $70

    inc hl                                        ; $7399: $23
    rlca                                          ; $739a: $07
    db $e4                                        ; $739b: $e4
    ld [$08e6], sp                                ; $739c: $08 $e6 $08
    ret nz                                        ; $739f: $c0

    ret nz                                        ; $73a0: $c0

    ld a, [bc]                                    ; $73a1: $0a
    jr @-$7e                                      ; $73a2: $18 $80

    inc c                                         ; $73a4: $0c
    jr jr_096_7367                                ; $73a5: $18 $c0

    ret nz                                        ; $73a7: $c0

    call nz, $cec4                                ; $73a8: $c4 $c4 $ce
    adc $ec                                       ; $73ab: $ce $ec
    ld bc, $fcec                                  ; $73ad: $01 $ec $fc
    db $fc                                        ; $73b0: $fc
    cp h                                          ; $73b1: $bc
    cp h                                          ; $73b2: $bc
    sbc h                                         ; $73b3: $9c
    sbc h                                         ; $73b4: $9c
    ret z                                         ; $73b5: $c8

    ld c, $c0                                     ; $73b6: $0e $c0
    sub b                                         ; $73b8: $90
    dec a                                         ; $73b9: $3d
    rst $38                                       ; $73ba: $ff
    rrca                                          ; $73bb: $0f
    ld c, $0e                                     ; $73bc: $0e $0e
    ld d, $1e                                     ; $73be: $16 $1e
    ld l, h                                       ; $73c0: $6c
    ld a, h                                       ; $73c1: $7c
    db $10                                        ; $73c2: $10
    cp b                                          ; $73c3: $b8
    ld hl, sp+$78                                 ; $73c4: $f8 $78
    and l                                         ; $73c6: $a5
    ld bc, $4f4f                                  ; $73c7: $01 $4f $4f
    dec a                                         ; $73ca: $3d
    ccf                                           ; $73cb: $3f
    db $10                                        ; $73cc: $10

jr_096_73cd:
    dec de                                        ; $73cd: $1b
    rra                                           ; $73ce: $1f
    ld [hl], a                                    ; $73cf: $77

jr_096_73d0:
    push hl                                       ; $73d0: $e5
    dec d                                         ; $73d1: $15
    ccf                                           ; $73d2: $3f
    ccf                                           ; $73d3: $3f
    rlca                                          ; $73d4: $07
    rlca                                          ; $73d5: $07
    ld d, b                                       ; $73d6: $50
    rla                                           ; $73d7: $17
    ld bc, $0f00                                  ; $73d8: $01 $00 $0f
    ld c, [hl]                                    ; $73db: $4e
    ld bc, $3f37                                  ; $73dc: $01 $37 $3f
    cpl                                           ; $73df: $2f
    ccf                                           ; $73e0: $3f
    nop                                           ; $73e1: $00
    ld e, e                                       ; $73e2: $5b
    ld a, e                                       ; $73e3: $7b
    ld [hl], e                                    ; $73e4: $73
    ld [hl], e                                    ; $73e5: $73
    daa                                           ; $73e6: $27
    daa                                           ; $73e7: $27
    rra                                           ; $73e8: $1f
    rra                                           ; $73e9: $1f
    ei                                            ; $73ea: $fb
    ret nc                                        ; $73eb: $d0

    ld e, d                                       ; $73ec: $5a
    sbc $19                                       ; $73ed: $de $19
    ld e, h                                       ; $73ef: $5c
    add hl, bc                                    ; $73f0: $09

jr_096_73f1:
    rst $28                                       ; $73f1: $ef
    ld b, $44                                     ; $73f2: $06 $44
    inc hl                                        ; $73f4: $23
    ld d, h                                       ; $73f5: $54
    db $fc                                        ; $73f6: $fc
    inc b                                         ; $73f7: $04
    jr nc, jr_096_7445                            ; $73f8: $30 $4b

    db $fd                                        ; $73fa: $fd
    ld [hl+], a                                   ; $73fb: $22
    rla                                           ; $73fc: $17
    or h                                          ; $73fd: $b4
    add hl, bc                                    ; $73fe: $09
    ld l, e                                       ; $73ff: $6b
    inc l                                         ; $7400: $2c
    ld d, b                                       ; $7401: $50
    add hl, de                                    ; $7402: $19
    db $f4                                        ; $7403: $f4
    ld [$3f3d], sp                                ; $7404: $08 $3d $3f
    xor a                                         ; $7407: $af
    or l                                          ; $7408: $b5

jr_096_7409:
    inc sp                                        ; $7409: $33
    ret nz                                        ; $740a: $c0

    ld b, b                                       ; $740b: $40
    inc hl                                        ; $740c: $23
    ld c, c                                       ; $740d: $49
    add hl, bc                                    ; $740e: $09
    ld b, b                                       ; $740f: $40
    add hl, bc                                    ; $7410: $09
    ld h, $06                                     ; $7411: $26 $06
    ld b, d                                       ; $7413: $42
    rst $38                                       ; $7414: $ff
    ld bc, $8360                                  ; $7415: $01 $60 $83
    rst $38                                       ; $7418: $ff
    pop bc                                        ; $7419: $c1
    cp a                                          ; $741a: $bf
    inc b                                         ; $741b: $04
    ld c, b                                       ; $741c: $48
    inc d                                         ; $741d: $14
    nop                                           ; $741e: $00
    db $eb                                        ; $741f: $eb
    ld a, [hl+]                                   ; $7420: $2a
    push de                                       ; $7421: $d5
    ld e, l                                       ; $7422: $5d
    and d                                         ; $7423: $a2
    or [hl]                                       ; $7424: $b6
    ld c, c                                       ; $7425: $49
    rst $28                                       ; $7426: $ef
    nop                                           ; $7427: $00
    nop                                           ; $7428: $00
    rst $38                                       ; $7429: $ff
    nop                                           ; $742a: $00
    cp [hl]                                       ; $742b: $be
    nop                                           ; $742c: $00
    db $fd                                        ; $742d: $fd
    nop                                           ; $742e: $00
    ld a, [bc]                                    ; $742f: $0a
    nop                                           ; $7430: $00
    push af                                       ; $7431: $f5
    sub l                                         ; $7432: $95
    ld l, d                                       ; $7433: $6a
    ld l, $d1                                     ; $7434: $2e $d1
    rst $10                                       ; $7436: $d7
    jr z, @+$01                                   ; $7437: $28 $ff

    nop                                           ; $7439: $00
    nop                                           ; $743a: $00
    ld a, e                                       ; $743b: $7b
    nop                                           ; $743c: $00
    db $dd                                        ; $743d: $dd
    nop                                           ; $743e: $00
    ld a, a                                       ; $743f: $7f
    nop                                           ; $7440: $00
    add d                                         ; $7441: $82
    nop                                           ; $7442: $00
    ld a, l                                       ; $7443: $7d
    ld b, l                                       ; $7444: $45

jr_096_7445:
    cp d                                          ; $7445: $ba
    db $eb                                        ; $7446: $eb
    inc d                                         ; $7447: $14
    or a                                          ; $7448: $b7
    ld [$80ff], sp                                ; $7449: $08 $ff $80
    inc e                                         ; $744c: $1c
    nop                                           ; $744d: $00
    cp e                                          ; $744e: $bb
    nop                                           ; $744f: $00
    push af                                       ; $7450: $f5
    nop                                           ; $7451: $00
    and b                                         ; $7452: $a0
    ld e, a                                       ; $7453: $5f
    ld d, h                                       ; $7454: $54
    nop                                           ; $7455: $00
    xor e                                         ; $7456: $ab
    ld a, d                                       ; $7457: $7a
    dec b                                         ; $7458: $05
    xor a                                         ; $7459: $af
    ld b, b                                       ; $745a: $40
    cp $01                                        ; $745b: $fe $01
    rst $38                                       ; $745d: $ff
    nop                                           ; $745e: $00
    nop                                           ; $745f: $00
    xor [hl]                                      ; $7460: $ae
    ld bc, $00df                                  ; $7461: $01 $df $00
    ld [$d400], a                                 ; $7464: $ea $00 $d4
    nop                                           ; $7467: $00
    nop                                           ; $7468: $00
    xor b                                         ; $7469: $a8
    nop                                           ; $746a: $00
    inc b                                         ; $746b: $04
    nop                                           ; $746c: $00
    nop                                           ; $746d: $00
    nop                                           ; $746e: $00
    jr nz, jr_096_73f1                            ; $746f: $20 $80

    inc b                                         ; $7471: $04
    nop                                           ; $7472: $00
    nop                                           ; $7473: $00
    nop                                           ; $7474: $00
    db $ed                                        ; $7475: $ed
    nop                                           ; $7476: $00
    ld e, e                                       ; $7477: $5b
    nop                                           ; $7478: $00
    or [hl]                                       ; $7479: $b6
    ld a, [bc]                                    ; $747a: $0a
    nop                                           ; $747b: $00
    ld l, c                                       ; $747c: $69
    nop                                           ; $747d: $00
    jr nc, jr_096_7490                            ; $747e: $30 $10

    nop                                           ; $7480: $00
    ld b, b                                       ; $7481: $40
    ld d, $00                                     ; $7482: $16 $00
    ld [$000a], a                                 ; $7484: $ea $0a $00
    ld d, b                                       ; $7487: $50
    nop                                           ; $7488: $00
    add c                                         ; $7489: $81
    jr nz, jr_096_748c                            ; $748a: $20 $00

jr_096_748c:
    ld [$101e], sp                                ; $748c: $08 $1e $10
    add b                                         ; $748f: $80

jr_096_7490:
    nop                                           ; $7490: $00
    nop                                           ; $7491: $00
    cp d                                          ; $7492: $ba
    ld bc, $0077                                  ; $7493: $01 $77 $00
    ld a, [hl+]                                   ; $7496: $2a
    ld bc, $b107                                  ; $7497: $01 $07 $b1
    inc b                                         ; $749a: $04
    db $10                                        ; $749b: $10
    ld a, [bc]                                    ; $749c: $0a
    ld [$3500], sp                                ; $749d: $08 $00 $35
    ld [$0008], sp                                ; $74a0: $08 $08 $00
    db $10                                        ; $74a3: $10
    ld a, $00                                     ; $74a4: $3e $00
    inc b                                         ; $74a6: $04
    ld d, c                                       ; $74a7: $51
    nop                                           ; $74a8: $00
    and d                                         ; $74a9: $a2
    nop                                           ; $74aa: $00
    push hl                                       ; $74ab: $e5
    ld c, b                                       ; $74ac: $48
    nop                                           ; $74ad: $00
    ld [bc], a                                    ; $74ae: $02
    nop                                           ; $74af: $00
    nop                                           ; $74b0: $00
    dec b                                         ; $74b1: $05
    nop                                           ; $74b2: $00
    ld c, a                                       ; $74b3: $4f
    nop                                           ; $74b4: $00
    sub a                                         ; $74b5: $97
    nop                                           ; $74b6: $00
    ld l, l                                       ; $74b7: $6d
    nop                                           ; $74b8: $00
    nop                                           ; $74b9: $00
    rst $18                                       ; $74ba: $df
    nop                                           ; $74bb: $00
    db $eb                                        ; $74bc: $eb
    nop                                           ; $74bd: $00
    ld bc, $8300                                  ; $74be: $01 $00 $83
    nop                                           ; $74c1: $00
    inc b                                         ; $74c2: $04
    ld d, $00                                     ; $74c3: $16 $00
    xor a                                         ; $74c5: $af
    nop                                           ; $74c6: $00
    ld d, [hl]                                    ; $74c7: $56
    inc b                                         ; $74c8: $04
    nop                                           ; $74c9: $00
    sbc $00                                       ; $74ca: $de $00
    ld b, d                                       ; $74cc: $42
    or l                                          ; $74cd: $b5
    inc [hl]                                      ; $74ce: $34
    db $10                                        ; $74cf: $10
    adc d                                         ; $74d0: $8a
    ld bc, $0245                                  ; $74d1: $01 $45 $02
    inc b                                         ; $74d4: $04
    ld [$088e], sp                                ; $74d5: $08 $8e $08
    ld bc, $03dc                                  ; $74d8: $01 $dc $03
    rst $18                                       ; $74db: $df
    sub [hl]                                      ; $74dc: $96
    nop                                           ; $74dd: $00
    cp $00                                        ; $74de: $fe $00
    ld a, e                                       ; $74e0: $7b
    nop                                           ; $74e1: $00
    add h                                         ; $74e2: $84
    rst $10                                       ; $74e3: $d7
    jr z, jr_096_7490                             ; $74e4: $28 $aa

    ld d, l                                       ; $74e6: $55
    dec b                                         ; $74e7: $05
    ld a, [$0810]                                 ; $74e8: $fa $10 $08
    rst $28                                       ; $74eb: $ef
    db $dd                                        ; $74ec: $dd
    nop                                           ; $74ed: $00
    cp a                                          ; $74ee: $bf
    jp z, $b700                                   ; $74ef: $ca $00 $b7

    ld c, b                                       ; $74f2: $48
    ld l, l                                       ; $74f3: $6d
    nop                                           ; $74f4: $00
    sub d                                         ; $74f5: $92
    sbc a                                         ; $74f6: $9f
    ld h, b                                       ; $74f7: $60
    ld a, [hl+]                                   ; $74f8: $2a
    push de                                       ; $74f9: $d5
    dec b                                         ; $74fa: $05
    ld a, [$00ef]                                 ; $74fb: $fa $ef $00
    nop                                           ; $74fe: $00
    ei                                            ; $74ff: $fb
    inc b                                         ; $7500: $04
    sbc $21                                       ; $7501: $de $21
    cp l                                          ; $7503: $bd
    ld b, d                                       ; $7504: $42
    ld l, d                                       ; $7505: $6a
    nop                                           ; $7506: $00
    sub l                                         ; $7507: $95
    call nc, $a02b                                ; $7508: $d4 $2b $a0
    ld e, a                                       ; $750b: $5f
    ld b, d                                       ; $750c: $42
    cp l                                          ; $750d: $bd
    or $00                                        ; $750e: $f6 $00
    ld bc, $837c                                  ; $7510: $01 $7c $83
    sbc $21                                       ; $7513: $de $21
    or h                                          ; $7515: $b4
    ld c, e                                       ; $7516: $4b
    ld c, [hl]                                    ; $7517: $4e
    nop                                           ; $7518: $00
    or c                                          ; $7519: $b1
    sbc h                                         ; $751a: $9c
    ld h, e                                       ; $751b: $63
    ld a, [hl-]                                   ; $751c: $3a
    push bc                                       ; $751d: $c5
    ld d, h                                       ; $751e: $54
    xor e                                         ; $751f: $ab
    and d                                         ; $7520: $a2
    ld [$bbc7], sp                                ; $7521: $08 $c7 $bb
    rst $00                                       ; $7524: $c7
    jp $0125                                      ; $7525: $c3 $25 $01


    sbc a                                         ; $7528: $9f
    ldh [$a0], a                                  ; $7529: $e0 $a0
    nop                                           ; $752b: $00
    ret nz                                        ; $752c: $c0

    or b                                          ; $752d: $b0
    ret nz                                        ; $752e: $c0

    cp [hl]                                       ; $752f: $be
    ret nz                                        ; $7530: $c0

    ld h, l                                       ; $7531: $65
    add e                                         ; $7532: $83
    dec e                                         ; $7533: $1d
    ld hl, $83e3                                  ; $7534: $21 $e3 $83
    dec [hl]                                      ; $7537: $35
    ld bc, $07f9                                  ; $7538: $01 $f9 $07
    dec b                                         ; $753b: $05
    inc bc                                        ; $753c: $03
    ld [bc], a                                    ; $753d: $02
    ld [$9f04], sp                                ; $753e: $08 $04 $9f
    ldh [$c0], a                                  ; $7541: $e0 $c0
    rst $38                                       ; $7543: $ff
    ld [$0145], a                                 ; $7544: $ea $45 $01
    rst $30                                       ; $7547: $f7
    sbc b                                         ; $7548: $98
    nop                                           ; $7549: $00
    or [hl]                                       ; $754a: $b6
    sbc b                                         ; $754b: $98
    di                                            ; $754c: $f3
    sbc h                                         ; $754d: $9c
    ret nc                                        ; $754e: $d0

    cp a                                          ; $754f: $bf
    db $fd                                        ; $7550: $fd
    inc bc                                        ; $7551: $03
    inc d                                         ; $7552: $14
    ld a, c                                       ; $7553: $79
    add a                                         ; $7554: $87
    inc bc                                        ; $7555: $03
    ld d, l                                       ; $7556: $55
    ld bc, $1e85                                  ; $7557: $01 $85 $1e
    nop                                           ; $755a: $00
    ld sp, hl                                     ; $755b: $f9
    rlca                                          ; $755c: $07
    nop                                           ; $755d: $00
    pop af                                        ; $755e: $f1
    rrca                                          ; $755f: $0f
    sbc b                                         ; $7560: $98
    rst $38                                       ; $7561: $ff
    cp $ff                                        ; $7562: $fe $ff
    or [hl]                                       ; $7564: $b6
    call z, $8600                                 ; $7565: $cc $00 $86
    db $fc                                        ; $7568: $fc
    db $ed                                        ; $7569: $ed
    cp $b4                                        ; $756a: $fe $b4
    rst $08                                       ; $756c: $cf
    add $8f                                       ; $756d: $c6 $8f
    nop                                           ; $756f: $00
    push hl                                       ; $7570: $e5
    adc [hl]                                      ; $7571: $8e
    dec bc                                        ; $7572: $0b
    rst $38                                       ; $7573: $ff
    cp a                                          ; $7574: $bf
    rst $38                                       ; $7575: $ff
    ld e, a                                       ; $7576: $5f
    ccf                                           ; $7577: $3f
    inc b                                         ; $7578: $04
    ld e, l                                       ; $7579: $5d
    inc sp                                        ; $757a: $33
    sub l                                         ; $757b: $95
    ld a, e                                       ; $757c: $7b
    ld de, $000a                                  ; $757d: $11 $0a $00
    add l                                         ; $7580: $85
    inc bc                                        ; $7581: $03
    add d                                         ; $7582: $82
    ld d, $00                                     ; $7583: $16 $00
    rst $38                                       ; $7585: $ff
    rst $28                                       ; $7586: $ef
    rst $38                                       ; $7587: $ff
    xor d                                         ; $7588: $aa
    rst $00                                       ; $7589: $c7
    ld l, b                                       ; $758a: $68
    ld [$00c2], sp                                ; $758b: $08 $c2 $00
    rst $38                                       ; $758e: $ff
    sub $ff                                       ; $758f: $d6 $ff
    db $ed                                        ; $7591: $ed
    inc bc                                        ; $7592: $03
    ld bc, $6fff                                  ; $7593: $01 $ff $6f

jr_096_7596:
    nop                                           ; $7596: $00
    rst $38                                       ; $7597: $ff
    push de                                       ; $7598: $d5
    dec sp                                        ; $7599: $3b
    ld de, $57ff                                  ; $759a: $11 $ff $57
    rst $38                                       ; $759d: $ff
    push bc                                       ; $759e: $c5
    ld a, [de]                                    ; $759f: $1a
    inc bc                                        ; $75a0: $03
    push hl                                       ; $75a1: $e5
    inc bc                                        ; $75a2: $03
    ld d, b                                       ; $75a3: $50
    add hl, hl                                    ; $75a4: $29
    ld h, b                                       ; $75a5: $60
    add hl, bc                                    ; $75a6: $09
    xor a                                         ; $75a7: $af
    ld a, [c]                                     ; $75a8: $f2
    nop                                           ; $75a9: $00
    jr nz, jr_096_75af                            ; $75aa: $20 $03

    rst $18                                       ; $75ac: $df
    ld e, c                                       ; $75ad: $59
    and [hl]                                      ; $75ae: $a6

jr_096_75af:
    cp [hl]                                       ; $75af: $be
    ld b, c                                       ; $75b0: $41
    rst $30                                       ; $75b1: $f7
    adc [hl]                                      ; $75b2: $8e
    ld bc, $0992                                  ; $75b3: $01 $92 $09
    ld bc, $0077                                  ; $75b6: $01 $77 $00
    cp d                                          ; $75b9: $ba
    nop                                           ; $75ba: $00
    ld [hl], l                                    ; $75bb: $75
    nop                                           ; $75bc: $00
    jr z, jr_096_75c5                             ; $75bd: $28 $06

    ld bc, $206a                                  ; $75bf: $01 $6a $20
    jr jr_096_75c5                                ; $75c2: $18 $01

    ld h, c                                       ; $75c4: $61

jr_096_75c5:
    add hl, bc                                    ; $75c5: $09
    sbc $10                                       ; $75c6: $de $10
    nop                                           ; $75c8: $00
    xor b                                         ; $75c9: $a8
    ld l, [hl]                                    ; $75ca: $6e
    ld bc, $d004                                  ; $75cb: $01 $04 $d0
    inc [hl]                                      ; $75ce: $34
    ld bc, $2801                                  ; $75cf: $01 $01 $28
    add b                                         ; $75d2: $80
    ld l, d                                       ; $75d3: $6a
    ld bc, $0081                                  ; $75d4: $01 $81 $00
    ld b, [hl]                                    ; $75d7: $46
    nop                                           ; $75d8: $00
    ld d, b                                       ; $75d9: $50
    adc l                                         ; $75da: $8d
    ld [hl+], a                                   ; $75db: $22
    ld bc, $7600                                  ; $75dc: $01 $00 $76
    ld bc, $0048                                  ; $75df: $01 $48 $00
    ret nc                                        ; $75e2: $d0

    nop                                           ; $75e3: $00
    inc b                                         ; $75e4: $04
    ld l, b                                       ; $75e5: $68
    nop                                           ; $75e6: $00
    db $f4                                        ; $75e7: $f4
    nop                                           ; $75e8: $00
    ld l, d                                       ; $75e9: $6a
    ret nc                                        ; $75ea: $d0

    ld bc, $00f7                                  ; $75eb: $01 $f7 $00
    nop                                           ; $75ee: $00
    ld a, a                                       ; $75ef: $7f
    add b                                         ; $75f0: $80
    db $dd                                        ; $75f1: $dd
    ld [hl+], a                                   ; $75f2: $22
    or a                                          ; $75f3: $b7
    ld c, b                                       ; $75f4: $48
    ld c, [hl]                                    ; $75f5: $4e
    or c                                          ; $75f6: $b1
    jr z, jr_096_7596                             ; $75f7: $28 $9d

    ld h, d                                       ; $75f9: $62
    ldh a, [$08]                                  ; $75fa: $f0 $08
    ei                                            ; $75fc: $fb
    jr nz, jr_096_7610                            ; $75fd: $20 $11

    ld [hl], a                                    ; $75ff: $77
    adc b                                         ; $7600: $88
    xor $00                                       ; $7601: $ee $00
    ld de, $aa55                                  ; $7603: $11 $55 $aa
    add b                                         ; $7606: $80
    ld a, a                                       ; $7607: $7f
    ld [bc], a                                    ; $7608: $02
    db $fd                                        ; $7609: $fd
    rst $38                                       ; $760a: $ff
    inc h                                         ; $760b: $24
    rst $38                                       ; $760c: $ff
    add b                                         ; $760d: $80
    ld [bc], a                                    ; $760e: $02
    nop                                           ; $760f: $00

jr_096_7610:
    ret nz                                        ; $7610: $c0

    cp a                                          ; $7611: $bf
    inc b                                         ; $7612: $04
    jr @-$3d                                      ; $7613: $18 $c1

    cp a                                          ; $7615: $bf
    inc bc                                        ; $7616: $03
    rst $38                                       ; $7617: $ff
    rst $38                                       ; $7618: $ff
    nop                                           ; $7619: $00
    rst $38                                       ; $761a: $ff
    xor d                                         ; $761b: $aa
    ld d, l                                       ; $761c: $55
    dec c                                         ; $761d: $0d
    ld [bc], a                                    ; $761e: $02
    ld [$8008], sp                                ; $761f: $08 $08 $80
    jr nc, jr_096_7636                            ; $7622: $30 $12

    ld b, c                                       ; $7624: $41
    cp a                                          ; $7625: $bf
    add e                                         ; $7626: $83
    ld a, a                                       ; $7627: $7f
    ld bc, $03ff                                  ; $7628: $01 $ff $03
    ld [$01ff], sp                                ; $762b: $08 $ff $01
    rst $38                                       ; $762e: $ff
    xor e                                         ; $762f: $ab
    ld c, l                                       ; $7630: $4d
    ld [bc], a                                    ; $7631: $02
    inc b                                         ; $7632: $04
    ei                                            ; $7633: $fb
    add hl, hl                                    ; $7634: $29
    nop                                           ; $7635: $00

jr_096_7636:
    rst $10                                       ; $7636: $d7
    ld e, [hl]                                    ; $7637: $5e
    and c                                         ; $7638: $a1
    push af                                       ; $7639: $f5
    inc bc                                        ; $763a: $03
    cp $01                                        ; $763b: $fe $01
    cp l                                          ; $763d: $bd
    nop                                           ; $763e: $00
    inc bc                                        ; $763f: $03
    or $01                                        ; $7640: $f6 $01
    ld sp, hl                                     ; $7642: $f9
    inc bc                                        ; $7643: $03
    rst $00                                       ; $7644: $c7
    rst $38                                       ; $7645: $ff
    db $e3                                        ; $7646: $e3
    ld b, b                                       ; $7647: $40
    rst $18                                       ; $7648: $df
    inc b                                         ; $7649: $04
    ld c, b                                       ; $764a: $48
    ld e, [hl]                                    ; $764b: $5e
    ld bc, $03ad                                  ; $764c: $01 $ad $03
    ld d, $01                                     ; $764f: $16 $01
    nop                                           ; $7651: $00
    add e                                         ; $7652: $83
    ld bc, $0106                                  ; $7653: $01 $06 $01
    ld b, e                                       ; $7656: $43
    ld bc, $0102                                  ; $7657: $01 $02 $01
    nop                                           ; $765a: $00
    inc bc                                        ; $765b: $03
    ld bc, $fe01                                  ; $765c: $01 $01 $fe
    ld b, b                                       ; $765f: $40
    cp a                                          ; $7660: $bf
    inc b                                         ; $7661: $04
    rst $38                                       ; $7662: $ff
    inc b                                         ; $7663: $04
    dec hl                                        ; $7664: $2b
    rst $38                                       ; $7665: $ff
    ld e, a                                       ; $7666: $5f
    rst $38                                       ; $7667: $ff
    ccf                                           ; $7668: $3f
    adc e                                         ; $7669: $8b
    ld [de], a                                    ; $766a: $12
    nop                                           ; $766b: $00
    rst $38                                       ; $766c: $ff
    nop                                           ; $766d: $00
    ld [$80f7], sp                                ; $766e: $08 $f7 $80
    rst $38                                       ; $7671: $ff
    ld [bc], a                                    ; $7672: $02
    rst $38                                       ; $7673: $ff
    push de                                       ; $7674: $d5
    rst $38                                       ; $7675: $ff
    ld c, b                                       ; $7676: $48
    xor a                                         ; $7677: $af
    sbc e                                         ; $7678: $9b
    ld [de], a                                    ; $7679: $12
    inc b                                         ; $767a: $04
    ei                                            ; $767b: $fb
    ld [hl+], a                                   ; $767c: $22
    nop                                           ; $767d: $00
    rst $38                                       ; $767e: $ff
    sub b                                         ; $767f: $90
    rst $38                                       ; $7680: $ff
    db $10                                        ; $7681: $10
    dec h                                         ; $7682: $25
    rst $38                                       ; $7683: $ff
    db $db                                        ; $7684: $db
    xor e                                         ; $7685: $ab
    ld [de], a                                    ; $7686: $12
    add b                                         ; $7687: $80
    ld a, a                                       ; $7688: $7f
    nop                                           ; $7689: $00
    rst $38                                       ; $768a: $ff
    nop                                           ; $768b: $00
    ld b, b                                       ; $768c: $40
    rst $38                                       ; $768d: $ff
    ret nc                                        ; $768e: $d0

    rst $38                                       ; $768f: $ff
    xor l                                         ; $7690: $ad
    rst $38                                       ; $7691: $ff
    sbc $ff                                       ; $7692: $de $ff
    ld b, b                                       ; $7694: $40
    cp l                                          ; $7695: $bd
    cp l                                          ; $7696: $bd
    ld [bc], a                                    ; $7697: $02
    ld de, $c3ff                                  ; $7698: $11 $ff $c3
    rst $38                                       ; $769b: $ff
    and e                                         ; $769c: $a3
    ld a, a                                       ; $769d: $7f
    nop                                           ; $769e: $00
    rst $18                                       ; $769f: $df
    ccf                                           ; $76a0: $3f
    cpl                                           ; $76a1: $2f
    ldh a, [$c7]                                  ; $76a2: $f0 $c7
    ld hl, sp+$60                                 ; $76a4: $f8 $60
    rst $38                                       ; $76a6: $ff
    inc b                                         ; $76a7: $04
    inc a                                         ; $76a8: $3c
    rst $38                                       ; $76a9: $ff
    pop af                                        ; $76aa: $f1
    rst $38                                       ; $76ab: $ff
    db $fc                                        ; $76ac: $fc
    db $d3                                        ; $76ad: $d3
    ld [de], a                                    ; $76ae: $12
    ld a, a                                       ; $76af: $7f
    rst $38                                       ; $76b0: $ff
    nop                                           ; $76b1: $00
    ret nc                                        ; $76b2: $d0

    ccf                                           ; $76b3: $3f
    ld l, b                                       ; $76b4: $68
    sbc a                                         ; $76b5: $9f
    add hl, bc                                    ; $76b6: $09
    rst $38                                       ; $76b7: $ff
    add d                                         ; $76b8: $82
    rst $38                                       ; $76b9: $ff
    db $10                                        ; $76ba: $10
    ret z                                         ; $76bb: $c8

    rst $38                                       ; $76bc: $ff
    ret nz                                        ; $76bd: $c0

    sub $02                                       ; $76be: $d6 $02
    daa                                           ; $76c0: $27
    call c, $fe05                                 ; $76c1: $dc $05 $fe
    ld bc, $7f86                                  ; $76c4: $01 $86 $7f
    inc bc                                        ; $76c7: $03
    rst $38                                       ; $76c8: $ff
    ld de, $04fe                                  ; $76c9: $11 $fe $04
    jp nz, RST_00                                 ; $76cc: $c2 $00 $00

    rst $38                                       ; $76cf: $ff
    rst $38                                       ; $76d0: $ff
    rlca                                          ; $76d1: $07
    nop                                           ; $76d2: $00
    pop hl                                        ; $76d3: $e1
    nop                                           ; $76d4: $00
    ccf                                           ; $76d5: $3f
    ret nz                                        ; $76d6: $c0

    db $10                                        ; $76d7: $10
    ld d, c                                       ; $76d8: $51
    rst $38                                       ; $76d9: $ff
    rrca                                          ; $76da: $0f
    ld c, [hl]                                    ; $76db: $4e
    nop                                           ; $76dc: $00

jr_096_76dd:
    db $10                                        ; $76dd: $10
    rst $38                                       ; $76de: $ff
    ld [bc], a                                    ; $76df: $02
    db $fd                                        ; $76e0: $fd
    inc b                                         ; $76e1: $04
    inc b                                         ; $76e2: $04
    ei                                            ; $76e3: $fb
    jr nz, @-$1f                                  ; $76e4: $20 $df

    ld b, b                                       ; $76e6: $40
    ld c, $00                                     ; $76e7: $0e $00
    ldh a, [rIE]                                  ; $76e9: $f0 $ff
    add b                                         ; $76eb: $80
    jr nz, jr_096_76f6                            ; $76ec: $20 $08

    ld a, [hl]                                    ; $76ee: $7e
    rst $38                                       ; $76ef: $ff
    and e                                         ; $76f0: $a3
    pop bc                                        ; $76f1: $c1
    ld l, [hl]                                    ; $76f2: $6e
    di                                            ; $76f3: $f3
    inc e                                         ; $76f4: $1c
    nop                                           ; $76f5: $00

jr_096_76f6:
    rst $38                                       ; $76f6: $ff
    pop bc                                        ; $76f7: $c1
    rst $38                                       ; $76f8: $ff
    rra                                           ; $76f9: $1f
    db $fd                                        ; $76fa: $fd
    or [hl]                                       ; $76fb: $b6
    ld hl, sp+$1a                                 ; $76fc: $f8 $1a
    and d                                         ; $76fe: $a2
    ld h, $00                                     ; $76ff: $26 $00
    jr nz, jr_096_76dd                            ; $7701: $20 $da

    nop                                           ; $7703: $00
    add hl, bc                                    ; $7704: $09
    cp $00                                        ; $7705: $fe $00
    adc $01                                       ; $7707: $ce $01
    ld l, h                                       ; $7709: $6c
    ld a, [bc]                                    ; $770a: $0a
    rra                                           ; $770b: $1f
    rra                                           ; $770c: $1f
    rst $38                                       ; $770d: $ff
    pop hl                                        ; $770e: $e1
    ld b, $01                                     ; $770f: $06 $01
    ld b, h                                       ; $7711: $44
    xor d                                         ; $7712: $aa
    ld [$007f], sp                                ; $7713: $08 $7f $00
    jr @-$0e                                      ; $7716: $18 $f0

    and $f8                                       ; $7718: $e6 $f8
    rst $18                                       ; $771a: $df
    ccf                                           ; $771b: $3f
    sbc b                                         ; $771c: $98
    ld a, a                                       ; $771d: $7f
    nop                                           ; $771e: $00
    ld h, a                                       ; $771f: $67
    rst $38                                       ; $7720: $ff
    xor d                                         ; $7721: $aa
    push de                                       ; $7722: $d5
    and c                                         ; $7723: $a1
    cp $54                                        ; $7724: $fe $54
    rst $38                                       ; $7726: $ff
    ld bc, $3f22                                  ; $7727: $01 $22 $3f
    ld h, b                                       ; $772a: $60
    ccf                                           ; $772b: $3f
    ret z                                         ; $772c: $c8

    rst $30                                       ; $772d: $f7
    ld [bc], a                                    ; $772e: $02
    ld d, h                                       ; $772f: $54
    nop                                           ; $7730: $00
    inc b                                         ; $7731: $04
    pop bc                                        ; $7732: $c1
    rst $38                                       ; $7733: $ff
    ld [hl+], a                                   ; $7734: $22
    db $fd                                        ; $7735: $fd
    jr nz, jr_096_7770                            ; $7736: $20 $38

    nop                                           ; $7738: $00
    ld c, a                                       ; $7739: $4f
    rst $38                                       ; $773a: $ff
    nop                                           ; $773b: $00
    inc d                                         ; $773c: $14
    ld hl, sp+$28                                 ; $773d: $f8 $28
    ldh a, [rNR13]                                ; $773f: $f0 $13
    db $fc                                        ; $7741: $fc
    rrca                                          ; $7742: $0f
    rst $38                                       ; $7743: $ff
    nop                                           ; $7744: $00
    and b                                         ; $7745: $a0
    rst $18                                       ; $7746: $df
    ld d, c                                       ; $7747: $51
    xor a                                         ; $7748: $af
    ld [bc], a                                    ; $7749: $02
    rst $38                                       ; $774a: $ff
    ldh [rIE], a                                  ; $774b: $e0 $ff
    ld bc, $1f30                                  ; $774d: $01 $30 $1f
    ld h, b                                       ; $7750: $60
    ccf                                           ; $7751: $3f
    rst $38                                       ; $7752: $ff
    ld a, a                                       ; $7753: $7f
    ldh a, [$66]                                  ; $7754: $f0 $66
    nop                                           ; $7756: $00
    db $10                                        ; $7757: $10
    ccf                                           ; $7758: $3f
    rst $38                                       ; $7759: $ff
    cp d                                          ; $775a: $ba
    ld e, [hl]                                    ; $775b: $5e
    ld [bc], a                                    ; $775c: $02
    push de                                       ; $775d: $d5
    rst $38                                       ; $775e: $ff
    cp [hl]                                       ; $775f: $be
    pop bc                                        ; $7760: $c1
    nop                                           ; $7761: $00
    and d                                         ; $7762: $a2
    pop bc                                        ; $7763: $c1
    or d                                          ; $7764: $b2
    pop bc                                        ; $7765: $c1
    cp [hl]                                       ; $7766: $be
    pop bc                                        ; $7767: $c1
    sbc [hl]                                      ; $7768: $9e
    pop hl                                        ; $7769: $e1
    ld bc, $837d                                  ; $776a: $01 $7d $83
    inc bc                                        ; $776d: $03
    rst $38                                       ; $776e: $ff
    rst $10                                       ; $776f: $d7

jr_096_7770:
    rst $38                                       ; $7770: $ff
    add c                                         ; $7771: $81
    ld [bc], a                                    ; $7772: $02
    nop                                           ; $7773: $00
    ld bc, $ffeb                                  ; $7774: $01 $eb $ff
    push hl                                       ; $7777: $e5
    add e                                         ; $7778: $83
    cp l                                          ; $7779: $bd
    jp $0ac0                                      ; $777a: $c3 $c0 $0a


    ld bc, $bf68                                  ; $777d: $01 $68 $bf
    ld a, d                                       ; $7780: $7a
    ld [de], a                                    ; $7781: $12
    ld l, d                                       ; $7782: $6a
    ld a, [de]                                    ; $7783: $1a
    jp $0218                                      ; $7784: $c3 $18 $02


    db $fd                                        ; $7787: $fd
    inc bc                                        ; $7788: $03
    dec c                                         ; $7789: $0d
    jr z, jr_096_778f                             ; $778a: $28 $03

    add hl, de                                    ; $778c: $19
    ld e, h                                       ; $778d: $5c
    ld [bc], a                                    ; $778e: $02

jr_096_778f:
    inc bc                                        ; $778f: $03
    inc h                                         ; $7790: $24
    ld bc, $9f67                                  ; $7791: $01 $67 $9f
    cp a                                          ; $7794: $bf
    ld [$8a40], sp                                ; $7795: $08 $40 $8a
    push af                                       ; $7798: $f5
    rst $38                                       ; $7799: $ff
    add b                                         ; $779a: $80
    ld bc, $ff47                                  ; $779b: $01 $47 $ff
    daa                                           ; $779e: $27
    add b                                         ; $779f: $80
    add [hl]                                      ; $77a0: $86
    ld bc, $ff8a                                  ; $77a1: $01 $8a $ff
    ld d, b                                       ; $77a4: $50
    rst $28                                       ; $77a5: $ef
    ld b, c                                       ; $77a6: $41

jr_096_77a7:
    rst $38                                       ; $77a7: $ff
    ld hl, sp+$08                                 ; $77a8: $f8 $08
    rst $38                                       ; $77aa: $ff
    adc h                                         ; $77ab: $8c
    rst $38                                       ; $77ac: $ff
    and $7a                                       ; $77ad: $e6 $7a
    ld [bc], a                                    ; $77af: $02
    db $fc                                        ; $77b0: $fc
    rst $38                                       ; $77b1: $ff
    jr nz, @+$46                                  ; $77b2: $20 $44

    rst $18                                       ; $77b4: $df
    ld d, b                                       ; $77b5: $50
    add hl, bc                                    ; $77b6: $09
    ld [hl+], a                                   ; $77b7: $22
    db $fd                                        ; $77b8: $fd
    sub c                                         ; $77b9: $91
    ld b, $01                                     ; $77ba: $06 $01
    ld a, [hl]                                    ; $77bc: $7e
    rst $38                                       ; $77bd: $ff
    nop                                           ; $77be: $00
    db $d3                                        ; $77bf: $d3
    pop hl                                        ; $77c0: $e1
    ld a, a                                       ; $77c1: $7f
    rst $38                                       ; $77c2: $ff
    ld d, $f9                                     ; $77c3: $16 $f9
    jr c, jr_096_77a7                             ; $77c5: $38 $e0

    dec b                                         ; $77c7: $05
    cpl                                           ; $77c8: $2f
    ldh a, [rNR31]                                ; $77c9: $f0 $1b
    db $fc                                        ; $77cb: $fc
    rlca                                          ; $77cc: $07
    ld c, b                                       ; $77cd: $48
    ld bc, $5002                                  ; $77ce: $01 $02 $50
    ld bc, $60c4                                  ; $77d1: $01 $c4 $60
    add hl, bc                                    ; $77d4: $09
    ld d, b                                       ; $77d5: $50
    add hl, sp                                    ; $77d6: $39
    ld b, h                                       ; $77d7: $44
    cp e                                          ; $77d8: $bb
    nop                                           ; $77d9: $00
    db $10                                        ; $77da: $10
    ld bc, $ffa2                                  ; $77db: $01 $a2 $ff
    ld d, c                                       ; $77de: $51
    ld b, [hl]                                    ; $77df: $46
    ld c, b                                       ; $77e0: $48
    ld bc, $1dfb                                  ; $77e1: $01 $fb $1d
    inc b                                         ; $77e4: $04
    ld b, l                                       ; $77e5: $45
    cp [hl]                                       ; $77e6: $be
    nop                                           ; $77e7: $00
    db $fc                                        ; $77e8: $fc
    nop                                           ; $77e9: $00
    nop                                           ; $77ea: $00
    ld bc, $c4ff                                  ; $77eb: $01 $ff $c4
    ei                                            ; $77ee: $fb
    and b                                         ; $77ef: $a0
    ld a, a                                       ; $77f0: $7f
    ld hl, $40fe                                  ; $77f1: $21 $fe $40
    ld hl, sp-$02                                 ; $77f4: $f8 $fe
    ld bc, $ff13                                  ; $77f6: $01 $13 $ff
    adc l                                         ; $77f9: $8d
    cp $17                                        ; $77fa: $fe $17
    ld hl, sp+$15                                 ; $77fc: $f8 $15
    jr c, @+$01                                   ; $77fe: $38 $ff

    sbc a                                         ; $7800: $9f
    ld a, [bc]                                    ; $7801: $0a
    ld [bc], a                                    ; $7802: $02
    db $10                                        ; $7803: $10
    ld h, b                                       ; $7804: $60
    ld d, b                                       ; $7805: $50
    ld b, b                                       ; $7806: $40
    inc l                                         ; $7807: $2c
    ld [bc], a                                    ; $7808: $02
    ret nz                                        ; $7809: $c0

    call nc, $d809                                ; $780a: $d4 $09 $d8
    add hl, bc                                    ; $780d: $09
    add d                                         ; $780e: $82
    ld bc, $0361                                  ; $780f: $01 $61 $03
    or d                                          ; $7812: $b2
    ld bc, $7900                                  ; $7813: $01 $00 $79
    inc bc                                        ; $7816: $03
    xor $01                                       ; $7817: $ee $01
    db $fd                                        ; $7819: $fd
    inc bc                                        ; $781a: $03
    cp d                                          ; $781b: $ba
    ld b, l                                       ; $781c: $45
    nop                                           ; $781d: $00
    db $ed                                        ; $781e: $ed
    inc de                                        ; $781f: $13
    ld [hl], d                                    ; $7820: $72
    adc l                                         ; $7821: $8d
    cp c                                          ; $7822: $b9
    ld b, a                                       ; $7823: $47
    ld e, h                                       ; $7824: $5c
    and e                                         ; $7825: $a3
    nop                                           ; $7826: $00
    dec hl                                        ; $7827: $2b
    push de                                       ; $7828: $d5
    nop                                           ; $7829: $00
    rst $38                                       ; $782a: $ff
    add c                                         ; $782b: $81
    ld a, a                                       ; $782c: $7f
    ld [bc], a                                    ; $782d: $02
    rst $38                                       ; $782e: $ff
    inc b                                         ; $782f: $04
    dec bc                                        ; $7830: $0b
    rst $38                                       ; $7831: $ff
    or l                                          ; $7832: $b5
    rst $38                                       ; $7833: $ff
    ld a, e                                       ; $7834: $7b
    ret nz                                        ; $7835: $c0

    ld de, $e8ff                                  ; $7836: $11 $ff $e8
    call nc, $000b                                ; $7839: $d4 $0b $00
    inc b                                         ; $783c: $04
    ld b, b                                       ; $783d: $40
    ccf                                           ; $783e: $3f
    sbc $01                                       ; $783f: $de $01
    add l                                         ; $7841: $85
    sub d                                         ; $7842: $92
    ld bc, $ffff                                  ; $7843: $01 $ff $ff
    dec b                                         ; $7846: $05
    ccf                                           ; $7847: $3f
    ret nz                                        ; $7848: $c0

    dec d                                         ; $7849: $15
    ld [$be40], a                                 ; $784a: $ea $40 $be
    ld bc, $1a05                                  ; $784d: $01 $05 $1a
    ld [bc], a                                    ; $7850: $02
    nop                                           ; $7851: $00
    ld c, a                                       ; $7852: $4f
    ldh a, [$c5]                                  ; $7853: $f0 $c5
    ld a, [$ff31]                                 ; $7855: $fa $31 $ff
    xor $1f                                       ; $7858: $ee $1f
    jr nz, jr_096_78d4                            ; $785a: $20 $78

    adc a                                         ; $785c: $8f
    db $10                                        ; $785d: $10
    ld a, [bc]                                    ; $785e: $0a
    ret nz                                        ; $785f: $c0

    rst $38                                       ; $7860: $ff
    and l                                         ; $7861: $a5
    ld a, [hl]                                    ; $7862: $7e
    ld [hl+], a                                   ; $7863: $22
    ld [$c0fd], sp                                ; $7864: $08 $fd $c0
    rst $38                                       ; $7867: $ff
    ld [$029c], sp                                ; $7868: $08 $9c $02
    add d                                         ; $786b: $82
    rst $38                                       ; $786c: $ff
    ld b, e                                       ; $786d: $43
    add d                                         ; $786e: $82
    call nz, Call_000_1301                        ; $786f: $c4 $01 $13
    db $fc                                        ; $7872: $fc
    sbc b                                         ; $7873: $98
    ld a, a                                       ; $7874: $7f
    ld c, a                                       ; $7875: $4f
    add h                                         ; $7876: $84
    ld [bc], a                                    ; $7877: $02

jr_096_7878:
    jr nz, jr_096_78ba                            ; $7878: $20 $40

    rst $18                                       ; $787a: $df
    sub h                                         ; $787b: $94
    ld a, [bc]                                    ; $787c: $0a
    db $f4                                        ; $787d: $f4

jr_096_787e:
    rrca                                          ; $787e: $0f
    ld c, d                                       ; $787f: $4a
    rlca                                          ; $7880: $07
    ld a, [$4007]                                 ; $7881: $fa $07 $40
    inc b                                         ; $7884: $04
    ld b, $01                                     ; $7885: $06 $01
    ld [bc], a                                    ; $7887: $02
    db $fd                                        ; $7888: $fd
    ld c, $ff                                     ; $7889: $0e $ff
    ei                                            ; $788b: $fb
    pop af                                        ; $788c: $f1
    nop                                           ; $788d: $00
    ld d, b                                       ; $788e: $50
    ldh [$36], a                                  ; $788f: $e0 $36
    ld hl, sp-$71                                 ; $7891: $f8 $8f
    ld a, a                                       ; $7893: $7f
    ld b, b                                       ; $7894: $40
    cp a                                          ; $7895: $bf
    ld b, b                                       ; $7896: $40
    db $10                                        ; $7897: $10
    and [hl]                                      ; $7898: $a6
    ld [de], a                                    ; $7899: $12
    sub d                                         ; $789a: $92
    db $fd                                        ; $789b: $fd
    call nz, $c17f                                ; $789c: $c4 $7f $c1
    ld a, a                                       ; $789f: $7f
    ld b, b                                       ; $78a0: $40
    add e                                         ; $78a1: $83
    or b                                          ; $78a2: $b0
    ld [bc], a                                    ; $78a3: $02
    db $10                                        ; $78a4: $10
    rst $38                                       ; $78a5: $ff
    jp nz, Jump_096_44ff                          ; $78a6: $c2 $ff $44

    ei                                            ; $78a9: $fb
    nop                                           ; $78aa: $00
    nop                                           ; $78ab: $00
    rst $38                                       ; $78ac: $ff
    ld a, c                                       ; $78ad: $79
    rst $38                                       ; $78ae: $ff
    or h                                          ; $78af: $b4
    rst $08                                       ; $78b0: $cf
    ld a, d                                       ; $78b1: $7a
    add a                                         ; $78b2: $87
    ld [$ffc3], sp                                ; $78b3: $08 $c3 $ff
    ld a, a                                       ; $78b6: $7f
    db $fc                                        ; $78b7: $fc
    ld [c], a                                     ; $78b8: $e2
    add hl, bc                                    ; $78b9: $09

jr_096_78ba:
    ld [$40ff], sp                                ; $78ba: $08 $ff $40
    jr z, jr_096_787e                             ; $78bd: $28 $bf

    jr nz, @-$18                                  ; $78bf: $20 $e6

    ld [bc], a                                    ; $78c1: $02
    ld a, [bc]                                    ; $78c2: $0a
    cp [hl]                                       ; $78c3: $be
    ld bc, $ff00                                  ; $78c4: $01 $00 $ff
    add l                                         ; $78c7: $85
    inc c                                         ; $78c8: $0c
    cp $3c                                        ; $78c9: $fe $3c
    rst $38                                       ; $78cb: $ff
    ld [hl], e                                    ; $78cc: $73
    ld d, b                                       ; $78cd: $50
    ld [de], a                                    ; $78ce: $12
    db $f4                                        ; $78cf: $f4
    ld a, [bc]                                    ; $78d0: $0a
    ld a, [hl]                                    ; $78d1: $7e
    rst $38                                       ; $78d2: $ff
    dec b                                         ; $78d3: $05

jr_096_78d4:
    or b                                          ; $78d4: $b0
    ld a, a                                       ; $78d5: $7f
    ld l, b                                       ; $78d6: $68
    sbc a                                         ; $78d7: $9f
    ldh a, [$a0]                                  ; $78d8: $f0 $a0
    ld bc, $fe10                                  ; $78da: $01 $10 $fe
    ld de, $1110                                  ; $78dd: $11 $10 $11
    rst $38                                       ; $78e0: $ff
    ld c, $6a                                     ; $78e1: $0e $6a
    ld [bc], a                                    ; $78e3: $02
    and c                                         ; $78e4: $a1
    ret nz                                        ; $78e5: $c0

    ld [hl], b                                    ; $78e6: $70
    add b                                         ; $78e7: $80
    jr nz, jr_096_7878                            ; $78e8: $20 $8e

    pop af                                        ; $78ea: $f1
    ld [hl+], a                                   ; $78eb: $22
    ld [$fb04], sp                                ; $78ec: $08 $04 $fb
    pop hl                                        ; $78ef: $e1
    nop                                           ; $78f0: $00
    sbc [hl]                                      ; $78f1: $9e
    ld [hl+], a                                   ; $78f2: $22
    pop hl                                        ; $78f3: $e1
    rst $38                                       ; $78f4: $ff
    ld h, $00                                     ; $78f5: $26 $00
    add sp, $1f                                   ; $78f7: $e8 $1f
    adc b                                         ; $78f9: $88
    adc h                                         ; $78fa: $8c
    ld [bc], a                                    ; $78fb: $02
    nop                                           ; $78fc: $00
    dec bc                                        ; $78fd: $0b
    rst $38                                       ; $78fe: $ff
    adc b                                         ; $78ff: $88
    rst $30                                       ; $7900: $f7
    sub c                                         ; $7901: $91
    ld [hl], $02                                  ; $7902: $36 $02
    ld [de], a                                    ; $7904: $12
    ld d, h                                       ; $7905: $54
    db $10                                        ; $7906: $10
    inc de                                        ; $7907: $13
    dec b                                         ; $7908: $05
    pop de                                        ; $7909: $d1
    and $02                                       ; $790a: $e6 $02
    ldh [rNR23], a                                ; $790c: $e0 $18
    nop                                           ; $790e: $00
    and h                                         ; $790f: $a4
    ld bc, $cf34                                  ; $7910: $01 $34 $cf
    ld hl, sp-$20                                 ; $7913: $f8 $e0
    jr nc, jr_096_7967                            ; $7915: $30 $50

    ld b, l                                       ; $7917: $45
    ldh [rP1], a                                  ; $7918: $e0 $00
    ld c, $5c                                     ; $791a: $0e $5c
    inc bc                                        ; $791c: $03
    ld b, b                                       ; $791d: $40
    rst $38                                       ; $791e: $ff
    add hl, bc                                    ; $791f: $09
    or $10                                        ; $7920: $f6 $10
    nop                                           ; $7922: $00
    rst $38                                       ; $7923: $ff
    ld hl, $1020                                  ; $7924: $21 $20 $10
    db $e4                                        ; $7927: $e4
    rra                                           ; $7928: $1f
    cp $03                                        ; $7929: $fe $03
    ld bc, $df20                                  ; $792b: $01 $20 $df
    inc e                                         ; $792e: $1c
    rst $38                                       ; $792f: $ff
    ld a, $ff                                     ; $7930: $3e $ff
    jr @+$1a                                      ; $7932: $18 $18

    dec bc                                        ; $7934: $0b
    jr nc, @+$01                                  ; $7935: $30 $ff

    ld b, d                                       ; $7937: $42
    halt                                          ; $7938: $76
    dec bc                                        ; $7939: $0b
    sub $33                                       ; $793a: $d6 $33
    ld bc, $0201                                  ; $793c: $01 $01 $02
    inc bc                                        ; $793f: $03
    nop                                           ; $7940: $00
    rlca                                          ; $7941: $07
    inc b                                         ; $7942: $04
    inc bc                                        ; $7943: $03
    inc bc                                        ; $7944: $03
    dec b                                         ; $7945: $05
    rlca                                          ; $7946: $07
    inc c                                         ; $7947: $0c
    rrca                                          ; $7948: $0f
    nop                                           ; $7949: $00
    scf                                           ; $794a: $37
    jr c, @-$21                                   ; $794b: $38 $dd

    db $e3                                        ; $794d: $e3
    ld a, d                                       ; $794e: $7a
    adc [hl]                                      ; $794f: $8e
    push bc                                       ; $7950: $c5
    ld a, l                                       ; $7951: $7d
    jr nc, @+$80                                  ; $7952: $30 $7e

    sbc a                                         ; $7954: $9f
    ld a, h                                       ; $7955: $7c
    inc c                                         ; $7956: $0c
    call nz, Call_096_7f05                        ; $7957: $c4 $05 $7f
    add h                                         ; $795a: $84
    rst $38                                       ; $795b: $ff
    db $10                                        ; $795c: $10
    ld d, $ef                                     ; $795d: $16 $ef
    ld hl, $66df                                  ; $795f: $21 $df $66
    ld [$08c4], sp                                ; $7962: $08 $c4 $08
    ld [de], a                                    ; $7965: $12
    ret c                                         ; $7966: $d8

jr_096_7967:
    ld [$0010], sp                                ; $7967: $08 $10 $00
    rst $38                                       ; $796a: $ff
    ld b, c                                       ; $796b: $41
    rst $38                                       ; $796c: $ff
    dec bc                                        ; $796d: $0b
    inc c                                         ; $796e: $0c
    add hl, bc                                    ; $796f: $09
    rrca                                          ; $7970: $0f
    inc b                                         ; $7971: $04
    db $10                                        ; $7972: $10
    rlca                                          ; $7973: $07
    inc bc                                        ; $7974: $03
    inc bc                                        ; $7975: $03
    ld b, b                                       ; $7976: $40
    jr @+$05                                      ; $7977: $18 $03

    ld [bc], a                                    ; $7979: $02
    dec l                                         ; $797a: $2d
    sbc $00                                       ; $797b: $de $00
    srl l                                         ; $797d: $cb $3d
    ld e, e                                       ; $797f: $5b
    db $fc                                        ; $7980: $fc
    ld l, $fd                                     ; $7981: $2e $fd
    ei                                            ; $7983: $fb
    cp $02                                        ; $7984: $fe $02
    or h                                          ; $7986: $b4
    rst $28                                       ; $7987: $ef
    call c, $fdb7                                 ; $7988: $dc $b7 $fd
    ld d, e                                       ; $798b: $53
    cp $09                                        ; $798c: $fe $09
    add d                                         ; $798e: $82
    and b                                         ; $798f: $a0
    jp c, $8111                                   ; $7990: $da $11 $81

    ldh [rNR11], a                                ; $7993: $e0 $11
    dec b                                         ; $7995: $05
    ld b, $05                                     ; $7996: $06 $05
    rlca                                          ; $7998: $07
    inc e                                         ; $7999: $1c
    inc b                                         ; $799a: $04
    rra                                           ; $799b: $1f
    ld [bc], a                                    ; $799c: $02
    inc bc                                        ; $799d: $03
    dec b                                         ; $799e: $05
    dec b                                         ; $799f: $05
    ld c, a                                       ; $79a0: $4f
    inc e                                         ; $79a1: $1c
    db $fd                                        ; $79a2: $fd
    inc bc                                        ; $79a3: $03
    nop                                           ; $79a4: $00
    pop af                                        ; $79a5: $f1
    rrca                                          ; $79a6: $0f
    adc a                                         ; $79a7: $8f
    rst $38                                       ; $79a8: $ff
    dec h                                         ; $79a9: $25
    db $fd                                        ; $79aa: $fd
    ld a, [$e4fa]                                 ; $79ab: $fa $fa $e4
    ld e, h                                       ; $79ae: $5c
    inc h                                         ; $79af: $24
    adc [hl]                                      ; $79b0: $8e
    inc bc                                        ; $79b1: $03
    ld d, d                                       ; $79b2: $52
    dec bc                                        ; $79b3: $0b
    adc b                                         ; $79b4: $88
    ld a, a                                       ; $79b5: $7f
    sbc [hl]                                      ; $79b6: $9e
    ld [$df20], sp                                ; $79b7: $08 $20 $df
    add c                                         ; $79ba: $81
    sbc h                                         ; $79bb: $9c
    jr c, jr_096_79c3                             ; $79bc: $38 $05

    ld b, $0b                                     ; $79be: $06 $0b
    inc c                                         ; $79c0: $0c
    rla                                           ; $79c1: $17
    ld a, [de]                                    ; $79c2: $1a

jr_096_79c3:
    push af                                       ; $79c3: $f5
    dec c                                         ; $79c4: $0d
    nop                                           ; $79c5: $00
    ldh [$e0], a                                  ; $79c6: $e0 $e0
    ldh a, [rNR10]                                ; $79c8: $f0 $10
    ld l, b                                       ; $79ca: $68
    ld hl, sp+$14                                 ; $79cb: $f8 $14
    db $ec                                        ; $79cd: $ec
    nop                                           ; $79ce: $00
    db $fc                                        ; $79cf: $fc
    add h                                         ; $79d0: $84
    ld a, [$c306]                                 ; $79d1: $fa $06 $c3
    jp $ef6c                                      ; $79d4: $c3 $6c $ef


    nop                                           ; $79d7: $00
    or l                                          ; $79d8: $b5
    ld a, [$f56e]                                 ; $79d9: $fa $6e $f5
    push de                                       ; $79dc: $d5
    ld a, [$744b]                                 ; $79dd: $fa $4b $74
    nop                                           ; $79e0: $00
    rst $18                                       ; $79e1: $df
    ldh [rIE], a                                  ; $79e2: $e0 $ff
    nop                                           ; $79e4: $00
    ldh a, [$f0]                                  ; $79e5: $f0 $f0
    dec c                                         ; $79e7: $0d
    db $fd                                        ; $79e8: $fd
    nop                                           ; $79e9: $00
    ld a, e                                       ; $79ea: $7b

jr_096_79eb:
    rst $20                                       ; $79eb: $e7
    dec c                                         ; $79ec: $0d
    di                                            ; $79ed: $f3
    ld a, a                                       ; $79ee: $7f
    add c                                         ; $79ef: $81
    or $09                                        ; $79f0: $f6 $09
    nop                                           ; $79f2: $00
    scf                                           ; $79f3: $37
    ret z                                         ; $79f4: $c8

    sbc [hl]                                      ; $79f5: $9e
    ld h, c                                       ; $79f6: $61
    cpl                                           ; $79f7: $2f
    jr nc, jr_096_79eb                            ; $79f8: $30 $f1

    cp $60                                        ; $79fa: $fe $60
    db $fc                                        ; $79fc: $fc
    inc [hl]                                      ; $79fd: $34
    dec b                                         ; $79fe: $05
    sbc b                                         ; $79ff: $98
    ld l, $5a                                     ; $7a00: $2e $5a
    and [hl]                                      ; $7a02: $a6
    ld e, c                                       ; $7a03: $59
    rst $20                                       ; $7a04: $e7
    ld c, l                                       ; $7a05: $4d
    ld [bc], a                                    ; $7a06: $02
    rst $30                                       ; $7a07: $f7
    db $d3                                        ; $7a08: $d3
    rst $38                                       ; $7a09: $ff
    jp c, $e4f7                                   ; $7a0a: $da $f7 $e4

jr_096_7a0d:
    jp nc, $f002                                  ; $7a0d: $d2 $02 $f0

jr_096_7a10:
    nop                                           ; $7a10: $00
    rst $38                                       ; $7a11: $ff
    ei                                            ; $7a12: $fb
    sbc h                                         ; $7a13: $9c
    dec [hl]                                      ; $7a14: $35
    adc $fa                                       ; $7a15: $ce $fa
    rlca                                          ; $7a17: $07
    rst $08                                       ; $7a18: $cf
    ld [$bf3f], sp                                ; $7a19: $08 $3f $bf
    ld a, a                                       ; $7a1c: $7f
    ld a, a                                       ; $7a1d: $7f
    cp e                                          ; $7a1e: $bb
    ld b, $e7                                     ; $7a1f: $06 $e7
    ld hl, sp-$02                                 ; $7a21: $f8 $fe
    ld [bc], a                                    ; $7a23: $02
    ld bc, $03fe                                  ; $7a24: $01 $fe $03
    jr c, jr_096_7a10                             ; $7a27: $38 $e7

    adc c                                         ; $7a29: $89
    sub d                                         ; $7a2a: $92
    inc bc                                        ; $7a2b: $03
    di                                            ; $7a2c: $f3
    add b                                         ; $7a2d: $80
    rlc [hl]                                      ; $7a2e: $cb $06
    ld e, a                                       ; $7a30: $5f
    ldh [$fd], a                                  ; $7a31: $e0 $fd
    cp $f3                                        ; $7a33: $fe $f3
    db $fc                                        ; $7a35: $fc
    rst $20                                       ; $7a36: $e7
    ld [bc], a                                    ; $7a37: $02
    ld hl, sp-$1d                                 ; $7a38: $f8 $e3
    db $fc                                        ; $7a3a: $fc
    ld sp, hl                                     ; $7a3b: $f9
    cp $e4                                        ; $7a3c: $fe $e4
    call z, $bf03                                 ; $7a3e: $cc $03 $bf
    nop                                           ; $7a41: $00
    ld a, a                                       ; $7a42: $7f
    adc a                                         ; $7a43: $8f
    ld a, a                                       ; $7a44: $7f
    db $f4                                        ; $7a45: $f4
    rrca                                          ; $7a46: $0f
    ei                                            ; $7a47: $fb
    inc e                                         ; $7a48: $1c
    rst $38                                       ; $7a49: $ff
    stop                                          ; $7a4a: $10 $00
    ld e, [hl]                                    ; $7a4c: $5e
    and e                                         ; $7a4d: $a3
    or $0b                                        ; $7a4e: $f6 $0b
    ld d, l                                       ; $7a50: $55
    ld d, l                                       ; $7a51: $55
    db $fd                                        ; $7a52: $fd
    jp nz, $9f10                                  ; $7a53: $c2 $10 $9f

    ldh [$8a], a                                  ; $7a56: $e0 $8a
    add h                                         ; $7a58: $84
    inc bc                                        ; $7a59: $03
    cp a                                          ; $7a5a: $bf
    cp a                                          ; $7a5b: $bf
    ld a, [bc]                                    ; $7a5c: $0a
    ld a, [bc]                                    ; $7a5d: $0a
    add b                                         ; $7a5e: $80
    sub c                                         ; $7a5f: $91
    ld c, $bf                                     ; $7a60: $0e $bf

jr_096_7a62:
    ld b, b                                       ; $7a62: $40
    pop bc                                        ; $7a63: $c1
    ld a, $8b                                     ; $7a64: $3e $8b
    db $fc                                        ; $7a66: $fc
    ld a, a                                       ; $7a67: $7f
    nop                                           ; $7a68: $00
    ld a, [$ddd6]                                 ; $7a69: $fa $d6 $dd
    cp a                                          ; $7a6c: $bf
    cp b                                          ; $7a6d: $b8
    dec hl                                        ; $7a6e: $2b
    inc [hl]                                      ; $7a6f: $34
    ld a, $00                                     ; $7a70: $3e $00
    ld hl, $bf5f                                  ; $7a72: $21 $5f $bf
    rst $38                                       ; $7a75: $ff
    rra                                           ; $7a76: $1f
    ld d, b                                       ; $7a77: $50
    or b                                          ; $7a78: $b0
    ret nc                                        ; $7a79: $d0

    nop                                           ; $7a7a: $00
    jr nc, jr_096_7a0d                            ; $7a7b: $30 $90

    ld [hl], b                                    ; $7a7d: $70
    ret nc                                        ; $7a7e: $d0

    ld [hl], b                                    ; $7a7f: $70
    jr nz, jr_096_7a62                            ; $7a80: $20 $e0

    and b                                         ; $7a82: $a0
    inc b                                         ; $7a83: $04
    ldh [$aa], a                                  ; $7a84: $e0 $aa
    xor d                                         ; $7a86: $aa
    ret nz                                        ; $7a87: $c0

    ret nz                                        ; $7a88: $c0

    ld l, h                                       ; $7a89: $6c

jr_096_7a8a:
    add hl, bc                                    ; $7a8a: $09
    ld b, $07                                     ; $7a8b: $06 $07
    ld bc, $0f09                                  ; $7a8d: $01 $09 $0f
    ld a, [de]                                    ; $7a90: $1a
    rra                                           ; $7a91: $1f
    dec [hl]                                      ; $7a92: $35
    ccf                                           ; $7a93: $3f
    add c                                         ; $7a94: $81
    inc c                                         ; $7a95: $0c
    dec [hl]                                      ; $7a96: $35
    dec l                                         ; $7a97: $2d
    ret nz                                        ; $7a98: $c0

    cp a                                          ; $7a99: $bf
    nop                                           ; $7a9a: $00
    dec c                                         ; $7a9b: $0d
    rst $38                                       ; $7a9c: $ff
    ld hl, sp+$04                                 ; $7a9d: $f8 $04
    nop                                           ; $7a9f: $00
    dec l                                         ; $7aa0: $2d
    inc bc                                        ; $7aa1: $03
    inc a                                         ; $7aa2: $3c
    rlca                                          ; $7aa3: $07
    ld b, [hl]                                    ; $7aa4: $46
    ld bc, $6450                                  ; $7aa5: $01 $50 $64
    nop                                           ; $7aa8: $00
    rst $38                                       ; $7aa9: $ff
    add h                                         ; $7aaa: $84
    ld d, b                                       ; $7aab: $50
    ld d, h                                       ; $7aac: $54
    db $10                                        ; $7aad: $10
    ld a, [hl-]                                   ; $7aae: $3a
    ld hl, $e6a8                                  ; $7aaf: $21 $a8 $e6
    inc b                                         ; $7ab2: $04
    inc bc                                        ; $7ab3: $03
    sbc [hl]                                      ; $7ab4: $9e
    inc b                                         ; $7ab5: $04
    nop                                           ; $7ab6: $00
    or [hl]                                       ; $7ab7: $b6
    inc b                                         ; $7ab8: $04
    ld c, [hl]                                    ; $7ab9: $4e
    di                                            ; $7aba: $f3
    push bc                                       ; $7abb: $c5
    ld b, b                                       ; $7abc: $40
    ei                                            ; $7abd: $fb
    ldh [rNR30], a                                ; $7abe: $e0 $1a
    ld hl, $01df                                  ; $7ac0: $21 $df $01
    rst $38                                       ; $7ac3: $ff
    ld b, $ff                                     ; $7ac4: $06 $ff
    ld b, $0b                                     ; $7ac6: $06 $0b
    db $fc                                        ; $7ac8: $fc
    add hl, de                                    ; $7ac9: $19
    cp $0e                                        ; $7aca: $fe $0e
    jp c, $f002                                   ; $7acc: $da $02 $f0

    add hl, hl                                    ; $7acf: $29
    ld bc, $0140                                  ; $7ad0: $01 $40 $01
    call $3d2d                                    ; $7ad3: $cd $2d $3d
    dec hl                                        ; $7ad6: $2b
    jr c, @+$39                                   ; $7ad7: $38 $37

    db $db                                        ; $7ad9: $db
    rst $20                                       ; $7ada: $e7
    nop                                           ; $7adb: $00
    ld a, [hl]                                    ; $7adc: $7e
    add d                                         ; $7add: $82
    ei                                            ; $7ade: $fb
    rst $00                                       ; $7adf: $c7
    ld a, [$aaae]                                 ; $7ae0: $fa $ae $aa
    cp $00                                        ; $7ae3: $fe $00
    ld a, h                                       ; $7ae5: $7c
    ld a, h                                       ; $7ae6: $7c
    ld d, b                                       ; $7ae7: $50
    ret nc                                        ; $7ae8: $d0

    and b                                         ; $7ae9: $a0
    and b                                         ; $7aea: $a0
    ld b, c                                       ; $7aeb: $41
    ld b, c                                       ; $7aec: $41
    nop                                           ; $7aed: $00
    add d                                         ; $7aee: $82
    add e                                         ; $7aef: $83
    dec b                                         ; $7af0: $05
    rlca                                          ; $7af1: $07
    ld a, [bc]                                    ; $7af2: $0a
    rrca                                          ; $7af3: $0f
    inc [hl]                                      ; $7af4: $34
    ccf                                           ; $7af5: $3f
    nop                                           ; $7af6: $00
    ld c, c                                       ; $7af7: $49
    ld a, a                                       ; $7af8: $7f
    ld e, d                                       ; $7af9: $5a
    ld a, [hl]                                    ; $7afa: $7e
    or h                                          ; $7afb: $b4
    db $fc                                        ; $7afc: $fc
    ld l, h                                       ; $7afd: $6c
    db $fc                                        ; $7afe: $fc
    nop                                           ; $7aff: $00
    cp b                                          ; $7b00: $b8
    ld hl, sp+$70                                 ; $7b01: $f8 $70
    ldh a, [$e0]                                  ; $7b03: $f0 $e0
    ldh [$c0], a                                  ; $7b05: $e0 $c0
    ret nz                                        ; $7b07: $c0

    jr c, jr_096_7a8a                             ; $7b08: $38 $80

    add b                                         ; $7b0a: $80
    jr nc, jr_096_7b47                            ; $7b0b: $30 $3a

    ld [hl-], a                                   ; $7b0d: $32
    ld a, [de]                                    ; $7b0e: $1a
    jr c, @+$0c                                   ; $7b0f: $38 $0a

    ld c, $0f                                     ; $7b11: $0e $0f
    add hl, de                                    ; $7b13: $19
    ld [$701f], sp                                ; $7b14: $08 $1f $70
    ld a, a                                       ; $7b17: $7f
    and c                                         ; $7b18: $a1
    jp nz, $8904                                  ; $7b19: $c2 $04 $89

    rst $38                                       ; $7b1c: $ff
    sub a                                         ; $7b1d: $97
    ld [bc], a                                    ; $7b1e: $02
    rst $38                                       ; $7b1f: $ff
    ld c, [hl]                                    ; $7b20: $4e
    cp $9c                                        ; $7b21: $fe $9c
    db $fc                                        ; $7b23: $fc
    jr c, jr_096_7b56                             ; $7b24: $38 $30

    nop                                           ; $7b26: $00
    ld h, b                                       ; $7b27: $60
    and b                                         ; $7b28: $a0
    jr nc, jr_096_7b3b                            ; $7b29: $30 $10

    rrca                                          ; $7b2b: $0f
    jr nz, jr_096_7b92                            ; $7b2c: $20 $64

    dec b                                         ; $7b2e: $05
    rlca                                          ; $7b2f: $07
    ld b, $07                                     ; $7b30: $06 $07
    inc b                                         ; $7b32: $04
    inc c                                         ; $7b33: $0c
    rlca                                          ; $7b34: $07
    dec b                                         ; $7b35: $05
    rlca                                          ; $7b36: $07
    ld [bc], a                                    ; $7b37: $02
    xor e                                         ; $7b38: $ab
    dec b                                         ; $7b39: $05
    pop bc                                        ; $7b3a: $c1

jr_096_7b3b:
    rrca                                          ; $7b3b: $0f
    inc de                                        ; $7b3c: $13
    rst $38                                       ; $7b3d: $ff
    nop                                           ; $7b3e: $00
    xor $fe                                       ; $7b3f: $ee $fe
    ld a, d                                       ; $7b41: $7a
    cp $34                                        ; $7b42: $fe $34
    db $fc                                        ; $7b44: $fc
    ld hl, sp-$08                                 ; $7b45: $f8 $f8

jr_096_7b47:
    ld [$f0f0], sp                                ; $7b47: $08 $f0 $f0
    ld h, b                                       ; $7b4a: $60
    ld h, b                                       ; $7b4b: $60
    rst $10                                       ; $7b4c: $d7
    rlca                                          ; $7b4d: $07
    rst $38                                       ; $7b4e: $ff
    ld e, $ff                                     ; $7b4f: $1e $ff
    jr jr_096_7b80                                ; $7b51: $18 $2d

    di                                            ; $7b53: $f3
    ld [hl], d                                    ; $7b54: $72
    ld a, d                                       ; $7b55: $7a

jr_096_7b56:
    dec b                                         ; $7b56: $05
    or [hl]                                       ; $7b57: $b6
    ld a, [de]                                    ; $7b58: $1a
    ld [$11f7], sp                                ; $7b59: $08 $f7 $11
    or c                                          ; $7b5c: $b1
    ldh [$50], a                                  ; $7b5d: $e0 $50
    ccf                                           ; $7b5f: $3f
    ld b, h                                       ; $7b60: $44
    dec bc                                        ; $7b61: $0b
    ldh a, [rNR12]                                ; $7b62: $f0 $12
    sbc h                                         ; $7b64: $9c
    rst $38                                       ; $7b65: $ff
    ld l, $52                                     ; $7b66: $2e $52
    dec b                                         ; $7b68: $05
    xor c                                         ; $7b69: $a9
    ldh a, [rWY]                                  ; $7b6a: $f0 $4a
    ld c, [hl]                                    ; $7b6c: $4e
    ret nc                                        ; $7b6d: $d0

    ld b, d                                       ; $7b6e: $42
    add b                                         ; $7b6f: $80
    ld bc, $4310                                  ; $7b70: $01 $10 $43
    jp Jump_096_48b0                              ; $7b73: $c3 $b0 $48


    nop                                           ; $7b76: $00
    ldh [$e0], a                                  ; $7b77: $e0 $e0
    ret nc                                        ; $7b79: $d0

    jr nc, jr_096_7b7d                            ; $7b7a: $30 $01

    rst $38                                       ; $7b7c: $ff

jr_096_7b7d:
    ld [de], a                                    ; $7b7d: $12
    db $fd                                        ; $7b7e: $fd
    ld d, b                                       ; $7b7f: $50

jr_096_7b80:
    ld b, h                                       ; $7b80: $44
    ld e, h                                       ; $7b81: $5c
    ld de, $c041                                  ; $7b82: $11 $41 $c0
    inc bc                                        ; $7b85: $03
    ld [bc], a                                    ; $7b86: $02
    rst $38                                       ; $7b87: $ff
    dec a                                         ; $7b88: $3d
    rst $38                                       ; $7b89: $ff
    ld hl, $f9f6                                  ; $7b8a: $21 $f6 $f9
    add e                                         ; $7b8d: $83
    ld b, $8c                                     ; $7b8e: $06 $8c
    ld h, e                                       ; $7b90: $63
    db $fc                                        ; $7b91: $fc

jr_096_7b92:
    nop                                           ; $7b92: $00
    cp [hl]                                       ; $7b93: $be
    nop                                           ; $7b94: $00
    nop                                           ; $7b95: $00
    ld [hl], d                                    ; $7b96: $72
    ld a, a                                       ; $7b97: $7f
    or b                                          ; $7b98: $b0
    ld [hl], b                                    ; $7b99: $70
    ret nc                                        ; $7b9a: $d0

    ldh a, [$f0]                                  ; $7b9b: $f0 $f0
    sub b                                         ; $7b9d: $90
    nop                                           ; $7b9e: $00
    or b                                          ; $7b9f: $b0
    ret nc                                        ; $7ba0: $d0

    ld [hl], b                                    ; $7ba1: $70
    ldh a, [rNR10]                                ; $7ba2: $f0 $10
    ldh a, [rNR41]                                ; $7ba4: $f0 $20
    ldh [rNR21], a                                ; $7ba6: $e0 $16
    ld b, b                                       ; $7ba8: $40
    ret nz                                        ; $7ba9: $c0

    nop                                           ; $7baa: $00
    or b                                          ; $7bab: $b0
    ld b, $20                                     ; $7bac: $06 $20
    ld b, h                                       ; $7bae: $44
    ld bc, $2ba0                                  ; $7baf: $01 $a0 $2b
    xor a                                         ; $7bb2: $af
    ld e, [hl]                                    ; $7bb3: $5e
    xor a                                         ; $7bb4: $af
    rla                                           ; $7bb5: $17
    rrca                                          ; $7bb6: $0f
    ret nz                                        ; $7bb7: $c0

    ld bc, $6200                                  ; $7bb8: $01 $00 $62
    ld [$0868], sp                                ; $7bbb: $08 $68 $08
    ld [de], a                                    ; $7bbe: $12
    ld c, c                                       ; $7bbf: $49
    nop                                           ; $7bc0: $00
    ld a, [bc]                                    ; $7bc1: $0a
    nop                                           ; $7bc2: $00
    ld [bc], a                                    ; $7bc3: $02
    rst $38                                       ; $7bc4: $ff
    ld c, b                                       ; $7bc5: $48
    ld [c], a                                     ; $7bc6: $e2
    ld b, $03                                     ; $7bc7: $06 $03
    jr nz, jr_096_7c01                            ; $7bc9: $20 $36

    ld sp, hl                                     ; $7bcb: $f9

jr_096_7bcc:
    xor h                                         ; $7bcc: $ac
    jr nc, jr_096_7c32                            ; $7bcd: $30 $63

    ld [bc], a                                    ; $7bcf: $02
    jr nz, jr_096_7c38                            ; $7bd0: $20 $66

    jr nz, jr_096_7bcc                            ; $7bd2: $20 $f8

    dec b                                         ; $7bd4: $05
    jr nz, jr_096_7c25                            ; $7bd5: $20 $4e

    ld bc, $ff00                                  ; $7bd7: $01 $00 $ff
    ld a, a                                       ; $7bda: $7f
    ld l, l                                       ; $7bdb: $6d
    ld [hl], d                                    ; $7bdc: $72
    ld bc, $1620                                  ; $7bdd: $01 $20 $16
    ld a, a                                       ; $7be0: $7f
    xor [hl]                                      ; $7be1: $ae
    ld l, c                                       ; $7be2: $69
    ld b, $39                                     ; $7be3: $06 $39
    ld h, b                                       ; $7be5: $60
    inc e                                         ; $7be6: $1c
    jp c, Jump_096_717b                           ; $7be7: $da $7b $71

    ld e, d                                       ; $7bea: $5a
    adc c                                         ; $7beb: $89
    add hl, sp                                    ; $7bec: $39
    ld h, b                                       ; $7bed: $60
    inc d                                         ; $7bee: $14
    cp l                                          ; $7bef: $bd
    ld a, e                                       ; $7bf0: $7b
    ld [hl], b                                    ; $7bf1: $70
    ld b, d                                       ; $7bf2: $42
    daa                                           ; $7bf3: $27
    dec e                                         ; $7bf4: $1d
    ld b, e                                       ; $7bf5: $43
    inc d                                         ; $7bf6: $14
    ld e, a                                       ; $7bf7: $5f
    rrca                                          ; $7bf8: $0f
    cp a                                          ; $7bf9: $bf
    dec c                                         ; $7bfa: $0d
    or d                                          ; $7bfb: $b2
    db $10                                        ; $7bfc: $10
    ld b, h                                       ; $7bfd: $44
    inc d                                         ; $7bfe: $14
    ld e, a                                       ; $7bff: $5f
    ld a, a                                       ; $7c00: $7f

jr_096_7c01:
    scf                                           ; $7c01: $37
    ld e, d                                       ; $7c02: $5a
    cpl                                           ; $7c03: $2f
    dec [hl]                                      ; $7c04: $35
    rlca                                          ; $7c05: $07
    db $10                                        ; $7c06: $10
    sbc a                                         ; $7c07: $9f
    ld e, a                                       ; $7c08: $5f
    halt                                          ; $7c09: $76
    ld b, [hl]                                    ; $7c0a: $46
    dec hl                                        ; $7c0b: $2b
    dec l                                         ; $7c0c: $2d
    ld h, c                                       ; $7c0d: $61
    inc d                                         ; $7c0e: $14
    ld d, e                                       ; $7c0f: $53
    ld a, $ae                                     ; $7c10: $3e $ae
    ld sp, $2109                                  ; $7c12: $31 $09 $21
    ld b, h                                       ; $7c15: $44
    db $10                                        ; $7c16: $10
    ld bc, $ff00                                  ; $7c17: $01 $00 $ff
    ld a, a                                       ; $7c1a: $7f
    ld h, l                                       ; $7c1b: $65
    add hl, de                                    ; $7c1c: $19
    inc b                                         ; $7c1d: $04
    nop                                           ; $7c1e: $00
    ld sp, hl                                     ; $7c1f: $f9
    ld a, a                                       ; $7c20: $7f
    xor $66                                       ; $7c21: $ee $66
    rst $20                                       ; $7c23: $e7
    ld b, l                                       ; $7c24: $45

jr_096_7c25:
    nop                                           ; $7c25: $00
    db $10                                        ; $7c26: $10
    ld e, h                                       ; $7c27: $5c
    ld [bc], a                                    ; $7c28: $02
    ld [hl], h                                    ; $7c29: $74
    ld bc, $0aa7                                  ; $7c2a: $01 $a7 $0a
    ret nz                                        ; $7c2d: $c0

    ld [$2173], sp                                ; $7c2e: $08 $73 $21
    cp l                                          ; $7c31: $bd

jr_096_7c32:
    ld l, a                                       ; $7c32: $6f
    xor $4d                                       ; $7c33: $ee $4d
    add e                                         ; $7c35: $83
    jr jr_096_7cb5                                ; $7c36: $18 $7d

jr_096_7c38:
    ld d, e                                       ; $7c38: $53
    push af                                       ; $7c39: $f5
    ld sp, $190c                                  ; $7c3a: $31 $0c $19
    inc hl                                        ; $7c3d: $23
    nop                                           ; $7c3e: $00
    ld a, a                                       ; $7c3f: $7f
    ld e, e                                       ; $7c40: $5b
    adc l                                         ; $7c41: $8d
    ld c, d                                       ; $7c42: $4a
    xor b                                         ; $7c43: $a8
    ld b, l                                       ; $7c44: $45
    ld [bc], a                                    ; $7c45: $02
    add hl, sp                                    ; $7c46: $39
    ld a, d                                       ; $7c47: $7a
    ld [hl], a                                    ; $7c48: $77
    or c                                          ; $7c49: $b1
    ld h, [hl]                                    ; $7c4a: $66
    bit 2, l                                      ; $7c4b: $cb $55
    ld b, $49                                     ; $7c4d: $06 $49
    ld [hl], d                                    ; $7c4f: $72
    ld d, [hl]                                    ; $7c50: $56
    xor c                                         ; $7c51: $a9
    ld b, l                                       ; $7c52: $45
    jp Jump_000_0034                              ; $7c53: $c3 $34 $00


    jr z, jr_096_7c59                             ; $7c56: $28 $01

    nop                                           ; $7c58: $00

jr_096_7c59:
    rst $38                                       ; $7c59: $ff
    ld a, a                                       ; $7c5a: $7f
    rrca                                          ; $7c5b: $0f
    ld e, b                                       ; $7c5c: $58
    inc b                                         ; $7c5d: $04
    db $10                                        ; $7c5e: $10
    ld a, h                                       ; $7c5f: $7c
    scf                                           ; $7c60: $37
    ld d, l                                       ; $7c61: $55
    ld a, $6d                                     ; $7c62: $3e $6d
    ld hl, $08a9                                  ; $7c64: $21 $a9 $08
    or e                                          ; $7c67: $b3
    ld e, [hl]                                    ; $7c68: $5e
    rrca                                          ; $7c69: $0f
    dec c                                         ; $7c6a: $0d
    adc b                                         ; $7c6b: $88
    inc c                                         ; $7c6c: $0c
    nop                                           ; $7c6d: $00
    nop                                           ; $7c6e: $00
    ld l, c                                       ; $7c6f: $69
    dec [hl]                                      ; $7c70: $35
    rrca                                          ; $7c71: $0f
    dec c                                         ; $7c72: $0d
    adc b                                         ; $7c73: $88
    inc c                                         ; $7c74: $0c
    nop                                           ; $7c75: $00
    nop                                           ; $7c76: $00
    reti                                          ; $7c77: $d9


    ld a, e                                       ; $7c78: $7b
    xor a                                         ; $7c79: $af
    ld e, [hl]                                    ; $7c7a: $5e
    adc b                                         ; $7c7b: $88
    ld b, l                                       ; $7c7c: $45
    jp nz, $1720                                  ; $7c7d: $c2 $20 $17

    ld h, e                                       ; $7c80: $63
    db $ed                                        ; $7c81: $ed
    ld b, l                                       ; $7c82: $45
    rst $20                                       ; $7c83: $e7
    jr nc, jr_096_7cc8                            ; $7c84: $30 $42

    inc c                                         ; $7c86: $0c
    db $dd                                        ; $7c87: $dd
    ld a, e                                       ; $7c88: $7b
    or e                                          ; $7c89: $b3
    ld e, [hl]                                    ; $7c8a: $5e
    adc h                                         ; $7c8b: $8c
    ld b, l                                       ; $7c8c: $45
    add $20                                       ; $7c8d: $c6 $20
    sub e                                         ; $7c8f: $93
    ld d, d                                       ; $7c90: $52
    ld l, c                                       ; $7c91: $69
    dec [hl]                                      ; $7c92: $35
    add h                                         ; $7c93: $84

jr_096_7c94:
    inc h                                         ; $7c94: $24
    nop                                           ; $7c95: $00
    nop                                           ; $7c96: $00
    ld bc, $ff00                                  ; $7c97: $01 $00 $ff
    ld a, a                                       ; $7c9a: $7f
    jr nz, @+$22                                  ; $7c9b: $20 $20

    add b                                         ; $7c9d: $80
    inc b                                         ; $7c9e: $04
    or l                                          ; $7c9f: $b5
    ld h, e                                       ; $7ca0: $63
    inc c                                         ; $7ca1: $0c
    ld h, a                                       ; $7ca2: $67
    jr nz, jr_096_7cfb                            ; $7ca3: $20 $56

    nop                                           ; $7ca5: $00
    nop                                           ; $7ca6: $00
    ld b, b                                       ; $7ca7: $40
    ld d, [hl]                                    ; $7ca8: $56
    adc c                                         ; $7ca9: $89
    rrca                                          ; $7caa: $0f
    ld h, e                                       ; $7cab: $63
    ld bc, $0420                                  ; $7cac: $01 $20 $04
    ld h, e                                       ; $7caf: $63
    dec b                                         ; $7cb0: $05
    sbc $07                                       ; $7cb1: $de $07
    ld [hl], h                                    ; $7cb3: $74
    nop                                           ; $7cb4: $00

jr_096_7cb5:
    jr nz, @+$2a                                  ; $7cb5: $20 $28

    sbc e                                         ; $7cb7: $9b
    ld d, e                                       ; $7cb8: $53
    ld [hl], e                                    ; $7cb9: $73
    ld a, [hl-]                                   ; $7cba: $3a
    ld a, [hl+]                                   ; $7cbb: $2a
    ld hl, $0863                                  ; $7cbc: $21 $63 $08
    ld a, [c]                                     ; $7cbf: $f2
    ld hl, $1ba0                                  ; $7cc0: $21 $a0 $1b
    and b                                         ; $7cc3: $a0
    ld de, $0060                                  ; $7cc4: $11 $60 $00
    db $fd                                        ; $7cc7: $fd

jr_096_7cc8:
    ld l, $d2                                     ; $7cc8: $2e $d2
    dec e                                         ; $7cca: $1d
    ld c, $09                                     ; $7ccb: $0e $09
    ld h, a                                       ; $7ccd: $67
    nop                                           ; $7cce: $00
    ld sp, hl                                     ; $7ccf: $f9
    ld l, $ce                                     ; $7cd0: $2e $ce
    dec e                                         ; $7cd2: $1d
    ld a, [bc]                                    ; $7cd3: $0a
    add hl, bc                                    ; $7cd4: $09
    ld h, e                                       ; $7cd5: $63
    nop                                           ; $7cd6: $00
    ld bc, $ff00                                  ; $7cd7: $01 $00 $ff
    ld a, a                                       ; $7cda: $7f
    ld c, h                                       ; $7cdb: $4c
    dec [hl]                                      ; $7cdc: $35
    ld b, h                                       ; $7cdd: $44
    ld [$1afd], sp                                ; $7cde: $08 $fd $1a
    inc de                                        ; $7ce1: $13
    ld c, $2a                                     ; $7ce2: $0e $2a
    ld bc, $0066                                  ; $7ce4: $01 $66 $00
    db $db                                        ; $7ce7: $db
    ld a, a                                       ; $7ce8: $7f
    pop de                                        ; $7ce9: $d1
    ld d, l                                       ; $7cea: $55
    ret                                           ; $7ceb: $c9


    inc l                                         ; $7cec: $2c
    ld b, h                                       ; $7ced: $44
    db $10                                        ; $7cee: $10
    cp b                                          ; $7cef: $b8
    ld b, c                                       ; $7cf0: $41
    ld l, $31                                     ; $7cf1: $2e $31
    adc e                                         ; $7cf3: $8b
    inc d                                         ; $7cf4: $14
    inc hl                                        ; $7cf5: $23
    jr jr_096_7c94                                ; $7cf6: $18 $9c

    ld l, a                                       ; $7cf8: $6f
    ld l, $31                                     ; $7cf9: $2e $31

jr_096_7cfb:
    adc e                                         ; $7cfb: $8b
    inc d                                         ; $7cfc: $14
    ld bc, $df04                                  ; $7cfd: $01 $04 $df
    ld [de], a                                    ; $7d00: $12
    halt                                          ; $7d01: $76
    dec d                                         ; $7d02: $15
    or b                                          ; $7d03: $b0
    jr nz, jr_096_7d4a                            ; $7d04: $20 $44

    db $10                                        ; $7d06: $10
    or b                                          ; $7d07: $b0
    ld d, c                                       ; $7d08: $51
    dec c                                         ; $7d09: $0d
    ld b, c                                       ; $7d0a: $41
    daa                                           ; $7d0b: $27
    inc [hl]                                      ; $7d0c: $34
    inc bc                                        ; $7d0d: $03
    jr z, jr_096_7d4c                             ; $7d0e: $28 $3c

    ld b, d                                       ; $7d10: $42
    dec [hl]                                      ; $7d11: $35
    ld sp, $142f                                  ; $7d12: $31 $2f $14
    daa                                           ; $7d15: $27
    jr jr_096_7d19                                ; $7d16: $18 $01

    nop                                           ; $7d18: $00

jr_096_7d19:
    rst $38                                       ; $7d19: $ff

jr_096_7d1a:
    ld a, a                                       ; $7d1a: $7f
    dec d                                         ; $7d1b: $15
    ld d, h                                       ; $7d1c: $54
    dec d                                         ; $7d1d: $15
    ld d, h                                       ; $7d1e: $54
    adc [hl]                                      ; $7d1f: $8e
    inc de                                        ; $7d20: $13
    inc hl                                        ; $7d21: $23
    ld e, $05                                     ; $7d22: $1e $05
    ld bc, $1462                                  ; $7d24: $01 $62 $14
    inc hl                                        ; $7d27: $23
    ld e, $73                                     ; $7d28: $1e $73
    rlca                                          ; $7d2a: $07
    jp z, $a615                                   ; $7d2b: $ca $15 $a6

    inc b                                         ; $7d2e: $04
    inc hl                                        ; $7d2f: $23
    ld e, $f5                                     ; $7d30: $1e $f5
    ld sp, $08ef                                  ; $7d32: $31 $ef $08
    ld b, [hl]                                    ; $7d35: $46
    nop                                           ; $7d36: $00
    rst $38                                       ; $7d37: $ff
    ld a, a                                       ; $7d38: $7f
    ld de, $417f                                  ; $7d39: $11 $7f $41
    ld d, c                                       ; $7d3c: $51
    jr nz, jr_096_7d6b                            ; $7d3d: $20 $2c

    rst $28                                       ; $7d3f: $ef
    ld [$021f], sp                                ; $7d40: $08 $1f $02
    ld l, [hl]                                    ; $7d43: $6e
    inc bc                                        ; $7d44: $03
    ld b, l                                       ; $7d45: $45
    nop                                           ; $7d46: $00
    cp l                                          ; $7d47: $bd
    ld d, e                                       ; $7d48: $53
    or [hl]                                       ; $7d49: $b6

jr_096_7d4a:
    ld a, $8d                                     ; $7d4a: $3e $8d

jr_096_7d4c:
    dec e                                         ; $7d4c: $1d
    and l                                         ; $7d4d: $a5
    nop                                           ; $7d4e: $00
    inc hl                                        ; $7d4f: $23
    ld e, $57                                     ; $7d50: $1e $57
    ld l, a                                       ; $7d52: $6f
    db $ed                                        ; $7d53: $ed
    ld b, c                                       ; $7d54: $41
    add h                                         ; $7d55: $84
    jr jr_096_7d59                                ; $7d56: $18 $01

    nop                                           ; $7d58: $00

jr_096_7d59:
    rst $38                                       ; $7d59: $ff
    ld a, a                                       ; $7d5a: $7f
    cpl                                           ; $7d5b: $2f
    ld d, d                                       ; $7d5c: $52
    nop                                           ; $7d5d: $00
    ld c, h                                       ; $7d5e: $4c
    rra                                           ; $7d5f: $1f
    inc bc                                        ; $7d60: $03
    ld e, d                                       ; $7d61: $5a
    ld bc, $1070                                  ; $7d62: $01 $70 $10
    ld bc, $710c                                  ; $7d65: $01 $0c $71
    add hl, hl                                    ; $7d68: $29
    or l                                          ; $7d69: $b5
    ld d, [hl]                                    ; $7d6a: $56

jr_096_7d6b:
    jp z, $0120                                   ; $7d6b: $ca $20 $01

    inc c                                         ; $7d6e: $0c
    ld [hl], c                                    ; $7d6f: $71
    add hl, hl                                    ; $7d70: $29
    ld e, b                                       ; $7d71: $58
    ld [hl+], a                                   ; $7d72: $22
    xor d                                         ; $7d73: $aa
    jr jr_096_7d97                                ; $7d74: $18 $21

    inc c                                         ; $7d76: $0c
    sbc d                                         ; $7d77: $9a
    ld b, d                                       ; $7d78: $42
    inc sp                                        ; $7d79: $33
    add hl, de                                    ; $7d7a: $19
    and a                                         ; $7d7b: $a7
    jr nz, jr_096_7dbf                            ; $7d7c: $20 $41

    db $10                                        ; $7d7e: $10
    ld h, h                                       ; $7d7f: $64
    ld a, [hl]                                    ; $7d80: $7e
    ld h, e                                       ; $7d81: $63
    ld c, c                                       ; $7d82: $49
    and c                                         ; $7d83: $a1
    inc l                                         ; $7d84: $2c
    nop                                           ; $7d85: $00
    db $10                                        ; $7d86: $10
    ld [hl], c                                    ; $7d87: $71
    add hl, hl                                    ; $7d88: $29
    adc a                                         ; $7d89: $8f
    ld a, a                                       ; $7d8a: $7f
    ld h, a                                       ; $7d8b: $67
    ld c, c                                       ; $7d8c: $49
    nop                                           ; $7d8d: $00
    jr jr_096_7d1a                                ; $7d8e: $18 $8a

    inc c                                         ; $7d90: $0c
    ld [hl], c                                    ; $7d91: $71
    dec b                                         ; $7d92: $05
    inc bc                                        ; $7d93: $03
    nop                                           ; $7d94: $00
    nop                                           ; $7d95: $00
    nop                                           ; $7d96: $00

jr_096_7d97:
    ld bc, $ff00                                  ; $7d97: $01 $00 $ff
    ld a, a                                       ; $7d9a: $7f
    db $e4                                        ; $7d9b: $e4
    ld [hl], b                                    ; $7d9c: $70
    nop                                           ; $7d9d: $00
    inc d                                         ; $7d9e: $14
    sbc $7f                                       ; $7d9f: $de $7f
    ld [hl], c                                    ; $7da1: $71

jr_096_7da2:
    ld e, d                                       ; $7da2: $5a
    ld c, b                                       ; $7da3: $48
    add hl, sp                                    ; $7da4: $39
    and e                                         ; $7da5: $a3
    inc e                                         ; $7da6: $1c
    add hl, de                                    ; $7da7: $19
    ld c, a                                       ; $7da8: $4f
    rst $28                                       ; $7da9: $ef
    ld b, c                                       ; $7daa: $41
    inc l                                         ; $7dab: $2c
    dec l                                         ; $7dac: $2d
    ret z                                         ; $7dad: $c8

    inc e                                         ; $7dae: $1c
    ld sp, hl                                     ; $7daf: $f9
    ld e, c                                       ; $7db0: $59
    ld d, b                                       ; $7db1: $50
    ld b, c                                       ; $7db2: $41
    jp z, $812c                                   ; $7db3: $ca $2c $81

    inc e                                         ; $7db6: $1c
    inc l                                         ; $7db7: $2c
    dec l                                         ; $7db8: $2d
    sbc h                                         ; $7db9: $9c
    dec c                                         ; $7dba: $0d
    pop af                                        ; $7dbb: $f1
    jr nz, jr_096_7e22                            ; $7dbc: $20 $64

    db $10                                        ; $7dbe: $10

jr_096_7dbf:
    sbc d                                         ; $7dbf: $9a
    ld [hl], $d2                                  ; $7dc0: $36 $d2
    ld hl, $04ec                                  ; $7dc2: $21 $ec $04
    add l                                         ; $7dc5: $85
    db $10                                        ; $7dc6: $10
    ldh a, [rSTAT]                                ; $7dc7: $f0 $41
    rst $38                                       ; $7dc9: $ff
    ld a, a                                       ; $7dca: $7f
    xor d                                         ; $7dcb: $aa
    dec a                                         ; $7dcc: $3d
    ld b, b                                       ; $7dcd: $40
    db $10                                        ; $7dce: $10
    rst $28                                       ; $7dcf: $ef
    ld sp, $214a                                  ; $7dd0: $31 $4a $21
    and l                                         ; $7dd3: $a5
    stop                                          ; $7dd4: $10 $00
    nop                                           ; $7dd6: $00
    ld bc, $ff00                                  ; $7dd7: $01 $00 $ff
    ld a, a                                       ; $7dda: $7f
    rrca                                          ; $7ddb: $0f
    ld e, b                                       ; $7ddc: $58
    inc b                                         ; $7ddd: $04
    db $10                                        ; $7dde: $10
    sbc $7f                                       ; $7ddf: $de $7f
    ld [hl], c                                    ; $7de1: $71
    ld e, d                                       ; $7de2: $5a
    ld c, b                                       ; $7de3: $48
    add hl, sp                                    ; $7de4: $39
    and e                                         ; $7de5: $a3
    inc e                                         ; $7de6: $1c
    ld e, c                                       ; $7de7: $59
    ld a, $92                                     ; $7de8: $3e $92
    ld hl, $0d0c                                  ; $7dea: $21 $0c $0d
    xor b                                         ; $7ded: $a8
    nop                                           ; $7dee: $00
    pop de                                        ; $7def: $d1
    dec l                                         ; $7df0: $2d
    ld a, [bc]                                    ; $7df1: $0a
    ld de, $0085                                  ; $7df2: $11 $85 $00
    ld [bc], a                                    ; $7df5: $02
    nop                                           ; $7df6: $00
    cp l                                          ; $7df7: $bd
    dec bc                                        ; $7df8: $0b
    ld e, e                                       ; $7df9: $5b
    ld bc, $200f                                  ; $7dfa: $01 $0f $20
    jr nz, jr_096_7e0b                            ; $7dfd: $20 $0c

Jump_096_7dff:
    db $dd                                        ; $7dff: $dd
    ld a, $b6                                     ; $7e00: $3e $b6
    ld hl, $0d10                                  ; $7e02: $21 $10 $0d
    xor h                                         ; $7e05: $ac
    nop                                           ; $7e06: $00
    sub d                                         ; $7e07: $92
    ld hl, $7aaf                                  ; $7e08: $21 $af $7a

jr_096_7e0b:
    add e                                         ; $7e0b: $83
    ld c, l                                       ; $7e0c: $4d
    ld h, c                                       ; $7e0d: $61
    jr nc, jr_096_7da2                            ; $7e0e: $30 $92

    ld hl, $3fbe                                  ; $7e10: $21 $be $3f
    ld e, b                                       ; $7e13: $58
    ld sp, $0c27                                  ; $7e14: $31 $27 $0c
    ld bc, $ff00                                  ; $7e17: $01 $00 $ff
    ld a, a                                       ; $7e1a: $7f
    jr nz, jr_096_7e1e                            ; $7e1b: $20 $01

    ld b, b                                       ; $7e1d: $40

jr_096_7e1e:
    nop                                           ; $7e1e: $00
    sbc $7f                                       ; $7e1f: $de $7f
    ld [hl], c                                    ; $7e21: $71

jr_096_7e22:
    ld e, d                                       ; $7e22: $5a
    ld c, b                                       ; $7e23: $48
    add hl, sp                                    ; $7e24: $39
    and e                                         ; $7e25: $a3
    inc e                                         ; $7e26: $1c
    rra                                           ; $7e27: $1f
    ld c, a                                       ; $7e28: $4f
    ld a, [hl-]                                   ; $7e29: $3a
    ld [hl], $73                                  ; $7e2a: $36 $73
    dec e                                         ; $7e2c: $1d
    xor l                                         ; $7e2d: $ad
    inc c                                         ; $7e2e: $0c
    rla                                           ; $7e2f: $17
    ld l, $32                                     ; $7e30: $2e $32
    dec d                                         ; $7e32: $15
    ld l, e                                       ; $7e33: $6b
    nop                                           ; $7e34: $00
    dec b                                         ; $7e35: $05
    nop                                           ; $7e36: $00
    ld a, [de]                                    ; $7e37: $1a
    ld h, a                                       ; $7e38: $67
    call nc, $ec41                                ; $7e39: $d4 $41 $ec
    inc h                                         ; $7e3c: $24
    ld b, a                                       ; $7e3d: $47
    db $10                                        ; $7e3e: $10
    ld [hl], e                                    ; $7e3f: $73
    dec e                                         ; $7e40: $1d
    cp b                                          ; $7e41: $b8
    ld [hl], a                                    ; $7e42: $77
    rlca                                          ; $7e43: $07
    ld [hl], $81                                  ; $7e44: $36 $81
    ld [$0bbf], sp                                ; $7e46: $08 $bf $0b
    ld h, e                                       ; $7e49: $63
    ld a, l                                       ; $7e4a: $7d
    ld h, [hl]                                    ; $7e4b: $66
    ld d, b                                       ; $7e4c: $50
    ld bc, $4910                                  ; $7e4d: $01 $10 $49
    ld a, e                                       ; $7e50: $7b
    dec a                                         ; $7e51: $3d
    dec bc                                        ; $7e52: $0b
    ld d, d                                       ; $7e53: $52
    inc e                                         ; $7e54: $1c
    ld [bc], a                                    ; $7e55: $02
    inc d                                         ; $7e56: $14
    ld bc, $ff00                                  ; $7e57: $01 $00 $ff
    ld a, a                                       ; $7e5a: $7f
    ld d, c                                       ; $7e5b: $51
    nop                                           ; $7e5c: $00
    inc b                                         ; $7e5d: $04
    nop                                           ; $7e5e: $00
    sbc $7f                                       ; $7e5f: $de $7f
    ld [hl], c                                    ; $7e61: $71
    ld e, d                                       ; $7e62: $5a
    ld c, b                                       ; $7e63: $48
    add hl, sp                                    ; $7e64: $39
    and e                                         ; $7e65: $a3
    inc e                                         ; $7e66: $1c
    ld a, [de]                                    ; $7e67: $1a
    rlca                                          ; $7e68: $07
    ld a, [$3309]                                 ; $7e69: $fa $09 $33
    dec d                                         ; $7e6c: $15
    xor h                                         ; $7e6d: $ac
    inc c                                         ; $7e6e: $0c
    ld [de], a                                    ; $7e6f: $12
    ld [bc], a                                    ; $7e70: $02
    ld a, [c]                                     ; $7e71: $f2
    nop                                           ; $7e72: $00
    dec bc                                        ; $7e73: $0b
    nop                                           ; $7e74: $00
    inc b                                         ; $7e75: $04
    nop                                           ; $7e76: $00
    cp c                                          ; $7e77: $b9
    ld l, $32                                     ; $7e78: $2e $32
    dec l                                         ; $7e7a: $2d
    ld c, c                                       ; $7e7b: $49
    inc l                                         ; $7e7c: $2c
    ld [hl+], a                                   ; $7e7d: $22
    inc c                                         ; $7e7e: $0c
    sbc [hl]                                      ; $7e7f: $9e
    ccf                                           ; $7e80: $3f
    ld a, [hl]                                    ; $7e81: $7e
    ld a, [hl+]                                   ; $7e82: $2a
    or a                                          ; $7e83: $b7
    dec h                                         ; $7e84: $25
    jr nc, jr_096_7ea4                            ; $7e85: $30 $1d

    ld a, [$bd09]                                 ; $7e87: $fa $09 $bd
    ld a, a                                       ; $7e8a: $7f
    xor l                                         ; $7e8b: $ad
    ld c, l                                       ; $7e8c: $4d
    ld hl, $9e10                                  ; $7e8d: $21 $10 $9e
    ld c, a                                       ; $7e90: $4f
    sbc b                                         ; $7e91: $98
    ld [hl], $b5                                  ; $7e92: $36 $b5
    dec h                                         ; $7e94: $25
    ld l, $1d                                     ; $7e95: $2e $1d
    ld bc, $ff00                                  ; $7e97: $01 $00 $ff
    ld a, a                                       ; $7e9a: $7f
    ld l, [hl]                                    ; $7e9b: $6e
    ld sp, $0c64                                  ; $7e9c: $31 $64 $0c
    sbc $7f                                       ; $7e9f: $de $7f
    rst $30                                       ; $7ea1: $f7
    dec h                                         ; $7ea2: $25
    inc c                                         ; $7ea3: $0c

jr_096_7ea4:
    add hl, sp                                    ; $7ea4: $39
    and e                                         ; $7ea5: $a3
    inc e                                         ; $7ea6: $1c
    db $fd                                        ; $7ea7: $fd
    ld a, $f7                                     ; $7ea8: $3e $f7
    dec h                                         ; $7eaa: $25
    rrca                                          ; $7eab: $0f
    dec d                                         ; $7eac: $15
    add a                                         ; $7ead: $87
    inc c                                         ; $7eae: $0c
    push af                                       ; $7eaf: $f5
    dec a                                         ; $7eb0: $3d
    rst $28                                       ; $7eb1: $ef
    inc h                                         ; $7eb2: $24
    rlca                                          ; $7eb3: $07
    inc d                                         ; $7eb4: $14
    nop                                           ; $7eb5: $00
    inc c                                         ; $7eb6: $0c
    rst $08                                       ; $7eb7: $cf
    ld h, e                                       ; $7eb8: $63
    ld b, [hl]                                    ; $7eb9: $46
    ld c, d                                       ; $7eba: $4a
    ld b, h                                       ; $7ebb: $44
    ld b, c                                       ; $7ebc: $41
    add c                                         ; $7ebd: $81
    jr z, jr_096_7f3d                             ; $7ebe: $28 $7d

    ld c, a                                       ; $7ec0: $4f
    ld [hl], a                                    ; $7ec1: $77
    ld [hl], $8f                                  ; $7ec2: $36 $8f
    dec h                                         ; $7ec4: $25
    rlca                                          ; $7ec5: $07
    dec e                                         ; $7ec6: $1d
    cp d                                          ; $7ec7: $ba
    ld a, a                                       ; $7ec8: $7f
    sub d                                         ; $7ec9: $92
    ld h, d                                       ; $7eca: $62
    ld b, a                                       ; $7ecb: $47
    dec [hl]                                      ; $7ecc: $35
    ld b, h                                       ; $7ecd: $44
    inc d                                         ; $7ece: $14
    rra                                           ; $7ecf: $1f
    ld [hl], h                                    ; $7ed0: $74
    ld d, h                                       ; $7ed1: $54
    inc h                                         ; $7ed2: $24
    ld a, [bc]                                    ; $7ed3: $0a
    ld [$0402], sp                                ; $7ed4: $08 $02 $04
    ld bc, $ff00                                  ; $7ed7: $01 $00 $ff
    ld a, a                                       ; $7eda: $7f

jr_096_7edb:
    ld h, l                                       ; $7edb: $65
    add hl, de                                    ; $7edc: $19
    inc b                                         ; $7edd: $04
    nop                                           ; $7ede: $00
    sbc $7f                                       ; $7edf: $de $7f
    ld [hl], c                                    ; $7ee1: $71
    ld e, d                                       ; $7ee2: $5a
    ld c, b                                       ; $7ee3: $48
    add hl, sp                                    ; $7ee4: $39
    and e                                         ; $7ee5: $a3
    inc e                                         ; $7ee6: $1c
    cp c                                          ; $7ee7: $b9
    ld l, $32                                     ; $7ee8: $2e $32
    dec l                                         ; $7eea: $2d
    ld l, h                                       ; $7eeb: $6c
    inc a                                         ; $7eec: $3c
    add l                                         ; $7eed: $85
    inc e                                         ; $7eee: $1c
    or c                                          ; $7eef: $b1
    dec c                                         ; $7ef0: $0d
    jp z, Jump_000_0414                           ; $7ef1: $ca $14 $04

    inc e                                         ; $7ef4: $1c
    nop                                           ; $7ef5: $00
    nop                                           ; $7ef6: $00
    sub a                                         ; $7ef7: $97
    ld a, a                                       ; $7ef8: $7f
    ld l, l                                       ; $7ef9: $6d
    ld [hl], $05                                  ; $7efa: $36 $05
    dec a                                         ; $7efc: $3d
    ld h, e                                       ; $7efd: $63
    ld [$2b3d], sp                                ; $7efe: $08 $3d $2b
    push af                                       ; $7f01: $f5

Jump_096_7f02:
    ld sp, $212d                                  ; $7f02: $31 $2d $21

Call_096_7f05:
    add a                                         ; $7f05: $87
    db $10                                        ; $7f06: $10
    ld l, h                                       ; $7f07: $6c
    inc a                                         ; $7f08: $3c
    ld a, a                                       ; $7f09: $7f
    ld d, a                                       ; $7f0a: $57
    sub e                                         ; $7f0b: $93
    dec e                                         ; $7f0c: $1d
    add a                                         ; $7f0d: $87
    ld [$7b9e], sp                                ; $7f0e: $08 $9e $7b
    ld d, h                                       ; $7f11: $54
    ld c, [hl]                                    ; $7f12: $4e
    dec c                                         ; $7f13: $0d
    add hl, hl                                    ; $7f14: $29
    ld h, h                                       ; $7f15: $64
    inc b                                         ; $7f16: $04
    ld bc, $ff00                                  ; $7f17: $01 $00 $ff
    ld a, a                                       ; $7f1a: $7f
    dec sp                                        ; $7f1b: $3b
    jr jr_096_7f22                                ; $7f1c: $18 $04

    nop                                           ; $7f1e: $00
    sbc $7f                                       ; $7f1f: $de $7f
    ld [hl], c                                    ; $7f21: $71

jr_096_7f22:
    ld e, d                                       ; $7f22: $5a
    ld c, b                                       ; $7f23: $48
    add hl, sp                                    ; $7f24: $39
    and e                                         ; $7f25: $a3
    inc e                                         ; $7f26: $1c
    ld e, h                                       ; $7f27: $5c
    ld e, a                                       ; $7f28: $5f
    dec [hl]                                      ; $7f29: $35
    ld a, $6e                                     ; $7f2a: $3e $6e
    dec h                                         ; $7f2c: $25
    jp z, Jump_000_111c                           ; $7f2d: $ca $1c $11

    ld [hl], $2d                                  ; $7f30: $36 $2d
    dec e                                         ; $7f32: $1d
    ld h, [hl]                                    ; $7f33: $66
    inc b                                         ; $7f34: $04
    ld [bc], a                                    ; $7f35: $02
    nop                                           ; $7f36: $00
    dec [hl]                                      ; $7f37: $35
    ld a, $58                                     ; $7f38: $3e $58
    ld [hl], a                                    ; $7f3a: $77
    add sp, $65                                   ; $7f3b: $e8 $65

jr_096_7f3d:
    and b                                         ; $7f3d: $a0
    jr nc, jr_096_7edb                            ; $7f3e: $30 $9b

    ld a, e                                       ; $7f40: $7b
    dec a                                         ; $7f41: $3d
    dec de                                        ; $7f42: $1b
    add l                                         ; $7f43: $85
    dec e                                         ; $7f44: $1d
    ld h, b                                       ; $7f45: $60
    inc b                                         ; $7f46: $04
    ld a, [hl]                                    ; $7f47: $7e
    inc bc                                        ; $7f48: $03
    inc d                                         ; $7f49: $14
    ld e, [hl]                                    ; $7f4a: $5e
    dec bc                                        ; $7f4b: $0b
    ld b, c                                       ; $7f4c: $41
    ld b, h                                       ; $7f4d: $44
    inc e                                         ; $7f4e: $1c
    ld e, d                                       ; $7f4f: $5a
    ld a, [hl-]                                   ; $7f50: $3a
    inc d                                         ; $7f51: $14
    jr nz, jr_096_7fae                            ; $7f52: $20 $5a

    ld e, a                                       ; $7f54: $5f
    add hl, bc                                    ; $7f55: $09
    inc h                                         ; $7f56: $24

    db $01, $00, $ff, $7f, $d5, $01, $00, $00, $1b, $2e, $9a, $28, $71, $20, $45, $1c
    db $bb, $0a, $55, $15, $8c, $08, $45, $04, $57, $53, $8c, $26, $25, $1d, $61, $1c
    db $ff, $7f, $e0, $7d, $d5, $21, $85, $08, $ff, $7f, $57, $53, $8c, $26, $25, $1d
    db $3f, $7e, $8d, $48, $d5, $21, $85, $08, $fe, $33, $bc, $12, $6f, $01, $67, $14

    nop                                           ; $7f97: $00
    nop                                           ; $7f98: $00
    rst $38                                       ; $7f99: $ff
    ld a, a                                       ; $7f9a: $7f
    ld d, c                                       ; $7f9b: $51
    nop                                           ; $7f9c: $00
    inc b                                         ; $7f9d: $04
    nop                                           ; $7f9e: $00

jr_096_7f9f:
    inc a                                         ; $7f9f: $3c
    ld d, a                                       ; $7fa0: $57
    dec [hl]                                      ; $7fa1: $35
    ld [hl], $4b                                  ; $7fa2: $36 $4b
    dec h                                         ; $7fa4: $25
    ld h, d                                       ; $7fa5: $62
    db $10                                        ; $7fa6: $10
    ld a, l                                       ; $7fa7: $7d
    ld [bc], a                                    ; $7fa8: $02
    jr c, jr_096_7fb4                             ; $7fa9: $38 $09

    adc $20                                       ; $7fab: $ce $20
    ld b, h                                       ; $7fad: $44

jr_096_7fae:
    jr jr_096_7f9f                                ; $7fae: $18 $ef

    ld a, l                                       ; $7fb0: $7d
    dec e                                         ; $7fb1: $1d
    ld c, a                                       ; $7fb2: $4f
    or e                                          ; $7fb3: $b3

jr_096_7fb4:
    jr nz, jr_096_7fd6                            ; $7fb4: $20 $20

    inc d                                         ; $7fb6: $14
    sbc [hl]                                      ; $7fb7: $9e
    ld [bc], a                                    ; $7fb8: $02
    cp d                                          ; $7fb9: $ba
    ld a, $13                                     ; $7fba: $3e $13
    ld c, h                                       ; $7fbc: $4c
    inc h                                         ; $7fbd: $24
    inc b                                         ; $7fbe: $04
    ld d, h                                       ; $7fbf: $54
    ld l, e                                       ; $7fc0: $6b
    dec l                                         ; $7fc1: $2d
    ld e, [hl]                                    ; $7fc2: $5e
    ret                                           ; $7fc3: $c9


    ld c, h                                       ; $7fc4: $4c
    ld b, a                                       ; $7fc5: $47
    inc h                                         ; $7fc6: $24
    ccf                                           ; $7fc7: $3f
    ld d, a                                       ; $7fc8: $57
    add hl, sp                                    ; $7fc9: $39
    ld [hl], $4f                                  ; $7fca: $36 $4f
    dec h                                         ; $7fcc: $25
    ld h, [hl]                                    ; $7fcd: $66
    db $10                                        ; $7fce: $10
    inc [hl]                                      ; $7fcf: $34
    ld [hl], $2d                                  ; $7fd0: $36 $2d
    dec d                                         ; $7fd2: $15
    ld b, e                                       ; $7fd3: $43
    inc b                                         ; $7fd4: $04
    ld h, d                                       ; $7fd5: $62

jr_096_7fd6:
    db $10                                        ; $7fd6: $10
    inc c                                         ; $7fd7: $0c
    nop                                           ; $7fd8: $00
    nop                                           ; $7fd9: $00
    ld [de], a                                    ; $7fda: $12
    nop                                           ; $7fdb: $00
    ld bc, $0018                                  ; $7fdc: $01 $18 $00
    ld [bc], a                                    ; $7fdf: $02
    jr jr_096_7fe2                                ; $7fe0: $18 $00

jr_096_7fe2:
    ld [bc], a                                    ; $7fe2: $02
    ld [bc], a                                    ; $7fe3: $02
    nop                                           ; $7fe4: $00
    rla                                           ; $7fe5: $17
    nop                                           ; $7fe6: $00
    ld d, a                                       ; $7fe7: $57
    nop                                           ; $7fe8: $00
    rlca                                          ; $7fe9: $07
    ld [bc], a                                    ; $7fea: $02
    ld h, a                                       ; $7feb: $67
    nop                                           ; $7fec: $00
    ld c, e                                       ; $7fed: $4b
    nop                                           ; $7fee: $00
    ld [bc], a                                    ; $7fef: $02
    ld bc, $00c8                                  ; $7ff0: $01 $c8 $00
    ld d, [hl]                                    ; $7ff3: $56
    nop                                           ; $7ff4: $00
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
