; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $09a", ROMX[$4000], BANK[$9a]

    db $9a

    ld [hl], b                                    ; $4001: $70
    dec d                                         ; $4002: $15
    dec a                                         ; $4003: $3d
    db $10                                        ; $4004: $10
    ld d, b                                       ; $4005: $50
    rst $38                                       ; $4006: $ff
    ld bc, $fe80                                  ; $4007: $01 $80 $fe
    ld [bc], a                                    ; $400a: $02
    nop                                           ; $400b: $00
    db $fd                                        ; $400c: $fd
    rst $38                                       ; $400d: $ff
    ld [$08ff], a                                 ; $400e: $ea $ff $08
    call nc, $80df                                ; $4011: $d4 $df $80
    rst $18                                       ; $4014: $df
    jr nz, jr_09a_401f                            ; $4015: $20 $08

    ld a, a                                       ; $4017: $7f
    rst $38                                       ; $4018: $ff
    cp a                                          ; $4019: $bf
    add d                                         ; $401a: $82
    inc b                                         ; $401b: $04
    nop                                           ; $401c: $00
    dec hl                                        ; $401d: $2b
    rst $38                                       ; $401e: $ff

jr_09a_401f:
    rrca                                          ; $401f: $0f
    rst $38                                       ; $4020: $ff
    rla                                           ; $4021: $17
    jr nz, jr_09a_4044                            ; $4022: $20 $20

    rst $38                                       ; $4024: $ff
    ld bc, $faff                                  ; $4025: $01 $ff $fa
    rst $38                                       ; $4028: $ff
    db $fd                                        ; $4029: $fd
    cp $fb                                        ; $402a: $fe $fb
    db $fd                                        ; $402c: $fd
    dec bc                                        ; $402d: $0b
    db $10                                        ; $402e: $10
    and b                                         ; $402f: $a0
    ld [hl-], a                                   ; $4030: $32
    db $10                                        ; $4031: $10
    db $fd                                        ; $4032: $fd
    ld [de], a                                    ; $4033: $12
    nop                                           ; $4034: $00
    db $f4                                        ; $4035: $f4
    cp $a9                                        ; $4036: $fe $a9
    db $fc                                        ; $4038: $fc
    and b                                         ; $4039: $a0
    nop                                           ; $403a: $00
    rst $18                                       ; $403b: $df
    ld h, b                                       ; $403c: $60
    sbc $00                                       ; $403d: $de $00
    push de                                       ; $403f: $d5
    nop                                           ; $4040: $00
    cp d                                          ; $4041: $ba
    ld b, b                                       ; $4042: $40
    nop                                           ; $4043: $00

jr_09a_4044:
    add h                                         ; $4044: $84
    add hl, hl                                    ; $4045: $29
    ld b, b                                       ; $4046: $40
    sub $61                                       ; $4047: $d6 $61
    ld a, c                                       ; $4049: $79
    di                                            ; $404a: $f3
    cpl                                           ; $404b: $2f
    nop                                           ; $404c: $00
    rst $38                                       ; $404d: $ff
    dec e                                         ; $404e: $1d
    rst $38                                       ; $404f: $ff
    rrca                                          ; $4050: $0f
    rst $18                                       ; $4051: $df
    dec de                                        ; $4052: $1b
    ld l, a                                       ; $4053: $6f
    rrca                                          ; $4054: $0f
    nop                                           ; $4055: $00
    cpl                                           ; $4056: $2f
    ld e, a                                       ; $4057: $5f
    rra                                           ; $4058: $1f
    ei                                            ; $4059: $fb
    rst $38                                       ; $405a: $ff
    ld d, a                                       ; $405b: $57
    rst $38                                       ; $405c: $ff
    cp $00                                        ; $405d: $fe $00
    db $f4                                        ; $405f: $f4
    adc l                                         ; $4060: $8d
    ld sp, hl                                     ; $4061: $f9
    cp e                                          ; $4062: $bb
    db $d3                                        ; $4063: $d3
    adc $f7                                       ; $4064: $ce $f7
    db $e4                                        ; $4066: $e4
    nop                                           ; $4067: $00
    rst $30                                       ; $4068: $f7
    cp c                                          ; $4069: $b9
    xor $f4                                       ; $406a: $ee $f4
    db $eb                                        ; $406c: $eb
    jp c, $ffef                                   ; $406d: $da $ef $ff

    nop                                           ; $4070: $00
    rst $38                                       ; $4071: $ff
    rst $18                                       ; $4072: $df
    rst $38                                       ; $4073: $ff
    ld sp, hl                                     ; $4074: $f9
    cp $7e                                        ; $4075: $fe $7e
    rst $30                                       ; $4077: $f7
    sub $00                                       ; $4078: $d6 $00
    ld l, b                                       ; $407a: $68
    or e                                          ; $407b: $b3
    jp $1fdf                                      ; $407c: $c3 $df $1f


    ld h, l                                       ; $407f: $65
    ld a, [hl]                                    ; $4080: $7e
    rst $38                                       ; $4081: $ff
    nop                                           ; $4082: $00
    rst $38                                       ; $4083: $ff
    ld l, d                                       ; $4084: $6a
    cp a                                          ; $4085: $bf
    nop                                           ; $4086: $00
    rst $38                                       ; $4087: $ff
    ld h, b                                       ; $4088: $60
    add b                                         ; $4089: $80
    ld a, a                                       ; $408a: $7f
    nop                                           ; $408b: $00
    ld a, a                                       ; $408c: $7f
    rst $28                                       ; $408d: $ef
    rst $38                                       ; $408e: $ff
    ld d, e                                       ; $408f: $53
    rst $38                                       ; $4090: $ff
    pop bc                                        ; $4091: $c1
    rst $38                                       ; $4092: $ff
    ei                                            ; $4093: $fb
    nop                                           ; $4094: $00
    rst $38                                       ; $4095: $ff
    or $fb                                        ; $4096: $f6 $fb
    inc de                                        ; $4098: $13
    db $ed                                        ; $4099: $ed

Call_09a_409a:
    inc bc                                        ; $409a: $03
    nop                                           ; $409b: $00
    cp $a0                                        ; $409c: $fe $a0
    ld l, d                                       ; $409e: $6a
    db $10                                        ; $409f: $10
    sbc a                                         ; $40a0: $9f
    xor a                                         ; $40a1: $af
    db $10                                        ; $40a2: $10
    rst $18                                       ; $40a3: $df
    rst $38                                       ; $40a4: $ff

Call_09a_40a5:
    ld l, $fb                                     ; $40a5: $2e $fb
    ld h, a                                       ; $40a7: $67
    nop                                           ; $40a8: $00
    dec e                                         ; $40a9: $1d
    call $fbc2                                    ; $40aa: $cd $c2 $fb
    ld hl, sp-$62                                 ; $40ad: $f8 $9e
    cp $ca                                        ; $40af: $fe $ca
    nop                                           ; $40b1: $00
    push af                                       ; $40b2: $f5
    sub h                                         ; $40b3: $94
    db $e3                                        ; $40b4: $e3
    ld b, d                                       ; $40b5: $42
    rst $38                                       ; $40b6: $ff
    and b                                         ; $40b7: $a0
    rst $18                                       ; $40b8: $df
    ld a, [bc]                                    ; $40b9: $0a
    nop                                           ; $40ba: $00
    rst $30                                       ; $40bb: $f7
    ld b, b                                       ; $40bc: $40
    rst $38                                       ; $40bd: $ff
    ld b, d                                       ; $40be: $42
    cp l                                          ; $40bf: $bd
    dec d                                         ; $40c0: $15
    ld [$00a8], a                                 ; $40c1: $ea $a8 $00
    rst $10                                       ; $40c4: $d7
    ld d, [hl]                                    ; $40c5: $56
    pop hl                                        ; $40c6: $e1
    adc h                                         ; $40c7: $8c
    ldh a, [rLCDC]                                ; $40c8: $f0 $40
    rst $38                                       ; $40ca: $ff
    stop                                          ; $40cb: $10 $00
    rst $38                                       ; $40cd: $ff
    ld d, d                                       ; $40ce: $52
    db $ed                                        ; $40cf: $ed
    adc b                                         ; $40d0: $88
    ld [hl], a                                    ; $40d1: $77
    ld d, c                                       ; $40d2: $51
    ld a, $27                                     ; $40d3: $3e $27
    nop                                           ; $40d5: $00
    rst $38                                       ; $40d6: $ff
    add [hl]                                      ; $40d7: $86
    ld a, a                                       ; $40d8: $7f
    ld [hl], d                                    ; $40d9: $72
    rrca                                          ; $40da: $0f
    dec b                                         ; $40db: $05
    rst $38                                       ; $40dc: $ff
    ld [de], a                                    ; $40dd: $12
    nop                                           ; $40de: $00
    rst $38                                       ; $40df: $ff
    db $e4                                        ; $40e0: $e4
    dec de                                        ; $40e1: $1b
    ld a, e                                       ; $40e2: $7b
    add h                                         ; $40e3: $84
    adc h                                         ; $40e4: $8c
    nop                                           ; $40e5: $00
    inc bc                                        ; $40e6: $03
    nop                                           ; $40e7: $00
    rst $38                                       ; $40e8: $ff
    pop de                                        ; $40e9: $d1
    xor a                                         ; $40ea: $af
    ld c, b                                       ; $40eb: $48
    sub a                                         ; $40ec: $97
    ld [de], a                                    ; $40ed: $12
    pop hl                                        ; $40ee: $e1
    jr nz, jr_09a_40f1                            ; $40ef: $20 $00

jr_09a_40f1:
    rst $38                                       ; $40f1: $ff
    add d                                         ; $40f2: $82
    rst $38                                       ; $40f3: $ff
    and c                                         ; $40f4: $a1
    ld a, a                                       ; $40f5: $7f
    sub h                                         ; $40f6: $94
    ld a, e                                       ; $40f7: $7b
    xor d                                         ; $40f8: $aa
    ld h, $00                                     ; $40f9: $26 $00
    add b                                         ; $40fb: $80

Jump_09a_40fc:
    ld [bc], a                                    ; $40fc: $02
    ld d, b                                       ; $40fd: $50
    xor d                                         ; $40fe: $aa
    nop                                           ; $40ff: $00
    ld bc, $0e58                                  ; $4100: $01 $58 $0e
    ld bc, $40fe                                  ; $4103: $01 $fe $40
    db $fc                                        ; $4106: $fc
    and d                                         ; $4107: $a2
    nop                                           ; $4108: $00
    ld a, [c]                                     ; $4109: $f2
    push af                                       ; $410a: $f5
    jp hl                                         ; $410b: $e9


    push af                                       ; $410c: $f5
    rst $00                                       ; $410d: $c7
    db $eb                                        ; $410e: $eb
    jr nz, @-$63                                  ; $410f: $20 $9b

    rst $20                                       ; $4111: $e7
    xor $28                                       ; $4112: $ee $28
    cp $ff                                        ; $4114: $fe $ff
    db $fc                                        ; $4116: $fc
    rst $38                                       ; $4117: $ff
    add sp, $00                                   ; $4118: $e8 $00
    cp $d0                                        ; $411a: $fe $d0
    cp $16                                        ; $411c: $fe $16
    rst $28                                       ; $411e: $ef
    inc c                                         ; $411f: $0c
    rst $08                                       ; $4120: $cf
    xor d                                         ; $4121: $aa
    nop                                           ; $4122: $00
    rst $08                                       ; $4123: $cf
    inc h                                         ; $4124: $24
    sbc a                                         ; $4125: $9f
    nop                                           ; $4126: $00
    adc [hl]                                      ; $4127: $8e
    ld d, c                                       ; $4128: $51
    inc l                                         ; $4129: $2c
    or d                                          ; $412a: $b2
    db $10                                        ; $412b: $10
    ld l, c                                       ; $412c: $69
    db $ed                                        ; $412d: $ed
    db $e3                                        ; $412e: $e3
    jr nc, jr_09a_4139                            ; $412f: $30 $08

    db $fd                                        ; $4131: $fd
    cp $fc                                        ; $4132: $fe $fc
    cp $00                                        ; $4134: $fe $00
    ld sp, hl                                     ; $4136: $f9
    db $fc                                        ; $4137: $fc
    di                                            ; $4138: $f3

jr_09a_4139:
    ld sp, hl                                     ; $4139: $f9
    rst $00                                       ; $413a: $c7
    ei                                            ; $413b: $fb
    add e                                         ; $413c: $83
    sbc e                                         ; $413d: $9b
    ld [bc], a                                    ; $413e: $02
    inc bc                                        ; $413f: $03
    ld a, c                                       ; $4140: $79
    ld b, a                                       ; $4141: $47
    di                                            ; $4142: $f3
    ld [bc], a                                    ; $4143: $02
    rst $20                                       ; $4144: $e7
    ld h, $00                                     ; $4145: $26 $00
    ld c, [hl]                                    ; $4147: $4e
    nop                                           ; $4148: $00
    add sp, -$74                                  ; $4149: $e8 $8c
    sub d                                         ; $414b: $92
    add sp, $19                                   ; $414c: $e8 $19
    jp $f7af                                      ; $414e: $c3 $af $f7


    nop                                           ; $4151: $00
    ld c, [hl]                                    ; $4152: $4e
    rst $30                                       ; $4153: $f7
    inc c                                         ; $4154: $0c
    or a                                          ; $4155: $b7
    ld a, [bc]                                    ; $4156: $0a
    ld b, a                                       ; $4157: $47
    db $10                                        ; $4158: $10
    ld a, [bc]                                    ; $4159: $0a
    nop                                           ; $415a: $00
    call c, $7938                                 ; $415b: $dc $38 $79
    ld hl, sp-$06                                 ; $415e: $f8 $fa
    db $fd                                        ; $4160: $fd
    xor e                                         ; $4161: $ab
    nop                                           ; $4162: $00
    ld b, b                                       ; $4163: $40
    ld bc, $5002                                  ; $4164: $01 $02 $50
    ld h, $c7                                     ; $4167: $26 $c7
    dec e                                         ; $4169: $1d
    rst $20                                       ; $416a: $e7
    and [hl]                                      ; $416b: $a6
    rst $30                                       ; $416c: $f7
    nop                                           ; $416d: $00
    nop                                           ; $416e: $00
    ld a, [$f803]                                 ; $416f: $fa $03 $f8
    ld b, l                                       ; $4172: $45
    di                                            ; $4173: $f3
    rlca                                          ; $4174: $07
    db $eb                                        ; $4175: $eb
    nop                                           ; $4176: $00
    inc bc                                        ; $4177: $03
    di                                            ; $4178: $f3
    add a                                         ; $4179: $87
    rst $08                                       ; $417a: $cf
    ld e, $8f                                     ; $417b: $1e $8f
    dec d                                         ; $417d: $15
    ld c, a                                       ; $417e: $4f
    nop                                           ; $417f: $00
    ld [hl+], a                                   ; $4180: $22
    adc a                                         ; $4181: $8f
    inc b                                         ; $4182: $04
    scf                                           ; $4183: $37
    ld hl, sp-$09                                 ; $4184: $f8 $f7
    and b                                         ; $4186: $a0
    rst $30                                       ; $4187: $f7
    nop                                           ; $4188: $00
    ret nc                                        ; $4189: $d0

    ei                                            ; $418a: $fb
    ld a, [c]                                     ; $418b: $f2
    db $fd                                        ; $418c: $fd
    and b                                         ; $418d: $a0
    db $fc                                        ; $418e: $fc
    ld b, c                                       ; $418f: $41
    ld hl, sp+$00                                 ; $4190: $f8 $00
    add d                                         ; $4192: $82
    db $f4                                        ; $4193: $f4
    ld [bc], a                                    ; $4194: $02
    ld sp, hl                                     ; $4195: $f9
    ld bc, $05f1                                  ; $4196: $01 $f1 $05
    ld b, e                                       ; $4199: $43
    nop                                           ; $419a: $00
    rlca                                          ; $419b: $07
    db $e3                                        ; $419c: $e3
    ld b, e                                       ; $419d: $43
    ldh a, [rNR24]                                ; $419e: $f0 $19
    add d                                         ; $41a0: $82
    db $dd                                        ; $41a1: $dd
    ld e, $00                                     ; $41a2: $1e $00
    ld a, l                                       ; $41a4: $7d
    cp $f9                                        ; $41a5: $fe $f9
    cp $d0                                        ; $41a7: $fe $d0
    db $fc                                        ; $41a9: $fc
    and d                                         ; $41aa: $a2
    push af                                       ; $41ab: $f5
    nop                                           ; $41ac: $00
    ld b, b                                       ; $41ad: $40
    jp hl                                         ; $41ae: $e9


    rst $30                                       ; $41af: $f7
    ei                                            ; $41b0: $fb
    rst $28                                       ; $41b1: $ef
    ei                                            ; $41b2: $fb
    sub $fb                                       ; $41b3: $d6 $fb
    nop                                           ; $41b5: $00
    push hl                                       ; $41b6: $e5
    ei                                            ; $41b7: $fb
    ld b, [hl]                                    ; $41b8: $46
    ei                                            ; $41b9: $fb
    and b                                         ; $41ba: $a0
    di                                            ; $41bb: $f3
    ld c, b                                       ; $41bc: $48
    rst $30                                       ; $41bd: $f7
    stop                                          ; $41be: $10 $00
    rst $20                                       ; $41c0: $e7
    xor e                                         ; $41c1: $ab
    or h                                          ; $41c2: $b4
    ld bc, $ff0b                                  ; $41c3: $01 $0b $ff
    dec b                                         ; $41c6: $05
    rst $38                                       ; $41c7: $ff
    nop                                           ; $41c8: $00
    ld bc, $01fd                                  ; $41c9: $01 $fd $01
    ei                                            ; $41cc: $fb
    inc bc                                        ; $41cd: $03
    rst $38                                       ; $41ce: $ff
    inc bc                                        ; $41cf: $03
    db $eb                                        ; $41d0: $eb
    nop                                           ; $41d1: $00
    call nz, $daef                                ; $41d2: $c4 $ef $da
    db $ed                                        ; $41d5: $ed
    call nz, $d0eb                                ; $41d6: $c4 $eb $d0
    rst $28                                       ; $41d9: $ef
    nop                                           ; $41da: $00
    jp $8dec                                      ; $41db: $c3 $ec $8d


    ldh [$ca], a                                  ; $41de: $e0 $ca
    ldh [$cc], a                                  ; $41e0: $e0 $cc
    ldh [rP1], a                                  ; $41e2: $e0 $00
    inc b                                         ; $41e4: $04
    pop af                                        ; $41e5: $f1
    inc c                                         ; $41e6: $0c
    ldh [$0b], a                                  ; $41e7: $e0 $0b
    ret nz                                        ; $41e9: $c0

    inc d                                         ; $41ea: $14
    dec bc                                        ; $41eb: $0b
    nop                                           ; $41ec: $00
    ld c, e                                       ; $41ed: $4b
    dec de                                        ; $41ee: $1b
    ld [hl], e                                    ; $41ef: $73
    ld [hl], a                                    ; $41f0: $77
    rst $08                                       ; $41f1: $cf
    rst $30                                       ; $41f2: $f7
    sbc a                                         ; $41f3: $9f
    rst $30                                       ; $41f4: $f7
    nop                                           ; $41f5: $00
    db $10                                        ; $41f6: $10
    ld c, d                                       ; $41f7: $4a
    nop                                           ; $41f8: $00
    dec b                                         ; $41f9: $05
    jr nz, jr_09a_4206                            ; $41fa: $20 $0a

    ld h, b                                       ; $41fc: $60
    inc b                                         ; $41fd: $04
    nop                                           ; $41fe: $00
    pop de                                        ; $41ff: $d1
    ldh [$ea], a                                  ; $4200: $e0 $ea
    pop af                                        ; $4202: $f1
    db $dd                                        ; $4203: $dd
    di                                            ; $4204: $f3
    xor a                                         ; $4205: $af

jr_09a_4206:
    rst $30                                       ; $4206: $f7
    nop                                           ; $4207: $00
    inc bc                                        ; $4208: $03
    rst $10                                       ; $4209: $d7
    rlca                                          ; $420a: $07
    adc a                                         ; $420b: $8f
    rla                                           ; $420c: $17
    rrca                                          ; $420d: $0f
    dec hl                                        ; $420e: $2b
    rrca                                          ; $420f: $0f
    db $10                                        ; $4210: $10
    sbc a                                         ; $4211: $9f
    ccf                                           ; $4212: $3f
    cpl                                           ; $4213: $2f
    cp $01                                        ; $4214: $fe $01
    rrca                                          ; $4216: $0f
    rst $38                                       ; $4217: $ff
    add [hl]                                      ; $4218: $86
    add sp, $01                                   ; $4219: $e8 $01
    jp $c0ec                                      ; $421b: $c3 $ec $c0


    rst $28                                       ; $421e: $ef
    ret z                                         ; $421f: $c8

    rst $28                                       ; $4220: $ef
    adc [hl]                                      ; $4221: $8e
    ld b, d                                       ; $4222: $42
    nop                                           ; $4223: $00
    nop                                           ; $4224: $00
    ld c, [hl]                                    ; $4225: $4e
    ldh [$c5], a                                  ; $4226: $e0 $c5
    add sp, $4a                                   ; $4228: $e8 $4a
    rst $30                                       ; $422a: $f7
    adc l                                         ; $422b: $8d
    or a                                          ; $422c: $b7
    nop                                           ; $422d: $00
    nop                                           ; $422e: $00
    ld b, e                                       ; $422f: $43
    ld a, [hl+]                                   ; $4230: $2a
    sbc l                                         ; $4231: $9d
    ld e, h                                       ; $4232: $5c
    inc a                                         ; $4233: $3c
    cp l                                          ; $4234: $bd
    ld a, [hl]                                    ; $4235: $7e
    nop                                           ; $4236: $00
    ld a, d                                       ; $4237: $7a
    cp $d4                                        ; $4238: $fe $d4
    rst $38                                       ; $423a: $ff
    ld c, a                                       ; $423b: $4f
    rst $30                                       ; $423c: $f7
    ld c, $e7                                     ; $423d: $0e $e7
    nop                                           ; $423f: $00
    dec c                                         ; $4240: $0d
    ld d, a                                       ; $4241: $57
    ld [bc], a                                    ; $4242: $02
    and a                                         ; $4243: $a7
    db $10                                        ; $4244: $10
    ld c, a                                       ; $4245: $4f
    nop                                           ; $4246: $00
    dec b                                         ; $4247: $05
    ld [$1238], sp                                ; $4248: $08 $38 $12
    or h                                          ; $424b: $b4
    jr c, jr_09a_4284                             ; $424c: $38 $36

    ld [$ff0d], sp                                ; $424e: $08 $0d $ff
    rlca                                          ; $4251: $07
    nop                                           ; $4252: $00
    rst $38                                       ; $4253: $ff
    inc bc                                        ; $4254: $03
    rst $28                                       ; $4255: $ef
    rrca                                          ; $4256: $0f
    ld e, a                                       ; $4257: $5f
    dec c                                         ; $4258: $0d
    cp a                                          ; $4259: $bf
    rrca                                          ; $425a: $0f
    nop                                           ; $425b: $00
    rst $38                                       ; $425c: $ff
    adc $e0                                       ; $425d: $ce $e0
    call $86e0                                    ; $425f: $cd $e0 $86
    add sp, -$35                                  ; $4262: $e8 $cb
    ld [$fdec], sp                                ; $4264: $08 $ec $fd
    rst $28                                       ; $4267: $ef
    ei                                            ; $4268: $fb
    ld a, [$ff01]                                 ; $4269: $fa $01 $ff
    rst $38                                       ; $426c: $ff
    and b                                         ; $426d: $a0
    nop                                           ; $426e: $00
    rst $38                                       ; $426f: $ff
    nop                                           ; $4270: $00
    db $fd                                        ; $4271: $fd
    nop                                           ; $4272: $00
    ld [$d400], a                                 ; $4273: $ea $00 $d4
    ld b, c                                       ; $4276: $41
    nop                                           ; $4277: $00
    ld [$c193], sp                                ; $4278: $08 $93 $c1
    add $d3                                       ; $427b: $c6 $d3
    ld [$f2a3], sp                                ; $427d: $08 $a3 $f2
    nop                                           ; $4280: $00
    ld a, l                                       ; $4281: $7d
    add hl, hl                                    ; $4282: $29
    dec a                                         ; $4283: $3d

jr_09a_4284:
    ld b, d                                       ; $4284: $42
    inc sp                                        ; $4285: $33
    push bc                                       ; $4286: $c5
    daa                                           ; $4287: $27
    ld [$cf00], a                                 ; $4288: $ea $00 $cf
    or h                                          ; $428b: $b4

Jump_09a_428c:
    sbc $28                                       ; $428c: $de $28
    cp h                                          ; $428e: $bc
    ld d, b                                       ; $428f: $50
    ld a, b                                       ; $4290: $78
    and b                                         ; $4291: $a0
    ld b, $f0                                     ; $4292: $06 $f0
    ld b, b                                       ; $4294: $40
    ldh [$80], a                                  ; $4295: $e0 $80
    ret nz                                        ; $4297: $c0

    and l                                         ; $4298: $a5
    ld bc, $2998                                  ; $4299: $01 $98 $29
    ld d, l                                       ; $429c: $55
    nop                                           ; $429d: $00
    nop                                           ; $429e: $00
    xor b                                         ; $429f: $a8
    nop                                           ; $42a0: $00
    ld d, h                                       ; $42a1: $54
    nop                                           ; $42a2: $00
    ld a, [hl+]                                   ; $42a3: $2a
    ld bc, $0051                                  ; $42a4: $01 $51 $00
    nop                                           ; $42a7: $00
    xor b                                         ; $42a8: $a8
    db $10                                        ; $42a9: $10
    ld d, b                                       ; $42aa: $50
    adc b                                         ; $42ab: $88

jr_09a_42ac:
    adc b                                         ; $42ac: $88
    cpl                                           ; $42ad: $2f
    ret nc                                        ; $42ae: $d0

    nop                                           ; $42af: $00
    ld a, [$5400]                                 ; $42b0: $fa $00 $54
    add b                                         ; $42b3: $80
    and c                                         ; $42b4: $a1
    ld b, b                                       ; $42b5: $40
    db $fd                                        ; $42b6: $fd
    ld [bc], a                                    ; $42b7: $02
    nop                                           ; $42b8: $00
    ld l, d                                       ; $42b9: $6a
    dec d                                         ; $42ba: $15
    ld a, d                                       ; $42bb: $7a
    nop                                           ; $42bc: $00
    call nc, Call_09a_4800                        ; $42bd: $d4 $00 $48
    scf                                           ; $42c0: $37
    nop                                           ; $42c1: $00
    ld e, l                                       ; $42c2: $5d
    ld [hl+], a                                   ; $42c3: $22
    or $01                                        ; $42c4: $f6 $01
    xor e                                         ; $42c6: $ab
    ld b, b                                       ; $42c7: $40
    dec h                                         ; $42c8: $25
    ret nz                                        ; $42c9: $c0

    nop                                           ; $42ca: $00
    jr nz, @-$3e                                  ; $42cb: $20 $c0

    sub d                                         ; $42cd: $92
    ld h, b                                       ; $42ce: $60
    ld e, l                                       ; $42cf: $5d
    jr nz, jr_09a_4315                            ; $42d0: $20 $43

    add b                                         ; $42d2: $80
    nop                                           ; $42d3: $00
    ld a, $c1                                     ; $42d4: $3e $c1
    and c                                         ; $42d6: $a1
    ld e, [hl]                                    ; $42d7: $5e
    ld d, h                                       ; $42d8: $54
    xor e                                         ; $42d9: $ab
    xor d                                         ; $42da: $aa
    ld d, l                                       ; $42db: $55
    nop                                           ; $42dc: $00
    db $fc                                        ; $42dd: $fc
    inc bc                                        ; $42de: $03
    ld d, l                                       ; $42df: $55
    ld [bc], a                                    ; $42e0: $02
    ld b, $00                                     ; $42e1: $06 $00
    add c                                         ; $42e3: $81
    ld a, [hl]                                    ; $42e4: $7e
    nop                                           ; $42e5: $00
    jr z, @-$27                                   ; $42e6: $28 $d7

    ld d, h                                       ; $42e8: $54
    db $eb                                        ; $42e9: $eb
    adc d                                         ; $42ea: $8a
    push hl                                       ; $42eb: $e5
    scf                                           ; $42ec: $37
    ret nz                                        ; $42ed: $c0

    inc b                                         ; $42ee: $04
    xor e                                         ; $42ef: $ab
    ld b, b                                       ; $42f0: $40
    ld d, l                                       ; $42f1: $55
    jr nz, jr_09a_42ac                            ; $42f2: $20 $b8

    ld c, l                                       ; $42f4: $4d
    nop                                           ; $42f5: $00
    ld [hl], c                                    ; $42f6: $71
    add b                                         ; $42f7: $80
    nop                                           ; $42f8: $00
    rst $18                                       ; $42f9: $df
    jr nz, @-$54                                  ; $42fa: $20 $aa

    ld d, h                                       ; $42fc: $54
    ld d, l                                       ; $42fd: $55
    xor d                                         ; $42fe: $aa
    ld [$0000], a                                 ; $42ff: $ea $00 $00
    add c                                         ; $4302: $81
    ld b, $0a                                     ; $4303: $06 $0a
    rlca                                          ; $4305: $07
    adc d                                         ; $4306: $8a
    ld [hl], h                                    ; $4307: $74
    dec l                                         ; $4308: $2d
    jp nz, $d404                                  ; $4309: $c2 $04 $d4

    inc bc                                        ; $430c: $03
    add l                                         ; $430d: $85
    ld [bc], a                                    ; $430e: $02
    rst $38                                       ; $430f: $ff
    ld [$fa02], sp                                ; $4310: $08 $02 $fa
    nop                                           ; $4313: $00
    nop                                           ; $4314: $00

jr_09a_4315:
    ld d, a                                       ; $4315: $57
    xor b                                         ; $4316: $a8
    xor d                                         ; $4317: $aa
    inc b                                         ; $4318: $04
    ld a, [c]                                     ; $4319: $f2
    inc c                                         ; $431a: $0c
    ld l, c                                       ; $431b: $69
    add [hl]                                      ; $431c: $86
    jr z, jr_09a_4362                             ; $431d: $28 $43

    nop                                           ; $431f: $00
    db $10                                        ; $4320: $10
    ld [$1280], sp                                ; $4321: $08 $80 $12
    nop                                           ; $4324: $00
    ld e, a                                       ; $4325: $5f
    nop                                           ; $4326: $00
    dec hl                                        ; $4327: $2b
    nop                                           ; $4328: $00
    nop                                           ; $4329: $00
    ld b, c                                       ; $432a: $41
    nop                                           ; $432b: $00
    and a                                         ; $432c: $a7
    nop                                           ; $432d: $00
    db $fd                                        ; $432e: $fd
    ld [bc], a                                    ; $432f: $02
    ld d, a                                       ; $4330: $57
    add b                                         ; $4331: $80
    cp d                                          ; $4332: $ba
    ld bc, $0080                                  ; $4333: $01 $80 $00
    dec bc                                        ; $4336: $0b
    rlca                                          ; $4337: $07
    inc b                                         ; $4338: $04
    inc bc                                        ; $4339: $03
    xor [hl]                                      ; $433a: $ae
    ld [bc], a                                    ; $433b: $02
    ld bc, $0057                                  ; $433c: $01 $57 $00
    ld d, [hl]                                    ; $433f: $56
    jp hl                                         ; $4340: $e9


    or l                                          ; $4341: $b5
    jr z, @+$05                                   ; $4342: $28 $03

    rst $38                                       ; $4344: $ff
    ld hl, $d0ff                                  ; $4345: $21 $ff $d0
    ld d, c                                       ; $4348: $51
    inc bc                                        ; $4349: $03
    adc a                                         ; $434a: $8f
    ld a, a                                       ; $434b: $7f
    ld d, l                                       ; $434c: $55
    xor d                                         ; $434d: $aa
    add hl, sp                                    ; $434e: $39
    ld [bc], a                                    ; $434f: $02
    adc b                                         ; $4350: $88
    ld e, e                                       ; $4351: $5b
    inc de                                        ; $4352: $13
    dec hl                                        ; $4353: $2b
    call nc, Call_09a_5050                        ; $4354: $d4 $50 $50
    inc bc                                        ; $4357: $03
    ld d, l                                       ; $4358: $55
    xor d                                         ; $4359: $aa
    inc bc                                        ; $435a: $03
    ld b, b                                       ; $435b: $40
    db $fc                                        ; $435c: $fc
    dec hl                                        ; $435d: $2b
    dec de                                        ; $435e: $1b
    ret nz                                        ; $435f: $c0

    nop                                           ; $4360: $00
    nop                                           ; $4361: $00

jr_09a_4362:
    ret nz                                        ; $4362: $c0

    ld b, l                                       ; $4363: $45
    add b                                         ; $4364: $80
    inc b                                         ; $4365: $04
    ld [$6a00], a                                 ; $4366: $ea $00 $6a
    sub a                                         ; $4369: $97
    push af                                       ; $436a: $f5
    ld d, [hl]                                    ; $436b: $56
    inc bc                                        ; $436c: $03
    cp $ff                                        ; $436d: $fe $ff
    db $10                                        ; $436f: $10
    ld bc, $0815                                  ; $4370: $01 $15 $08
    ret z                                         ; $4373: $c8

    nop                                           ; $4374: $00
    nop                                           ; $4375: $00
    add b                                         ; $4376: $80
    ld bc, $1000                                  ; $4377: $01 $00 $10
    ld [hl+], a                                   ; $437a: $22
    nop                                           ; $437b: $00
    ld d, b                                       ; $437c: $50
    ld a, h                                       ; $437d: $7c
    ld [bc], a                                    ; $437e: $02
    inc b                                         ; $437f: $04
    inc b                                         ; $4380: $04
    ld a, [bc]                                    ; $4381: $0a
    ld [bc], a                                    ; $4382: $02
    nop                                           ; $4383: $00
    nop                                           ; $4384: $00
    ld bc, $0080                                  ; $4385: $01 $80 $00
    ld bc, $0a05                                  ; $4388: $01 $05 $0a
    ld [$1404], sp                                ; $438b: $08 $04 $14
    ld d, b                                       ; $438e: $50
    ld a, [hl+]                                   ; $438f: $2a
    add b                                         ; $4390: $80
    nop                                           ; $4391: $00
    ld [$aa10], sp                                ; $4392: $08 $10 $aa
    add b                                         ; $4395: $80
    ld b, h                                       ; $4396: $44
    dec d                                         ; $4397: $15
    rst $30                                       ; $4398: $f7
    nop                                           ; $4399: $00
    ld d, c                                       ; $439a: $51
    nop                                           ; $439b: $00
    add d                                         ; $439c: $82
    jr nz, jr_09a_439f                            ; $439d: $20 $00

jr_09a_439f:
    adc b                                         ; $439f: $88
    ld [bc], a                                    ; $43a0: $02
    nop                                           ; $43a1: $00
    dec d                                         ; $43a2: $15
    ld bc, $00aa                                  ; $43a3: $01 $aa $00
    ld bc, $2a01                                  ; $43a6: $01 $01 $2a
    ld [$5408], sp                                ; $43a9: $08 $08 $54
    db $10                                        ; $43ac: $10
    ld [$b280], sp                                ; $43ad: $08 $80 $b2
    ld [bc], a                                    ; $43b0: $02
    ld d, l                                       ; $43b1: $55
    ld a, a                                       ; $43b2: $7f
    add b                                         ; $43b3: $80
    dec b                                         ; $43b4: $05
    add b                                         ; $43b5: $80
    ld b, b                                       ; $43b6: $40
    ld a, a                                       ; $43b7: $7f
    ret nz                                        ; $43b8: $c0

    cp a                                          ; $43b9: $bf
    inc b                                         ; $43ba: $04
    stop                                          ; $43bb: $10 $00
    stop                                          ; $43bd: $10 $00
    ld bc, $00ff                                  ; $43bf: $01 $ff $00
    jr jr_09a_43e8                                ; $43c2: $18 $24

    rst $38                                       ; $43c4: $ff
    inc h                                         ; $43c5: $24
    db $db                                        ; $43c6: $db
    inc b                                         ; $43c7: $04
    db $10                                        ; $43c8: $10

jr_09a_43c9:
    ldh a, [rNR23]                                ; $43c9: $f0 $18
    jr z, jr_09a_43ed                             ; $43cb: $28 $20

    jr z, jr_09a_43e7                             ; $43cd: $28 $18

    jr z, jr_09a_43f1                             ; $43cf: $28 $20

    jr z, jr_09a_4451                             ; $43d1: $28 $7e

    pop bc                                        ; $43d3: $c1
    cp l                                          ; $43d4: $bd
    ld b, d                                       ; $43d5: $42
    ld [$c37e], sp                                ; $43d6: $08 $7e $c3
    cp a                                          ; $43d9: $bf
    ld b, c                                       ; $43da: $41
    ld b, b                                       ; $43db: $40
    jr z, jr_09a_445c                             ; $43dc: $28 $7e

    and l                                         ; $43de: $a5
    jr jr_09a_43e5                                ; $43df: $18 $04

    ld h, [hl]                                    ; $43e1: $66
    ld a, [hl]                                    ; $43e2: $7e
    rst $20                                       ; $43e3: $e7
    db $db                                        ; $43e4: $db

jr_09a_43e5:
    and l                                         ; $43e5: $a5
    ld b, b                                       ; $43e6: $40

jr_09a_43e7:
    ld d, b                                       ; $43e7: $50

jr_09a_43e8:
    rst $38                                       ; $43e8: $ff
    xor a                                         ; $43e9: $af
    inc bc                                        ; $43ea: $03
    ld d, b                                       ; $43eb: $50
    nop                                           ; $43ec: $00

jr_09a_43ed:
    ret nz                                        ; $43ed: $c0

    rst $38                                       ; $43ee: $ff
    ld b, b                                       ; $43ef: $40
    ccf                                           ; $43f0: $3f

jr_09a_43f1:
    inc b                                         ; $43f1: $04
    nop                                           ; $43f2: $00
    ld e, b                                       ; $43f3: $58
    db $10                                        ; $43f4: $10
    ld b, b                                       ; $43f5: $40
    rst $20                                       ; $43f6: $e7
    ld e, $09                                     ; $43f7: $1e $09
    rst $38                                       ; $43f9: $ff
    nop                                           ; $43fa: $00
    rst $20                                       ; $43fb: $e7
    jr jr_09a_43c9                                ; $43fc: $18 $cb

    inc h                                         ; $43fe: $24
    nop                                           ; $43ff: $00
    ld bc, $ab00                                  ; $4400: $01 $00 $ab
    ld d, h                                       ; $4403: $54
    cp $01                                        ; $4404: $fe $01
    ld bc, $1002                                  ; $4406: $01 $02 $10
    cp $03                                        ; $4409: $fe $03
    db $fd                                        ; $440b: $fd
    inc b                                         ; $440c: $04
    nop                                           ; $440d: $00
    db $fc                                        ; $440e: $fc
    inc bc                                        ; $440f: $03
    dec bc                                        ; $4410: $0b
    rst $30                                       ; $4411: $f7
    nop                                           ; $4412: $00
    rrca                                          ; $4413: $0f
    rst $10                                       ; $4414: $d7
    ld [bc], a                                    ; $4415: $02
    rst $20                                       ; $4416: $e7
    inc d                                         ; $4417: $14
    ld c, a                                       ; $4418: $4f
    db $10                                        ; $4419: $10
    add a                                         ; $441a: $87
    nop                                           ; $441b: $00
    ld c, b                                       ; $441c: $48
    dec b                                         ; $441d: $05
    ld l, b                                       ; $441e: $68
    ld a, [c]                                     ; $441f: $f2
    and b                                         ; $4420: $a0
    db $f4                                        ; $4421: $f4
    and h                                         ; $4422: $a4
    ei                                            ; $4423: $fb
    nop                                           ; $4424: $00
    nop                                           ; $4425: $00
    ld a, [c]                                     ; $4426: $f2
    add d                                         ; $4427: $82
    jp hl                                         ; $4428: $e9


    inc bc                                        ; $4429: $03
    ret nz                                        ; $442a: $c0

    dec bc                                        ; $442b: $0b
    and e                                         ; $442c: $a3
    nop                                           ; $442d: $00
    ld d, $4f                                     ; $442e: $16 $4f
    inc a                                         ; $4430: $3c
    sbc a                                         ; $4431: $9f
    ld a, [$087f]                                 ; $4432: $fa $7f $08
    ld b, e                                       ; $4435: $43
    nop                                           ; $4436: $00
    rrca                                          ; $4437: $0f
    add b                                         ; $4438: $80
    ld h, [hl]                                    ; $4439: $66
    rrca                                          ; $443a: $0f
    dec sp                                        ; $443b: $3b
    ld a, a                                       ; $443c: $7f
    or $7f                                        ; $443d: $f6 $7f
    nop                                           ; $443f: $00
    add sp, $7f                                   ; $4440: $e8 $7f
    ret nc                                        ; $4442: $d0

    ld a, a                                       ; $4443: $7f
    and b                                         ; $4444: $a0
    ld a, d                                       ; $4445: $7a

jr_09a_4446:
    rst $38                                       ; $4446: $ff
    ld [bc], a                                    ; $4447: $02
    jr nz, jr_09a_4446                            ; $4448: $20 $fc

    inc bc                                        ; $444a: $03
    inc b                                         ; $444b: $04
    ld c, b                                       ; $444c: $48
    ld b, d                                       ; $444d: $42
    ld sp, hl                                     ; $444e: $f9
    add a                                         ; $444f: $87
    ei                                            ; $4450: $fb

jr_09a_4451:
    dec b                                         ; $4451: $05
    nop                                           ; $4452: $00
    ei                                            ; $4453: $fb
    inc b                                         ; $4454: $04
    pop af                                        ; $4455: $f1

jr_09a_4456:
    rrca                                          ; $4456: $0f
    sub $04                                       ; $4457: $d6 $04
    and a                                         ; $4459: $a7
    ld a, [bc]                                    ; $445a: $0a
    nop                                           ; $445b: $00

jr_09a_445c:
    rst $00                                       ; $445c: $c7
    inc e                                         ; $445d: $1c
    adc a                                         ; $445e: $8f
    call nz, $a0ff                                ; $445f: $c4 $ff $a0
    db $fd                                        ; $4462: $fd
    ld b, b                                       ; $4463: $40
    nop                                           ; $4464: $00
    ld a, [$d080]                                 ; $4465: $fa $80 $d0
    inc bc                                        ; $4468: $03
    ldh [$99], a                                  ; $4469: $e0 $99
    ld b, e                                       ; $446b: $43
    ld c, a                                       ; $446c: $4f
    nop                                           ; $446d: $00
    rra                                           ; $446e: $1f
    cp b                                          ; $446f: $b8
    ld a, l                                       ; $4470: $7d
    ret nz                                        ; $4471: $c0

    ld [hl], h                                    ; $4472: $74
    add c                                         ; $4473: $81
    ld a, c                                       ; $4474: $79
    ld b, d                                       ; $4475: $42
    nop                                           ; $4476: $00
    ld [hl], e                                    ; $4477: $73
    add l                                         ; $4478: $85
    ld d, a                                       ; $4479: $57
    ld a, [bc]                                    ; $447a: $0a
    ld l, a                                       ; $447b: $6f
    ld d, h                                       ; $447c: $54
    sbc [hl]                                      ; $447d: $9e
    ld l, b                                       ; $447e: $68
    add b                                         ; $447f: $80
    jr nz, jr_09a_4484                            ; $4480: $20 $02

    ld a, a                                       ; $4482: $7f
    add d                                         ; $4483: $82

jr_09a_4484:
    cp h                                          ; $4484: $bc
    ld b, e                                       ; $4485: $43
    ld a, a                                       ; $4486: $7f
    jp nz, Jump_09a_40fc                          ; $4487: $c2 $fc $40

    add e                                         ; $448a: $83
    ld c, b                                       ; $448b: $48
    jr z, jr_09a_44d6                             ; $448c: $28 $48

    ld c, $f1                                     ; $448e: $0e $f1
    ld e, $20                                     ; $4490: $1e $20
    inc d                                         ; $4492: $14

jr_09a_4493:
    nop                                           ; $4493: $00
    sub d                                         ; $4494: $92
    add hl, hl                                    ; $4495: $29
    rst $28                                       ; $4496: $ef
    ld [hl], c                                    ; $4497: $71
    ld d, e                                       ; $4498: $53
    ld sp, hl                                     ; $4499: $f9
    ld [c], a                                     ; $449a: $e2
    db $fd                                        ; $449b: $fd
    nop                                           ; $449c: $00
    pop de                                        ; $449d: $d1
    db $fc                                        ; $449e: $fc
    ld [hl], b                                    ; $449f: $70
    ld a, d                                       ; $44a0: $7a
    xor c                                         ; $44a1: $a9
    db $fd                                        ; $44a2: $fd
    ld d, d                                       ; $44a3: $52
    ei                                            ; $44a4: $fb
    inc bc                                        ; $44a5: $03
    add l                                         ; $44a6: $85
    rst $30                                       ; $44a7: $f7
    adc d                                         ; $44a8: $8a
    xor a                                         ; $44a9: $af
    inc d                                         ; $44aa: $14
    ld e, [hl]                                    ; $44ab: $5e
    ld d, b                                       ; $44ac: $50
    ld a, [bc]                                    ; $44ad: $0a
    ld [hl], b                                    ; $44ae: $70
    db $10                                        ; $44af: $10
    ld b, b                                       ; $44b0: $40
    cp $b2                                        ; $44b1: $fe $b2
    jr c, jr_09a_4456                             ; $44b3: $38 $a1

    ld a, [$f501]                                 ; $44b5: $fa $01 $f5
    add d                                         ; $44b8: $82
    db $e3                                        ; $44b9: $e3
    db $10                                        ; $44ba: $10
    dec b                                         ; $44bb: $05
    rst $30                                       ; $44bc: $f7
    ld a, [bc]                                    ; $44bd: $0a
    jr nz, jr_09a_44c8                            ; $44be: $20 $08

    inc a                                         ; $44c0: $3c
    ld d, b                                       ; $44c1: $50
    ld a, b                                       ; $44c2: $78
    nop                                           ; $44c3: $00
    ld b, b                                       ; $44c4: $40
    ld de, $0189                                  ; $44c5: $11 $89 $01

jr_09a_44c8:
    ld de, $aa00                                  ; $44c8: $11 $00 $aa
    ld bc, $0255                                  ; $44cb: $01 $55 $02
    nop                                           ; $44ce: $00
    jr z, @+$13                                   ; $44cf: $28 $11

    ld d, b                                       ; $44d1: $50
    xor b                                         ; $44d2: $a8
    add b                                         ; $44d3: $80
    jr nc, jr_09a_44dc                            ; $44d4: $30 $06

jr_09a_44d6:
    or c                                          ; $44d6: $b1
    nop                                           ; $44d7: $00
    dec a                                         ; $44d8: $3d
    add d                                         ; $44d9: $82
    or e                                          ; $44da: $b3
    dec h                                         ; $44db: $25

jr_09a_44dc:
    rst $00                                       ; $44dc: $c7
    ld a, [de]                                    ; $44dd: $1a
    xor a                                         ; $44de: $af
    inc d                                         ; $44df: $14
    ld b, e                                       ; $44e0: $43
    ld e, $20                                     ; $44e1: $1e $20
    ld [$0501], sp                                ; $44e3: $08 $01 $05
    ld [$7888], sp                                ; $44e6: $08 $88 $78
    ld [bc], a                                    ; $44e9: $02
    sub b                                         ; $44ea: $90
    ld [bc], a                                    ; $44eb: $02
    nop                                           ; $44ec: $00
    ld [$5080], sp                                ; $44ed: $08 $80 $50
    ld b, b                                       ; $44f0: $40
    jr z, jr_09a_4493                             ; $44f1: $28 $a0

    nop                                           ; $44f3: $00
    ld b, $10                                     ; $44f4: $06 $10
    jr z, @+$05                                   ; $44f6: $28 $03

    sub c                                         ; $44f8: $91
    jp $9303                                      ; $44f9: $c3 $03 $93


    rlca                                          ; $44fc: $07
    inc c                                         ; $44fd: $0c
    inc l                                         ; $44fe: $2c
    nop                                           ; $44ff: $00
    ld a, [hl-]                                   ; $4500: $3a
    ld [hl], b                                    ; $4501: $70
    and b                                         ; $4502: $a0
    ret nz                                        ; $4503: $c0

    ldh [$f0], a                                  ; $4504: $e0 $f0
    ret nz                                        ; $4506: $c0

    rst $20                                       ; $4507: $e7
    nop                                           ; $4508: $00
    add [hl]                                      ; $4509: $86
    ret                                           ; $450a: $c9


    add hl, bc                                    ; $450b: $09
    sub a                                         ; $450c: $97
    rla                                           ; $450d: $17
    cpl                                           ; $450e: $2f
    ld a, [hl+]                                   ; $450f: $2a
    ld e, a                                       ; $4510: $5f
    inc e                                         ; $4511: $1c
    ld e, a                                       ; $4512: $5f
    cp a                                          ; $4513: $bf
    or $cc                                        ; $4514: $f6 $cc
    inc b                                         ; $4516: $04
    ld c, d                                       ; $4517: $4a
    ld [bc], a                                    ; $4518: $02
    ld h, l                                       ; $4519: $65
    dec d                                         ; $451a: $15
    xor d                                         ; $451b: $aa
    rst $38                                       ; $451c: $ff
    ld l, b                                       ; $451d: $68
    ld d, b                                       ; $451e: $50
    ld [$1002], sp                                ; $451f: $08 $02 $10
    ld c, b                                       ; $4522: $48
    dec d                                         ; $4523: $15
    db $10                                        ; $4524: $10
    ld [$0000], sp                                ; $4525: $08 $00 $00
    ldh [rP1], a                                  ; $4528: $e0 $00
    ld h, b                                       ; $452a: $60
    sub b                                         ; $452b: $90
    sub b                                         ; $452c: $90
    add sp, -$18                                  ; $452d: $e8 $e8
    db $f4                                        ; $452f: $f4
    or h                                          ; $4530: $b4
    ld a, [$da00]                                 ; $4531: $fa $00 $da
    db $fd                                        ; $4534: $fd
    ld l, a                                       ; $4535: $6f
    db $fd                                        ; $4536: $fd
    ld h, e                                       ; $4537: $63
    cp h                                          ; $4538: $bc
    push de                                       ; $4539: $d5
    cp d                                          ; $453a: $ba
    nop                                           ; $453b: $00
    ld l, [hl]                                    ; $453c: $6e
    or c                                          ; $453d: $b1
    xor l                                         ; $453e: $ad
    db $d3                                        ; $453f: $d3
    sub $e9                                       ; $4540: $d6 $e9
    xor b                                         ; $4542: $a8
    rst $30                                       ; $4543: $f7
    db $10                                        ; $4544: $10
    or a                                          ; $4545: $b7
    ld hl, sp-$0e                                 ; $4546: $f8 $f2
    ld a, $00                                     ; $4548: $3e $00
    rst $38                                       ; $454a: $ff
    nop                                           ; $454b: $00
    cp $01                                        ; $454c: $fe $01
    inc c                                         ; $454e: $0c
    ld a, l                                       ; $454f: $7d
    add e                                         ; $4550: $83
    cp $01                                        ; $4551: $fe $01
    add h                                         ; $4553: $84
    ld bc, $100e                                  ; $4554: $01 $0e $10
    ld a, a                                       ; $4557: $7f
    add b                                         ; $4558: $80
    nop                                           ; $4559: $00
    rst $38                                       ; $455a: $ff
    nop                                           ; $455b: $00
    cp a                                          ; $455c: $bf
    ret nz                                        ; $455d: $c0

    ld a, [hl]                                    ; $455e: $7e
    add c                                         ; $455f: $81
    push af                                       ; $4560: $f5
    ld a, [bc]                                    ; $4561: $0a
    add b                                         ; $4562: $80
    ld e, h                                       ; $4563: $5c
    ld [$3dc6], sp                                ; $4564: $08 $c6 $3d

jr_09a_4567:
    ld l, e                                       ; $4567: $6b
    sbc l                                         ; $4568: $9d
    or [hl]                                       ; $4569: $b6
    ld c, l                                       ; $456a: $4d
    ld d, l                                       ; $456b: $55
    nop                                           ; $456c: $00
    db $eb                                        ; $456d: $eb
    xor e                                         ; $456e: $ab
    ld d, a                                       ; $456f: $57
    rla                                           ; $4570: $17
    rst $28                                       ; $4571: $ef
    rst $28                                       ; $4572: $ef
    dec de                                        ; $4573: $1b
    ld e, l                                       ; $4574: $5d
    nop                                           ; $4575: $00
    di                                            ; $4576: $f3
    db $eb                                        ; $4577: $eb
    db $fc                                        ; $4578: $fc
    ld [hl], l                                    ; $4579: $75
    ld a, [hl]                                    ; $457a: $7e
    ld l, d                                       ; $457b: $6a
    ld [hl], a                                    ; $457c: $77
    dec h                                         ; $457d: $25

jr_09a_457e:
    ld bc, $1e3f                                  ; $457e: $01 $3f $1e
    rra                                           ; $4581: $1f
    rrca                                          ; $4582: $0f
    rrca                                          ; $4583: $0f
    inc bc                                        ; $4584: $03
    inc bc                                        ; $4585: $03
    ld c, $02                                     ; $4586: $0e $02
    nop                                           ; $4588: $00
    rst $38                                       ; $4589: $ff
    db $dd                                        ; $458a: $dd
    halt                                          ; $458b: $76
    cp d                                          ; $458c: $ba
    ld h, a                                       ; $458d: $67
    ld [hl], l                                    ; $458e: $75
    rst $08                                       ; $458f: $cf
    xor d                                         ; $4590: $aa
    ld bc, $55df                                  ; $4591: $01 $df $55
    cp a                                          ; $4594: $bf
    xor d                                         ; $4595: $aa
    rst $30                                       ; $4596: $f7
    ld a, a                                       ; $4597: $7f
    ld a, a                                       ; $4598: $7f
    db $10                                        ; $4599: $10
    jr z, jr_09a_459c                             ; $459a: $28 $00

jr_09a_459c:
    ld [$559f], a                                 ; $459c: $ea $9f $55
    cp a                                          ; $459f: $bf
    xor e                                         ; $45a0: $ab
    ld [hl], a                                    ; $45a1: $77

jr_09a_45a2:
    cp $fe                                        ; $45a2: $fe $fe
    nop                                           ; $45a4: $00
    xor c                                         ; $45a5: $a9
    rst $38                                       ; $45a6: $ff
    sbc $76                                       ; $45a7: $de $76
    cp d                                          ; $45a9: $ba
    ld h, [hl]                                    ; $45aa: $66
    ld [hl], h                                    ; $45ab: $74
    call z, $a804                                 ; $45ac: $cc $04 $a8
    ret c                                         ; $45af: $d8

    jr nc, jr_09a_45a2                            ; $45b0: $30 $f0

    ret nz                                        ; $45b2: $c0

    sbc l                                         ; $45b3: $9d
    ld [bc], a                                    ; $45b4: $02
    inc hl                                        ; $45b5: $23
    rlca                                          ; $45b6: $07
    ld bc, $1c04                                  ; $45b7: $01 $04 $1c
    ld [hl-], a                                   ; $45ba: $32
    ldh a, [$c4]                                  ; $45bb: $f0 $c4
    ret nz                                        ; $45bd: $c0

    db $10                                        ; $45be: $10
    sub b                                         ; $45bf: $90
    ld [bc], a                                    ; $45c0: $02
    nop                                           ; $45c1: $00
    add h                                         ; $45c2: $84
    nop                                           ; $45c3: $00
    ld d, d                                       ; $45c4: $52
    ld bc, $00f7                                  ; $45c5: $01 $f7 $00
    jp c, Jump_000_0080                           ; $45c8: $da $80 $00

    ld e, a                                       ; $45cb: $5f
    ld b, b                                       ; $45cc: $40
    ld a, a                                       ; $45cd: $7f
    jr nz, jr_09a_4567                            ; $45ce: $20 $97

    inc de                                        ; $45d0: $13
    dec bc                                        ; $45d1: $0b
    inc e                                         ; $45d2: $1c
    nop                                           ; $45d3: $00
    ld [hl], $70                                  ; $45d4: $36 $70
    db $ed                                        ; $45d6: $ed
    ret nz                                        ; $45d7: $c0

    ld a, a                                       ; $45d8: $7f
    inc bc                                        ; $45d9: $03
    cp a                                          ; $45da: $bf
    inc c                                         ; $45db: $0c
    inc b                                         ; $45dc: $04
    rst $30                                       ; $45dd: $f7
    jr nc, jr_09a_457e                            ; $45de: $30 $9e

    ret nz                                        ; $45e0: $c0

    ei                                            ; $45e1: $fb
    ld a, [bc]                                    ; $45e2: $0a
    inc bc                                        ; $45e3: $03
    cp e                                          ; $45e4: $bb
    nop                                           ; $45e5: $00

jr_09a_45e6:
    ld b, b                                       ; $45e6: $40
    or $18                                        ; $45e7: $f6 $18
    inc bc                                        ; $45e9: $03
    push de                                       ; $45ea: $d5
    nop                                           ; $45eb: $00
    cp a                                          ; $45ec: $bf
    nop                                           ; $45ed: $00
    ld e, [hl]                                    ; $45ee: $5e
    nop                                           ; $45ef: $00
    nop                                           ; $45f0: $00
    ld a, d                                       ; $45f1: $7a
    inc bc                                        ; $45f2: $03
    xor l                                         ; $45f3: $ad
    inc c                                         ; $45f4: $0c
    and b                                         ; $45f5: $a0
    jr nc, @-$3a                                  ; $45f6: $30 $c4

    ret nz                                        ; $45f8: $c0

    nop                                           ; $45f9: $00
    nop                                           ; $45fa: $00
    rlca                                          ; $45fb: $07
    rrca                                          ; $45fc: $0f
    inc e                                         ; $45fd: $1c
    cp e                                          ; $45fe: $bb
    ld [hl], b                                    ; $45ff: $70
    dec [hl]                                      ; $4600: $35
    nop                                           ; $4601: $00
    nop                                           ; $4602: $00
    ld a, e                                       ; $4603: $7b
    nop                                           ; $4604: $00
    ccf                                           ; $4605: $3f
    add b                                         ; $4606: $80
    ld a, [de]                                    ; $4607: $1a
    ld b, b                                       ; $4608: $40
    ld h, $20                                     ; $4609: $26 $20
    nop                                           ; $460b: $00
    rst $18                                       ; $460c: $df
    nop                                           ; $460d: $00
    or a                                          ; $460e: $b7
    nop                                           ; $460f: $00
    rst $10                                       ; $4610: $d7
    nop                                           ; $4611: $00
    cp $00                                        ; $4612: $fe $00
    nop                                           ; $4614: $00
    sbc c                                         ; $4615: $99
    inc bc                                        ; $4616: $03
    ld h, h                                       ; $4617: $64
    inc c                                         ; $4618: $0c
    or c                                          ; $4619: $b1
    jr nc, jr_09a_45e6                            ; $461a: $30 $ca

    ret nz                                        ; $461c: $c0

    nop                                           ; $461d: $00
    ld a, c                                       ; $461e: $79
    inc bc                                        ; $461f: $03
    db $e4                                        ; $4620: $e4
    inc c                                         ; $4621: $0c
    or b                                          ; $4622: $b0
    jr nc, @+$44                                  ; $4623: $30 $42

    ret nz                                        ; $4625: $c0

    nop                                           ; $4626: $00
    inc b                                         ; $4627: $04
    add b                                         ; $4628: $80
    ld [de], a                                    ; $4629: $12
    ret nz                                        ; $462a: $c0

    nop                                           ; $462b: $00
    ld h, b                                       ; $462c: $60
    jr nz, jr_09a_4660                            ; $462d: $20 $31

    ld b, b                                       ; $462f: $40
    ld [$1068], sp                                ; $4630: $08 $68 $10
    ld b, b                                       ; $4633: $40
    ld bc, $0720                                  ; $4634: $01 $20 $07
    inc c                                         ; $4637: $0c
    inc e                                         ; $4638: $1c
    nop                                           ; $4639: $00
    ld [hl+], a                                   ; $463a: $22
    ld [hl], b                                    ; $463b: $70
    ret nc                                        ; $463c: $d0

    ret nz                                        ; $463d: $c0

    sub e                                         ; $463e: $93
    inc de                                        ; $463f: $13
    ld c, h                                       ; $4640: $4c
    inc e                                         ; $4641: $1c
    nop                                           ; $4642: $00
    ld hl, $c870                                  ; $4643: $21 $70 $c8
    ret nz                                        ; $4646: $c0

    inc d                                         ; $4647: $14
    add b                                         ; $4648: $80
    add b                                         ; $4649: $80
    ret nz                                        ; $464a: $c0

    ld b, c                                       ; $464b: $41
    ld c, d                                       ; $464c: $4a
    jr nz, jr_09a_464f                            ; $464d: $20 $00

jr_09a_464f:
    dec b                                         ; $464f: $05
    nop                                           ; $4650: $00
    jr nz, jr_09a_4653                            ; $4651: $20 $00

jr_09a_4653:
    ld [de], a                                    ; $4653: $12
    jr nz, jr_09a_4656                            ; $4654: $20 $00

jr_09a_4656:
    nop                                           ; $4656: $00
    add e                                         ; $4657: $83

jr_09a_4658:
    rlca                                          ; $4658: $07
    inc l                                         ; $4659: $2c
    inc e                                         ; $465a: $1c
    inc [hl]                                      ; $465b: $34
    ld [hl], b                                    ; $465c: $70
    adc c                                         ; $465d: $89
    ret nz                                        ; $465e: $c0

    nop                                           ; $465f: $00

jr_09a_4660:
    inc de                                        ; $4660: $13
    rra                                           ; $4661: $1f
    dec l                                         ; $4662: $2d
    inc e                                         ; $4663: $1c
    jr nc, @+$72                                  ; $4664: $30 $70

    call nc, Call_000_02c0                        ; $4666: $d4 $c0 $02
    ld hl, $0200                                  ; $4669: $21 $00 $02
    nop                                           ; $466c: $00
    stop                                          ; $466d: $10 $00
    ld a, [hl+]                                   ; $466f: $2a
    dec bc                                        ; $4670: $0b
    ld [$0880], sp                                ; $4671: $08 $80 $08
    nop                                           ; $4674: $00
    adc b                                         ; $4675: $88
    ld bc, $0703                                  ; $4676: $01 $03 $07
    nop                                           ; $4679: $00
    ld e, $30                                     ; $467a: $1e $30
    nop                                           ; $467c: $00
    ld a, a                                       ; $467d: $7f
    ret nz                                        ; $467e: $c0

    cp $13                                        ; $467f: $fe $13
    rra                                           ; $4681: $1f
    inc c                                         ; $4682: $0c
    inc e                                         ; $4683: $1c
    inc d                                         ; $4684: $14
    nop                                           ; $4685: $00
    ld d, b                                       ; $4686: $50
    ld [de], a                                    ; $4687: $12
    add b                                         ; $4688: $80
    inc b                                         ; $4689: $04
    nop                                           ; $468a: $00
    ld [bc], a                                    ; $468b: $02
    ld b, b                                       ; $468c: $40
    nop                                           ; $468d: $00
    ld a, [bc]                                    ; $468e: $0a
    jr nz, jr_09a_46b5                            ; $468f: $20 $24

    ld sp, $6022                                  ; $4691: $31 $22 $60
    dec b                                         ; $4694: $05
    jr z, @+$2a                                   ; $4695: $28 $28

    nop                                           ; $4697: $00
    add d                                         ; $4698: $82
    add b                                         ; $4699: $80
    ld h, b                                       ; $469a: $60
    nop                                           ; $469b: $00
    db $10                                        ; $469c: $10
    ld [hl], b                                    ; $469d: $70
    ld b, d                                       ; $469e: $42
    ret nz                                        ; $469f: $c0

    inc hl                                        ; $46a0: $23
    rlca                                          ; $46a1: $07
    inc c                                         ; $46a2: $0c
    nop                                           ; $46a3: $00
    rra                                           ; $46a4: $1f
    jr nz, jr_09a_4726                            ; $46a5: $20 $7f

    ret nz                                        ; $46a7: $c0

    push af                                       ; $46a8: $f5
    nop                                           ; $46a9: $00
    cp e                                          ; $46aa: $bb
    add b                                         ; $46ab: $80
    dec b                                         ; $46ac: $05
    rst $18                                       ; $46ad: $df
    ld b, b                                       ; $46ae: $40
    ld l, l                                       ; $46af: $6d
    jr nz, jr_09a_46ed                            ; $46b0: $20 $3b

    push bc                                       ; $46b2: $c5
    nop                                           ; $46b3: $00
    halt                                          ; $46b4: $76

jr_09a_46b5:
    ret                                           ; $46b5: $c9


    nop                                           ; $46b6: $00
    nop                                           ; $46b7: $00
    rst $28                                       ; $46b8: $ef
    inc bc                                        ; $46b9: $03
    rst $38                                       ; $46ba: $ff
    ld b, $7c                                     ; $46bb: $06 $7c
    dec sp                                        ; $46bd: $3b
    ldh a, [$ed]                                  ; $46be: $f0 $ed
    ld b, h                                       ; $46c0: $44
    ret nz                                        ; $46c1: $c0

    db $e4                                        ; $46c2: $e4
    ld a, [bc]                                    ; $46c3: $0a
    ccf                                           ; $46c4: $3f
    ret nz                                        ; $46c5: $c0

    ld a, a                                       ; $46c6: $7f
    xor d                                         ; $46c7: $aa
    add hl, bc                                    ; $46c8: $09
    ret nz                                        ; $46c9: $c0

    ld a, a                                       ; $46ca: $7f
    ld bc, $3ec0                                  ; $46cb: $01 $c0 $3e
    pop bc                                        ; $46ce: $c1
    rst $20                                       ; $46cf: $e7
    inc a                                         ; $46d0: $3c
    rst $38                                       ; $46d1: $ff
    jr jr_09a_4658                                ; $46d2: $18 $84

    ld bc, $c6c0                                  ; $46d4: $01 $c0 $c6
    ld bc, $0b54                                  ; $46d7: $01 $54 $0b
    ld e, d                                       ; $46da: $5a
    and l                                         ; $46db: $a5
    ld a, l                                       ; $46dc: $7d
    jp nz, $c33e                                  ; $46dd: $c2 $3e $c3

    jr nc, jr_09a_4761                            ; $46e0: $30 $7f

    pop bc                                        ; $46e2: $c1
    ld [hl+], a                                   ; $46e3: $22
    nop                                           ; $46e4: $00
    inc h                                         ; $46e5: $24
    nop                                           ; $46e6: $00
    dec d                                         ; $46e7: $15
    ld [$ff00], a                                 ; $46e8: $ea $00 $ff
    nop                                           ; $46eb: $00
    inc a                                         ; $46ec: $3c

jr_09a_46ed:
    ld h, [hl]                                    ; $46ed: $66
    ld e, d                                       ; $46ee: $5a
    rst $20                                       ; $46ef: $e7
    rst $38                                       ; $46f0: $ff
    and l                                         ; $46f1: $a5
    swap h                                        ; $46f2: $cb $34
    ld [$24ff], sp                                ; $46f4: $08 $ff $24
    rst $28                                       ; $46f7: $ef
    rst $30                                       ; $46f8: $f7
    or $0b                                        ; $46f9: $f6 $0b
    ld bc, $2805                                  ; $46fb: $01 $05 $28
    dec b                                         ; $46fe: $05
    ld a, [bc]                                    ; $46ff: $0a
    db $10                                        ; $4700: $10
    ld d, l                                       ; $4701: $55
    add b                                         ; $4702: $80
    xor d                                         ; $4703: $aa
    xor b                                         ; $4704: $a8
    inc b                                         ; $4705: $04
    ld a, [hl+]                                   ; $4706: $2a
    or c                                          ; $4707: $b1
    inc bc                                        ; $4708: $03
    ld d, c                                       ; $4709: $51
    xor d                                         ; $470a: $aa
    inc b                                         ; $470b: $04
    db $10                                        ; $470c: $10
    ld d, l                                       ; $470d: $55
    ld d, b                                       ; $470e: $50
    ld [bc], a                                    ; $470f: $02
    dec d                                         ; $4710: $15
    ld [$18aa], sp                                ; $4711: $08 $aa $18
    nop                                           ; $4714: $00
    nop                                           ; $4715: $00
    add d                                         ; $4716: $82
    ld bc, $0855                                  ; $4717: $01 $55 $08
    adc d                                         ; $471a: $8a
    db $10                                        ; $471b: $10
    ld de, $1480                                  ; $471c: $11 $80 $14
    adc d                                         ; $471f: $8a
    nop                                           ; $4720: $00
    dec b                                         ; $4721: $05
    jr nz, jr_09a_4724                            ; $4722: $20 $00

jr_09a_4724:
    ld d, h                                       ; $4724: $54
    ld l, a                                       ; $4725: $6f

jr_09a_4726:
    ld b, $f7                                     ; $4726: $06 $f7
    nop                                           ; $4728: $00
    ld b, b                                       ; $4729: $40
    db $ed                                        ; $472a: $ed
    rra                                           ; $472b: $1f
    ld bc, $037f                                  ; $472c: $01 $7f $03
    di                                            ; $472f: $f3
    inc b                                         ; $4730: $04
    db $ec                                        ; $4731: $ec
    ld [hl-], a                                   ; $4732: $32
    ld e, $f8                                     ; $4733: $1e $f8
    reti                                          ; $4735: $d9


    call z, Call_000_0b46                         ; $4736: $cc $46 $0b
    ld c, d                                       ; $4739: $4a
    inc bc                                        ; $473a: $03
    ld [hl], $0a                                  ; $473b: $36 $0a
    jr jr_09a_4742                                ; $473d: $18 $03

    ld a, h                                       ; $473f: $7c
    nop                                           ; $4740: $00
    add e                                         ; $4741: $83

jr_09a_4742:
    ld de, $0a15                                  ; $4742: $11 $15 $0a
    ld [$5001], sp                                ; $4745: $08 $01 $50
    add d                                         ; $4748: $82
    ld a, [hl+]                                   ; $4749: $2a
    add b                                         ; $474a: $80
    ld d, h                                       ; $474b: $54
    xor b                                         ; $474c: $a8
    ld b, $11                                     ; $474d: $06 $11
    ld d, e                                       ; $474f: $53
    nop                                           ; $4750: $00
    db $db                                        ; $4751: $db
    ld l, [hl]                                    ; $4752: $6e
    ld bc, $006f                                  ; $4753: $01 $6f $00
    nop                                           ; $4756: $00
    sbc d                                         ; $4757: $9a
    nop                                           ; $4758: $00
    ld sp, hl                                     ; $4759: $f9
    inc bc                                        ; $475a: $03
    ld l, h                                       ; $475b: $6c
    inc c                                         ; $475c: $0c
    sub b                                         ; $475d: $90
    nop                                           ; $475e: $00
    jr nc, jr_09a_476b                            ; $475f: $30 $0a

jr_09a_4761:
    ret nz                                        ; $4761: $c0

    cp a                                          ; $4762: $bf
    ld b, d                                       ; $4763: $42
    ld a, h                                       ; $4764: $7c
    jp Jump_09a_74ff                              ; $4765: $c3 $ff $74


    add d                                         ; $4768: $82
    ld b, h                                       ; $4769: $44
    dec bc                                        ; $476a: $0b

jr_09a_476b:
    inc [hl]                                      ; $476b: $34
    db $10                                        ; $476c: $10
    or a                                          ; $476d: $b7
    inc b                                         ; $476e: $04
    add d                                         ; $476f: $82
    jp nz, $0116                                  ; $4770: $c2 $16 $01

    dec b                                         ; $4773: $05
    nop                                           ; $4774: $00
    add b                                         ; $4775: $80
    ld [$5010], sp                                ; $4776: $08 $10 $50
    add b                                         ; $4779: $80
    add b                                         ; $477a: $80
    or c                                          ; $477b: $b1
    add e                                         ; $477c: $83
    ld bc, $4c41                                  ; $477d: $01 $41 $4c
    ld [hl+], a                                   ; $4780: $22
    ld [hl], b                                    ; $4781: $70
    jp nz, $20c0                                  ; $4782: $c2 $c0 $20

    ld l, b                                       ; $4785: $68
    ld b, $60                                     ; $4786: $06 $60
    ld c, b                                       ; $4788: $48
    jr nc, jr_09a_478c                            ; $4789: $30 $01

    inc [hl]                                      ; $478b: $34

jr_09a_478c:
    ld bc, $9400                                  ; $478c: $01 $00 $94
    nop                                           ; $478f: $00
    jr nz, jr_09a_4793                            ; $4790: $20 $01

    nop                                           ; $4792: $00

jr_09a_4793:
    inc de                                        ; $4793: $13
    rlca                                          ; $4794: $07
    nop                                           ; $4795: $00
    inc e                                         ; $4796: $1c
    ld [de], a                                    ; $4797: $12
    ld [hl], b                                    ; $4798: $70
    push bc                                       ; $4799: $c5
    ret nz                                        ; $479a: $c0

    add d                                         ; $479b: $82
    sub b                                         ; $479c: $90
    nop                                           ; $479d: $00
    xor b                                         ; $479e: $a8
    inc b                                         ; $479f: $04
    ld d, b                                       ; $47a0: $50
    nop                                           ; $47a1: $00
    and b                                         ; $47a2: $a0
    ld a, l                                       ; $47a3: $7d
    inc b                                         ; $47a4: $04
    jr z, jr_09a_47ac                             ; $47a5: $28 $05

    nop                                           ; $47a7: $00
    inc d                                         ; $47a8: $14
    nop                                           ; $47a9: $00
    xor d                                         ; $47aa: $aa
    add hl, bc                                    ; $47ab: $09

jr_09a_47ac:
    ld l, [hl]                                    ; $47ac: $6e
    ld bc, $5884                                  ; $47ad: $01 $84 $58
    ld bc, $0300                                  ; $47b0: $01 $00 $03
    rlca                                          ; $47b3: $07
    ld c, b                                       ; $47b4: $48
    inc e                                         ; $47b5: $1c
    jr nc, jr_09a_4830                            ; $47b6: $30 $78

    ld b, b                                       ; $47b8: $40
    call z, RST_00                                ; $47b9: $cc $00 $00
    rlca                                          ; $47bc: $07
    dec l                                         ; $47bd: $2d
    inc e                                         ; $47be: $1c
    jr nz, jr_09a_4831                            ; $47bf: $20 $70

    ld bc, $05c0                                  ; $47c1: $01 $c0 $05
    ld a, [bc]                                    ; $47c4: $0a
    nop                                           ; $47c5: $00
    inc h                                         ; $47c6: $24
    nop                                           ; $47c7: $00
    ld b, d                                       ; $47c8: $42
    ld [hl], b                                    ; $47c9: $70
    ld bc, $2008                                  ; $47ca: $01 $08 $20
    rlca                                          ; $47cd: $07
    db $10                                        ; $47ce: $10
    stop                                          ; $47cf: $10 $00
    ld [$0190], sp                                ; $47d1: $08 $90 $01
    inc c                                         ; $47d4: $0c
    inc e                                         ; $47d5: $1c
    or b                                          ; $47d6: $b0
    ld [hl], b                                    ; $47d7: $70
    jr nz, @-$06                                  ; $47d8: $20 $f8

    ret z                                         ; $47da: $c8

    rrca                                          ; $47db: $0f
    ld [bc], a                                    ; $47dc: $02
    db $fc                                        ; $47dd: $fc
    jr @-$0e                                      ; $47de: $18 $f0

    ld b, h                                       ; $47e0: $44
    ret nz                                        ; $47e1: $c0

    add b                                         ; $47e2: $80
    ret nz                                        ; $47e3: $c0

    inc h                                         ; $47e4: $24
    ld bc, $0604                                  ; $47e5: $01 $04 $06
    ld c, d                                       ; $47e8: $4a
    inc bc                                        ; $47e9: $03
    jr nz, @+$03                                  ; $47ea: $20 $01

    ld de, $0190                                  ; $47ec: $11 $90 $01
    inc hl                                        ; $47ef: $23
    ld [$3e02], sp                                ; $47f0: $08 $02 $3e
    ld [hl], b                                    ; $47f3: $70
    ld l, a                                       ; $47f4: $6f
    db $10                                        ; $47f5: $10
    ld [de], a                                    ; $47f6: $12
    dec b                                         ; $47f7: $05
    ld a, $f0                                     ; $47f8: $3e $f0
    ei                                            ; $47fa: $fb
    ret nz                                        ; $47fb: $c0

    or a                                          ; $47fc: $b7
    rst $20                                       ; $47fd: $e7
    dec b                                         ; $47fe: $05
    ei                                            ; $47ff: $fb

Call_09a_4800:
jr_09a_4800:
    ld a, [bc]                                    ; $4800: $0a
    ld [bc], a                                    ; $4801: $02
    nop                                           ; $4802: $00
    xor h                                         ; $4803: $ac

Jump_09a_4804:
    ld b, $dc                                     ; $4804: $06 $dc
    inc bc                                        ; $4806: $03
    or a                                          ; $4807: $b7
    ld bc, $00fb                                  ; $4808: $01 $fb $00
    nop                                           ; $480b: $00
    and c                                         ; $480c: $a1
    inc bc                                        ; $480d: $03
    ld a, a                                       ; $480e: $7f
    inc c                                         ; $480f: $0c
    cp $30                                        ; $4810: $fe $30
    dec e                                         ; $4812: $1d
    ret nz                                        ; $4813: $c0

    nop                                           ; $4814: $00
    ld e, b                                       ; $4815: $58
    ld [bc], a                                    ; $4816: $02
    db $ec                                        ; $4817: $ec
    rrca                                          ; $4818: $0f
    jr nc, jr_09a_485a                            ; $4819: $30 $3f

    ld l, b                                       ; $481b: $68
    rst $08                                       ; $481c: $cf
    nop                                           ; $481d: $00
    inc b                                         ; $481e: $04
    rlca                                          ; $481f: $07
    sub d                                         ; $4820: $92
    inc bc                                        ; $4821: $03
    ld c, c                                       ; $4822: $49
    ld bc, $0116                                  ; $4823: $01 $16 $01
    ld [$2500], sp                                ; $4826: $08 $00 $25
    nop                                           ; $4829: $00
    ld e, d                                       ; $482a: $5a
    inc sp                                        ; $482b: $33
    ld [bc], a                                    ; $482c: $02
    ld a, a                                       ; $482d: $7f
    ld [bc], a                                    ; $482e: $02
    rst $28                                       ; $482f: $ef

jr_09a_4830:
    nop                                           ; $4830: $00

jr_09a_4831:
    dec bc                                        ; $4831: $0b
    db $fc                                        ; $4832: $fc
    ccf                                           ; $4833: $3f
    ld [hl], b                                    ; $4834: $70
    db $eb                                        ; $4835: $eb
    ret nz                                        ; $4836: $c0

    nop                                           ; $4837: $00
    ld b, h                                       ; $4838: $44
    ld bc, $b80b                                  ; $4839: $01 $0b $b8
    dec de                                        ; $483c: $1b
    ldh a, [$d5]                                  ; $483d: $f0 $d5
    ret nz                                        ; $483f: $c0

    rst $38                                       ; $4840: $ff
    ld l, [hl]                                    ; $4841: $6e
    ld [bc], a                                    ; $4842: $02
    nop                                           ; $4843: $00
    ld l, h                                       ; $4844: $6c
    nop                                           ; $4845: $00
    cp [hl]                                       ; $4846: $be
    nop                                           ; $4847: $00
    jp c, $bd00                                   ; $4848: $da $00 $bd

    nop                                           ; $484b: $00
    ld b, c                                       ; $484c: $41
    rst $08                                       ; $484d: $cf
    ld a, b                                       ; $484e: $78
    ld [bc], a                                    ; $484f: $02
    ld e, c                                       ; $4850: $59
    inc bc                                        ; $4851: $03
    call nz, Call_000_200c                        ; $4852: $c4 $0c $20
    ld [hl], b                                    ; $4855: $70
    ld [bc], a                                    ; $4856: $02
    nop                                           ; $4857: $00
    add e                                         ; $4858: $83
    rlca                                          ; $4859: $07

jr_09a_485a:
    ld c, $1c                                     ; $485a: $0e $1c
    ccf                                           ; $485c: $3f
    ld [hl], b                                    ; $485d: $70
    sbc a                                         ; $485e: $9f
    ret nz                                        ; $485f: $c0

    nop                                           ; $4860: $00
    ld h, $20                                     ; $4861: $26 $20
    dec d                                         ; $4863: $15
    db $10                                        ; $4864: $10
    add c                                         ; $4865: $81
    ld [$0424], sp                                ; $4866: $08 $24 $04
    ld d, b                                       ; $4869: $50
    ld l, l                                       ; $486a: $6d
    ld h, [hl]                                    ; $486b: $66
    nop                                           ; $486c: $00
    ld e, [hl]                                    ; $486d: $5e
    jr z, jr_09a_4870                             ; $486e: $28 $00

jr_09a_4870:
    ei                                            ; $4870: $fb
    inc bc                                        ; $4871: $03
    and h                                         ; $4872: $a4
    inc c                                         ; $4873: $0c
    inc b                                         ; $4874: $04
    and b                                         ; $4875: $a0
    jr c, jr_09a_4800                             ; $4876: $38 $88

    call z, $28f1                                 ; $4878: $cc $f1 $28
    ld bc, $30b0                                  ; $487b: $01 $b0 $30
    inc b                                         ; $487e: $04
    jp nz, Jump_000_24c0                          ; $487f: $c2 $c0 $24

    nop                                           ; $4882: $00
    ld c, d                                       ; $4883: $4a
    ld a, $05                                     ; $4884: $3e $05
    db $10                                        ; $4886: $10
    ld bc, $c8b0                                  ; $4887: $01 $b0 $c8
    ld [$0048], sp                                ; $488a: $08 $48 $00
    ld bc, $00c0                                  ; $488d: $01 $c0 $00
    rra                                           ; $4890: $1f
    jr nc, @+$79                                  ; $4891: $30 $77

    nop                                           ; $4893: $00
    dec bc                                        ; $4894: $0b
    xor $43                                       ; $4895: $ee $43
    rlca                                          ; $4897: $07
    adc l                                         ; $4898: $8d
    ld d, b                                       ; $4899: $50
    ld [bc], a                                    ; $489a: $02
    and b                                         ; $489b: $a0
    sub a                                         ; $489c: $97
    dec b                                         ; $489d: $05
    jp c, $8a08                                   ; $489e: $da $08 $8a

    ret nz                                        ; $48a1: $c0

    ld [$0302], sp                                ; $48a2: $08 $02 $03
    ld bc, $0793                                  ; $48a5: $01 $93 $07
    inc bc                                        ; $48a8: $03
    jr nz, jr_09a_48b3                            ; $48a9: $20 $08

    ld a, a                                       ; $48ab: $7f
    nop                                           ; $48ac: $00
    ret nz                                        ; $48ad: $c0

    db $ed                                        ; $48ae: $ed
    inc bc                                        ; $48af: $03
    rlca                                          ; $48b0: $07
    inc l                                         ; $48b1: $2c
    rra                                           ; $48b2: $1f

jr_09a_48b3:
    db $10                                        ; $48b3: $10
    rst $38                                       ; $48b4: $ff
    and d                                         ; $48b5: $a2
    ld a, a                                       ; $48b6: $7f
    nop                                           ; $48b7: $00
    push af                                       ; $48b8: $f5
    ld [hl], a                                    ; $48b9: $77
    ld bc, $00db                                  ; $48ba: $01 $db $00
    rst $28                                       ; $48bd: $ef
    push bc                                       ; $48be: $c5
    nop                                           ; $48bf: $00
    xor $a0                                       ; $48c0: $ee $a0
    pop de                                        ; $48c2: $d1
    ld [bc], a                                    ; $48c3: $02
    db $eb                                        ; $48c4: $eb
    rlca                                          ; $48c5: $07
    inc bc                                        ; $48c6: $03
    rst $38                                       ; $48c7: $ff
    db $10                                        ; $48c8: $10
    rst $38                                       ; $48c9: $ff
    add b                                         ; $48ca: $80
    rst $10                                       ; $48cb: $d7
    ld b, l                                       ; $48cc: $45
    ld [bc], a                                    ; $48cd: $02
    ldh a, [rSC]                                  ; $48ce: $f0 $02
    daa                                           ; $48d0: $27
    ldh a, [$ee]                                  ; $48d1: $f0 $ee
    db $10                                        ; $48d3: $10
    inc bc                                        ; $48d4: $03
    rst $10                                       ; $48d5: $d7
    ldh [rP1], a                                  ; $48d6: $e0 $00
    ld b, b                                       ; $48d8: $40
    cp [hl]                                       ; $48d9: $be
    rla                                           ; $48da: $17
    dec b                                         ; $48db: $05
    add b                                         ; $48dc: $80
    rst $30                                       ; $48dd: $f7
    ret nz                                        ; $48de: $c0

    ld a, h                                       ; $48df: $7c
    ldh [$3f], a                                  ; $48e0: $e0 $3f
    nop                                           ; $48e2: $00
    ld [hl], d                                    ; $48e3: $72
    rra                                           ; $48e4: $1f
    db $ec                                        ; $48e5: $ec
    rrca                                          ; $48e6: $0f
    jr nz, jr_09a_4928                            ; $48e7: $20 $3f

    ld b, b                                       ; $48e9: $40
    rst $38                                       ; $48ea: $ff
    nop                                           ; $48eb: $00
    inc bc                                        ; $48ec: $03
    rst $30                                       ; $48ed: $f7
    ld [$30df], sp                                ; $48ee: $08 $df $30
    or c                                          ; $48f1: $b1
    ret nz                                        ; $48f2: $c0

    rst $18                                       ; $48f3: $df
    ld [$af00], sp                                ; $48f4: $08 $00 $af
    nop                                           ; $48f7: $00
    ld a, a                                       ; $48f8: $7f

Call_09a_48f9:
    cpl                                           ; $48f9: $2f
    inc bc                                        ; $48fa: $03
    xor a                                         ; $48fb: $af
    ld [hl], e                                    ; $48fc: $73
    rra                                           ; $48fd: $1f
    dec b                                         ; $48fe: $05
    xor h                                         ; $48ff: $ac
    inc c                                         ; $4900: $0c
    jr nc, jr_09a_4933                            ; $4901: $30 $30

    ret z                                         ; $4903: $c8

    jr nc, jr_09a_4907                            ; $4904: $30 $01

    ld b, d                                       ; $4906: $42

jr_09a_4907:
    sbc b                                         ; $4907: $98
    ld [bc], a                                    ; $4908: $02
    ld bc, $0140                                  ; $4909: $01 $40 $01
    inc h                                         ; $490c: $24
    nop                                           ; $490d: $00
    ld b, b                                       ; $490e: $40
    nop                                           ; $490f: $00
    and d                                         ; $4910: $a2
    ld d, b                                       ; $4911: $50
    ld bc, $0300                                  ; $4912: $01 $00 $03
    rlca                                          ; $4915: $07
    xor l                                         ; $4916: $ad
    inc e                                         ; $4917: $1c
    ld [de], a                                    ; $4918: $12
    ld [hl], d                                    ; $4919: $72
    ret nz                                        ; $491a: $c0

    pop bc                                        ; $491b: $c1
    nop                                           ; $491c: $00
    sub e                                         ; $491d: $93
    rra                                           ; $491e: $1f
    ld c, $1c                                     ; $491f: $0e $1c
    dec hl                                        ; $4921: $2b
    ld [hl], b                                    ; $4922: $70
    sub a                                         ; $4923: $97
    ret nz                                        ; $4924: $c0

    ld b, d                                       ; $4925: $42
    ld a, [hl]                                    ; $4926: $7e
    ld e, b                                       ; $4927: $58

jr_09a_4928:
    inc bc                                        ; $4928: $03
    cp e                                          ; $4929: $bb
    nop                                           ; $492a: $00
    ld a, $00                                     ; $492b: $3e $00
    ld hl, sp+$0a                                 ; $492d: $f8 $0a
    ld bc, $7800                                  ; $492f: $01 $00 $78
    ret nz                                        ; $4932: $c0

jr_09a_4933:
    db $fc                                        ; $4933: $fc
    inc b                                         ; $4934: $04
    cp $02                                        ; $4935: $fe $02
    ld [hl], a                                    ; $4937: $77
    ld bc, $dd02                                  ; $4938: $01 $02 $dd
    nop                                           ; $493b: $00
    cp e                                          ; $493c: $bb
    ld [$9200], sp                                ; $493d: $08 $00 $92
    ret nc                                        ; $4940: $d0

    ld [de], a                                    ; $4941: $12
    ld hl, $0724                                  ; $4942: $21 $24 $07
    add b                                         ; $4945: $80
    xor b                                         ; $4946: $a8
    inc bc                                        ; $4947: $03
    call nc, $47c0                                ; $4948: $d4 $c0 $47
    ld bc, $24fc                                  ; $494b: $01 $fc $24
    add c                                         ; $494e: $81
    inc h                                         ; $494f: $24
    rlca                                          ; $4950: $07
    jr nz, @-$0e                                  ; $4951: $20 $f0

    db $10                                        ; $4953: $10
    ld a, b                                       ; $4954: $78
    ld [$76bc], sp                                ; $4955: $08 $bc $76
    ld l, $00                                     ; $4958: $2e $00
    rst $18                                       ; $495a: $df
    rst $38                                       ; $495b: $ff
    ld e, a                                       ; $495c: $5f
    rst $38                                       ; $495d: $ff
    cp a                                          ; $495e: $bf
    rst $18                                       ; $495f: $df
    ld e, e                                       ; $4960: $5b
    rst $38                                       ; $4961: $ff
    nop                                           ; $4962: $00
    rst $18                                       ; $4963: $df
    ld l, a                                       ; $4964: $6f
    ld l, a                                       ; $4965: $6f
    scf                                           ; $4966: $37
    or e                                          ; $4967: $b3
    sbc a                                         ; $4968: $9f
    db $dd                                        ; $4969: $dd
    rst $08                                       ; $496a: $cf
    nop                                           ; $496b: $00
    rst $30                                       ; $496c: $f7
    rst $28                                       ; $496d: $ef

jr_09a_496e:
    ld h, e                                       ; $496e: $63
    rst $28                                       ; $496f: $ef
    cp a                                          ; $4970: $bf
    rst $30                                       ; $4971: $f7
    ld e, a                                       ; $4972: $5f
    rst $30                                       ; $4973: $f7
    nop                                           ; $4974: $00
    ld a, [de]                                    ; $4975: $1a
    rst $30                                       ; $4976: $f7
    inc hl                                        ; $4977: $23
    rst $30                                       ; $4978: $f7
    ld e, e                                       ; $4979: $5b
    or a                                          ; $497a: $b7
    ld [hl+], a                                   ; $497b: $22
    rst $10                                       ; $497c: $d7
    nop                                           ; $497d: $00
    adc e                                         ; $497e: $8b
    ld [hl], a                                    ; $497f: $77
    ld b, c                                       ; $4980: $41
    or a                                          ; $4981: $b7
    and e                                         ; $4982: $a3
    ld d, a                                       ; $4983: $57
    ld h, c                                       ; $4984: $61
    rla                                           ; $4985: $17
    nop                                           ; $4986: $00
    jp $8337                                      ; $4987: $c3 $37 $83


    ld [hl], a                                    ; $498a: $77
    ld b, e                                       ; $498b: $43
    or a                                          ; $498c: $b7
    add e                                         ; $498d: $83
    ld [hl], a                                    ; $498e: $77
    nop                                           ; $498f: $00
    and d                                         ; $4990: $a2
    ld d, a                                       ; $4991: $57
    ld b, e                                       ; $4992: $43
    or a                                          ; $4993: $b7
    pop af                                        ; $4994: $f1
    rlca                                          ; $4995: $07
    ld [hl], e                                    ; $4996: $73
    rlca                                          ; $4997: $07
    nop                                           ; $4998: $00
    and e                                         ; $4999: $a3
    rla                                           ; $499a: $17
    ld [hl], c                                    ; $499b: $71
    rlca                                          ; $499c: $07
    or e                                          ; $499d: $b3
    rlca                                          ; $499e: $07
    ld h, e                                       ; $499f: $63
    rla                                           ; $49a0: $17
    ld b, $d3                                     ; $49a1: $06 $d3
    scf                                           ; $49a3: $37
    cp a                                          ; $49a4: $bf
    rst $30                                       ; $49a5: $f7
    db $db                                        ; $49a6: $db
    jp nz, $8016                                  ; $49a7: $c2 $16 $80

    ld c, $05                                     ; $49aa: $0e $05
    db $ec                                        ; $49ac: $ec
    add b                                         ; $49ad: $80
    ld b, $7c                                     ; $49ae: $06 $7c
    ld c, $cf                                     ; $49b0: $0e $cf
    ld a, [bc]                                    ; $49b2: $0a
    dec b                                         ; $49b3: $05
    ld a, l                                       ; $49b4: $7d
    inc b                                         ; $49b5: $04
    rst $28                                       ; $49b6: $ef
    ld b, $2b                                     ; $49b7: $06 $2b
    add d                                         ; $49b9: $82
    nop                                           ; $49ba: $00
    db $10                                        ; $49bb: $10
    ret z                                         ; $49bc: $c8

    add e                                         ; $49bd: $83
    ld h, b                                       ; $49be: $60
    jp z, $c510                                   ; $49bf: $ca $10 $c5

    and h                                         ; $49c2: $a4
    nop                                           ; $49c3: $00
    di                                            ; $49c4: $f3
    ret nc                                        ; $49c5: $d0

    ei                                            ; $49c6: $fb
    and h                                         ; $49c7: $a4
    ei                                            ; $49c8: $fb
    ld [de], a                                    ; $49c9: $12
    ld sp, hl                                     ; $49ca: $f9
    add hl, bc                                    ; $49cb: $09
    ld bc, $06dc                                  ; $49cc: $01 $dc $06
    and $03                                       ; $49cf: $e6 $03
    db $d3                                        ; $49d1: $d3
    inc bc                                        ; $49d2: $03
    pop hl                                        ; $49d3: $e1
    rst $30                                       ; $49d4: $f7
    ld c, $40                                     ; $49d5: $0e $40
    ld a, a                                       ; $49d7: $7f
    jp c, $7f06                                   ; $49d8: $da $06 $7f

    rst $38                                       ; $49db: $ff
    ccf                                           ; $49dc: $3f
    rst $38                                       ; $49dd: $ff
    rla                                           ; $49de: $17
    ld a, a                                       ; $49df: $7f
    nop                                           ; $49e0: $00
    adc e                                         ; $49e1: $8b
    rst $38                                       ; $49e2: $ff
    ld bc, $82d0                                  ; $49e3: $01 $d0 $82
    db $e3                                        ; $49e6: $e3
    add e                                         ; $49e7: $83
    db $d3                                        ; $49e8: $d3
    jr nz, jr_09a_496e                            ; $49e9: $20 $83

    pop hl                                        ; $49eb: $e1
    ld [$e000], sp                                ; $49ec: $08 $00 $e0
    add hl, bc                                    ; $49ef: $09
    call c, $f0c2                                 ; $49f0: $dc $c2 $f0
    nop                                           ; $49f3: $00
    add b                                         ; $49f4: $80
    rst $38                                       ; $49f5: $ff
    ret nc                                        ; $49f6: $d0

    ld a, a                                       ; $49f7: $7f
    ld l, b                                       ; $49f8: $68
    cp a                                          ; $49f9: $bf
    or h                                          ; $49fa: $b4
    sbc $00                                       ; $49fb: $de $00
    sbc $ef                                       ; $49fd: $de $ef

Jump_09a_49ff:
    xor $77                                       ; $49ff: $ee $77
    rst $30                                       ; $4a01: $f7
    dec sp                                        ; $4a02: $3b
    ei                                            ; $4a03: $fb
    rra                                           ; $4a04: $1f
    add b                                         ; $4a05: $80
    ld l, $00                                     ; $4a06: $2e $00
    ld a, a                                       ; $4a08: $7f
    cp a                                          ; $4a09: $bf
    ld a, a                                       ; $4a0a: $7f
    ccf                                           ; $4a0b: $3f
    ld a, a                                       ; $4a0c: $7f
    sbc a                                         ; $4a0d: $9f
    ccf                                           ; $4a0e: $3f
    nop                                           ; $4a0f: $00
    ld c, a                                       ; $4a10: $4f
    sbc a                                         ; $4a11: $9f
    inc hl                                        ; $4a12: $23
    sbc a                                         ; $4a13: $9f
    add c                                         ; $4a14: $81
    db $d3                                        ; $4a15: $d3
    add c                                         ; $4a16: $81
    add sp, $20                                   ; $4a17: $e8 $20
    ret nz                                        ; $4a19: $c0

    db $f4                                        ; $4a1a: $f4
    ld [hl], e                                    ; $4a1b: $73
    inc b                                         ; $4a1c: $04
    db $ed                                        ; $4a1d: $ed
    ld c, b                                       ; $4a1e: $48
    cp $24                                        ; $4a1f: $fe $24
    ld [hl], a                                    ; $4a21: $77
    nop                                           ; $4a22: $00
    ld [$10f5], sp                                ; $4a23: $08 $f5 $10
    ld l, [hl]                                    ; $4a26: $6e
    ld a, [hl]                                    ; $4a27: $7e
    rrca                                          ; $4a28: $0f
    cp [hl]                                       ; $4a29: $be
    rlca                                          ; $4a2a: $07
    nop                                           ; $4a2b: $00
    ld e, a                                       ; $4a2c: $5f
    inc bc                                        ; $4a2d: $03
    cpl                                           ; $4a2e: $2f
    inc bc                                        ; $4a2f: $03
    ld d, $83                                     ; $4a30: $16 $83
    ld a, [bc]                                    ; $4a32: $0a
    ld b, e                                       ; $4a33: $43
    ld bc, $a306                                  ; $4a34: $01 $06 $a3
    ld [bc], a                                    ; $4a37: $02
    db $d3                                        ; $4a38: $d3
    ret nz                                        ; $4a39: $c0

    db $eb                                        ; $4a3a: $eb
    ret nz                                        ; $4a3b: $c0

    ld b, b                                       ; $4a3c: $40
    ld [$df00], sp                                ; $4a3d: $08 $00 $df
    jp c, $ecef                                   ; $4a40: $da $ef $ec

    ld [hl], a                                    ; $4a43: $77
    or $3b                                        ; $4a44: $f6 $3b
    ei                                            ; $4a46: $fb
    ld d, b                                       ; $4a47: $50
    dec e                                         ; $4a48: $1d
    ld [hl], b                                    ; $4a49: $70
    jr c, jr_09a_4a7b                             ; $4a4a: $38 $2f

    db $f4                                        ; $4a4c: $f4
    nop                                           ; $4a4d: $00
    add hl, hl                                    ; $4a4e: $29
    db $fd                                        ; $4a4f: $fd
    ld l, c                                       ; $4a50: $69
    inc bc                                        ; $4a51: $03
    nop                                           ; $4a52: $00
    ret nz                                        ; $4a53: $c0

    rrca                                          ; $4a54: $0f
    sub b                                         ; $4a55: $90
    dec a                                         ; $4a56: $3d
    add b                                         ; $4a57: $80
    db $eb                                        ; $4a58: $eb
    nop                                           ; $4a59: $00
    rst $30                                       ; $4a5a: $f7
    ld [bc], a                                    ; $4a5b: $02
    add b                                         ; $4a5c: $80
    db $fd                                        ; $4a5d: $fd
    ret nz                                        ; $4a5e: $c0

    ld a, d                                       ; $4a5f: $7a
    and b                                         ; $4a60: $a0
    ccf                                           ; $4a61: $3f
    ld e, a                                       ; $4a62: $5f
    ld bc, $5c2a                                  ; $4a63: $01 $2a $5c
    nop                                           ; $4a66: $00
    dec a                                         ; $4a67: $3d
    rrca                                          ; $4a68: $0f
    ld d, h                                       ; $4a69: $54
    ld a, b                                       ; $4a6a: $78
    inc bc                                        ; $4a6b: $03
    sbc b                                         ; $4a6c: $98
    inc bc                                        ; $4a6d: $03
    jr nz, jr_09a_4a74                            ; $4a6e: $20 $04

    ccf                                           ; $4a70: $3f
    jr nc, jr_09a_4ab8                            ; $4a71: $30 $45

    ld a, l                                       ; $4a73: $7d

jr_09a_4a74:
    cp a                                          ; $4a74: $bf
    inc b                                         ; $4a75: $04
    rst $38                                       ; $4a76: $ff
    nop                                           ; $4a77: $00
    rst $30                                       ; $4a78: $f7
    nop                                           ; $4a79: $00
    inc b                                         ; $4a7a: $04

jr_09a_4a7b:
    ccf                                           ; $4a7b: $3f
    sub a                                         ; $4a7c: $97
    ld [bc], a                                    ; $4a7d: $02
    add b                                         ; $4a7e: $80
    and e                                         ; $4a7f: $a3
    inc c                                         ; $4a80: $0c
    rst $38                                       ; $4a81: $ff
    ld bc, $006f                                  ; $4a82: $01 $6f $00
    call c, $f031                                 ; $4a85: $dc $31 $f0
    inc bc                                        ; $4a88: $03
    jp nz, $10c0                                  ; $4a89: $c2 $c0 $10

    ld d, b                                       ; $4a8c: $50
    ld [$3828], sp                                ; $4a8d: $08 $28 $38
    dec bc                                        ; $4a90: $0b
    xor $0f                                       ; $4a91: $ee $0f
    add b                                         ; $4a93: $80
    ld c, c                                       ; $4a94: $49
    dec bc                                        ; $4a95: $0b
    inc hl                                        ; $4a96: $23
    dec de                                        ; $4a97: $1b
    inc c                                         ; $4a98: $0c
    inc e                                         ; $4a99: $1c
    or h                                          ; $4a9a: $b4
    ld [hl], b                                    ; $4a9b: $70
    jp nc, $c000                                  ; $4a9c: $d2 $00 $c0

    ld hl, $8280                                  ; $4a9f: $21 $80 $82
    ret nz                                        ; $4aa2: $c0

    ld b, h                                       ; $4aa3: $44
    ldh [rNR41], a                                ; $4aa4: $e0 $20
    inc [hl]                                      ; $4aa6: $34
    or c                                          ; $4aa7: $b1
    ld b, b                                       ; $4aa8: $40
    dec h                                         ; $4aa9: $25
    inc bc                                        ; $4aaa: $03
    cp b                                          ; $4aab: $b8
    add hl, bc                                    ; $4aac: $09
    inc bc                                        ; $4aad: $03
    add sp, $04                                   ; $4aae: $e8 $04
    cpl                                           ; $4ab0: $2f
    ld [hl], b                                    ; $4ab1: $70
    inc b                                         ; $4ab2: $04
    jp c, Jump_000_02c0                           ; $4ab3: $da $c0 $02

    rlca                                          ; $4ab6: $07
    adc h                                         ; $4ab7: $8c

jr_09a_4ab8:
    ld e, b                                       ; $4ab8: $58
    inc b                                         ; $4ab9: $04
    jp nz, Jump_000_00c0                          ; $4aba: $c2 $c0 $00

    ld b, h                                       ; $4abd: $44
    add b                                         ; $4abe: $80
    adc b                                         ; $4abf: $88
    ret nz                                        ; $4ac0: $c0

    add l                                         ; $4ac1: $85
    ld h, b                                       ; $4ac2: $60
    ldh [$31], a                                  ; $4ac3: $e0 $31
    ld d, c                                       ; $4ac5: $51
    inc d                                         ; $4ac6: $14
    and h                                         ; $4ac7: $a4
    rlca                                          ; $4ac8: $07
    ld b, b                                       ; $4ac9: $40
    xor h                                         ; $4aca: $ac
    inc bc                                        ; $4acb: $03
    db $10                                        ; $4acc: $10
    dec b                                         ; $4acd: $05
    ld [$0380], sp                                ; $4ace: $08 $80 $03
    nop                                           ; $4ad1: $00
    add d                                         ; $4ad2: $82
    add b                                         ; $4ad3: $80
    inc de                                        ; $4ad4: $13
    rst $38                                       ; $4ad5: $ff
    rrca                                          ; $4ad6: $0f
    db $fc                                        ; $4ad7: $fc
    dec d                                         ; $4ad8: $15
    ldh a, [$15]                                  ; $4ad9: $f0 $15
    cp a                                          ; $4adb: $bf
    ret nz                                        ; $4adc: $c0

    ld e, e                                       ; $4add: $5b
    ld b, c                                       ; $4ade: $41
    ld [de], a                                    ; $4adf: $12
    cp [hl]                                       ; $4ae0: $be
    ld [hl-], a                                   ; $4ae1: $32
    dec b                                         ; $4ae2: $05
    push af                                       ; $4ae3: $f5
    dec bc                                        ; $4ae4: $0b
    ld [bc], a                                    ; $4ae5: $02
    nop                                           ; $4ae6: $00
    sub $00                                       ; $4ae7: $d6 $00
    cp c                                          ; $4ae9: $b9
    inc bc                                        ; $4aea: $03
    db $ec                                        ; $4aeb: $ec
    ld c, $92                                     ; $4aec: $0e $92
    ccf                                           ; $4aee: $3f
    nop                                           ; $4aef: $00
    add c                                         ; $4af0: $81
    rst $38                                       ; $4af1: $ff
    di                                            ; $4af2: $f3
    rra                                           ; $4af3: $1f
    call z, $b20c                                 ; $4af4: $cc $0c $b2
    jr nc, jr_09a_4b09                            ; $4af7: $30 $10

    add b                                         ; $4af9: $80
    ret nz                                        ; $4afa: $c0

    inc d                                         ; $4afb: $14
    and b                                         ; $4afc: $a0
    ld [bc], a                                    ; $4afd: $02
    stop                                          ; $4afe: $10 $00
    ld [bc], a                                    ; $4b00: $02
    add c                                         ; $4b01: $81
    ld e, b                                       ; $4b02: $58
    add hl, bc                                    ; $4b03: $09
    db $10                                        ; $4b04: $10
    ld [bc], a                                    ; $4b05: $02
    inc h                                         ; $4b06: $24
    ret c                                         ; $4b07: $d8

    inc b                                         ; $4b08: $04

jr_09a_4b09:
    ret c                                         ; $4b09: $d8

    ld a, [bc]                                    ; $4b0a: $0a
    dec sp                                        ; $4b0b: $3b
    ld [hl], b                                    ; $4b0c: $70
    db $dd                                        ; $4b0d: $dd
    nop                                           ; $4b0e: $00
    ret nz                                        ; $4b0f: $c0

    db $10                                        ; $4b10: $10
    add d                                         ; $4b11: $82
    ldh a, [rSB]                                  ; $4b12: $f0 $01
    ld h, [hl]                                    ; $4b14: $66
    ldh a, [$dc]                                  ; $4b15: $f0 $dc
    nop                                           ; $4b17: $00
    cp $6f                                        ; $4b18: $fe $6f
    cp $17                                        ; $4b1a: $fe $17
    cp $0b                                        ; $4b1c: $fe $0b
    cp $05                                        ; $4b1e: $fe $05
    ld b, b                                       ; $4b20: $40
    ld e, [hl]                                    ; $4b21: $5e
    db $fd                                        ; $4b22: $fd

Call_09a_4b23:
    inc bc                                        ; $4b23: $03
    ld a, $00                                     ; $4b24: $3e $00
    jp c, $fd10                                   ; $4b26: $da $10 $fd

    ld e, b                                       ; $4b29: $58
    nop                                           ; $4b2a: $00
    cp $2c                                        ; $4b2b: $fe $2c
    rst $38                                       ; $4b2d: $ff
    ld d, $7f                                     ; $4b2e: $16 $7f
    ld bc, $7dff                                  ; $4b30: $01 $ff $7d
    ld b, b                                       ; $4b33: $40
    ld c, $20                                     ; $4b34: $0e $20
    ld de, $1701                                  ; $4b36: $11 $01 $17
    add b                                         ; $4b39: $80
    dec bc                                        ; $4b3a: $0b
    ld b, b                                       ; $4b3b: $40
    dec b                                         ; $4b3c: $05
    nop                                           ; $4b3d: $00
    and b                                         ; $4b3e: $a0
    ld [bc], a                                    ; $4b3f: $02
    ret nc                                        ; $4b40: $d0

    sub d                                         ; $4b41: $92
    db $fd                                        ; $4b42: $fd
    ld a, [bc]                                    ; $4b43: $0a
    db $fd                                        ; $4b44: $fd
    inc d                                         ; $4b45: $14
    nop                                           ; $4b46: $00
    cp $01                                        ; $4b47: $fe $01
    cp $03                                        ; $4b49: $fe $03
    ld a, h                                       ; $4b4b: $7c
    rlca                                          ; $4b4c: $07
    xor e                                         ; $4b4d: $ab
    add e                                         ; $4b4e: $83
    nop                                           ; $4b4f: $00
    rla                                           ; $4b50: $17
    xor e                                         ; $4b51: $ab
    add a                                         ; $4b52: $87
    ld [hl+], a                                   ; $4b53: $22
    ld a, [hl]                                    ; $4b54: $7e
    inc b                                         ; $4b55: $04
    cp [hl]                                       ; $4b56: $be
    inc bc                                        ; $4b57: $03
    nop                                           ; $4b58: $00
    ld e, [hl]                                    ; $4b59: $5e
    ld bc, $c10a                                  ; $4b5a: $01 $0a $c1
    ld b, $99                                     ; $4b5d: $06 $99
    jp nz, Jump_000_10f2                          ; $4b5f: $c2 $f2 $10

    ld hl, sp+$1d                                 ; $4b62: $f8 $1d
    cp [hl]                                       ; $4b64: $be
    ld h, b                                       ; $4b65: $60
    add hl, bc                                    ; $4b66: $09
    jr nz, @-$04                                  ; $4b67: $20 $fa

    jr nc, @-$01                                  ; $4b69: $30 $fd

    ld b, b                                       ; $4b6b: $40
    jr jr_09a_4bae                                ; $4b6c: $18 $40

    ld [$09ff], sp                                ; $4b6e: $08 $ff $09
    rst $38                                       ; $4b71: $ff
    push de                                       ; $4b72: $d5
    rst $28                                       ; $4b73: $ef
    ld [hl], d                                    ; $4b74: $72
    nop                                           ; $4b75: $00
    rst $28                                       ; $4b76: $ef
    and c                                         ; $4b77: $a1
    rst $30                                       ; $4b78: $f7
    ld d, b                                       ; $4b79: $50
    rst $30                                       ; $4b7a: $f7
    inc l                                         ; $4b7b: $2c
    ld a, [$0058]                                 ; $4b7c: $fa $58 $00
    ld sp, hl                                     ; $4b7f: $f9
    ld l, $fc                                     ; $4b80: $2e $fc
    ld a, [de]                                    ; $4b82: $1a
    ld a, b                                       ; $4b83: $78
    rrca                                          ; $4b84: $0f
    ld [hl], $aa                                  ; $4b85: $36 $aa
    nop                                           ; $4b87: $00
    ld c, $87                                     ; $4b88: $0e $87
    rst $18                                       ; $4b8a: $df
    pop bc                                        ; $4b8b: $c1
    rst $20                                       ; $4b8c: $e7
    jr z, jr_09a_4c02                             ; $4b8d: $28 $73

    adc h                                         ; $4b8f: $8c
    nop                                           ; $4b90: $00
    add hl, sp                                    ; $4b91: $39
    ld b, [hl]                                    ; $4b92: $46
    inc e                                         ; $4b93: $1c
    rrca                                          ; $4b94: $0f
    adc [hl]                                      ; $4b95: $8e
    db $10                                        ; $4b96: $10
    inc d                                         ; $4b97: $14
    ld [$0808], sp                                ; $4b98: $08 $08 $08
    inc d                                         ; $4b9b: $14
    ld d, b                                       ; $4b9c: $50
    ld [bc], a                                    ; $4b9d: $02
    ld d, b                                       ; $4b9e: $50
    dec b                                         ; $4b9f: $05
    add d                                         ; $4ba0: $82
    add b                                         ; $4ba1: $80
    ld b, b                                       ; $4ba2: $40
    nop                                           ; $4ba3: $00
    ld b, b                                       ; $4ba4: $40
    jr nz, jr_09a_4bc7                            ; $4ba5: $20 $20

    and [hl]                                      ; $4ba7: $a6
    sbc $e3                                       ; $4ba8: $de $e3
    adc $51                                       ; $4baa: $ce $51
    nop                                           ; $4bac: $00
    ret z                                         ; $4bad: $c8

jr_09a_4bae:
    ld [hl+], a                                   ; $4bae: $22
    ret nz                                        ; $4baf: $c0

    sub [hl]                                      ; $4bb0: $96
    jp nz, $e712                                  ; $4bb1: $c2 $12 $e7

    dec bc                                        ; $4bb4: $0b
    ld d, $6f                                     ; $4bb5: $16 $6f
    dec d                                         ; $4bb7: $15
    rst $28                                       ; $4bb8: $ef
    xor $09                                       ; $4bb9: $ee $09
    ccf                                           ; $4bbb: $3f
    ld l, [hl]                                    ; $4bbc: $6e
    ld [bc], a                                    ; $4bbd: $02
    jp nz, $7f01                                  ; $4bbe: $c2 $01 $7f

    nop                                           ; $4bc1: $00
    dec bc                                        ; $4bc2: $0b
    ld a, a                                       ; $4bc3: $7f
    ld b, l                                       ; $4bc4: $45
    xor a                                         ; $4bc5: $af
    add d                                         ; $4bc6: $82

jr_09a_4bc7:
    sub a                                         ; $4bc7: $97
    ldh [$ce], a                                  ; $4bc8: $e0 $ce
    nop                                           ; $4bca: $00
    ld [hl], d                                    ; $4bcb: $72
    push hl                                       ; $4bcc: $e5
    ld [hl], d                                    ; $4bcd: $72
    pop af                                        ; $4bce: $f1
    inc e                                         ; $4bcf: $1c
    ld sp, hl                                     ; $4bd0: $f9
    ld l, $7d                                     ; $4bd1: $2e $7d
    ld [$fd14], sp                                ; $4bd3: $08 $14 $fd
    ld b, $7c                                     ; $4bd6: $06 $7c
    jr nz, jr_09a_4bf2                            ; $4bd8: $20 $18

    rra                                           ; $4bda: $1f
    ld a, a                                       ; $4bdb: $7f
    rra                                           ; $4bdc: $1f
    add b                                         ; $4bdd: $80
    inc b                                         ; $4bde: $04
    nop                                           ; $4bdf: $00
    rrca                                          ; $4be0: $0f
    cp a                                          ; $4be1: $bf
    dec b                                         ; $4be2: $05
    rst $38                                       ; $4be3: $ff
    ld [bc], a                                    ; $4be4: $02
    dec e                                         ; $4be5: $1d
    adc $00                                       ; $4be6: $ce $00
    nop                                           ; $4be8: $00
    xor l                                         ; $4be9: $ad
    ld a, h                                       ; $4bea: $7c
    rla                                           ; $4beb: $17
    ld a, [hl]                                    ; $4bec: $7e
    ld b, [hl]                                    ; $4bed: $46
    cp [hl]                                       ; $4bee: $be
    add e                                         ; $4bef: $83
    nop                                           ; $4bf0: $00
    dec a                                         ; $4bf1: $3d

jr_09a_4bf2:
    add h                                         ; $4bf2: $84
    db $db                                        ; $4bf3: $db
    add sp, -$39                                  ; $4bf4: $e8 $c7
    ld [bc], a                                    ; $4bf6: $02
    rst $38                                       ; $4bf7: $ff
    ld bc, $ef00                                  ; $4bf8: $01 $00 $ef
    ld [bc], a                                    ; $4bfb: $02
    ld e, a                                       ; $4bfc: $5f
    nop                                           ; $4bfd: $00
    ccf                                           ; $4bfe: $3f
    add c                                         ; $4bff: $81
    rla                                           ; $4c00: $17
    ld b, b                                       ; $4c01: $40

jr_09a_4c02:
    nop                                           ; $4c02: $00
    dec bc                                        ; $4c03: $0b
    and b                                         ; $4c04: $a0
    push bc                                       ; $4c05: $c5
    ld e, b                                       ; $4c06: $58
    ld [c], a                                     ; $4c07: $e2
    ld [hl], b                                    ; $4c08: $70
    db $e3                                        ; $4c09: $e3
    jr c, jr_09a_4c0c                             ; $4c0a: $38 $00

jr_09a_4c0c:
    pop af                                        ; $4c0c: $f1
    ld e, h                                       ; $4c0d: $5c
    ld hl, sp+$2e                                 ; $4c0e: $f8 $2e
    db $fc                                        ; $4c10: $fc
    ld de, $073a                                  ; $4c11: $11 $3a $07
    nop                                           ; $4c14: $00
    ld e, e                                       ; $4c15: $5b
    ld b, l                                       ; $4c16: $45
    adc e                                         ; $4c17: $8b
    ld [c], a                                     ; $4c18: $e2
    rst $00                                       ; $4c19: $c7
    ld [hl-], a                                   ; $4c1a: $32
    pop af                                        ; $4c1b: $f1
    ld e, $00                                     ; $4c1c: $1e $00
    halt                                          ; $4c1e: $76
    inc bc                                        ; $4c1f: $03
    or a                                          ; $4c20: $b7
    dec d                                         ; $4c21: $15
    ld l, a                                       ; $4c22: $6f
    ld [bc], a                                    ; $4c23: $02
    cpl                                           ; $4c24: $2f
    and c                                         ; $4c25: $a1
    ld bc, $c01f                                  ; $4c26: $01 $1f $c0
    xor a                                         ; $4c29: $af
    ret nz                                        ; $4c2a: $c0

    push bc                                       ; $4c2b: $c5
    ld e, c                                       ; $4c2c: $59
    inc bc                                        ; $4c2d: $03
    jr nc, jr_09a_4c94                            ; $4c2e: $30 $64

    db $10                                        ; $4c30: $10
    ld [hl], a                                    ; $4c31: $77
    nop                                           ; $4c32: $00
    sbc $30                                       ; $4c33: $de $30
    ld c, h                                       ; $4c35: $4c
    inc bc                                        ; $4c36: $03
    rst $00                                       ; $4c37: $c7
    rrca                                          ; $4c38: $0f
    db $fc                                        ; $4c39: $fc
    xor d                                         ; $4c3a: $aa
    jr nc, jr_09a_4c89                            ; $4c3b: $30 $4c

    inc b                                         ; $4c3d: $04
    ld c, $15                                     ; $4c3e: $0e $15
    ld [$0510], sp                                ; $4c40: $08 $10 $05
    xor b                                         ; $4c43: $a8
    db $10                                        ; $4c44: $10
    dec d                                         ; $4c45: $15
    ld [de], a                                    ; $4c46: $12
    nop                                           ; $4c47: $00
    ld l, a                                       ; $4c48: $6f
    add b                                         ; $4c49: $80
    adc a                                         ; $4c4a: $8f
    ld d, b                                       ; $4c4b: $50
    res 6, b                                      ; $4c4c: $cb $b0
    push hl                                       ; $4c4e: $e5
    ld d, b                                       ; $4c4f: $50
    ld bc, $28f3                                  ; $4c50: $01 $f3 $28
    ld a, c                                       ; $4c53: $79
    inc d                                         ; $4c54: $14
    inc a                                         ; $4c55: $3c
    ld a, [bc]                                    ; $4c56: $0a
    ld e, $44                                     ; $4c57: $1e $44
    ld b, $37                                     ; $4c59: $06 $37
    ld [$6000], sp                                ; $4c5b: $08 $00 $60
    dec b                                         ; $4c5e: $05
    dec [hl]                                      ; $4c5f: $35
    dec c                                         ; $4c60: $0d
    ld b, b                                       ; $4c61: $40
    ld a, [hl-]                                   ; $4c62: $3a
    dec d                                         ; $4c63: $15
    ldh [rNR14], a                                ; $4c64: $e0 $14
    ld b, b                                       ; $4c66: $40
    dec b                                         ; $4c67: $05
    add b                                         ; $4c68: $80
    ret nz                                        ; $4c69: $c0

    add hl, bc                                    ; $4c6a: $09
    xor b                                         ; $4c6b: $a8
    adc b                                         ; $4c6c: $88
    ldh [rIE], a                                  ; $4c6d: $e0 $ff
    sub a                                         ; $4c6f: $97
    add sp, $0c                                   ; $4c70: $e8 $0c
    nop                                           ; $4c72: $00
    di                                            ; $4c73: $f3
    or e                                          ; $4c74: $b3
    call z, $a055                                 ; $4c75: $cc $55 $a0

Jump_09a_4c78:
    and [hl]                                      ; $4c78: $a6
    ret c                                         ; $4c79: $d8

    ld a, e                                       ; $4c7a: $7b
    ld bc, $bf84                                  ; $4c7b: $01 $84 $bf
    ret nz                                        ; $4c7e: $c0

    nop                                           ; $4c7f: $00
    rst $38                                       ; $4c80: $ff
    cp $01                                        ; $4c81: $fe $01
    sub h                                         ; $4c83: $94
    rrca                                          ; $4c84: $0f
    ld b, h                                       ; $4c85: $44
    dec d                                         ; $4c86: $15
    sub b                                         ; $4c87: $90
    dec b                                         ; $4c88: $05

jr_09a_4c89:
    ld d, h                                       ; $4c89: $54
    nop                                           ; $4c8a: $00
    ld a, [$07dc]                                 ; $4c8b: $fa $dc $07
    xor d                                         ; $4c8e: $aa
    ld d, l                                       ; $4c8f: $55
    inc h                                         ; $4c90: $24
    push af                                       ; $4c91: $f5
    ld a, [bc]                                    ; $4c92: $0a
    sub [hl]                                      ; $4c93: $96

jr_09a_4c94:
    rlca                                          ; $4c94: $07
    nop                                           ; $4c95: $00
    ld a, [bc]                                    ; $4c96: $0a
    rlc a                                         ; $4c97: $cb $07
    and c                                         ; $4c99: $a1
    nop                                           ; $4c9a: $00
    ld bc, $ff55                                  ; $4c9b: $01 $55 $ff
    add b                                         ; $4c9e: $80
    ld a, a                                       ; $4c9f: $7f
    ld d, l                                       ; $4ca0: $55
    xor d                                         ; $4ca1: $aa
    ld a, [$0b27]                                 ; $4ca2: $fa $27 $0b
    nop                                           ; $4ca5: $00
    nop                                           ; $4ca6: $00
    dec bc                                        ; $4ca7: $0b
    nop                                           ; $4ca8: $00
    ld d, a                                       ; $4ca9: $57
    nop                                           ; $4caa: $00

jr_09a_4cab:
    jp hl                                         ; $4cab: $e9


    rst $20                                       ; $4cac: $e7
    ld l, b                                       ; $4cad: $68
    nop                                           ; $4cae: $00
    di                                            ; $4caf: $f3
    jr jr_09a_4cab                                ; $4cb0: $18 $f9

    ld l, $fd                                     ; $4cb2: $2e $fd
    ld d, $fc                                     ; $4cb4: $16 $fc
    dec bc                                        ; $4cb6: $0b
    nop                                           ; $4cb7: $00
    ld a, [hl]                                    ; $4cb8: $7e
    rlca                                          ; $4cb9: $07
    cp [hl]                                       ; $4cba: $be
    ld bc, $605d                                  ; $4cbb: $01 $5d $60
    ld a, [c]                                     ; $4cbe: $f2
    or c                                          ; $4cbf: $b1
    nop                                           ; $4cc0: $00
    db $f4                                        ; $4cc1: $f4
    rra                                           ; $4cc2: $1f
    rst $30                                       ; $4cc3: $f7
    ld b, e                                       ; $4cc4: $43
    rst $30                                       ; $4cc5: $f7
    dec l                                         ; $4cc6: $2d
    rst $30                                       ; $4cc7: $f7
    inc bc                                        ; $4cc8: $03
    nop                                           ; $4cc9: $00
    ld [hl], a                                    ; $4cca: $77
    adc c                                         ; $4ccb: $89
    ld d, a                                       ; $4ccc: $57
    ld c, d                                       ; $4ccd: $4a
    scf                                           ; $4cce: $37
    inc bc                                        ; $4ccf: $03
    dec a                                         ; $4cd0: $3d
    add h                                         ; $4cd1: $84
    nop                                           ; $4cd2: $00
    adc e                                         ; $4cd3: $8b
    ld e, c                                       ; $4cd4: $59
    db $e3                                        ; $4cd5: $e3
    and b                                         ; $4cd6: $a0
    db $e3                                        ; $4cd7: $e3
    ld d, b                                       ; $4cd8: $50
    push af                                       ; $4cd9: $f5
    jr z, jr_09a_4cdc                             ; $4cda: $28 $00

jr_09a_4cdc:
    ld a, e                                       ; $4cdc: $7b
    inc d                                         ; $4cdd: $14
    dec a                                         ; $4cde: $3d
    ld a, [bc]                                    ; $4cdf: $0a
    ld e, $c9                                     ; $4ce0: $1e $c9
    sub a                                         ; $4ce2: $97
    ldh a, [rP1]                                  ; $4ce3: $f0 $00
    rst $00                                       ; $4ce5: $c7
    ld [hl], b                                    ; $4ce6: $70
    rst $28                                       ; $4ce7: $ef
    or b                                          ; $4ce8: $b0
    push hl                                       ; $4ce9: $e5

jr_09a_4cea:
    ld h, b                                       ; $4cea: $60
    ld [c], a                                     ; $4ceb: $e2
    cp b                                          ; $4cec: $b8
    nop                                           ; $4ced: $00
    pop af                                        ; $4cee: $f1
    ld e, h                                       ; $4cef: $5c
    ldh a, [rTMA]                                 ; $4cf0: $f0 $06
    db $f4                                        ; $4cf2: $f4
    dec bc                                        ; $4cf3: $0b
    halt                                          ; $4cf4: $76
    adc e                                         ; $4cf5: $8b
    ld bc, $5197                                  ; $4cf6: $01 $97 $51
    db $eb                                        ; $4cf9: $eb
    or b                                          ; $4cfa: $b0
    rst $20                                       ; $4cfb: $e7
    ld d, b                                       ; $4cfc: $50
    rst $30                                       ; $4cfd: $f7
    jr nz, jr_09a_4d00                            ; $4cfe: $20 $00

jr_09a_4d00:
    add b                                         ; $4d00: $80
    or b                                          ; $4d01: $b0
    nop                                           ; $4d02: $00
    adc b                                         ; $4d03: $88
    rst $38                                       ; $4d04: $ff
    dec b                                         ; $4d05: $05
    ei                                            ; $4d06: $fb
    adc e                                         ; $4d07: $8b
    db $fc                                        ; $4d08: $fc
    rla                                           ; $4d09: $17
    ld [$aff8], sp                                ; $4d0a: $08 $f8 $af
    ldh a, [$27]                                  ; $4d0d: $f0 $27
    inc b                                         ; $4d0f: $04
    db $10                                        ; $4d10: $10
    inc bc                                        ; $4d11: $03
    rst $38                                       ; $4d12: $ff
    ld e, a                                       ; $4d13: $5f
    nop                                           ; $4d14: $00
    pop hl                                        ; $4d15: $e1
    xor $19                                       ; $4d16: $ee $19

jr_09a_4d18:
    or $0d                                        ; $4d18: $f6 $0d
    ld [$f217], a                                 ; $4d1a: $ea $17 $f2
    nop                                           ; $4d1d: $00
    rrca                                          ; $4d1e: $0f
    add sp, $15                                   ; $4d1f: $e8 $15
    ld a, [c]                                     ; $4d21: $f2
    rrca                                          ; $4d22: $0f
    nop                                           ; $4d23: $00
    rst $38                                       ; $4d24: $ff
    ld a, [hl]                                    ; $4d25: $7e
    ld [$7e81], sp                                ; $4d26: $08 $81 $7e
    add c                                         ; $4d29: $81
    ld a, [hl+]                                   ; $4d2a: $2a
    inc b                                         ; $4d2b: $04
    nop                                           ; $4d2c: $00
    ld a, [hl]                                    ; $4d2d: $7e
    add c                                         ; $4d2e: $81
    nop                                           ; $4d2f: $00
    xor e                                         ; $4d30: $ab
    ld [bc], a                                    ; $4d31: $02
    nop                                           ; $4d32: $00
    rst $38                                       ; $4d33: $ff
    ld c, $00                                     ; $4d34: $0e $00
    rst $38                                       ; $4d36: $ff
    stop                                          ; $4d37: $10 $00
    push de                                       ; $4d39: $d5
    ld [$1410], sp                                ; $4d3a: $08 $10 $14
    nop                                           ; $4d3d: $00
    jr c, @+$01                                   ; $4d3e: $38 $ff

    xor d                                         ; $4d40: $aa
    call z, $c206                                 ; $4d41: $cc $06 $c2
    ld [$0805], sp                                ; $4d44: $08 $05 $08
    xor d                                         ; $4d47: $aa
    rst $38                                       ; $4d48: $ff
    xor e                                         ; $4d49: $ab
    ld d, $d5                                     ; $4d4a: $16 $d5
    ld d, h                                       ; $4d4c: $54
    xor e                                         ; $4d4d: $ab
    inc b                                         ; $4d4e: $04
    ld [$e581], sp                                ; $4d4f: $08 $81 $e5
    ld b, $2d                                     ; $4d52: $06 $2d
    nop                                           ; $4d54: $00
    rst $38                                       ; $4d55: $ff
    ld b, b                                       ; $4d56: $40
    push de                                       ; $4d57: $d5
    db $eb                                        ; $4d58: $eb
    ld b, $2a                                     ; $4d59: $06 $2a
    push de                                       ; $4d5b: $d5
    ld a, a                                       ; $4d5c: $7f
    add b                                         ; $4d5d: $80
    ld [hl], c                                    ; $4d5e: $71
    add b                                         ; $4d5f: $80
    dec c                                         ; $4d60: $0d
    ld a, e                                       ; $4d61: $7b
    add b                                         ; $4d62: $80
    ld a, a                                       ; $4d63: $7f
    add b                                         ; $4d64: $80
    inc d                                         ; $4d65: $14
    jr jr_09a_4d6c                                ; $4d66: $18 $04

jr_09a_4d68:
    jr jr_09a_4cea                                ; $4d68: $18 $80

    ld [bc], a                                    ; $4d6a: $02

jr_09a_4d6b:
    nop                                           ; $4d6b: $00

jr_09a_4d6c:
    jr nc, jr_09a_4d18                            ; $4d6c: $30 $aa

    rst $38                                       ; $4d6e: $ff
    jr nz, jr_09a_4d78                            ; $4d6f: $20 $07

    ld b, b                                       ; $4d71: $40
    ld d, b                                       ; $4d72: $50
    dec d                                         ; $4d73: $15
    rst $38                                       ; $4d74: $ff
    cp l                                          ; $4d75: $bd
    ldh [rOBP0], a                                ; $4d76: $e0 $48

jr_09a_4d78:
    ld [$05dc], a                                 ; $4d78: $ea $dc $05
    ld [$5001], a                                 ; $4d7b: $ea $01 $50
    jr jr_09a_4dd4                                ; $4d7e: $18 $54

    rst $38                                       ; $4d80: $ff
    ld d, $00                                     ; $4d81: $16 $00
    inc bc                                        ; $4d83: $03
    rrca                                          ; $4d84: $0f
    ld bc, $0117                                  ; $4d85: $01 $17 $01
    rlca                                          ; $4d88: $07
    ld sp, hl                                     ; $4d89: $f9
    inc bc                                        ; $4d8a: $03
    ld [bc], a                                    ; $4d8b: $02
    db $fd                                        ; $4d8c: $fd
    ld bc, $a9ff                                  ; $4d8d: $01 $ff $a9
    rst $38                                       ; $4d90: $ff
    ld d, l                                       ; $4d91: $55
    dec sp                                        ; $4d92: $3b
    rlca                                          ; $4d93: $07
    add l                                         ; $4d94: $85
    ld [bc], a                                    ; $4d95: $02
    ld a, d                                       ; $4d96: $7a
    rst $08                                       ; $4d97: $cf
    jr nc, jr_09a_4d68                            ; $4d98: $30 $ce

    jr nc, jr_09a_4d6b                            ; $4d9a: $30 $cf

    ld [bc], a                                    ; $4d9c: $02
    nop                                           ; $4d9d: $00
    nop                                           ; $4d9e: $00
    add b                                         ; $4d9f: $80
    db $10                                        ; $4da0: $10
    db $10                                        ; $4da1: $10
    ld d, e                                       ; $4da2: $53
    xor a                                         ; $4da3: $af
    ld sp, hl                                     ; $4da4: $f9
    rlca                                          ; $4da5: $07
    add hl, sp                                    ; $4da6: $39
    rlca                                          ; $4da7: $07
    ld a, c                                       ; $4da8: $79
    nop                                           ; $4da9: $00
    rlca                                          ; $4daa: $07
    ld sp, hl                                     ; $4dab: $f9
    rlca                                          ; $4dac: $07
    ld bc, $9fff                                  ; $4dad: $01 $ff $9f
    ld a, a                                       ; $4db0: $7f
    db $fd                                        ; $4db1: $fd
    adc c                                         ; $4db2: $89
    ld b, b                                       ; $4db3: $40
    ld d, b                                       ; $4db4: $50
    db $fd                                        ; $4db5: $fd
    rst $38                                       ; $4db6: $ff
    rla                                           ; $4db7: $17
    ld b, b                                       ; $4db8: $40
    ld b, b                                       ; $4db9: $40
    xor e                                         ; $4dba: $ab
    rst $38                                       ; $4dbb: $ff
    ld e, $07                                     ; $4dbc: $1e $07
    ld b, b                                       ; $4dbe: $40
    ld a, e                                       ; $4dbf: $7b
    di                                            ; $4dc0: $f3
    ld b, $ee                                     ; $4dc1: $06 $ee
    ld [bc], a                                    ; $4dc3: $02
    ld a, a                                       ; $4dc4: $7f
    inc c                                         ; $4dc5: $0c
    rst $18                                       ; $4dc6: $df
    jr nc, jr_09a_4dc9                            ; $4dc7: $30 $00

jr_09a_4dc9:
    rst $38                                       ; $4dc9: $ff
    ret nz                                        ; $4dca: $c0

    ld [$5703], a                                 ; $4dcb: $ea $03 $57
    inc c                                         ; $4dce: $0c
    cp h                                          ; $4dcf: $bc
    ld [hl-], a                                   ; $4dd0: $32
    nop                                           ; $4dd1: $00
    ldh a, [$c8]                                  ; $4dd2: $f0 $c8

jr_09a_4dd4:
    ret nz                                        ; $4dd4: $c0

    ld [bc], a                                    ; $4dd5: $02
    add b                                         ; $4dd6: $80
    ld [$50c0], sp                                ; $4dd7: $08 $c0 $50
    nop                                           ; $4dda: $00
    ldh [$28], a                                  ; $4ddb: $e0 $28
    pop af                                        ; $4ddd: $f1
    inc de                                        ; $4dde: $13
    rst $38                                       ; $4ddf: $ff
    inc c                                         ; $4de0: $0c
    ld a, h                                       ; $4de1: $7c
    db $10                                        ; $4de2: $10
    ld a, [hl+]                                   ; $4de3: $2a
    ldh a, [$80]                                  ; $4de4: $f0 $80
    and b                                         ; $4de6: $a0
    ld b, $84                                     ; $4de7: $06 $84
    ld d, b                                       ; $4de9: $50
    dec d                                         ; $4dea: $15
    ld a, [bc]                                    ; $4deb: $0a
    ld d, l                                       ; $4dec: $55
    rlca                                          ; $4ded: $07
    nop                                           ; $4dee: $00
    ld a, [hl+]                                   ; $4def: $2a
    nop                                           ; $4df0: $00
    ld b, h                                       ; $4df1: $44
    ret nz                                        ; $4df2: $c0

    ld b, $0d                                     ; $4df3: $06 $0d
    ret c                                         ; $4df5: $d8

    dec b                                         ; $4df6: $05
    jp nz, Jump_000_0358                          ; $4df7: $c2 $58 $03

    add d                                         ; $4dfa: $82
    adc [hl]                                      ; $4dfb: $8e
    ld hl, sp+$06                                 ; $4dfc: $f8 $06
    add b                                         ; $4dfe: $80
    ld bc, $b012                                  ; $4dff: $01 $12 $b0
    ld b, $10                                     ; $4e02: $06 $10
    ld [$0e90], sp                                ; $4e04: $08 $90 $0e
    cp e                                          ; $4e07: $bb
    nop                                           ; $4e08: $00
    ld [hl], b                                    ; $4e09: $70
    push af                                       ; $4e0a: $f5
    ret nz                                        ; $4e0b: $c0

    ld a, e                                       ; $4e0c: $7b
    nop                                           ; $4e0d: $00
    ccf                                           ; $4e0e: $3f
    add b                                         ; $4e0f: $80
    ld a, [de]                                    ; $4e10: $1a
    nop                                           ; $4e11: $00
    ld b, b                                       ; $4e12: $40
    ld h, $20                                     ; $4e13: $26 $20
    nop                                           ; $4e15: $00
    xor d                                         ; $4e16: $aa
    add l                                         ; $4e17: $85
    add b                                         ; $4e18: $80
    ld e, e                                       ; $4e19: $5b
    nop                                           ; $4e1a: $00
    add b                                         ; $4e1b: $80
    add c                                         ; $4e1c: $81
    sub b                                         ; $4e1d: $90
    nop                                           ; $4e1e: $00
    jp z, $80ed                                   ; $4e1f: $ca $ed $80

    nop                                           ; $4e22: $00
    nop                                           ; $4e23: $00
    xor l                                         ; $4e24: $ad
    xor e                                         ; $4e25: $ab
    add b                                         ; $4e26: $80
    nop                                           ; $4e27: $00
    xor d                                         ; $4e28: $aa
    ld l, d                                       ; $4e29: $6a
    nop                                           ; $4e2a: $00
    add b                                         ; $4e2b: $80
    nop                                           ; $4e2c: $00
    ld a, [bc]                                    ; $4e2d: $0a
    ld c, b                                       ; $4e2e: $48
    ld bc, $8014                                  ; $4e2f: $01 $14 $80
    ld c, c                                       ; $4e32: $49
    nop                                           ; $4e33: $00
    nop                                           ; $4e34: $00
    nop                                           ; $4e35: $00
    ld c, d                                       ; $4e36: $4a
    ld e, h                                       ; $4e37: $5c
    nop                                           ; $4e38: $00
    nop                                           ; $4e39: $00
    xor d                                         ; $4e3a: $aa
    ld c, d                                       ; $4e3b: $4a
    nop                                           ; $4e3c: $00
    and b                                         ; $4e3d: $a0
    nop                                           ; $4e3e: $00
    dec b                                         ; $4e3f: $05
    dec b                                         ; $4e40: $05
    ld b, b                                       ; $4e41: $40
    xor b                                         ; $4e42: $a8
    nop                                           ; $4e43: $00
    nop                                           ; $4e44: $00
    ld d, l                                       ; $4e45: $55
    add hl, hl                                    ; $4e46: $29
    ld b, b                                       ; $4e47: $40
    add b                                         ; $4e48: $80
    stop                                          ; $4e49: $10 $00
    xor e                                         ; $4e4b: $ab
    ld d, e                                       ; $4e4c: $53
    ld bc, $8124                                  ; $4e4d: $01 $24 $81
    ld bc, $5100                                  ; $4e50: $01 $00 $51
    sbc h                                         ; $4e53: $9c
    ld bc, $0129                                  ; $4e54: $01 $29 $01
    ret nz                                        ; $4e57: $c0

    ld bc, $002b                                  ; $4e58: $01 $2b $00
    ld bc, $9400                                  ; $4e5b: $01 $00 $94
    add b                                         ; $4e5e: $80
    push de                                       ; $4e5f: $d5
    ld e, h                                       ; $4e60: $5c
    add b                                         ; $4e61: $80
    adc d                                         ; $4e62: $8a
    inc b                                         ; $4e63: $04
    add b                                         ; $4e64: $80
    nop                                           ; $4e65: $00
    xor c                                         ; $4e66: $a9
    cp c                                          ; $4e67: $b9
    add b                                         ; $4e68: $80
    ld l, a                                       ; $4e69: $6f
    rlca                                          ; $4e6a: $07
    add l                                         ; $4e6b: $85
    adc e                                         ; $4e6c: $8b
    and b                                         ; $4e6d: $a0
    jr z, jr_09a_4e70                             ; $4e6e: $28 $00

jr_09a_4e70:
    ld e, h                                       ; $4e70: $5c
    ld a, c                                       ; $4e71: $79
    ld bc, $5b00                                  ; $4e72: $01 $00 $5b
    nop                                           ; $4e75: $00
    ld a, $80                                     ; $4e76: $3e $80
    jr nz, jr_09a_4e8e                            ; $4e78: $20 $14

    halt                                          ; $4e7a: $76
    ld c, h                                       ; $4e7b: $4c
    nop                                           ; $4e7c: $00
    nop                                           ; $4e7d: $00
    push af                                       ; $4e7e: $f5
    sub h                                         ; $4e7f: $94
    nop                                           ; $4e80: $00
    ld b, b                                       ; $4e81: $40
    nop                                           ; $4e82: $00
    inc b                                         ; $4e83: $04
    nop                                           ; $4e84: $00
    dec bc                                        ; $4e85: $0b
    dec d                                         ; $4e86: $15
    add b                                         ; $4e87: $80
    ld c, b                                       ; $4e88: $48
    ld [bc], a                                    ; $4e89: $02
    add b                                         ; $4e8a: $80
    nop                                           ; $4e8b: $00
    add hl, de                                    ; $4e8c: $19
    inc b                                         ; $4e8d: $04

jr_09a_4e8e:
    add c                                         ; $4e8e: $81
    ld bc, $eafd                                  ; $4e8f: $01 $fd $ea
    ld bc, $0051                                  ; $4e92: $01 $51 $00
    ld bc, $0d00                                  ; $4e95: $01 $00 $0d
    rst $08                                       ; $4e98: $cf
    ld bc, $01a0                                  ; $4e99: $01 $a0 $01
    ld bc, $6556                                  ; $4e9c: $01 $56 $65
    ld d, h                                       ; $4e9f: $54
    add hl, bc                                    ; $4ea0: $09
    push de                                       ; $4ea1: $d5
    inc b                                         ; $4ea2: $04
    db $10                                        ; $4ea3: $10
    rst $38                                       ; $4ea4: $ff
    ld a, h                                       ; $4ea5: $7c
    ld de, $09a0                                  ; $4ea6: $11 $a0 $09
    ld d, l                                       ; $4ea9: $55
    and b                                         ; $4eaa: $a0
    inc b                                         ; $4eab: $04
    db $10                                        ; $4eac: $10
    rst $38                                       ; $4ead: $ff
    inc a                                         ; $4eae: $3c
    ld de, $0151                                  ; $4eaf: $11 $51 $01
    jr z, jr_09a_4ebc                             ; $4eb2: $28 $08

    db $10                                        ; $4eb4: $10
    jr c, @+$12                                   ; $4eb5: $38 $10

    add d                                         ; $4eb7: $82
    add b                                         ; $4eb8: $80
    inc bc                                        ; $4eb9: $03
    ld h, b                                       ; $4eba: $60
    ld a, [bc]                                    ; $4ebb: $0a

jr_09a_4ebc:
    sub [hl]                                      ; $4ebc: $96
    inc b                                         ; $4ebd: $04
    add b                                         ; $4ebe: $80
    ret nz                                        ; $4ebf: $c0

    ret nz                                        ; $4ec0: $c0

    nop                                           ; $4ec1: $00
    ldh [$e0], a                                  ; $4ec2: $e0 $e0
    ldh a, [$f0]                                  ; $4ec4: $f0 $f0
    ld hl, sp-$08                                 ; $4ec6: $f8 $f8
    db $fc                                        ; $4ec8: $fc
    db $fc                                        ; $4ec9: $fc
    ld h, b                                       ; $4eca: $60
    cp $f3                                        ; $4ecb: $fe $f3
    rrca                                          ; $4ecd: $0f
    sub l                                         ; $4ece: $95
    dec c                                         ; $4ecf: $0d
    ld d, l                                       ; $4ed0: $55
    nop                                           ; $4ed1: $00
    xor d                                         ; $4ed2: $aa
    ld bc, $0215                                  ; $4ed3: $01 $15 $02
    ld [$102a], sp                                ; $4ed6: $08 $2a $10
    dec d                                         ; $4ed9: $15
    nop                                           ; $4eda: $00
    ld [bc], a                                    ; $4edb: $02
    inc [hl]                                      ; $4edc: $34
    add hl, bc                                    ; $4edd: $09
    ld d, l                                       ; $4ede: $55
    ret nz                                        ; $4edf: $c0

    inc b                                         ; $4ee0: $04
    db $10                                        ; $4ee1: $10
    ld b, b                                       ; $4ee2: $40
    jr jr_09a_4ee5                                ; $4ee3: $18 $00

jr_09a_4ee5:
    or e                                          ; $4ee5: $b3
    and l                                         ; $4ee6: $a5
    add b                                         ; $4ee7: $80
    ld [bc], a                                    ; $4ee8: $02
    ret nc                                        ; $4ee9: $d0

    nop                                           ; $4eea: $00
    adc c                                         ; $4eeb: $89
    add b                                         ; $4eec: $80
    inc h                                         ; $4eed: $24
    add b                                         ; $4eee: $80
    add b                                         ; $4eef: $80
    push hl                                       ; $4ef0: $e5
    ld b, l                                       ; $4ef1: $45
    add b                                         ; $4ef2: $80
    inc b                                         ; $4ef3: $04
    or d                                          ; $4ef4: $b2
    add b                                         ; $4ef5: $80
    nop                                           ; $4ef6: $00
    adc h                                         ; $4ef7: $8c
    rst $10                                       ; $4ef8: $d7
    cp $07                                        ; $4ef9: $fe $07
    ld [bc], a                                    ; $4efb: $02
    ld d, b                                       ; $4efc: $50
    nop                                           ; $4efd: $00
    call z, RST_00                                ; $4efe: $cc $00 $00

Jump_09a_4f01:
    ld e, l                                       ; $4f01: $5d
    halt                                          ; $4f02: $76
    nop                                           ; $4f03: $00
    add hl, bc                                    ; $4f04: $09
    nop                                           ; $4f05: $00
    ld bc, $4010                                  ; $4f06: $01 $10 $40
    dec l                                         ; $4f09: $2d
    nop                                           ; $4f0a: $00
    nop                                           ; $4f0b: $00
    add a                                         ; $4f0c: $87
    and d                                         ; $4f0d: $a2
    inc hl                                        ; $4f0e: $23
    dec b                                         ; $4f0f: $05
    ld bc, $3500                                  ; $4f10: $01 $00 $35
    ld d, [hl]                                    ; $4f13: $56
    nop                                           ; $4f14: $00
    adc b                                         ; $4f15: $88
    nop                                           ; $4f16: $00
    ld d, b                                       ; $4f17: $50
    call nc, RST_00                               ; $4f18: $d4 $00 $00
    db $10                                        ; $4f1b: $10
    ld bc, $0145                                  ; $4f1c: $01 $45 $01
    nop                                           ; $4f1f: $00
    add hl, hl                                    ; $4f20: $29
    ld bc, $0053                                  ; $4f21: $01 $53 $00
    db $f4                                        ; $4f24: $f4
    ld bc, $0141                                  ; $4f25: $01 $41 $01
    nop                                           ; $4f28: $00
    di                                            ; $4f29: $f3
    push hl                                       ; $4f2a: $e5
    add b                                         ; $4f2b: $80
    inc b                                         ; $4f2c: $04
    nop                                           ; $4f2d: $00
    xor [hl]                                      ; $4f2e: $ae
    sbc a                                         ; $4f2f: $9f
    ret nz                                        ; $4f30: $c0

    push de                                       ; $4f31: $d5
    cp $11                                        ; $4f32: $fe $11
    rst $38                                       ; $4f34: $ff
    rst $38                                       ; $4f35: $ff
    ld d, $02                                     ; $4f36: $16 $02
    jr nc, jr_09a_4fa7                            ; $4f38: $30 $6d

    inc d                                         ; $4f3a: $14
    ld bc, $e8ff                                  ; $4f3b: $01 $ff $e8
    ld [bc], a                                    ; $4f3e: $02
    ld c, d                                       ; $4f3f: $4a
    ld [de], a                                    ; $4f40: $12
    rst $38                                       ; $4f41: $ff
    ld [bc], a                                    ; $4f42: $02
    ld b, b                                       ; $4f43: $40
    add hl, de                                    ; $4f44: $19
    ld b, $00                                     ; $4f45: $06 $00

jr_09a_4f47:
    nop                                           ; $4f47: $00
    sub h                                         ; $4f48: $94
    db $10                                        ; $4f49: $10
    jr c, jr_09a_4f4c                             ; $4f4a: $38 $00

jr_09a_4f4c:
    nop                                           ; $4f4c: $00
    sbc c                                         ; $4f4d: $99
    sbc l                                         ; $4f4e: $9d
    ld bc, $8900                                  ; $4f4f: $01 $00 $89
    ld sp, hl                                     ; $4f52: $f9
    inc bc                                        ; $4f53: $03
    ld d, l                                       ; $4f54: $55
    ld e, a                                       ; $4f55: $5f
    rst $38                                       ; $4f56: $ff
    cp [hl]                                       ; $4f57: $be
    add hl, bc                                    ; $4f58: $09
    db $fd                                        ; $4f59: $fd
    sub b                                         ; $4f5a: $90
    ld d, $dc                                     ; $4f5b: $16 $dc
    jr jr_09a_4f47                                ; $4f5d: $18 $e8

    db $10                                        ; $4f5f: $10
    ld e, a                                       ; $4f60: $5f
    ld a, [bc]                                    ; $4f61: $0a
    call c, $8020                                 ; $4f62: $dc $20 $80
    xor b                                         ; $4f65: $a8
    db $10                                        ; $4f66: $10
    ld d, l                                       ; $4f67: $55
    ld d, l                                       ; $4f68: $55
    nop                                           ; $4f69: $00
    adc d                                         ; $4f6a: $8a
    add b                                         ; $4f6b: $80
    ld d, l                                       ; $4f6c: $55
    ld b, b                                       ; $4f6d: $40
    nop                                           ; $4f6e: $00
    ld a, [hl+]                                   ; $4f6f: $2a
    jr nz, @+$17                                  ; $4f70: $20 $15

    ld de, $080a                                  ; $4f72: $11 $0a $08
    inc d                                         ; $4f75: $14
    db $10                                        ; $4f76: $10
    ld b, $08                                     ; $4f77: $06 $08
    nop                                           ; $4f79: $00
    ld d, c                                       ; $4f7a: $51
    ld bc, $f0a0                                  ; $4f7b: $01 $a0 $f0
    nop                                           ; $4f7e: $00
    ld [hl], b                                    ; $4f7f: $70
    inc c                                         ; $4f80: $0c
    ld [bc], a                                    ; $4f81: $02
    ld d, h                                       ; $4f82: $54
    add b                                         ; $4f83: $80
    sub c                                         ; $4f84: $91
    dec de                                        ; $4f85: $1b
    ld [$0518], sp                                ; $4f86: $08 $18 $05
    adc b                                         ; $4f89: $88
    ret nz                                        ; $4f8a: $c0

    inc bc                                        ; $4f8b: $03
    nop                                           ; $4f8c: $00
    ld a, [bc]                                    ; $4f8d: $0a
    nop                                           ; $4f8e: $00
    db $10                                        ; $4f8f: $10
    ld d, l                                       ; $4f90: $55
    nop                                           ; $4f91: $00
    ld a, [hl+]                                   ; $4f92: $2a
    ld de, $0a55                                  ; $4f93: $11 $55 $0a
    xor b                                         ; $4f96: $a8
    ld [de], a                                    ; $4f97: $12
    dec d                                         ; $4f98: $15
    ld d, b                                       ; $4f99: $50
    ld a, [hl+]                                   ; $4f9a: $2a
    adc h                                         ; $4f9b: $8c
    ld b, $a0                                     ; $4f9c: $06 $a0
    nop                                           ; $4f9e: $00
    inc de                                        ; $4f9f: $13
    nop                                           ; $4fa0: $00
    nop                                           ; $4fa1: $00
    add c                                         ; $4fa2: $81
    ret nc                                        ; $4fa3: $d0

    dec b                                         ; $4fa4: $05
    inc e                                         ; $4fa5: $1c
    inc [hl]                                      ; $4fa6: $34

jr_09a_4fa7:
    ld [hl], b                                    ; $4fa7: $70
    ld d, d                                       ; $4fa8: $52
    ret nz                                        ; $4fa9: $c0

    inc b                                         ; $4faa: $04
    and b                                         ; $4fab: $a0
    dec b                                         ; $4fac: $05
    ld a, [bc]                                    ; $4fad: $0a
    ld b, b                                       ; $4fae: $40
    ld h, b                                       ; $4faf: $60
    inc h                                         ; $4fb0: $24
    ld sp, $010c                                  ; $4fb1: $31 $0c $01
    adc d                                         ; $4fb4: $8a
    ldh a, [rTIMA]                                ; $4fb5: $f0 $05
    ld a, [hl+]                                   ; $4fb7: $2a
    nop                                           ; $4fb8: $00
    nop                                           ; $4fb9: $00
    ld b, l                                       ; $4fba: $45
    ld a, [bc]                                    ; $4fbb: $0a
    jr z, @+$17                                   ; $4fbc: $28 $15

    db $10                                        ; $4fbe: $10
    ld a, [bc]                                    ; $4fbf: $0a
    nop                                           ; $4fc0: $00
    ret nz                                        ; $4fc1: $c0

    inc h                                         ; $4fc2: $24
    add hl, bc                                    ; $4fc3: $09
    ld [bc], a                                    ; $4fc4: $02
    ld c, b                                       ; $4fc5: $48
    ld a, a                                       ; $4fc6: $7f
    add b                                         ; $4fc7: $80
    xor e                                         ; $4fc8: $ab
    ret nz                                        ; $4fc9: $c0

    ld b, b                                       ; $4fca: $40
    add b                                         ; $4fcb: $80
    nop                                           ; $4fcc: $00
    xor a                                         ; $4fcd: $af

jr_09a_4fce:
    ret nz                                        ; $4fce: $c0

    ld a, d                                       ; $4fcf: $7a
    add l                                         ; $4fd0: $85
    sub c                                         ; $4fd1: $91
    xor $7e                                       ; $4fd2: $ee $7e
    add b                                         ; $4fd4: $80
    ld h, b                                       ; $4fd5: $60
    sub l                                         ; $4fd6: $95
    reti                                          ; $4fd7: $d9


    rlca                                          ; $4fd8: $07
    xor d                                         ; $4fd9: $aa
    dec bc                                        ; $4fda: $0b
    add sp, $17                                   ; $4fdb: $e8 $17
    sub a                                         ; $4fdd: $97
    ld l, b                                       ; $4fde: $68
    cp $e0                                        ; $4fdf: $fe $e0
    dec h                                         ; $4fe1: $25
    ld b, $15                                     ; $4fe2: $06 $15
    inc de                                        ; $4fe4: $13
    dec de                                        ; $4fe5: $1b
    ld b, $57                                     ; $4fe6: $06 $57
    xor b                                         ; $4fe8: $a8
    cp $00                                        ; $4fe9: $fe $00
    xor c                                         ; $4feb: $a9
    ret z                                         ; $4fec: $c8

    nop                                           ; $4fed: $00
    ld d, $f9                                     ; $4fee: $16 $f9
    rlca                                          ; $4ff0: $07
    ld a, [bc]                                    ; $4ff1: $0a
    xor d                                         ; $4ff2: $aa
    db $ed                                        ; $4ff3: $ed
    nop                                           ; $4ff4: $00
    cp a                                          ; $4ff5: $bf
    nop                                           ; $4ff6: $00
    ld e, a                                       ; $4ff7: $5f
    jr z, jr_09a_4ffa                             ; $4ff8: $28 $00

jr_09a_4ffa:
    cpl                                           ; $4ffa: $2f
    ld l, c                                       ; $4ffb: $69
    ld bc, $3440                                  ; $4ffc: $01 $40 $34
    nop                                           ; $4fff: $00
    ld a, a                                       ; $5000: $7f
    add b                                         ; $5001: $80
    xor d                                         ; $5002: $aa
    nop                                           ; $5003: $00
    push de                                       ; $5004: $d5
    ld d, a                                       ; $5005: $57
    xor b                                         ; $5006: $a8
    cp [hl]                                       ; $5007: $be
    ret nz                                        ; $5008: $c0

    ld d, l                                       ; $5009: $55
    add b                                         ; $500a: $80
    cp a                                          ; $500b: $bf
    jr nz, jr_09a_4fce                            ; $500c: $20 $c0

jr_09a_500e:
    ld [bc], a                                    ; $500e: $02
    rst $10                                       ; $500f: $d7
    rlca                                          ; $5010: $07
    cp $01                                        ; $5011: $fe $01
    xor a                                         ; $5013: $af
    ld d, b                                       ; $5014: $50
    rst $38                                       ; $5015: $ff
    adc c                                         ; $5016: $89
    jr nc, jr_09a_5019                            ; $5017: $30 $00

jr_09a_5019:
    ld b, b                                       ; $5019: $40
    nop                                           ; $501a: $00
    ld [$0722], a                                 ; $501b: $ea $22 $07
    rst $38                                       ; $501e: $ff
    nop                                           ; $501f: $00
    ld [de], a                                    ; $5020: $12
    inc e                                         ; $5021: $1c
    jr @+$61                                      ; $5022: $18 $5f

    nop                                           ; $5024: $00
    ld [bc], a                                    ; $5025: $02
    ld b, h                                       ; $5026: $44
    ld b, $2c                                     ; $5027: $06 $2c
    inc c                                         ; $5029: $0c
    xor d                                         ; $502a: $aa
    ld d, l                                       ; $502b: $55
    ld d, b                                       ; $502c: $50
    ld b, b                                       ; $502d: $40
    xor a                                         ; $502e: $af
    inc [hl]                                      ; $502f: $34
    inc c                                         ; $5030: $0c
    xor e                                         ; $5031: $ab
    nop                                           ; $5032: $00
    rla                                           ; $5033: $17
    nop                                           ; $5034: $00
    ld a, a                                       ; $5035: $7f
    add b                                         ; $5036: $80
    nop                                           ; $5037: $00
    or a                                          ; $5038: $b7
    ret z                                         ; $5039: $c8

    ld a, a                                       ; $503a: $7f
    add b                                         ; $503b: $80
    xor l                                         ; $503c: $ad
    jp nc, $ec13                                  ; $503d: $d2 $13 $ec

    nop                                           ; $5040: $00
    xor [hl]                                      ; $5041: $ae
    pop de                                        ; $5042: $d1
    inc bc                                        ; $5043: $03
    db $fc                                        ; $5044: $fc
    adc a                                         ; $5045: $8f
    ldh a, [rIE]                                  ; $5046: $f0 $ff
    nop                                           ; $5048: $00
    inc l                                         ; $5049: $2c
    xor b                                         ; $504a: $a8
    ld d, a                                       ; $504b: $57
    ld b, b                                       ; $504c: $40
    inc c                                         ; $504d: $0c
    ret nc                                        ; $504e: $d0

    ld e, d                                       ; $504f: $5a

Call_09a_5050:
    nop                                           ; $5050: $00
    ld e, b                                       ; $5051: $58
    inc c                                         ; $5052: $0c
    ld a, [$0d00]                                 ; $5053: $fa $00 $0d
    dec hl                                        ; $5056: $2b
    call nc, $bf40                                ; $5057: $d4 $40 $bf
    add d                                         ; $505a: $82
    nop                                           ; $505b: $00
    adc h                                         ; $505c: $8c
    jr nz, jr_09a_500e                            ; $505d: $20 $af

    ld e, [hl]                                    ; $505f: $5e
    nop                                           ; $5060: $00
    ld bc, $ff00                                  ; $5061: $01 $00 $ff
    call nc, $ff2b                                ; $5064: $d4 $2b $ff
    nop                                           ; $5067: $00
    dec hl                                        ; $5068: $2b
    or [hl]                                       ; $5069: $b6
    inc de                                        ; $506a: $13
    nop                                           ; $506b: $00
    add b                                         ; $506c: $80
    rst $38                                       ; $506d: $ff
    sub d                                         ; $506e: $92
    db $fd                                        ; $506f: $fd
    adc c                                         ; $5070: $89
    cp $90                                        ; $5071: $fe $90
    rst $38                                       ; $5073: $ff
    inc b                                         ; $5074: $04
    sbc c                                         ; $5075: $99
    cp $f4                                        ; $5076: $fe $f4
    rst $38                                       ; $5078: $ff
    cp d                                          ; $5079: $ba
    xor $07                                       ; $507a: $ee $07
    db $10                                        ; $507c: $10
    rst $38                                       ; $507d: $ff
    inc b                                         ; $507e: $04
    add d                                         ; $507f: $82
    ld a, l                                       ; $5080: $7d
    ld de, $9afe                                  ; $5081: $11 $fe $9a
    inc b                                         ; $5084: $04
    nop                                           ; $5085: $00
    sbc b                                         ; $5086: $98

jr_09a_5087:
    ld a, a                                       ; $5087: $7f
    ld d, b                                       ; $5088: $50

jr_09a_5089:
    jr jr_09a_5089                                ; $5089: $18 $fe

    rlca                                          ; $508b: $07
    ld [$0010], sp                                ; $508c: $08 $10 $00
    ld c, c                                       ; $508f: $49
    cp [hl]                                       ; $5090: $be
    adc b                                         ; $5091: $88
    ld a, a                                       ; $5092: $7f
    inc b                                         ; $5093: $04
    ld c, l                                       ; $5094: $4d
    cp [hl]                                       ; $5095: $be
    adc h                                         ; $5096: $8c
    ld a, a                                       ; $5097: $7f
    inc c                                         ; $5098: $0c
    xor e                                         ; $5099: $ab
    inc de                                        ; $509a: $13
    sub d                                         ; $509b: $92
    ld a, l                                       ; $509c: $7d

jr_09a_509d:
    nop                                           ; $509d: $00
    inc d                                         ; $509e: $14
    ei                                            ; $509f: $fb
    sub d                                         ; $50a0: $92
    ld a, l                                       ; $50a1: $7d
    jr c, @+$01                                   ; $50a2: $38 $ff

    dec [hl]                                      ; $50a4: $35
    rst $38                                       ; $50a5: $ff
    ld h, b                                       ; $50a6: $60
    ld a, [hl-]                                   ; $50a7: $3a
    jp nc, Jump_000_3807                          ; $50a8: $d2 $07 $38

    inc c                                         ; $50ab: $0c
    adc a                                         ; $50ac: $8f
    ret nc                                        ; $50ad: $d0

    ld h, $f9                                     ; $50ae: $26 $f9
    adc l                                         ; $50b0: $8d
    ld bc, $28d5                                  ; $50b1: $01 $d5 $28
    rst $38                                       ; $50b4: $ff
    sbc b                                         ; $50b5: $98
    rst $18                                       ; $50b6: $df
    dec bc                                        ; $50b7: $0b
    db $ec                                        ; $50b8: $ec
    inc [hl]                                      ; $50b9: $34
    inc c                                         ; $50ba: $0c
    nop                                           ; $50bb: $00
    add sp, $15                                   ; $50bc: $e8 $15
    ld [de], a                                    ; $50be: $12
    rst $28                                       ; $50bf: $ef
    ld d, b                                       ; $50c0: $50
    ld e, l                                       ; $50c1: $5d
    ld d, d                                       ; $50c2: $52
    rst $30                                       ; $50c3: $f7
    nop                                           ; $50c4: $00
    ld [$e0f9], sp                                ; $50c5: $08 $f9 $e0
    dec de                                        ; $50c8: $1b
    sub a                                         ; $50c9: $97
    ld hl, sp+$2f                                 ; $50ca: $f8 $2f
    ldh a, [rDIV]                                 ; $50cc: $f0 $04
    rst $20                                       ; $50ce: $e7
    cp b                                          ; $50cf: $b8
    cpl                                           ; $50d0: $2f
    ldh a, [$a7]                                  ; $50d1: $f0 $a7
    ld [$a700], sp                                ; $50d3: $08 $00 $a7
    ld hl, sp+$0c                                 ; $50d6: $f8 $0c
    rrca                                          ; $50d8: $0f
    ret nc                                        ; $50d9: $d0

    ldh a, [rIF]                                  ; $50da: $f0 $0f
    ld e, d                                       ; $50dc: $5a
    inc l                                         ; $50dd: $2c
    ld a, [hl+]                                   ; $50de: $2a
    jr jr_09a_5087                                ; $50df: $18 $a6

    ld sp, hl                                     ; $50e1: $f9
    nop                                           ; $50e2: $00
    dec c                                         ; $50e3: $0d
    push de                                       ; $50e4: $d5
    xor b                                         ; $50e5: $a8
    rst $38                                       ; $50e6: $ff
    ld a, [de]                                    ; $50e7: $1a
    rst $18                                       ; $50e8: $df
    call $02af                                    ; $50e9: $cd $af $02
    jr nz, @-$26                                  ; $50ec: $20 $d8

    ret z                                         ; $50ee: $c8

    cp a                                          ; $50ef: $bf
    rlca                                          ; $50f0: $07
    ld hl, sp+$3a                                 ; $50f1: $f8 $3a
    jr jr_09a_509d                                ; $50f3: $18 $a8

    nop                                           ; $50f5: $00
    ld sp, hl                                     ; $50f6: $f9
    ld b, b                                       ; $50f7: $40
    db $e3                                        ; $50f8: $e3
    nop                                           ; $50f9: $00
    rrca                                          ; $50fa: $0f
    ld [bc], a                                    ; $50fb: $02
    db $fd                                        ; $50fc: $fd
    cp $00                                        ; $50fd: $fe $00
    ld bc, $ffab                                  ; $50ff: $01 $ab $ff
    add e                                         ; $5102: $83
    rst $38                                       ; $5103: $ff
    ld bc, $917f                                  ; $5104: $01 $7f $91
    nop                                           ; $5107: $00
    rst $38                                       ; $5108: $ff
    db $10                                        ; $5109: $10
    ld a, a                                       ; $510a: $7f
    sub b                                         ; $510b: $90
    rst $38                                       ; $510c: $ff
    ld d, b                                       ; $510d: $50
    ld a, a                                       ; $510e: $7f
    ld d, l                                       ; $510f: $55
    ld b, d                                       ; $5110: $42
    ld d, l                                       ; $5111: $55
    jp nz, $fe03                                  ; $5112: $c2 $03 $fe

    add hl, bc                                    ; $5115: $09
    rst $38                                       ; $5116: $ff
    ld [$0004], sp                                ; $5117: $08 $04 $00
    jr jr_09a_511c                                ; $511a: $18 $00

jr_09a_511c:
    cp $19                                        ; $511c: $fe $19
    rst $38                                       ; $511e: $ff
    jp z, $d5ca                                   ; $511f: $ca $ca $d5

    rst $38                                       ; $5122: $ff
    add d                                         ; $5123: $82
    nop                                           ; $5124: $00
    db $fd                                        ; $5125: $fd
    and c                                         ; $5126: $a1
    sbc $92                                       ; $5127: $de $92
    db $fd                                        ; $5129: $fd
    or l                                          ; $512a: $b5
    jp c, $0892                                   ; $512b: $da $92 $08

    db $fd                                        ; $512e: $fd
    or b                                          ; $512f: $b0
    rst $38                                       ; $5130: $ff
    cp l                                          ; $5131: $bd
    ld h, $02                                     ; $5132: $26 $02
    ld b, b                                       ; $5134: $40
    rst $38                                       ; $5135: $ff
    ld b, h                                       ; $5136: $44
    nop                                           ; $5137: $00
    ei                                            ; $5138: $fb
    ld h, d                                       ; $5139: $62
    db $fd                                        ; $513a: $fd
    ld h, l                                       ; $513b: $65
    ld a, [$fd62]                                 ; $513c: $fa $62 $fd
    ld [hl], b                                    ; $513f: $70
    ld [$7aff], sp                                ; $5140: $08 $ff $7a
    rst $38                                       ; $5143: $ff

jr_09a_5144:
    ld d, d                                       ; $5144: $52
    sbc l                                         ; $5145: $9d
    inc d                                         ; $5146: $14
    sub h                                         ; $5147: $94
    ld a, e                                       ; $5148: $7b
    ld [de], a                                    ; $5149: $12
    ld [$19fd], sp                                ; $514a: $08 $fd $19
    cp $18                                        ; $514d: $fe $18
    jr nz, jr_09a_5151                            ; $514f: $20 $00

jr_09a_5151:
    ld a, [hl+]                                   ; $5151: $2a
    rst $38                                       ; $5152: $ff
    inc b                                         ; $5153: $04
    add b                                         ; $5154: $80
    ld [bc], a                                    ; $5155: $02
    nop                                           ; $5156: $00
    ld b, h                                       ; $5157: $44
    cp a                                          ; $5158: $bf
    add [hl]                                      ; $5159: $86
    ld a, a                                       ; $515a: $7f
    ld b, [hl]                                    ; $515b: $46
    cp a                                          ; $515c: $bf
    adc [hl]                                      ; $515d: $8e
    jr nz, jr_09a_51df                            ; $515e: $20 $7f

    ld e, [hl]                                    ; $5160: $5e
    stop                                          ; $5161: $10 $00
    jr nz, jr_09a_5144                            ; $5163: $20 $df

    add l                                         ; $5165: $85
    ld a, [hl]                                    ; $5166: $7e
    ld b, h                                       ; $5167: $44
    ld [bc], a                                    ; $5168: $02
    cp a                                          ; $5169: $bf
    inc h                                         ; $516a: $24
    rst $18                                       ; $516b: $df
    ld c, h                                       ; $516c: $4c
    cp a                                          ; $516d: $bf
    inc c                                         ; $516e: $0c
    ld b, b                                       ; $516f: $40
    nop                                           ; $5170: $00
    sub a                                         ; $5171: $97
    add b                                         ; $5172: $80
    ld l, b                                       ; $5173: $68
    ld [bc], a                                    ; $5174: $02
    dec b                                         ; $5175: $05
    ei                                            ; $5176: $fb
    sub e                                         ; $5177: $93
    ld a, l                                       ; $5178: $7d
    ld d, c                                       ; $5179: $51
    cp a                                          ; $517a: $bf
    sbc c                                         ; $517b: $99
    nop                                           ; $517c: $00
    ld a, a                                       ; $517d: $7f
    add hl, de                                    ; $517e: $19
    rst $38                                       ; $517f: $ff
    ld e, l                                       ; $5180: $5d
    rst $38                                       ; $5181: $ff
    rst $38                                       ; $5182: $ff
    add c                                         ; $5183: $81
    ld a, a                                       ; $5184: $7f
    nop                                           ; $5185: $00
    add e                                         ; $5186: $83
    rst $38                                       ; $5187: $ff
    add a                                         ; $5188: $87
    ld e, a                                       ; $5189: $5f
    adc a                                         ; $518a: $8f
    cp a                                          ; $518b: $bf
    sbc a                                         ; $518c: $9f
    ld a, a                                       ; $518d: $7f
    ld d, b                                       ; $518e: $50
    cp a                                          ; $518f: $bf
    ld a, l                                       ; $5190: $7d
    ld a, [bc]                                    ; $5191: $0a
    xor e                                         ; $5192: $ab
    ret nc                                        ; $5193: $d0

    inc b                                         ; $5194: $04
    ld d, a                                       ; $5195: $57
    xor a                                         ; $5196: $af
    rst $38                                       ; $5197: $ff
    rrca                                          ; $5198: $0f
    ld hl, $1f9f                                  ; $5199: $21 $9f $1f
    and a                                         ; $519c: $a7
    ld b, $7f                                     ; $519d: $06 $7f
    rst $38                                       ; $519f: $ff
    rst $38                                       ; $51a0: $ff
    ld bc, $07d6                                  ; $51a1: $01 $d6 $07
    adc b                                         ; $51a4: $88
    inc d                                         ; $51a5: $14
    ld c, $01                                     ; $51a6: $0e $01
    dec b                                         ; $51a8: $05
    ld a, [bc]                                    ; $51a9: $0a
    and b                                         ; $51aa: $a0
    rlca                                          ; $51ab: $07
    adc b                                         ; $51ac: $88
    add b                                         ; $51ad: $80
    ld sp, hl                                     ; $51ae: $f9
    nop                                           ; $51af: $00
    rst $38                                       ; $51b0: $ff
    cp a                                          ; $51b1: $bf
    rlca                                          ; $51b2: $07
    ld d, a                                       ; $51b3: $57
    rlca                                          ; $51b4: $07
    cp a                                          ; $51b5: $bf
    rrca                                          ; $51b6: $0f
    ld e, a                                       ; $51b7: $5f
    ld b, d                                       ; $51b8: $42
    sbc a                                         ; $51b9: $9f
    rra                                           ; $51ba: $1f
    db $10                                        ; $51bb: $10
    rst $38                                       ; $51bc: $ff
    ld d, l                                       ; $51bd: $55
    nop                                           ; $51be: $00
    and d                                         ; $51bf: $a2
    ld c, a                                       ; $51c0: $4f
    dec bc                                        ; $51c1: $0b
    nop                                           ; $51c2: $00
    db $10                                        ; $51c3: $10
    ld de, $2001                                  ; $51c4: $11 $01 $20
    ld a, b                                       ; $51c7: $78
    inc bc                                        ; $51c8: $03
    adc b                                         ; $51c9: $88
    add b                                         ; $51ca: $80
    add c                                         ; $51cb: $81
    rst $38                                       ; $51cc: $ff
    inc bc                                        ; $51cd: $03
    rst $10                                       ; $51ce: $d7
    rst $38                                       ; $51cf: $ff
    xor a                                         ; $51d0: $af
    rst $38                                       ; $51d1: $ff
    rst $18                                       ; $51d2: $df
    rst $38                                       ; $51d3: $ff
    ld c, l                                       ; $51d4: $4d
    db $10                                        ; $51d5: $10
    inc e                                         ; $51d6: $1c
    dec b                                         ; $51d7: $05
    dec b                                         ; $51d8: $05
    ld de, $0811                                  ; $51d9: $11 $11 $08
    ld [$3801], sp                                ; $51dc: $08 $01 $38

jr_09a_51df:
    nop                                           ; $51df: $00
    inc d                                         ; $51e0: $14
    adc d                                         ; $51e1: $8a
    inc bc                                        ; $51e2: $03
    add e                                         ; $51e3: $83
    db $10                                        ; $51e4: $10
    rrca                                          ; $51e5: $0f
    ld bc, $0a45                                  ; $51e6: $01 $45 $0a
    xor b                                         ; $51e9: $a8
    ld de, $0658                                  ; $51ea: $11 $58 $06
    inc [hl]                                      ; $51ed: $34
    ld [$4456], sp                                ; $51ee: $08 $56 $44
    adc e                                         ; $51f1: $8b
    inc bc                                        ; $51f2: $03
    ld b, l                                       ; $51f3: $45
    adc a                                         ; $51f4: $8f
    inc bc                                        ; $51f5: $03
    ld d, h                                       ; $51f6: $54
    sub e                                         ; $51f7: $93
    inc bc                                        ; $51f8: $03
    ret z                                         ; $51f9: $c8

    ld a, [bc]                                    ; $51fa: $0a
    nop                                           ; $51fb: $00
    ld e, $10                                     ; $51fc: $1e $10
    adc b                                         ; $51fe: $88
    adc b                                         ; $51ff: $88
    ld c, a                                       ; $5200: $4f
    dec b                                         ; $5201: $05
    ld l, $03                                     ; $5202: $2e $03
    push de                                       ; $5204: $d5
    inc hl                                        ; $5205: $23
    inc c                                         ; $5206: $0c
    nop                                           ; $5207: $00
    cp $00                                        ; $5208: $fe $00
    db $f4                                        ; $520a: $f4
    adc l                                         ; $520b: $8d
    ld sp, hl                                     ; $520c: $f9
    cp e                                          ; $520d: $bb
    db $d3                                        ; $520e: $d3
    adc $f7                                       ; $520f: $ce $f7
    db $ec                                        ; $5211: $ec
    ld [bc], a                                    ; $5212: $02
    rst $30                                       ; $5213: $f7
    cp c                                          ; $5214: $b9
    xor $f4                                       ; $5215: $ee $f4
    db $eb                                        ; $5217: $eb
    jp c, Jump_000_0740                           ; $5218: $da $40 $07

    rst $18                                       ; $521b: $df
    nop                                           ; $521c: $00
    rst $38                                       ; $521d: $ff
    ld sp, hl                                     ; $521e: $f9
    cp $7e                                        ; $521f: $fe $7e
    rst $30                                       ; $5221: $f7
    sub $68                                       ; $5222: $d6 $68
    or a                                          ; $5224: $b7
    nop                                           ; $5225: $00
    jp $1fff                                      ; $5226: $c3 $ff $1f


    ld h, l                                       ; $5229: $65
    ld a, [hl]                                    ; $522a: $7e
    rst $38                                       ; $522b: $ff
    rst $38                                       ; $522c: $ff
    ld l, d                                       ; $522d: $6a
    nop                                           ; $522e: $00
    cp a                                          ; $522f: $bf
    nop                                           ; $5230: $00
    rst $38                                       ; $5231: $ff
    ld [hl], l                                    ; $5232: $75
    add b                                         ; $5233: $80
    rst $38                                       ; $5234: $ff
    ld a, a                                       ; $5235: $7f
    rst $28                                       ; $5236: $ef
    nop                                           ; $5237: $00
    rst $38                                       ; $5238: $ff
    ld d, e                                       ; $5239: $53
    rst $38                                       ; $523a: $ff
    pop bc                                        ; $523b: $c1
    rst $38                                       ; $523c: $ff
    ei                                            ; $523d: $fb
    rst $38                                       ; $523e: $ff
    or $0a                                        ; $523f: $f6 $0a
    ei                                            ; $5241: $fb
    inc de                                        ; $5242: $13
    db $ed                                        ; $5243: $ed
    ld d, a                                       ; $5244: $57
    ret z                                         ; $5245: $c8

    ld [hl+], a                                   ; $5246: $22
    sbc a                                         ; $5247: $9f
    ld d, b                                       ; $5248: $50
    inc de                                        ; $5249: $13
    rst $18                                       ; $524a: $df
    nop                                           ; $524b: $00
    rst $38                                       ; $524c: $ff
    ld l, $fb                                     ; $524d: $2e $fb

jr_09a_524f:
    rst $20                                       ; $524f: $e7
    dec e                                         ; $5250: $1d
    db $dd                                        ; $5251: $dd
    jp nz, $00fb                                  ; $5252: $c2 $fb $00

    ld hl, sp-$61                                 ; $5255: $f8 $9f
    cp $a8                                        ; $5257: $fe $a8
    rst $10                                       ; $5259: $d7
    ld d, [hl]                                    ; $525a: $56
    pop hl                                        ; $525b: $e1
    adc [hl]                                      ; $525c: $8e
    jr nz, jr_09a_524f                            ; $525d: $20 $f0

    ld b, b                                       ; $525f: $40
    ld [$5202], sp                                ; $5260: $08 $02 $52
    db $ed                                        ; $5263: $ed
    adc b                                         ; $5264: $88
    ld [hl], a                                    ; $5265: $77
    ld d, c                                       ; $5266: $51
    nop                                           ; $5267: $00
    ld a, $27                                     ; $5268: $3e $27
    rst $38                                       ; $526a: $ff
    add [hl]                                      ; $526b: $86
    ld a, a                                       ; $526c: $7f
    ld a, [c]                                     ; $526d: $f2
    rrca                                          ; $526e: $0f
    dec b                                         ; $526f: $05
    nop                                           ; $5270: $00
    rst $38                                       ; $5271: $ff
    ld [de], a                                    ; $5272: $12
    rst $38                                       ; $5273: $ff
    db $e4                                        ; $5274: $e4
    dec de                                        ; $5275: $1b
    ld a, e                                       ; $5276: $7b
    add h                                         ; $5277: $84
    db $dd                                        ; $5278: $dd
    nop                                           ; $5279: $00
    nop                                           ; $527a: $00
    inc bc                                        ; $527b: $03
    rst $38                                       ; $527c: $ff
    pop de                                        ; $527d: $d1
    xor a                                         ; $527e: $af
    ld l, b                                       ; $527f: $68
    sub a                                         ; $5280: $97
    ld d, $00                                     ; $5281: $16 $00
    pop hl                                        ; $5283: $e1
    jr nz, @+$01                                  ; $5284: $20 $ff

    add d                                         ; $5286: $82
    rst $38                                       ; $5287: $ff
    and c                                         ; $5288: $a1
    ld a, a                                       ; $5289: $7f
    sub h                                         ; $528a: $94
    nop                                           ; $528b: $00
    ld a, e                                       ; $528c: $7b
    rst $28                                       ; $528d: $ef
    scf                                           ; $528e: $37
    di                                            ; $528f: $f3
    sbc a                                         ; $5290: $9f
    db $fd                                        ; $5291: $fd
    rst $08                                       ; $5292: $cf
    rst $30                                       ; $5293: $f7
    nop                                           ; $5294: $00
    rst $28                                       ; $5295: $ef
    ld h, e                                       ; $5296: $63
    rst $28                                       ; $5297: $ef
    cp a                                          ; $5298: $bf
    rst $30                                       ; $5299: $f7
    ld e, a                                       ; $529a: $5f
    rst $30                                       ; $529b: $f7
    ld a, [de]                                    ; $529c: $1a
    nop                                           ; $529d: $00
    rst $30                                       ; $529e: $f7
    call nz, $daef                                ; $529f: $c4 $ef $da
    db $ed                                        ; $52a2: $ed
    call nz, $d0eb                                ; $52a3: $c4 $eb $d0
    nop                                           ; $52a6: $00
    rst $28                                       ; $52a7: $ef
    jp $9dec                                      ; $52a8: $c3 $ec $9d


jr_09a_52ab:
    ldh [$ca], a                                  ; $52ab: $e0 $ca
    ldh [$dd], a                                  ; $52ad: $e0 $dd
    nop                                           ; $52af: $00
    ldh [$86], a                                  ; $52b0: $e0 $86
    add sp, -$2d                                  ; $52b2: $e8 $d3
    db $ec                                        ; $52b4: $ec
    ret nz                                        ; $52b5: $c0

    rst $28                                       ; $52b6: $ef
    ret c                                         ; $52b7: $d8

    nop                                           ; $52b8: $00
    rst $28                                       ; $52b9: $ef
    adc [hl]                                      ; $52ba: $8e
    rst $28                                       ; $52bb: $ef
    db $d3                                        ; $52bc: $d3
    db $ec                                        ; $52bd: $ec
    ld c, [hl]                                    ; $52be: $4e
    ldh [$d5], a                                  ; $52bf: $e0 $d5
    jr nz, jr_09a_52ab                            ; $52c1: $20 $e8

    adc $14                                       ; $52c3: $ce $14
    db $10                                        ; $52c5: $10
    db $db                                        ; $52c6: $db
    db $ec                                        ; $52c7: $ec
    db $fd                                        ; $52c8: $fd

jr_09a_52c9:
    rst $28                                       ; $52c9: $ef
    ei                                            ; $52ca: $fb
    add b                                         ; $52cb: $80
    ld b, $01                                     ; $52cc: $06 $01
    rst $38                                       ; $52ce: $ff
    rst $38                                       ; $52cf: $ff
    cpl                                           ; $52d0: $2f
    ret nc                                        ; $52d1: $d0

    rst $38                                       ; $52d2: $ff
    nop                                           ; $52d3: $00
    ld a, [hl]                                    ; $52d4: $7e
    nop                                           ; $52d5: $00
    add b                                         ; $52d6: $80
    or l                                          ; $52d7: $b5
    ld b, b                                       ; $52d8: $40
    db $fd                                        ; $52d9: $fd
    ld [bc], a                                    ; $52da: $02
    ld l, d                                       ; $52db: $6a
    dec d                                         ; $52dc: $15
    ld a, [$0000]                                 ; $52dd: $fa $00 $00
    push de                                       ; $52e0: $d5

jr_09a_52e1:
    nop                                           ; $52e1: $00
    ret z                                         ; $52e2: $c8

    scf                                           ; $52e3: $37
    ld e, l                                       ; $52e4: $5d
    ld [hl+], a                                   ; $52e5: $22
    cp $00                                        ; $52e6: $fe $00
    ld bc, $40bf                                  ; $52e8: $01 $bf $40
    cpl                                           ; $52eb: $2f
    ret nz                                        ; $52ec: $c0

    dec [hl]                                      ; $52ed: $35
    ret nz                                        ; $52ee: $c0

    sbc d                                         ; $52ef: $9a
    nop                                           ; $52f0: $00
    ld h, b                                       ; $52f1: $60
    ld e, l                                       ; $52f2: $5d
    jr nz, @+$6d                                  ; $52f3: $20 $6b

    add b                                         ; $52f5: $80
    ld a, $c1                                     ; $52f6: $3e $c1
    and c                                         ; $52f8: $a1
    nop                                           ; $52f9: $00
    ld e, [hl]                                    ; $52fa: $5e
    ld d, h                                       ; $52fb: $54
    xor e                                         ; $52fc: $ab
    xor d                                         ; $52fd: $aa
    ld d, l                                       ; $52fe: $55
    db $fc                                        ; $52ff: $fc
    inc bc                                        ; $5300: $03
    db $fd                                        ; $5301: $fd
    nop                                           ; $5302: $00
    ld [bc], a                                    ; $5303: $02
    ld d, a                                       ; $5304: $57
    nop                                           ; $5305: $00
    add c                                         ; $5306: $81
    ld a, [hl]                                    ; $5307: $7e
    jr z, jr_09a_52e1                             ; $5308: $28 $d7

    ld d, h                                       ; $530a: $54
    nop                                           ; $530b: $00
    db $eb                                        ; $530c: $eb
    sbc d                                         ; $530d: $9a
    push hl                                       ; $530e: $e5
    ccf                                           ; $530f: $3f
    ret nz                                        ; $5310: $c0

    cp a                                          ; $5311: $bf
    ld b, b                                       ; $5312: $40
    rst $18                                       ; $5313: $df
    jr nz, jr_09a_5336                            ; $5314: $20 $20

    db $fd                                        ; $5316: $fd
    xor l                                         ; $5317: $ad
    inc b                                         ; $5318: $04
    ld [hl], l                                    ; $5319: $75
    add b                                         ; $531a: $80
    rst $18                                       ; $531b: $df
    jr nz, jr_09a_52c9                            ; $531c: $20 $ab

    jr nz, jr_09a_5374                            ; $531e: $20 $54

    ld d, l                                       ; $5320: $55
    ld b, h                                       ; $5321: $44
    inc b                                         ; $5322: $04
    xor c                                         ; $5323: $a9
    ld b, $5a                                     ; $5324: $06 $5a
    rlca                                          ; $5326: $07
    adc d                                         ; $5327: $8a
    ld bc, $3d74                                  ; $5328: $01 $74 $3d
    jp nz, Jump_000_03fc                          ; $532b: $c2 $fc $03

    push de                                       ; $532e: $d5
    ld [bc], a                                    ; $532f: $02
    ld d, d                                       ; $5330: $52
    inc b                                         ; $5331: $04
    add b                                         ; $5332: $80
    ld c, [hl]                                    ; $5333: $4e
    rlca                                          ; $5334: $07
    ld d, a                                       ; $5335: $57

jr_09a_5336:
    xor b                                         ; $5336: $a8
    xor d                                         ; $5337: $aa
    inc b                                         ; $5338: $04
    di                                            ; $5339: $f3
    inc c                                         ; $533a: $0c
    ld l, c                                       ; $533b: $69
    jr c, @-$78                                   ; $533c: $38 $86

    ld d, a                                       ; $533e: $57
    ld h, d                                       ; $533f: $62
    rlca                                          ; $5340: $07
    add [hl]                                      ; $5341: $86
    add hl, bc                                    ; $5342: $09
    ld l, d                                       ; $5343: $6a
    rrca                                          ; $5344: $0f
    ld a, a                                       ; $5345: $7f
    nop                                           ; $5346: $00
    db $eb                                        ; $5347: $eb
    inc d                                         ; $5348: $14
    nop                                           ; $5349: $00
    rst $30                                       ; $534a: $f7
    nop                                           ; $534b: $00
    ld c, h                                       ; $534c: $4c
    ld [$70ab], sp                                ; $534d: $08 $ab $70
    nop                                           ; $5350: $00
    xor e                                         ; $5351: $ab
    rlca                                          ; $5352: $07
    nop                                           ; $5353: $00
    ld d, h                                       ; $5354: $54
    inc bc                                        ; $5355: $03
    xor [hl]                                      ; $5356: $ae
    ld bc, $0057                                  ; $5357: $01 $57 $00
    ld d, [hl]                                    ; $535a: $56
    jp hl                                         ; $535b: $e9


    ld b, c                                       ; $535c: $41
    or l                                          ; $535d: $b5
    or b                                          ; $535e: $b0
    ld de, $00ea                                  ; $535f: $11 $ea $00
    dec d                                         ; $5362: $15
    ret nz                                        ; $5363: $c0

    ld l, a                                       ; $5364: $6f
    ld a, [hl-]                                   ; $5365: $3a
    inc bc                                        ; $5366: $03
    db $10                                        ; $5367: $10
    ld l, d                                       ; $5368: $6a
    sub a                                         ; $5369: $97
    push af                                       ; $536a: $f5
    and h                                         ; $536b: $a4
    ld bc, $fffe                                  ; $536c: $01 $fe $ff
    dec hl                                        ; $536f: $2b
    rst $30                                       ; $5370: $f7
    nop                                           ; $5371: $00
    ld e, e                                       ; $5372: $5b
    or a                                          ; $5373: $b7

jr_09a_5374:
    ld a, [hl+]                                   ; $5374: $2a
    rst $10                                       ; $5375: $d7
    adc e                                         ; $5376: $8b
    ld [hl], a                                    ; $5377: $77
    ld c, c                                       ; $5378: $49
    or a                                          ; $5379: $b7
    nop                                           ; $537a: $00
    and e                                         ; $537b: $a3
    ld d, a                                       ; $537c: $57
    jp hl                                         ; $537d: $e9


    rla                                           ; $537e: $17
    jp $8b37                                      ; $537f: $c3 $37 $8b


    ld [hl], a                                    ; $5382: $77
    nop                                           ; $5383: $00
    ld b, e                                       ; $5384: $43
    or a                                          ; $5385: $b7
    adc e                                         ; $5386: $8b
    ld [hl], a                                    ; $5387: $77
    and d                                         ; $5388: $a2
    ld d, a                                       ; $5389: $57
    ld c, e                                       ; $538a: $4b
    or a                                          ; $538b: $b7
    nop                                           ; $538c: $00
    pop af                                        ; $538d: $f1
    rlca                                          ; $538e: $07
    ei                                            ; $538f: $fb
    rlca                                          ; $5390: $07
    db $e3                                        ; $5391: $e3
    rla                                           ; $5392: $17
    ld sp, hl                                     ; $5393: $f9
    rlca                                          ; $5394: $07
    nop                                           ; $5395: $00
    di                                            ; $5396: $f3
    rlca                                          ; $5397: $07
    db $eb                                        ; $5398: $eb
    rla                                           ; $5399: $17
    db $d3                                        ; $539a: $d3
    scf                                           ; $539b: $37
    cp a                                          ; $539c: $bf
    rst $30                                       ; $539d: $f7
    ld b, b                                       ; $539e: $40
    db $db                                        ; $539f: $db
    sbc h                                         ; $53a0: $9c
    inc d                                         ; $53a1: $14
    xor l                                         ; $53a2: $ad
    ld a, [c]                                     ; $53a3: $f2
    inc hl                                        ; $53a4: $23
    db $fd                                        ; $53a5: $fd
    adc [hl]                                      ; $53a6: $8e
    di                                            ; $53a7: $f3
    add d                                         ; $53a8: $82
    db $10                                        ; $53a9: $10
    ld b, e                                       ; $53aa: $43
    rst $10                                       ; $53ab: $d7
    ld a, d                                       ; $53ac: $7a
    xor a                                         ; $53ad: $af
    ret nc                                        ; $53ae: $d0

    ccf                                           ; $53af: $3f
    db $10                                        ; $53b0: $10
    ld c, e                                       ; $53b1: $4b
    ld l, $00                                     ; $53b2: $2e $00
    pop af                                        ; $53b4: $f1
    and $bb                                       ; $53b5: $e6 $bb
    dec hl                                        ; $53b7: $2b
    or $a5                                        ; $53b8: $f6 $a5
    rst $38                                       ; $53ba: $ff
    inc l                                         ; $53bb: $2c
    nop                                           ; $53bc: $00
    di                                            ; $53bd: $f3
    and a                                         ; $53be: $a7
    ld hl, sp+$0d                                 ; $53bf: $f8 $0d
    ld a, [c]                                     ; $53c1: $f2
    ldh a, [rIF]                                  ; $53c2: $f0 $0f
    xor d                                         ; $53c4: $aa
    nop                                           ; $53c5: $00
    rst $10                                       ; $53c6: $d7
    ld [c], a                                     ; $53c7: $e2
    ld a, a                                       ; $53c8: $7f
    cp b                                          ; $53c9: $b8
    rst $08                                       ; $53ca: $cf
    ld d, d                                       ; $53cb: $52
    rst $38                                       ; $53cc: $ff
    xor b                                         ; $53cd: $a8
    inc bc                                        ; $53ce: $03
    ld d, a                                       ; $53cf: $57
    or d                                          ; $53d0: $b2
    ld l, a                                       ; $53d1: $6f
    ret c                                         ; $53d2: $d8

    ld [hl], a                                    ; $53d3: $77
    ld [hl-], a                                   ; $53d4: $32
    nop                                           ; $53d5: $00
    ld h, e                                       ; $53d6: $63
    and b                                         ; $53d7: $a0
    rra                                           ; $53d8: $1f
    nop                                           ; $53d9: $00
    dec d                                         ; $53da: $15
    ld a, [$f1ae]                                 ; $53db: $fa $ae $f1
    dec h                                         ; $53de: $25
    cp $ab                                        ; $53df: $fe $ab
    or $20                                        ; $53e1: $f6 $20
    dec h                                         ; $53e3: $25
    ei                                            ; $53e4: $fb
    and b                                         ; $53e5: $a0
    rra                                           ; $53e6: $1f
    ld d, [hl]                                    ; $53e7: $56
    db $ed                                        ; $53e8: $ed
    xor d                                         ; $53e9: $aa
    rst $10                                       ; $53ea: $d7
    jp nc, Jump_09a_6f00                          ; $53eb: $d2 $00 $6f

    xor b                                         ; $53ee: $a8
    rst $10                                       ; $53ef: $d7
    or d                                          ; $53f0: $b2
    ld a, a                                       ; $53f1: $7f
    add b                                         ; $53f2: $80
    ld d, $11                                     ; $53f3: $16 $11
    rrca                                          ; $53f5: $0f
    ld b, d                                       ; $53f6: $42
    rst $38                                       ; $53f7: $ff
    ld bc, $8360                                  ; $53f8: $01 $60 $83
    rst $38                                       ; $53fb: $ff
    pop bc                                        ; $53fc: $c1
    cp a                                          ; $53fd: $bf
    inc b                                         ; $53fe: $04
    ld c, b                                       ; $53ff: $48
    ld d, h                                       ; $5400: $54
    nop                                           ; $5401: $00
    xor e                                         ; $5402: $ab
    ld a, [$fd05]                                 ; $5403: $fa $05 $fd
    ld [bc], a                                    ; $5406: $02
    rst $38                                       ; $5407: $ff
    nop                                           ; $5408: $00
    rst $18                                       ; $5409: $df

jr_09a_540a:
    nop                                           ; $540a: $00
    jr nz, jr_09a_540a                            ; $540b: $20 $fd

    ld [bc], a                                    ; $540d: $02
    xor $13                                       ; $540e: $ee $13
    pop af                                        ; $5410: $f1
    ld [$0055], sp                                ; $5411: $08 $55 $00
    xor d                                         ; $5414: $aa
    xor d                                         ; $5415: $aa
    ld d, l                                       ; $5416: $55
    rst $30                                       ; $5417: $f7
    ld [$00ff], sp                                ; $5418: $08 $ff $00
    db $fd                                        ; $541b: $fd
    nop                                           ; $541c: $00
    ld [bc], a                                    ; $541d: $02
    rra                                           ; $541e: $1f
    jr nz, @-$2b                                  ; $541f: $20 $d3

    jr nz, jr_09a_543e                            ; $5421: $20 $1b

    ldh [rHDMA5], a                               ; $5423: $e0 $55
    ld [de], a                                    ; $5425: $12
    xor d                                         ; $5426: $aa
    ei                                            ; $5427: $fb
    inc b                                         ; $5428: $04
    jr nz, jr_09a_5433                            ; $5429: $20 $08

    ei                                            ; $542b: $fb
    inc b                                         ; $542c: $04
    ld d, $08                                     ; $542d: $16 $08
    rst $38                                       ; $542f: $ff
    nop                                           ; $5430: $00
    nop                                           ; $5431: $00
    ld d, h                                       ; $5432: $54

jr_09a_5433:
    xor e                                         ; $5433: $ab
    ld [$fe15], a                                 ; $5434: $ea $15 $fe
    ld bc, $10fe                                  ; $5437: $01 $fe $10
    ld bc, $03fc                                  ; $543a: $01 $fc $03
    inc b                                         ; $543d: $04

jr_09a_543e:
    ld [$41be], sp                                ; $543e: $08 $be $41
    rst $30                                       ; $5441: $f7
    ld [$f000], sp                                ; $5442: $08 $00 $f0
    rrca                                          ; $5445: $0f
    rst $30                                       ; $5446: $f7
    rrca                                          ; $5447: $0f
    rst $38                                       ; $5448: $ff
    nop                                           ; $5449: $00
    cp a                                          ; $544a: $bf
    ld b, b                                       ; $544b: $40
    nop                                           ; $544c: $00
    ld a, a                                       ; $544d: $7f
    ret nz                                        ; $544e: $c0

    db $fd                                        ; $544f: $fd
    ld b, d                                       ; $5450: $42
    adc a                                         ; $5451: $8f
    db $10                                        ; $5452: $10
    db $eb                                        ; $5453: $eb
    inc [hl]                                      ; $5454: $34
    ld [bc], a                                    ; $5455: $02
    dec sp                                        ; $5456: $3b
    db $fc                                        ; $5457: $fc
    rst $18                                       ; $5458: $df
    ldh [rPCM34], a                               ; $5459: $e0 $77
    adc b                                         ; $545b: $88
    ld d, h                                       ; $545c: $54
    ld [$10ff], sp                                ; $545d: $08 $ff $10
    nop                                           ; $5460: $00
    ld a, a                                       ; $5461: $7f
    add b                                         ; $5462: $80
    inc [hl]                                      ; $5463: $34
    ld [$08f7], sp                                ; $5464: $08 $f7 $08
    rst $28                                       ; $5467: $ef
    db $10                                        ; $5468: $10
    ret nz                                        ; $5469: $c0

    inc a                                         ; $546a: $3c
    ld [$0840], sp                                ; $546b: $08 $40 $08
    call c, $c823                                 ; $546e: $dc $23 $c8
    ld sp, $31ce                                  ; $5471: $31 $ce $31
    nop                                           ; $5474: $00
    rst $18                                       ; $5475: $df
    inc a                                         ; $5476: $3c
    ld hl, sp+$0f                                 ; $5477: $f8 $0f
    adc a                                         ; $5479: $8f
    ld b, a                                       ; $547a: $47
    cp l                                          ; $547b: $bd
    ld b, e                                       ; $547c: $43
    nop                                           ; $547d: $00
    pop bc                                        ; $547e: $c1
    ld a, a                                       ; $547f: $7f
    rst $38                                       ; $5480: $ff
    db $10                                        ; $5481: $10
    rra                                           ; $5482: $1f

jr_09a_5483:
    ldh a, [$ef]                                  ; $5483: $f0 $ef
    ldh a, [rP1]                                  ; $5485: $f0 $00
    rst $28                                       ; $5487: $ef
    sub b                                         ; $5488: $90
    rst $38                                       ; $5489: $ff
    add b                                         ; $548a: $80
    ld l, a                                       ; $548b: $6f

jr_09a_548c:
    sub b                                         ; $548c: $90
    cp $01                                        ; $548d: $fe $01
    jr nz, jr_09a_548c                            ; $548f: $20 $fb

    dec b                                         ; $5491: $05
    jr z, @+$1a                                   ; $5492: $28 $18

    db $fd                                        ; $5494: $fd
    ld [bc], a                                    ; $5495: $02
    cp e                                          ; $5496: $bb
    ld b, h                                       ; $5497: $44
    ld a, a                                       ; $5498: $7f
    inc b                                         ; $5499: $04
    add b                                         ; $549a: $80
    sbc a                                         ; $549b: $9f
    ldh [rSB], a                                  ; $549c: $e0 $01
    ldh a, [rSCY]                                 ; $549e: $f0 $42
    ld [$10ef], sp                                ; $54a0: $08 $ef $10
    jr nz, jr_09a_5483                            ; $54a3: $20 $de

    ld hl, $0870                                  ; $54a5: $21 $70 $08
    call c, Call_000_2b23                         ; $54a8: $dc $23 $2b
    call nc, $00bd                                ; $54ab: $d4 $bd $00
    ld a, a                                       ; $54ae: $7f
    ld sp, hl                                     ; $54af: $f9
    rlca                                          ; $54b0: $07
    db $fd                                        ; $54b1: $fd
    inc bc                                        ; $54b2: $03
    cp l                                          ; $54b3: $bd
    ld b, e                                       ; $54b4: $43
    ld e, l                                       ; $54b5: $5d
    nop                                           ; $54b6: $00
    and e                                         ; $54b7: $a3
    cp a                                          ; $54b8: $bf
    jp $a35d                                      ; $54b9: $c3 $5d $a3


    cpl                                           ; $54bc: $2f
    db $d3                                        ; $54bd: $d3
    ld a, h                                       ; $54be: $7c
    db $10                                        ; $54bf: $10
    add e                                         ; $54c0: $83
    db $db                                        ; $54c1: $db
    inc h                                         ; $54c2: $24
    ld l, b                                       ; $54c3: $68
    ld [$10ef], sp                                ; $54c4: $08 $ef $10
    ld e, l                                       ; $54c7: $5d
    and d                                         ; $54c8: $a2
    nop                                           ; $54c9: $00
    xor e                                         ; $54ca: $ab
    ld d, h                                       ; $54cb: $54
    ld d, $e9                                     ; $54cc: $16 $e9
    sbc $21                                       ; $54ce: $de $21
    xor d                                         ; $54d0: $aa
    ld a, a                                       ; $54d1: $7f
    nop                                           ; $54d2: $00
    ld [$bec7], sp                                ; $54d3: $08 $c7 $be
    ld b, c                                       ; $54d6: $41
    ld b, c                                       ; $54d7: $41
    rst $38                                       ; $54d8: $ff
    rst $38                                       ; $54d9: $ff
    ld a, a                                       ; $54da: $7f
    nop                                           ; $54db: $00
    ret z                                         ; $54dc: $c8

    ccf                                           ; $54dd: $3f
    ld [c], a                                     ; $54de: $e2
    rra                                           ; $54df: $1f
    add l                                         ; $54e0: $85
    ld a, d                                       ; $54e1: $7a
    adc d                                         ; $54e2: $8a
    dec e                                         ; $54e3: $1d
    nop                                           ; $54e4: $00
    di                                            ; $54e5: $f3
    inc e                                         ; $54e6: $1c
    rst $30                                       ; $54e7: $f7
    ld hl, sp-$51                                 ; $54e8: $f8 $af
    ld d, b                                       ; $54ea: $50
    ld d, [hl]                                    ; $54eb: $56
    xor c                                         ; $54ec: $a9
    nop                                           ; $54ed: $00
    cp l                                          ; $54ee: $bd
    ld b, d                                       ; $54ef: $42
    ld e, d                                       ; $54f0: $5a
    and l                                         ; $54f1: $a5
    sbc l                                         ; $54f2: $9d
    ld h, e                                       ; $54f3: $63
    swap a                                        ; $54f4: $cb $37
    nop                                           ; $54f6: $00
    push af                                       ; $54f7: $f5
    dec bc                                        ; $54f8: $0b
    rst $38                                       ; $54f9: $ff
    inc bc                                        ; $54fa: $03
    ld l, l                                       ; $54fb: $6d
    sub e                                         ; $54fc: $93
    or a                                          ; $54fd: $b7
    ld c, e                                       ; $54fe: $4b

jr_09a_54ff:
    nop                                           ; $54ff: $00
    ld l, c                                       ; $5500: $69
    sub a                                         ; $5501: $97
    sub e                                         ; $5502: $93
    ld l, a                                       ; $5503: $6f
    ld [bc], a                                    ; $5504: $02
    cp e                                          ; $5505: $bb
    ld b, d                                       ; $5506: $42
    and e                                         ; $5507: $a3
    nop                                           ; $5508: $00
    ld [hl+], a                                   ; $5509: $22
    sbc e                                         ; $550a: $9b
    ld b, [hl]                                    ; $550b: $46
    cp e                                          ; $550c: $bb
    ld [bc], a                                    ; $550d: $02

Call_09a_550e:
    or e                                          ; $550e: $b3
    ld d, [hl]                                    ; $550f: $56
    adc e                                         ; $5510: $8b
    ld [bc], a                                    ; $5511: $02
    ld [bc], a                                    ; $5512: $02
    cp e                                          ; $5513: $bb
    sub $8b                                       ; $5514: $d6 $8b
    add e                                         ; $5516: $83
    ld a, h                                       ; $5517: $7c
    ld [bc], a                                    ; $5518: $02
    ld [$0082], sp                                ; $5519: $08 $82 $00
    ld a, l                                       ; $551c: $7d
    add e                                         ; $551d: $83
    ld a, h                                       ; $551e: $7c
    add $3c                                       ; $551f: $c6 $3c
    add b                                         ; $5521: $80
    ld a, h                                       ; $5522: $7c
    push bc                                       ; $5523: $c5
    db $10                                        ; $5524: $10
    inc a                                         ; $5525: $3c
    add hl, de                                    ; $5526: $19
    cp $02                                        ; $5527: $fe $02
    jr z, jr_09a_557c                             ; $5529: $28 $51

    ld a, $99                                     ; $552b: $3e $99
    ld a, $00                                     ; $552d: $3e $00
    sub e                                         ; $552f: $93
    inc a                                         ; $5530: $3c
    nop                                           ; $5531: $00
    cp l                                          ; $5532: $bd
    ld d, b                                       ; $5533: $50
    and c                                         ; $5534: $a1
    jr nz, @-$61                                  ; $5535: $20 $9d

    nop                                           ; $5537: $00
    ld b, h                                       ; $5538: $44
    or c                                          ; $5539: $b1
    ld [bc], a                                    ; $553a: $02
    xor l                                         ; $553b: $ad
    ld h, l                                       ; $553c: $65
    sbc c                                         ; $553d: $99
    ld [bc], a                                    ; $553e: $02
    or l                                          ; $553f: $b5
    nop                                           ; $5540: $00
    ld c, c                                       ; $5541: $49
    or l                                          ; $5542: $b5
    ld a, [bc]                                    ; $5543: $0a
    or e                                          ; $5544: $b3
    and $9b                                       ; $5545: $e6 $9b
    ld [bc], a                                    ; $5547: $02
    xor e                                         ; $5548: $ab
    nop                                           ; $5549: $00
    add [hl]                                      ; $554a: $86
    or e                                          ; $554b: $b3
    nop                                           ; $554c: $00
    sbc e                                         ; $554d: $9b
    add [hl]                                      ; $554e: $86
    xor e                                         ; $554f: $ab
    adc b                                         ; $5550: $88
    db $d3                                        ; $5551: $d3
    nop                                           ; $5552: $00
    add [hl]                                      ; $5553: $86
    db $db                                        ; $5554: $db
    add l                                         ; $5555: $85
    ld a, b                                       ; $5556: $78
    ret                                           ; $5557: $c9


    jr nc, jr_09a_54ff                            ; $5558: $30 $a5

    nop                                           ; $555a: $00
    nop                                           ; $555b: $00
    sbc c                                         ; $555c: $99

jr_09a_555d:
    inc b                                         ; $555d: $04
    cp c                                          ; $555e: $b9
    inc b                                         ; $555f: $04
    sbc c                                         ; $5560: $99
    inc b                                         ; $5561: $04
    dec sp                                        ; $5562: $3b
    add h                                         ; $5563: $84
    nop                                           ; $5564: $00
    sbc c                                         ; $5565: $99
    inc b                                         ; $5566: $04
    sbc c                                         ; $5567: $99
    ld a, $d3                                     ; $5568: $3e $d3
    inc e                                         ; $556a: $1c
    push bc                                       ; $556b: $c5
    jr nz, jr_09a_556e                            ; $556c: $20 $00

jr_09a_556e:
    ret                                           ; $556e: $c9


    jr nc, jr_09a_555d                            ; $556f: $30 $ec

    ld de, $31c8                                  ; $5571: $11 $c8 $31
    db $ec                                        ; $5574: $ec
    ld de, $e800                                  ; $5575: $11 $00 $e8
    ld de, $8d92                                  ; $5578: $11 $92 $8d
    ld b, c                                       ; $557b: $41

jr_09a_557c:
    cp e                                          ; $557c: $bb
    adc c                                         ; $557d: $89
    and e                                         ; $557e: $a3
    nop                                           ; $557f: $00
    ld bc, $819b                                  ; $5580: $01 $9b $81
    cp e                                          ; $5583: $bb
    ld bc, $a1a3                                  ; $5584: $01 $a3 $a1
    sbc e                                         ; $5587: $9b
    nop                                           ; $5588: $00
    ld bc, $80bb                                  ; $5589: $01 $bb $80
    db $db                                        ; $558c: $db
    add d                                         ; $558d: $82
    res 1, b                                      ; $558e: $cb $88
    db $d3                                        ; $5590: $d3
    nop                                           ; $5591: $00
    add b                                         ; $5592: $80
    db $dd                                        ; $5593: $dd
    add b                                         ; $5594: $80
    db $dd                                        ; $5595: $dd
    add l                                         ; $5596: $85
    pop bc                                        ; $5597: $c1
    add b                                         ; $5598: $80
    db $dd                                        ; $5599: $dd
    nop                                           ; $559a: $00
    adc e                                         ; $559b: $8b
    pop de                                        ; $559c: $d1
    dec sp                                        ; $559d: $3b
    add h                                         ; $559e: $84
    sbc e                                         ; $559f: $9b
    inc b                                         ; $55a0: $04
    add hl, sp                                    ; $55a1: $39
    add [hl]                                      ; $55a2: $86
    add b                                         ; $55a3: $80
    inc b                                         ; $55a4: $04
    ld [$841b], sp                                ; $55a5: $08 $1b $84
    add hl, sp                                    ; $55a8: $39
    add [hl]                                      ; $55a9: $86
    ld e, d                                       ; $55aa: $5a
    add l                                         ; $55ab: $85
    db $fc                                        ; $55ac: $fc
    db $10                                        ; $55ad: $10
    ld bc, $11e8                                  ; $55ae: $01 $e8 $11
    inc b                                         ; $55b1: $04
    ld [$01ec], sp                                ; $55b2: $08 $ec $01
    ld sp, hl                                     ; $55b5: $f9
    ld bc, $0480                                  ; $55b6: $01 $80 $04
    nop                                           ; $55b9: $00
    inc bc                                        ; $55ba: $03
    xor c                                         ; $55bb: $a9
    add e                                         ; $55bc: $83
    add l                                         ; $55bd: $85
    cp e                                          ; $55be: $bb
    and c                                         ; $55bf: $a1
    sbc e                                         ; $55c0: $9b
    nop                                           ; $55c1: $00
    adc l                                         ; $55c2: $8d
    and e                                         ; $55c3: $a3
    add c                                         ; $55c4: $81
    cp e                                          ; $55c5: $bb
    and l                                         ; $55c6: $a5
    sbc e                                         ; $55c7: $9b
    add c                                         ; $55c8: $81
    xor e                                         ; $55c9: $ab
    nop                                           ; $55ca: $00
    add e                                         ; $55cb: $83
    xor l                                         ; $55cc: $ad
    sub b                                         ; $55cd: $90
    call $d987                                    ; $55ce: $cd $87 $d9
    add l                                         ; $55d1: $85
    reti                                          ; $55d2: $d9


    nop                                           ; $55d3: $00
    adc e                                         ; $55d4: $8b
    push bc                                       ; $55d5: $c5
    add c                                         ; $55d6: $81
    cp l                                          ; $55d7: $bd
    add e                                         ; $55d8: $83
    xor c                                         ; $55d9: $a9
    ld b, c                                       ; $55da: $41
    or l                                          ; $55db: $b5
    nop                                           ; $55dc: $00
    sub e                                         ; $55dd: $93
    xor l                                         ; $55de: $ad
    ld e, c                                       ; $55df: $59
    add [hl]                                      ; $55e0: $86
    ld l, b                                       ; $55e1: $68
    add a                                         ; $55e2: $87
    ld de, $00e6                                  ; $55e3: $11 $e6 $00
    ld c, b                                       ; $55e6: $48
    or c                                          ; $55e7: $b1
    ld [bc], a                                    ; $55e8: $02
    db $fc                                        ; $55e9: $fc
    ld b, [hl]                                    ; $55ea: $46
    cp a                                          ; $55eb: $bf
    ld b, $ff                                     ; $55ec: $06 $ff
    nop                                           ; $55ee: $00
    ld b, a                                       ; $55ef: $47
    cp a                                          ; $55f0: $bf
    add sp, $03                                   ; $55f1: $e8 $03
    pop af                                        ; $55f3: $f1
    rlca                                          ; $55f4: $07
    ldh [rIF], a                                  ; $55f5: $e0 $0f
    nop                                           ; $55f7: $00
    sub c                                         ; $55f8: $91
    rrca                                          ; $55f9: $0f
    ld d, c                                       ; $55fa: $51
    cpl                                           ; $55fb: $2f
    ld de, $19ef                                  ; $55fc: $11 $ef $19

Jump_09a_55ff:
    rst $20                                       ; $55ff: $e7
    nop                                           ; $5600: $00
    ld de, $80ef                                  ; $5601: $11 $ef $80
    or l                                          ; $5604: $b5
    and a                                         ; $5605: $a7
    sbc c                                         ; $5606: $99
    sub b                                         ; $5607: $90
    xor l                                         ; $5608: $ad
    nop                                           ; $5609: $00
    add e                                         ; $560a: $83
    or l                                          ; $560b: $b5
    add b                                         ; $560c: $80
    or l                                          ; $560d: $b5
    and d                                         ; $560e: $a2
    sub l                                         ; $560f: $95
    call nz, Call_000_20b9                        ; $5610: $c4 $b9 $20

jr_09a_5613:
    add b                                         ; $5613: $80
    cp l                                          ; $5614: $bd
    ldh [rSB], a                                  ; $5615: $e0 $01
    add h                                         ; $5617: $84
    ld a, l                                       ; $5618: $7d
    add d                                         ; $5619: $82
    rst $38                                       ; $561a: $ff
    add b                                         ; $561b: $80
    ld [$847b], sp                                ; $561c: $08 $7b $84
    rst $30                                       ; $561f: $f7
    adc b                                         ; $5620: $88
    xor [hl]                                      ; $5621: $ae
    ld bc, $5580                                  ; $5622: $01 $80 $55
    xor d                                         ; $5625: $aa
    jr nc, jr_09a_5613                            ; $5626: $30 $eb

    inc d                                         ; $5628: $14
    xor h                                         ; $5629: $ac
    add hl, hl                                    ; $562a: $29
    sub $09                                       ; $562b: $d6 $09
    dec d                                         ; $562d: $15
    ld [$41be], a                                 ; $562e: $ea $be $41
    add b                                         ; $5631: $80
    add $09                                       ; $5632: $c6 $09
    db $fd                                        ; $5634: $fd
    ld [bc], a                                    ; $5635: $02

jr_09a_5636:
    cp $01                                        ; $5636: $fe $01
    cp a                                          ; $5638: $bf
    ld b, b                                       ; $5639: $40
    rst $38                                       ; $563a: $ff
    ld h, h                                       ; $563b: $64
    nop                                           ; $563c: $00
    db $10                                        ; $563d: $10
    ld a, [bc]                                    ; $563e: $0a
    sub $09                                       ; $563f: $d6 $09
    ei                                            ; $5641: $fb
    inc b                                         ; $5642: $04
    jp nc, $7f19                                  ; $5643: $d2 $19 $7f

    add b                                         ; $5646: $80
    inc bc                                        ; $5647: $03
    cp a                                          ; $5648: $bf
    ret nz                                        ; $5649: $c0

    ld [hl], a                                    ; $564a: $77
    adc b                                         ; $564b: $88
    xor a                                         ; $564c: $af
    ret nc                                        ; $564d: $d0

    ld [$0c08], sp                                ; $564e: $08 $08 $0c
    ld [$df21], sp                                ; $5651: $08 $21 $df
    jr nz, jr_09a_5636                            ; $5654: $20 $e0

    add hl, bc                                    ; $5656: $09
    sbc $3c                                       ; $5657: $de $3c
    ld sp, hl                                     ; $5659: $f9
    ld c, $e0                                     ; $565a: $0e $e0
    ld bc, $4210                                  ; $565c: $01 $10 $42
    pop bc                                        ; $565f: $c1
    ld a, [hl]                                    ; $5660: $7e
    ld hl, sp+$19                                 ; $5661: $f8 $19
    ccf                                           ; $5663: $3f
    ld b, b                                       ; $5664: $40
    xor a                                         ; $5665: $af
    ld d, b                                       ; $5666: $50
    ld a, [hl-]                                   ; $5667: $3a
    or a                                          ; $5668: $b7
    ret z                                         ; $5669: $c8

    inc b                                         ; $566a: $04
    ld a, [de]                                    ; $566b: $1a
    ld l, d                                       ; $566c: $6a
    ld a, [bc]                                    ; $566d: $0a
    ld c, d                                       ; $566e: $4a
    ld [$44fc], sp                                ; $566f: $08 $fc $44
    ld [$4007], sp                                ; $5672: $08 $07 $40
    rst $38                                       ; $5675: $ff
    ld b, b                                       ; $5676: $40
    nop                                           ; $5677: $00
    rst $28                                       ; $5678: $ef
    sub b                                         ; $5679: $90
    sbc [hl]                                      ; $567a: $9e
    pop hl                                        ; $567b: $e1
    cp h                                          ; $567c: $bc
    jp $be00                                      ; $567d: $c3 $00 $be


    pop bc                                        ; $5680: $c1
    sbc h                                         ; $5681: $9c
    db $e3                                        ; $5682: $e3
    xor e                                         ; $5683: $ab
    call nc, $7ebd                                ; $5684: $d4 $bd $7e
    add b                                         ; $5687: $80
    ld e, d                                       ; $5688: $5a
    ld [$40bf], sp                                ; $5689: $08 $bf $40
    ld e, a                                       ; $568c: $5f
    and b                                         ; $568d: $a0
    cp a                                          ; $568e: $bf
    ret nz                                        ; $568f: $c0

    ld e, a                                       ; $5690: $5f
    db $10                                        ; $5691: $10
    and b                                         ; $5692: $a0
    cpl                                           ; $5693: $2f
    ret nc                                        ; $5694: $d0

    jr c, jr_09a_56b1                             ; $5695: $38 $1a

    rst $30                                       ; $5697: $f7
    ld [$50af], sp                                ; $5698: $08 $af $50
    nop                                           ; $569b: $00
    db $db                                        ; $569c: $db
    inc h                                         ; $569d: $24
    adc e                                         ; $569e: $8b
    ld a, h                                       ; $569f: $7c
    ld hl, $75fe                                  ; $56a0: $21 $fe $75
    adc d                                         ; $56a3: $8a
    ld bc, $42bf                                  ; $56a4: $01 $bf $42
    pop af                                        ; $56a7: $f1
    ld [$08f7], sp                                ; $56a8: $08 $f7 $08
    ld hl, sp+$76                                 ; $56ab: $f8 $76
    ld [bc], a                                    ; $56ad: $02
    add b                                         ; $56ae: $80
    ld d, h                                       ; $56af: $54
    nop                                           ; $56b0: $00

jr_09a_56b1:
    ld l, b                                       ; $56b1: $68
    add l                                         ; $56b2: $85
    ld a, [$9d4a]                                 ; $56b3: $fa $4a $9d
    inc sp                                        ; $56b6: $33
    call c, $f700                                 ; $56b7: $dc $00 $f7
    ld hl, sp-$11                                 ; $56ba: $f8 $ef
    ret nc                                        ; $56bc: $d0

    sub [hl]                                      ; $56bd: $96
    jp hl                                         ; $56be: $e9


    db $fd                                        ; $56bf: $fd
    jp nz, $9a02                                  ; $56c0: $c2 $02 $9a

jr_09a_56c3:
    push hl                                       ; $56c3: $e5
    sbc a                                         ; $56c4: $9f
    ld h, b                                       ; $56c5: $60
    swap h                                        ; $56c6: $cb $34
    ret nz                                        ; $56c8: $c0

    ld a, [bc]                                    ; $56c9: $0a
    ld l, [hl]                                    ; $56ca: $6e
    nop                                           ; $56cb: $00
    sub c                                         ; $56cc: $91
    or l                                          ; $56cd: $b5
    ld c, d                                       ; $56ce: $4a
    ld l, e                                       ; $56cf: $6b
    sub h                                         ; $56d0: $94
    sub c                                         ; $56d1: $91
    ld l, [hl]                                    ; $56d2: $6e
    adc e                                         ; $56d3: $8b
    nop                                           ; $56d4: $00
    ld [hl], h                                    ; $56d5: $74
    ld d, a                                       ; $56d6: $57
    xor b                                         ; $56d7: $a8
    cp e                                          ; $56d8: $bb
    ld b, h                                       ; $56d9: $44
    sub $29                                       ; $56da: $d6 $29
    adc a                                         ; $56dc: $8f
    nop                                           ; $56dd: $00
    ld [hl], b                                    ; $56de: $70
    ld b, l                                       ; $56df: $45
    cp d                                          ; $56e0: $ba
    adc d                                         ; $56e1: $8a
    ld [hl], l                                    ; $56e2: $75
    call c, Call_09a_4b23                         ; $56e3: $dc $23 $4b
    nop                                           ; $56e6: $00

jr_09a_56e7:
    or h                                          ; $56e7: $b4
    cp a                                          ; $56e8: $bf
    ld b, b                                       ; $56e9: $40
    rst $18                                       ; $56ea: $df
    jr nz, jr_09a_56e7                            ; $56eb: $20 $fa

    dec b                                         ; $56ed: $05
    pop af                                        ; $56ee: $f1
    nop                                           ; $56ef: $00
    ld c, $7a                                     ; $56f0: $0e $7a
    add a                                         ; $56f2: $87
    ldh a, [rIF]                                  ; $56f3: $f0 $0f
    cp d                                          ; $56f5: $ba
    ld b, l                                       ; $56f6: $45
    rst $38                                       ; $56f7: $ff
    ld b, h                                       ; $56f8: $44
    rst $38                                       ; $56f9: $ff
    push af                                       ; $56fa: $f5
    nop                                           ; $56fb: $00
    rst $38                                       ; $56fc: $ff
    ret nz                                        ; $56fd: $c0

    cp a                                          ; $56fe: $bf
    inc b                                         ; $56ff: $04

Jump_09a_5700:
    jr jr_09a_56c3                                ; $5700: $18 $c1

    cp a                                          ; $5702: $bf
    ld c, d                                       ; $5703: $4a
    rst $38                                       ; $5704: $ff
    push hl                                       ; $5705: $e5
    ld [bc], a                                    ; $5706: $02
    xor d                                         ; $5707: $aa
    ld d, l                                       ; $5708: $55
    xor l                                         ; $5709: $ad
    ld a, [de]                                    ; $570a: $1a
    xor d                                         ; $570b: $aa
    jr nc, jr_09a_5721                            ; $570c: $30 $13

    ld b, c                                       ; $570e: $41
    nop                                           ; $570f: $00
    cp a                                          ; $5710: $bf
    add e                                         ; $5711: $83
    ld a, a                                       ; $5712: $7f
    ld bc, $03ff                                  ; $5713: $01 $ff $03
    rst $38                                       ; $5716: $ff
    ld bc, $ff21                                  ; $5717: $01 $21 $ff
    xor e                                         ; $571a: $ab
    ld c, l                                       ; $571b: $4d
    inc bc                                        ; $571c: $03
    jp $d7ff                                      ; $571d: $c3 $ff $d7


    rst $28                                       ; $5720: $ef

jr_09a_5721:
    inc b                                         ; $5721: $04
    ld c, b                                       ; $5722: $48
    nop                                           ; $5723: $00
    add l                                         ; $5724: $85
    ld a, d                                       ; $5725: $7a
    db $10                                        ; $5726: $10
    rst $38                                       ; $5727: $ff
    ld [$14ff], sp                                ; $5728: $08 $ff $14
    rst $38                                       ; $572b: $ff
    nop                                           ; $572c: $00
    ld b, c                                       ; $572d: $41
    cp $68                                        ; $572e: $fe $68
    rst $38                                       ; $5730: $ff
    or h                                          ; $5731: $b4
    rst $38                                       ; $5732: $ff
    cp $ff                                        ; $5733: $fe $ff
    nop                                           ; $5735: $00
    ld a, c                                       ; $5736: $79
    add a                                         ; $5737: $87
    or d                                          ; $5738: $b2
    ld c, a                                       ; $5739: $4f
    ld d, c                                       ; $573a: $51
    xor a                                         ; $573b: $af
    and d                                         ; $573c: $a2
    ld e, a                                       ; $573d: $5f
    nop                                           ; $573e: $00
    dec b                                         ; $573f: $05
    rst $38                                       ; $5740: $ff
    dec bc                                        ; $5741: $0b
    rst $38                                       ; $5742: $ff
    ld d, a                                       ; $5743: $57
    rst $38                                       ; $5744: $ff
    xor a                                         ; $5745: $af
    rst $38                                       ; $5746: $ff
    nop                                           ; $5747: $00
    cpl                                           ; $5748: $2f
    ret nc                                        ; $5749: $d0

    sbc [hl]                                      ; $574a: $9e
    pop hl                                        ; $574b: $e1
    ld a, [hl+]                                   ; $574c: $2a
    push de                                       ; $574d: $d5
    sub h                                         ; $574e: $94
    db $eb                                        ; $574f: $eb
    nop                                           ; $5750: $00
    ld c, c                                       ; $5751: $49
    rst $30                                       ; $5752: $f7
    add b                                         ; $5753: $80
    rst $38                                       ; $5754: $ff
    db $eb                                        ; $5755: $eb
    rst $38                                       ; $5756: $ff
    rst $10                                       ; $5757: $d7
    rst $38                                       ; $5758: $ff
    inc b                                         ; $5759: $04
    ld hl, $13ff                                  ; $575a: $21 $ff $13
    rst $38                                       ; $575d: $ff
    and c                                         ; $575e: $a1
    inc b                                         ; $575f: $04
    nop                                           ; $5760: $00
    ld b, l                                       ; $5761: $45
    rst $38                                       ; $5762: $ff
    db $10                                        ; $5763: $10
    sbc e                                         ; $5764: $9b
    rst $38                                       ; $5765: $ff
    ld c, l                                       ; $5766: $4d
    sbc l                                         ; $5767: $9d
    inc bc                                        ; $5768: $03
    and $00                                       ; $5769: $e6 $00
    xor l                                         ; $576b: $ad
    stop                                          ; $576c: $10 $00
    ld d, l                                       ; $576e: $55
    adc d                                         ; $576f: $8a
    ld h, [hl]                                    ; $5770: $66
    nop                                           ; $5771: $00
    adc d                                         ; $5772: $8a
    rst $38                                       ; $5773: $ff
    call $0002                                    ; $5774: $cd $02 $00
    ld d, a                                       ; $5777: $57
    ld a, [hl+]                                   ; $5778: $2a
    jp hl                                         ; $5779: $e9


    ld [bc], a                                    ; $577a: $02
    cp c                                          ; $577b: $b9
    nop                                           ; $577c: $00
    ld d, l                                       ; $577d: $55
    add d                                         ; $577e: $82
    nop                                           ; $577f: $00
    ld c, h                                       ; $5780: $4c
    jr nc, @-$58                                  ; $5781: $30 $a6

    ld b, c                                       ; $5783: $41
    adc [hl]                                      ; $5784: $8e
    rst $38                                       ; $5785: $ff
    and [hl]                                      ; $5786: $a6
    nop                                           ; $5787: $00
    nop                                           ; $5788: $00
    ld c, c                                       ; $5789: $49
    inc [hl]                                      ; $578a: $34
    db $d3                                        ; $578b: $d3
    nop                                           ; $578c: $00
    cp c                                          ; $578d: $b9
    ld b, b                                       ; $578e: $40
    inc l                                         ; $578f: $2c
    inc bc                                        ; $5790: $03
    nop                                           ; $5791: $00
    xor e                                         ; $5792: $ab
    ld d, b                                       ; $5793: $50
    xor l                                         ; $5794: $ad
    ld [bc], a                                    ; $5795: $02
    ld a, [hl+]                                   ; $5796: $2a
    rst $38                                       ; $5797: $ff
    ld c, l                                       ; $5798: $4d
    jr nc, jr_09a_579b                            ; $5799: $30 $00

jr_09a_579b:
    sub $01                                       ; $579b: $d6 $01
    db $fd                                        ; $579d: $fd
    nop                                           ; $579e: $00
    ld c, a                                       ; $579f: $4f
    add b                                         ; $57a0: $80
    inc [hl]                                      ; $57a1: $34
    ret nz                                        ; $57a2: $c0

    nop                                           ; $57a3: $00
    rst $20                                       ; $57a4: $e7
    sbc b                                         ; $57a5: $98
    ld c, d                                       ; $57a6: $4a
    add b                                         ; $57a7: $80
    ld sp, $4aff                                  ; $57a8: $31 $ff $4a
    ld bc, $ab00                                  ; $57ab: $01 $00 $ab
    ld d, l                                       ; $57ae: $55
    ld l, $01                                     ; $57af: $2e $01
    ld d, b                                       ; $57b1: $50
    rst $38                                       ; $57b2: $ff
    ld d, a                                       ; $57b3: $57
    nop                                           ; $57b4: $00
    nop                                           ; $57b5: $00
    ld c, l                                       ; $57b6: $4d
    or b                                          ; $57b7: $b0
    cp d                                          ; $57b8: $ba
    dec b                                         ; $57b9: $05
    ld c, h                                       ; $57ba: $4c
    add b                                         ; $57bb: $80
    ld d, d                                       ; $57bc: $52
    rst $38                                       ; $57bd: $ff
    nop                                           ; $57be: $00
    rst $30                                       ; $57bf: $f7
    ld b, b                                       ; $57c0: $40
    xor d                                         ; $57c1: $aa
    ld b, b                                       ; $57c2: $40
    sbc d                                         ; $57c3: $9a
    rst $38                                       ; $57c4: $ff
    rst $20                                       ; $57c5: $e7
    nop                                           ; $57c6: $00
    nop                                           ; $57c7: $00
    ld d, l                                       ; $57c8: $55
    ld [$629d], sp                                ; $57c9: $08 $9d $62
    xor e                                         ; $57cc: $ab
    nop                                           ; $57cd: $00
    sub d                                         ; $57ce: $92
    rst $38                                       ; $57cf: $ff
    nop                                           ; $57d0: $00
    ld h, $c0                                     ; $57d1: $26 $c0
    cp c                                          ; $57d3: $b9
    ld b, $48                                     ; $57d4: $06 $48
    rst $38                                       ; $57d6: $ff
    xor a                                         ; $57d7: $af
    ld d, b                                       ; $57d8: $50
    nop                                           ; $57d9: $00
    ld a, [hl-]                                   ; $57da: $3a
    db $10                                        ; $57db: $10
    sbc d                                         ; $57dc: $9a
    ld [hl], l                                    ; $57dd: $75
    ld l, a                                       ; $57de: $6f
    db $10                                        ; $57df: $10
    ld a, [de]                                    ; $57e0: $1a
    rst $38                                       ; $57e1: $ff
    nop                                           ; $57e2: $00
    and l                                         ; $57e3: $a5
    ld b, d                                       ; $57e4: $42
    ld d, l                                       ; $57e5: $55
    ld [$ff8a], sp                                ; $57e6: $08 $8a $ff
    ld a, [$0000]                                 ; $57e9: $fa $00 $00
    add hl, hl                                    ; $57ec: $29
    ld b, $be                                     ; $57ed: $06 $be
    ld b, c                                       ; $57ef: $41
    ld d, [hl]                                    ; $57f0: $56
    nop                                           ; $57f1: $00
    ld h, c                                       ; $57f2: $61
    rst $38                                       ; $57f3: $ff
    nop                                           ; $57f4: $00

Jump_09a_57f5:
    ld l, $51                                     ; $57f5: $2e $51
    ld a, d                                       ; $57f7: $7a
    sub b                                         ; $57f8: $90
    sub [hl]                                      ; $57f9: $96
    rst $38                                       ; $57fa: $ff
    or e                                          ; $57fb: $b3
    inc c                                         ; $57fc: $0c
    nop                                           ; $57fd: $00
    ld d, l                                       ; $57fe: $55
    nop                                           ; $57ff: $00
    ld [$5610], a                                 ; $5800: $ea $10 $56
    xor c                                         ; $5803: $a9
    ld [hl+], a                                   ; $5804: $22
    rst $38                                       ; $5805: $ff
    nop                                           ; $5806: $00
    and d                                         ; $5807: $a2
    nop                                           ; $5808: $00
    and a                                         ; $5809: $a7
    ld e, b                                       ; $580a: $58
    ld c, d                                       ; $580b: $4a
    rst $38                                       ; $580c: $ff

jr_09a_580d:
    ld l, a                                       ; $580d: $6f
    inc b                                         ; $580e: $04
    nop                                           ; $580f: $00
    sub [hl]                                      ; $5810: $96
    inc c                                         ; $5811: $0c
    sub c                                         ; $5812: $91
    ld h, h                                       ; $5813: $64
    ld e, d                                       ; $5814: $5a
    add l                                         ; $5815: $85
    sub [hl]                                      ; $5816: $96
    rst $38                                       ; $5817: $ff
    nop                                           ; $5818: $00
    adc l                                         ; $5819: $8d
    ld [hl], b                                    ; $581a: $70
    ld d, h                                       ; $581b: $54
    inc bc                                        ; $581c: $03
    ld d, h                                       ; $581d: $54
    rst $38                                       ; $581e: $ff
    call z, $0003                                 ; $581f: $cc $03 $00
    ld a, [hl-]                                   ; $5822: $3a
    nop                                           ; $5823: $00
    ld l, h                                       ; $5824: $6c
    add e                                         ; $5825: $83
    push bc                                       ; $5826: $c5
    jr c, jr_09a_587e                             ; $5827: $38 $55

    rst $38                                       ; $5829: $ff
    nop                                           ; $582a: $00
    ret                                           ; $582b: $c9


    ld b, $ba                                     ; $582c: $06 $ba
    nop                                           ; $582e: $00
    ld l, b                                       ; $582f: $68
    rst $38                                       ; $5830: $ff
    or l                                          ; $5831: $b5
    ld b, b                                       ; $5832: $40
    nop                                           ; $5833: $00
    ld e, h                                       ; $5834: $5c
    inc bc                                        ; $5835: $03
    ld h, h                                       ; $5836: $64
    sbc b                                         ; $5837: $98
    adc l                                         ; $5838: $8d
    ld [bc], a                                    ; $5839: $02
    add sp, -$01                                  ; $583a: $e8 $ff
    nop                                           ; $583c: $00
    sub l                                         ; $583d: $95
    ld a, [bc]                                    ; $583e: $0a
    sub l                                         ; $583f: $95
    ld h, b                                       ; $5840: $60
    ld h, c                                       ; $5841: $61
    sbc l                                         ; $5842: $9d
    add a                                         ; $5843: $87
    cp c                                          ; $5844: $b9
    nop                                           ; $5845: $00
    ld c, b                                       ; $5846: $48
    add h                                         ; $5847: $84
    ld bc, $40ba                                  ; $5848: $01 $ba $40
    or [hl]                                       ; $584b: $b6

jr_09a_584c:
    db $10                                        ; $584c: $10
    xor [hl]                                      ; $584d: $ae
    inc b                                         ; $584e: $04
    ld b, b                                       ; $584f: $40
    add b                                         ; $5850: $80
    nop                                           ; $5851: $00
    rst $38                                       ; $5852: $ff
    ld b, $d3                                     ; $5853: $06 $d3
    ld bc, $00a8                                  ; $5855: $01 $a8 $00
    nop                                           ; $5858: $00
    ld d, d                                       ; $5859: $52
    xor l                                         ; $585a: $ad
    ld [$00b7], sp                                ; $585b: $08 $b7 $00
    sub $00                                       ; $585e: $d6 $00
    or l                                          ; $5860: $b5
    jr nz, jr_09a_580d                            ; $5861: $20 $aa

    nop                                           ; $5863: $00
    ld [hl], h                                    ; $5864: $74
    ld a, [bc]                                    ; $5865: $0a
    dec d                                         ; $5866: $15
    nop                                           ; $5867: $00
    add c                                         ; $5868: $81
    ld d, [hl]                                    ; $5869: $56
    add c                                         ; $586a: $81
    nop                                           ; $586b: $00
    ld d, [hl]                                    ; $586c: $56
    jr nz, jr_09a_584c                            ; $586d: $20 $dd

    db $10                                        ; $586f: $10
    db $eb                                        ; $5870: $eb
    and b                                         ; $5871: $a0
    nop                                           ; $5872: $00
    ret nz                                        ; $5873: $c0

    nop                                           ; $5874: $00
    add l                                         ; $5875: $85
    add b                                         ; $5876: $80
    cp c                                          ; $5877: $b9
    ld b, d                                       ; $5878: $42
    dec a                                         ; $5879: $3d
    inc c                                         ; $587a: $0c
    pop hl                                        ; $587b: $e1
    ld [bc], a                                    ; $587c: $02
    nop                                           ; $587d: $00

jr_09a_587e:
    db $dd                                        ; $587e: $dd
    inc b                                         ; $587f: $04
    or c                                          ; $5880: $b1
    add d                                         ; $5881: $82
    ld l, l                                       ; $5882: $6d
    nop                                           ; $5883: $00
    ld bc, $002b                                  ; $5884: $01 $2b $00
    nop                                           ; $5887: $00
    db $dd                                        ; $5888: $dd
    ld [hl+], a                                   ; $5889: $22
    add hl, hl                                    ; $588a: $29
    ret nz                                        ; $588b: $c0

    jp c, $8905                                   ; $588c: $da $05 $89

    ld [$dbff], sp                                ; $588f: $08 $ff $db
    jr nz, jr_09a_58d9                            ; $5892: $20 $45

    ld [$3703], a                                 ; $5894: $ea $03 $37
    ld [$005c], sp                                ; $5897: $08 $5c $00
    adc b                                         ; $589a: $88
    ld l, c                                       ; $589b: $69
    ld e, $b7                                     ; $589c: $1e $b7
    ld [$ff44], sp                                ; $589e: $08 $44 $ff
    dec de                                        ; $58a1: $1b
    nop                                           ; $58a2: $00
    nop                                           ; $58a3: $00
    sub a                                         ; $58a4: $97
    ld l, b                                       ; $58a5: $68
    ld e, c                                       ; $58a6: $59
    ldh [$75], a                                  ; $58a7: $e0 $75
    rst $38                                       ; $58a9: $ff
    di                                            ; $58aa: $f3
    nop                                           ; $58ab: $00
    inc c                                         ; $58ac: $0c
    xor [hl]                                      ; $58ad: $ae
    inc b                                         ; $58ae: $04
    sbc d                                         ; $58af: $9a
    ld h, l                                       ; $58b0: $65
    ld e, a                                       ; $58b1: $5f
    inc b                                         ; $58b2: $04
    jr z, jr_09a_58b5                             ; $58b3: $28 $00

jr_09a_58b5:
    rst $38                                       ; $58b5: $ff
    ld l, d                                       ; $58b6: $6a
    add c                                         ; $58b7: $81
    sub l                                         ; $58b8: $95
    nop                                           ; $58b9: $00
    jp hl                                         ; $58ba: $e9


    rst $38                                       ; $58bb: $ff
    db $fc                                        ; $58bc: $fc
    nop                                           ; $58bd: $00
    nop                                           ; $58be: $00
    ld d, a                                       ; $58bf: $57
    nop                                           ; $58c0: $00
    cp b                                          ; $58c1: $b8
    ld b, b                                       ; $58c2: $40
    ld [hl], $01                                  ; $58c3: $36 $01
    sub h                                         ; $58c5: $94
    nop                                           ; $58c6: $00
    rst $38                                       ; $58c7: $ff
    xor d                                         ; $58c8: $aa
    nop                                           ; $58c9: $00
    ld d, l                                       ; $58ca: $55
    adc b                                         ; $58cb: $88
    sub d                                         ; $58cc: $92
    rst $38                                       ; $58cd: $ff
    and l                                         ; $58ce: $a5
    nop                                           ; $58cf: $00
    ld b, b                                       ; $58d0: $40
    ld d, e                                       ; $58d1: $53
    db $ec                                        ; $58d2: $ec
    db $ec                                        ; $58d3: $ec
    ld b, b                                       ; $58d4: $40
    ld [hl], $c1                                  ; $58d5: $36 $c1
    ret                                           ; $58d7: $c9


    nop                                           ; $58d8: $00

jr_09a_58d9:
    rst $38                                       ; $58d9: $ff
    ld a, [de]                                    ; $58da: $1a
    ldh [rNR14], a                                ; $58db: $e0 $14
    inc bc                                        ; $58dd: $03
    sub h                                         ; $58de: $94
    rst $38                                       ; $58df: $ff
    ld [hl-], a                                   ; $58e0: $32
    nop                                           ; $58e1: $00
    ret nz                                        ; $58e2: $c0

    ld c, c                                       ; $58e3: $49
    ld b, $a4                                     ; $58e4: $06 $a4
    jr jr_09a_5956                                ; $58e6: $18 $6e

    add c                                         ; $58e8: $81
    dec h                                         ; $58e9: $25
    ld [bc], a                                    ; $58ea: $02
    rst $38                                       ; $58eb: $ff
    sub [hl]                                      ; $58ec: $96
    ld [$bd42], sp                                ; $58ed: $08 $42 $bd

jr_09a_58f0:
    rst $28                                       ; $58f0: $ef
    add b                                         ; $58f1: $80
    ld bc, $a0ea                                  ; $58f2: $01 $ea $a0
    add b                                         ; $58f5: $80
    ld bc, $80c9                                  ; $58f6: $01 $c9 $80
    ld hl, $fc23                                  ; $58f9: $21 $23 $fc
    ld de, $a2fe                                  ; $58fc: $11 $fe $a2
    nop                                           ; $58ff: $00
    db $fd                                        ; $5900: $fd
    ld de, $44fe                                  ; $5901: $11 $fe $44
    rst $38                                       ; $5904: $ff
    sbc d                                         ; $5905: $9a
    rst $38                                       ; $5906: $ff
    ld c, h                                       ; $5907: $4c
    add b                                         ; $5908: $80
    or b                                          ; $5909: $b0
    ld bc, $3fe0                                  ; $590a: $01 $e0 $3f
    sub h                                         ; $590d: $94
    ld h, b                                       ; $590e: $60
    ld l, b                                       ; $590f: $68
    and b                                         ; $5910: $a0
    nop                                           ; $5911: $00
    nop                                           ; $5912: $00
    ldh [rNR41], a                                ; $5913: $e0 $20
    ldh [rHDMA1], a                               ; $5915: $e0 $51
    ldh [$aa], a                                  ; $5917: $e0 $aa
    ldh [$ea], a                                  ; $5919: $e0 $ea
    nop                                           ; $591b: $00
    rst $38                                       ; $591c: $ff
    rlca                                          ; $591d: $07
    db $fc                                        ; $591e: $fc
    xor b                                         ; $591f: $a8
    rlca                                          ; $5920: $07
    inc d                                         ; $5921: $14
    rlca                                          ; $5922: $07
    ld [$0700], sp                                ; $5923: $08 $00 $07
    inc b                                         ; $5926: $04
    rlca                                          ; $5927: $07

jr_09a_5928:
    ld a, [bc]                                    ; $5928: $0a
    rlca                                          ; $5929: $07
    ld d, [hl]                                    ; $592a: $56
    rlca                                          ; $592b: $07
    xor a                                         ; $592c: $af
    nop                                           ; $592d: $00
    rst $38                                       ; $592e: $ff
    ld [$ff55], a                                 ; $592f: $ea $55 $ff
    nop                                           ; $5932: $00
    cp d                                          ; $5933: $ba
    db $10                                        ; $5934: $10
    rst $18                                       ; $5935: $df
    nop                                           ; $5936: $00
    jr nz, jr_09a_5928                            ; $5937: $20 $ef

    db $10                                        ; $5939: $10
    ld e, a                                       ; $593a: $5f
    xor d                                         ; $593b: $aa
    xor a                                         ; $593c: $af
    ld b, b                                       ; $593d: $40
    ld d, l                                       ; $593e: $55
    nop                                           ; $593f: $00
    ld [$f02a], sp                                ; $5940: $08 $2a $f0
    dec [hl]                                      ; $5943: $35
    add sp, $3a                                   ; $5944: $e8 $3a
    db $e4                                        ; $5946: $e4
    dec a                                         ; $5947: $3d
    nop                                           ; $5948: $00
    ld a, [c]                                     ; $5949: $f2
    ld h, $f9                                     ; $594a: $26 $f9
    inc sp                                        ; $594c: $33
    db $fc                                        ; $594d: $fc
    add hl, hl                                    ; $594e: $29
    cp $3f                                        ; $594f: $fe $3f
    nop                                           ; $5951: $00
    rst $38                                       ; $5952: $ff
    call nc, Call_09a_6c3f                        ; $5953: $d4 $3f $6c

jr_09a_5956:
    rra                                           ; $5956: $1f
    or h                                          ; $5957: $b4
    rrca                                          ; $5958: $0f
    ld e, h                                       ; $5959: $5c
    nop                                           ; $595a: $00
    rlca                                          ; $595b: $07
    xor h                                         ; $595c: $ac
    rlca                                          ; $595d: $07
    ld d, h                                       ; $595e: $54
    add a                                         ; $595f: $87
    inc l                                         ; $5960: $2c
    rst $00                                       ; $5961: $c7
    db $fc                                        ; $5962: $fc
    nop                                           ; $5963: $00
    rst $38                                       ; $5964: $ff
    cp $55                                        ; $5965: $fe $55
    db $dd                                        ; $5967: $dd
    ld [bc], a                                    ; $5968: $02
    cp d                                          ; $5969: $ba
    nop                                           ; $596a: $00
    ld a, l                                       ; $596b: $7d
    jr jr_09a_58f0                                ; $596c: $18 $82

    rst $28                                       ; $596e: $ef
    db $10                                        ; $596f: $10
    ld c, d                                       ; $5970: $4a
    inc bc                                        ; $5971: $03
    inc h                                         ; $5972: $24
    inc bc                                        ; $5973: $03
    cp e                                          ; $5974: $bb
    ld b, b                                       ; $5975: $40
    ld a, l                                       ; $5976: $7d
    nop                                           ; $5977: $00
    ld [bc], a                                    ; $5978: $02
    xor e                                         ; $5979: $ab
    ld d, b                                       ; $597a: $50
    db $fd                                        ; $597b: $fd
    ld [bc], a                                    ; $597c: $02
    xor d                                         ; $597d: $aa
    ld d, l                                       ; $597e: $55
    ld e, l                                       ; $597f: $5d
    jr nz, jr_09a_59a2                            ; $5980: $20 $20

    cp $c0                                        ; $5982: $fe $c0
    ld bc, $47b8                                  ; $5984: $01 $b8 $47
    ld [hl], h                                    ; $5987: $74
    adc e                                         ; $5988: $8b
    ret c                                         ; $5989: $d8

    add hl, bc                                    ; $598a: $09
    daa                                           ; $598b: $27
    ld [hl], c                                    ; $598c: $71
    adc a                                         ; $598d: $8f
    and b                                         ; $598e: $a0
    ld [hl+], a                                   ; $598f: $22
    ld [bc], a                                    ; $5990: $02
    ld e, d                                       ; $5991: $5a
    rst $38                                       ; $5992: $ff
    ld l, a                                       ; $5993: $6f
    ld [bc], a                                    ; $5994: $02
    db $10                                        ; $5995: $10
    add sp, -$01                                  ; $5996: $e8 $ff
    ld d, l                                       ; $5998: $55
    inc b                                         ; $5999: $04
    ld c, b                                       ; $599a: $48
    or [hl]                                       ; $599b: $b6
    ld bc, $d02a                                  ; $599c: $01 $2a $d0
    nop                                           ; $599f: $00
    sub d                                         ; $59a0: $92
    rst $38                                       ; $59a1: $ff

jr_09a_59a2:
    ld [$6340], a                                 ; $59a2: $ea $40 $63
    call c, Call_09a_40a5                         ; $59a5: $dc $a5 $40
    nop                                           ; $59a8: $00
    adc d                                         ; $59a9: $8a
    rst $38                                       ; $59aa: $ff
    ld [hl], e                                    ; $59ab: $73
    add b                                         ; $59ac: $80
    ld e, d                                       ; $59ad: $5a
    and b                                         ; $59ae: $a0
    ld l, c                                       ; $59af: $69
    ld b, $00                                     ; $59b0: $06 $00
    jp z, Jump_09a_59ff                           ; $59b2: $ca $ff $59

    nop                                           ; $59b5: $00
    inc [hl]                                      ; $59b6: $34
    inc bc                                        ; $59b7: $03
    inc l                                         ; $59b8: $2c
    ret nz                                        ; $59b9: $c0

    nop                                           ; $59ba: $00
    adc [hl]                                      ; $59bb: $8e
    rst $38                                       ; $59bc: $ff
    and l                                         ; $59bd: $a5
    ld [$056a], sp                                ; $59be: $08 $6a $05
    and l                                         ; $59c1: $a5
    jr jr_09a_59c4                                ; $59c2: $18 $00

jr_09a_59c4:
    ld h, d                                       ; $59c4: $62
    rst $38                                       ; $59c5: $ff
    ld l, e                                       ; $59c6: $6b
    nop                                           ; $59c7: $00
    db $dd                                        ; $59c8: $dd
    nop                                           ; $59c9: $00
    sub e                                         ; $59ca: $93
    ld h, b                                       ; $59cb: $60
    nop                                           ; $59cc: $00
    ld a, [hl+]                                   ; $59cd: $2a
    rst $38                                       ; $59ce: $ff
    ld e, [hl]                                    ; $59cf: $5e
    nop                                           ; $59d0: $00
    ld d, b                                       ; $59d1: $50
    adc a                                         ; $59d2: $8f
    ld d, d                                       ; $59d3: $52
    jr nz, jr_09a_59d6                            ; $59d4: $20 $00

jr_09a_59d6:
    and [hl]                                      ; $59d6: $a6
    rst $38                                       ; $59d7: $ff
    ld a, [hl+]                                   ; $59d8: $2a
    ld de, $dc33                                  ; $59d9: $11 $33 $dc
    xor l                                         ; $59dc: $ad
    stop                                          ; $59dd: $10 $00
    ld sp, $d4ff                                  ; $59df: $31 $ff $d4
    jr z, jr_09a_5a19                             ; $59e2: $28 $35

    ld [$04db], sp                                ; $59e4: $08 $db $04
    nop                                           ; $59e7: $00
    call nz, $4eff                                ; $59e8: $c4 $ff $4e
    ld bc, $6193                                  ; $59eb: $01 $93 $61
    ld l, e                                       ; $59ee: $6b
    dec d                                         ; $59ef: $15
    nop                                           ; $59f0: $00
    and [hl]                                      ; $59f1: $a6
    ld b, c                                       ; $59f2: $41
    push bc                                       ; $59f3: $c5
    rst $38                                       ; $59f4: $ff
    ld [hl], $c8                                  ; $59f5: $36 $c8
    ld h, l                                       ; $59f7: $65
    ld a, [de]                                    ; $59f8: $1a
    nop                                           ; $59f9: $00
    call z, $ceff                                 ; $59fa: $cc $ff $ce
    nop                                           ; $59fd: $00
    xor c                                         ; $59fe: $a9

Jump_09a_59ff:
    ld d, b                                       ; $59ff: $50

jr_09a_5a00:
    or c                                          ; $5a00: $b1
    ld c, $00                                     ; $5a01: $0e $00
    xor d                                         ; $5a03: $aa
    ld b, h                                       ; $5a04: $44
    adc d                                         ; $5a05: $8a
    rst $38                                       ; $5a06: $ff
    xor e                                         ; $5a07: $ab
    db $10                                        ; $5a08: $10
    ld e, c                                       ; $5a09: $59
    add [hl]                                      ; $5a0a: $86
    nop                                           ; $5a0b: $00
    ld e, e                                       ; $5a0c: $5b
    rst $38                                       ; $5a0d: $ff
    ld h, [hl]                                    ; $5a0e: $66
    add b                                         ; $5a0f: $80
    and l                                         ; $5a10: $a5
    ld a, [de]                                    ; $5a11: $1a

jr_09a_5a12:
    ld d, l                                       ; $5a12: $55
    jr z, jr_09a_5a15                             ; $5a13: $28 $00

jr_09a_5a15:
    and l                                         ; $5a15: $a5
    ld [bc], a                                    ; $5a16: $02
    ld d, [hl]                                    ; $5a17: $56
    rst $38                                       ; $5a18: $ff

jr_09a_5a19:
    dec l                                         ; $5a19: $2d
    ld [bc], a                                    ; $5a1a: $02
    ld l, c                                       ; $5a1b: $69
    sub b                                         ; $5a1c: $90
    nop                                           ; $5a1d: $00
    ld [hl+], a                                   ; $5a1e: $22
    rst $38                                       ; $5a1f: $ff
    rlc h                                         ; $5a20: $cb $04
    sbc [hl]                                      ; $5a22: $9e
    ld h, l                                       ; $5a23: $65
    ld e, [hl]                                    ; $5a24: $5e
    inc b                                         ; $5a25: $04
    nop                                           ; $5a26: $00
    inc hl                                        ; $5a27: $23
    call nz, $ff4a                                ; $5a28: $c4 $4a $ff
    ld e, c                                       ; $5a2b: $59
    jr nz, jr_09a_5a00                            ; $5a2c: $20 $d2

    inc l                                         ; $5a2e: $2c
    nop                                           ; $5a2f: $00
    ld d, b                                       ; $5a30: $50
    rst $38                                       ; $5a31: $ff
    dec e                                         ; $5a32: $1d
    nop                                           ; $5a33: $00
    sub $20                                       ; $5a34: $d6 $20
    inc sp                                        ; $5a36: $33
    call z, $9a00                                 ; $5a37: $cc $00 $9a
    ld bc, $ff22                                  ; $5a3a: $01 $22 $ff
    call z, $b530                                 ; $5a3d: $cc $30 $b5
    ld [bc], a                                    ; $5a40: $02
    nop                                           ; $5a41: $00
    adc d                                         ; $5a42: $8a
    rst $38                                       ; $5a43: $ff
    push af                                       ; $5a44: $f5
    ld [$18ae], sp                                ; $5a45: $08 $ae $18
    ld d, c                                       ; $5a48: $51
    ld c, $00                                     ; $5a49: $0e $00
    or h                                          ; $5a4b: $b4
    ld c, b                                       ; $5a4c: $48
    sub [hl]                                      ; $5a4d: $96
    rst $38                                       ; $5a4e: $ff
    ld d, d                                       ; $5a4f: $52
    ld bc, $50ad                                  ; $5a50: $01 $ad $50
    nop                                           ; $5a53: $00
    adc e                                         ; $5a54: $8b
    rst $38                                       ; $5a55: $ff
    rla                                           ; $5a56: $17
    ld [$806c], sp                                ; $5a57: $08 $6c $80
    xor e                                         ; $5a5a: $ab
    stop                                          ; $5a5b: $10 $00
    ret                                           ; $5a5d: $c9


    ld b, $55                                     ; $5a5e: $06 $55
    rst $38                                       ; $5a60: $ff
    xor $41                                       ; $5a61: $ee $41
    or h                                          ; $5a63: $b4
    ld b, b                                       ; $5a64: $40
    nop                                           ; $5a65: $00
    inc d                                         ; $5a66: $14
    rst $38                                       ; $5a67: $ff
    ld d, l                                       ; $5a68: $55
    jr z, jr_09a_5a12                             ; $5a69: $28 $a7

    ld b, b                                       ; $5a6b: $40
    and h                                         ; $5a6c: $a4
    jr jr_09a_5aaf                                ; $5a6d: $18 $40

    ld h, l                                       ; $5a6f: $65
    inc d                                         ; $5a70: $14
    ld [bc], a                                    ; $5a71: $02
    and [hl]                                      ; $5a72: $a6
    ld e, b                                       ; $5a73: $58
    rlc b                                         ; $5a74: $cb $00
    inc l                                         ; $5a76: $2c
    rst $38                                       ; $5a77: $ff
    nop                                           ; $5a78: $00
    ld a, [hl+]                                   ; $5a79: $2a
    ret nz                                        ; $5a7a: $c0

    inc [hl]                                      ; $5a7b: $34
    dec bc                                        ; $5a7c: $0b
    ld d, [hl]                                    ; $5a7d: $56
    add b                                         ; $5a7e: $80
    adc c                                         ; $5a7f: $89
    rst $38                                       ; $5a80: $ff
    nop                                           ; $5a81: $00
    db $dd                                        ; $5a82: $dd
    ld [bc], a                                    ; $5a83: $02
    sbc h                                         ; $5a84: $9c
    ld [$6a95], sp                                ; $5a85: $08 $95 $6a
    ld [$00ff], sp                                ; $5a88: $08 $ff $00
    ld c, c                                       ; $5a8b: $49
    jr nc, @-$34                                  ; $5a8c: $30 $ca

    dec b                                         ; $5a8e: $05
    ld d, [hl]                                    ; $5a8f: $56
    jr nz, jr_09a_5ad6                            ; $5a90: $20 $44

    rst $38                                       ; $5a92: $ff
    nop                                           ; $5a93: $00
    dec hl                                        ; $5a94: $2b

Jump_09a_5a95:
    nop                                           ; $5a95: $00
    ld a, e                                       ; $5a96: $7b
    add d                                         ; $5a97: $82
    xor l                                         ; $5a98: $ad
    ld [bc], a                                    ; $5a99: $02
    ld h, d                                       ; $5a9a: $62
    rst $38                                       ; $5a9b: $ff
    nop                                           ; $5a9c: $00
    push de                                       ; $5a9d: $d5
    nop                                           ; $5a9e: $00
    ld l, d                                       ; $5a9f: $6a
    sub h                                         ; $5aa0: $94
    ld b, l                                       ; $5aa1: $45
    nop                                           ; $5aa2: $00
    xor e                                         ; $5aa3: $ab
    ld d, b                                       ; $5aa4: $50
    nop                                           ; $5aa5: $00
    add hl, hl                                    ; $5aa6: $29
    rst $38                                       ; $5aa7: $ff
    dec l                                         ; $5aa8: $2d
    jp nc, Jump_000_00d9                          ; $5aa9: $d2 $d9 $00

    call nz, Call_000_00ff                        ; $5aac: $c4 $ff $00

jr_09a_5aaf:
    or e                                          ; $5aaf: $b3
    nop                                           ; $5ab0: $00
    ld e, d                                       ; $5ab1: $5a
    dec b                                         ; $5ab2: $05
    xor [hl]                                      ; $5ab3: $ae
    ld b, b                                       ; $5ab4: $40
    ld d, h                                       ; $5ab5: $54
    dec hl                                        ; $5ab6: $2b
    nop                                           ; $5ab7: $00
    jr @+$01                                      ; $5ab8: $18 $ff

    ld [hl], c                                    ; $5aba: $71
    add b                                         ; $5abb: $80
    ld e, d                                       ; $5abc: $5a
    inc b                                         ; $5abd: $04
    or h                                          ; $5abe: $b4
    rst $38                                       ; $5abf: $ff
    nop                                           ; $5ac0: $00
    ld l, c                                       ; $5ac1: $69
    db $10                                        ; $5ac2: $10
    inc a                                         ; $5ac3: $3c
    db $d3                                        ; $5ac4: $d3
    or e                                          ; $5ac5: $b3
    db $10                                        ; $5ac6: $10
    ld l, d                                       ; $5ac7: $6a
    inc d                                         ; $5ac8: $14
    nop                                           ; $5ac9: $00
    ret                                           ; $5aca: $c9


    rst $38                                       ; $5acb: $ff
    push hl                                       ; $5acc: $e5
    ld b, d                                       ; $5acd: $42
    xor d                                         ; $5ace: $aa
    ld d, h                                       ; $5acf: $54
    ld l, b                                       ; $5ad0: $68
    rst $38                                       ; $5ad1: $ff
    nop                                           ; $5ad2: $00

jr_09a_5ad3:
    xor e                                         ; $5ad3: $ab
    nop                                           ; $5ad4: $00
    push hl                                       ; $5ad5: $e5

jr_09a_5ad6:
    jr jr_09a_5b43                                ; $5ad6: $18 $6b

    inc b                                         ; $5ad8: $04
    sub l                                         ; $5ad9: $95
    nop                                           ; $5ada: $00
    ld [de], a                                    ; $5adb: $12
    dec h                                         ; $5adc: $25
    rst $38                                       ; $5add: $ff
    add c                                         ; $5ade: $81
    xor h                                         ; $5adf: $ac
    inc sp                                        ; $5ae0: $33
    ret nz                                        ; $5ae1: $c0

    cp a                                          ; $5ae2: $bf
    and b                                         ; $5ae3: $a0
    dec bc                                        ; $5ae4: $0b
    rst $38                                       ; $5ae5: $ff
    ldh [$98], a                                  ; $5ae6: $e0 $98
    inc bc                                        ; $5ae8: $03
    and b                                         ; $5ae9: $a0
    dec hl                                        ; $5aea: $2b
    call c, Call_09a_550e                         ; $5aeb: $dc $0e $55
    xor e                                         ; $5aee: $ab
    xor d                                         ; $5aef: $aa
    ld d, l                                       ; $5af0: $55
    push af                                       ; $5af1: $f5
    ld b, b                                       ; $5af2: $40
    dec bc                                        ; $5af3: $0b
    and b                                         ; $5af4: $a0
    ld c, $1e                                     ; $5af5: $0e $1e
    ld hl, $23d0                                  ; $5af7: $21 $d0 $23
    ld a, [de]                                    ; $5afa: $1a
    pop hl                                        ; $5afb: $e1
    nop                                           ; $5afc: $00
    ret nz                                        ; $5afd: $c0

    push de                                       ; $5afe: $d5
    adc a                                         ; $5aff: $8f
    xor a                                         ; $5b00: $af

jr_09a_5b01:
    jp z, $8cc8                                   ; $5b01: $ca $c8 $8c

    xor h                                         ; $5b04: $ac
    jr nz, jr_09a_5ad3                            ; $5b05: $20 $cc

    call z, $1804                                 ; $5b07: $cc $04 $18
    nop                                           ; $5b0a: $00
    ld d, l                                       ; $5b0b: $55
    cp $fe                                        ; $5b0c: $fe $fe
    xor d                                         ; $5b0e: $aa
    ld [$0603], sp                                ; $5b0f: $08 $03 $06
    ld [bc], a                                    ; $5b12: $02
    ld [bc], a                                    ; $5b13: $02
    inc b                                         ; $5b14: $04
    jr nz, jr_09a_5b01                            ; $5b15: $20 $ea

    dec [hl]                                      ; $5b17: $35
    ld a, [hl-]                                   ; $5b18: $3a
    inc b                                         ; $5b19: $04
    db $fd                                        ; $5b1a: $fd
    sbc $e1                                       ; $5b1b: $de $e1
    halt                                          ; $5b1d: $76
    adc c                                         ; $5b1e: $89
    ret nc                                        ; $5b1f: $d0

    ld c, $ff                                     ; $5b20: $0e $ff
    ld bc, $7e30                                  ; $5b22: $01 $30 $7e
    add c                                         ; $5b25: $81
    jr z, jr_09a_5b50                             ; $5b26: $28 $28

    jr nc, @+$0a                                  ; $5b28: $30 $08

    adc $ce                                       ; $5b2a: $ce $ce
    adc a                                         ; $5b2c: $8f
    xor a                                         ; $5b2d: $af
    pop bc                                        ; $5b2e: $c1
    jr z, @+$2a                                   ; $5b2f: $28 $28

    jr nc, jr_09a_5b3b                            ; $5b31: $30 $08

    xor d                                         ; $5b33: $aa
    xor e                                         ; $5b34: $ab
    cp $fe                                        ; $5b35: $fe $fe
    rst $38                                       ; $5b37: $ff
    ld a, [$8006]                                 ; $5b38: $fa $06 $80

jr_09a_5b3b:
    inc b                                         ; $5b3b: $04
    ld [$45bb], sp                                ; $5b3c: $08 $bb $45
    ld a, h                                       ; $5b3f: $7c
    add e                                         ; $5b40: $83
    sbc a                                         ; $5b41: $9f
    pop hl                                        ; $5b42: $e1

jr_09a_5b43:
    ld [bc], a                                    ; $5b43: $02
    nop                                           ; $5b44: $00
    pop af                                        ; $5b45: $f1
    ret nz                                        ; $5b46: $c0

    ret nz                                        ; $5b47: $c0

    add b                                         ; $5b48: $80
    xor d                                         ; $5b49: $aa
    rst $08                                       ; $5b4a: $cf
    rst $18                                       ; $5b4b: $df
    adc d                                         ; $5b4c: $8a
    ld b, b                                       ; $5b4d: $40
    xor b                                         ; $5b4e: $a8
    ld h, b                                       ; $5b4f: $60

jr_09a_5b50:
    jr nc, jr_09a_5b57                            ; $5b50: $30 $05

    nop                                           ; $5b52: $00
    xor d                                         ; $5b53: $aa
    cp $ff                                        ; $5b54: $fe $ff
    xor d                                         ; $5b56: $aa

jr_09a_5b57:
    ld [$0602], sp                                ; $5b57: $08 $02 $06
    inc bc                                        ; $5b5a: $03
    ld [bc], a                                    ; $5b5b: $02
    inc b                                         ; $5b5c: $04
    db $10                                        ; $5b5d: $10
    db $dd                                        ; $5b5e: $dd
    inc hl                                        ; $5b5f: $23
    xor d                                         ; $5b60: $aa
    dec b                                         ; $5b61: $05
    ld a, a                                       ; $5b62: $7f
    add hl, bc                                    ; $5b63: $09
    rst $00                                       ; $5b64: $c7
    cp h                                          ; $5b65: $bc
    ld b, e                                       ; $5b66: $43
    sub b                                         ; $5b67: $90
    ld c, $c9                                     ; $5b68: $0e $c9
    sub b                                         ; $5b6a: $90
    ld b, $f0                                     ; $5b6b: $06 $f0
    ld h, b                                       ; $5b6d: $60
    ld c, b                                       ; $5b6e: $48
    sub h                                         ; $5b6f: $94
    ld [$2828], sp                                ; $5b70: $08 $28 $28
    jr nc, jr_09a_5b9d                            ; $5b73: $30 $28

    nop                                           ; $5b75: $00
    ld d, l                                       ; $5b76: $55
    ld a, a                                       ; $5b77: $7f
    rst $38                                       ; $5b78: $ff
    db $10                                        ; $5b79: $10
    ld d, l                                       ; $5b7a: $55
    ld b, b                                       ; $5b7b: $40
    ld h, b                                       ; $5b7c: $60
    ld bc, $0130                                  ; $5b7d: $01 $30 $01
    ld d, l                                       ; $5b80: $55
    pop af                                        ; $5b81: $f1
    ei                                            ; $5b82: $fb
    inc b                                         ; $5b83: $04
    ld d, c                                       ; $5b84: $51
    dec d                                         ; $5b85: $15
    ld sp, $111b                                  ; $5b86: $31 $1b $11
    inc b                                         ; $5b89: $04
    jr nz, jr_09a_5be0                            ; $5b8a: $20 $54

    xor e                                         ; $5b8c: $ab
    inc b                                         ; $5b8d: $04
    cp d                                          ; $5b8e: $ba
    push bc                                       ; $5b8f: $c5
    ld a, l                                       ; $5b90: $7d
    add d                                         ; $5b91: $82
    ccf                                           ; $5b92: $3f
    inc e                                         ; $5b93: $1c
    dec b                                         ; $5b94: $05
    db $fd                                        ; $5b95: $fd
    add d                                         ; $5b96: $82
    ld [$936e], sp                                ; $5b97: $08 $6e $93
    pop af                                        ; $5b9a: $f1
    adc b                                         ; $5b9b: $88
    ld a, [hl+]                                   ; $5b9c: $2a

jr_09a_5b9d:
    jr c, @+$62                                   ; $5b9d: $38 $60

    ld h, b                                       ; $5b9f: $60
    ld l, d                                       ; $5ba0: $6a
    jr jr_09a_5c0d                                ; $5ba1: $18 $6a

    ld a, a                                       ; $5ba3: $7f
    ld a, a                                       ; $5ba4: $7f
    jr z, jr_09a_5bcf                             ; $5ba5: $28 $28

    jr nc, jr_09a_5bb1                            ; $5ba7: $30 $08

    or c                                          ; $5ba9: $b1
    or l                                          ; $5baa: $b5
    pop af                                        ; $5bab: $f1
    ld bc, $37fb                                  ; $5bac: $01 $fb $37
    ret z                                         ; $5baf: $c8

    ld [hl], b                                    ; $5bb0: $70

jr_09a_5bb1:
    adc a                                         ; $5bb1: $8f
    or a                                          ; $5bb2: $b7
    rst $08                                       ; $5bb3: $cf
    sbc [hl]                                      ; $5bb4: $9e
    dec d                                         ; $5bb5: $15
    nop                                           ; $5bb6: $00
    ret nz                                        ; $5bb7: $c0

    ld a, l                                       ; $5bb8: $7d
    jp nz, $900f                                  ; $5bb9: $c2 $0f $90

    nop                                           ; $5bbc: $00
    nop                                           ; $5bbd: $00
    nop                                           ; $5bbe: $00
    db $10                                        ; $5bbf: $10
    xor d                                         ; $5bc0: $aa
    ld a, a                                       ; $5bc1: $7f
    ld a, a                                       ; $5bc2: $7f
    ld h, d                                       ; $5bc3: $62
    jr c, jr_09a_5bc7                             ; $5bc4: $38 $01

    dec d                                         ; $5bc6: $15

jr_09a_5bc7:
    ld bc, $00ab                                  ; $5bc7: $01 $ab $00
    pop af                                        ; $5bca: $f1
    push af                                       ; $5bcb: $f5
    ld e, c                                       ; $5bcc: $59
    dec de                                        ; $5bcd: $1b
    add hl, sp                                    ; $5bce: $39

jr_09a_5bcf:
    dec e                                         ; $5bcf: $1d
    dec [hl]                                      ; $5bd0: $35
    cpl                                           ; $5bd1: $2f
    ld [bc], a                                    ; $5bd2: $02
    ld e, e                                       ; $5bd3: $5b
    ld h, a                                       ; $5bd4: $67
    ld c, a                                       ; $5bd5: $4f
    ld d, e                                       ; $5bd6: $53
    ld a, a                                       ; $5bd7: $7f
    sub b                                         ; $5bd8: $90
    sub b                                         ; $5bd9: $90
    ccf                                           ; $5bda: $3f
    ld a, $18                                     ; $5bdb: $3e $18
    pop bc                                        ; $5bdd: $c1

jr_09a_5bde:
    ei                                            ; $5bde: $fb
    add l                                         ; $5bdf: $85

jr_09a_5be0:
    ld h, b                                       ; $5be0: $60
    ld c, b                                       ; $5be1: $48
    sub [hl]                                      ; $5be2: $96
    ld [$2525], sp                                ; $5be3: $08 $25 $25
    add hl, de                                    ; $5be6: $19
    ld [$311b], sp                                ; $5be7: $08 $1b $31
    dec d                                         ; $5bea: $15
    ld de, $3004                                  ; $5beb: $11 $04 $30
    inc a                                         ; $5bee: $3c
    jp Jump_000_00db                              ; $5bef: $c3 $db $00


    and h                                         ; $5bf2: $a4

jr_09a_5bf3:
    ccf                                           ; $5bf3: $3f
    ret nz                                        ; $5bf4: $c0

    rst $38                                       ; $5bf5: $ff
    add b                                         ; $5bf6: $80
    cpl                                           ; $5bf7: $2f
    ret nc                                        ; $5bf8: $d0

    db $dd                                        ; $5bf9: $dd
    nop                                           ; $5bfa: $00
    and d                                         ; $5bfb: $a2
    dec hl                                        ; $5bfc: $2b
    call nc, $e996                                ; $5bfd: $d4 $96 $e9
    inc b                                         ; $5c00: $04
    cp c                                          ; $5c01: $b9
    nop                                           ; $5c02: $00
    nop                                           ; $5c03: $00
    and l                                         ; $5c04: $a5
    nop                                           ; $5c05: $00
    xor l                                         ; $5c06: $ad
    dec h                                         ; $5c07: $25
    sbc l                                         ; $5c08: $9d
    dec d                                         ; $5c09: $15
    xor l                                         ; $5c0a: $ad
    inc b                                         ; $5c0b: $04
    nop                                           ; $5c0c: $00

jr_09a_5c0d:
    cp l                                          ; $5c0d: $bd

jr_09a_5c0e:
    and b                                         ; $5c0e: $a0
    or l                                          ; $5c0f: $b5
    nop                                           ; $5c10: $00
    and l                                         ; $5c11: $a5
    rst $08                                       ; $5c12: $cf
    ld [hl], b                                    ; $5c13: $70
    call $b000                                    ; $5c14: $cd $00 $b0
    adc a                                         ; $5c17: $8f
    sub b                                         ; $5c18: $90
    adc l                                         ; $5c19: $8d
    db $10                                        ; $5c1a: $10
    rrca                                          ; $5c1b: $0f
    nop                                           ; $5c1c: $00
    ld [$df00], a                                 ; $5c1d: $ea $00 $df
    ret nc                                        ; $5c20: $d0

    jr nc, jr_09a_5bf3                            ; $5c21: $30 $d0

    jr nc, jr_09a_5c0e                            ; $5c23: $30 $e9

    rlca                                          ; $5c25: $07
    ld sp, hl                                     ; $5c26: $f9
    nop                                           ; $5c27: $00
    ld b, $e8                                     ; $5c28: $06 $e8
    inc b                                         ; $5c2a: $04
    ld hl, sp+$04                                 ; $5c2b: $f8 $04
    ld a, b                                       ; $5c2d: $78
    add b                                         ; $5c2e: $80
    xor e                                         ; $5c2f: $ab
    nop                                           ; $5c30: $00
    db $fd                                        ; $5c31: $fd
    add a                                         ; $5c32: $87
    inc b                                         ; $5c33: $04

jr_09a_5c34:
    rlca                                          ; $5c34: $07

jr_09a_5c35:
    inc b                                         ; $5c35: $04
    add hl, hl                                    ; $5c36: $29
    sbc h                                         ; $5c37: $9c
    ld bc, $a400                                  ; $5c38: $01 $00 $a4
    db $10                                        ; $5c3b: $10
    or l                                          ; $5c3c: $b5
    dec h                                         ; $5c3d: $25
    cp b                                          ; $5c3e: $b8
    jr nz, jr_09a_5bde                            ; $5c3f: $20 $9d

    dec b                                         ; $5c41: $05
    nop                                           ; $5c42: $00
    and b                                         ; $5c43: $a0
    nop                                           ; $5c44: $00
    xor l                                         ; $5c45: $ad
    dec b                                         ; $5c46: $05
    cp h                                          ; $5c47: $bc
    call nz, Call_09a_409a                        ; $5c48: $c4 $9a $40
    nop                                           ; $5c4b: $00
    sbc [hl]                                      ; $5c4c: $9e
    sub $8e                                       ; $5c4d: $d6 $8e
    ret nz                                        ; $5c4f: $c0

    sub d                                         ; $5c50: $92
    ret nz                                        ; $5c51: $c0

    sub [hl]                                      ; $5c52: $96
    jp nz, $9c00                                  ; $5c53: $c2 $00 $9c

    call z, $c49e                                 ; $5c56: $cc $9e $c4
    sub d                                         ; $5c59: $92
    ret nc                                        ; $5c5a: $d0

    jr nc, jr_09a_5c35                            ; $5c5b: $30 $d8

    nop                                           ; $5c5d: $00
    jr nc, jr_09a_5cd0                            ; $5c5e: $30 $70

    sub b                                         ; $5c60: $90
    ret c                                         ; $5c61: $d8

    jr nc, jr_09a_5cc4                            ; $5c62: $30 $60

    sbc b                                         ; $5c64: $98
    cp b                                          ; $5c65: $b8
    nop                                           ; $5c66: $00
    jr c, @-$76                                   ; $5c67: $38 $88

    adc b                                         ; $5c69: $88
    sbc b                                         ; $5c6a: $98
    sbc b                                         ; $5c6b: $98
    add a                                         ; $5c6c: $87
    inc b                                         ; $5c6d: $04
    rrca                                          ; $5c6e: $0f
    ld b, b                                       ; $5c6f: $40
    inc b                                         ; $5c70: $04
    inc b                                         ; $5c71: $04
    db $10                                        ; $5c72: $10
    ld [$0e8e], sp                                ; $5c73: $08 $8e $0e
    adc b                                         ; $5c76: $88
    ld [$088c], sp                                ; $5c77: $08 $8c $08
    inc c                                         ; $5c7a: $0c
    inc [hl]                                      ; $5c7b: $34
    cp c                                          ; $5c7c: $b9
    nop                                           ; $5c7d: $00
    ld h, [hl]                                    ; $5c7e: $66
    nop                                           ; $5c7f: $00
    ld hl, $089d                                  ; $5c80: $21 $9d $08
    nop                                           ; $5c83: $00
    cp l                                          ; $5c84: $bd
    dec b                                         ; $5c85: $05
    and c                                         ; $5c86: $a1
    and b                                         ; $5c87: $a0
    xor l                                         ; $5c88: $ad
    adc c                                         ; $5c89: $89
    cp l                                          ; $5c8a: $bd
    ret nz                                        ; $5c8b: $c0

    ld bc, $d492                                  ; $5c8c: $01 $92 $d4
    adc [hl]                                      ; $5c8f: $8e
    ret z                                         ; $5c90: $c8

    sbc [hl]                                      ; $5c91: $9e
    jp nc, Jump_09a_428c                          ; $5c92: $d2 $8c $42

    jr jr_09a_5c97                                ; $5c95: $18 $00

jr_09a_5c97:
    ret z                                         ; $5c97: $c8

    sbc [hl]                                      ; $5c98: $9e
    ld l, b                                       ; $5c99: $68
    ld hl, sp+$60                                 ; $5c9a: $f8 $60
    sbc b                                         ; $5c9c: $98

jr_09a_5c9d:
    ld l, b                                       ; $5c9d: $68
    sbc b                                         ; $5c9e: $98
    nop                                           ; $5c9f: $00
    ld h, b                                       ; $5ca0: $60
    sbc b                                         ; $5ca1: $98
    jr c, jr_09a_5c34                             ; $5ca2: $38 $90

    ld [hl], b                                    ; $5ca4: $70
    sub b                                         ; $5ca5: $90
    ld [hl], b                                    ; $5ca6: $70
    and b                                         ; $5ca7: $a0
    nop                                           ; $5ca8: $00
    or b                                          ; $5ca9: $b0
    db $10                                        ; $5caa: $10
    jp $8e0f                                      ; $5cab: $c3 $0f $8e


    add hl, bc                                    ; $5cae: $09
    rst $00                                       ; $5caf: $c7
    ld [$8a00], sp                                ; $5cb0: $08 $00 $8a
    dec c                                         ; $5cb3: $0d
    rst $08                                       ; $5cb4: $cf
    inc b                                         ; $5cb5: $04
    add [hl]                                      ; $5cb6: $86
    dec b                                         ; $5cb7: $05
    jp $0002                                      ; $5cb8: $c3 $02 $00


    add $05                                       ; $5cbb: $c6 $05
    dec h                                         ; $5cbd: $25
    sbc l                                         ; $5cbe: $9d
    inc bc                                        ; $5cbf: $03
    ld l, c                                       ; $5cc0: $69
    inc bc                                        ; $5cc1: $03
    ld c, c                                       ; $5cc2: $49
    nop                                           ; $5cc3: $00

jr_09a_5cc4:
    dec hl                                        ; $5cc4: $2b
    ld [hl], c                                    ; $5cc5: $71
    ld d, e                                       ; $5cc6: $53
    add hl, sp                                    ; $5cc7: $39
    inc bc                                        ; $5cc8: $03
    ld c, c                                       ; $5cc9: $49
    dec bc                                        ; $5cca: $0b
    ld d, c                                       ; $5ccb: $51
    inc b                                         ; $5ccc: $04
    inc de                                        ; $5ccd: $13
    ld a, c                                       ; $5cce: $79
    ld d, h                                       ; $5ccf: $54

jr_09a_5cd0:
    adc [hl]                                      ; $5cd0: $8e
    add b                                         ; $5cd1: $80
    or [hl]                                       ; $5cd2: $b6
    nop                                           ; $5cd3: $00
    add h                                         ; $5cd4: $84
    cp c                                          ; $5cd5: $b9
    nop                                           ; $5cd6: $00
    db $10                                        ; $5cd7: $10
    cp l                                          ; $5cd8: $bd
    nop                                           ; $5cd9: $00
    xor l                                         ; $5cda: $ad
    nop                                           ; $5cdb: $00
    and l                                         ; $5cdc: $a5
    inc h                                         ; $5cdd: $24
    sbc c                                         ; $5cde: $99
    nop                                           ; $5cdf: $00
    ld l, b                                       ; $5ce0: $68
    sbc b                                         ; $5ce1: $98
    cp h                                          ; $5ce2: $bc
    inc b                                         ; $5ce3: $04
    ld l, [hl]                                    ; $5ce4: $6e
    sub d                                         ; $5ce5: $92
    cp a                                          ; $5ce6: $bf
    ld bc, $af00                                  ; $5ce7: $01 $00 $af
    db $10                                        ; $5cea: $10
    xor l                                         ; $5ceb: $ad
    db $10                                        ; $5cec: $10
    adc a                                         ; $5ced: $8f
    jr nc, jr_09a_5c9d                            ; $5cee: $30 $ad

    stop                                          ; $5cf0: $10 $00
    rst $08                                       ; $5cf2: $cf
    ld [$14db], sp                                ; $5cf3: $08 $db $14
    ei                                            ; $5cf6: $fb
    inc h                                         ; $5cf7: $24
    ei                                            ; $5cf8: $fb
    ld b, h                                       ; $5cf9: $44
    nop                                           ; $5cfa: $00
    or e                                          ; $5cfb: $b3
    call z, $c43b                                 ; $5cfc: $cc $3b $c4
    inc sp                                        ; $5cff: $33
    call z, $cc33                                 ; $5d00: $cc $33 $cc
    ld b, c                                       ; $5d03: $41
    ld c, e                                       ; $5d04: $4b
    jr c, jr_09a_5d17                             ; $5d05: $38 $10

    ld b, d                                       ; $5d07: $42
    ld a, c                                       ; $5d08: $79
    dec hl                                        ; $5d09: $2b
    ld e, c                                       ; $5d0a: $59
    ld b, d                                       ; $5d0b: $42
    ld c, b                                       ; $5d0c: $48
    nop                                           ; $5d0d: $00

Jump_09a_5d0e:
    jr nz, jr_09a_5d18                            ; $5d0e: $20 $08

    or l                                          ; $5d10: $b5
    ld l, b                                       ; $5d11: $68
    ld a, [de]                                    ; $5d12: $1a
    adc [hl]                                      ; $5d13: $8e
    xor [hl]                                      ; $5d14: $ae
    rst $08                                       ; $5d15: $cf
    rst $08                                       ; $5d16: $cf

jr_09a_5d17:
    add b                                         ; $5d17: $80

jr_09a_5d18:
    dec b                                         ; $5d18: $05
    and b                                         ; $5d19: $a0
    push de                                       ; $5d1a: $d5
    push de                                       ; $5d1b: $d5
    rst $38                                       ; $5d1c: $ff
    rst $38                                       ; $5d1d: $ff
    ld [$aa1a], sp                                ; $5d1e: $08 $1a $aa
    inc d                                         ; $5d21: $14
    ld [bc], a                                    ; $5d22: $02
    ld bc, $0200                                  ; $5d23: $01 $00 $02
    ld d, l                                       ; $5d26: $55
    ld d, l                                       ; $5d27: $55
    rst $38                                       ; $5d28: $ff
    rst $38                                       ; $5d29: $ff
    ld a, [$05c4]                                 ; $5d2a: $fa $c4 $05
    inc b                                         ; $5d2d: $04
    xor e                                         ; $5d2e: $ab
    ld d, l                                       ; $5d2f: $55
    ld d, a                                       ; $5d30: $57
    ld [$64ee], sp                                ; $5d31: $08 $ee $64
    rlca                                          ; $5d34: $07
    db $eb                                        ; $5d35: $eb
    inc b                                         ; $5d36: $04
    ld h, $55                                     ; $5d37: $26 $55
    xor d                                         ; $5d39: $aa
    cp d                                          ; $5d3a: $ba
    add hl, sp                                    ; $5d3b: $39
    nop                                           ; $5d3c: $00
    nop                                           ; $5d3d: $00
    jr nz, @+$0a                                  ; $5d3e: $20 $08

    ld e, h                                       ; $5d40: $5c
    add hl, de                                    ; $5d41: $19
    or c                                          ; $5d42: $b1
    inc b                                         ; $5d43: $04
    cp e                                          ; $5d44: $bb
    pop af                                        ; $5d45: $f1
    push af                                       ; $5d46: $f5
    ld bc, $300b                                  ; $5d47: $01 $0b $30
    ld [$fa05], sp                                ; $5d4a: $08 $05 $fa
    ld bc, $ff90                                  ; $5d4d: $01 $90 $ff
    adc b                                         ; $5d50: $88
    rst $38                                       ; $5d51: $ff
    sub h                                         ; $5d52: $94
    rst $38                                       ; $5d53: $ff
    pop bc                                        ; $5d54: $c1
    ld h, b                                       ; $5d55: $60
    ld h, $00                                     ; $5d56: $26 $00
    nop                                           ; $5d58: $00
    cp l                                          ; $5d59: $bd
    adc b                                         ; $5d5a: $88
    nop                                           ; $5d5b: $00
    inc h                                         ; $5d5c: $24
    sbc c                                         ; $5d5d: $99
    adc b                                         ; $5d5e: $88
    dec a                                         ; $5d5f: $3d
    ld [$bd12], sp                                ; $5d60: $08 $12 $bd
    and l                                         ; $5d63: $a5
    jr jr_09a_5dd5                                ; $5d64: $18 $6f

    dec b                                         ; $5d66: $05
    nop                                           ; $5d67: $00
    rst $08                                       ; $5d68: $cf
    jr nc, jr_09a_5d6b                            ; $5d69: $30 $00

jr_09a_5d6b:
    nop                                           ; $5d6b: $00
    nop                                           ; $5d6c: $00
    add hl, hl                                    ; $5d6d: $29
    sbc $00                                       ; $5d6e: $de $00
    add hl, sp                                    ; $5d70: $39
    ld de, $107d                                  ; $5d71: $11 $7d $10
    inc h                                         ; $5d74: $24
    ei                                            ; $5d75: $fb
    nop                                           ; $5d76: $00

jr_09a_5d77:
    cp b                                          ; $5d77: $b8
    rlca                                          ; $5d78: $07
    ld hl, $00de                                  ; $5d79: $21 $de $00
    nop                                           ; $5d7c: $00
    nop                                           ; $5d7d: $00
    ld d, h                                       ; $5d7e: $54
    cp e                                          ; $5d7f: $bb
    ld [$00dd], sp                                ; $5d80: $08 $dd $00
    sbc h                                         ; $5d83: $9c
    ld [de], a                                    ; $5d84: $12
    db $ed                                        ; $5d85: $ed
    add b                                         ; $5d86: $80
    ld a, [bc]                                    ; $5d87: $0a
    nop                                           ; $5d88: $00
    xor e                                         ; $5d89: $ab
    inc d                                         ; $5d8a: $14
    cp l                                          ; $5d8b: $bd
    db $10                                        ; $5d8c: $10
    ld bc, $18a5                                  ; $5d8d: $01 $a5 $18
    nop                                           ; $5d90: $00
    db $10                                        ; $5d91: $10
    cp l                                          ; $5d92: $bd
    ret                                           ; $5d93: $c9


    cp h                                          ; $5d94: $bc
    inc h                                         ; $5d95: $24
    sbc c                                         ; $5d96: $99
    ld bc, $0000                                  ; $5d97: $01 $00 $00
    ld a, [bc]                                    ; $5d9a: $0a
    push af                                       ; $5d9b: $f5
    ld d, l                                       ; $5d9c: $55
    xor d                                         ; $5d9d: $aa
    dec bc                                        ; $5d9e: $0b
    db $f4                                        ; $5d9f: $f4
    add a                                         ; $5da0: $87
    ld hl, sp+$00                                 ; $5da1: $f8 $00
    ld a, [bc]                                    ; $5da3: $0a
    push af                                       ; $5da4: $f5
    dec h                                         ; $5da5: $25
    ld a, [$ff50]                                 ; $5da6: $fa $50 $ff
    ldh [rIE], a                                  ; $5da9: $e0 $ff
    ld e, a                                       ; $5dab: $5f
    ld a, [$5340]                                 ; $5dac: $fa $40 $53
    inc bc                                        ; $5daf: $03
    nop                                           ; $5db0: $00
    rrca                                          ; $5db1: $0f
    ld hl, $0302                                  ; $5db2: $21 $02 $03
    jr z, jr_09a_5dbe                             ; $5db5: $28 $07

    rrca                                          ; $5db7: $0f
    push hl                                       ; $5db8: $e5
    rrca                                          ; $5db9: $0f
    nop                                           ; $5dba: $00
    rst $38                                       ; $5dbb: $ff
    rst $38                                       ; $5dbc: $ff
    ei                                            ; $5dbd: $fb

jr_09a_5dbe:
    inc b                                         ; $5dbe: $04
    db $10                                        ; $5dbf: $10
    ld [$1020], sp                                ; $5dc0: $08 $20 $10
    db $10                                        ; $5dc3: $10
    ld h, b                                       ; $5dc4: $60
    nop                                           ; $5dc5: $00
    ret nz                                        ; $5dc6: $c0

    db $10                                        ; $5dc7: $10
    jr nz, @+$01                                  ; $5dc8: $20 $ff

    nop                                           ; $5dca: $00
    ld bc, $0200                                  ; $5dcb: $01 $00 $02
    inc bc                                        ; $5dce: $03
    nop                                           ; $5dcf: $00
    inc b                                         ; $5dd0: $04
    ld [bc], a                                    ; $5dd1: $02
    dec bc                                        ; $5dd2: $0b
    inc b                                         ; $5dd3: $04
    db $10                                        ; $5dd4: $10

jr_09a_5dd5:
    jr z, jr_09a_5d77                             ; $5dd5: $28 $a0

    dec c                                         ; $5dd7: $0d
    nop                                           ; $5dd8: $00
    ld b, b                                       ; $5dd9: $40
    nop                                           ; $5dda: $00
    add b                                         ; $5ddb: $80
    inc a                                         ; $5ddc: $3c
    ld [$2020], sp                                ; $5ddd: $08 $20 $20
    nop                                           ; $5de0: $00
    ld [hl+], a                                   ; $5de1: $22
    nop                                           ; $5de2: $00
    ld h, b                                       ; $5de3: $60
    jr nz, jr_09a_5dfa                            ; $5de4: $20 $14

    nop                                           ; $5de6: $00
    jr nc, jr_09a_5e11                            ; $5de7: $30 $28

    adc d                                         ; $5de9: $8a
    nop                                           ; $5dea: $00
    inc d                                         ; $5deb: $14
    nop                                           ; $5dec: $00
    jr z, jr_09a_5e27                             ; $5ded: $28 $38

    nop                                           ; $5def: $00
    ret nc                                        ; $5df0: $d0

    jr nz, @+$42                                  ; $5df1: $20 $40

    ld l, c                                       ; $5df3: $69
    jr nz, jr_09a_5e56                            ; $5df4: $20 $60

    db $10                                        ; $5df6: $10
    add b                                         ; $5df7: $80
    ld a, a                                       ; $5df8: $7f
    ld a, [hl]                                    ; $5df9: $7e

jr_09a_5dfa:
    ld bc, $8081                                  ; $5dfa: $01 $81 $80
    ld bc, $8100                                  ; $5dfd: $01 $00 $81

jr_09a_5e00:
    add d                                         ; $5e00: $82
    ld bc, $2060                                  ; $5e01: $01 $60 $20
    adc b                                         ; $5e04: $88
    ld a, h                                       ; $5e05: $7c
    rlca                                          ; $5e06: $07

jr_09a_5e07:
    cp $01                                        ; $5e07: $fe $01
    add b                                         ; $5e09: $80
    ld [bc], a                                    ; $5e0a: $02
    nop                                           ; $5e0b: $00
    cp $01                                        ; $5e0c: $fe $01
    ld bc, $6cc5                                  ; $5e0e: $01 $c5 $6c

jr_09a_5e11:
    nop                                           ; $5e11: $00
    inc b                                         ; $5e12: $04
    jr jr_09a_5e6a                                ; $5e13: $18 $55

    nop                                           ; $5e15: $00
    cp $20                                        ; $5e16: $fe $20
    ld b, b                                       ; $5e18: $40
    rst $38                                       ; $5e19: $ff
    ld [hl+], a                                   ; $5e1a: $22
    db $10                                        ; $5e1b: $10
    xor [hl]                                      ; $5e1c: $ae
    jr nc, @+$2a                                  ; $5e1d: $30 $28

    xor e                                         ; $5e1f: $ab
    ld b, a                                       ; $5e20: $47
    dec b                                         ; $5e21: $05
    ld a, a                                       ; $5e22: $7f
    inc [hl]                                      ; $5e23: $34
    nop                                           ; $5e24: $00
    push bc                                       ; $5e25: $c5
    inc bc                                        ; $5e26: $03

jr_09a_5e27:
    sbc a                                         ; $5e27: $9f
    ld [$13ff], sp                                ; $5e28: $08 $ff $13
    ld a, [hl]                                    ; $5e2b: $7e
    add c                                         ; $5e2c: $81
    ld b, d                                       ; $5e2d: $42
    ld [bc], a                                    ; $5e2e: $02
    nop                                           ; $5e2f: $00
    inc a                                         ; $5e30: $3c
    jp Jump_000_1094                              ; $5e31: $c3 $94 $10


    call nc, RST_10                               ; $5e34: $d4 $10 $00
    ld bc, $0200                                  ; $5e37: $01 $00 $02
    ld bc, $0205                                  ; $5e3a: $01 $05 $02
    ld e, $00                                     ; $5e3d: $1e $00
    nop                                           ; $5e3f: $00
    inc l                                         ; $5e40: $2c
    db $10                                        ; $5e41: $10
    ld e, b                                       ; $5e42: $58
    jr nz, jr_09a_5e75                            ; $5e43: $20 $30

    ld b, b                                       ; $5e45: $40
    ldh [rP1], a                                  ; $5e46: $e0 $00
    ld a, [hl-]                                   ; $5e48: $3a
    ld b, b                                       ; $5e49: $40
    add b                                         ; $5e4a: $80
    inc e                                         ; $5e4b: $1c
    jr c, @+$22                                   ; $5e4c: $38 $20

    jr jr_09a_5e00                                ; $5e4e: $18 $b0

    ld [$2681], sp                                ; $5e50: $08 $81 $26
    nop                                           ; $5e53: $00
    ld b, $2b                                     ; $5e54: $06 $2b

jr_09a_5e56:
    nop                                           ; $5e56: $00
    ld [$30f0], sp                                ; $5e57: $08 $f0 $30
    ld a, [bc]                                    ; $5e5a: $0a
    cp b                                          ; $5e5b: $b8
    db $10                                        ; $5e5c: $10
    ld d, b                                       ; $5e5d: $50
    ldh [$38], a                                  ; $5e5e: $e0 $38
    ld c, b                                       ; $5e60: $48
    ld [$e5dd], sp                                ; $5e61: $08 $dd $e5
    inc bc                                        ; $5e64: $03
    ret nc                                        ; $5e65: $d0

    jr @+$52                                      ; $5e66: $18 $50

    ld b, d                                       ; $5e68: $42
    ld d, b                                       ; $5e69: $50

jr_09a_5e6a:
    ld l, b                                       ; $5e6a: $68
    jr nc, jr_09a_5e8d                            ; $5e6b: $30 $20

    jr nc, jr_09a_5ec4                            ; $5e6d: $30 $55

    inc [hl]                                      ; $5e6f: $34
    jr nz, jr_09a_5e07                            ; $5e70: $20 $95

    add b                                         ; $5e72: $80
    jr z, jr_09a_5eca                             ; $5e73: $28 $55

jr_09a_5e75:
    nop                                           ; $5e75: $00
    add b                                         ; $5e76: $80
    ld e, b                                       ; $5e77: $58
    ld d, l                                       ; $5e78: $55
    jr c, @+$62                                   ; $5e79: $38 $60

    ld d, l                                       ; $5e7b: $55
    ld c, b                                       ; $5e7c: $48
    ld sp, $6083                                  ; $5e7d: $31 $83 $60

jr_09a_5e80:
    add hl, hl                                    ; $5e80: $29
    jr jr_09a_5e83                                ; $5e81: $18 $00

jr_09a_5e83:
    jr nc, jr_09a_5e85                            ; $5e83: $30 $00

jr_09a_5e85:
    ld h, b                                       ; $5e85: $60
    jr c, jr_09a_5e89                             ; $5e86: $38 $01

    ld h, b                                       ; $5e88: $60

jr_09a_5e89:
    ld sp, $810a                                  ; $5e89: $31 $0a $81
    ret nz                                        ; $5e8c: $c0

jr_09a_5e8d:
    ld bc, $0420                                  ; $5e8d: $01 $20 $04
    nop                                           ; $5e90: $00
    ld [bc], a                                    ; $5e91: $02
    inc b                                         ; $5e92: $04
    db $10                                        ; $5e93: $10
    add h                                         ; $5e94: $84
    and e                                         ; $5e95: $a3
    inc h                                         ; $5e96: $24
    ld de, $0682                                  ; $5e97: $11 $82 $06

jr_09a_5e9a:
    jr nc, @-$2e                                  ; $5e9a: $30 $d0

    ld bc, $480a                                  ; $5e9c: $01 $0a $48
    ld bc, $0818                                  ; $5e9f: $01 $18 $08
    ld b, c                                       ; $5ea2: $41
    ld [bc], a                                    ; $5ea3: $02
    ld d, b                                       ; $5ea4: $50
    ld de, $0180                                  ; $5ea5: $11 $80 $01
    and d                                         ; $5ea8: $a2
    ld bc, $20c0                                  ; $5ea9: $01 $c0 $20
    nop                                           ; $5eac: $00
    ld [hl], h                                    ; $5ead: $74
    call nz, $2024                                ; $5eae: $c4 $24 $20
    ld h, h                                       ; $5eb1: $64
    ld bc, $50f4                                  ; $5eb2: $01 $f4 $50
    dec b                                         ; $5eb5: $05
    call z, Call_000_0400                         ; $5eb6: $cc $00 $04
    nop                                           ; $5eb9: $00
    jr z, jr_09a_5ec4                             ; $5eba: $28 $08

    nop                                           ; $5ebc: $00
    ld h, [hl]                                    ; $5ebd: $66
    jr jr_09a_5e80                                ; $5ebe: $18 $c0

    jp nz, $0b01                                  ; $5ec0: $c2 $01 $0b

    nop                                           ; $5ec3: $00

jr_09a_5ec4:
    ld d, $03                                     ; $5ec4: $16 $03
    nop                                           ; $5ec6: $00
    inc l                                         ; $5ec7: $2c
    nop                                           ; $5ec8: $00
    ld e, b                                       ; $5ec9: $58

jr_09a_5eca:
    nop                                           ; $5eca: $00
    or b                                          ; $5ecb: $b0
    db $10                                        ; $5ecc: $10
    db $10                                        ; $5ecd: $10
    and b                                         ; $5ece: $a0
    ld c, b                                       ; $5ecf: $48
    ld [bc], a                                    ; $5ed0: $02
    nop                                           ; $5ed1: $00
    nop                                           ; $5ed2: $00
    ld b, $00                                     ; $5ed3: $06 $00
    ld d, b                                       ; $5ed5: $50
    add hl, bc                                    ; $5ed6: $09
    ld b, [hl]                                    ; $5ed7: $46
    jr jr_09a_5e9a                                ; $5ed8: $18 $c0

    ld c, $01                                     ; $5eda: $0e $01
    and b                                         ; $5edc: $a0
    ld bc, $a0c2                                  ; $5edd: $01 $c2 $a0
    ld bc, $0804                                  ; $5ee0: $01 $04 $08
    ld [de], a                                    ; $5ee3: $12
    ld e, b                                       ; $5ee4: $58
    add h                                         ; $5ee5: $84
    ccf                                           ; $5ee6: $3f
    ld bc, $728a                                  ; $5ee7: $01 $8a $72
    nop                                           ; $5eea: $00
    halt                                          ; $5eeb: $76
    ld [$0826], sp                                ; $5eec: $08 $26 $08
    ld [hl+], a                                   ; $5eef: $22
    ld [$0812], sp                                ; $5ef0: $08 $12 $08
    and h                                         ; $5ef3: $a4
    jr z, jr_09a_5f2e                             ; $5ef4: $28 $38

    add b                                         ; $5ef6: $80
    ld bc, $1866                                  ; $5ef7: $01 $66 $18
    rst $20                                       ; $5efa: $e7
    add hl, bc                                    ; $5efb: $09
    ld e, $0a                                     ; $5efc: $1e $0a
    add b                                         ; $5efe: $80
    nop                                           ; $5eff: $00
    ld d, h                                       ; $5f00: $54
    ld a, [bc]                                    ; $5f01: $0a
    jr nz, jr_09a_5f2c                            ; $5f02: $20 $28

    nop                                           ; $5f04: $00
    sub b                                         ; $5f05: $90
    ld c, h                                       ; $5f06: $4c
    ld [bc], a                                    ; $5f07: $02
    rst $38                                       ; $5f08: $ff
    adc b                                         ; $5f09: $88
    db $10                                        ; $5f0a: $10
    sub b                                         ; $5f0b: $90
    adc [hl]                                      ; $5f0c: $8e
    ld [hl], b                                    ; $5f0d: $70
    ld bc, $0255                                  ; $5f0e: $01 $55 $02
    adc d                                         ; $5f11: $8a
    or $00                                        ; $5f12: $f6 $00
    adc b                                         ; $5f14: $88
    ld a, [bc]                                    ; $5f15: $0a
    ld d, d                                       ; $5f16: $52
    ld a, [bc]                                    ; $5f17: $0a
    add b                                         ; $5f18: $80
    inc bc                                        ; $5f19: $03
    nop                                           ; $5f1a: $00
    add hl, bc                                    ; $5f1b: $09
    nop                                           ; $5f1c: $00
    ld [de], a                                    ; $5f1d: $12
    nop                                           ; $5f1e: $00
    ld [hl], h                                    ; $5f1f: $74
    ld l, $03                                     ; $5f20: $2e $03
    ld a, [bc]                                    ; $5f22: $0a
    jr @-$73                                      ; $5f23: $18 $8b

    ld hl, $080a                                  ; $5f25: $21 $0a $08
    nop                                           ; $5f28: $00
    db $10                                        ; $5f29: $10
    ld e, h                                       ; $5f2a: $5c
    ld [bc], a                                    ; $5f2b: $02

jr_09a_5f2c:
    ld b, c                                       ; $5f2c: $41
    ld b, h                                       ; $5f2d: $44

jr_09a_5f2e:
    db $10                                        ; $5f2e: $10
    ld a, [hl-]                                   ; $5f2f: $3a
    ld [$449b], sp                                ; $5f30: $08 $9b $44
    jr c, jr_09a_5f89                             ; $5f33: $38 $54

    jr nz, jr_09a_5f71                            ; $5f35: $20 $3a

    ld [$3844], sp                                ; $5f37: $08 $44 $38

jr_09a_5f3a:
    ld a, [bc]                                    ; $5f3a: $0a
    ld a, [hl-]                                   ; $5f3b: $3a
    jr nz, @+$34                                  ; $5f3c: $20 $32

    ld [$707e], sp                                ; $5f3e: $08 $7e $70
    ld b, h                                       ; $5f41: $44
    db $10                                        ; $5f42: $10
    and [hl]                                      ; $5f43: $a6
    ld a, [bc]                                    ; $5f44: $0a
    ld h, l                                       ; $5f45: $65
    ld a, [bc]                                    ; $5f46: $0a
    rst $20                                       ; $5f47: $e7
    ld a, [bc]                                    ; $5f48: $0a
    adc b                                         ; $5f49: $88
    ld [$587e], sp                                ; $5f4a: $08 $7e $58
    inc bc                                        ; $5f4d: $03
    ld c, $00                                     ; $5f4e: $0e $00
    ld d, c                                       ; $5f50: $51
    nop                                           ; $5f51: $00
    add d                                         ; $5f52: $82
    push bc                                       ; $5f53: $c5
    ld [de], a                                    ; $5f54: $12
    adc b                                         ; $5f55: $88
    nop                                           ; $5f56: $00
    or h                                          ; $5f57: $b4
    ld [bc], a                                    ; $5f58: $02
    db $10                                        ; $5f59: $10
    ei                                            ; $5f5a: $fb
    ld a, [hl]                                    ; $5f5b: $7e
    ld h, b                                       ; $5f5c: $60

jr_09a_5f5d:
    adc b                                         ; $5f5d: $88
    ld [$18b8], sp                                ; $5f5e: $08 $b8 $18
    ld b, h                                       ; $5f61: $44
    jr z, jr_09a_5fe2                             ; $5f62: $28 $7e

    ld c, b                                       ; $5f64: $48
    ld b, h                                       ; $5f65: $44
    ld c, d                                       ; $5f66: $4a
    ld bc, $487e                                  ; $5f67: $01 $7e $48
    ld l, e                                       ; $5f6a: $6b
    nop                                           ; $5f6b: $00
    ld c, [hl]                                    ; $5f6c: $4e
    nop                                           ; $5f6d: $00
    ld a, [hl]                                    ; $5f6e: $7e
    jr z, jr_09a_5fd1                             ; $5f6f: $28 $60

jr_09a_5f71:
    jp nz, $a820                                  ; $5f71: $c2 $20 $a8

    inc d                                         ; $5f74: $14
    dec bc                                        ; $5f75: $0b
    daa                                           ; $5f76: $27
    inc de                                        ; $5f77: $13
    add b                                         ; $5f78: $80
    ld a, [bc]                                    ; $5f79: $0a
    jr jr_09a_5f80                                ; $5f7a: $18 $04

    add hl, de                                    ; $5f7c: $19
    db $10                                        ; $5f7d: $10
    add hl, bc                                    ; $5f7e: $09
    inc b                                         ; $5f7f: $04

jr_09a_5f80:
    add hl, de                                    ; $5f80: $19
    or b                                          ; $5f81: $b0
    rra                                           ; $5f82: $1f
    add hl, bc                                    ; $5f83: $09
    ldh [rNR24], a                                ; $5f84: $e0 $19
    ld a, [bc]                                    ; $5f86: $0a
    jr jr_09a_5f8a                                ; $5f87: $18 $01

jr_09a_5f89:
    dec bc                                        ; $5f89: $0b

jr_09a_5f8a:
    inc h                                         ; $5f8a: $24
    jr jr_09a_5f97                                ; $5f8b: $18 $0a

    jr @+$1c                                      ; $5f8d: $18 $1a

    jr c, jr_09a_5faf                             ; $5f8f: $38 $1e

    or b                                          ; $5f91: $b0
    add hl, bc                                    ; $5f92: $09
    ldh a, [$2a]                                  ; $5f93: $f0 $2a
    nop                                           ; $5f95: $00
    sub b                                         ; $5f96: $90

jr_09a_5f97:
    dec de                                        ; $5f97: $1b
    ldh [$3a], a                                  ; $5f98: $e0 $3a
    nop                                           ; $5f9a: $00
    dec sp                                        ; $5f9b: $3b
    push de                                       ; $5f9c: $d5
    rlca                                          ; $5f9d: $07
    cp $7e                                        ; $5f9e: $fe $7e
    add c                                         ; $5fa0: $81
    nop                                           ; $5fa1: $00
    rst $38                                       ; $5fa2: $ff
    ld a, [hl-]                                   ; $5fa3: $3a
    jr c, jr_09a_5fea                             ; $5fa4: $38 $44

    jr jr_09a_5fe2                                ; $5fa6: $18 $3a

    jr c, jr_09a_5f5d                             ; $5fa8: $38 $b3

    ld l, b                                       ; $5faa: $68
    jr @+$01                                      ; $5fab: $18 $ff

    add [hl]                                      ; $5fad: $86
    inc bc                                        ; $5fae: $03

jr_09a_5faf:
    ld e, [hl]                                    ; $5faf: $5e
    jr c, jr_09a_5fb2                             ; $5fb0: $38 $00

jr_09a_5fb2:
    nop                                           ; $5fb2: $00
    ld e, [hl]                                    ; $5fb3: $5e
    jr c, @-$7c                                   ; $5fb4: $38 $82

    jr jr_09a_5f3a                                ; $5fb6: $18 $82

    ld b, b                                       ; $5fb8: $40
    dec de                                        ; $5fb9: $1b
    ld bc, $7dff                                  ; $5fba: $01 $ff $7d
    add e                                         ; $5fbd: $83
    ld b, l                                       ; $5fbe: $45
    ld [bc], a                                    ; $5fbf: $02
    nop                                           ; $5fc0: $00
    add hl, sp                                    ; $5fc1: $39
    ld b, a                                       ; $5fc2: $47
    rst $00                                       ; $5fc3: $c7
    add sp, $0b                                   ; $5fc4: $e8 $0b
    ld b, $00                                     ; $5fc6: $06 $00
    inc c                                         ; $5fc8: $0c
    ld [hl], h                                    ; $5fc9: $74
    ld hl, $18bc                                  ; $5fca: $21 $bc $18
    db $ec                                        ; $5fcd: $ec
    ld e, d                                       ; $5fce: $5a
    xor c                                         ; $5fcf: $a9
    ld b, b                                       ; $5fd0: $40

jr_09a_5fd1:
    ld a, [bc]                                    ; $5fd1: $0a
    db $10                                        ; $5fd2: $10
    ld [$0083], sp                                ; $5fd3: $08 $83 $00
    cp b                                          ; $5fd6: $b8
    ld [bc], a                                    ; $5fd7: $02
    dec b                                         ; $5fd8: $05
    sub b                                         ; $5fd9: $90
    ld l, h                                       ; $5fda: $6c
    ld c, c                                       ; $5fdb: $49
    nop                                           ; $5fdc: $00
    rst $38                                       ; $5fdd: $ff
    nop                                           ; $5fde: $00
    dec d                                         ; $5fdf: $15
    nop                                           ; $5fe0: $00
    xor e                                         ; $5fe1: $ab

jr_09a_5fe2:
    db $10                                        ; $5fe2: $10
    ld e, l                                       ; $5fe3: $5d

jr_09a_5fe4:
    add d                                         ; $5fe4: $82
    nop                                           ; $5fe5: $00
    ei                                            ; $5fe6: $fb
    ld d, l                                       ; $5fe7: $55
    ld [hl], a                                    ; $5fe8: $77
    add b                                         ; $5fe9: $80

jr_09a_5fea:
    xor a                                         ; $5fea: $af
    db $10                                        ; $5feb: $10
    ld d, l                                       ; $5fec: $55
    jr z, jr_09a_5fef                             ; $5fed: $28 $00

jr_09a_5fef:
    xor a                                         ; $5fef: $af
    nop                                           ; $5ff0: $00
    ld d, a                                       ; $5ff1: $57
    xor d                                         ; $5ff2: $aa
    ld bc, $0201                                  ; $5ff3: $01 $01 $02
    inc bc                                        ; $5ff6: $03
    ldh [rSB], a                                  ; $5ff7: $e0 $01
    jr jr_09a_5fe4                                ; $5ff9: $18 $e9

    inc bc                                        ; $5ffb: $03
    sbc l                                         ; $5ffc: $9d
    ld b, $e1                                     ; $5ffd: $06 $e1
    pop hl                                        ; $5fff: $e1
    ld a, [hl]                                    ; $6000: $7e
    sbc a                                         ; $6001: $9f
    dec l                                         ; $6002: $2d
    ld bc, $4fd3                                  ; $6003: $01 $d3 $4f
    rst $38                                       ; $6006: $ff
    ldh a, [$f0]                                  ; $6007: $f0 $f0
    ldh [$e0], a                                  ; $6009: $e0 $e0
    adc e                                         ; $600b: $8b
    inc c                                         ; $600c: $0c
    nop                                           ; $600d: $00
    jr nz, jr_09a_6030                            ; $600e: $20 $20

    ld d, b                                       ; $6010: $50
    ld [hl], b                                    ; $6011: $70
    ld d, b                                       ; $6012: $50
    ld [hl], b                                    ; $6013: $70
    ld c, b                                       ; $6014: $48
    ld a, b                                       ; $6015: $78
    nop                                           ; $6016: $00
    ld l, b                                       ; $6017: $68
    ld a, b                                       ; $6018: $78
    inc h                                         ; $6019: $24
    inc a                                         ; $601a: $3c
    ld a, [hl+]                                   ; $601b: $2a
    ld [hl], $35                                  ; $601c: $36 $35
    dec sp                                        ; $601e: $3b

jr_09a_601f:
    add b                                         ; $601f: $80
    sbc a                                         ; $6020: $9f
    inc [hl]                                      ; $6021: $34
    rra                                           ; $6022: $1f
    ld h, b                                       ; $6023: $60
    ld c, d                                       ; $6024: $4a
    and b                                         ; $6025: $a0
    push de                                       ; $6026: $d5
    and e                                         ; $6027: $a3
    res 0, b                                      ; $6028: $cb $80
    ld l, b                                       ; $602a: $68
    inc b                                         ; $602b: $04
    ld bc, $0203                                  ; $602c: $01 $03 $02
    rrca                                          ; $602f: $0f

jr_09a_6030:
    rrca                                          ; $6030: $0f
    scf                                           ; $6031: $37
    ld hl, sp+$00                                 ; $6032: $f8 $00
    ld e, a                                       ; $6034: $5f
    ldh [$bf], a                                  ; $6035: $e0 $bf
    ret nz                                        ; $6037: $c0

    cp a                                          ; $6038: $bf
    ret nz                                        ; $6039: $c0

    ld hl, sp-$08                                 ; $603a: $f8 $f8
    nop                                           ; $603c: $00
    inc a                                         ; $603d: $3c
    call nz, $faf6                                ; $603e: $c4 $f6 $fa
    dec bc                                        ; $6041: $0b
    dec c                                         ; $6042: $0d
    dec b                                         ; $6043: $05
    rlca                                          ; $6044: $07
    nop                                           ; $6045: $00
    dec c                                         ; $6046: $0d
    dec bc                                        ; $6047: $0b
    ld a, [hl-]                                   ; $6048: $3a
    ld [hl], $6c                                  ; $6049: $36 $6c
    ld e, h                                       ; $604b: $5c
    ret nc                                        ; $604c: $d0

    or b                                          ; $604d: $b0
    nop                                           ; $604e: $00
    and b                                         ; $604f: $a0
    ld h, b                                       ; $6050: $60
    ld b, b                                       ; $6051: $40
    ret nz                                        ; $6052: $c0

jr_09a_6053:
    ldh a, [$f0]                                  ; $6053: $f0 $f0
    db $ec                                        ; $6055: $ec
    rra                                           ; $6056: $1f
    jr jr_09a_6053                                ; $6057: $18 $fa

    ld b, $fd                                     ; $6059: $06 $fd
    cp d                                          ; $605b: $ba
    rlca                                          ; $605c: $07
    rst $18                                       ; $605d: $df
    inc l                                         ; $605e: $2c
    inc b                                         ; $605f: $04
    db $fc                                        ; $6060: $fc
    ld [bc], a                                    ; $6061: $02
    nop                                           ; $6062: $00
    xor d                                         ; $6063: $aa
    dec b                                         ; $6064: $05
    ld d, a                                       ; $6065: $57
    pop bc                                        ; $6066: $c1
    db $eb                                        ; $6067: $eb
    ld [$f505], a                                 ; $6068: $ea $05 $f5
    ld [$ea08], sp                                ; $606b: $08 $08 $ea
    ld d, l                                       ; $606e: $55
    ld a, a                                       ; $606f: $7f
    adc [hl]                                      ; $6070: $8e
    dec b                                         ; $6071: $05
    rst $10                                       ; $6072: $d7
    jr nz, jr_09a_601f                            ; $6073: $20 $aa

    ld [hl], $55                                  ; $6075: $36 $55
    ld e, a                                       ; $6077: $5f
    ret z                                         ; $6078: $c8

    ld [hl], e                                    ; $6079: $73
    ld h, b                                       ; $607a: $60
    ld e, d                                       ; $607b: $5a
    ld bc, $032a                                  ; $607c: $01 $2a $03
    ld h, b                                       ; $607f: $60
    ld c, d                                       ; $6080: $4a
    ld d, b                                       ; $6081: $50
    sbc b                                         ; $6082: $98
    inc e                                         ; $6083: $1c
    ld h, d                                       ; $6084: $62
    ld a, [hl+]                                   ; $6085: $2a
    inc b                                         ; $6086: $04
    ret nz                                        ; $6087: $c0

    ld e, c                                       ; $6088: $59
    db $10                                        ; $6089: $10
    dec c                                         ; $608a: $0d
    ld d, l                                       ; $608b: $55
    rst $38                                       ; $608c: $ff

jr_09a_608d:
    ld [bc], a                                    ; $608d: $02
    jr nz, jr_09a_608d                            ; $608e: $20 $fd

    ld de, $0546                                  ; $6090: $11 $46 $05
    dec d                                         ; $6093: $15
    cp $02                                        ; $6094: $fe $02
    rst $38                                       ; $6096: $ff
    inc d                                         ; $6097: $14
    ld [$05eb], sp                                ; $6098: $08 $eb $05
    cp $5f                                        ; $609b: $fe $5f
    ld d, d                                       ; $609d: $52
    dec b                                         ; $609e: $05
    ld a, [de]                                    ; $609f: $1a
    db $fd                                        ; $60a0: $fd
    add h                                         ; $60a1: $84
    nop                                           ; $60a2: $00
    ld a, a                                       ; $60a3: $7f
    ld c, d                                       ; $60a4: $4a
    or l                                          ; $60a5: $b5
    xor e                                         ; $60a6: $ab
    rst $38                                       ; $60a7: $ff
    ld c, b                                       ; $60a8: $48
    cp a                                          ; $60a9: $bf
    nop                                           ; $60aa: $00
    jr @+$01                                      ; $60ab: $18 $ff

    ld d, h                                       ; $60ad: $54
    db $eb                                        ; $60ae: $eb
    inc e                                         ; $60af: $1c
    nop                                           ; $60b0: $00
    ld h, [hl]                                    ; $60b1: $66
    dec b                                         ; $60b2: $05
    db $10                                        ; $60b3: $10
    rst $28                                       ; $60b4: $ef
    nop                                           ; $60b5: $00
    nop                                           ; $60b6: $00
    rst $38                                       ; $60b7: $ff
    inc b                                         ; $60b8: $04
    ei                                            ; $60b9: $fb
    xor e                                         ; $60ba: $ab
    call c, $ff1e                                 ; $60bb: $dc $1e $ff
    ld [$ca80], sp                                ; $60be: $08 $80 $ca
    inc b                                         ; $60c1: $04
    and h                                         ; $60c2: $a4
    ld e, e                                       ; $60c3: $5b
    ld c, b                                       ; $60c4: $48
    rst $38                                       ; $60c5: $ff
    and d                                         ; $60c6: $a2
    db $fd                                        ; $60c7: $fd
    ld e, d                                       ; $60c8: $5a
    nop                                           ; $60c9: $00
    rst $20                                       ; $60ca: $e7
    cp $fe                                        ; $60cb: $fe $fe
    xor e                                         ; $60cd: $ab
    rst $38                                       ; $60ce: $ff
    or l                                          ; $60cf: $b5
    ld e, a                                       ; $60d0: $5f
    ld l, l                                       ; $60d1: $6d
    nop                                           ; $60d2: $00
    di                                            ; $60d3: $f3
    sub l                                         ; $60d4: $95
    ld a, a                                       ; $60d5: $7f
    ld e, c                                       ; $60d6: $59
    rst $20                                       ; $60d7: $e7
    rst $38                                       ; $60d8: $ff
    rst $38                                       ; $60d9: $ff
    and [hl]                                      ; $60da: $a6
    ld b, b                                       ; $60db: $40
    ld a, c                                       ; $60dc: $79
    cp b                                          ; $60dd: $b8
    ld [de], a                                    ; $60de: $12
    add b                                         ; $60df: $80
    ld a, a                                       ; $60e0: $7f
    rst $38                                       ; $60e1: $ff
    ld c, [hl]                                    ; $60e2: $4e
    cp a                                          ; $60e3: $bf
    ld d, l                                       ; $60e4: $55
    inc b                                         ; $60e5: $04
    xor $ff                                       ; $60e6: $ee $ff
    rst $38                                       ; $60e8: $ff
    inc sp                                        ; $60e9: $33

jr_09a_60ea:
    db $fc                                        ; $60ea: $fc
    xor a                                         ; $60eb: $af
    dec e                                         ; $60ec: $1d
    ldh [$e0], a                                  ; $60ed: $e0 $e0
    nop                                           ; $60ef: $00
    or b                                          ; $60f0: $b0
    ld [hl], b                                    ; $60f1: $70
    ld e, b                                       ; $60f2: $58
    cp b                                          ; $60f3: $b8
    ld hl, sp-$08                                 ; $60f4: $f8 $f8

jr_09a_60f6:
    xor h                                         ; $60f6: $ac
    ld e, h                                       ; $60f7: $5c
    nop                                           ; $60f8: $00
    dec l                                         ; $60f9: $2d
    cp $ff                                        ; $60fa: $fe $ff
    rst $38                                       ; $60fc: $ff
    ld [c], a                                     ; $60fd: $e2
    dec e                                         ; $60fe: $1d
    add hl, hl                                    ; $60ff: $29
    or $00                                        ; $6100: $f6 $00
    call z, Call_09a_65ff                         ; $6102: $cc $ff $65
    sbc e                                         ; $6105: $9b
    rst $38                                       ; $6106: $ff
    rst $38                                       ; $6107: $ff
    add hl, de                                    ; $6108: $19
    and $00                                       ; $6109: $e6 $00
    ld c, d                                       ; $610b: $4a
    or a                                          ; $610c: $b7
    rst $38                                       ; $610d: $ff
    rst $38                                       ; $610e: $ff
    ld a, [bc]                                    ; $610f: $0a
    db $fd                                        ; $6110: $fd
    ld e, c                                       ; $6111: $59
    cp [hl]                                       ; $6112: $be
    nop                                           ; $6113: $00
    xor [hl]                                      ; $6114: $ae
    ld e, a                                       ; $6115: $5f
    ld c, e                                       ; $6116: $4b
    db $fc                                        ; $6117: $fc
    rst $38                                       ; $6118: $ff
    rst $38                                       ; $6119: $ff
    ld b, [hl]                                    ; $611a: $46
    cp c                                          ; $611b: $b9
    nop                                           ; $611c: $00
    ld d, b                                       ; $611d: $50
    db $fc                                        ; $611e: $fc
    db $f4                                        ; $611f: $f4
    ld hl, sp-$14                                 ; $6120: $f8 $ec
    db $10                                        ; $6122: $10
    sbc b                                         ; $6123: $98
    ldh [rP1], a                                  ; $6124: $e0 $00
    ld e, b                                       ; $6126: $58
    or b                                          ; $6127: $b0
    jr c, jr_09a_60ea                             ; $6128: $38 $c0

    ld hl, sp-$10                                 ; $612a: $f8 $f0
    ld d, b                                       ; $612c: $50
    ldh [rP1], a                                  ; $612d: $e0 $00
    ld d, d                                       ; $612f: $52
    cp l                                          ; $6130: $bd
    xor d                                         ; $6131: $aa
    rst $18                                       ; $6132: $df
    sbc c                                         ; $6133: $99

jr_09a_6134:
    ld h, [hl]                                    ; $6134: $66
    rst $38                                       ; $6135: $ff
    rst $38                                       ; $6136: $ff
    ld [bc], a                                    ; $6137: $02
    ld [hl-], a                                   ; $6138: $32
    rst $08                                       ; $6139: $cf
    xor d                                         ; $613a: $aa
    ld a, a                                       ; $613b: $7f
    ld d, $eb                                     ; $613c: $16 $eb
    ld a, b                                       ; $613e: $78
    dec b                                         ; $613f: $05
    rst $10                                       ; $6140: $d7
    jr nz, jr_09a_60f6                            ; $6141: $20 $b3

    ld a, h                                       ; $6143: $7c
    ld l, d                                       ; $6144: $6a
    ld [$a659], sp                                ; $6145: $08 $59 $a6
    or [hl]                                       ; $6148: $b6
    ld a, l                                       ; $6149: $7d
    inc l                                         ; $614a: $2c
    nop                                           ; $614b: $00
    db $d3                                        ; $614c: $d3
    rst $38                                       ; $614d: $ff
    rst $38                                       ; $614e: $ff
    ret nc                                        ; $614f: $d0

    jr nz, jr_09a_6192                            ; $6150: $20 $40

    ldh a, [$50]                                  ; $6152: $f0 $50
    nop                                           ; $6154: $00
    or b                                          ; $6155: $b0
    ldh a, [$f0]                                  ; $6156: $f0 $f0
    or b                                          ; $6158: $b0
    ld [hl], b                                    ; $6159: $70
    jr c, jr_09a_6134                             ; $615a: $38 $d8

    inc c                                         ; $615c: $0c
    nop                                           ; $615d: $00
    db $fc                                        ; $615e: $fc
    db $fc                                        ; $615f: $fc
    db $fc                                        ; $6160: $fc
    ld [de], a                                    ; $6161: $12
    dec e                                         ; $6162: $1d
    dec d                                         ; $6163: $15
    ld a, [de]                                    ; $6164: $1a
    ld a, [de]                                    ; $6165: $1a
    nop                                           ; $6166: $00
    dec e                                         ; $6167: $1d
    add hl, bc                                    ; $6168: $09
    ld c, $0c                                     ; $6169: $0e $0c
    rrca                                          ; $616b: $0f
    dec b                                         ; $616c: $05
    ld b, $04                                     ; $616d: $06 $04

jr_09a_616f:
    nop                                           ; $616f: $00
    rlca                                          ; $6170: $07
    ld b, $07                                     ; $6171: $06 $07
    ret nz                                        ; $6173: $c0

    ret nz                                        ; $6174: $c0

    jr c, jr_09a_616f                             ; $6175: $38 $f8

    and [hl]                                      ; $6177: $a6
    nop                                           ; $6178: $00
    ld e, [hl]                                    ; $6179: $5e
    ld d, l                                       ; $617a: $55
    xor e                                         ; $617b: $ab
    xor d                                         ; $617c: $aa
    ld d, l                                       ; $617d: $55
    ld e, l                                       ; $617e: $5d
    and d                                         ; $617f: $a2
    xor d                                         ; $6180: $aa
    nop                                           ; $6181: $00
    ld d, l                                       ; $6182: $55
    ld d, a                                       ; $6183: $57
    xor b                                         ; $6184: $a8
    and h                                         ; $6185: $a4
    rst $10                                       ; $6186: $d7
    and a                                         ; $6187: $a7
    call z, $00ab                                 ; $6188: $cc $ab $00
    call c, $ccab                                 ; $618b: $dc $ab $cc
    ld l, [hl]                                    ; $618e: $6e
    reti                                          ; $618f: $d9


    cpl                                           ; $6190: $2f
    jp hl                                         ; $6191: $e9


jr_09a_6192:
    db $db                                        ; $6192: $db
    nop                                           ; $6193: $00
    dec a                                         ; $6194: $3d
    db $ed                                        ; $6195: $ed
    rra                                           ; $6196: $1f
    rst $38                                       ; $6197: $ff
    add b                                         ; $6198: $80
    ccf                                           ; $6199: $3f
    ret nz                                        ; $619a: $c0

    ld a, a                                       ; $619b: $7f
    rlc h                                         ; $619c: $cb $04
    db $10                                        ; $619e: $10
    ld [bc], a                                    ; $619f: $02
    ld [$c03f], sp                                ; $61a0: $08 $3f $c0
    xor $09                                       ; $61a3: $ee $09
    ld bc, $1001                                  ; $61a5: $01 $01 $10
    ld l, c                                       ; $61a8: $69
    ld e, $01                                     ; $61a9: $1e $01
    xor e                                         ; $61ab: $ab
    ld d, h                                       ; $61ac: $54
    ld d, l                                       ; $61ad: $55
    xor d                                         ; $61ae: $aa
    ccf                                           ; $61af: $3f
    ret nz                                        ; $61b0: $c0

    rra                                           ; $61b1: $1f
    cp h                                          ; $61b2: $bc
    ld bc, $9f00                                  ; $61b3: $01 $00 $9f
    ldh [$cb], a                                  ; $61b6: $e0 $cb
    db $f4                                        ; $61b8: $f4
    ld h, l                                       ; $61b9: $65
    ld a, d                                       ; $61ba: $7a
    ei                                            ; $61bb: $fb
    rrca                                          ; $61bc: $0f
    inc bc                                        ; $61bd: $03
    db $f4                                        ; $61be: $f4
    rrca                                          ; $61bf: $0f
    ld a, [$fd07]                                 ; $61c0: $fa $07 $fd
    ld [bc], a                                    ; $61c3: $02

jr_09a_61c4:
    ld [hl], a                                    ; $61c4: $77
    ld b, $02                                     ; $61c5: $06 $02
    stop                                          ; $61c7: $10 $00
    ld a, a                                       ; $61c9: $7f
    add b                                         ; $61ca: $80
    cp a                                          ; $61cb: $bf
    ret nz                                        ; $61cc: $c0

    ld e, a                                       ; $61cd: $5f
    ldh [$3f], a                                  ; $61ce: $e0 $3f
    ldh [$08], a                                  ; $61d0: $e0 $08
    rst $18                                       ; $61d2: $df
    jr nc, jr_09a_61c4                            ; $61d3: $30 $ef

    db $10                                        ; $61d5: $10
    inc d                                         ; $61d6: $14
    ld [$3d32], sp                                ; $61d7: $08 $32 $3d
    add hl, de                                    ; $61da: $19
    inc b                                         ; $61db: $04
    ld e, $0e                                     ; $61dc: $1e $0e
    rrca                                          ; $61de: $0f
    inc bc                                        ; $61df: $03
    inc bc                                        ; $61e0: $03
    ccf                                           ; $61e1: $3f
    ld a, $7f                                     ; $61e2: $3e $7f
    add b                                         ; $61e4: $80
    nop                                           ; $61e5: $00
    cpl                                           ; $61e6: $2f
    ret nc                                        ; $61e7: $d0

    sub l                                         ; $61e8: $95
    ld [$ffe0], a                                 ; $61e9: $ea $e0 $ff
    cp a                                          ; $61ec: $bf
    rst $38                                       ; $61ed: $ff
    ld [$d5a1], sp                                ; $61ee: $08 $a1 $d5
    and c                                         ; $61f1: $a1
    set 1, b                                      ; $61f2: $cb $c8
    ld bc, $f528                                  ; $61f4: $01 $28 $f5
    cpl                                           ; $61f7: $2f
    nop                                           ; $61f8: $00
    xor [hl]                                      ; $61f9: $ae
    ld a, e                                       ; $61fa: $7b
    ld a, a                                       ; $61fb: $7f
    pop hl                                        ; $61fc: $e1
    rst $18                                       ; $61fd: $df
    ld hl, sp-$19                                 ; $61fe: $f8 $e7
    call c, $a702                                 ; $6200: $dc $02 $a7
    call c, $d5a0                                 ; $6203: $dc $a0 $d5
    and b                                         ; $6206: $a0
    jp z, Jump_09a_4804                           ; $6207: $ca $04 $48

    rst $38                                       ; $620a: $ff
    add b                                         ; $620b: $80
    ld d, b                                       ; $620c: $50
    nop                                           ; $620d: $00
    db $eb                                        ; $620e: $eb
    sbc h                                         ; $620f: $9c
    or a                                          ; $6210: $b7
    adc $ba                                       ; $6211: $ce $ba
    rst $00                                       ; $6213: $c7
    sbc a                                         ; $6214: $9f
    nop                                           ; $6215: $00
    ldh [$d7], a                                  ; $6216: $e0 $d7
    add sp, -$31                                  ; $6218: $e8 $cf
    ld a, [$f725]                                 ; $621a: $fa $25 $f7
    pop hl                                        ; $621d: $e1
    nop                                           ; $621e: $00
    dec hl                                        ; $621f: $2b
    push de                                       ; $6220: $d5
    scf                                           ; $6221: $37
    pop de                                        ; $6222: $d1
    dec sp                                        ; $6223: $3b
    or $17                                        ; $6224: $f6 $17
    db $f4                                        ; $6226: $f4
    nop                                           ; $6227: $00
    sbc a                                         ; $6228: $9f
    db $db                                        ; $6229: $db
    cp h                                          ; $622a: $bc
    or a                                          ; $622b: $b7
    ld hl, sp-$01                                 ; $622c: $f8 $ff
    nop                                           ; $622e: $00

jr_09a_622f:
    ld [hl], a                                    ; $622f: $77
    nop                                           ; $6230: $00
    adc b                                         ; $6231: $88
    ld d, a                                       ; $6232: $57
    db $ec                                        ; $6233: $ec
    and l                                         ; $6234: $a5
    cp $fe                                        ; $6235: $fe $fe
    ld b, a                                       ; $6237: $47
    ei                                            ; $6238: $fb
    ld [bc], a                                    ; $6239: $02
    rra                                           ; $623a: $1f
    rst $20                                       ; $623b: $e7
    dec sp                                        ; $623c: $3b
    push hl                                       ; $623d: $e5
    dec sp                                        ; $623e: $3b
    rst $38                                       ; $623f: $ff
    ld [hl], h                                    ; $6240: $74
    ld b, $f4                                     ; $6241: $06 $f4
    nop                                           ; $6243: $00
    dec bc                                        ; $6244: $0b
    xor c                                         ; $6245: $a9
    ld d, a                                       ; $6246: $57
    rlca                                          ; $6247: $07
    rst $38                                       ; $6248: $ff
    db $fd                                        ; $6249: $fd
    rst $38                                       ; $624a: $ff
    add l                                         ; $624b: $85
    inc bc                                        ; $624c: $03
    rst $10                                       ; $624d: $d7
    add c                                         ; $624e: $81
    xor e                                         ; $624f: $ab
    dec b                                         ; $6250: $05
    ld d, a                                       ; $6251: $57
    ld bc, $5004                                  ; $6252: $01 $04 $50
    ld [hl], h                                    ; $6255: $74
    ld [$04c0], sp                                ; $6256: $08 $c0 $04
    jr jr_09a_62c3                                ; $6259: $18 $68

    jr jr_09a_628c                                ; $625b: $18 $2f

    ld hl, sp-$25                                 ; $625d: $f8 $db
    inc a                                         ; $625f: $3c
    rst $28                                       ; $6260: $ef
    inc e                                         ; $6261: $1c
    nop                                           ; $6262: $00
    db $fd                                        ; $6263: $fd
    ld e, $6f                                     ; $6264: $1e $6f
    sbc [hl]                                      ; $6266: $9e
    sub d                                         ; $6267: $92
    ei                                            ; $6268: $fb
    pop hl                                        ; $6269: $e1
    push af                                       ; $626a: $f5
    ld bc, $ebc1                                  ; $626b: $01 $c1 $eb
    and e                                         ; $626e: $a3
    rst $10                                       ; $626f: $d7
    and a                                         ; $6270: $a7
    rst $08                                       ; $6271: $cf
    and l                                         ; $6272: $a5
    inc h                                         ; $6273: $24
    stop                                          ; $6274: $10 $00
    cp a                                          ; $6276: $bf
    ret nz                                        ; $6277: $c0

    ret nz                                        ; $6278: $c0

    cp a                                          ; $6279: $bf
    rst $38                                       ; $627a: $ff
    rst $38                                       ; $627b: $ff
    ret nz                                        ; $627c: $c0

    push de                                       ; $627d: $d5
    nop                                           ; $627e: $00
    ldh [$ea], a                                  ; $627f: $e0 $ea
    and b                                         ; $6281: $a0
    push af                                       ; $6282: $f5
    jr nz, jr_09a_622f                            ; $6283: $20 $aa

    nop                                           ; $6285: $00
    ld d, l                                       ; $6286: $55
    add b                                         ; $6287: $80
    ld e, h                                       ; $6288: $5c
    rrca                                          ; $6289: $0f
    rst $38                                       ; $628a: $ff
    rst $38                                       ; $628b: $ff

jr_09a_628c:
    db $f4                                        ; $628c: $f4
    rra                                           ; $628d: $1f
    db $db                                        ; $628e: $db
    inc a                                         ; $628f: $3c
    rst $30                                       ; $6290: $f7
    nop                                           ; $6291: $00
    jr c, @-$3f                                   ; $6292: $38 $bf

    ld a, b                                       ; $6294: $78
    or $79                                        ; $6295: $f6 $79
    ld c, c                                       ; $6297: $49
    rst $28                                       ; $6298: $ef
    add a                                         ; $6299: $87
    inc e                                         ; $629a: $1c
    rst $10                                       ; $629b: $d7
    add e                                         ; $629c: $83
    xor e                                         ; $629d: $ab
    ld h, h                                       ; $629e: $64
    ld [$1804], sp                                ; $629f: $08 $04 $18
    ld l, b                                       ; $62a2: $68
    jr jr_09a_62a8                                ; $62a3: $18 $03

    ld d, a                                       ; $62a5: $57
    ld [bc], a                                    ; $62a6: $02
    rlca                                          ; $62a7: $07

jr_09a_62a8:
    xor a                                         ; $62a8: $af
    dec b                                         ; $62a9: $05
    ld d, l                                       ; $62aa: $55
    inc b                                         ; $62ab: $04
    xor [hl]                                      ; $62ac: $ae
    jr nc, jr_09a_62d7                            ; $62ad: $30 $28

    push bc                                       ; $62af: $c5
    inc b                                         ; $62b0: $04
    rst $10                                       ; $62b1: $d7
    pop hl                                        ; $62b2: $e1
    db $eb                                        ; $62b3: $eb
    and l                                         ; $62b4: $a5
    rst $30                                       ; $62b5: $f7
    inc h                                         ; $62b6: $24
    ld [$03f9], sp                                ; $62b7: $08 $f9 $03
    add b                                         ; $62ba: $80
    ld [$a80e], a                                 ; $62bb: $ea $0e $a8
    ld d, a                                       ; $62be: $57
    or d                                          ; $62bf: $b2
    db $fd                                        ; $62c0: $fd
    ld b, l                                       ; $62c1: $45
    cp a                                          ; $62c2: $bf

jr_09a_62c3:
    or e                                          ; $62c3: $b3
    nop                                           ; $62c4: $00
    call z, $ffff                                 ; $62c5: $cc $ff $ff
    ld c, b                                       ; $62c8: $48
    rst $30                                       ; $62c9: $f7
    ld d, l                                       ; $62ca: $55
    ld [$00ff], a                                 ; $62cb: $ea $ff $00
    rst $38                                       ; $62ce: $ff
    jr @-$17                                      ; $62cf: $18 $e7

    xor d                                         ; $62d1: $aa
    ld e, l                                       ; $62d2: $5d
    ld h, d                                       ; $62d3: $62
    rst $38                                       ; $62d4: $ff
    ld d, h                                       ; $62d5: $54
    ld [bc], a                                    ; $62d6: $02

jr_09a_62d7:
    xor e                                         ; $62d7: $ab
    rst $38                                       ; $62d8: $ff
    rst $38                                       ; $62d9: $ff
    reti                                          ; $62da: $d9


    and $46                                       ; $62db: $e6 $46
    ld [hl], b                                    ; $62dd: $70
    nop                                           ; $62de: $00
    ld d, h                                       ; $62df: $54
    nop                                           ; $62e0: $00
    db $fc                                        ; $62e1: $fc
    sub $3e                                       ; $62e2: $d6 $3e
    halt                                          ; $62e4: $76
    cp $92                                        ; $62e5: $fe $92
    ld a, [hl]                                    ; $62e7: $7e
    cp $00                                        ; $62e8: $fe $00
    cp $5a                                        ; $62ea: $fe $5a
    and $aa                                       ; $62ec: $e6 $aa
    ld e, [hl]                                    ; $62ee: $5e
    cp $fe                                        ; $62ef: $fe $fe
    ld c, h                                       ; $62f1: $4c
    ld [bc], a                                    ; $62f2: $02
    cp a                                          ; $62f3: $bf
    xor d                                         ; $62f4: $aa
    ld d, l                                       ; $62f5: $55
    dec d                                         ; $62f6: $15
    ld a, [$f8a9]                                 ; $62f7: $fa $a9 $f8
    rlca                                          ; $62fa: $07
    ld e, l                                       ; $62fb: $5d
    nop                                           ; $62fc: $00
    and d                                         ; $62fd: $a2
    ld e, b                                       ; $62fe: $58
    rst $38                                       ; $62ff: $ff
    ld c, c                                       ; $6300: $49
    or a                                          ; $6301: $b7
    sub h                                         ; $6302: $94
    ld l, a                                       ; $6303: $6f
    ld l, l                                       ; $6304: $6d
    nop                                           ; $6305: $00
    sbc [hl]                                      ; $6306: $9e
    ld l, [hl]                                    ; $6307: $6e
    push af                                       ; $6308: $f5
    and l                                         ; $6309: $a5
    rst $18                                       ; $630a: $df
    rst $38                                       ; $630b: $ff
    rst $38                                       ; $630c: $ff
    ld [hl], d                                    ; $630d: $72

jr_09a_630e:
    nop                                           ; $630e: $00
    db $fd                                        ; $630f: $fd
    xor e                                         ; $6310: $ab
    ld d, a                                       ; $6311: $57
    and l                                         ; $6312: $a5
    ld a, [$cc30]                                 ; $6313: $fa $30 $cc
    call nz, $3800                                ; $6316: $c4 $00 $38
    sub b                                         ; $6319: $90
    db $ec                                        ; $631a: $ec
    jr c, @-$06                                   ; $631b: $38 $f8

    ld hl, sp-$08                                 ; $631d: $f8 $f8
    jr nc, jr_09a_6321                            ; $631f: $30 $00

jr_09a_6321:
    ret z                                         ; $6321: $c8

    ld b, b                                       ; $6322: $40
    cp b                                          ; $6323: $b8
    sub b                                         ; $6324: $90
    ld l, b                                       ; $6325: $68
    push de                                       ; $6326: $d5
    ld a, [$00ff]                                 ; $6327: $fa $ff $00
    rst $38                                       ; $632a: $ff
    ld d, l                                       ; $632b: $55
    ld [$57a8], a                                 ; $632c: $ea $a8 $57
    inc d                                         ; $632f: $14
    db $eb                                        ; $6330: $eb
    xor e                                         ; $6331: $ab
    ld bc, $7f54                                  ; $6332: $01 $54 $7f
    add b                                         ; $6335: $80
    ld hl, sp+$00                                 ; $6336: $f8 $00
    sub [hl]                                      ; $6338: $96
    ld l, a                                       ; $6339: $6f
    add [hl]                                      ; $633a: $86
    ld [bc], a                                    ; $633b: $02
    inc b                                         ; $633c: $04
    ld e, c                                       ; $633d: $59
    swap a                                        ; $633e: $cb $37
    rst $38                                       ; $6340: $ff
    nop                                           ; $6341: $00
    sbc a                                         ; $6342: $9f
    inc de                                        ; $6343: $13
    nop                                           ; $6344: $00
    ld e, b                                       ; $6345: $58
    ld bc, $f8b0                                  ; $6346: $01 $b0 $f8
    ldh a, [$98]                                  ; $6349: $f0 $98
    ld h, b                                       ; $634b: $60
    jr nc, jr_09a_630e                            ; $634c: $30 $c0

    ld c, $18                                     ; $634e: $0e $18
    nop                                           ; $6350: $00
    nop                                           ; $6351: $00
    nop                                           ; $6352: $00
    dec [hl]                                      ; $6353: $35
    ld [$04db], sp                                ; $6354: $08 $db $04
    call nz, $01ff                                ; $6357: $c4 $ff $01
    ld c, [hl]                                    ; $635a: $4e
    ld bc, $6193                                  ; $635b: $01 $93 $61
    ld l, e                                       ; $635e: $6b
    dec d                                         ; $635f: $15
    xor d                                         ; $6360: $aa
    and $07                                       ; $6361: $e6 $07
    nop                                           ; $6363: $00
    ld [hl], $c8                                  ; $6364: $36 $c8
    ld h, l                                       ; $6366: $65
    ld a, [de]                                    ; $6367: $1a
    call z, $ceff                                 ; $6368: $cc $ff $ce
    nop                                           ; $636b: $00
    ld [$50a9], sp                                ; $636c: $08 $a9 $50
    or c                                          ; $636f: $b1
    ld c, $10                                     ; $6370: $0e $10
    ld [$10ab], sp                                ; $6372: $08 $ab $10
    ld e, c                                       ; $6375: $59
    nop                                           ; $6376: $00
    add [hl]                                      ; $6377: $86
    ld e, e                                       ; $6378: $5b
    rst $38                                       ; $6379: $ff
    ld h, [hl]                                    ; $637a: $66
    add b                                         ; $637b: $80
    and l                                         ; $637c: $a5
    ld a, [de]                                    ; $637d: $1a
    ld d, l                                       ; $637e: $55
    ld b, b                                       ; $637f: $40
    jr z, jr_09a_63a2                             ; $6380: $28 $20

    ld [$022d], sp                                ; $6382: $08 $2d $02
    ld l, c                                       ; $6385: $69
    sub b                                         ; $6386: $90
    ld [hl+], a                                   ; $6387: $22
    rst $38                                       ; $6388: $ff
    inc bc                                        ; $6389: $03
    rlc h                                         ; $638a: $cb $04
    sbc [hl]                                      ; $638c: $9e
    ld h, l                                       ; $638d: $65
    ld e, [hl]                                    ; $638e: $5e
    inc b                                         ; $638f: $04
    jr nc, jr_09a_639a                            ; $6390: $30 $08

    sbc b                                         ; $6392: $98
    dec l                                         ; $6393: $2d
    inc c                                         ; $6394: $0c
    ld a, [bc]                                    ; $6395: $0a
    nop                                           ; $6396: $00

jr_09a_6397:
    dec d                                         ; $6397: $15
    ld [bc], a                                    ; $6398: $02
    jp hl                                         ; $6399: $e9


jr_09a_639a:
    rrca                                          ; $639a: $0f
    jr nz, jr_09a_63cb                            ; $639b: $20 $2e

    inc b                                         ; $639d: $04
    ld [bc], a                                    ; $639e: $02
    ld sp, $0409                                  ; $639f: $31 $09 $04

jr_09a_63a2:
    ld sp, hl                                     ; $63a2: $f9
    rrca                                          ; $63a3: $0f
    jr nz, @+$30                                  ; $63a4: $20 $2e

    sub h                                         ; $63a6: $94
    nop                                           ; $63a7: $00
    ld a, [bc]                                    ; $63a8: $0a
    jp hl                                         ; $63a9: $e9


    rrca                                          ; $63aa: $0f
    ld b, e                                       ; $63ab: $43

jr_09a_63ac:
    rst $38                                       ; $63ac: $ff
    jr nz, jr_09a_63dd                            ; $63ad: $20 $2e

    ld e, d                                       ; $63af: $5a
    add b                                         ; $63b0: $80
    or h                                          ; $63b1: $b4
    ld b, b                                       ; $63b2: $40
    add hl, bc                                    ; $63b3: $09
    dec d                                         ; $63b4: $15
    inc a                                         ; $63b5: $3c
    dec h                                         ; $63b6: $25
    dec d                                         ; $63b7: $15
    inc b                                         ; $63b8: $04
    ld [bc], a                                    ; $63b9: $02
    ld a, [hl+]                                   ; $63ba: $2a
    jr nc, @+$12                                  ; $63bb: $30 $10

    rst $38                                       ; $63bd: $ff
    jr nc, jr_09a_6420                            ; $63be: $30 $60

    rst $38                                       ; $63c0: $ff
    jr nc, jr_09a_6423                            ; $63c1: $30 $60

    nop                                           ; $63c3: $00
    ld a, e                                       ; $63c4: $7b
    add d                                         ; $63c5: $82
    xor l                                         ; $63c6: $ad
    ld [bc], a                                    ; $63c7: $02
    ld h, d                                       ; $63c8: $62
    rst $38                                       ; $63c9: $ff
    push de                                       ; $63ca: $d5

jr_09a_63cb:
    nop                                           ; $63cb: $00
    ld [$946a], sp                                ; $63cc: $08 $6a $94
    ld b, l                                       ; $63cf: $45
    nop                                           ; $63d0: $00
    sub b                                         ; $63d1: $90
    db $10                                        ; $63d2: $10
    jp nc, Jump_000_00d9                          ; $63d3: $d2 $d9 $00

    nop                                           ; $63d6: $00
    call nz, $b3ff                                ; $63d7: $c4 $ff $b3
    nop                                           ; $63da: $00
    ld e, d                                       ; $63db: $5a
    dec b                                         ; $63dc: $05

jr_09a_63dd:
    xor [hl]                                      ; $63dd: $ae
    ld b, b                                       ; $63de: $40
    add b                                         ; $63df: $80
    ret nz                                        ; $63e0: $c0

    nop                                           ; $63e1: $00
    ld b, $bc                                     ; $63e2: $06 $bc
    jp $81c0                                      ; $63e4: $c3 $c0 $81


    and c                                         ; $63e7: $a1
    ret nz                                        ; $63e8: $c0

    jr c, jr_09a_63ac                             ; $63e9: $38 $c1

    add b                                         ; $63eb: $80
    inc b                                         ; $63ec: $04
    jr z, @-$62                                   ; $63ed: $28 $9c

    dec l                                         ; $63ef: $2d
    ld h, b                                       ; $63f0: $60
    jr z, jr_09a_6397                             ; $63f1: $28 $a4

    ld e, c                                       ; $63f3: $59
    ld d, b                                       ; $63f4: $50
    jr z, jr_09a_6420                             ; $63f5: $28 $29

    inc h                                         ; $63f7: $24
    ret nz                                        ; $63f8: $c0

    dec b                                         ; $63f9: $05
    ld b, h                                       ; $63fa: $44
    call nz, $f405                                ; $63fb: $c4 $05 $f4
    ld sp, hl                                     ; $63fe: $f9
    ldh a, [$7a]                                  ; $63ff: $f0 $7a
    ld sp, hl                                     ; $6401: $f9
    inc l                                         ; $6402: $2c
    ld c, b                                       ; $6403: $48
    jr c, jr_09a_640e                             ; $6404: $38 $08

jr_09a_6406:
    ret z                                         ; $6406: $c8

    ld c, $d0                                     ; $6407: $0e $d0
    ld c, b                                       ; $6409: $48
    rst $18                                       ; $640a: $df
    ret nc                                        ; $640b: $d0

    ld h, b                                       ; $640c: $60
    rst $38                                       ; $640d: $ff

jr_09a_640e:
    add b                                         ; $640e: $80
    halt                                          ; $640f: $76
    nop                                           ; $6410: $00
    push de                                       ; $6411: $d5
    nop                                           ; $6412: $00
    xor e                                         ; $6413: $ab
    nop                                           ; $6414: $00
    ld e, a                                       ; $6415: $5f
    nop                                           ; $6416: $00
    or l                                          ; $6417: $b5

jr_09a_6418:
    call nz, Call_000_2020                        ; $6418: $c4 $20 $20
    db $10                                        ; $641b: $10
    jr @+$56                                      ; $641c: $18 $54

    ld [bc], a                                    ; $641e: $02
    xor c                                         ; $641f: $a9

jr_09a_6420:
    ret nz                                        ; $6420: $c0

    jr nz, jr_09a_6418                            ; $6421: $20 $f5

jr_09a_6423:
    ld [bc], a                                    ; $6423: $02
    inc d                                         ; $6424: $14
    db $db                                        ; $6425: $db
    inc b                                         ; $6426: $04
    cp d                                          ; $6427: $ba
    inc h                                         ; $6428: $24
    nop                                           ; $6429: $00
    xor d                                         ; $642a: $aa
    ret nz                                        ; $642b: $c0

    jr nz, @-$53                                  ; $642c: $20 $ab

    nop                                           ; $642e: $00
    ld bc, $0057                                  ; $642f: $01 $57 $00
    cp $00                                        ; $6432: $fe $00
    ld e, e                                       ; $6434: $5b
    add b                                         ; $6435: $80
    or [hl]                                       ; $6436: $b6
    ldh a, [rNR10]                                ; $6437: $f0 $10
    nop                                           ; $6439: $00
    jr nz, @+$01                                  ; $643a: $20 $ff

    rst $10                                       ; $643c: $d7
    jr z, jr_09a_64ae                             ; $643d: $28 $6f

    sub b                                         ; $643f: $90
    db $fc                                        ; $6440: $fc
    inc bc                                        ; $6441: $03
    ld [$06fb], sp                                ; $6442: $08 $fb $06
    or $0d                                        ; $6445: $f6 $0d
    rst $38                                       ; $6447: $ff
    db $10                                        ; $6448: $10
    rst $38                                       ; $6449: $ff
    xor d                                         ; $644a: $aa
    ld d, a                                       ; $644b: $57
    nop                                           ; $644c: $00
    ld [hl], l                                    ; $644d: $75
    adc [hl]                                      ; $644e: $8e
    rst $20                                       ; $644f: $e7
    jr @+$6d                                      ; $6450: $18 $6b

    sub h                                         ; $6452: $94
    push af                                       ; $6453: $f5
    dec bc                                        ; $6454: $0b
    xor d                                         ; $6455: $aa
    db $10                                        ; $6456: $10
    add hl, de                                    ; $6457: $19
    ld [$07c6], a                                 ; $6458: $ea $c6 $07
    xor e                                         ; $645b: $ab
    ld d, [hl]                                    ; $645c: $56
    rlca                                          ; $645d: $07
    xor d                                         ; $645e: $aa
    or b                                          ; $645f: $b0
    jr nc, jr_09a_6406                            ; $6460: $30 $a4

    jr nz, jr_09a_647d                            ; $6462: $20 $19

    ldh a, [$b0]                                  ; $6464: $f0 $b0
    jr nc, jr_09a_6468                            ; $6466: $30 $00

jr_09a_6468:
    rst $38                                       ; $6468: $ff
    or $09                                        ; $6469: $f6 $09
    db $ed                                        ; $646b: $ed
    ld bc, $8b12                                  ; $646c: $01 $12 $8b

jr_09a_646f:
    ld [hl], h                                    ; $646f: $74
    and l                                         ; $6470: $a5
    jp c, $f44b                                   ; $6471: $da $4b $f4

    ld c, c                                       ; $6474: $49
    ld c, $00                                     ; $6475: $0e $00
    ld e, e                                       ; $6477: $5b
    db $fd                                        ; $6478: $fd
    xor h                                         ; $6479: $ac
    ld a, c                                       ; $647a: $79
    db $db                                        ; $647b: $db
    dec a                                         ; $647c: $3d

jr_09a_647d:
    ld c, [hl]                                    ; $647d: $4e
    cp c                                          ; $647e: $b9
    nop                                           ; $647f: $00
    cp e                                          ; $6480: $bb
    ld e, l                                       ; $6481: $5d
    ld c, a                                       ; $6482: $4f
    cp c                                          ; $6483: $b9
    ei                                            ; $6484: $fb
    db $fd                                        ; $6485: $fd
    rst $38                                       ; $6486: $ff
    ld sp, hl                                     ; $6487: $f9
    add sp, -$12                                  ; $6488: $e8 $ee
    ld d, l                                       ; $648a: $55
    ld l, d                                       ; $648b: $6a
    dec b                                         ; $648c: $05
    add b                                         ; $648d: $80
    ld b, l                                       ; $648e: $45
    ld d, l                                       ; $648f: $55
    ld e, d                                       ; $6490: $5a
    dec bc                                        ; $6491: $0b
    rlca                                          ; $6492: $07
    inc b                                         ; $6493: $04
    dec bc                                        ; $6494: $0b
    nop                                           ; $6495: $00
    ld c, $0f                                     ; $6496: $0e $0f
    ld [$0c0b], sp                                ; $6498: $08 $0b $0c
    inc e                                         ; $649b: $1c
    rst $38                                       ; $649c: $ff
    dec sp                                        ; $649d: $3b
    inc b                                         ; $649e: $04
    ld a, h                                       ; $649f: $7c
    ld e, a                                       ; $64a0: $5f
    add sp, $7f                                   ; $64a1: $e8 $7f
    ld h, h                                       ; $64a3: $64
    ld l, [hl]                                    ; $64a4: $6e
    ld c, e                                       ; $64a5: $4b
    cp a                                          ; $64a6: $bf
    rst $38                                       ; $64a7: $ff
    ld bc, $f5ca                                  ; $64a8: $01 $ca $f5
    xor a                                         ; $64ab: $af
    ldh a, [rIE]                                  ; $64ac: $f0 $ff

jr_09a_64ae:
    ret nz                                        ; $64ae: $c0

    rst $38                                       ; $64af: $ff
    sbc b                                         ; $64b0: $98
    dec b                                         ; $64b1: $05
    nop                                           ; $64b2: $00
    db $ed                                        ; $64b3: $ed
    jp nc, $e59b                                  ; $64b4: $d2 $9b $e5

    xor $db                                       ; $64b7: $ee $db
    ld d, l                                       ; $64b9: $55

jr_09a_64ba:
    rst $28                                       ; $64ba: $ef

jr_09a_64bb:
    add b                                         ; $64bb: $80
    ldh a, [$0d]                                  ; $64bc: $f0 $0d
    dec b                                         ; $64be: $05
    ld b, $0b                                     ; $64bf: $06 $0b
    inc c                                         ; $64c1: $0c
    rla                                           ; $64c2: $17
    jr @+$31                                      ; $64c3: $18 $2f

    add hl, bc                                    ; $64c5: $09
    jr nc, @+$61                                  ; $64c6: $30 $5f

    ld h, b                                       ; $64c8: $60
    cp a                                          ; $64c9: $bf
    ld a, [$400b]                                 ; $64ca: $fa $0b $40
    ld a, a                                       ; $64cd: $7f
    ld h, $01                                     ; $64ce: $26 $01
    sub b                                         ; $64d0: $90
    ldh a, [$0b]                                  ; $64d1: $f0 $0b
    cp $01                                        ; $64d3: $fe $01
    ld c, $01                                     ; $64d5: $0e $01
    ld [hl], l                                    ; $64d7: $75
    rst $30                                       ; $64d8: $f7
    jr z, jr_09a_64ba                             ; $64d9: $28 $df

    nop                                           ; $64db: $00
    jr nc, @-$1f                                  ; $64dc: $30 $df

    jr nz, jr_09a_646f                            ; $64de: $20 $8f

    ld [hl], b                                    ; $64e0: $70
    ld e, a                                       ; $64e1: $5f
    and b                                         ; $64e2: $a0
    xor a                                         ; $64e3: $af
    nop                                           ; $64e4: $00
    ld [hl], b                                    ; $64e5: $70
    ld e, a                                       ; $64e6: $5f
    ldh [$e0], a                                  ; $64e7: $e0 $e0
    jr nz, jr_09a_64bb                            ; $64e9: $20 $d0

    ld [hl], b                                    ; $64eb: $70
    ldh a, [rP1]                                  ; $64ec: $f0 $00
    db $10                                        ; $64ee: $10
    ret nc                                        ; $64ef: $d0

    jr nc, jr_09a_652a                            ; $64f0: $30 $38

Jump_09a_64f2:
    rst $38                                       ; $64f2: $ff
    call c, $fa3d                                 ; $64f3: $dc $3d $fa
    db $10                                        ; $64f6: $10
    ld d, $fe                                     ; $64f7: $16 $fe
    daa                                           ; $64f9: $27
    ret nz                                        ; $64fa: $c0

    ld b, l                                       ; $64fb: $45
    ld d, [hl]                                    ; $64fc: $56
    dec b                                         ; $64fd: $05
    xor a                                         ; $64fe: $af
    ld bc, $5700                                  ; $64ff: $01 $00 $57
    push af                                       ; $6502: $f5
    rrca                                          ; $6503: $0f
    rst $38                                       ; $6504: $ff
    inc bc                                        ; $6505: $03
    rst $38                                       ; $6506: $ff
    inc bc                                        ; $6507: $03
    db $fd                                        ; $6508: $fd
    nop                                           ; $6509: $00
    inc bc                                        ; $650a: $03
    ld l, e                                       ; $650b: $6b
    sub a                                         ; $650c: $97
    push af                                       ; $650d: $f5
    ld c, e                                       ; $650e: $4b
    and a                                         ; $650f: $a7
    ei                                            ; $6510: $fb
    ld d, d                                       ; $6511: $52
    ld h, b                                       ; $6512: $60
    rst $28                                       ; $6513: $ef
    inc d                                         ; $6514: $14
    ld [$2804], sp                                ; $6515: $08 $04 $28
    db $fd                                        ; $6518: $fd
    rst $38                                       ; $6519: $ff
    ld d, e                                       ; $651a: $53
    xor a                                         ; $651b: $af
    xor l                                         ; $651c: $ad
    nop                                           ; $651d: $00
    ld d, [hl]                                    ; $651e: $56
    ld [hl], a                                    ; $651f: $77
    adc h                                         ; $6520: $8c
    ei                                            ; $6521: $fb
    inc c                                         ; $6522: $0c
    ei                                            ; $6523: $fb
    inc b                                         ; $6524: $04
    pop af                                        ; $6525: $f1
    ld bc, $fa0e                                  ; $6526: $01 $0e $fa
    dec b                                         ; $6529: $05

jr_09a_652a:
    push af                                       ; $652a: $f5
    ld c, $fa                                     ; $652b: $0e $fa
    rlca                                          ; $652d: $07
    jr nc, jr_09a_653e                            ; $652e: $30 $0e

    pop bc                                        ; $6530: $c1
    ld [hl], h                                    ; $6531: $74
    ld c, $86                                     ; $6532: $0e $86
    ld [$0506], sp                                ; $6534: $08 $06 $05
    add hl, bc                                    ; $6537: $09
    ld c, $ff                                     ; $6538: $0e $ff
    sbc b                                         ; $653a: $98
    inc b                                         ; $653b: $04
    nop                                           ; $653c: $00
    rst $38                                       ; $653d: $ff

jr_09a_653e:
    nop                                           ; $653e: $00
    ld e, a                                       ; $653f: $5f
    and b                                         ; $6540: $a0

jr_09a_6541:
    cp a                                          ; $6541: $bf
    ld b, b                                       ; $6542: $40
    ld [hl], a                                    ; $6543: $77
    adc b                                         ; $6544: $88
    nop                                           ; $6545: $00
    xor [hl]                                      ; $6546: $ae
    ld d, c                                       ; $6547: $51
    ld e, l                                       ; $6548: $5d
    and d                                         ; $6549: $a2
    db $fc                                        ; $654a: $fc
    inc bc                                        ; $654b: $03
    ld hl, sp+$07                                 ; $654c: $f8 $07
    nop                                           ; $654e: $00
    ld a, [c]                                     ; $654f: $f2
    rrca                                          ; $6550: $0f
    push hl                                       ; $6551: $e5
    rra                                           ; $6552: $1f
    srl a                                         ; $6553: $cb $3f
    ld c, a                                       ; $6555: $4f
    cp a                                          ; $6556: $bf
    nop                                           ; $6557: $00
    sbc [hl]                                      ; $6558: $9e
    ld a, a                                       ; $6559: $7f
    dec [hl]                                      ; $655a: $35
    or $8f                                        ; $655b: $f6 $8f
    ldh a, [$5f]                                  ; $655d: $f0 $5f
    ldh [rSC], a                                  ; $655f: $e0 $02
    rst $08                                       ; $6561: $cf
    ldh a, [$df]                                  ; $6562: $f0 $df
    ldh [$7f], a                                  ; $6564: $e0 $7f
    ld b, b                                       ; $6566: $40
    inc b                                         ; $6567: $04

jr_09a_6568:
    nop                                           ; $6568: $00
    ret nz                                        ; $6569: $c0

    ld [bc], a                                    ; $656a: $02
    cp a                                          ; $656b: $bf
    ld b, b                                       ; $656c: $40
    ld a, [bc]                                    ; $656d: $0a
    dec c                                         ; $656e: $0d
    dec c                                         ; $656f: $0d
    ld a, [bc]                                    ; $6570: $0a
    inc b                                         ; $6571: $04
    dec d                                         ; $6572: $15
    dec d                                         ; $6573: $15
    nop                                           ; $6574: $00
    inc d                                         ; $6575: $14
    dec de                                        ; $6576: $1b
    jr @+$19                                      ; $6577: $18 $17

    ld hl, $ba3f                                  ; $6579: $21 $3f $ba
    ld b, l                                       ; $657c: $45
    nop                                           ; $657d: $00
    ld d, h                                       ; $657e: $54
    xor e                                         ; $657f: $ab
    and e                                         ; $6580: $a3
    ld e, a                                       ; $6581: $5f
    ld c, a                                       ; $6582: $4f
    cp a                                          ; $6583: $bf
    inc a                                         ; $6584: $3c
    db $fc                                        ; $6585: $fc
    nop                                           ; $6586: $00
    ld [hl], b                                    ; $6587: $70
    ldh a, [$c0]                                  ; $6588: $f0 $c0
    ret nz                                        ; $658a: $c0

    add b                                         ; $658b: $80
    add b                                         ; $658c: $80
    ld l, e                                       ; $658d: $6b
    db $ec                                        ; $658e: $ec
    ld [$d8ef], sp                                ; $658f: $08 $ef $d8
    xor a                                         ; $6592: $af
    ret z                                         ; $6593: $c8

    ld [bc], a                                    ; $6594: $02
    dec c                                         ; $6595: $0d
    xor a                                         ; $6596: $af
    call c, Call_000_00a5                         ; $6597: $dc $a5 $00
    adc $a5                                       ; $659a: $ce $a5
    sub $ff                                       ; $659c: $d6 $ff
    nop                                           ; $659e: $00
    rst $18                                       ; $659f: $df
    jr nz, jr_09a_6541                            ; $65a0: $20 $9f

    nop                                           ; $65a2: $00
    ld h, b                                       ; $65a3: $60
    rst $18                                       ; $65a4: $df
    ld h, b                                       ; $65a5: $60
    sbc a                                         ; $65a6: $9f
    ld h, b                                       ; $65a7: $60
    rst $08                                       ; $65a8: $cf
    ld [hl], b                                    ; $65a9: $70
    rst $18                                       ; $65aa: $df
    nop                                           ; $65ab: $00
    ld h, b                                       ; $65ac: $60
    call $2b72                                    ; $65ad: $cd $72 $2b
    scf                                           ; $65b0: $37
    ld [hl], $2e                                  ; $65b1: $36 $2e
    inc h                                         ; $65b3: $24
    nop                                           ; $65b4: $00
    inc a                                         ; $65b5: $3c
    ld c, h                                       ; $65b6: $4c
    ld a, h                                       ; $65b7: $7c
    ld l, b                                       ; $65b8: $68
    ld e, b                                       ; $65b9: $58
    ld d, b                                       ; $65ba: $50
    ld [hl], b                                    ; $65bb: $70
    jr nc, jr_09a_65be                            ; $65bc: $30 $00

jr_09a_65be:
    jr nc, jr_09a_65e0                            ; $65be: $30 $20

    jr nz, jr_09a_6568                            ; $65c0: $20 $a6

    rst $08                                       ; $65c2: $cf
    and e                                         ; $65c3: $a3
    rst $10                                       ; $65c4: $d7
    and e                                         ; $65c5: $a3
    add b                                         ; $65c6: $80
    ld b, d                                       ; $65c7: $42
    inc h                                         ; $65c8: $24
    and e                                         ; $65c9: $a3
    res 4, l                                      ; $65ca: $cb $a5
    rst $10                                       ; $65cc: $d7
    xor e                                         ; $65cd: $ab
    halt                                          ; $65ce: $76
    ld [hl+], a                                   ; $65cf: $22
    nop                                           ; $65d0: $00
    rst $38                                       ; $65d1: $ff
    sub d                                         ; $65d2: $92
    rst $38                                       ; $65d3: $ff
    ld c, l                                       ; $65d4: $4d
    cp a                                          ; $65d5: $bf
    rst $28                                       ; $65d6: $ef
    sbc a                                         ; $65d7: $9f
    ld l, h                                       ; $65d8: $6c
    ld [bc], a                                    ; $65d9: $02
    sbc l                                         ; $65da: $9d
    ld l, b                                       ; $65db: $68
    sbc d                                         ; $65dc: $9a
    rst $38                                       ; $65dd: $ff
    rrca                                          ; $65de: $0f
    and a                                         ; $65df: $a7

jr_09a_65e0:
    ld b, h                                       ; $65e0: $44
    nop                                           ; $65e1: $00
    and d                                         ; $65e2: $a2
    ret nz                                        ; $65e3: $c0

    ld e, [hl]                                    ; $65e4: $5e
    inc d                                         ; $65e5: $14
    ld b, b                                       ; $65e6: $40
    inc e                                         ; $65e7: $1c
    ld sp, hl                                     ; $65e8: $f9
    ld c, $ec                                     ; $65e9: $0e $ec
    rra                                           ; $65eb: $1f
    db $dd                                        ; $65ec: $dd
    ccf                                           ; $65ed: $3f
    ld [$ffef], sp                                ; $65ee: $08 $ef $ff
    rlca                                          ; $65f1: $07
    xor a                                         ; $65f2: $af
    ld b, b                                       ; $65f3: $40
    inc e                                         ; $65f4: $1c
    sub $3f                                       ; $65f5: $d6 $3f
    rst $30                                       ; $65f7: $f7
    nop                                           ; $65f8: $00
    inc de                                        ; $65f9: $13
    push af                                       ; $65fa: $f5
    dec de                                        ; $65fb: $1b
    pop de                                        ; $65fc: $d1
    scf                                           ; $65fd: $37
    push de                                       ; $65fe: $d5

Call_09a_65ff:
    ccf                                           ; $65ff: $3f
    pop af                                        ; $6600: $f1
    nop                                           ; $6601: $00
    scf                                           ; $6602: $37
    and l                                         ; $6603: $a5
    ld l, a                                       ; $6604: $6f
    and c                                         ; $6605: $a1
    ld [hl], a                                    ; $6606: $77
    sub l                                         ; $6607: $95
    ld l, [hl]                                    ; $6608: $6e
    call nz, $7f00                                ; $6609: $c4 $00 $7f
    jp hl                                         ; $660c: $e9


    ld a, a                                       ; $660d: $7f
    ld a, d                                       ; $660e: $7a
    cp l                                          ; $660f: $bd
    rst $08                                       ; $6610: $cf
    rst $30                                       ; $6611: $f7
    ld a, c                                       ; $6612: $79
    nop                                           ; $6613: $00
    ld a, [hl]                                    ; $6614: $7e
    rla                                           ; $6615: $17
    cp a                                          ; $6616: $bf
    sbc a                                         ; $6617: $9f
    ret nc                                        ; $6618: $d0

    ld h, l                                       ; $6619: $65
    rst $28                                       ; $661a: $ef
    pop bc                                        ; $661b: $c1
    nop                                           ; $661c: $00
    rst $10                                       ; $661d: $d7
    push bc                                       ; $661e: $c5
    rst $28                                       ; $661f: $ef
    add c                                         ; $6620: $81
    rst $10                                       ; $6621: $d7
    add l                                         ; $6622: $85
    xor a                                         ; $6623: $af
    pop af                                        ; $6624: $f1
    nop                                           ; $6625: $00
    scf                                           ; $6626: $37
    db $fd                                        ; $6627: $fd
    rst $08                                       ; $6628: $cf
    xor l                                         ; $6629: $ad
    rst $30                                       ; $662a: $f7
    rst $10                                       ; $662b: $d7
    ld a, b                                       ; $662c: $78
    cp e                                          ; $662d: $bb
    ld [bc], a                                    ; $662e: $02
    ld a, h                                       ; $662f: $7c
    scf                                           ; $6630: $37
    rst $08                                       ; $6631: $cf
    ld sp, hl                                     ; $6632: $f9
    cp $87                                        ; $6633: $fe $87

jr_09a_6635:
    ld b, b                                       ; $6635: $40
    jr nz, jr_09a_6635                            ; $6636: $20 $fd

    nop                                           ; $6638: $00
    ld [hl], a                                    ; $6639: $77
    or l                                          ; $663a: $b5
    ld l, a                                       ; $663b: $6f
    db $ed                                        ; $663c: $ed
    rst $18                                       ; $663d: $df
    pop de                                        ; $663e: $d1
    inc sp                                        ; $663f: $33
    push hl                                       ; $6640: $e5
    ld l, b                                       ; $6641: $68
    rst $28                                       ; $6642: $ef
    ld d, b                                       ; $6643: $50
    inc e                                         ; $6644: $1c
    and b                                         ; $6645: $a0
    ld h, e                                       ; $6646: $63
    ld h, b                                       ; $6647: $60
    db $10                                        ; $6648: $10
    ld h, e                                       ; $6649: $63
    nop                                           ; $664a: $00
    xor d                                         ; $664b: $aa
    rst $38                                       ; $664c: $ff
    nop                                           ; $664d: $00
    add hl, bc                                    ; $664e: $09
    rst $38                                       ; $664f: $ff
    ld [de], a                                    ; $6650: $12
    rst $38                                       ; $6651: $ff
    ld [hl], h                                    ; $6652: $74
    rst $38                                       ; $6653: $ff
    jp c, $80ff                                   ; $6654: $da $ff $80

    cpl                                           ; $6657: $2f
    ld [de], a                                    ; $6658: $12
    rst $38                                       ; $6659: $ff
    xor d                                         ; $665a: $aa
    rst $38                                       ; $665b: $ff
    ld d, a                                       ; $665c: $57
    rst $38                                       ; $665d: $ff
    adc [hl]                                      ; $665e: $8e
    rst $38                                       ; $665f: $ff
    ld [$ff18], sp                                ; $6660: $08 $18 $ff
    sub h                                         ; $6663: $94
    rst $38                                       ; $6664: $ff
    ld l, a                                       ; $6665: $6f
    ld a, [de]                                    ; $6666: $1a
    db $fd                                        ; $6667: $fd
    rst $38                                       ; $6668: $ff
    ld a, e                                       ; $6669: $7b
    inc bc                                        ; $666a: $03
    db $fd                                        ; $666b: $fd
    dec a                                         ; $666c: $3d
    rst $38                                       ; $666d: $ff
    cp c                                          ; $666e: $b9
    rst $38                                       ; $666f: $ff
    ld e, l                                       ; $6670: $5d
    inc b                                         ; $6671: $04
    nop                                           ; $6672: $00
    ccf                                           ; $6673: $3f
    ld [bc], a                                    ; $6674: $02
    nop                                           ; $6675: $00
    rst $38                                       ; $6676: $ff
    or b                                          ; $6677: $b0
    inc d                                         ; $6678: $14
    jr c, jr_09a_6689                             ; $6679: $38 $0e

    ld b, d                                       ; $667b: $42
    rst $38                                       ; $667c: $ff
    ld bc, $8360                                  ; $667d: $01 $60 $83
    rst $38                                       ; $6680: $ff
    pop bc                                        ; $6681: $c1
    cp a                                          ; $6682: $bf
    inc b                                         ; $6683: $04
    ld c, b                                       ; $6684: $48
    cp c                                          ; $6685: $b9
    nop                                           ; $6686: $00
    ld b, [hl]                                    ; $6687: $46
    xor b                                         ; $6688: $a8

jr_09a_6689:
    nop                                           ; $6689: $00
    stop                                          ; $668a: $10 $00
    nop                                           ; $668c: $00
    nop                                           ; $668d: $00
    jr z, jr_09a_6690                             ; $668e: $28 $00

jr_09a_6690:
    db $10                                        ; $6690: $10
    ld d, h                                       ; $6691: $54
    ld [$4428], sp                                ; $6692: $08 $28 $44
    db $e4                                        ; $6695: $e4
    ld b, h                                       ; $6696: $44
    ld e, c                                       ; $6697: $59
    nop                                           ; $6698: $00
    and [hl]                                      ; $6699: $a6
    ld d, a                                       ; $669a: $57
    nop                                           ; $669b: $00
    add c                                         ; $669c: $81
    nop                                           ; $669d: $00
    nop                                           ; $669e: $00
    ld [bc], a                                    ; $669f: $02
    inc b                                         ; $66a0: $04
    nop                                           ; $66a1: $00
    nop                                           ; $66a2: $00
    nop                                           ; $66a3: $00
    inc b                                         ; $66a4: $04
    ld b, $04                                     ; $66a5: $06 $04
    dec c                                         ; $66a7: $0d
    ld b, $ad                                     ; $66a8: $06 $ad
    nop                                           ; $66aa: $00
    ld d, d                                       ; $66ab: $52
    inc [hl]                                      ; $66ac: $34
    nop                                           ; $66ad: $00
    pop bc                                        ; $66ae: $c1
    nop                                           ; $66af: $00
    jr nz, jr_09a_66c2                            ; $66b0: $20 $10

    nop                                           ; $66b2: $00
    nop                                           ; $66b3: $00
    ld [$0418], sp                                ; $66b4: $08 $18 $04
    xor b                                         ; $66b7: $a8
    inc b                                         ; $66b8: $04
    ld d, d                                       ; $66b9: $52
    inc c                                         ; $66ba: $0c
    ld c, h                                       ; $66bb: $4c
    nop                                           ; $66bc: $00
    or e                                          ; $66bd: $b3
    adc d                                         ; $66be: $8a
    ld bc, $0025                                  ; $66bf: $01 $25 $00

jr_09a_66c2:
    nop                                           ; $66c2: $00
    ld bc, $8001                                  ; $66c3: $01 $01 $80
    inc b                                         ; $66c6: $04
    nop                                           ; $66c7: $00
    ld [hl], c                                    ; $66c8: $71
    nop                                           ; $66c9: $00
    call $de00                                    ; $66ca: $cd $00 $de
    ld h, h                                       ; $66cd: $64
    sbc b                                         ; $66ce: $98
    nop                                           ; $66cf: $00
    ld a, h                                       ; $66d0: $7c
    push bc                                       ; $66d1: $c5
    jr c, jr_09a_674e                             ; $66d2: $38 $7a

    nop                                           ; $66d4: $00
    ld d, l                                       ; $66d5: $55
    nop                                           ; $66d6: $00
    xor a                                         ; $66d7: $af
    nop                                           ; $66d8: $00
    nop                                           ; $66d9: $00
    ld e, l                                       ; $66da: $5d
    nop                                           ; $66db: $00
    ld [hl], a                                    ; $66dc: $77
    add b                                         ; $66dd: $80
    ld d, b                                       ; $66de: $50
    rlca                                          ; $66df: $07
    xor l                                         ; $66e0: $ad
    nop                                           ; $66e1: $00
    inc bc                                        ; $66e2: $03
    ld [hl], l                                    ; $66e3: $75
    ld [bc], a                                    ; $66e4: $02
    call c, $b802                                 ; $66e5: $dc $02 $b8
    inc bc                                        ; $66e8: $03
    rst $30                                       ; $66e9: $f7
    nop                                           ; $66ea: $00
    ld bc, $01fa                                  ; $66eb: $01 $fa $01
    cp a                                          ; $66ee: $bf
    ld b, b                                       ; $66ef: $40
    ld l, a                                       ; $66f0: $6f
    sbc b                                         ; $66f1: $98
    ld e, c                                       ; $66f2: $59
    nop                                           ; $66f3: $00
    ldh a, [rNR43]                                ; $66f4: $f0 $22
    db $10                                        ; $66f6: $10
    ld e, c                                       ; $66f7: $59
    db $10                                        ; $66f8: $10
    cp [hl]                                       ; $66f9: $be
    ld de, $0054                                  ; $66fa: $11 $54 $00
    cp e                                          ; $66fd: $bb
    db $e3                                        ; $66fe: $e3
    rst $38                                       ; $66ff: $ff
    nop                                           ; $6700: $00
    rst $38                                       ; $6701: $ff
    sub c                                         ; $6702: $91
    inc b                                         ; $6703: $04
    ld l, c                                       ; $6704: $69
    nop                                           ; $6705: $00
    add h                                         ; $6706: $84

jr_09a_6707:
    dec a                                         ; $6707: $3d
    call nz, $fc19                                ; $6708: $c4 $19 $fc
    ld h, h                                       ; $670b: $64
    ld sp, hl                                     ; $670c: $f9
    sbc e                                         ; $670d: $9b
    nop                                           ; $670e: $00
    ldh [$34], a                                  ; $670f: $e0 $34
    pop bc                                        ; $6711: $c1
    ld a, e                                       ; $6712: $7b
    add b                                         ; $6713: $80
    ld l, a                                       ; $6714: $6f
    add b                                         ; $6715: $80
    add a                                         ; $6716: $87
    nop                                           ; $6717: $00
    ld [hl], b                                    ; $6718: $70
    ld d, e                                       ; $6719: $53
    adc h                                         ; $671a: $8c
    add l                                         ; $671b: $85
    ld [bc], a                                    ; $671c: $02
    ld b, $03                                     ; $671d: $06 $03
    add e                                         ; $671f: $83
    nop                                           ; $6720: $00
    ld [bc], a                                    ; $6721: $02
    sub $03                                       ; $6722: $d6 $03
    ld l, a                                       ; $6724: $6f
    add d                                         ; $6725: $82
    ld a, l                                       ; $6726: $7d
    add b                                         ; $6727: $80
    rst $38                                       ; $6728: $ff
    nop                                           ; $6729: $00
    nop                                           ; $672a: $00
    xor a                                         ; $672b: $af
    ld d, b                                       ; $672c: $50
    ld e, l                                       ; $672d: $5d
    and d                                         ; $672e: $a2
    cp e                                          ; $672f: $bb
    ld b, h                                       ; $6730: $44
    ld e, [hl]                                    ; $6731: $5e
    nop                                           ; $6732: $00
    and c                                         ; $6733: $a1
    cp l                                          ; $6734: $bd
    ld b, d                                       ; $6735: $42
    ld l, a                                       ; $6736: $6f
    sub b                                         ; $6737: $90
    adc h                                         ; $6738: $8c
    ld [hl], e                                    ; $6739: $73
    rst $30                                       ; $673a: $f7
    nop                                           ; $673b: $00
    ld [$00fe], sp                                ; $673c: $08 $fe $00
    rst $30                                       ; $673f: $f7
    ld [$57a8], sp                                ; $6740: $08 $a8 $57
    db $f4                                        ; $6743: $f4
    nop                                           ; $6744: $00
    ld [$10e8], sp                                ; $6745: $08 $e8 $10
    push hl                                       ; $6748: $e5
    jr jr_09a_6707                                ; $6749: $18 $bc

    ld bc, $00ff                                  ; $674b: $01 $ff $00

jr_09a_674e:
    nop                                           ; $674e: $00
    xor $01                                       ; $674f: $ee $01
    cp $01                                        ; $6751: $fe $01
    ld e, $e1                                     ; $6753: $1e $e1
    ld l, [hl]                                    ; $6755: $6e
    nop                                           ; $6756: $00
    ld de, $1906                                  ; $6757: $11 $06 $19
    xor $11                                       ; $675a: $ee $11
    sbc b                                         ; $675c: $98
    rst $20                                       ; $675d: $e7
    ld [hl], d                                    ; $675e: $72
    nop                                           ; $675f: $00
    db $fd                                        ; $6760: $fd
    dec b                                         ; $6761: $05
    ld a, [$956a]                                 ; $6762: $fa $6a $95
    ret nc                                        ; $6765: $d0

    cpl                                           ; $6766: $2f
    ld [c], a                                     ; $6767: $e2
    nop                                           ; $6768: $00
    dec e                                         ; $6769: $1d
    push de                                       ; $676a: $d5
    dec hl                                        ; $676b: $2b
    and b                                         ; $676c: $a0
    ld e, a                                       ; $676d: $5f
    cp e                                          ; $676e: $bb
    ld b, h                                       ; $676f: $44
    dec a                                         ; $6770: $3d
    nop                                           ; $6771: $00
    jp nz, $a8d7                                  ; $6772: $c2 $d7 $a8

    dec hl                                        ; $6775: $2b
    call nc, Call_09a_6897                        ; $6776: $d4 $97 $68
    dec bc                                        ; $6779: $0b
    nop                                           ; $677a: $00
    db $f4                                        ; $677b: $f4
    rla                                           ; $677c: $17
    add sp, $42                                   ; $677d: $e8 $42
    cp l                                          ; $677f: $bd
    ld [hl], e                                    ; $6780: $73
    sbc h                                         ; $6781: $9c
    cp b                                          ; $6782: $b8
    nop                                           ; $6783: $00
    ld e, a                                       ; $6784: $5f
    ld c, a                                       ; $6785: $4f
    cp a                                          ; $6786: $bf
    sub b                                         ; $6787: $90
    ld a, a                                       ; $6788: $7f
    nop                                           ; $6789: $00
    rst $38                                       ; $678a: $ff
    and d                                         ; $678b: $a2
    nop                                           ; $678c: $00
    ld e, l                                       ; $678d: $5d
    ld d, c                                       ; $678e: $51
    cp [hl]                                       ; $678f: $be
    and b                                         ; $6790: $a0
    ld a, a                                       ; $6791: $7f
    inc d                                         ; $6792: $14
    ei                                            ; $6793: $fb
    adc $00                                       ; $6794: $ce $00
    pop af                                        ; $6796: $f1
    inc e                                         ; $6797: $1c
    db $e3                                        ; $6798: $e3
    ld l, $d1                                     ; $6799: $2e $d1
    db $dd                                        ; $679b: $dd
    inc hl                                        ; $679c: $23
    ld hl, sp+$00                                 ; $679d: $f8 $00
    rlca                                          ; $679f: $07
    ld d, l                                       ; $67a0: $55
    xor e                                         ; $67a1: $ab
    cp b                                          ; $67a2: $b8
    ld b, a                                       ; $67a3: $47
    sbc $e1                                       ; $67a4: $de $e1
    sbc [hl]                                      ; $67a6: $9e
    inc b                                         ; $67a7: $04
    pop hl                                        ; $67a8: $e1
    cp $c1                                        ; $67a9: $fe $c1
    sbc a                                         ; $67ab: $9f
    ldh [rDIV], a                                 ; $67ac: $e0 $04
    ld [$c0be], sp                                ; $67ae: $08 $be $c0
    nop                                           ; $67b1: $00
    cp l                                          ; $67b2: $bd
    ret nz                                        ; $67b3: $c0

    ld e, l                                       ; $67b4: $5d

jr_09a_67b5:
    db $e3                                        ; $67b5: $e3
    ld a, l                                       ; $67b6: $7d
    pop bc                                        ; $67b7: $c1
    ld b, b                                       ; $67b8: $40
    db $e3                                        ; $67b9: $e3
    nop                                           ; $67ba: $00
    ld a, [hl]                                    ; $67bb: $7e
    pop bc                                        ; $67bc: $c1
    inc e                                         ; $67bd: $1c
    db $e3                                        ; $67be: $e3
    ccf                                           ; $67bf: $3f
    pop bc                                        ; $67c0: $c1
    inc c                                         ; $67c1: $0c
    db $e3                                        ; $67c2: $e3
    nop                                           ; $67c3: $00
    ld hl, $3f41                                  ; $67c4: $21 $41 $3f
    ret nz                                        ; $67c7: $c0

    ccf                                           ; $67c8: $3f
    ret nz                                        ; $67c9: $c0

    ld a, a                                       ; $67ca: $7f
    add b                                         ; $67cb: $80
    nop                                           ; $67cc: $00
    ld a, $c0                                     ; $67cd: $3e $c0
    inc a                                         ; $67cf: $3c
    add b                                         ; $67d0: $80
    ld bc, $7d80                                  ; $67d1: $01 $80 $7d
    add b                                         ; $67d4: $80
    ld [bc], a                                    ; $67d5: $02
    ld a, b                                       ; $67d6: $78
    add b                                         ; $67d7: $80
    sbc l                                         ; $67d8: $9d
    ld h, e                                       ; $67d9: $63
    adc $31                                       ; $67da: $ce $31
    inc b                                         ; $67dc: $04
    ld [$009f], sp                                ; $67dd: $08 $9f $00
    ld h, c                                       ; $67e0: $61
    sbc $21                                       ; $67e1: $de $21
    ld e, [hl]                                    ; $67e3: $5e
    ld hl, $01be                                  ; $67e4: $21 $be $01
    or b                                          ; $67e7: $b0
    nop                                           ; $67e8: $00
    pop bc                                        ; $67e9: $c1
    and a                                         ; $67ea: $a7
    ret nz                                        ; $67eb: $c0

    sbc a                                         ; $67ec: $9f
    ret nz                                        ; $67ed: $c0

    adc a                                         ; $67ee: $8f
    ret nz                                        ; $67ef: $c0

    daa                                           ; $67f0: $27
    nop                                           ; $67f1: $00
    ret nz                                        ; $67f2: $c0

    or e                                          ; $67f3: $b3
    ret nz                                        ; $67f4: $c0

    dec sp                                        ; $67f5: $3b
    ret nz                                        ; $67f6: $c0

    ld sp, hl                                     ; $67f7: $f9
    add b                                         ; $67f8: $80
    ld a, $10                                     ; $67f9: $3e $10
    pop bc                                        ; $67fb: $c1
    ld a, [hl]                                    ; $67fc: $7e
    pop bc                                        ; $67fd: $c1
    inc b                                         ; $67fe: $04
    ld [$c100], sp                                ; $67ff: $08 $00 $c1
    adc [hl]                                      ; $6802: $8e
    ld b, c                                       ; $6803: $41
    nop                                           ; $6804: $00
    ld c, $c1                                     ; $6805: $0e $c1
    adc a                                         ; $6807: $8f
    ld b, b                                       ; $6808: $40
    ei                                            ; $6809: $fb
    nop                                           ; $680a: $00
    ld [hl], e                                    ; $680b: $73
    add b                                         ; $680c: $80
    db $10                                        ; $680d: $10
    add a                                         ; $680e: $87
    nop                                           ; $680f: $00
    ld a, a                                       ; $6810: $7f
    sub $00                                       ; $6811: $d6 $00
    ld bc, $e380                                  ; $6813: $01 $80 $e3
    nop                                           ; $6816: $00
    nop                                           ; $6817: $00
    rst $20                                       ; $6818: $e7
    nop                                           ; $6819: $00
    sbc $21                                       ; $681a: $de $21
    db $fc                                        ; $681c: $fc
    inc bc                                        ; $681d: $03
    xor $01                                       ; $681e: $ee $01
    nop                                           ; $6820: $00
    db $e4                                        ; $6821: $e4
    inc bc                                        ; $6822: $03
    jp nc, $f921                                  ; $6823: $d2 $21 $f9

    inc bc                                        ; $6826: $03
    jp c, $0521                                   ; $6827: $da $21 $05

    pop af                                        ; $682a: $f1
    inc bc                                        ; $682b: $03
    dec a                                         ; $682c: $3d
    ret nz                                        ; $682d: $c0

    db $fc                                        ; $682e: $fc
    ld e, [hl]                                    ; $682f: $5e
    nop                                           ; $6830: $00
    ld a, [hl]                                    ; $6831: $7e
    inc b                                         ; $6832: $04
    jr nc, jr_09a_67b5                            ; $6833: $30 $80

    inc [hl]                                      ; $6835: $34
    ld [$418e], sp                                ; $6836: $08 $8e $41
    adc a                                         ; $6839: $8f
    ld b, b                                       ; $683a: $40
    rrca                                          ; $683b: $0f
    ret nz                                        ; $683c: $c0

    adc a                                         ; $683d: $8f
    inc bc                                        ; $683e: $03
    ld b, b                                       ; $683f: $40
    ld c, a                                       ; $6840: $4f
    ret nz                                        ; $6841: $c0

    adc [hl]                                      ; $6842: $8e
    ld b, c                                       ; $6843: $41
    rst $20                                       ; $6844: $e7
    inc [hl]                                      ; $6845: $34
    nop                                           ; $6846: $00
    inc b                                         ; $6847: $04
    ld c, b                                       ; $6848: $48
    ld bc, $01a6                                  ; $6849: $01 $a6 $01
    xor l                                         ; $684c: $ad
    inc bc                                        ; $684d: $03
    ld e, l                                       ; $684e: $5d
    inc hl                                        ; $684f: $23
    ld a, l                                       ; $6850: $7d
    inc b                                         ; $6851: $04
    nop                                           ; $6852: $00
    add d                                         ; $6853: $82
    ld [bc], a                                    ; $6854: $02
    jr jr_09a_68d5                                ; $6855: $18 $7e

    add b                                         ; $6857: $80
    ld a, [hl]                                    ; $6858: $7e
    add b                                         ; $6859: $80
    ld a, h                                       ; $685a: $7c
    sbc d                                         ; $685b: $9a
    nop                                           ; $685c: $00
    ld sp, hl                                     ; $685d: $f9
    add b                                         ; $685e: $80
    ld l, b                                       ; $685f: $68
    nop                                           ; $6860: $00
    rst $00                                       ; $6861: $c7
    nop                                           ; $6862: $00
    ld e, [hl]                                    ; $6863: $5e
    add c                                         ; $6864: $81
    ld c, a                                       ; $6865: $4f

jr_09a_6866:
    ret nz                                        ; $6866: $c0

    ld c, $50                                     ; $6867: $0e $50
    pop bc                                        ; $6869: $c1
    inc b                                         ; $686a: $04
    ld [$8840], sp                                ; $686b: $08 $40 $88
    nop                                           ; $686e: $00
    ld a, h                                       ; $686f: $7c
    pop bc                                        ; $6870: $c1
    ld h, b                                       ; $6871: $60
    pop bc                                        ; $6872: $c1
    adc b                                         ; $6873: $88
    ld b, b                                       ; $6874: $40
    jr c, jr_09a_687a                             ; $6875: $38 $03

    nop                                           ; $6877: $00
    ld h, c                                       ; $6878: $61
    ld e, h                                       ; $6879: $5c

jr_09a_687a:
    ld bc, $631d                                  ; $687a: $01 $1d $63
    ld e, l                                       ; $687d: $5d
    nop                                           ; $687e: $00
    inc hl                                        ; $687f: $23
    cp l                                          ; $6880: $bd
    ld h, e                                       ; $6881: $63
    db $dd                                        ; $6882: $dd
    inc hl                                        ; $6883: $23
    cp a                                          ; $6884: $bf
    ld h, c                                       ; $6885: $61
    sbc h                                         ; $6886: $9c
    nop                                           ; $6887: $00
    ld h, e                                       ; $6888: $63
    xor a                                         ; $6889: $af
    ld h, c                                       ; $688a: $61
    add h                                         ; $688b: $84
    ld h, e                                       ; $688c: $63
    jr z, jr_09a_6866                             ; $688d: $28 $d7

    ld h, c                                       ; $688f: $61
    nop                                           ; $6890: $00
    add b                                         ; $6891: $80
    ld c, b                                       ; $6892: $48
    add b                                         ; $6893: $80
    ld b, d                                       ; $6894: $42
    add b                                         ; $6895: $80
    add b                                         ; $6896: $80

Call_09a_6897:
    nop                                           ; $6897: $00
    ld b, b                                       ; $6898: $40
    add b                                         ; $6899: $80
    inc b                                         ; $689a: $04
    nop                                           ; $689b: $00
    nop                                           ; $689c: $00
    add b                                         ; $689d: $80
    xor l                                         ; $689e: $ad

jr_09a_689f:
    ld d, d                                       ; $689f: $52
    ld d, [hl]                                    ; $68a0: $56
    nop                                           ; $68a1: $00
    adc c                                         ; $68a2: $89
    call nz, Call_000_0210                        ; $68a3: $c4 $10 $02
    inc bc                                        ; $68a6: $03
    jr jr_09a_68eb                                ; $68a7: $18 $42

    nop                                           ; $68a9: $00
    and b                                         ; $68aa: $a0
    inc d                                         ; $68ab: $14
    nop                                           ; $68ac: $00
    add b                                         ; $68ad: $80
    nop                                           ; $68ae: $00
    nop                                           ; $68af: $00
    adc b                                         ; $68b0: $88
    nop                                           ; $68b1: $00
    sub e                                         ; $68b2: $93
    nop                                           ; $68b3: $00
    add h                                         ; $68b4: $84
    nop                                           ; $68b5: $00
    ld [$0084], sp                                ; $68b6: $08 $84 $00
    sub h                                         ; $68b9: $94
    inc b                                         ; $68ba: $04
    add c                                         ; $68bb: $81
    nop                                           ; $68bc: $00
    ld d, b                                       ; $68bd: $50
    nop                                           ; $68be: $00
    xor b                                         ; $68bf: $a8
    nop                                           ; $68c0: $00
    nop                                           ; $68c1: $00
    ld [hl-], a                                   ; $68c2: $32
    nop                                           ; $68c3: $00
    sub h                                         ; $68c4: $94
    ld b, b                                       ; $68c5: $40
    jr jr_09a_68e8                                ; $68c6: $18 $20

    dec bc                                        ; $68c8: $0b
    inc d                                         ; $68c9: $14
    nop                                           ; $68ca: $00
    inc b                                         ; $68cb: $04
    jr jr_09a_68dc                                ; $68cc: $18 $0e

    add h                                         ; $68ce: $84
    sub l                                         ; $68cf: $95
    ld b, $2e                                     ; $68d0: $06 $2e
    add a                                         ; $68d2: $87
    nop                                           ; $68d3: $00
    db $d3                                        ; $68d4: $d3

jr_09a_68d5:
    rlca                                          ; $68d5: $07
    inc l                                         ; $68d6: $2c
    add e                                         ; $68d7: $83
    ld e, a                                       ; $68d8: $5f
    add c                                         ; $68d9: $81
    ld [hl], a                                    ; $68da: $77
    add c                                         ; $68db: $81

jr_09a_68dc:
    nop                                           ; $68dc: $00
    db $fc                                        ; $68dd: $fc
    add e                                         ; $68de: $83
    xor b                                         ; $68df: $a8
    db $10                                        ; $68e0: $10

jr_09a_68e1:
    ld e, c                                       ; $68e1: $59
    jr nc, jr_09a_689f                            ; $68e2: $30 $bb

    ld a, h                                       ; $68e4: $7c
    nop                                           ; $68e5: $00
    and $cf                                       ; $68e6: $e6 $cf

jr_09a_68e8:
    dec bc                                        ; $68e8: $0b
    add a                                         ; $68e9: $87
    sub e                                         ; $68ea: $93

jr_09a_68eb:
    rrca                                          ; $68eb: $0f
    dec sp                                        ; $68ec: $3b
    rlca                                          ; $68ed: $07
    nop                                           ; $68ee: $00
    ld d, l                                       ; $68ef: $55
    adc a                                         ; $68f0: $8f
    ld e, e                                       ; $68f1: $5b
    add h                                         ; $68f2: $84
    rst $30                                       ; $68f3: $f7
    adc b                                         ; $68f4: $88
    ld a, [hl]                                    ; $68f5: $7e
    add c                                         ; $68f6: $81
    nop                                           ; $68f7: $00
    db $eb                                        ; $68f8: $eb
    sub h                                         ; $68f9: $94
    ld [hl], a                                    ; $68fa: $77
    adc b                                         ; $68fb: $88
    xor d                                         ; $68fc: $aa
    push de                                       ; $68fd: $d5
    ld [hl], l                                    ; $68fe: $75
    adc d                                         ; $68ff: $8a
    nop                                           ; $6900: $00
    ld [$a495], a                                 ; $6901: $ea $95 $a4
    rst $18                                       ; $6904: $df
    ld a, b                                       ; $6905: $78
    rst $38                                       ; $6906: $ff
    add d                                         ; $6907: $82
    ld a, l                                       ; $6908: $7d
    nop                                           ; $6909: $00
    ld d, l                                       ; $690a: $55
    xor d                                         ; $690b: $aa
    xor d                                         ; $690c: $aa
    ld [hl], l                                    ; $690d: $75
    push de                                       ; $690e: $d5
    ld l, d                                       ; $690f: $6a
    ld a, [hl+]                                   ; $6910: $2a
    push af                                       ; $6911: $f5
    inc b                                         ; $6912: $04
    push de                                       ; $6913: $d5
    ld a, d                                       ; $6914: $7a
    rst $38                                       ; $6915: $ff
    rst $38                                       ; $6916: $ff
    add b                                         ; $6917: $80
    ld [bc], a                                    ; $6918: $02
    nop                                           ; $6919: $00
    ret nz                                        ; $691a: $c0

    cp a                                          ; $691b: $bf
    adc b                                         ; $691c: $88
    inc b                                         ; $691d: $04
    jr jr_09a_68e1                                ; $691e: $18 $c1

    cp a                                          ; $6920: $bf
    rst $38                                       ; $6921: $ff
    inc h                                         ; $6922: $24
    ld [bc], a                                    ; $6923: $02
    xor d                                         ; $6924: $aa
    ld d, l                                       ; $6925: $55
    nop                                           ; $6926: $00
    ldh [$2a], a                                  ; $6927: $e0 $2a
    ld [bc], a                                    ; $6929: $02
    ld [$b000], sp                                ; $692a: $08 $00 $b0
    ld [de], a                                    ; $692d: $12
    ld b, c                                       ; $692e: $41
    cp a                                          ; $692f: $bf
    add e                                         ; $6930: $83
    ld a, a                                       ; $6931: $7f
    ld bc, $ff02                                  ; $6932: $01 $02 $ff
    inc bc                                        ; $6935: $03
    rst $38                                       ; $6936: $ff
    ld bc, $abff                                  ; $6937: $01 $ff $ab
    call $c302                                    ; $693a: $cd $02 $c3
    db $10                                        ; $693d: $10
    rst $38                                       ; $693e: $ff
    rst $10                                       ; $693f: $d7
    rst $28                                       ; $6940: $ef
    inc b                                         ; $6941: $04
    ld c, b                                       ; $6942: $48
    ld b, l                                       ; $6943: $45
    cp a                                          ; $6944: $bf
    sub d                                         ; $6945: $92
    ld l, a                                       ; $6946: $6f
    nop                                           ; $6947: $00
    daa                                           ; $6948: $27
    rst $18                                       ; $6949: $df
    ld a, [bc]                                    ; $694a: $0a
    rst $38                                       ; $694b: $ff
    ld c, l                                       ; $694c: $4d
    rst $38                                       ; $694d: $ff
    sbc a                                         ; $694e: $9f
    rst $38                                       ; $694f: $ff
    ld b, b                                       ; $6950: $40
    ld a, [hl]                                    ; $6951: $7e
    db $ed                                        ; $6952: $ed
    ld [bc], a                                    ; $6953: $02
    dec h                                         ; $6954: $25
    jp c, $ff94                                   ; $6955: $da $94 $ff

    dec c                                         ; $6958: $0d
    cp $01                                        ; $6959: $fe $01
    call c, $adff                                 ; $695b: $dc $ff $ad
    rst $38                                       ; $695e: $ff

jr_09a_695f:
    ld e, a                                       ; $695f: $5f
    rst $38                                       ; $6960: $ff
    db $fd                                        ; $6961: $fd
    db $fd                                        ; $6962: $fd
    ld [bc], a                                    ; $6963: $02
    nop                                           ; $6964: $00
    dec d                                         ; $6965: $15
    ei                                            ; $6966: $fb
    ld [bc], a                                    ; $6967: $02
    db $fd                                        ; $6968: $fd
    ld c, d                                       ; $6969: $4a
    rst $38                                       ; $696a: $ff
    sub b                                         ; $696b: $90
    rst $38                                       ; $696c: $ff
    inc b                                         ; $696d: $04
    ld e, d                                       ; $696e: $5a
    rst $38                                       ; $696f: $ff
    db $fd                                        ; $6970: $fd
    cp $fe                                        ; $6971: $fe $fe
    dec c                                         ; $6973: $0d
    inc bc                                        ; $6974: $03
    ld [hl], l                                    ; $6975: $75
    adc e                                         ; $6976: $8b
    nop                                           ; $6977: $00
    ld c, c                                       ; $6978: $49
    or a                                          ; $6979: $b7
    ld hl, $09df                                  ; $697a: $21 $df $09
    rst $38                                       ; $697d: $ff
    push de                                       ; $697e: $d5
    ld a, a                                       ; $697f: $7f
    db $10                                        ; $6980: $10
    cp e                                          ; $6981: $bb
    rst $38                                       ; $6982: $ff
    ld a, l                                       ; $6983: $7d
    ld d, b                                       ; $6984: $50
    ld [$8cc3], sp                                ; $6985: $08 $c3 $8c
    ld c, a                                       ; $6988: $4f
    db $f4                                        ; $6989: $f4
    nop                                           ; $698a: $00
    dec sp                                        ; $698b: $3b
    ld sp, $f4ff                                  ; $698c: $31 $ff $f4
    rst $38                                       ; $698f: $ff
    ld [c], a                                     ; $6990: $e2
    rst $38                                       ; $6991: $ff
    ld d, a                                       ; $6992: $57
    nop                                           ; $6993: $00
    rst $28                                       ; $6994: $ef
    ld l, $dc                                     ; $6995: $2e $dc
    add hl, bc                                    ; $6997: $09
    cp $96                                        ; $6998: $fe $96
    ld a, h                                       ; $699a: $7c
    ld d, c                                       ; $699b: $51
    nop                                           ; $699c: $00
    rst $38                                       ; $699d: $ff
    inc h                                         ; $699e: $24
    cp $51                                        ; $699f: $fe $51
    ldh a, [$d2]                                  ; $69a1: $f0 $d2
    db $e3                                        ; $69a3: $e3
    pop bc                                        ; $69a4: $c1
    nop                                           ; $69a5: $00
    ld c, $3a                                     ; $69a6: $0e $3a
    jr nc, jr_09a_695f                            ; $69a8: $30 $b5

    ld a, [hl-]                                   ; $69aa: $3a
    ld a, [hl]                                    ; $69ab: $7e
    jp Jump_000_006a                              ; $69ac: $c3 $6a $00


    ld e, l                                       ; $69af: $5d
    add l                                         ; $69b0: $85
    inc a                                         ; $69b1: $3c
    db $ed                                        ; $69b2: $ed
    db $d3                                        ; $69b3: $d3
    ld e, h                                       ; $69b4: $5c
    adc l                                         ; $69b5: $8d
    ld l, b                                       ; $69b6: $68
    nop                                           ; $69b7: $00
    jr nc, @-$3c                                  ; $69b8: $30 $c2

    set 6, b                                      ; $69ba: $cb $f0
    db $d3                                        ; $69bc: $d3
    sbc $2c                                       ; $69bd: $de $2c
    ld e, l                                       ; $69bf: $5d
    nop                                           ; $69c0: $00
    or d                                          ; $69c1: $b2
    rst $00                                       ; $69c2: $c7
    ei                                            ; $69c3: $fb
    reti                                          ; $69c4: $d9


    inc c                                         ; $69c5: $0c
    add d                                         ; $69c6: $82
    ld [hl], b                                    ; $69c7: $70
    jp nc, $fb00                                  ; $69c8: $d2 $00 $fb

    inc c                                         ; $69cb: $0c
    rst $38                                       ; $69cc: $ff
    ld l, $fd                                     ; $69cd: $2e $fd
    sbc $ff                                       ; $69cf: $de $ff
    cp a                                          ; $69d1: $bf
    nop                                           ; $69d2: $00
    db $fc                                        ; $69d3: $fc
    push af                                       ; $69d4: $f5
    ld a, [c]                                     ; $69d5: $f2
    rst $00                                       ; $69d6: $c7
    ei                                            ; $69d7: $fb
    sbc l                                         ; $69d8: $9d
    ld l, l                                       ; $69d9: $6d
    ret nc                                        ; $69da: $d0

    nop                                           ; $69db: $00
    jr nc, jr_09a_69de                            ; $69dc: $30 $00

jr_09a_69de:
    db $d3                                        ; $69de: $d3
    and a                                         ; $69df: $a7
    bit 7, l                                      ; $69e0: $cb $7d
    ld c, [hl]                                    ; $69e2: $4e
    ld b, b                                       ; $69e3: $40
    nop                                           ; $69e4: $00
    or h                                          ; $69e5: $b4
    db $d3                                        ; $69e6: $d3
    sra l                                         ; $69e7: $cb $2d
    adc a                                         ; $69e9: $8f
    inc a                                         ; $69ea: $3c
    ccf                                           ; $69eb: $3f
    xor a                                         ; $69ec: $af
    nop                                           ; $69ed: $00
    rst $38                                       ; $69ee: $ff
    reti                                          ; $69ef: $d9


    db $fc                                        ; $69f0: $fc
    sub b                                         ; $69f1: $90
    rrca                                          ; $69f2: $0f
    ld a, [de]                                    ; $69f3: $1a
    ccf                                           ; $69f4: $3f
    jp $ff00                                      ; $69f5: $c3 $00 $ff


    ld c, h                                       ; $69f8: $4c
    rst $38                                       ; $69f9: $ff
    jr @+$01                                      ; $69fa: $18 $ff

    jp nc, Jump_09a_49ff                          ; $69fc: $d2 $ff $49

    nop                                           ; $69ff: $00
    ld a, [hl]                                    ; $6a00: $7e
    ld [hl-], a                                   ; $6a01: $32
    ld sp, $ffb0                                  ; $6a02: $31 $b0 $ff
    db $e4                                        ; $6a05: $e4
    rst $38                                       ; $6a06: $ff
    ld c, d                                       ; $6a07: $4a
    nop                                           ; $6a08: $00
    db $fc                                        ; $6a09: $fc
    or l                                          ; $6a0a: $b5
    db $f4                                        ; $6a0b: $f4
    ld d, e                                       ; $6a0c: $53
    db $e3                                        ; $6a0d: $e3
    ld c, [hl]                                    ; $6a0e: $4e
    rrca                                          ; $6a0f: $0f
    rrca                                          ; $6a10: $0f
    nop                                           ; $6a11: $00
    ccf                                           ; $6a12: $3f
    cp $ff                                        ; $6a13: $fe $ff
    rrca                                          ; $6a15: $0f
    cpl                                           ; $6a16: $2f
    rrca                                          ; $6a17: $0f
    ccf                                           ; $6a18: $3f
    or l                                          ; $6a19: $b5

jr_09a_6a1a:
    nop                                           ; $6a1a: $00
    rst $38                                       ; $6a1b: $ff
    ld l, h                                       ; $6a1c: $6c
    db $fc                                        ; $6a1d: $fc
    ld a, $f4                                     ; $6a1e: $3e $f4
    sbc $c3                                       ; $6a20: $de $c3
    ld c, h                                       ; $6a22: $4c
    nop                                           ; $6a23: $00
    dec a                                         ; $6a24: $3d
    di                                            ; $6a25: $f3
    jr c, jr_09a_6a1a                             ; $6a26: $38 $f2

    ldh a, [rNR21]                                ; $6a28: $f0 $16
    jp $0041                                      ; $6a2a: $c3 $41 $00


    inc c                                         ; $6a2d: $0c
    or h                                          ; $6a2e: $b4
    inc [hl]                                      ; $6a2f: $34
    rst $30                                       ; $6a30: $f7
    jp Jump_000_2d1f                              ; $6a31: $c3 $1f $2d


    rst $08                                       ; $6a34: $cf
    nop                                           ; $6a35: $00
    jr nc, @-$59                                  ; $6a36: $30 $a5

    db $db                                        ; $6a38: $db
    ret                                           ; $6a39: $c9


    db $d3                                        ; $6a3a: $d3
    inc bc                                        ; $6a3b: $03
    ccf                                           ; $6a3c: $3f
    ccf                                           ; $6a3d: $3f
    nop                                           ; $6a3e: $00
    or a                                          ; $6a3f: $b7
    cp $c3                                        ; $6a40: $fe $c3
    ld c, l                                       ; $6a42: $4d
    rrca                                          ; $6a43: $0f
    ld a, [c]                                     ; $6a44: $f2
    ccf                                           ; $6a45: $3f
    or e                                          ; $6a46: $b3
    nop                                           ; $6a47: $00
    rst $38                                       ; $6a48: $ff
    ld hl, sp-$03                                 ; $6a49: $f8 $fd
    cp l                                          ; $6a4b: $bd
    rst $38                                       ; $6a4c: $ff
    ld [hl], b                                    ; $6a4d: $70
    rst $38                                       ; $6a4e: $ff
    db $d3                                        ; $6a4f: $d3
    nop                                           ; $6a50: $00
    rst $38                                       ; $6a51: $ff
    add hl, bc                                    ; $6a52: $09
    db $fc                                        ; $6a53: $fc
    ld a, [hl-]                                   ; $6a54: $3a
    ldh a, [$83]                                  ; $6a55: $f0 $83
    rst $20                                       ; $6a57: $e7
    nop                                           ; $6a58: $00
    nop                                           ; $6a59: $00
    ld c, a                                       ; $6a5a: $4f
    ld h, $38                                     ; $6a5b: $26 $38
    rst $18                                       ; $6a5d: $df
    nop                                           ; $6a5e: $00
    ld l, [hl]                                    ; $6a5f: $6e
    add c                                         ; $6a60: $81
    rst $20                                       ; $6a61: $e7
    ld [$f200], sp                                ; $6a62: $08 $00 $f2
    ld bc, $0679                                  ; $6a65: $01 $79 $06
    ld [bc], a                                    ; $6a68: $02
    inc a                                         ; $6a69: $3c
    jp $008b                                      ; $6a6a: $c3 $8b $00


    rst $30                                       ; $6a6d: $f7
    ld c, [hl]                                    ; $6a6e: $4e
    pop bc                                        ; $6a6f: $c1
    ld a, a                                       ; $6a70: $7f
    ret nz                                        ; $6a71: $c0

    ld e, h                                       ; $6a72: $5c
    db $e3                                        ; $6a73: $e3
    ld a, $10                                     ; $6a74: $3e $10
    pop bc                                        ; $6a76: $c1
    ld e, h                                       ; $6a77: $5c
    ld h, e                                       ; $6a78: $63
    call nz, $a90a                                ; $6a79: $c4 $0a $a9
    rst $10                                       ; $6a7c: $d7
    ld a, a                                       ; $6a7d: $7f
    add b                                         ; $6a7e: $80
    ld bc, $003f                                  ; $6a7f: $01 $3f $00
    rlca                                          ; $6a82: $07
    add b                                         ; $6a83: $80
    pop af                                        ; $6a84: $f1
    nop                                           ; $6a85: $00
    ld a, h                                       ; $6a86: $7c
    jr z, jr_09a_6a8b                             ; $6a87: $28 $02

    nop                                           ; $6a89: $00
    ccf                                           ; $6a8a: $3f

jr_09a_6a8b:
    ret nz                                        ; $6a8b: $c0

    jp z, $a3f5                                   ; $6a8c: $ca $f5 $a3

    ld [hl], c                                    ; $6a8f: $71
    cp d                                          ; $6a90: $ba
    ld h, c                                       ; $6a91: $61
    nop                                           ; $6a92: $00
    dec hl                                        ; $6a93: $2b
    pop af                                        ; $6a94: $f1
    or d                                          ; $6a95: $b2
    ld h, c                                       ; $6a96: $61
    ld h, [hl]                                    ; $6a97: $66
    add c                                         ; $6a98: $81
    ld l, $71                                     ; $6a99: $2e $71
    nop                                           ; $6a9b: $00
    ld l, $f1                                     ; $6a9c: $2e $f1
    ld [hl], l                                    ; $6a9e: $75
    ei                                            ; $6a9f: $fb
    ld a, h                                       ; $6aa0: $7c
    ld c, a                                       ; $6aa1: $4f
    inc [hl]                                      ; $6aa2: $34
    rst $30                                       ; $6aa3: $f7
    nop                                           ; $6aa4: $00
    ld b, c                                       ; $6aa5: $41
    jp Jump_09a_5d0e                              ; $6aa6: $c3 $0e $5d


    dec l                                         ; $6aa9: $2d
    ld [hl-], a                                   ; $6aaa: $32
    push de                                       ; $6aab: $d5
    db $eb                                        ; $6aac: $eb
    nop                                           ; $6aad: $00
    ld bc, $25dc                                  ; $6aae: $01 $dc $25
    or $39                                        ; $6ab1: $f6 $39
    or $b5                                        ; $6ab3: $f6 $b5
    rlc b                                         ; $6ab5: $cb $00
    dec de                                        ; $6ab7: $1b
    db $ec                                        ; $6ab8: $ec
    xor $30                                       ; $6ab9: $ee $30
    rst $18                                       ; $6abb: $df
    jp Jump_000_2fcf                              ; $6abc: $c3 $cf $2f


    ld b, b                                       ; $6abf: $40
    ld c, e                                       ; $6ac0: $4b
    and b                                         ; $6ac1: $a0
    nop                                           ; $6ac2: $00
    sub c                                         ; $6ac3: $91
    jp $2f1f                                      ; $6ac4: $c3 $1f $2f


    ld a, a                                       ; $6ac7: $7f
    cp a                                          ; $6ac8: $bf
    nop                                           ; $6ac9: $00
    xor $ff                                       ; $6aca: $ee $ff
    jp c, $affc                                   ; $6acc: $da $fc $af

    ldh a, [$d9]                                  ; $6acf: $f0 $d9
    di                                            ; $6ad1: $f3
    nop                                           ; $6ad2: $00
    adc a                                         ; $6ad3: $8f
    rst $38                                       ; $6ad4: $ff
    xor a                                         ; $6ad5: $af
    db $fd                                        ; $6ad6: $fd
    ld e, c                                       ; $6ad7: $59
    ldh a, [$bf]                                  ; $6ad8: $f0 $bf
    jp $9300                                      ; $6ada: $c3 $00 $93


    rrca                                          ; $6add: $0f
    rst $38                                       ; $6ade: $ff
    ccf                                           ; $6adf: $3f
    db $ed                                        ; $6ae0: $ed
    rst $38                                       ; $6ae1: $ff
    cp c                                          ; $6ae2: $b9
    db $fd                                        ; $6ae3: $fd
    nop                                           ; $6ae4: $00
    call nz, Call_000_33f0                        ; $6ae5: $c4 $f0 $33
    rst $38                                       ; $6ae8: $ff
    db $d3                                        ; $6ae9: $d3
    jp Jump_000_0d46                              ; $6aea: $c3 $46 $0d


    nop                                           ; $6aed: $00
    dec a                                         ; $6aee: $3d
    ld [hl-], a                                   ; $6aef: $32
    cp e                                          ; $6af0: $bb
    jp Jump_000_0cff                              ; $6af1: $c3 $ff $0c


    call RST_30                                   ; $6af4: $cd $30 $00
    rst $38                                       ; $6af7: $ff
    jp $c769                                      ; $6af8: $c3 $69 $c7


    ld e, h                                       ; $6afb: $5c
    inc c                                         ; $6afc: $0c
    jr nc, jr_09a_6b39                            ; $6afd: $30 $3a

    nop                                           ; $6aff: $00
    ld [hl], d                                    ; $6b00: $72
    db $d3                                        ; $6b01: $d3
    call nc, $f02f                                ; $6b02: $d4 $2f $f0
    ccf                                           ; $6b05: $3f
    inc hl                                        ; $6b06: $23
    rst $38                                       ; $6b07: $ff
    jr nz, jr_09a_6b57                            ; $6b08: $20 $4d

    cp $84                                        ; $6b0a: $fe $84
    nop                                           ; $6b0c: $00
    sub $d2                                       ; $6b0d: $d6 $d2
    cp l                                          ; $6b0f: $bd
    and d                                         ; $6b10: $a2
    rst $38                                       ; $6b11: $ff
    db $10                                        ; $6b12: $10
    push de                                       ; $6b13: $d5
    rst $38                                       ; $6b14: $ff
    rst $28                                       ; $6b15: $ef
    adc e                                         ; $6b16: $8b
    inc d                                         ; $6b17: $14
    ld h, c                                       ; $6b18: $61
    cp $f0                                        ; $6b19: $fe $f0
    rst $38                                       ; $6b1b: $ff
    ld bc, $f768                                  ; $6b1c: $01 $68 $f7
    push de                                       ; $6b1f: $d5
    ei                                            ; $6b20: $fb
    and $ff                                       ; $6b21: $e6 $ff
    call z, Call_000_11a0                         ; $6b23: $cc $a0 $11
    ld [$e8ff], sp                                ; $6b26: $08 $ff $e8
    rst $38                                       ; $6b29: $ff
    ld d, l                                       ; $6b2a: $55
    inc b                                         ; $6b2b: $04
    ld c, b                                       ; $6b2c: $48
    rst $20                                       ; $6b2d: $e7
    jp Jump_000_00d9                              ; $6b2e: $c3 $d9 $00


    dec c                                         ; $6b31: $0d
    or b                                          ; $6b32: $b0
    ld [hl], c                                    ; $6b33: $71
    sub d                                         ; $6b34: $92
    bit 0, a                                      ; $6b35: $cb $47
    rrca                                          ; $6b37: $0f
    cp a                                          ; $6b38: $bf

jr_09a_6b39:
    nop                                           ; $6b39: $00
    scf                                           ; $6b3a: $37
    rst $38                                       ; $6b3b: $ff
    jp $8f6c                                      ; $6b3c: $c3 $6c $8f


    ld b, $7f                                     ; $6b3f: $06 $7f
    dec sp                                        ; $6b41: $3b
    nop                                           ; $6b42: $00
    rst $38                                       ; $6b43: $ff
    cp [hl]                                       ; $6b44: $be
    rst $38                                       ; $6b45: $ff

jr_09a_6b46:
    xor $fd                                       ; $6b46: $ee $fd
    rst $38                                       ; $6b48: $ff
    ldh a, [$f9]                                  ; $6b49: $f0 $f9
    nop                                           ; $6b4b: $00
    jp $cf78                                      ; $6b4c: $c3 $78 $cf


    inc e                                         ; $6b4f: $1c
    rst $30                                       ; $6b50: $f7
    db $f4                                        ; $6b51: $f4
    ldh a, [$d3]                                  ; $6b52: $f0 $d3
    nop                                           ; $6b54: $00
    rst $00                                       ; $6b55: $c7
    xor l                                         ; $6b56: $ad

jr_09a_6b57:
    ld c, a                                       ; $6b57: $4f
    ld [hl], b                                    ; $6b58: $70
    ccf                                           ; $6b59: $3f
    jp nc, Jump_000_20ff                          ; $6b5a: $d2 $ff $20

    nop                                           ; $6b5d: $00
    db $fd                                        ; $6b5e: $fd
    ld [hl], b                                    ; $6b5f: $70
    ld hl, sp-$0e                                 ; $6b60: $f8 $f2
    db $d3                                        ; $6b62: $d3
    rst $18                                       ; $6b63: $df
    db $e3                                        ; $6b64: $e3
    call c, $0d00                                 ; $6b65: $dc $00 $0d
    or b                                          ; $6b68: $b0
    inc [hl]                                      ; $6b69: $34
    add e                                         ; $6b6a: $83
    jp Jump_000_0f0a                              ; $6b6b: $c3 $0a $0f


    dec sp                                        ; $6b6e: $3b
    nop                                           ; $6b6f: $00
    scf                                           ; $6b70: $37
    cp $c3                                        ; $6b71: $fe $c3
    ld h, $1d                                     ; $6b73: $26 $1d
    ldh [$3f], a                                  ; $6b75: $e0 $3f
    sub c                                         ; $6b77: $91
    ld bc, $27ff                                  ; $6b78: $01 $ff $27
    db $fc                                        ; $6b7b: $fc
    inc c                                         ; $6b7c: $0c
    ldh a, [$f5]                                  ; $6b7d: $f0 $f5
    res 3, l                                      ; $6b7f: $cb $9d
    ld bc, $3000                                  ; $6b81: $01 $00 $30
    ld l, e                                       ; $6b84: $6b
    db $d3                                        ; $6b85: $d3
    rst $28                                       ; $6b86: $ef
    jp Jump_000_0ec5                              ; $6b87: $c3 $c5 $0e


    rst $08                                       ; $6b8a: $cf
    nop                                           ; $6b8b: $00
    jr nc, @-$03                                  ; $6b8c: $30 $fb

    jp Jump_09a_4c78                              ; $6b8e: $c3 $78 $4c


    ret nc                                        ; $6b91: $d0

    jr nc, jr_09a_6bd7                            ; $6b92: $30 $43

    nop                                           ; $6b94: $00
    jp Jump_000_0c0e                              ; $6b95: $c3 $0e $0c


    cp [hl]                                       ; $6b98: $be
    dec c                                         ; $6b99: $0d
    and h                                         ; $6b9a: $a4
    ld [hl-], a                                   ; $6b9b: $32
    ld l, a                                       ; $6b9c: $6f
    nop                                           ; $6b9d: $00
    db $d3                                        ; $6b9e: $d3
    inc b                                         ; $6b9f: $04
    ld c, a                                       ; $6ba0: $4f
    ld [de], a                                    ; $6ba1: $12
    ld a, a                                       ; $6ba2: $7f
    rst $00                                       ; $6ba3: $c7
    rst $38                                       ; $6ba4: $ff
    rst $08                                       ; $6ba5: $cf
    nop                                           ; $6ba6: $00
    ld a, a                                       ; $6ba7: $7f
    db $db                                        ; $6ba8: $db
    ccf                                           ; $6ba9: $3f
    inc sp                                        ; $6baa: $33
    or h                                          ; $6bab: $b4
    reti                                          ; $6bac: $d9


    di                                            ; $6bad: $f3
    inc c                                         ; $6bae: $0c
    nop                                           ; $6baf: $00
    rst $38                                       ; $6bb0: $ff
    inc h                                         ; $6bb1: $24
    db $f4                                        ; $6bb2: $f4
    ld e, e                                       ; $6bb3: $5b
    db $e3                                        ; $6bb4: $e3
    sbc h                                         ; $6bb5: $9c
    inc l                                         ; $6bb6: $2c
    db $f4                                        ; $6bb7: $f4
    nop                                           ; $6bb8: $00
    jr nc, jr_09a_6b46                            ; $6bb9: $30 $8b

    jp $0efc                                      ; $6bbb: $c3 $fc $0e


    ld [hl], b                                    ; $6bbe: $70

jr_09a_6bbf:
    or d                                          ; $6bbf: $b2
    ld b, e                                       ; $6bc0: $43
    nop                                           ; $6bc1: $00
    jp $cc4f                                      ; $6bc2: $c3 $4f $cc


    dec sp                                        ; $6bc5: $3b
    db $f4                                        ; $6bc6: $f4
    cp [hl]                                       ; $6bc7: $be
    jp Jump_000_00f4                              ; $6bc8: $c3 $f4 $00


    ld c, $f0                                     ; $6bcb: $0e $f0
    jr nc, @+$31                                  ; $6bcd: $30 $2f

    jr nc, jr_09a_6bbf                            ; $6bcf: $30 $ee

    db $d3                                        ; $6bd1: $d3
    rst $28                                       ; $6bd2: $ef
    nop                                           ; $6bd3: $00
    rra                                           ; $6bd4: $1f
    or l                                          ; $6bd5: $b5
    ld a, a                                       ; $6bd6: $7f

jr_09a_6bd7:
    rst $28                                       ; $6bd7: $ef
    rst $38                                       ; $6bd8: $ff
    ld [hl], h                                    ; $6bd9: $74
    ld a, a                                       ; $6bda: $7f
    ld [de], a                                    ; $6bdb: $12
    jr nz, jr_09a_6c5d                            ; $6bdc: $20 $7f

    call nz, $0228                                ; $6bde: $c4 $28 $02
    ld hl, sp-$04                                 ; $6be1: $f8 $fc
    ret nc                                        ; $6be3: $d0

    ldh a, [$c1]                                  ; $6be4: $f0 $c1
    nop                                           ; $6be6: $00
    bit 1, a                                      ; $6be7: $cb $4f
    call z, $f836                                 ; $6be9: $cc $36 $f8
    rst $38                                       ; $6bec: $ff
    jp Jump_000_00f9                              ; $6bed: $c3 $f9 $00


    inc c                                         ; $6bf0: $0c
    rlca                                          ; $6bf1: $07
    inc l                                         ; $6bf2: $2c
    ccf                                           ; $6bf3: $3f
    jr nc, @+$01                                  ; $6bf4: $30 $ff

    db $d3                                        ; $6bf6: $d3
    xor d                                         ; $6bf7: $aa
    nop                                           ; $6bf8: $00
    dec c                                         ; $6bf9: $0d
    cp a                                          ; $6bfa: $bf
    jr nc, @-$3f                                  ; $6bfb: $30 $bf

    jp Jump_000_0cfc                              ; $6bfd: $c3 $fc $0c


    sub b                                         ; $6c00: $90
    ld [$5c30], sp                                ; $6c01: $08 $30 $5c
    cpl                                           ; $6c04: $2f
    ld l, h                                       ; $6c05: $6c
    call nz, $6c02                                ; $6c06: $c4 $02 $6c
    rst $38                                       ; $6c09: $ff
    ei                                            ; $6c0a: $fb
    nop                                           ; $6c0b: $00
    ldh a, [$f6]                                  ; $6c0c: $f0 $f6
    jp Jump_09a_6d1a                              ; $6c0e: $c3 $1a $6d


    rst $30                                       ; $6c11: $f7
    inc [hl]                                      ; $6c12: $34
    ld e, $00                                     ; $6c13: $1e $00
    ldh a, [$ce]                                  ; $6c15: $f0 $ce
    di                                            ; $6c17: $f3

jr_09a_6c18:
    xor l                                         ; $6c18: $ad
    ld e, a                                       ; $6c19: $5f
    ld l, [hl]                                    ; $6c1a: $6e
    ld sp, $00d7                                  ; $6c1b: $31 $d7 $00
    set 5, h                                      ; $6c1e: $cb $ec
    ld e, $e0                                     ; $6c20: $1e $e0
    jr nc, jr_09a_6c97                            ; $6c22: $30 $73

    db $d3                                        ; $6c24: $d3
    jp $f300                                      ; $6c25: $c3 $00 $f3


    rrca                                          ; $6c28: $0f
    inc c                                         ; $6c29: $0c
    dec sp                                        ; $6c2a: $3b
    inc [hl]                                      ; $6c2b: $34
    reti                                          ; $6c2c: $d9


    db $e3                                        ; $6c2d: $e3
    ld h, h                                       ; $6c2e: $64

jr_09a_6c2f:
    ld [$344d], sp                                ; $6c2f: $08 $4d $34
    jr nc, jr_09a_6c2f                            ; $6c32: $30 $fb

    ld e, d                                       ; $6c34: $5a

jr_09a_6c35:
    nop                                           ; $6c35: $00
    ld [hl], l                                    ; $6c36: $75
    adc [hl]                                      ; $6c37: $8e
    ld [hl], e                                    ; $6c38: $73
    nop                                           ; $6c39: $00
    or h                                          ; $6c3a: $b4
    pop de                                        ; $6c3b: $d1
    jp Jump_000_0fac                              ; $6c3c: $c3 $ac $0f


Call_09a_6c3f:
    ld d, b                                       ; $6c3f: $50
    ccf                                           ; $6c40: $3f
    or b                                          ; $6c41: $b0
    jr nz, @+$01                                  ; $6c42: $20 $ff

    rst $30                                       ; $6c44: $f7
    xor l                                         ; $6c45: $ad
    dec b                                         ; $6c46: $05
    cp e                                          ; $6c47: $bb
    ld a, a                                       ; $6c48: $7f
    cpl                                           ; $6c49: $2f
    rst $38                                       ; $6c4a: $ff
    ld a, [$ff00]                                 ; $6c4b: $fa $00 $ff
    rst $10                                       ; $6c4e: $d7
    rst $30                                       ; $6c4f: $f7
    ret nz                                        ; $6c50: $c0

    rrc a                                         ; $6c51: $cb $0f
    ld c, h                                       ; $6c53: $4c
    scf                                           ; $6c54: $37
    nop                                           ; $6c55: $00
    ld a, b                                       ; $6c56: $78
    xor e                                         ; $6c57: $ab
    rst $10                                       ; $6c58: $d7
    dec hl                                        ; $6c59: $2b
    rst $38                                       ; $6c5a: $ff
    rst $38                                       ; $6c5b: $ff
    db $fc                                        ; $6c5c: $fc

jr_09a_6c5d:
    db $fd                                        ; $6c5d: $fd
    nop                                           ; $6c5e: $00
    ld a, [c]                                     ; $6c5f: $f2
    db $fd                                        ; $6c60: $fd
    db $d3                                        ; $6c61: $d3
    call z, $e02f                                 ; $6c62: $cc $2f $e0
    ccf                                           ; $6c65: $3f
    sub d                                         ; $6c66: $92
    add hl, bc                                    ; $6c67: $09
    rst $38                                       ; $6c68: $ff
    cpl                                           ; $6c69: $2f
    db $fc                                        ; $6c6a: $fc
    add c                                         ; $6c6b: $81
    inc l                                         ; $6c6c: $2c
    inc sp                                        ; $6c6d: $33
    ret nz                                        ; $6c6e: $c0

    cp a                                          ; $6c6f: $bf
    jr nz, jr_09a_6c7d                            ; $6c70: $20 $0b

    ld h, b                                       ; $6c72: $60
    rst $38                                       ; $6c73: $ff
    jr jr_09a_6c79                                ; $6c74: $18 $03

    jr nz, jr_09a_6ca3                            ; $6c76: $20 $2b

    add e                                         ; $6c78: $83

jr_09a_6c79:
    rst $38                                       ; $6c79: $ff
    add c                                         ; $6c7a: $81
    cp a                                          ; $6c7b: $bf
    ld c, l                                       ; $6c7c: $4d

jr_09a_6c7d:
    ld b, $b2                                     ; $6c7d: $06 $b2
    adc e                                         ; $6c7f: $8b
    nop                                           ; $6c80: $00
    dec h                                         ; $6c81: $25
    nop                                           ; $6c82: $00
    sbc [hl]                                      ; $6c83: $9e
    dec b                                         ; $6c84: $05
    call nc, Call_09a_7005                        ; $6c85: $d4 $05 $70
    add b                                         ; $6c88: $80
    and b                                         ; $6c89: $a0
    dec b                                         ; $6c8a: $05
    sub b                                         ; $6c8b: $90
    add a                                         ; $6c8c: $87

jr_09a_6c8d:
    ret nc                                        ; $6c8d: $d0

    add a                                         ; $6c8e: $87
    jr z, jr_09a_6c18                             ; $6c8f: $28 $87

    ret nc                                        ; $6c91: $d0

    nop                                           ; $6c92: $00
    adc a                                         ; $6c93: $8f
    jr nz, jr_09a_6c35                            ; $6c94: $20 $9f

    add b                                         ; $6c96: $80

jr_09a_6c97:
    rst $18                                       ; $6c97: $df
    db $10                                        ; $6c98: $10
    rst $08                                       ; $6c99: $cf
    adc b                                         ; $6c9a: $88
    nop                                           ; $6c9b: $00
    rst $00                                       ; $6c9c: $c7
    sbc h                                         ; $6c9d: $9c

jr_09a_6c9e:
    rrca                                          ; $6c9e: $0f
    ret c                                         ; $6c9f: $d8

    rrca                                          ; $6ca0: $0f
    sbc h                                         ; $6ca1: $9c
    rrca                                          ; $6ca2: $0f

jr_09a_6ca3:
    ret z                                         ; $6ca3: $c8

    ld b, d                                       ; $6ca4: $42
    rra                                           ; $6ca5: $1f
    inc b                                         ; $6ca6: $04
    ld [$8f50], sp                                ; $6ca7: $08 $50 $8f
    ret z                                         ; $6caa: $c8

    rra                                           ; $6cab: $1f
    sub b                                         ; $6cac: $90
    dec l                                         ; $6cad: $2d
    ld h, l                                       ; $6cae: $65
    nop                                           ; $6caf: $00
    ld hl, sp-$66                                 ; $6cb0: $f8 $9a
    ldh [$35], a                                  ; $6cb2: $e0 $35
    ret nz                                        ; $6cb4: $c0

    ld a, d                                       ; $6cb5: $7a
    add b                                         ; $6cb6: $80
    inc d                                         ; $6cb7: $14
    jr nz, jr_09a_6c7d                            ; $6cb8: $20 $c3

    adc b                                         ; $6cba: $88
    ld [bc], a                                    ; $6cbb: $02
    jr nz, @-$6a                                  ; $6cbc: $20 $94

    jp $c788                                      ; $6cbe: $c3 $88 $c7


jr_09a_6cc1:
    or c                                          ; $6cc1: $b1
    ld b, b                                       ; $6cc2: $40
    rst $08                                       ; $6cc3: $cf
    inc h                                         ; $6cc4: $24
    ld [$8f50], sp                                ; $6cc5: $08 $50 $8f
    ret nz                                        ; $6cc8: $c0

    rra                                           ; $6cc9: $1f
    ld b, b                                       ; $6cca: $40
    sbc a                                         ; $6ccb: $9f
    add d                                         ; $6ccc: $82

jr_09a_6ccd:
    ld [bc], a                                    ; $6ccd: $02
    jr jr_09a_6c8d                                ; $6cce: $18 $bd

    nop                                           ; $6cd0: $00
    cp $00                                        ; $6cd1: $fe $00
    rst $28                                       ; $6cd3: $ef
    sbc a                                         ; $6cd4: $9f
    inc bc                                        ; $6cd5: $03
    rra                                           ; $6cd6: $1f
    nop                                           ; $6cd7: $00
    ldh [$6f], a                                  ; $6cd8: $e0 $6f
    db $10                                        ; $6cda: $10
    rlca                                          ; $6cdb: $07
    jr jr_09a_6ccd                                ; $6cdc: $18 $ef

    db $10                                        ; $6cde: $10
    add b                                         ; $6cdf: $80
    jr nz, jr_09a_6cc1                            ; $6ce0: $20 $df

    or c                                          ; $6ce2: $b1
    ld d, [hl]                                    ; $6ce3: $56
    nop                                           ; $6ce4: $00
    or l                                          ; $6ce5: $b5
    jp $c389                                      ; $6ce6: $c3 $89 $c3


    xor c                                         ; $6ce9: $a9
    add h                                         ; $6cea: $84
    inc b                                         ; $6ceb: $04
    db $10                                        ; $6cec: $10
    ld d, b                                       ; $6ced: $50
    sbc a                                         ; $6cee: $9f
    ld h, b                                       ; $6cef: $60
    sbc a                                         ; $6cf0: $9f
    inc b                                         ; $6cf1: $04
    jr c, jr_09a_6d14                             ; $6cf2: $38 $20

    rst $18                                       ; $6cf4: $df
    nop                                           ; $6cf5: $00
    dec d                                         ; $6cf6: $15
    ld a, [$f1ce]                                 ; $6cf7: $fa $ce $f1
    rra                                           ; $6cfa: $1f
    ldh [$2e], a                                  ; $6cfb: $e0 $2e

jr_09a_6cfd:
    pop de                                        ; $6cfd: $d1
    nop                                           ; $6cfe: $00
    rst $18                                       ; $6cff: $df
    jr nz, jr_09a_6cfd                            ; $6d00: $20 $fb

    inc b                                         ; $6d02: $04
    ld d, a                                       ; $6d03: $57
    xor b                                         ; $6d04: $a8
    cp d                                          ; $6d05: $ba
    ld b, l                                       ; $6d06: $45
    nop                                           ; $6d07: $00
    sub l                                         ; $6d08: $95
    jp $c789                                      ; $6d09: $c3 $89 $c7


    db $10                                        ; $6d0c: $10
    rst $08                                       ; $6d0d: $cf
    add c                                         ; $6d0e: $81
    rst $18                                       ; $6d0f: $df
    nop                                           ; $6d10: $00
    nop                                           ; $6d11: $00
    rst $18                                       ; $6d12: $df
    sub c                                         ; $6d13: $91

jr_09a_6d14:
    rst $08                                       ; $6d14: $cf
    jr z, jr_09a_6c9e                             ; $6d15: $28 $87

    pop de                                        ; $6d17: $d1
    add a                                         ; $6d18: $87
    nop                                           ; $6d19: $00

Jump_09a_6d1a:
    ld [hl], b                                    ; $6d1a: $70
    sbc a                                         ; $6d1b: $9f
    db $10                                        ; $6d1c: $10
    rst $18                                       ; $6d1d: $df
    ld a, b                                       ; $6d1e: $78
    sbc a                                         ; $6d1f: $9f
    jr nc, @-$1f                                  ; $6d20: $30 $df

    ld hl, $df38                                  ; $6d22: $21 $38 $df
    inc b                                         ; $6d25: $04
    ld [$df38], sp                                ; $6d26: $08 $38 $df
    ret nc                                        ; $6d29: $d0

    rst $28                                       ; $6d2a: $ef
    ld [bc], a                                    ; $6d2b: $02
    jr c, jr_09a_6d2f                             ; $6d2c: $38 $01

    ld d, b                                       ; $6d2e: $50

jr_09a_6d2f:
    rst $28                                       ; $6d2f: $ef
    ret z                                         ; $6d30: $c8

    rst $20                                       ; $6d31: $e7
    sub c                                         ; $6d32: $91
    jp Jump_09a_5a95                              ; $6d33: $c3 $95 $5a


    nop                                           ; $6d36: $00
    nop                                           ; $6d37: $00
    sub l                                         ; $6d38: $95
    db $e3                                        ; $6d39: $e3
    adc c                                         ; $6d3a: $89
    di                                            ; $6d3b: $f3
    add l                                         ; $6d3c: $85
    ei                                            ; $6d3d: $fb
    add b                                         ; $6d3e: $80
    ei                                            ; $6d3f: $fb
    nop                                           ; $6d40: $00
    dec b                                         ; $6d41: $05
    di                                            ; $6d42: $f3
    xor b                                         ; $6d43: $a8
    ld d, a                                       ; $6d44: $57
    and c                                         ; $6d45: $a1
    nop                                           ; $6d46: $00
    ret z                                         ; $6d47: $c8

    nop                                           ; $6d48: $00
    inc e                                         ; $6d49: $1c
    add d                                         ; $6d4a: $82
    nop                                           ; $6d4b: $00
    add b                                         ; $6d4c: $80
    ld [bc], a                                    ; $6d4d: $02
    nop                                           ; $6d4e: $00
    and a                                         ; $6d4f: $a7
    inc c                                         ; $6d50: $0c
    inc h                                         ; $6d51: $24
    ld [$ef50], sp                                ; $6d52: $08 $50 $ef
    inc b                                         ; $6d55: $04
    ld e, b                                       ; $6d56: $58
    rst $20                                       ; $6d57: $e7
    ld b, b                                       ; $6d58: $40
    rst $28                                       ; $6d59: $ef
    ld c, b                                       ; $6d5a: $48
    inc b                                         ; $6d5b: $04
    nop                                           ; $6d5c: $00
    ld [$02e7], sp                                ; $6d5d: $08 $e7 $02
    adc b                                         ; $6d60: $88
    db $e3                                        ; $6d61: $e3
    dec d                                         ; $6d62: $15
    jp $c390                                      ; $6d63: $c3 $90 $c3


    inc b                                         ; $6d66: $04
    ld [$0229], sp                                ; $6d67: $08 $29 $02
    jp $e310                                      ; $6d6a: $c3 $10 $e3


    add l                                         ; $6d6d: $85
    ld sp, hl                                     ; $6d6e: $f9
    jr nz, @+$2a                                  ; $6d6f: $20 $28

    db $10                                        ; $6d71: $10
    ld [$0000], sp                                ; $6d72: $08 $00 $00
    inc de                                        ; $6d75: $13
    nop                                           ; $6d76: $00
    inc b                                         ; $6d77: $04
    nop                                           ; $6d78: $00
    ld [$9404], sp                                ; $6d79: $08 $04 $94
    ld b, h                                       ; $6d7c: $44
    inc b                                         ; $6d7d: $04
    inc h                                         ; $6d7e: $24
    ld [$e748], sp                                ; $6d7f: $08 $48 $e7
    jr jr_09a_6d88                                ; $6d82: $18 $04

    db $10                                        ; $6d84: $10
    ld e, b                                       ; $6d85: $58
    rst $20                                       ; $6d86: $e7
    nop                                           ; $6d87: $00

jr_09a_6d88:
    ld [$00e7], sp                                ; $6d88: $08 $e7 $00
    db $fd                                        ; $6d8b: $fd
    ld b, l                                       ; $6d8c: $45
    ld sp, hl                                     ; $6d8d: $f9
    ld a, [bc]                                    ; $6d8e: $0a
    pop af                                        ; $6d8f: $f1
    nop                                           ; $6d90: $00
    ld d, h                                       ; $6d91: $54
    pop hl                                        ; $6d92: $e1
    adc d                                         ; $6d93: $8a
    pop hl                                        ; $6d94: $e1
    ld c, b                                       ; $6d95: $48
    pop hl                                        ; $6d96: $e1
    jp z, Jump_000_00e1                           ; $6d97: $ca $e1 $00

    ld [$0ee1], sp                                ; $6d9a: $08 $e1 $0e
    inc b                                         ; $6d9d: $04
    dec d                                         ; $6d9e: $15
    ld b, $2e                                     ; $6d9f: $06 $2e
    rlca                                          ; $6da1: $07
    nop                                           ; $6da2: $00
    ld d, e                                       ; $6da3: $53
    rlca                                          ; $6da4: $07
    xor h                                         ; $6da5: $ac
    inc bc                                        ; $6da6: $03
    ld e, a                                       ; $6da7: $5f
    ld bc, $01f7                                  ; $6da8: $01 $f7 $01
    nop                                           ; $6dab: $00
    db $fc                                        ; $6dac: $fc
    inc bc                                        ; $6dad: $03
    inc e                                         ; $6dae: $1c
    db $e3                                        ; $6daf: $e3
    ld [$5ce7], sp                                ; $6db0: $08 $e7 $5c
    db $e3                                        ; $6db3: $e3
    ld h, b                                       ; $6db4: $60
    jr jr_09a_6dbb                                ; $6db5: $18 $04

    nop                                           ; $6db7: $00
    ld [$5c08], sp                                ; $6db8: $08 $08 $5c

jr_09a_6dbb:
    db $e3                                        ; $6dbb: $e3
    ld d, [hl]                                    ; $6dbc: $56
    pop hl                                        ; $6dbd: $e1
    adc b                                         ; $6dbe: $88
    nop                                           ; $6dbf: $00
    pop af                                        ; $6dc0: $f1
    add $f9                                       ; $6dc1: $c6 $f9
    call nz, Call_09a_48f9                        ; $6dc3: $c4 $f9 $48
    pop af                                        ; $6dc6: $f1
    call nc, $e121                                ; $6dc7: $d4 $21 $e1
    ret z                                         ; $6dca: $c8

    ld [hl-], a                                   ; $6dcb: $32
    nop                                           ; $6dcc: $00
    db $db                                        ; $6dcd: $db
    inc b                                         ; $6dce: $04
    rst $30                                       ; $6dcf: $f7
    ld [$04e0], sp                                ; $6dd0: $08 $e0 $04
    ld b, b                                       ; $6dd3: $40
    inc d                                         ; $6dd4: $14
    ldh [rDIV], a                                 ; $6dd5: $e0 $04
    ld d, l                                       ; $6dd7: $55
    push af                                       ; $6dd8: $f5
    ld a, [bc]                                    ; $6dd9: $0a
    ld l, d                                       ; $6dda: $6a
    sub l                                         ; $6ddb: $95
    ld [hl], l                                    ; $6ddc: $75
    nop                                           ; $6ddd: $00
    adc d                                         ; $6dde: $8a
    ld c, b                                       ; $6ddf: $48
    or a                                          ; $6de0: $b7
    ld hl, $08de                                  ; $6de1: $21 $de $08
    rst $38                                       ; $6de4: $ff
    call nc, $7f0a                                ; $6de5: $d4 $0a $7f
    cp b                                          ; $6de8: $b8
    rst $38                                       ; $6de9: $ff
    ld a, h                                       ; $6dea: $7c
    ld a, l                                       ; $6deb: $7d
    rlca                                          ; $6dec: $07
    ld de, $00e4                                  ; $6ded: $11 $e4 $00
    ld de, $8708                                  ; $6df0: $11 $08 $87
    ld de, $4f80                                  ; $6df3: $11 $80 $4f
    ld b, b                                       ; $6df6: $40
    ld b, $45                                     ; $6df7: $06 $45
    add b                                         ; $6df9: $80
    nop                                           ; $6dfa: $00
    ld [$38ff], sp                                ; $6dfb: $08 $ff $38
    rst $18                                       ; $6dfe: $df
    jr jr_09a_6e05                                ; $6dff: $18 $04

    nop                                           ; $6e01: $00
    inc d                                         ; $6e02: $14
    ld hl, sp+$2b                                 ; $6e03: $f8 $2b

jr_09a_6e05:
    nop                                           ; $6e05: $00
    ld d, b                                       ; $6e06: $50
    sub h                                         ; $6e07: $94
    jr nz, @+$17                                  ; $6e08: $20 $15

    nop                                           ; $6e0a: $00
    dec b                                         ; $6e0b: $05
    rst $38                                       ; $6e0c: $ff
    nop                                           ; $6e0d: $00
    ld bc, $02fb                                  ; $6e0e: $01 $fb $02
    ld e, l                                       ; $6e11: $5d
    ld bc, $08be                                  ; $6e12: $01 $be $08
    rst $30                                       ; $6e15: $f7
    ld d, l                                       ; $6e16: $55
    ld bc, $7500                                  ; $6e17: $01 $00 $75
    nop                                           ; $6e1a: $00
    ei                                            ; $6e1b: $fb
    and b                                         ; $6e1c: $a0
    ld e, a                                       ; $6e1d: $5f
    ld bc, $0aae                                  ; $6e1e: $01 $ae $0a
    nop                                           ; $6e21: $00
    ld [hl], l                                    ; $6e22: $75
    inc b                                         ; $6e23: $04
    ei                                            ; $6e24: $fb
    and d                                         ; $6e25: $a2
    ld e, l                                       ; $6e26: $5d
    dec b                                         ; $6e27: $05
    cp d                                          ; $6e28: $ba
    jr z, jr_09a_6e31                             ; $6e29: $28 $06

jr_09a_6e2b:
    rst $10                                       ; $6e2b: $d7
    ld d, b                                       ; $6e2c: $50
    xor [hl]                                      ; $6e2d: $ae
    add b                                         ; $6e2e: $80
    ld [hl], l                                    ; $6e2f: $75
    adc e                                         ; $6e30: $8b

jr_09a_6e31:
    dec [hl]                                      ; $6e31: $35
    sub h                                         ; $6e32: $94
    dec c                                         ; $6e33: $0d
    ld e, $20                                     ; $6e34: $1e $20
    ld e, $61                                     ; $6e36: $1e $61
    add h                                         ; $6e38: $84
    ld [$e21d], sp                                ; $6e39: $08 $1d $e2
    ld e, [hl]                                    ; $6e3c: $5e
    nop                                           ; $6e3d: $00
    db $ed                                        ; $6e3e: $ed
    ld bc, $4000                                  ; $6e3f: $01 $00 $40
    nop                                           ; $6e42: $00
    ld e, h                                       ; $6e43: $5c
    inc hl                                        ; $6e44: $23
    ld d, a                                       ; $6e45: $57
    rst $38                                       ; $6e46: $ff

jr_09a_6e47:
    add h                                         ; $6e47: $84
    ld [$8000], sp                                ; $6e48: $08 $00 $80
    ld bc, $01e3                                  ; $6e4b: $01 $e3 $01
    add b                                         ; $6e4e: $80
    ld bc, $01ab                                  ; $6e4f: $01 $ab $01
    ld b, b                                       ; $6e52: $40
    nop                                           ; $6e53: $00
    db $ed                                        ; $6e54: $ed
    rlca                                          ; $6e55: $07
    inc e                                         ; $6e56: $1c
    db $e3                                        ; $6e57: $e3
    add hl, hl                                    ; $6e58: $29
    sub $52                                       ; $6e59: $d6 $52
    cp l                                          ; $6e5b: $bd
    ld h, b                                       ; $6e5c: $60
    ld [hl+], a                                   ; $6e5d: $22
    ld d, l                                       ; $6e5e: $55
    inc bc                                        ; $6e5f: $03
    ld [hl], b                                    ; $6e60: $70
    dec de                                        ; $6e61: $1b
    ld d, l                                       ; $6e62: $55
    db $eb                                        ; $6e63: $eb
    adc b                                         ; $6e64: $88
    ld e, l                                       ; $6e65: $5d
    stop                                          ; $6e66: $10 $00
    cp [hl]                                       ; $6e68: $be
    add d                                         ; $6e69: $82
    rst $10                                       ; $6e6a: $d7
    nop                                           ; $6e6b: $00
    xor a                                         ; $6e6c: $af
    ld a, [hl+]                                   ; $6e6d: $2a
    ld [hl], a                                    ; $6e6e: $77
    ld d, h                                       ; $6e6f: $54
    ld [bc], a                                    ; $6e70: $02
    db $eb                                        ; $6e71: $eb
    ld [hl+], a                                   ; $6e72: $22
    ld e, l                                       ; $6e73: $5d
    nop                                           ; $6e74: $00
    rst $38                                       ; $6e75: $ff
    ld [bc], a                                    ; $6e76: $02
    jr nc, jr_09a_6e80                            ; $6e77: $30 $07

    jr z, jr_09a_6e83                             ; $6e79: $28 $08

    rst $10                                       ; $6e7b: $d7
    ld b, b                                       ; $6e7c: $40
    xor a                                         ; $6e7d: $af
    add b                                         ; $6e7e: $80
    inc d                                         ; $6e7f: $14

jr_09a_6e80:
    rlca                                          ; $6e80: $07
    ld [bc], a                                    ; $6e81: $02
    db $fd                                        ; $6e82: $fd

jr_09a_6e83:
    ld b, c                                       ; $6e83: $41
    nop                                           ; $6e84: $00
    ei                                            ; $6e85: $fb
    ld a, [bc]                                    ; $6e86: $0a
    ld e, l                                       ; $6e87: $5d
    ld de, $88be                                  ; $6e88: $11 $be $88
    rst $30                                       ; $6e8b: $f7
    ld b, h                                       ; $6e8c: $44
    nop                                           ; $6e8d: $00
    rst $28                                       ; $6e8e: $ef
    jr nz, jr_09a_6f06                            ; $6e8f: $20 $75

    ld d, c                                       ; $6e91: $51
    ei                                            ; $6e92: $fb
    xor d                                         ; $6e93: $aa
    ld e, a                                       ; $6e94: $5f
    ld d, h                                       ; $6e95: $54
    jr nz, jr_09a_6e47                            ; $6e96: $20 $af

    jr z, jr_09a_6e2b                             ; $6e98: $28 $91

    inc bc                                        ; $6e9a: $03
    jr z, @+$01                                   ; $6e9b: $28 $ff

    ld d, c                                       ; $6e9d: $51
    ld a, [$08a2]                                 ; $6e9e: $fa $a2 $08
    rst $10                                       ; $6ea1: $d7
    db $10                                        ; $6ea2: $10
    rst $28                                       ; $6ea3: $ef
    and d                                         ; $6ea4: $a2
    add b                                         ; $6ea5: $80
    ld [$0301], sp                                ; $6ea6: $08 $01 $03
    ld [bc], a                                    ; $6ea9: $02
    nop                                           ; $6eaa: $00
    dec b                                         ; $6eab: $05
    ld b, $06                                     ; $6eac: $06 $06
    dec b                                         ; $6eae: $05
    ld [$0d0f], sp                                ; $6eaf: $08 $0f $0d
    dec bc                                        ; $6eb2: $0b
    nop                                           ; $6eb3: $00
    ld a, [bc]                                    ; $6eb4: $0a
    ld c, $7f                                     ; $6eb5: $0e $7f
    add c                                         ; $6eb7: $81
    rst $10                                       ; $6eb8: $d7
    ld a, [hl+]                                   ; $6eb9: $2a
    and l                                         ; $6eba: $a5
    ld e, [hl]                                    ; $6ebb: $5e
    nop                                           ; $6ebc: $00
    ld c, $ff                                     ; $6ebd: $0e $ff
    ld a, [hl-]                                   ; $6ebf: $3a
    rst $38                                       ; $6ec0: $ff
    sub $d9                                       ; $6ec1: $d6 $d9
    rra                                           ; $6ec3: $1f
    inc d                                         ; $6ec4: $14
    ld [$3d2e], sp                                ; $6ec5: $08 $2e $3d
    ld d, b                                       ; $6ec8: $50
    xor a                                         ; $6ec9: $af
    xor h                                         ; $6eca: $ac
    dec e                                         ; $6ecb: $1d
    ld bc, $20fa                                  ; $6ecc: $01 $fa $20
    add c                                         ; $6ecf: $81
    jr nc, jr_09a_6ed2                            ; $6ed0: $30 $00

jr_09a_6ed2:
    add d                                         ; $6ed2: $82
    ld [hl], l                                    ; $6ed3: $75
    inc c                                         ; $6ed4: $0c
    inc c                                         ; $6ed5: $0c
    ld [$3f08], sp                                ; $6ed6: $08 $08 $3f
    ld h, $80                                     ; $6ed9: $26 $80
    jr c, jr_09a_6edd                             ; $6edb: $38 $00

jr_09a_6edd:
    ld [bc], a                                    ; $6edd: $02
    inc bc                                        ; $6ede: $03
    cpl                                           ; $6edf: $2f
    dec [hl]                                      ; $6ee0: $35
    scf                                           ; $6ee1: $37
    jr c, jr_09a_6f1c                             ; $6ee2: $38 $38

    nop                                           ; $6ee4: $00
    ccf                                           ; $6ee5: $3f
    ld l, $5f                                     ; $6ee6: $2e $5f
    ld a, e                                       ; $6ee8: $7b
    add a                                         ; $6ee9: $87
    sbc $21                                       ; $6eea: $de $21
    rst $28                                       ; $6eec: $ef
    nop                                           ; $6eed: $00
    jr nc, @-$4f                                  ; $6eee: $30 $af

    ld [hl], b                                    ; $6ef0: $70
    ld [c], a                                     ; $6ef1: $e2

jr_09a_6ef2:
    rst $38                                       ; $6ef2: $ff
    rst $18                                       ; $6ef3: $df
    db $e3                                        ; $6ef4: $e3
    sbc [hl]                                      ; $6ef5: $9e
    nop                                           ; $6ef6: $00
    pop hl                                        ; $6ef7: $e1
    rst $18                                       ; $6ef8: $df
    pop hl                                        ; $6ef9: $e1
    sub a                                         ; $6efa: $97
    jp hl                                         ; $6efb: $e9


    db $db                                        ; $6efc: $db
    push hl                                       ; $6efd: $e5
    sbc l                                         ; $6efe: $9d
    nop                                           ; $6eff: $00

Jump_09a_6f00:
    db $e3                                        ; $6f00: $e3
    push de                                       ; $6f01: $d5
    ld [$fa15], a                                 ; $6f02: $ea $15 $fa
    ld a, b                                       ; $6f05: $78

jr_09a_6f06:
    sbc a                                         ; $6f06: $9f
    db $ed                                        ; $6f07: $ed
    nop                                           ; $6f08: $00
    ld e, $6a                                     ; $6f09: $1e $6a
    sbc l                                         ; $6f0b: $9d
    ld a, c                                       ; $6f0c: $79
    adc [hl]                                      ; $6f0d: $8e
    ld [hl], l                                    ; $6f0e: $75
    adc a                                         ; $6f0f: $8f
    or l                                          ; $6f10: $b5
    jr nc, jr_09a_6ef2                            ; $6f11: $30 $df

    xor e                                         ; $6f13: $ab
    ld hl, sp+$15                                 ; $6f14: $f8 $15
    cp $05                                        ; $6f16: $fe $05
    rst $30                                       ; $6f18: $f7
    nop                                           ; $6f19: $00
    db $eb                                        ; $6f1a: $eb
    ld [bc], a                                    ; $6f1b: $02

jr_09a_6f1c:
    ld b, b                                       ; $6f1c: $40
    ld e, l                                       ; $6f1d: $5d
    xor b                                         ; $6f1e: $a8
    ld [$e699], sp                                ; $6f1f: $08 $99 $e6
    sbc $e3                                       ; $6f22: $de $e3
    sbc a                                         ; $6f24: $9f
    pop hl                                        ; $6f25: $e1
    nop                                           ; $6f26: $00
    db $db                                        ; $6f27: $db
    db $e4                                        ; $6f28: $e4
    sbc l                                         ; $6f29: $9d
    ld [c], a                                     ; $6f2a: $e2
    rst $18                                       ; $6f2b: $df
    ldh [$9f], a                                  ; $6f2c: $e0 $9f
    ldh [rP1], a                                  ; $6f2e: $e0 $00
    sbc $e1                                       ; $6f30: $de $e1
    rst $10                                       ; $6f32: $d7
    rst $38                                       ; $6f33: $ff
    ld a, a                                       ; $6f34: $7f
    rst $38                                       ; $6f35: $ff
    ld b, e                                       ; $6f36: $43
    rst $38                                       ; $6f37: $ff
    nop                                           ; $6f38: $00
    call $e2f3                                    ; $6f39: $cd $f3 $e2
    dec a                                         ; $6f3c: $3d
    db $fd                                        ; $6f3d: $fd
    ld e, $57                                     ; $6f3e: $1e $57
    cp b                                          ; $6f40: $b8
    nop                                           ; $6f41: $00
    adc [hl]                                      ; $6f42: $8e
    ld [hl], c                                    ; $6f43: $71
    add d                                         ; $6f44: $82
    db $e3                                        ; $6f45: $e3
    rst $28                                       ; $6f46: $ef
    inc e                                         ; $6f47: $1c
    db $fd                                        ; $6f48: $fd
    ld a, [bc]                                    ; $6f49: $0a
    nop                                           ; $6f4a: $00

jr_09a_6f4b:
    jp z, $e93d                                   ; $6f4b: $ca $3d $e9

    ld a, [hl]                                    ; $6f4e: $7e

jr_09a_6f4f:
    db $f4                                        ; $6f4f: $f4
    rst $28                                       ; $6f50: $ef
    rst $38                                       ; $6f51: $ff
    rrca                                          ; $6f52: $0f
    nop                                           ; $6f53: $00
    add sp, -$68                                  ; $6f54: $e8 $98
    nop                                           ; $6f56: $00
    ret nz                                        ; $6f57: $c0

    ret nz                                        ; $6f58: $c0

    jr nz, @-$1e                                  ; $6f59: $20 $e0

    stop                                          ; $6f5b: $10 $00
    ldh a, [$08]                                  ; $6f5d: $f0 $08
    ld a, h                                       ; $6f5f: $7c
    add h                                         ; $6f60: $84
    inc a                                         ; $6f61: $3c
    call nz, $e41c                                ; $6f62: $c4 $1c $e4
    ld [$f48c], sp                                ; $6f65: $08 $8c $f4
    inc b                                         ; $6f68: $04
    ld a, [$015c]                                 ; $6f69: $fa $5c $01
    rst $38                                       ; $6f6c: $ff
    ld a, [bc]                                    ; $6f6d: $0a
    ld [hl], l                                    ; $6f6e: $75
    nop                                           ; $6f6f: $00
    inc d                                         ; $6f70: $14
    db $eb                                        ; $6f71: $eb
    and b                                         ; $6f72: $a0
    ld e, a                                       ; $6f73: $5f
    ld b, b                                       ; $6f74: $40
    cp d                                          ; $6f75: $ba
    jr nz, jr_09a_6f4f                            ; $6f76: $20 $d7

    nop                                           ; $6f78: $00
    ret nc                                        ; $6f79: $d0

    or b                                          ; $6f7a: $b0
    cp b                                          ; $6f7b: $b8
    ld a, h                                       ; $6f7c: $7c
    inc l                                         ; $6f7d: $2c
    di                                            ; $6f7e: $f3
    ld l, a                                       ; $6f7f: $6f
    ldh a, [rP1]                                  ; $6f80: $f0 $00
    rst $08                                       ; $6f82: $cf
    ldh a, [$1f]                                  ; $6f83: $f0 $1f
    ldh [$fb], a                                  ; $6f85: $e0 $fb
    inc b                                         ; $6f87: $04
    push af                                       ; $6f88: $f5
    ld c, $00                                     ; $6f89: $0e $00
    ld e, h                                       ; $6f8b: $5c
    ld h, h                                       ; $6f8c: $64
    inc [hl]                                      ; $6f8d: $34
    inc l                                         ; $6f8e: $2c
    inc [hl]                                      ; $6f8f: $34
    inc l                                         ; $6f90: $2c
    jr z, jr_09a_6f4b                             ; $6f91: $28 $b8

    nop                                           ; $6f93: $00
    sub b                                         ; $6f94: $90
    ld [hl], b                                    ; $6f95: $70
    and b                                         ; $6f96: $a0
    ld h, b                                       ; $6f97: $60
    ldh [rNR41], a                                ; $6f98: $e0 $20
    ld h, b                                       ; $6f9a: $60
    and b                                         ; $6f9b: $a0
    dec b                                         ; $6f9c: $05
    ld d, c                                       ; $6f9d: $51
    xor [hl]                                      ; $6f9e: $ae
    ld [bc], a                                    ; $6f9f: $02
    push af                                       ; $6fa0: $f5
    db $10                                        ; $6fa1: $10
    inc l                                         ; $6fa2: $2c
    ld [$84bf], sp                                ; $6fa3: $08 $bf $84
    ld e, $00                                     ; $6fa6: $1e $00
    ld c, [hl]                                    ; $6fa8: $4e
    cp a                                          ; $6fa9: $bf
    or [hl]                                       ; $6faa: $b6
    ld c, a                                       ; $6fab: $4f
    ld a, l                                       ; $6fac: $7d
    add a                                         ; $6fad: $87
    ld [hl], l                                    ; $6fae: $75
    adc a                                         ; $6faf: $8f
    nop                                           ; $6fb0: $00
    ld a, c                                       ; $6fb1: $79
    adc [hl]                                      ; $6fb2: $8e
    ld a, e                                       ; $6fb3: $7b
    adc h                                         ; $6fb4: $8c
    ld [hl], l                                    ; $6fb5: $75
    adc $47                                       ; $6fb6: $ce $47
    db $fc                                        ; $6fb8: $fc
    nop                                           ; $6fb9: $00
    and e                                         ; $6fba: $a3
    ld a, a                                       ; $6fbb: $7f
    dec a                                         ; $6fbc: $3d
    db $e3                                        ; $6fbd: $e3
    ld a, l                                       ; $6fbe: $7d
    db $e3                                        ; $6fbf: $e3
    xor l                                         ; $6fc0: $ad
    di                                            ; $6fc1: $f3
    nop                                           ; $6fc2: $00
    db $dd                                        ; $6fc3: $dd
    db $e3                                        ; $6fc4: $e3
    xor l                                         ; $6fc5: $ad
    db $d3                                        ; $6fc6: $d3
    ld e, l                                       ; $6fc7: $5d
    and e                                         ; $6fc8: $a3
    dec a                                         ; $6fc9: $3d
    jp Jump_09a_5700                              ; $6fca: $c3 $00 $57


    db $fc                                        ; $6fcd: $fc
    ld sp, hl                                     ; $6fce: $f9
    cp $8c                                        ; $6fcf: $fe $8c
    rst $38                                       ; $6fd1: $ff
    set 6, a                                      ; $6fd2: $cb $f7
    nop                                           ; $6fd4: $00
    db $ed                                        ; $6fd5: $ed
    or e                                          ; $6fd6: $b3
    or a                                          ; $6fd7: $b7
    reti                                          ; $6fd8: $d9


    sbc $b9                                       ; $6fd9: $de $b9
    xor [hl]                                      ; $6fdb: $ae
    pop de                                        ; $6fdc: $d1
    nop                                           ; $6fdd: $00
    ld e, l                                       ; $6fde: $5d
    and e                                         ; $6fdf: $a3
    add hl, sp                                    ; $6fe0: $39
    rst $00                                       ; $6fe1: $c7
    db $fd                                        ; $6fe2: $fd
    add e                                         ; $6fe3: $83
    ld sp, hl                                     ; $6fe4: $f9
    add a                                         ; $6fe5: $87
    nop                                           ; $6fe6: $00
    push af                                       ; $6fe7: $f5
    dec bc                                        ; $6fe8: $0b
    jp hl                                         ; $6fe9: $e9


    rla                                           ; $6fea: $17
    cp l                                          ; $6feb: $bd
    ld b, e                                       ; $6fec: $43
    ld e, l                                       ; $6fed: $5d
    and e                                         ; $6fee: $a3
    sub h                                         ; $6fef: $94
    or h                                          ; $6ff0: $b4
    ld [$e09f], sp                                ; $6ff1: $08 $9f $e0
    cp h                                          ; $6ff4: $bc
    ld [$00c0], sp                                ; $6ff5: $08 $c0 $00
    dec d                                         ; $6ff8: $15
    ld b, a                                       ; $6ff9: $47
    cp c                                          ; $6ffa: $b9
    nop                                           ; $6ffb: $00
    xor l                                         ; $6ffc: $ad
    ld [hl], e                                    ; $6ffd: $73
    ld h, e                                       ; $6ffe: $63
    cp [hl]                                       ; $6fff: $be
    cp [hl]                                       ; $7000: $be
    ld e, l                                       ; $7001: $5d
    push de                                       ; $7002: $d5
    ld a, [hl+]                                   ; $7003: $2a
    ret nz                                        ; $7004: $c0

Call_09a_7005:
    xor [hl]                                      ; $7005: $ae
    add hl, bc                                    ; $7006: $09
    and b                                         ; $7007: $a0
    ld bc, $22ae                                  ; $7008: $01 $ae $22
    push af                                       ; $700b: $f5
    ld d, c                                       ; $700c: $51
    db $eb                                        ; $700d: $eb
    xor b                                         ; $700e: $a8
    ld [$505f], sp                                ; $700f: $08 $5f $50
    cp a                                          ; $7012: $bf
    and b                                         ; $7013: $a0
    add hl, bc                                    ; $7014: $09
    dec b                                         ; $7015: $05
    xor d                                         ; $7016: $aa
    rst $38                                       ; $7017: $ff
    ld e, [hl]                                    ; $7018: $5e
    nop                                           ; $7019: $00
    and c                                         ; $701a: $a1
    xor l                                         ; $701b: $ad
    ld [hl], e                                    ; $701c: $73
    ld h, l                                       ; $701d: $65
    cp e                                          ; $701e: $bb
    cp a                                          ; $701f: $bf
    ld e, [hl]                                    ; $7020: $5e
    rst $38                                       ; $7021: $ff
    ld h, b                                       ; $7022: $60
    nop                                           ; $7023: $00
    jr nz, jr_09a_703e                            ; $7024: $20 $18

    ld b, h                                       ; $7026: $44
    ld [$43bd], sp                                ; $7027: $08 $bd $43
    ld a, l                                       ; $702a: $7d
    add e                                         ; $702b: $83
    db $fd                                        ; $702c: $fd
    jr nz, jr_09a_7032                            ; $702d: $20 $03

    ld bc, $1540                                  ; $702f: $01 $40 $15

jr_09a_7032:
    inc d                                         ; $7032: $14
    ld a, [$f78a]                                 ; $7033: $fa $8a $f7
    dec b                                         ; $7036: $05
    ld [$2aff], sp                                ; $7037: $08 $ff $2a
    ld [hl], l                                    ; $703a: $75
    ld d, l                                       ; $703b: $55
    inc [hl]                                      ; $703c: $34
    nop                                           ; $703d: $00

jr_09a_703e:
    ld b, b                                       ; $703e: $40
    cp d                                          ; $703f: $ba
    ld [hl+], a                                   ; $7040: $22
    ld b, h                                       ; $7041: $44
    rst $10                                       ; $7042: $d7
    cp h                                          ; $7043: $bc
    add hl, bc                                    ; $7044: $09
    inc b                                         ; $7045: $04
    rst $38                                       ; $7046: $ff
    jr nz, @+$46                                  ; $7047: $20 $44

    nop                                           ; $7049: $00
    adc b                                         ; $704a: $88
    ld a, l                                       ; $704b: $7d
    dec bc                                        ; $704c: $0b
    ld d, h                                       ; $704d: $54
    cp d                                          ; $704e: $ba
    adc d                                         ; $704f: $8a
    rst $10                                       ; $7050: $d7
    db $10                                        ; $7051: $10
    ld c, h                                       ; $7052: $4c

jr_09a_7053:
    inc bc                                        ; $7053: $03
    ld d, b                                       ; $7054: $50
    rrca                                          ; $7055: $0f
    ld b, c                                       ; $7056: $41
    ld b, d                                       ; $7057: $42
    ld [c], a                                     ; $7058: $e2
    ld d, a                                       ; $7059: $57
    rrca                                          ; $705a: $0f
    ld e, d                                       ; $705b: $5a
    rrca                                          ; $705c: $0f
    ld h, h                                       ; $705d: $64
    rrca                                          ; $705e: $0f
    ld a, [hl]                                    ; $705f: $7e
    add c                                         ; $7060: $81
    ld b, d                                       ; $7061: $42
    ld [bc], a                                    ; $7062: $02
    nop                                           ; $7063: $00
    inc a                                         ; $7064: $3c
    ld d, b                                       ; $7065: $50
    jp Jump_000_1810                              ; $7066: $c3 $10 $18


    rst $38                                       ; $7069: $ff
    ld e, h                                       ; $706a: $5c
    rlca                                          ; $706b: $07
    push de                                       ; $706c: $d5
    cp $7e                                        ; $706d: $fe $7e
    add c                                         ; $706f: $81
    ldh [rSCY], a                                 ; $7070: $e0 $42
    ld [bc], a                                    ; $7072: $02
    inc a                                         ; $7073: $3c
    inc b                                         ; $7074: $04
    ld [bc], a                                    ; $7075: $02
    jr c, @-$3d                                   ; $7076: $38 $c1

    nop                                           ; $7078: $00
    and c                                         ; $7079: $a1
    ret nz                                        ; $707a: $c0

    pop bc                                        ; $707b: $c1
    ld [hl], h                                    ; $707c: $74
    add b                                         ; $707d: $80
    inc b                                         ; $707e: $04
    ld c, b                                       ; $707f: $48
    push bc                                       ; $7080: $c5
    dec d                                         ; $7081: $15
    sbc b                                         ; $7082: $98
    rlca                                          ; $7083: $07
    push de                                       ; $7084: $d5
    cp b                                          ; $7085: $b8
    rlca                                          ; $7086: $07
    add hl, bc                                    ; $7087: $09
    rst $38                                       ; $7088: $ff
    ld h, b                                       ; $7089: $60
    ld [de], a                                    ; $708a: $12
    rrca                                          ; $708b: $0f
    jr z, jr_09a_7053                             ; $708c: $28 $c5

    dec b                                         ; $708e: $05
    ld a, [bc]                                    ; $708f: $0a
    rst $38                                       ; $7090: $ff
    ld d, a                                       ; $7091: $57
    rst $38                                       ; $7092: $ff
    adc [hl]                                      ; $7093: $8e
    ret nz                                        ; $7094: $c0

    db $10                                        ; $7095: $10
    ld b, b                                       ; $7096: $40
    jr nz, jr_09a_70b1                            ; $7097: $20 $18

    ld [hl], h                                    ; $7099: $74
    rst $38                                       ; $709a: $ff
    jp c, Jump_09a_55ff                           ; $709b: $da $ff $55

    xor d                                         ; $709e: $aa
    nop                                           ; $709f: $00
    xor e                                         ; $70a0: $ab
    ld [hl], h                                    ; $70a1: $74
    rst $10                                       ; $70a2: $d7

jr_09a_70a3:
    jr z, jr_09a_7114                             ; $70a3: $28 $6f

    sub b                                         ; $70a5: $90
    db $fc                                        ; $70a6: $fc
    inc bc                                        ; $70a7: $03
    inc b                                         ; $70a8: $04
    rst $38                                       ; $70a9: $ff
    nop                                           ; $70aa: $00
    jr @+$01                                      ; $70ab: $18 $ff

    sub h                                         ; $70ad: $94
    stop                                          ; $70ae: $10 $00
    push af                                       ; $70b0: $f5

jr_09a_70b1:
    ld a, [bc]                                    ; $70b1: $0a
    nop                                           ; $70b2: $00
    xor d                                         ; $70b3: $aa
    ld d, a                                       ; $70b4: $57
    ld [hl], l                                    ; $70b5: $75
    adc [hl]                                      ; $70b6: $8e
    rst $20                                       ; $70b7: $e7
    jr @+$01                                      ; $70b8: $18 $ff

    nop                                           ; $70ba: $00
    ld bc, $00d6                                  ; $70bb: $01 $d6 $00
    xor l                                         ; $70be: $ad
    db $10                                        ; $70bf: $10
    jp c, $d720                                   ; $70c0: $da $20 $d7

    pop af                                        ; $70c3: $f1
    rlca                                          ; $70c4: $07
    nop                                           ; $70c5: $00
    ld d, l                                       ; $70c6: $55
    nop                                           ; $70c7: $00
    xor d                                         ; $70c8: $aa
    nop                                           ; $70c9: $00
    push de                                       ; $70ca: $d5
    nop                                           ; $70cb: $00
    xor l                                         ; $70cc: $ad
    nop                                           ; $70cd: $00
    dec b                                         ; $70ce: $05
    ld e, a                                       ; $70cf: $5f
    nop                                           ; $70d0: $00
    cp d                                          ; $70d1: $ba
    nop                                           ; $70d2: $00
    push af                                       ; $70d3: $f5
    db $10                                        ; $70d4: $10
    ld [$1020], sp                                ; $70d5: $08 $20 $10
    ld [$ee01], sp                                ; $70d8: $08 $01 $ee
    nop                                           ; $70db: $00
    ld d, c                                       ; $70dc: $51
    ld [bc], a                                    ; $70dd: $02
    xor a                                         ; $70de: $af
    nop                                           ; $70df: $00
    ld e, [hl]                                    ; $70e0: $5e
    ld [hl], d                                    ; $70e1: $72
    inc b                                         ; $70e2: $04
    nop                                           ; $70e3: $00
    ld e, d                                       ; $70e4: $5a
    nop                                           ; $70e5: $00
    push af                                       ; $70e6: $f5
    ld [bc], a                                    ; $70e7: $02
    db $db                                        ; $70e8: $db
    inc b                                         ; $70e9: $04
    push de                                       ; $70ea: $d5
    ld [bc], a                                    ; $70eb: $02
    inc b                                         ; $70ec: $04

jr_09a_70ed:
    xor d                                         ; $70ed: $aa
    nop                                           ; $70ee: $00
    ld e, l                                       ; $70ef: $5d
    nop                                           ; $70f0: $00
    ld a, [$0482]                                 ; $70f1: $fa $82 $04
    push de                                       ; $70f4: $d5
    nop                                           ; $70f5: $00
    jr jr_09a_70a3                                ; $70f6: $18 $ab

    nop                                           ; $70f8: $00
    ld d, a                                       ; $70f9: $57
    ld b, l                                       ; $70fa: $45
    add hl, de                                    ; $70fb: $19
    ld hl, sp+$07                                 ; $70fc: $f8 $07
    ld e, l                                       ; $70fe: $5d
    rst $38                                       ; $70ff: $ff
    ld sp, hl                                     ; $7100: $f9
    sub b                                         ; $7101: $90
    ret nc                                        ; $7102: $d0

    rlca                                          ; $7103: $07
    dec sp                                        ; $7104: $3b
    db $fd                                        ; $7105: $fd
    ld [hl], b                                    ; $7106: $70
    jr jr_09a_7188                                ; $7107: $18 $7f

    add b                                         ; $7109: $80
    or $09                                        ; $710a: $f6 $09
    nop                                           ; $710c: $00
    db $ed                                        ; $710d: $ed
    ld [de], a                                    ; $710e: $12
    adc e                                         ; $710f: $8b
    ld [hl], h                                    ; $7110: $74
    rst $38                                       ; $7111: $ff
    nop                                           ; $7112: $00
    cp l                                          ; $7113: $bd

jr_09a_7114:
    rst $38                                       ; $7114: $ff
    nop                                           ; $7115: $00
    ld e, a                                       ; $7116: $5f
    ld sp, hl                                     ; $7117: $f9
    ld b, $f9                                     ; $7118: $06 $f9
    ld e, e                                       ; $711a: $5b
    db $fd                                        ; $711b: $fd
    xor h                                         ; $711c: $ac
    ld a, c                                       ; $711d: $79
    nop                                           ; $711e: $00
    db $db                                        ; $711f: $db
    dec a                                         ; $7120: $3d
    ld c, b                                       ; $7121: $48
    cp c                                          ; $7122: $b9
    ldh [rNR24], a                                ; $7123: $e0 $19
    ld d, l                                       ; $7125: $55
    nop                                           ; $7126: $00
    ld d, c                                       ; $7127: $51
    xor [hl]                                      ; $7128: $ae
    ld b, b                                       ; $7129: $40
    nop                                           ; $712a: $00
    cp e                                          ; $712b: $bb
    jp nz, $bd04                                  ; $712c: $c2 $04 $bd

    nop                                           ; $712f: $00
    ld [$0112], a                                 ; $7130: $ea $12 $01
    nop                                           ; $7133: $00
    and h                                         ; $7134: $a4
    ld e, c                                       ; $7135: $59
    ld d, b                                       ; $7136: $50
    add hl, hl                                    ; $7137: $29
    and h                                         ; $7138: $a4
    add hl, de                                    ; $7139: $19
    ldh a, [$09]                                  ; $713a: $f0 $09
    dec l                                         ; $713c: $2d
    ldh [rNR24], a                                ; $713d: $e0 $19
    ld a, [bc]                                    ; $713f: $0a
    jr jr_09a_70ed                                ; $7140: $18 $ab

    inc h                                         ; $7142: $24
    add hl, bc                                    ; $7143: $09
    ld a, $05                                     ; $7144: $3e $05
    add b                                         ; $7146: $80
    ld b, h                                       ; $7147: $44
    dec b                                         ; $7148: $05
    db $10                                        ; $7149: $10
    rst $38                                       ; $714a: $ff
    nop                                           ; $714b: $00
    ld [bc], a                                    ; $714c: $02
    ld h, h                                       ; $714d: $64
    nop                                           ; $714e: $00
    rst $38                                       ; $714f: $ff
    nop                                           ; $7150: $00
    ld d, h                                       ; $7151: $54
    jr nz, jr_09a_7159                            ; $7152: $20 $05

    jr z, jr_09a_7156                             ; $7154: $28 $00

jr_09a_7156:
    sub b                                         ; $7156: $90
    nop                                           ; $7157: $00
    inc bc                                        ; $7158: $03

jr_09a_7159:
    or $04                                        ; $7159: $f6 $04
    and b                                         ; $715b: $a0
    sbc h                                         ; $715c: $9c
    nop                                           ; $715d: $00
    nop                                           ; $715e: $00
    rst $38                                       ; $715f: $ff
    nop                                           ; $7160: $00
    ld a, [bc]                                    ; $7161: $0a
    nop                                           ; $7162: $00
    ld d, l                                       ; $7163: $55
    ld [bc], a                                    ; $7164: $02
    adc d                                         ; $7165: $8a
    inc b                                         ; $7166: $04
    ld d, h                                       ; $7167: $54
    jr jr_09a_7170                                ; $7168: $18 $06

    dec b                                         ; $716a: $05
    ld a, [hl+]                                   ; $716b: $2a
    ld c, $05                                     ; $716c: $0e $05
    rst $38                                       ; $716e: $ff
    adc h                                         ; $716f: $8c

jr_09a_7170:
    inc b                                         ; $7170: $04
    add hl, bc                                    ; $7171: $09
    nop                                           ; $7172: $00
    db $10                                        ; $7173: $10
    ld [de], a                                    ; $7174: $12
    nop                                           ; $7175: $00
    ld [hl], h                                    ; $7176: $74
    ld a, [hl-]                                   ; $7177: $3a
    db $10                                        ; $7178: $10
    dec d                                         ; $7179: $15
    nop                                           ; $717a: $00
    and d                                         ; $717b: $a2
    ld bc, $4641                                  ; $717c: $01 $41 $46
    ld b, h                                       ; $717f: $44
    ld b, b                                       ; $7180: $40
    ld b, d                                       ; $7181: $42
    add b                                         ; $7182: $80
    add h                                         ; $7183: $84
    nop                                           ; $7184: $00
    dec e                                         ; $7185: $1d
    ld b, h                                       ; $7186: $44
    ld b, b                                       ; $7187: $40

jr_09a_7188:
    ld a, c                                       ; $7188: $79
    ld d, b                                       ; $7189: $50
    cp b                                          ; $718a: $b8
    inc d                                         ; $718b: $14
    ld b, h                                       ; $718c: $44
    jr c, jr_09a_71b8                             ; $718d: $38 $29

    inc de                                        ; $718f: $13
    ld b, h                                       ; $7190: $44
    ld b, b                                       ; $7191: $40
    xor d                                         ; $7192: $aa
    nop                                           ; $7193: $00
    ld l, $01                                     ; $7194: $2e $01
    nop                                           ; $7196: $00
    cp $f5                                        ; $7197: $fe $f5
    ld a, [c]                                     ; $7199: $f2
    rst $00                                       ; $719a: $c7
    ei                                            ; $719b: $fb
    sbc l                                         ; $719c: $9d
    ld l, l                                       ; $719d: $6d
    ret nc                                        ; $719e: $d0

    db $10                                        ; $719f: $10
    jr nc, jr_09a_71a2                            ; $71a0: $30 $00

jr_09a_71a2:
    db $d3                                        ; $71a2: $d3
    stop                                          ; $71a3: $10 $00
    ld a, [hl+]                                   ; $71a5: $2a
    ld b, b                                       ; $71a6: $40
    or h                                          ; $71a7: $b4
    db $d3                                        ; $71a8: $d3
    nop                                           ; $71a9: $00
    sra l                                         ; $71aa: $cb $2d
    adc a                                         ; $71ac: $8f
    inc a                                         ; $71ad: $3c

jr_09a_71ae:
    ccf                                           ; $71ae: $3f
    xor a                                         ; $71af: $af
    rst $38                                       ; $71b0: $ff
    reti                                          ; $71b1: $d9


    ld b, b                                       ; $71b2: $40
    db $fc                                        ; $71b3: $fc
    jr nz, @+$0a                                  ; $71b4: $20 $08

    ld a, [hl+]                                   ; $71b6: $2a
    rst $38                                       ; $71b7: $ff

jr_09a_71b8:
    ld c, h                                       ; $71b8: $4c
    rst $38                                       ; $71b9: $ff
    jr @+$01                                      ; $71ba: $18 $ff

    ld [bc], a                                    ; $71bc: $02
    jp nc, Jump_09a_49ff                          ; $71bd: $d2 $ff $49

    ld a, [hl]                                    ; $71c0: $7e
    ld [hl-], a                                   ; $71c1: $32
    ld sp, $1030                                  ; $71c2: $31 $30 $10
    db $fc                                        ; $71c5: $fc
    ret c                                         ; $71c6: $d8

    jr nc, jr_09a_7201                            ; $71c7: $30 $38

    ret nz                                        ; $71c9: $c0

    ld [$1ca8], sp                                ; $71ca: $08 $a8 $1c
    inc b                                         ; $71cd: $04
    ld d, [hl]                                    ; $71ce: $56
    jr jr_09a_7225                                ; $71cf: $18 $54

    jr nz, @-$0e                                  ; $71d1: $20 $f0

    ld [bc], a                                    ; $71d3: $02
    add hl, bc                                    ; $71d4: $09
    ldh a, [$09]                                  ; $71d5: $f0 $09
    inc b                                         ; $71d7: $04
    add hl, de                                    ; $71d8: $19
    db $10                                        ; $71d9: $10
    inc b                                         ; $71da: $04
    nop                                           ; $71db: $00
    or b                                          ; $71dc: $b0
    sbc a                                         ; $71dd: $9f
    db $e4                                        ; $71de: $e4
    nop                                           ; $71df: $00
    inc b                                         ; $71e0: $04
    add hl, de                                    ; $71e1: $19
    jp z, $da08                                   ; $71e2: $ca $08 $da

    ld [$2824], sp                                ; $71e5: $08 $24 $28
    ld a, [de]                                    ; $71e8: $1a
    jr c, jr_09a_720f                             ; $71e9: $38 $24

    jr jr_09a_71ae                                ; $71eb: $18 $c1

    add b                                         ; $71ed: $80
    ld [$4870], sp                                ; $71ee: $08 $70 $48
    xor c                                         ; $71f1: $a9
    rrca                                          ; $71f2: $0f
    ld d, l                                       ; $71f3: $55
    xor d                                         ; $71f4: $aa
    xor d                                         ; $71f5: $aa
    ld [hl], b                                    ; $71f6: $70
    ld b, b                                       ; $71f7: $40
    db $10                                        ; $71f8: $10

jr_09a_71f9:
    ld a, $c1                                     ; $71f9: $3e $c1
    add c                                         ; $71fb: $81
    ld b, b                                       ; $71fc: $40
    ld d, d                                       ; $71fd: $52
    ldh [$9f], a                                  ; $71fe: $e0 $9f
    rst $08                                       ; $7200: $cf

jr_09a_7201:
    ccf                                           ; $7201: $3f
    ld bc, $bfcf                                  ; $7202: $01 $cf $bf
    rst $08                                       ; $7205: $cf
    ccf                                           ; $7206: $3f
    ret z                                         ; $7207: $c8

    cp a                                          ; $7208: $bf
    ret z                                         ; $7209: $c8

    inc b                                         ; $720a: $04
    db $10                                        ; $720b: $10
    call c, Call_000_2991                         ; $720c: $dc $91 $29

jr_09a_720f:
    ret z                                         ; $720f: $c8

    inc hl                                        ; $7210: $23
    rst $38                                       ; $7211: $ff
    jr jr_09a_723c                                ; $7212: $18 $28

    jr nz, jr_09a_724e                            ; $7214: $20 $38

    ld [bc], a                                    ; $7216: $02
    ld e, b                                       ; $7217: $58
    ld b, $f9                                     ; $7218: $06 $f9
    nop                                           ; $721a: $00
    di                                            ; $721b: $f3
    db $fc                                        ; $721c: $fc
    ld a, [c]                                     ; $721d: $f2
    db $fd                                        ; $721e: $fd
    di                                            ; $721f: $f3
    db $fc                                        ; $7220: $fc
    ld d, d                                       ; $7221: $52
    db $fd                                        ; $7222: $fd
    ld h, b                                       ; $7223: $60
    inc sp                                        ; $7224: $33

jr_09a_7225:
    inc b                                         ; $7225: $04
    sub b                                         ; $7226: $90
    ld e, b                                       ; $7227: $58
    jr z, jr_09a_71f9                             ; $7228: $28 $cf

    cp a                                          ; $722a: $bf
    ret nc                                        ; $722b: $d0

    cpl                                           ; $722c: $2f
    ldh [rSVBK], a                                ; $722d: $e0 $70
    sbc a                                         ; $722f: $9f
    ret nz                                        ; $7230: $c0

    ld a, [de]                                    ; $7231: $1a
    call nz, $ae2a                                ; $7232: $c4 $2a $ae
    ld a, [bc]                                    ; $7235: $0a
    rst $38                                       ; $7236: $ff
    ld a, [hl+]                                   ; $7237: $2a
    ret nz                                        ; $7238: $c0

    ccf                                           ; $7239: $3f
    nop                                           ; $723a: $00
    ld [c], a                                     ; $723b: $e2

jr_09a_723c:
    ccf                                           ; $723c: $3f
    rst $00                                       ; $723d: $c7
    dec a                                         ; $723e: $3d
    ld l, a                                       ; $723f: $6f
    cp d                                          ; $7240: $ba
    rst $18                                       ; $7241: $df
    inc [hl]                                      ; $7242: $34
    ld [bc], a                                    ; $7243: $02
    ld [hl], a                                    ; $7244: $77
    xor e                                         ; $7245: $ab
    rst $08                                       ; $7246: $cf
    inc sp                                        ; $7247: $33
    rst $38                                       ; $7248: $ff
    xor d                                         ; $7249: $aa
    jr nz, @+$2a                                  ; $724a: $20 $28

    rst $38                                       ; $724c: $ff
    inc b                                         ; $724d: $04

jr_09a_724e:
    nop                                           ; $724e: $00
    ld a, [c]                                     ; $724f: $f2
    ei                                            ; $7250: $fb
    rst $30                                       ; $7251: $f7
    ldh a, [rNR10]                                ; $7252: $f0 $10
    ld c, b                                       ; $7254: $48
    ld l, h                                       ; $7255: $6c
    db $ec                                        ; $7256: $ec
    ld [bc], a                                    ; $7257: $02
    reti                                          ; $7258: $d9


    reti                                          ; $7259: $d9


    ld h, a                                       ; $725a: $67
    cp e                                          ; $725b: $bb
    ld b, a                                       ; $725c: $47
    cp e                                          ; $725d: $bb
    inc b                                         ; $725e: $04
    ld [$4066], sp                                ; $725f: $08 $66 $40
    cp d                                          ; $7262: $ba
    ld [$ea18], sp                                ; $7263: $08 $18 $ea
    db $ed                                        ; $7266: $ed
    db $db                                        ; $7267: $db
    call c, $bcba                                 ; $7268: $dc $ba $bc
    nop                                           ; $726b: $00
    ld a, c                                       ; $726c: $79
    ld a, h                                       ; $726d: $7c
    ei                                            ; $726e: $fb
    ld hl, sp-$0e                                 ; $726f: $f8 $f2
    db $f4                                        ; $7271: $f4
    db $e4                                        ; $7272: $e4
    add sp, $00                                   ; $7273: $e8 $00
    pop de                                        ; $7275: $d1
    ret c                                         ; $7276: $d8

    or e                                          ; $7277: $b3
    or e                                          ; $7278: $b3
    ld h, a                                       ; $7279: $67
    ld h, a                                       ; $727a: $67
    rst $08                                       ; $727b: $cf
    rst $08                                       ; $727c: $cf
    nop                                           ; $727d: $00

jr_09a_727e:
    sbc a                                         ; $727e: $9f
    sbc a                                         ; $727f: $9f
    ccf                                           ; $7280: $3f
    ccf                                           ; $7281: $3f
    ld a, a                                       ; $7282: $7f
    ld a, a                                       ; $7283: $7f
    ld a, a                                       ; $7284: $7f
    rst $38                                       ; $7285: $ff
    jr nz, @+$01                                  ; $7286: $20 $ff

    ld a, a                                       ; $7288: $7f
    sbc b                                         ; $7289: $98
    jr z, jr_09a_727e                             ; $728a: $28 $f2

    db $fd                                        ; $728c: $fd
    dec bc                                        ; $728d: $0b
    db $f4                                        ; $728e: $f4
    ld b, $78                                     ; $728f: $06 $78
    ld sp, hl                                     ; $7291: $f9
    db $eb                                        ; $7292: $eb
    inc b                                         ; $7293: $04
    ld h, b                                       ; $7294: $60
    ld b, b                                       ; $7295: $40
    ld a, a                                       ; $7296: $7f
    rla                                           ; $7297: $17
    ld [hl], b                                    ; $7298: $70
    ld b, b                                       ; $7299: $40
    ld a, [$f4fa]                                 ; $729a: $fa $fa $f4
    nop                                           ; $729d: $00
    db $f4                                        ; $729e: $f4
    rst $38                                       ; $729f: $ff
    xor b                                         ; $72a0: $a8
    inc bc                                        ; $72a1: $03
    db $fc                                        ; $72a2: $fc
    ld b, a                                       ; $72a3: $47
    db $fc                                        ; $72a4: $fc
    db $e3                                        ; $72a5: $e3
    nop                                           ; $72a6: $00
    cp h                                          ; $72a7: $bc
    or $5d                                        ; $72a8: $f6 $5d
    ei                                            ; $72aa: $fb
    inc l                                         ; $72ab: $2c
    ld l, [hl]                                    ; $72ac: $6e
    ld d, l                                       ; $72ad: $55
    di                                            ; $72ae: $f3
    ld b, d                                       ; $72af: $42
    call z, $2b30                                 ; $72b0: $cc $30 $2b
    cp $fe                                        ; $72b3: $fe $fe
    db $fd                                        ; $72b5: $fd
    db $fd                                        ; $72b6: $fd
    jr nz, jr_09a_72c1                            ; $72b7: $20 $08

    jp hl                                         ; $72b9: $e9


    nop                                           ; $72ba: $00
    jp hl                                         ; $72bb: $e9


    db $d3                                        ; $72bc: $d3
    db $d3                                        ; $72bd: $d3
    and l                                         ; $72be: $a5
    and e                                         ; $72bf: $a3
    rrca                                          ; $72c0: $0f

jr_09a_72c1:
    ld b, b                                       ; $72c1: $40
    rra                                           ; $72c2: $1f
    nop                                           ; $72c3: $00
    add b                                         ; $72c4: $80
    ccf                                           ; $72c5: $3f
    nop                                           ; $72c6: $00
    ld e, a                                       ; $72c7: $5f
    ld h, b                                       ; $72c8: $60
    db $ed                                        ; $72c9: $ed
    sbc $e6                                       ; $72ca: $de $e6
    nop                                           ; $72cc: $00
    db $dd                                        ; $72cd: $dd
    ld [c], a                                     ; $72ce: $e2
    db $dd                                        ; $72cf: $dd
    and $dd                                       ; $72d0: $e6 $dd
    ld h, d                                       ; $72d2: $62
    db $dd                                        ; $72d3: $dd
    and [hl]                                      ; $72d4: $a6
    inc d                                         ; $72d5: $14
    ld e, l                                       ; $72d6: $5d
    and d                                         ; $72d7: $a2
    ld e, l                                       ; $72d8: $5d
    inc b                                         ; $72d9: $04
    nop                                           ; $72da: $00
    dec e                                         ; $72db: $1d
    sbc h                                         ; $72dc: $9c
    jr c, @+$48                                   ; $72dd: $38 $46

    cp d                                          ; $72df: $ba
    add b                                         ; $72e0: $80
    and h                                         ; $72e1: $a4
    ld [$b0b3], sp                                ; $72e2: $08 $b3 $b0
    ld h, a                                       ; $72e5: $67
    ld h, b                                       ; $72e6: $60
    rst $00                                       ; $72e7: $c7
    ret z                                         ; $72e8: $c8

    adc a                                         ; $72e9: $8f
    nop                                           ; $72ea: $00
    sub b                                         ; $72eb: $90
    rra                                           ; $72ec: $1f
    jr nz, jr_09a_734e                            ; $72ed: $20 $5f

    ld h, b                                       ; $72ef: $60
    rst $08                                       ; $72f0: $cf
    ldh a, [$db]                                  ; $72f1: $f0 $db
    ld b, b                                       ; $72f3: $40
    db $e4                                        ; $72f4: $e4
    sub h                                         ; $72f5: $94
    ld [$7fff], sp                                ; $72f6: $08 $ff $7f
    cp a                                          ; $72f9: $bf
    ld a, a                                       ; $72fa: $7f
    sbc $3e                                       ; $72fb: $de $3e
    nop                                           ; $72fd: $00
    db $fd                                        ; $72fe: $fd
    inc e                                         ; $72ff: $1c
    ld a, [$d418]                                 ; $7300: $fa $18 $d4
    inc [hl]                                      ; $7303: $34
    ld h, [hl]                                    ; $7304: $66
    cp e                                          ; $7305: $bb
    nop                                           ; $7306: $00
    ld b, l                                       ; $7307: $45
    cp e                                          ; $7308: $bb
    and $3b                                       ; $7309: $e6 $3b
    ld b, h                                       ; $730b: $44
    cp e                                          ; $730c: $bb
    xor $3b                                       ; $730d: $ee $3b

jr_09a_730f:
    nop                                           ; $730f: $00
    ld e, h                                       ; $7310: $5c
    or e                                          ; $7311: $b3
    db $f4                                        ; $7312: $f4
    dec hl                                        ; $7313: $2b
    swap h                                        ; $7314: $cb $34
    and l                                         ; $7316: $a5
    ld a, [$5011]                                 ; $7317: $fa $11 $50
    rst $38                                       ; $731a: $ff
    xor a                                         ; $731b: $af
    and a                                         ; $731c: $a7
    ld [$00fe], sp                                ; $731d: $08 $fe $00
    db $fd                                        ; $7320: $fd
    adc $0b                                       ; $7321: $ce $0b
    nop                                           ; $7323: $00
    jr z, jr_09a_730f                             ; $7324: $28 $e9

    ld d, c                                       ; $7326: $51
    jp nc, $afac                                  ; $7327: $d2 $ac $af

    dec b                                         ; $732a: $05
    ld e, [hl]                                    ; $732b: $5e
    db $10                                        ; $732c: $10
    xor d                                         ; $732d: $aa
    cp a                                          ; $732e: $bf
    ld bc, $05f0                                  ; $732f: $01 $f0 $05
    rst $38                                       ; $7332: $ff
    nop                                           ; $7333: $00
    push hl                                       ; $7334: $e5
    ld a, [hl-]                                   ; $7335: $3a
    ld [bc], a                                    ; $7336: $02
    jp nz, $e03d                                  ; $7337: $c2 $3d $e0

    ccf                                           ; $733a: $3f
    ret nz                                        ; $733b: $c0

    ccf                                           ; $733c: $3f
    inc b                                         ; $733d: $04
    jr @+$81                                      ; $733e: $18 $7f

    rst $20                                       ; $7340: $e7
    and $24                                       ; $7341: $e6 $24
    ld d, [hl]                                    ; $7343: $56
    ld c, c                                       ; $7344: $49
    ld e, a                                       ; $7345: $5f
    nop                                           ; $7346: $00
    add b                                         ; $7347: $80
    ld a, a                                       ; $7348: $7f
    xor d                                         ; $7349: $aa
    ld b, $2a                                     ; $734a: $06 $2a
    inc e                                         ; $734c: $1c
    or b                                          ; $734d: $b0

jr_09a_734e:
    ld [$a700], sp                                ; $734e: $08 $00 $a7
    and a                                         ; $7351: $a7
    ld c, a                                       ; $7352: $4f
    ld c, a                                       ; $7353: $4f
    sbc a                                         ; $7354: $9f
    rrca                                          ; $7355: $0f
    ld a, $27                                     ; $7356: $3e $27
    nop                                           ; $7358: $00
    ld a, [hl]                                    ; $7359: $7e
    ld [hl], a                                    ; $735a: $77
    rst $30                                       ; $735b: $f7
    rst $28                                       ; $735c: $ef
    rra                                           ; $735d: $1f
    cp $6a                                        ; $735e: $fe $6a
    call c, $dd00                                 ; $7360: $dc $00 $dd
    and b                                         ; $7363: $a0
    ld a, c                                       ; $7364: $79
    jp nz, Jump_09a_64f2                          ; $7365: $c2 $f2 $64

    ld c, h                                       ; $7368: $4c
    and b                                         ; $7369: $a0
    inc b                                         ; $736a: $04
    sbc b                                         ; $736b: $98
    ret nz                                        ; $736c: $c0

    or c                                          ; $736d: $b1
    and c                                         ; $736e: $a1
    ld h, $b8                                     ; $736f: $26 $b8
    ld [$221d], sp                                ; $7371: $08 $1d $22
    ld [bc], a                                    ; $7374: $02
    dec e                                         ; $7375: $1d
    ld h, $1d                                     ; $7376: $26 $1d
    ld h, d                                       ; $7378: $62
    ld e, l                                       ; $7379: $5d
    and [hl]                                      ; $737a: $a6
    call z, $fe00                                 ; $737b: $cc $00 $fe
    nop                                           ; $737e: $00
    rlca                                          ; $737f: $07
    ld [hl], h                                    ; $7380: $74
    adc [hl]                                      ; $7381: $8e
    db $fc                                        ; $7382: $fc
    dec b                                         ; $7383: $05
    ld [hl], b                                    ; $7384: $70
    adc e                                         ; $7385: $8b
    and d                                         ; $7386: $a2
    db $10                                        ; $7387: $10
    ld d, [hl]                                    ; $7388: $56
    ldh [$ed], a                                  ; $7389: $e0 $ed
    ld c, [hl]                                    ; $738b: $4e
    inc c                                         ; $738c: $0c
    ld h, d                                       ; $738d: $62
    ld h, e                                       ; $738e: $63
    ld b, l                                       ; $738f: $45
    rst $08                                       ; $7390: $cf
    dec b                                         ; $7391: $05
    adc d                                         ; $7392: $8a
    sbc a                                         ; $7393: $9f
    nop                                           ; $7394: $00
    ccf                                           ; $7395: $3f
    xor d                                         ; $7396: $aa
    or b                                          ; $7397: $b0
    ld hl, $eca6                                  ; $7398: $21 $a6 $ec
    nop                                           ; $739b: $00
    nop                                           ; $739c: $00
    and a                                         ; $739d: $a7
    call c, $dd22                                 ; $739e: $dc $22 $dd
    or a                                          ; $73a1: $b7
    call c, $cd3a                                 ; $73a2: $dc $3a $cd
    nop                                           ; $73a5: $00
    cpl                                           ; $73a6: $2f
    call nc, $2cd3                                ; $73a7: $d4 $d3 $2c
    inc d                                         ; $73aa: $14
    db $eb                                        ; $73ab: $eb
    add b                                         ; $73ac: $80
    ld e, l                                       ; $73ad: $5d
    ld de, $be00                                  ; $73ae: $11 $00 $be
    nop                                           ; $73b1: $00
    and b                                         ; $73b2: $a0
    ld b, $08                                     ; $73b3: $06 $08
    ld [hl], a                                    ; $73b5: $77
    inc d                                         ; $73b6: $14
    and b                                         ; $73b7: $a0
    ld c, $81                                     ; $73b8: $0e $81
    pop af                                        ; $73ba: $f1
    ld l, $01                                     ; $73bb: $2e $01
    ld bc, $0302                                  ; $73bd: $01 $02 $03
    inc b                                         ; $73c0: $04
    rlca                                          ; $73c1: $07
    ld c, h                                       ; $73c2: $4c
    ld l, $00                                     ; $73c3: $2e $00
    nop                                           ; $73c5: $00
    nop                                           ; $73c6: $00
    ldh a, [$f0]                                  ; $73c7: $f0 $f0
    ld [$6498], sp                                ; $73c9: $08 $98 $64
    ld l, [hl]                                    ; $73cc: $6e
    nop                                           ; $73cd: $00
    ld a, [c]                                     ; $73ce: $f2
    ld de, $2aff                                  ; $73cf: $11 $ff $2a
    rst $38                                       ; $73d2: $ff
    ld d, b                                       ; $73d3: $50
    rst $38                                       ; $73d4: $ff
    add d                                         ; $73d5: $82
    nop                                           ; $73d6: $00
    rst $30                                       ; $73d7: $f7
    ld b, b                                       ; $73d8: $40
    db $eb                                        ; $73d9: $eb
    ld a, [bc]                                    ; $73da: $0a
    ld e, l                                       ; $73db: $5d
    dec d                                         ; $73dc: $15
    ld a, [$1caa]                                 ; $73dd: $fa $aa $1c
    rst $10                                       ; $73e0: $d7
    sbc d                                         ; $73e1: $9a
    ldh a, [$30]                                  ; $73e2: $f0 $30
    ld [hl], e                                    ; $73e4: $73
    or b                                          ; $73e5: $b0
    ld d, d                                       ; $73e6: $52
    ld b, b                                       ; $73e7: $40
    ld d, a                                       ; $73e8: $57
    nop                                           ; $73e9: $00
    nop                                           ; $73ea: $00
    nop                                           ; $73eb: $00
    rrca                                          ; $73ec: $0f
    ld c, $11                                     ; $73ed: $0e $11
    ld c, $11                                     ; $73ef: $0e $11
    ld e, $21                                     ; $73f1: $1e $21
    ld e, $00                                     ; $73f3: $1e $00
    ld hl, $201f                                  ; $73f5: $21 $1f $20
    ccf                                           ; $73f8: $3f
    ld b, b                                       ; $73f9: $40
    ld a, $41                                     ; $73fa: $3e $41
    ld a, a                                       ; $73fc: $7f
    nop                                           ; $73fd: $00
    ret nz                                        ; $73fe: $c0

    rrca                                          ; $73ff: $0f
    db $10                                        ; $7400: $10
    rla                                           ; $7401: $17
    jr z, jr_09a_7433                             ; $7402: $28 $2f

    jr nc, jr_09a_742b                            ; $7404: $30 $25

    nop                                           ; $7406: $00
    ld a, [hl-]                                   ; $7407: $3a
    ld [de], a                                    ; $7408: $12
    dec e                                         ; $7409: $1d
    ld [$040f], sp                                ; $740a: $08 $0f $04
    rlca                                          ; $740d: $07
    rlca                                          ; $740e: $07
    ld bc, $7e07                                  ; $740f: $01 $07 $7e
    pop bc                                        ; $7412: $c1
    db $dd                                        ; $7413: $dd
    ld h, d                                       ; $7414: $62
    xor [hl]                                      ; $7415: $ae
    ld [hl], c                                    ; $7416: $71
    ld [$0003], a                                 ; $7417: $ea $03 $00
    ld e, a                                       ; $741a: $5f
    inc bc                                        ; $741b: $03
    rst $38                                       ; $741c: $ff
    rra                                           ; $741d: $1f
    rst $38                                       ; $741e: $ff
    rst $20                                       ; $741f: $e7
    rst $38                                       ; $7420: $ff
    dec b                                         ; $7421: $05
    ld b, b                                       ; $7422: $40
    xor [hl]                                      ; $7423: $ae
    ld l, h                                       ; $7424: $6c
    dec b                                         ; $7425: $05
    ei                                            ; $7426: $fb
    xor d                                         ; $7427: $aa
    ld e, l                                       ; $7428: $5d
    dec d                                         ; $7429: $15
    cp d                                          ; $742a: $ba

jr_09a_742b:
    xor d                                         ; $742b: $aa
    jr nz, @-$27                                  ; $742c: $20 $d7

    ld d, h                                       ; $742e: $54
    sub b                                         ; $742f: $90
    rra                                           ; $7430: $1f
    db $10                                        ; $7431: $10
    db $10                                        ; $7432: $10

jr_09a_7433:
    jr z, jr_09a_744d                             ; $7433: $28 $18

    ld h, h                                       ; $7435: $64
    nop                                           ; $7436: $00
    ld a, [$de97]                                 ; $7437: $fa $97 $de
    db $e3                                        ; $743a: $e3
    cp l                                          ; $743b: $bd
    add $4f                                       ; $743c: $c6 $4f
    ld [hl], h                                    ; $743e: $74
    nop                                           ; $743f: $00
    dec b                                         ; $7440: $05
    rlca                                          ; $7441: $07
    add hl, bc                                    ; $7442: $09
    rrca                                          ; $7443: $0f
    ld a, [bc]                                    ; $7444: $0a
    dec c                                         ; $7445: $0d
    rrca                                          ; $7446: $0f
    ld hl, sp+$00                                 ; $7447: $f8 $00
    ld a, a                                       ; $7449: $7f
    adc b                                         ; $744a: $88
    xor a                                         ; $744b: $af
    ld e, b                                       ; $744c: $58

jr_09a_744d:
    ei                                            ; $744d: $fb
    inc c                                         ; $744e: $0c
    ld sp, hl                                     ; $744f: $f9
    ld c, $00                                     ; $7450: $0e $00
    sbc $e3                                       ; $7452: $de $e3
    dec a                                         ; $7454: $3d
    rst $00                                       ; $7455: $c7
    ld a, c                                       ; $7456: $79
    add a                                         ; $7457: $87
    ld [hl], a                                    ; $7458: $77
    adc [hl]                                      ; $7459: $8e
    nop                                           ; $745a: $00
    xor a                                         ; $745b: $af
    ret c                                         ; $745c: $d8

    sbc a                                         ; $745d: $9f
    cp $76                                        ; $745e: $fe $76
    ld sp, hl                                     ; $7460: $f9
    ld [hl], c                                    ; $7461: $71
    rst $38                                       ; $7462: $ff
    nop                                           ; $7463: $00
    scf                                           ; $7464: $37
    inc a                                         ; $7465: $3c
    dec c                                         ; $7466: $0d
    ld c, $05                                     ; $7467: $0e $05
    ld b, $02                                     ; $7469: $06 $02
    inc bc                                        ; $746b: $03
    nop                                           ; $746c: $00
    ld [bc], a                                    ; $746d: $02
    inc bc                                        ; $746e: $03
    inc bc                                        ; $746f: $03
    inc bc                                        ; $7470: $03
    ld bc, $0001                                  ; $7471: $01 $01 $00
    nop                                           ; $7474: $00
    nop                                           ; $7475: $00
    db $f4                                        ; $7476: $f4
    rrca                                          ; $7477: $0f
    ld a, [$5507]                                 ; $7478: $fa $07 $55
    xor e                                         ; $747b: $ab
    and e                                         ; $747c: $a3
    ld e, a                                       ; $747d: $5f
    nop                                           ; $747e: $00
    ld d, $ff                                     ; $747f: $16 $ff
    ld a, e                                       ; $7481: $7b
    db $fc                                        ; $7482: $fc
    rst $28                                       ; $7483: $ef
    ldh a, [$bf]                                  ; $7484: $f0 $bf
    ret nz                                        ; $7486: $c0

    nop                                           ; $7487: $00
    ld l, [hl]                                    ; $7488: $6e
    rst $38                                       ; $7489: $ff
    ld b, b                                       ; $748a: $40
    rst $38                                       ; $748b: $ff
    ld e, a                                       ; $748c: $5f
    ldh [$97], a                                  ; $748d: $e0 $97
    add sp, $00                                   ; $748f: $e8 $00
    rst $38                                       ; $7491: $ff
    ret nz                                        ; $7492: $c0

    sub a                                         ; $7493: $97
    add sp, -$09                                  ; $7494: $e8 $f7
    ret z                                         ; $7496: $c8

    sub a                                         ; $7497: $97
    add sp, $00                                   ; $7498: $e8 $00
    sbc d                                         ; $749a: $9a
    sub [hl]                                      ; $749b: $96
    sbc d                                         ; $749c: $9a
    sub [hl]                                      ; $749d: $96
    and d                                         ; $749e: $a2
    cp [hl]                                       ; $749f: $be
    ld c, h                                       ; $74a0: $4c
    db $fc                                        ; $74a1: $fc
    db $10                                        ; $74a2: $10
    ld [hl], b                                    ; $74a3: $70
    ldh a, [rLCDC]                                ; $74a4: $f0 $40
    ret                                           ; $74a6: $c9


    ld b, $20                                     ; $74a7: $06 $20
    cp $2c                                        ; $74a9: $fe $2c
    di                                            ; $74ab: $f3
    nop                                           ; $74ac: $00
    ld e, d                                       ; $74ad: $5a
    push hl                                       ; $74ae: $e5
    or h                                          ; $74af: $b4
    res 5, c                                      ; $74b0: $cb $a9
    ld d, a                                       ; $74b2: $57
    ld b, $fe                                     ; $74b3: $06 $fe
    ld [bc], a                                    ; $74b5: $02
    ld a, [$34fe]                                 ; $74b6: $fa $fe $34
    ei                                            ; $74b9: $fb
    sub $b9                                       ; $74ba: $d6 $b9
    sbc e                                         ; $74bc: $9b
    inc c                                         ; $74bd: $0c
    add b                                         ; $74be: $80
    ret nz                                        ; $74bf: $c0

    ld b, e                                       ; $74c0: $43
    inc c                                         ; $74c1: $0c
    ld h, l                                       ; $74c2: $65
    rra                                           ; $74c3: $1f
    add b                                         ; $74c4: $80
    rst $30                                       ; $74c5: $f7
    jr @-$0b                                      ; $74c6: $18 $f3

    inc e                                         ; $74c8: $1c
    rst $28                                       ; $74c9: $ef
    nop                                           ; $74ca: $00
    jr @-$13                                      ; $74cb: $18 $eb

    inc e                                         ; $74cd: $1c
    db $dd                                        ; $74ce: $dd
    ld a, [hl-]                                   ; $74cf: $3a
    ld a, d                                       ; $74d0: $7a
    db $fd                                        ; $74d1: $fd
    sbc c                                         ; $74d2: $99
    db $10                                        ; $74d3: $10
    rst $38                                       ; $74d4: $ff
    ld a, [hl+]                                   ; $74d5: $2a
    rst $18                                       ; $74d6: $df
    cp c                                          ; $74d7: $b9
    inc b                                         ; $74d8: $04
    ret nz                                        ; $74d9: $c0

    and b                                         ; $74da: $a0
    ld h, b                                       ; $74db: $60
    and c                                         ; $74dc: $a1
    nop                                           ; $74dd: $00
    ld a, a                                       ; $74de: $7f
    ld a, a                                       ; $74df: $7f
    pop hl                                        ; $74e0: $e1
    add a                                         ; $74e1: $87
    ld sp, hl                                     ; $74e2: $f9
    ld a, c                                       ; $74e3: $79
    add a                                         ; $74e4: $87
    cp [hl]                                       ; $74e5: $be
    ld b, b                                       ; $74e6: $40
    ld b, c                                       ; $74e7: $41
    nop                                           ; $74e8: $00
    ld h, c                                       ; $74e9: $61
    nop                                           ; $74ea: $00
    ld a, d                                       ; $74eb: $7a
    adc a                                         ; $74ec: $8f
    push af                                       ; $74ed: $f5
    ld c, $f3                                     ; $74ee: $0e $f3
    ld d, b                                       ; $74f0: $50
    inc c                                         ; $74f1: $0c
    ld h, c                                       ; $74f2: $61
    rlca                                          ; $74f3: $07
    ld [$0804], sp                                ; $74f4: $08 $04 $08
    di                                            ; $74f7: $f3
    inc c                                         ; $74f8: $0c
    ld e, a                                       ; $74f9: $5f
    and b                                         ; $74fa: $a0
    nop                                           ; $74fb: $00
    ccf                                           ; $74fc: $3f
    ret nz                                        ; $74fd: $c0

    sbc a                                         ; $74fe: $9f

Jump_09a_74ff:
    ldh [rVBK], a                                 ; $74ff: $e0 $4f
    ldh a, [$66]                                  ; $7501: $f0 $66
    ld sp, hl                                     ; $7503: $f9
    ld [bc], a                                    ; $7504: $02
    ld d, c                                       ; $7505: $51
    rst $38                                       ; $7506: $ff
    dec sp                                        ; $7507: $3b
    rst $38                                       ; $7508: $ff
    xor [hl]                                      ; $7509: $ae
    ld a, a                                       ; $750a: $7f
    ld e, [hl]                                    ; $750b: $5e
    nop                                           ; $750c: $00
    ld b, b                                       ; $750d: $40
    nop                                           ; $750e: $00
    and b                                         ; $750f: $a0
    ld h, b                                       ; $7510: $60
    ld h, b                                       ; $7511: $60
    ldh a, [$b0]                                  ; $7512: $f0 $b0
    ret z                                         ; $7514: $c8

    ld a, b                                       ; $7515: $78
    add h                                         ; $7516: $84
    nop                                           ; $7517: $00
    db $fc                                        ; $7518: $fc
    ld [bc], a                                    ; $7519: $02
    call c, $bf22                                 ; $751a: $dc $22 $bf
    ret nz                                        ; $751d: $c0

    cp [hl]                                       ; $751e: $be
    pop bc                                        ; $751f: $c1
    ld bc, $c3bc                                  ; $7520: $01 $bc $c3
    cp d                                          ; $7523: $ba
    push bc                                       ; $7524: $c5
    cp l                                          ; $7525: $bd
    jp $04bb                                      ; $7526: $c3 $bb $04


    nop                                           ; $7529: $00
    nop                                           ; $752a: $00
    cp [hl]                                       ; $752b: $be
    pop bc                                        ; $752c: $c1
    or a                                          ; $752d: $b7
    ret z                                         ; $752e: $c8

    sbc e                                         ; $752f: $9b
    db $ec                                        ; $7530: $ec
    xor a                                         ; $7531: $af
    ret c                                         ; $7532: $d8

    nop                                           ; $7533: $00
    sbc e                                         ; $7534: $9b
    db $ec                                        ; $7535: $ec

jr_09a_7536:
    dec hl                                        ; $7536: $2b
    call c, $ec9f                                 ; $7537: $dc $9f $ec
    ld c, l                                       ; $753a: $4d
    cp $00                                        ; $753b: $fe $00
    xor h                                         ; $753d: $ac
    rst $38                                       ; $753e: $ff
    cp l                                          ; $753f: $bd
    jp nz, $c1be                                  ; $7540: $c2 $be $c1

    cp a                                          ; $7543: $bf
    ret nz                                        ; $7544: $c0

    and b                                         ; $7545: $a0
    ld [bc], a                                    ; $7546: $02
    db $10                                        ; $7547: $10
    ld [$0ee2], a                                 ; $7548: $ea $e2 $0e
    ld e, d                                       ; $754b: $5a
    rst $38                                       ; $754c: $ff
    cp l                                          ; $754d: $bd
    ld a, a                                       ; $754e: $7f
    rst $08                                       ; $754f: $cf
    jr jr_09a_7591                                ; $7550: $18 $3f

    push af                                       ; $7552: $f5
    ld a, [bc]                                    ; $7553: $0a
    ld a, [hl+]                                   ; $7554: $2a
    dec de                                        ; $7555: $1b
    adc [hl]                                      ; $7556: $8e
    ld c, $aa                                     ; $7557: $0e $aa
    db $fd                                        ; $7559: $fd
    ld d, l                                       ; $755a: $55
    nop                                           ; $755b: $00
    ld a, [$d7a8]                                 ; $755c: $fa $a8 $d7
    ld b, h                                       ; $755f: $44
    xor a                                         ; $7560: $af
    and b                                         ; $7561: $a0
    ld a, a                                       ; $7562: $7f
    db $10                                        ; $7563: $10
    dec b                                         ; $7564: $05
    rst $38                                       ; $7565: $ff
    ld a, [hl+]                                   ; $7566: $2a
    db $fd                                        ; $7567: $fd
    ld bc, $90be                                  ; $7568: $01 $be $90
    rrca                                          ; $756b: $0f
    nop                                           ; $756c: $00
    ld h, h                                       ; $756d: $64
    rlca                                          ; $756e: $07
    ld [bc], a                                    ; $756f: $02
    add b                                         ; $7570: $80
    ld a, l                                       ; $7571: $7d
    ld b, h                                       ; $7572: $44
    cp d                                          ; $7573: $ba
    ld [$84d7], sp                                ; $7574: $08 $d7 $84
    ld [$00f3], sp                                ; $7577: $08 $f3 $00
    inc c                                         ; $757a: $0c
    pop af                                        ; $757b: $f1
    ld c, $f5                                     ; $757c: $0e $f5
    ld c, $e6                                     ; $757e: $0e $e6
    rra                                           ; $7580: $1f
    ld d, [hl]                                    ; $7581: $56
    nop                                           ; $7582: $00
    xor a                                         ; $7583: $af
    and d                                         ; $7584: $a2
    ld e, a                                       ; $7585: $5f
    or [hl]                                       ; $7586: $b6
    ld a, a                                       ; $7587: $7f
    sbc d                                         ; $7588: $9a
    ld a, a                                       ; $7589: $7f
    cp l                                          ; $758a: $bd
    jr nz, jr_09a_7608                            ; $758b: $20 $7b

    sbc c                                         ; $758d: $99
    inc b                                         ; $758e: $04
    nop                                           ; $758f: $00
    push de                                       ; $7590: $d5

jr_09a_7591:
    ld a, e                                       ; $7591: $7b
    dec l                                         ; $7592: $2d
    di                                            ; $7593: $f3
    ld d, l                                       ; $7594: $55
    nop                                           ; $7595: $00
    db $eb                                        ; $7596: $eb
    cp a                                          ; $7597: $bf
    push hl                                       ; $7598: $e5
    push af                                       ; $7599: $f5
    rst $28                                       ; $759a: $ef
    cp [hl]                                       ; $759b: $be
    xor [hl]                                      ; $759c: $ae
    inc l                                         ; $759d: $2c
    jr nz, @+$3e                                  ; $759e: $20 $3c

    jr jr_09a_75cd                                ; $75a0: $18 $2b

    dec e                                         ; $75a2: $1d
    nop                                           ; $75a3: $00
    dec hl                                        ; $75a4: $2b
    rst $38                                       ; $75a5: $ff
    ld a, [hl]                                    ; $75a6: $7e
    rst $38                                       ; $75a7: $ff
    inc c                                         ; $75a8: $0c
    jp z, Jump_09a_57f5                           ; $75a9: $ca $f5 $57

    xor b                                         ; $75ac: $a8
    ld h, b                                       ; $75ad: $60
    jr z, jr_09a_7536                             ; $75ae: $28 $86

    rrca                                          ; $75b0: $0f
    cp l                                          ; $75b1: $bd
    ld b, e                                       ; $75b2: $43
    ld [bc], a                                    ; $75b3: $02
    db $fd                                        ; $75b4: $fd
    inc bc                                        ; $75b5: $03
    db $fd                                        ; $75b6: $fd
    inc bc                                        ; $75b7: $03
    rst $38                                       ; $75b8: $ff
    xor e                                         ; $75b9: $ab
    ld [hl+], a                                   ; $75ba: $22
    rrca                                          ; $75bb: $0f
    nop                                           ; $75bc: $00
    nop                                           ; $75bd: $00
    rst $38                                       ; $75be: $ff
    dec sp                                        ; $75bf: $3b
    add h                                         ; $75c0: $84
    ld e, [hl]                                    ; $75c1: $5e
    add c                                         ; $75c2: $81
    cpl                                           ; $75c3: $2f
    add b                                         ; $75c4: $80
    ld b, a                                       ; $75c5: $47
    ld [bc], a                                    ; $75c6: $02
    add b                                         ; $75c7: $80
    ld l, d                                       ; $75c8: $6a
    add b                                         ; $75c9: $80
    ld [hl], l                                    ; $75ca: $75
    add b                                         ; $75cb: $80
    ld a, b                                       ; $75cc: $78

jr_09a_75cd:
    ret z                                         ; $75cd: $c8

    ld [bc], a                                    ; $75ce: $02
    cp [hl]                                       ; $75cf: $be
    nop                                           ; $75d0: $00
    ld bc, $01ce                                  ; $75d1: $01 $ce $01
    ld h, [hl]                                    ; $75d4: $66
    add c                                         ; $75d5: $81
    or d                                          ; $75d6: $b2
    ld b, c                                       ; $75d7: $41
    cp $00                                        ; $75d8: $fe $00
    ld bc, $01bc                                  ; $75da: $01 $bc $01
    ld e, [hl]                                    ; $75dd: $5e
    ld bc, $c031                                  ; $75de: $01 $31 $c0
    ld e, d                                       ; $75e1: $5a
    nop                                           ; $75e2: $00
    and b                                         ; $75e3: $a0
    dec a                                         ; $75e4: $3d
    ret nz                                        ; $75e5: $c0

    ld e, [hl]                                    ; $75e6: $5e
    and b                                         ; $75e7: $a0
    ld [hl], a                                    ; $75e8: $77
    adc b                                         ; $75e9: $88
    ld l, a                                       ; $75ea: $6f
    nop                                           ; $75eb: $00
    sub b                                         ; $75ec: $90
    dec [hl]                                      ; $75ed: $35
    adc d                                         ; $75ee: $8a
    ld e, d                                       ; $75ef: $5a
    add l                                         ; $75f0: $85
    ld d, [hl]                                    ; $75f1: $56
    add hl, bc                                    ; $75f2: $09
    sbc h                                         ; $75f3: $9c
    nop                                           ; $75f4: $00
    inc bc                                        ; $75f5: $03
    ld c, d                                       ; $75f6: $4a
    dec b                                         ; $75f7: $05
    xor h                                         ; $75f8: $ac
    inc bc                                        ; $75f9: $03
    ld e, $01                                     ; $75fa: $1e $01
    sub [hl]                                      ; $75fc: $96
    nop                                           ; $75fd: $00
    ld bc, $01d6                                  ; $75fe: $01 $d6 $01
    ld [$0f01], a                                 ; $7601: $ea $01 $0f
    add b                                         ; $7604: $80
    ld d, a                                       ; $7605: $57
    nop                                           ; $7606: $00
    add b                                         ; $7607: $80

jr_09a_7608:
    inc hl                                        ; $7608: $23
    add b                                         ; $7609: $80
    ld e, b                                       ; $760a: $58
    add b                                         ; $760b: $80
    ld l, h                                       ; $760c: $6c
    add b                                         ; $760d: $80
    ld a, $00                                     ; $760e: $3e $00
    ret nz                                        ; $7610: $c0

    ld e, a                                       ; $7611: $5f
    and b                                         ; $7612: $a0
    ld l, $d0                                     ; $7613: $2e $d0
    inc a                                         ; $7615: $3c
    pop bc                                        ; $7616: $c1
    sbc [hl]                                      ; $7617: $9e
    nop                                           ; $7618: $00
    ld h, c                                       ; $7619: $61
    adc $31                                       ; $761a: $ce $31
    or $09                                        ; $761c: $f6 $09
    ld a, d                                       ; $761e: $7a
    dec b                                         ; $761f: $05
    cp [hl]                                       ; $7620: $be
    nop                                           ; $7621: $00
    ld bc, $051a                                  ; $7622: $01 $1a $05
    adc h                                         ; $7625: $8c
    inc bc                                        ; $7626: $03
    ld d, a                                       ; $7627: $57
    xor b                                         ; $7628: $a8
    ld a, e                                       ; $7629: $7b
    nop                                           ; $762a: $00
    add h                                         ; $762b: $84
    ccf                                           ; $762c: $3f
    add b                                         ; $762d: $80
    ld e, a                                       ; $762e: $5f
    add b                                         ; $762f: $80
    ld l, $81                                     ; $7630: $2e $81
    rra                                           ; $7632: $1f
    nop                                           ; $7633: $00
    add b                                         ; $7634: $80
    ld c, [hl]                                    ; $7635: $4e
    add c                                         ; $7636: $81
    ld h, a                                       ; $7637: $67
    add b                                         ; $7638: $80
    ld d, [hl]                                    ; $7639: $56
    ld bc, $00a2                                  ; $763a: $01 $a2 $00
    ld bc, $01fa                                  ; $763d: $01 $fa $01
    call c, $ee01                                 ; $7640: $dc $01 $ee
    ld bc, $00ba                                  ; $7643: $01 $ba $00
    ld b, c                                       ; $7646: $41
    call c, $2e21                                 ; $7647: $dc $21 $2e
    pop de                                        ; $764a: $d1
    ld d, e                                       ; $764b: $53
    add b                                         ; $764c: $80
    ld h, l                                       ; $764d: $65
    nop                                           ; $764e: $00
    add b                                         ; $764f: $80
    ld [hl], a                                    ; $7650: $77
    add b                                         ; $7651: $80
    ld a, d                                       ; $7652: $7a
    add b                                         ; $7653: $80
    dec a                                         ; $7654: $3d
    add b                                         ; $7655: $80
    ld d, [hl]                                    ; $7656: $56
    nop                                           ; $7657: $00
    adc b                                         ; $7658: $88
    dec sp                                        ; $7659: $3b
    add h                                         ; $765a: $84
    dec e                                         ; $765b: $1d
    add d                                         ; $765c: $82
    sbc [hl]                                      ; $765d: $9e
    ld h, c                                       ; $765e: $61
    add $00                                       ; $765f: $c6 $00
    add hl, sp                                    ; $7661: $39
    ld [c], a                                     ; $7662: $e2
    dec e                                         ; $7663: $1d
    ld a, d                                       ; $7664: $7a
    dec b                                         ; $7665: $05
    inc [hl]                                      ; $7666: $34
    dec bc                                        ; $7667: $0b
    cp d                                          ; $7668: $ba
    nop                                           ; $7669: $00
    dec b                                         ; $766a: $05
    sbc h                                         ; $766b: $9c
    inc bc                                        ; $766c: $03
    jp z, Jump_09a_4f01                           ; $766d: $ca $01 $4f

    add b                                         ; $7670: $80
    ld h, e                                       ; $7671: $63
    ld hl, $3580                                  ; $7672: $21 $80 $35
    add h                                         ; $7675: $84
    nop                                           ; $7676: $00
    rrca                                          ; $7677: $0f
    ldh a, [$57]                                  ; $7678: $f0 $57
    xor b                                         ; $767a: $a8
    ld [c], a                                     ; $767b: $e2
    rrca                                          ; $767c: $0f
    nop                                           ; $767d: $00
    db $f4                                        ; $767e: $f4
    ld bc, $619a                                  ; $767f: $01 $9a $61
    ld c, h                                       ; $7682: $4c
    ld sp, $09b6                                  ; $7683: $31 $b6 $09
    inc e                                         ; $7686: $1c
    ld e, d                                       ; $7687: $5a
    dec b                                         ; $7688: $05
    xor [hl]                                      ; $7689: $ae
    ld [hl], c                                    ; $768a: $71
    ld b, $5e                                     ; $768b: $06 $5e
    rra                                           ; $768d: $1f
    ld [de], a                                    ; $768e: $12
    ld a, [bc]                                    ; $768f: $0a
    ld e, b                                       ; $7690: $58
    ldh [rDIV], a                                 ; $7691: $e0 $04
    ld d, a                                       ; $7693: $57
    rst $28                                       ; $7694: $ef
    sbc d                                         ; $7695: $9a
    rst $38                                       ; $7696: $ff
    ldh [$f4], a                                  ; $7697: $e0 $f4
    rla                                           ; $7699: $17
    ld [bc], a                                    ; $769a: $02
    rst $38                                       ; $769b: $ff
    nop                                           ; $769c: $00
    ld a, [$1a07]                                 ; $769d: $fa $07 $1a
    rlca                                          ; $76a0: $07
    ld [$b9f7], a                                 ; $76a1: $ea $f7 $b9
    rst $38                                       ; $76a4: $ff
    ld bc, $ff07                                  ; $76a5: $01 $07 $ff
    ld l, $fd                                     ; $76a8: $2e $fd
    sbc $ff                                       ; $76aa: $de $ff
    cp a                                          ; $76ac: $bf
    ldh a, [$15]                                  ; $76ad: $f0 $15
    add b                                         ; $76af: $80
    adc e                                         ; $76b0: $8b
    inc b                                         ; $76b1: $04
    ld d, l                                       ; $76b2: $55
    ld d, l                                       ; $76b3: $55
    nop                                           ; $76b4: $00
    and a                                         ; $76b5: $a7
    bit 7, l                                      ; $76b6: $cb $7d
    ld c, [hl]                                    ; $76b8: $4e
    pop bc                                        ; $76b9: $c1
    jr nz, jr_09a_76e2                            ; $76ba: $20 $26

    db $10                                        ; $76bc: $10
    db $10                                        ; $76bd: $10
    sub b                                         ; $76be: $90
    rrca                                          ; $76bf: $0f
    ld a, [de]                                    ; $76c0: $1a
    ccf                                           ; $76c1: $3f
    jp Jump_000_2620                              ; $76c2: $c3 $20 $26


    add b                                         ; $76c5: $80
    jr nz, jr_09a_76d0                            ; $76c6: $20 $08

    or b                                          ; $76c8: $b0
    rst $38                                       ; $76c9: $ff
    db $e4                                        ; $76ca: $e4
    rst $38                                       ; $76cb: $ff
    ld c, d                                       ; $76cc: $4a
    db $fc                                        ; $76cd: $fc
    or l                                          ; $76ce: $b5
    ld a, [bc]                                    ; $76cf: $0a

jr_09a_76d0:
    db $f4                                        ; $76d0: $f4
    ld d, e                                       ; $76d1: $53
    db $e3                                        ; $76d2: $e3
    ld c, $30                                     ; $76d3: $0e $30
    db $10                                        ; $76d5: $10
    ld d, l                                       ; $76d6: $55
    sbc $56                                       ; $76d7: $de $56
    dec d                                         ; $76d9: $15

jr_09a_76da:
    call nz, $0776                                ; $76da: $c4 $76 $07
    sbc $4e                                       ; $76dd: $de $4e
    ld b, d                                       ; $76df: $42
    add b                                         ; $76e0: $80
    ld d, l                                       ; $76e1: $55

jr_09a_76e2:
    adc $56                                       ; $76e2: $ce $56
    nop                                           ; $76e4: $00
    nop                                           ; $76e5: $00
    nop                                           ; $76e6: $00
    sub c                                         ; $76e7: $91
    jp $2f1f                                      ; $76e8: $c3 $1f $2f


    ld a, a                                       ; $76eb: $7f
    cp a                                          ; $76ec: $bf
    xor $ff                                       ; $76ed: $ee $ff
    db $10                                        ; $76ef: $10
    jp c, $a0fc                                   ; $76f0: $da $fc $a0

    ld [hl], b                                    ; $76f3: $70
    db $10                                        ; $76f4: $10
    xor a                                         ; $76f5: $af
    db $fd                                        ; $76f6: $fd
    ld e, c                                       ; $76f7: $59
    ldh a, [rP1]                                  ; $76f8: $f0 $00
    cp a                                          ; $76fa: $bf
    jp Jump_000_0f93                              ; $76fb: $c3 $93 $0f


    rst $38                                       ; $76fe: $ff
    ccf                                           ; $76ff: $3f
    db $ed                                        ; $7700: $ed
    rst $38                                       ; $7701: $ff
    inc b                                         ; $7702: $04
    xor l                                         ; $7703: $ad
    ld d, b                                       ; $7704: $50
    ld e, c                                       ; $7705: $59
    rrca                                          ; $7706: $0f
    ld d, b                                       ; $7707: $50
    ld e, [hl]                                    ; $7708: $5e
    ld d, [hl]                                    ; $7709: $56
    db $10                                        ; $770a: $10
    add hl, bc                                    ; $770b: $09
    sbc a                                         ; $770c: $9f
    cp $5e                                        ; $770d: $fe $5e
    rst $38                                       ; $770f: $ff
    nop                                           ; $7710: $00
    cp $5e                                        ; $7711: $fe $5e
    ld e, h                                       ; $7713: $5c
    rrca                                          ; $7714: $0f
    xor $4e                                       ; $7715: $ee $4e
    ld l, h                                       ; $7717: $6c
    ld e, a                                       ; $7718: $5f
    inc a                                         ; $7719: $3c
    rrca                                          ; $771a: $0f
    and l                                         ; $771b: $a5
    adc [hl]                                      ; $771c: $8e
    ld e, b                                       ; $771d: $58
    add h                                         ; $771e: $84
    adc [hl]                                      ; $771f: $8e
    ld h, b                                       ; $7720: $60
    nop                                           ; $7721: $00
    nop                                           ; $7722: $00
    ld e, [hl]                                    ; $7723: $5e
    ld e, b                                       ; $7724: $58
    nop                                           ; $7725: $00
    ld e, [hl]                                    ; $7726: $5e
    ld h, b                                       ; $7727: $60
    add hl, sp                                    ; $7728: $39
    ld d, h                                       ; $7729: $54
    jr nz, jr_09a_778a                            ; $772a: $20 $5e

    ld e, b                                       ; $772c: $58
    ld l, h                                       ; $772d: $6c
    rrca                                          ; $772e: $0f
    ld e, [hl]                                    ; $772f: $5e
    ld c, b                                       ; $7730: $48
    ld b, [hl]                                    ; $7731: $46
    nop                                           ; $7732: $00
    ld e, [hl]                                    ; $7733: $5e
    ld e, b                                       ; $7734: $58
    ld c, a                                       ; $7735: $4f
    dec e                                         ; $7736: $1d
    ld e, [hl]                                    ; $7737: $5e
    ld h, b                                       ; $7738: $60
    ld bc, $0e00                                  ; $7739: $01 $00 $0e
    ld e, a                                       ; $773c: $5f
    inc a                                         ; $773d: $3c
    ld e, a                                       ; $773e: $5f
    inc l                                         ; $773f: $2c
    ld l, a                                       ; $7740: $6f
    ld e, d                                       ; $7741: $5a
    rrca                                          ; $7742: $0f
    ld [$588e], a                                 ; $7743: $ea $8e $58
    jp c, $8e0f                                   ; $7746: $da $0f $8e

    ld c, b                                       ; $7749: $48
    jr z, jr_09a_76da                             ; $774a: $28 $8e

    ld h, b                                       ; $774c: $60
    add hl, bc                                    ; $774d: $09
    adc [hl]                                      ; $774e: $8e
    ld h, b                                       ; $774f: $60
    rst $38                                       ; $7750: $ff
    or l                                          ; $7751: $b5
    adc [hl]                                      ; $7752: $8e
    ld h, b                                       ; $7753: $60
    rst $38                                       ; $7754: $ff
    adc [hl]                                      ; $7755: $8e
    ld h, b                                       ; $7756: $60
    ld e, [hl]                                    ; $7757: $5e
    ld l, b                                       ; $7758: $68
    add b                                         ; $7759: $80
    ld e, [hl]                                    ; $775a: $5e
    ld h, b                                       ; $775b: $60
    sub b                                         ; $775c: $90
    ld e, [hl]                                    ; $775d: $5e
    ld h, b                                       ; $775e: $60
    ld d, d                                       ; $775f: $52
    ld [de], a                                    ; $7760: $12
    ld e, [hl]                                    ; $7761: $5e
    ld h, b                                       ; $7762: $60
    nop                                           ; $7763: $00
    ld e, [hl]                                    ; $7764: $5e
    ld h, b                                       ; $7765: $60
    ld d, h                                       ; $7766: $54
    jr nz, @+$60                                  ; $7767: $20 $5e

    ld e, b                                       ; $7769: $58
    add b                                         ; $776a: $80
    ld b, b                                       ; $776b: $40
    nop                                           ; $776c: $00
    db $ec                                        ; $776d: $ec
    ld l, b                                       ; $776e: $68
    xor [hl]                                      ; $776f: $ae
    ld a, l                                       ; $7770: $7d
    ld e, [hl]                                    ; $7771: $5e
    ccf                                           ; $7772: $3f
    cp a                                          ; $7773: $bf
    ld e, h                                       ; $7774: $5c
    nop                                           ; $7775: $00
    ld d, l                                       ; $7776: $55
    ld [hl-], a                                   ; $7777: $32
    and a                                         ; $7778: $a7
    ld e, e                                       ; $7779: $5b
    ld e, l                                       ; $777a: $5d
    dec l                                         ; $777b: $2d
    or b                                          ; $777c: $b0
    ld d, b                                       ; $777d: $50
    jr nz, @+$42                                  ; $777e: $20 $40

    inc sp                                        ; $7780: $33
    db $fc                                        ; $7781: $fc
    ld l, b                                       ; $7782: $68
    xor a                                         ; $7783: $af
    ld c, a                                       ; $7784: $4f
    ld c, a                                       ; $7785: $4f
    ccf                                           ; $7786: $3f
    or l                                          ; $7787: $b5
    nop                                           ; $7788: $00
    ld e, a                                       ; $7789: $5f

jr_09a_778a:
    ld c, h                                       ; $778a: $4c
    inc a                                         ; $778b: $3c
    cp [hl]                                       ; $778c: $be
    ld d, h                                       ; $778d: $54
    ld e, [hl]                                    ; $778e: $5e
    inc hl                                        ; $778f: $23
    xor h                                         ; $7790: $ac
    db $10                                        ; $7791: $10
    ld e, l                                       ; $7792: $5d
    ld d, e                                       ; $7793: $53
    jr c, @+$2c                                   ; $7794: $38 $2a

    ld l, c                                       ; $7796: $69
    and a                                         ; $7797: $a7
    ld b, e                                       ; $7798: $43
    ld e, c                                       ; $7799: $59
    dec l                                         ; $779a: $2d
    nop                                           ; $779b: $00
    or b                                          ; $779c: $b0
    ld d, c                                       ; $779d: $51
    ld d, d                                       ; $779e: $52
    dec hl                                        ; $779f: $2b
    and a                                         ; $77a0: $a7
    ld c, a                                       ; $77a1: $4f
    ld e, a                                       ; $77a2: $5f
    scf                                           ; $77a3: $37
    inc c                                         ; $77a4: $0c
    cp a                                          ; $77a5: $bf
    ld b, e                                       ; $77a6: $43
    ld c, h                                       ; $77a7: $4c
    cpl                                           ; $77a8: $2f
    ld a, [hl-]                                   ; $77a9: $3a
    ld l, c                                       ; $77aa: $69
    add hl, sp                                    ; $77ab: $39
    rra                                           ; $77ac: $1f
    xor d                                         ; $77ad: $aa
    ld d, l                                       ; $77ae: $55
    rst $10                                       ; $77af: $d7
    ld c, c                                       ; $77b0: $49
    rlca                                          ; $77b1: $07
    dec de                                        ; $77b2: $1b
    rra                                           ; $77b3: $1f
    ld d, l                                       ; $77b4: $55
    pop de                                        ; $77b5: $d1
    rlca                                          ; $77b6: $07
    ld d, l                                       ; $77b7: $55
    dec c                                         ; $77b8: $0d
    nop                                           ; $77b9: $00
    inc b                                         ; $77ba: $04
    ld [$074e], sp                                ; $77bb: $08 $4e $07
    db $10                                        ; $77be: $10
    add hl, bc                                    ; $77bf: $09

    db $2d, $06, $12, $ff, $ff, $80, $02, $00, $c0, $bf, $04, $18, $c1, $00, $bf, $ff
    db $ff, $00, $ff, $aa, $55, $00, $c3, $06, $00, $08, $00, $ff, $ff, $ff, $83, $14
    db $00, $04, $48, $00, $aa, $ff, $15, $ff, $a5, $5a, $ca, $35, $00, $6f, $00, $da
    db $05, $b7, $00, $db, $00, $00, $aa, $ff, $54, $ff, $29, $f6, $d2, $6d, $01, $4d
    db $b2, $bb, $44, $db, $00, $ad, $10, $00, $00, $55, $ff, $24, $fb, $da, $65, $ad
    db $52, $00, $5a, $80, $ad, $00, $da, $00, $b5, $00, $00, $26, $00, $1c, $00, $30
    db $00, $42, $00, $00, $24, $00, $41, $00, $00, $00, $12, $00, $00, $a5, $00, $4a
    db $00, $90, $00, $08, $00, $10, $84, $00, $09, $10, $00, $90, $00, $0a, $00, $01
    db $10, $00, $22, $00, $04, $00, $8a, $04, $00, $40, $08, $79, $00, $fb, $04, $d6
    db $29, $bf, $40, $00, $ed, $12, $50, $a8, $25, $d2, $a8, $fa, $00, $ff, $00, $ed
    db $12, $fb, $04, $bf, $40, $01, $76, $89, $a9, $56, $52, $3d, $2a, $9f, $08, $80
    db $9d, $00, $da, $25, $b7, $48, $2a, $d5, $57, $20, $b8, $22, $a4, $00, $51, $ff
    db $8a, $f5, $b4, $00, $4b, $6f, $90, $d5, $02, $db, $04, $b5, $00, $08, $1a, $00
    db $34, $00, $48, $00, $91, $2c, $00, $02, $56, $00, $20, $70, $00, $c9, $08, $77
    db $88, $00, $fd, $02, $5b, $a4, $a7, $58, $49, $b6, $61, $a8, $df, $00, $60, $28
    db $52, $ad, $25, $da, $10, $08, $a0, $60, $40, $bd, $60, $50, $d4, $56, $b8, $22
    db $fe, $80, $40, $18, $81, $02, $59, $24, $a6, $58, $48, $10, $b6, $28, $7c, $50
    db $38, $a1, $40, $48, $96, $35, $a8, $ed, $d3, $00, $d6, $00, $08, $da, $00, $01
    db $74, $00, $8c, $0e, $08, $20, $00, $80, $15, $18, $16, $10, $aa, $fa, $00, $00
    db $fa, $60, $fa, $07, $f0, $0f, $e0, $00, $df, $c0, $3f, $80, $bf, $80, $aa, $ff
    db $00, $00, $fe, $5c, $fd, $01, $7d, $80, $3c, $00, $4c, $1d, $a1, $0c, $21, $0c
    db $02, $07, $00, $00, $fb, $00, $fd, $e8, $fd, $00, $f9, $00, $a9, $05, $fc, $01
    db $fc, $01, $3f, $80, $01, $1f, $c0, $cf, $e0, $00, $f0, $64, $88, $01, $80, $01
    db $08, $2d, $0c, $81, $1c, $8d, $3c, $00, $30, $7e, $80, $78, $01, $11, $08, $f5
    db $01, $f4, $01, $02, $e5, $01, $f8, $03, $00, $07, $20, $18, $00, $00, $ff, $55
    db $aa, $d5, $28, $6f, $90, $8a, $02, $7d, $55, $ff, $ae, $ff, $d4, $10, $10, $bb
    db $00, $44, $56, $89, $25, $da, $5a, $b7, $a6, $20, $7f, $7d, $20, $10, $7a, $85
    db $d5, $2a, $12, $02, $fd, $a8, $7f, $ba, $ff, $f7, $9e, $01, $00, $00, $ff, $1f
    db $e1, $61, $c0, $d4, $80, $ba, $00, $c0, $65, $f8, $5b, $bc, $6b, $ff, $81, $00
    db $ff, $7e, $81, $be, $c0, $16, $68, $3b, $00, $14, $17, $08, $a5, $06, $55, $ff
    db $04, $00, $ff, $8f, $fc, $fe, $fc, $65, $fe, $35, $00, $7e, $ff, $3f, $9f, $3e
    db $55, $ff, $0f, $00, $f0, $10, $e0, $d0, $e2, $18, $e1, $5c, $04, $e0, $1a, $f0
    db $1d, $f0, $40, $08, $c3, $3f, $00, $34, $9f, $20, $5f, $3c, $9f, $00, $5f, $20
    db $35, $1e, $50, $08, $5f, $f1, $a2, $c1, $42, $00, $91, $83, $21, $16, $43, $2e
    db $03, $aa, $02, $fe, $00, $fe, $0e, $fe, $c0, $06, $00, $68, $40, $fe, $6a, $00
    db $ff, $ee, $f8, $0f, $fe, $45, $38, $ff, $20, $56, $02, $7c, $01, $50, $02, $81
    db $1e, $d1, $01, $0e, $ef, $86, $79, $e6, $9d, $f3, $e0, $18, $00, $5d, $07, $f8
    db $1f, $f6, $3f, $c0, $ff, $55, $e7, $f0, $20, $02, $80, $02, $98, $06, $10, $20
    db $e0, $38, $00, $2a, $ab, $54, $15, $ee, $2a, $fd, $55, $60, $ff, $0f, $02, $f0
    db $00, $6a, $15, $d7, $28, $52, $02, $fd, $99, $f6, $62, $ff, $d5, $6e, $02, $02
    db $00, $ff, $f5, $3f, $ba, $7f, $3f, $4e, $cc, $00, $42, $d8, $c4, $bd, $48, $55
    db $ff, $a0, $00, $ff, $6b, $9c, $1d, $0f, $0f, $07, $15, $00, $0e, $4a, $3c, $b5
    db $7a, $55, $ff, $30, $00, $ff, $67, $f8, $ab, $dc, $5b, $8c, $a1, $00, $1e, $45
    db $be, $00, $ff, $b5, $db, $62, $00, $9d, $95, $db, $22, $d9, $95, $cb, $20, $01
    db $db, $95, $cb, $34, $cb, $d6, $82, $b1, $00, $40, $00, $a5, $01, $00, $f2, $00
    db $7c, $01, $00, $00, $83, $ab, $fc, $0e, $f0, $dc, $e0, $1a, $00, $e0, $3c, $f0
    db $3a, $e0, $fd, $f0, $3e, $00, $e8, $ea, $3f, $30, $0f, $0e, $07, $08, $00, $07
    db $04, $03, $07, $03, $04, $03, $ac, $42, $03, $c0, $01, $ff, $40, $ff, $17, $26
    db $03, $a5, $88, $ca, $01, $00, $fe, $84, $30, $03, $0a, $ff, $e0, $a0, $36, $03
    db $12, $b0, $11, $3f, $f4, $1f, $fa, $ef, $28, $ff, $07, $c8, $00, $b4, $c0, $11
    db $5f, $07, $f8, $0d, $0f, $fd, $3f, $e0, $fe, $00, $d0, $19, $76, $20, $01, $46
    db $1c, $64, $03, $24, $ff, $01, $e0, $11, $42, $02, $ed, $00, $60, $ed, $00, $de
    db $00, $bf, $00, $7e, $05, $7f, $80, $ff, $00, $ab, $18, $00, $c0, $60, $08, $00
    db $7f, $35, $bf, $00, $5f, $01, $1f, $88, $03, $00, $c0, $00, $00, $80, $c1, $04
    db $00, $08, $08, $ec, $0c, $00, $68, $02, $60, $1a, $04, $7b, $12, $be, $08, $7f
    db $00, $04, $1e, $80, $00, $e1, $54, $30, $12, $5c, $1f, $00, $41, $1f, $80, $3f
    db $1f, $7f, $00, $ff, $62, $35, $20, $1a, $38, $00, $02, $80, $c4, $44, $00, $c8
    db $0c, $00, $12, $80, $ed, $9c, $02, $a8, $0a, $40, $00, $00, $88, $00, $11, $00
    db $d2, $00, $af, $00, $0b, $5d, $82, $ef, $10, $60, $49, $55, $89, $00, $60, $49
    db $00, $e6, $1f, $5d, $a3, $08, $f7, $05, $fe, $00, $0a, $fc, $db, $fc, $78, $ff
    db $71, $8f, $00, $5a, $87, $95, $ef, $7a, $fd, $2d, $1e, $00, $eb, $07, $50, $af
    db $a7, $5c, $fd, $fe, $00, $df, $1e, $6e, $9f, $b7, $cf, $4c, $ff, $00, $35, $f8
    db $ea, $f5, $a4, $7b, $e8, $37, $00, $07, $80, $51, $80, $6c, $80, $7f, $80, $00
    db $6a, $95, $51, $af, $19, $fe, $ec, $f8, $00, $43, $ff, $95, $6a, $c0, $7f, $83
    db $7f, $00, $52, $ff, $a7, $c1, $05, $03, $2a, $07, $01, $e0, $ff, $28, $ff, $b5
    db $7f, $de, $42, $01, $00, $67, $ff, $ad, $de, $97, $7c, $79, $8c, $00, $8f, $04
    db $12, $87, $cb, $07, $25, $9e, $00, $cc, $38, $3a, $f0, $ef, $f0, $6d, $1e, $00
    db $a4, $7f, $6f, $c3, $47, $81, $3c, $03, $00, $7b, $06, $f5, $0e, $eb, $1c, $28
    db $fc, $00, $7a, $fc, $9d, $f8, $49, $b8, $85, $78, $00, $9b, $70, $9f, $70, $2e
    db $f1, $b5, $fa, $00, $0a, $fd, $dd, $fe, $fe, $ff, $fe, $ff, $00, $fd, $fe, $fa
    db $fc, $fc, $f8, $56, $b9, $00, $a8, $7f, $5e, $ff, $f7, $8f, $84, $03, $80, $80
    db $0b, $05, $00, $38, $ff, $63, $ff, $df, $00, $e0, $51, $e0, $e7, $c0, $2f, $c0
    db $8f, $00, $c0, $df, $80, $fa, $9d, $d5, $bf, $e7, $00, $fe, $3a, $fc, $4f, $38
    db $f5, $0f, $15, $00, $ef, $05, $ff, $68, $f7, $50, $bf, $b1, $00, $1f, $df, $3f
    db $31, $fe, $91, $e0, $9f, $00, $00, $3f, $c0, $06, $ff, $3f, $ff, $f8, $00, $ff
    db $c5, $fa, $f2, $41, $94, $6b, $a0, $00, $5f, $c0, $7f, $b5, $cb, $04, $db, $a9
    db $00, $db, $0e, $d9, $b1, $cb, $2c, $d3, $97, $08, $e9, $68, $b7, $07, $ec, $01
    db $4f, $ff, $bf, $00, $ff, $f6, $ff, $db, $ff, $aa, $fd, $ec, $00, $b7, $f8, $ff
    db $34, $ff, $f4, $e0, $f8, $00, $e0, $53, $fc, $36, $cf, $c1, $ff, $e5, $00, $fe
    db $55, $ff, $37, $ff, $16, $03, $02, $00, $07, $52, $07, $6c, $87, $44, $ff, $dc
    db $00, $3f, $87, $f1, $70, $a7, $ad, $f7, $74, $00, $af, $89, $f7, $24, $db, $c9
    db $bb, $28, $00, $db, $e1, $b7, $9e, $f3, $93, $f9, $e5, $00, $f8, $e9, $9c, $5b
    db $8c, $14, $8f, $3f, $00, $87, $5b, $bc, $8b, $1c, $0d, $86, $44, $00, $83, $a1
    db $c1, $50, $e0, $a0, $f0, $5a, $00, $b0, $89, $07, $51, $00, $e8, $00, $7d, $00
    db $80, $ae, $d0, $57, $e8, $23, $7c, $f5, $00, $3e, $95, $db, $2a, $d1, $95, $fb
    db $3c, $00, $d3, $93, $f5, $58, $b7, $a5, $db, $4a, $00, $b5, $5a, $87, $3b, $87
    db $7e, $83, $3d, $02, $83, $f3, $8f, $97, $ff, $78, $ac, $05, $95, $00, $78, $2b
    db $dc, $15, $ef, $37, $cf, $9b, $00, $e7, $09, $f7, $84, $fb, $ce, $f1, $ca, $0e
    db $7f, $05, $ff, $03, $4c, $02, $c4, $05, $fa, $02, $d0, $03, $ff, $2a, $d5, $7f
    db $80, $3f, $80, $01, $04, $28, $70, $aa, $f1, $0b, $02, $40, $1c, $08, $38, $87
    db $78, $86, $01, $3c, $85, $7b, $87, $3f, $80, $40, $72, $02, $45, $ff, $25, $0d
    db $d9, $01, $ad, $4d, $0c, $00, $12, $01, $45, $80, $ae, $03, $aa, $f5, $20, $48
    db $03, $f5, $61, $14, $8a, $8a, $0b, $aa, $75, $20, $c4, $03, $75, $10, $06, $ab
    db $09, $ff, $62, $9d, $b5, $40, $43, $b5, $ff, $90, $59, $00, $aa, $ff, $80, $7f
    db $b4, $78, $50, $af, $08, $75, $fa, $52, $ad, $40, $0e, $aa, $ff, $49, $00, $b6
    db $b2, $0d, $bc, $ff, $52, $2d, $05, $40, $fa, $10, $18, $12, $ed, $d6, $01, $8a
    db $75, $0c, $ad, $03, $01, $fe, $60, $0e, $b0, $08, $40, $80, $00, $a0, $c0, $14
    db $e0, $6a, $b0, $65, $98, $00, $7a, $8c, $80, $7f, $e0, $3f, $2f, $3f, $00, $05
    db $1e, $18, $0f, $0c, $0f, $46, $0f, $00, $e5, $1f, $10, $ff, $f7, $f8, $17, $f8
    db $00, $6b, $9c, $aa, $4d, $1c, $ef, $2e, $d9, $01, $18, $ec, $2d, $de, $4c, $b3
    db $13, $c0, $44, $04, $aa, $7f, $91, $e3, $7c, $c0, $44, $02, $fc, $15, $14, $ec
    db $8e, $c0, $44, $81, $dc, $36, $c0, $bc, $06, $80, $90, $08, $50, $af, $ab, $40
    db $ab, $f4, $d5, $20, $00, $40, $10, $10, $01, $ff, $59, $ef, $ab, $00, $f7, $a5
    db $c3, $c9, $f7, $a5, $df, $ab, $80, $f0, $06, $a4, $5f, $f6, $0f, $c8, $1f, $fa
    db $00, $0c, $a5, $58, $5a, $b5, $b4, $fb, $28, $00, $17, $00, $ff, $79, $87, $c3
    db $fe, $9e, $00, $7c, $50, $ac, $04, $f8, $1b, $f0, $37, $00, $e0, $ff, $ff, $bf
    db $7f, $5f, $3f, $2f, $00, $1f, $57, $0f, $bf, $07, $fb, $07, $f6, $02, $0f, $11
    db $3f, $42, $3f, $75, $80, $44, $5f, $08, $e0, $af, $f0, $2b, $80, $44, $eb, $1c
    db $b4, $62, $78, $80, $4c, $72, $08, $83, $7f, $01, $b4, $11, $03, $fb, $70, $07
    db $20, $5f, $d4, $0b, $a2, $0b, $52, $0e, $10, $5a, $36, $58, $1e, $eb, $12, $28
    db $72, $0e, $1c, $08, $20, $e2, $16, $80, $7c, $26, $16, $28, $af, $90, $0e, $80
    db $8a, $26, $00, $e8, $03, $0e, $48, $9c, $0e, $2c, $18, $41, $04, $00, $04, $00
    db $00, $85, $00, $2a, $bf, $16, $d4, $b8, $0e, $12, $08, $10, $8c, $07, $40, $be
    db $16, $04, $00, $50, $28, $24, $04, $ca, $22, $00, $55, $00, $aa, $04, $84, $60
    db $4e, $15, $00, $6d, $02, $60, $4e, $ab, $00, $20, $57, $00, $60, $4e, $a8, $57
    db $f2, $0c, $ea, $00, $10, $e0, $10, $d0, $20, $f0, $20, $d0, $00, $20, $e8, $30
    db $2a, $d5, $4f, $30, $96, $00, $48, $47, $28, $2a, $04, $03, $04, $12, $14, $04
    db $0f, $04, $88, $32, $c0, $ee, $0c, $00, $00, $00, $d4, $38, $f3, $1c, $ec, $1f
    db $df, $3b, $20, $f7, $08, $8a, $12, $00, $12, $2c, $af, $58, $02, $36, $f8, $fb
    db $dc, $ee, $10, $5f, $0d, $01, $14, $00, $55, $ff, $e0, $5b, $7a, $e0, $63, $aa
    db $ff, $21, $53, $af, $20, $4b, $83, $ff, $41, $bf, $60, $29, $c3, $d0, $09, $03
    db $88, $00, $ff, $aa, $55, $04, $00, $1e, $18, $a8, $11, $0f, $55, $0d, $10, $55
    db $0e, $08

    ld bc, $ff00                                  ; $7f62: $01 $00 $ff
    ld a, a                                       ; $7f65: $7f
    ld l, [hl]                                    ; $7f66: $6e
    ld sp, $0c64                                  ; $7f67: $31 $64 $0c
    sbc [hl]                                      ; $7f6a: $9e
    ld e, e                                       ; $7f6b: $5b
    cp d                                          ; $7f6c: $ba
    ld [hl-], a                                   ; $7f6d: $32
    sub b                                         ; $7f6e: $90
    dec e                                         ; $7f6f: $1d
    ld b, [hl]                                    ; $7f70: $46

jr_09a_7f71:
    inc b                                         ; $7f71: $04
    rst $38                                       ; $7f72: $ff
    ld [bc], a                                    ; $7f73: $02
    dec e                                         ; $7f74: $1d
    dec b                                         ; $7f75: $05
    sub d                                         ; $7f76: $92
    ld [$0467], sp                                ; $7f77: $08 $67 $04
    dec a                                         ; $7f7a: $3d
    ld d, a                                       ; $7f7b: $57
    or $61                                        ; $7f7c: $f6 $61
    ld c, a                                       ; $7f7e: $4f
    ld d, b                                       ; $7f7f: $50
    ld [hl+], a                                   ; $7f80: $22
    db $10                                        ; $7f81: $10
    cp l                                          ; $7f82: $bd
    ld [hl], a                                    ; $7f83: $77
    or l                                          ; $7f84: $b5
    ld d, [hl]                                    ; $7f85: $56
    ld c, c                                       ; $7f86: $49
    dec h                                         ; $7f87: $25
    ld b, e                                       ; $7f88: $43
    ld [$044f], sp                                ; $7f89: $08 $4f $04
    sbc h                                         ; $7f8c: $9c
    ld [hl], e                                    ; $7f8d: $73
    db $ec                                        ; $7f8e: $ec
    dec a                                         ; $7f8f: $3d
    jr nz, jr_09a_7f9a                            ; $7f90: $20 $08

    xor a                                         ; $7f92: $af
    ld a, [hl]                                    ; $7f93: $7e
    xor h                                         ; $7f94: $ac
    ld l, c                                       ; $7f95: $69
    add hl, hl                                    ; $7f96: $29
    ld d, c                                       ; $7f97: $51
    and h                                         ; $7f98: $a4
    inc l                                         ; $7f99: $2c

jr_09a_7f9a:
    ret z                                         ; $7f9a: $c8

    ld h, c                                       ; $7f9b: $61
    and $50                                       ; $7f9c: $e6 $50
    and l                                         ; $7f9e: $a5
    ld b, b                                       ; $7f9f: $40
    jr nz, jr_09a_7fbe                            ; $7fa0: $20 $1c

    ld bc, $ff00                                  ; $7fa2: $01 $00 $ff
    ld a, a                                       ; $7fa5: $7f
    ld h, l                                       ; $7fa6: $65
    add hl, de                                    ; $7fa7: $19
    inc b                                         ; $7fa8: $04
    nop                                           ; $7fa9: $00
    cp a                                          ; $7faa: $bf
    ld [hl+], a                                   ; $7fab: $22
    sub a                                         ; $7fac: $97
    dec d                                         ; $7fad: $15
    sub c                                         ; $7fae: $91
    ld [$0045], sp                                ; $7faf: $08 $45 $00
    rst $38                                       ; $7fb2: $ff
    ld h, e                                       ; $7fb3: $63
    ld [de], a                                    ; $7fb4: $12
    ld [hl], $e8                                  ; $7fb5: $36 $e8
    inc e                                         ; $7fb7: $1c
    ld hl, $0004                                  ; $7fb8: $21 $04 $00
    ld d, e                                       ; $7fbb: $53
    pop bc                                        ; $7fbc: $c1
    dec a                                         ; $7fbd: $3d

jr_09a_7fbe:
    db $e3                                        ; $7fbe: $e3
    inc [hl]                                      ; $7fbf: $34
    ld b, b                                       ; $7fc0: $40
    jr z, @+$01                                   ; $7fc1: $28 $ff

    cpl                                           ; $7fc3: $2f
    ld a, l                                       ; $7fc4: $7d
    ld [hl-], a                                   ; $7fc5: $32
    dec d                                         ; $7fc6: $15
    ld c, c                                       ; $7fc7: $49
    adc l                                         ; $7fc8: $8d
    jr c, @+$01                                   ; $7fc9: $38 $ff

    rla                                           ; $7fcb: $17
    ld a, l                                       ; $7fcc: $7d
    ld a, [hl+]                                   ; $7fcd: $2a
    dec d                                         ; $7fce: $15
    ld b, c                                       ; $7fcf: $41
    adc l                                         ; $7fd0: $8d
    jr nc, jr_09a_7f71                            ; $7fd1: $30 $9e

    rlca                                          ; $7fd3: $07
    ld sp, hl                                     ; $7fd4: $f9
    add hl, de                                    ; $7fd5: $19
    sub c                                         ; $7fd6: $91
    jr nc, @+$0b                                  ; $7fd7: $30 $09

    jr nz, jr_09a_7f71                            ; $7fd9: $20 $96

    ld [bc], a                                    ; $7fdb: $02
    pop af                                        ; $7fdc: $f1
    nop                                           ; $7fdd: $00
    add hl, bc                                    ; $7fde: $09
    db $10                                        ; $7fdf: $10
    ld bc, $0c00                                  ; $7fe0: $01 $00 $0c
    nop                                           ; $7fe3: $00
    nop                                           ; $7fe4: $00
    inc c                                         ; $7fe5: $0c
    nop                                           ; $7fe6: $00
    nop                                           ; $7fe7: $00
    ld [de], a                                    ; $7fe8: $12
    nop                                           ; $7fe9: $00
    ld bc, $0012                                  ; $7fea: $01 $12 $00
    ld bc, $0007                                  ; $7fed: $01 $07 $00
    ld [hl], l                                    ; $7ff0: $75
    nop                                           ; $7ff1: $00
    inc [hl]                                      ; $7ff2: $34
    nop                                           ; $7ff3: $00
    ld [bc], a                                    ; $7ff4: $02
    nop                                           ; $7ff5: $00
    ret                                           ; $7ff6: $c9


    nop                                           ; $7ff7: $00
    sbc a                                         ; $7ff8: $9f
    nop                                           ; $7ff9: $00
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
