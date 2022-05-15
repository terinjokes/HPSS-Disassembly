; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $092", ROMX[$4000], BANK[$92]

    sub d                                         ; $4000: $92
    add b                                         ; $4001: $80
    ld d, $84                                     ; $4002: $16 $84
    ld de, $ff40                                  ; $4004: $11 $40 $ff
    ld bc, $b160                                  ; $4007: $01 $60 $b1
    rst $38                                       ; $400a: $ff
    rst $20                                       ; $400b: $e7
    rst $38                                       ; $400c: $ff
    db $db                                        ; $400d: $db
    rst $20                                       ; $400e: $e7
    nop                                           ; $400f: $00
    push hl                                       ; $4010: $e5
    jp $c3f9                                      ; $4011: $c3 $f9 $c3


    push de                                       ; $4014: $d5
    db $e3                                        ; $4015: $e3
    di                                            ; $4016: $f3
    rst $38                                       ; $4017: $ff
    nop                                           ; $4018: $00
    jp hl                                         ; $4019: $e9


    rst $38                                       ; $401a: $ff
    di                                            ; $401b: $f3
    db $fd                                        ; $401c: $fd
    pop de                                        ; $401d: $d1
    rst $38                                       ; $401e: $ff
    adc a                                         ; $401f: $8f
    rst $38                                       ; $4020: $ff
    nop                                           ; $4021: $00
    ld h, e                                       ; $4022: $63
    sbc a                                         ; $4023: $9f
    dec d                                         ; $4024: $15
    rst $28                                       ; $4025: $ef
    add a                                         ; $4026: $87
    rst $38                                       ; $4027: $ff
    db $dd                                        ; $4028: $dd
    rst $38                                       ; $4029: $ff
    nop                                           ; $402a: $00
    ld [$d4fd], a                                 ; $402b: $ea $fd $d4
    ei                                            ; $402e: $fb
    and c                                         ; $402f: $a1
    rst $38                                       ; $4030: $ff
    set 4, a                                      ; $4031: $cb $e7
    nop                                           ; $4033: $00
    or l                                          ; $4034: $b5
    jp $f1ce                                      ; $4035: $c3 $ce $f1


    ld [hl], a                                    ; $4038: $77
    rst $38                                       ; $4039: $ff
    xor l                                         ; $403a: $ad
    di                                            ; $403b: $f3
    nop                                           ; $403c: $00
    ld [c], a                                     ; $403d: $e2
    db $fd                                        ; $403e: $fd
    db $f4                                        ; $403f: $f4
    ei                                            ; $4040: $fb
    reti                                          ; $4041: $d9


    rst $38                                       ; $4042: $ff
    cp a                                          ; $4043: $bf
    rst $38                                       ; $4044: $ff
    ld b, b                                       ; $4045: $40
    db $e3                                        ; $4046: $e3
    inc d                                         ; $4047: $14
    nop                                           ; $4048: $00
    push de                                       ; $4049: $d5
    db $e3                                        ; $404a: $e3
    db $ed                                        ; $404b: $ed
    di                                            ; $404c: $f3
    pop af                                        ; $404d: $f1
    rst $38                                       ; $404e: $ff
    nop                                           ; $404f: $00
    ld d, h                                       ; $4050: $54
    db $eb                                        ; $4051: $eb
    ret nz                                        ; $4052: $c0

    ld a, a                                       ; $4053: $7f
    jp Jump_000_2e7f                              ; $4054: $c3 $7f $2e


    rst $38                                       ; $4057: $ff
    nop                                           ; $4058: $00
    jp c, $b4fc                                   ; $4059: $da $fc $b4

    ld hl, sp-$18                                 ; $405c: $f8 $e8
    ldh a, [$ed]                                  ; $405e: $f0 $ed
    ldh a, [rP1]                                  ; $4060: $f0 $00
    ld [hl], l                                    ; $4062: $75
    ei                                            ; $4063: $fb
    xor a                                         ; $4064: $af
    pop af                                        ; $4065: $f1
    rst $38                                       ; $4066: $ff
    pop hl                                        ; $4067: $e1
    ld [hl], l                                    ; $4068: $75
    db $eb                                        ; $4069: $eb
    nop                                           ; $406a: $00
    jp hl                                         ; $406b: $e9


    scf                                           ; $406c: $37
    ld d, c                                       ; $406d: $51
    ccf                                           ; $406e: $3f
    ei                                            ; $406f: $fb
    rra                                           ; $4070: $1f
    ld l, l                                       ; $4071: $6d
    rra                                           ; $4072: $1f
    nop                                           ; $4073: $00
    inc de                                        ; $4074: $13
    db $fc                                        ; $4075: $fc
    ld l, l                                       ; $4076: $6d
    sbc [hl]                                      ; $4077: $9e
    or [hl]                                       ; $4078: $b6
    ld c, a                                       ; $4079: $4f
    dec bc                                        ; $407a: $0b
    rst $30                                       ; $407b: $f7
    nop                                           ; $407c: $00
    inc bc                                        ; $407d: $03
    rst $38                                       ; $407e: $ff
    ld d, a                                       ; $407f: $57
    rst $38                                       ; $4080: $ff
    ld a, [$6fff]                                 ; $4081: $fa $ff $6f
    sbc a                                         ; $4084: $9f
    nop                                           ; $4085: $00
    ld [hl], a                                    ; $4086: $77
    jr jr_092_40dc                                ; $4087: $18 $53

    cp h                                          ; $4089: $bc
    sbc l                                         ; $408a: $9d
    ld a, d                                       ; $408b: $7a
    ld a, d                                       ; $408c: $7a
    db $fd                                        ; $408d: $fd
    nop                                           ; $408e: $00
    db $fc                                        ; $408f: $fc
    rst $38                                       ; $4090: $ff
    ld d, [hl]                                    ; $4091: $56
    xor a                                         ; $4092: $af
    dec sp                                        ; $4093: $3b
    rst $00                                       ; $4094: $c7
    rlca                                          ; $4095: $07
    ei                                            ; $4096: $fb
    nop                                           ; $4097: $00
    ld l, a                                       ; $4098: $6f
    ldh a, [$be]                                  ; $4099: $f0 $be
    ld [hl], c                                    ; $409b: $71
    push af                                       ; $409c: $f5
    ld a, [hl-]                                   ; $409d: $3a
    ld hl, sp+$3f                                 ; $409e: $f8 $3f
    nop                                           ; $40a0: $00
    cp [hl]                                       ; $40a1: $be
    ld a, a                                       ; $40a2: $7f
    daa                                           ; $40a3: $27
    rst $38                                       ; $40a4: $ff
    ld e, l                                       ; $40a5: $5d
    db $e3                                        ; $40a6: $e3
    and $c1                                       ; $40a7: $e6 $c1
    nop                                           ; $40a9: $00
    ei                                            ; $40aa: $fb
    dec c                                         ; $40ab: $0d
    xor [hl]                                      ; $40ac: $ae
    ld e, c                                       ; $40ad: $59
    ld c, d                                       ; $40ae: $4a
    cp l                                          ; $40af: $bd
    inc e                                         ; $40b0: $1c
    rst $38                                       ; $40b1: $ff
    nop                                           ; $40b2: $00
    ld h, l                                       ; $40b3: $65
    rst $38                                       ; $40b4: $ff
    sbc e                                         ; $40b5: $9b
    rst $20                                       ; $40b6: $e7
    ld a, l                                       ; $40b7: $7d
    jp $c1fe                                      ; $40b8: $c3 $fe $c1


    nop                                           ; $40bb: $00
    adc $07                                       ; $40bc: $ce $07
    ld b, a                                       ; $40be: $47
    inc bc                                        ; $40bf: $03
    xor l                                         ; $40c0: $ad
    inc bc                                        ; $40c1: $03
    rst $30                                       ; $40c2: $f7
    ld bc, $ff00                                  ; $40c3: $01 $00 $ff
    ld bc, $a35d                                  ; $40c6: $01 $5d $a3
    add hl, hl                                    ; $40c9: $29
    rst $10                                       ; $40ca: $d7
    ld bc, $00ff                                  ; $40cb: $01 $ff $00
    xor e                                         ; $40ce: $ab
    rst $38                                       ; $40cf: $ff
    ld d, [hl]                                    ; $40d0: $56
    rst $38                                       ; $40d1: $ff
    cp l                                          ; $40d2: $bd
    cp $ff                                        ; $40d3: $fe $ff
    db $fc                                        ; $40d5: $fc
    nop                                           ; $40d6: $00
    db $fd                                        ; $40d7: $fd
    cp $9b                                        ; $40d8: $fe $9b
    db $fc                                        ; $40da: $fc
    add hl, bc                                    ; $40db: $09

jr_092_40dc:
    cp $88                                        ; $40dc: $fe $88
    rst $38                                       ; $40de: $ff
    nop                                           ; $40df: $00
    add l                                         ; $40e0: $85
    ret nz                                        ; $40e1: $c0

    ld [$f781], a                                 ; $40e2: $ea $81 $f7
    add b                                         ; $40e5: $80
    cp [hl]                                       ; $40e6: $be
    pop bc                                        ; $40e7: $c1
    nop                                           ; $40e8: $00
    sub h                                         ; $40e9: $94
    db $eb                                        ; $40ea: $eb
    jp z, $c4f5                                   ; $40eb: $ca $f5 $c4

    ei                                            ; $40ee: $fb
    pop hl                                        ; $40ef: $e1
    rst $38                                       ; $40f0: $ff
    nop                                           ; $40f1: $00
    push af                                       ; $40f2: $f5
    jp z, $f54a                                   ; $40f3: $ca $4a $f5

    ld b, h                                       ; $40f6: $44
    ei                                            ; $40f7: $fb
    ld h, c                                       ; $40f8: $61
    rst $38                                       ; $40f9: $ff
    nop                                           ; $40fa: $00
    ld [hl], c                                    ; $40fb: $71
    rst $38                                       ; $40fc: $ff
    ld c, a                                       ; $40fd: $4f
    rst $38                                       ; $40fe: $ff
    add a                                         ; $40ff: $87
    rst $38                                       ; $4100: $ff
    or e                                          ; $4101: $b3
    rst $08                                       ; $4102: $cf
    db $10                                        ; $4103: $10
    xor e                                         ; $4104: $ab
    rst $38                                       ; $4105: $ff
    rst $10                                       ; $4106: $d7
    di                                            ; $4107: $f3
    db $10                                        ; $4108: $10
    ret nz                                        ; $4109: $c0

    rst $38                                       ; $410a: $ff
    add d                                         ; $410b: $82
    db $fd                                        ; $410c: $fd
    nop                                           ; $410d: $00
    rla                                           ; $410e: $17
    add sp, $0b                                   ; $410f: $e8 $0b
    db $f4                                        ; $4111: $f4
    ld c, l                                       ; $4112: $4d
    cp $bc                                        ; $4113: $fe $bc
    rst $38                                       ; $4115: $ff
    nop                                           ; $4116: $00
    sub $ef                                       ; $4117: $d6 $ef
    add e                                         ; $4119: $83
    rst $38                                       ; $411a: $ff
    and e                                         ; $411b: $a3
    rst $38                                       ; $411c: $ff
    ld d, l                                       ; $411d: $55
    rst $38                                       ; $411e: $ff
    nop                                           ; $411f: $00
    ld a, a                                       ; $4120: $7f
    rst $38                                       ; $4121: $ff
    or a                                          ; $4122: $b7
    ld a, b                                       ; $4123: $78
    rst $38                                       ; $4124: $ff
    rst $38                                       ; $4125: $ff
    db $dd                                        ; $4126: $dd
    db $e3                                        ; $4127: $e3
    nop                                           ; $4128: $00
    xor e                                         ; $4129: $ab
    ret nz                                        ; $412a: $c0

    ld h, b                                       ; $412b: $60
    add b                                         ; $412c: $80
    push de                                       ; $412d: $d5
    nop                                           ; $412e: $00
    ld l, a                                       ; $412f: $6f
    add b                                         ; $4130: $80
    nop                                           ; $4131: $00
    ld a, d                                       ; $4132: $7a
    add l                                         ; $4133: $85
    call nc, $b9ab                                ; $4134: $d4 $ab $b9
    rst $00                                       ; $4137: $c7
    and c                                         ; $4138: $a1
    rst $18                                       ; $4139: $df
    nop                                           ; $413a: $00
    ld d, l                                       ; $413b: $55
    db $eb                                        ; $413c: $eb
    db $e3                                        ; $413d: $e3
    ld a, a                                       ; $413e: $7f
    db $fd                                        ; $413f: $fd
    ld a, a                                       ; $4140: $7f
    ld d, a                                       ; $4141: $57
    rst $28                                       ; $4142: $ef
    nop                                           ; $4143: $00
    ld l, e                                       ; $4144: $6b
    rst $00                                       ; $4145: $c7
    ld b, a                                       ; $4146: $47
    jp $fe01                                      ; $4147: $c3 $01 $fe


    add b                                         ; $414a: $80
    rst $38                                       ; $414b: $ff
    ld bc, $fe51                                  ; $414c: $01 $51 $fe
    xor d                                         ; $414f: $aa
    rst $38                                       ; $4150: $ff
    push de                                       ; $4151: $d5
    rst $38                                       ; $4152: $ff
    ei                                            ; $4153: $fb
    jr nc, jr_092_4156                            ; $4154: $30 $00

jr_092_4156:
    nop                                           ; $4156: $00
    sub l                                         ; $4157: $95
    rst $38                                       ; $4158: $ff
    dec l                                         ; $4159: $2d
    ldh a, [$be]                                  ; $415a: $f0 $be
    ld h, b                                       ; $415c: $60
    cpl                                           ; $415d: $2f
    ldh a, [rP1]                                  ; $415e: $f0 $00
    and l                                         ; $4160: $a5
    ld a, [$fd72]                                 ; $4161: $fa $72 $fd
    ret c                                         ; $4164: $d8

    rst $38                                       ; $4165: $ff
    xor $ff                                       ; $4166: $ee $ff
    nop                                           ; $4168: $00
    ld b, c                                       ; $4169: $41
    rst $38                                       ; $416a: $ff
    ld hl, sp+$00                                 ; $416b: $f8 $00
    db $fd                                        ; $416d: $fd
    nop                                           ; $416e: $00
    ld a, a                                       ; $416f: $7f
    add b                                         ; $4170: $80
    inc b                                         ; $4171: $04
    xor d                                         ; $4172: $aa
    ld d, l                                       ; $4173: $55
    ld d, h                                       ; $4174: $54
    xor e                                         ; $4175: $ab
    add b                                         ; $4176: $80
    ld d, d                                       ; $4177: $52
    nop                                           ; $4178: $00
    rst $38                                       ; $4179: $ff
    rst $38                                       ; $417a: $ff
    db $10                                        ; $417b: $10
    and $f9                                       ; $417c: $e6 $f9
    pop af                                        ; $417e: $f1
    ld h, e                                       ; $417f: $63
    ld de, $f7ea                                  ; $4180: $11 $ea $f7
    ld [hl], h                                    ; $4183: $74
    ei                                            ; $4184: $fb
    dec b                                         ; $4185: $05
    cp d                                          ; $4186: $ba
    ld a, l                                       ; $4187: $7d
    dec a                                         ; $4188: $3d
    db $fc                                        ; $4189: $fc
    ld a, a                                       ; $418a: $7f
    ld [hl], c                                    ; $418b: $71
    ld bc, $02fe                                  ; $418c: $01 $fe $02
    nop                                           ; $418f: $00
    nop                                           ; $4190: $00
    ld d, [hl]                                    ; $4191: $56
    rst $28                                       ; $4192: $ef
    cpl                                           ; $4193: $2f
    rst $18                                       ; $4194: $df
    ld e, a                                       ; $4195: $5f
    cp a                                          ; $4196: $bf
    cp a                                          ; $4197: $bf
    ccf                                           ; $4198: $3f
    nop                                           ; $4199: $00
    db $dd                                        ; $419a: $dd
    cp $fb                                        ; $419b: $fe $fb
    db $fc                                        ; $419d: $fc
    di                                            ; $419e: $f3
    ld a, h                                       ; $419f: $7c
    ld [hl], l                                    ; $41a0: $75
    ld a, [hl-]                                   ; $41a1: $3a
    nop                                           ; $41a2: $00
    jp c, $d535                                   ; $41a3: $da $35 $d5

    ld a, [hl-]                                   ; $41a6: $3a
    sbc b                                         ; $41a7: $98
    ld a, a                                       ; $41a8: $7f
    inc e                                         ; $41a9: $1c
    rst $38                                       ; $41aa: $ff
    nop                                           ; $41ab: $00
    cp e                                          ; $41ac: $bb
    rst $00                                       ; $41ad: $c7
    ld [$8501], a                                 ; $41ae: $ea $01 $85
    nop                                           ; $41b1: $00
    ld [c], a                                     ; $41b2: $e2
    nop                                           ; $41b3: $00
    nop                                           ; $41b4: $00
    push de                                       ; $41b5: $d5
    nop                                           ; $41b6: $00
    rst $38                                       ; $41b7: $ff
    nop                                           ; $41b8: $00
    ld a, l                                       ; $41b9: $7d
    add d                                         ; $41ba: $82
    xor d                                         ; $41bb: $aa
    ld d, l                                       ; $41bc: $55
    inc b                                         ; $41bd: $04

Call_092_41be:
    ld hl, sp+$7f                                 ; $41be: $f8 $7f
    ld a, l                                       ; $41c0: $7d
    cp $fe                                        ; $41c1: $fe $fe
    ld l, h                                       ; $41c3: $6c
    nop                                           ; $41c4: $00
    ld sp, hl                                     ; $41c5: $f9
    rst $38                                       ; $41c6: $ff
    nop                                           ; $41c7: $00
    db $fc                                        ; $41c8: $fc
    rst $38                                       ; $41c9: $ff
    ld a, [hl]                                    ; $41ca: $7e
    ei                                            ; $41cb: $fb
    ld a, c                                       ; $41cc: $79
    rst $38                                       ; $41cd: $ff
    sbc a                                         ; $41ce: $9f
    ld a, a                                       ; $41cf: $7f
    nop                                           ; $41d0: $00
    ccf                                           ; $41d1: $3f
    ld a, a                                       ; $41d2: $7f
    ld a, a                                       ; $41d3: $7f
    rst $38                                       ; $41d4: $ff
    rst $18                                       ; $41d5: $df
    rst $38                                       ; $41d6: $ff
    ld e, $ff                                     ; $41d7: $1e $ff
    nop                                           ; $41d9: $00
    ld a, $ff                                     ; $41da: $3e $ff
    cp $df                                        ; $41dc: $fe $df
    sbc a                                         ; $41de: $9f
    rst $38                                       ; $41df: $ff
    ld e, a                                       ; $41e0: $5f
    rst $38                                       ; $41e1: $ff
    nop                                           ; $41e2: $00
    xor c                                         ; $41e3: $a9
    rst $30                                       ; $41e4: $f7
    ld e, l                                       ; $41e5: $5d
    db $e3                                        ; $41e6: $e3
    set 6, l                                      ; $41e7: $cb $f5
    and l                                         ; $41e9: $a5
    ld a, e                                       ; $41ea: $7b
    nop                                           ; $41eb: $00
    sub e                                         ; $41ec: $93
    ccf                                           ; $41ed: $3f
    ccf                                           ; $41ee: $3f
    rra                                           ; $41ef: $1f
    xor $1f                                       ; $41f0: $ee $1f
    inc d                                         ; $41f2: $14
    db $eb                                        ; $41f3: $eb
    db $10                                        ; $41f4: $10
    and c                                         ; $41f5: $a1
    ld e, a                                       ; $41f6: $5f
    inc bc                                        ; $41f7: $03
    inc d                                         ; $41f8: $14
    ld bc, $fcaf                                  ; $41f9: $01 $af $fc
    rst $38                                       ; $41fc: $ff
    ld hl, sp+$00                                 ; $41fd: $f8 $00
    or $f8                                        ; $41ff: $f6 $f8
    ld [hl], e                                    ; $4201: $73
    db $fc                                        ; $4202: $fc
    ld a, l                                       ; $4203: $7d
    ei                                            ; $4204: $fb
    ei                                            ; $4205: $fb
    ei                                            ; $4206: $fb
    db $10                                        ; $4207: $10
    pop af                                        ; $4208: $f1
    ei                                            ; $4209: $fb
    rst $38                                       ; $420a: $ff
    or b                                          ; $420b: $b0
    nop                                           ; $420c: $00
    add b                                         ; $420d: $80
    rst $38                                       ; $420e: $ff
    ld a, a                                       ; $420f: $7f
    add b                                         ; $4210: $80
    nop                                           ; $4211: $00
    add b                                         ; $4212: $80
    nop                                           ; $4213: $00
    cp a                                          ; $4214: $bf
    rst $18                                       ; $4215: $df
    rst $38                                       ; $4216: $ff
    rst $18                                       ; $4217: $df
    adc a                                         ; $4218: $8f
    rst $18                                       ; $4219: $df
    nop                                           ; $421a: $00
    rst $38                                       ; $421b: $ff
    rst $38                                       ; $421c: $ff
    ld d, h                                       ; $421d: $54
    rst $38                                       ; $421e: $ff
    nop                                           ; $421f: $00
    rst $38                                       ; $4220: $ff
    cp $01                                        ; $4221: $fe $01
    nop                                           ; $4223: $00
    ld bc, $cd00                                  ; $4224: $01 $00 $cd
    ld a, $9c                                     ; $4227: $3e $9c
    ld a, a                                       ; $4229: $7f
    cp [hl]                                       ; $422a: $be
    rst $38                                       ; $422b: $ff
    nop                                           ; $422c: $00
    ld b, a                                       ; $422d: $47
    rst $38                                       ; $422e: $ff
    sub c                                         ; $422f: $91
    rst $28                                       ; $4230: $ef
    inc c                                         ; $4231: $0c
    di                                            ; $4232: $f3
    ld h, $d9                                     ; $4233: $26 $d9
    nop                                           ; $4235: $00
    ld c, d                                       ; $4236: $4a
    or l                                          ; $4237: $b5
    ld [hl], l                                    ; $4238: $75
    ld a, [hl-]                                   ; $4239: $3a
    inc de                                        ; $423a: $13
    inc a                                         ; $423b: $3c
    ld a, b                                       ; $423c: $78
    rra                                           ; $423d: $1f
    inc b                                         ; $423e: $04
    call nc, $ba3f                                ; $423f: $d4 $3f $ba
    ld a, a                                       ; $4242: $7f
    ld e, l                                       ; $4243: $5d
    ret c                                         ; $4244: $d8

    ld bc, $ff54                                  ; $4245: $01 $54 $ff
    nop                                           ; $4248: $00
    rst $38                                       ; $4249: $ff
    nop                                           ; $424a: $00
    ld [hl], h                                    ; $424b: $74
    adc e                                         ; $424c: $8b
    xor c                                         ; $424d: $a9
    ld d, a                                       ; $424e: $57
    ld d, e                                       ; $424f: $53
    xor a                                         ; $4250: $af
    ld d, h                                       ; $4251: $54
    ld a, [bc]                                    ; $4252: $0a
    ld l, b                                       ; $4253: $68
    ld bc, $b2fd                                  ; $4254: $01 $fd $b2
    ld bc, $bec5                                  ; $4257: $01 $c5 $be
    nop                                           ; $425a: $00
    add a                                         ; $425b: $87
    rst $38                                       ; $425c: $ff
    inc b                                         ; $425d: $04
    ld a, [hl+]                                   ; $425e: $2a
    rst $10                                       ; $425f: $d7
    inc de                                        ; $4260: $13
    rst $28                                       ; $4261: $ef
    ld hl, $0132                                  ; $4262: $21 $32 $01
    xor d                                         ; $4265: $aa
    rst $38                                       ; $4266: $ff
    ld bc, $fb04                                  ; $4267: $01 $04 $fb
    nop                                           ; $426a: $00
    rst $38                                       ; $426b: $ff
    ld bc, $8bff                                  ; $426c: $01 $ff $8b
    add [hl]                                      ; $426f: $86
    ld bc, $ec40                                  ; $4270: $01 $40 $ec
    ret nc                                        ; $4273: $d0

    ld bc, $ffd0                                  ; $4274: $01 $d0 $ff
    xor d                                         ; $4277: $aa
    rst $10                                       ; $4278: $d7
    push bc                                       ; $4279: $c5
    rst $38                                       ; $427a: $ff
    nop                                           ; $427b: $00
    ld a, a                                       ; $427c: $7f
    cp a                                          ; $427d: $bf
    and a                                         ; $427e: $a7
    ld a, a                                       ; $427f: $7f
    ld e, a                                       ; $4280: $5f
    db $e3                                        ; $4281: $e3
    di                                            ; $4282: $f3
    rst $00                                       ; $4283: $c7
    inc b                                         ; $4284: $04
    xor d                                         ; $4285: $aa
    rst $00                                       ; $4286: $c7
    push af                                       ; $4287: $f5
    adc a                                         ; $4288: $8f
    cp a                                          ; $4289: $bf
    ld d, b                                       ; $428a: $50
    ld [bc], a                                    ; $428b: $02
    jp c, $00e7                                   ; $428c: $da $e7 $00

    xor a                                         ; $428f: $af
    jp $83c5                                      ; $4290: $c3 $c5 $83


    db $eb                                        ; $4293: $eb
    add c                                         ; $4294: $81
    cp l                                          ; $4295: $bd
    jp $d500                                      ; $4296: $c3 $00 $d5


    xor e                                         ; $4299: $ab
    xor d                                         ; $429a: $aa
    push de                                       ; $429b: $d5
    add h                                         ; $429c: $84
    ei                                            ; $429d: $fb
    pop bc                                        ; $429e: $c1
    rst $38                                       ; $429f: $ff
    ld d, b                                       ; $42a0: $50
    and d                                         ; $42a1: $a2
    ld b, b                                       ; $42a2: $40
    ld de, $04ff                                  ; $42a3: $11 $ff $04
    ld [bc], a                                    ; $42a6: $02
    db $ed                                        ; $42a7: $ed
    jp $c3f5                                      ; $42a8: $c3 $f5 $c3


    ld bc, $c56b                                  ; $42ab: $01 $6b $c5
    push de                                       ; $42ae: $d5
    db $eb                                        ; $42af: $eb
    ret                                           ; $42b0: $c9


    rst $30                                       ; $42b1: $f7
    ld [c], a                                     ; $42b2: $e2
    ld h, b                                       ; $42b3: $60
    nop                                           ; $42b4: $00
    nop                                           ; $42b5: $00
    ld d, d                                       ; $42b6: $52
    rst $38                                       ; $42b7: $ff
    add l                                         ; $42b8: $85
    ld a, e                                       ; $42b9: $7b
    dec [hl]                                      ; $42ba: $35
    bit 1, e                                      ; $42bb: $cb $4b
    cp a                                          ; $42bd: $bf
    nop                                           ; $42be: $00
    xor [hl]                                      ; $42bf: $ae
    ld d, c                                       ; $42c0: $51
    ld [hl], l                                    ; $42c1: $75
    adc d                                         ; $42c2: $8a
    ld e, [hl]                                    ; $42c3: $5e
    and c                                         ; $42c4: $a1
    ld [hl], l                                    ; $42c5: $75
    adc d                                         ; $42c6: $8a
    nop                                           ; $42c7: $00
    adc c                                         ; $42c8: $89
    ld a, a                                       ; $42c9: $7f
    sub c                                         ; $42ca: $91
    ld a, [hl]                                    ; $42cb: $7e
    ld d, h                                       ; $42cc: $54
    cp a                                          ; $42cd: $bf
    ld a, d                                       ; $42ce: $7a
    xor a                                         ; $42cf: $af
    nop                                           ; $42d0: $00
    ld h, d                                       ; $42d1: $62
    db $fd                                        ; $42d2: $fd
    add hl, de                                    ; $42d3: $19
    and $b5                                       ; $42d4: $e6 $b5
    ld c, d                                       ; $42d6: $4a
    ld c, d                                       ; $42d7: $4a
    cp a                                          ; $42d8: $bf
    nop                                           ; $42d9: $00
    push hl                                       ; $42da: $e5
    ld a, d                                       ; $42db: $7a
    inc de                                        ; $42dc: $13
    rst $28                                       ; $42dd: $ef
    xor c                                         ; $42de: $a9
    ld d, a                                       ; $42df: $57
    ld [hl], l                                    ; $42e0: $75
    adc d                                         ; $42e1: $8a
    nop                                           ; $42e2: $00
    ld l, $d1                                     ; $42e3: $2e $d1
    pop de                                        ; $42e5: $d1
    ld l, $1b                                     ; $42e6: $2e $1b
    db $e4                                        ; $42e8: $e4
    xor d                                         ; $42e9: $aa
    ld d, l                                       ; $42ea: $55
    nop                                           ; $42eb: $00
    ret nz                                        ; $42ec: $c0

    ccf                                           ; $42ed: $3f
    ld b, l                                       ; $42ee: $45
    cp d                                          ; $42ef: $ba
    cp d                                          ; $42f0: $ba
    ld b, l                                       ; $42f1: $45
    xor b                                         ; $42f2: $a8
    ld d, a                                       ; $42f3: $57
    nop                                           ; $42f4: $00
    push de                                       ; $42f5: $d5
    ld a, [hl+]                                   ; $42f6: $2a
    ld e, c                                       ; $42f7: $59
    and [hl]                                      ; $42f8: $a6
    ld d, h                                       ; $42f9: $54
    rst $38                                       ; $42fa: $ff
    and d                                         ; $42fb: $a2
    ld a, l                                       ; $42fc: $7d
    nop                                           ; $42fd: $00
    push de                                       ; $42fe: $d5
    ld a, [hl+]                                   ; $42ff: $2a

Jump_092_4300:
    db $eb                                        ; $4300: $eb
    ld d, h                                       ; $4301: $54
    sub l                                         ; $4302: $95
    ld [$8d72], a                                 ; $4303: $ea $72 $8d
    nop                                           ; $4306: $00

Call_092_4307:
    and c                                         ; $4307: $a1
    ld e, [hl]                                    ; $4308: $5e
    ld l, e                                       ; $4309: $6b
    sub h                                         ; $430a: $94
    ld d, a                                       ; $430b: $57
    xor b                                         ; $430c: $a8
    adc d                                         ; $430d: $8a
    ld a, l                                       ; $430e: $7d
    nop                                           ; $430f: $00
    ld hl, $b5fe                                  ; $4310: $21 $fe $b5
    ld a, d                                       ; $4313: $7a
    ld c, d                                       ; $4314: $4a
    cp l                                          ; $4315: $bd
    xor d                                         ; $4316: $aa
    ld d, a                                       ; $4317: $57
    nop                                           ; $4318: $00
    halt                                          ; $4319: $76
    add hl, bc                                    ; $431a: $09
    cp d                                          ; $431b: $ba
    inc b                                         ; $431c: $04
    dec d                                         ; $431d: $15
    ld [$d4ab], a                                 ; $431e: $ea $ab $d4
    nop                                           ; $4321: $00
    ld [hl], c                                    ; $4322: $71
    adc [hl]                                      ; $4323: $8e
    ld l, [hl]                                    ; $4324: $6e
    sub c                                         ; $4325: $91
    sub l                                         ; $4326: $95
    ld l, d                                       ; $4327: $6a
    ld c, e                                       ; $4328: $4b
    or h                                          ; $4329: $b4
    nop                                           ; $432a: $00
    xor b                                         ; $432b: $a8
    ld d, a                                       ; $432c: $57
    dec b                                         ; $432d: $05
    ld a, [$b14e]                                 ; $432e: $fa $4e $b1
    ld d, l                                       ; $4331: $55
    xor d                                         ; $4332: $aa
    nop                                           ; $4333: $00
    ld d, l                                       ; $4334: $55
    xor d                                         ; $4335: $aa
    ld [$5517], a                                 ; $4336: $ea $17 $55
    xor e                                         ; $4339: $ab
    xor $11                                       ; $433a: $ee $11
    nop                                           ; $433c: $00
    dec de                                        ; $433d: $1b
    db $e4                                        ; $433e: $e4
    ld h, h                                       ; $433f: $64
    sbc e                                         ; $4340: $9b
    sub d                                         ; $4341: $92
    ld l, l                                       ; $4342: $6d
    dec [hl]                                      ; $4343: $35
    ld a, [$4b00]                                 ; $4344: $fa $00 $4b
    db $f4                                        ; $4347: $f4
    ld e, [hl]                                    ; $4348: $5e
    pop af                                        ; $4349: $f1
    inc bc                                        ; $434a: $03
    db $fc                                        ; $434b: $fc
    and l                                         ; $434c: $a5
    ld e, d                                       ; $434d: $5a
    nop                                           ; $434e: $00
    ld e, d                                       ; $434f: $5a
    and l                                         ; $4350: $a5
    xor e                                         ; $4351: $ab
    ld d, h                                       ; $4352: $54
    ld d, l                                       ; $4353: $55
    xor d                                         ; $4354: $aa
    ld [c], a                                     ; $4355: $e2
    dec e                                         ; $4356: $1d
    nop                                           ; $4357: $00
    cp d                                          ; $4358: $ba
    ld b, a                                       ; $4359: $47
    ld hl, sp+$07                                 ; $435a: $f8 $07
    ld d, l                                       ; $435c: $55
    xor d                                         ; $435d: $aa
    ld a, [de]                                    ; $435e: $1a
    push hl                                       ; $435f: $e5
    nop                                           ; $4360: $00
    and e                                         ; $4361: $a3
    ld e, h                                       ; $4362: $5c
    ld e, e                                       ; $4363: $5b
    and h                                         ; $4364: $a4
    cp $01                                        ; $4365: $fe $01
    xor c                                         ; $4367: $a9
    ld d, [hl]                                    ; $4368: $56
    nop                                           ; $4369: $00
    ld d, [hl]                                    ; $436a: $56
    xor e                                         ; $436b: $ab
    sub d                                         ; $436c: $92
    ld a, a                                       ; $436d: $7f
    ld c, a                                       ; $436e: $4f
    cp a                                          ; $436f: $bf
    or a                                          ; $4370: $b7
    ld c, d                                       ; $4371: $4a
    nop                                           ; $4372: $00
    ld a, a                                       ; $4373: $7f
    nop                                           ; $4374: $00
    or b                                          ; $4375: $b0
    rrca                                          ; $4376: $0f
    dec hl                                        ; $4377: $2b
    call nc, Call_000_0e15                        ; $4378: $d4 $15 $0e
    nop                                           ; $437b: $00
    jp c, $ff07                                   ; $437c: $da $07 $ff

    add b                                         ; $437f: $80
    ld d, b                                       ; $4380: $50
    xor a                                         ; $4381: $af

jr_092_4382:
    ld [c], a                                     ; $4382: $e2
    cp l                                          ; $4383: $bd
    nop                                           ; $4384: $00
    push af                                       ; $4385: $f5
    ld c, $37                                     ; $4386: $0e $37
    rst $08                                       ; $4388: $cf
    nop                                           ; $4389: $00
    rst $38                                       ; $438a: $ff
    ld a, [hl+]                                   ; $438b: $2a
    push af                                       ; $438c: $f5
    nop                                           ; $438d: $00
    ld d, l                                       ; $438e: $55
    cp $fd                                        ; $438f: $fe $fd
    inc bc                                        ; $4391: $03
    ld e, $e1                                     ; $4392: $1e $e1
    xor a                                         ; $4394: $af
    stop                                          ; $4395: $10 $00
    ld c, [hl]                                    ; $4397: $4e
    sub b                                         ; $4398: $90
    ld c, a                                       ; $4399: $4f
    ldh a, [rP1]                                  ; $439a: $f0 $00
    rst $38                                       ; $439c: $ff
    ld hl, $00c0                                  ; $439d: $21 $c0 $00
    jr jr_092_4382                                ; $43a0: $18 $e0

    sub d                                         ; $43a2: $92
    ld l, l                                       ; $43a3: $6d
    ld d, h                                       ; $43a4: $54
    xor e                                         ; $43a5: $ab
    xor e                                         ; $43a6: $ab
    call nc, $c500                                ; $43a7: $d4 $00 $c5
    ld a, [hl-]                                   ; $43aa: $3a
    ld b, d                                       ; $43ab: $42
    cp l                                          ; $43ac: $bd
    ld l, e                                       ; $43ad: $6b
    sub h                                         ; $43ae: $94
    or l                                          ; $43af: $b5
    ld c, d                                       ; $43b0: $4a
    nop                                           ; $43b1: $00
    ld a, d                                       ; $43b2: $7a
    add l                                         ; $43b3: $85
    xor l                                         ; $43b4: $ad
    ld d, d                                       ; $43b5: $52
    xor d                                         ; $43b6: $aa
    ld d, l                                       ; $43b7: $55
    dec a                                         ; $43b8: $3d
    jp nz, Jump_092_4300                          ; $43b9: $c2 $00 $43

    cp h                                          ; $43bc: $bc
    call $f432                                    ; $43bd: $cd $32 $f4
    dec bc                                        ; $43c0: $0b
    ld b, l                                       ; $43c1: $45
    cp a                                          ; $43c2: $bf
    nop                                           ; $43c3: $00
    sbc [hl]                                      ; $43c4: $9e
    ld a, a                                       ; $43c5: $7f
    ld c, l                                       ; $43c6: $4d
    cp a                                          ; $43c7: $bf
    xor a                                         ; $43c8: $af
    ld d, d                                       ; $43c9: $52
    push de                                       ; $43ca: $d5
    ld a, [hl+]                                   ; $43cb: $2a
    nop                                           ; $43cc: $00
    ld l, $d1                                     ; $43cd: $2e $d1
    add c                                         ; $43cf: $81
    ld a, [hl]                                    ; $43d0: $7e
    or d                                          ; $43d1: $b2
    ld c, l                                       ; $43d2: $4d
    sub a                                         ; $43d3: $97
    add sp, $02                                   ; $43d4: $e8 $02
    ld d, d                                       ; $43d6: $52
    db $fd                                        ; $43d7: $fd

jr_092_43d8:
    ld h, a                                       ; $43d8: $67
    ld hl, sp-$4c                                 ; $43d9: $f8 $b4
    res 5, d                                      ; $43db: $cb $aa
    nop                                           ; $43dd: $00
    ld d, h                                       ; $43de: $54
    nop                                           ; $43df: $00
    ld [hl], b                                    ; $43e0: $70
    adc a                                         ; $43e1: $8f
    db $fc                                        ; $43e2: $fc
    inc bc                                        ; $43e3: $03
    ld d, l                                       ; $43e4: $55
    xor d                                         ; $43e5: $aa
    sub h                                         ; $43e6: $94
    ld a, a                                       ; $43e7: $7f
    nop                                           ; $43e8: $00
    xor a                                         ; $43e9: $af
    ld d, b                                       ; $43ea: $50
    ld d, l                                       ; $43eb: $55
    xor d                                         ; $43ec: $aa
    and h                                         ; $43ed: $a4
    ld e, a                                       ; $43ee: $5f
    ld d, d                                       ; $43ef: $52
    xor a                                         ; $43f0: $af
    nop                                           ; $43f1: $00
    jp hl                                         ; $43f2: $e9


    ld d, $7c                                     ; $43f3: $16 $7c
    add e                                         ; $43f5: $83
    add l                                         ; $43f6: $85
    ld a, d                                       ; $43f7: $7a
    ld b, d                                       ; $43f8: $42
    cp l                                          ; $43f9: $bd
    nop                                           ; $43fa: $00
    ld a, e                                       ; $43fb: $7b
    add l                                         ; $43fc: $85
    xor [hl]                                      ; $43fd: $ae
    ld d, c                                       ; $43fe: $51
    jr z, jr_092_43d8                             ; $43ff: $28 $d7

    push af                                       ; $4401: $f5
    ld a, [bc]                                    ; $4402: $0a
    ld [bc], a                                    ; $4403: $02
    jp nz, $eb3d                                  ; $4404: $c2 $3d $eb

    inc d                                         ; $4407: $14
    cp $01                                        ; $4408: $fe $01
    ld e, $08                                     ; $440a: $1e $08
    xor e                                         ; $440c: $ab
    nop                                           ; $440d: $00
    ld d, h                                       ; $440e: $54
    sub [hl]                                      ; $440f: $96
    ld l, c                                       ; $4410: $69
    ld l, e                                       ; $4411: $6b
    sub h                                         ; $4412: $94
    ld [$5415], a                                 ; $4413: $ea $15 $54
    nop                                           ; $4416: $00

Jump_092_4417:
    xor e                                         ; $4417: $ab
    cp [hl]                                       ; $4418: $be
    ld b, c                                       ; $4419: $41
    ld d, l                                       ; $441a: $55
    xor d                                         ; $441b: $aa
    db $fd                                        ; $441c: $fd
    ld [bc], a                                    ; $441d: $02
    and l                                         ; $441e: $a5
    nop                                           ; $441f: $00
    ld e, a                                       ; $4420: $5f
    db $d3                                        ; $4421: $d3
    cpl                                           ; $4422: $2f
    ld a, [$5505]                                 ; $4423: $fa $05 $55
    xor d                                         ; $4426: $aa
    or b                                          ; $4427: $b0
    nop                                           ; $4428: $00
    ld b, b                                       ; $4429: $40
    ld l, $d1                                     ; $442a: $2e $d1
    sub l                                         ; $442c: $95
    ld [$e51a], a                                 ; $442d: $ea $1a $e5
    or l                                          ; $4430: $b5
    nop                                           ; $4431: $00
    jp z, $e51a                                   ; $4432: $ca $1a $e5

    inc [hl]                                      ; $4435: $34
    bit 5, b                                      ; $4436: $cb $68
    sub a                                         ; $4438: $97
    ld c, e                                       ; $4439: $4b
    nop                                           ; $443a: $00
    cp a                                          ; $443b: $bf
    and l                                         ; $443c: $a5
    ld e, a                                       ; $443d: $5f
    ld e, l                                       ; $443e: $5d
    and d                                         ; $443f: $a2
    ld c, d                                       ; $4440: $4a
    push af                                       ; $4441: $f5
    ld [$5f00], a                                 ; $4442: $ea $00 $5f
    dec l                                         ; $4445: $2d
    jp nc, $8b74                                  ; $4446: $d2 $74 $8b

    jp hl                                         ; $4449: $e9


    ld d, $bd                                     ; $444a: $16 $bd
    nop                                           ; $444c: $00
    ld b, d                                       ; $444d: $42
    rra                                           ; $444e: $1f
    ldh [rBCPD], a                                ; $444f: $e0 $69
    sub [hl]                                      ; $4451: $96
    xor d                                         ; $4452: $aa
    ld d, l                                       ; $4453: $55
    add hl, hl                                    ; $4454: $29
    nop                                           ; $4455: $00
    sub $fc                                       ; $4456: $d6 $fc
    inc bc                                        ; $4458: $03
    and d                                         ; $4459: $a2
    ld e, l                                       ; $445a: $5d
    ld [hl], l                                    ; $445b: $75
    adc a                                         ; $445c: $8f
    ld c, d                                       ; $445d: $4a
    nop                                           ; $445e: $00
    cp a                                          ; $445f: $bf
    db $eb                                        ; $4460: $eb
    inc d                                         ; $4461: $14
    dec c                                         ; $4462: $0d
    ld a, [c]                                     ; $4463: $f2
    ld hl, sp+$07                                 ; $4464: $f8 $07
    push af                                       ; $4466: $f5
    ld b, b                                       ; $4467: $40
    ld a, [bc]                                    ; $4468: $0a
    ldh a, [$08]                                  ; $4469: $f0 $08
    ld e, c                                       ; $446b: $59
    and [hl]                                      ; $446c: $a6
    ld hl, sp+$07                                 ; $446d: $f8 $07
    xor d                                         ; $446f: $aa
    ld d, l                                       ; $4470: $55
    jr nz, jr_092_44c8                            ; $4471: $20 $55

    xor d                                         ; $4473: $aa
    ldh a, [$08]                                  ; $4474: $f0 $08
    or d                                          ; $4476: $b2
    ld c, a                                       ; $4477: $4f
    dec e                                         ; $4478: $1d
    ld [c], a                                     ; $4479: $e2
    and a                                         ; $447a: $a7
    jr nz, jr_092_44d5                            ; $447b: $20 $58

    ld d, h                                       ; $447d: $54
    cp h                                          ; $447e: $bc
    ld bc, $fe69                                  ; $447f: $01 $69 $fe

jr_092_4482:
    cp a                                          ; $4482: $bf
    ld b, e                                       ; $4483: $43
    cp $00                                        ; $4484: $fe $00
    ld bc, $00d7                                  ; $4486: $01 $d7 $00
    ld e, l                                       ; $4489: $5d
    ld [bc], a                                    ; $448a: $02
    or $0f                                        ; $448b: $f6 $0f
    ld e, l                                       ; $448d: $5d
    nop                                           ; $448e: $00
    cp d                                          ; $448f: $ba
    and e                                         ; $4490: $a3
    ld e, h                                       ; $4491: $5c
    rst $38                                       ; $4492: $ff
    nop                                           ; $4493: $00
    and a                                         ; $4494: $a7
    rst $38                                       ; $4495: $ff
    ld [bc], a                                    ; $4496: $02
    nop                                           ; $4497: $00
    db $fd                                        ; $4498: $fd
    sub h                                         ; $4499: $94
    ld h, b                                       ; $449a: $60
    ld l, $f0                                     ; $449b: $2e $f0
    or l                                          ; $449d: $b5
    ld a, [$00fb]                                 ; $449e: $fa $fb $00
    ccf                                           ; $44a1: $3f
    ld b, b                                       ; $44a2: $40
    cp a                                          ; $44a3: $bf
    db $fc                                        ; $44a4: $fc
    inc bc                                        ; $44a5: $03
    ld a, d                                       ; $44a6: $7a
    rst $38                                       ; $44a7: $ff
    cp a                                          ; $44a8: $bf
    nop                                           ; $44a9: $00
    ld e, a                                       ; $44aa: $5f
    ld c, d                                       ; $44ab: $4a
    dec [hl]                                      ; $44ac: $35
    and a                                         ; $44ad: $a7
    jr jr_092_4482                                ; $44ae: $18 $d2

    dec a                                         ; $44b0: $3d
    ld a, $00                                     ; $44b1: $3e $00
    rst $18                                       ; $44b3: $df
    dec d                                         ; $44b4: $15
    ld [$8152], a                                 ; $44b5: $ea $52 $81
    ld c, [hl]                                    ; $44b8: $4e
    ldh a, [$7c]                                  ; $44b9: $f0 $7c
    nop                                           ; $44bb: $00
    rst $38                                       ; $44bc: $ff
    xor [hl]                                      ; $44bd: $ae
    ld d, c                                       ; $44be: $51
    cpl                                           ; $44bf: $2f
    db $10                                        ; $44c0: $10
    db $ec                                        ; $44c1: $ec
    ld [de], a                                    ; $44c2: $12

jr_092_44c3:
    ld e, a                                       ; $44c3: $5f
    nop                                           ; $44c4: $00
    and b                                         ; $44c5: $a0
    ld a, [hl+]                                   ; $44c6: $2a
    rst $18                                       ; $44c7: $df

jr_092_44c8:
    cp $01                                        ; $44c8: $fe $01
    rlca                                          ; $44ca: $07
    ld hl, sp-$56                                 ; $44cb: $f8 $aa
    nop                                           ; $44cd: $00
    db $fd                                        ; $44ce: $fd
    ld l, c                                       ; $44cf: $69
    or $54                                        ; $44d0: $f6 $54
    ei                                            ; $44d2: $fb
    xor a                                         ; $44d3: $af
    ld d, b                                       ; $44d4: $50

jr_092_44d5:
    dec sp                                        ; $44d5: $3b
    nop                                           ; $44d6: $00
    call nz, Call_000_32cd                        ; $44d7: $c4 $cd $32
    xor b                                         ; $44da: $a8
    ld d, a                                       ; $44db: $57
    ld d, c                                       ; $44dc: $51
    xor a                                         ; $44dd: $af
    xor l                                         ; $44de: $ad
    nop                                           ; $44df: $00
    ld d, e                                       ; $44e0: $53
    ld a, [hl]                                    ; $44e1: $7e
    add c                                         ; $44e2: $81
    adc d                                         ; $44e3: $8a
    ld [hl], l                                    ; $44e4: $75
    ld h, a                                       ; $44e5: $67
    sbc b                                         ; $44e6: $98
    dec e                                         ; $44e7: $1d
    nop                                           ; $44e8: $00
    ld [c], a                                     ; $44e9: $e2
    jr z, jr_092_44c3                             ; $44ea: $28 $d7

    ld e, [hl]                                    ; $44ec: $5e
    and c                                         ; $44ed: $a1
    dec e                                         ; $44ee: $1d
    ldh [$d4], a                                  ; $44ef: $e0 $d4
    nop                                           ; $44f1: $00
    rst $38                                       ; $44f2: $ff
    ld bc, $fcfe                                  ; $44f3: $01 $fe $fc
    inc bc                                        ; $44f6: $03
    jp c, Jump_092_542f                           ; $44f7: $da $2f $54

    nop                                           ; $44fa: $00
    xor a                                         ; $44fb: $af
    dec hl                                        ; $44fc: $2b
    call nc, $816a                                ; $44fd: $d4 $6a $81
    db $fd                                        ; $4500: $fd
    ld [bc], a                                    ; $4501: $02
    ei                                            ; $4502: $fb
    nop                                           ; $4503: $00
    inc b                                         ; $4504: $04
    ld [hl], c                                    ; $4505: $71
    adc [hl]                                      ; $4506: $8e
    add sp, $17                                   ; $4507: $e8 $17
    sub h                                         ; $4509: $94
    db $eb                                        ; $450a: $eb
    xor d                                         ; $450b: $aa
    nop                                           ; $450c: $00
    ld d, l                                       ; $450d: $55
    ld e, l                                       ; $450e: $5d
    and d                                         ; $450f: $a2
    ld [$4d15], a                                 ; $4510: $ea $15 $4d
    cp a                                          ; $4513: $bf
    xor d                                         ; $4514: $aa
    jp nz, Jump_000_01ee                          ; $4515: $c2 $ee $01

    jr nc, jr_092_4533                            ; $4518: $30 $19

    db $fd                                        ; $451a: $fd
    add d                                         ; $451b: $82
    ld [hl], d                                    ; $451c: $72
    call c, Call_000_3930                         ; $451d: $dc $30 $39
    cp h                                          ; $4520: $bc
    nop                                           ; $4521: $00
    ld b, e                                       ; $4522: $43
    rlca                                          ; $4523: $07
    ld hl, sp-$7e                                 ; $4524: $f8 $82
    dec b                                         ; $4526: $05
    ld d, h                                       ; $4527: $54
    xor a                                         ; $4528: $af
    and a                                         ; $4529: $a7
    ld bc, $975f                                  ; $452a: $01 $5f $97
    ld l, a                                       ; $452d: $6f
    ld a, [$ef05]                                 ; $452e: $fa $05 $ef
    db $10                                        ; $4531: $10
    db $10                                        ; $4532: $10

jr_092_4533:
    add hl, de                                    ; $4533: $19
    nop                                           ; $4534: $00
    ldh [rTAC], a                                 ; $4535: $e0 $07
    add hl, sp                                    ; $4537: $39
    add $fa                                       ; $4538: $c6 $fa
    rst $38                                       ; $453a: $ff
    ld [bc], a                                    ; $453b: $02
    rst $38                                       ; $453c: $ff
    nop                                           ; $453d: $00
    ld b, e                                       ; $453e: $43
    add a                                         ; $453f: $87
    sub d                                         ; $4540: $92
    push hl                                       ; $4541: $e5
    rst $20                                       ; $4542: $e7
    ld hl, sp-$2b                                 ; $4543: $f8 $d5
    ld a, [hl+]                                   ; $4545: $2a
    nop                                           ; $4546: $00
    ld a, [bc]                                    ; $4547: $0a
    push af                                       ; $4548: $f5
    add e                                         ; $4549: $83
    ld bc, $02d1                                  ; $454a: $01 $d1 $02
    jr c, @-$3b                                   ; $454d: $38 $c3

    ld [$fce3], sp                                ; $454f: $08 $e3 $fc
    sbc a                                         ; $4552: $9f
    ld h, b                                       ; $4553: $60
    ld b, b                                       ; $4554: $40
    ld a, [bc]                                    ; $4555: $0a
    and l                                         ; $4556: $a5
    ld e, a                                       ; $4557: $5f
    ld e, a                                       ; $4558: $5f
    nop                                           ; $4559: $00
    cp a                                          ; $455a: $bf
    sbc h                                         ; $455b: $9c
    ld a, a                                       ; $455c: $7f
    ld l, c                                       ; $455d: $69
    sbc [hl]                                      ; $455e: $9e
    xor l                                         ; $455f: $ad
    rst $38                                       ; $4560: $ff
    cp $28                                        ; $4561: $fe $28
    rst $08                                       ; $4563: $cf
    xor a                                         ; $4564: $af
    ld d, b                                       ; $4565: $50
    inc bc                                        ; $4566: $03
    cpl                                           ; $4567: $2f
    ld l, b                                       ; $4568: $68
    inc bc                                        ; $4569: $03
    add hl, de                                    ; $456a: $19
    cp $4c                                        ; $456b: $fe $4c
    ld a, [bc]                                    ; $456d: $0a
    cp a                                          ; $456e: $bf
    ld a, [hl+]                                   ; $456f: $2a
    rst $18                                       ; $4570: $df
    cp l                                          ; $4571: $bd
    dec de                                        ; $4572: $1b
    dec d                                         ; $4573: $15
    push bc                                       ; $4574: $c5
    ld hl, $1c05                                  ; $4575: $21 $05 $1c
    ld h, b                                       ; $4578: $60
    rst $38                                       ; $4579: $ff
    jr nz, jr_092_458c                            ; $457a: $20 $10

    dec hl                                        ; $457c: $2b
    dec d                                         ; $457d: $15
    push af                                       ; $457e: $f5
    ei                                            ; $457f: $fb
    xor a                                         ; $4580: $af
    rst $30                                       ; $4581: $f7
    ld e, l                                       ; $4582: $5d
    nop                                           ; $4583: $00
    rst $20                                       ; $4584: $e7
    xor $45                                       ; $4585: $ee $45
    rst $10                                       ; $4587: $d7
    ld c, h                                       ; $4588: $4c
    ld l, [hl]                                    ; $4589: $6e
    push de                                       ; $458a: $d5
    ld d, h                                       ; $458b: $54

jr_092_458c:
    nop                                           ; $458c: $00
    rst $28                                       ; $458d: $ef
    ld c, a                                       ; $458e: $4f
    rst $38                                       ; $458f: $ff
    reti                                          ; $4590: $d9


    rst $38                                       ; $4591: $ff
    ld l, [hl]                                    ; $4592: $6e
    pop af                                        ; $4593: $f1
    pop af                                        ; $4594: $f1
    nop                                           ; $4595: $00
    ret nz                                        ; $4596: $c0

    xor e                                         ; $4597: $ab
    ret nz                                        ; $4598: $c0

    db $dd                                        ; $4599: $dd
    add b                                         ; $459a: $80
    rst $30                                       ; $459b: $f7
    add b                                         ; $459c: $80
    db $fd                                        ; $459d: $fd
    nop                                           ; $459e: $00
    add d                                         ; $459f: $82
    xor d                                         ; $45a0: $aa
    push de                                       ; $45a1: $d5
    ld e, a                                       ; $45a2: $5f
    rst $38                                       ; $45a3: $ff
    xor a                                         ; $45a4: $af
    rst $38                                       ; $45a5: $ff
    sbc $00                                       ; $45a6: $de $00
    rst $38                                       ; $45a8: $ff
    db $ed                                        ; $45a9: $ed
    cp $14                                        ; $45aa: $fe $14
    rst $38                                       ; $45ac: $ff
    rst $30                                       ; $45ad: $f7
    rrca                                          ; $45ae: $0f
    dec de                                        ; $45af: $1b
    ld [$4f07], sp                                ; $45b0: $08 $07 $4f
    inc bc                                        ; $45b3: $03
    rst $28                                       ; $45b4: $ef
    ld a, [hl+]                                   ; $45b5: $2a
    inc b                                         ; $45b6: $04
    rst $28                                       ; $45b7: $ef
    rst $38                                       ; $45b8: $ff
    rst $38                                       ; $45b9: $ff
    nop                                           ; $45ba: $00
    ld a, a                                       ; $45bb: $7f
    ld a, h                                       ; $45bc: $7c
    rst $38                                       ; $45bd: $ff
    di                                            ; $45be: $f3
    db $fc                                        ; $45bf: $fc
    db $eb                                        ; $45c0: $eb
    db $f4                                        ; $45c1: $f4
    push hl                                       ; $45c2: $e5
    nop                                           ; $45c3: $00
    ld a, [$03bf]                                 ; $45c4: $fa $bf $03
    ld a, [$d607]                                 ; $45c7: $fa $07 $d6
    dec hl                                        ; $45ca: $2b
    xor d                                         ; $45cb: $aa
    nop                                           ; $45cc: $00
    ld d, a                                       ; $45cd: $57
    ld b, a                                       ; $45ce: $47
    cp a                                          ; $45cf: $bf
    xor l                                         ; $45d0: $ad
    cp $f7                                        ; $45d1: $fe $f7
    db $fc                                        ; $45d3: $fc
    dec c                                         ; $45d4: $0d
    ld [bc], a                                    ; $45d5: $02
    cp $f0                                        ; $45d6: $fe $f0
    rst $38                                       ; $45d8: $ff
    jr z, @+$01                                   ; $45d9: $28 $ff

    dec [hl]                                      ; $45db: $35
    ld a, [bc]                                    ; $45dc: $0a
    dec b                                         ; $45dd: $05
    rra                                           ; $45de: $1f
    nop                                           ; $45df: $00
    rst $38                                       ; $45e0: $ff
    cpl                                           ; $45e1: $2f
    rra                                           ; $45e2: $1f
    sub a                                         ; $45e3: $97
    rrca                                          ; $45e4: $0f
    ld l, e                                       ; $45e5: $6b
    rlca                                          ; $45e6: $07
    push af                                       ; $45e7: $f5
    inc bc                                        ; $45e8: $03
    rst $38                                       ; $45e9: $ff
    dec hl                                        ; $45ea: $2b
    rst $30                                       ; $45eb: $f7
    add hl, de                                    ; $45ec: $19
    rst $20                                       ; $45ed: $e7
    ld b, e                                       ; $45ee: $43
    add [hl]                                      ; $45ef: $86
    dec b                                         ; $45f0: $05
    and l                                         ; $45f1: $a5
    inc bc                                        ; $45f2: $03
    add b                                         ; $45f3: $80
    sbc l                                         ; $45f4: $9d
    dec b                                         ; $45f5: $05
    cp c                                          ; $45f6: $b9
    add $51                                       ; $45f7: $c6 $51
    xor [hl]                                      ; $45f9: $ae
    xor e                                         ; $45fa: $ab
    db $f4                                        ; $45fb: $f4
    ld d, [hl]                                    ; $45fc: $56
    nop                                           ; $45fd: $00
    xor c                                         ; $45fe: $a9
    and l                                         ; $45ff: $a5
    ld e, d                                       ; $4600: $5a

Jump_092_4601:
    ld e, b                                       ; $4601: $58
    and a                                         ; $4602: $a7
    xor e                                         ; $4603: $ab
    ld e, a                                       ; $4604: $5f
    ld d, l                                       ; $4605: $55
    nop                                           ; $4606: $00
    xor e                                         ; $4607: $ab
    ld d, l                                       ; $4608: $55
    xor e                                         ; $4609: $ab
    xor d                                         ; $460a: $aa
    ld d, l                                       ; $460b: $55
    ld d, a                                       ; $460c: $57
    xor b                                         ; $460d: $a8
    inc a                                         ; $460e: $3c
    nop                                           ; $460f: $00
    jp $a659                                      ; $4610: $c3 $59 $a6


    xor [hl]                                      ; $4613: $ae
    ld d, c                                       ; $4614: $51
    ld d, h                                       ; $4615: $54
    db $eb                                        ; $4616: $eb
    xor c                                         ; $4617: $a9
    nop                                           ; $4618: $00
    cp $be                                        ; $4619: $fe $be
    ld b, c                                       ; $461b: $41
    xor d                                         ; $461c: $aa
    ld d, l                                       ; $461d: $55
    push bc                                       ; $461e: $c5
    ld a, [hl-]                                   ; $461f: $3a
    ld e, l                                       ; $4620: $5d
    nop                                           ; $4621: $00
    and d                                         ; $4622: $a2
    or $0f                                        ; $4623: $f6 $0f
    ld e, h                                       ; $4625: $5c
    cp a                                          ; $4626: $bf
    and e                                         ; $4627: $a3
    ld e, h                                       ; $4628: $5c
    cp $00                                        ; $4629: $fe $00
    ld bc, $5fbc                                  ; $462b: $01 $bc $5f
    or e                                          ; $462e: $b3
    ld c, h                                       ; $462f: $4c
    ld e, [hl]                                    ; $4630: $5e
    and c                                         ; $4631: $a1
    ld e, e                                       ; $4632: $5b
    nop                                           ; $4633: $00
    and h                                         ; $4634: $a4
    sub h                                         ; $4635: $94
    ei                                            ; $4636: $fb
    xor c                                         ; $4637: $a9
    halt                                          ; $4638: $76
    ld c, a                                       ; $4639: $4f
    or b                                          ; $463a: $b0
    push af                                       ; $463b: $f5
    nop                                           ; $463c: $00
    ld a, [bc]                                    ; $463d: $0a
    ld a, [$1705]                                 ; $463e: $fa $05 $17
    add sp, -$6d                                  ; $4641: $e8 $93
    ld a, h                                       ; $4643: $7c
    ld a, [hl+]                                   ; $4644: $2a
    nop                                           ; $4645: $00
    rst $18                                       ; $4646: $df
    push de                                       ; $4647: $d5
    dec hl                                        ; $4648: $2b
    ld l, e                                       ; $4649: $6b
    sub h                                         ; $464a: $94
    sub $29                                       ; $464b: $d6 $29
    or l                                          ; $464d: $b5
    nop                                           ; $464e: $00
    ld c, d                                       ; $464f: $4a
    sub h                                         ; $4650: $94
    rst $28                                       ; $4651: $ef
    xor e                                         ; $4652: $ab
    ld d, h                                       ; $4653: $54
    sub b                                         ; $4654: $90
    ld l, a                                       ; $4655: $6f
    rlc b                                         ; $4656: $cb $00
    db $f4                                        ; $4658: $f4
    ld h, h                                       ; $4659: $64
    ld a, [$bd5a]                                 ; $465a: $fa $5a $bd
    xor d                                         ; $465d: $aa
    ld e, a                                       ; $465e: $5f
    ld [de], a                                    ; $465f: $12
    nop                                           ; $4660: $00
    db $fd                                        ; $4661: $fd
    ld d, c                                       ; $4662: $51
    xor [hl]                                      ; $4663: $ae
    xor d                                         ; $4664: $aa
    ld d, l                                       ; $4665: $55
    ld [hl], l                                    ; $4666: $75
    adc d                                         ; $4667: $8a
    adc b                                         ; $4668: $88
    db $10                                        ; $4669: $10
    ld [hl], a                                    ; $466a: $77
    ld h, [hl]                                    ; $466b: $66
    sbc c                                         ; $466c: $99
    add b                                         ; $466d: $80
    add hl, de                                    ; $466e: $19
    ld d, l                                       ; $466f: $55
    xor d                                         ; $4670: $aa
    cp [hl]                                       ; $4671: $be
    ld b, c                                       ; $4672: $41
    nop                                           ; $4673: $00
    ret                                           ; $4674: $c9


    ld a, $34                                     ; $4675: $3e $34
    rst $38                                       ; $4677: $ff
    adc d                                         ; $4678: $8a
    ld a, a                                       ; $4679: $7f
    ld d, h                                       ; $467a: $54
    xor a                                         ; $467b: $af
    nop                                           ; $467c: $00
    ld a, a                                       ; $467d: $7f
    add b                                         ; $467e: $80
    ld l, b                                       ; $467f: $68
    sub a                                         ; $4680: $97
    push bc                                       ; $4681: $c5
    ld a, [hl-]                                   ; $4682: $3a
    dec hl                                        ; $4683: $2b
    call nc, $f120                                ; $4684: $d4 $20 $f1
    ld c, $80                                     ; $4687: $0e $80
    add hl, sp                                    ; $4689: $39
    sbc d                                         ; $468a: $9a
    rlca                                          ; $468b: $07
    ld c, l                                       ; $468c: $4d
    inc bc                                        ; $468d: $03
    xor e                                         ; $468e: $ab
    nop                                           ; $468f: $00
    ld bc, $03fd                                  ; $4690: $01 $fd $03
    cp c                                          ; $4693: $b9
    ld b, a                                       ; $4694: $47
    ld d, e                                       ; $4695: $53
    xor a                                         ; $4696: $af
    add a                                         ; $4697: $87
    nop                                           ; $4698: $00
    ld a, [hl]                                    ; $4699: $7e
    ld a, h                                       ; $469a: $7c
    rst $38                                       ; $469b: $ff
    call nc, Call_000_290f                        ; $469c: $d4 $0f $29
    sbc $a8                                       ; $469f: $de $a8
    jr nz, @+$01                                  ; $46a1: $20 $ff

    ldh a, [$cc]                                  ; $46a3: $f0 $cc
    dec b                                         ; $46a5: $05
    dec l                                         ; $46a6: $2d
    rst $18                                       ; $46a7: $df
    ld d, [hl]                                    ; $46a8: $56
    xor a                                         ; $46a9: $af
    daa                                           ; $46aa: $27
    nop                                           ; $46ab: $00
    rst $18                                       ; $46ac: $df
    or d                                          ; $46ad: $b2
    rst $08                                       ; $46ae: $cf
    ld b, c                                       ; $46af: $41
    add e                                         ; $46b0: $83
    ld l, d                                       ; $46b1: $6a
    add c                                         ; $46b2: $81
    or a                                          ; $46b3: $b7
    nop                                           ; $46b4: $00
    ret nz                                        ; $46b5: $c0

    sbc d                                         ; $46b6: $9a
    pop hl                                        ; $46b7: $e1
    call z, $69f3                                 ; $46b8: $cc $f3 $69
    rst $38                                       ; $46bb: $ff
    or a                                          ; $46bc: $b7
    nop                                           ; $46bd: $00
    rst $38                                       ; $46be: $ff
    ld c, $ff                                     ; $46bf: $0e $ff
    sbc l                                         ; $46c1: $9d
    cp $f9                                        ; $46c2: $fe $f9
    cp $fd                                        ; $46c4: $fe $fd
    ld [bc], a                                    ; $46c6: $02
    cp $d8                                        ; $46c7: $fe $d8
    rst $38                                       ; $46c9: $ff
    xor l                                         ; $46ca: $ad
    cp $5a                                        ; $46cb: $fe $5a
    ld b, d                                       ; $46cd: $42
    inc b                                         ; $46ce: $04
    ld e, [hl]                                    ; $46cf: $5e
    nop                                           ; $46d0: $00
    rst $38                                       ; $46d1: $ff
    or a                                          ; $46d2: $b7
    ld e, h                                       ; $46d3: $5c
    xor l                                         ; $46d4: $ad
    ld hl, sp+$56                                 ; $46d5: $f8 $56
    ld hl, sp-$11                                 ; $46d7: $f8 $ef
    nop                                           ; $46d9: $00
    ldh a, [$6f]                                  ; $46da: $f0 $6f
    ldh a, [rBGP]                                 ; $46dc: $f0 $47
    ld hl, sp-$16                                 ; $46de: $f8 $ea
    push af                                       ; $46e0: $f5
    xor $00                                       ; $46e1: $ee $00
    rra                                           ; $46e3: $1f
    adc e                                         ; $46e4: $8b
    rlca                                          ; $46e5: $07
    ld d, l                                       ; $46e6: $55
    inc bc                                        ; $46e7: $03
    xor d                                         ; $46e8: $aa
    ld bc, $20f6                                  ; $46e9: $01 $f6 $20
    ld bc, $d4ee                                  ; $46ec: $01 $ee $d4
    dec b                                         ; $46ef: $05
    db $fd                                        ; $46f0: $fd

jr_092_46f1:
    inc bc                                        ; $46f1: $03
    push de                                       ; $46f2: $d5
    ld a, [$00e2]                                 ; $46f3: $fa $e2 $00
    db $fd                                        ; $46f6: $fd
    ld [hl], b                                    ; $46f7: $70
    rst $38                                       ; $46f8: $ff
    cp b                                          ; $46f9: $b8
    ld a, a                                       ; $46fa: $7f
    ld [hl], l                                    ; $46fb: $75
    cp a                                          ; $46fc: $bf
    rra                                           ; $46fd: $1f
    add b                                         ; $46fe: $80
    ld e, b                                       ; $46ff: $58
    ld b, $4a                                     ; $4700: $06 $4a
    rst $38                                       ; $4702: $ff
    ld d, e                                       ; $4703: $53
    xor a                                         ; $4704: $af
    and d                                         ; $4705: $a2
    ld e, a                                       ; $4706: $5f
    ld b, a                                       ; $4707: $47
    inc hl                                        ; $4708: $23
    cp a                                          ; $4709: $bf
    dec bc                                        ; $470a: $0b
    add sp, $04                                   ; $470b: $e8 $04
    cp a                                          ; $470d: $bf
    rst $38                                       ; $470e: $ff
    push af                                       ; $470f: $f5
    ld [hl], b                                    ; $4710: $70
    inc b                                         ; $4711: $04
    or b                                          ; $4712: $b0
    ld c, $40                                     ; $4713: $0e $40
    pop af                                        ; $4715: $f1
    add [hl]                                      ; $4716: $86
    ld bc, $ff79                                  ; $4717: $01 $79 $ff
    rst $18                                       ; $471a: $df
    ccf                                           ; $471b: $3f
    rst $28                                       ; $471c: $ef
    rra                                           ; $471d: $1f
    dec d                                         ; $471e: $15
    ld c, a                                       ; $471f: $4f
    cp a                                          ; $4720: $bf
    ei                                            ; $4721: $fb
    adc d                                         ; $4722: $8a
    dec b                                         ; $4723: $05
    xor e                                         ; $4724: $ab
    db $10                                        ; $4725: $10
    dec b                                         ; $4726: $05
    cp $68                                        ; $4727: $fe $68
    nop                                           ; $4729: $00
    db $10                                        ; $472a: $10
    inc e                                         ; $472b: $1c
    rst $38                                       ; $472c: $ff
    dec a                                         ; $472d: $3d
    rst $08                                       ; $472e: $cf
    ld d, $d7                                     ; $472f: $16 $d7
    rst $28                                       ; $4731: $ef
    set 6, a                                      ; $4732: $cb $f7
    nop                                           ; $4734: $00
    ld h, e                                       ; $4735: $63
    rst $38                                       ; $4736: $ff
    ld a, a                                       ; $4737: $7f
    ccf                                           ; $4738: $3f
    cp a                                          ; $4739: $bf
    rra                                           ; $473a: $1f
    ld e, a                                       ; $473b: $5f
    cp a                                          ; $473c: $bf
    ld bc, $7f99                                  ; $473d: $01 $99 $7f
    ld a, [bc]                                    ; $4740: $0a
    db $fd                                        ; $4741: $fd
    ld e, b                                       ; $4742: $58
    rst $38                                       ; $4743: $ff
    xor b                                         ; $4744: $a8
    call c, Call_000_0005                         ; $4745: $dc $05 $00
    rst $30                                       ; $4748: $f7
    ld hl, sp-$14                                 ; $4749: $f8 $ec
    ldh a, [$e6]                                  ; $474b: $f0 $e6
    ld hl, sp-$1a                                 ; $474d: $f8 $e6
    rst $38                                       ; $474f: $ff
    nop                                           ; $4750: $00
    sub l                                         ; $4751: $95
    db $eb                                        ; $4752: $eb
    xor c                                         ; $4753: $a9
    rst $10                                       ; $4754: $d7
    add c                                         ; $4755: $81
    rst $38                                       ; $4756: $ff
    jp nc, Jump_000_00ff                          ; $4757: $d2 $ff $00

    ld a, a                                       ; $475a: $7f
    db $fc                                        ; $475b: $fc
    ld a, a                                       ; $475c: $7f
    jr c, jr_092_46f1                             ; $475d: $38 $92

    inc a                                         ; $475f: $3c
    and a                                         ; $4760: $a7
    rst $38                                       ; $4761: $ff
    db $10                                        ; $4762: $10
    db $eb                                        ; $4763: $eb
    rst $30                                       ; $4764: $f7
    jp nc, Jump_000_05cc                          ; $4765: $d2 $cc $05

    rst $20                                       ; $4768: $e7
    rra                                           ; $4769: $1f
    push bc                                       ; $476a: $c5
    inc bc                                        ; $476b: $03
    ld [$00a1], sp                                ; $476c: $08 $a1 $00
    call nc, Call_000_1000                        ; $476f: $d4 $00 $10
    inc bc                                        ; $4772: $03
    ret nz                                        ; $4773: $c0

    db $fc                                        ; $4774: $fc
    nop                                           ; $4775: $00
    ld a, [bc]                                    ; $4776: $0a
    and d                                         ; $4777: $a2
    dec e                                         ; $4778: $1d
    ld [hl], l                                    ; $4779: $75
    rrca                                          ; $477a: $0f
    db $10                                        ; $477b: $10
    inc de                                        ; $477c: $13
    ld [bc], a                                    ; $477d: $02
    nop                                           ; $477e: $00
    inc b                                         ; $477f: $04
    ld a, [hl+]                                   ; $4780: $2a
    ld a, [hl+]                                   ; $4781: $2a
    ld a, [de]                                    ; $4782: $1a
    dec b                                         ; $4783: $05
    nop                                           ; $4784: $00
    inc b                                         ; $4785: $04
    and b                                         ; $4786: $a0
    nop                                           ; $4787: $00
    inc e                                         ; $4788: $1c
    xor b                                         ; $4789: $a8
    sbc d                                         ; $478a: $9a
    dec b                                         ; $478b: $05
    ld l, d                                       ; $478c: $6a
    nop                                           ; $478d: $00
    dec d                                         ; $478e: $15
    inc d                                         ; $478f: $14
    rst $38                                       ; $4790: $ff
    xor c                                         ; $4791: $a9
    cp $93                                        ; $4792: $fe $93
    ld a, h                                       ; $4794: $7c
    sub $00                                       ; $4795: $d6 $00
    add hl, hl                                    ; $4797: $29
    ld a, [hl-]                                   ; $4798: $3a
    rlca                                          ; $4799: $07
    ld [hl], e                                    ; $479a: $73
    add b                                         ; $479b: $80
    jp nc, $b92f                                  ; $479c: $d2 $2f $b9

    nop                                           ; $479f: $00
    ld b, a                                       ; $47a0: $47
    ld d, [hl]                                    ; $47a1: $56
    xor c                                         ; $47a2: $a9
    adc l                                         ; $47a3: $8d
    ld [bc], a                                    ; $47a4: $02
    add $01                                       ; $47a5: $c6 $01
    ld d, l                                       ; $47a7: $55
    nop                                           ; $47a8: $00
    xor d                                         ; $47a9: $aa
    or h                                          ; $47aa: $b4
    ld b, b                                       ; $47ab: $40
    ld l, a                                       ; $47ac: $6f
    add b                                         ; $47ad: $80
    add l                                         ; $47ae: $85
    ld a, [$006a]                                 ; $47af: $fa $6a $00
    cp l                                          ; $47b2: $bd
    push de                                       ; $47b3: $d5
    ld hl, sp+$47                                 ; $47b4: $f8 $47
    cp b                                          ; $47b6: $b8
    ei                                            ; $47b7: $fb
    inc b                                         ; $47b8: $04
    adc e                                         ; $47b9: $8b
    ld de, $2f00                                  ; $47ba: $11 $00 $2f
    nop                                           ; $47bd: $00
    ld b, b                                       ; $47be: $40
    ld bc, $f1c0                                  ; $47bf: $01 $c0 $f1
    nop                                           ; $47c2: $00
    ret nz                                        ; $47c3: $c0

    ld [hl-], a                                   ; $47c4: $32
    nop                                           ; $47c5: $00
    db $10                                        ; $47c6: $10
    ld a, d                                       ; $47c7: $7a
    dec b                                         ; $47c8: $05
    and h                                         ; $47c9: $a4
    dec de                                        ; $47ca: $1b
    ld [hl], l                                    ; $47cb: $75
    adc a                                         ; $47cc: $8f
    cp l                                          ; $47cd: $bd
    ld [$5642], sp                                ; $47ce: $08 $42 $56
    xor c                                         ; $47d1: $a9
    ldh a, [$e6]                                  ; $47d2: $f0 $e6
    dec b                                         ; $47d4: $05
    sub a                                         ; $47d5: $97
    add sp, -$6e                                  ; $47d6: $e8 $92
    db $10                                        ; $47d8: $10
    dec b                                         ; $47d9: $05
    ld d, h                                       ; $47da: $54
    xor d                                         ; $47db: $aa
    jr nz, jr_092_47f2                            ; $47dc: $20 $14

    nop                                           ; $47de: $00
    ld l, e                                       ; $47df: $6b
    add b                                         ; $47e0: $80
    or l                                          ; $47e1: $b5
    inc b                                         ; $47e2: $04
    ld b, d                                       ; $47e3: $42
    ld a, d                                       ; $47e4: $7a
    add l                                         ; $47e5: $85
    ld h, l                                       ; $47e6: $65
    ld a, [$0420]                                 ; $47e7: $fa $20 $04
    ld [bc], a                                    ; $47ea: $02
    ld b, e                                       ; $47eb: $43
    db $10                                        ; $47ec: $10
    add b                                         ; $47ed: $80
    call Call_000_2000                            ; $47ee: $cd $00 $20
    inc e                                         ; $47f1: $1c

jr_092_47f2:
    ld l, e                                       ; $47f2: $6b
    call nc, $e895                                ; $47f3: $d4 $95 $e8
    ld [bc], a                                    ; $47f6: $02
    ld [hl], d                                    ; $47f7: $72
    add b                                         ; $47f8: $80
    and c                                         ; $47f9: $a1
    ld b, b                                       ; $47fa: $40
    ld l, e                                       ; $47fb: $6b
    inc d                                         ; $47fc: $14
    ret nc                                        ; $47fd: $d0

    inc e                                         ; $47fe: $1c
    db $fd                                        ; $47ff: $fd
    ld de, $5702                                  ; $4800: $11 $02 $57
    jr z, jr_092_4815                             ; $4803: $28 $10

    inc [hl]                                      ; $4805: $34
    nop                                           ; $4806: $00
    ld b, d                                       ; $4807: $42
    add c                                         ; $4808: $81
    db $10                                        ; $4809: $10
    inc d                                         ; $480a: $14
    nop                                           ; $480b: $00
    ret nz                                        ; $480c: $c0

    push af                                       ; $480d: $f5
    nop                                           ; $480e: $00
    jp nz, $eb00                                  ; $480f: $c2 $00 $eb

    nop                                           ; $4812: $00
    cp $10                                        ; $4813: $fe $10

jr_092_4815:
    nop                                           ; $4815: $00
    xor a                                         ; $4816: $af
    ld d, b                                       ; $4817: $50
    ld h, b                                       ; $4818: $60
    dec sp                                        ; $4819: $3b
    ld a, [hl-]                                   ; $481a: $3a
    nop                                           ; $481b: $00
    call Call_000_0200                            ; $481c: $cd $00 $02
    xor c                                         ; $481f: $a9
    ld d, [hl]                                    ; $4820: $56
    ld d, c                                       ; $4821: $51
    inc bc                                        ; $4822: $03
    xor l                                         ; $4823: $ad
    ld b, e                                       ; $4824: $43
    ld h, b                                       ; $4825: $60
    inc bc                                        ; $4826: $03
    ld d, c                                       ; $4827: $51
    nop                                           ; $4828: $00
    ld h, a                                       ; $4829: $67
    adc b                                         ; $482a: $88
    dec e                                         ; $482b: $1d
    ld [bc], a                                    ; $482c: $02
    jr z, jr_092_4836                             ; $482d: $28 $07

    ld e, [hl]                                    ; $482f: $5e
    and c                                         ; $4830: $a1
    add b                                         ; $4831: $80
    ld d, b                                       ; $4832: $50
    inc bc                                        ; $4833: $03
    nop                                           ; $4834: $00
    ld [hl], c                                    ; $4835: $71

jr_092_4836:
    add b                                         ; $4836: $80
    rst $38                                       ; $4837: $ff
    nop                                           ; $4838: $00
    sbc h                                         ; $4839: $9c
    db $e3                                        ; $483a: $e3
    ld [bc], a                                    ; $483b: $02
    xor l                                         ; $483c: $ad
    ld d, e                                       ; $483d: $53
    ld e, l                                       ; $483e: $5d
    and e                                         ; $483f: $a3
    db $eb                                        ; $4840: $eb
    ld de, $2350                                  ; $4841: $11 $50 $23
    ld bc, $830a                                  ; $4844: $01 $0a $83
    nop                                           ; $4847: $00
    or d                                          ; $4848: $b2
    ld b, c                                       ; $4849: $41
    add b                                         ; $484a: $80
    inc h                                         ; $484b: $24
    ret nz                                        ; $484c: $c0

    add b                                         ; $484d: $80
    inc d                                         ; $484e: $14
    nop                                           ; $484f: $00
    nop                                           ; $4850: $00
    cp h                                          ; $4851: $bc
    ld b, b                                       ; $4852: $40
    ld d, l                                       ; $4853: $55
    xor d                                         ; $4854: $aa
    cp h                                          ; $4855: $bc
    ld d, a                                       ; $4856: $57
    add l                                         ; $4857: $85
    nop                                           ; $4858: $00
    ld [$0a35], sp                                ; $4859: $08 $35 $0a
    ld c, e                                       ; $485c: $4b
    cp a                                          ; $485d: $bf
    inc h                                         ; $485e: $24
    ld [bc], a                                    ; $485f: $02
    ld a, [bc]                                    ; $4860: $0a
    ld e, [hl]                                    ; $4861: $5e
    ld bc, $9081                                  ; $4862: $01 $81 $90
    dec c                                         ; $4865: $0d
    cp [hl]                                       ; $4866: $be
    ld d, c                                       ; $4867: $51
    ld d, l                                       ; $4868: $55
    cp [hl]                                       ; $4869: $be
    ld a, [hl-]                                   ; $486a: $3a
    rst $38                                       ; $486b: $ff
    sub b                                         ; $486c: $90
    dec l                                         ; $486d: $2d
    ld [hl+], a                                   ; $486e: $22
    ld h, l                                       ; $486f: $65
    ld a, [$1480]                                 ; $4870: $fa $80 $14
    nop                                           ; $4873: $00
    ld a, e                                       ; $4874: $7b
    add b                                         ; $4875: $80
    add b                                         ; $4876: $80
    inc d                                         ; $4877: $14
    ld bc, $5546                                  ; $4878: $01 $46 $55
    ldh a, [rP1]                                  ; $487b: $f0 $00
    ld a, [hl-]                                   ; $487d: $3a
    push bc                                       ; $487e: $c5
    jr z, @+$40                                   ; $487f: $28 $3e

    rlca                                          ; $4881: $07
    sub b                                         ; $4882: $90
    dec l                                         ; $4883: $2d
    sub e                                         ; $4884: $93
    ld b, b                                       ; $4885: $40
    ld l, a                                       ; $4886: $6f
    or b                                          ; $4887: $b0
    dec b                                         ; $4888: $05
    ld a, [bc]                                    ; $4889: $0a
    ld l, $01                                     ; $488a: $2e $01
    pop de                                        ; $488c: $d1
    nop                                           ; $488d: $00
    dec de                                        ; $488e: $1b
    ld c, b                                       ; $488f: $48
    ldh [$b0], a                                  ; $4890: $e0 $b0
    dec c                                         ; $4892: $0d
    ld d, a                                       ; $4893: $57
    ld hl, sp+$60                                 ; $4894: $f8 $60
    dec d                                         ; $4896: $15
    dec b                                         ; $4897: $05
    xor e                                         ; $4898: $ab
    nop                                           ; $4899: $00
    jr nz, @+$5b                                  ; $489a: $20 $59

    nop                                           ; $489c: $00
    ld h, b                                       ; $489d: $60
    dec c                                         ; $489e: $0d
    ld e, d                                       ; $489f: $5a
    and l                                         ; $48a0: $a5
    or l                                          ; $48a1: $b5
    ld c, d                                       ; $48a2: $4a
    ld a, [de]                                    ; $48a3: $1a
    ld [bc], a                                    ; $48a4: $02
    ldh [$34], a                                  ; $48a5: $e0 $34
    ret nz                                        ; $48a7: $c0

    add sp, $17                                   ; $48a8: $e8 $17
    ld c, e                                       ; $48aa: $4b
    adc h                                         ; $48ab: $8c
    inc bc                                        ; $48ac: $03
    ld e, l                                       ; $48ad: $5d
    ld b, [hl]                                    ; $48ae: $46
    and d                                         ; $48af: $a2
    ldh [rNR43], a                                ; $48b0: $e0 $22
    nop                                           ; $48b2: $00
    ld e, c                                       ; $48b3: $59
    and b                                         ; $48b4: $a0
    ldh [rNR30], a                                ; $48b5: $e0 $1a
    or b                                          ; $48b7: $b0
    inc b                                         ; $48b8: $04
    rst $38                                       ; $48b9: $ff
    adc b                                         ; $48ba: $88
    or b                                          ; $48bb: $b0
    inc b                                         ; $48bc: $04
    nop                                           ; $48bd: $00
    ld hl, $b000                                  ; $48be: $21 $00 $b0
    inc d                                         ; $48c1: $14
    add b                                         ; $48c2: $80
    ld l, [hl]                                    ; $48c3: $6e
    ld de, $c080                                  ; $48c4: $11 $80 $c0
    dec d                                         ; $48c7: $15
    ld b, b                                       ; $48c8: $40
    dec b                                         ; $48c9: $05
    nop                                           ; $48ca: $00
    ld c, a                                       ; $48cb: $4f
    nop                                           ; $48cc: $00
    ld d, l                                       ; $48cd: $55
    xor d                                         ; $48ce: $aa
    inc h                                         ; $48cf: $24
    dec b                                         ; $48d0: $05
    rst $38                                       ; $48d1: $ff
    and b                                         ; $48d2: $a0
    add hl, hl                                    ; $48d3: $29
    ld e, c                                       ; $48d4: $59
    and b                                         ; $48d5: $a0
    or b                                          ; $48d6: $b0
    ld d, h                                       ; $48d7: $54
    ld [bc], a                                    ; $48d8: $02
    and a                                         ; $48d9: $a7
    ld bc, $5400                                  ; $48da: $01 $00 $54
    xor d                                         ; $48dd: $aa
    xor d                                         ; $48de: $aa
    push de                                       ; $48df: $d5
    jp hl                                         ; $48e0: $e9


    ld e, [hl]                                    ; $48e1: $5e
    jr nz, jr_092_48e7                            ; $48e2: $20 $03

    jr z, jr_092_48e6                             ; $48e4: $28 $00

jr_092_48e6:
    push bc                                       ; $48e6: $c5

jr_092_48e7:
    or b                                          ; $48e7: $b0
    inc e                                         ; $48e8: $1c
    cp [hl]                                       ; $48e9: $be
    jr nz, jr_092_48ef                            ; $48ea: $20 $03

    nop                                           ; $48ec: $00
    and [hl]                                      ; $48ed: $a6
    ld e, b                                       ; $48ee: $58

jr_092_48ef:
    ld [$04b3], sp                                ; $48ef: $08 $b3 $04
    cp $01                                        ; $48f2: $fe $01
    jr nz, @+$35                                  ; $48f4: $20 $33

    nop                                           ; $48f6: $00
    ld d, c                                       ; $48f7: $51
    nop                                           ; $48f8: $00
    nop                                           ; $48f9: $00
    xor d                                         ; $48fa: $aa
    ld b, b                                       ; $48fb: $40
    ld [hl], l                                    ; $48fc: $75
    add b                                         ; $48fd: $80
    adc b                                         ; $48fe: $88
    ld d, e                                       ; $48ff: $53
    ld h, [hl]                                    ; $4900: $66
    adc c                                         ; $4901: $89
    adc h                                         ; $4902: $8c
    jr nz, jr_092_491e                            ; $4903: $20 $19

    cp [hl]                                       ; $4905: $be
    rst $38                                       ; $4906: $ff
    ld e, l                                       ; $4907: $5d
    or b                                          ; $4908: $b0
    dec bc                                        ; $4909: $0b
    jp nc, $d502                                  ; $490a: $d2 $02 $d5

    ld [$be00], a                                 ; $490d: $ea $00 $be
    pop bc                                        ; $4910: $c1
    dec c                                         ; $4911: $0d
    ld a, [c]                                     ; $4912: $f2
    rst $38                                       ; $4913: $ff
    rst $38                                       ; $4914: $ff
    ld h, e                                       ; $4915: $63
    rst $38                                       ; $4916: $ff
    db $10                                        ; $4917: $10
    and e                                         ; $4918: $a3
    rst $38                                       ; $4919: $ff
    rst $30                                       ; $491a: $f7
    or h                                          ; $491b: $b4
    rlca                                          ; $491c: $07
    dec e                                         ; $491d: $1d

jr_092_491e:
    cp $ac                                        ; $491e: $fe $ac
    ld e, a                                       ; $4920: $5f
    inc h                                         ; $4921: $24
    ld [hl], h                                    ; $4922: $74
    adc a                                         ; $4923: $8f
    ld e, [hl]                                    ; $4924: $5e
    ld [bc], a                                    ; $4925: $02
    rst $38                                       ; $4926: $ff
    db $eb                                        ; $4927: $eb
    stop                                          ; $4928: $10 $00
    ld a, [hl]                                    ; $492a: $7e
    rst $38                                       ; $492b: $ff
    nop                                           ; $492c: $00
    dec sp                                        ; $492d: $3b
    db $fc                                        ; $492e: $fc
    ld l, $f0                                     ; $492f: $2e $f0
    ld [hl], l                                    ; $4931: $75
    ret nz                                        ; $4932: $c0

    sub d                                         ; $4933: $92
    db $ed                                        ; $4934: $ed
    inc b                                         ; $4935: $04
    inc b                                         ; $4936: $04
    ei                                            ; $4937: $fb
    add d                                         ; $4938: $82
    db $fd                                        ; $4939: $fd
    ld b, b                                       ; $493a: $40
    ld h, d                                       ; $493b: $62
    ld [bc], a                                    ; $493c: $02
    push de                                       ; $493d: $d5
    rst $38                                       ; $493e: $ff
    nop                                           ; $493f: $00
    ld [$f7ff], a                                 ; $4940: $ea $ff $f7
    ld a, a                                       ; $4943: $7f
    and a                                         ; $4944: $a7
    ld e, a                                       ; $4945: $5f
    ld c, a                                       ; $4946: $4f
    cp a                                          ; $4947: $bf
    ld b, c                                       ; $4948: $41
    rlca                                          ; $4949: $07
    sub [hl]                                      ; $494a: $96
    rlca                                          ; $494b: $07
    cp c                                          ; $494c: $b9
    rst $38                                       ; $494d: $ff
    ld [hl], e                                    ; $494e: $73
    db $fd                                        ; $494f: $fd
    add sp, -$4c                                  ; $4950: $e8 $b4
    rlca                                          ; $4952: $07
    and b                                         ; $4953: $a0
    ld [hl], $0c                                  ; $4954: $36 $0c
    ld a, a                                       ; $4956: $7f
    ld l, $00                                     ; $4957: $2e $00
    ld h, l                                       ; $4959: $65
    rst $38                                       ; $495a: $ff
    ld a, [c]                                     ; $495b: $f2
    rst $38                                       ; $495c: $ff
    ld [$fd06], a                                 ; $495d: $ea $06 $fd
    db $fc                                        ; $4960: $fc
    ld sp, hl                                     ; $4961: $f9
    ld h, a                                       ; $4962: $67
    sbc a                                         ; $4963: $9f
    ld b, e                                       ; $4964: $43
    nop                                           ; $4965: $00
    ld e, d                                       ; $4966: $5a
    rlca                                          ; $4967: $07
    ld h, a                                       ; $4968: $67
    nop                                           ; $4969: $00
    rst $38                                       ; $496a: $ff
    ld c, a                                       ; $496b: $4f
    rst $38                                       ; $496c: $ff
    ld e, [hl]                                    ; $496d: $5e
    cp a                                          ; $496e: $bf
    ld a, $9f                                     ; $496f: $3e $9f
    rst $38                                       ; $4971: $ff
    nop                                           ; $4972: $00
    ccf                                           ; $4973: $3f
    db $fd                                        ; $4974: $fd
    ld a, $da                                     ; $4975: $3e $da
    inc a                                         ; $4977: $3c
    cp a                                          ; $4978: $bf
    ld a, b                                       ; $4979: $78
    ld d, a                                       ; $497a: $57
    nop                                           ; $497b: $00
    ld hl, sp-$45                                 ; $497c: $f8 $bb
    db $f4                                        ; $497e: $f4
    ld a, [hl]                                    ; $497f: $7e
    pop af                                        ; $4980: $f1
    sub l                                         ; $4981: $95
    ld a, [$007b]                                 ; $4982: $fa $7b $00
    add a                                         ; $4985: $87
    sub $01                                       ; $4986: $d6 $01
    and b                                         ; $4988: $a0
    nop                                           ; $4989: $00
    jp c, $f500                                   ; $498a: $da $00 $f5

    inc b                                         ; $498d: $04
    nop                                           ; $498e: $00
    rst $38                                       ; $498f: $ff
    nop                                           ; $4990: $00
    cp $01                                        ; $4991: $fe $01
    cp $04                                        ; $4993: $fe $04
    db $fc                                        ; $4995: $fc
    di                                            ; $4996: $f3
    nop                                           ; $4997: $00
    cp $e8                                        ; $4998: $fe $e8
    cp $e2                                        ; $499a: $fe $e2
    db $fd                                        ; $499c: $fd
    ld [hl], l                                    ; $499d: $75
    ld a, [$006b]                                 ; $499e: $fa $6b $00
    db $fc                                        ; $49a1: $fc
    ld a, [hl]                                    ; $49a2: $7e
    ld hl, sp-$06                                 ; $49a3: $f8 $fa
    db $fc                                        ; $49a5: $fc
    ld e, [hl]                                    ; $49a6: $5e
    cp a                                          ; $49a7: $bf
    adc $00                                       ; $49a8: $ce $00
    rst $38                                       ; $49aa: $ff
    sub a                                         ; $49ab: $97
    ld a, a                                       ; $49ac: $7f
    ld b, a                                       ; $49ad: $47
    cp a                                          ; $49ae: $bf
    xor a                                         ; $49af: $af
    ld e, a                                       ; $49b0: $5f
    rst $10                                       ; $49b1: $d7
    nop                                           ; $49b2: $00
    ccf                                           ; $49b3: $3f
    ld a, [hl]                                    ; $49b4: $7e
    rra                                           ; $49b5: $1f
    ld e, [hl]                                    ; $49b6: $5e
    ccf                                           ; $49b7: $3f
    ld [$7f80], a                                 ; $49b8: $ea $80 $7f
    ld b, c                                       ; $49bb: $41
    add b                                         ; $49bc: $80
    inc h                                         ; $49bd: $24
    ld c, $aa                                     ; $49be: $0e $aa
    push de                                       ; $49c0: $d5
    inc d                                         ; $49c1: $14
    db $eb                                        ; $49c2: $eb
    pop bc                                        ; $49c3: $c1
    ld a, [bc]                                    ; $49c4: $0a
    inc bc                                        ; $49c5: $03
    nop                                           ; $49c6: $00
    ld [de], a                                    ; $49c7: $12
    db $fd                                        ; $49c8: $fd
    sbc c                                         ; $49c9: $99
    cp $58                                        ; $49ca: $fe $58
    rst $38                                       ; $49cc: $ff
    db $fd                                        ; $49cd: $fd
    ld a, a                                       ; $49ce: $7f
    nop                                           ; $49cf: $00
    and [hl]                                      ; $49d0: $a6
    ld a, a                                       ; $49d1: $7f
    and e                                         ; $49d2: $a3
    ld a, a                                       ; $49d3: $7f
    inc sp                                        ; $49d4: $33
    rst $38                                       ; $49d5: $ff
    ld h, h                                       ; $49d6: $64
    rst $38                                       ; $49d7: $ff
    ld bc, $45ba                                  ; $49d8: $01 $ba $45
    ld d, b                                       ; $49db: $50
    xor a                                         ; $49dc: $af
    dec b                                         ; $49dd: $05
    rst $38                                       ; $49de: $ff
    dec bc                                        ; $49df: $0b
    ld a, [hl]                                    ; $49e0: $7e
    inc bc                                        ; $49e1: $03
    nop                                           ; $49e2: $00
    halt                                          ; $49e3: $76
    ld hl, sp-$1b                                 ; $49e4: $f8 $e5
    ldh a, [$7e]                                  ; $49e6: $f0 $7e
    ldh a, [$f5]                                  ; $49e8: $f0 $f5
    cp $00                                        ; $49ea: $fe $00
    ld sp, hl                                     ; $49ec: $f9
    rst $38                                       ; $49ed: $ff
    cp $f9                                        ; $49ee: $fe $f9
    db $fd                                        ; $49f0: $fd
    rst $38                                       ; $49f1: $ff
    ld a, [hl+]                                   ; $49f2: $2a
    rst $38                                       ; $49f3: $ff
    nop                                           ; $49f4: $00
    nop                                           ; $49f5: $00
    rst $38                                       ; $49f6: $ff
    ld a, a                                       ; $49f7: $7f
    add b                                         ; $49f8: $80
    add b                                         ; $49f9: $80
    nop                                           ; $49fa: $00
    xor [hl]                                      ; $49fb: $ae
    ld a, a                                       ; $49fc: $7f
    inc b                                         ; $49fd: $04
    sbc a                                         ; $49fe: $9f
    rst $38                                       ; $49ff: $ff
    ld a, a                                       ; $4a00: $7f
    sbc a                                         ; $4a01: $9f
    cp a                                          ; $4a02: $bf
    ld b, h                                       ; $4a03: $44
    inc bc                                        ; $4a04: $03
    ld bc, $00ff                                  ; $4a05: $01 $ff $00
    cp $01                                        ; $4a08: $fe $01
    ld bc, $f900                                  ; $4a0a: $01 $00 $f9
    cp $78                                        ; $4a0d: $fe $78
    rst $38                                       ; $4a0f: $ff
    nop                                           ; $4a10: $00
    adc h                                         ; $4a11: $8c
    rst $38                                       ; $4a12: $ff
    ld a, [$dd07]                                 ; $4a13: $fa $07 $dd
    inc bc                                        ; $4a16: $03
    daa                                           ; $4a17: $27
    ld bc, $8a00                                  ; $4a18: $01 $00 $8a
    ld bc, $00db                                  ; $4a1b: $01 $db $00
    and l                                         ; $4a1e: $a5
    ld a, d                                       ; $4a1f: $7a
    or d                                          ; $4a20: $b2
    ld a, l                                       ; $4a21: $7d
    nop                                           ; $4a22: $00
    ld a, [hl-]                                   ; $4a23: $3a
    rst $38                                       ; $4a24: $ff
    ld b, a                                       ; $4a25: $47
    rst $38                                       ; $4a26: $ff
    or e                                          ; $4a27: $b3
    rst $08                                       ; $4a28: $cf
    dec de                                        ; $4a29: $1b
    rst $20                                       ; $4a2a: $e7

Call_092_4a2b:
    add hl, bc                                    ; $4a2b: $09
    ld [hl+], a                                   ; $4a2c: $22
    rst $18                                       ; $4a2d: $df
    add d                                         ; $4a2e: $82
    rst $38                                       ; $4a2f: $ff
    ld b, b                                       ; $4a30: $40
    ld h, $00                                     ; $4a31: $26 $00
    jp hl                                         ; $4a33: $e9


    sub b                                         ; $4a34: $90
    ld hl, $b908                                  ; $4a35: $21 $08 $b9
    ret nz                                        ; $4a38: $c0

    ld d, c                                       ; $4a39: $51
    and b                                         ; $4a3a: $a0
    and b                                         ; $4a3b: $a0
    inc b                                         ; $4a3c: $04
    xor b                                         ; $4a3d: $a8
    and l                                         ; $4a3e: $a5
    ld [bc], a                                    ; $4a3f: $02
    jr nc, jr_092_4a9a                            ; $4a40: $30 $58

    rlca                                          ; $4a42: $07
    and b                                         ; $4a43: $a0
    inc c                                         ; $4a44: $0c
    or b                                          ; $4a45: $b0
    add hl, sp                                    ; $4a46: $39
    ld b, d                                       ; $4a47: $42
    cp l                                          ; $4a48: $bd
    and b                                         ; $4a49: $a0
    ld b, e                                       ; $4a4a: $43
    jr nz, jr_092_4aa1                            ; $4a4b: $20 $54

    db $e3                                        ; $4a4d: $e3
    ld d, b                                       ; $4a4e: $50
    dec sp                                        ; $4a4f: $3b
    xor [hl]                                      ; $4a50: $ae
    ld d, c                                       ; $4a51: $51
    rlca                                          ; $4a52: $07
    ld hl, sp-$7f                                 ; $4a53: $f8 $81
    ret z                                         ; $4a55: $c8

    ld d, b                                       ; $4a56: $50
    inc sp                                        ; $4a57: $33
    or b                                          ; $4a58: $b0
    add hl, de                                    ; $4a59: $19
    add d                                         ; $4a5a: $82
    ld a, l                                       ; $4a5b: $7d
    ld d, b                                       ; $4a5c: $50
    dec bc                                        ; $4a5d: $0b
    ld [$4115], a                                 ; $4a5e: $ea $15 $41
    nop                                           ; $4a61: $00
    cp [hl]                                       ; $4a62: $be
    and b                                         ; $4a63: $a0
    ld bc, $c138                                  ; $4a64: $01 $38 $c1
    adc $f1                                       ; $4a67: $ce $f1
    cp $40                                        ; $4a69: $fe $40
    rst $38                                       ; $4a6b: $ff
    jr nz, jr_092_4a89                            ; $4a6c: $20 $1b

    db $fd                                        ; $4a6e: $fd
    ld [bc], a                                    ; $4a6f: $02
    sub $29                                       ; $4a70: $d6 $29
    ld [bc], a                                    ; $4a72: $02
    db $fd                                        ; $4a73: $fd
    nop                                           ; $4a74: $00
    ld h, b                                       ; $4a75: $60
    add b                                         ; $4a76: $80
    or h                                          ; $4a77: $b4
    ret nz                                        ; $4a78: $c0

    add b                                         ; $4a79: $80
    ld a, a                                       ; $4a7a: $7f
    ld d, b                                       ; $4a7b: $50
    and c                                         ; $4a7c: $a1
    ld [$f9a4], sp                                ; $4a7d: $08 $a4 $f9
    ld sp, hl                                     ; $4a80: $f9
    ld a, $20                                     ; $4a81: $3e $20
    dec hl                                        ; $4a83: $2b
    adc [hl]                                      ; $4a84: $8e
    ldh a, [$f8]                                  ; $4a85: $f0 $f8
    inc c                                         ; $4a87: $0c
    rst $38                                       ; $4a88: $ff

jr_092_4a89:
    xor l                                         ; $4a89: $ad
    ld d, d                                       ; $4a8a: $52
    jp Jump_000_02dc                              ; $4a8b: $c3 $dc $02


    ld b, b                                       ; $4a8e: $40
    rra                                           ; $4a8f: $1f
    ld a, [hl-]                                   ; $4a90: $3a
    dec b                                         ; $4a91: $05
    jr nz, jr_092_4aab                            ; $4a92: $20 $17

    nop                                           ; $4a94: $00
    ldh [$34], a                                  ; $4a95: $e0 $34
    ld bc, $0ab5                                  ; $4a97: $01 $b5 $0a

jr_092_4a9a:
    sub h                                         ; $4a9a: $94
    rst $28                                       ; $4a9b: $ef
    nop                                           ; $4a9c: $00
    xor a                                         ; $4a9d: $af
    ld d, b                                       ; $4a9e: $50
    xor d                                         ; $4a9f: $aa
    ld d, l                                       ; $4aa0: $55

jr_092_4aa1:
    set 6, l                                      ; $4aa1: $cb $f5
    ld h, l                                       ; $4aa3: $65
    ei                                            ; $4aa4: $fb
    nop                                           ; $4aa5: $00
    ld e, a                                       ; $4aa6: $5f
    xor c                                         ; $4aa7: $a9
    xor e                                         ; $4aa8: $ab
    ld d, h                                       ; $4aa9: $54
    ld [de], a                                    ; $4aaa: $12

jr_092_4aab:
    db $fd                                        ; $4aab: $fd
    jp hl                                         ; $4aac: $e9


    ld [hl], e                                    ; $4aad: $73
    nop                                           ; $4aae: $00
    pop af                                        ; $4aaf: $f1
    ld a, a                                       ; $4ab0: $7f
    nop                                           ; $4ab1: $00
    rst $38                                       ; $4ab2: $ff
    ld d, b                                       ; $4ab3: $50
    add b                                         ; $4ab4: $80
    sbc [hl]                                      ; $4ab5: $9e
    ldh [rP1], a                                  ; $4ab6: $e0 $00
    db $e3                                        ; $4ab8: $e3
    db $fc                                        ; $4ab9: $fc
    add b                                         ; $4aba: $80
    ld a, a                                       ; $4abb: $7f
    cp a                                          ; $4abc: $bf
    ld b, b                                       ; $4abd: $40
    ld h, b                                       ; $4abe: $60
    add e                                         ; $4abf: $83
    ld b, b                                       ; $4ac0: $40
    pop bc                                        ; $4ac1: $c1
    ld [$3100], a                                 ; $4ac2: $ea $00 $31
    jp $fa65                                      ; $4ac5: $c3 $65 $fa


    ld h, e                                       ; $4ac8: $63
    sbc h                                         ; $4ac9: $9c
    nop                                           ; $4aca: $00
    adc a                                         ; $4acb: $8f
    ld b, b                                       ; $4acc: $40
    rst $38                                       ; $4acd: $ff
    nop                                           ; $4ace: $00
    ld d, l                                       ; $4acf: $55
    nop                                           ; $4ad0: $00
    cp [hl]                                       ; $4ad1: $be
    ld bc, $f0c0                                  ; $4ad2: $01 $c0 $f0
    inc l                                         ; $4ad5: $2c
    ld [hl], b                                    ; $4ad6: $70
    ld c, $c2                                     ; $4ad7: $0e $c2
    ld bc, $8271                                  ; $4ad9: $01 $71 $82
    xor c                                         ; $4adc: $a9
    jp nc, $e300                                  ; $4add: $d2 $00 $e3

    db $fc                                        ; $4ae0: $fc
    ld e, [hl]                                    ; $4ae1: $5e
    and a                                         ; $4ae2: $a7
    ld e, h                                       ; $4ae3: $5c
    cp a                                          ; $4ae4: $bf
    db $e3                                        ; $4ae5: $e3
    inc e                                         ; $4ae6: $1c
    db $10                                        ; $4ae7: $10
    cp $00                                        ; $4ae8: $fe $00
    pop de                                        ; $4aea: $d1
    ld a, [hl-]                                   ; $4aeb: $3a
    inc b                                         ; $4aec: $04
    or b                                          ; $4aed: $b0
    ld a, a                                       ; $4aee: $7f
    dec h                                         ; $4aef: $25
    ld a, [$2814]                                 ; $4af0: $fa $14 $28
    rst $38                                       ; $4af3: $ff
    ld [hl], l                                    ; $4af4: $75
    ld [bc], a                                    ; $4af5: $02
    ld d, $78                                     ; $4af6: $16 $78
    jr nz, jr_092_4b00                            ; $4af8: $20 $06

jr_092_4afa:
    ld a, [c]                                     ; $4afa: $f2
    db $fd                                        ; $4afb: $fd
    dec b                                         ; $4afc: $05
    ld l, b                                       ; $4afd: $68
    rst $38                                       ; $4afe: $ff
    or l                                          ; $4aff: $b5

jr_092_4b00:
    ld a, a                                       ; $4b00: $7f
    ld a, $ce                                     ; $4b01: $3e $ce
    inc b                                         ; $4b03: $04
    rst $38                                       ; $4b04: $ff
    ld a, [hl-]                                   ; $4b05: $3a
    inc b                                         ; $4b06: $04
    nop                                           ; $4b07: $00
    ccf                                           ; $4b08: $3f
    rst $38                                       ; $4b09: $ff
    sbc b                                         ; $4b0a: $98
    ld a, a                                       ; $4b0b: $7f
    ld sp, $f4fe                                  ; $4b0c: $31 $fe $f4
    rst $38                                       ; $4b0f: $ff
    ld b, b                                       ; $4b10: $40
    cp d                                          ; $4b11: $ba
    and h                                         ; $4b12: $a4
    inc d                                         ; $4b13: $14
    ld e, $ff                                     ; $4b14: $1e $ff
    pop hl                                        ; $4b16: $e1
    rst $38                                       ; $4b17: $ff
    ld b, [hl]                                    ; $4b18: $46
    ld sp, hl                                     ; $4b19: $f9
    inc b                                         ; $4b1a: $04
    xor b                                         ; $4b1b: $a8
    ld a, a                                       ; $4b1c: $7f
    ld a, a                                       ; $4b1d: $7f
    rst $38                                       ; $4b1e: $ff
    ld hl, sp-$58                                 ; $4b1f: $f8 $a8
    inc b                                         ; $4b21: $04
    rst $38                                       ; $4b22: $ff
    rst $38                                       ; $4b23: $ff
    ld b, b                                       ; $4b24: $40
    daa                                           ; $4b25: $27
    ld b, [hl]                                    ; $4b26: $46
    ld b, $f2                                     ; $4b27: $06 $f2
    rst $38                                       ; $4b29: $ff
    call $a1f3                                    ; $4b2a: $cd $f3 $a1
    rst $38                                       ; $4b2d: $ff
    ld d, b                                       ; $4b2e: $50
    db $d3                                        ; $4b2f: $d3
    ld b, d                                       ; $4b30: $42
    ld d, $83                                     ; $4b31: $16 $83
    jr nc, jr_092_4b35                            ; $4b33: $30 $00

jr_092_4b35:
    ld l, [hl]                                    ; $4b35: $6e
    sbc a                                         ; $4b36: $9f
    inc [hl]                                      ; $4b37: $34
    rst $08                                       ; $4b38: $cf
    ld d, b                                       ; $4b39: $50
    add [hl]                                      ; $4b3a: $86
    ld e, [hl]                                    ; $4b3b: $5e
    ld b, $af                                     ; $4b3c: $06 $af
    sub $04                                       ; $4b3e: $d6 $04
    ld [$5517], a                                 ; $4b40: $ea $17 $55
    xor e                                         ; $4b43: $ab
    nop                                           ; $4b44: $00
    xor $11                                       ; $4b45: $ee $11
    dec de                                        ; $4b47: $1b
    jr nz, jr_092_4bae                            ; $4b48: $20 $64

    db $10                                        ; $4b4a: $10
    sub d                                         ; $4b4b: $92
    ld l, h                                       ; $4b4c: $6c
    ld [$fa35], sp                                ; $4b4d: $08 $35 $fa
    ld c, d                                       ; $4b50: $4a
    push af                                       ; $4b51: $f5
    ld [hl], b                                    ; $4b52: $70
    rra                                           ; $4b53: $1f
    xor d                                         ; $4b54: $aa
    dec d                                         ; $4b55: $15
    and l                                         ; $4b56: $a5
    ld bc, $5202                                  ; $4b57: $01 $02 $52
    xor a                                         ; $4b5a: $af
    xor a                                         ; $4b5b: $af
    db $d3                                        ; $4b5c: $d3
    ld l, a                                       ; $4b5d: $6f
    db $d3                                        ; $4b5e: $d3
    ld h, b                                       ; $4b5f: $60
    add hl, de                                    ; $4b60: $19
    nop                                           ; $4b61: $00
    dec d                                         ; $4b62: $15
    ld [$1f00], a                                 ; $4b63: $ea $00 $1f
    and h                                         ; $4b66: $a4
    jr jr_092_4bb4                                ; $4b67: $18 $4b

    sbc h                                         ; $4b69: $9c
    jr nz, jr_092_4afa                            ; $4b6a: $20 $8e

    rst $38                                       ; $4b6c: $ff
    nop                                           ; $4b6d: $00
    ld e, $7c                                     ; $4b6e: $1e $7c
    add b                                         ; $4b70: $80
    add hl, sp                                    ; $4b71: $39
    ret nz                                        ; $4b72: $c0

    inc c                                         ; $4b73: $0c
    nop                                           ; $4b74: $00
    inc de                                        ; $4b75: $13
    ld b, $18                                     ; $4b76: $06 $18
    dec bc                                        ; $4b78: $0b
    db $fc                                        ; $4b79: $fc
    ld d, b                                       ; $4b7a: $50
    xor a                                         ; $4b7b: $af
    cp d                                          ; $4b7c: $ba
    ld bc, $5c0c                                  ; $4b7d: $01 $0c $5c
    rrca                                          ; $4b80: $0f
    rst $38                                       ; $4b81: $ff
    rrca                                          ; $4b82: $0f
    call c, $d0a3                                 ; $4b83: $dc $a3 $d0
    ld a, [de]                                    ; $4b86: $1a
    nop                                           ; $4b87: $00
    nop                                           ; $4b88: $00
    rst $38                                       ; $4b89: $ff
    add c                                         ; $4b8a: $81
    ld b, $f3                                     ; $4b8b: $06 $f3
    rlca                                          ; $4b8d: $07
    dec de                                        ; $4b8e: $1b
    db $e4                                        ; $4b8f: $e4
    ld [$fb05], sp                                ; $4b90: $08 $05 $fb
    ld a, a                                       ; $4b93: $7f
    add b                                         ; $4b94: $80
    db $10                                        ; $4b95: $10
    add hl, bc                                    ; $4b96: $09
    dec c                                         ; $4b97: $0d
    cp $8f                                        ; $4b98: $fe $8f
    nop                                           ; $4b9a: $00
    rra                                           ; $4b9b: $1f
    ld a, [hl+]                                   ; $4b9c: $2a
    push de                                       ; $4b9d: $d5
    dec de                                        ; $4b9e: $1b
    db $e4                                        ; $4b9f: $e4
    ld l, [hl]                                    ; $4ba0: $6e
    ret nc                                        ; $4ba1: $d0

    jp c, Jump_000_3d60                           ; $4ba2: $da $60 $3d

    ldh a, [$0d]                                  ; $4ba5: $f0 $0d
    ld d, b                                       ; $4ba7: $50
    dec sp                                        ; $4ba8: $3b
    dec d                                         ; $4ba9: $15
    ld [$001f], a                                 ; $4baa: $ea $1f $00
    adc l                                         ; $4bad: $8d

jr_092_4bae:
    ld bc, $4f10                                  ; $4bae: $01 $10 $4f
    sub b                                         ; $4bb1: $90
    ld a, [de]                                    ; $4bb2: $1a
    rst $20                                       ; $4bb3: $e7

jr_092_4bb4:
    jp hl                                         ; $4bb4: $e9


    rla                                           ; $4bb5: $17
    ret nz                                        ; $4bb6: $c0

    inc a                                         ; $4bb7: $3c
    and b                                         ; $4bb8: $a0
    ret nz                                        ; $4bb9: $c0

    ld c, d                                       ; $4bba: $4a
    jp hl                                         ; $4bbb: $e9


    or b                                          ; $4bbc: $b0
    dec b                                         ; $4bbd: $05
    ld [hl], e                                    ; $4bbe: $73
    adc a                                         ; $4bbf: $8f
    reti                                          ; $4bc0: $d9


    rlca                                          ; $4bc1: $07
    and l                                         ; $4bc2: $a5
    nop                                           ; $4bc3: $00
    inc bc                                        ; $4bc4: $03
    db $dd                                        ; $4bc5: $dd
    inc bc                                        ; $4bc6: $03
    rst $30                                       ; $4bc7: $f7
    inc bc                                        ; $4bc8: $03
    db $fd                                        ; $4bc9: $fd
    inc bc                                        ; $4bca: $03
    ei                                            ; $4bcb: $fb
    ld [bc], a                                    ; $4bcc: $02
    rlca                                          ; $4bcd: $07
    db $fd                                        ; $4bce: $fd
    inc bc                                        ; $4bcf: $03
    cp e                                          ; $4bd0: $bb
    ld b, a                                       ; $4bd1: $47
    ld d, c                                       ; $4bd2: $51
    ld d, b                                       ; $4bd3: $50
    ld a, [de]                                    ; $4bd4: $1a
    rst $38                                       ; $4bd5: $ff
    nop                                           ; $4bd6: $00
    ld [hl], a                                    ; $4bd7: $77
    ei                                            ; $4bd8: $fb
    push hl                                       ; $4bd9: $e5
    di                                            ; $4bda: $f3
    ld a, a                                       ; $4bdb: $7f
    pop af                                        ; $4bdc: $f1
    xor $9f                                       ; $4bdd: $ee $9f
    ld [bc], a                                    ; $4bdf: $02
    ld c, e                                       ; $4be0: $4b
    add a                                         ; $4be1: $87
    push de                                       ; $4be2: $d5
    inc bc                                        ; $4be3: $03
    ld a, [hl+]                                   ; $4be4: $2a
    add c                                         ; $4be5: $81
    ret nz                                        ; $4be6: $c0

    dec e                                         ; $4be7: $1d
    ld a, l                                       ; $4be8: $7d
    ld [bc], a                                    ; $4be9: $02
    add e                                         ; $4bea: $83
    and l                                         ; $4beb: $a5
    ld a, e                                       ; $4bec: $7b
    or c                                          ; $4bed: $b1
    ld a, a                                       ; $4bee: $7f
    dec sp                                        ; $4bef: $3b
    jr nc, jr_092_4c34                            ; $4bf0: $30 $42

    ld d, e                                       ; $4bf2: $53
    jr @-$4f                                      ; $4bf3: $18 $af

    ld [hl+], a                                   ; $4bf5: $22
    rst $18                                       ; $4bf6: $df
    ret nz                                        ; $4bf7: $c0

    ld c, l                                       ; $4bf8: $4d
    ret nc                                        ; $4bf9: $d0

    inc hl                                        ; $4bfa: $23
    adc e                                         ; $4bfb: $8b
    ld hl, $80de                                  ; $4bfc: $21 $de $80
    ret nc                                        ; $4bff: $d0

    inc de                                        ; $4c00: $13
    sub [hl]                                      ; $4c01: $96
    db $d3                                        ; $4c02: $d3
    inc l                                         ; $4c03: $2c
    ld d, d                                       ; $4c04: $52
    xor a                                         ; $4c05: $af
    xor c                                         ; $4c06: $a9
    ld d, a                                       ; $4c07: $57
    add b                                         ; $4c08: $80
    ld b, b                                       ; $4c09: $40
    dec b                                         ; $4c0a: $05
    ld [hl], d                                    ; $4c0b: $72
    add $39                                       ; $4c0c: $c6 $39
    ld d, l                                       ; $4c0e: $55
    xor d                                         ; $4c0f: $aa
    cp l                                          ; $4c10: $bd
    ld b, d                                       ; $4c11: $42
    jr z, jr_092_4c83                             ; $4c12: $28 $6f

    sub b                                         ; $4c14: $90
    ld b, b                                       ; $4c15: $40
    dec d                                         ; $4c16: $15
    ld a, [$1540]                                 ; $4c17: $fa $40 $15
    ld [hl], h                                    ; $4c1a: $74
    cpl                                           ; $4c1b: $2f

jr_092_4c1c:
    ret nc                                        ; $4c1c: $d0

    ld b, b                                       ; $4c1d: $40
    xor b                                         ; $4c1e: $a8
    xor $07                                       ; $4c1f: $ee $07
    ld l, d                                       ; $4c21: $6a
    sub l                                         ; $4c22: $95
    dec d                                         ; $4c23: $15

jr_092_4c24:
    cp $a9                                        ; $4c24: $fe $a9
    cp $00                                        ; $4c26: $fe $00
    sub a                                         ; $4c28: $97
    ld l, b                                       ; $4c29: $68
    cp $01                                        ; $4c2a: $fe $01
    ret nz                                        ; $4c2c: $c0

    ccf                                           ; $4c2d: $3f
    ld a, d                                       ; $4c2e: $7a
    add l                                         ; $4c2f: $85
    nop                                           ; $4c30: $00

jr_092_4c31:
    and h                                         ; $4c31: $a4
    ld e, e                                       ; $4c32: $5b
    ld [hl], l                                    ; $4c33: $75

jr_092_4c34:
    adc e                                         ; $4c34: $8b
    rst $38                                       ; $4c35: $ff
    nop                                           ; $4c36: $00
    ld b, b                                       ; $4c37: $40
    cp a                                          ; $4c38: $bf
    nop                                           ; $4c39: $00
    jp z, $d534                                   ; $4c3a: $ca $34 $d5

    ld a, [hl-]                                   ; $4c3d: $3a
    db $dd                                        ; $4c3e: $dd
    ccf                                           ; $4c3f: $3f
    and [hl]                                      ; $4c40: $a6
    ld e, c                                       ; $4c41: $59
    ld [$4cb3], sp                                ; $4c42: $08 $b3 $4c
    ld e, a                                       ; $4c45: $5f
    and b                                         ; $4c46: $a0
    ldh a, [$2e]                                  ; $4c47: $f0 $2e
    ld a, [$3a05]                                 ; $4c49: $fa $05 $3a
    nop                                           ; $4c4c: $00
    push bc                                       ; $4c4d: $c5
    rla                                           ; $4c4e: $17
    add sp, $50                                   ; $4c4f: $e8 $50
    xor a                                         ; $4c51: $af
    jr z, jr_092_4c24                             ; $4c52: $28 $d0

    push de                                       ; $4c54: $d5
    ld bc, $7a38                                  ; $4c55: $01 $38 $7a
    sbc h                                         ; $4c58: $9c
    db $fc                                        ; $4c59: $fc
    rra                                           ; $4c5a: $1f
    add b                                         ; $4c5b: $80
    ld a, a                                       ; $4c5c: $7f
    ldh a, [$0e]                                  ; $4c5d: $f0 $0e
    nop                                           ; $4c5f: $00
    xor e                                         ; $4c60: $ab
    ld d, h                                       ; $4c61: $54
    ld bc, $20fe                                  ; $4c62: $01 $fe $20
    ret nz                                        ; $4c65: $c0

    ld e, b                                       ; $4c66: $58
    ldh [$60], a                                  ; $4c67: $e0 $60

jr_092_4c69:
    ld [hl], b                                    ; $4c69: $70
    db $f4                                        ; $4c6a: $f4
    ld [bc], a                                    ; $4c6b: $02
    jr nz, jr_092_4c8b                            ; $4c6c: $20 $1d

    db $f4                                        ; $4c6e: $f4
    ld e, e                                       ; $4c6f: $5b
    ld a, a                                       ; $4c70: $7f
    add b                                         ; $4c71: $80
    cp d                                          ; $4c72: $ba
    inc b                                         ; $4c73: $04
    ld b, l                                       ; $4c74: $45
    dec l                                         ; $4c75: $2d
    ld d, d                                       ; $4c76: $52
    ccf                                           ; $4c77: $3f
    ret nz                                        ; $4c78: $c0

    nop                                           ; $4c79: $00
    rra                                           ; $4c7a: $1f
    adc d                                         ; $4c7b: $8a
    ld [hl], l                                    ; $4c7c: $75
    nop                                           ; $4c7d: $00
    and $19                                       ; $4c7e: $e6 $19
    dec e                                         ; $4c80: $1d
    ld [c], a                                     ; $4c81: $e2
    ld l, b                                       ; $4c82: $68

jr_092_4c83:
    sub a                                         ; $4c83: $97
    cp $01                                        ; $4c84: $fe $01
    nop                                           ; $4c86: $00
    ld d, h                                       ; $4c87: $54
    ldh [$e7], a                                  ; $4c88: $e0 $e7
    ld a, b                                       ; $4c8a: $78

jr_092_4c8b:
    ld hl, sp+$7f                                 ; $4c8b: $f8 $7f
    ldh [$1f], a                                  ; $4c8d: $e0 $1f
    jr nz, jr_092_4c1c                            ; $4c8f: $20 $8b

    ld a, h                                       ; $4c91: $7c
    db $10                                        ; $4c92: $10
    ld [de], a                                    ; $4c93: $12
    sub l                                         ; $4c94: $95
    inc c                                         ; $4c95: $0c
    jr nc, jr_092_4c31                            ; $4c96: $30 $99

    ld a, $03                                     ; $4c98: $3e $03
    ret c                                         ; $4c9a: $d8

    daa                                           ; $4c9b: $27
    add hl, hl                                    ; $4c9c: $29
    sub $fc                                       ; $4c9d: $d6 $fc
    inc bc                                        ; $4c9f: $03
    nop                                           ; $4ca0: $00
    rra                                           ; $4ca1: $1f
    or b                                          ; $4ca2: $b0
    jr z, jr_092_4ca5                             ; $4ca3: $28 $00

jr_092_4ca5:
    ld h, b                                       ; $4ca5: $60
    sbc a                                         ; $4ca6: $9f
    jr nc, jr_092_4c69                            ; $4ca7: $30 $c0

    ld e, h                                       ; $4ca9: $5c
    ldh [rOCPS], a                                ; $4caa: $e0 $6a
    db $f4                                        ; $4cac: $f4
    add b                                         ; $4cad: $80
    or b                                          ; $4cae: $b0
    db $10                                        ; $4caf: $10
    db $fd                                        ; $4cb0: $fd
    push de                                       ; $4cb1: $d5
    ld a, [$50af]                                 ; $4cb2: $fa $af $50
    xor e                                         ; $4cb5: $ab
    ld d, h                                       ; $4cb6: $54
    nop                                           ; $4cb7: $00
    ld l, e                                       ; $4cb8: $6b
    sub h                                         ; $4cb9: $94
    ld a, a                                       ; $4cba: $7f
    add b                                         ; $4cbb: $80
    ld a, b                                       ; $4cbc: $78
    rst $38                                       ; $4cbd: $ff
    ld d, a                                       ; $4cbe: $57
    xor b                                         ; $4cbf: $a8
    xor h                                         ; $4cc0: $ac
    inc c                                         ; $4cc1: $0c
    dec b                                         ; $4cc2: $05
    xor a                                         ; $4cc3: $af
    jr nz, jr_092_4cec                            ; $4cc4: $20 $26

    rst $00                                       ; $4cc6: $c7
    or b                                          ; $4cc7: $b0
    db $10                                        ; $4cc8: $10
    ldh a, [rNR33]                                ; $4cc9: $f0 $1d
    rrca                                          ; $4ccb: $0f
    ld [c], a                                     ; $4ccc: $e2
    nop                                           ; $4ccd: $00
    dec e                                         ; $4cce: $1d
    sub a                                         ; $4ccf: $97
    add sp, -$48                                  ; $4cd0: $e8 $b8
    ld b, a                                       ; $4cd2: $47
    ld d, h                                       ; $4cd3: $54
    cp b                                          ; $4cd4: $b8
    dec sp                                        ; $4cd5: $3b
    nop                                           ; $4cd6: $00
    db $fc                                        ; $4cd7: $fc
    ld a, [hl]                                    ; $4cd8: $7e
    xor a                                         ; $4cd9: $af
    ld hl, sp+$07                                 ; $4cda: $f8 $07
    cp $01                                        ; $4cdc: $fe $01
    ld c, d                                       ; $4cde: $4a
    nop                                           ; $4cdf: $00
    cp a                                          ; $4ce0: $bf
    ld h, h                                       ; $4ce1: $64
    ei                                            ; $4ce2: $fb
    xor h                                         ; $4ce3: $ac
    ld d, e                                       ; $4ce4: $53
    ld d, h                                       ; $4ce5: $54
    dec sp                                        ; $4ce6: $3b
    ld l, c                                       ; $4ce7: $69
    nop                                           ; $4ce8: $00
    rra                                           ; $4ce9: $1f
    sbc l                                         ; $4cea: $9d
    rst $38                                       ; $4ceb: $ff

jr_092_4cec:
    ld a, [bc]                                    ; $4cec: $0a
    push af                                       ; $4ced: $f5
    ld d, c                                       ; $4cee: $51
    add b                                         ; $4cef: $80
    cp d                                          ; $4cf0: $ba
    nop                                           ; $4cf1: $00
    ret nz                                        ; $4cf2: $c0

    rst $10                                       ; $4cf3: $d7
    add sp, $00                                   ; $4cf4: $e8 $00
    rst $38                                       ; $4cf6: $ff
    xor b                                         ; $4cf7: $a8
    rst $10                                       ; $4cf8: $d7
    ld d, h                                       ; $4cf9: $54
    ld b, b                                       ; $4cfa: $40
    ei                                            ; $4cfb: $fb
    ld a, d                                       ; $4cfc: $7a
    ld bc, $2a7f                                  ; $4cfd: $01 $7f $2a
    push de                                       ; $4d00: $d5
    sbc h                                         ; $4d01: $9c
    ld h, b                                       ; $4d02: $60
    ld c, e                                       ; $4d03: $4b
    nop                                           ; $4d04: $00
    db $f4                                        ; $4d05: $f4
    ld a, a                                       ; $4d06: $7f
    ret nz                                        ; $4d07: $c0

    sbc l                                         ; $4d08: $9d
    ld [c], a                                     ; $4d09: $e2
    ld [hl], a                                    ; $4d0a: $77
    adc b                                         ; $4d0b: $88
    and c                                         ; $4d0c: $a1
    inc d                                         ; $4d0d: $14
    ld e, [hl]                                    ; $4d0e: $5e
    ld l, e                                       ; $4d0f: $6b
    sub h                                         ; $4d10: $94
    nop                                           ; $4d11: $00
    ld e, $ec                                     ; $4d12: $1e $ec
    cp b                                          ; $4d14: $b8
    inc bc                                        ; $4d15: $03
    pop af                                        ; $4d16: $f1
    ld c, $00                                     ; $4d17: $0e $00
    ld d, h                                       ; $4d19: $54
    xor a                                         ; $4d1a: $af
    rst $30                                       ; $4d1b: $f7
    rrca                                          ; $4d1c: $0f
    ld a, b                                       ; $4d1d: $78
    add a                                         ; $4d1e: $87
    adc a                                         ; $4d1f: $8f
    ld [hl], b                                    ; $4d20: $70
    nop                                           ; $4d21: $00
    ld b, a                                       ; $4d22: $47
    cp b                                          ; $4d23: $b8
    ld sp, hl                                     ; $4d24: $f9
    ld a, [hl]                                    ; $4d25: $7e
    ld d, h                                       ; $4d26: $54
    xor e                                         ; $4d27: $ab
    ld c, e                                       ; $4d28: $4b
    inc b                                         ; $4d29: $04
    nop                                           ; $4d2a: $00
    ld [hl], a                                    ; $4d2b: $77
    add b                                         ; $4d2c: $80
    ld d, e                                       ; $4d2d: $53
    db $fc                                        ; $4d2e: $fc
    rlca                                          ; $4d2f: $07
    ld hl, sp-$02                                 ; $4d30: $f8 $fe
    ld bc, $ef00                                  ; $4d32: $01 $00 $ef
    db $10                                        ; $4d35: $10
    ld bc, $84ff                                  ; $4d36: $01 $ff $84
    inc bc                                        ; $4d39: $03
    ld h, c                                       ; $4d3a: $61

jr_092_4d3b:
    add d                                         ; $4d3b: $82
    nop                                           ; $4d3c: $00
    add hl, sp                                    ; $4d3d: $39
    jp nz, $fcf3                                  ; $4d3e: $c2 $f3 $fc

    cp d                                          ; $4d41: $ba
    ld b, l                                       ; $4d42: $45
    or a                                          ; $4d43: $b7
    ld c, b                                       ; $4d44: $48
    nop                                           ; $4d45: $00
    or d                                          ; $4d46: $b2
    ld e, l                                       ; $4d47: $5d
    ld a, l                                       ; $4d48: $7d
    add d                                         ; $4d49: $82
    xor e                                         ; $4d4a: $ab
    ld d, h                                       ; $4d4b: $54
    or $09                                        ; $4d4c: $f6 $09
    jr nz, jr_092_4d3b                            ; $4d4e: $20 $eb

    inc d                                         ; $4d50: $14
    and b                                         ; $4d51: $a0
    dec d                                         ; $4d52: $15
    ld b, c                                       ; $4d53: $41
    ld d, l                                       ; $4d54: $55
    xor d                                         ; $4d55: $aa
    push de                                       ; $4d56: $d5
    ld a, [hl+]                                   ; $4d57: $2a
    rrca                                          ; $4d58: $0f
    xor e                                         ; $4d59: $ab
    ld d, h                                       ; $4d5a: $54
    ld [hl], c                                    ; $4d5b: $71
    adc [hl]                                      ; $4d5c: $8e
    ret nc                                        ; $4d5d: $d0

    rra                                           ; $4d5e: $1f
    halt                                          ; $4d5f: $76
    dec bc                                        ; $4d60: $0b
    ld h, b                                       ; $4d61: $60
    add hl, de                                    ; $4d62: $19
    ret nc                                        ; $4d63: $d0

    ld [hl], $60                                  ; $4d64: $36 $60
    rst $00                                       ; $4d66: $c7
    add [hl]                                      ; $4d67: $86
    dec de                                        ; $4d68: $1b
    halt                                          ; $4d69: $76
    inc de                                        ; $4d6a: $13
    ld a, c                                       ; $4d6b: $79
    ld a, c                                       ; $4d6c: $79
    cp [hl]                                       ; $4d6d: $be
    ld h, l                                       ; $4d6e: $65
    ld a, [$86c0]                                 ; $4d6f: $fa $c0 $86
    dec de                                        ; $4d72: $1b
    halt                                          ; $4d73: $76
    dec bc                                        ; $4d74: $0b
    xor a                                         ; $4d75: $af
    ld d, b                                       ; $4d76: $50
    push af                                       ; $4d77: $f5
    ld a, [bc]                                    ; $4d78: $0a
    ld a, d                                       ; $4d79: $7a
    add l                                         ; $4d7a: $85

jr_092_4d7b:
    db $e4                                        ; $4d7b: $e4
    add c                                         ; $4d7c: $81
    rla                                           ; $4d7d: $17
    dec b                                         ; $4d7e: $05
    jr nz, jr_092_4da9                            ; $4d7f: $20 $28

    dec c                                         ; $4d81: $0d
    ld e, [hl]                                    ; $4d82: $5e
    pop af                                        ; $4d83: $f1
    ret nc                                        ; $4d84: $d0

    dec d                                         ; $4d85: $15
    and l                                         ; $4d86: $a5
    xor e                                         ; $4d87: $ab
    nop                                           ; $4d88: $00
    ld d, h                                       ; $4d89: $54
    ld d, l                                       ; $4d8a: $55
    xor d                                         ; $4d8b: $aa
    ld [c], a                                     ; $4d8c: $e2
    dec c                                         ; $4d8d: $0d
    cp d                                          ; $4d8e: $ba
    ld b, a                                       ; $4d8f: $47
    push de                                       ; $4d90: $d5
    ld [$ee2a], sp                                ; $4d91: $08 $2a $ee
    db $10                                        ; $4d94: $10
    ldh [$8e], a                                  ; $4d95: $e0 $8e
    ld b, $d5                                     ; $4d97: $06 $d5
    ld [bc], a                                    ; $4d99: $02
    ld [$0140], a                                 ; $4d9a: $ea $40 $01
    xor l                                         ; $4d9d: $ad
    rrca                                          ; $4d9e: $0f
    ld [hl], a                                    ; $4d9f: $77
    adc b                                         ; $4da0: $88
    and b                                         ; $4da1: $a0
    nop                                           ; $4da2: $00
    ld d, l                                       ; $4da3: $55
    ld [$0a02], sp                                ; $4da4: $08 $02 $0a
    nop                                           ; $4da7: $00
    ld e, e                                       ; $4da8: $5b

jr_092_4da9:
    inc b                                         ; $4da9: $04
    and c                                         ; $4daa: $a1
    ld b, b                                       ; $4dab: $40
    cp l                                          ; $4dac: $bd
    rrca                                          ; $4dad: $0f
    sub $00                                       ; $4dae: $d6 $00
    add hl, hl                                    ; $4db0: $29
    pop bc                                        ; $4db1: $c1
    nop                                           ; $4db2: $00
    add sp, $00                                   ; $4db3: $e8 $00
    call nc, $ea28                                ; $4db5: $d4 $28 $ea
    stop                                          ; $4db8: $10 $00
    pop bc                                        ; $4dba: $c1
    nop                                           ; $4dbb: $00
    call $bf0f                                    ; $4dbc: $cd $0f $bf
    ld b, b                                       ; $4dbf: $40
    ld d, h                                       ; $4dc0: $54
    and b                                         ; $4dc1: $a0
    nop                                           ; $4dc2: $00
    xor d                                         ; $4dc3: $aa
    inc b                                         ; $4dc4: $04
    ld bc, $a400                                  ; $4dc5: $01 $00 $a4
    nop                                           ; $4dc8: $00
    ld d, d                                       ; $4dc9: $52
    and b                                         ; $4dca: $a0
    add b                                         ; $4dcb: $80
    db $dd                                        ; $4dcc: $dd
    rrca                                          ; $4dcd: $0f
    ld e, a                                       ; $4dce: $5f
    and b                                         ; $4dcf: $a0
    xor e                                         ; $4dd0: $ab
    db $10                                        ; $4dd1: $10
    rla                                           ; $4dd2: $17
    nop                                           ; $4dd3: $00
    dec hl                                        ; $4dd4: $2b
    ld [$9300], sp                                ; $4dd5: $08 $00 $93
    nop                                           ; $4dd8: $00
    xor e                                         ; $4dd9: $ab
    jr nc, @+$12                                  ; $4dda: $30 $10

    ld [hl], l                                    ; $4ddc: $75
    adc d                                         ; $4ddd: $8a
    ld bc, $0000                                  ; $4dde: $01 $00 $00
    ld h, [hl]                                    ; $4de1: $66
    add b                                         ; $4de2: $80
    ld bc, $4a00                                  ; $4de3: $01 $00 $4a
    jr nc, jr_092_4d7b                            ; $4de6: $30 $93

    ld b, b                                       ; $4de8: $40
    inc c                                         ; $4de9: $0c
    ld d, b                                       ; $4dea: $50
    jr jr_092_4e42                                ; $4deb: $18 $55

    nop                                           ; $4ded: $00
    ld [hl+], a                                   ; $4dee: $22
    ld bc, $0090                                  ; $4def: $01 $90 $00
    ld [$003c], sp                                ; $4df2: $08 $3c $00
    ld h, l                                       ; $4df5: $65
    add d                                         ; $4df6: $82
    db $ed                                        ; $4df7: $ed
    rrca                                          ; $4df8: $0f
    ld d, l                                       ; $4df9: $55
    xor d                                         ; $4dfa: $aa
    xor b                                         ; $4dfb: $a8
    nop                                           ; $4dfc: $00
    nop                                           ; $4dfd: $00
    ld b, b                                       ; $4dfe: $40
    nop                                           ; $4dff: $00
    dec h                                         ; $4e00: $25
    nop                                           ; $4e01: $00
    ld c, d                                       ; $4e02: $4a
    inc b                                         ; $4e03: $04
    ld hl, $5080                                  ; $4e04: $21 $80 $50
    db $10                                        ; $4e07: $10
    ld a, [$8505]                                 ; $4e08: $fa $05 $85
    ld [bc], a                                    ; $4e0b: $02
    ld a, [hl+]                                   ; $4e0c: $2a
    ld bc, $0855                                  ; $4e0d: $01 $55 $08
    add b                                         ; $4e10: $80
    add d                                         ; $4e11: $82
    nop                                           ; $4e12: $00
    ld d, l                                       ; $4e13: $55
    ld d, b                                       ; $4e14: $50
    db $10                                        ; $4e15: $10
    push de                                       ; $4e16: $d5
    ld a, [hl+]                                   ; $4e17: $2a
    dec hl                                        ; $4e18: $2b
    nop                                           ; $4e19: $00
    inc d                                         ; $4e1a: $14
    rst $10                                       ; $4e1b: $d7
    jr z, jr_092_4e89                             ; $4e1c: $28 $6b

    nop                                           ; $4e1e: $00
    cp a                                          ; $4e1f: $bf
    nop                                           ; $4e20: $00
    inc de                                        ; $4e21: $13
    cp e                                          ; $4e22: $bb
    ld [hl], b                                    ; $4e23: $70
    db $10                                        ; $4e24: $10
    ei                                            ; $4e25: $fb
    call c, $9a05                                 ; $4e26: $dc $05 $9a
    inc bc                                        ; $4e29: $03
    or b                                          ; $4e2a: $b0
    inc bc                                        ; $4e2b: $03
    ld a, [$10cb]                                 ; $4e2c: $fa $cb $10
    ldh a, [$0e]                                  ; $4e2f: $f0 $0e
    nop                                           ; $4e31: $00
    ld d, a                                       ; $4e32: $57
    xor b                                         ; $4e33: $a8
    call nc, Call_092_7a2b                        ; $4e34: $d4 $2b $7a
    add b                                         ; $4e37: $80
    sub a                                         ; $4e38: $97
    add sp, $00                                   ; $4e39: $e8 $00
    jp z, $a1f5                                   ; $4e3b: $ca $f5 $a1

    cp $85                                        ; $4e3e: $fe $85
    ld a, d                                       ; $4e40: $7a
    dec [hl]                                      ; $4e41: $35

jr_092_4e42:
    jp z, $ff00                                   ; $4e42: $ca $00 $ff

    inc bc                                        ; $4e45: $03
    ld d, l                                       ; $4e46: $55
    xor d                                         ; $4e47: $aa
    add d                                         ; $4e48: $82
    ld bc, $0154                                  ; $4e49: $01 $54 $01
    nop                                           ; $4e4c: $00
    ld a, [$5601]                                 ; $4e4d: $fa $01 $56
    xor c                                         ; $4e50: $a9
    sub c                                         ; $4e51: $91
    ld a, [hl]                                    ; $4e52: $7e
    ld d, h                                       ; $4e53: $54
    cp a                                          ; $4e54: $bf
    nop                                           ; $4e55: $00
    dec sp                                        ; $4e56: $3b
    cp $e2                                        ; $4e57: $fe $e2
    ld a, l                                       ; $4e59: $7d
    ei                                            ; $4e5a: $fb
    inc b                                         ; $4e5b: $04
    jr nc, @-$2f                                  ; $4e5c: $30 $cf

    ld [$d4ab], sp                                ; $4e5e: $08 $ab $d4
    and c                                         ; $4e61: $a1
    cp $f0                                        ; $4e62: $fe $f0
    ld d, $69                                     ; $4e64: $16 $69
    ld l, e                                       ; $4e66: $6b
    sub h                                         ; $4e67: $94
    nop                                           ; $4e68: $00
    ld [$5715], a                                 ; $4e69: $ea $15 $57
    xor b                                         ; $4e6c: $a8
    xor d                                         ; $4e6d: $aa
    ld d, l                                       ; $4e6e: $55
    ld l, d                                       ; $4e6f: $6a
    sub b                                         ; $4e70: $90
    ld b, b                                       ; $4e71: $40
    call nc, $062c                                ; $4e72: $d4 $2c $06
    xor b                                         ; $4e75: $a8
    ld d, a                                       ; $4e76: $57
    call nc, $5801                                ; $4e77: $d4 $01 $58
    and a                                         ; $4e7a: $a7
    ld bc, $63dc                                  ; $4e7b: $01 $dc $63
    inc b                                         ; $4e7e: $04
    ei                                            ; $4e7f: $fb
    ld d, l                                       ; $4e80: $55
    jr nz, jr_092_4e83                            ; $4e81: $20 $00

jr_092_4e83:
    db $e4                                        ; $4e83: $e4
    ld [bc], a                                    ; $4e84: $02
    ld bc, $fd02                                  ; $4e85: $01 $02 $fd
    ld d, h                                       ; $4e88: $54

jr_092_4e89:
    add b                                         ; $4e89: $80
    cp a                                          ; $4e8a: $bf
    ret nz                                        ; $4e8b: $c0

    push de                                       ; $4e8c: $d5
    jr jr_092_4e8f                                ; $4e8d: $18 $00

jr_092_4e8f:
    jr nz, jr_092_4e9d                            ; $4e8f: $20 $0c

    inc bc                                        ; $4e91: $03
    jr nz, jr_092_4eac                            ; $4e92: $20 $18

    inc b                                         ; $4e94: $04
    inc bc                                        ; $4e95: $03
    and d                                         ; $4e96: $a2
    rlca                                          ; $4e97: $07
    ld d, e                                       ; $4e98: $53
    nop                                           ; $4e99: $00
    xor a                                         ; $4e9a: $af
    nop                                           ; $4e9b: $00
    rst $38                                       ; $4e9c: $ff

jr_092_4e9d:
    ret nc                                        ; $4e9d: $d0

    nop                                           ; $4e9e: $00
    ld c, $30                                     ; $4e9f: $0e $30
    sub l                                         ; $4ea1: $95
    nop                                           ; $4ea2: $00
    ld a, $5f                                     ; $4ea3: $3e $5f
    cp a                                          ; $4ea5: $bf
    ld d, [hl]                                    ; $4ea6: $56
    jp hl                                         ; $4ea7: $e9


    sbc a                                         ; $4ea8: $9f
    ld h, b                                       ; $4ea9: $60
    ld e, a                                       ; $4eaa: $5f
    add b                                         ; $4eab: $80

jr_092_4eac:
    ret nz                                        ; $4eac: $c0

    ld d, $a2                                     ; $4ead: $16 $a2
    rlca                                          ; $4eaf: $07
    ld [hl], l                                    ; $4eb0: $75
    add e                                         ; $4eb1: $83
    xor d                                         ; $4eb2: $aa
    rst $38                                       ; $4eb3: $ff
    add e                                         ; $4eb4: $83
    inc b                                         ; $4eb5: $04
    ld a, a                                       ; $4eb6: $7f
    add sp, $17                                   ; $4eb7: $e8 $17
    rst $10                                       ; $4eb9: $d7
    jr z, jr_092_4ebc                             ; $4eba: $28 $00

jr_092_4ebc:
    inc c                                         ; $4ebc: $0c
    ld l, d                                       ; $4ebd: $6a
    add b                                         ; $4ebe: $80
    nop                                           ; $4ebf: $00
    cpl                                           ; $4ec0: $2f
    ret nc                                        ; $4ec1: $d0

    and d                                         ; $4ec2: $a2
    db $fd                                        ; $4ec3: $fd
    ldh a, [rIE]                                  ; $4ec4: $f0 $ff
    dec d                                         ; $4ec6: $15
    ld [$ff40], a                                 ; $4ec7: $ea $40 $ff
    jr nz, jr_092_4ee3                            ; $4eca: $20 $17

    sub d                                         ; $4ecc: $92
    dec b                                         ; $4ecd: $05
    ld d, h                                       ; $4ece: $54
    xor d                                         ; $4ecf: $aa
    rst $38                                       ; $4ed0: $ff
    add b                                         ; $4ed1: $80
    nop                                           ; $4ed2: $00
    dec b                                         ; $4ed3: $05
    ld a, [$8060]                                 ; $4ed4: $fa $60 $80
    inc a                                         ; $4ed7: $3c
    ret nz                                        ; $4ed8: $c0

    ld c, a                                       ; $4ed9: $4f
    ldh a, [rP1]                                  ; $4eda: $f0 $00
    ld a, d                                       ; $4edc: $7a
    rst $38                                       ; $4edd: $ff
    ld h, l                                       ; $4ede: $65
    ld a, [$55aa]                                 ; $4edf: $fa $aa $55
    db $fd                                        ; $4ee2: $fd

jr_092_4ee3:
    ld [bc], a                                    ; $4ee3: $02
    nop                                           ; $4ee4: $00
    ld b, e                                       ; $4ee5: $43
    cp h                                          ; $4ee6: $bc
    ld l, l                                       ; $4ee7: $6d
    ld [de], a                                    ; $4ee8: $12
    ld [hl], h                                    ; $4ee9: $74
    dec bc                                        ; $4eea: $0b
    push hl                                       ; $4eeb: $e5
    rra                                           ; $4eec: $1f
    nop                                           ; $4eed: $00
    ld e, [hl]                                    ; $4eee: $5e
    xor a                                         ; $4eef: $af
    ld bc, $7ffe                                  ; $4ef0: $01 $fe $7f
    add b                                         ; $4ef3: $80
    inc b                                         ; $4ef4: $04
    ei                                            ; $4ef5: $fb
    nop                                           ; $4ef6: $00
    jp nz, Jump_092_5307                          ; $4ef7: $c2 $07 $53

    and h                                         ; $4efa: $a4
    ld d, e                                       ; $4efb: $53
    db $fc                                        ; $4efc: $fc
    dec c                                         ; $4efd: $0d
    ldh a, [rP1]                                  ; $4efe: $f0 $00
    ld [hl], d                                    ; $4f00: $72
    ld bc, $229d                                  ; $4f01: $01 $9d $22
    ld h, l                                       ; $4f04: $65
    rra                                           ; $4f05: $1f
    db $d3                                        ; $4f06: $d3
    cpl                                           ; $4f07: $2f
    nop                                           ; $4f08: $00
    ld a, [hl-]                                   ; $4f09: $3a
    push bc                                       ; $4f0a: $c5
    push de                                       ; $4f0b: $d5
    ld a, [hl+]                                   ; $4f0c: $2a
    ld hl, sp+$00                                 ; $4f0d: $f8 $00
    ld l, $d1                                     ; $4f0f: $2e $d1
    ld b, b                                       ; $4f11: $40
    sub l                                         ; $4f12: $95
    ld b, [hl]                                    ; $4f13: $46
    nop                                           ; $4f14: $00
    ld d, h                                       ; $4f15: $54
    xor e                                         ; $4f16: $ab
    ld a, [de]                                    ; $4f17: $1a
    push hl                                       ; $4f18: $e5
    and d                                         ; $4f19: $a2
    ld e, l                                       ; $4f1a: $5d
    ld [$a659], sp                                ; $4f1b: $08 $59 $a6
    rst $38                                       ; $4f1e: $ff
    nop                                           ; $4f1f: $00
    jr nz, jr_092_4f31                            ; $4f20: $20 $0f

    and b                                         ; $4f22: $a0
    ld e, a                                       ; $4f23: $5f
    ld d, b                                       ; $4f24: $50
    nop                                           ; $4f25: $00
    add b                                         ; $4f26: $80
    sbc h                                         ; $4f27: $9c
    ldh [$e7], a                                  ; $4f28: $e0 $e7
    ld hl, sp-$01                                 ; $4f2a: $f8 $ff
    rst $38                                       ; $4f2c: $ff
    ld b, b                                       ; $4f2d: $40
    nop                                           ; $4f2e: $00
    cp a                                          ; $4f2f: $bf
    xor b                                         ; $4f30: $a8

jr_092_4f31:
    ld d, b                                       ; $4f31: $50
    ld [hl], d                                    ; $4f32: $72
    db $fc                                        ; $4f33: $fc
    db $fd                                        ; $4f34: $fd
    ld [bc], a                                    ; $4f35: $02
    ld d, c                                       ; $4f36: $51
    nop                                           ; $4f37: $00
    xor [hl]                                      ; $4f38: $ae
    ld bc, $30fe                                  ; $4f39: $01 $fe $30
    ret nz                                        ; $4f3c: $c0

    ld e, d                                       ; $4f3d: $5a
    ldh [rBGP], a                                 ; $4f3e: $e0 $47
    inc b                                         ; $4f40: $04
    ld hl, sp+$7c                                 ; $4f41: $f8 $7c
    rst $38                                       ; $4f43: $ff
    ld d, a                                       ; $4f44: $57
    xor c                                         ; $4f45: $a9
    ld h, b                                       ; $4f46: $60
    inc h                                         ; $4f47: $24
    inc bc                                        ; $4f48: $03
    add hl, de                                    ; $4f49: $19
    nop                                           ; $4f4a: $00
    ld h, [hl]                                    ; $4f4b: $66
    ld l, $51                                     ; $4f4c: $2e $51
    ld d, h                                       ; $4f4e: $54
    xor e                                         ; $4f4f: $ab
    xor c                                         ; $4f50: $a9
    ld e, [hl]                                    ; $4f51: $5e
    rst $38                                       ; $4f52: $ff
    nop                                           ; $4f53: $00
    rst $38                                       ; $4f54: $ff
    reti                                          ; $4f55: $d9


    rst $38                                       ; $4f56: $ff
    ld l, [hl]                                    ; $4f57: $6e
    pop af                                        ; $4f58: $f1
    pop af                                        ; $4f59: $f1
    ret nz                                        ; $4f5a: $c0

    xor e                                         ; $4f5b: $ab
    nop                                           ; $4f5c: $00
    ret nz                                        ; $4f5d: $c0

    db $dd                                        ; $4f5e: $dd
    add b                                         ; $4f5f: $80
    rst $30                                       ; $4f60: $f7
    add b                                         ; $4f61: $80
    db $fd                                        ; $4f62: $fd
    add d                                         ; $4f63: $82
    ld d, l                                       ; $4f64: $55
    nop                                           ; $4f65: $00
    db $eb                                        ; $4f66: $eb
    push af                                       ; $4f67: $f5
    ei                                            ; $4f68: $fb
    xor a                                         ; $4f69: $af
    rst $30                                       ; $4f6a: $f7
    ld e, l                                       ; $4f6b: $5d
    rst $20                                       ; $4f6c: $e7
    xor $00                                       ; $4f6d: $ee $00
    ld b, l                                       ; $4f6f: $45
    rst $10                                       ; $4f70: $d7
    ld c, h                                       ; $4f71: $4c
    ld l, [hl]                                    ; $4f72: $6e
    push de                                       ; $4f73: $d5
    ld d, h                                       ; $4f74: $54
    rst $28                                       ; $4f75: $ef
    xor d                                         ; $4f76: $aa
    nop                                           ; $4f77: $00
    push de                                       ; $4f78: $d5
    ld d, h                                       ; $4f79: $54
    db $eb                                        ; $4f7a: $eb
    ret nz                                        ; $4f7b: $c0

    ld a, a                                       ; $4f7c: $7f
    jp Jump_000_2e7f                              ; $4f7d: $c3 $7f $2e


    nop                                           ; $4f80: $00
    rst $38                                       ; $4f81: $ff
    jp c, $b4fc                                   ; $4f82: $da $fc $b4

    ld hl, sp-$18                                 ; $4f85: $f8 $e8
    ldh a, [rVBK]                                 ; $4f87: $f0 $4f
    nop                                           ; $4f89: $00
    rst $38                                       ; $4f8a: $ff
    ld [hl], l                                    ; $4f8b: $75
    ei                                            ; $4f8c: $fb
    xor a                                         ; $4f8d: $af
    pop af                                        ; $4f8e: $f1
    rst $38                                       ; $4f8f: $ff
    pop hl                                        ; $4f90: $e1
    ld [hl], l                                    ; $4f91: $75
    nop                                           ; $4f92: $00
    db $eb                                        ; $4f93: $eb
    jp hl                                         ; $4f94: $e9


    scf                                           ; $4f95: $37
    ld d, c                                       ; $4f96: $51
    ccf                                           ; $4f97: $3f
    ei                                            ; $4f98: $fb
    rra                                           ; $4f99: $1f
    db $ed                                        ; $4f9a: $ed
    nop                                           ; $4f9b: $00
    ldh a, [$6f]                                  ; $4f9c: $f0 $6f
    ldh a, [$be]                                  ; $4f9e: $f0 $be
    ld [hl], c                                    ; $4fa0: $71
    push af                                       ; $4fa1: $f5
    ld a, [hl-]                                   ; $4fa2: $3a
    ld hl, sp+$00                                 ; $4fa3: $f8 $00
    ccf                                           ; $4fa5: $3f
    cp [hl]                                       ; $4fa6: $be
    ld a, a                                       ; $4fa7: $7f
    daa                                           ; $4fa8: $27
    rst $38                                       ; $4fa9: $ff
    ld e, l                                       ; $4faa: $5d
    db $e3                                        ; $4fab: $e3
    ld l, l                                       ; $4fac: $6d
    nop                                           ; $4fad: $00
    rra                                           ; $4fae: $1f
    ei                                            ; $4faf: $fb
    dec c                                         ; $4fb0: $0d
    xor [hl]                                      ; $4fb1: $ae
    ld e, c                                       ; $4fb2: $59
    ld c, d                                       ; $4fb3: $4a
    cp l                                          ; $4fb4: $bd
    inc e                                         ; $4fb5: $1c
    add b                                         ; $4fb6: $80
    ld [de], a                                    ; $4fb7: $12
    rlca                                          ; $4fb8: $07
    sbc e                                         ; $4fb9: $9b
    rst $20                                       ; $4fba: $e7
    ld a, l                                       ; $4fbb: $7d
    jp $c1e6                                      ; $4fbc: $c3 $e6 $c1


    add l                                         ; $4fbf: $85
    nop                                           ; $4fc0: $00
    ret nz                                        ; $4fc1: $c0

    ld [$f781], a                                 ; $4fc2: $ea $81 $f7
    add b                                         ; $4fc5: $80
    cp [hl]                                       ; $4fc6: $be
    pop bc                                        ; $4fc7: $c1
    sub h                                         ; $4fc8: $94
    nop                                           ; $4fc9: $00
    db $eb                                        ; $4fca: $eb
    jp z, $c4f5                                   ; $4fcb: $ca $f5 $c4

    ei                                            ; $4fce: $fb
    cp $c1                                        ; $4fcf: $fe $c1
    push af                                       ; $4fd1: $f5
    nop                                           ; $4fd2: $00
    jp z, $f54a                                   ; $4fd3: $ca $4a $f5

    ld b, h                                       ; $4fd6: $44
    ei                                            ; $4fd7: $fb
    ld h, c                                       ; $4fd8: $61
    rst $38                                       ; $4fd9: $ff
    ld [hl], c                                    ; $4fda: $71
    and b                                         ; $4fdb: $a0
    ld [hl+], a                                   ; $4fdc: $22
    rlca                                          ; $4fdd: $07
    add a                                         ; $4fde: $87
    ld c, [hl]                                    ; $4fdf: $4e
    dec b                                         ; $4fe0: $05
    add h                                         ; $4fe1: $84
    ei                                            ; $4fe2: $fb
    pop bc                                        ; $4fe3: $c1
    rst $38                                       ; $4fe4: $ff
    and d                                         ; $4fe5: $a2
    ret nc                                        ; $4fe6: $d0

    ld e, [hl]                                    ; $4fe7: $5e
    rlca                                          ; $4fe8: $07
    cp d                                          ; $4fe9: $ba
    add hl, bc                                    ; $4fea: $09
    ld d, a                                       ; $4feb: $57
    adc b                                         ; $4fec: $88
    ld b, $f5                                     ; $4fed: $06 $f5
    jp $c56b                                      ; $4fef: $c3 $6b $c5


    inc b                                         ; $4ff2: $04
    push de                                       ; $4ff3: $d5
    db $eb                                        ; $4ff4: $eb
    ret                                           ; $4ff5: $c9


    rst $30                                       ; $4ff6: $f7
    ld [c], a                                     ; $4ff7: $e2
    add b                                         ; $4ff8: $80
    dec b                                         ; $4ff9: $05
    ld d, d                                       ; $4ffa: $52
    rst $38                                       ; $4ffb: $ff
    adc h                                         ; $4ffc: $8c
    ld [hl+], a                                   ; $4ffd: $22
    rlca                                          ; $4ffe: $07
    nop                                           ; $4fff: $00
    ld [hl], c                                    ; $5000: $71
    add b                                         ; $5001: $80
    ret nc                                        ; $5002: $d0

    ld a, [de]                                    ; $5003: $1a
    and b                                         ; $5004: $a0
    inc bc                                        ; $5005: $03
    db $10                                        ; $5006: $10
    ld l, e                                       ; $5007: $6b
    nop                                           ; $5008: $00
    call nc, Call_092_41be                        ; $5009: $d4 $be $41
    ld [hl], c                                    ; $500c: $71
    add [hl]                                      ; $500d: $86
    xor d                                         ; $500e: $aa
    ld b, a                                       ; $500f: $47
    ld l, e                                       ; $5010: $6b
    ld bc, $5717                                  ; $5011: $01 $17 $57
    xor e                                         ; $5014: $ab
    db $dd                                        ; $5015: $dd
    ld [hl+], a                                   ; $5016: $22
    inc hl                                        ; $5017: $23
    db $fc                                        ; $5018: $fc
    ld h, b                                       ; $5019: $60
    dec a                                         ; $501a: $3d
    nop                                           ; $501b: $00
    call nc, Call_000_3b2b                        ; $501c: $d4 $2b $3b
    db $f4                                        ; $501f: $f4
    ld c, l                                       ; $5020: $4d
    or $57                                        ; $5021: $f6 $57
    ld hl, sp-$80                                 ; $5023: $f8 $80
    or b                                          ; $5025: $b0
    ld [de], a                                    ; $5026: $12
    dec b                                         ; $5027: $05
    rst $38                                       ; $5028: $ff
    nop                                           ; $5029: $00
    dec c                                         ; $502a: $0d
    ld a, [c]                                     ; $502b: $f2
    nop                                           ; $502c: $00
    rlca                                          ; $502d: $07
    nop                                           ; $502e: $00
    ld [c], a                                     ; $502f: $e2
    rlca                                          ; $5030: $07
    ld hl, sp+$07                                 ; $5031: $f8 $07
    ld d, a                                       ; $5033: $57
    jr z, jr_092_5050                             ; $5034: $28 $1a

    rlca                                          ; $5036: $07
    ld [$5fa3], sp                                ; $5037: $08 $a3 $5f
    ld e, a                                       ; $503a: $5f
    and e                                         ; $503b: $a3
    jr nz, jr_092_5057                            ; $503c: $20 $19

    sbc a                                         ; $503e: $9f
    ld h, d                                       ; $503f: $62

jr_092_5040:
    jp Jump_000_3c02                              ; $5040: $c3 $02 $3c


    ldh [rSB], a                                  ; $5043: $e0 $01
    ld e, b                                       ; $5045: $58
    and c                                         ; $5046: $a1
    adc d                                         ; $5047: $8a
    add c                                         ; $5048: $81
    rlca                                          ; $5049: $07
    xor d                                         ; $504a: $aa
    nop                                           ; $504b: $00
    ld d, l                                       ; $504c: $55
    ld l, e                                       ; $504d: $6b
    db $fc                                        ; $504e: $fc
    rst $38                                       ; $504f: $ff

jr_092_5050:
    add a                                         ; $5050: $87
    ld b, b                                       ; $5051: $40
    cp a                                          ; $5052: $bf
    rst $38                                       ; $5053: $ff
    and b                                         ; $5054: $a0
    ret nz                                        ; $5055: $c0

    dec b                                         ; $5056: $05

jr_092_5057:
    ld sp, hl                                     ; $5057: $f9
    ret z                                         ; $5058: $c8

    rlca                                          ; $5059: $07
    nop                                           ; $505a: $00
    rst $38                                       ; $505b: $ff
    push af                                       ; $505c: $f5
    ld c, $9b                                     ; $505d: $0e $9b
    nop                                           ; $505f: $00
    rst $20                                       ; $5060: $e7
    nop                                           ; $5061: $00
    rst $38                                       ; $5062: $ff
    ld d, h                                       ; $5063: $54
    add sp, $4b                                   ; $5064: $e8 $4b
    db $f4                                        ; $5066: $f4
    ld l, b                                       ; $5067: $68
    jr nz, @+$01                                  ; $5068: $20 $ff

    ld a, l                                       ; $506a: $7d
    ld b, d                                       ; $506b: $42
    rlca                                          ; $506c: $07
    add b                                         ; $506d: $80
    inc bc                                        ; $506e: $03
    rst $38                                       ; $506f: $ff
    nop                                           ; $5070: $00
    add e                                         ; $5071: $83
    nop                                           ; $5072: $00
    ld a, h                                       ; $5073: $7c
    ld b, c                                       ; $5074: $41
    ld [bc], a                                    ; $5075: $02
    ld [hl], b                                    ; $5076: $70
    add e                                         ; $5077: $83
    sbc h                                         ; $5078: $9c
    db $e3                                        ; $5079: $e3
    db $fd                                        ; $507a: $fd
    add b                                         ; $507b: $80
    ld b, d                                       ; $507c: $42
    rlca                                          ; $507d: $07
    and c                                         ; $507e: $a1
    ld b, e                                       ; $507f: $43
    ld d, e                                       ; $5080: $53
    xor a                                         ; $5081: $af
    cp $01                                        ; $5082: $fe $01
    jr z, jr_092_5086                             ; $5084: $28 $00

jr_092_5086:
    ret nz                                        ; $5086: $c0

    dec b                                         ; $5087: $05
    ld a, [$00c1]                                 ; $5088: $fa $c1 $00
    ld l, b                                       ; $508b: $68
    add c                                         ; $508c: $81
    inc e                                         ; $508d: $1c
    nop                                           ; $508e: $00
    pop hl                                        ; $508f: $e1
    pop af                                        ; $5090: $f1
    cp $c9                                        ; $5091: $fe $c9
    ld [hl], d                                    ; $5093: $72
    di                                            ; $5094: $f3
    ld a, h                                       ; $5095: $7c
    db $d3                                        ; $5096: $d3
    nop                                           ; $5097: $00
    cpl                                           ; $5098: $2f
    ld a, [$5d05]                                 ; $5099: $fa $05 $5d
    and d                                         ; $509c: $a2
    ld b, h                                       ; $509d: $44
    ld [bc], a                                    ; $509e: $02
    xor b                                         ; $509f: $a8
    nop                                           ; $50a0: $00
    ld b, e                                       ; $50a1: $43
    ld d, l                                       ; $50a2: $55
    and d                                         ; $50a3: $a2
    add e                                         ; $50a4: $83
    db $fc                                        ; $50a5: $fc
    nop                                           ; $50a6: $00
    rst $38                                       ; $50a7: $ff
    add d                                         ; $50a8: $82
    nop                                           ; $50a9: $00
    inc c                                         ; $50aa: $0c
    ld b, l                                       ; $50ab: $45
    ld c, $76                                     ; $50ac: $0e $76
    adc a                                         ; $50ae: $8f

Call_092_50af:
    ld b, a                                       ; $50af: $47
    ld hl, sp+$07                                 ; $50b0: $f8 $07
    nop                                           ; $50b2: $00
    ld hl, sp-$3d                                 ; $50b3: $f8 $c3
    inc b                                         ; $50b5: $04
    ld a, [$7d05]                                 ; $50b6: $fa $05 $7d
    add b                                         ; $50b9: $80
    inc e                                         ; $50ba: $1c
    nop                                           ; $50bb: $00
    jr nz, jr_092_5040                            ; $50bc: $20 $82

    dec a                                         ; $50be: $3d
    ld [hl], l                                    ; $50bf: $75
    adc a                                         ; $50c0: $8f
    ld c, d                                       ; $50c1: $4a
    cp a                                          ; $50c2: $bf
    db $eb                                        ; $50c3: $eb
    db $10                                        ; $50c4: $10
    inc d                                         ; $50c5: $14
    dec c                                         ; $50c6: $0d
    ld [bc], a                                    ; $50c7: $02
    ldh a, [$09]                                  ; $50c8: $f0 $09
    xor e                                         ; $50ca: $ab
    call nc, $01fe                                ; $50cb: $d4 $fe $01
    nop                                           ; $50ce: $00
    ld d, c                                       ; $50cf: $51
    ld b, $6a                                     ; $50d0: $06 $6a
    add a                                         ; $50d2: $87
    or e                                          ; $50d3: $b3
    ld b, a                                       ; $50d4: $47
    ld a, e                                       ; $50d5: $7b
    add a                                         ; $50d6: $87
    sub b                                         ; $50d7: $90
    ldh a, [$09]                                  ; $50d8: $f0 $09
    ld a, l                                       ; $50da: $7d
    ld [bc], a                                    ; $50db: $02
    ld h, h                                       ; $50dc: $64
    ld e, b                                       ; $50dd: $58
    ld c, c                                       ; $50de: $49
    ld a, [c]                                     ; $50df: $f2
    di                                            ; $50e0: $f3
    ld a, h                                       ; $50e1: $7c
    nop                                           ; $50e2: $00
    ld b, d                                       ; $50e3: $42
    add b                                         ; $50e4: $80
    db $eb                                        ; $50e5: $eb
    nop                                           ; $50e6: $00
    cp $00                                        ; $50e7: $fe $00
    xor a                                         ; $50e9: $af
    ld d, b                                       ; $50ea: $50
    add b                                         ; $50eb: $80
    jr nc, jr_092_5106                            ; $50ec: $30 $18

    push bc                                       ; $50ee: $c5
    ld a, [hl-]                                   ; $50ef: $3a

jr_092_50f0:
    ld b, d                                       ; $50f0: $42
    nop                                           ; $50f1: $00
    ld a, a                                       ; $50f2: $7f
    add b                                         ; $50f3: $80
    cp h                                          ; $50f4: $bc
    db $10                                        ; $50f5: $10
    ld b, e                                       ; $50f6: $43
    ld a, l                                       ; $50f7: $7d
    add e                                         ; $50f8: $83
    jr nz, jr_092_5105                            ; $50f9: $20 $0a

    dec a                                         ; $50fb: $3d
    ld [bc], a                                    ; $50fc: $02
    ld b, e                                       ; $50fd: $43
    add b                                         ; $50fe: $80
    jr nz, jr_092_50f0                            ; $50ff: $20 $ef

    nop                                           ; $5101: $00
    ld d, h                                       ; $5102: $54
    rra                                           ; $5103: $1f
    xor l                                         ; $5104: $ad

jr_092_5105:
    ld d, e                                       ; $5105: $53

jr_092_5106:
    ld d, l                                       ; $5106: $55
    dec hl                                        ; $5107: $2b
    xor [hl]                                      ; $5108: $ae

jr_092_5109:
    nop                                           ; $5109: $00
    ld d, c                                       ; $510a: $51
    ld d, e                                       ; $510b: $53
    xor [hl]                                      ; $510c: $ae
    jp hl                                         ; $510d: $e9


    ld d, $7c                                     ; $510e: $16 $7c
    add e                                         ; $5110: $83
    add l                                         ; $5111: $85
    stop                                          ; $5112: $10 $00
    ld b, d                                       ; $5114: $42
    add c                                         ; $5115: $81
    sbc $1b                                       ; $5116: $de $1b
    ret nc                                        ; $5118: $d0

    ld hl, $b964                                  ; $5119: $21 $64 $b9
    ld [hl+], a                                   ; $511c: $22
    ld sp, hl                                     ; $511d: $f9
    ld a, $40                                     ; $511e: $3e $40
    ld [$bf4d], sp                                ; $5120: $08 $4d $bf
    xor d                                         ; $5123: $aa
    ld h, d                                       ; $5124: $62
    dec b                                         ; $5125: $05
    ld l, $01                                     ; $5126: $2e $01
    ld bc, $0081                                  ; $5128: $01 $81 $00
    ld a, [$9701]                                 ; $512b: $fa $01 $97
    ld l, b                                       ; $512e: $68
    xor $4b                                       ; $512f: $ee $4b
    ld [bc], a                                    ; $5131: $02
    call nc, $be2b                                ; $5132: $d4 $2b $be
    ld bc, $0055                                  ; $5135: $01 $55 $00
    nop                                           ; $5138: $00
    dec bc                                        ; $5139: $0b
    ld a, [hl-]                                   ; $513a: $3a
    nop                                           ; $513b: $00
    rst $38                                       ; $513c: $ff
    ld h, d                                       ; $513d: $62
    db $fd                                        ; $513e: $fd
    cp c                                          ; $513f: $b9
    ld b, [hl]                                    ; $5140: $46
    or l                                          ; $5141: $b5
    ld c, d                                       ; $5142: $4a
    ld c, d                                       ; $5143: $4a
    db $10                                        ; $5144: $10
    cp a                                          ; $5145: $bf
    ld h, l                                       ; $5146: $65
    ld a, [$3870]                                 ; $5147: $fa $70 $38
    xor b                                         ; $514a: $a8
    ld d, a                                       ; $514b: $57
    or h                                          ; $514c: $b4
    ld c, b                                       ; $514d: $48
    jr z, jr_092_51ba                             ; $514e: $28 $6a

    sbc h                                         ; $5150: $9c
    ld [hl], b                                    ; $5151: $70
    jr z, @-$31                                   ; $5152: $28 $cd

    adc $02                                       ; $5154: $ce $02
    nop                                           ; $5156: $00
    ld a, a                                       ; $5157: $7f
    sub b                                         ; $5158: $90
    nop                                           ; $5159: $00
    ld h, b                                       ; $515a: $60
    ld l, e                                       ; $515b: $6b
    call nc, $e895                                ; $515c: $d4 $95 $e8
    ld [hl], l                                    ; $515f: $75
    add d                                         ; $5160: $82
    and c                                         ; $5161: $a1
    nop                                           ; $5162: $00
    ld b, b                                       ; $5163: $40
    ld l, e                                       ; $5164: $6b
    inc d                                         ; $5165: $14
    ld d, a                                       ; $5166: $57
    xor b                                         ; $5167: $a8
    adc a                                         ; $5168: $8f
    ld a, b                                       ; $5169: $78
    ld hl, $fe00                                  ; $516a: $21 $00 $fe
    cp l                                          ; $516d: $bd
    ld c, [hl]                                    ; $516e: $4e
    cp $0f                                        ; $516f: $fe $0f
    ld b, b                                       ; $5171: $40
    cp a                                          ; $5172: $bf
    ld l, d                                       ; $5173: $6a
    nop                                           ; $5174: $00
    or b                                          ; $5175: $b0
    di                                            ; $5176: $f3
    inc a                                         ; $5177: $3c
    db $fc                                        ; $5178: $fc
    ccf                                           ; $5179: $3f
    ldh a, [rIF]                                  ; $517a: $f0 $0f
    ld b, e                                       ; $517c: $43
    ld [$2c80], sp                                ; $517d: $08 $80 $2c
    ld [hl], b                                    ; $5180: $70
    jr c, jr_092_5109                             ; $5181: $38 $86

    dec b                                         ; $5183: $05
    ld b, $18                                     ; $5184: $06 $18
    call z, Call_000_1f01                         ; $5186: $cc $01 $1f
    ld l, h                                       ; $5189: $6c
    sub e                                         ; $518a: $93
    ld d, $e8                                     ; $518b: $16 $e8
    rst $38                                       ; $518d: $ff
    nop                                           ; $518e: $00
    add b                                         ; $518f: $80
    jr c, jr_092_51da                             ; $5190: $38 $48

    ld a, [c]                                     ; $5192: $f2
    add b                                         ; $5193: $80
    nop                                           ; $5194: $00
    jr nc, jr_092_51e6                            ; $5195: $30 $4f

    sub b                                         ; $5197: $90
    dec bc                                        ; $5198: $0b
    dec d                                         ; $5199: $15
    ld [$00ab], a                                 ; $519a: $ea $ab $00
    ld d, h                                       ; $519d: $54
    ld [hl], b                                    ; $519e: $70
    nop                                           ; $519f: $00
    cp h                                          ; $51a0: $bc
    ld b, b                                       ; $51a1: $40
    ld d, l                                       ; $51a2: $55
    xor d                                         ; $51a3: $aa
    ld d, h                                       ; $51a4: $54
    nop                                           ; $51a5: $00
    xor e                                         ; $51a6: $ab
    jr jr_092_5209                                ; $51a7: $18 $60

    ld l, $f0                                     ; $51a9: $2e $f0
    dec [hl]                                      ; $51ab: $35
    ld a, [$183c]                                 ; $51ac: $fa $3c $18
    ld a, a                                       ; $51af: $7f
    xor e                                         ; $51b0: $ab
    ld d, h                                       ; $51b1: $54
    ret nz                                        ; $51b2: $c0

    inc b                                         ; $51b3: $04
    sub b                                         ; $51b4: $90
    nop                                           ; $51b5: $00
    ld b, l                                       ; $51b6: $45
    ld a, [hl-]                                   ; $51b7: $3a
    ld a, [hl-]                                   ; $51b8: $3a
    nop                                           ; $51b9: $00

jr_092_51ba:
    ld b, l                                       ; $51ba: $45
    dec a                                         ; $51bb: $3d
    ld b, b                                       ; $51bc: $40
    ld [hl], l                                    ; $51bd: $75
    add b                                         ; $51be: $80
    ld e, c                                       ; $51bf: $59
    and [hl]                                      ; $51c0: $a6
    ld d, h                                       ; $51c1: $54
    nop                                           ; $51c2: $00
    rst $38                                       ; $51c3: $ff
    and d                                         ; $51c4: $a2
    ld a, l                                       ; $51c5: $7d
    push de                                       ; $51c6: $d5
    ld a, [hl+]                                   ; $51c7: $2a
    xor d                                         ; $51c8: $aa
    ld d, l                                       ; $51c9: $55
    or e                                          ; $51ca: $b3
    nop                                           ; $51cb: $00
    inc b                                         ; $51cc: $04
    ld e, [hl]                                    ; $51cd: $5e
    ld bc, $a45b                                  ; $51ce: $01 $5b $a4
    sbc a                                         ; $51d1: $9f
    ldh a, [$d4]                                  ; $51d2: $f0 $d4
    nop                                           ; $51d4: $00
    dec hl                                        ; $51d5: $2b
    ld c, [hl]                                    ; $51d6: $4e
    or e                                          ; $51d7: $b3
    rst $30                                       ; $51d8: $f7
    inc bc                                        ; $51d9: $03

jr_092_51da:
    add l                                         ; $51da: $85
    ld a, d                                       ; $51db: $7a
    ld b, b                                       ; $51dc: $40
    ld [bc], a                                    ; $51dd: $02
    add a                                         ; $51de: $87
    xor c                                         ; $51df: $a9
    add $d2                                       ; $51e0: $c6 $d2
    rst $20                                       ; $51e2: $e7
    db $e3                                        ; $51e3: $e3
    db $ec                                        ; $51e4: $ec
    dec b                                         ; $51e5: $05

jr_092_51e6:
    and b                                         ; $51e6: $a0
    nop                                           ; $51e7: $00
    ld bc, $c13c                                  ; $51e8: $01 $3c $c1
    ld e, h                                       ; $51eb: $5c
    and e                                         ; $51ec: $a3
    dec bc                                        ; $51ed: $0b
    db $f4                                        ; $51ee: $f4
    inc bc                                        ; $51ef: $03
    nop                                           ; $51f0: $00

jr_092_51f1:
    inc b                                         ; $51f1: $04
    pop bc                                        ; $51f2: $c1
    ld b, $82                                     ; $51f3: $06 $82
    rst $38                                       ; $51f5: $ff
    inc bc                                        ; $51f6: $03
    rst $38                                       ; $51f7: $ff
    ld h, e                                       ; $51f8: $63
    ld [$ca87], sp                                ; $51f9: $08 $87 $ca
    push af                                       ; $51fc: $f5
    ld a, e                                       ; $51fd: $7b
    or d                                          ; $51fe: $b2
    ld bc, $8075                                  ; $51ff: $01 $75 $80
    adc b                                         ; $5202: $88
    nop                                           ; $5203: $00

Jump_092_5204:
    ld d, e                                       ; $5204: $53
    ld h, [hl]                                    ; $5205: $66
    adc c                                         ; $5206: $89
    dec e                                         ; $5207: $1d
    ld [bc], a                                    ; $5208: $02

jr_092_5209:
    dec l                                         ; $5209: $2d
    ld [bc], a                                    ; $520a: $02
    ld e, [hl]                                    ; $520b: $5e
    nop                                           ; $520c: $00
    and c                                         ; $520d: $a1
    add $f9                                       ; $520e: $c6 $f9
    ld bc, $dffe                                  ; $5210: $01 $fe $df
    jr nz, jr_092_5249                            ; $5213: $20 $34

    nop                                           ; $5215: $00
    rst $38                                       ; $5216: $ff
    adc d                                         ; $5217: $8a
    ld a, a                                       ; $5218: $7f
    ld d, h                                       ; $5219: $54
    xor a                                         ; $521a: $af
    ld d, b                                       ; $521b: $50
    xor a                                         ; $521c: $af
    ld l, b                                       ; $521d: $68
    ld bc, $c590                                  ; $521e: $01 $90 $c5
    ld a, [hl-]                                   ; $5221: $3a
    dec hl                                        ; $5222: $2b
    ret nz                                        ; $5223: $c0

    pop af                                        ; $5224: $f1
    nop                                           ; $5225: $00
    jr nz, jr_092_5245                            ; $5226: $20 $1d

    add b                                         ; $5228: $80
    jr c, jr_092_5239                             ; $5229: $38 $0e

    db $d3                                        ; $522b: $d3
    nop                                           ; $522c: $00
    ld d, d                                       ; $522d: $52
    xor a                                         ; $522e: $af
    dec b                                         ; $522f: $05
    ld a, [$0086]                                 ; $5230: $fa $86 $00
    ld bc, $04e3                                  ; $5233: $01 $e3 $04
    ld d, e                                       ; $5236: $53
    and h                                         ; $5237: $a4
    rst $00                                       ; $5238: $c7

jr_092_5239:
    ld hl, sp-$4c                                 ; $5239: $f8 $b4
    ld e, h                                       ; $523b: $5c
    ld b, b                                       ; $523c: $40
    jr nc, jr_092_5258                            ; $523d: $30 $19

    cp $30                                        ; $523f: $fe $30
    ld bc, $19e4                                  ; $5241: $01 $e4 $19
    or b                                          ; $5244: $b0

jr_092_5245:
    jr jr_092_51f1                                ; $5245: $18 $aa

    ld d, l                                       ; $5247: $55
    nop                                           ; $5248: $00

jr_092_5249:
    ld [hl], b                                    ; $5249: $70
    nop                                           ; $524a: $00
    ld a, h                                       ; $524b: $7c
    add b                                         ; $524c: $80
    ld a, a                                       ; $524d: $7f
    add b                                         ; $524e: $80
    jp c, $0025                                   ; $524f: $da $25 $00

    sub l                                         ; $5252: $95
    jr c, jr_092_528f                             ; $5253: $38 $3a

    inc e                                         ; $5255: $1c
    ld a, h                                       ; $5256: $7c
    sbc a                                         ; $5257: $9f

jr_092_5258:
    add b                                         ; $5258: $80
    ld a, a                                       ; $5259: $7f
    inc e                                         ; $525a: $1c
    ld d, h                                       ; $525b: $54
    ld h, b                                       ; $525c: $60
    ld h, a                                       ; $525d: $67
    ld c, b                                       ; $525e: $48
    ld d, $78                                     ; $525f: $16 $78
    ld l, $48                                     ; $5261: $2e $48
    ld e, $25                                     ; $5263: $1e $25
    jp c, Jump_000_1481                           ; $5265: $da $81 $14

    ld a, [bc]                                    ; $5268: $0a
    ld e, [hl]                                    ; $5269: $5e
    and b                                         ; $526a: $a0
    db $eb                                        ; $526b: $eb
    nop                                           ; $526c: $00
    db $eb                                        ; $526d: $eb
    inc d                                         ; $526e: $14
    ret nc                                        ; $526f: $d0

    jr jr_092_5272                                ; $5270: $18 $00

jr_092_5272:
    jr z, @-$3e                                   ; $5272: $28 $c0

    ld c, [hl]                                    ; $5274: $4e
    ldh a, [$f3]                                  ; $5275: $f0 $f3
    ld a, h                                       ; $5277: $7c
    rst $38                                       ; $5278: $ff
    ld a, a                                       ; $5279: $7f
    nop                                           ; $527a: $00
    and b                                         ; $527b: $a0
    ld e, a                                       ; $527c: $5f
    ld d, h                                       ; $527d: $54
    xor b                                         ; $527e: $a8
    xor c                                         ; $527f: $a9
    ld a, [hl]                                    ; $5280: $7e
    sbc $2f                                       ; $5281: $de $2f
    nop                                           ; $5283: $00
    inc sp                                        ; $5284: $33
    ld c, h                                       ; $5285: $4c
    nop                                           ; $5286: $00
    ld a, a                                       ; $5287: $7f
    sbc b                                         ; $5288: $98
    ld h, b                                       ; $5289: $60
    xor l                                         ; $528a: $ad
    ldh a, [rP1]                                  ; $528b: $f0 $00
    inc hl                                        ; $528d: $23
    db $fc                                        ; $528e: $fc

jr_092_528f:
    ld a, $7f                                     ; $528f: $3e $7f
    dec hl                                        ; $5291: $2b
    ld d, h                                       ; $5292: $54
    ld [hl], b                                    ; $5293: $70
    adc a                                         ; $5294: $8f
    nop                                           ; $5295: $00
    ld l, e                                       ; $5296: $6b
    call nc, Call_092_50af                        ; $5297: $d4 $af $50
    ld [hl-], a                                   ; $529a: $32
    nop                                           ; $529b: $00
    ld bc, $0020                                  ; $529c: $01 $20 $00
    adc e                                         ; $529f: $8b
    inc [hl]                                      ; $52a0: $34
    scf                                           ; $52a1: $37
    ret z                                         ; $52a2: $c8

    jp c, $212d                                   ; $52a3: $da $2d $21

    cp $c0                                        ; $52a6: $fe $c0
    ld a, b                                       ; $52a8: $78
    ld l, $68                                     ; $52a9: $2e $68
    ld c, $b5                                     ; $52ab: $0e $b5
    ld b, d                                       ; $52ad: $42
    ld a, d                                       ; $52ae: $7a
    add l                                         ; $52af: $85
    xor l                                         ; $52b0: $ad
    ld d, d                                       ; $52b1: $52
    sub b                                         ; $52b2: $90
    jr nz, jr_092_52b7                            ; $52b3: $20 $02

    add d                                         ; $52b5: $82
    ld a, e                                       ; $52b6: $7b

jr_092_52b7:
    add b                                         ; $52b7: $80
    ld bc, $0bf4                                  ; $52b8: $01 $f4 $0b
    ld b, l                                       ; $52bb: $45
    cp a                                          ; $52bc: $bf
    nop                                           ; $52bd: $00
    sbc [hl]                                      ; $52be: $9e
    ld a, a                                       ; $52bf: $7f
    cp $01                                        ; $52c0: $fe $01
    cp c                                          ; $52c2: $b9
    ld b, [hl]                                    ; $52c3: $46
    jp c, Jump_000_0027                           ; $52c4: $da $27 $00

    dec hl                                        ; $52c7: $2b
    rlca                                          ; $52c8: $07
    add e                                         ; $52c9: $83
    inc bc                                        ; $52ca: $03
    db $fd                                        ; $52cb: $fd
    ld [bc], a                                    ; $52cc: $02
    sub a                                         ; $52cd: $97
    add sp, $22                                   ; $52ce: $e8 $22
    ld d, d                                       ; $52d0: $52
    db $fd                                        ; $52d1: $fd
    sbc [hl]                                      ; $52d2: $9e
    ld e, d                                       ; $52d3: $5a
    ret                                           ; $52d4: $c9


    ld [hl], d                                    ; $52d5: $72
    ld [hl], e                                    ; $52d6: $73
    jr jr_092_52df                                ; $52d7: $18 $06

    xor b                                         ; $52d9: $a8
    stop                                          ; $52da: $10 $00
    push de                                       ; $52dc: $d5
    nop                                           ; $52dd: $00
    ld b, b                                       ; $52de: $40

jr_092_52df:
    add hl, hl                                    ; $52df: $29
    push de                                       ; $52e0: $d5
    nop                                           ; $52e1: $00
    dec [hl]                                      ; $52e2: $35
    ld a, [bc]                                    ; $52e3: $0a
    sub c                                         ; $52e4: $91
    xor [hl]                                      ; $52e5: $ae
    ld a, [hl-]                                   ; $52e6: $3a
    ld c, e                                       ; $52e7: $4b
    or l                                          ; $52e8: $b5
    ldh [rNR14], a                                ; $52e9: $e0 $14
    nop                                           ; $52eb: $00
    ld l, e                                       ; $52ec: $6b
    nop                                           ; $52ed: $00
    ldh [rNR14], a                                ; $52ee: $e0 $14
    nop                                           ; $52f0: $00
    dec d                                         ; $52f1: $15
    ld l, d                                       ; $52f2: $6a
    db $10                                        ; $52f3: $10
    or a                                          ; $52f4: $b7
    ld e, b                                       ; $52f5: $58
    ld e, d                                       ; $52f6: $5a
    cp l                                          ; $52f7: $bd
    or l                                          ; $52f8: $b5
    inc b                                         ; $52f9: $04
    ld e, [hl]                                    ; $52fa: $5e
    ld a, a                                       ; $52fb: $7f
    adc a                                         ; $52fc: $8f
    cp [hl]                                       ; $52fd: $be
    ld b, c                                       ; $52fe: $41
    sub [hl]                                      ; $52ff: $96
    ld bc, $71d4                                  ; $5300: $01 $d4 $71
    ld b, c                                       ; $5303: $41
    adc [hl]                                      ; $5304: $8e
    and b                                         ; $5305: $a0
    ld c, c                                       ; $5306: $49

Jump_092_5307:
    ld a, a                                       ; $5307: $7f
    add b                                         ; $5308: $80
    ret nc                                        ; $5309: $d0

    cpl                                           ; $530a: $2f
    add l                                         ; $530b: $85
    ld b, b                                       ; $530c: $40
    nop                                           ; $530d: $00
    jr nz, jr_092_535b                            ; $530e: $20 $4b

    cp a                                          ; $5310: $bf
    ld b, h                                       ; $5311: $44
    rlca                                          ; $5312: $07
    ld a, [bc]                                    ; $5313: $0a
    ld e, [hl]                                    ; $5314: $5e
    ld bc, $0af5                                  ; $5315: $01 $f5 $0a
    jr nc, jr_092_5395                            ; $5318: $30 $7b

    add l                                         ; $531a: $85
    ld d, b                                       ; $531b: $50
    ld c, c                                       ; $531c: $49
    ld b, b                                       ; $531d: $40
    rlca                                          ; $531e: $07
    add c                                         ; $531f: $81
    ld d, l                                       ; $5320: $55
    xor d                                         ; $5321: $aa
    cp [hl]                                       ; $5322: $be
    db $10                                        ; $5323: $10
    ld b, c                                       ; $5324: $41
    ret                                           ; $5325: $c9


    ld a, $60                                     ; $5326: $3e $60
    ld bc, $5e7d                                  ; $5328: $01 $7d $5e
    and c                                         ; $532b: $a1
    add hl, hl                                    ; $532c: $29
    db $10                                        ; $532d: $10
    sub $6a                                       ; $532e: $d6 $6a
    sub a                                         ; $5330: $97
    add b                                         ; $5331: $80
    ld c, $75                                     ; $5332: $0e $75
    adc d                                         ; $5334: $8a
    rst $38                                       ; $5335: $ff
    nop                                           ; $5336: $00
    nop                                           ; $5337: $00
    or b                                          ; $5338: $b0
    ld c, a                                       ; $5339: $4f
    dec hl                                        ; $533a: $2b
    call nc, Call_000_0e15                        ; $533b: $d4 $15 $0e
    jp c, Jump_000_0007                           ; $533e: $da $07 $00

    rst $38                                       ; $5341: $ff
    nop                                           ; $5342: $00
    ret nc                                        ; $5343: $d0

    cpl                                           ; $5344: $2f
    ld h, d                                       ; $5345: $62
    sbc l                                         ; $5346: $9d
    or l                                          ; $5347: $b5
    ld e, [hl]                                    ; $5348: $5e
    nop                                           ; $5349: $00
    scf                                           ; $534a: $37
    rst $08                                       ; $534b: $cf

jr_092_534c:
    nop                                           ; $534c: $00
    rst $38                                       ; $534d: $ff
    ld a, [hl+]                                   ; $534e: $2a
    push af                                       ; $534f: $f5
    ld d, l                                       ; $5350: $55
    cp $00                                        ; $5351: $fe $00
    ld a, [$1e05]                                 ; $5353: $fa $05 $1e
    pop hl                                        ; $5356: $e1
    xor l                                         ; $5357: $ad
    inc de                                        ; $5358: $13
    ld c, a                                       ; $5359: $4f
    sub b                                         ; $535a: $90

jr_092_535b:
    nop                                           ; $535b: $00
    ld c, a                                       ; $535c: $4f
    ldh a, [rP1]                                  ; $535d: $f0 $00
    rst $38                                       ; $535f: $ff
    ld hl, $18c0                                  ; $5360: $21 $c0 $18
    ldh [$e3], a                                  ; $5363: $e0 $e3
    ld h, b                                       ; $5365: $60
    ld [$4d90], sp                                ; $5366: $08 $90 $4d
    nop                                           ; $5369: $00
    dec h                                         ; $536a: $25
    add b                                         ; $536b: $80
    ld l, l                                       ; $536c: $6d
    nop                                           ; $536d: $00
    nop                                           ; $536e: $00
    dec e                                         ; $536f: $1d
    ret nz                                        ; $5370: $c0

    ld [bc], a                                    ; $5371: $02
    add b                                         ; $5372: $80
    db $10                                        ; $5373: $10
    dec b                                         ; $5374: $05
    ld [hl+], a                                   ; $5375: $22
    inc c                                         ; $5376: $0c
    sub h                                         ; $5377: $94
    rrca                                          ; $5378: $0f
    or a                                          ; $5379: $b7
    ld c, a                                       ; $537a: $4f
    sub a                                         ; $537b: $97
    nop                                           ; $537c: $00
    rst $28                                       ; $537d: $ef
    ld a, [$6745]                                 ; $537e: $fa $45 $67
    ld hl, sp-$44                                 ; $5381: $f8 $bc
    ld b, b                                       ; $5383: $40
    rlca                                          ; $5384: $07
    nop                                           ; $5385: $00
    ld hl, sp-$7d                                 ; $5386: $f8 $83
    inc b                                         ; $5388: $04
    ldh [rTAC], a                                 ; $5389: $e0 $07
    add hl, sp                                    ; $538b: $39
    add $fa                                       ; $538c: $c6 $fa
    nop                                           ; $538e: $00
    rst $38                                       ; $538f: $ff
    ld [bc], a                                    ; $5390: $02
    rst $38                                       ; $5391: $ff
    ld b, e                                       ; $5392: $43
    add a                                         ; $5393: $87
    sub d                                         ; $5394: $92

jr_092_5395:
    push hl                                       ; $5395: $e5
    rst $20                                       ; $5396: $e7
    ld h, b                                       ; $5397: $60
    ld hl, sp-$10                                 ; $5398: $f8 $f0
    jr c, jr_092_534c                             ; $539a: $38 $b0

    ld [$1feb], sp                                ; $539c: $08 $eb $1f
    xor d                                         ; $539f: $aa
    ld d, l                                       ; $53a0: $55
    ld a, [bc]                                    ; $53a1: $0a
    nop                                           ; $53a2: $00
    push af                                       ; $53a3: $f5
    add d                                         ; $53a4: $82
    ld bc, $02d1                                  ; $53a5: $01 $d1 $02
    add hl, sp                                    ; $53a8: $39
    jp $00e3                                      ; $53a9: $c3 $e3 $00


    db $fd                                        ; $53ac: $fd
    cp l                                          ; $53ad: $bd
    ld b, d                                       ; $53ae: $42
    ld [hl], l                                    ; $53af: $75
    ld a, [bc]                                    ; $53b0: $0a
    ld l, $01                                     ; $53b1: $2e $01
    pop de                                        ; $53b3: $d1
    ld bc, $1b00                                  ; $53b4: $01 $00 $1b
    ldh [$aa], a                                  ; $53b7: $e0 $aa
    ld d, l                                       ; $53b9: $55
    ret nz                                        ; $53ba: $c0

    ccf                                           ; $53bb: $3f
    db $10                                        ; $53bc: $10
    inc hl                                        ; $53bd: $23
    nop                                           ; $53be: $00
    pop de                                        ; $53bf: $d1
    add c                                         ; $53c0: $81
    ld a, [hl]                                    ; $53c1: $7e
    or d                                          ; $53c2: $b2
    ld c, l                                       ; $53c3: $4d
    sub a                                         ; $53c4: $97
    add sp, $57                                   ; $53c5: $e8 $57
    ld d, c                                       ; $53c7: $51
    add sp, $20                                   ; $53c8: $e8 $20
    ld b, $cb                                     ; $53ca: $06 $cb
    sub b                                         ; $53cc: $90
    ld [de], a                                    ; $53cd: $12
    adc a                                         ; $53ce: $8f
    cp h                                          ; $53cf: $bc
    ld b, e                                       ; $53d0: $43
    ldh a, [rNR10]                                ; $53d1: $f0 $10
    add $20                                       ; $53d3: $c6 $20
    ld b, $f0                                     ; $53d5: $06 $f0
    db $10                                        ; $53d7: $10
    adc d                                         ; $53d8: $8a
    ld e, [hl]                                    ; $53d9: $5e
    and c                                         ; $53da: $a1
    ldh a, [$08]                                  ; $53db: $f0 $08
    and b                                         ; $53dd: $a0
    ld de, $200d                                  ; $53de: $11 $0d $20
    ld bc, $a03e                                  ; $53e1: $01 $3e $a0
    add hl, hl                                    ; $53e4: $29
    ld d, l                                       ; $53e5: $55
    rst $38                                       ; $53e6: $ff
    add b                                         ; $53e7: $80
    rst $38                                       ; $53e8: $ff
    ld a, [hl+]                                   ; $53e9: $2a
    ld h, b                                       ; $53ea: $60
    push de                                       ; $53eb: $d5
    nop                                           ; $53ec: $00
    dec de                                        ; $53ed: $1b
    or b                                          ; $53ee: $b0
    rrca                                          ; $53ef: $0f
    ld d, e                                       ; $53f0: $53
    db $fc                                        ; $53f1: $fc
    ld bc, $a4fe                                  ; $53f2: $01 $fe $a4
    db $10                                        ; $53f5: $10
    ld e, a                                       ; $53f6: $5f
    ld d, d                                       ; $53f7: $52
    xor a                                         ; $53f8: $af
    add b                                         ; $53f9: $80
    dec hl                                        ; $53fa: $2b
    inc [hl]                                      ; $53fb: $34
    rrca                                          ; $53fc: $0f
    ld a, [hl]                                    ; $53fd: $7e
    rlca                                          ; $53fe: $07
    nop                                           ; $53ff: $00
    sbc e                                         ; $5400: $9b
    ld [hl], a                                    ; $5401: $77
    dec hl                                        ; $5402: $2b
    sbc $d5                                       ; $5403: $de $d5
    dec hl                                        ; $5405: $2b
    ld l, e                                       ; $5406: $6b
    sub h                                         ; $5407: $94
    nop                                           ; $5408: $00
    sub $01                                       ; $5409: $d6 $01
    or l                                          ; $540b: $b5
    ld a, [bc]                                    ; $540c: $0a
    or c                                          ; $540d: $b1
    ld b, e                                       ; $540e: $43
    dec l                                         ; $540f: $2d
    db $d3                                        ; $5410: $d3
    nop                                           ; $5411: $00
    jp nz, $fffd                                  ; $5412: $c2 $fd $ff

    add b                                         ; $5415: $80
    ld h, h                                       ; $5416: $64
    ld a, [$bd5a]                                 ; $5417: $fa $5a $bd
    nop                                           ; $541a: $00
    xor d                                         ; $541b: $aa
    ld e, a                                       ; $541c: $5f
    ld [de], a                                    ; $541d: $12
    db $fd                                        ; $541e: $fd
    dec hl                                        ; $541f: $2b
    call nz, $ffc2                                ; $5420: $c4 $c2 $ff
    nop                                           ; $5423: $00
    db $fd                                        ; $5424: $fd
    inc bc                                        ; $5425: $03
    ld d, [hl]                                    ; $5426: $56
    xor c                                         ; $5427: $a9
    adc l                                         ; $5428: $8d
    ld [bc], a                                    ; $5429: $02
    add $01                                       ; $542a: $c6 $01
    nop                                           ; $542c: $00
    ld d, l                                       ; $542d: $55
    xor d                                         ; $542e: $aa

Jump_092_542f:
    or h                                          ; $542f: $b4
    ld b, b                                       ; $5430: $40
    ld e, a                                       ; $5431: $5f
    and c                                         ; $5432: $a1
    cp a                                          ; $5433: $bf
    ld b, b                                       ; $5434: $40
    nop                                           ; $5435: $00
    ld d, a                                       ; $5436: $57
    xor b                                         ; $5437: $a8
    inc a                                         ; $5438: $3c
    jp $a659                                      ; $5439: $c3 $59 $a6


jr_092_543c:
    xor [hl]                                      ; $543c: $ae
    ld d, c                                       ; $543d: $51
    ld [bc], a                                    ; $543e: $02
    ld d, h                                       ; $543f: $54
    db $eb                                        ; $5440: $eb
    xor c                                         ; $5441: $a9
    cp $51                                        ; $5442: $fe $51
    xor [hl]                                      ; $5444: $ae
    ld a, h                                       ; $5445: $7c
    ld [$009d], sp                                ; $5446: $08 $9d $00
    ld h, d                                       ; $5449: $62
    add sp, $17                                   ; $544a: $e8 $17
    inc d                                         ; $544c: $14
    ldh [$a7], a                                  ; $544d: $e0 $a7
    ld a, b                                       ; $544f: $78
    add hl, sp                                    ; $5450: $39
    nop                                           ; $5451: $00
    cp $7f                                        ; $5452: $fe $7f
    rst $38                                       ; $5454: $ff
    ret nc                                        ; $5455: $d0

    cpl                                           ; $5456: $2f
    ld a, [hl-]                                   ; $5457: $3a
    call nz, Call_000_21ac                        ; $5458: $c4 $ac $21
    ld d, a                                       ; $545b: $57
    ld [hl], a                                    ; $545c: $77
    and b                                         ; $545d: $a0
    nop                                           ; $545e: $00
    ld d, l                                       ; $545f: $55
    xor d                                         ; $5460: $aa
    sub h                                         ; $5461: $94

jr_092_5462:
    ld a, a                                       ; $5462: $7f
    ld [hl], b                                    ; $5463: $70
    add hl, de                                    ; $5464: $19
    nop                                           ; $5465: $00
    ld [hl], h                                    ; $5466: $74
    cp a                                          ; $5467: $bf
    ccf                                           ; $5468: $3f
    jp nz, $2f14                                  ; $5469: $c2 $14 $2f

    nop                                           ; $546c: $00
    ccf                                           ; $546d: $3f
    jr nz, jr_092_543c                            ; $546e: $20 $cc

    jr nc, jr_092_5462                            ; $5470: $30 $f0

    ld c, a                                       ; $5472: $4f
    ld d, l                                       ; $5473: $55
    xor d                                         ; $5474: $aa
    ld a, [de]                                    ; $5475: $1a
    dec b                                         ; $5476: $05
    sub $00                                       ; $5477: $d6 $00
    ld hl, sp+$11                                 ; $5479: $f8 $11
    cp $1f                                        ; $547b: $fe $1f
    ccf                                           ; $547d: $3f
    sub h                                         ; $547e: $94
    dec hl                                        ; $547f: $2b
    dec a                                         ; $5480: $3d
    nop                                           ; $5481: $00
    jp nz, $a15e                                  ; $5482: $c2 $5e $a1

    ld [hl], l                                    ; $5485: $75
    adc d                                         ; $5486: $8a
    adc c                                         ; $5487: $89
    ld a, a                                       ; $5488: $7f
    add c                                         ; $5489: $81
    nop                                           ; $548a: $00
    ld e, $c4                                     ; $548b: $1e $c4
    rra                                           ; $548d: $1f
    ld a, [de]                                    ; $548e: $1a
    rst $28                                       ; $548f: $ef
    ld [$1955], a                                 ; $5490: $ea $55 $19
    ld b, b                                       ; $5493: $40
    and $e0                                       ; $5494: $e6 $e0
    dec de                                        ; $5496: $1b
    and c                                         ; $5497: $a1
    ld e, [hl]                                    ; $5498: $5e
    ret nc                                        ; $5499: $d0

    ld hl, $71aa                                  ; $549a: $21 $aa $71
    nop                                           ; $549d: $00
    db $f4                                        ; $549e: $f4
    add hl, sp                                    ; $549f: $39
    ld hl, sp+$3f                                 ; $54a0: $f8 $3f
    nop                                           ; $54a2: $00
    rst $38                                       ; $54a3: $ff
    xor b                                         ; $54a4: $a8
    ret nz                                        ; $54a5: $c0

    nop                                           ; $54a6: $00
    rst $08                                       ; $54a7: $cf
    ldh a, [$57]                                  ; $54a8: $f0 $57
    xor b                                         ; $54aa: $a8
    inc bc                                        ; $54ab: $03
    db $fc                                        ; $54ac: $fc
    ld b, b                                       ; $54ad: $40
    add c                                         ; $54ae: $81
    db $10                                        ; $54af: $10
    or b                                          ; $54b0: $b0
    pop bc                                        ; $54b1: $c1
    ldh [$fe], a                                  ; $54b2: $e0 $fe
    inc b                                         ; $54b4: $04
    jr @+$63                                      ; $54b5: $18 $61

    ld [hl-], a                                   ; $54b7: $32
    ld a, l                                       ; $54b8: $7d
    nop                                           ; $54b9: $00
    or l                                          ; $54ba: $b5
    ld a, d                                       ; $54bb: $7a
    ld c, d                                       ; $54bc: $4a
    cp l                                          ; $54bd: $bd
    pop bc                                        ; $54be: $c1
    ld a, $61                                     ; $54bf: $3e $61
    add b                                         ; $54c1: $80
    nop                                           ; $54c2: $00
    cp b                                          ; $54c3: $b8
    pop bc                                        ; $54c4: $c1
    call nc, $f1e9                                ; $54c5: $d4 $e9 $f1
    cp $ad                                        ; $54c8: $fe $ad
    ld d, d                                       ; $54ca: $52
    nop                                           ; $54cb: $00
    ld l, [hl]                                    ; $54cc: $6e
    sub c                                         ; $54cd: $91
    sub l                                         ; $54ce: $95

jr_092_54cf:
    ld l, d                                       ; $54cf: $6a
    ld e, e                                       ; $54d0: $5b
    and h                                         ; $54d1: $a4
    xor b                                         ; $54d2: $a8
    ld d, a                                       ; $54d3: $57
    ld bc, $3ac5                                  ; $54d4: $01 $c5 $3a
    cp $01                                        ; $54d7: $fe $01
    push de                                       ; $54d9: $d5
    ld a, [hl+]                                   ; $54da: $2a
    dec b                                         ; $54db: $05
    ld e, d                                       ; $54dc: $5a
    rlca                                          ; $54dd: $07
    nop                                           ; $54de: $00
    ret nz                                        ; $54df: $c0

    ccf                                           ; $54e0: $3f
    cpl                                           ; $54e1: $2f
    ret nc                                        ; $54e2: $d0

    ld [hl], h                                    ; $54e3: $74
    adc e                                         ; $54e4: $8b
    ld hl, $00de                                  ; $54e5: $21 $de $00
    cp l                                          ; $54e8: $bd
    ld b, d                                       ; $54e9: $42
    rra                                           ; $54ea: $1f
    ldh [rBCPD], a                                ; $54eb: $e0 $69
    sub [hl]                                      ; $54ed: $96
    or c                                          ; $54ee: $b1
    ld c, [hl]                                    ; $54ef: $4e
    ld [bc], a                                    ; $54f0: $02
    ld c, e                                       ; $54f1: $4b
    or h                                          ; $54f2: $b4
    db $fc                                        ; $54f3: $fc
    inc bc                                        ; $54f4: $03
    and d                                         ; $54f5: $a2
    ld e, l                                       ; $54f6: $5d
    ldh [rNR50], a                                ; $54f7: $e0 $24
    ld a, [c]                                     ; $54f9: $f2
    jr nz, jr_092_54cf                            ; $54fa: $20 $d3

    inc l                                         ; $54fc: $2c
    ld d, b                                       ; $54fd: $50
    ld d, e                                       ; $54fe: $53
    ld c, e                                       ; $54ff: $4b

Call_092_5500:
    sub b                                         ; $5500: $90
    jr jr_092_5531                                ; $5501: $18 $2e

    inc de                                        ; $5503: $13
    ld b, b                                       ; $5504: $40
    rst $38                                       ; $5505: $ff
    ld bc, $aa60                                  ; $5506: $01 $60 $aa
    rst $10                                       ; $5509: $d7
    push bc                                       ; $550a: $c5
    rst $38                                       ; $550b: $ff
    ld a, e                                       ; $550c: $7b
    cp a                                          ; $550d: $bf

jr_092_550e:
    nop                                           ; $550e: $00
    and l                                         ; $550f: $a5
    ld a, a                                       ; $5510: $7f
    ld e, a                                       ; $5511: $5f
    db $e3                                        ; $5512: $e3
    di                                            ; $5513: $f3
    rst $00                                       ; $5514: $c7
    xor d                                         ; $5515: $aa
    rst $00                                       ; $5516: $c7
    jr nz, jr_092_550e                            ; $5517: $20 $f5

    adc a                                         ; $5519: $8f
    jr nz, jr_092_5524                            ; $551a: $20 $08

    pop af                                        ; $551c: $f1
    rst $38                                       ; $551d: $ff
    push af                                       ; $551e: $f5
    ei                                            ; $551f: $fb
    ld a, c                                       ; $5520: $79
    nop                                           ; $5521: $00
    rst $38                                       ; $5522: $ff
    rst $18                                       ; $5523: $df

jr_092_5524:
    ccf                                           ; $5524: $3f
    rst $28                                       ; $5525: $ef
    rra                                           ; $5526: $1f
    ld c, a                                       ; $5527: $4f
    cp a                                          ; $5528: $bf
    reti                                          ; $5529: $d9


    nop                                           ; $552a: $00
    rst $38                                       ; $552b: $ff
    ld l, [hl]                                    ; $552c: $6e
    pop af                                        ; $552d: $f1
    pop af                                        ; $552e: $f1
    ret nz                                        ; $552f: $c0

    xor e                                         ; $5530: $ab

jr_092_5531:
    ret nz                                        ; $5531: $c0

    db $dd                                        ; $5532: $dd
    nop                                           ; $5533: $00
    add b                                         ; $5534: $80
    rst $30                                       ; $5535: $f7
    add b                                         ; $5536: $80
    db $fd                                        ; $5537: $fd
    add d                                         ; $5538: $82
    xor d                                         ; $5539: $aa
    push de                                       ; $553a: $d5
    push af                                       ; $553b: $f5
    nop                                           ; $553c: $00
    ei                                            ; $553d: $fb
    xor a                                         ; $553e: $af
    rst $30                                       ; $553f: $f7
    ld e, l                                       ; $5540: $5d
    rst $20                                       ; $5541: $e7
    xor $45                                       ; $5542: $ee $45
    rst $10                                       ; $5544: $d7
    nop                                           ; $5545: $00
    ld c, h                                       ; $5546: $4c
    ld l, [hl]                                    ; $5547: $6e
    push de                                       ; $5548: $d5
    ld d, h                                       ; $5549: $54
    rst $28                                       ; $554a: $ef
    ld c, a                                       ; $554b: $4f
    rst $38                                       ; $554c: $ff
    sbc c                                         ; $554d: $99
    nop                                           ; $554e: $00
    ld a, a                                       ; $554f: $7f
    ld a, [bc]                                    ; $5550: $0a
    db $fd                                        ; $5551: $fd
    ld e, b                                       ; $5552: $58
    rst $38                                       ; $5553: $ff
    xor b                                         ; $5554: $a8
    rst $38                                       ; $5555: $ff
    ld a, a                                       ; $5556: $7f
    nop                                           ; $5557: $00
    rst $38                                       ; $5558: $ff
    rst $30                                       ; $5559: $f7
    ld hl, sp-$14                                 ; $555a: $f8 $ec
    ldh a, [$e6]                                  ; $555c: $f0 $e6
    ld hl, sp+$54                                 ; $555e: $f8 $54
    nop                                           ; $5560: $00
    db $eb                                        ; $5561: $eb
    ret nz                                        ; $5562: $c0

    ld a, a                                       ; $5563: $7f
    jp Jump_000_2e7f                              ; $5564: $c3 $7f $2e


    rst $38                                       ; $5567: $ff
    jp c, $fc00                                   ; $5568: $da $00 $fc

    or h                                          ; $556b: $b4
    ld hl, sp-$18                                 ; $556c: $f8 $e8
    ldh a, [$ed]                                  ; $556e: $f0 $ed
    ldh a, [$75]                                  ; $5570: $f0 $75
    nop                                           ; $5572: $00
    ei                                            ; $5573: $fb
    xor a                                         ; $5574: $af
    pop af                                        ; $5575: $f1
    rst $38                                       ; $5576: $ff
    pop hl                                        ; $5577: $e1
    ld [hl], l                                    ; $5578: $75
    db $eb                                        ; $5579: $eb
    jp hl                                         ; $557a: $e9


    nop                                           ; $557b: $00
    scf                                           ; $557c: $37
    ld d, c                                       ; $557d: $51
    ccf                                           ; $557e: $3f
    ei                                            ; $557f: $fb
    rra                                           ; $5580: $1f
    ld l, l                                       ; $5581: $6d
    rra                                           ; $5582: $1f
    inc de                                        ; $5583: $13
    nop                                           ; $5584: $00
    db $fc                                        ; $5585: $fc
    ld l, l                                       ; $5586: $6d
    sbc [hl]                                      ; $5587: $9e
    or [hl]                                       ; $5588: $b6
    ld c, a                                       ; $5589: $4f
    dec bc                                        ; $558a: $0b
    rst $30                                       ; $558b: $f7
    inc bc                                        ; $558c: $03
    nop                                           ; $558d: $00
    rst $38                                       ; $558e: $ff
    ld d, a                                       ; $558f: $57
    rst $38                                       ; $5590: $ff
    ld a, [$6fff]                                 ; $5591: $fa $ff $6f
    sbc a                                         ; $5594: $9f
    ld e, a                                       ; $5595: $5f
    nop                                           ; $5596: $00
    rst $38                                       ; $5597: $ff
    xor a                                         ; $5598: $af
    rst $38                                       ; $5599: $ff
    sbc $ff                                       ; $559a: $de $ff
    db $ed                                        ; $559c: $ed
    cp $14                                        ; $559d: $fe $14
    nop                                           ; $559f: $00
    rst $38                                       ; $55a0: $ff
    rst $30                                       ; $55a1: $f7
    rrca                                          ; $55a2: $0f
    dec de                                        ; $55a3: $1b
    rlca                                          ; $55a4: $07
    ld c, a                                       ; $55a5: $4f
    inc bc                                        ; $55a6: $03
    rst $28                                       ; $55a7: $ef
    nop                                           ; $55a8: $00
    rst $38                                       ; $55a9: $ff
    push de                                       ; $55aa: $d5
    rst $38                                       ; $55ab: $ff
    rst $28                                       ; $55ac: $ef
    rst $38                                       ; $55ad: $ff
    rst $38                                       ; $55ae: $ff
    ld a, a                                       ; $55af: $7f
    ld a, h                                       ; $55b0: $7c
    nop                                           ; $55b1: $00
    rst $38                                       ; $55b2: $ff
    di                                            ; $55b3: $f3
    db $fc                                        ; $55b4: $fc
    db $eb                                        ; $55b5: $eb
    db $f4                                        ; $55b6: $f4
    push hl                                       ; $55b7: $e5
    ld a, [$00bf]                                 ; $55b8: $fa $bf $00
    inc bc                                        ; $55bb: $03
    ld a, [$d607]                                 ; $55bc: $fa $07 $d6
    dec hl                                        ; $55bf: $2b
    xor d                                         ; $55c0: $aa
    ld d, a                                       ; $55c1: $57
    ld b, a                                       ; $55c2: $47
    nop                                           ; $55c3: $00
    cp a                                          ; $55c4: $bf
    xor l                                         ; $55c5: $ad
    cp $f7                                        ; $55c6: $fe $f7
    db $fc                                        ; $55c8: $fc
    dec c                                         ; $55c9: $0d
    cp $f0                                        ; $55ca: $fe $f0
    ld [$28ff], sp                                ; $55cc: $08 $ff $28
    rst $38                                       ; $55cf: $ff
    dec [hl]                                      ; $55d0: $35
    ld a, [hl-]                                   ; $55d1: $3a
    nop                                           ; $55d2: $00
    rra                                           ; $55d3: $1f
    rst $38                                       ; $55d4: $ff
    cpl                                           ; $55d5: $2f
    nop                                           ; $55d6: $00
    rra                                           ; $55d7: $1f
    sub a                                         ; $55d8: $97
    rrca                                          ; $55d9: $0f
    ld l, e                                       ; $55da: $6b
    rlca                                          ; $55db: $07
    sbc d                                         ; $55dc: $9a
    rlca                                          ; $55dd: $07
    ld c, l                                       ; $55de: $4d
    nop                                           ; $55df: $00
    inc bc                                        ; $55e0: $03
    xor e                                         ; $55e1: $ab
    ld bc, $03fd                                  ; $55e2: $01 $fd $03
    cp c                                          ; $55e5: $b9
    ld b, a                                       ; $55e6: $47
    ld d, e                                       ; $55e7: $53
    nop                                           ; $55e8: $00
    xor a                                         ; $55e9: $af
    add a                                         ; $55ea: $87
    ld a, [hl]                                    ; $55eb: $7e
    ld a, h                                       ; $55ec: $7c
    rst $38                                       ; $55ed: $ff
    call nc, Call_000_290f                        ; $55ee: $d4 $0f $29
    ld [$a8de], sp                                ; $55f1: $08 $de $a8
    rst $38                                       ; $55f4: $ff
    ldh a, [$5c]                                  ; $55f5: $f0 $5c
    nop                                           ; $55f7: $00
    dec l                                         ; $55f8: $2d
    rst $18                                       ; $55f9: $df
    ld d, [hl]                                    ; $55fa: $56
    nop                                           ; $55fb: $00
    xor a                                         ; $55fc: $af
    daa                                           ; $55fd: $27
    rst $18                                       ; $55fe: $df
    ld l, a                                       ; $55ff: $6f

Call_092_5600:
    ldh a, [$be]                                  ; $5600: $f0 $be
    ld [hl], c                                    ; $5602: $71
    push af                                       ; $5603: $f5
    nop                                           ; $5604: $00
    ld a, [hl-]                                   ; $5605: $3a
    ld hl, sp+$3f                                 ; $5606: $f8 $3f
    cp [hl]                                       ; $5608: $be
    ld a, a                                       ; $5609: $7f
    daa                                           ; $560a: $27
    rst $38                                       ; $560b: $ff
    ld e, l                                       ; $560c: $5d
    nop                                           ; $560d: $00
    db $e3                                        ; $560e: $e3
    and $c1                                       ; $560f: $e6 $c1
    ei                                            ; $5611: $fb
    dec c                                         ; $5612: $0d
    xor [hl]                                      ; $5613: $ae
    ld e, c                                       ; $5614: $59
    ld c, d                                       ; $5615: $4a
    nop                                           ; $5616: $00
    cp l                                          ; $5617: $bd
    inc e                                         ; $5618: $1c
    rst $38                                       ; $5619: $ff
    ld h, l                                       ; $561a: $65
    rst $38                                       ; $561b: $ff
    sbc e                                         ; $561c: $9b
    rst $20                                       ; $561d: $e7
    ld a, l                                       ; $561e: $7d
    nop                                           ; $561f: $00
    jp $c1fe                                      ; $5620: $c3 $fe $c1


    or d                                          ; $5623: $b2
    rst $08                                       ; $5624: $cf
    ld b, c                                       ; $5625: $41
    add e                                         ; $5626: $83
    ld l, d                                       ; $5627: $6a
    nop                                           ; $5628: $00
    add c                                         ; $5629: $81
    or a                                          ; $562a: $b7
    ret nz                                        ; $562b: $c0

    sbc d                                         ; $562c: $9a
    pop hl                                        ; $562d: $e1
    call z, $69f3                                 ; $562e: $cc $f3 $69
    nop                                           ; $5631: $00
    rst $38                                       ; $5632: $ff
    or a                                          ; $5633: $b7
    rst $38                                       ; $5634: $ff
    ld c, $ff                                     ; $5635: $0e $ff
    sbc l                                         ; $5637: $9d
    cp $f9                                        ; $5638: $fe $f9
    nop                                           ; $563a: $00
    cp $fd                                        ; $563b: $fe $fd
    cp $d8                                        ; $563d: $fe $d8
    rst $38                                       ; $563f: $ff
    xor l                                         ; $5640: $ad
    cp $5a                                        ; $5641: $fe $5a
    ld [$fdff], sp                                ; $5643: $08 $ff $fd
    rst $38                                       ; $5646: $ff
    ei                                            ; $5647: $fb
    sub b                                         ; $5648: $90
    nop                                           ; $5649: $00
    xor e                                         ; $564a: $ab
    rst $38                                       ; $564b: $ff
    rst $18                                       ; $564c: $df
    ld [hl+], a                                   ; $564d: $22
    rst $38                                       ; $564e: $ff
    cp $18                                        ; $564f: $fe $18
    nop                                           ; $5651: $00
    inc e                                         ; $5652: $1c
    rst $38                                       ; $5653: $ff
    dec a                                         ; $5654: $3d
    ccf                                           ; $5655: $3f
    ld de, $00d7                                  ; $5656: $11 $d7 $00
    rst $28                                       ; $5659: $ef
    set 6, a                                      ; $565a: $cb $f7
    ld h, e                                       ; $565c: $63
    rst $38                                       ; $565d: $ff
    ld a, a                                       ; $565e: $7f
    ccf                                           ; $565f: $3f
    cp a                                          ; $5660: $bf
    inc bc                                        ; $5661: $03
    rra                                           ; $5662: $1f
    ld e, a                                       ; $5663: $5f
    cp a                                          ; $5664: $bf
    cp [hl]                                       ; $5665: $be
    rst $38                                       ; $5666: $ff
    ld e, l                                       ; $5667: $5d
    or b                                          ; $5668: $b0
    ld [$0072], sp                                ; $5669: $08 $72 $00
    ld bc, $ead5                                  ; $566c: $01 $d5 $ea
    cp [hl]                                       ; $566f: $be
    pop bc                                        ; $5670: $c1
    dec c                                         ; $5671: $0d
    ld a, [c]                                     ; $5672: $f2
    cp $61                                        ; $5673: $fe $61
    ld bc, $7f10                                  ; $5675: $01 $10 $7f
    rst $38                                       ; $5678: $ff
    ld a, [hl]                                    ; $5679: $7e
    ld h, b                                       ; $567a: $60
    nop                                           ; $567b: $00
    ld a, [c]                                     ; $567c: $f2
    rst $38                                       ; $567d: $ff
    ld [$08fd], a                                 ; $567e: $ea $fd $08
    db $fc                                        ; $5681: $fc
    ld sp, hl                                     ; $5682: $f9
    ld h, a                                       ; $5683: $67
    sbc a                                         ; $5684: $9f
    ld d, e                                       ; $5685: $53
    add hl, bc                                    ; $5686: $09
    cp a                                          ; $5687: $bf
    rst $38                                       ; $5688: $ff
    ld h, a                                       ; $5689: $67
    nop                                           ; $568a: $00
    rst $38                                       ; $568b: $ff
    ld c, a                                       ; $568c: $4f
    rst $38                                       ; $568d: $ff
    ld e, [hl]                                    ; $568e: $5e
    cp a                                          ; $568f: $bf
    ld a, $9f                                     ; $5690: $3e $9f
    sub d                                         ; $5692: $92
    ld [bc], a                                    ; $5693: $02
    db $ed                                        ; $5694: $ed
    inc b                                         ; $5695: $04
    ei                                            ; $5696: $fb
    add d                                         ; $5697: $82
    db $fd                                        ; $5698: $fd
    ld b, b                                       ; $5699: $40
    ld [hl-], a                                   ; $569a: $32
    ld bc, $00d5                                  ; $569b: $01 $d5 $00
    rst $38                                       ; $569e: $ff
    ld [$f7ff], a                                 ; $569f: $ea $ff $f7
    ld a, a                                       ; $56a2: $7f
    ei                                            ; $56a3: $fb
    db $fc                                        ; $56a4: $fc
    di                                            ; $56a5: $f3
    nop                                           ; $56a6: $00
    cp $e8                                        ; $56a7: $fe $e8
    cp $e2                                        ; $56a9: $fe $e2
    db $fd                                        ; $56ab: $fd
    ld [hl], l                                    ; $56ac: $75
    ld a, [$006b]                                 ; $56ad: $fa $6b $00
    db $fc                                        ; $56b0: $fc
    ld a, [hl]                                    ; $56b1: $7e
    ld hl, sp-$06                                 ; $56b2: $f8 $fa
    db $fc                                        ; $56b4: $fc
    ld e, [hl]                                    ; $56b5: $5e
    cp a                                          ; $56b6: $bf
    adc $00                                       ; $56b7: $ce $00
    rst $38                                       ; $56b9: $ff
    sub a                                         ; $56ba: $97
    ld a, a                                       ; $56bb: $7f
    ld b, a                                       ; $56bc: $47
    cp a                                          ; $56bd: $bf
    xor a                                         ; $56be: $af
    ld e, a                                       ; $56bf: $5f
    rst $10                                       ; $56c0: $d7
    nop                                           ; $56c1: $00
    ccf                                           ; $56c2: $3f
    ld a, [hl]                                    ; $56c3: $7e
    rra                                           ; $56c4: $1f
    ld e, [hl]                                    ; $56c5: $5e
    ccf                                           ; $56c6: $3f
    rst $38                                       ; $56c7: $ff
    ccf                                           ; $56c8: $3f
    db $fd                                        ; $56c9: $fd
    nop                                           ; $56ca: $00
    ld a, $da                                     ; $56cb: $3e $da
    inc a                                         ; $56cd: $3c
    cp a                                          ; $56ce: $bf
    ld a, b                                       ; $56cf: $78
    ld d, a                                       ; $56d0: $57
    ld hl, sp-$45                                 ; $56d1: $f8 $bb
    nop                                           ; $56d3: $00
    db $f4                                        ; $56d4: $f4
    ld a, [hl]                                    ; $56d5: $7e
    pop af                                        ; $56d6: $f1
    sub l                                         ; $56d7: $95
    ld a, [$07ce]                                 ; $56d8: $fa $ce $07
    ld b, a                                       ; $56db: $47
    nop                                           ; $56dc: $00
    inc bc                                        ; $56dd: $03
    xor l                                         ; $56de: $ad
    inc bc                                        ; $56df: $03
    rst $30                                       ; $56e0: $f7
    ld bc, $01ff                                  ; $56e1: $01 $ff $01
    ld e, l                                       ; $56e4: $5d
    nop                                           ; $56e5: $00
    and e                                         ; $56e6: $a3
    add hl, hl                                    ; $56e7: $29
    rst $10                                       ; $56e8: $d7
    ld bc, $f5ff                                  ; $56e9: $01 $ff $f5
    cp $f9                                        ; $56ec: $fe $f9
    nop                                           ; $56ee: $00
    rst $38                                       ; $56ef: $ff
    cp $f9                                        ; $56f0: $fe $f9
    db $fd                                        ; $56f2: $fd
    rst $38                                       ; $56f3: $ff
    ld a, [hl+]                                   ; $56f4: $2a
    rst $38                                       ; $56f5: $ff
    nop                                           ; $56f6: $00
    nop                                           ; $56f7: $00
    rst $38                                       ; $56f8: $ff
    ld a, a                                       ; $56f9: $7f
    add b                                         ; $56fa: $80
    add b                                         ; $56fb: $80
    nop                                           ; $56fc: $00
    xor [hl]                                      ; $56fd: $ae
    ld a, a                                       ; $56fe: $7f
    sbc a                                         ; $56ff: $9f
    ld [$7fff], sp                                ; $5700: $08 $ff $7f
    sbc a                                         ; $5703: $9f
    cp a                                          ; $5704: $bf
    or h                                          ; $5705: $b4
    nop                                           ; $5706: $00
    ld bc, $feff                                  ; $5707: $01 $ff $fe
    nop                                           ; $570a: $00
    ld bc, $0001                                  ; $570b: $01 $01 $00
    ld [de], a                                    ; $570e: $12
    db $fd                                        ; $570f: $fd
    sbc c                                         ; $5710: $99
    cp $58                                        ; $5711: $fe $58
    nop                                           ; $5713: $00
    rst $38                                       ; $5714: $ff
    db $fd                                        ; $5715: $fd
    ld a, a                                       ; $5716: $7f
    and [hl]                                      ; $5717: $a6
    ld a, a                                       ; $5718: $7f
    and e                                         ; $5719: $a3
    ld a, a                                       ; $571a: $7f
    inc sp                                        ; $571b: $33
    nop                                           ; $571c: $00
    rst $38                                       ; $571d: $ff
    ld h, h                                       ; $571e: $64
    rst $38                                       ; $571f: $ff
    adc l                                         ; $5720: $8d
    rst $38                                       ; $5721: $ff
    rst $20                                       ; $5722: $e7
    rst $38                                       ; $5723: $ff
    jp c, $e700                                   ; $5724: $da $00 $e7

    and l                                         ; $5727: $a5
    jp $c39f                                      ; $5728: $c3 $9f $c3


    xor e                                         ; $572b: $ab
    rst $00                                       ; $572c: $c7
    adc $02                                       ; $572d: $ce $02
    rst $38                                       ; $572f: $ff
    sub l                                         ; $5730: $95
    rst $38                                       ; $5731: $ff
    adc $bf                                       ; $5732: $ce $bf
    adc e                                         ; $5734: $8b
    ldh a, [rSB]                                  ; $5735: $f0 $01
    add $00                                       ; $5737: $c6 $00
    ld sp, hl                                     ; $5739: $f9
    xor b                                         ; $573a: $a8
    rst $30                                       ; $573b: $f7
    pop hl                                        ; $573c: $e1
    rst $38                                       ; $573d: $ff
    cp e                                          ; $573e: $bb
    rst $38                                       ; $573f: $ff
    ld d, [hl]                                    ; $5740: $56
    nop                                           ; $5741: $00
    cp a                                          ; $5742: $bf
    dec hl                                        ; $5743: $2b
    rst $18                                       ; $5744: $df
    add l                                         ; $5745: $85
    rst $38                                       ; $5746: $ff
    db $d3                                        ; $5747: $d3
    rst $20                                       ; $5748: $e7
    xor l                                         ; $5749: $ad
    nop                                           ; $574a: $00
    jp $8f73                                      ; $574b: $c3 $73 $8f


    xor $ff                                       ; $574e: $ee $ff
    or l                                          ; $5750: $b5
    rst $08                                       ; $5751: $cf
    ld b, a                                       ; $5752: $47
    ld [$f4bf], sp                                ; $5753: $08 $bf $f4
    ei                                            ; $5756: $fb
    ld e, c                                       ; $5757: $59
    cp [hl]                                       ; $5758: $be
    nop                                           ; $5759: $00
    db $e3                                        ; $575a: $e3
    rst $38                                       ; $575b: $ff
    rlc b                                         ; $575c: $cb $00
    rst $20                                       ; $575e: $e7
    ld d, l                                       ; $575f: $55
    db $e3                                        ; $5760: $e3
    db $ed                                        ; $5761: $ed
    di                                            ; $5762: $f3
    or c                                          ; $5763: $b1
    rst $38                                       ; $5764: $ff
    add l                                         ; $5765: $85
    nop                                           ; $5766: $00
    ret nz                                        ; $5767: $c0

    ld [$f781], a                                 ; $5768: $ea $81 $f7
    add b                                         ; $576b: $80
    cp [hl]                                       ; $576c: $be
    pop bc                                        ; $576d: $c1
    sub h                                         ; $576e: $94
    nop                                           ; $576f: $00
    db $eb                                        ; $5770: $eb
    jp z, $c4f5                                   ; $5771: $ca $f5 $c4

    ei                                            ; $5774: $fb
    pop hl                                        ; $5775: $e1
    rst $38                                       ; $5776: $ff
    push af                                       ; $5777: $f5
    nop                                           ; $5778: $00
    jp z, $f54a                                   ; $5779: $ca $4a $f5

    ld b, h                                       ; $577c: $44
    ei                                            ; $577d: $fb
    ld h, c                                       ; $577e: $61
    rst $38                                       ; $577f: $ff
    ld [hl], c                                    ; $5780: $71
    add b                                         ; $5781: $80
    ldh [rP1], a                                  ; $5782: $e0 $00
    add a                                         ; $5784: $87
    rst $38                                       ; $5785: $ff
    or e                                          ; $5786: $b3
    rst $08                                       ; $5787: $cf
    xor e                                         ; $5788: $ab
    rst $38                                       ; $5789: $ff
    rst $10                                       ; $578a: $d7
    add b                                         ; $578b: $80
    ld h, e                                       ; $578c: $63
    ld [de], a                                    ; $578d: $12
    ret nz                                        ; $578e: $c0

    rst $38                                       ; $578f: $ff
    add d                                         ; $5790: $82
    db $fd                                        ; $5791: $fd
    rla                                           ; $5792: $17
    add sp, $0b                                   ; $5793: $e8 $0b
    nop                                           ; $5795: $00
    db $f4                                        ; $5796: $f4
    rst $38                                       ; $5797: $ff
    rst $38                                       ; $5798: $ff
    db $dd                                        ; $5799: $dd
    db $e3                                        ; $579a: $e3
    xor e                                         ; $579b: $ab
    ret nz                                        ; $579c: $c0

    ld h, b                                       ; $579d: $60
    nop                                           ; $579e: $00
    add b                                         ; $579f: $80
    push de                                       ; $57a0: $d5
    nop                                           ; $57a1: $00
    ld l, a                                       ; $57a2: $6f
    add b                                         ; $57a3: $80
    ld a, d                                       ; $57a4: $7a
    add l                                         ; $57a5: $85
    call nc, $ab00                                ; $57a6: $d4 $00 $ab
    cp c                                          ; $57a9: $b9
    rst $00                                       ; $57aa: $c7
    and c                                         ; $57ab: $a1
    rst $18                                       ; $57ac: $df
    ld d, l                                       ; $57ad: $55
    db $eb                                        ; $57ae: $eb
    db $e3                                        ; $57af: $e3
    nop                                           ; $57b0: $00
    ld a, a                                       ; $57b1: $7f
    db $fd                                        ; $57b2: $fd
    ld a, a                                       ; $57b3: $7f
    ld d, a                                       ; $57b4: $57
    rst $28                                       ; $57b5: $ef
    ld l, e                                       ; $57b6: $6b
    rst $00                                       ; $57b7: $c7
    ld b, a                                       ; $57b8: $47
    nop                                           ; $57b9: $00
    jp $fe01                                      ; $57ba: $c3 $01 $fe


    add b                                         ; $57bd: $80
    rst $38                                       ; $57be: $ff
    ld d, c                                       ; $57bf: $51
    cp $aa                                        ; $57c0: $fe $aa
    and b                                         ; $57c2: $a0
    or $01                                        ; $57c3: $f6 $01
    ei                                            ; $57c5: $fb
    ld b, h                                       ; $57c6: $44
    ld [bc], a                                    ; $57c7: $02
    sub l                                         ; $57c8: $95
    rst $38                                       ; $57c9: $ff
    xor d                                         ; $57ca: $aa
    push de                                       ; $57cb: $d5
    add h                                         ; $57cc: $84
    ld a, [bc]                                    ; $57cd: $0a
    ei                                            ; $57ce: $fb
    pop bc                                        ; $57cf: $c1
    rst $38                                       ; $57d0: $ff
    and d                                         ; $57d1: $a2
    db $10                                        ; $57d2: $10
    db $10                                        ; $57d3: $10
    rst $38                                       ; $57d4: $ff
    inc h                                         ; $57d5: $24
    ld [bc], a                                    ; $57d6: $02
    db $ed                                        ; $57d7: $ed
    nop                                           ; $57d8: $00
    jp $c3f5                                      ; $57d9: $c3 $f5 $c3


    ld l, e                                       ; $57dc: $6b
    push bc                                       ; $57dd: $c5
    push de                                       ; $57de: $d5
    db $eb                                        ; $57df: $eb
    ret                                           ; $57e0: $c9


    jr nz, @-$07                                  ; $57e1: $20 $f7

    ld [c], a                                     ; $57e3: $e2
    adc [hl]                                      ; $57e4: $8e
    ld bc, $ff52                                  ; $57e5: $01 $52 $ff
    ld l, e                                       ; $57e8: $6b
    call nc, Call_000_0097                        ; $57e9: $d4 $97 $00
    add sp, $72                                   ; $57ec: $e8 $72
    adc a                                         ; $57ee: $8f
    and e                                         ; $57ef: $a3
    ld e, a                                       ; $57f0: $5f
    ld l, a                                       ; $57f1: $6f
    sub e                                         ; $57f2: $93
    ld a, a                                       ; $57f3: $7f
    nop                                           ; $57f4: $00
    add b                                         ; $57f5: $80
    adc d                                         ; $57f6: $8a
    ld a, l                                       ; $57f7: $7d
    ld hl, $5efe                                  ; $57f8: $21 $fe $5e
    rst $38                                       ; $57fb: $ff
    or a                                          ; $57fc: $b7
    nop                                           ; $57fd: $00
    ld e, h                                       ; $57fe: $5c
    xor l                                         ; $57ff: $ad
    ld hl, sp+$56                                 ; $5800: $f8 $56
    ld hl, sp-$11                                 ; $5802: $f8 $ef
    ldh a, [$6f]                                  ; $5804: $f0 $6f
    nop                                           ; $5806: $00
    ldh a, [rBGP]                                 ; $5807: $f0 $47
    ld hl, sp-$16                                 ; $5809: $f8 $ea
    push af                                       ; $580b: $f5
    xor $1f                                       ; $580c: $ee $1f
    adc e                                         ; $580e: $8b
    nop                                           ; $580f: $00
    rlca                                          ; $5810: $07
    ld d, l                                       ; $5811: $55
    inc bc                                        ; $5812: $03
    xor d                                         ; $5813: $aa
    ld bc, $01f6                                  ; $5814: $01 $f6 $01
    xor $80                                       ; $5817: $ee $80
    inc h                                         ; $5819: $24
    ld bc, $03fd                                  ; $581a: $01 $fd $03
    push de                                       ; $581d: $d5
    ld a, [$fde2]                                 ; $581e: $fa $e2 $fd
    ld [hl], b                                    ; $5821: $70
    ld [bc], a                                    ; $5822: $02
    rst $38                                       ; $5823: $ff
    cp b                                          ; $5824: $b8
    ld a, a                                       ; $5825: $7f
    ld [hl], l                                    ; $5826: $75
    cp a                                          ; $5827: $bf
    rra                                           ; $5828: $1f
    add [hl]                                      ; $5829: $86
    ld bc, $004a                                  ; $582a: $01 $4a $00
    rst $38                                       ; $582d: $ff
    ld d, e                                       ; $582e: $53
    xor a                                         ; $582f: $af
    and d                                         ; $5830: $a2
    ld e, a                                       ; $5831: $5f
    ld b, a                                       ; $5832: $47
    cp a                                          ; $5833: $bf
    dec bc                                        ; $5834: $0b
    jr nz, @+$01                                  ; $5835: $20 $ff

    ld e, a                                       ; $5837: $5f
    sub h                                         ; $5838: $94
    ld bc, $fff5                                  ; $5839: $01 $f5 $ff
    xor d                                         ; $583c: $aa
    rst $38                                       ; $583d: $ff
    ld c, l                                       ; $583e: $4d
    nop                                           ; $583f: $00
    cp a                                          ; $5840: $bf
    xor d                                         ; $5841: $aa
    ld d, a                                       ; $5842: $57
    push de                                       ; $5843: $d5
    ld a, [hl+]                                   ; $5844: $2a
    ld l, $d1                                     ; $5845: $2e $d1
    add c                                         ; $5847: $81
    nop                                           ; $5848: $00
    ld a, [hl]                                    ; $5849: $7e
    or d                                          ; $584a: $b2
    ld c, l                                       ; $584b: $4d
    sub a                                         ; $584c: $97
    add sp, $57                                   ; $584d: $e8 $57
    add sp, $67                                   ; $584f: $e8 $67
    nop                                           ; $5851: $00

jr_092_5852:
    ld hl, sp-$4b                                 ; $5852: $f8 $b5
    ld c, d                                       ; $5854: $4a
    dec d                                         ; $5855: $15
    ld [$04fb], a                                 ; $5856: $ea $fb $04
    ei                                            ; $5859: $fb
    nop                                           ; $585a: $00
    inc b                                         ; $585b: $04
    cp h                                          ; $585c: $bc
    ld b, e                                       ; $585d: $43
    ld d, l                                       ; $585e: $55
    xor d                                         ; $585f: $aa
    inc d                                         ; $5860: $14
    rst $38                                       ; $5861: $ff
    xor a                                         ; $5862: $af
    nop                                           ; $5863: $00
    ld d, b                                       ; $5864: $50
    ld d, l                                       ; $5865: $55
    ld a, [hl+]                                   ; $5866: $2a
    and h                                         ; $5867: $a4
    ld e, a                                       ; $5868: $5f
    ld d, d                                       ; $5869: $52
    xor a                                         ; $586a: $af
    jp hl                                         ; $586b: $e9


    nop                                           ; $586c: $00
    ld d, $54                                     ; $586d: $16 $54
    xor e                                         ; $586f: $ab
    adc e                                         ; $5870: $8b
    inc b                                         ; $5871: $04
    ld b, l                                       ; $5872: $45
    add [hl]                                      ; $5873: $86
    ld d, e                                       ; $5874: $53
    nop                                           ; $5875: $00
    xor a                                         ; $5876: $af
    xor [hl]                                      ; $5877: $ae
    ld d, c                                       ; $5878: $51
    jr z, jr_092_5852                             ; $5879: $28 $d7

    push af                                       ; $587b: $f5
    ld a, [bc]                                    ; $587c: $0a
    ld b, d                                       ; $587d: $42
    nop                                           ; $587e: $00
    cp l                                          ; $587f: $bd
    db $eb                                        ; $5880: $eb
    inc d                                         ; $5881: $14
    cp $01                                        ; $5882: $fe $01
    ret nc                                        ; $5884: $d0

    cpl                                           ; $5885: $2f
    ld d, l                                       ; $5886: $55
    nop                                           ; $5887: $00
    xor d                                         ; $5888: $aa
    cp a                                          ; $5889: $bf
    ld b, b                                       ; $588a: $40
    sub d                                         ; $588b: $92
    ld l, a                                       ; $588c: $6f
    ld l, e                                       ; $588d: $6b
    sub a                                         ; $588e: $97
    rst $28                                       ; $588f: $ef
    nop                                           ; $5890: $00
    inc de                                        ; $5891: $13
    ld a, a                                       ; $5892: $7f
    add b                                         ; $5893: $80
    cp [hl]                                       ; $5894: $be
    ld b, c                                       ; $5895: $41
    ld d, l                                       ; $5896: $55
    xor d                                         ; $5897: $aa
    ld e, l                                       ; $5898: $5d
    nop                                           ; $5899: $00
    nop                                           ; $589a: $00
    jp $e03c                                      ; $589b: $c3 $3c $e0


    ld bc, $a158                                  ; $589e: $01 $58 $a1
    adc d                                         ; $58a1: $8a
    nop                                           ; $58a2: $00
    push af                                       ; $58a3: $f5
    nop                                           ; $58a4: $00
    rst $38                                       ; $58a5: $ff
    xor d                                         ; $58a6: $aa
    ld d, l                                       ; $58a7: $55
    ld l, d                                       ; $58a8: $6a
    add c                                         ; $58a9: $81
    ld c, l                                       ; $58aa: $4d
    nop                                           ; $58ab: $00
    cp $bc                                        ; $58ac: $fe $bc
    rst $38                                       ; $58ae: $ff
    sub $ef                                       ; $58af: $d6 $ef
    add e                                         ; $58b1: $83
    rst $38                                       ; $58b2: $ff
    and e                                         ; $58b3: $a3
    jr nz, @+$01                                  ; $58b4: $20 $ff

    ld d, l                                       ; $58b6: $55
    inc h                                         ; $58b7: $24
    inc bc                                        ; $58b8: $03
    or a                                          ; $58b9: $b7
    ld a, b                                       ; $58ba: $78
    inc d                                         ; $58bb: $14
    db $eb                                        ; $58bc: $eb
    and c                                         ; $58bd: $a1
    nop                                           ; $58be: $00
    ld e, a                                       ; $58bf: $5f
    inc bc                                        ; $58c0: $03
    rst $38                                       ; $58c1: $ff
    ld d, [hl]                                    ; $58c2: $56
    rst $38                                       ; $58c3: $ff
    xor a                                         ; $58c4: $af
    db $fc                                        ; $58c5: $fc
    rst $38                                       ; $58c6: $ff
    nop                                           ; $58c7: $00
    ld hl, sp-$0a                                 ; $58c8: $f8 $f6
    ld hl, sp+$73                                 ; $58ca: $f8 $73
    db $fc                                        ; $58cc: $fc
    ld sp, hl                                     ; $58cd: $f9
    cp $78                                        ; $58ce: $fe $78
    nop                                           ; $58d0: $00
    rst $38                                       ; $58d1: $ff
    adc h                                         ; $58d2: $8c
    rst $38                                       ; $58d3: $ff
    ld a, [$dd07]                                 ; $58d4: $fa $07 $dd
    inc bc                                        ; $58d7: $03
    daa                                           ; $58d8: $27
    nop                                           ; $58d9: $00
    ld bc, $018a                                  ; $58da: $01 $8a $01
    db $db                                        ; $58dd: $db
    nop                                           ; $58de: $00
    dec l                                         ; $58df: $2d
    ldh a, [$be]                                  ; $58e0: $f0 $be
    nop                                           ; $58e2: $00
    ld h, b                                       ; $58e3: $60
    cpl                                           ; $58e4: $2f
    ldh a, [$a5]                                  ; $58e5: $f0 $a5
    ld a, [$fd72]                                 ; $58e7: $fa $72 $fd
    ret c                                         ; $58ea: $d8

    nop                                           ; $58eb: $00
    rst $38                                       ; $58ec: $ff
    xor $ff                                       ; $58ed: $ee $ff
    ld b, c                                       ; $58ef: $41
    rst $38                                       ; $58f0: $ff
    ld [hl], l                                    ; $58f1: $75
    ld a, [hl-]                                   ; $58f2: $3a
    inc de                                        ; $58f3: $13
    nop                                           ; $58f4: $00
    inc a                                         ; $58f5: $3c
    ld a, b                                       ; $58f6: $78
    rra                                           ; $58f7: $1f
    call nc, $ba3f                                ; $58f8: $d4 $3f $ba
    ld a, a                                       ; $58fb: $7f
    ld e, l                                       ; $58fc: $5d
    add b                                         ; $58fd: $80
    ld b, [hl]                                    ; $58fe: $46
    ld [bc], a                                    ; $58ff: $02
    ld d, h                                       ; $5900: $54
    rst $38                                       ; $5901: $ff
    rst $38                                       ; $5902: $ff
    nop                                           ; $5903: $00
    ld [hl], h                                    ; $5904: $74
    adc e                                         ; $5905: $8b
    xor c                                         ; $5906: $a9
    ld a, [bc]                                    ; $5907: $0a
    ld d, a                                       ; $5908: $57
    ld d, e                                       ; $5909: $53
    xor a                                         ; $590a: $af
    ld a, [bc]                                    ; $590b: $0a
    ld b, h                                       ; $590c: $44
    nop                                           ; $590d: $00
    db $fd                                        ; $590e: $fd
    ld b, d                                       ; $590f: $42
    inc bc                                        ; $5910: $03
    push bc                                       ; $5911: $c5
    nop                                           ; $5912: $00
    jr c, jr_092_5954                             ; $5913: $38 $3f

    add b                                         ; $5915: $80
    db $eb                                        ; $5916: $eb
    rra                                           ; $5917: $1f
    xor d                                         ; $5918: $aa
    ld d, l                                       ; $5919: $55
    ld [hl], l                                    ; $591a: $75
    nop                                           ; $591b: $00
    ld a, [bc]                                    ; $591c: $0a
    ld e, [hl]                                    ; $591d: $5e
    ld bc, $8a75                                  ; $591e: $01 $75 $8a
    adc c                                         ; $5921: $89
    ld a, a                                       ; $5922: $7f
    sub c                                         ; $5923: $91
    nop                                           ; $5924: $00
    ld a, [hl]                                    ; $5925: $7e
    ld d, h                                       ; $5926: $54
    cp a                                          ; $5927: $bf
    ld a, [hl-]                                   ; $5928: $3a
    rst $38                                       ; $5929: $ff
    ld h, d                                       ; $592a: $62
    db $fd                                        ; $592b: $fd
    ld e, l                                       ; $592c: $5d
    nop                                           ; $592d: $00
    and d                                         ; $592e: $a2
    dec c                                         ; $592f: $0d
    ld a, [c]                                     ; $5930: $f2
    nop                                           ; $5931: $00
    rlca                                          ; $5932: $07
    ld [c], a                                     ; $5933: $e2
    rlca                                          ; $5934: $07
    sub d                                         ; $5935: $92
    nop                                           ; $5936: $00
    ld l, l                                       ; $5937: $6d
    ld d, h                                       ; $5938: $54
    xor e                                         ; $5939: $ab
    xor e                                         ; $593a: $ab
    call nc, Call_000_3ac5                        ; $593b: $d4 $c5 $3a
    ld e, a                                       ; $593e: $5f
    nop                                           ; $593f: $00
    and b                                         ; $5940: $a0
    ld b, l                                       ; $5941: $45
    ld [bc], a                                    ; $5942: $02
    xor c                                         ; $5943: $a9
    ld b, d                                       ; $5944: $42
    ld d, h                                       ; $5945: $54
    and e                                         ; $5946: $a3
    ld h, l                                       ; $5947: $65
    nop                                           ; $5948: $00
    ld a, [$55aa]                                 ; $5949: $fa $aa $55
    dec a                                         ; $594c: $3d
    jp nz, $bc43                                  ; $594d: $c2 $43 $bc

    call Call_000_3200                            ; $5950: $cd $00 $32
    db $f4                                        ; $5953: $f4

jr_092_5954:
    dec bc                                        ; $5954: $0b
    push bc                                       ; $5955: $c5
    ccf                                           ; $5956: $3f
    ld a, [hl]                                    ; $5957: $7e
    add l                                         ; $5958: $85
    ld a, a                                       ; $5959: $7f
    nop                                           ; $595a: $00
    add a                                         ; $595b: $87
    ld b, b                                       ; $595c: $40
    cp a                                          ; $595d: $bf
    rst $38                                       ; $595e: $ff
    rst $38                                       ; $595f: $ff
    call $f9f3                                    ; $5960: $cd $f3 $f9
    add b                                         ; $5963: $80
    add hl, de                                    ; $5964: $19
    inc b                                         ; $5965: $04
    nop                                           ; $5966: $00
    rst $38                                       ; $5967: $ff
    push af                                       ; $5968: $f5
    ld c, [hl]                                    ; $5969: $4e
    sbc e                                         ; $596a: $9b
    rst $20                                       ; $596b: $e7
    nop                                           ; $596c: $00
    nop                                           ; $596d: $00
    rst $38                                       ; $596e: $ff
    ld d, h                                       ; $596f: $54
    add sp, $4b                                   ; $5970: $e8 $4b
    db $f4                                        ; $5972: $f4
    ld l, b                                       ; $5973: $68
    rst $38                                       ; $5974: $ff
    ld a, l                                       ; $5975: $7d
    add b                                         ; $5976: $80
    ld d, d                                       ; $5977: $52
    ld [bc], a                                    ; $5978: $02
    add b                                         ; $5979: $80
    inc bc                                        ; $597a: $03
    add e                                         ; $597b: $83
    db $fc                                        ; $597c: $fc
    nop                                           ; $597d: $00
    rst $38                                       ; $597e: $ff
    add d                                         ; $597f: $82
    nop                                           ; $5980: $00
    inc c                                         ; $5981: $0c
    ld b, l                                       ; $5982: $45
    ld c, $76                                     ; $5983: $0e $76
    adc a                                         ; $5985: $8f
    ld b, a                                       ; $5986: $47
    ld sp, hl                                     ; $5987: $f9
    rlca                                          ; $5988: $07
    db $10                                        ; $5989: $10
    ld hl, sp-$3d                                 ; $598a: $f8 $c3
    inc b                                         ; $598c: $04
    nop                                           ; $598d: $00
    ld de, $1517                                  ; $598e: $11 $17 $15
    ld a, [hl+]                                   ; $5991: $2a
    add d                                         ; $5992: $82
    nop                                           ; $5993: $00
    dec a                                         ; $5994: $3d
    dec hl                                        ; $5995: $2b
    call nc, $01fe                                ; $5996: $d4 $fe $01
    xor a                                         ; $5999: $af
    ld d, b                                       ; $599a: $50
    db $fd                                        ; $599b: $fd
    nop                                           ; $599c: $00
    rst $38                                       ; $599d: $ff
    and a                                         ; $599e: $a7
    rst $38                                       ; $599f: $ff
    ld e, e                                       ; $59a0: $5b
    rst $20                                       ; $59a1: $e7
    push af                                       ; $59a2: $f5
    jp Jump_000_00a3                              ; $59a3: $c3 $a3 $00


    pop bc                                        ; $59a6: $c1
    sub $81                                       ; $59a7: $d6 $81
    cp h                                          ; $59a9: $bc
    jp $d5ab                                      ; $59aa: $c3 $ab $d5


    or l                                          ; $59ad: $b5
    nop                                           ; $59ae: $00
    ld a, d                                       ; $59af: $7a
    ld c, d                                       ; $59b0: $4a
    cp l                                          ; $59b1: $bd
    xor d                                         ; $59b2: $aa
    ld d, a                                       ; $59b3: $57
    halt                                          ; $59b4: $76
    add hl, bc                                    ; $59b5: $09
    cp d                                          ; $59b6: $ba
    nop                                           ; $59b7: $00
    inc b                                         ; $59b8: $04
    dec d                                         ; $59b9: $15
    ld [$d4ab], a                                 ; $59ba: $ea $ab $d4
    ld a, c                                       ; $59bd: $79
    add [hl]                                      ; $59be: $86
    add $00                                       ; $59bf: $c6 $00
    add hl, sp                                    ; $59c1: $39
    rra                                           ; $59c2: $1f
    ldh [$eb], a                                  ; $59c3: $e0 $eb
    inc d                                         ; $59c5: $14
    xor b                                         ; $59c6: $a8
    ld d, a                                       ; $59c7: $57
    dec b                                         ; $59c8: $05
    nop                                           ; $59c9: $00
    ld a, [$b14e]                                 ; $59ca: $fa $4e $b1
    ld d, l                                       ; $59cd: $55
    xor d                                         ; $59ce: $aa
    dec b                                         ; $59cf: $05
    rst $38                                       ; $59d0: $ff
    jp hl                                         ; $59d1: $e9


    nop                                           ; $59d2: $00
    rla                                           ; $59d3: $17
    ld d, l                                       ; $59d4: $55
    xor e                                         ; $59d5: $ab
    cp $01                                        ; $59d6: $fe $01
    dec de                                        ; $59d8: $1b
    jr nz, jr_092_5a40                            ; $59d9: $20 $65

    nop                                           ; $59db: $00
    db $10                                        ; $59dc: $10
    sub d                                         ; $59dd: $92
    ld l, h                                       ; $59de: $6c
    or l                                          ; $59df: $b5
    ld a, d                                       ; $59e0: $7a
    ld a, d                                       ; $59e1: $7a
    add l                                         ; $59e2: $85
    ld a, a                                       ; $59e3: $7f
    nop                                           ; $59e4: $00
    sub b                                         ; $59e5: $90
    inc bc                                        ; $59e6: $03
    db $fc                                        ; $59e7: $fc
    and l                                         ; $59e8: $a5
    ld e, d                                       ; $59e9: $5a
    ld e, d                                       ; $59ea: $5a
    and l                                         ; $59eb: $a5
    xor e                                         ; $59ec: $ab
    nop                                           ; $59ed: $00
    ld d, h                                       ; $59ee: $54
    ld e, c                                       ; $59ef: $59
    and [hl]                                      ; $59f0: $a6
    ld [c], a                                     ; $59f1: $e2
    dec e                                         ; $59f2: $1d
    cp d                                          ; $59f3: $ba
    ld b, a                                       ; $59f4: $47
    ld hl, sp+$00                                 ; $59f5: $f8 $00
    rlca                                          ; $59f7: $07
    ld d, l                                       ; $59f8: $55
    xor d                                         ; $59f9: $aa
    ld a, [de]                                    ; $59fa: $1a
    push hl                                       ; $59fb: $e5
    and e                                         ; $59fc: $a3
    ld e, h                                       ; $59fd: $5c
    ld e, l                                       ; $59fe: $5d
    nop                                           ; $59ff: $00
    and d                                         ; $5a00: $a2
    ld b, h                                       ; $5a01: $44
    inc bc                                        ; $5a02: $03
    xor b                                         ; $5a03: $a8
    ld b, e                                       ; $5a04: $43
    ld d, l                                       ; $5a05: $55
    and d                                         ; $5a06: $a2
    sub d                                         ; $5a07: $92
    nop                                           ; $5a08: $00
    ld a, a                                       ; $5a09: $7f
    ld c, a                                       ; $5a0a: $4f
    cp a                                          ; $5a0b: $bf
    ld a, [c]                                     ; $5a0c: $f2
    rrca                                          ; $5a0d: $0f
    dec e                                         ; $5a0e: $1d
    ld [c], a                                     ; $5a0f: $e2
    ld h, a                                       ; $5a10: $67
    nop                                           ; $5a11: $00
    jr jr_092_5a68                                ; $5a12: $18 $54

    dec hl                                        ; $5a14: $2b
    ld [$7915], a                                 ; $5a15: $ea $15 $79
    xor [hl]                                      ; $5a18: $ae
    sbc c                                         ; $5a19: $99
    nop                                           ; $5a1a: $00
    ld h, $71                                     ; $5a1b: $26 $71
    ld c, $eb                                     ; $5a1d: $0e $eb
    inc [hl]                                      ; $5a1f: $34
    ld d, $e9                                     ; $5a20: $16 $e9

jr_092_5a22:
    and l                                         ; $5a22: $a5
    nop                                           ; $5a23: $00
    ld e, d                                       ; $5a24: $5a
    ld hl, sp+$07                                 ; $5a25: $f8 $07
    xor e                                         ; $5a27: $ab
    ld e, a                                       ; $5a28: $5f
    ld d, l                                       ; $5a29: $55
    xor e                                         ; $5a2a: $ab
    ld d, l                                       ; $5a2b: $55
    nop                                           ; $5a2c: $00
    xor e                                         ; $5a2d: $ab
    xor d                                         ; $5a2e: $aa
    ld d, l                                       ; $5a2f: $55
    ld d, a                                       ; $5a30: $57
    xor b                                         ; $5a31: $a8
    inc a                                         ; $5a32: $3c
    jp $0059                                      ; $5a33: $c3 $59 $00


    and [hl]                                      ; $5a36: $a6
    xor a                                         ; $5a37: $af
    ld d, b                                       ; $5a38: $50
    ld d, h                                       ; $5a39: $54
    db $eb                                        ; $5a3a: $eb
    xor c                                         ; $5a3b: $a9
    cp $be                                        ; $5a3c: $fe $be
    nop                                           ; $5a3e: $00
    ld b, c                                       ; $5a3f: $41

jr_092_5a40:
    xor d                                         ; $5a40: $aa
    ld d, l                                       ; $5a41: $55
    push bc                                       ; $5a42: $c5
    ld a, [hl-]                                   ; $5a43: $3a
    ld e, l                                       ; $5a44: $5d
    and d                                         ; $5a45: $a2
    or $00                                        ; $5a46: $f6 $00
    dec c                                         ; $5a48: $0d
    ld e, [hl]                                    ; $5a49: $5e
    or c                                          ; $5a4a: $b1
    and c                                         ; $5a4b: $a1
    ld e, [hl]                                    ; $5a4c: $5e
    cp $03                                        ; $5a4d: $fe $03
    ld a, [hl+]                                   ; $5a4f: $2a
    nop                                           ; $5a50: $00
    push bc                                       ; $5a51: $c5
    jp $defc                                      ; $5a52: $c3 $fc $de


    ld hl, $a45b                                  ; $5a55: $21 $5b $a4
    sub h                                         ; $5a58: $94
    nop                                           ; $5a59: $00
    ei                                            ; $5a5a: $fb
    xor c                                         ; $5a5b: $a9
    halt                                          ; $5a5c: $76
    ld c, a                                       ; $5a5d: $4f
    or b                                          ; $5a5e: $b0
    push af                                       ; $5a5f: $f5
    ld a, [bc]                                    ; $5a60: $0a
    ld a, d                                       ; $5a61: $7a
    nop                                           ; $5a62: $00
    add l                                         ; $5a63: $85
    rla                                           ; $5a64: $17
    add sp, -$6d                                  ; $5a65: $e8 $93
    ld a, h                                       ; $5a67: $7c

jr_092_5a68:
    ld a, [hl+]                                   ; $5a68: $2a
    rst $18                                       ; $5a69: $df
    push de                                       ; $5a6a: $d5
    nop                                           ; $5a6b: $00
    dec hl                                        ; $5a6c: $2b
    ld l, e                                       ; $5a6d: $6b
    sub h                                         ; $5a6e: $94
    sub $29                                       ; $5a6f: $d6 $29
    or l                                          ; $5a71: $b5
    ld c, d                                       ; $5a72: $4a
    sub h                                         ; $5a73: $94
    nop                                           ; $5a74: $00
    rst $28                                       ; $5a75: $ef
    xor e                                         ; $5a76: $ab
    ld d, h                                       ; $5a77: $54
    sub b                                         ; $5a78: $90
    ld l, a                                       ; $5a79: $6f
    set 6, h                                      ; $5a7a: $cb $f4
    ld h, h                                       ; $5a7c: $64
    nop                                           ; $5a7d: $00
    ei                                            ; $5a7e: $fb
    ld e, d                                       ; $5a7f: $5a
    cp l                                          ; $5a80: $bd
    xor d                                         ; $5a81: $aa
    ld e, a                                       ; $5a82: $5f
    ld a, d                                       ; $5a83: $7a
    add l                                         ; $5a84: $85
    rlca                                          ; $5a85: $07
    nop                                           ; $5a86: $00
    ld hl, sp-$56                                 ; $5a87: $f8 $aa
    db $fd                                        ; $5a89: $fd
    ld l, c                                       ; $5a8a: $69
    or $d6                                        ; $5a8b: $f6 $d6
    ld a, c                                       ; $5a8d: $79
    rst $28                                       ; $5a8e: $ef
    nop                                           ; $5a8f: $00
    db $10                                        ; $5a90: $10
    jr nc, jr_092_5a22                            ; $5a91: $30 $8f

    xor e                                         ; $5a93: $ab
    call nc, $fea1                                ; $5a94: $d4 $a1 $fe
    ld d, c                                       ; $5a97: $51
    ld b, b                                       ; $5a98: $40
    xor [hl]                                      ; $5a99: $ae
    ld e, h                                       ; $5a9a: $5c
    ld bc, $888a                                  ; $5a9b: $01 $8a $88
    ld [hl], a                                    ; $5a9e: $77
    ld h, [hl]                                    ; $5a9f: $66
    sbc c                                         ; $5aa0: $99
    dec e                                         ; $5aa1: $1d
    nop                                           ; $5aa2: $00
    ld [c], a                                     ; $5aa3: $e2
    xor b                                         ; $5aa4: $a8
    ld d, a                                       ; $5aa5: $57
    ld a, [hl]                                    ; $5aa6: $7e
    add c                                         ; $5aa7: $81
    ld d, l                                       ; $5aa8: $55
    xor d                                         ; $5aa9: $aa
    cp [hl]                                       ; $5aaa: $be
    nop                                           ; $5aab: $00
    ld b, c                                       ; $5aac: $41
    ret                                           ; $5aad: $c9


    ld a, $34                                     ; $5aae: $3e $34
    rst $38                                       ; $5ab0: $ff
    adc d                                         ; $5ab1: $8a
    ld a, a                                       ; $5ab2: $7f
    ld d, h                                       ; $5ab3: $54
    nop                                           ; $5ab4: $00
    xor a                                         ; $5ab5: $af
    dec hl                                        ; $5ab6: $2b
    call nc, Call_000_2fd0                        ; $5ab7: $d4 $d0 $2f
    push de                                       ; $5aba: $d5
    ld a, [hl+]                                   ; $5abb: $2a
    xor e                                         ; $5abc: $ab
    nop                                           ; $5abd: $00
    ld d, h                                       ; $5abe: $54
    pop af                                        ; $5abf: $f1
    ld c, $68                                     ; $5ac0: $0e $68
    sub a                                         ; $5ac2: $97
    ld [hl], h                                    ; $5ac3: $74
    dec bc                                        ; $5ac4: $0b
    ld a, d                                       ; $5ac5: $7a
    nop                                           ; $5ac6: $00
    dec b                                         ; $5ac7: $05
    db $fd                                        ; $5ac8: $fd
    ld [bc], a                                    ; $5ac9: $02
    ld a, d                                       ; $5aca: $7a
    add l                                         ; $5acb: $85
    db $fd                                        ; $5acc: $fd
    ld [bc], a                                    ; $5acd: $02
    push af                                       ; $5ace: $f5
    nop                                           ; $5acf: $00
    rrca                                          ; $5ad0: $0f
    db $d3                                        ; $5ad1: $d3
    cpl                                           ; $5ad2: $2f
    ld a, [$5505]                                 ; $5ad3: $fa $05 $55

jr_092_5ad6:
    xor d                                         ; $5ad6: $aa
    or b                                          ; $5ad7: $b0
    nop                                           ; $5ad8: $00
    ld b, b                                       ; $5ad9: $40
    ld l, $d1                                     ; $5ada: $2e $d1
    sub l                                         ; $5adc: $95
    ld [$ef14], a                                 ; $5add: $ea $14 $ef
    cp $00                                        ; $5ae0: $fe $00
    add a                                         ; $5ae2: $87
    dec de                                        ; $5ae3: $1b
    rst $20                                       ; $5ae4: $e7
    dec [hl]                                      ; $5ae5: $35
    jp z, $9768                                   ; $5ae6: $ca $68 $97

    ld c, e                                       ; $5ae9: $4b
    nop                                           ; $5aea: $00
    cp a                                          ; $5aeb: $bf
    and l                                         ; $5aec: $a5
    ld e, a                                       ; $5aed: $5f
    ld e, l                                       ; $5aee: $5d
    and d                                         ; $5aef: $a2
    ld c, d                                       ; $5af0: $4a
    push af                                       ; $5af1: $f5
    ld [$ff00], a                                 ; $5af2: $ea $00 $ff
    db $ed                                        ; $5af5: $ed
    ld [de], a                                    ; $5af6: $12
    ld [hl], h                                    ; $5af7: $74
    adc e                                         ; $5af8: $8b
    ld h, c                                       ; $5af9: $61
    ld e, $7d                                     ; $5afa: $1e $7d
    nop                                           ; $5afc: $00
    ld [bc], a                                    ; $5afd: $02
    rst $38                                       ; $5afe: $ff
    nop                                           ; $5aff: $00
    ld a, c                                       ; $5b00: $79
    add [hl]                                      ; $5b01: $86
    xor d                                         ; $5b02: $aa
    ld d, l                                       ; $5b03: $55
    add hl, hl                                    ; $5b04: $29
    nop                                           ; $5b05: $00
    sub $fc                                       ; $5b06: $d6 $fc
    inc bc                                        ; $5b08: $03
    and d                                         ; $5b09: $a2
    ld e, l                                       ; $5b0a: $5d
    ld [hl], l                                    ; $5b0b: $75
    adc a                                         ; $5b0c: $8f
    ld e, a                                       ; $5b0d: $5f
    nop                                           ; $5b0e: $00
    xor b                                         ; $5b0f: $a8
    ld [$6a15], a                                 ; $5b10: $ea $15 $6a
    sub b                                         ; $5b13: $90
    jr z, jr_092_5ad6                             ; $5b14: $28 $c0

    ld c, [hl]                                    ; $5b16: $4e
    nop                                           ; $5b17: $00
    ldh a, [$73]                                  ; $5b18: $f0 $73
    db $fc                                        ; $5b1a: $fc
    ld a, a                                       ; $5b1b: $7f
    rst $38                                       ; $5b1c: $ff
    and b                                         ; $5b1d: $a0
    ld e, a                                       ; $5b1e: $5f
    db $f4                                        ; $5b1f: $f4
    nop                                           ; $5b20: $00
    ld [$ee99], sp                                ; $5b21: $08 $99 $ee
    ld e, [hl]                                    ; $5b24: $5e
    rst $38                                       ; $5b25: $ff
    dec h                                         ; $5b26: $25
    ld e, d                                       ; $5b27: $5a
    nop                                           ; $5b28: $00
    nop                                           ; $5b29: $00
    ld a, a                                       ; $5b2a: $7f
    sbc b                                         ; $5b2b: $98
    ld h, b                                       ; $5b2c: $60
    xor l                                         ; $5b2d: $ad
    ldh a, [rNR44]                                ; $5b2e: $f0 $23
    db $fc                                        ; $5b30: $fc
    ld a, $04                                     ; $5b31: $3e $04
    ld a, a                                       ; $5b33: $7f
    add hl, hl                                    ; $5b34: $29
    ld d, [hl]                                    ; $5b35: $56
    ld a, [hl]                                    ; $5b36: $7e
    adc a                                         ; $5b37: $8f
    ldh [$08], a                                  ; $5b38: $e0 $08
    dec h                                         ; $5b3a: $25
    ld a, [de]                                    ; $5b3b: $1a
    nop                                           ; $5b3c: $00
    dec e                                         ; $5b3d: $1d
    ld [hl+], a                                   ; $5b3e: $22
    sub [hl]                                      ; $5b3f: $96
    cpl                                           ; $5b40: $2f
    inc a                                         ; $5b41: $3c
    rst $18                                       ; $5b42: $df
    di                                            ; $5b43: $f3
    inc c                                         ; $5b44: $0c
    nop                                           ; $5b45: $00
    cp $01                                        ; $5b46: $fe $01
    xor e                                         ; $5b48: $ab
    inc bc                                        ; $5b49: $03
    rst $10                                       ; $5b4a: $d7
    nop                                           ; $5b4b: $00
    ld l, d                                       ; $5b4c: $6a
    dec d                                         ; $5b4d: $15
    nop                                           ; $5b4e: $00
    inc d                                         ; $5b4f: $14
    rst $38                                       ; $5b50: $ff
    xor c                                         ; $5b51: $a9
    cp $93                                        ; $5b52: $fe $93
    ld a, h                                       ; $5b54: $7c
    sub $29                                       ; $5b55: $d6 $29
    nop                                           ; $5b57: $00
    ld a, [hl-]                                   ; $5b58: $3a
    rlca                                          ; $5b59: $07
    ld a, d                                       ; $5b5a: $7a
    add l                                         ; $5b5b: $85
    and h                                         ; $5b5c: $a4
    ld e, e                                       ; $5b5d: $5b
    ld [hl], l                                    ; $5b5e: $75
    adc a                                         ; $5b5f: $8f
    nop                                           ; $5b60: $00
    cp l                                          ; $5b61: $bd
    ld b, d                                       ; $5b62: $42
    ld d, [hl]                                    ; $5b63: $56
    xor c                                         ; $5b64: $a9
    ldh a, [rIF]                                  ; $5b65: $f0 $0f
    ld [c], a                                     ; $5b67: $e2
    dec e                                         ; $5b68: $1d
    nop                                           ; $5b69: $00
    ld a, a                                       ; $5b6a: $7f
    add b                                         ; $5b6b: $80
    db $e4                                        ; $5b6c: $e4
    rra                                           ; $5b6d: $1f
    ld a, [hl]                                    ; $5b6e: $7e
    add a                                         ; $5b6f: $87
    db $eb                                        ; $5b70: $eb
    rla                                           ; $5b71: $17
    nop                                           ; $5b72: $00
    dec de                                        ; $5b73: $1b
    db $e4                                        ; $5b74: $e4
    ld h, h                                       ; $5b75: $64
    sbc e                                         ; $5b76: $9b
    sub d                                         ; $5b77: $92
    ld l, l                                       ; $5b78: $6d
    dec [hl]                                      ; $5b79: $35
    ld a, [$4a00]                                 ; $5b7a: $fa $00 $4a
    push af                                       ; $5b7d: $f5
    or c                                          ; $5b7e: $b1
    ld b, e                                       ; $5b7f: $43
    dec l                                         ; $5b80: $2d
    db $d3                                        ; $5b81: $d3
    jp nz, Jump_000_00fd                          ; $5b82: $c2 $fd $00

    ld a, a                                       ; $5b85: $7f
    add b                                         ; $5b86: $80
    pop de                                        ; $5b87: $d1
    ld l, $1b                                     ; $5b88: $2e $1b
    db $e4                                        ; $5b8a: $e4
    xor d                                         ; $5b8b: $aa
    ld d, l                                       ; $5b8c: $55
    nop                                           ; $5b8d: $00
    ret nz                                        ; $5b8e: $c0

    ccf                                           ; $5b8f: $3f
    ld l, d                                       ; $5b90: $6a
    sub l                                         ; $5b91: $95
    add hl, hl                                    ; $5b92: $29
    ret nz                                        ; $5b93: $c0

    db $fc                                        ; $5b94: $fc
    nop                                           ; $5b95: $00
    nop                                           ; $5b96: $00
    and d                                         ; $5b97: $a2
    dec e                                         ; $5b98: $1d
    push af                                       ; $5b99: $f5
    rrca                                          ; $5b9a: $0f
    ld c, d                                       ; $5b9b: $4a

jr_092_5b9c:
    cp a                                          ; $5b9c: $bf
    db $eb                                        ; $5b9d: $eb
    inc d                                         ; $5b9e: $14

jr_092_5b9f:
    nop                                           ; $5b9f: $00
    dec c                                         ; $5ba0: $0d
    ld [bc], a                                    ; $5ba1: $02
    db $d3                                        ; $5ba2: $d3
    inc l                                         ; $5ba3: $2c
    halt                                          ; $5ba4: $76
    adc e                                         ; $5ba5: $8b
    add hl, de                                    ; $5ba6: $19
    daa                                           ; $5ba7: $27
    nop                                           ; $5ba8: $00
    sub [hl]                                      ; $5ba9: $96
    add hl, hl                                    ; $5baa: $29
    ld c, l                                       ; $5bab: $4d
    or d                                          ; $5bac: $b2
    add $39                                       ; $5bad: $c6 $39
    push af                                       ; $5baf: $f5
    ld a, [bc]                                    ; $5bb0: $0a
    nop                                           ; $5bb1: $00
    or h                                          ; $5bb2: $b4
    ld c, e                                       ; $5bb3: $4b
    ld l, a                                       ; $5bb4: $6f
    sub b                                         ; $5bb5: $90
    and l                                         ; $5bb6: $a5
    ld e, d                                       ; $5bb7: $5a
    ld l, d                                       ; $5bb8: $6a
    db $fd                                        ; $5bb9: $fd
    nop                                           ; $5bba: $00
    push de                                       ; $5bbb: $d5
    xor d                                         ; $5bbc: $aa
    rst $28                                       ; $5bbd: $ef
    db $10                                        ; $5bbe: $10
    xor e                                         ; $5bbf: $ab
    ld d, h                                       ; $5bc0: $54
    dec bc                                        ; $5bc1: $0b
    db $f4                                        ; $5bc2: $f4
    jr nz, jr_092_5bf4                            ; $5bc3: $20 $2f

    ret nc                                        ; $5bc5: $d0

    ld h, b                                       ; $5bc6: $60
    ld a, [hl+]                                   ; $5bc7: $2a
    add hl, de                                    ; $5bc8: $19
    and $b7                                       ; $5bc9: $e6 $b7
    ld c, b                                       ; $5bcb: $48
    ld l, d                                       ; $5bcc: $6a
    nop                                           ; $5bcd: $00
    sub l                                         ; $5bce: $95
    ld l, d                                       ; $5bcf: $6a
    sub b                                         ; $5bd0: $90
    ld d, l                                       ; $5bd1: $55
    xor d                                         ; $5bd2: $aa
    xor e                                         ; $5bd3: $ab
    ld d, h                                       ; $5bd4: $54
    sub [hl]                                      ; $5bd5: $96
    inc b                                         ; $5bd6: $04
    ld l, c                                       ; $5bd7: $69
    ld l, e                                       ; $5bd8: $6b
    sub h                                         ; $5bd9: $94
    rst $38                                       ; $5bda: $ff
    nop                                           ; $5bdb: $00
    ld [hl], b                                    ; $5bdc: $70
    ld a, [de]                                    ; $5bdd: $1a
    ld b, l                                       ; $5bde: $45
    cp d                                          ; $5bdf: $ba
    jr jr_092_5b9c                                ; $5be0: $18 $ba

    ld b, l                                       ; $5be2: $45
    xor b                                         ; $5be3: $a8
    ld d, d                                       ; $5be4: $52
    inc bc                                        ; $5be5: $03
    ret nz                                        ; $5be6: $c0

    add hl, hl                                    ; $5be7: $29
    rst $00                                       ; $5be8: $c7
    dec sp                                        ; $5be9: $3b
    dec hl                                        ; $5bea: $2b
    inc b                                         ; $5beb: $04
    push de                                       ; $5bec: $d5
    push af                                       ; $5bed: $f5

jr_092_5bee:
    ld a, [bc]                                    ; $5bee: $0a
    ld l, $d1                                     ; $5bef: $2e $d1
    ld [hl], b                                    ; $5bf1: $70
    jr z, jr_092_5bee                             ; $5bf2: $28 $fa

jr_092_5bf4:
    rlca                                          ; $5bf4: $07
    ld [bc], a                                    ; $5bf5: $02
    ld [hl], l                                    ; $5bf6: $75
    adc e                                         ; $5bf7: $8b
    ld e, $21                                     ; $5bf8: $1e $21
    sbc e                                         ; $5bfa: $9b
    inc h                                         ; $5bfb: $24
    sub b                                         ; $5bfc: $90
    ld [$48b5], sp                                ; $5bfd: $08 $b5 $48
    ld e, d                                       ; $5c00: $5a

jr_092_5c01:
    sub b                                         ; $5c01: $90
    jr z, jr_092_5c01                             ; $5c02: $28 $fd

    ld [bc], a                                    ; $5c04: $02
    or b                                          ; $5c05: $b0
    jr jr_092_5b9f                                ; $5c06: $18 $97

    add sp, $2a                                   ; $5c08: $e8 $2a
    nop                                           ; $5c0a: $00
    rst $00                                       ; $5c0b: $c7
    rst $00                                       ; $5c0c: $c7
    rst $38                                       ; $5c0d: $ff
    or $0b                                        ; $5c0e: $f6 $0b
    dec e                                         ; $5c10: $1d
    ld [c], a                                     ; $5c11: $e2
    and a                                         ; $5c12: $a7
    ld bc, $5458                                  ; $5c13: $01 $58 $54
    xor e                                         ; $5c16: $ab
    xor d                                         ; $5c17: $aa
    push de                                       ; $5c18: $d5
    ld l, c                                       ; $5c19: $69
    cp $c0                                        ; $5c1a: $fe $c0
    ld a, [hl+]                                   ; $5c1c: $2a
    ld a, [bc]                                    ; $5c1d: $0a
    ld b, d                                       ; $5c1e: $42
    cp l                                          ; $5c1f: $bd
    ld a, a                                       ; $5c20: $7f
    add b                                         ; $5c21: $80
    ld d, b                                       ; $5c22: $50
    inc bc                                        ; $5c23: $03
    sub b                                         ; $5c24: $90
    or b                                          ; $5c25: $b0
    dec de                                        ; $5c26: $1b
    ld a, a                                       ; $5c27: $7f
    nop                                           ; $5c28: $00
    add b                                         ; $5c29: $80
    or b                                          ; $5c2a: $b0
    ld c, a                                       ; $5c2b: $4f
    dec hl                                        ; $5c2c: $2b
    call nc, Call_000_0e15                        ; $5c2d: $d4 $15 $0e
    jp c, $0700                                   ; $5c30: $da $00 $07

jr_092_5c33:
    rst $10                                       ; $5c33: $d7
    xor b                                         ; $5c34: $a8
    and b                                         ; $5c35: $a0
    ld e, a                                       ; $5c36: $5f
    jp nc, $e52d                                  ; $5c37: $d2 $2d $e5

    nop                                           ; $5c3a: $00
    ld e, [hl]                                    ; $5c3b: $5e
    scf                                           ; $5c3c: $37
    rst $08                                       ; $5c3d: $cf
    nop                                           ; $5c3e: $00
    rst $38                                       ; $5c3f: $ff
    ld a, [hl+]                                   ; $5c40: $2a
    push af                                       ; $5c41: $f5
    ld d, l                                       ; $5c42: $55
    nop                                           ; $5c43: $00
    cp $a7                                        ; $5c44: $fe $a7
    rst $38                                       ; $5c46: $ff
    ld [bc], a                                    ; $5c47: $02
    db $fd                                        ; $5c48: $fd
    sub h                                         ; $5c49: $94
    ld h, b                                       ; $5c4a: $60
    xor [hl]                                      ; $5c4b: $ae
    nop                                           ; $5c4c: $00
    ld [hl], b                                    ; $5c4d: $70
    or l                                          ; $5c4e: $b5
    ld a, [$3ffb]                                 ; $5c4f: $fa $fb $3f
    ld b, b                                       ; $5c52: $40
    cp a                                          ; $5c53: $bf
    db $fc                                        ; $5c54: $fc
    nop                                           ; $5c55: $00
    inc bc                                        ; $5c56: $03
    ld a, d                                       ; $5c57: $7a
    rst $38                                       ; $5c58: $ff
    cp a                                          ; $5c59: $bf
    ld e, a                                       ; $5c5a: $5f
    ld c, d                                       ; $5c5b: $4a
    dec [hl]                                      ; $5c5c: $35
    and a                                         ; $5c5d: $a7
    nop                                           ; $5c5e: $00
    jr jr_092_5c33                                ; $5c5f: $18 $d2

    dec a                                         ; $5c61: $3d
    ld a, $df                                     ; $5c62: $3e $df
    dec d                                         ; $5c64: $15
    ld [$0052], a                                 ; $5c65: $ea $52 $00
    add c                                         ; $5c68: $81
    and l                                         ; $5c69: $a5
    ld e, a                                       ; $5c6a: $5f
    ld e, a                                       ; $5c6b: $5f
    cp a                                          ; $5c6c: $bf
    sbc h                                         ; $5c6d: $9c
    ld a, a                                       ; $5c6e: $7f
    ld l, c                                       ; $5c6f: $69
    nop                                           ; $5c70: $00
    sbc [hl]                                      ; $5c71: $9e
    xor l                                         ; $5c72: $ad
    rst $38                                       ; $5c73: $ff
    cp $cf                                        ; $5c74: $fe $cf
    xor a                                         ; $5c76: $af
    rst $18                                       ; $5c77: $df
    sbc a                                         ; $5c78: $9f
    jr nz, @+$01                                  ; $5c79: $20 $ff

    pop de                                        ; $5c7b: $d1
    cp d                                          ; $5c7c: $ba
    ld b, $b0                                     ; $5c7d: $06 $b0
    ld a, a                                       ; $5c7f: $7f
    dec h                                         ; $5c80: $25
    ld a, [$2028]                                 ; $5c81: $fa $28 $20
    rst $38                                       ; $5c84: $ff
    ld [hl], l                                    ; $5c85: $75
    db $e4                                        ; $5c86: $e4
    dec b                                         ; $5c87: $05
    rst $38                                       ; $5c88: $ff
    rst $38                                       ; $5c89: $ff
    dec e                                         ; $5c8a: $1d
    ldh [$d4], a                                  ; $5c8b: $e0 $d4
    add hl, bc                                    ; $5c8d: $09
    rst $38                                       ; $5c8e: $ff
    ld bc, $fefe                                  ; $5c8f: $01 $fe $fe
    ld c, h                                       ; $5c92: $4c
    inc bc                                        ; $5c93: $03
    ld e, [hl]                                    ; $5c94: $5e
    and c                                         ; $5c95: $a1
    ld d, b                                       ; $5c96: $50
    dec bc                                        ; $5c97: $0b
    nop                                           ; $5c98: $00
    ld a, b                                       ; $5c99: $78
    rst $38                                       ; $5c9a: $ff
    db $fc                                        ; $5c9b: $fc
    rst $38                                       ; $5c9c: $ff
    ld a, [c]                                     ; $5c9d: $f2
    db $fd                                        ; $5c9e: $fd
    ld l, b                                       ; $5c9f: $68
    rst $38                                       ; $5ca0: $ff
    db $10                                        ; $5ca1: $10
    or l                                          ; $5ca2: $b5
    ld a, a                                       ; $5ca3: $7f
    ld a, $0e                                     ; $5ca4: $3e $0e
    ld b, $ff                                     ; $5ca6: $06 $ff
    rst $38                                       ; $5ca8: $ff
    rst $28                                       ; $5ca9: $ef
    nop                                           ; $5caa: $00
    nop                                           ; $5cab: $00
    rra                                           ; $5cac: $1f
    ldh [$ae], a                                  ; $5cad: $e0 $ae
    ld de, $904f                                  ; $5caf: $11 $4f $90
    ld c, a                                       ; $5cb2: $4f
    ldh a, [rP1]                                  ; $5cb3: $f0 $00
    nop                                           ; $5cb5: $00
    rst $38                                       ; $5cb6: $ff
    ld hl, $18c0                                  ; $5cb7: $21 $c0 $18
    ldh [$91], a                                  ; $5cba: $e0 $91
    ld a, a                                       ; $5cbc: $7f
    ld [$bb55], sp                                ; $5cbd: $08 $55 $bb
    ld a, $e1                                     ; $5cc0: $3e $e1
    db $10                                        ; $5cc2: $10
    add hl, bc                                    ; $5cc3: $09
    or l                                          ; $5cc4: $b5
    ld c, d                                       ; $5cc5: $4a
    ld c, d                                       ; $5cc6: $4a
    nop                                           ; $5cc7: $00
    cp a                                          ; $5cc8: $bf
    ld h, l                                       ; $5cc9: $65
    ld a, [$f04e]                                 ; $5cca: $fa $4e $f0
    ld a, h                                       ; $5ccd: $7c
    rst $38                                       ; $5cce: $ff
    xor a                                         ; $5ccf: $af
    nop                                           ; $5cd0: $00
    ld d, c                                       ; $5cd1: $51
    dec l                                         ; $5cd2: $2d
    ld [de], a                                    ; $5cd3: $12
    xor $11                                       ; $5cd4: $ee $11
    ld e, a                                       ; $5cd6: $5f
    and b                                         ; $5cd7: $a0
    ld [hl+], a                                   ; $5cd8: $22
    nop                                           ; $5cd9: $00
    ret nz                                        ; $5cda: $c0

    rst $38                                       ; $5cdb: $ff
    nop                                           ; $5cdc: $00
    ei                                            ; $5cdd: $fb
    rst $38                                       ; $5cde: $ff
    ccf                                           ; $5cdf: $3f
    rst $38                                       ; $5ce0: $ff
    sbc b                                         ; $5ce1: $98
    ld [bc], a                                    ; $5ce2: $02
    ld a, a                                       ; $5ce3: $7f
    ld sp, $f4fe                                  ; $5ce4: $31 $fe $f4
    rst $38                                       ; $5ce7: $ff
    cp d                                          ; $5ce8: $ba
    ld [hl], h                                    ; $5ce9: $74
    inc d                                         ; $5cea: $14
    ld e, $00                                     ; $5ceb: $1e $00
    rst $38                                       ; $5ced: $ff
    pop hl                                        ; $5cee: $e1
    rst $38                                       ; $5cef: $ff
    ld b, [hl]                                    ; $5cf0: $46
    ld sp, hl                                     ; $5cf1: $f9
    xor b                                         ; $5cf2: $a8
    ld a, a                                       ; $5cf3: $7f
    ld a, a                                       ; $5cf4: $7f
    ld [hl+], a                                   ; $5cf5: $22
    rst $38                                       ; $5cf6: $ff
    ld hl, sp+$68                                 ; $5cf7: $f8 $68
    rlca                                          ; $5cf9: $07
    rst $38                                       ; $5cfa: $ff
    rst $38                                       ; $5cfb: $ff
    daa                                           ; $5cfc: $27
    sub c                                         ; $5cfd: $91
    rlca                                          ; $5cfe: $07
    ld a, [c]                                     ; $5cff: $f2
    adc d                                         ; $5d00: $8a
    add b                                         ; $5d01: $80
    inc bc                                        ; $5d02: $03
    and c                                         ; $5d03: $a1
    rst $38                                       ; $5d04: $ff

Jump_092_5d05:
    db $d3                                        ; $5d05: $d3
    add b                                         ; $5d06: $80
    db $10                                        ; $5d07: $10
    add e                                         ; $5d08: $83
    jr nc, jr_092_5d0b                            ; $5d09: $30 $00

jr_092_5d0b:
    ld l, [hl]                                    ; $5d0b: $6e
    ld a, [bc]                                    ; $5d0c: $0a
    sbc a                                         ; $5d0d: $9f
    inc [hl]                                      ; $5d0e: $34
    rst $08                                       ; $5d0f: $cf
    add [hl]                                      ; $5d10: $86
    xor c                                         ; $5d11: $a9
    rlca                                          ; $5d12: $07
    xor a                                         ; $5d13: $af
    and [hl]                                      ; $5d14: $a6
    inc b                                         ; $5d15: $04
    rst $38                                       ; $5d16: $ff
    jr z, @+$01                                   ; $5d17: $28 $ff

    ld h, e                                       ; $5d19: $63
    inc a                                         ; $5d1a: $3c
    inc b                                         ; $5d1b: $04
    rst $30                                       ; $5d1c: $f7
    add b                                         ; $5d1d: $80
    ld b, $1d                                     ; $5d1e: $06 $1d
    cp $ac                                        ; $5d20: $fe $ac
    ld [hl+], a                                   ; $5d22: $22
    ld e, a                                       ; $5d23: $5f
    ld [hl], h                                    ; $5d24: $74
    and b                                         ; $5d25: $a0
    rlca                                          ; $5d26: $07
    rst $10                                       ; $5d27: $d7
    rst $38                                       ; $5d28: $ff
    db $eb                                        ; $5d29: $eb
    stop                                          ; $5d2a: $10 $00
    ld a, [hl]                                    ; $5d2c: $7e
    nop                                           ; $5d2d: $00
    rst $38                                       ; $5d2e: $ff
    dec sp                                        ; $5d2f: $3b
    db $fc                                        ; $5d30: $fc
    ld l, $f0                                     ; $5d31: $2e $f0
    ld [hl], l                                    ; $5d33: $75
    ret nz                                        ; $5d34: $c0

    and a                                         ; $5d35: $a7
    ld [$4f5f], sp                                ; $5d36: $08 $5f $4f
    cp a                                          ; $5d39: $bf
    rlca                                          ; $5d3a: $07
    adc $04                                       ; $5d3b: $ce $04
    cp c                                          ; $5d3d: $b9
    rst $38                                       ; $5d3e: $ff
    ld [hl], e                                    ; $5d3f: $73
    ld hl, $e8fd                                  ; $5d40: $21 $fd $e8
    xor h                                         ; $5d43: $ac
    nop                                           ; $5d44: $00
    ld [$7f80], a                                 ; $5d45: $ea $80 $7f
    add b                                         ; $5d48: $80
    or h                                          ; $5d49: $b4
    inc b                                         ; $5d4a: $04
    ld [bc], a                                    ; $5d4b: $02
    xor d                                         ; $5d4c: $aa
    xor d                                         ; $5d4d: $aa
    push de                                       ; $5d4e: $d5
    inc d                                         ; $5d4f: $14
    db $eb                                        ; $5d50: $eb
    pop bc                                        ; $5d51: $c1
    cp d                                          ; $5d52: $ba
    ld b, $7b                                     ; $5d53: $06 $7b
    ld bc, $d687                                  ; $5d55: $01 $87 $d6
    ld bc, $00a0                                  ; $5d58: $01 $a0 $00
    jp c, $8f00                                   ; $5d5b: $da $00 $8f

    inc b                                         ; $5d5e: $04
    ld bc, $fe00                                  ; $5d5f: $01 $00 $fe
    ld bc, $02fd                                  ; $5d62: $01 $fd $02
    db $dd                                        ; $5d65: $dd
    cp $72                                        ; $5d66: $fe $72
    ld b, $00                                     ; $5d68: $06 $00
    ld a, h                                       ; $5d6a: $7c
    ld [hl], l                                    ; $5d6b: $75
    ld a, [hl-]                                   ; $5d6c: $3a
    jp c, $d535                                   ; $5d6d: $da $35 $d5

    ld a, [hl-]                                   ; $5d70: $3a
    sbc b                                         ; $5d71: $98
    nop                                           ; $5d72: $00
    ld a, a                                       ; $5d73: $7f
    inc e                                         ; $5d74: $1c
    rst $38                                       ; $5d75: $ff
    cp d                                          ; $5d76: $ba
    ld b, l                                       ; $5d77: $45
    ld d, b                                       ; $5d78: $50
    xor a                                         ; $5d79: $af
    dec b                                         ; $5d7a: $05
    jr nz, @+$01                                  ; $5d7b: $20 $ff

    dec bc                                        ; $5d7d: $0b
    xor $06                                       ; $5d7e: $ee $06

Jump_092_5d80:
    halt                                          ; $5d80: $76
    ld hl, sp-$1b                                 ; $5d81: $f8 $e5
    ldh a, [$7e]                                  ; $5d83: $f0 $7e
    nop                                           ; $5d85: $00
    ldh a, [$5f]                                  ; $5d86: $f0 $5f
    rst $38                                       ; $5d88: $ff
    xor c                                         ; $5d89: $a9
    rst $30                                       ; $5d8a: $f7
    ld e, l                                       ; $5d8b: $5d
    db $e3                                        ; $5d8c: $e3
    rlc b                                         ; $5d8d: $cb $00
    push af                                       ; $5d8f: $f5
    and l                                         ; $5d90: $a5
    ld a, e                                       ; $5d91: $7b
    sub e                                         ; $5d92: $93
    ccf                                           ; $5d93: $3f
    ccf                                           ; $5d94: $3f
    rra                                           ; $5d95: $1f
    xor $00                                       ; $5d96: $ee $00
    rra                                           ; $5d98: $1f
    and l                                         ; $5d99: $a5
    ld a, d                                       ; $5d9a: $7a
    or d                                          ; $5d9b: $b2
    ld a, l                                       ; $5d9c: $7d
    ld a, [hl-]                                   ; $5d9d: $3a
    rst $38                                       ; $5d9e: $ff
    ld b, a                                       ; $5d9f: $47
    add b                                         ; $5da0: $80
    jp c, Jump_000_1b05                           ; $5da1: $da $05 $1b

    rst $20                                       ; $5da4: $e7
    ld [hl+], a                                   ; $5da5: $22
    rst $18                                       ; $5da6: $df
    add d                                         ; $5da7: $82
    rst $38                                       ; $5da8: $ff
    call $3e08                                    ; $5da9: $cd $08 $3e
    sbc h                                         ; $5dac: $9c
    ld a, a                                       ; $5dad: $7f
    cp [hl]                                       ; $5dae: $be
    stop                                          ; $5daf: $10 $00
    sub c                                         ; $5db1: $91
    rst $28                                       ; $5db2: $ef
    inc c                                         ; $5db3: $0c
    ld [bc], a                                    ; $5db4: $02
    di                                            ; $5db5: $f3
    ld h, $d9                                     ; $5db6: $26 $d9
    ld c, d                                       ; $5db8: $4a
    or l                                          ; $5db9: $b5
    push bc                                       ; $5dba: $c5
    ld a, [de]                                    ; $5dbb: $1a
    rlca                                          ; $5dbc: $07
    add a                                         ; $5dbd: $87
    ld [bc], a                                    ; $5dbe: $02
    rst $38                                       ; $5dbf: $ff
    ld a, [hl+]                                   ; $5dc0: $2a
    rst $10                                       ; $5dc1: $d7
    inc de                                        ; $5dc2: $13
    rst $28                                       ; $5dc3: $ef
    ld hl, $04e2                                  ; $5dc4: $21 $e2 $04
    xor d                                         ; $5dc7: $aa
    ld a, [bc]                                    ; $5dc8: $0a
    rst $38                                       ; $5dc9: $ff
    inc b                                         ; $5dca: $04
    ei                                            ; $5dcb: $fb
    nop                                           ; $5dcc: $00
    ld a, d                                       ; $5dcd: $7a
    ld b, $8b                                     ; $5dce: $06 $8b
    ld [c], a                                     ; $5dd0: $e2
    inc b                                         ; $5dd1: $04
    db $ec                                        ; $5dd2: $ec
    and b                                         ; $5dd3: $a0
    ldh [rTAC], a                                 ; $5dd4: $e0 $07
    ret nc                                        ; $5dd6: $d0

    ld e, d                                       ; $5dd7: $5a
    ld b, $01                                     ; $5dd8: $06 $01
    cp $9f                                        ; $5dda: $fe $9f
    ld h, b                                       ; $5ddc: $60
    ld l, e                                       ; $5ddd: $6b
    inc b                                         ; $5dde: $04
    sub h                                         ; $5ddf: $94
    ld [$5415], a                                 ; $5de0: $ea $15 $54
    xor e                                         ; $5de3: $ab
    jr nz, jr_092_5df3                            ; $5de4: $20 $0d

    push bc                                       ; $5de6: $c5
    ld a, [hl-]                                   ; $5de7: $3a
    nop                                           ; $5de8: $00
    ld a, [hl-]                                   ; $5de9: $3a
    push bc                                       ; $5dea: $c5
    add sp, $17                                   ; $5deb: $e8 $17
    push de                                       ; $5ded: $d5
    ld a, [hl+]                                   ; $5dee: $2a
    ld e, c                                       ; $5def: $59
    and [hl]                                      ; $5df0: $a6
    nop                                           ; $5df1: $00
    ld d, h                                       ; $5df2: $54

jr_092_5df3:
    rst $38                                       ; $5df3: $ff
    and d                                         ; $5df4: $a2
    ld a, l                                       ; $5df5: $7d
    push de                                       ; $5df6: $d5
    ld a, [hl+]                                   ; $5df7: $2a
    ld l, a                                       ; $5df8: $6f
    sub b                                         ; $5df9: $90
    nop                                           ; $5dfa: $00
    add l                                         ; $5dfb: $85
    ld a, [$a87f]                                 ; $5dfc: $fa $7f $a8
    call nc, Call_092_7a2b                        ; $5dff: $d4 $2b $7a
    add b                                         ; $5e02: $80
    ld [bc], a                                    ; $5e03: $02
    sub a                                         ; $5e04: $97
    add sp, -$36                                  ; $5e05: $e8 $ca
    push af                                       ; $5e07: $f5
    and c                                         ; $5e08: $a1
    cp $50                                        ; $5e09: $fe $50
    inc bc                                        ; $5e0b: $03
    ld b, b                                       ; $5e0c: $40
    nop                                           ; $5e0d: $00
    db $fd                                        ; $5e0e: $fd
    nop                                           ; $5e0f: $00
    ld d, l                                       ; $5e10: $55
    xor d                                         ; $5e11: $aa
    add d                                         ; $5e12: $82
    ld bc, $0154                                  ; $5e13: $01 $54 $01
    ld [$01fa], sp                                ; $5e16: $08 $fa $01
    ld d, [hl]                                    ; $5e19: $56
    xor c                                         ; $5e1a: $a9
    db $10                                        ; $5e1b: $10
    inc c                                         ; $5e1c: $0c
    dec de                                        ; $5e1d: $1b
    db $e4                                        ; $5e1e: $e4
    and e                                         ; $5e1f: $a3
    ld [$fb5c], sp                                ; $5e20: $08 $5c $fb
    inc b                                         ; $5e23: $04
    ld [hl], b                                    ; $5e24: $70
    sub b                                         ; $5e25: $90
    inc de                                        ; $5e26: $13
    ld l, [hl]                                    ; $5e27: $6e
    ld de, $0095                                  ; $5e28: $11 $95 $00
    ld l, d                                       ; $5e2b: $6a
    ld c, e                                       ; $5e2c: $4b
    or h                                          ; $5e2d: $b4
    xor b                                         ; $5e2e: $a8
    ld b, b                                       ; $5e2f: $40
    dec b                                         ; $5e30: $05
    nop                                           ; $5e31: $00
    ld c, [hl]                                    ; $5e32: $4e
    inc b                                         ; $5e33: $04
    ld bc, $807f                                  ; $5e34: $01 $7f $80
    ret nc                                        ; $5e37: $d0

    cpl                                           ; $5e38: $2f
    jr nc, @+$06                                  ; $5e39: $30 $04

    ld a, [hl+]                                   ; $5e3b: $2a
    ld a, [de]                                    ; $5e3c: $1a
    ld bc, $a305                                  ; $5e3d: $01 $05 $a3
    ld e, h                                       ; $5e40: $5c
    ld e, c                                       ; $5e41: $59
    and b                                         ; $5e42: $a0
    rst $38                                       ; $5e43: $ff
    nop                                           ; $5e44: $00
    jr nz, jr_092_5e51                            ; $5e45: $20 $0a

    add b                                         ; $5e47: $80
    jr nc, jr_092_5e56                            ; $5e48: $30 $0c

    or d                                          ; $5e4a: $b2
    ld c, a                                       ; $5e4b: $4f
    dec e                                         ; $5e4c: $1d
    ld [bc], a                                    ; $5e4d: $02
    and a                                         ; $5e4e: $a7
    nop                                           ; $5e4f: $00
    ld d, a                                       ; $5e50: $57

jr_092_5e51:
    nop                                           ; $5e51: $00
    xor b                                         ; $5e52: $a8
    xor d                                         ; $5e53: $aa
    push de                                       ; $5e54: $d5
    ld l, d                                       ; $5e55: $6a

jr_092_5e56:
    sub b                                         ; $5e56: $90
    cp a                                          ; $5e57: $bf
    ld b, e                                       ; $5e58: $43
    cp $00                                        ; $5e59: $fe $00
    ld bc, $00d7                                  ; $5e5b: $01 $d7 $00
    ld e, l                                       ; $5e5e: $5d
    ld [bc], a                                    ; $5e5f: $02
    or $0f                                        ; $5e60: $f6 $0f
    ld e, l                                       ; $5e62: $5d
    nop                                           ; $5e63: $00

jr_092_5e64:
    cp d                                          ; $5e64: $ba
    and e                                         ; $5e65: $a3
    ld e, h                                       ; $5e66: $5c
    rst $38                                       ; $5e67: $ff

jr_092_5e68:
    nop                                           ; $5e68: $00
    sub [hl]                                      ; $5e69: $96
    jr z, jr_092_5edf                             ; $5e6a: $28 $73

    nop                                           ; $5e6c: $00
    inc b                                         ; $5e6d: $04
    sbc $01                                       ; $5e6e: $de $01
    dec de                                        ; $5e70: $1b
    db $e4                                        ; $5e71: $e4
    sub h                                         ; $5e72: $94
    ld a, e                                       ; $5e73: $7b
    jp hl                                         ; $5e74: $e9


    nop                                           ; $5e75: $00
    ld d, $4f                                     ; $5e76: $16 $4f
    or b                                          ; $5e78: $b0
    rst $30                                       ; $5e79: $f7
    nop                                           ; $5e7a: $00
    ld h, a                                       ; $5e7b: $67
    ld hl, sp-$4c                                 ; $5e7c: $f8 $b4
    ld b, b                                       ; $5e7e: $40
    ret nz                                        ; $5e7f: $c0

    xor d                                         ; $5e80: $aa
    inc b                                         ; $5e81: $04
    ld d, h                                       ; $5e82: $54
    ld [hl], b                                    ; $5e83: $70
    nop                                           ; $5e84: $00
    cp a                                          ; $5e85: $bf
    ld b, b                                       ; $5e86: $40
    ld l, d                                       ; $5e87: $6a
    ld [$ea95], sp                                ; $5e88: $08 $95 $ea
    db $10                                        ; $5e8b: $10
    call nc, Call_000_07e2                        ; $5e8c: $d4 $e2 $07
    jr z, jr_092_5e68                             ; $5e8f: $28 $d7

    xor b                                         ; $5e91: $a8
    nop                                           ; $5e92: $00
    ld b, c                                       ; $5e93: $41
    inc b                                         ; $5e94: $04
    ld bc, $01de                                  ; $5e95: $01 $de $01
    inc b                                         ; $5e98: $04
    ei                                            ; $5e99: $fb
    ld d, l                                       ; $5e9a: $55
    ld h, b                                       ; $5e9b: $60
    jr nz, jr_092_5e64                            ; $5e9c: $20 $c6

    dec b                                         ; $5e9e: $05
    ld d, d                                       ; $5e9f: $52
    ld [bc], a                                    ; $5ea0: $02
    ld d, h                                       ; $5ea1: $54
    add b                                         ; $5ea2: $80
    cp a                                          ; $5ea3: $bf
    ret nz                                        ; $5ea4: $c0

    push de                                       ; $5ea5: $d5
    nop                                           ; $5ea6: $00
    rst $38                                       ; $5ea7: $ff
    xor b                                         ; $5ea8: $a8
    ld d, a                                       ; $5ea9: $57
    inc c                                         ; $5eaa: $0c
    inc bc                                        ; $5eab: $03
    ld [hl], a                                    ; $5eac: $77
    sbc b                                         ; $5ead: $98
    cp d                                          ; $5eae: $ba
    ld bc, $b55d                                  ; $5eaf: $01 $5d $b5
    ld e, $df                                     ; $5eb2: $1e $df
    rrca                                          ; $5eb4: $0f
    ld e, [hl]                                    ; $5eb5: $5e
    and c                                         ; $5eb6: $a1
    ret nz                                        ; $5eb7: $c0

    jr jr_092_5eba                                ; $5eb8: $18 $00

jr_092_5eba:
    ld c, $30                                     ; $5eba: $0e $30
    sub l                                         ; $5ebc: $95
    ld a, $5f                                     ; $5ebd: $3e $5f
    cp a                                          ; $5ebf: $bf
    ld d, [hl]                                    ; $5ec0: $56
    jp hl                                         ; $5ec1: $e9


    nop                                           ; $5ec2: $00
    sbc a                                         ; $5ec3: $9f
    ld h, b                                       ; $5ec4: $60
    ld a, a                                       ; $5ec5: $7f
    add b                                         ; $5ec6: $80
    sub $01                                       ; $5ec7: $d6 $01
    or l                                          ; $5ec9: $b5
    ld a, [bc]                                    ; $5eca: $0a
    nop                                           ; $5ecb: $00
    and d                                         ; $5ecc: $a2
    rlca                                          ; $5ecd: $07
    ld [hl], l                                    ; $5ece: $75
    add e                                         ; $5ecf: $83
    xor d                                         ; $5ed0: $aa
    rst $38                                       ; $5ed1: $ff

jr_092_5ed2:
    add e                                         ; $5ed2: $83
    ld a, a                                       ; $5ed3: $7f
    ld a, [bc]                                    ; $5ed4: $0a
    add sp, $17                                   ; $5ed5: $e8 $17
    rst $10                                       ; $5ed7: $d7
    jr z, jr_092_5f4a                             ; $5ed8: $28 $70

    dec bc                                        ; $5eda: $0b
    push bc                                       ; $5edb: $c5
    cp $07                                        ; $5edc: $fe $07
    inc e                                         ; $5ede: $1c

jr_092_5edf:
    ld l, b                                       ; $5edf: $68
    rst $38                                       ; $5ee0: $ff
    ld [hl], b                                    ; $5ee1: $70
    ld [de], a                                    ; $5ee2: $12
    jr jr_092_5efc                                ; $5ee3: $18 $17

    cpl                                           ; $5ee5: $2f
    ld d, b                                       ; $5ee6: $50
    ld [bc], a                                    ; $5ee7: $02
    add hl, de                                    ; $5ee8: $19
    cp $4c                                        ; $5ee9: $fe $4c
    inc c                                         ; $5eeb: $0c
    cp a                                          ; $5eec: $bf
    ld a, [hl+]                                   ; $5eed: $2a
    rst $18                                       ; $5eee: $df
    cp l                                          ; $5eef: $bd
    jr z, jr_092_5f09                             ; $5ef0: $28 $17

    ld [hl], b                                    ; $5ef2: $70
    ld [$57a8], sp                                ; $5ef3: $08 $a8 $57
    nop                                           ; $5ef6: $00
    inc b                                         ; $5ef7: $04
    inc bc                                        ; $5ef8: $03
    and d                                         ; $5ef9: $a2
    rlca                                          ; $5efa: $07
    ld d, e                                       ; $5efb: $53

jr_092_5efc:
    xor a                                         ; $5efc: $af
    nop                                           ; $5efd: $00
    rst $38                                       ; $5efe: $ff
    nop                                           ; $5eff: $00
    ret nc                                        ; $5f00: $d0

    nop                                           ; $5f01: $00
    ld l, d                                       ; $5f02: $6a
    add b                                         ; $5f03: $80
    cpl                                           ; $5f04: $2f
    ret nc                                        ; $5f05: $d0

    and d                                         ; $5f06: $a2
    db $fd                                        ; $5f07: $fd
    inc c                                         ; $5f08: $0c

jr_092_5f09:
    ldh a, [rIE]                                  ; $5f09: $f0 $ff
    dec d                                         ; $5f0b: $15
    ld [$00d0], a                                 ; $5f0c: $ea $d0 $00
    nop                                           ; $5f0f: $00
    inc bc                                        ; $5f10: $03
    ld sp, hl                                     ; $5f11: $f9
    nop                                           ; $5f12: $00
    nop                                           ; $5f13: $00
    ld a, [$7500]                                 ; $5f14: $fa $00 $75
    add b                                         ; $5f17: $80
    adc b                                         ; $5f18: $88
    ld d, e                                       ; $5f19: $53
    ld h, [hl]                                    ; $5f1a: $66
    adc c                                         ; $5f1b: $89
    ld [bc], a                                    ; $5f1c: $02

jr_092_5f1d:
    dec e                                         ; $5f1d: $1d
    ld [bc], a                                    ; $5f1e: $02
    jr z, jr_092_5f28                             ; $5f1f: $28 $07

    ld e, [hl]                                    ; $5f21: $5e
    and c                                         ; $5f22: $a1
    ld [hl], b                                    ; $5f23: $70
    inc de                                        ; $5f24: $13
    nop                                           ; $5f25: $00
    jr nz, jr_092_5f93                            ; $5f26: $20 $6b

jr_092_5f28:
    nop                                           ; $5f28: $00
    ld d, b                                       ; $5f29: $50
    add hl, bc                                    ; $5f2a: $09
    cp e                                          ; $5f2b: $bb
    inc b                                         ; $5f2c: $04
    ld d, l                                       ; $5f2d: $55
    ld b, $e6                                     ; $5f2e: $06 $e6
    nop                                           ; $5f30: $00
    rst $38                                       ; $5f31: $ff
    sub l                                         ; $5f32: $95
    db $eb                                        ; $5f33: $eb
    xor c                                         ; $5f34: $a9
    rst $10                                       ; $5f35: $d7
    add c                                         ; $5f36: $81
    rst $38                                       ; $5f37: $ff
    jp nc, $ff00                                  ; $5f38: $d2 $00 $ff

    ld a, a                                       ; $5f3b: $7f
    db $fc                                        ; $5f3c: $fc
    ld a, a                                       ; $5f3d: $7f
    jr c, jr_092_5ed2                             ; $5f3e: $38 $92

    inc a                                         ; $5f40: $3c
    and a                                         ; $5f41: $a7
    ld [$ebff], sp                                ; $5f42: $08 $ff $eb
    rst $30                                       ; $5f45: $f7
    jp nc, $074c                                  ; $5f46: $d2 $4c $07

    rst $20                                       ; $5f49: $e7

jr_092_5f4a:
    rra                                           ; $5f4a: $1f
    push bc                                       ; $5f4b: $c5
    nop                                           ; $5f4c: $00
    inc bc                                        ; $5f4d: $03
    and c                                         ; $5f4e: $a1
    nop                                           ; $5f4f: $00
    call nc, Call_092_7700                        ; $5f50: $d4 $00 $77
    jr jr_092_5fa8                                ; $5f53: $18 $53

    nop                                           ; $5f55: $00
    cp h                                          ; $5f56: $bc
    sbc l                                         ; $5f57: $9d
    ld a, d                                       ; $5f58: $7a
    ld a, d                                       ; $5f59: $7a
    db $fd                                        ; $5f5a: $fd
    db $fc                                        ; $5f5b: $fc
    rst $38                                       ; $5f5c: $ff
    ld d, [hl]                                    ; $5f5d: $56
    nop                                           ; $5f5e: $00
    xor a                                         ; $5f5f: $af
    dec sp                                        ; $5f60: $3b
    rst $00                                       ; $5f61: $c7
    rlca                                          ; $5f62: $07
    ei                                            ; $5f63: $fb
    ld hl, sp+$00                                 ; $5f64: $f8 $00
    db $fd                                        ; $5f66: $fd
    ld b, l                                       ; $5f67: $45
    nop                                           ; $5f68: $00
    ld c, d                                       ; $5f69: $4a
    dec bc                                        ; $5f6a: $0b
    ld d, h                                       ; $5f6b: $54
    xor e                                         ; $5f6c: $ab
    add b                                         ; $5f6d: $80
    sub d                                         ; $5f6e: $92
    ld b, $ff                                     ; $5f6f: $06 $ff
    ld [hl+], a                                   ; $5f71: $22
    ld [bc], a                                    ; $5f72: $02
    nop                                           ; $5f73: $00
    ld d, [hl]                                    ; $5f74: $56
    rst $38                                       ; $5f75: $ff
    cp l                                          ; $5f76: $bd
    cp $ff                                        ; $5f77: $fe $ff
    db $fc                                        ; $5f79: $fc
    db $fd                                        ; $5f7a: $fd
    cp $00                                        ; $5f7b: $fe $00
    sbc e                                         ; $5f7d: $9b
    db $fc                                        ; $5f7e: $fc
    add hl, bc                                    ; $5f7f: $09
    cp $88                                        ; $5f80: $fe $88
    rst $38                                       ; $5f82: $ff
    cp e                                          ; $5f83: $bb
    rst $00                                       ; $5f84: $c7
    ld bc, $01ea                                  ; $5f85: $01 $ea $01
    add l                                         ; $5f88: $85
    nop                                           ; $5f89: $00
    ld [c], a                                     ; $5f8a: $e2
    nop                                           ; $5f8b: $00
    push de                                       ; $5f8c: $d5
    jr nc, jr_092_5f91                            ; $5f8d: $30 $02

    nop                                           ; $5f8f: $00
    ld a, l                                       ; $5f90: $7d

jr_092_5f91:
    add d                                         ; $5f91: $82
    xor d                                         ; $5f92: $aa

jr_092_5f93:
    ld d, l                                       ; $5f93: $55
    ld a, e                                       ; $5f94: $7b
    add h                                         ; $5f95: $84
    ld [hl], l                                    ; $5f96: $75
    adc b                                         ; $5f97: $88
    ld [bc], a                                    ; $5f98: $02
    ld [de], a                                    ; $5f99: $12
    jr nz, jr_092_5f1d                            ; $5f9a: $20 $81

    jr nz, @+$6d                                  ; $5f9c: $20 $6b

    sub h                                         ; $5f9e: $94
    ld d, b                                       ; $5f9f: $50
    ld bc, $005d                                  ; $5fa0: $01 $5d $00
    ld hl, $c7fe                                  ; $5fa3: $21 $fe $c7
    jr c, jr_092_6007                             ; $5fa6: $38 $5f

jr_092_5fa8:
    and b                                         ; $5fa8: $a0
    db $e4                                        ; $5fa9: $e4
    rra                                           ; $5faa: $1f
    add b                                         ; $5fab: $80
    db $10                                        ; $5fac: $10
    rrca                                          ; $5fad: $0f
    ld a, h                                       ; $5fae: $7c
    add e                                         ; $5faf: $83
    add l                                         ; $5fb0: $85
    nop                                           ; $5fb1: $00
    ld b, d                                       ; $5fb2: $42
    add c                                         ; $5fb3: $81
    ld [hl], e                                    ; $5fb4: $73
    nop                                           ; $5fb5: $00
    adc a                                         ; $5fb6: $8f
    xor $11                                       ; $5fb7: $ee $11
    cp b                                          ; $5fb9: $b8
    ld b, b                                       ; $5fba: $40
    push af                                       ; $5fbb: $f5
    nop                                           ; $5fbc: $00
    ld b, d                                       ; $5fbd: $42
    nop                                           ; $5fbe: $00
    add b                                         ; $5fbf: $80
    db $eb                                        ; $5fc0: $eb
    nop                                           ; $5fc1: $00
    cp $00                                        ; $5fc2: $fe $00
    xor a                                         ; $5fc4: $af
    ld d, b                                       ; $5fc5: $50
    ld d, a                                       ; $5fc6: $57
    ld b, b                                       ; $5fc7: $40
    ld hl, sp-$30                                 ; $5fc8: $f8 $d0
    dec d                                         ; $5fca: $15
    dec b                                         ; $5fcb: $05
    xor e                                         ; $5fcc: $ab
    nop                                           ; $5fcd: $00
    ld e, c                                       ; $5fce: $59
    nop                                           ; $5fcf: $00
    ld [c], a                                     ; $5fd0: $e2
    nop                                           ; $5fd1: $00
    dec e                                         ; $5fd2: $1d
    ld a, d                                       ; $5fd3: $7a
    add l                                         ; $5fd4: $85
    ld a, d                                       ; $5fd5: $7a
    add l                                         ; $5fd6: $85
    or l                                          ; $5fd7: $b5
    jp z, $011a                                   ; $5fd8: $ca $1a $01

    ldh [$34], a                                  ; $5fdb: $e0 $34
    ret nz                                        ; $5fdd: $c0

    add sp, $17                                   ; $5fde: $e8 $17
    ld c, e                                       ; $5fe0: $4b
    ccf                                           ; $5fe1: $3f
    nop                                           ; $5fe2: $00
    dec c                                         ; $5fe3: $0d
    nop                                           ; $5fe4: $00
    cp c                                          ; $5fe5: $b9
    ret nz                                        ; $5fe6: $c0

    pop af                                        ; $5fe7: $f1
    nop                                           ; $5fe8: $00
    xor e                                         ; $5fe9: $ab
    db $f4                                        ; $5fea: $f4
    ld d, [hl]                                    ; $5feb: $56
    xor b                                         ; $5fec: $a8
    nop                                           ; $5fed: $00
    db $ed                                        ; $5fee: $ed
    ld [bc], a                                    ; $5fef: $02
    ld e, b                                       ; $5ff0: $58
    rlca                                          ; $5ff1: $07
    dec hl                                        ; $5ff2: $2b
    rst $18                                       ; $5ff3: $df
    ld d, l                                       ; $5ff4: $55
    xor e                                         ; $5ff5: $ab
    add b                                         ; $5ff6: $80
    db $10                                        ; $5ff7: $10
    dec c                                         ; $5ff8: $0d
    dec l                                         ; $5ff9: $2d
    jp nc, Jump_000_0074                          ; $5ffa: $d2 $74 $00

    ld hl, $bd00                                  ; $5ffd: $21 $00 $bd
    nop                                           ; $6000: $00
    ld b, d                                       ; $6001: $42
    ccf                                           ; $6002: $3f
    ret nz                                        ; $6003: $c0

    ret nc                                        ; $6004: $d0

    cpl                                           ; $6005: $2f
    ld [hl], e                                    ; $6006: $73

jr_092_6007:
    add b                                         ; $6007: $80
    jp nc, Jump_000_2f00                          ; $6008: $d2 $00 $2f

    cp c                                          ; $600b: $b9
    ld b, a                                       ; $600c: $47
    ld d, [hl]                                    ; $600d: $56

jr_092_600e:
    xor c                                         ; $600e: $a9
    adc l                                         ; $600f: $8d
    ld [bc], a                                    ; $6010: $02
    add $00                                       ; $6011: $c6 $00
    ld bc, $aa55                                  ; $6013: $01 $55 $aa
    or h                                          ; $6016: $b4
    ld b, b                                       ; $6017: $40
    ld l, a                                       ; $6018: $6f
    add b                                         ; $6019: $80
    add l                                         ; $601a: $85
    ld b, b                                       ; $601b: $40
    ld a, [$0480]                                 ; $601c: $fa $80 $04
    ld hl, sp+$47                                 ; $601f: $f8 $47
    cp b                                          ; $6021: $b8
    xor e                                         ; $6022: $ab
    ld d, h                                       ; $6023: $54
    adc e                                         ; $6024: $8b
    nop                                           ; $6025: $00
    nop                                           ; $6026: $00
    cpl                                           ; $6027: $2f
    nop                                           ; $6028: $00
    dec sp                                        ; $6029: $3b
    rst $00                                       ; $602a: $c7
    rst $38                                       ; $602b: $ff
    nop                                           ; $602c: $00
    ld [hl], l                                    ; $602d: $75
    ld bc, $2e0a                                  ; $602e: $01 $0a $2e
    ld bc, $00d1                                  ; $6031: $01 $d1 $00
    dec de                                        ; $6034: $1b
    ldh [$c0], a                                  ; $6035: $e0 $c0
    inc c                                         ; $6037: $0c
    nop                                           ; $6038: $00
    sub d                                         ; $6039: $92
    ld a, a                                       ; $603a: $7f
    xor a                                         ; $603b: $af
    ld d, l                                       ; $603c: $55
    ld [hl-], a                                   ; $603d: $32
    rrca                                          ; $603e: $0f
    dec e                                         ; $603f: $1d
    ld [hl+], a                                   ; $6040: $22
    nop                                           ; $6041: $00
    add a                                         ; $6042: $87
    jr c, jr_092_6079                             ; $6043: $38 $34

    set 7, d                                      ; $6045: $cb $fa
    add l                                         ; $6047: $85
    ld l, c                                       ; $6048: $69
    cp $88                                        ; $6049: $fe $88
    db $10                                        ; $604b: $10
    ld h, $00                                     ; $604c: $26 $00
    ld e, c                                       ; $604e: $59
    and b                                         ; $604f: $a0
    ret nc                                        ; $6050: $d0

    ld bc, $ead5                                  ; $6051: $01 $d5 $ea
    sub b                                         ; $6054: $90
    jr nz, jr_092_600e                            ; $6055: $20 $b7

    ret c                                         ; $6057: $d8

    or b                                          ; $6058: $b0
    ld bc, $df5e                                  ; $6059: $01 $5e $df
    xor a                                         ; $605c: $af
    ld h, [hl]                                    ; $605d: $66
    ld sp, hl                                     ; $605e: $f9
    and b                                         ; $605f: $a0
    ldh [$0d], a                                  ; $6060: $e0 $0d
    ld [de], a                                    ; $6062: $12
    ld l, d                                       ; $6063: $6a
    inc b                                         ; $6064: $04
    and l                                         ; $6065: $a5
    ld e, a                                       ; $6066: $5f
    rst $18                                       ; $6067: $df
    jr nz, jr_092_606f                            ; $6068: $20 $05

    nop                                           ; $606a: $00
    ld a, [$8060]                                 ; $606b: $fa $60 $80
    inc a                                         ; $606e: $3c

jr_092_606f:
    ret nz                                        ; $606f: $c0

    ld c, a                                       ; $6070: $4f
    ldh a, [$7a]                                  ; $6071: $f0 $7a
    add b                                         ; $6073: $80
    db $ec                                        ; $6074: $ec
    inc bc                                        ; $6075: $03
    ld a, a                                       ; $6076: $7f
    add b                                         ; $6077: $80
    inc b                                         ; $6078: $04

jr_092_6079:
    ei                                            ; $6079: $fb
    jp Jump_092_5204                              ; $607a: $c3 $04 $52


    ld bc, $53a5                                  ; $607d: $01 $a5 $53
    db $fc                                        ; $6080: $fc
    ld a, [bc]                                    ; $6081: $0a
    rst $30                                       ; $6082: $f7
    ld [hl], d                                    ; $6083: $72
    dec c                                         ; $6084: $0d
    ret nz                                        ; $6085: $c0

    add hl, hl                                    ; $6086: $29
    ld [$7798], sp                                ; $6087: $08 $98 $77
    db $ed                                        ; $608a: $ed
    ld [hl-], a                                   ; $608b: $32
    jr nc, jr_092_609c                            ; $608c: $30 $0e

    ld a, [hl-]                                   ; $608e: $3a
    push bc                                       ; $608f: $c5
    xor c                                         ; $6090: $a9
    ld bc, $7456                                  ; $6091: $01 $56 $74
    dec bc                                        ; $6094: $0b
    cpl                                           ; $6095: $2f
    nop                                           ; $6096: $00
    db $db                                        ; $6097: $db
    nop                                           ; $6098: $00
    sub b                                         ; $6099: $90
    inc b                                         ; $609a: $04
    nop                                           ; $609b: $00

jr_092_609c:
    ld d, a                                       ; $609c: $57
    jp $853f                                      ; $609d: $c3 $3f $85


    ld a, d                                       ; $60a0: $7a
    ld b, b                                       ; $60a1: $40
    add a                                         ; $60a2: $87
    xor c                                         ; $60a3: $a9
    ld [$d2c6], sp                                ; $60a4: $08 $c6 $d2
    rst $20                                       ; $60a7: $e7
    db $e3                                        ; $60a8: $e3
    ld l, $07                                     ; $60a9: $2e $07
    and b                                         ; $60ab: $a0
    ld bc, $003c                                  ; $60ac: $01 $3c $00
    pop bc                                        ; $60af: $c1
    ld e, [hl]                                    ; $60b0: $5e

jr_092_60b1:
    and c                                         ; $60b1: $a1
    add hl, bc                                    ; $60b2: $09
    ldh a, [$03]                                  ; $60b3: $f0 $03
    inc b                                         ; $60b5: $04
    pop bc                                        ; $60b6: $c1
    nop                                           ; $60b7: $00
    ld b, $82                                     ; $60b8: $06 $82
    rst $38                                       ; $60ba: $ff
    inc bc                                        ; $60bb: $03
    rst $38                                       ; $60bc: $ff
    ld h, e                                       ; $60bd: $63
    add a                                         ; $60be: $87
    jp z, $f500                                   ; $60bf: $ca $00 $f5

    ld a, [de]                                    ; $60c2: $1a
    push hl                                       ; $60c3: $e5
    or l                                          ; $60c4: $b5
    jp z, $fa05                                   ; $60c5: $ca $05 $fa

    add h                                         ; $60c8: $84
    nop                                           ; $60c9: $00
    inc bc                                        ; $60ca: $03
    db $e3                                        ; $60cb: $e3
    inc b                                         ; $60cc: $04
    ld d, e                                       ; $60cd: $53
    and h                                         ; $60ce: $a4
    rst $00                                       ; $60cf: $c7
    ld sp, hl                                     ; $60d0: $f9
    cp l                                          ; $60d1: $bd
    inc b                                         ; $60d2: $04
    ld b, d                                       ; $60d3: $42
    ld d, l                                       ; $60d4: $55
    nop                                           ; $60d5: $00
    cp [hl]                                       ; $60d6: $be
    ld bc, $0e30                                  ; $60d7: $01 $30 $0e
    rst $18                                       ; $60da: $df
    ld a, [hl+]                                   ; $60db: $2a
    ret nz                                        ; $60dc: $c0

    sub b                                         ; $60dd: $90
    rra                                           ; $60de: $1f
    ldh [$0a], a                                  ; $60df: $e0 $0a
    ld [hl], c                                    ; $60e1: $71
    add b                                         ; $60e2: $80
    add sp, $17                                   ; $60e3: $e8 $17
    sbc l                                         ; $60e5: $9d
    ld [c], a                                     ; $60e6: $e2
    jr nz, @+$46                                  ; $60e7: $20 $44

    inc bc                                        ; $60e9: $03
    sub b                                         ; $60ea: $90
    rlca                                          ; $60eb: $07
    and d                                         ; $60ec: $a2
    ld a, e                                       ; $60ed: $7b
    rlca                                          ; $60ee: $07
    rst $30                                       ; $60ef: $f7
    ld [$b0c0], sp                                ; $60f0: $08 $c0 $b0
    dec h                                         ; $60f3: $25
    halt                                          ; $60f4: $76
    ld bc, $e897                                  ; $60f5: $01 $97 $e8
    sub d                                         ; $60f8: $92
    dec b                                         ; $60f9: $05
    db $f4                                        ; $60fa: $f4
    ld a, [bc]                                    ; $60fb: $0a
    nop                                           ; $60fc: $00
    xor e                                         ; $60fd: $ab

jr_092_60fe:
    call nc, $2ad5                                ; $60fe: $d4 $d5 $2a
    ld [$6b00], a                                 ; $6101: $ea $00 $6b
    add b                                         ; $6104: $80
    ld [bc], a                                    ; $6105: $02
    dec [hl]                                      ; $6106: $35
    jp nz, $857a                                  ; $6107: $c2 $7a $85

    add hl, hl                                    ; $610a: $29
    add $1e                                       ; $610b: $c6 $1e
    dec c                                         ; $610d: $0d
    ld b, e                                       ; $610e: $43
    nop                                           ; $610f: $00
    add b                                         ; $6110: $80
    call $f400                                    ; $6111: $cd $00 $f4
    dec bc                                        ; $6114: $0b
    ld b, l                                       ; $6115: $45
    cp a                                          ; $6116: $bf
    sbc [hl]                                      ; $6117: $9e
    ld b, b                                       ; $6118: $40
    ld a, a                                       ; $6119: $7f
    ld b, b                                       ; $611a: $40
    jr z, jr_092_60b1                             ; $611b: $28 $94

    db $eb                                        ; $611d: $eb
    xor d                                         ; $611e: $aa
    ld d, l                                       ; $611f: $55
    ld e, l                                       ; $6120: $5d
    and d                                         ; $6121: $a2
    nop                                           ; $6122: $00
    db $eb                                        ; $6123: $eb
    db $10                                        ; $6124: $10
    ld l, a                                       ; $6125: $6f
    sub a                                         ; $6126: $97
    rst $38                                       ; $6127: $ff
    nop                                           ; $6128: $00
    push de                                       ; $6129: $d5
    ld a, [hl+]                                   ; $612a: $2a
    nop                                           ; $612b: $00
    ld l, $01                                     ; $612c: $2e $01
    add c                                         ; $612e: $81
    nop                                           ; $612f: $00
    or d                                          ; $6130: $b2
    ld b, c                                       ; $6131: $41
    sub a                                         ; $6132: $97
    add sp, $24                                   ; $6133: $e8 $24
    ld d, d                                       ; $6135: $52
    db $fd                                        ; $6136: $fd
    ld [hl], b                                    ; $6137: $70
    dec bc                                        ; $6138: $0b
    rra                                           ; $6139: $1f
    ldh [$d0], a                                  ; $613a: $e0 $d0
    ld a, [bc]                                    ; $613c: $0a
    cp h                                          ; $613d: $bc
    ld b, b                                       ; $613e: $40
    nop                                           ; $613f: $00
    ld d, l                                       ; $6140: $55
    xor d                                         ; $6141: $aa
    sub h                                         ; $6142: $94
    ld a, a                                       ; $6143: $7f
    xor b                                         ; $6144: $a8
    ld d, a                                       ; $6145: $57
    xor a                                         ; $6146: $af
    ld d, b                                       ; $6147: $50
    nop                                           ; $6148: $00

jr_092_6149:
    ld a, [hl+]                                   ; $6149: $2a
    dec d                                         ; $614a: $15
    inc d                                         ; $614b: $14
    ccf                                           ; $614c: $3f
    adc c                                         ; $614d: $89
    ld a, $33                                     ; $614e: $3e $33
    call c, $2080                                 ; $6150: $dc $80 $20
    ld b, $c7                                     ; $6153: $06 $c7
    inc de                                        ; $6155: $13
    rst $28                                       ; $6156: $ef
    cp a                                          ; $6157: $bf
    ld b, c                                       ; $6158: $41
    ld [hl], d                                    ; $6159: $72
    rrca                                          ; $615a: $0f
    ld [bc], a                                    ; $615b: $02
    dec hl                                        ; $615c: $2b
    rlca                                          ; $615d: $07
    rst $10                                       ; $615e: $d7
    inc bc                                        ; $615f: $03
    ccf                                           ; $6160: $3f
    ret nz                                        ; $6161: $c0

    nop                                           ; $6162: $00
    ld c, $55                                     ; $6163: $0e $55
    ld bc, $7eaa                                  ; $6165: $01 $aa $7e
    add c                                         ; $6168: $81
    jr jr_092_618b                                ; $6169: $18 $20

    sub l                                         ; $616b: $95
    jr nz, jr_092_60fe                            ; $616c: $20 $90

    inc de                                        ; $616e: $13
    inc de                                        ; $616f: $13
    ld e, l                                       ; $6170: $5d
    rst $10                                       ; $6171: $d7
    jr z, jr_092_6194                             ; $6172: $28 $20

    ld e, $7d                                     ; $6174: $1e $7d
    add b                                         ; $6176: $80
    or b                                          ; $6177: $b0
    ld b, $b0                                     ; $6178: $06 $b0
    ld de, $fd00                                  ; $617a: $11 $00 $fd
    ld [bc], a                                    ; $617d: $02
    xor a                                         ; $617e: $af
    ld d, l                                       ; $617f: $55
    inc sp                                        ; $6180: $33
    rrca                                          ; $6181: $0f
    ld a, [de]                                    ; $6182: $1a
    dec h                                         ; $6183: $25
    nop                                           ; $6184: $00
    sub l                                         ; $6185: $95
    ld a, [hl+]                                   ; $6186: $2a
    jr nc, jr_092_6149                            ; $6187: $30 $c0

    ld a, [hl]                                    ; $6189: $7e
    add c                                         ; $618a: $81

jr_092_618b:
    sub l                                         ; $618b: $95
    ld [$5300], a                                 ; $618c: $ea $00 $53
    xor a                                         ; $618f: $af
    xor [hl]                                      ; $6190: $ae
    ld d, c                                       ; $6191: $51
    jr z, @-$3e                                   ; $6192: $28 $c0

jr_092_6194:
    push af                                       ; $6194: $f5
    nop                                           ; $6195: $00
    ld hl, $8057                                  ; $6196: $21 $57 $80
    ldh a, [rNR33]                                ; $6199: $f0 $1d
    inc de                                        ; $619b: $13
    rst $28                                       ; $619c: $ef
    xor c                                         ; $619d: $a9
    ld d, a                                       ; $619e: $57
    sub b                                         ; $619f: $90
    add hl, bc                                    ; $61a0: $09
    nop                                           ; $61a1: $00
    db $dd                                        ; $61a2: $dd
    nop                                           ; $61a3: $00
    ld b, l                                       ; $61a4: $45
    ld [bc], a                                    ; $61a5: $02
    xor b                                         ; $61a6: $a8
    ld b, e                                       ; $61a7: $43
    ld d, h                                       ; $61a8: $54
    and e                                         ; $61a9: $a3
    nop                                           ; $61aa: $00
    ld d, a                                       ; $61ab: $57
    xor b                                         ; $61ac: $a8

jr_092_61ad:
    ld [hl], a                                    ; $61ad: $77
    adc b                                         ; $61ae: $88
    dec d                                         ; $61af: $15
    ld a, [hl+]                                   ; $61b0: $2a
    sbc d                                         ; $61b1: $9a
    dec h                                         ; $61b2: $25
    jr nz, jr_092_6220                            ; $61b3: $20 $6b

    add b                                         ; $61b5: $80
    nop                                           ; $61b6: $00
    ld a, [bc]                                    ; $61b7: $0a
    cp d                                          ; $61b8: $ba
    ld b, a                                       ; $61b9: $47
    sub a                                         ; $61ba: $97
    inc bc                                        ; $61bb: $03
    ld a, [hl]                                    ; $61bc: $7e
    db $10                                        ; $61bd: $10
    ld bc, $a85f                                  ; $61be: $01 $5f $a8
    ld b, h                                       ; $61c1: $44
    rlca                                          ; $61c2: $07
    ld a, [bc]                                    ; $61c3: $0a
    ld e, a                                       ; $61c4: $5f
    nop                                           ; $61c5: $00
    ld [hl], a                                    ; $61c6: $77
    nop                                           ; $61c7: $00
    adc b                                         ; $61c8: $88
    adc c                                         ; $61c9: $89
    ld a, [hl]                                    ; $61ca: $7e
    ld a, [de]                                    ; $61cb: $1a
    push hl                                       ; $61cc: $e5
    or a                                          ; $61cd: $b7
    ret z                                         ; $61ce: $c8

    ld a, [de]                                    ; $61cf: $1a
    ld bc, $33e7                                  ; $61d0: $01 $e7 $33
    rst $00                                       ; $61d3: $c7
    ld l, a                                       ; $61d4: $6f
    sub e                                         ; $61d5: $93
    ld l, a                                       ; $61d6: $6f
    db $10                                        ; $61d7: $10
    db $10                                        ; $61d8: $10
    ld a, [de]                                    ; $61d9: $1a
    nop                                           ; $61da: $00
    xor e                                         ; $61db: $ab
    ld d, b                                       ; $61dc: $50
    dec hl                                        ; $61dd: $2b
    inc d                                         ; $61de: $14
    ld d, $28                                     ; $61df: $16 $28
    add l                                         ; $61e1: $85
    ld [hl+], a                                   ; $61e2: $22
    nop                                           ; $61e3: $00
    jr c, jr_092_61ad                             ; $61e4: $38 $c7

    ei                                            ; $61e6: $fb
    rrca                                          ; $61e7: $0f

jr_092_61e8:
    ld d, l                                       ; $61e8: $55
    xor e                                         ; $61e9: $ab
    sub h                                         ; $61ea: $94
    ld a, a                                       ; $61eb: $7f
    ld a, [bc]                                    ; $61ec: $0a
    ld a, [hl]                                    ; $61ed: $7e
    add a                                         ; $61ee: $87
    cp e                                          ; $61ef: $bb
    ld b, a                                       ; $61f0: $47
    ret nz                                        ; $61f1: $c0

    dec bc                                        ; $61f2: $0b
    ld d, h                                       ; $61f3: $54
    call nz, $6904                                ; $61f4: $c4 $04 $69
    ld e, b                                       ; $61f7: $58
    cp $b0                                        ; $61f8: $fe $b0
    ld l, $a5                                     ; $61fa: $2e $a5
    jr nc, jr_092_6200                            ; $61fc: $30 $02

    ldh a, [rIF]                                  ; $61fe: $f0 $0f

jr_092_6200:
    add hl, hl                                    ; $6200: $29
    rst $00                                       ; $6201: $c7
    jp nz, $fd13                                  ; $6202: $c2 $13 $fd

    rst $10                                       ; $6205: $d7
    jr z, jr_092_61e8                             ; $6206: $28 $e0

    add hl, bc                                    ; $6208: $09
    xor [hl]                                      ; $6209: $ae
    ld d, c                                       ; $620a: $51
    ldh a, [rIF]                                  ; $620b: $f0 $0f
    ldh a, [$0b]                                  ; $620d: $f0 $0b
    ld [bc], a                                    ; $620f: $02
    or a                                          ; $6210: $b7
    ld c, d                                       ; $6211: $4a
    ld a, a                                       ; $6212: $7f
    nop                                           ; $6213: $00
    or b                                          ; $6214: $b0
    rrca                                          ; $6215: $0f
    db $10                                        ; $6216: $10
    ld e, $a8                                     ; $6217: $1e $a8
    sub b                                         ; $6219: $90
    cp d                                          ; $621a: $ba
    ld [bc], a                                    ; $621b: $02
    ld a, a                                       ; $621c: $7f
    nop                                           ; $621d: $00
    ld d, b                                       ; $621e: $50
    inc a                                         ; $621f: $3c

jr_092_6220:
    ld d, c                                       ; $6220: $51
    inc bc                                        ; $6221: $03
    xor l                                         ; $6222: $ad
    ld b, e                                       ; $6223: $43
    ld [bc], a                                    ; $6224: $02
    ld a, [hl]                                    ; $6225: $7e
    add c                                         ; $6226: $81
    adc d                                         ; $6227: $8a
    ld d, c                                       ; $6228: $51
    ld h, a                                       ; $6229: $67
    adc b                                         ; $622a: $88
    ld b, b                                       ; $622b: $40
    dec de                                        ; $622c: $1b
    ld h, a                                       ; $622d: $67
    nop                                           ; $622e: $00
    ld hl, sp-$52                                 ; $622f: $f8 $ae
    ld d, c                                       ; $6231: $51
    dec [hl]                                      ; $6232: $35
    ld a, [bc]                                    ; $6233: $0a
    dec bc                                        ; $6234: $0b
    inc [hl]                                      ; $6235: $34
    sub b                                         ; $6236: $90
    db $10                                        ; $6237: $10
    cpl                                           ; $6238: $2f
    inc a                                         ; $6239: $3c
    jp Jump_000_0920                              ; $623a: $c3 $20 $09


    sbc d                                         ; $623d: $9a
    dec h                                         ; $623e: $25
    ld l, d                                       ; $623f: $6a
    rra                                           ; $6240: $1f
    nop                                           ; $6241: $00
    db $ed                                        ; $6242: $ed
    ld [de], a                                    ; $6243: $12
    inc [hl]                                      ; $6244: $34
    ret nz                                        ; $6245: $c0

    and c                                         ; $6246: $a1
    nop                                           ; $6247: $00
    db $fd                                        ; $6248: $fd
    ld [bc], a                                    ; $6249: $02
    nop                                           ; $624a: $00
    rra                                           ; $624b: $1f
    ldh [rBCPD], a                                ; $624c: $e0 $69
    add b                                         ; $624e: $80
    ld l, d                                       ; $624f: $6a
    add l                                         ; $6250: $85
    add l                                         ; $6251: $85
    ld a, [$6e00]                                 ; $6252: $fa $00 $6e
    ld sp, hl                                     ; $6255: $f9
    push de                                       ; $6256: $d5
    ld hl, sp+$4f                                 ; $6257: $f8 $4f
    or b                                          ; $6259: $b0
    call nc, Call_000_112b                        ; $625a: $d4 $2b $11
    adc d                                         ; $625d: $8a
    inc bc                                        ; $625e: $03
    cpl                                           ; $625f: $2f
    ldh a, [rNR13]                                ; $6260: $f0 $13
    ld [hl], l                                    ; $6262: $75
    sbc [hl]                                      ; $6263: $9e
    ld a, a                                       ; $6264: $7f
    ldh a, [$03]                                  ; $6265: $f0 $03
    add b                                         ; $6267: $80
    ld [hl], b                                    ; $6268: $70
    jr nz, jr_092_6298                            ; $6269: $20 $2d

    ld l, a                                       ; $626b: $6f
    ld e, $f2                                     ; $626c: $1e $f2
    rrca                                          ; $626e: $0f
    dec e                                         ; $626f: $1d
    jp nz, $af08                                  ; $6270: $c2 $08 $af

    nop                                           ; $6273: $00
    db $fc                                        ; $6274: $fc
    ld [bc], a                                    ; $6275: $02
    and b                                         ; $6276: $a0
    ld c, $6a                                     ; $6277: $0e $6a
    sub l                                         ; $6279: $95
    ld d, l                                       ; $627a: $55
    nop                                           ; $627b: $00
    xor e                                         ; $627c: $ab
    xor $11                                       ; $627d: $ee $11
    dec de                                        ; $627f: $1b
    jr nz, @-$1a                                  ; $6280: $20 $e4

    db $10                                        ; $6282: $10
    jp nc, $2c00                                  ; $6283: $d2 $00 $2c

    ccf                                           ; $6286: $3f
    ret nc                                        ; $6287: $d0

    ret nc                                        ; $6288: $d0

    cpl                                           ; $6289: $2f
    ld c, d                                       ; $628a: $4a
    push af                                       ; $628b: $f5
    xor d                                         ; $628c: $aa
    ld [$2d55], sp                                ; $628d: $08 $55 $2d
    ld [de], a                                    ; $6290: $12
    inc d                                         ; $6291: $14
    ld [hl-], a                                   ; $6292: $32
    inc bc                                        ; $6293: $03
    dec a                                         ; $6294: $3d
    jp nz, Jump_000_145f                          ; $6295: $c2 $5f $14

jr_092_6298:
    and b                                         ; $6298: $a0
    ld l, c                                       ; $6299: $69
    add b                                         ; $629a: $80
    ld d, b                                       ; $629b: $50
    ld e, $fd                                     ; $629c: $1e $fd
    add b                                         ; $629e: $80
    inc b                                         ; $629f: $04
    ld e, h                                       ; $62a0: $5c
    cp a                                          ; $62a1: $bf
    ld [$5ca3], sp                                ; $62a2: $08 $a3 $5c
    cp $01                                        ; $62a5: $fe $01
    db $10                                        ; $62a7: $10
    dec c                                         ; $62a8: $0d
    ld a, a                                       ; $62a9: $7f
    ldh [rHDMA4], a                               ; $62aa: $e0 $54
    nop                                           ; $62ac: $00
    ei                                            ; $62ad: $fb
    xor a                                         ; $62ae: $af
    ld d, b                                       ; $62af: $50
    ld a, [hl-]                                   ; $62b0: $3a
    nop                                           ; $62b1: $00
    call $a800                                    ; $62b2: $cd $00 $a8
    nop                                           ; $62b5: $00
    ld d, a                                       ; $62b6: $57
    ld h, l                                       ; $62b7: $65
    ld a, [$41be]                                 ; $62b8: $fa $be $41
    ld a, [hl-]                                   ; $62bb: $3a
    rlca                                          ; $62bc: $07
    ld b, e                                       ; $62bd: $43
    inc b                                         ; $62be: $04
    add a                                         ; $62bf: $87
    rst $08                                       ; $62c0: $cf
    inc bc                                        ; $62c1: $03
    rst $38                                       ; $62c2: $ff
    nop                                           ; $62c3: $00
    ldh [$09], a                                  ; $62c4: $e0 $09
    xor d                                         ; $62c6: $aa
    ld d, l                                       ; $62c7: $55
    nop                                           ; $62c8: $00
    ccf                                           ; $62c9: $3f
    ret nz                                        ; $62ca: $c0

    ld a, [$a307]                                 ; $62cb: $fa $07 $a3
    rra                                           ; $62ce: $1f
    ld [hl], a                                    ; $62cf: $77
    dec bc                                        ; $62d0: $0b
    jr nz, jr_092_6342                            ; $62d1: $20 $6f

    sub b                                         ; $62d3: $90
    sub b                                         ; $62d4: $90
    rrca                                          ; $62d5: $0f
    and h                                         ; $62d6: $a4
    ld e, a                                       ; $62d7: $5f
    cp $07                                        ; $62d8: $fe $07
    ld e, e                                       ; $62da: $5b
    ld bc, $5b07                                  ; $62db: $01 $07 $5b
    and h                                         ; $62de: $a4
    sub h                                         ; $62df: $94
    ei                                            ; $62e0: $fb
    xor c                                         ; $62e1: $a9
    halt                                          ; $62e2: $76
    sub b                                         ; $62e3: $90
    ld [bc], a                                    ; $62e4: $02
    ld d, $00                                     ; $62e5: $16 $00
    ld [$7017], a                                 ; $62e7: $ea $17 $70
    jr jr_092_6361                                ; $62ea: $18 $75

    ld [hl], b                                    ; $62ec: $70
    daa                                           ; $62ed: $27
    ld [hl], b                                    ; $62ee: $70
    dec hl                                        ; $62ef: $2b
    cp a                                          ; $62f0: $bf
    add b                                         ; $62f1: $80
    add b                                         ; $62f2: $80
    ld hl, $a55a                                  ; $62f3: $21 $5a $a5
    ld a, [hl]                                    ; $62f6: $7e
    adc e                                         ; $62f7: $8b
    dec e                                         ; $62f8: $1d
    ld [hl+], a                                   ; $62f9: $22
    sub h                                         ; $62fa: $94
    nop                                           ; $62fb: $00
    jr nz, @+$63                                  ; $62fc: $20 $61

    add b                                         ; $62fe: $80
    cp l                                          ; $62ff: $bd
    ld b, d                                       ; $6300: $42
    cp a                                          ; $6301: $bf
    ld b, b                                       ; $6302: $40
    ld l, c                                       ; $6303: $69
    ld b, c                                       ; $6304: $41
    add b                                         ; $6305: $80
    ldh a, [$27]                                  ; $6306: $f0 $27
    add d                                         ; $6308: $82
    push de                                       ; $6309: $d5
    dec hl                                        ; $630a: $2b
    ld l, e                                       ; $630b: $6b

jr_092_630c:
    sub h                                         ; $630c: $94
    and b                                         ; $630d: $a0
    inc c                                         ; $630e: $0c
    nop                                           ; $630f: $00
    jr z, @-$37                                   ; $6310: $28 $c7

    jp $d4fc                                      ; $6312: $c3 $fc $d4


    dec hl                                        ; $6315: $2b
    set 6, h                                      ; $6316: $cb $f4
    jr nc, @+$66                                  ; $6318: $30 $64

    ld a, [$1b10]                                 ; $631a: $fa $10 $1b
    add b                                         ; $631d: $80
    dec c                                         ; $631e: $0d
    ld l, a                                       ; $631f: $6f
    ld hl, sp-$01                                 ; $6320: $f8 $ff
    add b                                         ; $6322: $80
    ld h, b                                       ; $6323: $60
    ldh a, [rLCDC]                                ; $6324: $f0 $40
    ld hl, $1f00                                  ; $6326: $21 $00 $1f
    rst $38                                       ; $6329: $ff
    nop                                           ; $632a: $00
    ld [hl], h                                    ; $632b: $74
    nop                                           ; $632c: $00
    sub d                                         ; $632d: $92
    ld b, b                                       ; $632e: $40
    ld l, h                                       ; $632f: $6c
    ret nz                                        ; $6330: $c0

    inc c                                         ; $6331: $0c
    ld d, a                                       ; $6332: $57
    db $eb                                        ; $6333: $eb
    ld a, [hl]                                    ; $6334: $7e
    add c                                         ; $6335: $81
    or a                                          ; $6336: $b7
    ld c, b                                       ; $6337: $48
    and b                                         ; $6338: $a0
    ret nc                                        ; $6339: $d0

    dec bc                                        ; $633a: $0b
    ld e, l                                       ; $633b: $5d
    ret nc                                        ; $633c: $d0

    inc bc                                        ; $633d: $03
    cp e                                          ; $633e: $bb
    ld b, [hl]                                    ; $633f: $46
    push de                                       ; $6340: $d5
    ld a, [hl+]                                   ; $6341: $2a

jr_092_6342:
    xor $00                                       ; $6342: $ee $00
    db $10                                        ; $6344: $10
    ldh [rP1], a                                  ; $6345: $e0 $00

jr_092_6347:
    jp nz, $d500                                  ; $6347: $c2 $00 $d5

    ld [bc], a                                    ; $634a: $02
    ld [$0140], a                                 ; $634b: $ea $40 $01
    pop de                                        ; $634e: $d1
    inc c                                         ; $634f: $0c
    ld [hl], a                                    ; $6350: $77
    adc b                                         ; $6351: $88
    and b                                         ; $6352: $a0
    nop                                           ; $6353: $00
    ld d, l                                       ; $6354: $55
    ld [$0a02], sp                                ; $6355: $08 $02 $0a
    nop                                           ; $6358: $00
    ld e, e                                       ; $6359: $5b
    inc b                                         ; $635a: $04
    and c                                         ; $635b: $a1
    ld b, b                                       ; $635c: $40
    db $10                                        ; $635d: $10
    jr @+$57                                      ; $635e: $18 $55

    nop                                           ; $6360: $00

jr_092_6361:
    nop                                           ; $6361: $00
    ld [hl+], a                                   ; $6362: $22
    ld bc, $0090                                  ; $6363: $01 $90 $00
    inc a                                         ; $6366: $3c
    nop                                           ; $6367: $00
    ld h, l                                       ; $6368: $65
    ld b, b                                       ; $6369: $40
    add d                                         ; $636a: $82
    pop af                                        ; $636b: $f1
    inc c                                         ; $636c: $0c
    ld [hl], l                                    ; $636d: $75
    adc d                                         ; $636e: $8a
    ld bc, $6600                                  ; $636f: $01 $00 $66
    add b                                         ; $6372: $80
    ld [bc], a                                    ; $6373: $02
    ld bc, $4a00                                  ; $6374: $01 $00 $4a
    jr nc, jr_092_630c                            ; $6377: $30 $93

    inc c                                         ; $6379: $0c
    ld bc, $d60d                                  ; $637a: $01 $0d $d6
    ld bc, $d529                                  ; $637d: $01 $29 $d5
    nop                                           ; $6380: $00
    ld [$d500], a                                 ; $6381: $ea $00 $d5
    jr z, @+$06                                   ; $6384: $28 $04

    nop                                           ; $6386: $00
    ld b, b                                       ; $6387: $40
    nop                                           ; $6388: $00
    ld de, $bf0d                                  ; $6389: $11 $0d $bf
    ld b, b                                       ; $638c: $40
    ld d, l                                       ; $638d: $55
    and b                                         ; $638e: $a0
    xor d                                         ; $638f: $aa
    inc b                                         ; $6390: $04
    ld [bc], a                                    ; $6391: $02
    ld d, l                                       ; $6392: $55
    nop                                           ; $6393: $00
    xor [hl]                                      ; $6394: $ae
    nop                                           ; $6395: $00
    ld d, a                                       ; $6396: $57
    and b                                         ; $6397: $a0
    ld hl, $550d                                  ; $6398: $21 $0d $55
    jr nz, jr_092_6347                            ; $639b: $20 $aa

    cp l                                          ; $639d: $bd
    jr nz, jr_092_63a0                            ; $639e: $20 $00

jr_092_63a0:
    ld [hl], l                                    ; $63a0: $75
    nop                                           ; $63a1: $00
    ld [$7504], a                                 ; $63a2: $ea $04 $75
    add b                                         ; $63a5: $80

jr_092_63a6:
    jr nz, jr_092_63b8                            ; $63a6: $20 $10

    ld a, [$d505]                                 ; $63a8: $fa $05 $d5

jr_092_63ab:
    ld [bc], a                                    ; $63ab: $02
    xor d                                         ; $63ac: $aa
    ld bc, $0855                                  ; $63ad: $01 $55 $08
    add b                                         ; $63b0: $80
    xor d                                         ; $63b1: $aa
    nop                                           ; $63b2: $00
    ld d, l                                       ; $63b3: $55
    jr nz, jr_092_63c6                            ; $63b4: $20 $10

    ld a, d                                       ; $63b6: $7a
    add l                                         ; $63b7: $85

jr_092_63b8:
    or a                                          ; $63b8: $b7
    nop                                           ; $63b9: $00
    ld c, b                                       ; $63ba: $48
    ld a, a                                       ; $63bb: $7f
    add b                                         ; $63bc: $80
    cp a                                          ; $63bd: $bf
    ld b, b                                       ; $63be: $40
    ld d, [hl]                                    ; $63bf: $56
    xor c                                         ; $63c0: $a9
    cp l                                          ; $63c1: $bd
    ld b, b                                       ; $63c2: $40
    ld b, d                                       ; $63c3: $42
    ld d, c                                       ; $63c4: $51
    dec c                                         ; $63c5: $0d

jr_092_63c6:
    xor [hl]                                      ; $63c6: $ae
    ld d, c                                       ; $63c7: $51
    rst $38                                       ; $63c8: $ff
    nop                                           ; $63c9: $00
    or $09                                        ; $63ca: $f6 $09
    ld [bc], a                                    ; $63cc: $02
    ld a, a                                       ; $63cd: $7f
    add b                                         ; $63ce: $80
    di                                            ; $63cf: $f3
    inc c                                         ; $63d0: $0c
    rst $08                                       ; $63d1: $cf
    jr nc, jr_092_6435                            ; $63d2: $30 $61

    dec c                                         ; $63d4: $0d

jr_092_63d5:
    xor $00                                       ; $63d5: $ee $00
    ld de, $00ff                                  ; $63d7: $11 $ff $00
    halt                                          ; $63da: $76
    adc c                                         ; $63db: $89
    ei                                            ; $63dc: $fb
    inc b                                         ; $63dd: $04
    rst $38                                       ; $63de: $ff
    stop                                          ; $63df: $10 $00
    cp [hl]                                       ; $63e1: $be
    ld b, c                                       ; $63e2: $41
    db $10                                        ; $63e3: $10
    jr z, jr_092_63d5                             ; $63e4: $28 $ef

    db $10                                        ; $63e6: $10
    cp a                                          ; $63e7: $bf
    ld b, b                                       ; $63e8: $40
    ld [$20df], sp                                ; $63e9: $08 $df $20
    db $fd                                        ; $63ec: $fd
    ld [bc], a                                    ; $63ed: $02
    add c                                         ; $63ee: $81
    dec c                                         ; $63ef: $0d
    add hl, hl                                    ; $63f0: $29
    sub $12                                       ; $63f1: $d6 $12
    nop                                           ; $63f3: $00
    db $ed                                        ; $63f4: $ed
    ld bc, $2afe                                  ; $63f5: $01 $fe $2a
    push de                                       ; $63f8: $d5
    dec d                                         ; $63f9: $15
    ld [$4f2a], a                                 ; $63fa: $ea $2a $4f
    push de                                       ; $63fd: $d5
    ld [hl], b                                    ; $63fe: $70
    jr jr_092_63ab                                ; $63ff: $18 $aa

    ld d, l                                       ; $6401: $55
    inc b                                         ; $6402: $04
    jr z, jr_092_63a6                             ; $6403: $28 $a1

    dec c                                         ; $6405: $0d
    ldh a, [rTIMA]                                ; $6406: $f0 $05
    db $10                                        ; $6408: $10
    ld d, b                                       ; $6409: $50
    db $10                                        ; $640a: $10
    ld l, [hl]                                    ; $640b: $6e
    ld de, $a0af                                  ; $640c: $11 $af $a0
    ld [bc], a                                    ; $640f: $02
    ld [$8520], sp                                ; $6410: $08 $20 $85
    jr nz, jr_092_6415                            ; $6413: $20 $00

jr_092_6415:
    ld l, $c1                                     ; $6415: $2e $c1
    ld d, l                                       ; $6417: $55
    xor d                                         ; $6418: $aa
    dec b                                         ; $6419: $05
    rst $38                                       ; $641a: $ff
    ld e, a                                       ; $641b: $5f
    and b                                         ; $641c: $a0
    nop                                           ; $641d: $00
    xor e                                         ; $641e: $ab
    db $10                                        ; $641f: $10
    rla                                           ; $6420: $17
    nop                                           ; $6421: $00
    dec hl                                        ; $6422: $2b
    nop                                           ; $6423: $00
    sub e                                         ; $6424: $93
    nop                                           ; $6425: $00
    ld b, b                                       ; $6426: $40
    xor e                                         ; $6427: $ab
    ldh a, [rNR10]                                ; $6428: $f0 $10
    push de                                       ; $642a: $d5
    ld a, [hl+]                                   ; $642b: $2a
    ld l, e                                       ; $642c: $6b
    inc d                                         ; $642d: $14
    rst $10                                       ; $642e: $d7
    jr z, jr_092_6435                             ; $642f: $28 $04

    ld l, e                                       ; $6431: $6b
    nop                                           ; $6432: $00
    cp a                                          ; $6433: $bf
    nop                                           ; $6434: $00

jr_092_6435:
    ld d, a                                       ; $6435: $57
    ret nc                                        ; $6436: $d0

    db $10                                        ; $6437: $10
    xor d                                         ; $6438: $aa
    ld d, l                                       ; $6439: $55
    ld [hl+], a                                   ; $643a: $22
    push af                                       ; $643b: $f5
    ld a, [bc]                                    ; $643c: $0a
    ld l, b                                       ; $643d: $68
    rrca                                          ; $643e: $0f
    cp [hl]                                       ; $643f: $be
    ld b, c                                       ; $6440: $41
    ld a, l                                       ; $6441: $7d
    nop                                           ; $6442: $00
    ld de, $0640                                  ; $6443: $11 $40 $06
    cp a                                          ; $6446: $bf
    xor b                                         ; $6447: $a8
    ld d, a                                       ; $6448: $57
    ld d, h                                       ; $6449: $54
    xor e                                         ; $644a: $ab
    inc b                                         ; $644b: $04
    jr @+$03                                      ; $644c: $18 $01

    ld c, $e6                                     ; $644e: $0e $e6
    ld b, b                                       ; $6450: $40
    ld sp, hl                                     ; $6451: $f9
    or $0f                                        ; $6452: $f6 $0f
    rst $38                                       ; $6454: $ff
    rst $38                                       ; $6455: $ff
    ld [$74f7], a                                 ; $6456: $ea $f7 $74
    ei                                            ; $6459: $fb
    nop                                           ; $645a: $00
    cp d                                          ; $645b: $ba
    ld a, l                                       ; $645c: $7d
    dec a                                         ; $645d: $3d
    db $fc                                        ; $645e: $fc
    ld hl, sp+$7f                                 ; $645f: $f8 $7f
    ld a, l                                       ; $6461: $7d
    cp $50                                        ; $6462: $fe $50
    cp $b0                                        ; $6464: $fe $b0
    dec b                                         ; $6466: $05
    ld sp, hl                                     ; $6467: $f9
    cp h                                          ; $6468: $bc
    rlca                                          ; $6469: $07
    ld a, [hl]                                    ; $646a: $7e
    ei                                            ; $646b: $fb
    ld a, c                                       ; $646c: $79
    rst $38                                       ; $646d: $ff
    ld [bc], a                                    ; $646e: $02
    ld a, l                                       ; $646f: $7d
    ei                                            ; $6470: $fb
    ei                                            ; $6471: $fb
    ei                                            ; $6472: $fb
    pop af                                        ; $6473: $f1
    ei                                            ; $6474: $fb
    ld e, b                                       ; $6475: $58
    nop                                           ; $6476: $00
    rst $38                                       ; $6477: $ff
    ld bc, $ff80                                  ; $6478: $01 $80 $ff
    ld a, a                                       ; $647b: $7f
    add b                                         ; $647c: $80
    add b                                         ; $647d: $80
    nop                                           ; $647e: $00
    ld a, a                                       ; $647f: $7f
    sub b                                         ; $6480: $90
    ld b, $40                                     ; $6481: $06 $40
    cp $fe                                        ; $6483: $fe $fe
    rlca                                          ; $6485: $07
    ld d, [hl]                                    ; $6486: $56
    rst $28                                       ; $6487: $ef
    cpl                                           ; $6488: $2f
    rst $18                                       ; $6489: $df
    ld e, a                                       ; $648a: $5f
    cp a                                          ; $648b: $bf
    nop                                           ; $648c: $00
    cp a                                          ; $648d: $bf
    ccf                                           ; $648e: $3f
    sbc a                                         ; $648f: $9f
    ld a, a                                       ; $6490: $7f
    ccf                                           ; $6491: $3f
    ld a, a                                       ; $6492: $7f
    ld a, a                                       ; $6493: $7f
    rst $38                                       ; $6494: $ff
    nop                                           ; $6495: $00
    rst $18                                       ; $6496: $df
    rst $38                                       ; $6497: $ff
    ld e, $ff                                     ; $6498: $1e $ff
    ld a, $ff                                     ; $649a: $3e $ff
    cp $df                                        ; $649c: $fe $df
    nop                                           ; $649e: $00
    sbc a                                         ; $649f: $9f
    rst $38                                       ; $64a0: $ff
    cp a                                          ; $64a1: $bf
    rst $18                                       ; $64a2: $df
    rst $38                                       ; $64a3: $ff
    rst $18                                       ; $64a4: $df
    adc a                                         ; $64a5: $8f
    rst $18                                       ; $64a6: $df
    db $10                                        ; $64a7: $10
    rst $38                                       ; $64a8: $ff
    rst $38                                       ; $64a9: $ff
    ld d, h                                       ; $64aa: $54
    sub b                                         ; $64ab: $90
    inc b                                         ; $64ac: $04
    cp $01                                        ; $64ad: $fe $01
    ld bc, $0000                                  ; $64af: $01 $00 $00
    sub h                                         ; $64b2: $94
    rst $28                                       ; $64b3: $ef
    xor e                                         ; $64b4: $ab
    ld d, h                                       ; $64b5: $54
    sub c                                         ; $64b6: $91
    ld l, [hl]                                    ; $64b7: $6e
    bit 6, h                                      ; $64b8: $cb $74
    ld [$10ef], sp                                ; $64ba: $08 $ef $10
    ld d, b                                       ; $64bd: $50
    xor a                                         ; $64be: $af
    jr nc, jr_092_64d0                            ; $64bf: $30 $0f

    rst $30                                       ; $64c1: $f7
    jr jr_092_651e                                ; $64c2: $18 $5a

    add hl, bc                                    ; $64c4: $09
    dec a                                         ; $64c5: $3d
    dec [hl]                                      ; $64c6: $35
    ld e, $ff                                     ; $64c7: $1e $ff
    or b                                          ; $64c9: $b0
    ld b, $f8                                     ; $64ca: $06 $f8
    rlca                                          ; $64cc: $07
    ld [$8408], a                                 ; $64cd: $ea $08 $84

jr_092_64d0:
    and b                                         ; $64d0: $a0
    ld l, $a8                                     ; $64d1: $2e $a8
    rlca                                          ; $64d3: $07
    ld e, l                                       ; $64d4: $5d
    ld [bc], a                                    ; $64d5: $02
    ld d, b                                       ; $64d6: $50
    dec bc                                        ; $64d7: $0b
    ld d, c                                       ; $64d8: $51
    nop                                           ; $64d9: $00
    nop                                           ; $64da: $00
    cp [hl]                                       ; $64db: $be
    ld b, b                                       ; $64dc: $40
    ld [hl], d                                    ; $64dd: $72
    add a                                         ; $64de: $87
    adc e                                         ; $64df: $8b
    ld d, a                                       ; $64e0: $57
    ld h, a                                       ; $64e1: $67
    adc e                                         ; $64e2: $8b
    ld hl, $003f                                  ; $64e3: $21 $3f $00
    ld h, b                                       ; $64e6: $60
    ld c, $b9                                     ; $64e7: $0e $b9
    add $51                                       ; $64e9: $c6 $51
    xor [hl]                                      ; $64eb: $ae
    and b                                         ; $64ec: $a0
    dec b                                         ; $64ed: $05
    jr @-$55                                      ; $64ee: $18 $a9

    push af                                       ; $64f0: $f5
    ld a, [bc]                                    ; $64f1: $0a
    or b                                          ; $64f2: $b0
    inc e                                         ; $64f3: $1c
    add b                                         ; $64f4: $80
    dec l                                         ; $64f5: $2d
    ld e, a                                       ; $64f6: $5f
    and b                                         ; $64f7: $a0
    ld b, l                                       ; $64f8: $45
    inc b                                         ; $64f9: $04
    ld [bc], a                                    ; $64fa: $02
    xor c                                         ; $64fb: $a9
    ld b, d                                       ; $64fc: $42
    ld d, l                                       ; $64fd: $55
    and d                                         ; $64fe: $a2
    jr nz, jr_092_651d                            ; $64ff: $20 $1c

    db $fd                                        ; $6501: $fd
    ld [bc], a                                    ; $6502: $02
    ld b, b                                       ; $6503: $40
    ld b, d                                       ; $6504: $42
    and b                                         ; $6505: $a0
    inc b                                         ; $6506: $04
    or l                                          ; $6507: $b5
    ld b, d                                       ; $6508: $42
    ld a, d                                       ; $6509: $7a
    add l                                         ; $650a: $85
    ld a, [hl+]                                   ; $650b: $2a
    push de                                       ; $650c: $d5
    nop                                           ; $650d: $00
    xor e                                         ; $650e: $ab
    db $fc                                        ; $650f: $fc
    ld l, h                                       ; $6510: $6c
    di                                            ; $6511: $f3
    ld d, l                                       ; $6512: $55
    ld a, [$50af]                                 ; $6513: $fa $af $50
    nop                                           ; $6516: $00
    ld d, h                                       ; $6517: $54
    dec hl                                        ; $6518: $2b
    adc $03                                       ; $6519: $ce $03
    xor e                                         ; $651b: $ab
    ld d, a                                       ; $651c: $57

jr_092_651d:
    ld d, a                                       ; $651d: $57

jr_092_651e:
    xor b                                         ; $651e: $a8
    nop                                           ; $651f: $00
    ld a, [hl]                                    ; $6520: $7e
    adc c                                         ; $6521: $89
    add hl, de                                    ; $6522: $19
    ld h, $94                                     ; $6523: $26 $94
    dec sp                                        ; $6525: $3b
    ld l, a                                       ; $6526: $6f
    sub b                                         ; $6527: $90
    db $10                                        ; $6528: $10
    ld a, [hl-]                                   ; $6529: $3a
    nop                                           ; $652a: $00
    db $ed                                        ; $652b: $ed
    ldh [rSC], a                                  ; $652c: $e0 $02
    ld c, c                                       ; $652e: $49
    rst $30                                       ; $652f: $f7
    db $ed                                        ; $6530: $ed
    ei                                            ; $6531: $fb
    inc e                                         ; $6532: $1c
    ld a, $c1                                     ; $6533: $3e $c1
    halt                                          ; $6535: $76
    ldh [$15], a                                  ; $6536: $e0 $15
    ld h, b                                       ; $6538: $60
    dec bc                                        ; $6539: $0b
    db $10                                        ; $653a: $10
    dec de                                        ; $653b: $1b
    cp $01                                        ; $653c: $fe $01
    ld [$0f75], sp                                ; $653e: $08 $75 $0f
    ld c, d                                       ; $6541: $4a
    cp a                                          ; $6542: $bf
    ldh [$0a], a                                  ; $6543: $e0 $0a
    or a                                          ; $6545: $b7
    ld e, b                                       ; $6546: $58
    ld e, d                                       ; $6547: $5a
    ld bc, $b5bd                                  ; $6548: $01 $bd $b5
    ld e, [hl]                                    ; $654b: $5e
    ld e, a                                       ; $654c: $5f
    xor a                                         ; $654d: $af
    xor $11                                       ; $654e: $ee $11
    ld d, b                                       ; $6550: $50
    ld b, $18                                     ; $6551: $06 $18

jr_092_6553:
    ld a, d                                       ; $6553: $7a
    ld b, d                                       ; $6554: $42
    cp l                                          ; $6555: $bd
    jr nz, jr_092_6565                            ; $6556: $20 $0d

    ld b, b                                       ; $6558: $40
    dec [hl]                                      ; $6559: $35
    ld hl, sp-$46                                 ; $655a: $f8 $ba
    ld b, b                                       ; $655c: $40
    nop                                           ; $655d: $00
    ld l, e                                       ; $655e: $6b
    call nc, $e895                                ; $655f: $d4 $95 $e8
    ld [hl], e                                    ; $6562: $73
    add b                                         ; $6563: $80
    and e                                         ; $6564: $a3

jr_092_6565:
    ld b, b                                       ; $6565: $40
    jr nc, jr_092_6553                            ; $6566: $30 $eb

    inc d                                         ; $6568: $14

jr_092_6569:
    ret nc                                        ; $6569: $d0

    jr jr_092_65ac                                ; $656a: $18 $40

    jr z, jr_092_6569                             ; $656c: $28 $fb

    inc b                                         ; $656e: $04
    ld e, c                                       ; $656f: $59
    and [hl]                                      ; $6570: $a6
    ret nz                                        ; $6571: $c0

    ld h, b                                       ; $6572: $60
    inc c                                         ; $6573: $0c
    ldh a, [$0d]                                  ; $6574: $f0 $0d
    scf                                           ; $6576: $37
    ld [$201c], sp                                ; $6577: $08 $1c $20
    sbc c                                         ; $657a: $99
    jr nz, jr_092_657d                            ; $657b: $20 $00

jr_092_657d:
    ld l, $d1                                     ; $657d: $2e $d1
    ld d, h                                       ; $657f: $54
    xor e                                         ; $6580: $ab
    xor c                                         ; $6581: $a9
    cp $3a                                        ; $6582: $fe $3a
    push bc                                       ; $6584: $c5
    nop                                           ; $6585: $00
    rla                                           ; $6586: $17
    add sp, -$6a                                  ; $6587: $e8 $96
    ld a, c                                       ; $6589: $79
    dec hl                                        ; $658a: $2b
    sbc $df                                       ; $658b: $de $df
    jr nz, @+$05                                  ; $658d: $20 $03

    ld d, h                                       ; $658f: $54
    xor e                                         ; $6590: $ab
    sub $2b                                       ; $6591: $d6 $2b
    or a                                          ; $6593: $b7
    ld c, e                                       ; $6594: $4b
    ld [hl], b                                    ; $6595: $70
    inc de                                        ; $6596: $13
    jr nc, jr_092_65ce                            ; $6597: $30 $35

    nop                                           ; $6599: $00
    ld [$4515], a                                 ; $659a: $ea $15 $45
    cp d                                          ; $659d: $ba
    cp d                                          ; $659e: $ba
    ld b, l                                       ; $659f: $45
    xor c                                         ; $65a0: $a9

jr_092_65a1:
    ld d, [hl]                                    ; $65a1: $56
    inc bc                                        ; $65a2: $03

jr_092_65a3:
    rst $10                                       ; $65a3: $d7
    jr z, jr_092_65a1                             ; $65a4: $28 $fb

    inc b                                         ; $65a6: $04
    ld d, b                                       ; $65a7: $50
    rst $28                                       ; $65a8: $ef
    jr nz, jr_092_65b4                            ; $65a9: $20 $09

    ld h, b                                       ; $65ab: $60

jr_092_65ac:
    nop                                           ; $65ac: $00
    nop                                           ; $65ad: $00
    ld [$0df2], a                                 ; $65ae: $ea $f2 $0d
    ld hl, $6bde                                  ; $65b1: $21 $de $6b

jr_092_65b4:
    inc d                                         ; $65b4: $14
    ld d, a                                       ; $65b5: $57
    nop                                           ; $65b6: $00
    jr z, jr_092_65a3                             ; $65b7: $28 $ea

    dec e                                         ; $65b9: $1d
    ld [hl], c                                    ; $65ba: $71
    xor [hl]                                      ; $65bb: $ae
    db $d3                                        ; $65bc: $d3
    inc l                                         ; $65bd: $2c
    xor d                                         ; $65be: $aa
    nop                                           ; $65bf: $00
    ld d, l                                       ; $65c0: $55
    add hl, hl                                    ; $65c1: $29
    rla                                           ; $65c2: $17
    ld d, $29                                     ; $65c3: $16 $29
    adc l                                         ; $65c5: $8d
    ld [hl-], a                                   ; $65c6: $32
    ld h, $40                                     ; $65c7: $26 $40
    reti                                          ; $65c9: $d9


    add b                                         ; $65ca: $80
    ld b, $4b                                     ; $65cb: $06 $4b
    cp d                                          ; $65cd: $ba

jr_092_65ce:
    ld d, l                                       ; $65ce: $55
    ld d, l                                       ; $65cf: $55
    cp [hl]                                       ; $65d0: $be
    ld a, $00                                     ; $65d1: $3e $00
    ei                                            ; $65d3: $fb
    ld h, e                                       ; $65d4: $63
    db $fc                                        ; $65d5: $fc
    dec de                                        ; $65d6: $1b
    db $e4                                        ; $65d7: $e4
    call nc, Call_092_4a2b                        ; $65d8: $d4 $2b $4a
    inc de                                        ; $65db: $13
    cp a                                          ; $65dc: $bf
    ld h, a                                       ; $65dd: $67
    ei                                            ; $65de: $fb
    ld h, b                                       ; $65df: $60
    dec c                                         ; $65e0: $0d
    cp a                                          ; $65e1: $bf
    ld b, b                                       ; $65e2: $40
    nop                                           ; $65e3: $00
    daa                                           ; $65e4: $27
    or b                                          ; $65e5: $b0
    nop                                           ; $65e6: $00
    nop                                           ; $65e7: $00
    ld sp, hl                                     ; $65e8: $f9
    add [hl]                                      ; $65e9: $86
    ld [hl], l                                    ; $65ea: $75
    adc d                                         ; $65eb: $8a
    dec de                                        ; $65ec: $1b
    inc h                                         ; $65ed: $24
    sub [hl]                                      ; $65ee: $96
    add hl, hl                                    ; $65ef: $29
    ld [$9a65], sp                                ; $65f0: $08 $65 $9a
    ld e, b                                       ; $65f3: $58
    and a                                         ; $65f4: $a7
    and b                                         ; $65f5: $a0
    inc c                                         ; $65f6: $0c
    ld h, h                                       ; $65f7: $64
    sbc a                                         ; $65f8: $9f
    cp $04                                        ; $65f9: $fe $04
    add a                                         ; $65fb: $87
    ld l, e                                       ; $65fc: $6b
    rst $30                                       ; $65fd: $f7
    push de                                       ; $65fe: $d5
    ld a, [$16b0]                                 ; $65ff: $fa $b0 $16
    ld [hl], h                                    ; $6602: $74
    cpl                                           ; $6603: $2f
    ld d, b                                       ; $6604: $50
    ret nc                                        ; $6605: $d0

    ld d, b                                       ; $6606: $50
    dec h                                         ; $6607: $25
    add d                                         ; $6608: $82
    nop                                           ; $6609: $00
    inc l                                         ; $660a: $2c
    ld h, a                                       ; $660b: $67
    ld hl, sp-$4c                                 ; $660c: $f8 $b4
    sla b                                         ; $660e: $cb $20
    dec d                                         ; $6610: $15
    ld [$05a0], a                                 ; $6611: $ea $a0 $05
    adc a                                         ; $6614: $8f
    cp h                                          ; $6615: $bc
    ld b, e                                       ; $6616: $43
    ld a, a                                       ; $6617: $7f
    add b                                         ; $6618: $80
    nop                                           ; $6619: $00
    ret nc                                        ; $661a: $d0

    cpl                                           ; $661b: $2f
    ld [hl], a                                    ; $661c: $77
    ret c                                         ; $661d: $d8

    ld a, [$35fd]                                 ; $661e: $fa $fd $35
    sbc $0a                                       ; $6621: $de $0a
    ld a, a                                       ; $6623: $7f
    adc a                                         ; $6624: $8f
    ld h, $d9                                     ; $6625: $26 $d9
    jr nz, jr_092_663a                            ; $6627: $20 $11

    sub [hl]                                      ; $6629: $96
    jr nz, jr_092_6636                            ; $662a: $20 $0a

    db $fd                                        ; $662c: $fd
    nop                                           ; $662d: $00
    rst $38                                       ; $662e: $ff
    or $ff                                        ; $662f: $f6 $ff
    ld sp, hl                                     ; $6631: $f9
    db $fc                                        ; $6632: $fc
    rst $30                                       ; $6633: $f7
    db $fc                                        ; $6634: $fc
    ld a, e                                       ; $6635: $7b

jr_092_6636:
    nop                                           ; $6636: $00
    rst $38                                       ; $6637: $ff
    ld [hl], e                                    ; $6638: $73
    db $fc                                        ; $6639: $fc

jr_092_663a:
    ld a, h                                       ; $663a: $7c
    db $f4                                        ; $663b: $f4
    ld a, a                                       ; $663c: $7f
    db $f4                                        ; $663d: $f4
    di                                            ; $663e: $f3
    nop                                           ; $663f: $00
    db $fc                                        ; $6640: $fc
    ld a, [$f4fd]                                 ; $6641: $fa $fd $f4
    rst $38                                       ; $6644: $ff
    ld sp, hl                                     ; $6645: $f9
    cp $7d                                        ; $6646: $fe $7d
    inc hl                                        ; $6648: $23
    cp $7f                                        ; $6649: $fe $7f
    inc b                                         ; $664b: $04
    nop                                           ; $664c: $00
    rst $38                                       ; $664d: $ff
    cp $fd                                        ; $664e: $fe $fd
    ld [hl-], a                                   ; $6650: $32
    ld [bc], a                                    ; $6651: $02
    jr nz, @+$5c                                  ; $6652: $20 $5a

    nop                                           ; $6654: $00
    ld a, $ff                                     ; $6655: $3e $ff
    ld e, [hl]                                    ; $6657: $5e
    rst $38                                       ; $6658: $ff
    cp a                                          ; $6659: $bf
    ld a, a                                       ; $665a: $7f
    ld e, a                                       ; $665b: $5f
    rst $38                                       ; $665c: $ff
    nop                                           ; $665d: $00
    ld e, a                                       ; $665e: $5f
    xor a                                         ; $665f: $af
    sbc a                                         ; $6660: $9f
    cpl                                           ; $6661: $2f
    xor a                                         ; $6662: $af
    ld a, a                                       ; $6663: $7f
    xor a                                         ; $6664: $af
    ld a, a                                       ; $6665: $7f
    ld bc, $ff3f                                  ; $6666: $01 $3f $ff
    cp $3f                                        ; $6669: $fe $3f
    cp [hl]                                       ; $666b: $be
    ld a, a                                       ; $666c: $7f
    cp $2c                                        ; $666d: $fe $2c
    ld a, [bc]                                    ; $666f: $0a
    ldh [rSC], a                                  ; $6670: $e0 $02
    nop                                           ; $6672: $00
    ld [hl-], a                                   ; $6673: $32
    ld a, [bc]                                    ; $6674: $0a
    jr nz, jr_092_66a1                            ; $6675: $20 $2a

    sub a                                         ; $6677: $97
    jr z, @+$6c                                   ; $6678: $28 $6a

    dec e                                         ; $667a: $1d
    jp hl                                         ; $667b: $e9


    jr nz, @+$38                                  ; $667c: $20 $36

    inc d                                         ; $667e: $14
    add b                                         ; $667f: $80
    inc b                                         ; $6680: $04
    ld a, [$cd05]                                 ; $6681: $fa $05 $cd
    ld [hl-], a                                   ; $6684: $32
    xor b                                         ; $6685: $a8
    ld b, b                                       ; $6686: $40
    ld d, a                                       ; $6687: $57
    ldh [$0c], a                                  ; $6688: $e0 $0c
    push af                                       ; $668a: $f5
    ld e, $7f                                     ; $668b: $1e $7f
    xor a                                         ; $668d: $af
    adc [hl]                                      ; $668e: $8e
    ld a, c                                       ; $668f: $79
    nop                                           ; $6690: $00
    ld d, h                                       ; $6691: $54
    xor a                                         ; $6692: $af
    dec hl                                        ; $6693: $2b
    call nc, $956a                                ; $6694: $d4 $6a $95
    ld a, [$0105]                                 ; $6697: $fa $05 $01
    ld d, e                                       ; $669a: $53
    xor [hl]                                      ; $669b: $ae
    xor h                                         ; $669c: $ac
    ld d, e                                       ; $669d: $53
    ld d, a                                       ; $669e: $57
    xor b                                         ; $669f: $a8
    adc a                                         ; $66a0: $8f

jr_092_66a1:
    ld b, h                                       ; $66a1: $44
    dec b                                         ; $66a2: $05
    ld [$ab56], sp                                ; $66a3: $08 $56 $ab
    or a                                          ; $66a6: $b7
    ld b, e                                       ; $66a7: $43
    ret nz                                        ; $66a8: $c0

    inc h                                         ; $66a9: $24
    nop                                           ; $66aa: $00
    ld a, e                                       ; $66ab: $7b
    inc b                                         ; $66ac: $04
    ld bc, $a857                                  ; $66ad: $01 $57 $a8
    adc d                                         ; $66b0: $8a
    ld a, l                                       ; $66b1: $7d
    ld hl, $08fe                                  ; $66b2: $21 $fe $08
    sbc b                                         ; $66b5: $98
    ld [bc], a                                    ; $66b6: $02
    dec d                                         ; $66b7: $15
    inc h                                         ; $66b8: $24
    rst $38                                       ; $66b9: $ff
    adc b                                         ; $66ba: $88
    cp $06                                        ; $66bb: $fe $06
    adc c                                         ; $66bd: $89
    ret z                                         ; $66be: $c8

    ld [de], a                                    ; $66bf: $12
    ld [hl+], a                                   ; $66c0: $22
    xor b                                         ; $66c1: $a8
    ld [bc], a                                    ; $66c2: $02
    ld b, $04                                     ; $66c3: $06 $04
    rst $38                                       ; $66c5: $ff
    jr nz, @+$01                                  ; $66c6: $20 $ff

    db $10                                        ; $66c8: $10
    db $10                                        ; $66c9: $10
    rlca                                          ; $66ca: $07
    ldh a, [rNR12]                                ; $66cb: $f0 $12
    rst $38                                       ; $66cd: $ff
    ld de, $ff01                                  ; $66ce: $11 $01 $ff
    ld d, b                                       ; $66d1: $50
    inc e                                         ; $66d2: $1c
    rlca                                          ; $66d3: $07
    ld b, h                                       ; $66d4: $44
    rst $38                                       ; $66d5: $ff
    sub b                                         ; $66d6: $90
    add sp, $12                                   ; $66d7: $e8 $12
    dec d                                         ; $66d9: $15
    dec h                                         ; $66da: $25
    rst $38                                       ; $66db: $ff
    add d                                         ; $66dc: $82
    ld e, $00                                     ; $66dd: $1e $00
    nop                                           ; $66df: $00
    ld b, $00                                     ; $66e0: $06 $00
    ld [$12f8], sp                                ; $66e2: $08 $f8 $12
    ld [$eb17], sp                                ; $66e5: $08 $17 $eb
    cp $81                                        ; $66e8: $fe $81
    nop                                           ; $66ea: $00
    dec e                                         ; $66eb: $1d
    ccf                                           ; $66ec: $3f
    ret nz                                        ; $66ed: $c0

    rst $08                                       ; $66ee: $cf
    ld bc, $a930                                  ; $66ef: $01 $30 $a9
    ld d, [hl]                                    ; $66f2: $56
    ld c, l                                       ; $66f3: $4d
    cp a                                          ; $66f4: $bf
    xor d                                         ; $66f5: $aa
    ld d, a                                       ; $66f6: $57
    ret nz                                        ; $66f7: $c0

    ld b, $32                                     ; $66f8: $06 $32
    pop de                                        ; $66fa: $d1
    push de                                       ; $66fb: $d5
    jr nz, @+$29                                  ; $66fc: $20 $27

    jr nz, jr_092_6729                            ; $66fe: $20 $29

    ld a, l                                       ; $6700: $7d
    add d                                         ; $6701: $82
    jr nz, jr_092_671b                            ; $6702: $20 $17

    and e                                         ; $6704: $a3
    nop                                           ; $6705: $00
    ld h, l                                       ; $6706: $65
    ld a, [$55aa]                                 ; $6707: $fa $aa $55
    dec a                                         ; $670a: $3d
    jp nz, $3cc3                                  ; $670b: $c2 $c3 $3c

    nop                                           ; $670e: $00
    call $f432                                    ; $670f: $cd $32 $f4
    dec bc                                        ; $6712: $0b
    push bc                                       ; $6713: $c5
    ccf                                           ; $6714: $3f
    ld a, [hl]                                    ; $6715: $7e
    add l                                         ; $6716: $85
    nop                                           ; $6717: $00
    ld a, d                                       ; $6718: $7a
    add l                                         ; $6719: $85
    xor a                                         ; $671a: $af

jr_092_671b:
    ld d, b                                       ; $671b: $50
    inc l                                         ; $671c: $2c
    db $d3                                        ; $671d: $d3
    push af                                       ; $671e: $f5
    ld a, [bc]                                    ; $671f: $0a
    nop                                           ; $6720: $00
    ld c, e                                       ; $6721: $4b
    or h                                          ; $6722: $b4
    call nc, $fe2b                                ; $6723: $d4 $2b $fe
    inc bc                                        ; $6726: $03
    xor a                                         ; $6727: $af
    ld d, e                                       ; $6728: $53

jr_092_6729:
    add h                                         ; $6729: $84
    sub b                                         ; $672a: $90
    add hl, de                                    ; $672b: $19
    halt                                          ; $672c: $76
    adc c                                         ; $672d: $89
    cp d                                          ; $672e: $ba
    ld b, l                                       ; $672f: $45
    ld d, [hl]                                    ; $6730: $56
    ld bc, $71d4                                  ; $6731: $01 $d4 $71
    ld [bc], a                                    ; $6734: $02
    adc [hl]                                      ; $6735: $8e
    ld de, $84ff                                  ; $6736: $11 $ff $84
    rst $38                                       ; $6739: $ff
    ld b, c                                       ; $673a: $41
    ld [hl], h                                    ; $673b: $74
    nop                                           ; $673c: $00
    ld b, c                                       ; $673d: $41
    ret nz                                        ; $673e: $c0

    ld [hl], b                                    ; $673f: $70
    jr nz, jr_092_6762                            ; $6740: $20 $20

    ld a, [bc]                                    ; $6742: $0a
    ld d, a                                       ; $6743: $57
    xor b                                         ; $6744: $a8
    inc a                                         ; $6745: $3c
    jp $a25d                                      ; $6746: $c3 $5d $a2


    nop                                           ; $6749: $00
    ld b, h                                       ; $674a: $44
    inc bc                                        ; $674b: $03
    xor b                                         ; $674c: $a8
    ld b, e                                       ; $674d: $43
    ld d, l                                       ; $674e: $55
    and d                                         ; $674f: $a2
    add hl, hl                                    ; $6750: $29
    add $09                                       ; $6751: $c6 $09
    jp $f5fc                                      ; $6753: $c3 $fc $f5


    ld a, [bc]                                    ; $6756: $0a
    ld b, b                                       ; $6757: $40
    cpl                                           ; $6758: $2f
    rst $38                                       ; $6759: $ff
    nop                                           ; $675a: $00
    and b                                         ; $675b: $a0
    dec e                                         ; $675c: $1d
    ld h, b                                       ; $675d: $60
    db $fc                                        ; $675e: $fc
    ld a, [hl]                                    ; $675f: $7e
    dec b                                         ; $6760: $05
    sub b                                         ; $6761: $90

jr_092_6762:
    dec e                                         ; $6762: $1d
    ld b, l                                       ; $6763: $45
    cp d                                          ; $6764: $ba
    cp [hl]                                       ; $6765: $be
    ld b, c                                       ; $6766: $41
    xor d                                         ; $6767: $aa
    nop                                           ; $6768: $00
    ld d, a                                       ; $6769: $57
    db $d3                                        ; $676a: $d3
    cpl                                           ; $676b: $2f
    ld e, a                                       ; $676c: $5f
    and e                                         ; $676d: $a3
    ld a, a                                       ; $676e: $7f
    ret nc                                        ; $676f: $d0

    and d                                         ; $6770: $a2
    nop                                           ; $6771: $00
    ld a, l                                       ; $6772: $7d
    push de                                       ; $6773: $d5
    ld a, [hl+]                                   ; $6774: $2a
    sub d                                         ; $6775: $92
    ld l, l                                       ; $6776: $6d
    ld d, h                                       ; $6777: $54
    xor e                                         ; $6778: $ab
    xor e                                         ; $6779: $ab
    inc b                                         ; $677a: $04
    call nc, Call_000_3ac5                        ; $677b: $d4 $c5 $3a
    ld d, a                                       ; $677e: $57
    xor b                                         ; $677f: $a8
    ret nz                                        ; $6780: $c0

    rra                                           ; $6781: $1f
    ld d, h                                       ; $6782: $54
    rst $38                                       ; $6783: $ff
    nop                                           ; $6784: $00
    ld a, [hl]                                    ; $6785: $7e
    add a                                         ; $6786: $87
    xor e                                         ; $6787: $ab
    ld d, a                                       ; $6788: $57
    ld e, e                                       ; $6789: $5b
    and h                                         ; $678a: $a4
    xor e                                         ; $678b: $ab
    ld d, h                                       ; $678c: $54
    add b                                         ; $678d: $80
    add b                                         ; $678e: $80
    ld a, [de]                                    ; $678f: $1a
    or a                                          ; $6790: $b7
    ld e, b                                       ; $6791: $58
    cp d                                          ; $6792: $ba
    dec e                                         ; $6793: $1d
    ld [hl], l                                    ; $6794: $75
    ld e, $5f                                     ; $6795: $1e $5f
    db $10                                        ; $6797: $10
    xor a                                         ; $6798: $af
    sub [hl]                                      ; $6799: $96
    ld sp, hl                                     ; $679a: $f9
    and b                                         ; $679b: $a0
    dec e                                         ; $679c: $1d
    ld a, d                                       ; $679d: $7a
    add l                                         ; $679e: $85
    ld a, a                                       ; $679f: $7f
    add b                                         ; $67a0: $80
    nop                                           ; $67a1: $00
    ld d, $29                                     ; $67a2: $16 $29
    adc e                                         ; $67a4: $8b
    inc [hl]                                      ; $67a5: $34
    ld l, e                                       ; $67a6: $6b
    sub h                                         ; $67a7: $94
    ld d, h                                       ; $67a8: $54
    xor e                                         ; $67a9: $ab
    ld [$43be], sp                                ; $67aa: $08 $be $43
    ld d, a                                       ; $67ad: $57
    xor e                                         ; $67ae: $ab
    ldh a, [$2a]                                  ; $67af: $f0 $2a
    pop de                                        ; $67b1: $d1
    ld l, $b2                                     ; $67b2: $2e $b2

jr_092_67b4:
    ld b, b                                       ; $67b4: $40
    ld c, l                                       ; $67b5: $4d
    and b                                         ; $67b6: $a0
    rrca                                          ; $67b7: $0f
    ld [$5717], a                                 ; $67b8: $ea $17 $57
    xor c                                         ; $67bb: $a9
    ld [$0217], a                                 ; $67bc: $ea $17 $02
    dec de                                        ; $67bf: $1b
    daa                                           ; $67c0: $27
    ld h, a                                       ; $67c1: $67
    inc de                                        ; $67c2: $13
    cp a                                          ; $67c3: $bf
    ld b, b                                       ; $67c4: $40
    ld h, b                                       ; $67c5: $60
    dec c                                         ; $67c6: $0d
    ld b, h                                       ; $67c7: $44
    inc bc                                        ; $67c8: $03
    rst $38                                       ; $67c9: $ff
    cp $87                                        ; $67ca: $fe $87
    dec hl                                        ; $67cc: $2b
    rst $10                                       ; $67cd: $d7
    ld [hl], l                                    ; $67ce: $75
    jr nz, jr_092_6804                            ; $67cf: $20 $33

    add b                                         ; $67d1: $80
    rra                                           ; $67d2: $1f
    jr nz, @+$01                                  ; $67d3: $20 $ff

    nop                                           ; $67d5: $00
    jr nz, jr_092_6803                            ; $67d6: $20 $2b

    db $fd                                        ; $67d8: $fd
    ld [bc], a                                    ; $67d9: $02
    and l                                         ; $67da: $a5
    ld e, a                                       ; $67db: $5f
    db $d3                                        ; $67dc: $d3
    ld bc, $fa2e                                  ; $67dd: $01 $2e $fa
    dec b                                         ; $67e0: $05

jr_092_67e1:
    rst $38                                       ; $67e1: $ff
    nop                                           ; $67e2: $00
    jr nc, jr_092_67b4                            ; $67e3: $30 $cf

    ret nc                                        ; $67e5: $d0

    dec bc                                        ; $67e6: $0b
    nop                                           ; $67e7: $00
    ld l, d                                       ; $67e8: $6a
    add b                                         ; $67e9: $80
    cpl                                           ; $67ea: $2f
    ret nc                                        ; $67eb: $d0

    and d                                         ; $67ec: $a2
    db $fd                                        ; $67ed: $fd
    ldh a, [rIE]                                  ; $67ee: $f0 $ff
    ld a, [bc]                                    ; $67f0: $0a
    dec d                                         ; $67f1: $15
    ld [$00ff], a                                 ; $67f2: $ea $ff $00
    and b                                         ; $67f5: $a0
    ld [bc], a                                    ; $67f6: $02
    ld b, b                                       ; $67f7: $40
    sub b                                         ; $67f8: $90
    ld [de], a                                    ; $67f9: $12
    ret nz                                        ; $67fa: $c0

    nop                                           ; $67fb: $00
    push bc                                       ; $67fc: $c5
    ld a, [hl-]                                   ; $67fd: $3a
    ld b, d                                       ; $67fe: $42
    cp l                                          ; $67ff: $bd
    ld l, e                                       ; $6800: $6b
    sub h                                         ; $6801: $94
    or l                                          ; $6802: $b5

jr_092_6803:
    ld c, d                                       ; $6803: $4a

jr_092_6804:
    nop                                           ; $6804: $00
    ld a, d                                       ; $6805: $7a
    add l                                         ; $6806: $85
    ld l, e                                       ; $6807: $6b
    call nc, Call_092_50af                        ; $6808: $d4 $af $50
    ld [hl-], a                                   ; $680b: $32
    dec c                                         ; $680c: $0d
    nop                                           ; $680d: $00
    ld bc, $8b3e                                  ; $680e: $01 $3e $8b
    inc [hl]                                      ; $6811: $34
    scf                                           ; $6812: $37
    ret z                                         ; $6813: $c8

    jp c, Jump_000_202d                           ; $6814: $da $2d $20

    ld hl, $cefe                                  ; $6817: $21 $fe $ce
    ld [bc], a                                    ; $681a: $02
    sub $fd                                       ; $681b: $d6 $fd
    ld [bc], a                                    ; $681d: $02
    and d                                         ; $681e: $a2
    ld e, l                                       ; $681f: $5d
    jr nz, @+$01                                  ; $6820: $20 $ff

    inc b                                         ; $6822: $04
    db $10                                        ; $6823: $10
    inc e                                         ; $6824: $1c
    or l                                          ; $6825: $b5
    ld a, d                                       ; $6826: $7a
    ld c, d                                       ; $6827: $4a
    cp l                                          ; $6828: $bd
    rst $38                                       ; $6829: $ff
    add b                                         ; $682a: $80
    jr nz, jr_092_6874                            ; $682b: $20 $47

    ld d, l                                       ; $682d: $55
    xor d                                         ; $682e: $aa
    xor e                                         ; $682f: $ab
    ld d, h                                       ; $6830: $54
    ld [hl], $09                                  ; $6831: $36 $09
    dec bc                                        ; $6833: $0b
    nop                                           ; $6834: $00
    inc [hl]                                      ; $6835: $34
    adc d                                         ; $6836: $8a
    dec [hl]                                      ; $6837: $35

jr_092_6838:
    inc [hl]                                      ; $6838: $34
    set 7, [hl]                                   ; $6839: $cb $fe
    ld bc, $4055                                  ; $683b: $01 $55 $40
    xor d                                         ; $683e: $aa
    ld [hl], b                                    ; $683f: $70
    db $10                                        ; $6840: $10
    cpl                                           ; $6841: $2f
    ld a, d                                       ; $6842: $7a
    add l                                         ; $6843: $85
    ld [hl], l                                    ; $6844: $75
    ld a, [bc]                                    ; $6845: $0a
    ld [hl], b                                    ; $6846: $70
    nop                                           ; $6847: $00
    rrca                                          ; $6848: $0f
    xor $11                                       ; $6849: $ee $11
    ld d, l                                       ; $684b: $55
    xor d                                         ; $684c: $aa
    ld [hl], a                                    ; $684d: $77
    sbc b                                         ; $684e: $98
    sbc d                                         ; $684f: $9a
    ld bc, $75fd                                  ; $6850: $01 $fd $75
    sbc $df                                       ; $6853: $de $df
    xor a                                         ; $6855: $af
    ld b, [hl]                                    ; $6856: $46
    cp c                                          ; $6857: $b9
    ret nc                                        ; $6858: $d0

    ld a, [de]                                    ; $6859: $1a
    jr nz, jr_092_67e1                            ; $685a: $20 $85

    ld a, d                                       ; $685c: $7a
    db $10                                        ; $685d: $10
    dec b                                         ; $685e: $05
    rra                                           ; $685f: $1f
    ld a, [bc]                                    ; $6860: $0a
    dec [hl]                                      ; $6861: $35
    sub l                                         ; $6862: $95
    ld a, [hl+]                                   ; $6863: $2a
    nop                                           ; $6864: $00
    ld a, $c1                                     ; $6865: $3e $c1
    ld [hl], l                                    ; $6867: $75
    adc d                                         ; $6868: $8a
    adc c                                         ; $6869: $89
    ld a, a                                       ; $686a: $7f
    sub h                                         ; $686b: $94
    cpl                                           ; $686c: $2f
    nop                                           ; $686d: $00
    ld l, e                                       ; $686e: $6b
    inc d                                         ; $686f: $14
    ret nc                                        ; $6870: $d0

    cpl                                           ; $6871: $2f

jr_092_6872:
    dec bc                                        ; $6872: $0b
    db $f4                                        ; $6873: $f4

jr_092_6874:
    db $e4                                        ; $6874: $e4
    ld a, e                                       ; $6875: $7b
    jr nc, jr_092_6872                            ; $6876: $30 $fa

    dec d                                         ; $6878: $15
    ld d, b                                       ; $6879: $50
    ld c, $70                                     ; $687a: $0e $70
    dec de                                        ; $687c: $1b
    cp l                                          ; $687d: $bd
    ld b, d                                       ; $687e: $42
    ld d, [hl]                                    ; $687f: $56
    xor c                                         ; $6880: $a9
    ld [bc], a                                    ; $6881: $02
    ldh a, [rP1]                                  ; $6882: $f0 $00
    ld [c], a                                     ; $6884: $e2
    nop                                           ; $6885: $00
    sub a                                         ; $6886: $97
    add sp, $4e                                   ; $6887: $e8 $4e
    ld bc, $2855                                  ; $6889: $01 $55 $28
    push bc                                       ; $688c: $c5
    ld a, [hl-]                                   ; $688d: $3a
    ld l, d                                       ; $688e: $6a
    ld bc, $d002                                  ; $688f: $01 $02 $d0
    add hl, de                                    ; $6892: $19
    and [hl]                                      ; $6893: $a6
    ld e, c                                       ; $6894: $59
    or e                                          ; $6895: $b3
    nop                                           ; $6896: $00
    ld c, h                                       ; $6897: $4c
    ld e, [hl]                                    ; $6898: $5e
    and c                                         ; $6899: $a1
    ld e, e                                       ; $689a: $5b
    and h                                         ; $689b: $a4

jr_092_689c:
    sub [hl]                                      ; $689c: $96
    ld a, c                                       ; $689d: $79
    xor [hl]                                      ; $689e: $ae
    nop                                           ; $689f: $00
    ld [hl], c                                    ; $68a0: $71
    ld c, l                                       ; $68a1: $4d
    or d                                          ; $68a2: $b2
    or $0b                                        ; $68a3: $f6 $0b
    ld [hl], a                                    ; $68a5: $77
    xor e                                         ; $68a6: $ab
    ld a, [hl]                                    ; $68a7: $7e
    nop                                           ; $68a8: $00
    add c                                         ; $68a9: $81
    rla                                           ; $68aa: $17
    jr z, jr_092_6838                             ; $68ab: $28 $8b

    inc [hl]                                      ; $68ad: $34
    ld [hl], b                                    ; $68ae: $70
    add b                                         ; $68af: $80
    cp l                                          ; $68b0: $bd
    nop                                           ; $68b1: $00
    ld b, b                                       ; $68b2: $40
    rst $30                                       ; $68b3: $f7
    ld [$7e95], sp                                ; $68b4: $08 $95 $7e
    cp a                                          ; $68b7: $bf
    rst $38                                       ; $68b8: $ff
    rst $20                                       ; $68b9: $e7
    nop                                           ; $68ba: $00
    rst $38                                       ; $68bb: $ff
    jp c, $afe7                                   ; $68bc: $da $e7 $af

    jp $83c5                                      ; $68bf: $c3 $c5 $83


    db $eb                                        ; $68c2: $eb
    nop                                           ; $68c3: $00
    add c                                         ; $68c4: $81
    cp l                                          ; $68c5: $bd
    jp $abd5                                      ; $68c6: $c3 $d5 $ab


    xor d                                         ; $68c9: $aa
    rst $10                                       ; $68ca: $d7
    push bc                                       ; $68cb: $c5
    nop                                           ; $68cc: $00
    rst $38                                       ; $68cd: $ff
    ld a, a                                       ; $68ce: $7f

jr_092_68cf:
    cp a                                          ; $68cf: $bf
    and a                                         ; $68d0: $a7
    ld a, a                                       ; $68d1: $7f
    ld e, a                                       ; $68d2: $5f
    db $e3                                        ; $68d3: $e3
    di                                            ; $68d4: $f3
    ld b, $c7                                     ; $68d5: $06 $c7
    xor d                                         ; $68d7: $aa
    rst $00                                       ; $68d8: $c7
    push af                                       ; $68d9: $f5
    adc a                                         ; $68da: $8f
    dec a                                         ; $68db: $3d
    dec d                                         ; $68dc: $15
    dec b                                         ; $68dd: $05
    jr nz, jr_092_68cf                            ; $68de: $20 $ef

    ret nz                                        ; $68e0: $c0

    add c                                         ; $68e1: $81
    ld b, $60                                     ; $68e2: $06 $60
    cpl                                           ; $68e4: $2f
    ld d, d                                       ; $68e5: $52
    xor l                                         ; $68e6: $ad
    db $eb                                        ; $68e7: $eb
    inc d                                         ; $68e8: $14
    cp $01                                        ; $68e9: $fe $01
    jr nz, jr_092_689c                            ; $68eb: $20 $af

    ld d, b                                       ; $68ed: $50
    ld h, b                                       ; $68ee: $60
    rrca                                          ; $68ef: $0f
    ccf                                           ; $68f0: $3f
    ret nz                                        ; $68f1: $c0

    ld [hl], h                                    ; $68f2: $74
    adc e                                         ; $68f3: $8b
    ld hl, $de01                                  ; $68f4: $21 $01 $de
    cp l                                          ; $68f7: $bd
    ld b, d                                       ; $68f8: $42
    ccf                                           ; $68f9: $3f
    ret nz                                        ; $68fa: $c0

    ret nc                                        ; $68fb: $d0

    cpl                                           ; $68fc: $2f
    ld [hl], b                                    ; $68fd: $70
    inc bc                                        ; $68fe: $03
    ld h, b                                       ; $68ff: $60
    ret nz                                        ; $6900: $c0

    ld [hl], b                                    ; $6901: $70
    dec bc                                        ; $6902: $0b
    jr nc, jr_092_6934                            ; $6903: $30 $2f

    add l                                         ; $6905: $85
    nop                                           ; $6906: $00
    dec [hl]                                      ; $6907: $35
    ld a, [bc]                                    ; $6908: $0a
    ld c, e                                       ; $6909: $4b
    ld [$aabf], sp                                ; $690a: $08 $bf $aa
    ld d, l                                       ; $690d: $55
    ld a, l                                       ; $690e: $7d
    sub b                                         ; $690f: $90
    db $10                                        ; $6910: $10
    ld d, l                                       ; $6911: $55
    and e                                         ; $6912: $a3
    ld a, [hl-]                                   ; $6913: $3a
    nop                                           ; $6914: $00
    dec b                                         ; $6915: $05
    rla                                           ; $6916: $17
    nop                                           ; $6917: $00
    sub e                                         ; $6918: $93
    ld a, h                                       ; $6919: $7c
    ld a, [hl+]                                   ; $691a: $2a
    rst $18                                       ; $691b: $df
    rst $10                                       ; $691c: $d7
    nop                                           ; $691d: $00
    add hl, hl                                    ; $691e: $29
    ld l, [hl]                                    ; $691f: $6e
    sub c                                         ; $6920: $91
    push de                                       ; $6921: $d5
    ld [bc], a                                    ; $6922: $02
    or [hl]                                       ; $6923: $b6
    dec bc                                        ; $6924: $0b
    ld d, a                                       ; $6925: $57
    nop                                           ; $6926: $00
    inc bc                                        ; $6927: $03
    cp $01                                        ; $6928: $fe $01
    rst $18                                       ; $692a: $df
    jr z, jr_092_6961                             ; $692b: $28 $34

    rst $38                                       ; $692d: $ff
    adc d                                         ; $692e: $8a
    ld [bc], a                                    ; $692f: $02
    ld a, a                                       ; $6930: $7f
    ld d, l                                       ; $6931: $55
    xor d                                         ; $6932: $aa
    dec hl                                        ; $6933: $2b

jr_092_6934:
    call nc, $c06b                                ; $6934: $d4 $6b $c0
    scf                                           ; $6937: $37
    ld d, d                                       ; $6938: $52
    add b                                         ; $6939: $80
    ldh a, [rNR50]                                ; $693a: $f0 $24
    sub d                                         ; $693c: $92
    ld l, l                                       ; $693d: $6d
    ld d, [hl]                                    ; $693e: $56
    xor c                                         ; $693f: $a9
    xor d                                         ; $6940: $aa
    rst $10                                       ; $6941: $d7
    jp Jump_000_3f04                              ; $6942: $c3 $04 $3f


    ld b, a                                       ; $6945: $47
    cp e                                          ; $6946: $bb
    ld l, a                                       ; $6947: $6f
    sub b                                         ; $6948: $90
    ld [hl], b                                    ; $6949: $70
    add hl, bc                                    ; $694a: $09
    ld d, h                                       ; $694b: $54
    xor a                                         ; $694c: $af
    nop                                           ; $694d: $00
    cp $07                                        ; $694e: $fe $07
    sbc e                                         ; $6950: $9b
    ld h, a                                       ; $6951: $67
    ld l, e                                       ; $6952: $6b
    sub h                                         ; $6953: $94
    ld [$8815], a                                 ; $6954: $ea $15 $88
    ldh a, [rSB]                                  ; $6957: $f0 $01
    ld b, c                                       ; $6959: $41
    ld d, l                                       ; $695a: $55
    xor d                                         ; $695b: $aa
    ldh [$08], a                                  ; $695c: $e0 $08
    ld e, a                                       ; $695e: $5f
    and b                                         ; $695f: $a0
    db $db                                        ; $6960: $db

jr_092_6961:
    ld [$ff24], sp                                ; $6961: $08 $24 $ff
    db $10                                        ; $6964: $10
    jr nc, jr_092_69c7                            ; $6965: $30 $60

    inc d                                         ; $6967: $14
    sub a                                         ; $6968: $97
    db $eb                                        ; $6969: $eb
    cp $00                                        ; $696a: $fe $00
    ld bc, $28d7                                  ; $696c: $01 $d7 $28
    ld c, e                                       ; $696f: $4b
    db $f4                                        ; $6970: $f4
    ld h, h                                       ; $6971: $64
    dec de                                        ; $6972: $1b
    ld e, a                                       ; $6973: $5f
    sub e                                         ; $6974: $93
    ld h, b                                       ; $6975: $60
    inc b                                         ; $6976: $04
    ld d, e                                       ; $6977: $53
    xor h                                         ; $6978: $ac
    ld h, b                                       ; $6979: $60
    dec e                                         ; $697a: $1d
    sub $29                                       ; $697b: $d6 $29
    and b                                         ; $697d: $a0
    dec l                                         ; $697e: $2d
    and b                                         ; $697f: $a0
    add hl, bc                                    ; $6980: $09
    ld [bc], a                                    ; $6981: $02
    db $fc                                        ; $6982: $fc
    inc bc                                        ; $6983: $03
    and d                                         ; $6984: $a2
    ld e, l                                       ; $6985: $5d
    ld [hl], l                                    ; $6986: $75
    adc d                                         ; $6987: $8a
    ret nc                                        ; $6988: $d0

    rra                                           ; $6989: $1f
    or $00                                        ; $698a: $f6 $00
    add hl, bc                                    ; $698c: $09
    ld [hl], a                                    ; $698d: $77
    adc b                                         ; $698e: $88
    ld e, $21                                     ; $698f: $1e $21
    sbc e                                         ; $6991: $9b
    inc h                                         ; $6992: $24
    ld d, h                                       ; $6993: $54
    nop                                           ; $6994: $00
    cp e                                          ; $6995: $bb
    xor c                                         ; $6996: $a9
    halt                                          ; $6997: $76
    rst $28                                       ; $6998: $ef
    db $10                                        ; $6999: $10
    push af                                       ; $699a: $f5
    ld a, [bc]                                    ; $699b: $0a
    and h                                         ; $699c: $a4
    nop                                           ; $699d: $00
    ld e, a                                       ; $699e: $5f
    cp $07                                        ; $699f: $fe $07
    ld l, e                                       ; $69a1: $6b
    sub a                                         ; $69a2: $97
    dec d                                         ; $69a3: $15
    cp $a9                                        ; $69a4: $fe $a9
    nop                                           ; $69a6: $00
    cp $93                                        ; $69a7: $fe $93
    ld a, h                                       ; $69a9: $7c
    sub $29                                       ; $69aa: $d6 $29
    ld a, [hl-]                                   ; $69ac: $3a
    rst $00                                       ; $69ad: $c7
    dec hl                                        ; $69ae: $2b
    ld d, d                                       ; $69af: $52
    call nz, $057e                                ; $69b0: $c4 $7e $05
    ld [hl+], a                                   ; $69b3: $22
    ld b, b                                       ; $69b4: $40
    dec bc                                        ; $69b5: $0b
    ld a, [hl-]                                   ; $69b6: $3a
    push bc                                       ; $69b7: $c5
    ret nz                                        ; $69b8: $c0

    dec bc                                        ; $69b9: $0b
    ld d, e                                       ; $69ba: $53
    nop                                           ; $69bb: $00
    xor a                                         ; $69bc: $af
    xor [hl]                                      ; $69bd: $ae
    ld d, c                                       ; $69be: $51
    add hl, hl                                    ; $69bf: $29
    ret nz                                        ; $69c0: $c0

    rst $30                                       ; $69c1: $f7
    nop                                           ; $69c2: $00
    db $eb                                        ; $69c3: $eb
    stop                                          ; $69c4: $10 $00
    ld [hl], b                                    ; $69c6: $70

jr_092_69c7:
    adc a                                         ; $69c7: $8f
    ldh a, [$0d]                                  ; $69c8: $f0 $0d
    ld [$5517], a                                 ; $69ca: $ea $17 $55
    xor e                                         ; $69cd: $ab
    nop                                           ; $69ce: $00
    xor $11                                       ; $69cf: $ee $11
    dec de                                        ; $69d1: $1b
    jr nz, jr_092_6a38                            ; $69d2: $20 $64

    db $10                                        ; $69d4: $10
    sub a                                         ; $69d5: $97
    ld l, b                                       ; $69d6: $68
    ld [bc], a                                    ; $69d7: $02
    ld a, [hl+]                                   ; $69d8: $2a
    push de                                       ; $69d9: $d5
    ld l, d                                       ; $69da: $6a
    sub b                                         ; $69db: $90
    or a                                          ; $69dc: $b7
    ret c                                         ; $69dd: $d8

    ld h, b                                       ; $69de: $60
    dec b                                         ; $69df: $05
    sbc $03                                       ; $69e0: $de $03
    ld e, a                                       ; $69e2: $5f
    xor a                                         ; $69e3: $af
    and [hl]                                      ; $69e4: $a6
    ld bc, $0758                                  ; $69e5: $01 $58 $07
    ldh a, [$0d]                                  ; $69e8: $f0 $0d
    nop                                           ; $69ea: $00
    dec c                                         ; $69eb: $0d
    nop                                           ; $69ec: $00
    add sp, $00                                   ; $69ed: $e8 $00
    ld d, l                                       ; $69ef: $55
    add b                                         ; $69f0: $80
    ld a, c                                       ; $69f1: $79
    ld b, $54                                     ; $69f2: $06 $54
    cpl                                           ; $69f4: $2f
    nop                                           ; $69f5: $00
    ld [c], a                                     ; $69f6: $e2
    dec e                                         ; $69f7: $1d
    ld d, l                                       ; $69f8: $55
    xor d                                         ; $69f9: $aa
    sub c                                         ; $69fa: $91
    ld a, [hl]                                    ; $69fb: $7e
    ld d, [hl]                                    ; $69fc: $56
    xor c                                         ; $69fd: $a9
    nop                                           ; $69fe: $00
    ld a, [hl-]                                   ; $69ff: $3a
    rst $38                                       ; $6a00: $ff
    ld h, e                                       ; $6a01: $63
    rst $38                                       ; $6a02: $ff
    rra                                           ; $6a03: $1f

jr_092_6a04:
    db $e3                                        ; $6a04: $e3
    cp a                                          ; $6a05: $bf
    ld b, b                                       ; $6a06: $40
    nop                                           ; $6a07: $00
    ld c, d                                       ; $6a08: $4a
    cp a                                          ; $6a09: $bf
    ld h, l                                       ; $6a0a: $65
    ld a, [$857a]                                 ; $6a0b: $fa $7a $85
    xor e                                         ; $6a0e: $ab
    ld d, h                                       ; $6a0f: $54
    ld [bc], a                                    ; $6a10: $02
    ld d, [hl]                                    ; $6a11: $56
    xor c                                         ; $6a12: $a9
    dec a                                         ; $6a13: $3d
    nop                                           ; $6a14: $00
    ld e, e                                       ; $6a15: $5b
    and b                                         ; $6a16: $a0
    nop                                           ; $6a17: $00
    inc b                                         ; $6a18: $04
    db $eb                                        ; $6a19: $eb
    jr nz, jr_092_69c7                            ; $6a1a: $20 $ab

    rst $38                                       ; $6a1c: $ff
    ldh a, [rNR32]                                ; $6a1d: $f0 $1c
    ld d, [hl]                                    ; $6a1f: $56
    xor c                                         ; $6a20: $a9
    adc l                                         ; $6a21: $8d
    ld [bc], a                                    ; $6a22: $02
    add $80                                       ; $6a23: $c6 $80
    ld e, $02                                     ; $6a25: $1e $02
    or h                                          ; $6a27: $b4
    ld b, b                                       ; $6a28: $40
    rlca                                          ; $6a29: $07
    ld hl, sp-$56                                 ; $6a2a: $f8 $aa
    db $fd                                        ; $6a2c: $fd
    ld l, c                                       ; $6a2d: $69
    ld [$54f6], sp                                ; $6a2e: $08 $f6 $54
    ei                                            ; $6a31: $fb
    rst $38                                       ; $6a32: $ff
    ld d, b                                       ; $6a33: $50
    ld hl, $0051                                  ; $6a34: $21 $51 $00
    xor d                                         ; $6a37: $aa

jr_092_6a38:
    nop                                           ; $6a38: $00
    ld b, b                                       ; $6a39: $40
    ld [hl], l                                    ; $6a3a: $75
    add b                                         ; $6a3b: $80
    adc b                                         ; $6a3c: $88
    ld d, e                                       ; $6a3d: $53
    ld a, a                                       ; $6a3e: $7f
    add b                                         ; $6a3f: $80
    ld b, l                                       ; $6a40: $45
    nop                                           ; $6a41: $00
    ld [bc], a                                    ; $6a42: $02
    xor b                                         ; $6a43: $a8
    ld b, e                                       ; $6a44: $43
    ld d, h                                       ; $6a45: $54
    and e                                         ; $6a46: $a3
    rst $30                                       ; $6a47: $f7
    jr jr_092_6a04                                ; $6a48: $18 $ba

    ld bc, $755d                                  ; $6a4a: $01 $5d $75
    sbc [hl]                                      ; $6a4d: $9e
    rst $38                                       ; $6a4e: $ff
    rrca                                          ; $6a4f: $0f
    sub [hl]                                      ; $6a50: $96
    jp hl                                         ; $6a51: $e9


    ld [hl], b                                    ; $6a52: $70
    dec d                                         ; $6a53: $15
    ld b, h                                       ; $6a54: $44
    db $10                                        ; $6a55: $10
    ld [hl], b                                    ; $6a56: $70
    ld l, $d8                                     ; $6a57: $2e $d8
    daa                                           ; $6a59: $27
    push af                                       ; $6a5a: $f5
    db $10                                        ; $6a5b: $10
    ld [de], a                                    ; $6a5c: $12
    ld [$2015], a                                 ; $6a5d: $ea $15 $20
    ld d, l                                       ; $6a60: $55
    xor d                                         ; $6a61: $aa
    and b                                         ; $6a62: $a0
    nop                                           ; $6a63: $00
    db $e4                                        ; $6a64: $e4
    ld l, a                                       ; $6a65: $6f
    sub b                                         ; $6a66: $90
    call nc, Call_000_092b                        ; $6a67: $d4 $2b $09

jr_092_6a6a:
    ld [hl], $fb                                  ; $6a6a: $36 $fb
    ld c, e                                       ; $6a6c: $4b
    rst $30                                       ; $6a6d: $f7
    and b                                         ; $6a6e: $a0
    dec e                                         ; $6a6f: $1d
    and c                                         ; $6a70: $a1
    ld b, b                                       ; $6a71: $40
    add b                                         ; $6a72: $80
    dec b                                         ; $6a73: $05
    add b                                         ; $6a74: $80
    ld h, b                                       ; $6a75: $60
    inc d                                         ; $6a76: $14
    ld l, [hl]                                    ; $6a77: $6e
    ld de, $6897                                  ; $6a78: $11 $97 $68
    ld c, d                                       ; $6a7b: $4a
    or a                                          ; $6a7c: $b7
    xor e                                         ; $6a7d: $ab
    add hl, bc                                    ; $6a7e: $09
    ld b, a                                       ; $6a7f: $47
    rlca                                          ; $6a80: $07
    inc bc                                        ; $6a81: $03
    ld l, a                                       ; $6a82: $6f
    ldh [rSC], a                                  ; $6a83: $e0 $02
    dec b                                         ; $6a85: $05
    rst $38                                       ; $6a86: $ff
    ld h, b                                       ; $6a87: $60
    add hl, bc                                    ; $6a88: $09
    nop                                           ; $6a89: $00
    ld e, e                                       ; $6a8a: $5b
    and a                                         ; $6a8b: $a7
    dec a                                         ; $6a8c: $3d
    nop                                           ; $6a8d: $00
    ld e, c                                       ; $6a8e: $59
    and b                                         ; $6a8f: $a0
    xor [hl]                                      ; $6a90: $ae
    ld d, c                                       ; $6a91: $51
    nop                                           ; $6a92: $00
    ld d, h                                       ; $6a93: $54
    db $eb                                        ; $6a94: $eb
    xor c                                         ; $6a95: $a9
    cp $af                                        ; $6a96: $fe $af
    ld d, b                                       ; $6a98: $50
    ld d, l                                       ; $6a99: $55
    ld a, [hl+]                                   ; $6a9a: $2a
    inc bc                                        ; $6a9b: $03
    and h                                         ; $6a9c: $a4
    ld e, a                                       ; $6a9d: $5f
    ld d, d                                       ; $6a9e: $52
    xor a                                         ; $6a9f: $af
    db $fd                                        ; $6aa0: $fd
    ld [bc], a                                    ; $6aa1: $02
    and b                                         ; $6aa2: $a0
    ld e, $00                                     ; $6aa3: $1e $00
    add hl, bc                                    ; $6aa5: $09
    ld b, $28                                     ; $6aa6: $06 $28
    ret nz                                        ; $6aa8: $c0

    push af                                       ; $6aa9: $f5
    nop                                           ; $6aaa: $00
    ld e, a                                       ; $6aab: $5f
    add b                                         ; $6aac: $80
    ld [$06a0], sp                                ; $6aad: $08 $a0 $06
    push af                                       ; $6ab0: $f5
    nop                                           ; $6ab1: $00
    ld a, [hl+]                                   ; $6ab2: $2a
    ld a, [hl]                                    ; $6ab3: $7e
    adc c                                         ; $6ab4: $89
    ld a, [de]                                    ; $6ab5: $1a
    daa                                           ; $6ab6: $27
    sub [hl]                                      ; $6ab7: $96
    add hl, hl                                    ; $6ab8: $29
    ld a, d                                       ; $6ab9: $7a
    ld c, [hl]                                    ; $6aba: $4e
    add h                                         ; $6abb: $84
    ld h, [hl]                                    ; $6abc: $66
    dec c                                         ; $6abd: $0d
    ld [hl], c                                    ; $6abe: $71
    adc [hl]                                      ; $6abf: $8e
    add b                                         ; $6ac0: $80
    dec h                                         ; $6ac1: $25
    add b                                         ; $6ac2: $80
    ld [hl], $10                                  ; $6ac3: $36 $10
    ld d, $00                                     ; $6ac5: $16 $00
    nop                                           ; $6ac7: $00
    ld l, $01                                     ; $6ac8: $2e $01
    pop de                                        ; $6aca: $d1
    nop                                           ; $6acb: $00
    dec de                                        ; $6acc: $1b
    ldh [$aa], a                                  ; $6acd: $e0 $aa
    ld d, l                                       ; $6acf: $55
    db $10                                        ; $6ad0: $10
    ret nz                                        ; $6ad1: $c0

    ccf                                           ; $6ad2: $3f
    call nc, Call_000_07f5                        ; $6ad3: $d4 $f5 $07
    xor b                                         ; $6ad6: $a8
    ld d, a                                       ; $6ad7: $57
    call nc, Call_000_0001                        ; $6ad8: $d4 $01 $00
    ld e, b                                       ; $6adb: $58
    and a                                         ; $6adc: $a7
    call c, $0463                                 ; $6add: $dc $63 $04
    ei                                            ; $6ae0: $fb
    ld d, l                                       ; $6ae1: $55
    jr nz, jr_092_6a6a                            ; $6ae2: $20 $86

    sub b                                         ; $6ae4: $90
    ld e, $7f                                     ; $6ae5: $1e $7f
    rrca                                          ; $6ae7: $0f
    cp [hl]                                       ; $6ae8: $be
    ld bc, $1c50                                  ; $6ae9: $01 $50 $1c
    add b                                         ; $6aec: $80
    inc d                                         ; $6aed: $14
    ld [bc], a                                    ; $6aee: $02
    nop                                           ; $6aef: $00
    ld b, e                                       ; $6af0: $43
    add b                                         ; $6af1: $80
    call $f700                                    ; $6af2: $cd $00 $f7
    ld [$956a], sp                                ; $6af5: $08 $6a $95
    nop                                           ; $6af8: $00
    ld [$d610], a                                 ; $6af9: $ea $10 $d6
    add hl, hl                                    ; $6afc: $29
    pop bc                                        ; $6afd: $c1
    nop                                           ; $6afe: $00
    add sp, $00                                   ; $6aff: $e8 $00
    inc b                                         ; $6b01: $04
    call nc, $ea28                                ; $6b02: $d4 $28 $ea
    nop                                           ; $6b05: $00
    pop bc                                        ; $6b06: $c1
    ldh a, [rNR22]                                ; $6b07: $f0 $17
    cp a                                          ; $6b09: $bf
    ld b, b                                       ; $6b0a: $40
    nop                                           ; $6b0b: $00
    ld d, h                                       ; $6b0c: $54
    and b                                         ; $6b0d: $a0
    xor d                                         ; $6b0e: $aa
    inc b                                         ; $6b0f: $04
    ld bc, $a400                                  ; $6b10: $01 $00 $a4
    nop                                           ; $6b13: $00
    jr nz, jr_092_6b68                            ; $6b14: $20 $52

    and b                                         ; $6b16: $a0
    ldh a, [rIF]                                  ; $6b17: $f0 $0f
    push de                                       ; $6b19: $d5
    ld a, [hl+]                                   ; $6b1a: $2a
    dec hl                                        ; $6b1b: $2b
    inc d                                         ; $6b1c: $14
    rst $10                                       ; $6b1d: $d7
    ld [bc], a                                    ; $6b1e: $02
    jr z, @+$6d                                   ; $6b1f: $28 $6b

    nop                                           ; $6b21: $00
    cp a                                          ; $6b22: $bf
    nop                                           ; $6b23: $00
    inc de                                        ; $6b24: $13
    ld de, $fa15                                  ; $6b25: $11 $15 $fa
    nop                                           ; $6b28: $00
    dec b                                         ; $6b29: $05
    add l                                         ; $6b2a: $85
    ld [bc], a                                    ; $6b2b: $02
    ld a, [hl+]                                   ; $6b2c: $2a
    ld bc, $8055                                  ; $6b2d: $01 $55 $80
    add d                                         ; $6b30: $82
    jr nz, jr_092_6b33                            ; $6b31: $20 $00

jr_092_6b33:
    ld d, l                                       ; $6b33: $55
    jr nz, jr_092_6b46                            ; $6b34: $20 $10

    ld d, l                                       ; $6b36: $55
    xor d                                         ; $6b37: $aa
    xor b                                         ; $6b38: $a8
    nop                                           ; $6b39: $00
    ld b, b                                       ; $6b3a: $40
    inc bc                                        ; $6b3b: $03
    nop                                           ; $6b3c: $00
    dec h                                         ; $6b3d: $25
    nop                                           ; $6b3e: $00
    ld c, d                                       ; $6b3f: $4a
    inc b                                         ; $6b40: $04
    ld hl, $1531                                  ; $6b41: $21 $31 $15
    add b                                         ; $6b44: $80
    dec c                                         ; $6b45: $0d

jr_092_6b46:
    nop                                           ; $6b46: $00
    dec [hl]                                      ; $6b47: $35
    sbc $ff                                       ; $6b48: $de $ff
    rrca                                          ; $6b4a: $0f
    ld b, [hl]                                    ; $6b4b: $46
    add c                                         ; $6b4c: $81
    db $eb                                        ; $6b4d: $eb
    nop                                           ; $6b4e: $00
    nop                                           ; $6b4f: $00
    cp $00                                        ; $6b50: $fe $00
    xor a                                         ; $6b52: $af
    ld d, b                                       ; $6b53: $50
    ld l, d                                       ; $6b54: $6a
    sub l                                         ; $6b55: $95
    add hl, hl                                    ; $6b56: $29
    ret nz                                        ; $6b57: $c0

    nop                                           ; $6b58: $00
    db $fc                                        ; $6b59: $fc
    nop                                           ; $6b5a: $00
    and d                                         ; $6b5b: $a2
    dec e                                         ; $6b5c: $1d
    push af                                       ; $6b5d: $f5
    ld c, $4b                                     ; $6b5e: $0e $4b
    cp [hl]                                       ; $6b60: $be
    ret nz                                        ; $6b61: $c0

    jr nz, jr_092_6b73                            ; $6b62: $20 $0f

    or b                                          ; $6b64: $b0
    dec bc                                        ; $6b65: $0b
    xor d                                         ; $6b66: $aa
    ld d, a                                       ; $6b67: $57

jr_092_6b68:
    halt                                          ; $6b68: $76
    add hl, bc                                    ; $6b69: $09
    cp d                                          ; $6b6a: $ba
    inc b                                         ; $6b6b: $04
    nop                                           ; $6b6c: $00
    rla                                           ; $6b6d: $17
    add sp, -$54                                  ; $6b6e: $e8 $ac
    db $d3                                        ; $6b70: $d3
    ld a, a                                       ; $6b71: $7f
    add b                                         ; $6b72: $80

jr_092_6b73:
    sub c                                         ; $6b73: $91
    ld a, [hl]                                    ; $6b74: $7e
    nop                                           ; $6b75: $00
    ld d, h                                       ; $6b76: $54
    cp a                                          ; $6b77: $bf
    dec sp                                        ; $6b78: $3b
    cp $e2                                        ; $6b79: $fe $e2
    ld a, l                                       ; $6b7b: $7d
    ei                                            ; $6b7c: $fb
    inc b                                         ; $6b7d: $04
    ret nc                                        ; $6b7e: $d0

    db $10                                        ; $6b7f: $10
    inc e                                         ; $6b80: $1c
    jr nz, @+$0f                                  ; $6b81: $20 $0d

    db $fd                                        ; $6b83: $fd
    and b                                         ; $6b84: $a0
    nop                                           ; $6b85: $00
    ld l, l                                       ; $6b86: $6d
    nop                                           ; $6b87: $00
    ld [hl], h                                    ; $6b88: $74
    dec bc                                        ; $6b89: $0b
    ld [$1fe5], sp                                ; $6b8a: $08 $e5 $1f
    ld e, [hl]                                    ; $6b8d: $5e

jr_092_6b8e:
    xor a                                         ; $6b8e: $af
    ldh a, [$0e]                                  ; $6b8f: $f0 $0e
    rst $18                                       ; $6b91: $df
    jr nz, jr_092_6b8e                            ; $6b92: $20 $fa

    nop                                           ; $6b94: $00
    dec b                                         ; $6b95: $05
    ld d, l                                       ; $6b96: $55
    xor d                                         ; $6b97: $aa
    or b                                          ; $6b98: $b0
    ld b, b                                       ; $6b99: $40
    ld l, $d1                                     ; $6b9a: $2e $d1
    sub l                                         ; $6b9c: $95
    db $10                                        ; $6b9d: $10
    ld [$e51a], a                                 ; $6b9e: $ea $1a $e5
    ld a, [hl+]                                   ; $6ba1: $2a
    ld [bc], a                                    ; $6ba2: $02
    dec b                                         ; $6ba3: $05
    inc d                                         ; $6ba4: $14
    dec hl                                        ; $6ba5: $2b
    adc b                                         ; $6ba6: $88
    nop                                           ; $6ba7: $00
    scf                                           ; $6ba8: $37
    dec hl                                        ; $6ba9: $2b
    rst $18                                       ; $6baa: $df
    push af                                       ; $6bab: $f5
    rrca                                          ; $6bac: $0f
    ld e, l                                       ; $6bad: $5d
    and d                                         ; $6bae: $a2
    ld a, a                                       ; $6baf: $7f
    nop                                           ; $6bb0: $00
    jp $81fe                                      ; $6bb1: $c3 $fe $81


    ld [hl], a                                    ; $6bb4: $77
    adc b                                         ; $6bb5: $88
    and c                                         ; $6bb6: $a1
    ld e, [hl]                                    ; $6bb7: $5e
    ld l, e                                       ; $6bb8: $6b
    ld h, b                                       ; $6bb9: $60
    sub h                                         ; $6bba: $94
    ret nc                                        ; $6bbb: $d0

    dec e                                         ; $6bbc: $1d
    nop                                           ; $6bbd: $00
    dec l                                         ; $6bbe: $2d
    ld a, b                                       ; $6bbf: $78
    add a                                         ; $6bc0: $87
    ld c, e                                       ; $6bc1: $4b
    cp a                                          ; $6bc2: $bf
    and l                                         ; $6bc3: $a5
    ld b, $5f                                     ; $6bc4: $06 $5f
    ld e, l                                       ; $6bc6: $5d
    and d                                         ; $6bc7: $a2
    ld l, a                                       ; $6bc8: $6f
    sub b                                         ; $6bc9: $90
    ldh a, [rNR22]                                ; $6bca: $f0 $17
    ret nz                                        ; $6bcc: $c0

    ld b, $d4                                     ; $6bcd: $06 $d4
    inc b                                         ; $6bcf: $04
    dec hl                                        ; $6bd0: $2b
    adc e                                         ; $6bd1: $8b
    ld [hl], h                                    ; $6bd2: $74
    dec l                                         ; $6bd3: $2d
    sub $c0                                       ; $6bd4: $d6 $c0
    dec hl                                        ; $6bd6: $2b
    rst $30                                       ; $6bd7: $f7
    ld a, [bc]                                    ; $6bd8: $0a
    jp nz, Jump_000_1da0                          ; $6bd9: $c2 $a0 $1d

    ret nz                                        ; $6bdc: $c0

    dec hl                                        ; $6bdd: $2b
    sbc l                                         ; $6bde: $9d
    ld [c], a                                     ; $6bdf: $e2
    ld b, l                                       ; $6be0: $45
    ld [bc], a                                    ; $6be1: $02
    ld b, b                                       ; $6be2: $40
    inc bc                                        ; $6be3: $03
    and d                                         ; $6be4: $a2
    nop                                           ; $6be5: $00
    ld d, l                                       ; $6be6: $55
    xor d                                         ; $6be7: $aa
    ld a, [hl]                                    ; $6be8: $7e
    add c                                         ; $6be9: $81
    add hl, de                                    ; $6bea: $19
    ld l, $94                                     ; $6beb: $2e $94
    ccf                                           ; $6bed: $3f
    nop                                           ; $6bee: $00
    ld c, d                                       ; $6bef: $4a
    cp a                                          ; $6bf0: $bf
    ld d, h                                       ; $6bf1: $54
    xor a                                         ; $6bf2: $af
    xor e                                         ; $6bf3: $ab
    ld d, h                                       ; $6bf4: $54
    ld l, d                                       ; $6bf5: $6a
    sub l                                         ; $6bf6: $95
    add h                                         ; $6bf7: $84
    ldh a, [rNR34]                                ; $6bf8: $f0 $1e
    ld a, a                                       ; $6bfa: $7f
    add b                                         ; $6bfb: $80
    add c                                         ; $6bfc: $81
    ld a, [hl]                                    ; $6bfd: $7e
    ldh a, [rNR32]                                ; $6bfe: $f0 $1c
    dec hl                                        ; $6c00: $2b
    call nz, $c430                                ; $6c01: $c4 $30 $c4
    ei                                            ; $6c04: $fb
    call nc, $f007                                ; $6c05: $d4 $07 $f0
    ld d, $55                                     ; $6c08: $16 $55
    xor d                                         ; $6c0a: $aa
    sub h                                         ; $6c0b: $94
    ld a, a                                       ; $6c0c: $7f
    ld b, b                                       ; $6c0d: $40
    xor b                                         ; $6c0e: $a8
    xor $05                                       ; $6c0f: $ee $05
    ld l, d                                       ; $6c11: $6a
    sub l                                         ; $6c12: $95
    inc d                                         ; $6c13: $14
    rst $38                                       ; $6c14: $ff
    xor c                                         ; $6c15: $a9
    cp $00                                        ; $6c16: $fe $00
    sub a                                         ; $6c18: $97
    ld l, b                                       ; $6c19: $68
    ld [$6a15], a                                 ; $6c1a: $ea $15 $6a
    sub b                                         ; $6c1d: $90
    sub b                                         ; $6c1e: $90
    dec c                                         ; $6c1f: $0d
    jr jr_092_6c2a                                ; $6c20: $18 $08

    ld b, d                                       ; $6c22: $42
    rst $38                                       ; $6c23: $ff
    ld bc, $8360                                  ; $6c24: $01 $60 $83
    rst $38                                       ; $6c27: $ff
    pop bc                                        ; $6c28: $c1
    cp a                                          ; $6c29: $bf

jr_092_6c2a:
    inc b                                         ; $6c2a: $04
    ld c, b                                       ; $6c2b: $48
    rst $38                                       ; $6c2c: $ff
    nop                                           ; $6c2d: $00
    nop                                           ; $6c2e: $00
    db $ed                                        ; $6c2f: $ed
    nop                                           ; $6c30: $00
    cp a                                          ; $6c31: $bf
    nop                                           ; $6c32: $00
    ld e, a                                       ; $6c33: $5f
    nop                                           ; $6c34: $00
    dec hl                                        ; $6c35: $2b
    nop                                           ; $6c36: $00
    nop                                           ; $6c37: $00
    dec b                                         ; $6c38: $05
    nop                                           ; $6c39: $00
    adc d                                         ; $6c3a: $8a
    nop                                           ; $6c3b: $00
    ld b, b                                       ; $6c3c: $40
    nop                                           ; $6c3d: $00
    rst $30                                       ; $6c3e: $f7
    nop                                           ; $6c3f: $00
    nop                                           ; $6c40: $00
    ld a, a                                       ; $6c41: $7f
    nop                                           ; $6c42: $00
    xor e                                         ; $6c43: $ab
    nop                                           ; $6c44: $00
    push bc                                       ; $6c45: $c5
    nop                                           ; $6c46: $00
    ld h, d                                       ; $6c47: $62
    ld bc, $f000                                  ; $6c48: $01 $00 $f0
    nop                                           ; $6c4b: $00
    cp d                                          ; $6c4c: $ba
    nop                                           ; $6c4d: $00

jr_092_6c4e:
    ld e, l                                       ; $6c4e: $5d
    nop                                           ; $6c4f: $00
    ld bc, $0168                                  ; $6c50: $01 $68 $01
    ld a, [hl+]                                   ; $6c53: $2a
    nop                                           ; $6c54: $00
    add b                                         ; $6c55: $80
    nop                                           ; $6c56: $00
    ld [bc], a                                    ; $6c57: $02
    nop                                           ; $6c58: $00
    db $10                                        ; $6c59: $10
    jr jr_092_6c8c                                ; $6c5a: $18 $30

    nop                                           ; $6c5c: $00
    add b                                         ; $6c5d: $80
    rst $38                                       ; $6c5e: $ff
    ld a, a                                       ; $6c5f: $7f
    add b                                         ; $6c60: $80
    push bc                                       ; $6c61: $c5
    add b                                         ; $6c62: $80
    ld c, e                                       ; $6c63: $4b
    add b                                         ; $6c64: $80
    nop                                           ; $6c65: $00
    rst $10                                       ; $6c66: $d7
    add b                                         ; $6c67: $80
    ld l, a                                       ; $6c68: $6f
    add b                                         ; $6c69: $80
    rst $18                                       ; $6c6a: $df
    add b                                         ; $6c6b: $80
    ld a, a                                       ; $6c6c: $7f
    add b                                         ; $6c6d: $80
    ld d, $00                                     ; $6c6e: $16 $00
    rst $38                                       ; $6c70: $ff
    rst $38                                       ; $6c71: $ff
    ld c, [hl]                                    ; $6c72: $4e
    nop                                           ; $6c73: $00
    rst $38                                       ; $6c74: $ff
    ld [bc], a                                    ; $6c75: $02
    jr nc, jr_092_6c8c                            ; $6c76: $30 $14

    ld [$91ff], sp                                ; $6c78: $08 $ff $91
    inc b                                         ; $6c7b: $04
    jr nc, jr_092_6cbe                            ; $6c7c: $30 $40

    add b                                         ; $6c7e: $80
    ld a, [de]                                    ; $6c7f: $1a
    jr c, @+$01                                   ; $6c80: $38 $ff

    nop                                           ; $6c82: $00
    push af                                       ; $6c83: $f5
    ld e, [hl]                                    ; $6c84: $5e
    nop                                           ; $6c85: $00
    inc b                                         ; $6c86: $04
    ld a, a                                       ; $6c87: $7f
    nop                                           ; $6c88: $00
    db $fd                                        ; $6c89: $fd
    nop                                           ; $6c8a: $00
    xor [hl]                                      ; $6c8b: $ae

jr_092_6c8c:
    add b                                         ; $6c8c: $80
    nop                                           ; $6c8d: $00
    xor l                                         ; $6c8e: $ad
    nop                                           ; $6c8f: $00
    inc b                                         ; $6c90: $04
    ld d, a                                       ; $6c91: $57
    nop                                           ; $6c92: $00
    ld a, [bc]                                    ; $6c93: $0a
    nop                                           ; $6c94: $00
    ld d, l                                       ; $6c95: $55
    ld a, [hl-]                                   ; $6c96: $3a
    nop                                           ; $6c97: $00
    cp l                                          ; $6c98: $bd
    nop                                           ; $6c99: $00
    ld de, $00ee                                  ; $6c9a: $11 $ee $00
    ld a, l                                       ; $6c9d: $7d
    inc d                                         ; $6c9e: $14
    nop                                           ; $6c9f: $00
    ld d, h                                       ; $6ca0: $54
    nop                                           ; $6ca1: $00
    xor b                                         ; $6ca2: $a8
    sub b                                         ; $6ca3: $90
    nop                                           ; $6ca4: $00
    ret nz                                        ; $6ca5: $c0

    ld l, a                                       ; $6ca6: $6f
    nop                                           ; $6ca7: $00
    ld [bc], a                                    ; $6ca8: $02
    jr nz, @+$06                                  ; $6ca9: $20 $04

    add b                                         ; $6cab: $80
    ld [bc], a                                    ; $6cac: $02
    add b                                         ; $6cad: $80
    ld bc, $8080                                  ; $6cae: $01 $80 $80
    sub c                                         ; $6cb1: $91
    jr c, jr_092_6d08                             ; $6cb2: $38 $54

    nop                                           ; $6cb4: $00
    ld [c], a                                     ; $6cb5: $e2
    ld bc, $0061                                  ; $6cb6: $01 $61 $00
    adc b                                         ; $6cb9: $88
    dec hl                                        ; $6cba: $2b
    nop                                           ; $6cbb: $00
    jr nz, jr_092_6c4e                            ; $6cbc: $20 $90

jr_092_6cbe:
    nop                                           ; $6cbe: $00
    inc b                                         ; $6cbf: $04
    xor b                                         ; $6cc0: $a8
    jr nc, jr_092_6ccb                            ; $6cc1: $30 $08

    inc [hl]                                      ; $6cc3: $34
    ld [$40b6], sp                                ; $6cc4: $08 $b6 $40
    ret nz                                        ; $6cc7: $c0

    ld [hl-], a                                   ; $6cc8: $32
    nop                                           ; $6cc9: $00
    ld b, d                                       ; $6cca: $42

jr_092_6ccb:
    db $10                                        ; $6ccb: $10
    ld [bc], a                                    ; $6ccc: $02
    add b                                         ; $6ccd: $80
    ld b, $82                                     ; $6cce: $06 $82
    dec c                                         ; $6cd0: $0d
    add l                                         ; $6cd1: $85
    db $10                                        ; $6cd2: $10
    ld a, [bc]                                    ; $6cd3: $0a
    add d                                         ; $6cd4: $82
    ld bc, $201f                                  ; $6cd5: $01 $1f $20
    inc bc                                        ; $6cd8: $03
    ld bc, $2aae                                  ; $6cd9: $01 $ae $2a
    nop                                           ; $6cdc: $00
    ld d, l                                       ; $6cdd: $55
    ld de, $8bff                                  ; $6cde: $11 $ff $8b
    ld bc, $feff                                  ; $6ce1: $01 $ff $fe
    ld bc, $ff2c                                  ; $6ce4: $01 $2c $ff
    ld bc, $2804                                  ; $6ce7: $01 $04 $28
    ld a, [$1061]                                 ; $6cea: $fa $61 $10
    ld [hl], e                                    ; $6ced: $73
    ld [$0090], sp                                ; $6cee: $08 $90 $00
    nop                                           ; $6cf1: $00
    and h                                         ; $6cf2: $a4
    nop                                           ; $6cf3: $00
    jp nz, $a900                                  ; $6cf4: $c2 $00 $a9

    nop                                           ; $6cf7: $00
    dec b                                         ; $6cf8: $05
    add l                                         ; $6cf9: $85
    inc h                                         ; $6cfa: $24
    ld a, [bc]                                    ; $6cfb: $0a
    adc d                                         ; $6cfc: $8a
    inc b                                         ; $6cfd: $04
    ld [$9515], sp                                ; $6cfe: $08 $15 $95
    inc b                                         ; $6d01: $04
    ld [$ab2b], sp                                ; $6d02: $08 $2b $ab
    inc bc                                        ; $6d05: $03
    ld e, a                                       ; $6d06: $5f
    ld e, a                                       ; $6d07: $5f

jr_092_6d08:
    cp a                                          ; $6d08: $bf
    cp a                                          ; $6d09: $bf
    ld a, a                                       ; $6d0a: $7f
    ld a, a                                       ; $6d0b: $7f
    ld d, [hl]                                    ; $6d0c: $56
    ld b, c                                       ; $6d0d: $41
    inc [hl]                                      ; $6d0e: $34
    nop                                           ; $6d0f: $00
    add b                                         ; $6d10: $80
    jr c, jr_092_6d1b                             ; $6d11: $38 $08

    rst $30                                       ; $6d13: $f7
    ld bc, $01aa                                  ; $6d14: $01 $aa $01
    ld d, a                                       ; $6d17: $57
    ld bc, $0002                                  ; $6d18: $01 $02 $00

jr_092_6d1b:
    ld bc, $00d5                                  ; $6d1b: $01 $d5 $00
    ld a, [hl-]                                   ; $6d1e: $3a
    add b                                         ; $6d1f: $80
    db $fd                                        ; $6d20: $fd
    nop                                           ; $6d21: $00
    ld a, a                                       ; $6d22: $7f
    nop                                           ; $6d23: $00
    add b                                         ; $6d24: $80
    xor e                                         ; $6d25: $ab
    ld d, h                                       ; $6d26: $54
    ld b, l                                       ; $6d27: $45
    cp d                                          ; $6d28: $ba
    ld [bc], a                                    ; $6d29: $02
    db $fd                                        ; $6d2a: $fd
    and c                                         ; $6d2b: $a1
    nop                                           ; $6d2c: $00
    sbc $55                                       ; $6d2d: $de $55
    push de                                       ; $6d2f: $d5
    cpl                                           ; $6d30: $2f
    xor a                                         ; $6d31: $af
    ld e, a                                       ; $6d32: $5f
    rst $18                                       ; $6d33: $df
    ccf                                           ; $6d34: $3f
    ld b, $bf                                     ; $6d35: $06 $bf
    ld a, a                                       ; $6d37: $7f
    db $fc                                        ; $6d38: $fc
    ld a, a                                       ; $6d39: $7f
    db $fc                                        ; $6d3a: $fc
    inc e                                         ; $6d3b: $1c
    ld bc, $398f                                  ; $6d3c: $01 $8f $39
    rra                                           ; $6d3f: $1f
    jr nc, @+$01                                  ; $6d40: $30 $ff

    rra                                           ; $6d42: $1f
    db $10                                        ; $6d43: $10
    ld [$3961], sp                                ; $6d44: $08 $61 $39
    stop                                          ; $6d47: $10 $00
    dec d                                         ; $6d49: $15
    ld bc, $0a00                                  ; $6d4a: $01 $00 $0a
    ld [hl+], a                                   ; $6d4d: $22
    dec d                                         ; $6d4e: $15
    dec d                                         ; $6d4f: $15
    dec hl                                        ; $6d50: $2b
    dec hl                                        ; $6d51: $2b
    ld d, l                                       ; $6d52: $55
    ld d, l                                       ; $6d53: $55
    nop                                           ; $6d54: $00
    dec hl                                        ; $6d55: $2b
    dec hl                                        ; $6d56: $2b
    ld d, a                                       ; $6d57: $57
    ld d, a                                       ; $6d58: $57
    xor a                                         ; $6d59: $af
    xor a                                         ; $6d5a: $af
    ld d, a                                       ; $6d5b: $57
    rla                                           ; $6d5c: $17
    nop                                           ; $6d5d: $00
    cpl                                           ; $6d5e: $2f
    xor a                                         ; $6d5f: $af

Jump_092_6d60:
    dec [hl]                                      ; $6d60: $35
    dec d                                         ; $6d61: $15
    ld a, [hl+]                                   ; $6d62: $2a
    ld a, [hl+]                                   ; $6d63: $2a
    ld d, l                                       ; $6d64: $55
    ld d, l                                       ; $6d65: $55
    nop                                           ; $6d66: $00
    xor e                                         ; $6d67: $ab
    xor e                                         ; $6d68: $ab
    ld e, a                                       ; $6d69: $5f
    ld d, a                                       ; $6d6a: $57
    rst $38                                       ; $6d6b: $ff
    and a                                         ; $6d6c: $a7
    rst $38                                       ; $6d6d: $ff
    halt                                          ; $6d6e: $76
    call nz, $0002                                ; $6d6f: $c4 $02 $00
    ld a, h                                       ; $6d72: $7c
    jr z, jr_092_6df4                             ; $6d73: $28 $7f

    rst $38                                       ; $6d75: $ff
    cp a                                          ; $6d76: $bf
    inc c                                         ; $6d77: $0c
    nop                                           ; $6d78: $00
    ld a, a                                       ; $6d79: $7f
    cp $00                                        ; $6d7a: $fe $00
    rst $38                                       ; $6d7c: $ff
    rst $38                                       ; $6d7d: $ff
    db $fd                                        ; $6d7e: $fd
    ei                                            ; $6d7f: $fb
    rst $38                                       ; $6d80: $ff
    rst $38                                       ; $6d81: $ff
    rst $30                                       ; $6d82: $f7
    rst $38                                       ; $6d83: $ff
    dec d                                         ; $6d84: $15
    rst $28                                       ; $6d85: $ef
    rst $18                                       ; $6d86: $df
    rst $38                                       ; $6d87: $ff
    ld [de], a                                    ; $6d88: $12
    nop                                           ; $6d89: $00
    ld e, a                                       ; $6d8a: $5f
    ldh a, [rSTAT]                                ; $6d8b: $f0 $41
    db $fc                                        ; $6d8d: $fc
    ld [bc], a                                    ; $6d8e: $02
    nop                                           ; $6d8f: $00
    add b                                         ; $6d90: $80
    rst $38                                       ; $6d91: $ff
    ld b, c                                       ; $6d92: $41
    cp a                                          ; $6d93: $bf
    ld a, a                                       ; $6d94: $7f
    cp a                                          ; $6d95: $bf
    ld a, a                                       ; $6d96: $7f
    rst $38                                       ; $6d97: $ff
    rst $18                                       ; $6d98: $df
    rst $38                                       ; $6d99: $ff
    ld b, $fe                                     ; $6d9a: $06 $fe
    rst $38                                       ; $6d9c: $ff
    db $fd                                        ; $6d9d: $fd
    rst $38                                       ; $6d9e: $ff
    ei                                            ; $6d9f: $fb
    jr nc, jr_092_6daa                            ; $6da0: $30 $08

    inc c                                         ; $6da2: $0c
    nop                                           ; $6da3: $00
    add b                                         ; $6da4: $80
    db $10                                        ; $6da5: $10
    ld [$efea], a                                 ; $6da6: $ea $ea $ef
    inc a                                         ; $6da9: $3c

jr_092_6daa:
    nop                                           ; $6daa: $00
    rst $30                                       ; $6dab: $f7
    ld hl, sp-$01                                 ; $6dac: $f8 $ff
    cp $00                                        ; $6dae: $fe $00
    db $fd                                        ; $6db0: $fd
    db $fd                                        ; $6db1: $fd
    ld [$6bea], a                                 ; $6db2: $ea $ea $6b
    sub h                                         ; $6db5: $94
    xor d                                         ; $6db6: $aa
    xor d                                         ; $6db7: $aa
    sub b                                         ; $6db8: $90
    jr nc, jr_092_6df5                            ; $6db9: $30 $3a

    cp $fe                                        ; $6dbb: $fe $fe
    or b                                          ; $6dbd: $b0
    ld [$ffef], sp                                ; $6dbe: $08 $ef $ff
    rst $28                                       ; $6dc1: $ef
    ldh [rP1], a                                  ; $6dc2: $e0 $00
    push de                                       ; $6dc4: $d5
    push de                                       ; $6dc5: $d5
    xor d                                         ; $6dc6: $aa
    xor d                                         ; $6dc7: $aa
    ld d, l                                       ; $6dc8: $55
    ld d, l                                       ; $6dc9: $55
    xor d                                         ; $6dca: $aa
    xor d                                         ; $6dcb: $aa
    add h                                         ; $6dcc: $84
    ret nz                                        ; $6dcd: $c0

    ld [$d5d5], sp                                ; $6dce: $08 $d5 $d5
    cp [hl]                                       ; $6dd1: $be
    ld b, c                                       ; $6dd2: $41
    inc c                                         ; $6dd3: $0c
    ld [$5454], sp                                ; $6dd4: $08 $54 $54
    ld b, b                                       ; $6dd7: $40
    add b                                         ; $6dd8: $80
    db $ec                                        ; $6dd9: $ec
    add hl, bc                                    ; $6dda: $09
    rst $38                                       ; $6ddb: $ff
    ld d, l                                       ; $6ddc: $55
    ld d, h                                       ; $6ddd: $54
    db $fc                                        ; $6dde: $fc
    ld [bc], a                                    ; $6ddf: $02
    ld b, b                                       ; $6de0: $40
    ret nz                                        ; $6de1: $c0

    ld [hl], e                                    ; $6de2: $73
    add hl, hl                                    ; $6de3: $29
    ld l, l                                       ; $6de4: $6d
    ld [bc], a                                    ; $6de5: $02

jr_092_6de6:
    push af                                       ; $6de6: $f5
    push af                                       ; $6de7: $f5
    ld [$f5ea], a                                 ; $6de8: $ea $ea $f5
    push af                                       ; $6deb: $f5
    nop                                           ; $6dec: $00
    ld a, [$fdfa]                                 ; $6ded: $fa $fa $fd
    db $ed                                        ; $6df0: $ed
    cp $d6                                        ; $6df1: $fe $d6
    rst $38                                       ; $6df3: $ff

jr_092_6df4:
    cp e                                          ; $6df4: $bb

jr_092_6df5:
    jr nz, @+$01                                  ; $6df5: $20 $ff

    ld a, l                                       ; $6df7: $7d
    ld [hl+], a                                   ; $6df8: $22
    ld [bc], a                                    ; $6df9: $02
    add b                                         ; $6dfa: $80
    ld b, b                                       ; $6dfb: $40
    ld b, b                                       ; $6dfc: $40
    xor b                                         ; $6dfd: $a8
    xor b                                         ; $6dfe: $a8
    dec [hl]                                      ; $6dff: $35
    ld d, h                                       ; $6e00: $54
    ld d, h                                       ; $6e01: $54
    inc b                                         ; $6e02: $04
    ld [$0044], sp                                ; $6e03: $08 $44 $00
    ld bc, $5802                                  ; $6e06: $01 $02 $58
    ld [hl], a                                    ; $6e09: $77
    inc [hl]                                      ; $6e0a: $34
    ld [bc], a                                    ; $6e0b: $02
    nop                                           ; $6e0c: $00
    ld l, e                                       ; $6e0d: $6b
    add b                                         ; $6e0e: $80
    ld b, l                                       ; $6e0f: $45
    add b                                         ; $6e10: $80
    ld h, e                                       ; $6e11: $63
    add b                                         ; $6e12: $80
    ld [hl], c                                    ; $6e13: $71
    add b                                         ; $6e14: $80
    inc c                                         ; $6e15: $0c
    ld a, e                                       ; $6e16: $7b
    add b                                         ; $6e17: $80
    ld e, l                                       ; $6e18: $5d
    add b                                         ; $6e19: $80
    and b                                         ; $6e1a: $a0
    nop                                           ; $6e1b: $00
    xor [hl]                                      ; $6e1c: $ae
    jr jr_092_6de6                                ; $6e1d: $18 $c7

    cp $00                                        ; $6e1f: $fe $00
    add [hl]                                      ; $6e21: $86
    db $fd                                        ; $6e22: $fd
    db $ed                                        ; $6e23: $ed

jr_092_6e24:
    ld a, [$d4ea]                                 ; $6e24: $fa $ea $d4
    call nc, Call_000_00aa                        ; $6e27: $d4 $aa $00
    ld a, [hl+]                                   ; $6e2a: $2a
    push de                                       ; $6e2b: $d5
    sub l                                         ; $6e2c: $95
    adc d                                         ; $6e2d: $8a
    xor d                                         ; $6e2e: $aa
    ld d, l                                       ; $6e2f: $55
    ld b, l                                       ; $6e30: $45
    xor d                                         ; $6e31: $aa
    ld [$54a2], sp                                ; $6e32: $08 $a2 $54
    ld d, b                                       ; $6e35: $50
    xor b                                         ; $6e36: $a8
    ld b, b                                       ; $6e37: $40
    jr nz, @-$7e                                  ; $6e38: $20 $80

    add c                                         ; $6e3a: $81
    ld b, b                                       ; $6e3b: $40
    db $10                                        ; $6e3c: $10
    ld b, c                                       ; $6e3d: $41
    add b                                         ; $6e3e: $80
    add c                                         ; $6e3f: $81
    ld c, h                                       ; $6e40: $4c
    ld [$806b], sp                                ; $6e41: $08 $6b $80
    ld b, c                                       ; $6e44: $41
    add b                                         ; $6e45: $80
    jr jr_092_6e8b                                ; $6e46: $18 $43

    add b                                         ; $6e48: $80
    ld d, c                                       ; $6e49: $51
    ld b, $00                                     ; $6e4a: $06 $00
    ld [bc], a                                    ; $6e4c: $02
    jr jr_092_6e24                                ; $6e4d: $18 $d5

    push bc                                       ; $6e4f: $c5
    cp d                                          ; $6e50: $ba
    nop                                           ; $6e51: $00
    xor d                                         ; $6e52: $aa
    db $db                                        ; $6e53: $db
    inc h                                         ; $6e54: $24
    ld e, [hl]                                    ; $6e55: $5e
    and d                                         ; $6e56: $a2
    call c, $a854                                 ; $6e57: $dc $54 $a8
    nop                                           ; $6e5a: $00
    jr nz, @+$01                                  ; $6e5b: $20 $ff

    nop                                           ; $6e5d: $00
    xor b                                         ; $6e5e: $a8
    jr nz, jr_092_6ea2                            ; $6e5f: $20 $41

    ld b, b                                       ; $6e61: $40
    add b                                         ; $6e62: $80
    ldh [$a9], a                                  ; $6e63: $e0 $a9
    nop                                           ; $6e65: $00
    sbc a                                         ; $6e66: $9f
    jr nz, @+$13                                  ; $6e67: $20 $11

    ld [de], a                                    ; $6e69: $12
    nop                                           ; $6e6a: $00
    add c                                         ; $6e6b: $81
    ld b, b                                       ; $6e6c: $40
    ld bc, $0020                                  ; $6e6d: $01 $20 $00
    ld bc, $0110                                  ; $6e70: $01 $10 $01
    ld [$6c01], sp                                ; $6e73: $08 $01 $6c
    sub c                                         ; $6e76: $91
    nop                                           ; $6e77: $00
    ld b, b                                       ; $6e78: $40
    ld bc, $2838                                  ; $6e79: $01 $38 $28
    ld d, h                                       ; $6e7c: $54
    add c                                         ; $6e7d: $81
    ld b, c                                       ; $6e7e: $41
    add b                                         ; $6e7f: $80

jr_092_6e80:
    ld l, d                                       ; $6e80: $6a
    add c                                         ; $6e81: $81
    dec b                                         ; $6e82: $05
    ld e, l                                       ; $6e83: $5d
    add b                                         ; $6e84: $80
    ld c, b                                       ; $6e85: $48
    ld b, b                                       ; $6e86: $40
    adc b                                         ; $6e87: $88
    ld h, h                                       ; $6e88: $64
    ld [de], a                                    ; $6e89: $12
    inc bc                                        ; $6e8a: $03

jr_092_6e8b:
    ld [bc], a                                    ; $6e8b: $02
    nop                                           ; $6e8c: $00
    cp h                                          ; $6e8d: $bc
    and b                                         ; $6e8e: $a0
    ld c, c                                       ; $6e8f: $49
    ldh [rSC], a                                  ; $6e90: $e0 $02
    nop                                           ; $6e92: $00
    or b                                          ; $6e93: $b0
    ld de, $48c0                                  ; $6e94: $11 $c0 $48
    ld e, l                                       ; $6e97: $5d

jr_092_6e98:
    inc bc                                        ; $6e98: $03
    halt                                          ; $6e99: $76
    add c                                         ; $6e9a: $81
    nop                                           ; $6e9b: $00
    ld e, a                                       ; $6e9c: $5f
    add b                                         ; $6e9d: $80
    ld a, [hl-]                                   ; $6e9e: $3a
    push bc                                       ; $6e9f: $c5
    ld l, a                                       ; $6ea0: $6f
    sub b                                         ; $6ea1: $90

jr_092_6ea2:
    ld a, [hl-]                                   ; $6ea2: $3a
    push bc                                       ; $6ea3: $c5
    nop                                           ; $6ea4: $00
    ld d, l                                       ; $6ea5: $55
    xor d                                         ; $6ea6: $aa
    jr z, jr_092_6e80                             ; $6ea7: $28 $d7

    db $10                                        ; $6ea9: $10
    rst $28                                       ; $6eaa: $ef
    cp a                                          ; $6eab: $bf
    ret nz                                        ; $6eac: $c0

    inc bc                                        ; $6ead: $03
    add b                                         ; $6eae: $80
    rst $38                                       ; $6eaf: $ff

jr_092_6eb0:
    or b                                          ; $6eb0: $b0
    ldh [$af], a                                  ; $6eb1: $e0 $af
    ldh a, [rSC]                                  ; $6eb3: $f0 $02
    jr z, jr_092_6e98                             ; $6eb5: $28 $e1

    ld bc, $0380                                  ; $6eb7: $01 $80 $03
    db $10                                        ; $6eba: $10
    rst $38                                       ; $6ebb: $ff
    nop                                           ; $6ebc: $00
    jp $ff3c                                      ; $6ebd: $c3 $3c $ff


    inc a                                         ; $6ec0: $3c
    rst $38                                       ; $6ec1: $ff
    rrca                                          ; $6ec2: $0f
    nop                                           ; $6ec3: $00
    xor a                                         ; $6ec4: $af
    ldh a, [$a0]                                  ; $6ec5: $f0 $a0
    cp c                                          ; $6ec7: $b9
    ld bc, $0313                                  ; $6ec8: $01 $13 $03
    ld h, $20                                     ; $6ecb: $26 $20
    jr nz, jr_092_6ed7                            ; $6ecd: $20 $08

    ld sp, hl                                     ; $6ecf: $f9
    inc sp                                        ; $6ed0: $33
    inc bc                                        ; $6ed1: $03
    ld sp, $360b                                  ; $6ed2: $31 $0b $36
    inc de                                        ; $6ed5: $13
    ld a, [hl-]                                   ; $6ed6: $3a

jr_092_6ed7:
    jr z, jr_092_6eff                             ; $6ed7: $28 $26

    jr jr_092_6eb0                                ; $6ed9: $18 $d5

    rst $38                                       ; $6edb: $ff
    ld [hl], $18                                  ; $6edc: $36 $18
    add b                                         ; $6ede: $80
    ld h, $28                                     ; $6edf: $26 $28
    ld d, l                                       ; $6ee1: $55
    rst $38                                       ; $6ee2: $ff
    ld h, $f1                                     ; $6ee3: $26 $f1
    sub l                                         ; $6ee5: $95
    ld h, b                                       ; $6ee6: $60
    dec l                                         ; $6ee7: $2d
    nop                                           ; $6ee8: $00
    ld a, [c]                                     ; $6ee9: $f2
    ld d, a                                       ; $6eea: $57
    and b                                         ; $6eeb: $a0
    dec b                                         ; $6eec: $05
    ldh a, [$92]                                  ; $6eed: $f0 $92
    ldh [$7d], a                                  ; $6eef: $e0 $7d
    ld [bc], a                                    ; $6ef1: $02
    and b                                         ; $6ef2: $a0
    rlca                                          ; $6ef3: $07
    ldh a, [$75]                                  ; $6ef4: $f0 $75
    nop                                           ; $6ef6: $00
    cp e                                          ; $6ef7: $bb
    ld b, d                                       ; $6ef8: $42
    inc bc                                        ; $6ef9: $03
    ld e, e                                       ; $6efa: $5b
    nop                                           ; $6efb: $00
    inc h                                         ; $6efc: $24
    or $01                                        ; $6efd: $f6 $01

jr_092_6eff:
    rst $28                                       ; $6eff: $ef
    db $10                                        ; $6f00: $10
    cp d                                          ; $6f01: $ba
    dec b                                         ; $6f02: $05
    push af                                       ; $6f03: $f5
    nop                                           ; $6f04: $00
    ld a, [bc]                                    ; $6f05: $0a
    nop                                           ; $6f06: $00
    rst $38                                       ; $6f07: $ff
    add d                                         ; $6f08: $82
    rst $38                                       ; $6f09: $ff
    jr z, @+$01                                   ; $6f0a: $28 $ff

    add l                                         ; $6f0c: $85
    nop                                           ; $6f0d: $00
    rst $38                                       ; $6f0e: $ff
    xor e                                         ; $6f0f: $ab
    rst $38                                       ; $6f10: $ff
    or $ff                                        ; $6f11: $f6 $ff
    db $dd                                        ; $6f13: $dd
    rst $38                                       ; $6f14: $ff
    ld l, a                                       ; $6f15: $6f
    adc e                                         ; $6f16: $8b
    cpl                                           ; $6f17: $2f
    ld [bc], a                                    ; $6f18: $02
    db $10                                        ; $6f19: $10
    rst $38                                       ; $6f1a: $ff
    adc d                                         ; $6f1b: $8a
    jr c, jr_092_6f1e                             ; $6f1c: $38 $00

jr_092_6f1e:
    db $eb                                        ; $6f1e: $eb
    ei                                            ; $6f1f: $fb
    ld de, $0c0e                                  ; $6f20: $11 $0e $0c
    ld bc, $ff40                                  ; $6f23: $01 $40 $ff
    and d                                         ; $6f26: $a2
    rst $38                                       ; $6f27: $ff
    ret nc                                        ; $6f28: $d0

    rst $38                                       ; $6f29: $ff
    xor d                                         ; $6f2a: $aa
    rlca                                          ; $6f2b: $07
    ld [bc], a                                    ; $6f2c: $02
    ld b, b                                       ; $6f2d: $40
    rst $28                                       ; $6f2e: $ef
    dec bc                                        ; $6f2f: $0b
    ld [bc], a                                    ; $6f30: $02
    cp c                                          ; $6f31: $b9
    ld [bc], a                                    ; $6f32: $02
    halt                                          ; $6f33: $76
    nop                                           ; $6f34: $00
    cp $01                                        ; $6f35: $fe $01
    nop                                           ; $6f37: $00
    ld l, e                                       ; $6f38: $6b
    sub b                                         ; $6f39: $90
    cp [hl]                                       ; $6f3a: $be
    nop                                           ; $6f3b: $00
    db $dd                                        ; $6f3c: $dd
    jr nz, jr_092_6fb5                            ; $6f3d: $20 $76

    add b                                         ; $6f3f: $80
    nop                                           ; $6f40: $00
    cp a                                          ; $6f41: $bf
    ld b, b                                       ; $6f42: $40
    sub b                                         ; $6f43: $90
    ccf                                           ; $6f44: $3f
    ld [c], a                                     ; $6f45: $e2
    dec d                                         ; $6f46: $15
    push bc                                       ; $6f47: $c5
    ld a, [hl-]                                   ; $6f48: $3a
    nop                                           ; $6f49: $00
    ld [c], a                                     ; $6f4a: $e2
    dec d                                         ; $6f4b: $15
    add l                                         ; $6f4c: $85
    ld [hl-], a                                   ; $6f4d: $32
    ld h, d                                       ; $6f4e: $62
    dec d                                         ; $6f4f: $15
    db $f4                                        ; $6f50: $f4
    dec de                                        ; $6f51: $1b
    nop                                           ; $6f52: $00
    pop bc                                        ; $6f53: $c1
    ld [hl], $42                                  ; $6f54: $36 $42
    cp a                                          ; $6f56: $bf
    sbc c                                         ; $6f57: $99
    ld l, a                                       ; $6f58: $6f
    ld b, b                                       ; $6f59: $40
    cp a                                          ; $6f5a: $bf
    nop                                           ; $6f5b: $00
    xor d                                         ; $6f5c: $aa
    ld d, a                                       ; $6f5d: $57
    push de                                       ; $6f5e: $d5

jr_092_6f5f:
    dec hl                                        ; $6f5f: $2b
    ret c                                         ; $6f60: $d8

    daa                                           ; $6f61: $27
    and l                                         ; $6f62: $a5
    ld e, e                                       ; $6f63: $5b
    ld a, [bc]                                    ; $6f64: $0a
    db $10                                        ; $6f65: $10
    rst $28                                       ; $6f66: $ef
    push af                                       ; $6f67: $f5
    rrca                                          ; $6f68: $0f
    ld [bc], a                                    ; $6f69: $02
    jr jr_092_6f71                                ; $6f6a: $18 $05

    ld b, a                                       ; $6f6c: $47
    ld [bc], a                                    ; $6f6d: $02
    ld bc, $9080                                  ; $6f6e: $01 $80 $90

jr_092_6f71:
    nop                                           ; $6f71: $00
    ld a, [bc]                                    ; $6f72: $0a
    nop                                           ; $6f73: $00
    sub $00                                       ; $6f74: $d6 $00
    ld e, [hl]                                    ; $6f76: $5e
    and c                                         ; $6f77: $a1
    sub h                                         ; $6f78: $94
    nop                                           ; $6f79: $00
    ld a, a                                       ; $6f7a: $7f
    ld l, $df                                     ; $6f7b: $2e $df
    dec d                                         ; $6f7d: $15
    rst $28                                       ; $6f7e: $ef
    ld a, [hl+]                                   ; $6f7f: $2a
    rst $10                                       ; $6f80: $d7
    sub d                                         ; $6f81: $92
    nop                                           ; $6f82: $00
    ld l, l                                       ; $6f83: $6d
    ld [hl], b                                    ; $6f84: $70
    jr jr_092_6f5f                                ; $6f85: $18 $d8

    ccf                                           ; $6f87: $3f
    cp h                                          ; $6f88: $bc
    ld a, a                                       ; $6f89: $7f
    ld [hl], a                                    ; $6f8a: $77
    nop                                           ; $6f8b: $00
    ld hl, sp-$53                                 ; $6f8c: $f8 $ad
    ld a, [c]                                     ; $6f8e: $f2
    ld a, d                                       ; $6f8f: $7a
    db $e4                                        ; $6f90: $e4
    xor l                                         ; $6f91: $ad
    ldh a, [rNR13]                                ; $6f92: $f0 $13
    nop                                           ; $6f94: $00
    ldh [$0a], a                                  ; $6f95: $e0 $0a
    ld a, [bc]                                    ; $6f97: $0a
    sub l                                         ; $6f98: $95
    ld a, a                                       ; $6f99: $7f
    dec bc                                        ; $6f9a: $0b
    rst $38                                       ; $6f9b: $ff
    ld l, e                                       ; $6f9c: $6b
    nop                                           ; $6f9d: $00
    inc d                                         ; $6f9e: $14
    pop de                                        ; $6f9f: $d1
    ld c, $ea                                     ; $6fa0: $0e $ea
    dec b                                         ; $6fa2: $05
    push de                                       ; $6fa3: $d5
    ld [bc], a                                    ; $6fa4: $02
    ld l, l                                       ; $6fa5: $6d
    nop                                           ; $6fa6: $00
    nop                                           ; $6fa7: $00
    pop de                                        ; $6fa8: $d1
    ccf                                           ; $6fa9: $3f
    ld h, d                                       ; $6faa: $62
    rla                                           ; $6fab: $17
    ret z                                         ; $6fac: $c8

    ccf                                           ; $6fad: $3f
    and l                                         ; $6fae: $a5
    nop                                           ; $6faf: $00
    rla                                           ; $6fb0: $17
    ld [c], a                                     ; $6fb1: $e2
    rla                                           ; $6fb2: $17
    ld [hl], h                                    ; $6fb3: $74
    sub a                                         ; $6fb4: $97

jr_092_6fb5:
    sbc d                                         ; $6fb5: $9a
    ccf                                           ; $6fb6: $3f
    ldh [rP1], a                                  ; $6fb7: $e0 $00
    rla                                           ; $6fb9: $17
    ld [$65f7], sp                                ; $6fba: $08 $f7 $65
    jp c, $f50a                                   ; $6fbd: $da $0a $f5

    ld d, l                                       ; $6fc0: $55
    nop                                           ; $6fc1: $00
    xor d                                         ; $6fc2: $aa
    xor [hl]                                      ; $6fc3: $ae
    ld d, c                                       ; $6fc4: $51
    ld l, l                                       ; $6fc5: $6d
    sub d                                         ; $6fc6: $92
    sub h                                         ; $6fc7: $94
    ld l, e                                       ; $6fc8: $6b
    ld [hl+], a                                   ; $6fc9: $22
    nop                                           ; $6fca: $00
    db $dd                                        ; $6fcb: $dd
    ld l, $f1                                     ; $6fcc: $2e $f1
    dec d                                         ; $6fce: $15
    ld [c], a                                     ; $6fcf: $e2
    sub a                                         ; $6fd0: $97
    ld l, b                                       ; $6fd1: $68
    ld [de], a                                    ; $6fd2: $12
    nop                                           ; $6fd3: $00
    push hl                                       ; $6fd4: $e5
    sub l                                         ; $6fd5: $95
    ld h, d                                       ; $6fd6: $62
    ld b, e                                       ; $6fd7: $43
    or h                                          ; $6fd8: $b4
    and l                                         ; $6fd9: $a5
    ld a, d                                       ; $6fda: $7a
    rla                                           ; $6fdb: $17
    nop                                           ; $6fdc: $00
    ldh [$f7], a                                  ; $6fdd: $e0 $f7
    nop                                           ; $6fdf: $00
    sbc d                                         ; $6fe0: $9a
    ld b, b                                       ; $6fe1: $40
    push af                                       ; $6fe2: $f5
    nop                                           ; $6fe3: $00
    xor d                                         ; $6fe4: $aa
    nop                                           ; $6fe5: $00
    nop                                           ; $6fe6: $00
    ld d, c                                       ; $6fe7: $51
    nop                                           ; $6fe8: $00
    sub d                                         ; $6fe9: $92
    nop                                           ; $6fea: $00
    ld l, e                                       ; $6feb: $6b
    nop                                           ; $6fec: $00
    db $dd                                        ; $6fed: $dd
    xor e                                         ; $6fee: $ab
    ld e, a                                       ; $6fef: $5f
    inc b                                         ; $6ff0: $04
    db $10                                        ; $6ff1: $10
    ld e, l                                       ; $6ff2: $5d
    inc b                                         ; $6ff3: $04
    ld b, l                                       ; $6ff4: $45
    call nz, Call_092_5500                        ; $6ff5: $c4 $00 $55
    ld e, a                                       ; $6ff8: $5f
    ld [bc], a                                    ; $6ff9: $02
    db $f4                                        ; $6ffa: $f4
    ld [bc], a                                    ; $6ffb: $02
    cp b                                          ; $6ffc: $b8

Jump_092_6ffd:
    ldh a, [rNR10]                                ; $6ffd: $f0 $10
    dec b                                         ; $6fff: $05
    ldh a, [$30]                                  ; $7000: $f0 $30
    jr nz, jr_092_700c                            ; $7002: $20 $08

    ldh a, [rOBP0]                                ; $7004: $f0 $48
    cpl                                           ; $7006: $2f
    ldh a, [$15]                                  ; $7007: $f0 $15
    nop                                           ; $7009: $00
    ldh [$5a], a                                  ; $700a: $e0 $5a

jr_092_700c:
    ldh [$95], a                                  ; $700c: $e0 $95
    ldh [rNR12], a                                ; $700e: $e0 $12
    ldh [$b5], a                                  ; $7010: $e0 $b5
    nop                                           ; $7012: $00
    ldh [rOCPD], a                                ; $7013: $e0 $6b
    ldh a, [rRP]                                  ; $7015: $f0 $56
    ldh [$bd], a                                  ; $7017: $e0 $bd
    ld [bc], a                                    ; $7019: $02
    ld h, [hl]                                    ; $701a: $66
    nop                                           ; $701b: $00
    add hl, bc                                    ; $701c: $09
    cp a                                          ; $701d: $bf
    nop                                           ; $701e: $00
    ld d, l                                       ; $701f: $55
    ld [bc], a                                    ; $7020: $02
    ld a, [hl+]                                   ; $7021: $2a
    ld bc, $0027                                  ; $7022: $01 $27 $00
    nop                                           ; $7025: $00
    ld e, d                                       ; $7026: $5a
    ld bc, $00ef                                  ; $7027: $01 $ef $00
    pop de                                        ; $702a: $d1
    ld a, $e4                                     ; $702b: $3e $e4
    nop                                           ; $702d: $00
    inc de                                        ; $702e: $13
    or c                                          ; $702f: $b1
    ld e, [hl]                                    ; $7030: $5e
    ld h, b                                       ; $7031: $60
    sub a                                         ; $7032: $97
    ld [c], a                                     ; $7033: $e2
    rla                                           ; $7034: $17
    ld b, h                                       ; $7035: $44
    nop                                           ; $7036: $00
    or a                                          ; $7037: $b7
    sbc d                                         ; $7038: $9a
    ld [hl], a                                    ; $7039: $77
    and c                                         ; $703a: $a1
    ld d, a                                       ; $703b: $57
    ld b, [hl]                                    ; $703c: $46
    cp e                                          ; $703d: $bb
    adc c                                         ; $703e: $89
    nop                                           ; $703f: $00

jr_092_7040:
    halt                                          ; $7040: $76
    ld bc, $94ff                                  ; $7041: $01 $ff $94

jr_092_7044:
    ei                                            ; $7044: $fb
    ld b, c                                       ; $7045: $41
    cp [hl]                                       ; $7046: $be
    ld [hl+], a                                   ; $7047: $22
    nop                                           ; $7048: $00
    db $fd                                        ; $7049: $fd
    adc c                                         ; $704a: $89
    or $40                                        ; $704b: $f6 $40
    rst $38                                       ; $704d: $ff
    jr z, jr_092_7040                             ; $704e: $28 $f0

    ld [hl], a                                    ; $7050: $77
    nop                                           ; $7051: $00
    ld hl, sp-$15                                 ; $7052: $f8 $eb
    db $fc                                        ; $7054: $fc
    cp a                                          ; $7055: $bf
    ld a, a                                       ; $7056: $7f
    ld a, d                                       ; $7057: $7a
    cp a                                          ; $7058: $bf
    or h                                          ; $7059: $b4
    nop                                           ; $705a: $00
    ld a, a                                       ; $705b: $7f
    ld e, c                                       ; $705c: $59
    cp a                                          ; $705d: $bf
    ld a, [c]                                     ; $705e: $f2
    rla                                           ; $705f: $17
    nop                                           ; $7060: $00
    ld a, [bc]                                    ; $7061: $0a
    ld l, d                                       ; $7062: $6a
    ld [$f515], sp                                ; $7063: $08 $15 $f5
    dec bc                                        ; $7066: $0b
    xor a                                         ; $7067: $af
    db $d3                                        ; $7068: $d3
    inc b                                         ; $7069: $04
    ld [de], a                                    ; $706a: $12
    db $ed                                        ; $706b: $ed
    ld c, b                                       ; $706c: $48
    nop                                           ; $706d: $00
    or a                                          ; $706e: $b7
    dec h                                         ; $706f: $25
    jp c, $38d0                                   ; $7070: $da $d0 $38

    cp b                                          ; $7073: $b8
    ld a, a                                       ; $7074: $7f
    ld a, [hl]                                    ; $7075: $7e
    add b                                         ; $7076: $80
    ld d, e                                       ; $7077: $53
    inc bc                                        ; $7078: $03
    ld [hl], l                                    ; $7079: $75
    ld a, [$f4ab]                                 ; $707a: $fa $ab $f4
    ld [hl], $f9                                  ; $707d: $36 $f9
    dec b                                         ; $707f: $05
    ld bc, $0af2                                  ; $7080: $01 $f2 $0a
    push af                                       ; $7083: $f5
    or b                                          ; $7084: $b0
    and b                                         ; $7085: $a0
    db $10                                        ; $7086: $10
    and b                                         ; $7087: $a0
    inc b                                         ; $7088: $04
    jr c, jr_092_708b                             ; $7089: $38 $00

jr_092_708b:
    reti                                          ; $708b: $d9


    scf                                           ; $708c: $37
    ld [c], a                                     ; $708d: $e2
    dec d                                         ; $708e: $15
    ld [hl], d                                    ; $708f: $72
    rra                                           ; $7090: $1f
    ldh [rNR22], a                                ; $7091: $e0 $17

jr_092_7093:
    nop                                           ; $7093: $00
    ld [hl], d                                    ; $7094: $72
    dec d                                         ; $7095: $15
    and l                                         ; $7096: $a5
    ld [de], a                                    ; $7097: $12
    ld b, d                                       ; $7098: $42
    dec a                                         ; $7099: $3d
    ldh a, [rNR22]                                ; $709a: $f0 $17
    nop                                           ; $709c: $00
    adc d                                         ; $709d: $8a
    ld [hl], l                                    ; $709e: $75
    ld b, h                                       ; $709f: $44
    cp e                                          ; $70a0: $bb
    ld [bc], a                                    ; $70a1: $02
    db $fd                                        ; $70a2: $fd
    and h                                         ; $70a3: $a4
    ld a, a                                       ; $70a4: $7f
    nop                                           ; $70a5: $00
    add hl, bc                                    ; $70a6: $09
    rst $30                                       ; $70a7: $f7
    db $10                                        ; $70a8: $10
    rst $38                                       ; $70a9: $ff
    ld b, l                                       ; $70aa: $45
    cp a                                          ; $70ab: $bf
    ld a, [bc]                                    ; $70ac: $0a
    rst $38                                       ; $70ad: $ff
    dec c                                         ; $70ae: $0d
    db $10                                        ; $70af: $10
    and b                                         ; $70b0: $a0
    rra                                           ; $70b1: $1f
    cp a                                          ; $70b2: $bf
    and d                                         ; $70b3: $a2
    ld [bc], a                                    ; $70b4: $02
    ld [de], a                                    ; $70b5: $12
    ld [de], a                                    ; $70b6: $12
    add b                                         ; $70b7: $80
    xor l                                         ; $70b8: $ad
    dec b                                         ; $70b9: $05
    jr nz, jr_092_7044                            ; $70ba: $20 $88

    rst $30                                       ; $70bc: $f7
    and b                                         ; $70bd: $a0
    ld e, c                                       ; $70be: $59
    ld l, [hl]                                    ; $70bf: $6e
    or b                                          ; $70c0: $b0
    inc de                                        ; $70c1: $13
    ldh [$2e], a                                  ; $70c2: $e0 $2e
    nop                                           ; $70c4: $00
    ldh a, [rNR22]                                ; $70c5: $f0 $17
    ldh [$75], a                                  ; $70c7: $e0 $75
    and d                                         ; $70c9: $a2
    sub e                                         ; $70ca: $93
    ld h, h                                       ; $70cb: $64
    dec b                                         ; $70cc: $05
    nop                                           ; $70cd: $00
    ld a, [c]                                     ; $70ce: $f2
    ld [hl], $e1                                  ; $70cf: $36 $e1
    xor b                                         ; $70d1: $a8
    ld d, a                                       ; $70d2: $57
    dec c                                         ; $70d3: $0d
    dec b                                         ; $70d4: $05
    ld [$0540], sp                                ; $70d5: $08 $40 $05

jr_092_70d8:
    inc b                                         ; $70d8: $04
    jr c, jr_092_7093                             ; $70d9: $38 $b8

    ldh [$6d], a                                  ; $70db: $e0 $6d
    ldh a, [$f5]                                  ; $70dd: $f0 $f5
    ld a, [$bf00]                                 ; $70df: $fa $00 $bf
    ld a, a                                       ; $70e2: $7f
    ret c                                         ; $70e3: $d8

    ccf                                           ; $70e4: $3f
    ld [hl], l                                    ; $70e5: $75
    sbc [hl]                                      ; $70e6: $9e
    ret nc                                        ; $70e7: $d0

    ccf                                           ; $70e8: $3f
    nop                                           ; $70e9: $00
    ld h, d                                       ; $70ea: $62
    dec d                                         ; $70eb: $15
    ld a, [bc]                                    ; $70ec: $0a
    nop                                           ; $70ed: $00
    xor a                                         ; $70ee: $af
    nop                                           ; $70ef: $00
    ld [$0015], a                                 ; $70f0: $ea $15 $00
    rst $10                                       ; $70f3: $d7
    rst $38                                       ; $70f4: $ff
    dec b                                         ; $70f5: $05
    ei                                            ; $70f6: $fb
    jr nz, jr_092_70d8                            ; $70f7: $20 $df

    ld c, d                                       ; $70f9: $4a
    or a                                          ; $70fa: $b7
    nop                                           ; $70fb: $00
    sub c                                         ; $70fc: $91
    ld l, a                                       ; $70fd: $6f
    nop                                           ; $70fe: $00
    ld a, [bc]                                    ; $70ff: $0a
    add hl, hl                                    ; $7100: $29
    sub $a1                                       ; $7101: $d6 $a1
    rst $38                                       ; $7103: $ff
    db $10                                        ; $7104: $10
    ld d, d                                       ; $7105: $52
    xor a                                         ; $7106: $af
    ld a, a                                       ; $7107: $7f
    add sp, $05                                   ; $7108: $e8 $05
    or a                                          ; $710a: $b7
    nop                                           ; $710b: $00
    jp c, Jump_000_1000                           ; $710c: $da $00 $10

    ld d, b                                       ; $710f: $50
    cp b                                          ; $7110: $b8
    sbc d                                         ; $7111: $9a
    cp [hl]                                       ; $7112: $be
    inc b                                         ; $7113: $04
    db $fd                                        ; $7114: $fd
    rst $38                                       ; $7115: $ff
    ld [hl], a                                    ; $7116: $77
    ld hl, sp+$00                                 ; $7117: $f8 $00
    cp d                                          ; $7119: $ba
    db $f4                                        ; $711a: $f4
    ld l, a                                       ; $711b: $6f
    ldh a, [$35]                                  ; $711c: $f0 $35
    ldh [$08], a                                  ; $711e: $e0 $08
    ld [bc], a                                    ; $7120: $02
    nop                                           ; $7121: $00
    and h                                         ; $7122: $a4
    ei                                            ; $7123: $fb
    ld b, b                                       ; $7124: $40
    rst $38                                       ; $7125: $ff
    ld a, [hl+]                                   ; $7126: $2a
    rst $10                                       ; $7127: $d7
    ld a, [$0001]                                 ; $7128: $fa $01 $00
    rst $18                                       ; $712b: $df
    nop                                           ; $712c: $00
    or l                                          ; $712d: $b5
    ld [bc], a                                    ; $712e: $02
    ld l, [hl]                                    ; $712f: $6e
    ld bc, $f028                                  ; $7130: $01 $28 $f0
    nop                                           ; $7133: $00
    ld [hl], l                                    ; $7134: $75
    ld a, [$fffa]                                 ; $7135: $fa $fa $ff
    ld hl, sp-$01                                 ; $7138: $f8 $ff
    or l                                          ; $713a: $b5
    ld a, a                                       ; $713b: $7f
    nop                                           ; $713c: $00
    ld e, d                                       ; $713d: $5a
    cp a                                          ; $713e: $bf
    or l                                          ; $713f: $b5
    ld a, a                                       ; $7140: $7f
    pop bc                                        ; $7141: $c1
    ld [hl], $02                                  ; $7142: $36 $02
    nop                                           ; $7144: $00
    nop                                           ; $7145: $00
    ld e, e                                       ; $7146: $5b
    and b                                         ; $7147: $a0
    cp a                                          ; $7148: $bf
    ld b, b                                       ; $7149: $40
    and h                                         ; $714a: $a4
    ei                                            ; $714b: $fb
    pop de                                        ; $714c: $d1
    rst $28                                       ; $714d: $ef
    nop                                           ; $714e: $00
    and d                                         ; $714f: $a2
    db $dd                                        ; $7150: $dd
    ld d, c                                       ; $7151: $51
    xor [hl]                                      ; $7152: $ae
    inc h                                         ; $7153: $24
    db $db                                        ; $7154: $db
    adc b                                         ; $7155: $88
    ld [hl], b                                    ; $7156: $70
    nop                                           ; $7157: $00
    daa                                           ; $7158: $27
    ld hl, sp+$7d                                 ; $7159: $f8 $7d
    cp $f8                                        ; $715b: $fe $f8
    rst $38                                       ; $715d: $ff
    or d                                          ; $715e: $b2
    ld a, a                                       ; $715f: $7f
    nop                                           ; $7160: $00
    ld h, l                                       ; $7161: $65
    cp [hl]                                       ; $7162: $be
    jp nc, $e43d                                  ; $7163: $d2 $3d $e4

    inc de                                        ; $7166: $13
    ret nz                                        ; $7167: $c0

    jr c, jr_092_717a                             ; $7168: $38 $10

    or d                                          ; $716a: $b2
    ld a, l                                       ; $716b: $7d
    ld e, d                                       ; $716c: $5a
    ld c, [hl]                                    ; $716d: $4e
    nop                                           ; $716e: $00
    ld a, [hl-]                                   ; $716f: $3a
    push af                                       ; $7170: $f5
    sub l                                         ; $7171: $95
    ld a, [$2a00]                                 ; $7172: $fa $00 $2a
    push af                                       ; $7175: $f5
    sub [hl]                                      ; $7176: $96
    ld h, b                                       ; $7177: $60
    nop                                           ; $7178: $00
    ld a, [bc]                                    ; $7179: $0a

jr_092_717a:
    ld d, b                                       ; $717a: $50
    xor a                                         ; $717b: $af
    nop                                           ; $717c: $00
    dec d                                         ; $717d: $15
    rst $38                                       ; $717e: $ff
    ld e, e                                       ; $717f: $5b
    and b                                         ; $7180: $a0
    ld l, $c1                                     ; $7181: $2e $c1
    ld e, l                                       ; $7183: $5d
    add b                                         ; $7184: $80
    inc b                                         ; $7185: $04
    xor [hl]                                      ; $7186: $ae
    nop                                           ; $7187: $00
    db $db                                        ; $7188: $db
    nop                                           ; $7189: $00
    and d                                         ; $718a: $a2
    jp nc, $eb00                                  ; $718b: $d2 $00 $eb

    or [hl]                                       ; $718e: $b6
    nop                                           ; $718f: $00
    call nz, $abbf                                ; $7190: $c4 $bf $ab
    or $d4                                        ; $7193: $f6 $d4
    cp a                                          ; $7195: $bf
    xor d                                         ; $7196: $aa
    rst $30                                       ; $7197: $f7
    nop                                           ; $7198: $00
    sub l                                         ; $7199: $95
    cp $ca                                        ; $719a: $fe $ca
    or a                                          ; $719c: $b7
    sub h                                         ; $719d: $94
    rst $38                                       ; $719e: $ff
    db $e3                                        ; $719f: $e3
    cp [hl]                                       ; $71a0: $be
    ld bc, $f69d                                  ; $71a1: $01 $9d $f6
    ldh [$bf], a                                  ; $71a4: $e0 $bf
    sub l                                         ; $71a6: $95
    cp $a0                                        ; $71a7: $fe $a0
    ld a, [$0012]                                 ; $71a9: $fa $12 $00
    rst $18                                       ; $71ac: $df
    and b                                         ; $71ad: $a0
    ccf                                           ; $71ae: $3f
    ret nz                                        ; $71af: $c0

    db $fc                                        ; $71b0: $fc
    add a                                         ; $71b1: $87
    dec sp                                        ; $71b2: $3b
    rst $00                                       ; $71b3: $c7
    ld b, $ff                                     ; $71b4: $06 $ff
    add b                                         ; $71b6: $80
    ld a, [hl]                                    ; $71b7: $7e
    add b                                         ; $71b8: $80
    push af                                       ; $71b9: $f5
    ld b, b                                       ; $71ba: $40
    ld d, $14                                     ; $71bb: $16 $14
    dec de                                        ; $71bd: $1b
    rst $38                                       ; $71be: $ff
    and b                                         ; $71bf: $a0
    add d                                         ; $71c0: $82
    dec b                                         ; $71c1: $05
    ld c, b                                       ; $71c2: $48
    ld d, h                                       ; $71c3: $54
    inc b                                         ; $71c4: $04
    db $eb                                        ; $71c5: $eb
    ld bc, $01d2                                  ; $71c6: $01 $d2 $01
    inc hl                                        ; $71c9: $23
    ld [$c2e1], sp                                ; $71ca: $08 $e1 $c2
    pop hl                                        ; $71cd: $e1
    jp Jump_000_055e                              ; $71ce: $c3 $5e $05


    inc bc                                        ; $71d1: $03
    ld bc, $0189                                  ; $71d2: $01 $89 $01
    rst $38                                       ; $71d5: $ff
    ld h, l                                       ; $71d6: $65
    rst $18                                       ; $71d7: $df
    sbc e                                         ; $71d8: $9b
    db $ed                                        ; $71d9: $ed
    ld b, l                                       ; $71da: $45
    rst $38                                       ; $71db: $ff
    inc b                                         ; $71dc: $04
    jr jr_092_71df                                ; $71dd: $18 $00

jr_092_71df:
    ld d, l                                       ; $71df: $55
    rst $28                                       ; $71e0: $ef
    and c                                         ; $71e1: $a1
    rst $38                                       ; $71e2: $ff
    ld b, a                                       ; $71e3: $47
    db $fd                                        ; $71e4: $fd
    inc sp                                        ; $71e5: $33
    db $ed                                        ; $71e6: $ed
    rrca                                          ; $71e7: $0f
    ld d, a                                       ; $71e8: $57
    db $ed                                        ; $71e9: $ed
    ld hl, $04ff                                  ; $71ea: $21 $ff $04
    ld [$5850], sp                                ; $71ed: $08 $50 $58
    ld a, d                                       ; $71f0: $7a
    ld c, $50                                     ; $71f1: $0e $50
    ld c, b                                       ; $71f3: $48
    ld b, b                                       ; $71f4: $40
    db $e4                                        ; $71f5: $e4
    ld d, b                                       ; $71f6: $50
    nop                                           ; $71f7: $00
    ld l, d                                       ; $71f8: $6a
    add b                                         ; $71f9: $80
    pop de                                        ; $71fa: $d1
    add b                                         ; $71fb: $80
    ld h, h                                       ; $71fc: $64
    add b                                         ; $71fd: $80
    dec b                                         ; $71fe: $05
    ret nc                                        ; $71ff: $d0

    add b                                         ; $7200: $80
    ld h, b                                       ; $7201: $60
    add b                                         ; $7202: $80
    ret nz                                        ; $7203: $c0

    adc [hl]                                      ; $7204: $8e
    ld b, $c0                                     ; $7205: $06 $c0
    ld d, b                                       ; $7207: $50
    ld b, $60                                     ; $7208: $06 $60
    jr nz, jr_092_7236                            ; $720a: $20 $2a

    ld l, $ec                                     ; $720c: $2e $ec
    ld b, $05                                     ; $720e: $06 $05
    nop                                           ; $7210: $00
    ld [bc], a                                    ; $7211: $02
    ld bc, $0207                                  ; $7212: $01 $07 $02
    ld bc, $010a                                  ; $7215: $01 $0a $01
    rla                                           ; $7218: $17
    ld bc, $042a                                  ; $7219: $01 $2a $04
    db $10                                        ; $721c: $10
    ld d, a                                       ; $721d: $57
    nop                                           ; $721e: $00
    ld bc, $8040                                  ; $721f: $01 $40 $80
    ret z                                         ; $7222: $c8

    add b                                         ; $7223: $80
    ld b, d                                       ; $7224: $42
    add b                                         ; $7225: $80
    push de                                       ; $7226: $d5
    add e                                         ; $7227: $83
    sbc $26                                       ; $7228: $de $26
    add b                                         ; $722a: $80
    rst $38                                       ; $722b: $ff
    adc d                                         ; $722c: $8a
    nop                                           ; $722d: $00
    dec d                                         ; $722e: $15
    or b                                          ; $722f: $b0
    ld b, $e0                                     ; $7230: $06 $e0
    ld l, $04                                     ; $7232: $2e $04
    nop                                           ; $7234: $00
    rst $38                                       ; $7235: $ff

jr_092_7236:
    cp [hl]                                       ; $7236: $be
    ld bc, $3e7f                                  ; $7237: $01 $7f $3e
    ld b, $fd                                     ; $723a: $06 $fd
    inc bc                                        ; $723c: $03
    ld bc, $01fe                                  ; $723d: $01 $fe $01
    push af                                       ; $7240: $f5
    dec bc                                        ; $7241: $0b
    xor d                                         ; $7242: $aa
    ld d, l                                       ; $7243: $55
    inc bc                                        ; $7244: $03
    or d                                          ; $7245: $b2
    inc bc                                        ; $7246: $03
    ld h, b                                       ; $7247: $60
    xor d                                         ; $7248: $aa
    or [hl]                                       ; $7249: $b6
    inc bc                                        ; $724a: $03
    and c                                         ; $724b: $a1
    dec e                                         ; $724c: $1d
    nop                                           ; $724d: $00
    rst $38                                       ; $724e: $ff
    rst $10                                       ; $724f: $d7
    xor b                                         ; $7250: $a8
    ld d, l                                       ; $7251: $55
    and b                                         ; $7252: $a0
    ld l, d                                       ; $7253: $6a
    inc bc                                        ; $7254: $03
    ld d, l                                       ; $7255: $55
    add l                                         ; $7256: $85
    daa                                           ; $7257: $27
    nop                                           ; $7258: $00
    rst $38                                       ; $7259: $ff
    ld a, [$5500]                                 ; $725a: $fa $00 $55
    ret nc                                        ; $725d: $d0

    sbc d                                         ; $725e: $9a
    inc bc                                        ; $725f: $03
    db $10                                        ; $7260: $10

jr_092_7261:
    jr jr_092_7261                                ; $7261: $18 $fe

    dec h                                         ; $7263: $25
    rlca                                          ; $7264: $07
    dec d                                         ; $7265: $15
    ld bc, $c03f                                  ; $7266: $01 $3f $c0
    ld b, $fe                                     ; $7269: $06 $fe
    add b                                         ; $726b: $80
    ld a, l                                       ; $726c: $7d
    add b                                         ; $726d: $80
    ld [$0202], a                                 ; $726e: $ea $02 $02
    ld [hl], $18                                  ; $7271: $36 $18
    ret nc                                        ; $7273: $d0

    dec l                                         ; $7274: $2d
    nop                                           ; $7275: $00
    and b                                         ; $7276: $a0
    ld h, b                                       ; $7277: $60
    rlca                                          ; $7278: $07
    dec b                                         ; $7279: $05
    ld c, h                                       ; $727a: $4c
    dec b                                         ; $727b: $05
    ld [hl], $18                                  ; $727c: $36 $18
    xor [hl]                                      ; $727e: $ae
    ld h, b                                       ; $727f: $60
    nop                                           ; $7280: $00
    ld [hl], h                                    ; $7281: $74
    cp [hl]                                       ; $7282: $be
    and d                                         ; $7283: $a2

jr_092_7284:
    ld b, $6c                                     ; $7284: $06 $6c
    dec bc                                        ; $7286: $0b
    call z, Call_092_7e0f                         ; $7287: $cc $0f $7e
    adc h                                         ; $728a: $8c
    nop                                           ; $728b: $00
    ld l, d                                       ; $728c: $6a
    add b                                         ; $728d: $80
    ld de, $80d4                                  ; $728e: $11 $d4 $80
    ld l, b                                       ; $7291: $68
    ret nz                                        ; $7292: $c0

    nop                                           ; $7293: $00
    ld b, c                                       ; $7294: $41
    add b                                         ; $7295: $80
    jp nz, $0585                                  ; $7296: $c2 $85 $05

    ld d, h                                       ; $7299: $54
    jr nz, jr_092_72ef                            ; $729a: $20 $53

    dec b                                         ; $729c: $05
    ld [bc], a                                    ; $729d: $02
    sub [hl]                                      ; $729e: $96
    nop                                           ; $729f: $00
    xor e                                         ; $72a0: $ab
    xor [hl]                                      ; $72a1: $ae
    rlca                                          ; $72a2: $07
    xor a                                         ; $72a3: $af
    nop                                           ; $72a4: $00
    ld bc, $8055                                  ; $72a5: $01 $55 $80
    db $eb                                        ; $72a8: $eb
    add b                                         ; $72a9: $80
    ld e, a                                       ; $72aa: $5f
    add b                                         ; $72ab: $80
    ei                                            ; $72ac: $fb
    halt                                          ; $72ad: $76
    daa                                           ; $72ae: $27
    sbc b                                         ; $72af: $98
    ld d, d                                       ; $72b0: $52
    ld [bc], a                                    ; $72b1: $02
    nop                                           ; $72b2: $00
    rst $18                                       ; $72b3: $df
    jp nc, $b007                                  ; $72b4: $d2 $07 $b0

    jr c, jr_092_72bb                             ; $72b7: $38 $02

    db $fd                                        ; $72b9: $fd
    xor h                                         ; $72ba: $ac

jr_092_72bb:
    ld [bc], a                                    ; $72bb: $02
    ret nc                                        ; $72bc: $d0

    dec d                                         ; $72bd: $15
    ld [$ff80], a                                 ; $72be: $ea $80 $ff
    ld a, [$0484]                                 ; $72c1: $fa $84 $04
    nop                                           ; $72c4: $00
    add d                                         ; $72c5: $82
    adc b                                         ; $72c6: $88
    inc b                                         ; $72c7: $04
    or h                                          ; $72c8: $b4
    ld c, e                                       ; $72c9: $4b
    and c                                         ; $72ca: $a1
    ld e, [hl]                                    ; $72cb: $5e
    ld l, d                                       ; $72cc: $6a
    or [hl]                                       ; $72cd: $b6
    rlca                                          ; $72ce: $07
    db $db                                        ; $72cf: $db
    add b                                         ; $72d0: $80
    or e                                          ; $72d1: $b3
    rlca                                          ; $72d2: $07
    xor l                                         ; $72d3: $ad
    ld d, b                                       ; $72d4: $50
    ld a, [hl+]                                   ; $72d5: $2a
    push de                                       ; $72d6: $d5
    ld [bc], a                                    ; $72d7: $02
    db $fd                                        ; $72d8: $fd
    ld d, a                                       ; $72d9: $57
    jr z, jr_092_7284                             ; $72da: $28 $a8

    dec bc                                        ; $72dc: $0b
    jp z, Jump_092_5d05                           ; $72dd: $ca $05 $5d

    jp Jump_000_0207                              ; $72e0: $c3 $07 $02


    nop                                           ; $72e3: $00
    db $e3                                        ; $72e4: $e3
    nop                                           ; $72e5: $00
    nop                                           ; $72e6: $00
    xor e                                         ; $72e7: $ab
    ld d, h                                       ; $72e8: $54
    ld b, c                                       ; $72e9: $41
    nop                                           ; $72ea: $00
    ld d, h                                       ; $72eb: $54
    xor e                                         ; $72ec: $ab
    nop                                           ; $72ed: $00
    add b                                         ; $72ee: $80

jr_092_72ef:
    ld e, c                                       ; $72ef: $59
    ld b, $00                                     ; $72f0: $06 $00
    rst $38                                       ; $72f2: $ff
    push de                                       ; $72f3: $d5

jr_092_72f4:
    ld a, [hl+]                                   ; $72f4: $2a
    ld b, d                                       ; $72f5: $42
    cp l                                          ; $72f6: $bd
    ld d, $20                                     ; $72f7: $16 $20
    add sp, -$80                                  ; $72f9: $e8 $80
    ld e, d                                       ; $72fb: $5a
    inc b                                         ; $72fc: $04
    add b                                         ; $72fd: $80

jr_092_72fe:
    rst $38                                       ; $72fe: $ff
    ld a, [hl+]                                   ; $72ff: $2a
    push de                                       ; $7300: $d5

jr_092_7301:
    add l                                         ; $7301: $85
    ld b, c                                       ; $7302: $41
    ld a, [$0840]                                 ; $7303: $fa $40 $08
    ld d, b                                       ; $7306: $50
    cpl                                           ; $7307: $2f
    nop                                           ; $7308: $00
    rst $38                                       ; $7309: $ff
    or a                                          ; $730a: $b7
    rst $28                                       ; $730b: $ef
    rlca                                          ; $730c: $07
    nop                                           ; $730d: $00
    ld [$9400], a                                 ; $730e: $ea $00 $94
    dec bc                                        ; $7311: $0b
    ld a, [hl+]                                   ; $7312: $2a
    push de                                       ; $7313: $d5
    nop                                           ; $7314: $00
    rst $38                                       ; $7315: $ff
    inc b                                         ; $7316: $04
    xor e                                         ; $7317: $ab
    ld d, h                                       ; $7318: $54
    nop                                           ; $7319: $00
    rst $38                                       ; $731a: $ff
    ld h, l                                       ; $731b: $65
    rst $38                                       ; $731c: $ff
    rlca                                          ; $731d: $07
    dec b                                         ; $731e: $05
    nop                                           ; $731f: $00
    dec d                                         ; $7320: $15
    ld a, [hl+]                                   ; $7321: $2a
    push de                                       ; $7322: $d5
    db $e3                                        ; $7323: $e3
    ld [de], a                                    ; $7324: $12

jr_092_7325:
    ld b, $a0                                     ; $7325: $06 $a0
    ld d, $06                                     ; $7327: $16 $06
    ld l, e                                       ; $7329: $6b
    push af                                       ; $732a: $f5
    rlca                                          ; $732b: $07
    ld [bc], a                                    ; $732c: $02
    ld l, d                                       ; $732d: $6a
    dec d                                         ; $732e: $15
    add sp, $00                                   ; $732f: $e8 $00
    ld b, d                                       ; $7331: $42
    cp l                                          ; $7332: $bd
    ld [bc], a                                    ; $7333: $02
    rra                                           ; $7334: $1f
    pop hl                                        ; $7335: $e1
    dec d                                         ; $7336: $15
    db $e3                                        ; $7337: $e3
    db $e3                                        ; $7338: $e3
    db $e3                                        ; $7339: $e3
    adc b                                         ; $733a: $88
    ld b, $fe                                     ; $733b: $06 $fe
    rlca                                          ; $733d: $07
    nop                                           ; $733e: $00
    db $e3                                        ; $733f: $e3
    ld c, d                                       ; $7340: $4a
    rrca                                          ; $7341: $0f
    ld b, b                                       ; $7342: $40
    ld d, a                                       ; $7343: $57
    ld l, h                                       ; $7344: $6c
    ld b, $f6                                     ; $7345: $06 $f6
    ld a, $ea                                     ; $7347: $3e $ea
    ld a, $e2                                     ; $7349: $3e $e2
    cp $20                                        ; $734b: $fe $20
    cp $e2                                        ; $734d: $fe $e2
    ld e, d                                       ; $734f: $5a
    rrca                                          ; $7350: $0f
    ld d, l                                       ; $7351: $55
    rst $38                                       ; $7352: $ff
    rra                                           ; $7353: $1f
    rra                                           ; $7354: $1f
    dec d                                         ; $7355: $15
    ld bc, $da1f                                  ; $7356: $01 $1f $da
    rra                                           ; $7359: $1f
    ret nc                                        ; $735a: $d0

    rra                                           ; $735b: $1f
    ld a, [de]                                    ; $735c: $1a
    rra                                           ; $735d: $1f
    db $10                                        ; $735e: $10
    jr jr_092_7301                                ; $735f: $18 $a0

    inc d                                         ; $7361: $14
    ld [$45aa], sp                                ; $7362: $08 $aa $45
    dec b                                         ; $7365: $05
    xor d                                         ; $7366: $aa
    rst $38                                       ; $7367: $ff
    jp $e3e2                                      ; $7368: $c3 $e2 $e3


    ld h, c                                       ; $736b: $61
    ld [c], a                                     ; $736c: $e2
    inc b                                         ; $736d: $04
    jr jr_092_72f4                                ; $736e: $18 $84

    rrca                                          ; $7370: $0f
    push af                                       ; $7371: $f5
    rst $38                                       ; $7372: $ff
    cp $22                                        ; $7373: $fe $22
    ld [bc], a                                    ; $7375: $02
    jr z, jr_092_72fe                             ; $7376: $28 $86

    sub h                                         ; $7378: $94
    rrca                                          ; $7379: $0f
    dec c                                         ; $737a: $0d
    rrca                                          ; $737b: $0f
    db $10                                        ; $737c: $10
    rra                                           ; $737d: $1f
    ld [bc], a                                    ; $737e: $02
    jr z, jr_092_7325                             ; $737f: $28 $a4

    rrca                                          ; $7381: $0f
    ld h, c                                       ; $7382: $61
    ld h, b                                       ; $7383: $60
    db $e3                                        ; $7384: $e3
    xor e                                         ; $7385: $ab
    ld sp, $17b3                                  ; $7386: $31 $b3 $17
    ld d, l                                       ; $7389: $55
    rst $38                                       ; $738a: $ff
    ld b, b                                       ; $738b: $40
    nop                                           ; $738c: $00
    ld [hl], l                                    ; $738d: $75
    ldh [rNR50], a                                ; $738e: $e0 $24
    dec b                                         ; $7390: $05
    ld c, d                                       ; $7391: $4a
    ld [$00a4], sp                                ; $7392: $08 $a4 $00
    ld a, [$40b4]                                 ; $7395: $fa $b4 $40
    push de                                       ; $7398: $d5
    ld a, [hl+]                                   ; $7399: $2a
    ld bc, $ff00                                  ; $739a: $01 $00 $ff
    ld d, [hl]                                    ; $739d: $56
    xor b                                         ; $739e: $a8
    nop                                           ; $739f: $00
    rst $38                                       ; $73a0: $ff
    or [hl]                                       ; $73a1: $b6
    and e                                         ; $73a2: $a3
    dec b                                         ; $73a3: $05
    db $10                                        ; $73a4: $10
    ld h, c                                       ; $73a5: $61
    add b                                         ; $73a6: $80

jr_092_73a7:
    or l                                          ; $73a7: $b5
    ld b, b                                       ; $73a8: $40
    dec b                                         ; $73a9: $05
    ld bc, $68ff                                  ; $73aa: $01 $ff $68
    rla                                           ; $73ad: $17
    ld de, $ff01                                  ; $73ae: $11 $01 $ff
    rst $10                                       ; $73b1: $d7
    ld [$4110], sp                                ; $73b2: $08 $10 $41
    cp a                                          ; $73b5: $bf
    rst $38                                       ; $73b6: $ff
    jr c, jr_092_73bc                             ; $73b7: $38 $03

    ld b, b                                       ; $73b9: $40
    cp a                                          ; $73ba: $bf
    ld b, h                                       ; $73bb: $44

jr_092_73bc:
    ld bc, $00ab                                  ; $73bc: $01 $ab $00
    add l                                         ; $73bf: $85
    nop                                           ; $73c0: $00
    adc d                                         ; $73c1: $8a
    nop                                           ; $73c2: $00
    inc c                                         ; $73c3: $0c
    ret nz                                        ; $73c4: $c0

    nop                                           ; $73c5: $00
    cp d                                          ; $73c6: $ba
    dec b                                         ; $73c7: $05
    db $e4                                        ; $73c8: $e4
    nop                                           ; $73c9: $00
    inc e                                         ; $73ca: $1c
    add hl, bc                                    ; $73cb: $09
    db $fd                                        ; $73cc: $fd
    ld l, $1a                                     ; $73cd: $2e $1a
    ld bc, $40b4                                  ; $73cf: $01 $b4 $40
    ld b, d                                       ; $73d2: $42
    ld bc, $015d                                  ; $73d3: $01 $5d $01
    ld e, e                                       ; $73d6: $5b
    rst $18                                       ; $73d7: $df
    dec b                                         ; $73d8: $05
    adc d                                         ; $73d9: $8a
    ld de, $a075                                  ; $73da: $11 $75 $a0
    ld e, a                                       ; $73dd: $5f
    ld a, $08                                     ; $73de: $3e $08
    ld d, b                                       ; $73e0: $50
    xor a                                         ; $73e1: $af
    ld bc, $0785                                  ; $73e2: $01 $85 $07
    add c                                         ; $73e5: $81
    ld b, d                                       ; $73e6: $42
    inc b                                         ; $73e7: $04
    dec bc                                        ; $73e8: $0b
    ld bc, $40ff                                  ; $73e9: $01 $ff $40
    cp a                                          ; $73ec: $bf
    ld bc, $0281                                  ; $73ed: $01 $81 $02
    ldh a, [rSC]                                  ; $73f0: $f0 $02
    jr z, jr_092_73fd                             ; $73f2: $28 $09

    rlca                                          ; $73f4: $07
    dec c                                         ; $73f5: $0d
    rlca                                          ; $73f6: $07
    ret nc                                        ; $73f7: $d0

    jr z, jr_092_745b                             ; $73f8: $28 $61

    pop hl                                        ; $73fa: $e1
    and c                                         ; $73fb: $a1

jr_092_73fc:
    pop hl                                        ; $73fc: $e1

jr_092_73fd:
    ld [$ed2d], sp                                ; $73fd: $08 $2d $ed
    xor l                                         ; $7400: $ad
    db $ed                                        ; $7401: $ed
    adc $0f                                       ; $7402: $ce $0f
    dec b                                         ; $7404: $05
    rrca                                          ; $7405: $0f
    rrca                                          ; $7406: $0f
    nop                                           ; $7407: $00
    rrca                                          ; $7408: $0f
    ld l, a                                       ; $7409: $6f
    ld [$086f], sp                                ; $740a: $08 $6f $08
    ld l, h                                       ; $740d: $6c
    dec bc                                        ; $740e: $0b
    ld l, h                                       ; $740f: $6c
    ld b, c                                       ; $7410: $41
    dec bc                                        ; $7411: $0b
    db $db                                        ; $7412: $db
    rla                                           ; $7413: $17
    rst $00                                       ; $7414: $c7
    rst $38                                       ; $7415: $ff
    rst $00                                       ; $7416: $c7
    rst $38                                       ; $7417: $ff
    ld b, a                                       ; $7418: $47

jr_092_7419:
    ld [bc], a                                    ; $7419: $02
    ld [$fb34], sp                                ; $741a: $08 $34 $fb
    ld b, a                                       ; $741d: $47
    jr c, jr_092_7428                             ; $741e: $38 $08

    ld b, e                                       ; $7420: $43
    ld [$8608], sp                                ; $7421: $08 $08 $86
    ld [bc], a                                    ; $7424: $02
    jr z, jr_092_73a7                             ; $7425: $28 $80

    inc c                                         ; $7427: $0c

jr_092_7428:
    ld d, l                                       ; $7428: $55
    add b                                         ; $7429: $80
    ld hl, $02e1                                  ; $742a: $21 $e1 $02
    jr z, jr_092_7419                             ; $742d: $28 $ea

    rrca                                          ; $742f: $0f
    ld d, b                                       ; $7430: $50
    ld hl, sp+$1f                                 ; $7431: $f8 $1f
    ld l, a                                       ; $7433: $6f
    ld [$020f], sp                                ; $7434: $08 $0f $02
    jr nz, jr_092_7463                            ; $7437: $20 $2a

    ld hl, $0034                                  ; $7439: $21 $34 $00
    jr c, jr_092_7446                             ; $743c: $38 $08

    ld b, $00                                     ; $743e: $06 $00
    and b                                         ; $7440: $a0
    ld e, d                                       ; $7441: $5a
    ld de, $566e                                  ; $7442: $11 $6e $56
    rlca                                          ; $7445: $07

jr_092_7446:
    rst $38                                       ; $7446: $ff
    add b                                         ; $7447: $80
    ld e, e                                       ; $7448: $5b
    and h                                         ; $7449: $a4
    db $fd                                        ; $744a: $fd
    ld bc, $5682                                  ; $744b: $01 $82 $56
    xor c                                         ; $744e: $a9
    xor b                                         ; $744f: $a8
    rst $10                                       ; $7450: $d7
    ld b, h                                       ; $7451: $44
    cp e                                          ; $7452: $bb
    ret nc                                        ; $7453: $d0

    ld l, $06                                     ; $7454: $2e $06
    inc d                                         ; $7456: $14
    nop                                           ; $7457: $00
    ld b, b                                       ; $7458: $40
    nop                                           ; $7459: $00
    ld a, [hl+]                                   ; $745a: $2a

jr_092_745b:
    ld [hl-], a                                   ; $745b: $32
    ld [bc], a                                    ; $745c: $02
    cp d                                          ; $745d: $ba
    rra                                           ; $745e: $1f
    ld b, b                                       ; $745f: $40
    adc b                                         ; $7460: $88
    ld b, [hl]                                    ; $7461: $46
    ld [de], a                                    ; $7462: $12

jr_092_7463:
    sub h                                         ; $7463: $94
    nop                                           ; $7464: $00
    ld l, d                                       ; $7465: $6a
    rst $28                                       ; $7466: $ef
    ld l, $00                                     ; $7467: $2e $00
    stop                                          ; $7469: $10 $00
    dec b                                         ; $746b: $05
    inc h                                         ; $746c: $24
    nop                                           ; $746d: $00
    ld b, d                                       ; $746e: $42
    nop                                           ; $746f: $00
    add hl, hl                                    ; $7470: $29
    db $10                                        ; $7471: $10
    jr nc, jr_092_73fc                            ; $7472: $30 $88

    ld c, $00                                     ; $7474: $0e $00
    inc b                                         ; $7476: $04
    xor b                                         ; $7477: $a8
    nop                                           ; $7478: $00
    ld d, l                                       ; $7479: $55
    nop                                           ; $747a: $00
    or [hl]                                       ; $747b: $b6
    ld d, b                                       ; $747c: $50
    ld [bc], a                                    ; $747d: $02
    ei                                            ; $747e: $fb
    inc b                                         ; $747f: $04
    ld [bc], a                                    ; $7480: $02
    rst $28                                       ; $7481: $ef
    db $10                                        ; $7482: $10
    ld a, d                                       ; $7483: $7a
    add l                                         ; $7484: $85
    push de                                       ; $7485: $d5
    ld a, [hl+]                                   ; $7486: $2a
    ldh a, [$0e]                                  ; $7487: $f0 $0e
    cp l                                          ; $7489: $bd
    jr nz, jr_092_748c                            ; $748a: $20 $00

jr_092_748c:
    rst $10                                       ; $748c: $d7
    ld h, b                                       ; $748d: $60
    ld [bc], a                                    ; $748e: $02
    rst $30                                       ; $748f: $f7
    ld [$45ba], sp                                ; $7490: $08 $ba $45
    ld a, a                                       ; $7493: $7f
    nop                                           ; $7494: $00
    add b                                         ; $7495: $80
    xor d                                         ; $7496: $aa
    ld d, l                                       ; $7497: $55
    ld d, h                                       ; $7498: $54
    xor e                                         ; $7499: $ab
    push de                                       ; $749a: $d5
    nop                                           ; $749b: $00
    cp d                                          ; $749c: $ba
    add b                                         ; $749d: $80
    sub b                                         ; $749e: $90
    ld b, $7f                                     ; $749f: $06 $7f
    add b                                         ; $74a1: $80
    xor e                                         ; $74a2: $ab
    ld d, h                                       ; $74a3: $54
    ld b, l                                       ; $74a4: $45
    cp d                                          ; $74a5: $ba
    add d                                         ; $74a6: $82
    ld [bc], a                                    ; $74a7: $02
    ld a, l                                       ; $74a8: $7d
    ld hl, $eede                                  ; $74a9: $21 $de $ee
    nop                                           ; $74ac: $00
    ei                                            ; $74ad: $fb
    ld a, b                                       ; $74ae: $78
    rlca                                          ; $74af: $07
    db $db                                        ; $74b0: $db
    nop                                           ; $74b1: $00
    inc h                                         ; $74b2: $24
    ld a, l                                       ; $74b3: $7d
    add d                                         ; $74b4: $82
    sub $29                                       ; $74b5: $d6 $29
    xor b                                         ; $74b7: $a8
    ld d, a                                       ; $74b8: $57
    ld b, h                                       ; $74b9: $44
    ld b, l                                       ; $74ba: $45
    cp e                                          ; $74bb: $bb

jr_092_74bc:
    sbc $07                                       ; $74bc: $de $07
    pop af                                        ; $74be: $f1
    rst $28                                       ; $74bf: $ef
    pop af                                        ; $74c0: $f1
    inc b                                         ; $74c1: $04
    ld [$08df], sp                                ; $74c2: $08 $df $08
    nop                                           ; $74c5: $00
    inc c                                         ; $74c6: $0c
    rst $08                                       ; $74c7: $cf
    pop af                                        ; $74c8: $f1
    add hl, bc                                    ; $74c9: $09
    ld sp, hl                                     ; $74ca: $f9
    ld [bc], a                                    ; $74cb: $02
    ld [$0101], sp                                ; $74cc: $08 $01 $01
    rrca                                          ; $74cf: $0f
    add hl, bc                                    ; $74d0: $09
    add b                                         ; $74d1: $80
    ld bc, $e310                                  ; $74d2: $01 $10 $e3
    db $e3                                        ; $74d5: $e3
    ld a, a                                       ; $74d6: $7f
    cp $bf                                        ; $74d7: $fe $bf
    cp $23                                        ; $74d9: $fe $23
    inc b                                         ; $74db: $04
    db $e3                                        ; $74dc: $e3
    and e                                         ; $74dd: $a3
    db $e3                                        ; $74de: $e3
    inc hl                                        ; $74df: $23
    ld [c], a                                     ; $74e0: $e2
    ld [bc], a                                    ; $74e1: $02
    ld [$fefe], sp                                ; $74e2: $08 $fe $fe
    ld e, a                                       ; $74e5: $5f
    call nc, $021a                                ; $74e6: $d4 $1a $02
    ret nz                                        ; $74e9: $c0

    ld a, [de]                                    ; $74ea: $1a
    ld [bc], a                                    ; $74eb: $02
    ld [$3419], a                                 ; $74ec: $ea $19 $34
    ld [$19fa], sp                                ; $74ef: $08 $fa $19
    ld c, b                                       ; $74f2: $48
    ld [bc], a                                    ; $74f3: $02
    ld a, [$0001]                                 ; $74f4: $fa $01 $00
    ld [hl], $08                                  ; $74f7: $36 $08
    ld b, h                                       ; $74f9: $44
    ld c, c                                       ; $74fa: $49
    ld [hl], $08                                  ; $74fb: $36 $08
    rst $20                                       ; $74fd: $e7
    ld c, $7d                                     ; $74fe: $0e $7d
    ld b, h                                       ; $7500: $44
    ld bc, $1afd                                  ; $7501: $01 $fd $1a
    ld b, a                                       ; $7504: $47
    cp $47                                        ; $7505: $fe $47
    ld a, [de]                                    ; $7507: $1a
    ld a, [hl+]                                   ; $7508: $2a
    ld b, h                                       ; $7509: $44
    ld a, [hl+]                                   ; $750a: $2a
    db $ed                                        ; $750b: $ed
    ld bc, $c100                                  ; $750c: $01 $00 $c1
    call Call_000_0039                            ; $750f: $cd $39 $00
    inc b                                         ; $7512: $04
    jr @+$01                                      ; $7513: $18 $ff

    rst $38                                       ; $7515: $ff
    ld [hl], h                                    ; $7516: $74
    add hl, bc                                    ; $7517: $09
    ld b, h                                       ; $7518: $44
    ld c, c                                       ; $7519: $49
    db $fc                                        ; $751a: $fc
    inc [hl]                                      ; $751b: $34
    nop                                           ; $751c: $00
    ld a, b                                       ; $751d: $78
    db $fc                                        ; $751e: $fc
    ld [bc], a                                    ; $751f: $02
    jr nc, jr_092_74bc                            ; $7520: $30 $9a

    rrca                                          ; $7522: $0f
    ld a, b                                       ; $7523: $78
    ld a, [bc]                                    ; $7524: $0a
    ld b, h                                       ; $7525: $44
    ld a, [hl-]                                   ; $7526: $3a
    jr jr_092_7541                                ; $7527: $18 $18

    rla                                           ; $7529: $17
    nop                                           ; $752a: $00
    rra                                           ; $752b: $1f
    rst $18                                       ; $752c: $df
    rra                                           ; $752d: $1f
    ret nc                                        ; $752e: $d0

    jr jr_092_7549                                ; $752f: $18 $18

jr_092_7531:
    jr @+$12                                      ; $7531: $18 $10

    pop bc                                        ; $7533: $c1
    ld [bc], a                                    ; $7534: $02
    db $10                                        ; $7535: $10
    add h                                         ; $7536: $84
    ld [bc], a                                    ; $7537: $02
    adc a                                         ; $7538: $8f
    ld a, [$f08f]                                 ; $7539: $fa $8f $f0
    rst $38                                       ; $753c: $ff
    inc sp                                        ; $753d: $33
    dec b                                         ; $753e: $05
    ld b, b                                       ; $753f: $40
    adc b                                         ; $7540: $88

jr_092_7541:
    ld [bc], a                                    ; $7541: $02
    ld [$8787], sp                                ; $7542: $08 $87 $87
    rlca                                          ; $7545: $07
    add a                                         ; $7546: $87
    or a                                          ; $7547: $b7
    add a                                         ; $7548: $87

jr_092_7549:
    inc b                                         ; $7549: $04
    scf                                           ; $754a: $37
    add a                                         ; $754b: $87
    add e                                         ; $754c: $83
    add a                                         ; $754d: $87
    add a                                         ; $754e: $87
    inc b                                         ; $754f: $04
    db $10                                        ; $7550: $10
    add c                                         ; $7551: $81
    rst $38                                       ; $7552: $ff
    ld e, h                                       ; $7553: $5c
    sub b                                         ; $7554: $90
    add b                                         ; $7555: $80
    rlca                                          ; $7556: $07
    push de                                       ; $7557: $d5
    add b                                         ; $7558: $80
    scf                                           ; $7559: $37
    inc [hl]                                      ; $755a: $34
    jr jr_092_7531                                ; $755b: $18 $d4

    ld a, [de]                                    ; $755d: $1a
    ld d, a                                       ; $755e: $57
    db $fc                                        ; $755f: $fc
    jr nc, @-$4f                                  ; $7560: $30 $af

    db $fc                                        ; $7562: $fc
    ld [hl], $10                                  ; $7563: $36 $10
    call c, Call_092_4307                         ; $7565: $dc $07 $43
    jp $c2c2                                      ; $7568: $c3 $c2 $c2


    ld b, $fe                                     ; $756b: $06 $fe
    ld a, [hl]                                    ; $756d: $7e
    rst $38                                       ; $756e: $ff
    ld a, [hl]                                    ; $756f: $7e
    add e                                         ; $7570: $83
    ld a, [hl-]                                   ; $7571: $3a
    nop                                           ; $7572: $00
    and a                                         ; $7573: $a7
    rrca                                          ; $7574: $0f
    ld b, a                                       ; $7575: $47
    nop                                           ; $7576: $00
    rst $00                                       ; $7577: $c7
    ld b, a                                       ; $7578: $47
    ld a, a                                       ; $7579: $7f
    ld b, a                                       ; $757a: $47
    ld a, a                                       ; $757b: $7f
    rst $00                                       ; $757c: $c7
    ld a, a                                       ; $757d: $7f
    rlca                                          ; $757e: $07
    and b                                         ; $757f: $a0
    inc h                                         ; $7580: $24
    nop                                           ; $7581: $00
    rlca                                          ; $7582: $07
    ld [bc], a                                    ; $7583: $02
    jr nc, @+$01                                  ; $7584: $30 $ff

    rst $38                                       ; $7586: $ff
    jp $c242                                      ; $7587: $c3 $42 $c2


    add b                                         ; $758a: $80
    ld [bc], a                                    ; $758b: $02
    ld b, b                                       ; $758c: $40
    rst $38                                       ; $758d: $ff
    rst $38                                       ; $758e: $ff
    rst $00                                       ; $758f: $c7
    ld b, a                                       ; $7590: $47
    ld b, e                                       ; $7591: $43
    ld b, a                                       ; $7592: $47
    ld b, a                                       ; $7593: $47
    xor e                                         ; $7594: $ab
    inc b                                         ; $7595: $04
    jr nz, jr_092_75db                            ; $7596: $20 $43

    db $f4                                        ; $7598: $f4
    ld bc, $4008                                  ; $7599: $01 $08 $40
    ld h, [hl]                                    ; $759c: $66
    ld [$0668], sp                                ; $759d: $08 $68 $06
    jr nc, @+$51                                  ; $75a0: $30 $4f

    ld d, b                                       ; $75a2: $50
    nop                                           ; $75a3: $00
    jr nc, jr_092_760d                            ; $75a4: $30 $67

    ld bc, $6730                                  ; $75a6: $01 $30 $67
    add c                                         ; $75a9: $81
    rst $38                                       ; $75aa: $ff
    ret nz                                        ; $75ab: $c0

    cp a                                          ; $75ac: $bf

jr_092_75ad:
    ld d, e                                       ; $75ad: $53
    add b                                         ; $75ae: $80
    inc b                                         ; $75af: $04
    jr nz, @-$54                                  ; $75b0: $20 $aa

    or [hl]                                       ; $75b2: $b6
    inc h                                         ; $75b3: $24
    xor d                                         ; $75b4: $aa
    ld d, l                                       ; $75b5: $55
    pop af                                        ; $75b6: $f1
    inc e                                         ; $75b7: $1c
    db $10                                        ; $75b8: $10
    jr @+$03                                      ; $75b9: $18 $01

    ld bc, $83ff                                  ; $75bb: $01 $ff $83
    ld a, a                                       ; $75be: $7f
    ld bc, $03ff                                  ; $75bf: $01 $ff $03
    cp $07                                        ; $75c2: $fe $07
    ld a, [bc]                                    ; $75c4: $0a
    inc bc                                        ; $75c5: $03
    rst $38                                       ; $75c6: $ff
    pop bc                                        ; $75c7: $c1
    cp a                                          ; $75c8: $bf
    or b                                          ; $75c9: $b0
    ld c, l                                       ; $75ca: $4d
    rst $28                                       ; $75cb: $ef
    ld h, b                                       ; $75cc: $60
    ld b, $00                                     ; $75cd: $06 $00
    nop                                           ; $75cf: $00
    rst $38                                       ; $75d0: $ff
    ei                                            ; $75d1: $fb
    ld bc, $01f6                                  ; $75d2: $01 $f6 $01
    dec sp                                        ; $75d5: $3b
    pop hl                                        ; $75d6: $e1
    sub $00                                       ; $75d7: $d6 $00
    pop hl                                        ; $75d9: $e1
    db $eb                                        ; $75da: $eb

jr_092_75db:
    ld bc, $0152                                  ; $75db: $01 $52 $01
    xor e                                         ; $75de: $ab
    ld bc, $087f                                  ; $75df: $01 $7f $08
    add b                                         ; $75e2: $80
    dec a                                         ; $75e3: $3d
    add b                                         ; $75e4: $80
    ld l, [hl]                                    ; $75e5: $6e
    ld [c], a                                     ; $75e6: $e2
    inc b                                         ; $75e7: $04
    ld l, $80                                     ; $75e8: $2e $80
    ld d, h                                       ; $75ea: $54
    add c                                         ; $75eb: $81
    ret nz                                        ; $75ec: $c0

    ld [bc], a                                    ; $75ed: $02
    ld b, b                                       ; $75ee: $40
    add b                                         ; $75ef: $80
    jp $e7ff                                      ; $75f0: $c3 $ff $e7


    rst $18                                       ; $75f3: $df
    inc b                                         ; $75f4: $04
    ld c, b                                       ; $75f5: $48
    ld a, [de]                                    ; $75f6: $1a
    adc b                                         ; $75f7: $88
    nop                                           ; $75f8: $00
    ld b, b                                       ; $75f9: $40
    call nz, Call_000_0404                        ; $75fa: $c4 $04 $04
    ld [$2ac0], sp                                ; $75fd: $08 $c0 $2a
    inc bc                                        ; $7600: $03
    ret nz                                        ; $7601: $c0

    pop de                                        ; $7602: $d1
    ld h, $03                                     ; $7603: $26 $03
    inc b                                         ; $7605: $04
    jr @+$12                                      ; $7606: $18 $10

    and [hl]                                      ; $7608: $a6
    dec b                                         ; $7609: $05
    ld b, d                                       ; $760a: $42
    add b                                         ; $760b: $80
    add hl, hl                                    ; $760c: $29

jr_092_760d:
    ld a, d                                       ; $760d: $7a
    dec b                                         ; $760e: $05
    ld [de], a                                    ; $760f: $12
    ld a, [hl-]                                   ; $7610: $3a
    add b                                         ; $7611: $80
    db $fd                                        ; $7612: $fd
    jp z, $ab05                                   ; $7613: $ca $05 $ab

    call nc, $0250                                ; $7616: $d4 $50 $02
    db $fd                                        ; $7619: $fd
    nop                                           ; $761a: $00
    and c                                         ; $761b: $a1
    sbc $06                                       ; $761c: $de $06
    ld bc, $012b                                  ; $761e: $01 $2b $01
    ld d, [hl]                                    ; $7621: $56
    ld bc, $bf16                                  ; $7622: $01 $16 $bf
    ld bc, $78ee                                  ; $7625: $01 $ee $78
    dec d                                         ; $7628: $15
    rst $38                                       ; $7629: $ff
    inc b                                         ; $762a: $04
    jr nz, jr_092_75ad                            ; $762b: $20 $80

    dec a                                         ; $762d: $3d
    ld a, a                                       ; $762e: $7f
    ld b, h                                       ; $762f: $44
    add b                                         ; $7630: $80
    ld d, b                                       ; $7631: $50
    dec e                                         ; $7632: $1d
    ld d, h                                       ; $7633: $54
    add b                                         ; $7634: $80
    add sp, $72                                   ; $7635: $e8 $72
    nop                                           ; $7637: $00
    jp z, Jump_092_5d80                           ; $7638: $ca $80 $5d

    ld [hl], l                                    ; $763b: $75
    or [hl]                                       ; $763c: $b6
    ld [bc], a                                    ; $763d: $02
    ld d, c                                       ; $763e: $51
    ld c, d                                       ; $763f: $4a
    ld b, $47                                     ; $7640: $06 $47
    dec bc                                        ; $7642: $0b
    db $e4                                        ; $7643: $e4
    dec c                                         ; $7644: $0d
    ld b, d                                       ; $7645: $42
    ld b, h                                       ; $7646: $44
    ld b, $c5                                     ; $7647: $06 $c5
    ld c, b                                       ; $7649: $48
    ld c, $4c                                     ; $764a: $0e $4c
    ld c, $06                                     ; $764c: $0e $06
    ld bc, $e00b                                  ; $764e: $01 $0b $e0
    dec b                                         ; $7651: $05
    ldh [$08], a                                  ; $7652: $e0 $08
    ld d, $c4                                     ; $7654: $16 $c4
    inc c                                         ; $7656: $0c
    ld c, $e0                                     ; $7657: $0e $e0
    dec c                                         ; $7659: $0d
    nop                                           ; $765a: $00
    nop                                           ; $765b: $00
    inc b                                         ; $765c: $04
    db $10                                        ; $765d: $10
    ld b, $12                                     ; $765e: $06 $12
    nop                                           ; $7660: $00
    ld de, $0025                                  ; $7661: $11 $25 $00
    ld c, d                                       ; $7664: $4a
    adc b                                         ; $7665: $88
    ld d, $26                                     ; $7666: $16 $26
    ld bc, $708b                                  ; $7668: $01 $8b $70

jr_092_766b:
    nop                                           ; $766b: $00
    inc d                                         ; $766c: $14
    xor l                                         ; $766d: $ad
    inc bc                                        ; $766e: $03
    ld e, [hl]                                    ; $766f: $5e
    ldh [rNR51], a                                ; $7670: $e0 $25
    add b                                         ; $7672: $80
    ld b, b                                       ; $7673: $40
    ld bc, $ffa8                                  ; $7674: $01 $a8 $ff
    ld b, d                                       ; $7677: $42
    add l                                         ; $7678: $85
    ld b, b                                       ; $7679: $40
    ld hl, $ffef                                  ; $767a: $21 $ef $ff
    rst $38                                       ; $767d: $ff
    cpl                                           ; $767e: $2f
    rst $38                                       ; $767f: $ff
    inc bc                                        ; $7680: $03
    ld l, $8e                                     ; $7681: $2e $8e
    inc bc                                        ; $7683: $03
    inc b                                         ; $7684: $04
    cpl                                           ; $7685: $2f
    rst $38                                       ; $7686: $ff
    ld e, d                                       ; $7687: $5a
    inc c                                         ; $7688: $0c
    db $10                                        ; $7689: $10
    jp z, Jump_092_4417                           ; $768a: $ca $17 $44

    add hl, hl                                    ; $768d: $29
    pop bc                                        ; $768e: $c1
    dec b                                         ; $768f: $05
    cp a                                          ; $7690: $bf
    add e                                         ; $7691: $83
    rst $38                                       ; $7692: $ff
    ld b, c                                       ; $7693: $41
    cp a                                          ; $7694: $bf
    jr nc, jr_092_76c0                            ; $7695: $30 $29

    xor e                                         ; $7697: $ab
    ldh [rTAC], a                                 ; $7698: $e0 $07
    ldh a, [$09]                                  ; $769a: $f0 $09
    and e                                         ; $769c: $a3
    rlca                                          ; $769d: $07
    ld d, d                                       ; $769e: $52
    rst $38                                       ; $769f: $ff
    ld bc, $8070                                  ; $76a0: $01 $70 $80
    ld [bc], a                                    ; $76a3: $02
    nop                                           ; $76a4: $00
    ret nz                                        ; $76a5: $c0

    cp a                                          ; $76a6: $bf
    inc b                                         ; $76a7: $04
    jr jr_092_766b                                ; $76a8: $18 $c1

    jr nz, jr_092_766b                            ; $76aa: $20 $bf

    add e                                         ; $76ac: $83

jr_092_76ad:
    inc b                                         ; $76ad: $04
    ld h, b                                       ; $76ae: $60
    rst $38                                       ; $76af: $ff

jr_092_76b0:
    rst $38                                       ; $76b0: $ff
    nop                                           ; $76b1: $00
    rst $38                                       ; $76b2: $ff
    xor d                                         ; $76b3: $aa
    jr c, jr_092_770b                             ; $76b4: $38 $55

    nop                                           ; $76b6: $00
    ld b, $00                                     ; $76b7: $06 $00
    ld [$3d00], sp                                ; $76b9: $08 $00 $3d
    nop                                           ; $76bc: $00
    ld [$40f7], sp                                ; $76bd: $08 $f7 $40

jr_092_76c0:
    nop                                           ; $76c0: $00
    cp a                                          ; $76c1: $bf
    add d                                         ; $76c2: $82
    ld a, l                                       ; $76c3: $7d
    ld b, l                                       ; $76c4: $45
    cp d                                          ; $76c5: $ba
    xor d                                         ; $76c6: $aa
    ld d, l                                       ; $76c7: $55
    rst $18                                       ; $76c8: $df
    nop                                           ; $76c9: $00
    jr nz, jr_092_774b                            ; $76ca: $20 $7f

    add b                                         ; $76cc: $80
    cp $00                                        ; $76cd: $fe $00
    jr nz, jr_092_76b0                            ; $76cf: $20 $df

    nop                                           ; $76d1: $00
    nop                                           ; $76d2: $00
    rst $38                                       ; $76d3: $ff
    jr z, jr_092_76ad                             ; $76d4: $28 $d7

    ld d, l                                       ; $76d6: $55
    xor d                                         ; $76d7: $aa
    ld a, [$e005]                                 ; $76d8: $fa $05 $e0
    nop                                           ; $76db: $00
    rra                                           ; $76dc: $1f
    add sp, $10                                   ; $76dd: $e8 $10
    or [hl]                                       ; $76df: $b6
    jr jr_092_76e2                                ; $76e0: $18 $00

jr_092_76e2:
    rst $38                                       ; $76e2: $ff
    ld [bc], a                                    ; $76e3: $02
    nop                                           ; $76e4: $00
    db $fd                                        ; $76e5: $fd

jr_092_76e6:
    adc b                                         ; $76e6: $88
    ld [hl], a                                    ; $76e7: $77
    dec d                                         ; $76e8: $15
    ld [$55aa], a                                 ; $76e9: $ea $aa $55
    scf                                           ; $76ec: $37
    nop                                           ; $76ed: $00
    add sp, $3d                                   ; $76ee: $e8 $3d
    ld [de], a                                    ; $76f0: $12
    ccf                                           ; $76f1: $3f
    stop                                          ; $76f2: $10 $00
    rst $38                                       ; $76f4: $ff
    ld [hl+], a                                   ; $76f5: $22
    nop                                           ; $76f6: $00
    db $dd                                        ; $76f7: $dd
    dec d                                         ; $76f8: $15
    ld [$d52a], a                                 ; $76f9: $ea $2a $d5
    ld [hl], a                                    ; $76fc: $77
    adc b                                         ; $76fd: $88
    rst $38                                       ; $76fe: $ff
    nop                                           ; $76ff: $00

Call_092_7700:
    nop                                           ; $7700: $00
    cp l                                          ; $7701: $bd
    ld b, b                                       ; $7702: $40

Jump_092_7703:
    db $eb                                        ; $7703: $eb
    nop                                           ; $7704: $00
    add b                                         ; $7705: $80
    ld a, a                                       ; $7706: $7f
    stop                                          ; $7707: $10 $00
    rst $28                                       ; $7709: $ef
    ld b, e                                       ; $770a: $43

jr_092_770b:
    cp l                                          ; $770b: $bd
    and l                                         ; $770c: $a5
    ld e, e                                       ; $770d: $5b
    ld a, e                                       ; $770e: $7b
    add l                                         ; $770f: $85
    rst $38                                       ; $7710: $ff
    ld [bc], a                                    ; $7711: $02
    ld bc, $21df                                  ; $7712: $01 $df $21
    ei                                            ; $7715: $fb
    ld bc, $9104                                  ; $7716: $01 $04 $91
    nop                                           ; $7719: $00
    ret nz                                        ; $771a: $c0

    nop                                           ; $771b: $00
    nop                                           ; $771c: $00
    add b                                         ; $771d: $80
    nop                                           ; $771e: $00
    ret nc                                        ; $771f: $d0

    nop                                           ; $7720: $00
    ld l, d                                       ; $7721: $6a
    add b                                         ; $7722: $80
    ccf                                           ; $7723: $3f
    jr nz, jr_092_76e6                            ; $7724: $20 $c0

    ret nz                                        ; $7726: $c0

    ld l, [hl]                                    ; $7727: $6e
    nop                                           ; $7728: $00
    rst $38                                       ; $7729: $ff
    rst $38                                       ; $772a: $ff
    dec e                                         ; $772b: $1d
    add hl, bc                                    ; $772c: $09
    add hl, bc                                    ; $772d: $09

jr_092_772e:
    nop                                           ; $772e: $00
    add hl, bc                                    ; $772f: $09
    dec c                                         ; $7730: $0d
    add hl, bc                                    ; $7731: $09
    add hl, sp                                    ; $7732: $39
    rrca                                          ; $7733: $0f
    xor $1f                                       ; $7734: $ee $1f
    inc c                                         ; $7736: $0c
    ld [$08f8], sp                                ; $7737: $08 $f8 $08
    rst $38                                       ; $773a: $ff
    ldh a, [$60]                                  ; $773b: $f0 $60
    jr nz, jr_092_772e                            ; $773d: $20 $ef

    db $10                                        ; $773f: $10
    dec a                                         ; $7740: $3d
    db $10                                        ; $7741: $10
    jp nz, Jump_000_215e                          ; $7742: $c2 $5e $21

    ld h, b                                       ; $7745: $60
    jr c, jr_092_779f                             ; $7746: $38 $57

    xor b                                         ; $7748: $a8
    cp l                                          ; $7749: $bd
    ld b, d                                       ; $774a: $42

jr_092_774b:
    jr nz, @+$05                                  ; $774b: $20 $03

    db $fc                                        ; $774d: $fc
    ld d, b                                       ; $774e: $50
    ld [$bd42], sp                                ; $774f: $08 $42 $bd
    and l                                         ; $7752: $a5
    ld e, d                                       ; $7753: $5a
    ld a, e                                       ; $7754: $7b
    nop                                           ; $7755: $00
    add l                                         ; $7756: $85
    cp $03                                        ; $7757: $fe $03
    db $dd                                        ; $7759: $dd
    ld h, $fa                                     ; $775a: $26 $fa
    ld b, $e0                                     ; $775c: $06 $e0
    nop                                           ; $775e: $00
    rst $38                                       ; $775f: $ff
    ld [hl], c                                    ; $7760: $71
    xor $ea                                       ; $7761: $ee $ea
    push de                                       ; $7763: $d5
    push af                                       ; $7764: $f5
    adc d                                         ; $7765: $8a
    ld e, a                                       ; $7766: $5f
    nop                                           ; $7767: $00
    and b                                         ; $7768: $a0
    rst $38                                       ; $7769: $ff
    nop                                           ; $776a: $00
    ld e, a                                       ; $776b: $5f
    nop                                           ; $776c: $00
    dec bc                                        ; $776d: $0b
    nop                                           ; $776e: $00
    push af                                       ; $776f: $f5
    nop                                           ; $7770: $00
    nop                                           ; $7771: $00
    add sp, $07                                   ; $7772: $e8 $07
    ld b, [hl]                                    ; $7774: $46
    ld [$0894], sp                                ; $7775: $08 $94 $08
    ld c, $00                                     ; $7778: $0e $00
    ld [$0c4b], sp                                ; $777a: $08 $4b $0c
    ld [$0f0f], sp                                ; $777d: $08 $0f $0f
    rlca                                          ; $7780: $07
    ld a, h                                       ; $7781: $7c
    nop                                           ; $7782: $00
    rra                                           ; $7783: $1f
    rrca                                          ; $7784: $0f
    rst $38                                       ; $7785: $ff
    inc bc                                        ; $7786: $03
    nop                                           ; $7787: $00
    ld bc, $8700                                  ; $7788: $01 $00 $87
    nop                                           ; $778b: $00
    inc bc                                        ; $778c: $03
    rst $38                                       ; $778d: $ff
    inc b                                         ; $778e: $04
    ld b, $fc                                     ; $778f: $06 $fc
    xor [hl]                                      ; $7791: $ae
    db $fc                                        ; $7792: $fc
    rra                                           ; $7793: $1f
    nop                                           ; $7794: $00
    ldh a, [$c0]                                  ; $7795: $f0 $c0
    rst $38                                       ; $7797: $ff
    pop hl                                        ; $7798: $e1
    add b                                         ; $7799: $80
    adc a                                         ; $779a: $8f
    ldh a, [$3f]                                  ; $779b: $f0 $3f
    nop                                           ; $779d: $00
    rst $38                                       ; $779e: $ff

jr_092_779f:
    rrca                                          ; $779f: $0f
    inc b                                         ; $77a0: $04
    ld b, $04                                     ; $77a1: $06 $04
    add h                                         ; $77a3: $84
    inc b                                         ; $77a4: $04
    rst $10                                       ; $77a5: $d7
    nop                                           ; $77a6: $00
    nop                                           ; $77a7: $00
    adc a                                         ; $77a8: $8f
    nop                                           ; $77a9: $00
    push bc                                       ; $77aa: $c5
    add b                                         ; $77ab: $80
    adc d                                         ; $77ac: $8a
    add b                                         ; $77ad: $80
    and h                                         ; $77ae: $a4
    stop                                          ; $77af: $10 $00
    ld [$0100], sp                                ; $77b1: $08 $00 $01
    ld [$0187], sp                                ; $77b4: $08 $87 $01
    ld bc, $0001                                  ; $77b7: $01 $01 $00
    dec d                                         ; $77ba: $15
    nop                                           ; $77bb: $00
    ld b, b                                       ; $77bc: $40
    nop                                           ; $77bd: $00
    adc c                                         ; $77be: $89
    nop                                           ; $77bf: $00
    stop                                          ; $77c0: $10 $00
    ld bc, $00aa                                  ; $77c2: $01 $aa $00
    ld d, l                                       ; $77c5: $55
    nop                                           ; $77c6: $00
    ld a, h                                       ; $77c7: $7c
    add a                                         ; $77c8: $87
    ld b, $43                                     ; $77c9: $06 $43
    ld bc, $f500                                  ; $77cb: $01 $00 $f5
    dec bc                                        ; $77ce: $0b
    dec h                                         ; $77cf: $25
    ld bc, $0f51                                  ; $77d0: $01 $51 $0f
    xor e                                         ; $77d3: $ab
    ld de, $7901                                  ; $77d4: $11 $01 $79
    db $10                                        ; $77d7: $10
    db $ec                                        ; $77d8: $ec
    inc b                                         ; $77d9: $04
    add h                                         ; $77da: $84
    db $fc                                        ; $77db: $fc
    ldh a, [$c2]                                  ; $77dc: $f0 $c2
    db $10                                        ; $77de: $10
    jr jr_092_7856                                ; $77df: $18 $75

    add b                                         ; $77e1: $80
    and b                                         ; $77e2: $a0
    ld e, l                                       ; $77e3: $5d
    ld bc, $0835                                  ; $77e4: $01 $35 $08
    ld b, b                                       ; $77e7: $40

Jump_092_77e8:
    ret nz                                        ; $77e8: $c0

    ld h, b                                       ; $77e9: $60
    nop                                           ; $77ea: $00
    jr nz, @+$32                                  ; $77eb: $20 $30

    jr nz, jr_092_785b                            ; $77ed: $20 $6c

    jr nc, jr_092_7822                            ; $77ef: $30 $31

    ld hl, sp-$16                                 ; $77f1: $f8 $ea
    nop                                           ; $77f3: $00
    ret z                                         ; $77f4: $c8

    rst $28                                       ; $77f5: $ef
    nop                                           ; $77f6: $00
    sbc $01                                       ; $77f7: $de $01
    db $fd                                        ; $77f9: $fd
    ld [bc], a                                    ; $77fa: $02
    ei                                            ; $77fb: $fb
    inc b                                         ; $77fc: $04
    inc b                                         ; $77fd: $04
    pop de                                        ; $77fe: $d1
    ld l, $a3                                     ; $77ff: $2e $a3
    ld e, h                                       ; $7801: $5c
    ld [hl], $09                                  ; $7802: $36 $09
    db $fc                                        ; $7804: $fc
    stop                                          ; $7805: $10 $00
    rst $30                                       ; $7807: $f7
    jr @-$23                                      ; $7808: $18 $db

    ccf                                           ; $780a: $3f
    rst $28                                       ; $780b: $ef
    rra                                           ; $780c: $1f
    ld d, b                                       ; $780d: $50
    xor a                                         ; $780e: $af
    nop                                           ; $780f: $00
    ei                                            ; $7810: $fb
    inc b                                         ; $7811: $04
    or a                                          ; $7812: $b7
    ld c, b                                       ; $7813: $48
    ei                                            ; $7814: $fb
    inc b                                         ; $7815: $04
    jr jr_092_7827                                ; $7816: $18 $0f

    nop                                           ; $7818: $00
    cp $08                                        ; $7819: $fe $08
    rrca                                          ; $781b: $0f
    ld hl, sp-$09                                 ; $781c: $f8 $f7
    ld hl, sp+$1d                                 ; $781e: $f8 $1d
    ld [c], a                                     ; $7820: $e2
    nop                                           ; $7821: $00

jr_092_7822:
    rst $30                                       ; $7822: $f7
    ld [$20df], sp                                ; $7823: $08 $df $20
    ld [hl], l                                    ; $7826: $75

jr_092_7827:
    adc d                                         ; $7827: $8a
    ld e, l                                       ; $7828: $5d
    adc b                                         ; $7829: $88
    nop                                           ; $782a: $00
    and $0c                                       ; $782b: $e6 $0c
    cp e                                          ; $782d: $bb
    ld b, $fd                                     ; $782e: $06 $fd
    inc bc                                        ; $7830: $03
    xor $11                                       ; $7831: $ee $11
    nop                                           ; $7833: $00
    cp l                                          ; $7834: $bd
    ld b, d                                       ; $7835: $42
    rst $38                                       ; $7836: $ff
    nop                                           ; $7837: $00
    xor e                                         ; $7838: $ab
    ld d, h                                       ; $7839: $54
    push bc                                       ; $783a: $c5
    ld a, [hl-]                                   ; $783b: $3a
    nop                                           ; $783c: $00
    and d                                         ; $783d: $a2
    ld e, l                                       ; $783e: $5d
    db $10                                        ; $783f: $10
    rst $28                                       ; $7840: $ef
    ld [bc], a                                    ; $7841: $02
    db $fd                                        ; $7842: $fd
    nop                                           ; $7843: $00
    rst $38                                       ; $7844: $ff
    nop                                           ; $7845: $00
    db $10                                        ; $7846: $10
    rst $38                                       ; $7847: $ff

jr_092_7848:
    jr nz, @+$01                                  ; $7848: $20 $ff

    ld e, [hl]                                    ; $784a: $5e
    rst $38                                       ; $784b: $ff
    sub $29                                       ; $784c: $d6 $29
    nop                                           ; $784e: $00
    ld a, [hl+]                                   ; $784f: $2a
    push de                                       ; $7850: $d5
    ld d, b                                       ; $7851: $50
    xor a                                         ; $7852: $af
    and b                                         ; $7853: $a0
    ld e, a                                       ; $7854: $5f
    add hl, bc                                    ; $7855: $09

jr_092_7856:
    cp $00                                        ; $7856: $fe $00
    db $10                                        ; $7858: $10
    rst $38                                       ; $7859: $ff
    ld a, [hl+]                                   ; $785a: $2a

jr_092_785b:
    rst $38                                       ; $785b: $ff
    ld e, a                                       ; $785c: $5f
    rst $38                                       ; $785d: $ff
    db $eb                                        ; $785e: $eb
    inc d                                         ; $785f: $14
    nop                                           ; $7860: $00
    ld d, l                                       ; $7861: $55
    xor d                                         ; $7862: $aa
    and b                                         ; $7863: $a0
    ld e, a                                       ; $7864: $5f
    ld b, d                                       ; $7865: $42
    cp l                                          ; $7866: $bd
    jr nz, jr_092_7848                            ; $7867: $20 $df

    nop                                           ; $7869: $00
    ld b, h                                       ; $786a: $44
    cp a                                          ; $786b: $bf
    ld [$15ff], sp                                ; $786c: $08 $ff $15
    rst $38                                       ; $786f: $ff
    ld [hl], a                                    ; $7870: $77
    adc b                                         ; $7871: $88
    nop                                           ; $7872: $00
    ld a, [hl+]                                   ; $7873: $2a
    push de                                       ; $7874: $d5
    dec d                                         ; $7875: $15
    ld [$b748], a                                 ; $7876: $ea $48 $b7
    ld bc, $45ff                                  ; $7879: $01 $ff $45

jr_092_787c:
    inc bc                                        ; $787c: $03
    ld c, $00                                     ; $787d: $0e $00

jr_092_787f:
    db $eb                                        ; $787f: $eb
    rst $38                                       ; $7880: $ff
    push af                                       ; $7881: $f5
    or [hl]                                       ; $7882: $b6
    nop                                           ; $7883: $00
    ld d, h                                       ; $7884: $54
    call z, Call_000_1000                         ; $7885: $cc $00 $10
    ld [de], a                                    ; $7888: $12
    nop                                           ; $7889: $00
    and b                                         ; $788a: $a0
    ret nc                                        ; $788b: $d0

    db $10                                        ; $788c: $10
    db $fd                                        ; $788d: $fd
    rst $38                                       ; $788e: $ff
    ei                                            ; $788f: $fb
    inc c                                         ; $7890: $0c
    ld bc, $0f28                                  ; $7891: $01 $28 $0f
    ld c, $0f                                     ; $7894: $0e $0f
    ld c, a                                       ; $7896: $4f
    rlca                                          ; $7897: $07
    rlca                                          ; $7898: $07
    ldh [rNR10], a                                ; $7899: $e0 $10
    nop                                           ; $789b: $00
    ld e, b                                       ; $789c: $58
    ld hl, sp+$00                                 ; $789d: $f8 $00
    ld [$08fc], sp                                ; $789f: $08 $fc $08
    ld b, $f8                                     ; $78a2: $06 $f8
    db $10                                        ; $78a4: $10
    rst $38                                       ; $78a5: $ff
    ld hl, sp-$05                                 ; $78a6: $f8 $fb
    jr nz, jr_092_78ab                            ; $78a8: $20 $01

    inc c                                         ; $78aa: $0c

jr_092_78ab:
    rrca                                          ; $78ab: $0f
    dec e                                         ; $78ac: $1d
    ld [hl+], a                                   ; $78ad: $22
    nop                                           ; $78ae: $00
    ld a, $23                                     ; $78af: $3e $23
    ld a, $23                                     ; $78b1: $3e $23
    ld a, e                                       ; $78b3: $7b
    ld hl, $2075                                  ; $78b4: $21 $75 $20
    ld [bc], a                                    ; $78b7: $02
    xor d                                         ; $78b8: $aa
    ld h, b                                       ; $78b9: $60
    and b                                         ; $78ba: $a0
    ld a, a                                       ; $78bb: $7f
    jr nc, @-$1e                                  ; $78bc: $30 $e0

    dec b                                         ; $78be: $05
    add hl, bc                                    ; $78bf: $09
    inc b                                         ; $78c0: $04
    add b                                         ; $78c1: $80
    and b                                         ; $78c2: $a0
    ld bc, $0005                                  ; $78c3: $01 $05 $00
    ld l, $00                                     ; $78c6: $2e $00
    ld e, e                                       ; $78c8: $5b
    nop                                           ; $78c9: $00
    or [hl]                                       ; $78ca: $b6
    add b                                         ; $78cb: $80
    inc c                                         ; $78cc: $0c
    nop                                           ; $78cd: $00
    and b                                         ; $78ce: $a0
    rra                                           ; $78cf: $1f
    ld d, b                                       ; $78d0: $50
    jr nz, jr_092_787f                            ; $78d1: $20 $ac

    jr nc, jr_092_7935                            ; $78d3: $30 $60

    nop                                           ; $78d5: $00
    ccf                                           ; $78d6: $3f
    rst $18                                       ; $78d7: $df
    ccf                                           ; $78d8: $3f
    and b                                         ; $78d9: $a0
    rra                                           ; $78da: $1f
    db $ed                                        ; $78db: $ed
    nop                                           ; $78dc: $00
    adc [hl]                                      ; $78dd: $8e
    nop                                           ; $78de: $00
    rrca                                          ; $78df: $0f
    rrca                                          ; $78e0: $0f
    add a                                         ; $78e1: $87
    ld d, a                                       ; $78e2: $57
    ld b, b                                       ; $78e3: $40
    ret nz                                        ; $78e4: $c0

    ld b, b                                       ; $78e5: $40
    ld c, c                                       ; $78e6: $49
    nop                                           ; $78e7: $00
    ret nz                                        ; $78e8: $c0

    sub b                                         ; $78e9: $90
    ret nz                                        ; $78ea: $c0

    jr nz, jr_092_787c                            ; $78eb: $20 $8f

    ld c, b                                       ; $78ed: $48
    db $10                                        ; $78ee: $10
    jr nz, jr_092_78f1                            ; $78ef: $20 $00

jr_092_78f1:
    ldh [$f0], a                                  ; $78f1: $e0 $f0
    ldh [$f8], a                                  ; $78f3: $e0 $f8
    jr nz, jr_092_7966                            ; $78f5: $20 $6f

    jr nc, @+$33                                  ; $78f7: $30 $31

    nop                                           ; $78f9: $00
    ld a, $7a                                     ; $78fa: $3e $7a
    ccf                                           ; $78fc: $3f
    rra                                           ; $78fd: $1f
    rst $38                                       ; $78fe: $ff
    rlca                                          ; $78ff: $07
    ld [bc], a                                    ; $7900: $02
    ld e, a                                       ; $7901: $5f
    nop                                           ; $7902: $00
    nop                                           ; $7903: $00
    cp l                                          ; $7904: $bd
    ld [bc], a                                    ; $7905: $02
    ld a, a                                       ; $7906: $7f
    nop                                           ; $7907: $00
    sbc $21                                       ; $7908: $de $21
    or l                                          ; $790a: $b5
    nop                                           ; $790b: $00
    jp z, Jump_092_77e8                           ; $790c: $ca $e8 $77

    ld d, c                                       ; $790f: $51
    cp [hl]                                       ; $7910: $be
    cp l                                          ; $7911: $bd
    ld a, d                                       ; $7912: $7a
    cp $80                                        ; $7913: $fe $80

jr_092_7915:
    ld c, e                                       ; $7915: $4b
    ld [bc], a                                    ; $7916: $02
    ld l, a                                       ; $7917: $6f
    sub b                                         ; $7918: $90
    cp $01                                        ; $7919: $fe $01
    rst $18                                       ; $791b: $df
    jr nz, jr_092_7915                            ; $791c: $20 $f7

    nop                                           ; $791e: $00
    ld [$43bc], sp                                ; $791f: $08 $bc $43
    ld l, e                                       ; $7922: $6b
    sub l                                         ; $7923: $95
    db $e4                                        ; $7924: $e4
    db $10                                        ; $7925: $10
    jp c, Jump_000_1280                           ; $7926: $da $80 $12

    ld bc, $1df2                                  ; $7929: $01 $f2 $1d
    db $dd                                        ; $792c: $dd
    ccf                                           ; $792d: $3f
    rrca                                          ; $792e: $0f
    rst $38                                       ; $792f: $ff
    add b                                         ; $7930: $80
    nop                                           ; $7931: $00
    nop                                           ; $7932: $00
    ld h, c                                       ; $7933: $61
    add b                                         ; $7934: $80

jr_092_7935:
    ld [bc], a                                    ; $7935: $02
    ld [bc], a                                    ; $7936: $02
    ld [bc], a                                    ; $7937: $02
    inc bc                                        ; $7938: $03
    ld b, a                                       ; $7939: $47
    ld [$fa02], sp                                ; $793a: $08 $02 $fa
    rlca                                          ; $793d: $07
    ld b, e                                       ; $793e: $43
    xor c                                         ; $793f: $a9
    ld [bc], a                                    ; $7940: $02
    ldh [$80], a                                  ; $7941: $e0 $80
    cp b                                          ; $7943: $b8
    nop                                           ; $7944: $00
    ret nz                                        ; $7945: $c0

    ld l, b                                       ; $7946: $68
    cp a                                          ; $7947: $bf
    cp l                                          ; $7948: $bd
    ld l, [hl]                                    ; $7949: $6e
    ld h, $ff                                     ; $794a: $26 $ff
    ld h, d                                       ; $794c: $62
    ld [$c5ff], sp                                ; $794d: $08 $ff $c5
    rst $38                                       ; $7950: $ff
    add hl, bc                                    ; $7951: $09
    sbc $00                                       ; $7952: $de $00
    ld [$95ff], a                                 ; $7954: $ea $ff $95
    inc b                                         ; $7957: $04
    ld l, e                                       ; $7958: $6b
    ld c, b                                       ; $7959: $48
    or a                                          ; $795a: $b7
    ld de, $46ee                                  ; $795b: $11 $ee $46
    ld a, [bc]                                    ; $795e: $0a
    ld bc, $00ff                                  ; $795f: $01 $ff $00
    set 7, a                                      ; $7962: $cb $ff
    or $ff                                        ; $7964: $f6 $ff

jr_092_7966:
    rst $00                                       ; $7966: $c7
    ld hl, sp-$02                                 ; $7967: $f8 $fe
    rst $38                                       ; $7969: $ff
    ld bc, $f810                                  ; $796a: $01 $10 $f8
    dec e                                         ; $796d: $1d
    ldh a, [$15]                                  ; $796e: $f0 $15
    ld a, [$7e18]                                 ; $7970: $fa $18 $7e
    add hl, bc                                    ; $7973: $09
    nop                                           ; $7974: $00
    rst $38                                       ; $7975: $ff
    adc a                                         ; $7976: $8f
    ldh a, [$30]                                  ; $7977: $f0 $30
    rst $38                                       ; $7979: $ff
    inc c                                         ; $797a: $0c
    rrca                                          ; $797b: $0f
    rra                                           ; $797c: $1f
    ld [bc], a                                    ; $797d: $02
    rrca                                          ; $797e: $0f
    ld hl, sp+$0f                                 ; $797f: $f8 $0f
    ld [$faff], sp                                ; $7981: $08 $ff $fa
    jr nz, jr_092_7987                            ; $7984: $20 $01

    inc bc                                        ; $7986: $03

jr_092_7987:
    nop                                           ; $7987: $00
    ld [bc], a                                    ; $7988: $02
    add $02                                       ; $7989: $c6 $02
    inc bc                                        ; $798b: $03
    cp $fe                                        ; $798c: $fe $fe
    db $fc                                        ; $798e: $fc
    db $fc                                        ; $798f: $fc
    ld [bc], a                                    ; $7990: $02
    nop                                           ; $7991: $00
    jr z, jr_092_7994                             ; $7992: $28 $00

jr_092_7994:
    ld [bc], a                                    ; $7994: $02
    ld hl, sp+$08                                 ; $7995: $f8 $08
    ldh [rNR11], a                                ; $7997: $e0 $11
    ld b, l                                       ; $7999: $45
    ld [$8a00], sp                                ; $799a: $08 $00 $8a
    nop                                           ; $799d: $00
    inc h                                         ; $799e: $24
    ldh [rNR42], a                                ; $799f: $e0 $21
    push af                                       ; $79a1: $f5
    inc bc                                        ; $79a2: $03
    xor d                                         ; $79a3: $aa
    ld b, h                                       ; $79a4: $44
    ld bc, $0120                                  ; $79a5: $01 $20 $01
    ld bc, $0211                                  ; $79a8: $01 $11 $02
    jr nz, jr_092_79c6                            ; $79ab: $20 $19

    rla                                           ; $79ad: $17
    nop                                           ; $79ae: $00
    dec b                                         ; $79af: $05
    adc d                                         ; $79b0: $8a
    add b                                         ; $79b1: $80
    and l                                         ; $79b2: $a5
    add b                                         ; $79b3: $80
    add d                                         ; $79b4: $82
    ld a, [c]                                     ; $79b5: $f2
    ld bc, $0004                                  ; $79b6: $01 $04 $00
    ld [de], a                                    ; $79b9: $12
    ld b, b                                       ; $79ba: $40
    inc b                                         ; $79bb: $04
    ld bc, $0c00                                  ; $79bc: $01 $00 $0c
    inc b                                         ; $79bf: $04
    ld e, h                                       ; $79c0: $5c
    inc b                                         ; $79c1: $04
    db $f4                                        ; $79c2: $f4
    inc c                                         ; $79c3: $0c
    ld b, $05                                     ; $79c4: $06 $05

jr_092_79c6:
    db $fc                                        ; $79c6: $fc
    cp $f8                                        ; $79c7: $fe $f8
    db $fd                                        ; $79c9: $fd
    inc d                                         ; $79ca: $14
    ld [de], a                                    ; $79cb: $12
    add hl, de                                    ; $79cc: $19
    ld a, [bc]                                    ; $79cd: $0a
    and b                                         ; $79ce: $a0
    ld [bc], a                                    ; $79cf: $02
    nop                                           ; $79d0: $00
    ld b, h                                       ; $79d1: $44
    nop                                           ; $79d2: $00
    sub c                                         ; $79d3: $91
    nop                                           ; $79d4: $00
    and d                                         ; $79d5: $a2
    inc e                                         ; $79d6: $1c
    ld bc, $80a8                                  ; $79d7: $01 $a8 $80
    ld h, b                                       ; $79da: $60
    ld bc, $00b9                                  ; $79db: $01 $b9 $00
    ld [hl], h                                    ; $79de: $74
    nop                                           ; $79df: $00
    ret c                                         ; $79e0: $d8

    ld bc, $02b8                                  ; $79e1: $01 $b8 $02
    inc bc                                        ; $79e4: $03
    xor $03                                       ; $79e5: $ee $03
    xor e                                         ; $79e7: $ab
    nop                                           ; $79e8: $00
    nop                                           ; $79e9: $00
    ret z                                         ; $79ea: $c8

    nop                                           ; $79eb: $00
    ld d, l                                       ; $79ec: $55
    jr nz, @-$7e                                  ; $79ed: $20 $80

    add b                                         ; $79ef: $80
    ld l, c                                       ; $79f0: $69
    inc bc                                        ; $79f1: $03
    jr nc, jr_092_7a13                            ; $79f2: $30 $1f

    dec [hl]                                      ; $79f4: $35
    ld a, [de]                                    ; $79f5: $1a
    push de                                       ; $79f6: $d5
    nop                                           ; $79f7: $00
    nop                                           ; $79f8: $00
    ld l, [hl]                                    ; $79f9: $6e
    add b                                         ; $79fa: $80
    dec sp                                        ; $79fb: $3b
    ld b, b                                       ; $79fc: $40
    ld a, a                                       ; $79fd: $7f
    ld b, b                                       ; $79fe: $40
    ld l, a                                       ; $79ff: $6f
    ld bc, $bdd0                                  ; $7a00: $01 $d0 $bd
    jp nz, $807f                                  ; $7a03: $c2 $7f $80

    xor e                                         ; $7a06: $ab
    ld d, h                                       ; $7a07: $54
    db $10                                        ; $7a08: $10
    add hl, hl                                    ; $7a09: $29
    nop                                           ; $7a0a: $00
    push af                                       ; $7a0b: $f5
    ld a, [bc]                                    ; $7a0c: $0a
    xor b                                         ; $7a0d: $a8
    ld d, a                                       ; $7a0e: $57
    ld d, c                                       ; $7a0f: $51
    xor [hl]                                      ; $7a10: $ae
    add l                                         ; $7a11: $85
    ld a, d                                       ; $7a12: $7a

jr_092_7a13:
    ld [$03fd], sp                                ; $7a13: $08 $fd $03
    cp $01                                        ; $7a16: $fe $01
    db $10                                        ; $7a18: $10
    add hl, hl                                    ; $7a19: $29
    cp l                                          ; $7a1a: $bd
    ld b, e                                       ; $7a1b: $43
    ld l, e                                       ; $7a1c: $6b
    nop                                           ; $7a1d: $00
    sub [hl]                                      ; $7a1e: $96
    ei                                            ; $7a1f: $fb
    inc d                                         ; $7a20: $14
    rra                                           ; $7a21: $1f
    rst $38                                       ; $7a22: $ff
    jr @-$0e                                      ; $7a23: $18 $f0

    db $f4                                        ; $7a25: $f4
    ld [$1cf8], sp                                ; $7a26: $08 $f8 $1c
    rst $38                                       ; $7a29: $ff
    ld c, a                                       ; $7a2a: $4f

Call_092_7a2b:
    ret nc                                        ; $7a2b: $d0

    ld hl, $d5ea                                  ; $7a2c: $21 $ea $d5
    dec [hl]                                      ; $7a2f: $35
    ld [bc], a                                    ; $7a30: $02
    ld a, [hl+]                                   ; $7a31: $2a
    ld l, b                                       ; $7a32: $68
    scf                                           ; $7a33: $37
    ld hl, $c2ff                                  ; $7a34: $21 $ff $c2
    ret nc                                        ; $7a37: $d0

    ld de, $1040                                  ; $7a38: $11 $40 $10

jr_092_7a3b:
    cp a                                          ; $7a3b: $bf
    sub c                                         ; $7a3c: $91
    ld l, [hl]                                    ; $7a3d: $6e
    ld [hl], h                                    ; $7a3e: $74
    dec bc                                        ; $7a3f: $0b
    inc b                                         ; $7a40: $04
    rst $38                                       ; $7a41: $ff
    ld [$40ff], sp                                ; $7a42: $08 $ff $40
    inc d                                         ; $7a45: $14
    db $10                                        ; $7a46: $10
    ld bc, $6b96                                  ; $7a47: $01 $96 $6b
    ld c, d                                       ; $7a4a: $4a
    or a                                          ; $7a4b: $b7
    inc de                                        ; $7a4c: $13
    rst $28                                       ; $7a4d: $ef
    nop                                           ; $7a4e: $00
    xor d                                         ; $7a4f: $aa
    ld a, a                                       ; $7a50: $7f
    ld h, b                                       ; $7a51: $60
    ret nz                                        ; $7a52: $c0

    ld a, d                                       ; $7a53: $7a
    ret nz                                        ; $7a54: $c0

    ld d, e                                       ; $7a55: $53
    db $ec                                        ; $7a56: $ec
    nop                                           ; $7a57: $00
    ret nz                                        ; $7a58: $c0

    rst $38                                       ; $7a59: $ff
    jr nz, jr_092_7a3b                            ; $7a5a: $20 $df

    inc bc                                        ; $7a5c: $03
    rst $38                                       ; $7a5d: $ff
    cpl                                           ; $7a5e: $2f
    call nc, Call_092_5600                        ; $7a5f: $d4 $00 $56
    xor h                                         ; $7a62: $ac
    db $fd                                        ; $7a63: $fd
    cp $8f                                        ; $7a64: $fe $8f
    rlca                                          ; $7a66: $07
    rlca                                          ; $7a67: $07
    inc bc                                        ; $7a68: $03
    db $10                                        ; $7a69: $10
    add e                                         ; $7a6a: $83
    nop                                           ; $7a6b: $00
    ld a, a                                       ; $7a6c: $7f
    sub [hl]                                      ; $7a6d: $96
    ld [bc], a                                    ; $7a6e: $02
    ld a, [$18ff]                                 ; $7a6f: $fa $ff $18
    stop                                          ; $7a72: $10 $00
    db $10                                        ; $7a74: $10
    db $10                                        ; $7a75: $10
    inc e                                         ; $7a76: $1c
    ldh a, [$f7]                                  ; $7a77: $f0 $f7
    ld hl, sp+$1b                                 ; $7a79: $f8 $1b
    inc e                                         ; $7a7b: $1c
    ld [$ff1c], sp                                ; $7a7c: $08 $1c $ff
    ld d, d                                       ; $7a7f: $52
    rst $38                                       ; $7a80: $ff
    db $d3                                        ; $7a81: $d3
    ld [bc], a                                    ; $7a82: $02
    ld bc, $0103                                  ; $7a83: $01 $03 $01
    ld [bc], a                                    ; $7a86: $02
    ld d, a                                       ; $7a87: $57
    ld bc, $03fd                                  ; $7a88: $01 $fd $03
    ld d, c                                       ; $7a8b: $51
    xor a                                         ; $7a8c: $af
    xor b                                         ; $7a8d: $a8
    ld [$200e], sp                                ; $7a8e: $08 $0e $20
    inc bc                                        ; $7a91: $03
    rlca                                          ; $7a92: $07
    ld [hl], d                                    ; $7a93: $72
    add hl, bc                                    ; $7a94: $09
    cp $fc                                        ; $7a95: $fe $fc
    rst $38                                       ; $7a97: $ff
    ldh [rLCDC], a                                ; $7a98: $e0 $40
    ld [$ff10], sp                                ; $7a9a: $08 $10 $ff
    ld [c], a                                     ; $7a9d: $e2
    db $fd                                        ; $7a9e: $fd
    or b                                          ; $7a9f: $b0
    dec hl                                        ; $7aa0: $2b
    ld a, l                                       ; $7aa1: $7d
    ret nz                                        ; $7aa2: $c0

    ld l, e                                       ; $7aa3: $6b
    ld b, b                                       ; $7aa4: $40
    jr nz, jr_092_7b07                            ; $7aa5: $20 $60

    inc sp                                        ; $7aa7: $33

jr_092_7aa8:
    add h                                         ; $7aa8: $84
    cp $00                                        ; $7aa9: $fe $00
    rst $18                                       ; $7aab: $df
    jr nz, jr_092_7aa8                            ; $7aac: $20 $fa

    nop                                           ; $7aae: $00
    nop                                           ; $7aaf: $00
    inc a                                         ; $7ab0: $3c
    rst $38                                       ; $7ab1: $ff
    ld e, c                                       ; $7ab2: $59
    cp [hl]                                       ; $7ab3: $be
    xor [hl]                                      ; $7ab4: $ae
    ld e, l                                       ; $7ab5: $5d
    rst $30                                       ; $7ab6: $f7
    nop                                           ; $7ab7: $00
    ld c, $df                                     ; $7ab8: $0e $df
    inc hl                                        ; $7aba: $23
    rst $38                                       ; $7abb: $ff
    ld bc, $035d                                  ; $7abc: $01 $5d $03
    dec bc                                        ; $7abf: $0b
    ld [bc], a                                    ; $7ac0: $02
    ld [bc], a                                    ; $7ac1: $02
    ld e, h                                       ; $7ac2: $5c
    ldh [rSVBK], a                                ; $7ac3: $e0 $70
    rst $38                                       ; $7ac5: $ff
    xor a                                         ; $7ac6: $af
    add sp, $01                                   ; $7ac7: $e8 $01
    ld [bc], a                                    ; $7ac9: $02
    nop                                           ; $7aca: $00
    ld [bc], a                                    ; $7acb: $02
    ld b, $02                                     ; $7acc: $06 $02
    ld c, $02                                     ; $7ace: $0e $02
    ld a, [$7706]                                 ; $7ad0: $fa $06 $77
    ld [bc], a                                    ; $7ad3: $02
    jr nz, @+$31                                  ; $7ad4: $20 $2f

    ldh [$e5], a                                  ; $7ad6: $e0 $e5
    ret nz                                        ; $7ad8: $c0

    jp z, Jump_000_3160                           ; $7ad9: $ca $60 $31

    db $f4                                        ; $7adc: $f4
    add b                                         ; $7add: $80
    add b                                         ; $7ade: $80
    ld h, d                                       ; $7adf: $62
    inc de                                        ; $7ae0: $13
    ld b, $8a                                     ; $7ae1: $06 $8a
    inc b                                         ; $7ae3: $04
    ld hl, $0604                                  ; $7ae4: $21 $04 $06
    adc d                                         ; $7ae7: $8a
    ld h, b                                       ; $7ae8: $60
    ld sp, $fe02                                  ; $7ae9: $31 $02 $fe
    cp [hl]                                       ; $7aec: $be
    sbc h                                         ; $7aed: $9c
    ld bc, $6e00                                  ; $7aee: $01 $00 $6e

jr_092_7af1:
    inc bc                                        ; $7af1: $03
    ld hl, $0008                                  ; $7af2: $21 $08 $00
    add d                                         ; $7af5: $82
    ld hl, sp-$73                                 ; $7af6: $f8 $8d
    ld [hl], l                                    ; $7af8: $75
    add hl, de                                    ; $7af9: $19
    ld a, [hl]                                    ; $7afa: $7e
    pop bc                                        ; $7afb: $c1
    add c                                         ; $7afc: $81
    ld bc, $c1b3                                  ; $7afd: $01 $b3 $c1
    add c                                         ; $7b00: $81
    rst $38                                       ; $7b01: $ff
    rst $38                                       ; $7b02: $ff
    ld a, [hl]                                    ; $7b03: $7e
    cp $60                                        ; $7b04: $fe $60

jr_092_7b06:
    ld b, c                                       ; $7b06: $41

jr_092_7b07:
    inc b                                         ; $7b07: $04
    reti                                          ; $7b08: $d9


    nop                                           ; $7b09: $00
    cp d                                          ; $7b0a: $ba
    nop                                           ; $7b0b: $00
    db $ed                                        ; $7b0c: $ed
    rra                                           ; $7b0d: $1f
    inc b                                         ; $7b0e: $04
    ld bc, $30ff                                  ; $7b0f: $01 $ff $30
    add e                                         ; $7b12: $83
    ld a, a                                       ; $7b13: $7f
    sbc $0a                                       ; $7b14: $de $0a
    ld [c], a                                     ; $7b16: $e2
    ld a, [bc]                                    ; $7b17: $0a
    pop bc                                        ; $7b18: $c1
    cp a                                          ; $7b19: $bf
    add hl, bc                                    ; $7b1a: $09
    rst $30                                       ; $7b1b: $f7
    nop                                           ; $7b1c: $00
    ld b, c                                       ; $7b1d: $41
    cp a                                          ; $7b1e: $bf
    add e                                         ; $7b1f: $83
    ld a, l                                       ; $7b20: $7d
    ld b, l                                       ; $7b21: $45
    cp e                                          ; $7b22: $bb
    ld a, [hl+]                                   ; $7b23: $2a
    push de                                       ; $7b24: $d5
    jr nz, jr_092_7b06                            ; $7b25: $20 $df

    and b                                         ; $7b27: $a0
    sub b                                         ; $7b28: $90
    inc c                                         ; $7b29: $0c
    nop                                           ; $7b2a: $00
    add b                                         ; $7b2b: $80
    ld h, b                                       ; $7b2c: $60
    add b                                         ; $7b2d: $80
    cp a                                          ; $7b2e: $bf
    jr nz, jr_092_7af1                            ; $7b2f: $20 $c0

    ldh a, [$e7]                                  ; $7b31: $f0 $e7
    inc b                                         ; $7b33: $04
    adc d                                         ; $7b34: $8a
    ld a, h                                       ; $7b35: $7c
    ld a, [$bd0c]                                 ; $7b36: $fa $0c $bd
    nop                                           ; $7b39: $00
    ld c, $21                                     ; $7b3a: $0e $21
    ccf                                           ; $7b3c: $3f
    ld a, a                                       ; $7b3d: $7f
    ccf                                           ; $7b3e: $3f
    xor b                                         ; $7b3f: $a8
    ld [hl], a                                    ; $7b40: $77
    dec [hl]                                      ; $7b41: $35
    nop                                           ; $7b42: $00
    ld [$ffff], a                                 ; $7b43: $ea $ff $ff
    ld [bc], a                                    ; $7b46: $02
    ld bc, $0001                                  ; $7b47: $01 $01 $00
    cp $26                                        ; $7b4a: $fe $26
    ld bc, $ec81                                  ; $7b4c: $01 $81 $ec
    inc [hl]                                      ; $7b4f: $34
    ret nz                                        ; $7b50: $c0

    cp a                                          ; $7b51: $bf
    ret nc                                        ; $7b52: $d0

    inc c                                         ; $7b53: $0c
    jr nz, jr_092_7b5a                            ; $7b54: $20 $04

    nop                                           ; $7b56: $00
    inc d                                         ; $7b57: $14
    ld b, c                                       ; $7b58: $41
    nop                                           ; $7b59: $00

jr_092_7b5a:
    sub d                                         ; $7b5a: $92
    ld [de], a                                    ; $7b5b: $12
    inc b                                         ; $7b5c: $04
    ld c, b                                       ; $7b5d: $48
    ldh a, [rNR13]                                ; $7b5e: $f0 $13
    ld a, a                                       ; $7b60: $7f
    rrca                                          ; $7b61: $0f
    nop                                           ; $7b62: $00
    or a                                          ; $7b63: $b7
    rrca                                          ; $7b64: $0f
    ld e, b                                       ; $7b65: $58
    rlca                                          ; $7b66: $07
    cp e                                          ; $7b67: $bb
    nop                                           ; $7b68: $00
    dec d                                         ; $7b69: $15
    nop                                           ; $7b6a: $00
    ld b, h                                       ; $7b6b: $44
    ld a, [bc]                                    ; $7b6c: $0a
    ld a, [c]                                     ; $7b6d: $f2
    inc bc                                        ; $7b6e: $03
    rlca                                          ; $7b6f: $07
    rlca                                          ; $7b70: $07
    ld bc, $0531                                  ; $7b71: $01 $31 $05
    ld d, e                                       ; $7b74: $53
    ldh [rSCY], a                                 ; $7b75: $e0 $42
    pop hl                                        ; $7b77: $e1
    jp nz, Jump_092_4601                          ; $7b78: $c2 $01 $46

    ld a, c                                       ; $7b7b: $79
    ld l, c                                       ; $7b7c: $69
    ld a, a                                       ; $7b7d: $7f
    ld c, $0d                                     ; $7b7e: $0e $0d
    and d                                         ; $7b80: $a2
    add b                                         ; $7b81: $80
    ret nc                                        ; $7b82: $d0

    inc b                                         ; $7b83: $04
    xor d                                         ; $7b84: $aa
    push de                                       ; $7b85: $d5
    scf                                           ; $7b86: $37
    ret z                                         ; $7b87: $c8

    rst $38                                       ; $7b88: $ff
    add b                                         ; $7b89: $80
    dec a                                         ; $7b8a: $3d
    ld a, [bc]                                    ; $7b8b: $0a
    ret nz                                        ; $7b8c: $c0

    db $eb                                        ; $7b8d: $eb
    add b                                         ; $7b8e: $80
    add b                                         ; $7b8f: $80
    ld h, $04                                     ; $7b90: $26 $04
    sub h                                         ; $7b92: $94
    jr nz, jr_092_7ba1                            ; $7b93: $20 $0c

    ld b, b                                       ; $7b95: $40
    nop                                           ; $7b96: $00
    db $10                                        ; $7b97: $10
    ld h, b                                       ; $7b98: $60
    adc d                                         ; $7b99: $8a
    jr nz, @+$77                                  ; $7b9a: $20 $75

    db $10                                        ; $7b9c: $10
    ld a, [bc]                                    ; $7b9d: $0a
    inc c                                         ; $7b9e: $0c
    and b                                         ; $7b9f: $a0
    ld e, h                                       ; $7ba0: $5c

jr_092_7ba1:
    dec bc                                        ; $7ba1: $0b
    rla                                           ; $7ba2: $17
    ld h, b                                       ; $7ba3: $60
    ld [bc], a                                    ; $7ba4: $02
    ld e, d                                       ; $7ba5: $5a
    nop                                           ; $7ba6: $00
    or l                                          ; $7ba7: $b5
    nop                                           ; $7ba8: $00
    ld a, [hl]                                    ; $7ba9: $7e
    nop                                           ; $7baa: $00
    nop                                           ; $7bab: $00
    ld c, $05                                     ; $7bac: $0e $05
    or $0d                                        ; $7bae: $f6 $0d
    rst $38                                       ; $7bb0: $ff
    rst $38                                       ; $7bb1: $ff
    pop hl                                        ; $7bb2: $e1
    nop                                           ; $7bb3: $00
    ld b, b                                       ; $7bb4: $40
    ld e, [hl]                                    ; $7bb5: $5e
    ld h, c                                       ; $7bb6: $61
    ld [hl], c                                    ; $7bb7: $71
    ld a, a                                       ; $7bb8: $7f
    ld a, a                                       ; $7bb9: $7f
    ccf                                           ; $7bba: $3f
    ccf                                           ; $7bbb: $3f
    nop                                           ; $7bbc: $00
    nop                                           ; $7bbd: $00
    rla                                           ; $7bbe: $17
    ret nz                                        ; $7bbf: $c0

    rst $08                                       ; $7bc0: $cf
    add b                                         ; $7bc1: $80
    dec b                                         ; $7bc2: $05
    ret nz                                        ; $7bc3: $c0

    jp z, $8000                                   ; $7bc4: $ca $00 $80

    inc h                                         ; $7bc7: $24
    ret nz                                        ; $7bc8: $c0

    ret z                                         ; $7bc9: $c8

    add b                                         ; $7bca: $80
    nop                                           ; $7bcb: $00
    ret nz                                        ; $7bcc: $c0

    ret nz                                        ; $7bcd: $c0

    dec b                                         ; $7bce: $05
    add b                                         ; $7bcf: $80
    rst $00                                       ; $7bd0: $c7
    rst $38                                       ; $7bd1: $ff
    db $e3                                        ; $7bd2: $e3
    rst $18                                       ; $7bd3: $df
    inc b                                         ; $7bd4: $04
    ld c, b                                       ; $7bd5: $48
    rlca                                          ; $7bd6: $07
    and c                                         ; $7bd7: $a1
    dec b                                         ; $7bd8: $05
    nop                                           ; $7bd9: $00
    rst $18                                       ; $7bda: $df
    ld hl, $01ff                                  ; $7bdb: $21 $ff $01
    rra                                           ; $7bde: $1f
    pop hl                                        ; $7bdf: $e1
    dec de                                        ; $7be0: $1b
    dec d                                         ; $7be1: $15
    ld [bc], a                                    ; $7be2: $02
    scf                                           ; $7be3: $37
    add hl, de                                    ; $7be4: $19
    ld e, e                                       ; $7be5: $5b
    or l                                          ; $7be6: $b5
    rst $30                                       ; $7be7: $f7
    jp hl                                         ; $7be8: $e9


    ldh a, [$3b]                                  ; $7be9: $f0 $3b
    dec hl                                        ; $7beb: $2b
    nop                                           ; $7bec: $00
    rst $38                                       ; $7bed: $ff
    ld e, h                                       ; $7bee: $5c
    rst $38                                       ; $7bef: $ff
    ld e, h                                       ; $7bf0: $5c
    xor e                                         ; $7bf1: $ab
    xor e                                         ; $7bf2: $ab
    ld e, a                                       ; $7bf3: $5f
    ld d, [hl]                                    ; $7bf4: $56
    nop                                           ; $7bf5: $00
    xor h                                         ; $7bf6: $ac
    xor l                                         ; $7bf7: $ad
    ld d, [hl]                                    ; $7bf8: $56
    ld d, a                                       ; $7bf9: $57
    xor d                                         ; $7bfa: $aa
    xor d                                         ; $7bfb: $aa
    ld d, a                                       ; $7bfc: $57
    ld d, l                                       ; $7bfd: $55
    nop                                           ; $7bfe: $00
    xor e                                         ; $7bff: $ab
    add hl, hl                                    ; $7c00: $29
    rst $10                                       ; $7c01: $d7
    adc a                                         ; $7c02: $8f
    cp $bc                                        ; $7c03: $fe $bc
    ld hl, sp+$60                                 ; $7c05: $f8 $60
    nop                                           ; $7c07: $00
    ld b, b                                       ; $7c08: $40
    call nc, $7a60                                ; $7c09: $d4 $60 $7a
    jr nz, @+$2f                                  ; $7c0c: $20 $2d

    jr nc, jr_092_7c26                            ; $7c0e: $30 $16

    ld [$b318], sp                                ; $7c10: $08 $18 $b3
    inc e                                         ; $7c13: $1c
    rlca                                          ; $7c14: $07
    add $04                                       ; $7c15: $c6 $04
    add a                                         ; $7c17: $87
    inc b                                         ; $7c18: $04
    call z, $0700                                 ; $7c19: $cc $00 $07
    ld l, [hl]                                    ; $7c1c: $6e
    add h                                         ; $7c1d: $84
    ld a, l                                       ; $7c1e: $7d
    add [hl]                                      ; $7c1f: $86
    inc l                                         ; $7c20: $2c
    rst $10                                       ; $7c21: $d7
    sub a                                         ; $7c22: $97
    nop                                           ; $7c23: $00
    rst $28                                       ; $7c24: $ef
    push de                                       ; $7c25: $d5

jr_092_7c26:
    nop                                           ; $7c26: $00
    xor $00                                       ; $7c27: $ee $00
    cp e                                          ; $7c29: $bb
    nop                                           ; $7c2a: $00
    rrca                                          ; $7c2b: $0f
    nop                                           ; $7c2c: $00
    ld hl, sp+$07                                 ; $7c2d: $f8 $07
    inc b                                         ; $7c2f: $04
    db $fd                                        ; $7c30: $fd
    ld b, $07                                     ; $7c31: $06 $07
    db $fc                                        ; $7c33: $fc
    ld [$ff48], a                                 ; $7c34: $ea $48 $ff
    add b                                         ; $7c37: $80
    ld e, d                                       ; $7c38: $5a
    push bc                                       ; $7c39: $c5
    ld a, [$4b90]                                 ; $7c3a: $fa $90 $4b
    cp l                                          ; $7c3d: $bd
    ld b, d                                       ; $7c3e: $42
    ld l, e                                       ; $7c3f: $6b
    nop                                           ; $7c40: $00
    sub h                                         ; $7c41: $94
    rst $00                                       ; $7c42: $c7
    db $fc                                        ; $7c43: $fc
    cp $fc                                        ; $7c44: $fe $fc
    and a                                         ; $7c46: $a7
    ld h, h                                       ; $7c47: $64
    ld h, l                                       ; $7c48: $65
    inc c                                         ; $7c49: $0c
    and [hl]                                      ; $7c4a: $a6
    inc h                                         ; $7c4b: $24
    rst $30                                       ; $7c4c: $f7
    ld h, [hl]                                    ; $7c4d: $66
    db $fc                                        ; $7c4e: $fc
    dec d                                         ; $7c4f: $15
    pop af                                        ; $7c50: $f1
    ld a, [de]                                    ; $7c51: $1a
    rst $38                                       ; $7c52: $ff
    nop                                           ; $7c53: $00
    jr nz, jr_092_7c85                            ; $7c54: $20 $2f

    ret nc                                        ; $7c56: $d0

    sbc $0c                                       ; $7c57: $de $0c
    dec bc                                        ; $7c59: $0b
    rst $38                                       ; $7c5a: $ff
    ld h, b                                       ; $7c5b: $60
    ccf                                           ; $7c5c: $3f
    ld sp, $2e00                                  ; $7c5d: $31 $00 $2e
    ld h, b                                       ; $7c60: $60
    ccf                                           ; $7c61: $3f
    ldh [$3f], a                                  ; $7c62: $e0 $3f
    inc h                                         ; $7c64: $24
    rst $38                                       ; $7c65: $ff
    jr z, @+$22                                   ; $7c66: $28 $20

    rst $38                                       ; $7c68: $ff
    call nc, Call_000_1390                        ; $7c69: $d4 $90 $13
    ld c, e                                       ; $7c6c: $4b
    or a                                          ; $7c6d: $b7
    rla                                           ; $7c6e: $17
    xor $8c                                       ; $7c6f: $ee $8c
    ld [$187f], sp                                ; $7c71: $08 $7f $18
    rst $28                                       ; $7c74: $ef
    dec b                                         ; $7c75: $05
    sbc [hl]                                      ; $7c76: $9e
    inc b                                         ; $7c77: $04
    db $fd                                        ; $7c78: $fd
    rst $38                                       ; $7c79: $ff
    db $fd                                        ; $7c7a: $fd
    nop                                           ; $7c7b: $00
    ld [$8dda], a                                 ; $7c7c: $ea $da $8d
    adc l                                         ; $7c7f: $8d
    ld b, $54                                     ; $7c80: $06 $54
    rlca                                          ; $7c82: $07
    and $00                                       ; $7c83: $e6 $00

jr_092_7c85:
    inc bc                                        ; $7c85: $03
    jp nc, Jump_092_7703                          ; $7c86: $d2 $03 $77

    add c                                         ; $7c89: $81
    dec sp                                        ; $7c8a: $3b
    pop bc                                        ; $7c8b: $c1
    ld e, c                                       ; $7c8c: $59
    nop                                           ; $7c8d: $00
    xor [hl]                                      ; $7c8e: $ae
    xor d                                         ; $7c8f: $aa
    ld e, l                                       ; $7c90: $5d
    ld d, l                                       ; $7c91: $55
    xor [hl]                                      ; $7c92: $ae
    and h                                         ; $7c93: $a4
    ld e, a                                       ; $7c94: $5f

jr_092_7c95:
    ld a, [hl-]                                   ; $7c95: $3a
    nop                                           ; $7c96: $00
    rst $38                                       ; $7c97: $ff
    ld [$3df7], a                                 ; $7c98: $ea $f7 $3d
    jp $ab55                                      ; $7c9b: $c3 $55 $ab


    ld e, h                                       ; $7c9e: $5c
    nop                                           ; $7c9f: $00
    xor a                                         ; $7ca0: $af
    xor d                                         ; $7ca1: $aa
    ld e, a                                       ; $7ca2: $5f
    ld d, l                                       ; $7ca3: $55
    xor a                                         ; $7ca4: $af
    xor [hl]                                      ; $7ca5: $ae
    ld d, a                                       ; $7ca6: $57
    ld d, a                                       ; $7ca7: $57
    ld b, b                                       ; $7ca8: $40
    xor e                                         ; $7ca9: $ab
    ret nz                                        ; $7caa: $c0

    jr jr_092_7cda                                ; $7cab: $18 $2d

    jp c, $fc0a                                   ; $7cad: $da $0a $fc

    ld d, l                                       ; $7cb0: $55
    xor $00                                       ; $7cb1: $ee $00
    and h                                         ; $7cb3: $a4
    rst $38                                       ; $7cb4: $ff
    ld a, a                                       ; $7cb5: $7f
    ld a, [$f7ea]                                 ; $7cb6: $fa $ea $f7
    ld d, l                                       ; $7cb9: $55
    xor e                                         ; $7cba: $ab
    nop                                           ; $7cbb: $00
    dec hl                                        ; $7cbc: $2b
    push de                                       ; $7cbd: $d5
    db $dd                                        ; $7cbe: $dd
    and b                                         ; $7cbf: $a0
    cp b                                          ; $7cc0: $b8
    ret nz                                        ; $7cc1: $c0

    db $dd                                        ; $7cc2: $dd
    ld h, b                                       ; $7cc3: $60
    nop                                           ; $7cc4: $00
    ld c, [hl]                                    ; $7cc5: $4e
    ld [hl], b                                    ; $7cc6: $70
    ld [hl], a                                    ; $7cc7: $77
    jr z, jr_092_7cf4                             ; $7cc8: $28 $2a

    dec [hl]                                      ; $7cca: $35
    dec [hl]                                      ; $7ccb: $35
    dec de                                        ; $7ccc: $1b
    nop                                           ; $7ccd: $00
    rla                                           ; $7cce: $17
    rra                                           ; $7ccf: $1f
    adc d                                         ; $7cd0: $8a
    push af                                       ; $7cd1: $f5
    add $f9                                       ; $7cd2: $c6 $f9
    ld [c], a                                     ; $7cd4: $e2
    ld a, l                                       ; $7cd5: $7d
    nop                                           ; $7cd6: $00
    pop de                                        ; $7cd7: $d1
    ld a, [hl]                                    ; $7cd8: $7e
    ld l, b                                       ; $7cd9: $68

jr_092_7cda:
    ccf                                           ; $7cda: $3f
    or c                                          ; $7cdb: $b1
    ld a, [hl]                                    ; $7cdc: $7e
    ret c                                         ; $7cdd: $d8

    rst $18                                       ; $7cde: $df
    jr nz, jr_092_7c95                            ; $7cdf: $20 $b4

    rra                                           ; $7ce1: $1f
    ldh a, [$08]                                  ; $7ce2: $f0 $08
    ld [hl], b                                    ; $7ce4: $70
    ret nz                                        ; $7ce5: $c0

    ld d, l                                       ; $7ce6: $55
    ldh [$b8], a                                  ; $7ce7: $e0 $b8
    nop                                           ; $7ce9: $00
    ld h, b                                       ; $7cea: $60
    xor l                                         ; $7ceb: $ad
    ld [hl], b                                    ; $7cec: $70
    sbc d                                         ; $7ced: $9a
    ld [hl], b                                    ; $7cee: $70
    ld d, l                                       ; $7cef: $55
    cp b                                          ; $7cf0: $b8
    sub l                                         ; $7cf1: $95
    add b                                         ; $7cf2: $80
    adc h                                         ; $7cf3: $8c

jr_092_7cf4:
    ld bc, $6ad5                                  ; $7cf4: $01 $d5 $6a
    ld c, d                                       ; $7cf7: $4a
    ld [hl], l                                    ; $7cf8: $75
    ld h, l                                       ; $7cf9: $65
    ld a, [hl-]                                   ; $7cfa: $3a
    ld a, [hl+]                                   ; $7cfb: $2a
    nop                                           ; $7cfc: $00
    dec [hl]                                      ; $7cfd: $35
    ld sp, $171f                                  ; $7cfe: $31 $1f $17
    rra                                           ; $7d01: $1f
    db $eb                                        ; $7d02: $eb
    inc c                                         ; $7d03: $0c
    sbc $00                                       ; $7d04: $de $00
    dec b                                         ; $7d06: $05
    db $fd                                        ; $7d07: $fd
    ld b, $f7                                     ; $7d08: $06 $f7
    inc c                                         ; $7d0a: $0c
    reti                                          ; $7d0b: $d9


    ld l, $bf                                     ; $7d0c: $2e $bf
    ld [bc], a                                    ; $7d0e: $02
    ld e, h                                       ; $7d0f: $5c
    ld [hl], l                                    ; $7d10: $75
    cp [hl]                                       ; $7d11: $be
    ld [$ee77], a                                 ; $7d12: $ea $77 $ee
    cp e                                          ; $7d15: $bb
    ld b, $db                                     ; $7d16: $06 $db
    ld d, b                                       ; $7d18: $50
    jr nz, @+$0e                                  ; $7d19: $20 $0c

    ld b, $a0                                     ; $7d1b: $06 $a0
    ld [hl], b                                    ; $7d1d: $70
    dec e                                         ; $7d1e: $1d
    xor e                                         ; $7d1f: $ab
    nop                                           ; $7d20: $00
    ld b, [hl]                                    ; $7d21: $46
    nop                                           ; $7d22: $00
    ld c, [hl]                                    ; $7d23: $4e
    or a                                          ; $7d24: $b7
    rst $08                                       ; $7d25: $cf
    ld b, $7d                                     ; $7d26: $06 $7d
    add d                                         ; $7d28: $82
    ld [hl], b                                    ; $7d29: $70
    dec e                                         ; $7d2a: $1d
    add h                                         ; $7d2b: $84
    add hl, bc                                    ; $7d2c: $09
    adc b                                         ; $7d2d: $88
    add hl, bc                                    ; $7d2e: $09
    jr nz, jr_092_7d31                            ; $7d2f: $20 $00

jr_092_7d31:
    ret nz                                        ; $7d31: $c0

    call nz, Call_000_1180                        ; $7d32: $c4 $80 $11
    ret nz                                        ; $7d35: $c0

    ld [c], a                                     ; $7d36: $e2
    add b                                         ; $7d37: $80
    rst $00                                       ; $7d38: $c7
    jr nz, @-$43                                  ; $7d39: $20 $bb

    and e                                         ; $7d3b: $a3
    ld [hl], b                                    ; $7d3c: $70
    dec d                                         ; $7d3d: $15
    ld bc, $12ff                                  ; $7d3e: $01 $ff $12
    rst $38                                       ; $7d41: $ff
    ld h, $80                                     ; $7d42: $26 $80
    ld h, b                                       ; $7d44: $60
    dec b                                         ; $7d45: $05
    sub $29                                       ; $7d46: $d6 $29
    xor d                                         ; $7d48: $aa
    push de                                       ; $7d49: $d5
    ret nc                                        ; $7d4a: $d0

    xor a                                         ; $7d4b: $af
    and b                                         ; $7d4c: $a0
    ld b, b                                       ; $7d4d: $40
    rst $18                                       ; $7d4e: $df
    ld [hl], b                                    ; $7d4f: $70
    dec l                                         ; $7d50: $2d
    dec d                                         ; $7d51: $15
    ret nz                                        ; $7d52: $c0

    xor $80                                       ; $7d53: $ee $80
    dec sp                                        ; $7d55: $3b
    ret nz                                        ; $7d56: $c0

    nop                                           ; $7d57: $00
    rst $38                                       ; $7d58: $ff
    add b                                         ; $7d59: $80
    cpl                                           ; $7d5a: $2f
    ret nc                                        ; $7d5b: $d0

    db $fd                                        ; $7d5c: $fd
    add d                                         ; $7d5d: $82
    ccf                                           ; $7d5e: $3f
    ret nz                                        ; $7d5f: $c0

    nop                                           ; $7d60: $00
    db $eb                                        ; $7d61: $eb
    sub h                                         ; $7d62: $94
    ld e, c                                       ; $7d63: $59
    ld c, $aa                                     ; $7d64: $0e $aa
    dec c                                         ; $7d66: $0d
    ld e, l                                       ; $7d67: $5d
    ld b, $00                                     ; $7d68: $06 $00
    or h                                          ; $7d6a: $b4
    ld c, a                                       ; $7d6b: $4f
    ld a, $fb                                     ; $7d6c: $3e $fb
    ld [$81c3], a                                 ; $7d6e: $ea $c3 $81
    ld bc, $a305                                  ; $7d71: $01 $05 $a3
    ld bc, $c837                                  ; $7d74: $01 $37 $c8
    xor d                                         ; $7d77: $aa
    add b                                         ; $7d78: $80
    dec b                                         ; $7d79: $05
    ret z                                         ; $7d7a: $c8

    add b                                         ; $7d7b: $80
    dec b                                         ; $7d7c: $05
    ld b, b                                       ; $7d7d: $40
    add d                                         ; $7d7e: $82
    add b                                         ; $7d7f: $80
    dec d                                         ; $7d80: $15
    pop de                                        ; $7d81: $d1
    add b                                         ; $7d82: $80
    xor b                                         ; $7d83: $a8
    ret nz                                        ; $7d84: $c0

    ld d, h                                       ; $7d85: $54
    ldh [rP1], a                                  ; $7d86: $e0 $00
    ld [$7450], a                                 ; $7d88: $ea $50 $74
    and b                                         ; $7d8b: $a0
    ld a, [hl+]                                   ; $7d8c: $2a
    ldh a, [$d5]                                  ; $7d8d: $f0 $d5
    ld hl, sp+$02                                 ; $7d8f: $f8 $02
    ld a, d                                       ; $7d91: $7a
    sub h                                         ; $7d92: $94
    rst $38                                       ; $7d93: $ff
    rla                                           ; $7d94: $17
    rst $38                                       ; $7d95: $ff
    xor l                                         ; $7d96: $ad
    inc b                                         ; $7d97: $04
    ld c, b                                       ; $7d98: $48
    ld e, l                                       ; $7d99: $5d
    ld bc, $aa0a                                  ; $7d9a: $01 $0a $aa
    ld e, l                                       ; $7d9d: $5d
    ld [hl], l                                    ; $7d9e: $75
    cp $cc                                        ; $7d9f: $fe $cc
    rst $30                                       ; $7da1: $f7
    ret nc                                        ; $7da2: $d0

    add hl, de                                    ; $7da3: $19
    jr nz, jr_092_7dd1                            ; $7da4: $20 $2b

    push de                                       ; $7da6: $d5
    ret nc                                        ; $7da7: $d0

    ld [$ea55], sp                                ; $7da8: $08 $55 $ea
    jp z, $6375                                   ; $7dab: $ca $75 $63

    nop                                           ; $7dae: $00
    cp a                                          ; $7daf: $bf
    xor [hl]                                      ; $7db0: $ae
    ld a, a                                       ; $7db1: $7f
    ld d, l                                       ; $7db2: $55
    cp d                                          ; $7db3: $ba
    or d                                          ; $7db4: $b2
    ld e, l                                       ; $7db5: $5d
    add e                                         ; $7db6: $83
    ld l, h                                       ; $7db7: $6c
    rst $38                                       ; $7db8: $ff
    ldh [rSC], a                                  ; $7db9: $e0 $02
    ldh a, [rNR43]                                ; $7dbb: $f0 $22
    xor e                                         ; $7dbd: $ab
    cp l                                          ; $7dbe: $bd
    rlca                                          ; $7dbf: $07
    ld d, b                                       ; $7dc0: $50
    add hl, de                                    ; $7dc1: $19
    xor h                                         ; $7dc2: $ac
    ld d, a                                       ; $7dc3: $57
    ld b, d                                       ; $7dc4: $42
    ld d, [hl]                                    ; $7dc5: $56
    ld b, b                                       ; $7dc6: $40
    ld bc, $ff1d                                  ; $7dc7: $01 $1d $ff
    ld a, e                                       ; $7dca: $7b
    pop af                                        ; $7dcb: $f1
    add b                                         ; $7dcc: $80
    ccf                                           ; $7dcd: $3f
    rst $28                                       ; $7dce: $ef
    ld a, [bc]                                    ; $7dcf: $0a
    db $10                                        ; $7dd0: $10

jr_092_7dd1:
    db $fd                                        ; $7dd1: $fd
    ld [bc], a                                    ; $7dd2: $02
    cp a                                          ; $7dd3: $bf
    ld a, [hl]                                    ; $7dd4: $7e
    inc b                                         ; $7dd5: $04
    inc bc                                        ; $7dd6: $03
    add b                                         ; $7dd7: $80
    rrca                                          ; $7dd8: $0f
    db $eb                                        ; $7dd9: $eb
    nop                                           ; $7dda: $00
    xor d                                         ; $7ddb: $aa
    ld d, l                                       ; $7ddc: $55
    ld d, l                                       ; $7ddd: $55
    xor e                                         ; $7dde: $ab
    cp [hl]                                       ; $7ddf: $be
    ld b, c                                       ; $7de0: $41
    db $ed                                        ; $7de1: $ed
    inc de                                        ; $7de2: $13
    ld b, d                                       ; $7de3: $42
    pop bc                                        ; $7de4: $c1
    add b                                         ; $7de5: $80
    db $10                                        ; $7de6: $10
    ld c, d                                       ; $7de7: $4a
    ldh a, [$35]                                  ; $7de8: $f0 $35
    ldh [$80], a                                  ; $7dea: $e0 $80
    nop                                           ; $7dec: $00
    ld a, [$b200]                                 ; $7ded: $fa $00 $b2
    ld e, l                                       ; $7df0: $5d
    cp h                                          ; $7df1: $bc
    ld [$0cda], sp                                ; $7df2: $08 $da $0c
    ld l, l                                       ; $7df5: $6d
    add [hl]                                      ; $7df6: $86
    ld [$4cb6], sp                                ; $7df7: $08 $b6 $4c
    dec sp                                        ; $7dfa: $3b
    cp $70                                        ; $7dfb: $fe $70
    add hl, de                                    ; $7dfd: $19
    ld a, [de]                                    ; $7dfe: $1a

jr_092_7dff:
    rrca                                          ; $7dff: $0f
    adc h                                         ; $7e00: $8c
    nop                                           ; $7e01: $00
    rrca                                          ; $7e02: $0f
    ld b, [hl]                                    ; $7e03: $46
    rlca                                          ; $7e04: $07
    adc l                                         ; $7e05: $8d
    rlca                                          ; $7e06: $07
    ld b, [hl]                                    ; $7e07: $46
    inc bc                                        ; $7e08: $03
    and e                                         ; $7e09: $a3
    nop                                           ; $7e0a: $00
    inc bc                                        ; $7e0b: $03
    ld d, c                                       ; $7e0c: $51
    add c                                         ; $7e0d: $81
    xor c                                         ; $7e0e: $a9

Call_092_7e0f:
    ld b, c                                       ; $7e0f: $41
    ld l, $d8                                     ; $7e10: $2e $d8
    ld c, e                                       ; $7e12: $4b
    nop                                           ; $7e13: $00
    cp h                                          ; $7e14: $bc
    ld h, $dc                                     ; $7e15: $26 $dc

jr_092_7e17:
    dec b                                         ; $7e17: $05
    cp $bb                                        ; $7e18: $fe $bb
    cp $e6                                        ; $7e1a: $fe $e6
    nop                                           ; $7e1c: $00
    ei                                            ; $7e1d: $fb
    and l                                         ; $7e1e: $a5
    jp $f14f                                      ; $7e1f: $c3 $4f $f1


    xor d                                         ; $7e22: $aa
    inc c                                         ; $7e23: $0c
    ld e, c                                       ; $7e24: $59
    nop                                           ; $7e25: $00
    ld c, $ac                                     ; $7e26: $0e $ac
    rlca                                          ; $7e28: $07
    ld e, [hl]                                    ; $7e29: $5e
    rlca                                          ; $7e2a: $07
    rst $38                                       ; $7e2b: $ff
    dec sp                                        ; $7e2c: $3b
    ld [$e301], a                                 ; $7e2d: $ea $01 $e3
    pop bc                                        ; $7e30: $c1
    ld bc, $8123                                  ; $7e31: $01 $23 $81
    push de                                       ; $7e34: $d5
    xor d                                         ; $7e35: $aa
    and b                                         ; $7e36: $a0
    ld [$4a00], sp                                ; $7e37: $08 $00 $4a
    push af                                       ; $7e3a: $f5
    or l                                          ; $7e3b: $b5
    ld [$75aa], a                                 ; $7e3c: $ea $aa $75
    ld d, c                                       ; $7e3f: $51
    cp a                                          ; $7e40: $bf
    db $10                                        ; $7e41: $10
    or a                                          ; $7e42: $b7
    ld e, a                                       ; $7e43: $5f
    push de                                       ; $7e44: $d5
    ldh [rNR41], a                                ; $7e45: $e0 $20
    dec [hl]                                      ; $7e47: $35
    add sp, $2a                                   ; $7e48: $e8 $2a
    db $f4                                        ; $7e4a: $f4
    add b                                         ; $7e4b: $80
    ldh [rP1], a                                  ; $7e4c: $e0 $00
    sub l                                         ; $7e4e: $95
    and b                                         ; $7e4f: $a0
    db $fd                                        ; $7e50: $fd
    jp nc, Jump_092_6ffd                          ; $7e51: $d2 $fd $6f

    ld a, a                                       ; $7e54: $7f
    nop                                           ; $7e55: $00
    sbc $7c                                       ; $7e56: $de $7c
    ld l, b                                       ; $7e58: $68
    jr nc, jr_092_7dff                            ; $7e59: $30 $a4

    jr c, jr_092_7eb7                             ; $7e5b: $38 $5a

    inc [hl]                                      ; $7e5d: $34
    jr nz, jr_092_7e17                            ; $7e5e: $20 $b7

    ld e, b                                       ; $7e60: $58
    nop                                           ; $7e61: $00
    add hl, bc                                    ; $7e62: $09
    push af                                       ; $7e63: $f5
    ld b, b                                       ; $7e64: $40
    jp c, Jump_092_6d60                           ; $7e65: $da $60 $6d

    ld bc, $a630                                  ; $7e68: $01 $30 $a6
    jr c, jr_092_7ee8                             ; $7e6b: $38 $7b

    inc d                                         ; $7e6d: $14
    or l                                          ; $7e6e: $b5
    ld a, [de]                                    ; $7e6f: $1a
    db $10                                        ; $7e70: $10
    ld a, [de]                                    ; $7e71: $1a
    add b                                         ; $7e72: $80
    nop                                           ; $7e73: $00
    ld b, d                                       ; $7e74: $42
    ld a, [de]                                    ; $7e75: $1a
    sbc e                                         ; $7e76: $9b
    rrca                                          ; $7e77: $0f
    ld b, a                                       ; $7e78: $47
    xor h                                         ; $7e79: $ac
    inc l                                         ; $7e7a: $2c
    add $00                                       ; $7e7b: $c6 $00
    dec de                                        ; $7e7d: $1b
    and $a6                                       ; $7e7e: $e6 $a6
    db $d3                                        ; $7e80: $d3
    ld d, l                                       ; $7e81: $55
    db $eb                                        ; $7e82: $eb
    adc e                                         ; $7e83: $8b
    push af                                       ; $7e84: $f5
    nop                                           ; $7e85: $00
    rst $08                                       ; $7e86: $cf
    cp [hl]                                       ; $7e87: $be
    cp d                                          ; $7e88: $ba
    db $fd                                        ; $7e89: $fd
    ld d, l                                       ; $7e8a: $55
    ld l, d                                       ; $7e8b: $6a
    jp z, Jump_000_0075                           ; $7e8c: $ca $75 $00

    ld [hl], l                                    ; $7e8f: $75
    ld a, [hl+]                                   ; $7e90: $2a
    xor d                                         ; $7e91: $aa
    dec [hl]                                      ; $7e92: $35
    ld d, l                                       ; $7e93: $55
    ld a, [de]                                    ; $7e94: $1a
    jp nc, $003d                                  ; $7e95: $d2 $3d $00

    call nz, $a2fb                                ; $7e98: $c4 $fb $a2
    db $fd                                        ; $7e9b: $fd
    ld d, c                                       ; $7e9c: $51
    cp $ea                                        ; $7e9d: $fe $ea
    ld a, a                                       ; $7e9f: $7f
    ld b, b                                       ; $7ea0: $40
    ld [hl], a                                    ; $7ea1: $77
    db $10                                        ; $7ea2: $10
    ld hl, $1aad                                  ; $7ea3: $21 $ad $1a
    ld e, d                                       ; $7ea6: $5a
    adc l                                         ; $7ea7: $8d
    and l                                         ; $7ea8: $a5
    ld c, [hl]                                    ; $7ea9: $4e
    nop                                           ; $7eaa: $00
    ld e, l                                       ; $7eab: $5d
    and a                                         ; $7eac: $a7
    ld [de], a                                    ; $7ead: $12
    rst $20                                       ; $7eae: $e7
    adc [hl]                                      ; $7eaf: $8e
    di                                            ; $7eb0: $f3
    ld b, l                                       ; $7eb1: $45
    ei                                            ; $7eb2: $fb
    ld [$ffa1], sp                                ; $7eb3: $08 $a1 $ff
    rst $18                                       ; $7eb6: $df

jr_092_7eb7:
    cp $30                                        ; $7eb7: $fe $30
    ld e, b                                       ; $7eb9: $58
    ld a, a                                       ; $7eba: $7f
    nop                                           ; $7ebb: $00
    cp a                                          ; $7ebc: $bf
    inc [hl]                                      ; $7ebd: $34
    nop                                           ; $7ebe: $00
    ld e, l                                       ; $7ebf: $5d
    ld a, [c]                                     ; $7ec0: $f2
    ld [bc], a                                    ; $7ec1: $02
    ret nz                                        ; $7ec2: $c0

    dec de                                        ; $7ec3: $1b
    ld [bc], a                                    ; $7ec4: $02
    ld a, [c]                                     ; $7ec5: $f2
    inc bc                                        ; $7ec6: $03
    db $fd                                        ; $7ec7: $fd
    inc bc                                        ; $7ec8: $03
    nop                                           ; $7ec9: $00
    sbc $01                                       ; $7eca: $de $01
    cp c                                          ; $7ecc: $b9
    inc bc                                        ; $7ecd: $03
    ld d, [hl]                                    ; $7ece: $56
    ld bc, $0329                                  ; $7ecf: $01 $29 $03
    ld [$0142], sp                                ; $7ed2: $08 $42 $01
    ld de, $b003                                  ; $7ed5: $11 $03 $b0
    inc bc                                        ; $7ed8: $03
    rrca                                          ; $7ed9: $0f
    ld [$0010], sp                                ; $7eda: $08 $10 $00
    ld d, e                                       ; $7edd: $53
    inc e                                         ; $7ede: $1c
    sub b                                         ; $7edf: $90
    rra                                           ; $7ee0: $1f
    rrca                                          ; $7ee1: $0f
    rst $38                                       ; $7ee2: $ff
    jp $2001                                      ; $7ee3: $c3 $01 $20


    dec e                                         ; $7ee6: $1d
    db $e3                                        ; $7ee7: $e3

jr_092_7ee8:
    push hl                                       ; $7ee8: $e5
    rlca                                          ; $7ee9: $07
    ret nz                                        ; $7eea: $c0

    ld l, b                                       ; $7eeb: $68
    jr nz, jr_092_7f5e                            ; $7eec: $20 $70

    jr nz, jr_092_7ef0                            ; $7eee: $20 $00

jr_092_7ef0:
    inc h                                         ; $7ef0: $24
    ldh [$da], a                                  ; $7ef1: $e0 $da
    ldh [$35], a                                  ; $7ef3: $e0 $35
    ret nz                                        ; $7ef5: $c0

    cp $00                                        ; $7ef6: $fe $00
    and d                                         ; $7ef8: $a2
    ld h, $04                                     ; $7ef9: $26 $04
    inc bc                                        ; $7efb: $03
    inc b                                         ; $7efc: $04
    ld [$010a], sp                                ; $7efd: $08 $0a $01
    ld hl, $0004                                  ; $7f00: $21 $04 $00
    dec d                                         ; $7f03: $15
    nop                                           ; $7f04: $00
    inc bc                                        ; $7f05: $03
    cp $ff                                        ; $7f06: $fe $ff
    ld e, $f0                                     ; $7f08: $1e $f0
    ld hl, sp+$10                                 ; $7f0a: $f8 $10
    or $02                                        ; $7f0c: $f6 $02
    jr @-$2a                                      ; $7f0e: $18 $d4

    ccf                                           ; $7f10: $3f
    cp [hl]                                       ; $7f11: $be
    ld e, a                                       ; $7f12: $5f
    rra                                           ; $7f13: $1f
    sbc $0f                                       ; $7f14: $de $0f
    cp $12                                        ; $7f16: $fe $12
    ld [bc], a                                    ; $7f18: $02
    ld bc, $3e00                                  ; $7f19: $01 $00 $3e
    dec b                                         ; $7f1c: $05
    dec e                                         ; $7f1d: $1d
    inc bc                                        ; $7f1e: $03
    and b                                         ; $7f1f: $a0
    inc b                                         ; $7f20: $04
    rst $38                                       ; $7f21: $ff
    ld bc, $3068                                  ; $7f22: $01 $68 $30
    xor d                                         ; $7f25: $aa
    ld bc, $0345                                  ; $7f26: $01 $45 $03
    or [hl]                                       ; $7f29: $b6
    ld c, d                                       ; $7f2a: $4a
    dec b                                         ; $7f2b: $05
    nop                                           ; $7f2c: $00
    ld a, [hl]                                    ; $7f2d: $7e
    add c                                         ; $7f2e: $81
    push af                                       ; $7f2f: $f5
    dec bc                                        ; $7f30: $0b
    sbc $e1                                       ; $7f31: $de $e1
    ld [hl], l                                    ; $7f33: $75
    dec hl                                        ; $7f34: $2b
    db $10                                        ; $7f35: $10
    ret nz                                        ; $7f36: $c0

    nop                                           ; $7f37: $00
    ld [hl], l                                    ; $7f38: $75
    ld [hl], d                                    ; $7f39: $72
    dec b                                         ; $7f3a: $05
    rst $38                                       ; $7f3b: $ff
    rst $38                                       ; $7f3c: $ff
    jr jr_092_7f4e                                ; $7f3d: $18 $0f

    ld bc, $0f18                                  ; $7f3f: $01 $18 $0f
    rst $28                                       ; $7f42: $ef
    rra                                           ; $7f43: $1f
    ld [$a0ff], sp                                ; $7f44: $08 $ff $a0
    add b                                         ; $7f47: $80
    inc b                                         ; $7f48: $04
    ld [$ff20], sp                                ; $7f49: $08 $20 $ff
    ret nz                                        ; $7f4c: $c0

    rst $38                                       ; $7f4d: $ff

jr_092_7f4e:
    or b                                          ; $7f4e: $b0
    rrca                                          ; $7f4f: $0f
    ld a, [$0fff]                                 ; $7f50: $fa $ff $0f
    nop                                           ; $7f53: $00
    rst $38                                       ; $7f54: $ff
    ld a, [hl+]                                   ; $7f55: $2a
    push af                                       ; $7f56: $f5
    push de                                       ; $7f57: $d5
    db $eb                                        ; $7f58: $eb
    and b                                         ; $7f59: $a0
    ld e, a                                       ; $7f5a: $5f
    ld b, e                                       ; $7f5b: $43
    and b                                         ; $7f5c: $a0
    or b                                          ; $7f5d: $b0

jr_092_7f5e:
    rlca                                          ; $7f5e: $07
    ld b, l                                       ; $7f5f: $45
    or b                                          ; $7f60: $b0
    rla                                           ; $7f61: $17
    ei                                            ; $7f62: $fb
    db $ec                                        ; $7f63: $ec
    ret                                           ; $7f64: $c9


    adc [hl]                                      ; $7f65: $8e
    ld c, $00                                     ; $7f66: $0e $00
    dec b                                         ; $7f68: $05
    add l                                         ; $7f69: $85
    ld b, $46                                     ; $7f6a: $06 $46
    inc bc                                        ; $7f6c: $03
    and d                                         ; $7f6d: $a2
    inc bc                                        ; $7f6e: $03
    ld d, l                                       ; $7f6f: $55
    nop                                           ; $7f70: $00
    add c                                         ; $7f71: $81
    dec hl                                        ; $7f72: $2b
    pop bc                                        ; $7f73: $c1
    ld e, d                                       ; $7f74: $5a
    dec c                                         ; $7f75: $0d
    xor e                                         ; $7f76: $ab
    rrca                                          ; $7f77: $0f
    db $dd                                        ; $7f78: $dd
    nop                                           ; $7f79: $00
    ld b, $ec                                     ; $7f7a: $06 $ec
    rlca                                          ; $7f7c: $07
    or $03                                        ; $7f7d: $f6 $03
    ld a, e                                       ; $7f7f: $7b
    add e                                         ; $7f80: $83
    or a                                          ; $7f81: $b7
    nop                                           ; $7f82: $00
    ld b, c                                       ; $7f83: $41
    ld e, e                                       ; $7f84: $5b
    and c                                         ; $7f85: $a1
    jp hl                                         ; $7f86: $e9


    cp $ba                                        ; $7f87: $fe $ba
    call Call_000_00b5                            ; $7f89: $cd $b5 $00
    ld c, $ac                                     ; $7f8c: $0e $ac
    ld b, a                                       ; $7f8e: $47
    ld d, d                                       ; $7f8f: $52
    and a                                         ; $7f90: $a7
    ld l, $d3                                     ; $7f91: $2e $d3
    sub l                                         ; $7f93: $95
    nop                                           ; $7f94: $00

jr_092_7f95:
    db $eb                                        ; $7f95: $eb
    ld c, e                                       ; $7f96: $4b
    pop af                                        ; $7f97: $f1
    sbc $af                                       ; $7f98: $de $af
    cp [hl]                                       ; $7f9a: $be
    ld sp, hl                                     ; $7f9b: $f9
    ld c, e                                       ; $7f9c: $4b
    nop                                           ; $7f9d: $00
    db $f4                                        ; $7f9e: $f4
    ld d, l                                       ; $7f9f: $55
    ld [$b4eb], a                                 ; $7fa0: $ea $eb $b4
    and c                                         ; $7fa3: $a1
    ld a, [hl]                                    ; $7fa4: $7e
    ld d, b                                       ; $7fa5: $50
    nop                                           ; $7fa6: $00
    cp a                                          ; $7fa7: $bf
    or b                                          ; $7fa8: $b0
    ld e, a                                       ; $7fa9: $5f
    xor a                                         ; $7faa: $af
    ret nc                                        ; $7fab: $d0

    sub [hl]                                      ; $7fac: $96
    jp hl                                         ; $7fad: $e9


    ld h, a                                       ; $7fae: $67
    nop                                           ; $7faf: $00
    rst $18                                       ; $7fb0: $df
    sbc $7c                                       ; $7fb1: $de $7c
    jr nc, jr_092_7f95                            ; $7fb3: $30 $e0

    xor d                                         ; $7fb5: $aa
    ld [hl], b                                    ; $7fb6: $70
    sub l                                         ; $7fb7: $95
    nop                                           ; $7fb8: $00
    ld a, b                                       ; $7fb9: $78
    ld d, d                                       ; $7fba: $52
    cp h                                          ; $7fbb: $bc
    and [hl]                                      ; $7fbc: $a6
    ld sp, hl                                     ; $7fbd: $f9
    jp $e1fc                                      ; $7fbe: $c3 $fc $e1


    nop                                           ; $7fc1: $00
    ld a, [hl]                                    ; $7fc2: $7e
    ret nc                                        ; $7fc3: $d0

    ld a, a                                       ; $7fc4: $7f
    ld l, d                                       ; $7fc5: $6a
    ccf                                           ; $7fc6: $3f
    dec [hl]                                      ; $7fc7: $35
    ccf                                           ; $7fc8: $3f
    dec sp                                        ; $7fc9: $3b
    nop                                           ; $7fca: $00
    rra                                           ; $7fcb: $1f
    sub a                                         ; $7fcc: $97
    rra                                           ; $7fcd: $1f
    ld [de], a                                    ; $7fce: $12
    nop                                           ; $7fcf: $00
    nop                                           ; $7fd0: $00
    ld [de], a                                    ; $7fd1: $12
    nop                                           ; $7fd2: $00
    nop                                           ; $7fd3: $00
    ld [de], a                                    ; $7fd4: $12
    nop                                           ; $7fd5: $00
    nop                                           ; $7fd6: $00
    ld [de], a                                    ; $7fd7: $12
    nop                                           ; $7fd8: $00
    nop                                           ; $7fd9: $00
    jr jr_092_7fdc                                ; $7fda: $18 $00

jr_092_7fdc:
    ld bc, $0024                                  ; $7fdc: $01 $24 $00
    inc bc                                        ; $7fdf: $03
    rlca                                          ; $7fe0: $07
    nop                                           ; $7fe1: $00
    ret nz                                        ; $7fe2: $c0

    nop                                           ; $7fe3: $00
    ldh a, [rP1]                                  ; $7fe4: $f0 $00
    ld [bc], a                                    ; $7fe6: $02
    nop                                           ; $7fe7: $00
    jr jr_092_7feb                                ; $7fe8: $18 $01

    ld [hl], a                                    ; $7fea: $77

jr_092_7feb:
    nop                                           ; $7feb: $00
    inc c                                         ; $7fec: $0c
    nop                                           ; $7fed: $00
    rra                                           ; $7fee: $1f
    ld bc, $00d1                                  ; $7fef: $01 $d1 $00
    rlca                                          ; $7ff2: $07
    inc bc                                        ; $7ff3: $03
    add e                                         ; $7ff4: $83
    ld bc, $0126                                  ; $7ff5: $01 $26 $01
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
