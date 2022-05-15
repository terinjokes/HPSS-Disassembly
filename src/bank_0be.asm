; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0be", ROMX[$4000], BANK[$be]

    db $be

    and b                                         ; $4001: $a0
    dec c                                         ; $4002: $0d
    adc d                                         ; $4003: $8a
    ld a, [bc]                                    ; $4004: $0a
    nop                                           ; $4005: $00
    or d                                          ; $4006: $b2
    or d                                          ; $4007: $b2
    ccf                                           ; $4008: $3f
    ld a, $12                                     ; $4009: $3e $12
    nop                                           ; $400b: $00
    inc b                                         ; $400c: $04
    nop                                           ; $400d: $00
    nop                                           ; $400e: $00
    sub b                                         ; $400f: $90
    add b                                         ; $4010: $80
    rst $38                                       ; $4011: $ff
    rst $38                                       ; $4012: $ff
    cp e                                          ; $4013: $bb

jr_0be_4014:
    cp e                                          ; $4014: $bb
    ei                                            ; $4015: $fb
    ei                                            ; $4016: $fb
    ld b, c                                       ; $4017: $41
    nop                                           ; $4018: $00
    ld bc, $5570                                  ; $4019: $01 $70 $55
    ld d, l                                       ; $401c: $55
    xor d                                         ; $401d: $aa
    xor d                                         ; $401e: $aa
    rst $38                                       ; $401f: $ff
    ld bc, $0000                                  ; $4020: $01 $00 $00
    xor d                                         ; $4023: $aa
    rst $38                                       ; $4024: $ff
    ld d, l                                       ; $4025: $55
    rst $38                                       ; $4026: $ff
    nop                                           ; $4027: $00
    rst $38                                       ; $4028: $ff
    ld [bc], a                                    ; $4029: $02
    rst $38                                       ; $402a: $ff
    db $10                                        ; $402b: $10
    ld a, a                                       ; $402c: $7f

Jump_0be_402d:
    rst $38                                       ; $402d: $ff
    dec sp                                        ; $402e: $3b
    inc b                                         ; $402f: $04
    nop                                           ; $4030: $00
    nop                                           ; $4031: $00
    rst $38                                       ; $4032: $ff
    jr nz, jr_0be_4014                            ; $4033: $20 $df

    ld b, b                                       ; $4035: $40
    nop                                           ; $4036: $00
    ld [de], a                                    ; $4037: $12
    db $10                                        ; $4038: $10
    rst $38                                       ; $4039: $ff
    rst $38                                       ; $403a: $ff
    db $db                                        ; $403b: $db
    rst $38                                       ; $403c: $ff
    ei                                            ; $403d: $fb
    rst $18                                       ; $403e: $df
    ld [$ff6e], sp                                ; $403f: $08 $6e $ff
    ld [$10f7], sp                                ; $4042: $08 $f7 $10
    ld [$b748], sp                                ; $4045: $08 $48 $b7
    ld [bc], a                                    ; $4048: $02
    ld a, [bc]                                    ; $4049: $0a
    rst $38                                       ; $404a: $ff
    and d                                         ; $404b: $a2
    ld e, a                                       ; $404c: $5f
    inc bc                                        ; $404d: $03
    ld a, [hl+]                                   ; $404e: $2a
    ld [$20fd], sp                                ; $404f: $08 $fd $20
    ld [$00ae], sp                                ; $4052: $08 $ae $00
    ld d, c                                       ; $4055: $51
    ld b, l                                       ; $4056: $45
    cp d                                          ; $4057: $ba
    ld [hl+], a                                   ; $4058: $22
    db $dd                                        ; $4059: $dd
    pop de                                        ; $405a: $d1
    xor $ca                                       ; $405b: $ee $ca
    nop                                           ; $405d: $00

Jump_0be_405e:
    push af                                       ; $405e: $f5
    push hl                                       ; $405f: $e5
    jp c, $fd02                                   ; $4060: $da $02 $fd

    dec b                                         ; $4063: $05
    ld a, [$183c]                                 ; $4064: $fa $3c $18
    rst $18                                       ; $4067: $df
    add hl, bc                                    ; $4068: $09
    or $44                                        ; $4069: $f6 $44
    jr c, jr_0be_40ab                             ; $406b: $38 $3e

    nop                                           ; $406d: $00
    ld [hl], a                                    ; $406e: $77
    rst $38                                       ; $406f: $ff
    rst $38                                       ; $4070: $ff
    inc bc                                        ; $4071: $03
    cp a                                          ; $4072: $bf
    ld b, b                                       ; $4073: $40
    ld a, a                                       ; $4074: $7f
    add b                                         ; $4075: $80
    xor a                                         ; $4076: $af
    ld d, h                                       ; $4077: $54
    ld h, h                                       ; $4078: $64
    nop                                           ; $4079: $00
    inc c                                         ; $407a: $0c
    nop                                           ; $407b: $00
    ld b, b                                       ; $407c: $40
    or [hl]                                       ; $407d: $b6
    inc bc                                        ; $407e: $03
    nop                                           ; $407f: $00
    cp a                                          ; $4080: $bf
    ld e, h                                       ; $4081: $5c
    ld d, l                                       ; $4082: $55
    xor d                                         ; $4083: $aa
    ld a, [hl+]                                   ; $4084: $2a
    push de                                       ; $4085: $d5
    nop                                           ; $4086: $00
    rst $38                                       ; $4087: $ff
    cp $be                                        ; $4088: $fe $be
    rst $30                                       ; $408a: $f7
    or a                                          ; $408b: $b7
    cp $ff                                        ; $408c: $fe $ff
    rst $10                                       ; $408e: $d7
    nop                                           ; $408f: $00
    push af                                       ; $4090: $f5
    cp $22                                        ; $4091: $fe $22
    db $dd                                        ; $4093: $dd
    inc b                                         ; $4094: $04
    ei                                            ; $4095: $fb
    add d                                         ; $4096: $82
    db $fd                                        ; $4097: $fd
    nop                                           ; $4098: $00
    ei                                            ; $4099: $fb
    cp $d7                                        ; $409a: $fe $d7
    rst $38                                       ; $409c: $ff
    db $f4                                        ; $409d: $f4
    rst $38                                       ; $409e: $ff
    add e                                         ; $409f: $83
    cp $00                                        ; $40a0: $fe $00
    set 6, a                                      ; $40a2: $cb $f7
    add b                                         ; $40a4: $80
    rst $38                                       ; $40a5: $ff
    ret nz                                        ; $40a6: $c0

    rst $38                                       ; $40a7: $ff
    sub h                                         ; $40a8: $94
    db $eb                                        ; $40a9: $eb
    nop                                           ; $40aa: $00

jr_0be_40ab:
    jp $82ff                                      ; $40ab: $c3 $ff $82


    rst $38                                       ; $40ae: $ff
    jp $ffff                                      ; $40af: $c3 $ff $ff


    cp c                                          ; $40b2: $b9
    add b                                         ; $40b3: $80
    sbc h                                         ; $40b4: $9c
    nop                                           ; $40b5: $00
    rra                                           ; $40b6: $1f
    ld [hl], a                                    ; $40b7: $77
    ld sp, $caff                                  ; $40b8: $31 $ff $ca
    db $dd                                        ; $40bb: $dd
    add h                                         ; $40bc: $84
    nop                                           ; $40bd: $00
    rst $38                                       ; $40be: $ff
    add h                                         ; $40bf: $84
    push de                                       ; $40c0: $d5
    add h                                         ; $40c1: $84
    rst $38                                       ; $40c2: $ff
    ld c, a                                       ; $40c3: $4f
    rst $38                                       ; $40c4: $ff
    xor a                                         ; $40c5: $af
    nop                                           ; $40c6: $00
    rst $38                                       ; $40c7: $ff
    ld d, $77                                     ; $40c8: $16 $77
    rla                                           ; $40ca: $17
    rst $38                                       ; $40cb: $ff
    ld d, $5f                                     ; $40cc: $16 $5f
    ld d, $00                                     ; $40ce: $16 $00
    rst $38                                       ; $40d0: $ff
    ld d, $57                                     ; $40d1: $16 $57
    ld d, $ff                                     ; $40d3: $16 $ff
    inc a                                         ; $40d5: $3c
    rst $38                                       ; $40d6: $ff
    ld e, e                                       ; $40d7: $5b
    jr z, @+$01                                   ; $40d8: $28 $ff

    sbc d                                         ; $40da: $9a
    ld [bc], a                                    ; $40db: $02
    ld [$04df], sp                                ; $40dc: $08 $df $04
    jr jr_0be_40f3                                ; $40df: $18 $12

    rst $38                                       ; $40e1: $ff
    and c                                         ; $40e2: $a1
    ld bc, $40ff                                  ; $40e3: $01 $ff $40
    ld [hl], a                                    ; $40e6: $77
    ld b, b                                       ; $40e7: $40
    rst $38                                       ; $40e8: $ff
    ld b, b                                       ; $40e9: $40
    ld e, l                                       ; $40ea: $5d
    inc b                                         ; $40eb: $04
    nop                                           ; $40ec: $00
    nop                                           ; $40ed: $00
    ld d, l                                       ; $40ee: $55
    ld b, b                                       ; $40ef: $40
    rst $38                                       ; $40f0: $ff
    adc a                                         ; $40f1: $8f
    rst $38                                       ; $40f2: $ff

jr_0be_40f3:
    ld d, [hl]                                    ; $40f3: $56
    rst $38                                       ; $40f4: $ff
    ld h, $06                                     ; $40f5: $26 $06
    ld [hl], a                                    ; $40f7: $77
    ld h, $ff                                     ; $40f8: $26 $ff
    ld h, $7f                                     ; $40fa: $26 $7f
    inc b                                         ; $40fc: $04
    nop                                           ; $40fd: $00
    ld [$c400], sp                                ; $40fe: $08 $00 $c4
    nop                                           ; $4101: $00
    rst $38                                       ; $4102: $ff
    xor b                                         ; $4103: $a8
    rst $38                                       ; $4104: $ff
    sub b                                         ; $4105: $90
    rst $30                                       ; $4106: $f7
    sub b                                         ; $4107: $90
    rst $38                                       ; $4108: $ff
    sub b                                         ; $4109: $90
    ld b, b                                       ; $410a: $40
    db $dd                                        ; $410b: $dd
    inc b                                         ; $410c: $04
    nop                                           ; $410d: $00
    push de                                       ; $410e: $d5
    sub b                                         ; $410f: $90
    rst $38                                       ; $4110: $ff
    inc hl                                        ; $4111: $23
    rst $38                                       ; $4112: $ff
    dec d                                         ; $4113: $15
    ld bc, $09ff                                  ; $4114: $01 $ff $09
    ld a, a                                       ; $4117: $7f
    add hl, bc                                    ; $4118: $09
    rst $38                                       ; $4119: $ff
    add hl, bc                                    ; $411a: $09
    ld e, l                                       ; $411b: $5d
    inc b                                         ; $411c: $04
    jr jr_0be_411f                                ; $411d: $18 $00

jr_0be_411f:
    pop af                                        ; $411f: $f1
    rst $38                                       ; $4120: $ff
    ld l, d                                       ; $4121: $6a
    rst $38                                       ; $4122: $ff
    ld h, h                                       ; $4123: $64
    ld [hl], a                                    ; $4124: $77
    ld h, h                                       ; $4125: $64
    rst $38                                       ; $4126: $ff
    jr nz, jr_0be_418d                            ; $4127: $20 $64

    ld a, l                                       ; $4129: $7d
    inc b                                         ; $412a: $04
    nop                                           ; $412b: $00
    ld [hl], l                                    ; $412c: $75
    ld h, h                                       ; $412d: $64
    rst $38                                       ; $412e: $ff
    ld c, b                                       ; $412f: $48
    rst $38                                       ; $4130: $ff
    nop                                           ; $4131: $00
    add l                                         ; $4132: $85
    rst $38                                       ; $4133: $ff
    ld [bc], a                                    ; $4134: $02
    ld [hl], a                                    ; $4135: $77
    ld [bc], a                                    ; $4136: $02
    rst $38                                       ; $4137: $ff
    ld [bc], a                                    ; $4138: $02
    ld e, a                                       ; $4139: $5f
    sub b                                         ; $413a: $90
    inc b                                         ; $413b: $04
    nop                                           ; $413c: $00
    ld d, a                                       ; $413d: $57
    ld [bc], a                                    ; $413e: $02

jr_0be_413f:
    ld [hl], b                                    ; $413f: $70
    nop                                           ; $4140: $00
    jp c, Jump_0be_59ff                           ; $4141: $da $ff $59

    ld a, a                                       ; $4144: $7f
    ld [$ff59], sp                                ; $4145: $08 $59 $ff
    ld e, c                                       ; $4148: $59
    ld e, l                                       ; $4149: $5d
    inc b                                         ; $414a: $04
    jr jr_0be_413f                                ; $414b: $18 $f2

    rst $38                                       ; $414d: $ff
    push af                                       ; $414e: $f5
    nop                                           ; $414f: $00
    rst $38                                       ; $4150: $ff
    ld l, b                                       ; $4151: $68
    rst $38                                       ; $4152: $ff
    add sp, -$01                                  ; $4153: $e8 $ff
    ld l, b                                       ; $4155: $68
    ld a, l                                       ; $4156: $7d
    ld l, b                                       ; $4157: $68
    and b                                         ; $4158: $a0
    inc b                                         ; $4159: $04
    db $10                                        ; $415a: $10
    sbc l                                         ; $415b: $9d
    ld c, h                                       ; $415c: $4c
    ld bc, $fff8                                  ; $415d: $01 $f8 $ff
    adc h                                         ; $4160: $8c
    rst $38                                       ; $4161: $ff
    ld d, e                                       ; $4162: $53
    nop                                           ; $4163: $00
    ld a, l                                       ; $4164: $7d
    ld hl, $21ff                                  ; $4165: $21 $ff $21
    ld [hl], l                                    ; $4168: $75
    ld hl, $02fd                                  ; $4169: $21 $fd $02
    nop                                           ; $416c: $00
    ld e, b                                       ; $416d: $58
    daa                                           ; $416e: $27
    ld hl, sp+$07                                 ; $416f: $f8 $07
    xor h                                         ; $4171: $ac
    inc de                                        ; $4172: $13
    ld a, h                                       ; $4173: $7c
    add e                                         ; $4174: $83
    nop                                           ; $4175: $00
    or h                                          ; $4176: $b4
    rst $38                                       ; $4177: $ff
    db $ec                                        ; $4178: $ec
    inc bc                                        ; $4179: $03
    cp $01                                        ; $417a: $fe $01
    cp a                                          ; $417c: $bf
    ld b, b                                       ; $417d: $40
    nop                                           ; $417e: $00
    dec de                                        ; $417f: $1b
    db $e4                                        ; $4180: $e4
    dec e                                         ; $4181: $1d
    ld [c], a                                     ; $4182: $e2
    cpl                                           ; $4183: $2f
    ret nz                                        ; $4184: $c0

    ccf                                           ; $4185: $3f
    ret nz                                        ; $4186: $c0

    nop                                           ; $4187: $00
    jr z, @+$01                                   ; $4188: $28 $ff

    ccf                                           ; $418a: $3f
    ret nz                                        ; $418b: $c0

    ld h, [hl]                                    ; $418c: $66

jr_0be_418d:
    sub b                                         ; $418d: $90
    ld b, d                                       ; $418e: $42
    cp l                                          ; $418f: $bd
    nop                                           ; $4190: $00
    sub c                                         ; $4191: $91
    ld l, [hl]                                    ; $4192: $6e
    ld h, h                                       ; $4193: $64
    sbc e                                         ; $4194: $9b
    sub b                                         ; $4195: $90
    ld l, c                                       ; $4196: $69
    add hl, hl                                    ; $4197: $29
    sub $00                                       ; $4198: $d6 $00
    inc b                                         ; $419a: $04
    ei                                            ; $419b: $fb
    add b                                         ; $419c: $80
    ld a, a                                       ; $419d: $7f
    push af                                       ; $419e: $f5
    rst $38                                       ; $419f: $ff
    adc l                                         ; $41a0: $8d
    ld c, $00                                     ; $41a1: $0e $00
    call z, $fbff                                 ; $41a3: $cc $ff $fb
    inc c                                         ; $41a6: $0c
    ld h, c                                       ; $41a7: $61
    ld e, $ea                                     ; $41a8: $1e $ea
    dec e                                         ; $41aa: $1d
    nop                                           ; $41ab: $00
    ld sp, hl                                     ; $41ac: $f9
    ld e, $d8                                     ; $41ad: $1e $d8
    scf                                           ; $41af: $37
    jp c, Jump_000_123f                           ; $41b0: $da $3f $12

    add b                                         ; $41b3: $80
    nop                                           ; $41b4: $00
    ld l, l                                       ; $41b5: $6d
    rst $38                                       ; $41b6: $ff
    rst $38                                       ; $41b7: $ff
    nop                                           ; $41b8: $00
    rst $28                                       ; $41b9: $ef
    nop                                           ; $41ba: $00
    cp l                                          ; $41bb: $bd
    nop                                           ; $41bc: $00
    nop                                           ; $41bd: $00
    ld l, d                                       ; $41be: $6a
    nop                                           ; $41bf: $00
    rst $18                                       ; $41c0: $df
    nop                                           ; $41c1: $00
    ld a, c                                       ; $41c2: $79
    nop                                           ; $41c3: $00
    inc de                                        ; $41c4: $13
    nop                                           ; $41c5: $00
    nop                                           ; $41c6: $00
    ld sp, $9201                                  ; $41c7: $31 $01 $92
    rst $38                                       ; $41ca: $ff
    adc e                                         ; $41cb: $8b
    halt                                          ; $41cc: $76
    ld [hl], c                                    ; $41cd: $71
    adc [hl]                                      ; $41ce: $8e
    nop                                           ; $41cf: $00
    and e                                         ; $41d0: $a3
    inc e                                         ; $41d1: $1c
    ld d, a                                       ; $41d2: $57
    xor h                                         ; $41d3: $ac
    inc hl                                        ; $41d4: $23
    call c, $10e2                                 ; $41d5: $dc $e2 $10
    nop                                           ; $41d8: $00
    sub $20                                       ; $41d9: $d6 $20
    ei                                            ; $41db: $fb
    ld a, a                                       ; $41dc: $7f
    nop                                           ; $41dd: $00
    rst $38                                       ; $41de: $ff
    pop de                                        ; $41df: $d1
    xor $00                                       ; $41e0: $ee $00
    ld a, [hl+]                                   ; $41e2: $2a
    push bc                                       ; $41e3: $c5
    ld b, h                                       ; $41e4: $44
    cp e                                          ; $41e5: $bb
    inc de                                        ; $41e6: $13
    db $ec                                        ; $41e7: $ec
    rst $18                                       ; $41e8: $df
    nop                                           ; $41e9: $00
    nop                                           ; $41ea: $00
    or $00                                        ; $41eb: $f6 $00
    ld a, a                                       ; $41ed: $7f
    nop                                           ; $41ee: $00
    db $dd                                        ; $41ef: $dd
    nop                                           ; $41f0: $00
    ei                                            ; $41f1: $fb
    nop                                           ; $41f2: $00
    nop                                           ; $41f3: $00
    sbc a                                         ; $41f4: $9f
    rst $38                                       ; $41f5: $ff
    dec de                                        ; $41f6: $1b
    ld bc, $0702                                  ; $41f7: $01 $02 $07
    or l                                          ; $41fa: $b5

Jump_0be_41fb:
    ld c, d                                       ; $41fb: $4a
    nop                                           ; $41fc: $00
    inc de                                        ; $41fd: $13
    db $ec                                        ; $41fe: $ec

Jump_0be_41ff:
    inc de                                        ; $41ff: $13
    db $ec                                        ; $4200: $ec
    rlca                                          ; $4201: $07
    ld a, b                                       ; $4202: $78
    rra                                           ; $4203: $1f
    ldh [rP1], a                                  ; $4204: $e0 $00
    ld a, [de]                                    ; $4206: $1a
    rst $38                                       ; $4207: $ff
    adc l                                         ; $4208: $8d
    ld b, b                                       ; $4209: $40
    nop                                           ; $420a: $00
    add b                                         ; $420b: $80

jr_0be_420c:
    adc [hl]                                      ; $420c: $8e
    ld [hl], c                                    ; $420d: $71
    nop                                           ; $420e: $00
    reti                                          ; $420f: $d9


    and $34                                       ; $4210: $e6 $34
    bit 5, l                                      ; $4212: $cb $6d
    sub d                                         ; $4214: $92
    db $10                                        ; $4215: $10
    rst $28                                       ; $4216: $ef
    ld bc, $ed12                                  ; $4217: $01 $12 $ed
    ld bc, $d6fe                                  ; $421a: $01 $fe $d6
    rst $38                                       ; $421d: $ff
    or b                                          ; $421e: $b0
    pop hl                                        ; $421f: $e1
    add hl, bc                                    ; $4220: $09
    nop                                           ; $4221: $00
    ld bc, $03cc                                  ; $4222: $01 $cc $03
    db $fd                                        ; $4225: $fd
    ld b, $ea                                     ; $4226: $06 $ea
    dec e                                         ; $4228: $1d
    ret c                                         ; $4229: $d8

    nop                                           ; $422a: $00
    scf                                           ; $422b: $37
    cp a                                          ; $422c: $bf
    ld a, a                                       ; $422d: $7f
    db $db                                        ; $422e: $db
    inc h                                         ; $422f: $24
    ld a, a                                       ; $4230: $7f
    nop                                           ; $4231: $00
    ld [$1500], a                                 ; $4232: $ea $00 $15
    ld a, d                                       ; $4235: $7a
    add a                                         ; $4236: $87
    jp c, $f805                                   ; $4237: $da $05 $f8

    rlca                                          ; $423a: $07
    ld l, d                                       ; $423b: $6a
    nop                                           ; $423c: $00
    sub l                                         ; $423d: $95
    cp b                                          ; $423e: $b8
    rlca                                          ; $423f: $07
    sub $28                                       ; $4240: $d6 $28
    db $fd                                        ; $4242: $fd
    ld [bc], a                                    ; $4243: $02
    ld e, a                                       ; $4244: $5f
    nop                                           ; $4245: $00
    and b                                         ; $4246: $a0
    ld d, l                                       ; $4247: $55
    ld [c], a                                     ; $4248: $e2
    ld e, e                                       ; $4249: $5b
    and b                                         ; $424a: $a0
    rra                                           ; $424b: $1f
    ldh [$5f], a                                  ; $424c: $e0 $5f
    db $10                                        ; $424e: $10
    and b                                         ; $424f: $a0
    dec d                                         ; $4250: $15
    add sp, $60                                   ; $4251: $e8 $60
    ld [$7e81], sp                                ; $4253: $08 $81 $7e
    and l                                         ; $4256: $a5
    rst $38                                       ; $4257: $ff
    nop                                           ; $4258: $00
    ld c, e                                       ; $4259: $4b
    inc h                                         ; $425a: $24
    dec b                                         ; $425b: $05
    ld hl, sp+$4a                                 ; $425c: $f8 $4a
    or l                                          ; $425e: $b5
    sub c                                         ; $425f: $91
    ld l, [hl]                                    ; $4260: $6e
    nop                                           ; $4261: $00
    ld [bc], a                                    ; $4262: $02
    ld bc, $0251                                  ; $4263: $01 $51 $02
    and b                                         ; $4266: $a0
    inc bc                                        ; $4267: $03
    ld d, a                                       ; $4268: $57
    inc bc                                        ; $4269: $03
    nop                                           ; $426a: $00
    add b                                         ; $426b: $80
    rlca                                          ; $426c: $07
    halt                                          ; $426d: $76
    rlca                                          ; $426e: $07
    ld l, [hl]                                    ; $426f: $6e
    rlca                                          ; $4270: $07
    ld h, h                                       ; $4271: $64
    rrca                                          ; $4272: $0f
    nop                                           ; $4273: $00
    dec bc                                        ; $4274: $0b
    ld d, b                                       ; $4275: $50
    stop                                          ; $4276: $10 $00
    add d                                         ; $4278: $82

jr_0be_4279:
    db $10                                        ; $4279: $10
    add h                                         ; $427a: $84
    jr nz, jr_0be_427d                            ; $427b: $20 $00

jr_0be_427d:
    nop                                           ; $427d: $00
    ld h, b                                       ; $427e: $60
    dec l                                         ; $427f: $2d
    ld b, b                                       ; $4280: $40
    db $db                                        ; $4281: $db
    nop                                           ; $4282: $00
    jr @-$7e                                      ; $4283: $18 $80

    ld bc, $c012                                  ; $4285: $01 $12 $c0
    or c                                          ; $4288: $b1
    nop                                           ; $4289: $00
    jr c, jr_0be_420c                             ; $428a: $38 $80

    ld [hl], a                                    ; $428c: $77
    add d                                         ; $428d: $82
    ld [bc], a                                    ; $428e: $02
    ld d, b                                       ; $428f: $50
    db $db                                        ; $4290: $db
    sub [hl]                                      ; $4291: $96
    nop                                           ; $4292: $00
    db $db                                        ; $4293: $db
    inc de                                        ; $4294: $13
    ld [bc], a                                    ; $4295: $02
    db $db                                        ; $4296: $db
    nop                                           ; $4297: $00
    ld a, [hl]                                    ; $4298: $7e
    ld bc, $fc00                                  ; $4299: $01 $00 $fc
    inc bc                                        ; $429c: $03
    add sp, $06                                   ; $429d: $e8 $06
    ret c                                         ; $429f: $d8

    inc b                                         ; $42a0: $04
    db $f4                                        ; $42a1: $f4
    ld [$e300], sp                                ; $42a2: $08 $00 $e3
    jr jr_0be_4322                                ; $42a5: $18 $7b

    inc b                                         ; $42a7: $04
    or l                                          ; $42a8: $b5
    ld [$7887], sp                                ; $42a9: $08 $87 $78
    nop                                           ; $42ac: $00
    rst $08                                       ; $42ad: $cf
    ldh a, [$5d]                                  ; $42ae: $f0 $5d
    and b                                         ; $42b0: $a0
    cp a                                          ; $42b1: $bf
    ld b, b                                       ; $42b2: $40
    ld a, [hl]                                    ; $42b3: $7e
    add b                                         ; $42b4: $80
    nop                                           ; $42b5: $00
    db $fd                                        ; $42b6: $fd
    nop                                           ; $42b7: $00
    rra                                           ; $42b8: $1f
    jr nz, jr_0be_4279                            ; $42b9: $20 $be

    ld b, b                                       ; $42bb: $40
    ld c, d                                       ; $42bc: $4a
    or l                                          ; $42bd: $b5
    nop                                           ; $42be: $00
    ld a, [hl-]                                   ; $42bf: $3a
    rst $38                                       ; $42c0: $ff
    inc bc                                        ; $42c1: $03
    inc h                                         ; $42c2: $24
    add b                                         ; $42c3: $80
    ld a, l                                       ; $42c4: $7d
    ld b, h                                       ; $42c5: $44
    cp e                                          ; $42c6: $bb
    nop                                           ; $42c7: $00
    ret z                                         ; $42c8: $c8

    scf                                           ; $42c9: $37
    ld l, c                                       ; $42ca: $69
    nop                                           ; $42cb: $00
    ld [de], a                                    ; $42cc: $12
    nop                                           ; $42cd: $00
    or c                                          ; $42ce: $b1
    nop                                           ; $42cf: $00
    nop                                           ; $42d0: $00
    ld sp, hl                                     ; $42d1: $f9
    inc bc                                        ; $42d2: $03
    add h                                         ; $42d3: $84

jr_0be_42d4:
    inc bc                                        ; $42d4: $03
    db $ec                                        ; $42d5: $ec
    rlca                                          ; $42d6: $07
    xor d                                         ; $42d7: $aa
    dec e                                         ; $42d8: $1d
    nop                                           ; $42d9: $00
    ld d, h                                       ; $42da: $54
    dec sp                                        ; $42db: $3b
    pop bc                                        ; $42dc: $c1
    rst $38                                       ; $42dd: $ff
    db $d3                                        ; $42de: $d3
    rst $28                                       ; $42df: $ef
    ld bc, $01ff                                  ; $42e0: $01 $ff $01
    inc bc                                        ; $42e3: $03
    rst $38                                       ; $42e4: $ff
    add hl, hl                                    ; $42e5: $29
    rst $10                                       ; $42e6: $d7
    jp $c1ff                                      ; $42e7: $c3 $ff $c1


    jr nz, jr_0be_42ee                            ; $42ea: $20 $02

    nop                                           ; $42ec: $00
    ld a, a                                       ; $42ed: $7f

jr_0be_42ee:
    cp e                                          ; $42ee: $bb
    rst $38                                       ; $42ef: $ff
    ld a, a                                       ; $42f0: $7f
    ld b, h                                       ; $42f1: $44
    cp e                                          ; $42f2: $bb
    jr nz, jr_0be_42d4                            ; $42f3: $20 $df

    ld [$bf42], sp                                ; $42f5: $08 $42 $bf
    rst $38                                       ; $42f8: $ff
    ld a, a                                       ; $42f9: $7f
    cp b                                          ; $42fa: $b8
    ld a, [bc]                                    ; $42fb: $0a
    rst $38                                       ; $42fc: $ff
    db $db                                        ; $42fd: $db
    ei                                            ; $42fe: $fb
    nop                                           ; $42ff: $00
    ld e, a                                       ; $4300: $5f
    rst $18                                       ; $4301: $df
    ld l, $aa                                     ; $4302: $2e $aa
    ld d, l                                       ; $4304: $55
    ld d, h                                       ; $4305: $54
    xor e                                         ; $4306: $ab
    rst $38                                       ; $4307: $ff
    nop                                           ; $4308: $00
    ld a, a                                       ; $4309: $7f
    rst $18                                       ; $430a: $df
    ei                                            ; $430b: $fb
    ei                                            ; $430c: $fb
    ld e, a                                       ; $430d: $5f
    rst $38                                       ; $430e: $ff
    ld l, e                                       ; $430f: $6b
    rst $38                                       ; $4310: $ff
    nop                                           ; $4311: $00
    ld a, [$02fd]                                 ; $4312: $fa $fd $02
    cp $01                                        ; $4315: $fe $01
    push af                                       ; $4317: $f5
    ld c, d                                       ; $4318: $4a
    rst $38                                       ; $4319: $ff
    inc bc                                        ; $431a: $03
    db $fd                                        ; $431b: $fd
    rst $38                                       ; $431c: $ff
    ld l, e                                       ; $431d: $6b
    ld a, [$01ff]                                 ; $431e: $fa $ff $01
    ld d, h                                       ; $4321: $54

jr_0be_4322:
    ld [bc], a                                    ; $4322: $02
    jr c, jr_0be_432d                             ; $4323: $38 $08

    db $10                                        ; $4325: $10
    ld hl, $03df                                  ; $4326: $21 $df $03
    inc c                                         ; $4329: $0c
    nop                                           ; $432a: $00
    ld d, a                                       ; $432b: $57
    rst $38                                       ; $432c: $ff

jr_0be_432d:
    ld l, [hl]                                    ; $432d: $6e
    sbc a                                         ; $432e: $9f
    nop                                           ; $432f: $00
    ld c, $91                                     ; $4330: $0e $91
    pop af                                        ; $4332: $f1
    pop af                                        ; $4333: $f1
    sbc a                                         ; $4334: $9f
    rst $38                                       ; $4335: $ff
    sbc a                                         ; $4336: $9f
    pop af                                        ; $4337: $f1
    nop                                           ; $4338: $00
    cp a                                          ; $4339: $bf
    pop af                                        ; $433a: $f1
    pop de                                        ; $433b: $d1
    rst $38                                       ; $433c: $ff
    or c                                          ; $433d: $b1
    rst $38                                       ; $433e: $ff
    xor $1f                                       ; $433f: $ee $1f
    ld bc, $110e                                  ; $4341: $01 $0e $11
    pop af                                        ; $4344: $f1
    pop af                                        ; $4345: $f1
    rra                                           ; $4346: $1f
    rst $38                                       ; $4347: $ff
    rra                                           ; $4348: $1f
    stop                                          ; $4349: $10 $00
    ld b, d                                       ; $434b: $42
    ld d, c                                       ; $434c: $51
    stop                                          ; $434d: $10 $00
    ei                                            ; $434f: $fb
    ld e, c                                       ; $4350: $59
    ld e, c                                       ; $4351: $59
    ld e, c                                       ; $4352: $59
    inc b                                         ; $4353: $04
    ld [$00da], sp                                ; $4354: $08 $da $00
    ld e, d                                       ; $4357: $5a
    ld e, h                                       ; $4358: $5c
    ld e, h                                       ; $4359: $5c
    cp b                                          ; $435a: $b8
    cp b                                          ; $435b: $b8
    inc e                                         ; $435c: $1c
    inc e                                         ; $435d: $1c
    xor d                                         ; $435e: $aa
    nop                                           ; $435f: $00
    ld [bc], a                                    ; $4360: $02
    ld b, d                                       ; $4361: $42
    ld [bc], a                                    ; $4362: $02
    xor d                                         ; $4363: $aa
    ld [bc], a                                    ; $4364: $02
    ld [bc], a                                    ; $4365: $02
    ld [bc], a                                    ; $4366: $02
    adc a                                         ; $4367: $8f
    nop                                           ; $4368: $00
    add l                                         ; $4369: $85
    ld c, b                                       ; $436a: $48
    ld c, b                                       ; $436b: $48
    jr nc, jr_0be_439e                            ; $436c: $30 $30

    ld a, b                                       ; $436e: $78
    ld a, b                                       ; $436f: $78
    xor $10                                       ; $4370: $ee $10
    ld h, h                                       ; $4372: $64
    ld h, h                                       ; $4373: $64
    ld h, h                                       ; $4374: $64
    inc b                                         ; $4375: $04
    ld [$6aea], sp                                ; $4376: $08 $ea $6a
    pop af                                        ; $4379: $f1
    pop af                                        ; $437a: $f1
    nop                                           ; $437b: $00
    ld h, b                                       ; $437c: $60
    ld h, b                                       ; $437d: $60
    pop af                                        ; $437e: $f1
    pop af                                        ; $437f: $f1

jr_0be_4380:
    xor e                                         ; $4380: $ab
    add hl, bc                                    ; $4381: $09
    ld c, c                                       ; $4382: $49
    add hl, bc                                    ; $4383: $09
    nop                                           ; $4384: $00
    xor e                                         ; $4385: $ab
    add hl, bc                                    ; $4386: $09
    add hl, bc                                    ; $4387: $09
    add hl, bc                                    ; $4388: $09
    sbc a                                         ; $4389: $9f
    dec d                                         ; $438a: $15
    inc hl                                        ; $438b: $23
    inc hl                                        ; $438c: $23
    nop                                           ; $438d: $00
    pop bc                                        ; $438e: $c1
    pop bc                                        ; $438f: $c1
    db $e3                                        ; $4390: $e3
    db $e3                                        ; $4391: $e3
    ld l, [hl]                                    ; $4392: $6e
    sub c                                         ; $4393: $91
    nop                                           ; $4394: $00
    sub c                                         ; $4395: $91
    ld de, $ffff                                  ; $4396: $11 $ff $ff
    sub c                                         ; $4399: $91
    ld [bc], a                                    ; $439a: $02
    nop                                           ; $439b: $00
    cp e                                          ; $439c: $bb
    rst $38                                       ; $439d: $ff

jr_0be_439e:
    push de                                       ; $439e: $d5
    inc b                                         ; $439f: $04
    nop                                           ; $43a0: $00
    jr @+$03                                      ; $43a1: $18 $01

    cp $80                                        ; $43a3: $fe $80
    xor [hl]                                      ; $43a5: $ae
    ld bc, $0b54                                  ; $43a6: $01 $54 $0b
    db $db                                        ; $43a9: $db
    rst $38                                       ; $43aa: $ff
    ld l, [hl]                                    ; $43ab: $6e
    add b                                         ; $43ac: $80
    ld h, h                                       ; $43ad: $64
    inc bc                                        ; $43ae: $03
    cp d                                          ; $43af: $ba
    sbc d                                         ; $43b0: $9a
    jp c, $ba9a                                   ; $43b1: $da $9a $ba

    sbc d                                         ; $43b4: $9a
    sbc d                                         ; $43b5: $9a
    nop                                           ; $43b6: $00
    sbc d                                         ; $43b7: $9a
    jp c, $3a5a                                   ; $43b8: $da $5a $3a

    ld a, [hl-]                                   ; $43bb: $3a
    dec e                                         ; $43bc: $1d
    dec e                                         ; $43bd: $1d
    jr c, jr_0be_43c0                             ; $43be: $38 $00

jr_0be_43c0:
    jr c, jr_0be_4380                             ; $43c0: $38 $be

    ld d, $56                                     ; $43c2: $16 $56
    ld d, $be                                     ; $43c4: $16 $be
    ld d, $16                                     ; $43c6: $16 $16
    jr nz, @+$18                                  ; $43c8: $20 $16

    sbc [hl]                                      ; $43ca: $9e
    inc b                                         ; $43cb: $04
    nop                                           ; $43cc: $00
    ld d, $16                                     ; $43cd: $16 $16
    sub [hl]                                      ; $43cf: $96
    sub [hl]                                      ; $43d0: $96
    and b                                         ; $43d1: $a0
    nop                                           ; $43d2: $00
    rst $18                                       ; $43d3: $df
    ret nz                                        ; $43d4: $c0

    rst $38                                       ; $43d5: $ff
    add b                                         ; $43d6: $80
    rst $38                                       ; $43d7: $ff
    jp z, $82f7                                   ; $43d8: $ca $f7 $82

    and b                                         ; $43db: $a0
    ld hl, sp+$00                                 ; $43dc: $f8 $00
    add b                                         ; $43de: $80
    and $01                                       ; $43df: $e6 $01
    cp e                                          ; $43e1: $bb
    or c                                          ; $43e2: $b1
    ret z                                         ; $43e3: $c8

    ret z                                         ; $43e4: $c8

    xor a                                         ; $43e5: $af
    ld b, $85                                     ; $43e6: $06 $85
    add [hl]                                      ; $43e8: $86
    add [hl]                                      ; $43e9: $86
    adc [hl]                                      ; $43ea: $8e
    add h                                         ; $43eb: $84
    ld bc, $1418                                  ; $43ec: $01 $18 $14
    dec bc                                        ; $43ef: $0b
    cp [hl]                                       ; $43f0: $be
    add b                                         ; $43f1: $80
    jr jr_0be_43f7                                ; $43f2: $18 $03

    xor [hl]                                      ; $43f4: $ae
    add h                                         ; $43f5: $84
    ld d, l                                       ; $43f6: $55

jr_0be_43f7:
    ld b, h                                       ; $43f7: $44
    xor [hl]                                      ; $43f8: $ae
    inc h                                         ; $43f9: $24
    dec de                                        ; $43fa: $1b
    nop                                           ; $43fb: $00
    ld a, [de]                                    ; $43fc: $1a
    ld [hl], l                                    ; $43fd: $75
    adc d                                         ; $43fe: $8a
    and d                                         ; $43ff: $a2
    ld e, l                                       ; $4400: $5d
    ld b, h                                       ; $4401: $44
    cp e                                          ; $4402: $bb
    adc d                                         ; $4403: $8a
    nop                                           ; $4404: $00
    ld [hl], a                                    ; $4405: $77
    ld d, d                                       ; $4406: $52
    xor a                                         ; $4407: $af
    and a                                         ; $4408: $a7
    ld e, e                                       ; $4409: $5b
    ld b, b                                       ; $440a: $40
    cp a                                          ; $440b: $bf
    and b                                         ; $440c: $a0
    nop                                           ; $440d: $00
    ld e, a                                       ; $440e: $5f
    rst $38                                       ; $440f: $ff
    db $10                                        ; $4410: $10
    rst $30                                       ; $4411: $f7
    ld a, e                                       ; $4412: $7b
    rst $38                                       ; $4413: $ff
    ld d, d                                       ; $4414: $52
    rst $38                                       ; $4415: $ff
    ld b, b                                       ; $4416: $40
    ld [hl], e                                    ; $4417: $73
    adc l                                         ; $4418: $8d
    dec bc                                        ; $4419: $0b
    rst $30                                       ; $441a: $f7
    inc c                                         ; $441b: $0c
    rst $38                                       ; $441c: $ff
    rst $38                                       ; $441d: $ff
    ld [bc], a                                    ; $441e: $02
    ld c, c                                       ; $441f: $49
    nop                                           ; $4420: $00
    ld b, b                                       ; $4421: $40
    ld b, $21                                     ; $4422: $06 $21
    inc c                                         ; $4424: $0c
    db $ec                                        ; $4425: $ec

jr_0be_4426:
    ld [de], a                                    ; $4426: $12
    ld hl, $0040                                  ; $4427: $21 $40 $00
    add hl, bc                                    ; $442a: $09
    ld b, b                                       ; $442b: $40
    or a                                          ; $442c: $b7
    nop                                           ; $442d: $00
    pop bc                                        ; $442e: $c1
    nop                                           ; $442f: $00
    ld b, a                                       ; $4430: $47
    ld [$1500], sp                                ; $4431: $08 $00 $15
    adc b                                         ; $4434: $88
    scf                                           ; $4435: $37
    ld [$0d92], sp                                ; $4436: $08 $92 $0d
    db $eb                                        ; $4439: $eb
    db $fc                                        ; $443a: $fc
    nop                                           ; $443b: $00
    or d                                          ; $443c: $b2
    inc c                                         ; $443d: $0c
    ei                                            ; $443e: $fb
    inc b                                         ; $443f: $04
    ld l, d                                       ; $4440: $6a
    add l                                         ; $4441: $85
    ldh [rNR12], a                                ; $4442: $e0 $12
    nop                                           ; $4444: $00
    and b                                         ; $4445: $a0
    db $10                                        ; $4446: $10
    ld [c], a                                     ; $4447: $e2
    db $10                                        ; $4448: $10
    ld b, h                                       ; $4449: $44
    or b                                          ; $444a: $b0
    db $d3                                        ; $444b: $d3
    ccf                                           ; $444c: $3f
    nop                                           ; $444d: $00
    ld c, a                                       ; $444e: $4f
    jr nc, jr_0be_4426                            ; $444f: $30 $d5

    jr z, jr_0be_44a2                             ; $4451: $28 $4f

    or b                                          ; $4453: $b0
    and a                                         ; $4454: $a7
    ld b, b                                       ; $4455: $40
    nop                                           ; $4456: $00
    xor l                                         ; $4457: $ad
    ret nz                                        ; $4458: $c0

    ld a, [de]                                    ; $4459: $1a
    call nz, $d22d                                ; $445a: $c4 $2d $d2
    ld [hl], a                                    ; $445d: $77
    add b                                         ; $445e: $80
    nop                                           ; $445f: $00
    rlc b                                         ; $4460: $cb $00
    ld [hl], l                                    ; $4462: $75
    adc b                                         ; $4463: $88
    db $eb                                        ; $4464: $eb
    inc b                                         ; $4465: $04
    rst $38                                       ; $4466: $ff
    db $10                                        ; $4467: $10
    add b                                         ; $4468: $80
    inc l                                         ; $4469: $2c
    inc b                                         ; $446a: $04
    rst $10                                       ; $446b: $d7
    rst $38                                       ; $446c: $ff
    rst $38                                       ; $446d: $ff
    cp [hl]                                       ; $446e: $be
    ld b, c                                       ; $446f: $41
    ld l, a                                       ; $4470: $6f
    sub b                                         ; $4471: $90
    nop                                           ; $4472: $00
    cp a                                          ; $4473: $bf
    ld b, b                                       ; $4474: $40
    rst $38                                       ; $4475: $ff
    cp $6a                                        ; $4476: $fe $6a
    push de                                       ; $4478: $d5
    rst $18                                       ; $4479: $df
    rst $38                                       ; $447a: $ff
    nop                                           ; $447b: $00
    xor $df                                       ; $447c: $ee $df
    rst $18                                       ; $447e: $df
    cp $23                                        ; $447f: $fe $23
    call c, Call_0be_6a95                         ; $4481: $dc $95 $6a
    nop                                           ; $4484: $00
    adc d                                         ; $4485: $8a
    push af                                       ; $4486: $f5
    rst $38                                       ; $4487: $ff
    ld a, [$fe81]                                 ; $4488: $fa $81 $fe
    jp $60ff                                      ; $448b: $c3 $ff $60


    add c                                         ; $448e: $81
    xor h                                         ; $448f: $ac
    db $10                                        ; $4490: $10
    cp b                                          ; $4491: $b8
    ld [$ffc3], sp                                ; $4492: $08 $c3 $ff
    push de                                       ; $4495: $d5
    xor [hl]                                      ; $4496: $ae
    cp a                                          ; $4497: $bf
    nop                                           ; $4498: $00
    call nz, $aed5                                ; $4499: $c4 $d5 $ae
    rst $38                                       ; $449c: $ff
    add h                                         ; $449d: $84
    push af                                       ; $449e: $f5
    adc [hl]                                      ; $449f: $8e
    rst $38                                       ; $44a0: $ff
    nop                                           ; $44a1: $00

jr_0be_44a2:
    ld b, h                                       ; $44a2: $44
    rst $38                                       ; $44a3: $ff
    ld a, [hl+]                                   ; $44a4: $2a
    rst $38                                       ; $44a5: $ff
    ld de, $be57                                  ; $44a6: $11 $57 $be
    cp a                                          ; $44a9: $bf
    nop                                           ; $44aa: $00
    ld d, [hl]                                    ; $44ab: $56
    ld d, a                                       ; $44ac: $57
    cp [hl]                                       ; $44ad: $be
    rst $38                                       ; $44ae: $ff
    ld d, $ff                                     ; $44af: $16 $ff
    xor [hl]                                      ; $44b1: $ae
    rst $38                                       ; $44b2: $ff
    nop                                           ; $44b3: $00
    ld b, a                                       ; $44b4: $47
    rst $38                                       ; $44b5: $ff
    and $ff                                       ; $44b6: $e6 $ff
    rst $38                                       ; $44b8: $ff
    rst $18                                       ; $44b9: $df
    cp d                                          ; $44ba: $ba
    cp a                                          ; $44bb: $bf
    ld bc, $5fda                                  ; $44bc: $01 $da $5f
    ld a, [$3dff]                                 ; $44bf: $fa $ff $3d
    ld a, l                                       ; $44c2: $7d
    sbc d                                         ; $44c3: $9a
    jp z, $0003                                   ; $44c4: $ca $03 $00

    rst $38                                       ; $44c7: $ff
    rst $38                                       ; $44c8: $ff
    jr jr_0be_4520                                ; $44c9: $18 $55

    ld [$40ff], a                                 ; $44cb: $ea $ff $40
    push af                                       ; $44ce: $f5
    ld bc, $ffab                                  ; $44cf: $01 $ab $ff
    ld [de], a                                    ; $44d2: $12
    ld a, l                                       ; $44d3: $7d
    adc [hl]                                      ; $44d4: $8e
    rst $38                                       ; $44d5: $ff
    ld e, $96                                     ; $44d6: $1e $96
    inc b                                         ; $44d8: $04
    nop                                           ; $44d9: $00
    inc c                                         ; $44da: $0c
    ld [hl], a                                    ; $44db: $77
    xor [hl]                                      ; $44dc: $ae
    cp a                                          ; $44dd: $bf
    ld h, [hl]                                    ; $44de: $66
    ld d, a                                       ; $44df: $57
    cp $ff                                        ; $44e0: $fe $ff
    db $10                                        ; $44e2: $10
    adc a                                         ; $44e3: $8f
    ld [hl], a                                    ; $44e4: $77
    adc [hl]                                      ; $44e5: $8e
    jp z, $ff03                                   ; $44e6: $ca $03 $ff

    rst $38                                       ; $44e9: $ff
    ld b, $d5                                     ; $44ea: $06 $d5
    nop                                           ; $44ec: $00
    cp d                                          ; $44ed: $ba
    cp a                                          ; $44ee: $bf
    ret nc                                        ; $44ef: $d0

    db $fd                                        ; $44f0: $fd
    xor d                                         ; $44f1: $aa
    rst $38                                       ; $44f2: $ff
    call nz, Call_000_10f7                        ; $44f3: $c4 $f7 $10
    adc e                                         ; $44f6: $8b
    rst $38                                       ; $44f7: $ff
    rst $00                                       ; $44f8: $c7
    or [hl]                                       ; $44f9: $b6
    inc b                                         ; $44fa: $04
    add e                                         ; $44fb: $83
    ld e, l                                       ; $44fc: $5d
    xor e                                         ; $44fd: $ab
    cp a                                          ; $44fe: $bf
    nop                                           ; $44ff: $00
    ld c, c                                       ; $4500: $49
    ld d, l                                       ; $4501: $55
    cp a                                          ; $4502: $bf
    rst $38                                       ; $4503: $ff
    inc hl                                        ; $4504: $23
    push af                                       ; $4505: $f5
    set 7, a                                      ; $4506: $cb $ff
    ld b, b                                       ; $4508: $40
    db $e3                                        ; $4509: $e3
    add $04                                       ; $450a: $c6 $04
    pop bc                                        ; $450c: $c1
    ld [hl], l                                    ; $450d: $75
    xor $ff                                       ; $450e: $ee $ff
    ld h, h                                       ; $4510: $64
    ld a, a                                       ; $4511: $7f
    inc c                                         ; $4512: $0c
    ld [$f1ff], a                                 ; $4513: $ea $ff $f1
    ld [hl], l                                    ; $4516: $75
    inc b                                         ; $4517: $04
    nop                                           ; $4518: $00
    sub $04                                       ; $4519: $d6 $04
    ld h, b                                       ; $451b: $60
    ld d, a                                       ; $451c: $57
    nop                                           ; $451d: $00
    xor d                                         ; $451e: $aa
    cp a                                          ; $451f: $bf

jr_0be_4520:
    ld b, d                                       ; $4520: $42
    push de                                       ; $4521: $d5
    xor a                                         ; $4522: $af
    rst $38                                       ; $4523: $ff
    ld c, b                                       ; $4524: $48
    ld [hl], l                                    ; $4525: $75
    db $10                                        ; $4526: $10
    cp d                                          ; $4527: $ba
    rst $38                                       ; $4528: $ff
    ld a, b                                       ; $4529: $78
    and $04                                       ; $452a: $e6 $04
    jr nc, jr_0be_458b                            ; $452c: $30 $5d

    ei                                            ; $452e: $fb
    rst $38                                       ; $452f: $ff
    ld d, e                                       ; $4530: $53
    ld e, c                                       ; $4531: $59
    ld [hl], b                                    ; $4532: $70
    nop                                           ; $4533: $00
    cp h                                          ; $4534: $bc
    ld [hl], b                                    ; $4535: $70
    jr z, jr_0be_45b5                             ; $4536: $28 $7d

    ld [$03ba], a                                 ; $4538: $ea $ba $03
    inc b                                         ; $453b: $04
    nop                                           ; $453c: $00
    nop                                           ; $453d: $00
    ld [hl], l                                    ; $453e: $75
    rst $38                                       ; $453f: $ff
    rst $38                                       ; $4540: $ff
    ld [c], a                                     ; $4541: $e2
    rst $38                                       ; $4542: $ff
    ld h, a                                       ; $4543: $67
    rst $38                                       ; $4544: $ff
    rst $38                                       ; $4545: $ff
    ld [bc], a                                    ; $4546: $02
    ld [hl], l                                    ; $4547: $75
    xor e                                         ; $4548: $ab
    cp a                                          ; $4549: $bf
    ld h, c                                       ; $454a: $61
    ld [hl], l                                    ; $454b: $75
    xor e                                         ; $454c: $ab
    cp d                                          ; $454d: $ba
    inc bc                                        ; $454e: $03
    xor e                                         ; $454f: $ab
    nop                                           ; $4550: $00
    rst $38                                       ; $4551: $ff
    ld [hl+], a                                   ; $4552: $22
    rst $38                                       ; $4553: $ff
    ld d, h                                       ; $4554: $54
    rst $38                                       ; $4555: $ff
    adc b                                         ; $4556: $88
    pop bc                                        ; $4557: $c1
    ld a, a                                       ; $4558: $7f
    inc bc                                        ; $4559: $03
    jp Jump_0be_41ff                              ; $455a: $c3 $ff $41


    rst $38                                       ; $455d: $ff
    set 6, a                                      ; $455e: $cb $f7
    ld [hl], h                                    ; $4560: $74
    ld a, [bc]                                    ; $4561: $0a
    inc a                                         ; $4562: $3c
    ld a, [bc]                                    ; $4563: $0a
    jr nc, jr_0be_45ba                            ; $4564: $30 $54

    cp e                                          ; $4566: $bb
    or h                                          ; $4567: $b4
    nop                                           ; $4568: $00
    cpl                                           ; $4569: $2f
    dec b                                         ; $456a: $05
    call nz, $a93b                                ; $456b: $c4 $3b $a9
    ld d, [hl]                                    ; $456e: $56
    ld [hl+], a                                   ; $456f: $22
    ld d, d                                       ; $4570: $52
    xor a                                         ; $4571: $af
    add hl, hl                                    ; $4572: $29
    dec c                                         ; $4573: $0d
    ei                                            ; $4574: $fb
    rst $38                                       ; $4575: $ff
    db $fd                                        ; $4576: $fd
    call $7d01                                    ; $4577: $cd $01 $7d
    ld [$f6f2], sp                                ; $457a: $08 $f2 $f6
    add hl, bc                                    ; $457d: $09
    db $fd                                        ; $457e: $fd
    dec a                                         ; $457f: $3d
    dec c                                         ; $4580: $0d
    nop                                           ; $4581: $00
    rst $38                                       ; $4582: $ff
    sub a                                         ; $4583: $97
    ld [$96ff], sp                                ; $4584: $08 $ff $96
    rst $38                                       ; $4587: $ff
    sbc [hl]                                      ; $4588: $9e
    and e                                         ; $4589: $a3
    ld [bc], a                                    ; $458a: $02

jr_0be_458b:
    nop                                           ; $458b: $00
    rst $28                                       ; $458c: $ef
    ld d, b                                       ; $458d: $50
    inc b                                         ; $458e: $04
    rst $38                                       ; $458f: $ff
    db $fd                                        ; $4590: $fd
    add b                                         ; $4591: $80
    rst $38                                       ; $4592: $ff
    jp nz, Jump_000_14c8                          ; $4593: $c2 $c8 $14

    add h                                         ; $4596: $84
    ei                                            ; $4597: $fb
    adc b                                         ; $4598: $88
    ret z                                         ; $4599: $c8

    add hl, bc                                    ; $459a: $09
    ld [$fbff], a                                 ; $459b: $ea $ff $fb
    ld d, c                                       ; $459e: $51
    dec b                                         ; $459f: $05
    ld c, d                                       ; $45a0: $4a
    nop                                           ; $45a1: $00
    sub d                                         ; $45a2: $92
    nop                                           ; $45a3: $00
    nop                                           ; $45a4: $00
    ld b, h                                       ; $45a5: $44
    nop                                           ; $45a6: $00
    pop de                                        ; $45a7: $d1
    nop                                           ; $45a8: $00
    and l                                         ; $45a9: $a5
    nop                                           ; $45aa: $00
    ld c, b                                       ; $45ab: $48
    nop                                           ; $45ac: $00
    ld bc, $df20                                  ; $45ad: $01 $20 $df
    ld d, c                                       ; $45b0: $51
    xor a                                         ; $45b1: $af
    dec hl                                        ; $45b2: $2b
    sub $d8                                       ; $45b3: $d6 $d8

jr_0be_45b5:
    nop                                           ; $45b5: $00
    ld h, $52                                     ; $45b6: $26 $52
    xor h                                         ; $45b8: $ac
    xor b                                         ; $45b9: $a8

jr_0be_45ba:
    ld e, h                                       ; $45ba: $5c
    xor h                                         ; $45bb: $ac
    ld e, b                                       ; $45bc: $58
    and c                                         ; $45bd: $a1
    nop                                           ; $45be: $00
    ld hl, sp+$76                                 ; $45bf: $f8 $76
    inc bc                                        ; $45c1: $03
    db $f4                                        ; $45c2: $f4
    rlca                                          ; $45c3: $07
    xor l                                         ; $45c4: $ad
    ld b, $68                                     ; $45c5: $06 $68
    nop                                           ; $45c7: $00
    rrca                                          ; $45c8: $0f
    ldh a, [rIE]                                  ; $45c9: $f0 $ff
    db $e4                                        ; $45cb: $e4
    dec de                                        ; $45cc: $1b
    pop hl                                        ; $45cd: $e1
    ld a, $72                                     ; $45ce: $3e $72
    nop                                           ; $45d0: $00
    rst $38                                       ; $45d1: $ff
    or l                                          ; $45d2: $b5
    ld [$10e2], sp                                ; $45d3: $08 $e2 $10
    push bc                                       ; $45d6: $c5
    jr nc, @-$72                                  ; $45d7: $30 $8c

    nop                                           ; $45d9: $00
    ld h, b                                       ; $45da: $60
    ld c, [hl]                                    ; $45db: $4e
    rst $38                                       ; $45dc: $ff
    ld c, c                                       ; $45dd: $49
    add d                                         ; $45de: $82
    rst $30                                       ; $45df: $f7
    nop                                           ; $45e0: $00
    ld a, h                                       ; $45e1: $7c
    ld [bc], a                                    ; $45e2: $02
    add c                                         ; $45e3: $81
    ld l, e                                       ; $45e4: $6b
    ld h, b                                       ; $45e5: $60
    dec b                                         ; $45e6: $05
    nop                                           ; $45e7: $00
    xor e                                         ; $45e8: $ab
    call z, $fb05                                 ; $45e9: $cc $05 $fb
    nop                                           ; $45ec: $00
    cp e                                          ; $45ed: $bb
    rst $38                                       ; $45ee: $ff
    ei                                            ; $45ef: $fb
    rrca                                          ; $45f0: $0f
    ld c, $15                                     ; $45f1: $0e $15
    nop                                           ; $45f3: $00
    call nc, Call_000_2b00                        ; $45f4: $d4 $00 $2b
    ld l, d                                       ; $45f7: $6a
    sub l                                         ; $45f8: $95
    db $dd                                        ; $45f9: $dd
    ld l, $fb                                     ; $45fa: $2e $fb
    ld a, a                                       ; $45fc: $7f
    db $fd                                        ; $45fd: $fd
    nop                                           ; $45fe: $00
    ld l, e                                       ; $45ff: $6b
    ld a, e                                       ; $4600: $7b
    ld a, a                                       ; $4601: $7f
    push af                                       ; $4602: $f5
    ld a, [bc]                                    ; $4603: $0a
    ld a, d                                       ; $4604: $7a
    dec b                                         ; $4605: $05
    add b                                         ; $4606: $80
    nop                                           ; $4607: $00
    ld a, a                                       ; $4608: $7f
    inc b                                         ; $4609: $04
    ei                                            ; $460a: $fb
    ld d, b                                       ; $460b: $50

jr_0be_460c:
    cp a                                          ; $460c: $bf
    cp a                                          ; $460d: $bf
    rst $18                                       ; $460e: $df
    sbc e                                         ; $460f: $9b
    jr nz, @+$01                                  ; $4610: $20 $ff

    sbc a                                         ; $4612: $9f
    adc $05                                       ; $4613: $ce $05
    ld c, b                                       ; $4615: $48
    or a                                          ; $4616: $b7
    ld bc, $43ff                                  ; $4617: $01 $ff $43
    nop                                           ; $461a: $00
    cp a                                          ; $461b: $bf
    add c                                         ; $461c: $81
    rst $38                                       ; $461d: $ff
    add e                                         ; $461e: $83
    rst $38                                       ; $461f: $ff
    add l                                         ; $4620: $85
    ei                                            ; $4621: $fb
    add e                                         ; $4622: $83

jr_0be_4623:
    dec b                                         ; $4623: $05
    rst $38                                       ; $4624: $ff
    ld de, $03ef                                  ; $4625: $11 $ef $03
    rst $38                                       ; $4628: $ff
    sub h                                         ; $4629: $94
    inc c                                         ; $462a: $0c
    cp e                                          ; $462b: $bb
    sbc b                                         ; $462c: $98
    inc b                                         ; $462d: $04
    ld b, d                                       ; $462e: $42
    xor e                                         ; $462f: $ab
    sbc h                                         ; $4630: $9c
    inc b                                         ; $4631: $04
    db $eb                                        ; $4632: $eb
    ld h, e                                       ; $4633: $63
    sub l                                         ; $4634: $95
    sub l                                         ; $4635: $95
    cp b                                          ; $4636: $b8
    inc c                                         ; $4637: $0c
    ld a, [$bca0]                                 ; $4638: $fa $a0 $bc

jr_0be_463b:
    inc b                                         ; $463b: $04
    ld [$1004], a                                 ; $463c: $ea $04 $10
    ld a, c                                       ; $463f: $79
    ld a, b                                       ; $4640: $78
    rst $38                                       ; $4641: $ff
    ld e, d                                       ; $4642: $5a
    ld e, l                                       ; $4643: $5d
    ret nz                                        ; $4644: $c0

    ldh a, [rSC]                                  ; $4645: $f0 $02
    inc b                                         ; $4647: $04
    jr z, jr_0be_4623                             ; $4648: $28 $d9

    reti                                          ; $464a: $d9


    rst $38                                       ; $464b: $ff
    add l                                         ; $464c: $85
    ld d, a                                       ; $464d: $57
    ld [bc], a                                    ; $464e: $02
    ld d, b                                       ; $464f: $50
    cp d                                          ; $4650: $ba
    ld hl, sp+$04                                 ; $4651: $f8 $04
    xor d                                         ; $4653: $aa
    inc b                                         ; $4654: $04
    db $10                                        ; $4655: $10
    inc de                                        ; $4656: $13
    ld [bc], a                                    ; $4657: $02
    rst $38                                       ; $4658: $ff
    ld l, d                                       ; $4659: $6a
    inc d                                         ; $465a: $14
    ld [hl], l                                    ; $465b: $75
    ld h, h                                       ; $465c: $64
    cp $18                                        ; $465d: $fe $18
    dec b                                         ; $465f: $05
    xor $04                                       ; $4660: $ee $04
    jr nz, @+$01                                  ; $4662: $20 $ff

    dec d                                         ; $4664: $15
    inc d                                         ; $4665: $14
    ld e, l                                       ; $4666: $5d
    add hl, bc                                    ; $4667: $09
    cp e                                          ; $4668: $bb
    inc a                                         ; $4669: $3c
    dec b                                         ; $466a: $05
    xor e                                         ; $466b: $ab
    inc b                                         ; $466c: $04
    db $10                                        ; $466d: $10
    add hl, de                                    ; $466e: $19
    add hl, bc                                    ; $466f: $09
    ld b, $ff                                     ; $4670: $06 $ff
    xor b                                         ; $4672: $a8
    push de                                       ; $4673: $d5
    sub b                                         ; $4674: $90
    cp d                                          ; $4675: $ba
    ld e, b                                       ; $4676: $58
    dec b                                         ; $4677: $05
    inc b                                         ; $4678: $04
    jr jr_0be_460c                                ; $4679: $18 $91

    ld [bc], a                                    ; $467b: $02
    sub b                                         ; $467c: $90
    rst $38                                       ; $467d: $ff
    ld d, [hl]                                    ; $467e: $56
    ld [hl], a                                    ; $467f: $77
    ld h, $be                                     ; $4680: $26 $be
    add b                                         ; $4682: $80
    dec b                                         ; $4683: $05
    xor [hl]                                      ; $4684: $ae
    add b                                         ; $4685: $80
    inc b                                         ; $4686: $04
    db $10                                        ; $4687: $10
    scf                                           ; $4688: $37
    ld h, $ff                                     ; $4689: $26 $ff
    and c                                         ; $468b: $a1
    ld d, l                                       ; $468c: $55
    ld b, b                                       ; $468d: $40
    ld a, [$98a0]                                 ; $468e: $fa $a0 $98
    dec b                                         ; $4691: $05
    ld [$1004], a                                 ; $4692: $ea $04 $10
    ld d, c                                       ; $4695: $51
    ld b, b                                       ; $4696: $40
    rst $38                                       ; $4697: $ff
    ld e, d                                       ; $4698: $5a
    rst $18                                       ; $4699: $df
    jp z, $0300                                   ; $469a: $ca $00 $03

    inc b                                         ; $469d: $04
    jr z, jr_0be_463b                             ; $469e: $28 $9b

    sbc e                                         ; $46a0: $9b
    call nc, $be0d                                ; $46a1: $d4 $0d $be
    inc b                                         ; $46a4: $04
    jr nc, jr_0be_46c6                            ; $46a5: $30 $1f

    ld b, b                                       ; $46a7: $40
    ld e, $e0                                     ; $46a8: $1e $e0
    ld a, [hl-]                                   ; $46aa: $3a
    push de                                       ; $46ab: $d5

jr_0be_46ac:
    add h                                         ; $46ac: $84
    xor $c6                                       ; $46ad: $ee $c6
    cp c                                          ; $46af: $b9
    xor c                                         ; $46b0: $a9
    ret nz                                        ; $46b1: $c0

    ld d, b                                       ; $46b2: $50
    ld bc, $0154                                  ; $46b3: $01 $54 $01
    jp $a1ff                                      ; $46b6: $c3 $ff $a1


    rst $18                                       ; $46b9: $df
    jp Jump_000_02ff                              ; $46ba: $c3 $ff $02


    adc b                                         ; $46bd: $88
    rst $30                                       ; $46be: $f7
    ret nz                                        ; $46bf: $c0

    rst $38                                       ; $46c0: $ff
    dec c                                         ; $46c1: $0d
    cp $fc                                        ; $46c2: $fe $fc
    inc bc                                        ; $46c4: $03
    db $fd                                        ; $46c5: $fd

jr_0be_46c6:
    nop                                           ; $46c6: $00
    rst $18                                       ; $46c7: $df
    rst $38                                       ; $46c8: $ff
    adc $ff                                       ; $46c9: $ce $ff
    rst $18                                       ; $46cb: $df
    cp $00                                        ; $46cc: $fe $00
    rst $38                                       ; $46ce: $ff
    ld bc, $ed12                                  ; $46cf: $01 $12 $ed
    dec hl                                        ; $46d2: $2b
    call nc, $a956                                ; $46d3: $d4 $56 $a9
    cp e                                          ; $46d6: $bb
    ld l, h                                       ; $46d7: $6c
    ld c, $80                                     ; $46d8: $0e $80
    and h                                         ; $46da: $a4
    ld [bc], a                                    ; $46db: $02
    xor a                                         ; $46dc: $af
    ld d, b                                       ; $46dd: $50
    ld e, [hl]                                    ; $46de: $5e
    and b                                         ; $46df: $a0
    ret nc                                        ; $46e0: $d0

    nop                                           ; $46e1: $00
    and b                                         ; $46e2: $a0
    nop                                           ; $46e3: $00
    nop                                           ; $46e4: $00
    call nc, $fb10                                ; $46e5: $d4 $10 $fb
    ld [hl], e                                    ; $46e8: $73
    db $d3                                        ; $46e9: $d3
    ld d, e                                       ; $46ea: $53
    di                                            ; $46eb: $f3
    nop                                           ; $46ec: $00
    ld [hl], e                                    ; $46ed: $73
    ret nc                                        ; $46ee: $d0

    nop                                           ; $46ef: $00
    xor b                                         ; $46f0: $a8
    nop                                           ; $46f1: $00
    swap b                                        ; $46f2: $cb $30
    sub a                                         ; $46f4: $97
    nop                                           ; $46f5: $00
    ldh [$3e], a                                  ; $46f6: $e0 $3e
    ret nz                                        ; $46f8: $c0

    ld a, a                                       ; $46f9: $7f
    add b                                         ; $46fa: $80
    rst $28                                       ; $46fb: $ef
    nop                                           ; $46fc: $00
    ld e, e                                       ; $46fd: $5b
    ld [$fe00], sp                                ; $46fe: $08 $00 $fe
    ld bc, $dced                                  ; $4701: $01 $ed $dc
    inc b                                         ; $4704: $04
    ld l, [hl]                                    ; $4705: $6e
    rst $38                                       ; $4706: $ff
    ld b, d                                       ; $4707: $42
    nop                                           ; $4708: $00
    nop                                           ; $4709: $00
    sub l                                         ; $470a: $95
    nop                                           ; $470b: $00
    ld c, d                                       ; $470c: $4a
    ld bc, $0087                                  ; $470d: $01 $87 $00
    dec hl                                        ; $4710: $2b
    nop                                           ; $4711: $00
    inc b                                         ; $4712: $04
    and l                                         ; $4713: $a5
    jr jr_0be_46ac                                ; $4714: $18 $96

    jp hl                                         ; $4716: $e9


    adc c                                         ; $4717: $89
    ld [hl], a                                    ; $4718: $77
    ld d, d                                       ; $4719: $52
    nop                                           ; $471a: $00
    xor h                                         ; $471b: $ac
    and b                                         ; $471c: $a0
    ld e, [hl]                                    ; $471d: $5e
    ld b, l                                       ; $471e: $45
    cp b                                          ; $471f: $b8
    inc b                                         ; $4720: $04
    ldh a, [rSB]                                  ; $4721: $f0 $01
    nop                                           ; $4723: $00
    ldh [$d3], a                                  ; $4724: $e0 $d3
    nop                                           ; $4726: $00
    ld c, d                                       ; $4727: $4a
    ld de, $0372                                  ; $4728: $11 $72 $03
    add hl, hl                                    ; $472b: $29
    nop                                           ; $472c: $00
    ld c, $5a                                     ; $472d: $0e $5a
    dec e                                         ; $472f: $1d
    inc [hl]                                      ; $4730: $34
    db $eb                                        ; $4731: $eb
    dec d                                         ; $4732: $15
    ld [$000f], a                                 ; $4733: $ea $0f $00
    ldh a, [$32]                                  ; $4736: $f0 $32
    rst $38                                       ; $4738: $ff
    add sp, $1f                                   ; $4739: $e8 $1f
    ret                                           ; $473b: $c9


    cp $20                                        ; $473c: $fe $20
    nop                                           ; $473e: $00
    rrca                                          ; $473f: $0f
    rlca                                          ; $4740: $07
    rrca                                          ; $4741: $0f
    sub a                                         ; $4742: $97
    jr z, jr_0be_4749                             ; $4743: $28 $04

    ld c, c                                       ; $4745: $49
    dec l                                         ; $4746: $2d
    nop                                           ; $4747: $00
    nop                                           ; $4748: $00

jr_0be_4749:
    ld b, $09                                     ; $4749: $06 $09
    rla                                           ; $474b: $17
    ld hl, sp-$6e                                 ; $474c: $f8 $92
    ld a, a                                       ; $474e: $7f
    ld a, [bc]                                    ; $474f: $0a
    nop                                           ; $4750: $00
    ldh a, [$ec]                                  ; $4751: $f0 $ec
    pop af                                        ; $4753: $f1
    add sp, $12                                   ; $4754: $e8 $12
    ld hl, $b490                                  ; $4756: $21 $90 $b4
    nop                                           ; $4759: $00
    nop                                           ; $475a: $00
    ld l, c                                       ; $475b: $69
    sub b                                         ; $475c: $90
    di                                            ; $475d: $f3
    inc c                                         ; $475e: $0c
    or h                                          ; $475f: $b4
    dec de                                        ; $4760: $1b
    ld sp, hl                                     ; $4761: $f9
    nop                                           ; $4762: $00
    ld d, $bf                                     ; $4763: $16 $bf
    rra                                           ; $4765: $1f
    sub $20                                       ; $4766: $d6 $20
    reti                                          ; $4768: $d9


    inc h                                         ; $4769: $24
    db $ed                                        ; $476a: $ed
    nop                                           ; $476b: $00
    nop                                           ; $476c: $00
    sbc d                                         ; $476d: $9a
    ld h, b                                       ; $476e: $60
    rst $28                                       ; $476f: $ef
    db $10                                        ; $4770: $10
    rrca                                          ; $4771: $0f
    ldh a, [$9d]                                  ; $4772: $f0 $9d
    nop                                           ; $4774: $00
    ld h, b                                       ; $4775: $60
    ld d, [hl]                                    ; $4776: $56
    ldh [$5e], a                                  ; $4777: $e0 $5e
    ldh [$bd], a                                  ; $4779: $e0 $bd
    ret nz                                        ; $477b: $c0

    rst $30                                       ; $477c: $f7
    nop                                           ; $477d: $00
    add b                                         ; $477e: $80
    ld c, [hl]                                    ; $477f: $4e
    add b                                         ; $4780: $80
    dec hl                                        ; $4781: $2b
    nop                                           ; $4782: $00
    ld a, e                                       ; $4783: $7b
    ld a, e                                       ; $4784: $7b
    ld e, d                                       ; $4785: $5a
    nop                                           ; $4786: $00
    ld e, d                                       ; $4787: $5a
    ld e, a                                       ; $4788: $5f
    ld e, e                                       ; $4789: $5b
    ld [c], a                                     ; $478a: $e2
    ld h, b                                       ; $478b: $60
    dec d                                         ; $478c: $15
    nop                                           ; $478d: $00
    xor d                                         ; $478e: $aa
    sub b                                         ; $478f: $90
    sub h                                         ; $4790: $94
    rlca                                          ; $4791: $07
    db $ed                                        ; $4792: $ed
    ld d, d                                       ; $4793: $52
    ld c, a                                       ; $4794: $4f
    ld [bc], a                                    ; $4795: $02
    sbc $ff                                       ; $4796: $de $ff
    rst $18                                       ; $4798: $df
    push af                                       ; $4799: $f5
    nop                                           ; $479a: $00
    ld a, [bc]                                    ; $479b: $0a
    ld a, [hl]                                    ; $479c: $7e
    ld bc, $0ebd                                  ; $479d: $01 $bd $0e
    rst $38                                       ; $47a0: $ff
    ld a, e                                       ; $47a1: $7b
    ld b, b                                       ; $47a2: $40
    add b                                         ; $47a3: $80
    inc de                                        ; $47a4: $13
    inc bc                                        ; $47a5: $03
    ld e, a                                       ; $47a6: $5f
    ei                                            ; $47a7: $fb
    rst $18                                       ; $47a8: $df
    rst $38                                       ; $47a9: $ff
    ld d, b                                       ; $47aa: $50
    xor a                                         ; $47ab: $af
    inc h                                         ; $47ac: $24
    nop                                           ; $47ad: $00
    db $db                                        ; $47ae: $db
    ld de, $bffe                                  ; $47af: $11 $fe $bf
    rst $18                                       ; $47b2: $df
    add hl, bc                                    ; $47b3: $09
    rst $30                                       ; $47b4: $f7
    jp $ff09                                      ; $47b5: $c3 $09 $ff


    ld h, l                                       ; $47b8: $65
    db $db                                        ; $47b9: $db
    ld b, e                                       ; $47ba: $43
    cp b                                          ; $47bb: $b8
    inc b                                         ; $47bc: $04
    inc de                                        ; $47bd: $13
    rst $28                                       ; $47be: $ef
    ret z                                         ; $47bf: $c8

    add hl, bc                                    ; $47c0: $09
    nop                                           ; $47c1: $00
    xor [hl]                                      ; $47c2: $ae
    inc c                                         ; $47c3: $0c
    ret z                                         ; $47c4: $c8

    adc b                                         ; $47c5: $88
    cp [hl]                                       ; $47c6: $be
    sbc h                                         ; $47c7: $9c
    rst $38                                       ; $47c8: $ff
    rst $38                                       ; $47c9: $ff
    nop                                           ; $47ca: $00
    adc d                                         ; $47cb: $8a
    ld [$9494], sp                                ; $47cc: $08 $94 $94
    ld h, e                                       ; $47cf: $63
    ld h, e                                       ; $47d0: $63
    ld hl, $0021                                  ; $47d1: $21 $21 $00
    rst $28                                       ; $47d4: $ef
    push hl                                       ; $47d5: $e5
    ld h, d                                       ; $47d6: $62
    ld h, d                                       ; $47d7: $62
    rst $28                                       ; $47d8: $ef
    rst $20                                       ; $47d9: $e7
    rst $38                                       ; $47da: $ff
    rst $38                                       ; $47db: $ff
    nop                                           ; $47dc: $00
    ld [$e562], a                                 ; $47dd: $ea $62 $e5
    push hl                                       ; $47e0: $e5
    ld a, b                                       ; $47e1: $78
    ld a, b                                       ; $47e2: $78
    ld l, b                                       ; $47e3: $68
    ld l, b                                       ; $47e4: $68
    nop                                           ; $47e5: $00
    cp d                                          ; $47e6: $ba
    ld a, [hl-]                                   ; $47e7: $3a
    ld e, h                                       ; $47e8: $5c

jr_0be_47e9:
    inc e                                         ; $47e9: $1c
    cp d                                          ; $47ea: $ba
    jr c, jr_0be_47e9                             ; $47eb: $38 $fc

    db $fc                                        ; $47ed: $fc
    nop                                           ; $47ee: $00

Jump_0be_47ef:
    sbc a                                         ; $47ef: $9f
    rra                                           ; $47f0: $1f
    jr c, jr_0be_482b                             ; $47f1: $38 $38

    call c, Call_0be_5adc                         ; $47f3: $dc $dc $5a
    ld e, d                                       ; $47f6: $5a
    ld e, b                                       ; $47f7: $58
    xor a                                         ; $47f8: $af
    xor b                                         ; $47f9: $a8
    inc b                                         ; $47fa: $04
    cp d                                          ; $47fb: $ba
    xor b                                         ; $47fc: $a8
    inc b                                         ; $47fd: $04
    ei                                            ; $47fe: $fb
    ld [bc], a                                    ; $47ff: $02
    jr nc, jr_0be_484a                            ; $4800: $30 $48

    ld c, b                                       ; $4802: $48
    ld l, $85                                     ; $4803: $2e $85
    add l                                         ; $4805: $85
    xor b                                         ; $4806: $a8
    inc c                                         ; $4807: $0c
    ld [$04a8], a                                 ; $4808: $ea $a8 $04
    dec de                                        ; $480b: $1b
    inc bc                                        ; $480c: $03
    xor [hl]                                      ; $480d: $ae
    inc b                                         ; $480e: $04
    ld l, d                                       ; $480f: $6a
    inc bc                                        ; $4810: $03
    ld l, d                                       ; $4811: $6a
    cp a                                          ; $4812: $bf
    dec d                                         ; $4813: $15
    ld h, e                                       ; $4814: $63
    inc hl                                        ; $4815: $23

jr_0be_4816:
    db $eb                                        ; $4816: $eb
    xor b                                         ; $4817: $a8
    inc b                                         ; $4818: $04
    dec sp                                        ; $4819: $3b
    inc bc                                        ; $481a: $03
    nop                                           ; $481b: $00
    pop bc                                        ; $481c: $c1
    inc hl                                        ; $481d: $23
    inc hl                                        ; $481e: $23
    dec d                                         ; $481f: $15
    dec d                                         ; $4820: $15
    xor d                                         ; $4821: $aa
    xor b                                         ; $4822: $a8
    call nz, $c408                                ; $4823: $c4 $08 $c4
    xor e                                         ; $4826: $ab
    add e                                         ; $4827: $83
    rst $00                                       ; $4828: $c7
    ld e, h                                       ; $4829: $5c
    inc bc                                        ; $482a: $03

jr_0be_482b:
    add e                                         ; $482b: $83
    add e                                         ; $482c: $83
    call nz, $c400                                ; $482d: $c4 $00 $c4
    xor b                                         ; $4830: $a8
    xor b                                         ; $4831: $a8
    cp $56                                        ; $4832: $fe $56
    rst $08                                       ; $4834: $cf
    adc a                                         ; $4835: $8f
    xor [hl]                                      ; $4836: $ae
    jr z, jr_0be_483f                             ; $4837: $28 $06

    adc a                                         ; $4839: $8f
    ld a, h                                       ; $483a: $7c
    inc bc                                        ; $483b: $03
    ld b, $06                                     ; $483c: $06 $06
    nop                                           ; $483e: $00

jr_0be_483f:
    ld d, [hl]                                    ; $483f: $56
    ld d, [hl]                                    ; $4840: $56
    xor e                                         ; $4841: $ab
    ld [bc], a                                    ; $4842: $02
    and c                                         ; $4843: $a1
    ld d, d                                       ; $4844: $52
    ld [de], a                                    ; $4845: $12
    xor [hl]                                      ; $4846: $ae
    inc c                                         ; $4847: $0c
    ld e, $9c                                     ; $4848: $1e $9c

jr_0be_484a:
    inc bc                                        ; $484a: $03
    inc c                                         ; $484b: $0c
    nop                                           ; $484c: $00
    inc c                                         ; $484d: $0c
    ld [de], a                                    ; $484e: $12
    ld [de], a                                    ; $484f: $12
    and c                                         ; $4850: $a1
    and c                                         ; $4851: $a1
    cp $5c                                        ; $4852: $fe $5c
    ld a, b                                       ; $4854: $78
    nop                                           ; $4855: $00
    jr c, jr_0be_4816                             ; $4856: $38 $be

    inc e                                         ; $4858: $1c
    ccf                                           ; $4859: $3f
    ccf                                           ; $485a: $3f
    ld a, [$1cf8]                                 ; $485b: $fa $f8 $1c
    ld de, $3b1c                                  ; $485e: $11 $1c $3b
    dec sp                                        ; $4861: $3b
    ld [hl], b                                    ; $4862: $70
    nop                                           ; $4863: $00
    and a                                         ; $4864: $a7
    ld b, [hl]                                    ; $4865: $46
    ld b, [hl]                                    ; $4866: $46
    sub b                                         ; $4867: $90
    ld [$ce00], sp                                ; $4868: $08 $00 $ce
    ld b, [hl]                                    ; $486b: $46
    and a                                         ; $486c: $a7
    and a                                         ; $486d: $a7
    ld e, $1e                                     ; $486e: $1e $1e
    ld d, $16                                     ; $4870: $16 $16
    nop                                           ; $4872: $00
    cp d                                          ; $4873: $ba
    jr nc, @+$53                                  ; $4874: $30 $51

    ld de, $39bb                                  ; $4876: $11 $bb $39
    rst $38                                       ; $4879: $ff
    rst $38                                       ; $487a: $ff
    nop                                           ; $487b: $00
    sbc d                                         ; $487c: $9a
    db $10                                        ; $487d: $10
    add hl, hl                                    ; $487e: $29
    add hl, hl                                    ; $487f: $29
    add $c6                                       ; $4880: $c6 $c6

jr_0be_4882:
    add h                                         ; $4882: $84
    add h                                         ; $4883: $84
    ld bc, $ef90                                  ; $4884: $01 $90 $ef
    jp $a7ff                                      ; $4887: $c3 $ff $a7


    db $db                                        ; $488a: $db
    jp Jump_000_04d4                              ; $488b: $c3 $d4 $04


    ld d, b                                       ; $488e: $50
    ret z                                         ; $488f: $c8

    add sp, $07                                   ; $4890: $e8 $07
    jp Jump_000_0497                              ; $4892: $c3 $97 $04


    rst $38                                       ; $4895: $ff
    rst $38                                       ; $4896: $ff
    ld a, e                                       ; $4897: $7b
    rst $18                                       ; $4898: $df
    nop                                           ; $4899: $00
    ld e, e                                       ; $489a: $5b
    rst $38                                       ; $489b: $ff
    ld c, $fd                                     ; $489c: $0e $fd
    inc h                                         ; $489e: $24
    db $db                                        ; $489f: $db
    ret z                                         ; $48a0: $c8

    ld [hl], a                                    ; $48a1: $77
    nop                                           ; $48a2: $00
    rst $18                                       ; $48a3: $df
    rst $38                                       ; $48a4: $ff
    or l                                          ; $48a5: $b5
    ld c, b                                       ; $48a6: $48
    ld a, a                                       ; $48a7: $7f
    ei                                            ; $48a8: $fb
    rst $38                                       ; $48a9: $ff

Call_0be_48aa:
    ld e, l                                       ; $48aa: $5d
    nop                                           ; $48ab: $00
    ld a, l                                       ; $48ac: $7d
    push af                                       ; $48ad: $f5
    xor a                                         ; $48ae: $af
    ld d, b                                       ; $48af: $50
    ld a, [hl]                                    ; $48b0: $7e
    add b                                         ; $48b1: $80
    cp l                                          ; $48b2: $bd
    ld d, b                                       ; $48b3: $50
    nop                                           ; $48b4: $00
    rst $38                                       ; $48b5: $ff
    rst $38                                       ; $48b6: $ff
    call c, $f908                                 ; $48b7: $dc $08 $f9
    ld sp, hl                                     ; $48ba: $f9
    db $eb                                        ; $48bb: $eb
    jp hl                                         ; $48bc: $e9


    inc d                                         ; $48bd: $14
    ld sp, hl                                     ; $48be: $f9
    ld sp, hl                                     ; $48bf: $f9
    ld b, l                                       ; $48c0: $45
    cp h                                          ; $48c1: $bc
    ld bc, $c854                                  ; $48c2: $01 $54 $c8
    ld bc, $0df2                                  ; $48c5: $01 $f2 $0d
    nop                                           ; $48c8: $00
    ld b, c                                       ; $48c9: $41
    ld a, [$3de2]                                 ; $48ca: $fa $e2 $3d
    ld b, h                                       ; $48cd: $44
    ld a, c                                       ; $48ce: $79
    jp nc, $006d                                  ; $48cf: $d2 $6d $00

    and c                                         ; $48d2: $a1
    sbc $52                                       ; $48d3: $de $52
    xor l                                         ; $48d5: $ad
    adc c                                         ; $48d6: $89
    ld [hl], a                                    ; $48d7: $77
    rrca                                          ; $48d8: $0f
    ldh a, [rP1]                                  ; $48d9: $f0 $00
    dec bc                                        ; $48db: $0b
    rst $38                                       ; $48dc: $ff
    ld a, [bc]                                    ; $48dd: $0a
    ldh [$84], a                                  ; $48de: $e0 $84
    ret nz                                        ; $48e0: $c0

    dec h                                         ; $48e1: $25
    add b                                         ; $48e2: $80
    nop                                           ; $48e3: $00
    ld e, d                                       ; $48e4: $5a
    nop                                           ; $48e5: $00
    sbc h                                         ; $48e6: $9c
    ld bc, $01bf                                  ; $48e7: $01 $bf $01
    or $09                                        ; $48ea: $f6 $09
    jr jr_0be_4907                                ; $48ec: $18 $19

    halt                                          ; $48ee: $76
    ld b, b                                       ; $48ef: $40
    ld e, l                                       ; $48f0: $5d
    inc b                                         ; $48f1: $04
    ld l, b                                       ; $48f2: $68
    ld c, $b4                                     ; $48f3: $0e $b4
    ld [bc], a                                    ; $48f5: $02
    ei                                            ; $48f6: $fb
    nop                                           ; $48f7: $00
    inc b                                         ; $48f8: $04
    rst $28                                       ; $48f9: $ef
    db $10                                        ; $48fa: $10
    sbc a                                         ; $48fb: $9f
    ld h, b                                       ; $48fc: $60
    scf                                           ; $48fd: $37
    ret nz                                        ; $48fe: $c0

    ld a, e                                       ; $48ff: $7b
    jr nz, jr_0be_4882                            ; $4900: $20 $80

    or [hl]                                       ; $4902: $b6
    db $ec                                        ; $4903: $ec
    ld bc, $00fd                                  ; $4904: $01 $fd $00

jr_0be_4907:
    ld [hl], a                                    ; $4907: $77
    ld [$00f2], sp                                ; $4908: $08 $f2 $00
    dec c                                         ; $490b: $0d
    ld c, e                                       ; $490c: $4b
    db $f4                                        ; $490d: $f4
    sub c                                         ; $490e: $91
    db $ec                                        ; $490f: $ec
    ld a, [hl+]                                   ; $4910: $2a
    push bc                                       ; $4911: $c5
    sub b                                         ; $4912: $90
    nop                                           ; $4913: $00
    ld l, a                                       ; $4914: $6f
    dec hl                                        ; $4915: $2b
    call nc, Call_0be_6896                        ; $4916: $d4 $96 $68
    dec bc                                        ; $4919: $0b
    ldh a, [rNR22]                                ; $491a: $f0 $17
    nop                                           ; $491c: $00
    add sp, $52                                   ; $491d: $e8 $52
    rst $38                                       ; $491f: $ff
    inc hl                                        ; $4920: $23
    adc b                                         ; $4921: $88
    inc hl                                        ; $4922: $23
    ld bc, $002e                                  ; $4923: $01 $2e $00
    inc bc                                        ; $4926: $03
    ld c, c                                       ; $4927: $49
    ld c, $8c                                     ; $4928: $0e $8c
    inc sp                                        ; $492a: $33
    ld [hl], e                                    ; $492b: $73
    ld l, h                                       ; $492c: $6c
    ld a, [c]                                     ; $492d: $f2
    nop                                           ; $492e: $00
    dec c                                         ; $492f: $0d
    jp Jump_000_14bc                              ; $4930: $c3 $bc $14


    db $eb                                        ; $4933: $eb
    call nc, $f5fe                                ; $4934: $d4 $fe $f5
    nop                                           ; $4937: $00
    ld [$10aa], sp                                ; $4938: $08 $aa $10
    pop de                                        ; $493b: $d1
    nop                                           ; $493c: $00
    scf                                           ; $493d: $37
    add b                                         ; $493e: $80
    rst $38                                       ; $493f: $ff
    nop                                           ; $4940: $00
    ld e, d                                       ; $4941: $5a
    ld a, a                                       ; $4942: $7f
    dec sp                                        ; $4943: $3b
    cp [hl]                                       ; $4944: $be
    inc e                                         ; $4945: $1c
    ld a, l                                       ; $4946: $7d

jr_0be_4947:
    jr c, jr_0be_4947                             ; $4947: $38 $fe

    ld [de], a                                    ; $4949: $12
    ld e, h                                       ; $494a: $5c
    rst $18                                       ; $494b: $df
    sbc e                                         ; $494c: $9b
    and b                                         ; $494d: $a0
    ld [bc], a                                    ; $494e: $02
    sbc d                                         ; $494f: $9a
    cp e                                          ; $4950: $bb
    ld a, b                                       ; $4951: $78
    inc bc                                        ; $4952: $03
    cpl                                           ; $4953: $2f
    nop                                           ; $4954: $00
    ld c, $5c                                     ; $4955: $0e $5c
    ld bc, $00af                                  ; $4957: $01 $af $00
    ld a, a                                       ; $495a: $7f
    ld a, e                                       ; $495b: $7b
    rst $38                                       ; $495c: $ff
    ld bc, $7b5a                                  ; $495d: $01 $5a $7b
    ld e, e                                       ; $4960: $5b
    ei                                            ; $4961: $fb
    ld l, c                                       ; $4962: $69
    rst $38                                       ; $4963: $ff
    ld a, e                                       ; $4964: $7b
    and b                                         ; $4965: $a0
    rlca                                          ; $4966: $07
    db $10                                        ; $4967: $10
    db $10                                        ; $4968: $10
    rst $38                                       ; $4969: $ff
    ld b, b                                       ; $496a: $40
    ret z                                         ; $496b: $c8

    add hl, de                                    ; $496c: $19
    rst $18                                       ; $496d: $df
    cp e                                          ; $496e: $bb
    rst $38                                       ; $496f: $ff
    sbc a                                         ; $4970: $9f
    ld [bc], a                                    ; $4971: $02
    ld d, h                                       ; $4972: $54
    xor e                                         ; $4973: $ab
    xor d                                         ; $4974: $aa
    ld d, l                                       ; $4975: $55
    call nc, $c86b                                ; $4976: $d4 $6b $c8
    add hl, bc                                    ; $4979: $09
    rst $38                                       ; $497a: $ff
    ld c, b                                       ; $497b: $48
    rst $18                                       ; $497c: $df
    ld a, h                                       ; $497d: $7c
    dec bc                                        ; $497e: $0b
    adc c                                         ; $497f: $89
    ld [hl], a                                    ; $4980: $77
    add h                                         ; $4981: $84
    inc bc                                        ; $4982: $03
    ld a, a                                       ; $4983: $7f
    db $e3                                        ; $4984: $e3
    rst $18                                       ; $4985: $df
    inc b                                         ; $4986: $04
    ld b, c                                       ; $4987: $41
    rst $38                                       ; $4988: $ff
    ld b, e                                       ; $4989: $43
    rst $38                                       ; $498a: $ff
    ld hl, $1002                                  ; $498b: $21 $02 $10
    xor c                                         ; $498e: $a9
    ld [hl], a                                    ; $498f: $77
    nop                                           ; $4990: $00
    ld hl, $a3ff                                  ; $4991: $21 $ff $a3
    ld a, l                                       ; $4994: $7d
    ld hl, $eaff                                  ; $4995: $21 $ff $ea
    ld [hl], a                                    ; $4998: $77
    jr nz, jr_0be_4a03                            ; $4999: $20 $68

    rst $38                                       ; $499b: $ff
    ld [bc], a                                    ; $499c: $02
    ld [$7fe8], sp                                ; $499d: $08 $e8 $7f
    ld l, b                                       ; $49a0: $68
    rst $38                                       ; $49a1: $ff
    ld [$7d01], a                                 ; $49a2: $ea $01 $7d
    ld a, b                                       ; $49a5: $78
    rst $38                                       ; $49a6: $ff
    rst $28                                       ; $49a7: $ef
    push af                                       ; $49a8: $f5
    ld e, c                                       ; $49a9: $59
    rst $38                                       ; $49aa: $ff
    ld [bc], a                                    ; $49ab: $02
    ld [$d900], sp                                ; $49ac: $08 $00 $d9
    ld a, a                                       ; $49af: $7f
    ld e, c                                       ; $49b0: $59
    rst $38                                       ; $49b1: $ff
    ei                                            ; $49b2: $fb
    ld e, l                                       ; $49b3: $5d
    jp c, $08ff                                   ; $49b4: $da $ff $08

    cp [hl]                                       ; $49b7: $be
    ld a, l                                       ; $49b8: $7d
    ld [bc], a                                    ; $49b9: $02
    rst $38                                       ; $49ba: $ff
    ld [bc], a                                    ; $49bb: $02
    ld [$778a], sp                                ; $49bc: $08 $8a $77
    ld [bc], a                                    ; $49bf: $02
    nop                                           ; $49c0: $00
    rst $38                                       ; $49c1: $ff
    and d                                         ; $49c2: $a2
    ld e, a                                       ; $49c3: $5f
    add l                                         ; $49c4: $85
    rst $38                                       ; $49c5: $ff
    ld [$645d], a                                 ; $49c6: $ea $5d $64
    ld b, b                                       ; $49c9: $40
    rst $38                                       ; $49ca: $ff
    ld [bc], a                                    ; $49cb: $02

Jump_0be_49cc:
    ld [$77ec], sp                                ; $49cc: $08 $ec $77
    ld h, h                                       ; $49cf: $64
    rst $38                                       ; $49d0: $ff
    and $7d                                       ; $49d1: $e6 $7d
    ld [bc], a                                    ; $49d3: $02
    ld l, d                                       ; $49d4: $6a
    rst $38                                       ; $49d5: $ff
    ei                                            ; $49d6: $fb

jr_0be_49d7:
    push af                                       ; $49d7: $f5
    add hl, bc                                    ; $49d8: $09
    rst $38                                       ; $49d9: $ff
    ld [bc], a                                    ; $49da: $02
    ld [$0089], sp                                ; $49db: $08 $89 $00
    ld a, a                                       ; $49de: $7f
    add hl, bc                                    ; $49df: $09
    rst $38                                       ; $49e0: $ff
    xor e                                         ; $49e1: $ab
    ld e, l                                       ; $49e2: $5d
    dec d                                         ; $49e3: $15
    rst $38                                       ; $49e4: $ff
    xor e                                         ; $49e5: $ab
    db $10                                        ; $49e6: $10
    ld [hl], a                                    ; $49e7: $77
    sub b                                         ; $49e8: $90
    rst $38                                       ; $49e9: $ff
    ld [bc], a                                    ; $49ea: $02
    ld [$f798], sp                                ; $49eb: $08 $98 $f7
    sub b                                         ; $49ee: $90
    rst $38                                       ; $49ef: $ff
    nop                                           ; $49f0: $00
    or d                                          ; $49f1: $b2
    db $dd                                        ; $49f2: $dd
    xor b                                         ; $49f3: $a8
    rst $38                                       ; $49f4: $ff
    xor $d5                                       ; $49f5: $ee $d5
    ld h, $ff                                     ; $49f7: $26 $ff
    add b                                         ; $49f9: $80
    ld [bc], a                                    ; $49fa: $02
    ld [$77ae], sp                                ; $49fb: $08 $ae $77
    ld h, $ff                                     ; $49fe: $26 $ff
    and [hl]                                      ; $4a00: $a6
    ld a, a                                       ; $4a01: $7f
    ld d, [hl]                                    ; $4a02: $56

jr_0be_4a03:
    ld [$afff], sp                                ; $4a03: $08 $ff $af
    rst $18                                       ; $4a06: $df
    ld b, b                                       ; $4a07: $40
    xor c                                         ; $4a08: $a9
    nop                                           ; $4a09: $00
    ld b, b                                       ; $4a0a: $40
    rst $38                                       ; $4a0b: $ff
    ret z                                         ; $4a0c: $c8

    nop                                           ; $4a0d: $00
    ld [hl], a                                    ; $4a0e: $77
    ld b, b                                       ; $4a0f: $40
    rst $38                                       ; $4a10: $ff
    ld [c], a                                     ; $4a11: $e2
    ld e, l                                       ; $4a12: $5d
    and c                                         ; $4a13: $a1
    rst $38                                       ; $4a14: $ff
    cp d                                          ; $4a15: $ba
    inc d                                         ; $4a16: $14
    ld d, a                                       ; $4a17: $57
    sbc d                                         ; $4a18: $9a
    rst $38                                       ; $4a19: $ff
    ld [bc], a                                    ; $4a1a: $02
    jr z, jr_0be_49d7                             ; $4a1b: $28 $ba

    add [hl]                                      ; $4a1d: $86
    ld bc, $7dbe                                  ; $4a1e: $01 $be $7d
    ld b, b                                       ; $4a21: $40
    ld d, $9b                                     ; $4a22: $16 $9b
    dec b                                         ; $4a24: $05
    ld d, $ff                                     ; $4a25: $16 $ff
    sbc [hl]                                      ; $4a27: $9e
    ld [hl], a                                    ; $4a28: $77
    ld d, $ff                                     ; $4a29: $16 $ff
    inc bc                                        ; $4a2b: $03
    or [hl]                                       ; $4a2c: $b6
    ld e, a                                       ; $4a2d: $5f
    ld e, $ff                                     ; $4a2e: $1e $ff
    xor a                                         ; $4a30: $af
    rst $30                                       ; $4a31: $f7
    ld h, c                                       ; $4a32: $61
    ld b, $02                                     ; $4a33: $06 $02
    nop                                           ; $4a35: $00
    ld b, b                                       ; $4a36: $40
    adc h                                         ; $4a37: $8c
    ld [$a600], sp                                ; $4a38: $08 $00 $a6
    db $dd                                        ; $4a3b: $dd
    add h                                         ; $4a3c: $84
    rst $38                                       ; $4a3d: $ff
    xor $57                                       ; $4a3e: $ee $57
    ld b, b                                       ; $4a40: $40
    add c                                         ; $4a41: $81
    ld [hl], h                                    ; $4a42: $74
    rlca                                          ; $4a43: $07
    sub c                                         ; $4a44: $91
    xor $c2                                       ; $4a45: $ee $c2
    db $fd                                        ; $4a47: $fd
    add c                                         ; $4a48: $81
    cp $40                                        ; $4a49: $fe $40
    rst $00                                       ; $4a4b: $c7
    ld d, d                                       ; $4a4c: $52
    inc b                                         ; $4a4d: $04
    jp $efff                                      ; $4a4e: $c3 $ff $ef


    sbc $df                                       ; $4a51: $de $df
    cp $02                                        ; $4a53: $fe $02
    ld a, [hl+]                                   ; $4a55: $2a
    push de                                       ; $4a56: $d5
    ld d, l                                       ; $4a57: $55
    xor d                                         ; $4a58: $aa
    dec hl                                        ; $4a59: $2b
    call nc, Call_000_0494                        ; $4a5a: $d4 $94 $04
    ld e, a                                       ; $4a5d: $5f
    add sp, -$46                                  ; $4a5e: $e8 $ba
    ld [bc], a                                    ; $4a60: $02
    inc e                                         ; $4a61: $1c
    ld b, $6a                                     ; $4a62: $06 $6a
    ld b, $08                                     ; $4a64: $06 $08
    ld [hl], b                                    ; $4a66: $70
    ld b, $7b                                     ; $4a67: $06 $7b
    rst $38                                       ; $4a69: $ff
    ld e, l                                       ; $4a6a: $5d
    nop                                           ; $4a6b: $00
    rst $38                                       ; $4a6c: $ff
    ld [hl], l                                    ; $4a6d: $75
    db $d3                                        ; $4a6e: $d3
    ld d, e                                       ; $4a6f: $53
    ei                                            ; $4a70: $fb
    ld [hl], e                                    ; $4a71: $73
    db $f4                                        ; $4a72: $f4
    nop                                           ; $4a73: $00
    nop                                           ; $4a74: $00
    ld a, [hl-]                                   ; $4a75: $3a
    add b                                         ; $4a76: $80
    db $fd                                        ; $4a77: $fd
    ld [$f9fb], sp                                ; $4a78: $08 $fb $f9
    db $fd                                        ; $4a7b: $fd
    jp hl                                         ; $4a7c: $e9


    nop                                           ; $4a7d: $00
    rst $38                                       ; $4a7e: $ff
    ld sp, hl                                     ; $4a7f: $f9
    rst $38                                       ; $4a80: $ff
    and c                                         ; $4a81: $a1
    ld d, a                                       ; $4a82: $57
    ld [de], a                                    ; $4a83: $12
    cp [hl]                                       ; $4a84: $be
    inc c                                         ; $4a85: $0c
    jr jr_0be_4adf                                ; $4a86: $18 $57

    ld [de], a                                    ; $4a88: $12
    xor e                                         ; $4a89: $ab
    ld [$0004], sp                                ; $4a8a: $08 $04 $00
    inc d                                         ; $4a8d: $14
    ld d, [hl]                                    ; $4a8e: $56
    rst $18                                       ; $4a8f: $df
    adc a                                         ; $4a90: $8f
    ld b, $be                                     ; $4a91: $06 $be
    ld b, $df                                     ; $4a93: $06 $df
    adc a                                         ; $4a95: $8f
    cp $28                                        ; $4a96: $fe $28
    inc b                                         ; $4a98: $04
    jr nz, jr_0be_4aaf                            ; $4a99: $20 $14

    xor b                                         ; $4a9b: $a8
    ld bc, $c4d5                                  ; $4a9c: $01 $d5 $c4
    cp e                                          ; $4a9f: $bb
    add e                                         ; $4aa0: $83
    push de                                       ; $4aa1: $d5
    call nz, Call_0be_48aa                        ; $4aa2: $c4 $aa $48
    inc d                                         ; $4aa5: $14
    add b                                         ; $4aa6: $80
    ld b, b                                       ; $4aa7: $40
    inc b                                         ; $4aa8: $04
    dec d                                         ; $4aa9: $15
    ld [hl], a                                    ; $4aaa: $77
    inc hl                                        ; $4aab: $23
    ei                                            ; $4aac: $fb
    pop bc                                        ; $4aad: $c1
    ld [hl], a                                    ; $4aae: $77

jr_0be_4aaf:
    inc hl                                        ; $4aaf: $23
    ld h, b                                       ; $4ab0: $60
    cp a                                          ; $4ab1: $bf
    ld l, b                                       ; $4ab2: $68
    inc b                                         ; $4ab3: $04
    ld h, b                                       ; $4ab4: $60
    inc d                                         ; $4ab5: $14
    ld l, d                                       ; $4ab6: $6a
    push af                                       ; $4ab7: $f5
    pop af                                        ; $4ab8: $f1
    ld a, [$1960]                                 ; $4ab9: $fa $60 $19
    push af                                       ; $4abc: $f5
    pop af                                        ; $4abd: $f1
    ld [$0488], a                                 ; $4abe: $ea $88 $04
    add b                                         ; $4ac1: $80
    inc d                                         ; $4ac2: $14
    add l                                         ; $4ac3: $85
    ld e, l                                       ; $4ac4: $5d
    ldh [rSC], a                                  ; $4ac5: $e0 $02
    jr jr_0be_4b26                                ; $4ac7: $18 $5d

    ld c, b                                       ; $4ac9: $48
    xor a                                         ; $4aca: $af
    xor b                                         ; $4acb: $a8
    inc b                                         ; $4acc: $04
    and b                                         ; $4acd: $a0
    inc d                                         ; $4ace: $14
    ld e, d                                       ; $4acf: $5a
    db $dd                                        ; $4ad0: $dd
    call c, $ba00                                 ; $4ad1: $dc $00 $ba
    jr c, jr_0be_4b33                             ; $4ad4: $38 $5d

    inc e                                         ; $4ad6: $1c
    cp d                                          ; $4ad7: $ba
    ld a, [hl-]                                   ; $4ad8: $3a
    db $dd                                        ; $4ad9: $dd
    reti                                          ; $4ada: $d9


    ret nz                                        ; $4adb: $c0

    cp h                                          ; $4adc: $bc
    rrca                                          ; $4add: $0f
    ld d, b                                       ; $4ade: $50

jr_0be_4adf:
    inc d                                         ; $4adf: $14
    sub [hl]                                      ; $4ae0: $96
    ld a, a                                       ; $4ae1: $7f
    ld l, [hl]                                    ; $4ae2: $6e
    xor [hl]                                      ; $4ae3: $ae
    and [hl]                                      ; $4ae4: $a6
    ld [hl], a                                    ; $4ae5: $77
    ld b, l                                       ; $4ae6: $45
    daa                                           ; $4ae7: $27
    ld d, b                                       ; $4ae8: $50
    inc b                                         ; $4ae9: $04
    rra                                           ; $4aea: $1f
    rra                                           ; $4aeb: $1f
    pop af                                        ; $4aec: $f1
    ld [bc], a                                    ; $4aed: $02
    ld c, b                                       ; $4aee: $48
    ld d, l                                       ; $4aef: $55
    ld hl, sp+$07                                 ; $4af0: $f8 $07
    add d                                         ; $4af2: $82
    ld [bc], a                                    ; $4af3: $02
    ld c, b                                       ; $4af4: $48
    or c                                          ; $4af5: $b1
    rst $38                                       ; $4af6: $ff
    dec d                                         ; $4af7: $15
    rra                                           ; $4af8: $1f
    ld de, $4002                                  ; $4af9: $11 $02 $40
    dec d                                         ; $4afc: $15
    inc b                                         ; $4afd: $04
    rst $38                                       ; $4afe: $ff
    or c                                          ; $4aff: $b1

jr_0be_4b00:
    rst $38                                       ; $4b00: $ff
    ld d, c                                       ; $4b01: $51
    rst $38                                       ; $4b02: $ff
    inc [hl]                                      ; $4b03: $34
    jr c, jr_0be_4b57                             ; $4b04: $38 $51

    rst $38                                       ; $4b06: $ff
    jr nz, jr_0be_4b00                            ; $4b07: $20 $f7

    cp $02                                        ; $4b09: $fe $02
    ld b, b                                       ; $4b0b: $40
    ld c, $ff                                     ; $4b0c: $0e $ff
    cp $7f                                        ; $4b0e: $fe $7f
    rst $28                                       ; $4b10: $ef
    sbc l                                         ; $4b11: $9d
    ld [bc], a                                    ; $4b12: $02
    ld b, b                                       ; $4b13: $40
    ldh [$7f], a                                  ; $4b14: $e0 $7f
    db $e4                                        ; $4b16: $e4
    rlca                                          ; $4b17: $07
    db $ec                                        ; $4b18: $ec
    rrca                                          ; $4b19: $0f
    inc b                                         ; $4b1a: $04
    jr c, @+$01                                   ; $4b1b: $38 $ff

    ld [bc], a                                    ; $4b1d: $02
    inc b                                         ; $4b1e: $04
    nop                                           ; $4b1f: $00
    rst $18                                       ; $4b20: $df
    add d                                         ; $4b21: $82
    rst $38                                       ; $4b22: $ff
    cp [hl]                                       ; $4b23: $be
    rst $38                                       ; $4b24: $ff
    or d                                          ; $4b25: $b2

jr_0be_4b26:
    ld a, a                                       ; $4b26: $7f
    ld a, $30                                     ; $4b27: $3e $30
    sbc $21                                       ; $4b29: $de $21
    add [hl]                                      ; $4b2b: $86
    rrca                                          ; $4b2c: $0f
    inc l                                         ; $4b2d: $2c
    ld [bc], a                                    ; $4b2e: $02
    nop                                           ; $4b2f: $00
    cp $ff                                        ; $4b30: $fe $ff
    rst $38                                       ; $4b32: $ff

jr_0be_4b33:
    db $10                                        ; $4b33: $10
    jp c, $fbfe                                   ; $4b34: $da $fe $fb

    sub h                                         ; $4b37: $94
    rrca                                          ; $4b38: $0f
    ld d, l                                       ; $4b39: $55
    xor d                                         ; $4b3a: $aa
    xor d                                         ; $4b3b: $aa
    ld d, l                                       ; $4b3c: $55
    ld [$1af5], sp                                ; $4b3d: $08 $f5 $1a
    rst $38                                       ; $4b40: $ff
    ld a, a                                       ; $4b41: $7f
    inc l                                         ; $4b42: $2c
    ld [bc], a                                    ; $4b43: $02
    ld a, a                                       ; $4b44: $7f
    call c, Call_000_0223                         ; $4b45: $dc $23 $02
    xor b                                         ; $4b48: $a8
    ld d, a                                       ; $4b49: $57
    dec b                                         ; $4b4a: $05
    ei                                            ; $4b4b: $fb
    add e                                         ; $4b4c: $83
    ld a, a                                       ; $4b4d: $7f
    ld l, b                                       ; $4b4e: $68
    ld c, $81                                     ; $4b4f: $0e $81
    nop                                           ; $4b51: $00
    ld a, a                                       ; $4b52: $7f
    set 6, a                                      ; $4b53: $cb $f7
    ld b, c                                       ; $4b55: $41
    cp a                                          ; $4b56: $bf

jr_0be_4b57:
    inc bc                                        ; $4b57: $03
    rst $38                                       ; $4b58: $ff
    sub h                                         ; $4b59: $94
    nop                                           ; $4b5a: $00
    rst $38                                       ; $4b5b: $ff
    xor d                                         ; $4b5c: $aa
    ld e, l                                       ; $4b5d: $5d
    push de                                       ; $4b5e: $d5
    cp [hl]                                       ; $4b5f: $be
    db $eb                                        ; $4b60: $eb
    ld [hl], a                                    ; $4b61: $77
    ld [hl], l                                    ; $4b62: $75
    nop                                           ; $4b63: $00
    xor e                                         ; $4b64: $ab

jr_0be_4b65:
    xor e                                         ; $4b65: $ab
    ld [hl], l                                    ; $4b66: $75
    ld [hl], l                                    ; $4b67: $75
    xor e                                         ; $4b68: $ab
    rst $28                                       ; $4b69: $ef
    ld sp, $8162                                  ; $4b6a: $31 $62 $81
    and e                                         ; $4b6d: $a3
    ld b, $ed                                     ; $4b6e: $06 $ed
    ld a, [$7dea]                                 ; $4b70: $fa $ea $7d
    ld a, l                                       ; $4b73: $7d
    ld [$0804], a                                 ; $4b74: $ea $04 $08
    db $10                                        ; $4b77: $10
    xor $79                                       ; $4b78: $ee $79
    jr @+$26                                      ; $4b7a: $18 $24

    ld [bc], a                                    ; $4b7c: $02
    rst $18                                       ; $4b7d: $df
    ld a, [$5dfb]                                 ; $4b7e: $fa $fb $5d
    ld [hl+], a                                   ; $4b81: $22
    ld e, l                                       ; $4b82: $5d
    ei                                            ; $4b83: $fb
    inc b                                         ; $4b84: $04
    ld [$59ff], sp                                ; $4b85: $08 $ff $59
    jr nc, jr_0be_4bae                            ; $4b88: $30 $24

    ld [bc], a                                    ; $4b8a: $02
    push bc                                       ; $4b8b: $c5
    inc b                                         ; $4b8c: $04
    cp a                                          ; $4b8d: $bf
    xor d                                         ; $4b8e: $aa
    ld d, a                                       ; $4b8f: $57
    ld d, a                                       ; $4b90: $57
    xor d                                         ; $4b91: $aa
    inc b                                         ; $4b92: $04
    ld [$13ee], sp                                ; $4b93: $08 $ee $13
    ld b, b                                       ; $4b96: $40
    ld h, b                                       ; $4b97: $60
    inc h                                         ; $4b98: $24
    ld [bc], a                                    ; $4b99: $02
    ld l, a                                       ; $4b9a: $6f
    ld a, [$75ee]                                 ; $4b9b: $fa $ee $75
    ld [hl], l                                    ; $4b9e: $75
    xor $a0                                       ; $4b9f: $ee $a0
    inc b                                         ; $4ba1: $04
    jr jr_0be_4b65                                ; $4ba2: $18 $c1

    inc h                                         ; $4ba4: $24
    ld [bc], a                                    ; $4ba5: $02
    ld d, l                                       ; $4ba6: $55
    cp a                                          ; $4ba7: $bf
    xor e                                         ; $4ba8: $ab
    ld e, l                                       ; $4ba9: $5d
    ld e, l                                       ; $4baa: $5d
    ld b, h                                       ; $4bab: $44
    xor e                                         ; $4bac: $ab
    inc b                                         ; $4bad: $04

jr_0be_4bae:
    ld [$19ef], sp                                ; $4bae: $08 $ef $19
    add e                                         ; $4bb1: $83
    inc h                                         ; $4bb2: $24
    ld [bc], a                                    ; $4bb3: $02
    db $ed                                        ; $4bb4: $ed
    cp d                                          ; $4bb5: $ba
    ld de, $d5ba                                  ; $4bb6: $11 $ba $d5
    push de                                       ; $4bb9: $d5
    inc b                                         ; $4bba: $04
    db $10                                        ; $4bbb: $10
    cp $91                                        ; $4bbc: $fe $91
    ld b, $24                                     ; $4bbe: $06 $24
    ld [bc], a                                    ; $4bc0: $02
    ld [bc], a                                    ; $4bc1: $02
    ld d, a                                       ; $4bc2: $57
    cp $ae                                        ; $4bc3: $fe $ae
    ld [hl], a                                    ; $4bc5: $77
    ld [hl], a                                    ; $4bc6: $77
    xor [hl]                                      ; $4bc7: $ae
    inc b                                         ; $4bc8: $04
    ld [$20ee], sp                                ; $4bc9: $08 $ee $20
    scf                                           ; $4bcc: $37
    inc c                                         ; $4bcd: $0c
    inc h                                         ; $4bce: $24
    ld [bc], a                                    ; $4bcf: $02
    push hl                                       ; $4bd0: $e5
    cp e                                          ; $4bd1: $bb
    ld [$5555], a                                 ; $4bd2: $ea $55 $55
    ld c, b                                       ; $4bd5: $48
    ld [$0804], a                                 ; $4bd6: $ea $04 $08
    xor $51                                       ; $4bd9: $ee $51
    ld [hl], b                                    ; $4bdb: $70
    ld [$fb5f], sp                                ; $4bdc: $08 $5f $fb
    cp d                                          ; $4bdf: $ba
    ld de, $dfdf                                  ; $4be0: $11 $df $df
    cp d                                          ; $4be3: $ba
    inc b                                         ; $4be4: $04
    ld [$9bfe], sp                                ; $4be5: $08 $fe $9b
    ld b, [hl]                                    ; $4be8: $46
    ret                                           ; $4be9: $c9


    rlca                                          ; $4bea: $07
    ld [bc], a                                    ; $4beb: $02
    ld d, a                                       ; $4bec: $57
    cp a                                          ; $4bed: $bf
    cp [hl]                                       ; $4bee: $be
    ld d, a                                       ; $4bef: $57
    ld d, a                                       ; $4bf0: $57
    cp [hl]                                       ; $4bf1: $be
    inc b                                         ; $4bf2: $04
    ld [$00fe], sp                                ; $4bf3: $08 $fe $00
    rla                                           ; $4bf6: $17
    add hl, hl                                    ; $4bf7: $29
    rst $38                                       ; $4bf8: $ff
    cp d                                          ; $4bf9: $ba
    ld d, l                                       ; $4bfa: $55
    ld l, l                                       ; $4bfb: $6d
    cp e                                          ; $4bfc: $bb
    xor $00                                       ; $4bfd: $ee $00
    rst $10                                       ; $4bff: $d7
    push de                                       ; $4c00: $d5
    xor [hl]                                      ; $4c01: $ae
    xor [hl]                                      ; $4c02: $ae
    push de                                       ; $4c03: $d5
    push de                                       ; $4c04: $d5
    xor [hl]                                      ; $4c05: $ae
    xor $04                                       ; $4c06: $ee $04
    sub l                                         ; $4c08: $95
    and b                                         ; $4c09: $a0
    rst $18                                       ; $4c0a: $df
    pop bc                                        ; $4c0b: $c1
    cp $b0                                        ; $4c0c: $fe $b0
    dec c                                         ; $4c0e: $0d
    add e                                         ; $4c0f: $83
    rst $38                                       ; $4c10: $ff
    nop                                           ; $4c11: $00
    db $d3                                        ; $4c12: $d3
    rst $28                                       ; $4c13: $ef
    add d                                         ; $4c14: $82
    db $fd                                        ; $4c15: $fd
    ret nz                                        ; $4c16: $c0

    rst $38                                       ; $4c17: $ff
    xor [hl]                                      ; $4c18: $ae
    ld e, l                                       ; $4c19: $5d
    nop                                           ; $4c1a: $00
    ld d, l                                       ; $4c1b: $55
    xor d                                         ; $4c1c: $aa
    xor a                                         ; $4c1d: $af
    ld d, b                                       ; $4c1e: $50
    rst $18                                       ; $4c1f: $df
    rst $28                                       ; $4c20: $ef
    ld l, [hl]                                    ; $4c21: $6e
    rst $18                                       ; $4c22: $df
    ld [bc], a                                    ; $4c23: $02
    ld e, a                                       ; $4c24: $5f
    rst $28                                       ; $4c25: $ef
    dec sp                                        ; $4c26: $3b
    call nz, $ea15                                ; $4c27: $c4 $15 $ea
    inc l                                         ; $4c2a: $2c
    ld [de], a                                    ; $4c2b: $12
    jr nz, jr_0be_4c31                            ; $4c2c: $20 $03

    rst $38                                       ; $4c2e: $ff
    and b                                         ; $4c2f: $a0
    cp a                                          ; $4c30: $bf

jr_0be_4c31:
    ldh [$7d], a                                  ; $4c31: $e0 $7d
    and $1e                                       ; $4c33: $e6 $1e
    add hl, bc                                    ; $4c35: $09
    inc a                                         ; $4c36: $3c
    ld a, [bc]                                    ; $4c37: $0a
    ld b, b                                       ; $4c38: $40
    ei                                            ; $4c39: $fb
    jr nc, jr_0be_4c3d                            ; $4c3a: $30 $01

    ei                                            ; $4c3c: $fb

jr_0be_4c3d:
    or [hl]                                       ; $4c3d: $b6
    cp $3e                                        ; $4c3e: $fe $3e
    ld a, e                                       ; $4c40: $7b
    add h                                         ; $4c41: $84
    ret nz                                        ; $4c42: $c0

    ld c, [hl]                                    ; $4c43: $4e
    rlca                                          ; $4c44: $07
    and b                                         ; $4c45: $a0
    ld b, $fb                                     ; $4c46: $06 $fb
    ld l, c                                       ; $4c48: $69
    ld [hl], a                                    ; $4c49: $77
    halt                                          ; $4c4a: $76
    rst $28                                       ; $4c4b: $ef
    ld h, l                                       ; $4c4c: $65
    ld [bc], a                                    ; $4c4d: $02
    push af                                       ; $4c4e: $f5
    db $e4                                        ; $4c4f: $e4
    ld [$f968], a                                 ; $4c50: $ea $68 $f9
    ld hl, sp-$40                                 ; $4c53: $f8 $c0
    ld a, $77                                     ; $4c55: $3e $77
    ld bc, $ae22                                  ; $4c57: $01 $22 $ae
    inc h                                         ; $4c5a: $24
    ld e, c                                       ; $4c5b: $59
    ld e, b                                       ; $4c5c: $58
    dec b                                         ; $4c5d: $05
    ei                                            ; $4c5e: $fb
    sbc b                                         ; $4c5f: $98
    rrca                                          ; $4c60: $0f
    db $10                                        ; $4c61: $10
    db $d3                                        ; $4c62: $d3
    rst $28                                       ; $4c63: $ef
    pop bc                                        ; $4c64: $c1
    and h                                         ; $4c65: $a4
    rla                                           ; $4c66: $17
    adc e                                         ; $4c67: $8b
    ld [hl], a                                    ; $4c68: $77
    add b                                         ; $4c69: $80
    ld a, a                                       ; $4c6a: $7f
    jr nz, @+$03                                  ; $4c6b: $20 $01

    cp $87                                        ; $4c6d: $fe $87
    rrca                                          ; $4c6f: $0f
    dec sp                                        ; $4c70: $3b
    rst $38                                       ; $4c71: $ff
    rst $38                                       ; $4c72: $ff
    ld a, a                                       ; $4c73: $7f
    nop                                           ; $4c74: $00
    nop                                           ; $4c75: $00
    rst $38                                       ; $4c76: $ff
    inc b                                         ; $4c77: $04
    ei                                            ; $4c78: $fb
    xor $11                                       ; $4c79: $ee $11
    nop                                           ; $4c7b: $00
    ld de, $1088                                  ; $4c7c: $11 $88 $10
    ld de, $ffff                                  ; $4c7f: $11 $ff $ff
    sub $09                                       ; $4c82: $d6 $09
    push af                                       ; $4c84: $f5
    rst $38                                       ; $4c85: $ff
    ei                                            ; $4c86: $fb
    rst $38                                       ; $4c87: $ff
    cp b                                          ; $4c88: $b8
    db $10                                        ; $4c89: $10
    ld [$1080], sp                                ; $4c8a: $08 $80 $10
    nop                                           ; $4c8d: $00
    ld [$dc0a], sp                                ; $4c8e: $08 $0a $dc
    add hl, bc                                    ; $4c91: $09
    ld c, $ff                                     ; $4c92: $0e $ff
    sub b                                         ; $4c94: $90
    ld h, a                                       ; $4c95: $67
    ld l, a                                       ; $4c96: $6f
    add h                                         ; $4c97: $84
    inc c                                         ; $4c98: $0c
    jp $ff07                                      ; $4c99: $c3 $07 $ff


    ld l, [hl]                                    ; $4c9c: $6e
    cp l                                          ; $4c9d: $bd
    rlca                                          ; $4c9e: $07
    xor $49                                       ; $4c9f: $ee $49
    inc l                                         ; $4ca1: $2c
    ld a, [bc]                                    ; $4ca2: $0a
    ld c, b                                       ; $4ca3: $48
    pop de                                        ; $4ca4: $d1
    ld [hl+], a                                   ; $4ca5: $22
    ld h, d                                       ; $4ca6: $62
    nop                                           ; $4ca7: $00
    nop                                           ; $4ca8: $00
    or d                                          ; $4ca9: $b2
    inc c                                         ; $4caa: $0c
    rst $38                                       ; $4cab: $ff
    cp $07                                        ; $4cac: $fe $07
    jp nz, $2208                                  ; $4cae: $c2 $08 $22

    db $10                                        ; $4cb1: $10
    jr jr_0be_4d33                                ; $4cb2: $18 $7f

    rst $38                                       ; $4cb4: $ff
    ld h, b                                       ; $4cb5: $60
    rst $38                                       ; $4cb6: $ff
    ld a, [bc]                                    ; $4cb7: $0a
    ld a, [de]                                    ; $4cb8: $1a
    ld [de], a                                    ; $4cb9: $12
    ld [bc], a                                    ; $4cba: $02
    db $ed                                        ; $4cbb: $ed
    ret nz                                        ; $4cbc: $c0

    rst $38                                       ; $4cbd: $ff
    push bc                                       ; $4cbe: $c5
    ld a, [$7cc0]                                 ; $4cbf: $fa $c0 $7c
    rlca                                          ; $4cc2: $07
    ld b, b                                       ; $4cc3: $40
    ld [$00bf], sp                                ; $4cc4: $08 $bf $00
    rst $38                                       ; $4cc7: $ff
    xor d                                         ; $4cc8: $aa
    cp [hl]                                       ; $4cc9: $be
    inc bc                                        ; $4cca: $03
    ld a, a                                       ; $4ccb: $7f
    rst $38                                       ; $4ccc: $ff
    ld a, e                                       ; $4ccd: $7b
    ld h, $bf                                     ; $4cce: $26 $bf
    ld a, a                                       ; $4cd0: $7f
    adc h                                         ; $4cd1: $8c
    rlca                                          ; $4cd2: $07
    db $10                                        ; $4cd3: $10
    rst $28                                       ; $4cd4: $ef
    db $10                                        ; $4cd5: $10
    ld [$386c], sp                                ; $4cd6: $08 $6c $38
    inc b                                         ; $4cd9: $04
    ld b, b                                       ; $4cda: $40
    ei                                            ; $4cdb: $fb
    jr nz, jr_0be_4ce6                            ; $4cdc: $20 $08

    jr nc, jr_0be_4cec                            ; $4cde: $30 $0c

    push hl                                       ; $4ce0: $e5
    ld b, $00                                     ; $4ce1: $06 $00
    ld [$d7ff], a                                 ; $4ce3: $ea $ff $d7

jr_0be_4ce6:
    add sp, -$53                                  ; $4ce6: $e8 $ad
    ret nc                                        ; $4ce8: $d0

    ld e, d                                       ; $4ce9: $5a
    and b                                         ; $4cea: $a0
    db $10                                        ; $4ceb: $10

jr_0be_4cec:
    or h                                          ; $4cec: $b4
    ret nz                                        ; $4ced: $c0

    ld e, b                                       ; $4cee: $58
    inc b                                         ; $4cef: $04
    nop                                           ; $4cf0: $00
    ld c, b                                       ; $4cf1: $48

jr_0be_4cf2:
    and b                                         ; $4cf2: $a0
    ld d, l                                       ; $4cf3: $55
    xor e                                         ; $4cf4: $ab
    nop                                           ; $4cf5: $00
    cp $01                                        ; $4cf6: $fe $01
    cpl                                           ; $4cf8: $2f
    nop                                           ; $4cf9: $00
    dec d                                         ; $4cfa: $15
    nop                                           ; $4cfb: $00
    ld [bc], a                                    ; $4cfc: $02
    nop                                           ; $4cfd: $00
    add b                                         ; $4cfe: $80
    ld bc, $3518                                  ; $4cff: $01 $18 $35
    rst $38                                       ; $4d02: $ff
    adc d                                         ; $4d03: $8a
    ld [hl], l                                    ; $4d04: $75
    rst $38                                       ; $4d05: $ff
    nop                                           ; $4d06: $00
    ld [hl], l                                    ; $4d07: $75
    jr nz, jr_0be_4d0a                            ; $4d08: $20 $00

jr_0be_4d0a:
    add b                                         ; $4d0a: $80
    db $10                                        ; $4d0b: $10
    jr nz, jr_0be_4d59                            ; $4d0c: $20 $4b

    or h                                          ; $4d0e: $b4
    cp a                                          ; $4d0f: $bf
    ld b, b                                       ; $4d10: $40
    add sp, $20                                   ; $4d11: $e8 $20
    nop                                           ; $4d13: $00
    ld d, b                                       ; $4d14: $50
    ld e, $20                                     ; $4d15: $1e $20
    nop                                           ; $4d17: $00
    nop                                           ; $4d18: $00
    add sp, $17                                   ; $4d19: $e8 $17
    ld e, l                                       ; $4d1b: $5d
    jr nz, jr_0be_4d20                            ; $4d1c: $20 $02

    ld b, $0e                                     ; $4d1e: $06 $0e

jr_0be_4d20:
    jr nc, jr_0be_4d22                            ; $4d20: $30 $00

jr_0be_4d22:
    nop                                           ; $4d22: $00
    dec d                                         ; $4d23: $15
    rst $38                                       ; $4d24: $ff
    ld d, h                                       ; $4d25: $54
    ld [$aaab], sp                                ; $4d26: $08 $ab $aa

jr_0be_4d29:
    ld bc, $4005                                  ; $4d29: $01 $05 $40
    jr nc, @+$57                                  ; $4d2c: $30 $55

    rst $38                                       ; $4d2e: $ff
    ld d, d                                       ; $4d2f: $52
    nop                                           ; $4d30: $00
    xor a                                         ; $4d31: $af

jr_0be_4d32:
    xor b                                         ; $4d32: $a8

jr_0be_4d33:
    ld d, a                                       ; $4d33: $57
    rst $38                                       ; $4d34: $ff
    nop                                           ; $4d35: $00
    xor d                                         ; $4d36: $aa
    nop                                           ; $4d37: $00
    ld bc, $5280                                  ; $4d38: $01 $80 $52
    db $10                                        ; $4d3b: $10
    rst $38                                       ; $4d3c: $ff
    rst $38                                       ; $4d3d: $ff
    cp $ff                                        ; $4d3e: $fe $ff
    jr z, @+$01                                   ; $4d40: $28 $ff

    ld d, d                                       ; $4d42: $52
    jr z, jr_0be_4cf2                             ; $4d43: $28 $ad

jr_0be_4d45:
    xor $44                                       ; $4d45: $ee $44
    nop                                           ; $4d47: $00
    jr nz, jr_0be_4d8a                            ; $4d48: $20 $40

jr_0be_4d4a:
    ld [$8aff], sp                                ; $4d4a: $08 $ff $8a
    push af                                       ; $4d4d: $f5
    inc b                                         ; $4d4e: $04
    ld e, e                                       ; $4d4f: $5b
    and b                                         ; $4d50: $a0
    call nc, $a000                                ; $4d51: $d4 $00 $a0
    ld [hl], b                                    ; $4d54: $70
    jr nz, @+$59                                  ; $4d55: $20 $57

    rst $38                                       ; $4d57: $ff
    nop                                           ; $4d58: $00

jr_0be_4d59:
    db $eb                                        ; $4d59: $eb
    rla                                           ; $4d5a: $17
    or l                                          ; $4d5b: $b5
    dec bc                                        ; $4d5c: $0b
    ld e, d                                       ; $4d5d: $5a
    dec b                                         ; $4d5e: $05
    dec l                                         ; $4d5f: $2d
    inc bc                                        ; $4d60: $03
    ld b, b                                       ; $4d61: $40
    ld a, [de]                                    ; $4d62: $1a
    inc b                                         ; $4d63: $04
    nop                                           ; $4d64: $00
    ld d, $01                                     ; $4d65: $16 $01
    jr nc, jr_0be_4d29                            ; $4d67: $30 $c0

    ld h, b                                       ; $4d69: $60
    add b                                         ; $4d6a: $80
    nop                                           ; $4d6b: $00
    db $10                                        ; $4d6c: $10
    ret nz                                        ; $4d6d: $c0

    ldh [$80], a                                  ; $4d6e: $e0 $80
    jr nc, jr_0be_4d32                            ; $4d70: $30 $c0

    adc b                                         ; $4d72: $88
    ldh [$0a], a                                  ; $4d73: $e0 $0a
    or b                                          ; $4d75: $b0
    ret nz                                        ; $4d76: $c0

    ret c                                         ; $4d77: $d8

    ldh [$97], a                                  ; $4d78: $e0 $97
    db $10                                        ; $4d7a: $10
    db $10                                        ; $4d7b: $10
    sbc l                                         ; $4d7c: $9d
    ld [$7001], sp                                ; $4d7d: $08 $01 $70
    ld b, b                                       ; $4d80: $40
    ld [hl], a                                    ; $4d81: $77
    jr c, jr_0be_4d32                             ; $4d82: $38 $ae

    db $10                                        ; $4d84: $10
    ld c, a                                       ; $4d85: $4f
    ld [$7f00], sp                                ; $4d86: $08 $00 $7f
    rst $38                                       ; $4d89: $ff

jr_0be_4d8a:
    add b                                         ; $4d8a: $80
    nop                                           ; $4d8b: $00
    rst $38                                       ; $4d8c: $ff
    and l                                         ; $4d8d: $a5
    ret nz                                        ; $4d8e: $c0

    sbc d                                         ; $4d8f: $9a
    push bc                                       ; $4d90: $c5
    sbc h                                         ; $4d91: $9c
    ret nz                                        ; $4d92: $c0

    cp d                                          ; $4d93: $ba
    nop                                           ; $4d94: $00
    pop bc                                        ; $4d95: $c1
    sub l                                         ; $4d96: $95
    jp nz, $c5b2                                  ; $4d97: $c2 $b2 $c5

    rst $38                                       ; $4d9a: $ff
    rst $38                                       ; $4d9b: $ff
    nop                                           ; $4d9c: $00
    jr nz, @+$01                                  ; $4d9d: $20 $ff

    ld a, a                                       ; $4d9f: $7f
    ld [hl], a                                    ; $4da0: $77
    nop                                           ; $4da1: $00
    ld b, b                                       ; $4da2: $40
    ccf                                           ; $4da3: $3f
    jr nz, jr_0be_4d45                            ; $4da4: $20 $9f

    ld b, b                                       ; $4da6: $40
    inc d                                         ; $4da7: $14
    sbc a                                         ; $4da8: $9f
    jr nz, jr_0be_4d4a                            ; $4da9: $20 $9f

    db $10                                        ; $4dab: $10
    ld [$87fe], sp                                ; $4dac: $08 $fe $87
    nop                                           ; $4daf: $00
    ld [bc], a                                    ; $4db0: $02
    db $fc                                        ; $4db1: $fc
    ld [$f805], sp                                ; $4db2: $08 $05 $f8
    ld [bc], a                                    ; $4db5: $02
    reti                                          ; $4db6: $d9


    inc c                                         ; $4db7: $0c
    nop                                           ; $4db8: $00
    rst $38                                       ; $4db9: $ff
    ld bc, $00ff                                  ; $4dba: $01 $ff $00
    and l                                         ; $4dbd: $a5
    inc bc                                        ; $4dbe: $03
    cp c                                          ; $4dbf: $b9
    ld b, e                                       ; $4dc0: $43
    add hl, sp                                    ; $4dc1: $39
    inc bc                                        ; $4dc2: $03
    db $dd                                        ; $4dc3: $dd
    inc bc                                        ; $4dc4: $03
    ld [$8369], sp                                ; $4dc5: $08 $69 $83
    xor l                                         ; $4dc8: $ad
    ld b, e                                       ; $4dc9: $43
    rst $30                                       ; $4dca: $f7
    ld [$00c0], sp                                ; $4dcb: $08 $c0 $00
    jp nz, Jump_000_049b                          ; $4dce: $c2 $9b $04

    nop                                           ; $4dd1: $00
    ret nz                                        ; $4dd2: $c0

    jr nz, jr_0be_4dd9                            ; $4dd3: $20 $04

    nop                                           ; $4dd5: $00
    ld b, $19                                     ; $4dd6: $06 $19
    inc b                                         ; $4dd8: $04

jr_0be_4dd9:
    dec c                                         ; $4dd9: $0d
    ld de, $0103                                  ; $4dda: $11 $03 $01

jr_0be_4ddd:
    nop                                           ; $4ddd: $00
    ld [bc], a                                    ; $4dde: $02
    nop                                           ; $4ddf: $00
    ld a, [bc]                                    ; $4de0: $0a
    ld bc, $0007                                  ; $4de1: $01 $07 $00
    ld b, $01                                     ; $4de4: $06 $01
    ld b, b                                       ; $4de6: $40
    dec bc                                        ; $4de7: $0b
    inc b                                         ; $4de8: $04
    nop                                           ; $4de9: $00
    rrca                                          ; $4dea: $0f
    nop                                           ; $4deb: $00
    ld d, $01                                     ; $4dec: $16 $01
    dec c                                         ; $4dee: $0d
    inc bc                                        ; $4def: $03
    nop                                           ; $4df0: $00
    add b                                         ; $4df1: $80
    ldh a, [$d8]                                  ; $4df2: $f0 $d8
    ldh [$c8], a                                  ; $4df4: $e0 $c8
    ldh a, [$e8]                                  ; $4df6: $f0 $e8
    ldh a, [rTAC]                                 ; $4df8: $f0 $07
    call nc, $eae0                                ; $4dfa: $d4 $e0 $ea
    ldh a, [$dc]                                  ; $4dfd: $f0 $dc
    ld a, [bc]                                    ; $4dff: $0a
    nop                                           ; $4e00: $00
    dec hl                                        ; $4e01: $2b
    db $10                                        ; $4e02: $10
    adc d                                         ; $4e03: $8a
    db $10                                        ; $4e04: $10
    ldh [rSCX], a                                 ; $4e05: $e0 $43
    add hl, hl                                    ; $4e07: $29
    xor l                                         ; $4e08: $ad
    db $10                                        ; $4e09: $10
    jr nc, jr_0be_4e35                            ; $4e0a: $30 $29

    inc b                                         ; $4e0c: $04
    sbc h                                         ; $4e0d: $9c
    jp nz, $c4ba                                  ; $4e0e: $c2 $ba $c4

    ld [$c2bd], sp                                ; $4e11: $08 $bd $c2
    cp d                                          ; $4e14: $ba
    push bc                                       ; $4e15: $c5
    inc b                                         ; $4e16: $04
    jr nz, jr_0be_4ddd                            ; $4e17: $20 $c4

    ld b, b                                       ; $4e19: $40
    ccf                                           ; $4e1a: $3f
    ld b, b                                       ; $4e1b: $40
    nop                                           ; $4e1c: $00
    and d                                         ; $4e1d: $a2
    nop                                           ; $4e1e: $00
    nop                                           ; $4e1f: $00
    ld a, a                                       ; $4e20: $7f
    jr nz, @-$3e                                  ; $4e21: $20 $c0

    sbc b                                         ; $4e23: $98
    rlca                                          ; $4e24: $07
    jr z, jr_0be_4e47                             ; $4e25: $28 $20

    rra                                           ; $4e27: $1f
    ld c, $00                                     ; $4e28: $0e $00
    ld [hl], a                                    ; $4e2a: $77
    stop                                          ; $4e2b: $10 $00
    xor a                                         ; $4e2d: $af
    nop                                           ; $4e2e: $00
    rst $38                                       ; $4e2f: $ff
    nop                                           ; $4e30: $00

jr_0be_4e31:
    ld [$3207], sp                                ; $4e31: $08 $07 $32
    pop bc                                        ; $4e34: $c1

jr_0be_4e35:
    nop                                           ; $4e35: $00
    ld hl, sp+$00                                 ; $4e36: $f8 $00
    db $fc                                        ; $4e38: $fc
    ld [bc], a                                    ; $4e39: $02
    add hl, de                                    ; $4e3a: $19
    inc bc                                        ; $4e3b: $03
    dec a                                         ; $4e3c: $3d
    ld b, e                                       ; $4e3d: $43
    ld e, l                                       ; $4e3e: $5d
    and e                                         ; $4e3f: $a3
    inc b                                         ; $4e40: $04
    ld [$00bd], sp                                ; $4e41: $08 $bd $00
    ld b, e                                       ; $4e44: $43
    db $dd                                        ; $4e45: $dd
    inc hl                                        ; $4e46: $23

jr_0be_4e47:
    ld a, l                                       ; $4e47: $7d
    inc bc                                        ; $4e48: $03
    ret nz                                        ; $4e49: $c0

    nop                                           ; $4e4a: $00
    ret nc                                        ; $4e4b: $d0

    ld hl, sp-$64                                 ; $4e4c: $f8 $9c
    ld [$2804], sp                                ; $4e4e: $08 $04 $28
    sbc d                                         ; $4e51: $9a
    jr jr_0be_4eb9                                ; $4e52: $18 $65

    jr z, @-$56                                   ; $4e54: $28 $a8

    nop                                           ; $4e56: $00
    ld d, $01                                     ; $4e57: $16 $01
    inc c                                         ; $4e59: $0c
    inc l                                         ; $4e5a: $2c
    inc bc                                        ; $4e5b: $03
    dec c                                         ; $4e5c: $0d
    ld [bc], a                                    ; $4e5d: $02
    nop                                           ; $4e5e: $00
    ld b, $9c                                     ; $4e5f: $06 $9c
    nop                                           ; $4e61: $00
    inc b                                         ; $4e62: $04
    ld [$e094], sp                                ; $4e63: $08 $94 $e0
    nop                                           ; $4e66: $00
    ld e, b                                       ; $4e67: $58
    ldh [$90], a                                  ; $4e68: $e0 $90
    ldh [$38], a                                  ; $4e6a: $e0 $38
    ret nz                                        ; $4e6c: $c0

    ret nc                                        ; $4e6d: $d0

    and b                                         ; $4e6e: $a0
    or d                                          ; $4e6f: $b2
    inc b                                         ; $4e70: $04
    jr jr_0be_4e7b                                ; $4e71: $18 $08

    ccf                                           ; $4e73: $3f
    add hl, de                                    ; $4e74: $19
    adc l                                         ; $4e75: $8d
    add hl, de                                    ; $4e76: $19
    nop                                           ; $4e77: $00
    ld b, b                                       ; $4e78: $40
    ret c                                         ; $4e79: $d8

    add hl, hl                                    ; $4e7a: $29

jr_0be_4e7b:
    ld b, c                                       ; $4e7b: $41
    add [hl]                                      ; $4e7c: $86
    pop de                                        ; $4e7d: $d1
    add hl, hl                                    ; $4e7e: $29
    cp h                                          ; $4e7f: $bc
    ret nz                                        ; $4e80: $c0

    cp b                                          ; $4e81: $b8
    call nz, $1804                                ; $4e82: $c4 $04 $18
    xor b                                         ; $4e85: $a8
    jr jr_0be_4e88                                ; $4e86: $18 $00

jr_0be_4e88:
    ld hl, $807f                                  ; $4e88: $21 $7f $80
    ld [bc], a                                    ; $4e8b: $02
    nop                                           ; $4e8c: $00
    nop                                           ; $4e8d: $00
    rst $38                                       ; $4e8e: $ff
    add b                                         ; $4e8f: $80
    ld a, a                                       ; $4e90: $7f
    xor d                                         ; $4e91: $aa

jr_0be_4e92:
    jr jr_0be_4e94                                ; $4e92: $18 $00

jr_0be_4e94:
    ld [bc], a                                    ; $4e94: $02
    db $fc                                        ; $4e95: $fc
    ld [bc], a                                    ; $4e96: $02
    db $fc                                        ; $4e97: $fc
    nop                                           ; $4e98: $00
    cp $00                                        ; $4e99: $fe $00
    cp $80                                        ; $4e9b: $fe $80
    ld [$0408], sp                                ; $4e9d: $08 $08 $04
    ld hl, sp+$70                                 ; $4ea0: $f8 $70
    add b                                         ; $4ea2: $80
    dec e                                         ; $4ea3: $1d
    inc hl                                        ; $4ea4: $23
    dec a                                         ; $4ea5: $3d
    ld b, d                                       ; $4ea6: $42
    inc bc                                        ; $4ea7: $03
    ld [bc], a                                    ; $4ea8: $02
    jr z, jr_0be_4f08                             ; $4ea9: $28 $5d

    inc hl                                        ; $4eab: $23
    cp l                                          ; $4eac: $bd
    ld b, e                                       ; $4ead: $43
    sbc h                                         ; $4eae: $9c
    jr jr_0be_4e31                                ; $4eaf: $18 $80

    ld a, h                                       ; $4eb1: $7c
    ld b, c                                       ; $4eb2: $41
    and h                                         ; $4eb3: $a4
    jr z, @+$66                                   ; $4eb4: $28 $64

    ld [$286f], sp                                ; $4eb6: $08 $6f $28

jr_0be_4eb9:
    or a                                          ; $4eb9: $b7
    add hl, bc                                    ; $4eba: $09
    sbc b                                         ; $4ebb: $98
    nop                                           ; $4ebc: $00
    ld [bc], a                                    ; $4ebd: $02
    ld b, $40                                     ; $4ebe: $06 $40
    ld bc, $0946                                  ; $4ec0: $01 $46 $09
    ld [bc], a                                    ; $4ec3: $02
    ld bc, $0003                                  ; $4ec4: $01 $03 $00
    inc bc                                        ; $4ec7: $03
    nop                                           ; $4ec8: $00
    nop                                           ; $4ec9: $00
    sub b                                         ; $4eca: $90
    ldh [$28], a                                  ; $4ecb: $e0 $28
    ret nz                                        ; $4ecd: $c0

    ret nc                                        ; $4ece: $d0

jr_0be_4ecf:
    add b                                         ; $4ecf: $80
    jr nz, jr_0be_4e92                            ; $4ed0: $20 $c0

    ld e, [hl]                                    ; $4ed2: $5e
    ret nz                                        ; $4ed3: $c0

    inc b                                         ; $4ed4: $04
    nop                                           ; $4ed5: $00
    ld b, b                                       ; $4ed6: $40
    ld [$7700], sp                                ; $4ed7: $08 $00 $77
    ld [hl+], a                                   ; $4eda: $22
    ld b, d                                       ; $4edb: $42
    add hl, de                                    ; $4edc: $19
    add sp, $01                                   ; $4edd: $e8 $01
    ld b, b                                       ; $4edf: $40
    ldh a, [$89]                                  ; $4ee0: $f0 $89
    ld [hl+], a                                   ; $4ee2: $22
    cp b                                          ; $4ee3: $b8
    ld [$0a93], sp                                ; $4ee4: $08 $93 $0a
    inc a                                         ; $4ee7: $3c
    ld hl, $bdc1                                  ; $4ee8: $21 $c1 $bd
    jp nz, $96aa                                  ; $4eeb: $c2 $aa $96

    ld c, b                                       ; $4eee: $48
    ld bc, $c5b0                                  ; $4eef: $01 $b0 $c5
    adc h                                         ; $4ef2: $8c
    ld [$0201], sp                                ; $4ef3: $08 $01 $02
    nop                                           ; $4ef6: $00
    ld b, [hl]                                    ; $4ef7: $46
    ld de, $02ff                                  ; $4ef8: $11 $ff $02
    inc bc                                        ; $4efb: $03
    db $fc                                        ; $4efc: $fc
    ld [bc], a                                    ; $4efd: $02
    ld bc, $7e80                                  ; $4efe: $01 $80 $7e
    ld d, h                                       ; $4f01: $54
    ld bc, $0e3b                                  ; $4f02: $01 $3b $0e
    nop                                           ; $4f05: $00
    ccf                                           ; $4f06: $3f
    ld b, b                                       ; $4f07: $40

jr_0be_4f08:
    dec a                                         ; $4f08: $3d
    ld e, d                                       ; $4f09: $5a
    add hl, bc                                    ; $4f0a: $09
    jr c, @+$0b                                   ; $4f0b: $38 $09

    inc a                                         ; $4f0d: $3c
    ld bc, $9703                                  ; $4f0e: $01 $03 $97
    ld b, h                                       ; $4f11: $44
    add hl, hl                                    ; $4f12: $29
    ret nz                                        ; $4f13: $c0

    ld [bc], a                                    ; $4f14: $02
    ld a, $19                                     ; $4f15: $3e $19
    ret z                                         ; $4f17: $c8

    ld b, [hl]                                    ; $4f18: $46
    ld hl, $2858                                  ; $4f19: $21 $58 $28
    xor b                                         ; $4f1c: $a8
    jr jr_0be_4ecf                                ; $4f1d: $18 $b0

    add hl, de                                    ; $4f1f: $19
    add hl, bc                                    ; $4f20: $09
    inc bc                                        ; $4f21: $03
    xor d                                         ; $4f22: $aa
    ld [bc], a                                    ; $4f23: $02
    sbc h                                         ; $4f24: $9c
    ld [$0106], sp                                ; $4f25: $08 $06 $01
    inc b                                         ; $4f28: $04
    inc bc                                        ; $4f29: $03
    ld [hl], e                                    ; $4f2a: $73
    ld [bc], a                                    ; $4f2b: $02
    or l                                          ; $4f2c: $b5
    ld a, [de]                                    ; $4f2d: $1a
    ld l, d                                       ; $4f2e: $6a
    ld a, [de]                                    ; $4f2f: $1a
    ld l, h                                       ; $4f30: $6c
    add hl, hl                                    ; $4f31: $29

jr_0be_4f32:
    nop                                           ; $4f32: $00
    ld bc, $19e0                                  ; $4f33: $01 $e0 $19
    sub b                                         ; $4f36: $90
    ld c, b                                       ; $4f37: $48
    ld b, b                                       ; $4f38: $40
    push bc                                       ; $4f39: $c5
    jr nc, jr_0be_4f3d                            ; $4f3a: $30 $01

    pop bc                                        ; $4f3c: $c1

jr_0be_4f3d:
    or l                                          ; $4f3d: $b5
    jp nz, $c59a                                  ; $4f3e: $c2 $9a $c5

    nop                                           ; $4f41: $00
    nop                                           ; $4f42: $00
    ld hl, sp+$08                                 ; $4f43: $f8 $08
    ldh a, [$08]                                  ; $4f45: $f0 $08
    ldh a, [rP1]                                  ; $4f47: $f0 $00
    ld hl, sp+$43                                 ; $4f49: $f8 $43
    dec bc                                        ; $4f4b: $0b
    inc a                                         ; $4f4c: $3c
    and b                                         ; $4f4d: $a0
    rra                                           ; $4f4e: $1f
    ld b, b                                       ; $4f4f: $40
    ld [hl], d                                    ; $4f50: $72
    ld [bc], a                                    ; $4f51: $02
    nop                                           ; $4f52: $00
    jr c, jr_0be_4f56                             ; $4f53: $38 $01

    db $e4                                        ; $4f55: $e4

jr_0be_4f56:
    ld bc, $7f01                                  ; $4f56: $01 $01 $7f
    ld [bc], a                                    ; $4f59: $02
    db $fc                                        ; $4f5a: $fc
    ld bc, $00fc                                  ; $4f5b: $01 $fc $00
    cp a                                          ; $4f5e: $bf
    sub b                                         ; $4f5f: $90
    jr nc, @+$24                                  ; $4f60: $30 $22

    ld b, e                                       ; $4f62: $43
    dec a                                         ; $4f63: $3d
    ld [hl], b                                    ; $4f64: $70
    ld [bc], a                                    ; $4f65: $02
    ld l, l                                       ; $4f66: $6d
    add e                                         ; $4f67: $83
    xor c                                         ; $4f68: $a9
    jr nc, jr_0be_4f7c                            ; $4f69: $30 $11

    pop bc                                        ; $4f6b: $c1
    pop af                                        ; $4f6c: $f1
    ld l, d                                       ; $4f6d: $6a
    ld [de], a                                    ; $4f6e: $12
    jr nc, jr_0be_4f9a                            ; $4f6f: $30 $29

    ld [$f120], a                                 ; $4f71: $ea $20 $f1
    jr nz, jr_0be_4f32                            ; $4f74: $20 $bc

    jp nz, Jump_000_309a                          ; $4f76: $c2 $9a $30

    ld [bc], a                                    ; $4f79: $02
    nop                                           ; $4f7a: $00
    sbc d                                         ; $4f7b: $9a

jr_0be_4f7c:
    call nz, $c29d                                ; $4f7c: $c4 $9d $c2
    and l                                         ; $4f7f: $a5
    ret nz                                        ; $4f80: $c0

    add b                                         ; $4f81: $80
    rst $38                                       ; $4f82: $ff
    ld c, $7f                                     ; $4f83: $0e $7f
    rst $38                                       ; $4f85: $ff
    jr nz, jr_0be_4fa6                            ; $4f86: $20 $1e

    ld [$d618], a                                 ; $4f88: $ea $18 $d6
    ld a, [de]                                    ; $4f8b: $1a
    sbc $02                                       ; $4f8c: $de $02
    rst $28                                       ; $4f8e: $ef
    or b                                          ; $4f8f: $b0
    ld b, b                                       ; $4f90: $40
    ld [bc], a                                    ; $4f91: $02
    ld e, a                                       ; $4f92: $5f
    sub d                                         ; $4f93: $92
    ld bc, $12d6                                  ; $4f94: $01 $d6 $12
    rst $38                                       ; $4f97: $ff
    rst $38                                       ; $4f98: $ff
    ld l, c                                       ; $4f99: $69

jr_0be_4f9a:
    inc bc                                        ; $4f9a: $03
    db $10                                        ; $4f9b: $10
    sbc l                                         ; $4f9c: $9d
    inc bc                                        ; $4f9d: $03
    ld e, c                                       ; $4f9e: $59
    inc l                                         ; $4f9f: $2c
    ld [bc], a                                    ; $4fa0: $02
    ld e, c                                       ; $4fa1: $59
    and e                                         ; $4fa2: $a3
    and l                                         ; $4fa3: $a5
    inc bc                                        ; $4fa4: $03
    ld a, a                                       ; $4fa5: $7f

jr_0be_4fa6:
    ld bc, $036c                                  ; $4fa6: $01 $6c $03
    inc l                                         ; $4fa9: $2c
    ld a, [de]                                    ; $4faa: $1a
    ret nc                                        ; $4fab: $d0

    ld a, [hl-]                                   ; $4fac: $3a
    adc e                                         ; $4fad: $8b
    nop                                           ; $4fae: $00
    sub b                                         ; $4faf: $90
    ld d, c                                       ; $4fb0: $51
    ld a, l                                       ; $4fb1: $7d
    ld a, [bc]                                    ; $4fb2: $0a
    ld bc, $ef31                                  ; $4fb3: $01 $31 $ef
    dec e                                         ; $4fb6: $1d
    ld [bc], a                                    ; $4fb7: $02
    db $10                                        ; $4fb8: $10
    jr nc, jr_0be_5019                            ; $4fb9: $30 $5e

    inc de                                        ; $4fbb: $13
    add b                                         ; $4fbc: $80
    sbc l                                         ; $4fbd: $9d
    ld [de], a                                    ; $4fbe: $12
    jr nc, jr_0be_500b                            ; $4fbf: $30 $4a

    add b                                         ; $4fc1: $80
    ld a, [bc]                                    ; $4fc2: $0a

jr_0be_4fc3:
    ret nc                                        ; $4fc3: $d0

    ld c, d                                       ; $4fc4: $4a
    nop                                           ; $4fc5: $00
    or b                                          ; $4fc6: $b0
    ret nz                                        ; $4fc7: $c0

    ld l, b                                       ; $4fc8: $68
    add b                                         ; $4fc9: $80
    ldh a, [rP1]                                  ; $4fca: $f0 $00
    ld h, b                                       ; $4fcc: $60
    add b                                         ; $4fcd: $80
    ld b, e                                       ; $4fce: $43
    ret nc                                        ; $4fcf: $d0

    inc b                                         ; $4fd0: $04
    nop                                           ; $4fd1: $00
    ret nz                                        ; $4fd2: $c0

    nop                                           ; $4fd3: $00
    ld b, b                                       ; $4fd4: $40
    add b                                         ; $4fd5: $80
    jr z, @+$0e                                   ; $4fd6: $28 $0c

    nop                                           ; $4fd8: $00
    ld c, d                                       ; $4fd9: $4a
    nop                                           ; $4fda: $00
    dec de                                        ; $4fdb: $1b
    rlca                                          ; $4fdc: $07
    dec c                                         ; $4fdd: $0d
    inc bc                                        ; $4fde: $03
    ld de, $0c07                                  ; $4fdf: $11 $07 $0c
    inc bc                                        ; $4fe2: $03
    ld de, $0107                                  ; $4fe3: $11 $07 $01
    ld [$0294], sp                                ; $4fe6: $08 $94 $02
    inc b                                         ; $4fe9: $04
    inc bc                                        ; $4fea: $03
    ccf                                           ; $4feb: $3f
    add d                                         ; $4fec: $82
    nop                                           ; $4fed: $00
    sbc a                                         ; $4fee: $9f
    pop de                                        ; $4fef: $d1
    ld c, c                                       ; $4ff0: $49
    ld a, a                                       ; $4ff1: $7f
    add b                                         ; $4ff2: $80
    add b                                         ; $4ff3: $80
    jr jr_0be_4fc3                                ; $4ff4: $18 $cd

    dec hl                                        ; $4ff6: $2b
    sub b                                         ; $4ff7: $90
    jr c, jr_0be_5060                             ; $4ff8: $38 $66

    add hl, de                                    ; $4ffa: $19
    and b                                         ; $4ffb: $a0
    db $10                                        ; $4ffc: $10
    cp $80                                        ; $4ffd: $fe $80
    ld b, c                                       ; $4fff: $41
    ret nz                                        ; $5000: $c0

    add hl, bc                                    ; $5001: $09
    db $10                                        ; $5002: $10
    ld c, d                                       ; $5003: $4a
    ld l, h                                       ; $5004: $6c
    inc hl                                        ; $5005: $23
    rla                                           ; $5006: $17
    inc [hl]                                      ; $5007: $34
    xor b                                         ; $5008: $a8
    inc e                                         ; $5009: $1c
    ld [hl], h                                    ; $500a: $74

jr_0be_500b:
    inc sp                                        ; $500b: $33
    add b                                         ; $500c: $80
    sbc [hl]                                      ; $500d: $9e
    and b                                         ; $500e: $a0
    ld e, b                                       ; $500f: $58
    ld d, b                                       ; $5010: $50
    add b                                         ; $5011: $80
    dec [hl]                                      ; $5012: $35
    inc d                                         ; $5013: $14
    db $dd                                        ; $5014: $dd
    inc l                                         ; $5015: $2c
    ld b, e                                       ; $5016: $43
    ld a, b                                       ; $5017: $78
    and c                                         ; $5018: $a1

Jump_0be_5019:
jr_0be_5019:
    inc b                                         ; $5019: $04
    ld a, a                                       ; $501a: $7f
    jr nz, @+$01                                  ; $501b: $20 $ff

    ld b, b                                       ; $501d: $40
    ld [bc], a                                    ; $501e: $02
    ld b, b                                       ; $501f: $40
    rra                                           ; $5020: $1f
    rst $38                                       ; $5021: $ff
    rst $38                                       ; $5022: $ff
    db $ec                                        ; $5023: $ec
    ccf                                           ; $5024: $3f
    nop                                           ; $5025: $00
    ld a, [$f73f]                                 ; $5026: $fa $3f $f7
    ld a, a                                       ; $5029: $7f
    call $e03f                                    ; $502a: $cd $3f $e0
    rra                                           ; $502d: $1f
    db $10                                        ; $502e: $10
    ld sp, hl                                     ; $502f: $f9
    rra                                           ; $5030: $1f
    pop af                                        ; $5031: $f1
    ld [hl], h                                    ; $5032: $74
    add hl, bc                                    ; $5033: $09
    rst $18                                       ; $5034: $df
    ld h, b                                       ; $5035: $60
    ret nz                                        ; $5036: $c0

    ld a, a                                       ; $5037: $7f
    ld bc, $fec1                                  ; $5038: $01 $c1 $fe
    ld hl, sp-$01                                 ; $503b: $f8 $ff
    call nz, $f8ff                                ; $503d: $c4 $ff $f8
    ld c, [hl]                                    ; $5040: $4e
    inc c                                         ; $5041: $0c
    nop                                           ; $5042: $00
    rst $38                                       ; $5043: $ff
    and d                                         ; $5044: $a2
    ld e, a                                       ; $5045: $5f
    ld [bc], a                                    ; $5046: $02
    rst $38                                       ; $5047: $ff
    ld [$0217], a                                 ; $5048: $ea $17 $02
    nop                                           ; $504b: $00
    rst $38                                       ; $504c: $ff
    ld [bc], a                                    ; $504d: $02
    rst $38                                       ; $504e: $ff
    ld a, [hl-]                                   ; $504f: $3a
    push bc                                       ; $5050: $c5
    rrca                                          ; $5051: $0f
    rst $38                                       ; $5052: $ff
    ld a, b                                       ; $5053: $78
    nop                                           ; $5054: $00
    db $fc                                        ; $5055: $fc
    ld d, l                                       ; $5056: $55
    rst $10                                       ; $5057: $d7
    adc h                                         ; $5058: $8c
    cp [hl]                                       ; $5059: $be
    sub c                                         ; $505a: $91
    rst $38                                       ; $505b: $ff
    ld a, h                                       ; $505c: $7c
    jr nc, @+$01                                  ; $505d: $30 $ff

    ld b, a                                       ; $505f: $47

jr_0be_5060:
    ld c, d                                       ; $5060: $4a
    nop                                           ; $5061: $00

jr_0be_5062:
    and h                                         ; $5062: $a4
    add hl, bc                                    ; $5063: $09
    ld [$d7ff], sp                                ; $5064: $08 $ff $d7
    rst $30                                       ; $5067: $f7
    nop                                           ; $5068: $00
    ccf                                           ; $5069: $3f
    cp a                                          ; $506a: $bf
    nop                                           ; $506b: $00
    and $90                                       ; $506c: $e6 $90
    ei                                            ; $506e: $fb
    ld [hl], b                                    ; $506f: $70
    ld sp, hl                                     ; $5070: $f9
    add b                                         ; $5071: $80
    or h                                          ; $5072: $b4
    add hl, bc                                    ; $5073: $09
    sub h                                         ; $5074: $94
    rst $38                                       ; $5075: $ff
    ld a, [hl]                                    ; $5076: $7e
    ld a, a                                       ; $5077: $7f
    pop bc                                        ; $5078: $c1
    db $d3                                        ; $5079: $d3
    nop                                           ; $507a: $00
    ld b, $7f                                     ; $507b: $06 $7f
    ld de, $08db                                  ; $507d: $11 $db $08
    xor l                                         ; $5080: $ad
    add d                                         ; $5081: $82
    inc c                                         ; $5082: $0c
    ld a, [hl-]                                   ; $5083: $3a
    ld [$0182], sp                                ; $5084: $08 $82 $01
    rst $38                                       ; $5087: $ff
    ld h, d                                       ; $5088: $62
    ld a, a                                       ; $5089: $7f
    ld a, [de]                                    ; $508a: $1a
    rst $18                                       ; $508b: $df
    add $f7                                       ; $508c: $c6 $f7
    add b                                         ; $508e: $80
    jr jr_0be_5091                                ; $508f: $18 $00

jr_0be_5091:
    rst $08                                       ; $5091: $cf
    rst $38                                       ; $5092: $ff
    jr nc, @+$01                                  ; $5093: $30 $ff

    ld h, b                                       ; $5095: $60
    ld [c], a                                     ; $5096: $e2
    ld h, b                                       ; $5097: $60
    ld [c], a                                     ; $5098: $e2
    jr nz, jr_0be_5103                            ; $5099: $20 $68

    ld [$11e4], a                                 ; $509b: $ea $e4 $11
    rst $38                                       ; $509e: $ff
    sbc b                                         ; $509f: $98
    rst $38                                       ; $50a0: $ff
    ld h, d                                       ; $50a1: $62
    db $fd                                        ; $50a2: $fd
    ld [bc], a                                    ; $50a3: $02
    jr nc, jr_0be_50e5                            ; $50a4: $30 $3f

    jr nz, @+$41                                  ; $50a6: $20 $3f

    and c                                         ; $50a8: $a1
    cp [hl]                                       ; $50a9: $be
    db $10                                        ; $50aa: $10
    jr jr_0be_50ad                                ; $50ab: $18 $00

jr_0be_50ad:
    ld [de], a                                    ; $50ad: $12
    rst $38                                       ; $50ae: $ff
    cp a                                          ; $50af: $bf
    ld b, b                                       ; $50b0: $40
    jr c, @+$0e                                   ; $50b1: $38 $0c

    jp nc, Jump_0be_402d                          ; $50b3: $d2 $2d $40

    jr z, jr_0be_5062                             ; $50b6: $28 $aa

    ld c, a                                       ; $50b8: $4f
    ld d, a                                       ; $50b9: $57
    add b                                         ; $50ba: $80
    ld [$bf42], sp                                ; $50bb: $08 $42 $bf
    bit 2, b                                      ; $50be: $cb $50
    db $fc                                        ; $50c0: $fc
    inc b                                         ; $50c1: $04
    call z, $d848                                 ; $50c2: $cc $48 $d8
    ld [$0f00], sp                                ; $50c5: $08 $00 $0f
    rst $38                                       ; $50c8: $ff
    inc bc                                        ; $50c9: $03
    rst $38                                       ; $50ca: $ff
    db $ed                                        ; $50cb: $ed
    rst $38                                       ; $50cc: $ff
    cp $f3                                        ; $50cd: $fe $f3
    db $10                                        ; $50cf: $10
    ld a, a                                       ; $50d0: $7f
    swap a                                        ; $50d1: $cb $37
    ld [hl-], a                                   ; $50d3: $32
    inc de                                        ; $50d4: $13
    ld l, $ff                                     ; $50d5: $2e $ff
    or l                                          ; $50d7: $b5
    rst $38                                       ; $50d8: $ff
    db $10                                        ; $50d9: $10
    cp a                                          ; $50da: $bf
    rst $38                                       ; $50db: $ff
    ccf                                           ; $50dc: $3f
    ld e, d                                       ; $50dd: $5a
    ld [bc], a                                    ; $50de: $02
    ei                                            ; $50df: $fb
    rst $38                                       ; $50e0: $ff
    ld [hl], a                                    ; $50e1: $77
    rst $38                                       ; $50e2: $ff
    ld b, b                                       ; $50e3: $40
    add hl, sp                                    ; $50e4: $39

jr_0be_50e5:
    call nz, $c200                                ; $50e5: $c4 $00 $c2
    rst $38                                       ; $50e8: $ff
    and d                                         ; $50e9: $a2
    rst $38                                       ; $50ea: $ff
    jp nc, Jump_000_00ff                          ; $50eb: $d2 $ff $00

    sub $ff                                       ; $50ee: $d6 $ff
    ld a, e                                       ; $50f0: $7b
    db $fd                                        ; $50f1: $fd
    sub a                                         ; $50f2: $97
    db $eb                                        ; $50f3: $eb
    ei                                            ; $50f4: $fb
    push af                                       ; $50f5: $f5
    nop                                           ; $50f6: $00
    add hl, sp                                    ; $50f7: $39
    db $fd                                        ; $50f8: $fd
    dec l                                         ; $50f9: $2d
    db $fd                                        ; $50fa: $fd
    inc h                                         ; $50fb: $24
    xor $2e                                       ; $50fc: $ee $2e
    xor $00                                       ; $50fe: $ee $00
    ld a, [hl+]                                   ; $5100: $2a
    rst $38                                       ; $5101: $ff
    ld d, h                                       ; $5102: $54

jr_0be_5103:
    db $dd                                        ; $5103: $dd
    ld c, l                                       ; $5104: $4d
    db $fd                                        ; $5105: $fd
    or h                                          ; $5106: $b4
    cp l                                          ; $5107: $bd
    nop                                           ; $5108: $00
    inc b                                         ; $5109: $04
    ld d, a                                       ; $510a: $57
    ld c, $af                                     ; $510b: $0e $af
    adc d                                         ; $510d: $8a
    rst $18                                       ; $510e: $df
    ld b, l                                       ; $510f: $45
    rst $28                                       ; $5110: $ef
    nop                                           ; $5111: $00
    add l                                         ; $5112: $85
    rst $10                                       ; $5113: $d7
    inc bc                                        ; $5114: $03
    xor e                                         ; $5115: $ab
    inc bc                                        ; $5116: $03
    rla                                           ; $5117: $17
    ld [bc], a                                    ; $5118: $02

jr_0be_5119:
    adc e                                         ; $5119: $8b
    nop                                           ; $511a: $00
    cp d                                          ; $511b: $ba
    rst $38                                       ; $511c: $ff
    add [hl]                                      ; $511d: $86
    rst $38                                       ; $511e: $ff
    ld h, d                                       ; $511f: $62
    rst $38                                       ; $5120: $ff
    jp c, Jump_000_00ff                           ; $5121: $da $ff $00

    ld [hl-], a                                   ; $5124: $32
    rst $38                                       ; $5125: $ff
    or d                                          ; $5126: $b2
    rst $38                                       ; $5127: $ff
    ld a, [hl-]                                   ; $5128: $3a
    rst $38                                       ; $5129: $ff
    xor d                                         ; $512a: $aa
    rst $38                                       ; $512b: $ff
    ld bc, $ff52                                  ; $512c: $01 $52 $ff
    ld c, l                                       ; $512f: $4d
    db $fd                                        ; $5130: $fd
    ld d, [hl]                                    ; $5131: $56
    rst $38                                       ; $5132: $ff
    ld c, d                                       ; $5133: $4a
    db $fc                                        ; $5134: $fc
    db $10                                        ; $5135: $10
    add d                                         ; $5136: $82
    ld c, b                                       ; $5137: $48
    add hl, bc                                    ; $5138: $09
    ld a, h                                       ; $5139: $7c
    rst $38                                       ; $513a: $ff
    jp z, Jump_0be_53ff                           ; $513b: $ca $ff $53

    ld [hl], h                                    ; $513e: $74
    nop                                           ; $513f: $00
    dec b                                         ; $5140: $05
    jr nc, @+$01                                  ; $5141: $30 $ff

    ld a, [$056a]                                 ; $5143: $fa $6a $05
    and [hl]                                      ; $5146: $a6
    dec de                                        ; $5147: $1b
    add b                                         ; $5148: $80
    rst $38                                       ; $5149: $ff
    ld e, a                                       ; $514a: $5f
    ldh [rPCM12], a                               ; $514b: $e0 $76
    ret nz                                        ; $514d: $c0

    xor b                                         ; $514e: $a8
    dec b                                         ; $514f: $05
    ei                                            ; $5150: $fb
    ld bc, $10fc                                  ; $5151: $01 $fc $10
    ld [bc], a                                    ; $5154: $02
    inc h                                         ; $5155: $24
    ld b, $08                                     ; $5156: $06 $08
    jr jr_0be_515c                                ; $5158: $18 $02

    xor l                                         ; $515a: $ad
    ld a, h                                       ; $515b: $7c

jr_0be_515c:
    add hl, sp                                    ; $515c: $39
    push de                                       ; $515d: $d5
    add [hl]                                      ; $515e: $86
    ld bc, $40ea                                  ; $515f: $01 $ea $40
    add hl, bc                                    ; $5162: $09
    ldh a, [rNR43]                                ; $5163: $f0 $22
    ld d, l                                       ; $5165: $55
    jr z, @+$07                                   ; $5166: $28 $05

    dec [hl]                                      ; $5168: $35
    xor d                                         ; $5169: $aa
    nop                                           ; $516a: $00
    sub b                                         ; $516b: $90
    ld bc, $5810                                  ; $516c: $01 $10 $58
    ld l, d                                       ; $516f: $6a
    xor [hl]                                      ; $5170: $ae
    nop                                           ; $5171: $00
    ld b, d                                       ; $5172: $42
    ld b, d                                       ; $5173: $42
    add hl, bc                                    ; $5174: $09
    xor h                                         ; $5175: $ac
    nop                                           ; $5176: $00
    add hl, bc                                    ; $5177: $09
    xor e                                         ; $5178: $ab
    ld b, b                                       ; $5179: $40
    ld [$0241], sp                                ; $517a: $08 $41 $02
    db $10                                        ; $517d: $10
    ld b, b                                       ; $517e: $40
    jr z, jr_0be_5119                             ; $517f: $28 $98

    ei                                            ; $5181: $fb
    nop                                           ; $5182: $00
    ld c, d                                       ; $5183: $4a
    ld a, d                                       ; $5184: $7a

jr_0be_5185:
    ld c, c                                       ; $5185: $49
    ld a, c                                       ; $5186: $79
    jr z, jr_0be_5185                             ; $5187: $28 $fc

    adc b                                         ; $5189: $88
    cp $00                                        ; $518a: $fe $00
    adc [hl]                                      ; $518c: $8e
    rst $38                                       ; $518d: $ff
    ld d, c                                       ; $518e: $51
    push af                                       ; $518f: $f5
    ld d, b                                       ; $5190: $50
    rst $38                                       ; $5191: $ff
    add d                                         ; $5192: $82
    rst $00                                       ; $5193: $c7
    nop                                           ; $5194: $00
    ld [hl+], a                                   ; $5195: $22
    ld h, e                                       ; $5196: $63
    ld a, [bc]                                    ; $5197: $0a
    rrca                                          ; $5198: $0f
    ld [bc], a                                    ; $5199: $02
    add e                                         ; $519a: $83
    ld b, d                                       ; $519b: $42
    ld b, d                                       ; $519c: $42
    nop                                           ; $519d: $00
    ld bc, $1121                                  ; $519e: $01 $21 $11
    sbc c                                         ; $51a1: $99
    add c                                         ; $51a2: $81

jr_0be_51a3:
    pop bc                                        ; $51a3: $c1
    ld h, $ff                                     ; $51a4: $26 $ff
    ld a, l                                       ; $51a6: $7d
    ld [de], a                                    ; $51a7: $12
    add h                                         ; $51a8: $84
    jr jr_0be_51e7                                ; $51a9: $18 $3c

    nop                                           ; $51ab: $00
    ld b, h                                       ; $51ac: $44
    db $10                                        ; $51ad: $10
    ld [bc], a                                    ; $51ae: $02
    jr z, jr_0be_5201                             ; $51af: $28 $50

    jr z, @-$29                                   ; $51b1: $28 $d5

    add [hl]                                      ; $51b3: $86
    nop                                           ; $51b4: $00
    db $10                                        ; $51b5: $10
    push de                                       ; $51b6: $d5
    ld b, l                                       ; $51b7: $45
    add sp, $08                                   ; $51b8: $e8 $08
    ld [$d04b], sp                                ; $51ba: $08 $4b $d0
    ld b, b                                       ; $51bd: $40
    ld [$8880], a                                 ; $51be: $ea $80 $88
    nop                                           ; $51c1: $00
    xor d                                         ; $51c2: $aa
    nop                                           ; $51c3: $00
    ld d, l                                       ; $51c4: $55
    pop af                                        ; $51c5: $f1
    dec bc                                        ; $51c6: $0b
    nop                                           ; $51c7: $00
    ld d, l                                       ; $51c8: $55
    ld [bc], a                                    ; $51c9: $02
    rlca                                          ; $51ca: $07
    xor a                                         ; $51cb: $af
    ld [c], a                                     ; $51cc: $e2
    rla                                           ; $51cd: $17
    rlca                                          ; $51ce: $07
    xor a                                         ; $51cf: $af
    db $10                                        ; $51d0: $10
    jr jr_0be_51a3                                ; $51d1: $18 $d0

    nop                                           ; $51d3: $00
    ld a, [$fdbc]                                 ; $51d4: $fa $bc $fd
    db $f4                                        ; $51d7: $f4
    cp $fc                                        ; $51d8: $fe $fc
    db $fd                                        ; $51da: $fd
    db $fc                                        ; $51db: $fc
    ld d, d                                       ; $51dc: $52
    sub $88                                       ; $51dd: $d6 $88
    nop                                           ; $51df: $00
    xor e                                         ; $51e0: $ab
    inc b                                         ; $51e1: $04
    ld c, b                                       ; $51e2: $48
    jr nz, @+$77                                  ; $51e3: $20 $75

    jr nc, @+$5a                                  ; $51e5: $30 $58

jr_0be_51e7:
    ld h, c                                       ; $51e7: $61
    nop                                           ; $51e8: $00
    ld [hl], c                                    ; $51e9: $71
    ld de, $09b9                                  ; $51ea: $11 $b9 $09
    ld e, l                                       ; $51ed: $5d
    push de                                       ; $51ee: $d5
    rst $38                                       ; $51ef: $ff
    cp [hl]                                       ; $51f0: $be
    ld c, b                                       ; $51f1: $48
    rst $38                                       ; $51f2: $ff
    jr nc, jr_0be_520d                            ; $51f3: $30 $18

    ld l, a                                       ; $51f5: $6f
    ret nz                                        ; $51f6: $c0

    ld [$c000], a                                 ; $51f7: $ea $00 $c0
    ld b, b                                       ; $51fa: $40
    ld [$4300], a                                 ; $51fb: $ea $00 $43
    jp $c745                                      ; $51fe: $c3 $45 $c7


jr_0be_5201:
    ld c, e                                       ; $5201: $4b
    rst $08                                       ; $5202: $cf
    ld c, e                                       ; $5203: $4b
    rst $08                                       ; $5204: $cf
    nop                                           ; $5205: $00
    add e                                         ; $5206: $83
    inc bc                                        ; $5207: $03
    inc bc                                        ; $5208: $03
    ld d, a                                       ; $5209: $57
    rra                                           ; $520a: $1f
    rra                                           ; $520b: $1f
    inc hl                                        ; $520c: $23

jr_0be_520d:
    cp a                                          ; $520d: $bf
    nop                                           ; $520e: $00
    sbc a                                         ; $520f: $9f
    sbc a                                         ; $5210: $9f
    xor $ff                                       ; $5211: $ee $ff
    push de                                       ; $5213: $d5
    rst $38                                       ; $5214: $ff
    db $fd                                        ; $5215: $fd
    rst $38                                       ; $5216: $ff
    nop                                           ; $5217: $00
    ld hl, sp-$18                                 ; $5218: $f8 $e8
    call c, $fc6d                                 ; $521a: $dc $6d $fc
    sub h                                         ; $521d: $94
    ld hl, sp+$0a                                 ; $521e: $f8 $0a
    nop                                           ; $5220: $00
    ldh a, [$90]                                  ; $5221: $f0 $90
    ldh [$e0], a                                  ; $5223: $e0 $e0
    ret nz                                        ; $5225: $c0

    ret nz                                        ; $5226: $c0

    or a                                          ; $5227: $b7
    rst $30                                       ; $5228: $f7
    ld a, [hl+]                                   ; $5229: $2a
    ld [bc], a                                    ; $522a: $02
    inc bc                                        ; $522b: $03
    ld [$0300], a                                 ; $522c: $ea $00 $03
    ld [$0300], a                                 ; $522f: $ea $00 $03
    ld [bc], a                                    ; $5232: $02
    jr jr_0be_5284                                ; $5233: $18 $4f

    nop                                           ; $5235: $00
    rst $08                                       ; $5236: $cf
    ld d, c                                       ; $5237: $51
    pop de                                        ; $5238: $d1

jr_0be_5239:
    sbc $ae                                       ; $5239: $de $ae
    ld a, c                                       ; $523b: $79
    rst $10                                       ; $523c: $d7
    push de                                       ; $523d: $d5
    ld [$7ebd], sp                                ; $523e: $08 $bd $7e
    db $eb                                        ; $5241: $eb
    ld a, [hl]                                    ; $5242: $7e
    call z, $f806                                 ; $5243: $cc $06 $f8
    rst $38                                       ; $5246: $ff
    db $fc                                        ; $5247: $fc
    nop                                           ; $5248: $00
    rst $38                                       ; $5249: $ff
    rst $10                                       ; $524a: $d7
    rst $38                                       ; $524b: $ff
    xor $fe                                       ; $524c: $ee $fe
    sub h                                         ; $524e: $94
    db $fc                                        ; $524f: $fc
    ld hl, sp+$00                                 ; $5250: $f8 $00
    ld hl, sp-$21                                 ; $5252: $f8 $df
    rst $38                                       ; $5254: $ff
    jr nz, @+$01                                  ; $5255: $20 $ff

    ld a, a                                       ; $5257: $7f
    rst $08                                       ; $5258: $cf
    cp $1d                                        ; $5259: $fe $1d
    jp nc, $ecec                                  ; $525b: $d2 $ec $ec

    db $10                                        ; $525e: $10
    ld a, [hl-]                                   ; $525f: $3a
    jr c, jr_0be_528a                             ; $5260: $38 $28

    ld b, b                                       ; $5262: $40
    ld [$1cfe], sp                                ; $5263: $08 $fe $1c
    rlca                                          ; $5266: $07
    ld e, e                                       ; $5267: $5b
    ld l, a                                       ; $5268: $6f
    ld b, b                                       ; $5269: $40
    nop                                           ; $526a: $00
    rst $18                                       ; $526b: $df
    ld b, b                                       ; $526c: $40
    ld b, b                                       ; $526d: $40
    jr nc, jr_0be_5278                            ; $526e: $30 $08

    db $fc                                        ; $5270: $fc
    jr nc, @+$42                                  ; $5271: $30 $40

    db $10                                        ; $5273: $10
    dec de                                        ; $5274: $1b
    nop                                           ; $5275: $00
    ld e, a                                       ; $5276: $5f
    rst $38                                       ; $5277: $ff

jr_0be_5278:
    ld d, d                                       ; $5278: $52
    ld a, [c]                                     ; $5279: $f2
    ld c, c                                       ; $527a: $49
    ei                                            ; $527b: $fb
    ld c, c                                       ; $527c: $49
    ei                                            ; $527d: $fb
    nop                                           ; $527e: $00
    ld b, l                                       ; $527f: $45
    cp $03                                        ; $5280: $fe $03
    rst $38                                       ; $5282: $ff
    db $fc                                        ; $5283: $fc

jr_0be_5284:
    db $fc                                        ; $5284: $fc
    dec bc                                        ; $5285: $0b
    ei                                            ; $5286: $fb
    nop                                           ; $5287: $00
    db $f4                                        ; $5288: $f4
    rst $00                                       ; $5289: $c7

jr_0be_528a:
    ld [hl], h                                    ; $528a: $74
    rlca                                          ; $528b: $07
    ld [hl], h                                    ; $528c: $74
    rlca                                          ; $528d: $07

jr_0be_528e:
    ld a, e                                       ; $528e: $7b
    dec bc                                        ; $528f: $0b
    jr nz, jr_0be_528e                            ; $5290: $20 $fc

    adc h                                         ; $5292: $8c
    pop de                                        ; $5293: $d1
    rlca                                          ; $5294: $07
    ldh [rLCDC], a                                ; $5295: $e0 $40
    ld a, a                                       ; $5297: $7f
    ld b, b                                       ; $5298: $40
    ld a, a                                       ; $5299: $7f
    inc [hl]                                      ; $529a: $34
    ld e, a                                       ; $529b: $5f
    ld h, b                                       ; $529c: $60
    ld b, $08                                     ; $529d: $06 $08
    jp nc, $fe09                                  ; $529f: $d2 $09 $fe

    ld a, [bc]                                    ; $52a2: $0a
    inc de                                        ; $52a3: $13
    ld b, d                                       ; $52a4: $42
    cp a                                          ; $52a5: $bf
    ret nc                                        ; $52a6: $d0

    jp c, Jump_0be_5019                           ; $52a7: $da $19 $50

    dec de                                        ; $52aa: $1b
    ld c, a                                       ; $52ab: $4f
    ld h, d                                       ; $52ac: $62
    ld [bc], a                                    ; $52ad: $02
    ld e, a                                       ; $52ae: $5f
    rst $38                                       ; $52af: $ff
    xor a                                         ; $52b0: $af
    rst $38                                       ; $52b1: $ff
    jr z, jr_0be_5239                             ; $52b2: $28 $85

    rst $18                                       ; $52b4: $df
    ret nc                                        ; $52b5: $d0

    ld a, [de]                                    ; $52b6: $1a
    ldh [$a8], a                                  ; $52b7: $e0 $a8
    db $10                                        ; $52b9: $10
    ld a, [$f6ff]                                 ; $52ba: $fa $ff $f6
    and b                                         ; $52bd: $a0
    jr nz, jr_0be_52d3                            ; $52be: $20 $13

    rlca                                          ; $52c0: $07
    ld [hl+], a                                   ; $52c1: $22
    inc bc                                        ; $52c2: $03
    dec de                                        ; $52c3: $1b
    db $fc                                        ; $52c4: $fc
    inc h                                         ; $52c5: $24
    ei                                            ; $52c6: $fb
    ld d, d                                       ; $52c7: $52
    inc [hl]                                      ; $52c8: $34
    rst $28                                       ; $52c9: $ef
    xor h                                         ; $52ca: $ac
    jr nz, jr_0be_52cd                            ; $52cb: $20 $00

jr_0be_52cd:
    db $10                                        ; $52cd: $10
    dec bc                                        ; $52ce: $0b
    jp nz, $024c                                  ; $52cf: $c2 $4c $02

    sub h                                         ; $52d2: $94

jr_0be_52d3:
    rst $28                                       ; $52d3: $ef
    nop                                           ; $52d4: $00
    ld a, [hl+]                                   ; $52d5: $2a
    rst $30                                       ; $52d6: $f7
    add [hl]                                      ; $52d7: $86
    ld a, e                                       ; $52d8: $7b
    ld bc, $7eff                                  ; $52d9: $01 $ff $7e
    rst $38                                       ; $52dc: $ff
    nop                                           ; $52dd: $00
    ld b, h                                       ; $52de: $44
    rst $38                                       ; $52df: $ff
    ld e, b                                       ; $52e0: $58
    db $fc                                        ; $52e1: $fc
    ld h, d                                       ; $52e2: $62
    ld a, [c]                                     ; $52e3: $f2
    ld b, d                                       ; $52e4: $42
    db $e3                                        ; $52e5: $e3
    ld [$ef8b], sp                                ; $52e6: $08 $8b $ef
    adc a                                         ; $52e9: $8f
    rst $08                                       ; $52ea: $cf
    inc b                                         ; $52eb: $04
    dec d                                         ; $52ec: $15
    rst $38                                       ; $52ed: $ff
    jr @+$41                                      ; $52ee: $18 $3f

    nop                                           ; $52f0: $00
    ld b, h                                       ; $52f1: $44
    ld c, a                                       ; $52f2: $4f
    jp nz, $d1c7                                  ; $52f3: $c2 $c7 $d1

    rst $30                                       ; $52f6: $f7
    pop af                                        ; $52f7: $f1
    di                                            ; $52f8: $f3
    add d                                         ; $52f9: $82
    db $10                                        ; $52fa: $10
    dec hl                                        ; $52fb: $2b
    nop                                           ; $52fc: $00
    rst $38                                       ; $52fd: $ff
    db $10                                        ; $52fe: $10
    rst $38                                       ; $52ff: $ff
    jr z, jr_0be_532c                             ; $5300: $28 $2a

    nop                                           ; $5302: $00
    ld b, c                                       ; $5303: $41
    ld b, b                                       ; $5304: $40
    cp $f2                                        ; $5305: $fe $f2
    ld e, d                                       ; $5307: $5a
    ld [hl], e                                    ; $5308: $73
    sbc a                                         ; $5309: $9f
    ld [hl], b                                    ; $530a: $70
    sbc a                                         ; $530b: $9f
    ld h, b                                       ; $530c: $60
    cp a                                          ; $530d: $bf
    ld b, b                                       ; $530e: $40
    ld b, b                                       ; $530f: $40
    ld [c], a                                     ; $5310: $e2
    ld [bc], a                                    ; $5311: $02
    inc h                                         ; $5312: $24
    db $e4                                        ; $5313: $e4
    ld [de], a                                    ; $5314: $12
    or $12                                        ; $5315: $f6 $12
    or $80                                        ; $5317: $f6 $80
    adc d                                         ; $5319: $8a
    ld [bc], a                                    ; $531a: $02
    db $fd                                        ; $531b: $fd
    ld a, [bc]                                    ; $531c: $0a
    ld a, [$f715]                                 ; $531d: $fa $15 $f7
    jp hl                                         ; $5320: $e9


    adc a                                         ; $5321: $8f
    ld bc, $0fe9                                  ; $5322: $01 $e9 $0f
    push af                                       ; $5325: $f5
    rla                                           ; $5326: $17
    ld a, [$821a]                                 ; $5327: $fa $1a $82
    or [hl]                                       ; $532a: $b6
    inc bc                                        ; $532b: $03

jr_0be_532c:
    nop                                           ; $532c: $00
    rst $18                                       ; $532d: $df
    ldh [rSCY], a                                 ; $532e: $e0 $42
    ld a, a                                       ; $5330: $7f
    ld [bc], a                                    ; $5331: $02
    ld a, a                                       ; $5332: $7f
    ld e, $63                                     ; $5333: $1e $63
    nop                                           ; $5335: $00
    ld b, d                                       ; $5336: $42
    ld a, a                                       ; $5337: $7f
    jp nz, $40ff                                  ; $5338: $c2 $ff $40

    ldh [$7f], a                                  ; $533b: $e0 $7f
    rst $38                                       ; $533d: $ff
    nop                                           ; $533e: $00
    ld h, a                                       ; $533f: $67
    rst $38                                       ; $5340: $ff
    jp $85e7                                      ; $5341: $c3 $e7 $85


    rst $08                                       ; $5344: $cf
    adc e                                         ; $5345: $8b
    rst $18                                       ; $5346: $df
    inc b                                         ; $5347: $04
    add a                                         ; $5348: $87
    rst $18                                       ; $5349: $df
    set 5, a                                      ; $534a: $cb $ef
    ld e, h                                       ; $534c: $5c
    db $e4                                        ; $534d: $e4
    inc bc                                        ; $534e: $03
    call z, Call_000_14ff                         ; $534f: $cc $ff $14
    adc $ef                                       ; $5352: $ce $ef
    cp $ac                                        ; $5354: $fe $ac
    nop                                           ; $5356: $00
    cp $50                                        ; $5357: $fe $50
    dec b                                         ; $5359: $05
    sub e                                         ; $535a: $93
    db $fc                                        ; $535b: $fc
    nop                                           ; $535c: $00
    call nc, Call_0be_79fb                        ; $535d: $d4 $fb $79
    cp $3c                                        ; $5360: $fe $3c
    rst $38                                       ; $5362: $ff
    daa                                           ; $5363: $27
    rst $38                                       ; $5364: $ff
    nop                                           ; $5365: $00
    ld b, e                                       ; $5366: $43
    rst $38                                       ; $5367: $ff
    ld h, l                                       ; $5368: $65
    ld a, [$fd32]                                 ; $5369: $fa $32 $fd
    jp nc, Jump_000_003f                          ; $536c: $d2 $3f $00

    add $3b                                       ; $536f: $c6 $3b
    ld de, $6dff                                  ; $5371: $11 $ff $6d
    di                                            ; $5374: $f3
    ld e, e                                       ; $5375: $5b
    rst $20                                       ; $5376: $e7
    nop                                           ; $5377: $00
    and [hl]                                      ; $5378: $a6
    rst $18                                       ; $5379: $df
    inc e                                         ; $537a: $1c
    rst $38                                       ; $537b: $ff
    or d                                          ; $537c: $b2
    ld a, a                                       ; $537d: $7f
    ld b, a                                       ; $537e: $47

Call_0be_537f:
    rst $00                                       ; $537f: $c7
    nop                                           ; $5380: $00
    ld c, a                                       ; $5381: $4f
    rst $28                                       ; $5382: $ef
    ld c, e                                       ; $5383: $4b
    rst $28                                       ; $5384: $ef
    ld h, d                                       ; $5385: $62
    db $e3                                        ; $5386: $e3
    ld h, d                                       ; $5387: $62
    ld a, [c]                                     ; $5388: $f2
    nop                                           ; $5389: $00
    ld h, b                                       ; $538a: $60
    ld hl, sp+$50                                 ; $538b: $f8 $50
    cp $5f                                        ; $538d: $fe $5f
    rst $38                                       ; $538f: $ff
    ld [c], a                                     ; $5390: $e2
    db $e3                                        ; $5391: $e3
    nop                                           ; $5392: $00
    di                                            ; $5393: $f3
    rst $30                                       ; $5394: $f7
    db $d3                                        ; $5395: $d3
    rst $30                                       ; $5396: $f7
    add $c7                                       ; $5397: $c6 $c7
    ld b, [hl]                                    ; $5399: $46
    ld c, a                                       ; $539a: $4f
    inc b                                         ; $539b: $04
    ld b, $1f                                     ; $539c: $06 $1f
    add hl, bc                                    ; $539e: $09
    ld a, a                                       ; $539f: $7f
    ld sp, hl                                     ; $53a0: $f9
    add b                                         ; $53a1: $80
    ld [bc], a                                    ; $53a2: $02
    add hl, hl                                    ; $53a3: $29
    add hl, hl                                    ; $53a4: $29
    nop                                           ; $53a5: $00
    add hl, hl                                    ; $53a6: $29
    add hl, sp                                    ; $53a7: $39
    ld a, h                                       ; $53a8: $7c
    rst $38                                       ; $53a9: $ff
    ld a, h                                       ; $53aa: $7c
    ld a, l                                       ; $53ab: $7d
    ld a, h                                       ; $53ac: $7c
    ld a, l                                       ; $53ad: $7d
    inc b                                         ; $53ae: $04
    ld a, l                                       ; $53af: $7d
    ld a, a                                       ; $53b0: $7f
    ld a, l                                       ; $53b1: $7d
    rst $38                                       ; $53b2: $ff
    ld a, [de]                                    ; $53b3: $1a
    ld [bc], a                                    ; $53b4: $02
    nop                                           ; $53b5: $00
    ld h, $ff                                     ; $53b6: $26 $ff
    ld bc, $e7a6                                  ; $53b8: $01 $a6 $e7
    jp nz, $cae7                                  ; $53bb: $c2 $e7 $ca

    db $db                                        ; $53be: $db
    sbc c                                         ; $53bf: $99
    ld [bc], a                                    ; $53c0: $02
    nop                                           ; $53c1: $00
    ld [$fd0b], sp                                ; $53c2: $08 $0b $fd
    ld [bc], a                                    ; $53c5: $02
    db $fd                                        ; $53c6: $fd
    ldh a, [rWY]                                  ; $53c7: $f0 $4a
    push af                                       ; $53c9: $f5
    dec e                                         ; $53ca: $1d
    db $e3                                        ; $53cb: $e3
    ld bc, $e03f                                  ; $53cc: $01 $3f $e0
    ccf                                           ; $53cf: $3f
    ret nz                                        ; $53d0: $c0

    ld a, a                                       ; $53d1: $7f
    add b                                         ; $53d2: $80
    push de                                       ; $53d3: $d5
    nop                                           ; $53d4: $00
    dec de                                        ; $53d5: $1b
    jp c, $0c2a                                   ; $53d6: $da $2a $0c

    and b                                         ; $53d9: $a0
    ld c, d                                       ; $53da: $4a
    ld h, l                                       ; $53db: $65
    cp h                                          ; $53dc: $bc
    inc bc                                        ; $53dd: $03
    jr nc, jr_0be_542b                            ; $53de: $30 $4b

    db $fc                                        ; $53e0: $fc
    sub h                                         ; $53e1: $94
    inc b                                         ; $53e2: $04
    inc bc                                        ; $53e3: $03
    jr nz, @+$01                                  ; $53e4: $20 $ff

    ld b, $30                                     ; $53e6: $06 $30
    inc bc                                        ; $53e8: $03
    ld bc, $01ff                                  ; $53e9: $01 $ff $01
    xor e                                         ; $53ec: $ab
    nop                                           ; $53ed: $00
    jr nz, @+$01                                  ; $53ee: $20 $ff

    inc e                                         ; $53f0: $1c
    ld a, [c]                                     ; $53f1: $f2
    inc bc                                        ; $53f2: $03
    ret nz                                        ; $53f3: $c0

    rst $38                                       ; $53f4: $ff
    ld h, b                                       ; $53f5: $60
    rst $38                                       ; $53f6: $ff
    ld h, b                                       ; $53f7: $60
    ld l, [hl]                                    ; $53f8: $6e
    ld [hl], l                                    ; $53f9: $75
    ld [hl], d                                    ; $53fa: $72
    inc bc                                        ; $53fb: $03
    ld b, b                                       ; $53fc: $40
    inc bc                                        ; $53fd: $03
    ld b, d                                       ; $53fe: $42

Jump_0be_53ff:
    ld b, b                                       ; $53ff: $40
    ld h, b                                       ; $5400: $60
    ld h, $00                                     ; $5401: $26 $00
    ld h, b                                       ; $5403: $60
    ld d, e                                       ; $5404: $53
    add hl, hl                                    ; $5405: $29
    inc bc                                        ; $5406: $03
    add hl, sp                                    ; $5407: $39
    add hl, hl                                    ; $5408: $29
    xor e                                         ; $5409: $ab
    add d                                         ; $540a: $82
    rst $00                                       ; $540b: $c7
    add d                                         ; $540c: $82
    ldh a, [rP1]                                  ; $540d: $f0 $00
    ld [hl], b                                    ; $540f: $70
    dec de                                        ; $5410: $1b
    nop                                           ; $5411: $00
    sbc c                                         ; $5412: $99
    db $db                                        ; $5413: $db
    ld e, d                                       ; $5414: $5a
    rst $38                                       ; $5415: $ff
    ld e, d                                       ; $5416: $5a
    db $db                                        ; $5417: $db
    ld e, d                                       ; $5418: $5a
    db $db                                        ; $5419: $db
    nop                                           ; $541a: $00
    ld d, d                                       ; $541b: $52
    ld a, a                                       ; $541c: $7f
    ld b, d                                       ; $541d: $42
    rst $20                                       ; $541e: $e7
    ld h, $bf                                     ; $541f: $26 $bf
    ld a, $ff                                     ; $5421: $3e $ff
    inc b                                         ; $5423: $04
    and b                                         ; $5424: $a0
    ldh [$60], a                                  ; $5425: $e0 $60
    ldh [$e0], a                                  ; $5427: $e0 $e0
    inc b                                         ; $5429: $04
    db $10                                        ; $542a: $10

jr_0be_542b:
    ldh [$e0], a                                  ; $542b: $e0 $e0
    ld b, b                                       ; $542d: $40
    ccf                                           ; $542e: $3f
    ret z                                         ; $542f: $c8

    ld bc, $d746                                  ; $5430: $01 $46 $d7
    ld b, l                                       ; $5433: $45
    rst $28                                       ; $5434: $ef
    ld e, a                                       ; $5435: $5f
    rst $18                                       ; $5436: $df
    nop                                           ; $5437: $00
    ld d, a                                       ; $5438: $57
    rst $38                                       ; $5439: $ff
    ld a, e                                       ; $543a: $7b
    rst $38                                       ; $543b: $ff
    ld a, a                                       ; $543c: $7f
    cp $5e                                        ; $543d: $fe $5e
    rst $18                                       ; $543f: $df
    nop                                           ; $5440: $00
    ld c, a                                       ; $5441: $4f
    xor $41                                       ; $5442: $ee $41
    ld d, l                                       ; $5444: $55
    pop hl                                        ; $5445: $e1
    db $eb                                        ; $5446: $eb
    sbc b                                         ; $5447: $98
    db $fd                                        ; $5448: $fd
    nop                                           ; $5449: $00
    ldh a, [$fa]                                  ; $544a: $f0 $fa
    ldh [$b5], a                                  ; $544c: $e0 $b5
    pop af                                        ; $544e: $f1
    db $db                                        ; $544f: $db
    ei                                            ; $5450: $fb
    cp a                                          ; $5451: $bf
    nop                                           ; $5452: $00
    rst $38                                       ; $5453: $ff
    ld c, a                                       ; $5454: $4f
    adc b                                         ; $5455: $88
    push de                                       ; $5456: $d5
    sbc b                                         ; $5457: $98
    xor d                                         ; $5458: $aa
    jr nc, jr_0be_54b0                            ; $5459: $30 $55

    nop                                           ; $545b: $00
    ld h, b                                       ; $545c: $60
    xor d                                         ; $545d: $aa
    ret nz                                        ; $545e: $c0

    push de                                       ; $545f: $d5
    ret nz                                        ; $5460: $c0

    ld l, d                                       ; $5461: $6a
    ret nz                                        ; $5462: $c0

    ld d, l                                       ; $5463: $55
    ld [bc], a                                    ; $5464: $02
    add b                                         ; $5465: $80
    xor d                                         ; $5466: $aa
    ld b, b                                       ; $5467: $40
    ld d, l                                       ; $5468: $55
    ldh [$ea], a                                  ; $5469: $e0 $ea
    jr nz, jr_0be_54b5                            ; $546b: $20 $48

    ld [$5520], sp                                ; $546d: $08 $20 $55
    jr @+$22                                      ; $5470: $18 $20

    ld d, b                                       ; $5472: $50
    ld b, a                                       ; $5473: $47
    push bc                                       ; $5474: $c5
    ld b, a                                       ; $5475: $47
    sub $43                                       ; $5476: $d6 $43
    ld [bc], a                                    ; $5478: $02
    jp $ef4e                                      ; $5479: $c3 $4e $ef


    ld d, e                                       ; $547c: $53
    rst $18                                       ; $547d: $df
    ld l, a                                       ; $547e: $6f
    ld a, [$7c01]                                 ; $547f: $fa $01 $7c
    nop                                           ; $5482: $00
    rst $08                                       ; $5483: $cf
    cp $1e                                        ; $5484: $fe $1e
    cp $3f                                        ; $5486: $fe $3f
    db $fc                                        ; $5488: $fc
    db $fc                                        ; $5489: $fc
    add sp, $12                                   ; $548a: $e8 $12
    ld a, [$f070]                                 ; $548c: $fa $70 $f0
    ld a, d                                       ; $548f: $7a
    ld [$e0a0], sp                                ; $5490: $08 $a0 $e0
    xor a                                         ; $5493: $af
    rlca                                          ; $5494: $07
    ld d, l                                       ; $5495: $55
    and b                                         ; $5496: $a0
    or e                                          ; $5497: $b3
    rlca                                          ; $5498: $07
    xor d                                         ; $5499: $aa
    or a                                          ; $549a: $b7
    cpl                                           ; $549b: $2f
    db $fc                                        ; $549c: $fc
    xor a                                         ; $549d: $af
    ld a, a                                       ; $549e: $7f
    rst $38                                       ; $549f: $ff
    ld e, [hl]                                    ; $54a0: $5e
    nop                                           ; $54a1: $00
    rst $18                                       ; $54a2: $df
    ld e, l                                       ; $54a3: $5d
    rst $18                                       ; $54a4: $df
    ld a, [hl]                                    ; $54a5: $7e
    rst $38                                       ; $54a6: $ff
    ld l, a                                       ; $54a7: $6f
    rst $38                                       ; $54a8: $ff
    halt                                          ; $54a9: $76
    ret nz                                        ; $54aa: $c0

    sbc $04                                       ; $54ab: $de $04
    ret nz                                        ; $54ad: $c0

    dec l                                         ; $54ae: $2d
    ld b, c                                       ; $54af: $41

jr_0be_54b0:
    rst $38                                       ; $54b0: $ff
    ld b, d                                       ; $54b1: $42
    cp $44                                        ; $54b2: $fe $44
    db $fc                                        ; $54b4: $fc

jr_0be_54b5:
    ld b, b                                       ; $54b5: $40
    ld c, b                                       ; $54b6: $48
    ld [hl], b                                    ; $54b7: $70
    dec d                                         ; $54b8: $15
    ld bc, $71ff                                  ; $54b9: $01 $ff $71
    rst $38                                       ; $54bc: $ff
    sub c                                         ; $54bd: $91
    sbc a                                         ; $54be: $9f
    nop                                           ; $54bf: $00
    ld de, $105f                                  ; $54c0: $11 $5f $10
    cp a                                          ; $54c3: $bf
    jr nz, jr_0be_5505                            ; $54c4: $20 $3f

    ccf                                           ; $54c6: $3f
    ldh [rP1], a                                  ; $54c7: $e0 $00
    rst $18                                       ; $54c9: $df
    ldh [rLY], a                                  ; $54ca: $e0 $44
    ei                                            ; $54cc: $fb
    ccf                                           ; $54cd: $3f
    jp z, $e01f                                   ; $54ce: $ca $1f $e0

    ld bc, $ee3f                                  ; $54d1: $01 $3f $ee
    sub l                                         ; $54d4: $95
    rst $38                                       ; $54d5: $ff
    adc [hl]                                      ; $54d6: $8e
    ei                                            ; $54d7: $fb
    add b                                         ; $54d8: $80
    ld h, b                                       ; $54d9: $60
    ld [bc], a                                    ; $54da: $02
    nop                                           ; $54db: $00
    ld d, d                                       ; $54dc: $52
    rst $38                                       ; $54dd: $ff
    sub d                                         ; $54de: $92
    ld a, a                                       ; $54df: $7f
    ld [de], a                                    ; $54e0: $12
    rst $38                                       ; $54e1: $ff
    sub d                                         ; $54e2: $92
    rst $38                                       ; $54e3: $ff
    ld b, b                                       ; $54e4: $40
    ld [hl+], a                                   ; $54e5: $22
    ld [bc], a                                    ; $54e6: $02
    nop                                           ; $54e7: $00
    ld d, b                                       ; $54e8: $50
    ld a, [c]                                     ; $54e9: $f2
    ld d, b                                       ; $54ea: $50
    db $f4                                        ; $54eb: $f4
    ld h, b                                       ; $54ec: $60
    add sp, $04                                   ; $54ed: $e8 $04
    ld h, c                                       ; $54ef: $61
    db $e3                                        ; $54f0: $e3
    ld h, [hl]                                    ; $54f1: $66
    rst $28                                       ; $54f2: $ef
    ld a, b                                       ; $54f3: $78
    ld [hl], $01                                  ; $54f4: $36 $01
    ret nz                                        ; $54f6: $c0

    rst $38                                       ; $54f7: $ff
    inc b                                         ; $54f8: $04
    jr nz, jr_0be_557a                            ; $54f9: $20 $7f

    ld b, c                                       ; $54fb: $41
    ld a, a                                       ; $54fc: $7f
    add e                                         ; $54fd: $83
    jp c, $0305                                   ; $54fe: $da $05 $03

    rst $38                                       ; $5501: $ff
    inc b                                         ; $5502: $04
    inc b                                         ; $5503: $04
    rst $38                                       ; $5504: $ff

jr_0be_5505:
    rlca                                          ; $5505: $07

jr_0be_5506:
    db $fc                                        ; $5506: $fc
    inc bc                                        ; $5507: $03
    ld c, h                                       ; $5508: $4c
    ld bc, $ffea                                  ; $5509: $01 $ea $ff
    dec b                                         ; $550c: $05
    ld [hl], l                                    ; $550d: $75
    rst $38                                       ; $550e: $ff
    pop af                                        ; $550f: $f1
    rst $38                                       ; $5510: $ff
    push af                                       ; $5511: $f5
    ld a, h                                       ; $5512: $7c
    rlca                                          ; $5513: $07
    push af                                       ; $5514: $f5
    jr c, @+$07                                   ; $5515: $38 $05

    ld de, $ff72                                  ; $5517: $11 $72 $ff
    ld a, [c]                                     ; $551a: $f2
    cp $04                                        ; $551b: $fe $04
    ld a, [$f2ef]                                 ; $551d: $fa $ef $f2
    ld [$6000], sp                                ; $5520: $08 $00 $60
    ld [$0044], a                                 ; $5523: $ea $44 $00
    ret nz                                        ; $5526: $c0

    inc a                                         ; $5527: $3c
    ld h, b                                       ; $5528: $60
    rst $38                                       ; $5529: $ff
    ld [hl], b                                    ; $552a: $70
    jp c, Jump_000_1070                           ; $552b: $da $70 $10

    rst $18                                       ; $552e: $df
    dec b                                         ; $552f: $05
    db $fd                                        ; $5530: $fd
    ld [hl], b                                    ; $5531: $70
    ld [bc], a                                    ; $5532: $02
    ei                                            ; $5533: $fb
    ld a, [bc]                                    ; $5534: $0a
    ei                                            ; $5535: $fb
    inc c                                         ; $5536: $0c
    ld e, b                                       ; $5537: $58
    ld e, l                                       ; $5538: $5d
    ret nz                                        ; $5539: $c0

    inc e                                         ; $553a: $1c
    db $db                                        ; $553b: $db
    adc h                                         ; $553c: $8c
    nop                                           ; $553d: $00
    ret nc                                        ; $553e: $d0

    inc l                                         ; $553f: $2c
    ld a, $be                                     ; $5540: $3e $be
    push de                                       ; $5542: $d5
    jr nc, jr_0be_5506                            ; $5543: $30 $c1

    ld h, d                                       ; $5545: $62
    ld [hl], b                                    ; $5546: $70
    dec b                                         ; $5547: $05
    ld [hl], b                                    ; $5548: $70
    inc a                                         ; $5549: $3c
    jp nz, Jump_0be_70ff                          ; $554a: $c2 $ff $70

    push de                                       ; $554d: $d5
    jr nz, jr_0be_55c0                            ; $554e: $20 $70

    jp c, $014c                                   ; $5550: $da $4c $01

    rst $20                                       ; $5553: $e7
    ld a, a                                       ; $5554: $7f
    rst $28                                       ; $5555: $ef
    ld e, a                                       ; $5556: $5f
    rst $38                                       ; $5557: $ff
    nop                                           ; $5558: $00
    ld d, a                                       ; $5559: $57
    rst $18                                       ; $555a: $df
    ld d, a                                       ; $555b: $57
    db $fd                                        ; $555c: $fd
    ld bc, $7a55                                  ; $555d: $01 $55 $7a
    ld a, [$de00]                                 ; $5560: $fa $00 $de
    rst $38                                       ; $5563: $ff
    ld a, l                                       ; $5564: $7d
    rst $38                                       ; $5565: $ff
    db $fd                                        ; $5566: $fd
    rst $18                                       ; $5567: $df
    cp $26                                        ; $5568: $fe $26
    add b                                         ; $556a: $80
    ld [hl], l                                    ; $556b: $75
    ld [bc], a                                    ; $556c: $02
    db $dd                                        ; $556d: $dd
    ld [hl], $b4                                  ; $556e: $36 $b4
    sub [hl]                                      ; $5570: $96
    jp nz, $706a                                  ; $5571: $c2 $6a $70

    ld [$be19], sp                                ; $5574: $08 $19 $be
    rlca                                          ; $5577: $07
    ld d, a                                       ; $5578: $57
    adc b                                         ; $5579: $88

jr_0be_557a:
    inc c                                         ; $557a: $0c
    nop                                           ; $557b: $00
    xor d                                         ; $557c: $aa
    and d                                         ; $557d: $a2
    nop                                           ; $557e: $00
    scf                                           ; $557f: $37
    db $d3                                        ; $5580: $d3
    db $db                                        ; $5581: $db
    xor [hl]                                      ; $5582: $ae
    rra                                           ; $5583: $1f
    ld d, d                                       ; $5584: $52
    dec sp                                        ; $5585: $3b
    ld [c], a                                     ; $5586: $e2
    ld b, b                                       ; $5587: $40
    rst $30                                       ; $5588: $f7
    ld a, b                                       ; $5589: $78
    inc e                                         ; $558a: $1c
    ld d, e                                       ; $558b: $53
    rst $18                                       ; $558c: $df
    ld c, e                                       ; $558d: $4b
    rst $18                                       ; $558e: $df
    ld c, e                                       ; $558f: $4b
    rst $08                                       ; $5590: $cf
    ld [bc], a                                    ; $5591: $02

jr_0be_5592:
    ld b, l                                       ; $5592: $45
    rst $28                                       ; $5593: $ef
    ld b, e                                       ; $5594: $43
    jp $c141                                      ; $5595: $c3 $41 $c1


    ld [bc], a                                    ; $5598: $02
    ld [$00fe], sp                                ; $5599: $08 $fe $00
    ld [hl], $fc                                  ; $559c: $36 $fc
    dec b                                         ; $559e: $05
    cp $8e                                        ; $559f: $fe $8e
    ld [hl], l                                    ; $55a1: $75
    rst $38                                       ; $55a2: $ff
    db $dd                                        ; $55a3: $dd
    ld bc, $aeff                                  ; $55a4: $01 $ff $ae
    rst $38                                       ; $55a7: $ff
    sbc $ff                                       ; $55a8: $de $ff
    db $dd                                        ; $55aa: $dd
    db $fd                                        ; $55ab: $fd
    ld b, b                                       ; $55ac: $40
    add hl, sp                                    ; $55ad: $39
    ld b, d                                       ; $55ae: $42
    add b                                         ; $55af: $80

jr_0be_55b0:
    ld bc, $4000                                  ; $55b0: $01 $00 $40
    ret nz                                        ; $55b3: $c0

    ld b, e                                       ; $55b4: $43
    jp Jump_000_1802                              ; $55b5: $c3 $02 $18


    ld b, a                                       ; $55b8: $47
    inc d                                         ; $55b9: $14
    rst $00                                       ; $55ba: $c7
    ld b, a                                       ; $55bb: $47
    rst $00                                       ; $55bc: $c7
    ld b, b                                       ; $55bd: $40
    inc c                                         ; $55be: $0c
    rst $18                                       ; $55bf: $df

jr_0be_55c0:
    and [hl]                                      ; $55c0: $a6
    inc bc                                        ; $55c1: $03
    xor [hl]                                      ; $55c2: $ae
    cp $10                                        ; $55c3: $fe $10
    xor [hl]                                      ; $55c5: $ae
    cp $75                                        ; $55c6: $fe $75
    add sp, $06                                   ; $55c8: $e8 $06
    ld [hl], e                                    ; $55ca: $73
    rst $38                                       ; $55cb: $ff
    adc h                                         ; $55cc: $8c
    rst $38                                       ; $55cd: $ff
    jr jr_0be_55b0                                ; $55ce: $18 $e0

    jr nz, jr_0be_5592                            ; $55d0: $20 $c0

    push de                                       ; $55d2: $d5
    rra                                           ; $55d3: $1f
    ld d, b                                       ; $55d4: $50
    ld h, $f0                                     ; $55d5: $26 $f0
    rra                                           ; $55d7: $1f
    ldh [rNR21], a                                ; $55d8: $e0 $16
    ld a, [hl+]                                   ; $55da: $2a
    nop                                           ; $55db: $00
    rst $38                                       ; $55dc: $ff
    ld [bc], a                                    ; $55dd: $02
    ld e, b                                       ; $55de: $58
    ld b, $02                                     ; $55df: $06 $02
    ld h, b                                       ; $55e1: $60
    ld [$6002], sp                                ; $55e2: $08 $02 $60
    rst $38                                       ; $55e5: $ff
    nop                                           ; $55e6: $00
    rst $38                                       ; $55e7: $ff
    add b                                         ; $55e8: $80
    add b                                         ; $55e9: $80
    add h                                         ; $55ea: $84
    cp l                                          ; $55eb: $bd
    add b                                         ; $55ec: $80
    cp [hl]                                       ; $55ed: $be
    xor b                                         ; $55ee: $a8
    nop                                           ; $55ef: $00
    cp l                                          ; $55f0: $bd
    add b                                         ; $55f1: $80
    cp d                                          ; $55f2: $ba
    add b                                         ; $55f3: $80
    sub l                                         ; $55f4: $95
    add b                                         ; $55f5: $80
    cp d                                          ; $55f6: $ba
    rst $38                                       ; $55f7: $ff
    nop                                           ; $55f8: $00
    rst $38                                       ; $55f9: $ff
    nop                                           ; $55fa: $00
    nop                                           ; $55fb: $00
    ld b, h                                       ; $55fc: $44
    ld a, l                                       ; $55fd: $7d
    nop                                           ; $55fe: $00
    cp $28                                        ; $55ff: $fe $28
    ld [bc], a                                    ; $5601: $02
    ld a, l                                       ; $5602: $7d
    nop                                           ; $5603: $00
    cp d                                          ; $5604: $ba
    nop                                           ; $5605: $00
    ld d, l                                       ; $5606: $55
    nop                                           ; $5607: $00
    db $10                                        ; $5608: $10
    ld [$0480], sp                                ; $5609: $08 $80 $04
    add h                                         ; $560c: $84
    rst $38                                       ; $560d: $ff
    add h                                         ; $560e: $84
    rst $38                                       ; $560f: $ff
    adc d                                         ; $5610: $8a
    inc b                                         ; $5611: $04
    nop                                           ; $5612: $00
    add h                                         ; $5613: $84
    rst $38                                       ; $5614: $ff
    ld c, d                                       ; $5615: $4a
    add b                                         ; $5616: $80
    jr nc, jr_0be_5619                            ; $5617: $30 $00

jr_0be_5619:
    nop                                           ; $5619: $00
    nop                                           ; $561a: $00
    ld b, h                                       ; $561b: $44
    ld [$4a14], sp                                ; $561c: $08 $14 $4a
    stop                                          ; $561f: $10 $00
    add b                                         ; $5621: $80
    ld b, b                                       ; $5622: $40
    nop                                           ; $5623: $00
    ld bc, $1101                                  ; $5624: $01 $01 $11
    db $fd                                        ; $5627: $fd
    ld de, $29fd                                  ; $5628: $11 $fd $29
    add b                                         ; $562b: $80
    inc b                                         ; $562c: $04
    nop                                           ; $562d: $00
    ld de, $01fd                                  ; $562e: $11 $fd $01
    db $fd                                        ; $5631: $fd
    call c, $ec69                                 ; $5632: $dc $69 $ec
    nop                                           ; $5635: $00
    ld a, c                                       ; $5636: $79
    db $fd                                        ; $5637: $fd
    ccf                                           ; $5638: $3f
    ld [hl], a                                    ; $5639: $77
    rra                                           ; $563a: $1f
    or e                                          ; $563b: $b3
    rra                                           ; $563c: $1f
    ld e, a                                       ; $563d: $5f
    dec b                                         ; $563e: $05
    rra                                           ; $563f: $1f
    ccf                                           ; $5640: $3f
    ccf                                           ; $5641: $3f
    db $fc                                        ; $5642: $fc
    ccf                                           ; $5643: $3f
    ld e, b                                       ; $5644: $58
    nop                                           ; $5645: $00
    cp [hl]                                       ; $5646: $be
    ld h, b                                       ; $5647: $60
    ld [$820a], sp                                ; $5648: $08 $0a $82
    cp a                                          ; $564b: $bf
    add b                                         ; $564c: $80
    cp a                                          ; $564d: $bf
    inc b                                         ; $564e: $04
    nop                                           ; $564f: $00
    cp [hl]                                       ; $5650: $be
    ld e, b                                       ; $5651: $58
    nop                                           ; $5652: $00
    cp $00                                        ; $5653: $fe $00
    ld b, l                                       ; $5655: $45
    ld a, l                                       ; $5656: $7d
    inc bc                                        ; $5657: $03
    cp $86                                        ; $5658: $fe $86
    cp $06                                        ; $565a: $fe $06
    db $fc                                        ; $565c: $fc
    nop                                           ; $565d: $00
    adc h                                         ; $565e: $8c
    db $fc                                        ; $565f: $fc
    ld c, $fc                                     ; $5660: $0e $fc
    ccf                                           ; $5662: $3f
    ld a, a                                       ; $5663: $7f
    ld hl, sp-$38                                 ; $5664: $f8 $c8
    nop                                           ; $5666: $00
    add a                                         ; $5667: $87
    ld bc, $0e1f                                  ; $5668: $01 $1f $0e
    ld [hl], $14                                  ; $566b: $36 $14
    ld h, b                                       ; $566d: $60
    jr nz, jr_0be_5670                            ; $566e: $20 $00

jr_0be_5670:
    ld [hl], b                                    ; $5670: $70
    ld h, b                                       ; $5671: $60
    inc a                                         ; $5672: $3c
    inc [hl]                                      ; $5673: $34
    add b                                         ; $5674: $80
    rst $38                                       ; $5675: $ff
    ret nz                                        ; $5676: $c0

    ld a, a                                       ; $5677: $7f
    nop                                           ; $5678: $00
    ldh a, [rIE]                                  ; $5679: $f0 $ff
    inc e                                         ; $567b: $1c
    rrca                                          ; $567c: $0f
    scf                                           ; $567d: $37
    inc sp                                        ; $567e: $33
    inc bc                                        ; $567f: $03
    inc bc                                        ; $5680: $03
    inc c                                         ; $5681: $0c
    ld bc, $1f00                                  ; $5682: $01 $00 $1f
    ld bc, $18d0                                  ; $5685: $01 $d0 $18
    or [hl]                                       ; $5688: $b6
    ld [$ff94], sp                                ; $5689: $08 $94 $ff
    dec b                                         ; $568c: $05
    ret                                           ; $568d: $c9


    rst $38                                       ; $568e: $ff
    set 7, [hl]                                   ; $568f: $cb $fe
    ld bc, $0064                                  ; $5691: $01 $64 $00
    ld bc, $106c                                  ; $5694: $01 $6c $10
    nop                                           ; $5697: $00
    add hl, hl                                    ; $5698: $29
    db $fd                                        ; $5699: $fd
    pop af                                        ; $569a: $f1
    db $fd                                        ; $569b: $fd
    add hl, de                                    ; $569c: $19
    dec c                                         ; $569d: $0d
    rra                                           ; $569e: $1f
    rst $38                                       ; $569f: $ff
    nop                                           ; $56a0: $00
    ld a, a                                       ; $56a1: $7f
    rst $38                                       ; $56a2: $ff
    ld sp, hl                                     ; $56a3: $f9
    cp $ec                                        ; $56a4: $fe $ec
    pop af                                        ; $56a6: $f1
    ld a, d                                       ; $56a7: $7a
    ld sp, hl                                     ; $56a8: $f9
    inc bc                                        ; $56a9: $03
    ld e, c                                       ; $56aa: $59
    ld e, $c7                                     ; $56ab: $1e $c7
    jr c, jr_0be_56e9                             ; $56ad: $38 $3a

    ret nz                                        ; $56af: $c0

    call z, $7c48                                 ; $56b0: $cc $48 $7c
    ld [$5f00], sp                                ; $56b3: $08 $00 $5f
    ld a, a                                       ; $56b6: $7f
    rrca                                          ; $56b7: $0f
    cp $3f                                        ; $56b8: $fe $3f
    ld a, h                                       ; $56ba: $7c
    rrca                                          ; $56bb: $0f
    cp a                                          ; $56bc: $bf
    nop                                           ; $56bd: $00
    rra                                           ; $56be: $1f
    ld e, h                                       ; $56bf: $5c
    ccf                                           ; $56c0: $3f
    cp c                                          ; $56c1: $b9
    ccf                                           ; $56c2: $3f
    ld a, [hl]                                    ; $56c3: $7e
    rrca                                          ; $56c4: $0f
    rst $38                                       ; $56c5: $ff
    nop                                           ; $56c6: $00
    sbc [hl]                                      ; $56c7: $9e
    inc e                                         ; $56c8: $1c
    ld e, $0c                                     ; $56c9: $1e $0c
    adc a                                         ; $56cb: $8f
    ld b, $07                                     ; $56cc: $06 $07
    ld [bc], a                                    ; $56ce: $02
    nop                                           ; $56cf: $00
    bit 0, e                                      ; $56d0: $cb $43
    cp l                                          ; $56d2: $bd
    sbc c                                         ; $56d3: $99
    ld a, a                                       ; $56d4: $7f
    inc a                                         ; $56d5: $3c
    rst $38                                       ; $56d6: $ff
    ld a, a                                       ; $56d7: $7f
    nop                                           ; $56d8: $00
    ld a, a                                       ; $56d9: $7f
    ccf                                           ; $56da: $3f
    ld a, c                                       ; $56db: $79
    ld a, c                                       ; $56dc: $79
    ld a, a                                       ; $56dd: $7f
    ld a, a                                       ; $56de: $7f
    or a                                          ; $56df: $b7
    inc sp                                        ; $56e0: $33
    nop                                           ; $56e1: $00
    rst $00                                       ; $56e2: $c7
    rlca                                          ; $56e3: $07
    cp $b7                                        ; $56e4: $fe $b7
    ld a, [hl]                                    ; $56e6: $7e
    ld a, a                                       ; $56e7: $7f
    db $ec                                        ; $56e8: $ec

jr_0be_56e9:
    rlca                                          ; $56e9: $07
    nop                                           ; $56ea: $00
    add h                                         ; $56eb: $84
    db $fc                                        ; $56ec: $fc
    adc l                                         ; $56ed: $8d
    ld hl, sp-$77                                 ; $56ee: $f8 $89
    ld sp, hl                                     ; $56f0: $f9
    add hl, de                                    ; $56f1: $19
    pop af                                        ; $56f2: $f1
    nop                                           ; $56f3: $00
    ld de, $13f1                                  ; $56f4: $11 $f1 $13
    pop af                                        ; $56f7: $f1
    inc sp                                        ; $56f8: $33
    pop hl                                        ; $56f9: $e1
    inc hl                                        ; $56fa: $23
    db $e3                                        ; $56fb: $e3
    nop                                           ; $56fc: $00
    call $d747                                    ; $56fd: $cd $47 $d7
    add a                                         ; $5700: $87
    rst $38                                       ; $5701: $ff
    rla                                           ; $5702: $17
    rst $38                                       ; $5703: $ff
    cp a                                          ; $5704: $bf
    nop                                           ; $5705: $00
    push af                                       ; $5706: $f5
    db $fd                                        ; $5707: $fd
    or c                                          ; $5708: $b1
    db $fd                                        ; $5709: $fd
    xor c                                         ; $570a: $a9
    db $fd                                        ; $570b: $fd
    sub c                                         ; $570c: $91
    db $fd                                        ; $570d: $fd
    add b                                         ; $570e: $80
    jr nc, jr_0be_571a                            ; $570f: $30 $09

    add b                                         ; $5711: $80
    cp l                                          ; $5712: $bd
    sub b                                         ; $5713: $90
    cp e                                          ; $5714: $bb
    add b                                         ; $5715: $80
    or l                                          ; $5716: $b5
    add b                                         ; $5717: $80
    ld d, b                                       ; $5718: $50
    or l                                          ; $5719: $b5

jr_0be_571a:
    ld b, $00                                     ; $571a: $06 $00
    cp l                                          ; $571c: $bd
    jr nc, jr_0be_5728                            ; $571d: $30 $09

    nop                                           ; $571f: $00
    rst $30                                       ; $5720: $f7
    and c                                         ; $5721: $a1
    ei                                            ; $5722: $fb
    nop                                           ; $5723: $00
    nop                                           ; $5724: $00
    push af                                       ; $5725: $f5
    nop                                           ; $5726: $00
    push af                                       ; $5727: $f5

jr_0be_5728:
    and c                                         ; $5728: $a1
    ei                                            ; $5729: $fb
    rlca                                          ; $572a: $07
    or $80                                        ; $572b: $f6 $80
    ld b, b                                       ; $572d: $40
    ld bc, $0808                                  ; $572e: $01 $08 $08
    rst $28                                       ; $5731: $ef
    add hl, bc                                    ; $5732: $09
    rst $18                                       ; $5733: $df
    ld [$02af], sp                                ; $5734: $08 $af $02
    ld [$f8af], sp                                ; $5737: $08 $af $f8
    rst $38                                       ; $573a: $ff
    adc h                                         ; $573b: $8c
    rlca                                          ; $573c: $07
    ld d, b                                       ; $573d: $50
    add hl, bc                                    ; $573e: $09
    add d                                         ; $573f: $82
    inc c                                         ; $5740: $0c
    rst $38                                       ; $5741: $ff
    ld b, l                                       ; $5742: $45
    rst $38                                       ; $5743: $ff
    add d                                         ; $5744: $82
    sbc b                                         ; $5745: $98
    ld hl, $0930                                  ; $5746: $21 $30 $09
    add hl, bc                                    ; $5749: $09
    db $fd                                        ; $574a: $fd
    db $10                                        ; $574b: $10
    dec d                                         ; $574c: $15
    db $fd                                        ; $574d: $fd
    add hl, bc                                    ; $574e: $09
    ret z                                         ; $574f: $c8

    db $10                                        ; $5750: $10
    ld bc, $f4fd                                  ; $5751: $01 $fd $f4
    db $fd                                        ; $5754: $fd
    nop                                           ; $5755: $00
    ret z                                         ; $5756: $c8

    adc $8e                                       ; $5757: $ce $8e
    add a                                         ; $5759: $87
    sbc l                                         ; $575a: $9d

jr_0be_575b:
    adc c                                         ; $575b: $89
    cp [hl]                                       ; $575c: $be
    sbc h                                         ; $575d: $9c
    nop                                           ; $575e: $00
    rst $38                                       ; $575f: $ff
    cp [hl]                                       ; $5760: $be
    push af                                       ; $5761: $f5
    db $fd                                        ; $5762: $fd
    and c                                         ; $5763: $a1
    cp a                                          ; $5764: $bf
    ld b, a                                       ; $5765: $47
    ld a, a                                       ; $5766: $7f
    nop                                           ; $5767: $00
    inc bc                                        ; $5768: $03
    rst $38                                       ; $5769: $ff
    add a                                         ; $576a: $87
    rst $38                                       ; $576b: $ff
    inc bc                                        ; $576c: $03
    rst $38                                       ; $576d: $ff
    add e                                         ; $576e: $83
    rst $38                                       ; $576f: $ff
    nop                                           ; $5770: $00
    ld b, b                                       ; $5771: $40
    ld a, [hl]                                    ; $5772: $7e
    ld h, h                                       ; $5773: $64
    ld a, l                                       ; $5774: $7d
    ld h, b                                       ; $5775: $60
    ld a, [hl]                                    ; $5776: $7e
    di                                            ; $5777: $f3
    pop hl                                        ; $5778: $e1
    jr nz, jr_0be_575b                            ; $5779: $20 $e0

    ret nz                                        ; $577b: $c0

    ld bc, $8000                                  ; $577c: $01 $00 $80
    ret nz                                        ; $577f: $c0

    add b                                         ; $5780: $80
    add sp, -$80                                  ; $5781: $e8 $80
    nop                                           ; $5783: $00
    db $f4                                        ; $5784: $f4
    and b                                         ; $5785: $a0
    ld a, d                                       ; $5786: $7a
    ret nc                                        ; $5787: $d0

    cp $c3                                        ; $5788: $fe $c3
    rst $38                                       ; $578a: $ff
    ld a, e                                       ; $578b: $7b
    nop                                           ; $578c: $00
    ld a, a                                       ; $578d: $7f
    rrca                                          ; $578e: $0f
    ld a, a                                       ; $578f: $7f
    ld [hl+], a                                   ; $5790: $22
    ccf                                           ; $5791: $3f
    ld de, $0c1f                                  ; $5792: $11 $1f $0c
    ld b, b                                       ; $5795: $40
    rlca                                          ; $5796: $07
    ld [hl+], a                                   ; $5797: $22
    ld bc, $c367                                  ; $5798: $01 $67 $c3
    rst $08                                       ; $579b: $cf
    add a                                         ; $579c: $87
    sbc [hl]                                      ; $579d: $9e
    rlca                                          ; $579e: $07
    nop                                           ; $579f: $00
    ld e, $0f                                     ; $57a0: $1e $0f
    cp h                                          ; $57a2: $bc
    rrca                                          ; $57a3: $0f
    db $fc                                        ; $57a4: $fc
    adc a                                         ; $57a5: $8f
    db $fc                                        ; $57a6: $fc
    ld e, a                                       ; $57a7: $5f
    ld sp, $fffc                                  ; $57a8: $31 $fc $ff
    add h                                         ; $57ab: $84
    add hl, bc                                    ; $57ac: $09
    inc h                                         ; $57ad: $24
    ld c, c                                       ; $57ae: $49
    adc c                                         ; $57af: $89
    cp e                                          ; $57b0: $bb
    add h                                         ; $57b1: $84
    ld a, d                                       ; $57b2: $7a
    ld bc, $8418                                  ; $57b3: $01 $18 $84
    cp a                                          ; $57b6: $bf
    adc c                                         ; $57b7: $89
    xor h                                         ; $57b8: $ac
    nop                                           ; $57b9: $00
    or [hl]                                       ; $57ba: $b6
    ld [$f80c], sp                                ; $57bb: $08 $0c $f8
    add hl, de                                    ; $57be: $19
    ld b, b                                       ; $57bf: $40
    ldh a, [$da]                                  ; $57c0: $f0 $da
    nop                                           ; $57c2: $00
    db $e3                                        ; $57c3: $e3
    ld a, l                                       ; $57c4: $7d
    ret z                                         ; $57c5: $c8

    ld a, b                                       ; $57c6: $78
    ret nc                                        ; $57c7: $d0

    db $fc                                        ; $57c8: $fc
    nop                                           ; $57c9: $00
    ldh [$78], a                                  ; $57ca: $e0 $78
    ld hl, sp+$7f                                 ; $57cc: $f8 $7f
    rra                                           ; $57ce: $1f
    or $c6                                        ; $57cf: $f6 $c6
    nop                                           ; $57d1: $00
    nop                                           ; $57d2: $00
    nop                                           ; $57d3: $00
    add b                                         ; $57d4: $80
    nop                                           ; $57d5: $00
    rst $20                                       ; $57d6: $e7
    add e                                         ; $57d7: $83
    rst $30                                       ; $57d8: $f7
    ld b, a                                       ; $57d9: $47
    rst $30                                       ; $57da: $f7
    nop                                           ; $57db: $00
    ld h, a                                       ; $57dc: $67
    ld a, d                                       ; $57dd: $7a
    ld [hl+], a                                   ; $57de: $22
    add b                                         ; $57df: $80
    rst $38                                       ; $57e0: $ff
    ld [c], a                                     ; $57e1: $e2
    ld a, a                                       ; $57e2: $7f
    ld [hl], l                                    ; $57e3: $75
    nop                                           ; $57e4: $00
    ld a, a                                       ; $57e5: $7f
    ld [hl-], a                                   ; $57e6: $32
    rra                                           ; $57e7: $1f
    pop af                                        ; $57e8: $f1
    rst $38                                       ; $57e9: $ff
    and e                                         ; $57ea: $a3
    ld a, $e2                                     ; $57eb: $3e $e2
    ld [$e6fe], sp                                ; $57ed: $08 $fe $e6
    ld a, h                                       ; $57f0: $7c
    ld bc, $00aa                                  ; $57f1: $01 $aa $00
    dec d                                         ; $57f4: $15
    db $fd                                        ; $57f5: $fd
    ld sp, hl                                     ; $57f6: $f9
    nop                                           ; $57f7: $00
    db $fd                                        ; $57f8: $fd
    ld h, l                                       ; $57f9: $65
    daa                                           ; $57fa: $27
    rst $28                                       ; $57fb: $ef
    ld b, a                                       ; $57fc: $47
    rst $38                                       ; $57fd: $ff
    adc a                                         ; $57fe: $8f
    rst $38                                       ; $57ff: $ff
    nop                                           ; $5800: $00

Jump_0be_5801:
    ld e, a                                       ; $5801: $5f
    xor c                                         ; $5802: $a9
    cp l                                          ; $5803: $bd
    add c                                         ; $5804: $81
    cp e                                          ; $5805: $bb
    add c                                         ; $5806: $81
    sub l                                         ; $5807: $95
    add c                                         ; $5808: $81
    nop                                           ; $5809: $00
    cp e                                          ; $580a: $bb
    cp a                                          ; $580b: $bf
    rst $38                                       ; $580c: $ff
    add c                                         ; $580d: $81
    cp a                                          ; $580e: $bf
    add c                                         ; $580f: $81
    cp a                                          ; $5810: $bf
    adc c                                         ; $5811: $89
    nop                                           ; $5812: $00
    cp a                                          ; $5813: $bf
    ld l, b                                       ; $5814: $68
    ld a, l                                       ; $5815: $7d
    ld h, b                                       ; $5816: $60
    ld a, d                                       ; $5817: $7a
    ld h, b                                       ; $5818: $60
    ld [hl], l                                    ; $5819: $75
    ld h, b                                       ; $581a: $60
    ld [$7f7a], sp                                ; $581b: $08 $7a $7f
    ld a, a                                       ; $581e: $7f
    ld h, b                                       ; $581f: $60
    ld [bc], a                                    ; $5820: $02
    nop                                           ; $5821: $00
    ld [hl], b                                    ; $5822: $70
    ld a, a                                       ; $5823: $7f
    ld a, l                                       ; $5824: $7d
    nop                                           ; $5825: $00
    ld h, b                                       ; $5826: $60
    ld a, a                                       ; $5827: $7f
    call c, Call_0be_537f                         ; $5828: $dc $7f $53
    ld a, a                                       ; $582b: $7f
    call nz, Call_000_08fe                        ; $582c: $c4 $fe $08
    ret c                                         ; $582f: $d8

    ld [hl], l                                    ; $5830: $75
    ret nz                                        ; $5831: $c0

    add sp, -$4a                                  ; $5832: $e8 $b6
    nop                                           ; $5834: $00
    ld b, b                                       ; $5835: $40
    nop                                           ; $5836: $00
    db $f4                                        ; $5837: $f4
    nop                                           ; $5838: $00
    nop                                           ; $5839: $00
    rst $38                                       ; $583a: $ff
    ldh [rIE], a                                  ; $583b: $e0 $ff
    rra                                           ; $583d: $1f
    cp a                                          ; $583e: $bf
    ld bc, $005f                                  ; $583f: $01 $5f $00
    inc bc                                        ; $5842: $03
    cp a                                          ; $5843: $bf
    inc bc                                        ; $5844: $03
    ld e, a                                       ; $5845: $5f
    rlca                                          ; $5846: $07
    ccf                                           ; $5847: $3f
    rrca                                          ; $5848: $0f
    nop                                           ; $5849: $00
    nop                                           ; $584a: $00
    nop                                           ; $584b: $00
    xor b                                         ; $584c: $a8
    nop                                           ; $584d: $00
    rst $38                                       ; $584e: $ff
    ldh a, [rIE]                                  ; $584f: $f0 $ff
    rst $38                                       ; $5851: $ff
    add a                                         ; $5852: $87
    nop                                           ; $5853: $00
    xor a                                         ; $5854: $af
    nop                                           ; $5855: $00
    ld e, l                                       ; $5856: $5d
    inc d                                         ; $5857: $14
    cp [hl]                                       ; $5858: $be
    pop af                                        ; $5859: $f1
    db $fd                                        ; $585a: $fd
    add hl, sp                                    ; $585b: $39
    nop                                           ; $585c: $00
    dec e                                         ; $585d: $1d
    dec l                                         ; $585e: $2d
    dec h                                         ; $585f: $25
    sbc l                                         ; $5860: $9d
    dec e                                         ; $5861: $1d
    db $fd                                        ; $5862: $fd
    rra                                           ; $5863: $1f
    ld sp, hl                                     ; $5864: $f9
    inc b                                         ; $5865: $04
    ld sp, hl                                     ; $5866: $f9
    ld [hl], c                                    ; $5867: $71
    ld a, l                                       ; $5868: $7d
    dec d                                         ; $5869: $15
    cp l                                          ; $586a: $bd
    ld d, [hl]                                    ; $586b: $56
    add hl, de                                    ; $586c: $19
    ret nc                                        ; $586d: $d0

    rst $18                                       ; $586e: $df
    nop                                           ; $586f: $00
    sbc h                                         ; $5870: $9c
    adc a                                         ; $5871: $8f
    cp d                                          ; $5872: $ba
    sub e                                         ; $5873: $93
    cp l                                          ; $5874: $bd
    cp c                                          ; $5875: $b9
    xor $fe                                       ; $5876: $ee $fe
    nop                                           ; $5878: $00
    db $fd                                        ; $5879: $fd
    db $ec                                        ; $587a: $ec
    ei                                            ; $587b: $fb
    pop af                                        ; $587c: $f1
    ccf                                           ; $587d: $3f
    ei                                            ; $587e: $fb
    rrca                                          ; $587f: $0f
    cp $10                                        ; $5880: $fe $10
    ld e, $fe                                     ; $5882: $1e $fe
    ld c, $2e                                     ; $5884: $0e $2e
    ld [bc], a                                    ; $5886: $02
    sub a                                         ; $5887: $97
    db $fd                                        ; $5888: $fd
    rst $18                                       ; $5889: $df
    sbc d                                         ; $588a: $9a
    nop                                           ; $588b: $00
    rst $30                                       ; $588c: $f7
    rst $00                                       ; $588d: $c7
    db $fd                                        ; $588e: $fd
    ldh a, [rIF]                                  ; $588f: $f0 $0f
    rlca                                          ; $5891: $07
    rlca                                          ; $5892: $07
    ld bc, $0700                                  ; $5893: $01 $00 $07
    nop                                           ; $5896: $00
    inc bc                                        ; $5897: $03
    ld [bc], a                                    ; $5898: $02
    ret nz                                        ; $5899: $c0

    nop                                           ; $589a: $00
    call nz, Call_000_00fc                        ; $589b: $c4 $fc $00
    call z, $88f8                                 ; $589e: $cc $f8 $88
    ld hl, sp-$0d                                 ; $58a1: $f8 $f3
    ld h, c                                       ; $58a3: $61
    rst $20                                       ; $58a4: $e7
    pop hl                                        ; $58a5: $e1
    nop                                           ; $58a6: $00
    rst $20                                       ; $58a7: $e7
    ld b, e                                       ; $58a8: $43
    rst $28                                       ; $58a9: $ef
    inc hl                                        ; $58aa: $23
    rst $38                                       ; $58ab: $ff
    ld [hl], a                                    ; $58ac: $77
    ld sp, hl                                     ; $58ad: $f9
    ld a, l                                       ; $58ae: $7d
    dec b                                         ; $58af: $05
    push de                                       ; $58b0: $d5
    db $fd                                        ; $58b1: $fd
    ret                                           ; $58b2: $c9


    db $fd                                        ; $58b3: $fd
    add c                                         ; $58b4: $81
    ld e, [hl]                                    ; $58b5: $5e
    ld hl, $b009                                  ; $58b6: $21 $09 $b0
    add hl, de                                    ; $58b9: $19
    nop                                           ; $58ba: $00
    or a                                          ; $58bb: $b7
    add b                                         ; $58bc: $80
    xor e                                         ; $58bd: $ab
    add c                                         ; $58be: $81
    or a                                          ; $58bf: $b7
    add d                                         ; $58c0: $82
    cp [hl]                                       ; $58c1: $be
    add e                                         ; $58c2: $83
    db $10                                        ; $58c3: $10
    cp [hl]                                       ; $58c4: $be
    add d                                         ; $58c5: $82
    cp [hl]                                       ; $58c6: $be
    ldh [$0a], a                                  ; $58c7: $e0 $0a
    add hl, bc                                    ; $58c9: $09
    cp a                                          ; $58ca: $bf
    ld a, [bc]                                    ; $58cb: $0a
    ld e, a                                       ; $58cc: $5f
    nop                                           ; $58cd: $00
    ld a, c                                       ; $58ce: $79
    rst $38                                       ; $58cf: $ff
    call z, $778f                                 ; $58d0: $cc $8f $77
    inc hl                                        ; $58d3: $23
    add c                                         ; $58d4: $81
    ld bc, $c0a0                                  ; $58d5: $01 $a0 $c0
    ld a, [de]                                    ; $58d8: $1a
    xor c                                         ; $58d9: $a9
    cp h                                          ; $58da: $bc
    ld [de], a                                    ; $58db: $12
    ld de, $bdfd                                  ; $58dc: $11 $fd $bd
    db $fd                                        ; $58df: $fd
    adc c                                         ; $58e0: $89
    inc l                                         ; $58e1: $2c
    cp a                                          ; $58e2: $bf
    sub l                                         ; $58e3: $95
    sub $00                                       ; $58e4: $d6 $00
    adc b                                         ; $58e6: $88
    xor [hl]                                      ; $58e7: $ae
    ld [bc], a                                    ; $58e8: $02
    ld [bc], a                                    ; $58e9: $02
    jr jr_0be_595d                                ; $58ea: $18 $71

    ld a, a                                       ; $58ec: $7f
    nop                                           ; $58ed: $00
    ld l, e                                       ; $58ee: $6b
    ld a, [hl]                                    ; $58ef: $7e
    or [hl]                                       ; $58f0: $b6
    inc a                                         ; $58f1: $3c
    or h                                          ; $58f2: $b4

jr_0be_58f3:
    cp h                                          ; $58f3: $bc
    call c, $0198                                 ; $58f4: $dc $98 $01
    ld a, h                                       ; $58f7: $7c
    ret z                                         ; $58f8: $c8

    jr c, jr_0be_58f3                             ; $58f9: $38 $f8

    inc e                                         ; $58fb: $1c
    ld hl, sp-$80                                 ; $58fc: $f8 $80
    rst $28                                       ; $58fe: $ef
    ld bc, $0000                                  ; $58ff: $01 $00 $00
    nop                                           ; $5902: $00
    inc b                                         ; $5903: $04
    nop                                           ; $5904: $00
    ld b, $04                                     ; $5905: $06 $04
    ld b, $02                                     ; $5907: $06 $02
    ld b, b                                       ; $5909: $40
    inc bc                                        ; $590a: $03
    ld [bc], a                                    ; $590b: $02
    nop                                           ; $590c: $00
    ld l, $0f                                     ; $590d: $2e $0f
    ld e, $0e                                     ; $590f: $1e $0e
    inc e                                         ; $5911: $1c
    rrca                                          ; $5912: $0f
    nop                                           ; $5913: $00
    dec e                                         ; $5914: $1d
    rrca                                          ; $5915: $0f
    inc a                                         ; $5916: $3c
    rra                                           ; $5917: $1f
    ld a, c                                       ; $5918: $79
    rra                                           ; $5919: $1f
    ld hl, sp+$2f                                 ; $591a: $f8 $2f
    nop                                           ; $591c: $00
    cp $46                                        ; $591d: $fe $46
    nop                                           ; $591f: $00
    ld a, a                                       ; $5920: $7f
    ld [hl+], a                                   ; $5921: $22
    cp [hl]                                       ; $5922: $be
    nop                                           ; $5923: $00
    ld a, a                                       ; $5924: $7f
    ld [hl], b                                    ; $5925: $70
    ld b, c                                       ; $5926: $41
    add [hl]                                      ; $5927: $86
    inc bc                                        ; $5928: $03
    inc b                                         ; $5929: $04
    nop                                           ; $592a: $00
    inc c                                         ; $592b: $0c
    nop                                           ; $592c: $00
    ld bc, $217d                                  ; $592d: $01 $7d $21
    cp l                                          ; $5930: $bd
    inc e                                         ; $5931: $1c
    ld bc, $417d                                  ; $5932: $01 $7d $41
    ld a, [de]                                    ; $5935: $1a
    inc bc                                        ; $5936: $03
    inc b                                         ; $5937: $04
    nop                                           ; $5938: $00
    inc c                                         ; $5939: $0c
    nop                                           ; $593a: $00
    add [hl]                                      ; $593b: $86
    cp [hl]                                       ; $593c: $be
    nop                                           ; $593d: $00
    sub d                                         ; $593e: $92
    cp d                                          ; $593f: $ba

jr_0be_5940:
    add d                                         ; $5940: $82
    xor d                                         ; $5941: $aa
    add d                                         ; $5942: $82
    or [hl]                                       ; $5943: $b6
    cp [hl]                                       ; $5944: $be
    cp $40                                        ; $5945: $fe $40
    add d                                         ; $5947: $82
    adc [hl]                                      ; $5948: $8e
    nop                                           ; $5949: $00
    sub d                                         ; $594a: $92
    cp [hl]                                       ; $594b: $be
    add e                                         ; $594c: $83
    or $a3                                        ; $594d: $f6 $a3
    ei                                            ; $594f: $fb
    nop                                           ; $5950: $00
    add e                                         ; $5951: $83
    jp c, $e683                                   ; $5952: $da $83 $e6

    rst $38                                       ; $5955: $ff
    cp $83                                        ; $5956: $fe $83
    cp $40                                        ; $5958: $fe $40
    add $cc                                       ; $595a: $c6 $cc
    nop                                           ; $595c: $00

jr_0be_595d:
    and b                                         ; $595d: $a0
    add b                                         ; $595e: $80
    call nc, $ff00                                ; $595f: $d4 $00 $ff
    cp h                                          ; $5962: $bc
    nop                                           ; $5963: $00
    rst $38                                       ; $5964: $ff
    ld b, e                                       ; $5965: $43
    db $eb                                        ; $5966: $eb
    add b                                         ; $5967: $80
    rst $10                                       ; $5968: $d7
    nop                                           ; $5969: $00
    rlca                                          ; $596a: $07
    nop                                           ; $596b: $00
    nop                                           ; $596c: $00
    ld bc, $3f01                                  ; $596d: $01 $01 $3f
    rra                                           ; $5970: $1f
    rrca                                          ; $5971: $0f
    inc bc                                        ; $5972: $03
    ld [$0000], a                                 ; $5973: $ea $00 $00
    rst $38                                       ; $5976: $ff
    db $fc                                        ; $5977: $fc
    rst $38                                       ; $5978: $ff
    ccf                                           ; $5979: $3f
    pop hl                                        ; $597a: $e1
    ld l, e                                       ; $597b: $6b
    push hl                                       ; $597c: $e5
    rst $28                                       ; $597d: $ef
    jr nz, jr_0be_5940                            ; $597e: $20 $c0

    rst $38                                       ; $5980: $ff
    adc h                                         ; $5981: $8c
    add hl, bc                                    ; $5982: $09
    dec d                                         ; $5983: $15
    dec d                                         ; $5984: $15
    call $fd0d                                    ; $5985: $cd $0d $fd
    nop                                           ; $5988: $00
    adc a                                         ; $5989: $8f
    ld sp, hl                                     ; $598a: $f9
    ld sp, hl                                     ; $598b: $f9
    dec c                                         ; $598c: $0d
    ld e, l                                       ; $598d: $5d
    ld bc, $82bd                                  ; $598e: $01 $bd $82
    nop                                           ; $5991: $00
    or [hl]                                       ; $5992: $b6
    add e                                         ; $5993: $83
    xor d                                         ; $5994: $aa
    add a                                         ; $5995: $87
    or h                                          ; $5996: $b4
    add a                                         ; $5997: $87
    cp h                                          ; $5998: $bc
    add a                                         ; $5999: $87
    nop                                           ; $599a: $00
    cp [hl]                                       ; $599b: $be
    db $e3                                        ; $599c: $e3
    cp $23                                        ; $599d: $fe $23
    scf                                           ; $599f: $37
    ld [hl], c                                    ; $59a0: $71
    dec de                                        ; $59a1: $1b
    ld h, a                                       ; $59a2: $67
    nop                                           ; $59a3: $00
    ld h, c                                       ; $59a4: $61
    ld l, l                                       ; $59a5: $6d
    dec l                                         ; $59a6: $2d
    ccf                                           ; $59a7: $3f
    cpl                                           ; $59a8: $2f
    sbc e                                         ; $59a9: $9b
    sub e                                         ; $59aa: $93
    rst $38                                       ; $59ab: $ff
    nop                                           ; $59ac: $00
    ld l, a                                       ; $59ad: $6f
    sbc $99                                       ; $59ae: $de $99
    adc a                                         ; $59b0: $8f
    add e                                         ; $59b1: $83
    adc a                                         ; $59b2: $8f
    nop                                           ; $59b3: $00
    scf                                           ; $59b4: $37
    nop                                           ; $59b5: $00
    db $e3                                        ; $59b6: $e3
    ld a, a                                       ; $59b7: $7f

jr_0be_59b8:
    jp $d75f                                      ; $59b8: $c3 $5f $d7


    db $dd                                        ; $59bb: $dd
    db $dd                                        ; $59bc: $dd
    pop de                                        ; $59bd: $d1
    nop                                           ; $59be: $00
    sbc l                                         ; $59bf: $9d
    cp c                                          ; $59c0: $b9
    sbc l                                         ; $59c1: $9d
    ld [hl], l                                    ; $59c2: $75
    dec a                                         ; $59c3: $3d
    ld l, c                                       ; $59c4: $69
    dec a                                         ; $59c5: $3d

jr_0be_59c6:
    adc b                                         ; $59c6: $88
    or b                                          ; $59c7: $b0
    call c, $9400                                 ; $59c8: $dc $00 $94
    ldh [rP1], a                                  ; $59cb: $e0 $00
    ld [c], a                                     ; $59cd: $e2
    jr z, jr_0be_59e8                             ; $59ce: $28 $18

    ld hl, sp+$18                                 ; $59d0: $f8 $18
    ld hl, sp+$00                                 ; $59d2: $f8 $00
    jr c, jr_0be_59c6                             ; $59d4: $38 $f0

    jr nc, jr_0be_59b8                            ; $59d6: $30 $e0

    ld h, d                                       ; $59d8: $62
    ret nz                                        ; $59d9: $c0

    push bc                                       ; $59da: $c5
    add b                                         ; $59db: $80
    nop                                           ; $59dc: $00
    jp $e780                                      ; $59dd: $c3 $80 $e7


    add c                                         ; $59e0: $81
    rlca                                          ; $59e1: $07
    ld [bc], a                                    ; $59e2: $02
    rla                                           ; $59e3: $17
    inc bc                                        ; $59e4: $03
    nop                                           ; $59e5: $00
    cpl                                           ; $59e6: $2f
    ld [bc], a                                    ; $59e7: $02

jr_0be_59e8:
    ld e, a                                       ; $59e8: $5f
    inc b                                         ; $59e9: $04
    cp a                                          ; $59ea: $bf
    inc c                                         ; $59eb: $0c
    rst $38                                       ; $59ec: $ff
    jr jr_0be_59ef                                ; $59ed: $18 $00

jr_0be_59ef:
    cp $7c                                        ; $59ef: $fe $7c
    or $fc                                        ; $59f1: $f6 $fc
    cp $87                                        ; $59f3: $fe $87
    cp $06                                        ; $59f5: $fe $06
    nop                                           ; $59f7: $00
    xor $0f                                       ; $59f8: $ee $0f
    call c, $9c0e                                 ; $59fa: $dc $0e $9c
    dec e                                         ; $59fd: $1d
    inc a                                         ; $59fe: $3c

Jump_0be_59ff:
    ld a, $00                                     ; $59ff: $3e $00
    ld [hl], b                                    ; $5a01: $70
    ld a, a                                       ; $5a02: $7f
    ld h, d                                       ; $5a03: $62
    ld a, [hl]                                    ; $5a04: $7e
    nop                                           ; $5a05: $00
    ld a, a                                       ; $5a06: $7f
    inc d                                         ; $5a07: $14
    cp [hl]                                       ; $5a08: $be
    dec c                                         ; $5a09: $0d

jr_0be_5a0a:
    nop                                           ; $5a0a: $00
    ld e, l                                       ; $5a0b: $5d
    nop                                           ; $5a0c: $00
    xor d                                         ; $5a0d: $aa
    cp h                                          ; $5a0e: $bc

Jump_0be_5a0f:
    add hl, bc                                    ; $5a0f: $09
    db $ec                                        ; $5a10: $ec
    ld [$c4aa], sp                                ; $5a11: $08 $aa $c4
    ld [$be20], sp                                ; $5a14: $08 $20 $be
    add c                                         ; $5a17: $81
    jr nc, jr_0be_5a2b                            ; $5a18: $30 $11

    sub b                                         ; $5a1a: $90
    cp a                                          ; $5a1b: $bf
    xor b                                         ; $5a1c: $a8
    cp a                                          ; $5a1d: $bf
    xor b                                         ; $5a1e: $a8
    nop                                           ; $5a1f: $00
    ldh a, [$d0]                                  ; $5a20: $f0 $d0
    ldh a, [rSVBK]                                ; $5a22: $f0 $70
    ld h, b                                       ; $5a24: $60
    ldh a, [rNR41]                                ; $5a25: $f0 $20
    ldh [rNR41], a                                ; $5a27: $e0 $20
    ldh [$60], a                                  ; $5a29: $e0 $60

jr_0be_5a2b:
    ld [bc], a                                    ; $5a2b: $02
    nop                                           ; $5a2c: $00
    pop hl                                        ; $5a2d: $e1
    ret nz                                        ; $5a2e: $c0

    inc bc                                        ; $5a2f: $03
    ld bc, $0043                                  ; $5a30: $01 $43 $00
    ld bc, $4363                                  ; $5a33: $01 $63 $43
    ld h, a                                       ; $5a36: $67
    inc hl                                        ; $5a37: $23
    ccf                                           ; $5a38: $3f
    ld hl, $007f                                  ; $5a39: $21 $7f $00
    jr z, @+$01                                   ; $5a3c: $28 $ff

    jr nc, @+$7f                                  ; $5a3e: $30 $7d

    jr nz, jr_0be_5a0a                            ; $5a40: $20 $c8

    rst $08                                       ; $5a42: $cf
    or b                                          ; $5a43: $b0
    ret nz                                        ; $5a44: $c0

    ld b, [hl]                                    ; $5a45: $46
    inc b                                         ; $5a46: $04
    inc b                                         ; $5a47: $04
    ld [$ffc0], sp                                ; $5a48: $08 $c0 $ff
    push bc                                       ; $5a4b: $c5
    rst $08                                       ; $5a4c: $cf
    ret nz                                        ; $5a4d: $c0

    rst $30                                       ; $5a4e: $f7
    jr jr_0be_5a62                                ; $5a4f: $18 $11

    ld e, l                                       ; $5a51: $5d
    and c                                         ; $5a52: $a1
    ld [hl], $04                                  ; $5a53: $36 $04
    inc b                                         ; $5a55: $04
    ld [$bd01], sp                                ; $5a56: $08 $01 $bd
    add hl, bc                                    ; $5a59: $09
    ld bc, $015d                                  ; $5a5a: $01 $5d $01
    xor l                                         ; $5a5d: $ad
    ld sp, hl                                     ; $5a5e: $f9
    ld l, a                                       ; $5a5f: $6f
    sbc b                                         ; $5a60: $98
    cp a                                          ; $5a61: $bf

jr_0be_5a62:
    ld [bc], a                                    ; $5a62: $02
    ld [$ff00], sp                                ; $5a63: $08 $00 $ff
    rst $38                                       ; $5a66: $ff
    sbc b                                         ; $5a67: $98
    cp a                                          ; $5a68: $bf
    sbc l                                         ; $5a69: $9d
    cp a                                          ; $5a6a: $bf
    sub [hl]                                      ; $5a6b: $96
    or [hl]                                       ; $5a6c: $b6
    nop                                           ; $5a6d: $00
    add a                                         ; $5a6e: $87
    ld [bc], a                                    ; $5a6f: $02
    pop bc                                        ; $5a70: $c1
    ret nz                                        ; $5a71: $c0

    cp $e0                                        ; $5a72: $fe $e0
    rst $38                                       ; $5a74: $ff
    and a                                         ; $5a75: $a7
    nop                                           ; $5a76: $00
    rst $20                                       ; $5a77: $e7
    pop bc                                        ; $5a78: $c1
    add a                                         ; $5a79: $87
    ld bc, $0302                                  ; $5a7a: $01 $02 $03
    ld b, $02                                     ; $5a7d: $06 $02
    nop                                           ; $5a7f: $00
    pop hl                                        ; $5a80: $e1
    dec a                                         ; $5a81: $3d
    pop hl                                        ; $5a82: $e1
    db $fd                                        ; $5a83: $fd
    dec b                                         ; $5a84: $05
    dec b                                         ; $5a85: $05
    rst $30                                       ; $5a86: $f7
    rst $00                                       ; $5a87: $c7
    nop                                           ; $5a88: $00
    rst $38                                       ; $5a89: $ff
    rst $30                                       ; $5a8a: $f7
    dec c                                         ; $5a8b: $0d
    db $fd                                        ; $5a8c: $fd
    ld bc, $01ed                                  ; $5a8d: $01 $ed $01
    push de                                       ; $5a90: $d5
    nop                                           ; $5a91: $00
    nop                                           ; $5a92: $00
    nop                                           ; $5a93: $00
    ld d, b                                       ; $5a94: $50
    ld a, d                                       ; $5a95: $7a
    rlca                                          ; $5a96: $07
    ld d, a                                       ; $5a97: $57
    dec c                                         ; $5a98: $0d
    ld a, b                                       ; $5a99: $78
    nop                                           ; $5a9a: $00
    ld a, [bc]                                    ; $5a9b: $0a
    ld a, b                                       ; $5a9c: $78
    rrca                                          ; $5a9d: $0f
    ld a, d                                       ; $5a9e: $7a
    rrca                                          ; $5a9f: $0f
    ld e, c                                       ; $5aa0: $59
    cp a                                          ; $5aa1: $bf
    cp d                                          ; $5aa2: $ba
    nop                                           ; $5aa3: $00
    nop                                           ; $5aa4: $00
    nop                                           ; $5aa5: $00
    ld c, b                                       ; $5aa6: $48
    cp $00                                        ; $5aa7: $fe $00
    cp $c0                                        ; $5aa9: $fe $c0
    cp $00                                        ; $5aab: $fe $00
    ld l, $3e                                     ; $5aad: $2e $3e
    ld l, l                                       ; $5aaf: $6d
    ld a, c                                       ; $5ab0: $79
    rst $30                                       ; $5ab1: $f7
    scf                                           ; $5ab2: $37
    call nc, Call_0be_60f6                        ; $5ab3: $d4 $f6 $60
    add b                                         ; $5ab6: $80
    db $ec                                        ; $5ab7: $ec
    db $10                                        ; $5ab8: $10
    ld a, [c]                                     ; $5ab9: $f2
    jr c, jr_0be_5b33                             ; $5aba: $38 $77

    jp $e133                                      ; $5abc: $c3 $33 $e1


    ld de, $f108                                  ; $5abf: $11 $08 $f1
    ld sp, $18f0                                  ; $5ac2: $31 $f0 $18
    ld [bc], a                                    ; $5ac5: $02

jr_0be_5ac6:
    nop                                           ; $5ac6: $00
    inc e                                         ; $5ac7: $1c
    ldh a, [$0e]                                  ; $5ac8: $f0 $0e
    nop                                           ; $5aca: $00
    ld hl, sp-$3e                                 ; $5acb: $f8 $c2
    cp $23                                        ; $5acd: $fe $23
    cp $a1                                        ; $5acf: $fe $a1
    rst $38                                       ; $5ad1: $ff
    pop de                                        ; $5ad2: $d1
    nop                                           ; $5ad3: $00
    rst $38                                       ; $5ad4: $ff
    pop hl                                        ; $5ad5: $e1
    rst $38                                       ; $5ad6: $ff
    pop hl                                        ; $5ad7: $e1
    ld a, a                                       ; $5ad8: $7f
    ld sp, $191f                                  ; $5ad9: $31 $1f $19

Call_0be_5adc:
    ld [bc], a                                    ; $5adc: $02
    rrca                                          ; $5add: $0f
    ld h, b                                       ; $5ade: $60
    ccf                                           ; $5adf: $3f
    ld sp, $303f                                  ; $5ae0: $31 $3f $30
    ld [$8c00], sp                                ; $5ae3: $08 $00 $8c
    ld bc, $c307                                  ; $5ae6: $01 $07 $c3
    inc bc                                        ; $5ae9: $03
    ldh [$80], a                                  ; $5aea: $e0 $80
    ld a, a                                       ; $5aec: $7f
    jp nz, Jump_0be_49cc                          ; $5aed: $c2 $cc $49

    ld bc, $ff80                                  ; $5af0: $01 $80 $ff
    call nc, $91fe                                ; $5af3: $d4 $fe $91
    cp a                                          ; $5af6: $bf
    add e                                         ; $5af7: $83
    ldh a, [rNR41]                                ; $5af8: $f0 $20
    add b                                         ; $5afa: $80
    xor $08                                       ; $5afb: $ee $08
    sub b                                         ; $5afd: $90
    cp a                                          ; $5afe: $bf
    add l                                         ; $5aff: $85
    nop                                           ; $5b00: $00
    rra                                           ; $5b01: $1f
    nop                                           ; $5b02: $00
    rrca                                          ; $5b03: $0f
    nop                                           ; $5b04: $00
    inc bc                                        ; $5b05: $03
    sbc a                                         ; $5b06: $9f
    rrca                                          ; $5b07: $0f
    ret z                                         ; $5b08: $c8

    adc a                                         ; $5b09: $8f
    ret                                           ; $5b0a: $c9


    rst $08                                       ; $5b0b: $cf
    call z, $c700                                 ; $5b0c: $cc $00 $c7
    ld h, a                                       ; $5b0f: $67
    jp Jump_0be_41fb                              ; $5b10: $c3 $fb $41


    di                                            ; $5b13: $f3
    add e                                         ; $5b14: $83
    and $00                                       ; $5b15: $e6 $00
    rst $00                                       ; $5b17: $c7
    db $e4                                        ; $5b18: $e4
    rst $00                                       ; $5b19: $c7
    ld [hl-], a                                   ; $5b1a: $32
    db $e3                                        ; $5b1b: $e3
    ld [de], a                                    ; $5b1c: $12
    di                                            ; $5b1d: $f3
    sub e                                         ; $5b1e: $93
    nop                                           ; $5b1f: $00
    pop af                                        ; $5b20: $f1
    inc e                                         ; $5b21: $1c
    ldh a, [$80]                                  ; $5b22: $f0 $80
    or a                                          ; $5b24: $b7
    add l                                         ; $5b25: $85
    rst $08                                       ; $5b26: $cf
    nop                                           ; $5b27: $00
    ld [$48ff], sp                                ; $5b28: $08 $ff $48
    rst $08                                       ; $5b2b: $cf
    jr nc, jr_0be_5ac6                            ; $5b2c: $30 $98

    dec b                                         ; $5b2e: $05
    jr nc, @+$01                                  ; $5b2f: $30 $ff

    ld l, b                                       ; $5b31: $68
    inc d                                         ; $5b32: $14

jr_0be_5b33:
    ld l, a                                       ; $5b33: $6f
    ld bc, $e6ad                                  ; $5b34: $01 $ad $e6
    nop                                           ; $5b37: $00
    cp l                                          ; $5b38: $bd
    or $28                                        ; $5b39: $f6 $28
    ld de, $005d                                  ; $5b3b: $11 $5d $00
    adc [hl]                                      ; $5b3e: $8e
    or h                                          ; $5b3f: $b4
    adc [hl]                                      ; $5b40: $8e
    cp b                                          ; $5b41: $b8
    adc [hl]                                      ; $5b42: $8e
    cp h                                          ; $5b43: $bc
    sub h                                         ; $5b44: $94
    cp h                                          ; $5b45: $bc
    nop                                           ; $5b46: $00
    adc h                                         ; $5b47: $8c
    cp b                                          ; $5b48: $b8
    sbc e                                         ; $5b49: $9b
    or b                                          ; $5b4a: $b0
    sbc c                                         ; $5b4b: $99
    or b                                          ; $5b4c: $b0
    adc a                                         ; $5b4d: $8f
    cp c                                          ; $5b4e: $b9
    nop                                           ; $5b4f: $00
    ld h, $27                                     ; $5b50: $26 $27
    inc l                                         ; $5b52: $2c
    rlca                                          ; $5b53: $07
    ld e, $0b                                     ; $5b54: $1e $0b
    ld a, [hl]                                    ; $5b56: $7e
    inc de                                        ; $5b57: $13
    nop                                           ; $5b58: $00
    cp $23                                        ; $5b59: $fe $23
    or $46                                        ; $5b5b: $f6 $46
    db $ec                                        ; $5b5d: $ec
    db $ed                                        ; $5b5e: $ed
    xor h                                         ; $5b5f: $ac
    rst $20                                       ; $5b60: $e7
    ldh a, [$e4]                                  ; $5b61: $f0 $e4
    nop                                           ; $5b63: $00
    ld a, [hl+]                                   ; $5b64: $2a
    inc e                                         ; $5b65: $1c
    db $ec                                        ; $5b66: $ec
    nop                                           ; $5b67: $00
    inc c                                         ; $5b68: $0c
    ld [$dcd4], sp                                ; $5b69: $08 $d4 $dc
    ld d, h                                       ; $5b6c: $54
    ld e, h                                       ; $5b6d: $5c
    nop                                           ; $5b6e: $00
    ld d, e                                       ; $5b6f: $53
    ld e, [hl]                                    ; $5b70: $5e
    ld d, a                                       ; $5b71: $57
    ld e, a                                       ; $5b72: $5f
    halt                                          ; $5b73: $76
    ld e, h                                       ; $5b74: $5c
    ld a, h                                       ; $5b75: $7c
    ld l, b                                       ; $5b76: $68
    nop                                           ; $5b77: $00
    ld e, b                                       ; $5b78: $58
    ld [hl], b                                    ; $5b79: $70
    ld de, $e871                                  ; $5b7a: $11 $71 $e8
    xor $78                                       ; $5b7d: $ee $78
    ld l, $00                                     ; $5b7f: $2e $00
    jr c, jr_0be_5ba1                             ; $5b81: $38 $1e

    ldh a, [$80]                                  ; $5b83: $f0 $80
    cp $3e                                        ; $5b85: $fe $3e
    ld b, b                                       ; $5b87: $40
    ld a, d                                       ; $5b88: $7a
    ld bc, $7e6a                                  ; $5b89: $01 $6a $7e
    ret nz                                        ; $5b8c: $c0

    ld a, d                                       ; $5b8d: $7a
    add c                                         ; $5b8e: $81
    nop                                           ; $5b8f: $00
    ld bc, $03ce                                  ; $5b90: $01 $ce $03
    nop                                           ; $5b93: $00
    dec b                                         ; $5b94: $05
    add e                                         ; $5b95: $83
    xor [hl]                                      ; $5b96: $ae
    sbc a                                         ; $5b97: $9f
    di                                            ; $5b98: $f3
    db $fc                                        ; $5b99: $fc
    sbc b                                         ; $5b9a: $98
    rst $20                                       ; $5b9b: $e7
    dec [hl]                                      ; $5b9c: $35
    or c                                          ; $5b9d: $b1
    ld c, $c8                                     ; $5b9e: $0e $c8
    ld a, [bc]                                    ; $5ba0: $0a

jr_0be_5ba1:
    db $f4                                        ; $5ba1: $f4
    add hl, hl                                    ; $5ba2: $29
    add b                                         ; $5ba3: $80
    cp a                                          ; $5ba4: $bf
    dec b                                         ; $5ba5: $05
    rlca                                          ; $5ba6: $07
    ld e, h                                       ; $5ba7: $5c
    inc b                                         ; $5ba8: $04
    ld d, h                                       ; $5ba9: $54
    db $10                                        ; $5baa: $10
    ld [bc], a                                    ; $5bab: $02
    nop                                           ; $5bac: $00
    jr z, jr_0be_5bb5                             ; $5bad: $28 $06

    nop                                           ; $5baf: $00
    nop                                           ; $5bb0: $00
    cp a                                          ; $5bb1: $bf
    dec b                                         ; $5bb2: $05
    db $fd                                        ; $5bb3: $fd
    ld e, a                                       ; $5bb4: $5f

jr_0be_5bb5:
    ld bc, $fffd                                  ; $5bb5: $01 $fd $ff
    ld a, c                                       ; $5bb8: $79
    rst $38                                       ; $5bb9: $ff
    ld hl, $51ff                                  ; $5bba: $21 $ff $51
    inc b                                         ; $5bbd: $04
    nop                                           ; $5bbe: $00
    ld b, b                                       ; $5bbf: $40

jr_0be_5bc0:
    nop                                           ; $5bc0: $00
    ld c, $03                                     ; $5bc1: $0e $03
    ccf                                           ; $5bc3: $3f
    ld l, e                                       ; $5bc4: $6b
    rra                                           ; $5bc5: $1f
    cp a                                          ; $5bc6: $bf
    rrca                                          ; $5bc7: $0f
    ld e, a                                       ; $5bc8: $5f
    rst $00                                       ; $5bc9: $c7
    call c, $2019                                 ; $5bca: $dc $19 $20
    ld [$ddc0], sp                                ; $5bcd: $08 $c0 $dd
    add b                                         ; $5bd0: $80
    db $ec                                        ; $5bd1: $ec
    ld sp, $0830                                  ; $5bd2: $31 $30 $08
    jr @+$2d                                      ; $5bd5: $18 $2b

    ret nz                                        ; $5bd7: $c0

    db $ec                                        ; $5bd8: $ec
    add hl, bc                                    ; $5bd9: $09
    ld d, b                                       ; $5bda: $50
    ld [$c071], sp                                ; $5bdb: $08 $71 $c0
    jr nc, jr_0be_5bc0                            ; $5bde: $30 $e0

    rra                                           ; $5be0: $1f
    ld a, [$0750]                                 ; $5be1: $fa $50 $07
    xor $02                                       ; $5be4: $ee $02
    and d                                         ; $5be6: $a2
    ld d, b                                       ; $5be7: $50
    db $10                                        ; $5be8: $10
    sbc h                                         ; $5be9: $9c
    ld hl, sp-$29                                 ; $5bea: $f8 $d7
    ld a, h                                       ; $5bec: $7c
    nop                                           ; $5bed: $00
    db $d3                                        ; $5bee: $d3
    push af                                       ; $5bef: $f5
    sub c                                         ; $5bf0: $91
    rst $30                                       ; $5bf1: $f7
    ld [de], a                                    ; $5bf2: $12
    ei                                            ; $5bf3: $fb
    sub b                                         ; $5bf4: $90
    rst $30                                       ; $5bf5: $f7
    jr nz, jr_0be_5bf8                            ; $5bf6: $20 $00

jr_0be_5bf8:
    db $10                                        ; $5bf8: $10
    ld c, [hl]                                    ; $5bf9: $4e
    ld b, $1f                                     ; $5bfa: $06 $1f
    push af                                       ; $5bfc: $f5
    ld e, a                                       ; $5bfd: $5f
    ldh a, [rPCM34]                               ; $5bfe: $f0 $77
    dec a                                         ; $5c00: $3d
    ldh [$f7], a                                  ; $5c01: $e0 $f7
    ld b, $09                                     ; $5c03: $06 $09
    ld [hl], b                                    ; $5c05: $70
    ld [$19e6], sp                                ; $5c06: $08 $e6 $19
    ld b, $19                                     ; $5c09: $06 $19
    ld bc, $037e                                  ; $5c0b: $01 $7e $03
    nop                                           ; $5c0e: $00
    add l                                         ; $5c0f: $85
    cp l                                          ; $5c10: $bd
    add h                                         ; $5c11: $84
    cp h                                          ; $5c12: $bc
    add [hl]                                      ; $5c13: $86
    cp h                                          ; $5c14: $bc
    add d                                         ; $5c15: $82
    cp [hl]                                       ; $5c16: $be
    ld h, b                                       ; $5c17: $60
    adc c                                         ; $5c18: $89
    and h                                         ; $5c19: $a4
    inc b                                         ; $5c1a: $04
    and b                                         ; $5c1b: $a0
    ld [$e734], sp                                ; $5c1c: $08 $34 $e7
    sub e                                         ; $5c1f: $93
    di                                            ; $5c20: $f3
    ld e, b                                       ; $5c21: $58
    inc bc                                        ; $5c22: $03
    ld [hl], b                                    ; $5c23: $70
    ld a, a                                       ; $5c24: $7f
    jr c, @+$01                                   ; $5c25: $38 $ff

    rst $38                                       ; $5c27: $ff
    jr jr_0be_5c5a                                ; $5c28: $18 $30

    jr @+$56                                      ; $5c2a: $18 $54

    ld b, $18                                     ; $5c2c: $06 $18
    add c                                         ; $5c2e: $81
    db $ed                                        ; $5c2f: $ed
    add c                                         ; $5c30: $81
    db $fc                                        ; $5c31: $fc
    db $10                                        ; $5c32: $10
    jr nc, jr_0be_5c3d                            ; $5c33: $30 $08

    ld d, e                                       ; $5c35: $53
    ld [hl], c                                    ; $5c36: $71
    ld [hl], a                                    ; $5c37: $77
    nop                                           ; $5c38: $00
    ld h, b                                       ; $5c39: $60
    ccf                                           ; $5c3a: $3f
    ld h, [hl]                                    ; $5c3b: $66
    ld d, l                                       ; $5c3c: $55

jr_0be_5c3d:
    ld [hl], a                                    ; $5c3d: $77
    ld d, a                                       ; $5c3e: $57
    ld [hl], e                                    ; $5c3f: $73
    ld c, $00                                     ; $5c40: $0e $00
    ld a, e                                       ; $5c42: $7b
    ld b, h                                       ; $5c43: $44
    ld a, a                                       ; $5c44: $7f
    nop                                           ; $5c45: $00
    nop                                           ; $5c46: $00
    jp z, Jump_0be_405e                           ; $5c47: $ca $5e $40

    nop                                           ; $5c4a: $00
    ld l, d                                       ; $5c4b: $6a
    ret nc                                        ; $5c4c: $d0

    sbc $60                                       ; $5c4d: $de $60
    ld a, [hl]                                    ; $5c4f: $7e
    or b                                          ; $5c50: $b0
    ld a, $e0                                     ; $5c51: $3e $e0
    nop                                           ; $5c53: $00
    ld [$5e0a], a                                 ; $5c54: $ea $0a $5e
    nop                                           ; $5c57: $00
    nop                                           ; $5c58: $00
    ld a, e                                       ; $5c59: $7b

jr_0be_5c5a:
    rst $38                                       ; $5c5a: $ff
    cp $08                                        ; $5c5b: $fe $08
    ld a, a                                       ; $5c5d: $7f
    ld h, a                                       ; $5c5e: $67
    ld a, a                                       ; $5c5f: $7f
    ld b, a                                       ; $5c60: $47
    ld [bc], a                                    ; $5c61: $02
    nop                                           ; $5c62: $00
    ld [hl], a                                    ; $5c63: $77
    ccf                                           ; $5c64: $3f
    ld [hl], a                                    ; $5c65: $77
    nop                                           ; $5c66: $00
    ccf                                           ; $5c67: $3f
    inc a                                         ; $5c68: $3c
    ld a, a                                       ; $5c69: $7f
    adc b                                         ; $5c6a: $88
    ld [hl], b                                    ; $5c6b: $70
    ret nz                                        ; $5c6c: $c0

    adc b                                         ; $5c6d: $88
    ret nz                                        ; $5c6e: $c0

    nop                                           ; $5c6f: $00
    adc b                                         ; $5c70: $88
    call nz, $cc88                                ; $5c71: $c4 $88 $cc
    ld hl, sp-$08                                 ; $5c74: $f8 $f8
    db $fc                                        ; $5c76: $fc
    ld a, $16                                     ; $5c77: $3e $16
    db $fc                                        ; $5c79: $fc
    dec a                                         ; $5c7a: $3d
    cp $20                                        ; $5c7b: $fe $20
    rrca                                          ; $5c7d: $0f
    ld bc, $2004                                  ; $5c7e: $01 $04 $20
    inc l                                         ; $5c81: $2c
    cpl                                           ; $5c82: $2f
    ld [bc], a                                    ; $5c83: $02
    db $eb                                        ; $5c84: $eb
    inc b                                         ; $5c85: $04
    db $10                                        ; $5c86: $10
    ld b, $08                                     ; $5c87: $06 $08
    ld a, $6f                                     ; $5c89: $3e $6f
    ld bc, $06f2                                  ; $5c8b: $01 $f2 $06
    nop                                           ; $5c8e: $00
    inc b                                         ; $5c8f: $04
    ld d, b                                       ; $5c90: $50
    jr nc, jr_0be_5ca2                            ; $5c91: $30 $0f

    ld [hl], b                                    ; $5c93: $70
    xor d                                         ; $5c94: $aa
    ld a, [$2004]                                 ; $5c95: $fa $04 $20
    inc l                                         ; $5c98: $2c
    jr nc, jr_0be_5caa                            ; $5c99: $30 $0f

    and h                                         ; $5c9b: $a4
    db $fc                                        ; $5c9c: $fc
    ld d, b                                       ; $5c9d: $50

jr_0be_5c9e:
    ld hl, sp+$03                                 ; $5c9e: $f8 $03
    jr z, @-$06                                   ; $5ca0: $28 $f8

jr_0be_5ca2:
    inc b                                         ; $5ca2: $04
    db $fc                                        ; $5ca3: $fc
    ld [bc], a                                    ; $5ca4: $02
    cp $4f                                        ; $5ca5: $fe $4f
    inc b                                         ; $5ca7: $04
    ld b, b                                       ; $5ca8: $40
    rlca                                          ; $5ca9: $07

jr_0be_5caa:
    nop                                           ; $5caa: $00
    ld b, c                                       ; $5cab: $41
    ld [hl], c                                    ; $5cac: $71
    nop                                           ; $5cad: $00
    jr nz, jr_0be_5cb0                            ; $5cae: $20 $00

jr_0be_5cb0:
    nop                                           ; $5cb0: $00
    jr nz, @+$22                                  ; $5cb1: $20 $20

    ld [$7110], sp                                ; $5cb3: $08 $10 $71
    nop                                           ; $5cb6: $00
    ei                                            ; $5cb7: $fb
    ld d, b                                       ; $5cb8: $50
    rrca                                          ; $5cb9: $0f
    ld bc, $82c7                                  ; $5cba: $01 $c7 $82
    ld b, c                                       ; $5cbd: $41
    add d                                         ; $5cbe: $82
    ld b, $06                                     ; $5cbf: $06 $06
    add d                                         ; $5cc1: $82
    ld b, l                                       ; $5cc2: $45
    rst $00                                       ; $5cc3: $c7
    ld [$60ef], sp                                ; $5cc4: $08 $ef $60
    rrca                                          ; $5cc7: $0f
    nop                                           ; $5cc8: $00
    ld [de], a                                    ; $5cc9: $12
    rra                                           ; $5cca: $1f
    dec b                                         ; $5ccb: $05
    rrca                                          ; $5ccc: $0f
    ld a, [bc]                                    ; $5ccd: $0a
    rrca                                          ; $5cce: $0f
    db $10                                        ; $5ccf: $10
    rra                                           ; $5cd0: $1f
    rra                                           ; $5cd1: $1f
    jr nz, jr_0be_5d13                            ; $5cd2: $20 $3f

    ld b, b                                       ; $5cd4: $40
    ld b, b                                       ; $5cd5: $40
    rla                                           ; $5cd6: $17
    cp $12                                        ; $5cd7: $fe $12
    db $10                                        ; $5cd9: $10
    ld h, $8e                                     ; $5cda: $26 $8e
    jr jr_0be_5ce4                                ; $5cdc: $18 $06

    jr c, @-$3f                                   ; $5cde: $38 $bf

    xor h                                         ; $5ce0: $ac
    jr z, jr_0be_5ce4                             ; $5ce1: $28 $01

    or d                                          ; $5ce3: $b2

jr_0be_5ce4:
    jr nc, jr_0be_5d06                            ; $5ce4: $30 $20

    jr c, @-$4c                                   ; $5ce6: $38 $b2

    jr @-$34                                      ; $5ce8: $18 $ca

    jr @-$2a                                      ; $5cea: $18 $d4

jr_0be_5cec:
    jr z, jr_0be_5c9e                             ; $5cec: $28 $b0

    jr jr_0be_5cec                                ; $5cee: $18 $fc

    ld b, $28                                     ; $5cf0: $06 $28
    ld a, [bc]                                    ; $5cf2: $0a
    nop                                           ; $5cf3: $00
    jp z, $d234                                   ; $5cf4: $ca $34 $d2

    inc e                                         ; $5cf7: $1c
    ld d, d                                       ; $5cf8: $52
    jr jr_0be_5cff                                ; $5cf9: $18 $04

    add hl, bc                                    ; $5cfb: $09
    inc bc                                        ; $5cfc: $03
    cp $00                                        ; $5cfd: $fe $00

jr_0be_5cff:
    ld b, $fd                                     ; $5cff: $06 $fd
    dec c                                         ; $5d01: $0d
    ld a, [$f180]                                 ; $5d02: $fa $80 $f1
    ld c, a                                       ; $5d05: $4f

jr_0be_5d06:
    rst $28                                       ; $5d06: $ef
    nop                                           ; $5d07: $00
    ld a, [$d7f5]                                 ; $5d08: $fa $f5 $d7
    xor b                                         ; $5d0b: $a8
    cp a                                          ; $5d0c: $bf
    ld b, b                                       ; $5d0d: $40
    ld a, a                                       ; $5d0e: $7f
    add l                                         ; $5d0f: $85
    nop                                           ; $5d10: $00
    ld a, a                                       ; $5d11: $7f
    ld a, [hl+]                                   ; $5d12: $2a

jr_0be_5d13:
    rst $38                                       ; $5d13: $ff
    ld e, a                                       ; $5d14: $5f
    nop                                           ; $5d15: $00
    rst $00                                       ; $5d16: $c7
    pop af                                        ; $5d17: $f1
    di                                            ; $5d18: $f3
    nop                                           ; $5d19: $00
    xor [hl]                                      ; $5d1a: $ae
    ld e, a                                       ; $5d1b: $5f
    ld d, a                                       ; $5d1c: $57
    dec hl                                        ; $5d1d: $2b
    add sp, $05                                   ; $5d1e: $e8 $05
    db $fd                                        ; $5d20: $fd
    ld b, d                                       ; $5d21: $42
    ld bc, $a8fe                                  ; $5d22: $01 $fe $a8
    rst $38                                       ; $5d25: $ff
    db $f4                                        ; $5d26: $f4
    add b                                         ; $5d27: $80
    rst $38                                       ; $5d28: $ff
    ld b, b                                       ; $5d29: $40
    or $07                                        ; $5d2a: $f6 $07
    ld b, b                                       ; $5d2c: $40
    ld b, b                                       ; $5d2d: $40
    jp Jump_0be_7005                              ; $5d2e: $c3 $05 $70


    cp a                                          ; $5d31: $bf
    cp h                                          ; $5d32: $bc
    ld e, a                                       ; $5d33: $5f
    db $e3                                        ; $5d34: $e3
    rla                                           ; $5d35: $17
    call c, Call_000_38aa                         ; $5d36: $dc $aa $38
    adc d                                         ; $5d39: $8a
    rrca                                          ; $5d3a: $0f
    pop bc                                        ; $5d3b: $c1
    or b                                          ; $5d3c: $b0
    jr nz, @+$40                                  ; $5d3d: $20 $3e

    add hl, de                                    ; $5d3f: $19
    ld b, h                                       ; $5d40: $44
    ld a, c                                       ; $5d41: $79
    ld [bc], a                                    ; $5d42: $02
    rst $38                                       ; $5d43: $ff
    db $10                                        ; $5d44: $10
    rst $18                                       ; $5d45: $df
    rst $38                                       ; $5d46: $ff
    sbc a                                         ; $5d47: $9f
    and b                                         ; $5d48: $a0
    rlca                                          ; $5d49: $07
    adc $f1                                       ; $5d4a: $ce $f1
    ld [hl], c                                    ; $5d4c: $71
    adc [hl]                                      ; $5d4d: $8e
    ld [bc], a                                    ; $5d4e: $02
    adc h                                         ; $5d4f: $8c
    ld [hl], e                                    ; $5d50: $73
    ld d, [hl]                                    ; $5d51: $56
    add c                                         ; $5d52: $81
    xor c                                         ; $5d53: $a9
    ld b, $2e                                     ; $5d54: $06 $2e
    ld c, b                                       ; $5d56: $48
    rla                                           ; $5d57: $17
    jr z, @+$01                                   ; $5d58: $28 $ff

    cp $d8                                        ; $5d5a: $fe $d8
    db $10                                        ; $5d5c: $10
    ld de, $0192                                  ; $5d5d: $11 $92 $01
    ld d, c                                       ; $5d60: $51
    rst $38                                       ; $5d61: $ff
    xor e                                         ; $5d62: $ab
    ld b, $ff                                     ; $5d63: $06 $ff
    db $fd                                        ; $5d65: $fd
    rst $38                                       ; $5d66: $ff
    ld d, l                                       ; $5d67: $55
    xor d                                         ; $5d68: $aa
    or [hl]                                       ; $5d69: $b6
    jr nz, jr_0be_5d90                            ; $5d6a: $20 $24

    inc b                                         ; $5d6c: $04
    rst $38                                       ; $5d6d: $ff
    sub c                                         ; $5d6e: $91
    and h                                         ; $5d6f: $a4
    ld [bc], a                                    ; $5d70: $02
    ld d, l                                       ; $5d71: $55
    xor d                                         ; $5d72: $aa
    and [hl]                                      ; $5d73: $a6
    add hl, sp                                    ; $5d74: $39
    rst $38                                       ; $5d75: $ff
    rst $38                                       ; $5d76: $ff
    inc b                                         ; $5d77: $04
    db $10                                        ; $5d78: $10
    ld h, b                                       ; $5d79: $60
    ld d, [hl]                                    ; $5d7a: $56
    and d                                         ; $5d7b: $a2
    jr nz, jr_0be_5dde                            ; $5d7c: $20 $60

    ld de, $6030                                  ; $5d7e: $11 $30 $60
    inc d                                         ; $5d81: $14
    ld b, b                                       ; $5d82: $40
    db $10                                        ; $5d83: $10
    jp nz, $c039                                  ; $5d84: $c2 $39 $c0

    jr z, @+$01                                   ; $5d87: $28 $ff

    add sp, -$40                                  ; $5d89: $e8 $c0
    ld [hl+], a                                   ; $5d8b: $22
    and b                                         ; $5d8c: $a0
    ld b, $30                                     ; $5d8d: $06 $30
    dec bc                                        ; $5d8f: $0b

jr_0be_5d90:
    db $fc                                        ; $5d90: $fc
    dec d                                         ; $5d91: $15
    ld [$1bf8], sp                                ; $5d92: $08 $f8 $1b
    db $f4                                        ; $5d95: $f4
    rla                                           ; $5d96: $17
    inc b                                         ; $5d97: $04
    db $10                                        ; $5d98: $10
    rra                                           ; $5d99: $1f
    ldh a, [rNR22]                                ; $5d9a: $f0 $17
    nop                                           ; $5d9c: $00
    ld hl, sp-$01                                 ; $5d9d: $f8 $ff
    ccf                                           ; $5d9f: $3f
    ld hl, sp+$7f                                 ; $5da0: $f8 $7f
    ld [hl], b                                    ; $5da2: $70
    rst $38                                       ; $5da3: $ff
    ld h, b                                       ; $5da4: $60
    ret nz                                        ; $5da5: $c0

    or e                                          ; $5da6: $b3
    ld b, $04                                     ; $5da7: $06 $04
    nop                                           ; $5da9: $00
    ld a, a                                       ; $5daa: $7f
    ld h, b                                       ; $5dab: $60
    cp a                                          ; $5dac: $bf
    rst $38                                       ; $5dad: $ff
    ld a, [$080f]                                 ; $5dae: $fa $0f $08
    db $fd                                        ; $5db1: $fd
    inc bc                                        ; $5db2: $03
    cp $03                                        ; $5db3: $fe $03
    add b                                         ; $5db5: $80
    ld sp, $3afc                                  ; $5db6: $31 $fc $3a
    rst $38                                       ; $5db9: $ff
    nop                                           ; $5dba: $00
    inc e                                         ; $5dbb: $1c
    db $fc                                        ; $5dbc: $fc
    inc bc                                        ; $5dbd: $03
    rst $18                                       ; $5dbe: $df
    ccf                                           ; $5dbf: $3f
    cp a                                          ; $5dc0: $bf
    ld a, a                                       ; $5dc1: $7f
    rst $18                                       ; $5dc2: $df
    nop                                           ; $5dc3: $00
    ccf                                           ; $5dc4: $3f
    rst $28                                       ; $5dc5: $ef
    sbc a                                         ; $5dc6: $9f
    ld a, a                                       ; $5dc7: $7f
    rst $20                                       ; $5dc8: $e7
    ld a, c                                       ; $5dc9: $79
    cp l                                          ; $5dca: $bd
    xor l                                         ; $5dcb: $ad
    nop                                           ; $5dcc: $00
    ld d, a                                       ; $5dcd: $57
    rst $38                                       ; $5dce: $ff
    rst $38                                       ; $5dcf: $ff
    ld l, l                                       ; $5dd0: $6d
    ld l, a                                       ; $5dd1: $6f
    ld l, c                                       ; $5dd2: $69
    ld l, l                                       ; $5dd3: $6d
    ret                                           ; $5dd4: $c9


    ret c                                         ; $5dd5: $d8

    xor d                                         ; $5dd6: $aa
    ld a, [bc]                                    ; $5dd7: $0a
    ld [hl], b                                    ; $5dd8: $70
    ld d, $83                                     ; $5dd9: $16 $83
    ld [hl], h                                    ; $5ddb: $74
    ld b, c                                       ; $5ddc: $41
    ld [hl], b                                    ; $5ddd: $70

jr_0be_5dde:
    ld c, $40                                     ; $5dde: $0e $40
    pop hl                                        ; $5de0: $e1
    and b                                         ; $5de1: $a0
    nop                                           ; $5de2: $00
    ldh a, [rNR11]                                ; $5de3: $f0 $11
    ld sp, hl                                     ; $5de5: $f9
    ld [$04fd], sp                                ; $5de6: $08 $fd $04
    cp $0a                                        ; $5de9: $fe $0a
    sub b                                         ; $5deb: $90
    jr nz, jr_0be_5e00                            ; $5dec: $20 $12

    ld [$0408], sp                                ; $5dee: $08 $08 $04
    ld [$bd01], sp                                ; $5df1: $08 $01 $bd
    nop                                           ; $5df4: $00
    sbc h                                         ; $5df5: $9c
    jr nz, jr_0be_5e76                            ; $5df6: $20 $7e

    ld a, [hl]                                    ; $5df8: $7e
    jr nc, @+$14                                  ; $5df9: $30 $12

    ld b, e                                       ; $5dfb: $43
    ld [bc], a                                    ; $5dfc: $02
    rlca                                          ; $5dfd: $07
    add l                                         ; $5dfe: $85
    rst $08                                       ; $5dff: $cf

jr_0be_5e00:
    ld [bc], a                                    ; $5e00: $02
    ld a, [bc]                                    ; $5e01: $0a
    rst $18                                       ; $5e02: $df
    db $10                                        ; $5e03: $10
    cp a                                          ; $5e04: $bf
    jr z, jr_0be_5e86                             ; $5e05: $28 $7f

    sub b                                         ; $5e07: $90
    ld c, $41                                     ; $5e08: $0e $41
    add d                                         ; $5e0a: $82
    ret nz                                        ; $5e0b: $c0

    ld [hl], $01                                  ; $5e0c: $36 $01
    db $fd                                        ; $5e0e: $fd
    ld [bc], a                                    ; $5e0f: $02
    rst $38                                       ; $5e10: $ff
    dec d                                         ; $5e11: $15
    ld h, $01                                     ; $5e12: $26 $01
    ld e, a                                       ; $5e14: $5f
    add hl, bc                                    ; $5e15: $09
    and b                                         ; $5e16: $a0
    xor d                                         ; $5e17: $aa
    nop                                           ; $5e18: $00
    ld d, l                                       ; $5e19: $55
    ld a, d                                       ; $5e1a: $7a
    ld b, $55                                     ; $5e1b: $06 $55
    nop                                           ; $5e1d: $00
    ld c, $08                                     ; $5e1e: $0e $08
    nop                                           ; $5e20: $00
    ld c, a                                       ; $5e21: $4f
    or b                                          ; $5e22: $b0
    push af                                       ; $5e23: $f5
    nop                                           ; $5e24: $00
    ld a, [hl+]                                   ; $5e25: $2a
    add b                                         ; $5e26: $80
    push de                                       ; $5e27: $d5
    add b                                         ; $5e28: $80
    inc b                                         ; $5e29: $04
    sub e                                         ; $5e2a: $93
    call $d3f9                                    ; $5e2b: $cd $f9 $d3
    cp $34                                        ; $5e2e: $fe $34
    ld bc, $01fb                                  ; $5e30: $01 $fb $01
    nop                                           ; $5e33: $00
    rst $18                                       ; $5e34: $df
    inc bc                                        ; $5e35: $03
    xor c                                         ; $5e36: $a9
    add e                                         ; $5e37: $83
    rst $10                                       ; $5e38: $d7
    add c                                         ; $5e39: $81
    add b                                         ; $5e3a: $80
    add c                                         ; $5e3b: $81
    nop                                           ; $5e3c: $00
    ld d, l                                       ; $5e3d: $55
    add b                                         ; $5e3e: $80
    ld e, a                                       ; $5e3f: $5f
    and b                                         ; $5e40: $a0
    cp d                                          ; $5e41: $ba
    ld b, l                                       ; $5e42: $45
    rst $20                                       ; $5e43: $e7
    jr jr_0be_5e46                                ; $5e44: $18 $00

jr_0be_5e46:
    ld [hl], c                                    ; $5e46: $71
    inc h                                         ; $5e47: $24
    or d                                          ; $5e48: $b2
    inc h                                         ; $5e49: $24
    rst $30                                       ; $5e4a: $f7
    cp h                                          ; $5e4b: $bc

jr_0be_5e4c:
    xor $fe                                       ; $5e4c: $ee $fe
    nop                                           ; $5e4e: $00
    rst $18                                       ; $5e4f: $df
    cp $f9                                        ; $5e50: $fe $f9
    ld b, $cc                                     ; $5e52: $06 $cc
    ld a, c                                       ; $5e54: $79
    db $ec                                        ; $5e55: $ec
    ld a, c                                       ; $5e56: $79
    nop                                           ; $5e57: $00
    ld a, l                                       ; $5e58: $7d
    ccf                                           ; $5e59: $3f
    or a                                          ; $5e5a: $b7
    rra                                           ; $5e5b: $1f
    ld d, e                                       ; $5e5c: $53
    rra                                           ; $5e5d: $1f
    ccf                                           ; $5e5e: $3f
    ccf                                           ; $5e5f: $3f
    nop                                           ; $5e60: $00
    db $fc                                        ; $5e61: $fc
    ccf                                           ; $5e62: $3f
    ld a, [$fd35]                                 ; $5e63: $fa $35 $fd
    ld h, d                                       ; $5e66: $62
    rst $38                                       ; $5e67: $ff
    ret nz                                        ; $5e68: $c0

    nop                                           ; $5e69: $00
    push af                                       ; $5e6a: $f5
    add b                                         ; $5e6b: $80
    xor a                                         ; $5e6c: $af
    sbc a                                         ; $5e6d: $9f
    ldh a, [rIE]                                  ; $5e6e: $f0 $ff
    sub c                                         ; $5e70: $91
    xor $00                                       ; $5e71: $ee $00
    adc [hl]                                      ; $5e73: $8e
    ld [hl], c                                    ; $5e74: $71
    cp e                                          ; $5e75: $bb

jr_0be_5e76:
    ld b, h                                       ; $5e76: $44
    db $ed                                        ; $5e77: $ed
    ld [de], a                                    ; $5e78: $12
    push af                                       ; $5e79: $f5
    nop                                           ; $5e7a: $00
    ld b, b                                       ; $5e7b: $40
    ld e, a                                       ; $5e7c: $5f
    ld a, [bc]                                    ; $5e7d: $0a
    inc b                                         ; $5e7e: $04
    ld h, e                                       ; $5e7f: $63
    sbc h                                         ; $5e80: $9c
    sbc h                                         ; $5e81: $9c
    ld h, e                                       ; $5e82: $63
    ld h, d                                       ; $5e83: $62
    sbc h                                         ; $5e84: $9c
    inc b                                         ; $5e85: $04

jr_0be_5e86:
    xor d                                         ; $5e86: $aa
    ld d, l                                       ; $5e87: $55
    db $dd                                        ; $5e88: $dd
    ld [hl+], a                                   ; $5e89: $22
    rst $30                                       ; $5e8a: $f7
    pop hl                                        ; $5e8b: $e1
    dec b                                         ; $5e8c: $05
    cp $fc                                        ; $5e8d: $fe $fc
    nop                                           ; $5e8f: $00
    dec [hl]                                      ; $5e90: $35
    call z, $1faf                                 ; $5e91: $cc $af $1f
    sbc l                                         ; $5e94: $9d
    ld a, a                                       ; $5e95: $7f
    db $eb                                        ; $5e96: $eb
    inc d                                         ; $5e97: $14
    jr jr_0be_5ef8                                ; $5e98: $18 $5e

    and c                                         ; $5e9a: $a1
    ei                                            ; $5e9b: $fb
    jr nz, jr_0be_5e9e                            ; $5e9c: $20 $00

jr_0be_5e9e:
    add b                                         ; $5e9e: $80
    jr z, jr_0be_5e4c                             ; $5e9f: $28 $ab

    ld d, h                                       ; $5ea1: $54
    rst $30                                       ; $5ea2: $f7
    ld [$ff08], sp                                ; $5ea3: $08 $08 $ff
    nop                                           ; $5ea6: $00
    rst $10                                       ; $5ea7: $d7
    db $10                                        ; $5ea8: $10
    jr nz, jr_0be_5eff                            ; $5ea9: $20 $54

    nop                                           ; $5eab: $00
    push de                                       ; $5eac: $d5
    ld a, [hl+]                                   ; $5ead: $2a
    ld a, [hl+]                                   ; $5eae: $2a
    rst $28                                       ; $5eaf: $ef
    ld c, c                                       ; $5eb0: $49
    inc b                                         ; $5eb1: $04
    db $eb                                        ; $5eb2: $eb
    sbc [hl]                                      ; $5eb3: $9e
    nop                                           ; $5eb4: $00
    ld a, [hl+]                                   ; $5eb5: $2a
    ld a, [de]                                    ; $5eb6: $1a
    rlca                                          ; $5eb7: $07
    xor d                                         ; $5eb8: $aa
    jr nz, jr_0be_5ebb                            ; $5eb9: $20 $00

jr_0be_5ebb:
    and b                                         ; $5ebb: $a0
    ld b, $06                                     ; $5ebc: $06 $06
    xor d                                         ; $5ebe: $aa
    cp a                                          ; $5ebf: $bf
    sub a                                         ; $5ec0: $97
    cp l                                          ; $5ec1: $bd
    adc l                                         ; $5ec2: $8d
    nop                                           ; $5ec3: $00
    cp l                                          ; $5ec4: $bd
    add l                                         ; $5ec5: $85
    cp l                                          ; $5ec6: $bd
    sub a                                         ; $5ec7: $97
    or l                                          ; $5ec8: $b5
    and a                                         ; $5ec9: $a7
    and h                                         ; $5eca: $a4
    rra                                           ; $5ecb: $1f
    nop                                           ; $5ecc: $00
    ldh a, [$1f]                                  ; $5ecd: $f0 $1f
    ldh a, [rIF]                                  ; $5ecf: $f0 $0f
    ld hl, sp+$0f                                 ; $5ed1: $f8 $0f
    ld a, [$0887]                                 ; $5ed3: $fa $87 $08
    db $fd                                        ; $5ed6: $fd
    add e                                         ; $5ed7: $83
    cp $81                                        ; $5ed8: $fe $81
    ld a, [$7f0d]                                 ; $5eda: $fa $0d $7f
    ret nc                                        ; $5edd: $d0

    ccf                                           ; $5ede: $3f
    nop                                           ; $5edf: $00
    xor b                                         ; $5ee0: $a8
    ld e, a                                       ; $5ee1: $5f
    sub $2f                                       ; $5ee2: $d6 $2f
    db $eb                                        ; $5ee4: $eb
    dec d                                         ; $5ee5: $15
    push af                                       ; $5ee6: $f5
    adc d                                         ; $5ee7: $8a
    ld a, [bc]                                    ; $5ee8: $0a
    db $fc                                        ; $5ee9: $fc
    ld b, c                                       ; $5eea: $41
    rst $38                                       ; $5eeb: $ff
    xor b                                         ; $5eec: $a8
    add [hl]                                      ; $5eed: $86
    dec hl                                        ; $5eee: $2b
    add b                                         ; $5eef: $80
    ld [hl], h                                    ; $5ef0: $74
    ld bc, $03b8                                  ; $5ef1: $01 $b8 $03

jr_0be_5ef4:
    ld e, a                                       ; $5ef4: $5f
    ld b, [hl]                                    ; $5ef5: $46
    cpl                                           ; $5ef6: $2f
    ccf                                           ; $5ef7: $3f

jr_0be_5ef8:
    ld sp, hl                                     ; $5ef8: $f9
    rrca                                          ; $5ef9: $0f
    ld l, [hl]                                    ; $5efa: $6e
    ld bc, $2b7e                                  ; $5efb: $01 $7e $2b
    nop                                           ; $5efe: $00

jr_0be_5eff:
    nop                                           ; $5eff: $00
    rst $38                                       ; $5f00: $ff
    push bc                                       ; $5f01: $c5
    db $fd                                        ; $5f02: $fd
    jp hl                                         ; $5f03: $e9


    ld a, l                                       ; $5f04: $7d
    push af                                       ; $5f05: $f5
    db $fd                                        ; $5f06: $fd
    db $10                                        ; $5f07: $10
    jp hl                                         ; $5f08: $e9


    db $fd                                        ; $5f09: $fd
    ld d, c                                       ; $5f0a: $51
    inc h                                         ; $5f0b: $24
    ld b, $41                                     ; $5f0c: $06 $41
    call $8585                                    ; $5f0e: $cd $85 $85
    nop                                           ; $5f11: $00
    rlca                                          ; $5f12: $07
    rst $38                                       ; $5f13: $ff
    add hl, bc                                    ; $5f14: $09
    cp $17                                        ; $5f15: $fe $17
    ld hl, sp+$2a                                 ; $5f17: $f8 $2a
    pop af                                        ; $5f19: $f1
    nop                                           ; $5f1a: $00
    dec l                                         ; $5f1b: $2d
    di                                            ; $5f1c: $f3
    ld e, [hl]                                    ; $5f1d: $5e
    db $e3                                        ; $5f1e: $e3
    ld l, c                                       ; $5f1f: $69
    rst $10                                       ; $5f20: $d7
    ld e, e                                       ; $5f21: $5b
    rst $20                                       ; $5f22: $e7
    ld h, $a9                                     ; $5f23: $26 $a9
    rst $10                                       ; $5f25: $d7
    inc sp                                        ; $5f26: $33
    inc bc                                        ; $5f27: $03
    ld d, h                                       ; $5f28: $54
    add hl, hl                                    ; $5f29: $29
    sbc b                                         ; $5f2a: $98
    inc bc                                        ; $5f2b: $03
    ld e, [hl]                                    ; $5f2c: $5e
    ld [$0000], sp                                ; $5f2d: $08 $00 $00
    rst $38                                       ; $5f30: $ff
    ldh a, [rIE]                                  ; $5f31: $f0 $ff
    jr jr_0be_5ef4                                ; $5f33: $18 $bf

    cp h                                          ; $5f35: $bc
    ld c, a                                       ; $5f36: $4f
    rst $08                                       ; $5f37: $cf
    nop                                           ; $5f38: $00
    rla                                           ; $5f39: $17
    ld a, a                                       ; $5f3a: $7f
    adc $bf                                       ; $5f3b: $ce $bf
    rst $20                                       ; $5f3d: $e7
    ld e, a                                       ; $5f3e: $5f
    ldh [rPCM34], a                               ; $5f3f: $e0 $77
    ld b, b                                       ; $5f41: $40
    rst $28                                       ; $5f42: $ef
    ld a, $1d                                     ; $5f43: $3e $1d
    pop hl                                        ; $5f45: $e1
    db $fd                                        ; $5f46: $fd
    add hl, sp                                    ; $5f47: $39
    ld e, l                                       ; $5f48: $5d
    push de                                       ; $5f49: $d5
    cpl                                           ; $5f4a: $2f
    nop                                           ; $5f4b: $00
    ld a, a                                       ; $5f4c: $7f
    rst $38                                       ; $5f4d: $ff
    or l                                          ; $5f4e: $b5
    or a                                          ; $5f4f: $b7
    ld b, h                                       ; $5f50: $44
    jr c, jr_0be_5fb3                             ; $5f51: $38 $60

    ld b, h                                       ; $5f53: $44
    nop                                           ; $5f54: $00
    ld h, b                                       ; $5f55: $60
    ld b, h                                       ; $5f56: $44
    ld h, d                                       ; $5f57: $62
    ld b, h                                       ; $5f58: $44
    and $7c                                       ; $5f59: $e6 $7c
    ld a, h                                       ; $5f5b: $7c
    cp $00                                        ; $5f5c: $fe $00
    sbc a                                         ; $5f5e: $9f
    cp $9e                                        ; $5f5f: $fe $9e
    rst $38                                       ; $5f61: $ff
    ld sp, hl                                     ; $5f62: $f9
    di                                            ; $5f63: $f3
    ld a, e                                       ; $5f64: $7b
    rst $38                                       ; $5f65: $ff
    ld de, $7fff                                  ; $5f66: $11 $ff $7f
    rst $20                                       ; $5f69: $e7
    ld [hl-], a                                   ; $5f6a: $32
    inc h                                         ; $5f6b: $24
    cp h                                          ; $5f6c: $bc
    ld a, a                                       ; $5f6d: $7f
    add c                                         ; $5f6e: $81
    ldh [rNR22], a                                ; $5f6f: $e0 $17
    ld [hl+], a                                   ; $5f71: $22
    add l                                         ; $5f72: $85
    inc bc                                        ; $5f73: $03
    ld b, b                                       ; $5f74: $40
    dec l                                         ; $5f75: $2d
    sbc a                                         ; $5f76: $9f
    rst $38                                       ; $5f77: $ff
    adc a                                         ; $5f78: $8f
    ret nz                                        ; $5f79: $c0

    ld d, d                                       ; $5f7a: $52
    db $e4                                        ; $5f7b: $e4
    nop                                           ; $5f7c: $00
    ei                                            ; $5f7d: $fb
    ld [hl-], a                                   ; $5f7e: $32
    call Call_0be_708b                            ; $5f7f: $cd $8b $70
    ld l, h                                       ; $5f82: $6c
    add e                                         ; $5f83: $83
    and e                                         ; $5f84: $a3
    nop                                           ; $5f85: $00
    inc e                                         ; $5f86: $1c
    sbc d                                         ; $5f87: $9a
    ld h, b                                       ; $5f88: $60
    ld d, [hl]                                    ; $5f89: $56
    add c                                         ; $5f8a: $81
    xor l                                         ; $5f8b: $ad
    ld [bc], a                                    ; $5f8c: $02
    ld d, c                                       ; $5f8d: $51
    nop                                           ; $5f8e: $00
    xor [hl]                                      ; $5f8f: $ae
    jp z, Jump_000_3630                           ; $5f90: $ca $30 $36

    pop bc                                        ; $5f93: $c1
    xor c                                         ; $5f94: $a9
    ld b, $65                                     ; $5f95: $06 $65
    jr nz, jr_0be_5fb1                            ; $5f97: $20 $18

    sbc e                                         ; $5f99: $9b
    stop                                          ; $5f9a: $10 $00
    cp l                                          ; $5f9c: $bd
    inc bc                                        ; $5f9d: $03
    ld c, c                                       ; $5f9e: $49
    inc [hl]                                      ; $5f9f: $34
    xor h                                         ; $5fa0: $ac
    nop                                           ; $5fa1: $00
    ld b, e                                       ; $5fa2: $43
    ld e, c                                       ; $5fa3: $59
    add a                                         ; $5fa4: $87
    or a                                          ; $5fa5: $b7
    rrca                                          ; $5fa6: $0f
    ld c, a                                       ; $5fa7: $4f
    ld a, $be                                     ; $5fa8: $3e $be
    nop                                           ; $5faa: $00
    ld a, l                                       ; $5fab: $7d
    ld [hl], a                                    ; $5fac: $77
    ei                                            ; $5fad: $fb
    cp $e7                                        ; $5fae: $fe $e7
    ld a, d                                       ; $5fb0: $7a

jr_0be_5fb1:
    cp $ec                                        ; $5fb1: $fe $ec

jr_0be_5fb3:
    nop                                           ; $5fb3: $00
    db $fc                                        ; $5fb4: $fc
    ret c                                         ; $5fb5: $d8

    ld hl, sp-$50                                 ; $5fb6: $f8 $b0
    ld [hl], b                                    ; $5fb8: $70
    ld d, b                                       ; $5fb9: $50
    cp $90                                        ; $5fba: $fe $90
    ld b, $fe                                     ; $5fbc: $06 $fe
    sub b                                         ; $5fbe: $90
    db $fc                                        ; $5fbf: $fc
    and c                                         ; $5fc0: $a1
    ld hl, sp+$0e                                 ; $5fc1: $f8 $0e
    ld [bc], a                                    ; $5fc3: $02
    and d                                         ; $5fc4: $a2
    dec b                                         ; $5fc5: $05
    jr nc, jr_0be_6010                            ; $5fc6: $30 $48

    nop                                           ; $5fc8: $00
    add hl, bc                                    ; $5fc9: $09
    nop                                           ; $5fca: $00
    nop                                           ; $5fcb: $00
    ld de, $000c                                  ; $5fcc: $11 $0c $00
    nop                                           ; $5fcf: $00
    nop                                           ; $5fd0: $00
    inc b                                         ; $5fd1: $04
    ld sp, $0300                                  ; $5fd2: $31 $00 $03
    ld [$1207], a                                 ; $5fd5: $ea $07 $12
    ld [$00f0], sp                                ; $5fd8: $08 $f0 $00
    rrca                                          ; $5fdb: $0f
    db $e4                                        ; $5fdc: $e4
    ld bc, $2046                                  ; $5fdd: $01 $46 $20
    ret nz                                        ; $5fe0: $c0

    dec b                                         ; $5fe1: $05
    ret nz                                        ; $5fe2: $c0

    nop                                           ; $5fe3: $00
    inc c                                         ; $5fe4: $0c
    ld e, b                                       ; $5fe5: $58
    ld c, $08                                     ; $5fe6: $0e $08
    nop                                           ; $5fe8: $00
    add d                                         ; $5fe9: $82
    nop                                           ; $5fea: $00
    add d                                         ; $5feb: $82
    and a                                         ; $5fec: $a7
    and [hl]                                      ; $5fed: $a6
    sbc l                                         ; $5fee: $9d
    cp e                                          ; $5fef: $bb
    sbc e                                         ; $5ff0: $9b
    or l                                          ; $5ff1: $b5
    or a                                          ; $5ff2: $b7
    nop                                           ; $5ff3: $00
    jp hl                                         ; $5ff4: $e9


    xor [hl]                                      ; $5ff5: $ae
    or e                                          ; $5ff6: $b3
    cp h                                          ; $5ff7: $bc
    rst $20                                       ; $5ff8: $e7
    cp h                                          ; $5ff9: $bc
    rst $20                                       ; $5ffa: $e7
    ldh [rP1], a                                  ; $5ffb: $e0 $00
    rst $38                                       ; $5ffd: $ff
    ldh a, [$5f]                                  ; $5ffe: $f0 $5f
    ld e, b                                       ; $6000: $58
    ld l, a                                       ; $6001: $6f
    db $ec                                        ; $6002: $ec
    scf                                           ; $6003: $37
    or $00                                        ; $6004: $f6 $00
    sbc e                                         ; $6006: $9b
    ld e, e                                       ; $6007: $5b
    rst $28                                       ; $6008: $ef
    ld a, l                                       ; $6009: $7d
    bit 3, e                                      ; $600a: $cb $5b
    db $ed                                        ; $600c: $ed
    ld a, a                                       ; $600d: $7f
    inc c                                         ; $600e: $0c
    push af                                       ; $600f: $f5

jr_0be_6010:
    ccf                                           ; $6010: $3f
    ld a, [$d40f]                                 ; $6011: $fa $0f $d4
    dec b                                         ; $6014: $05
    ld b, [hl]                                    ; $6015: $46
    add hl, hl                                    ; $6016: $29
    db $eb                                        ; $6017: $eb
    dec d                                         ; $6018: $15
    nop                                           ; $6019: $00
    db $fd                                        ; $601a: $fd
    add d                                         ; $601b: $82
    ld a, [$ff51]                                 ; $601c: $fa $51 $ff
    add sp, $7f                                   ; $601f: $e8 $7f
    db $f4                                        ; $6021: $f4
    ret nz                                        ; $6022: $c0

    sub [hl]                                      ; $6023: $96
    dec b                                         ; $6024: $05
    cp d                                          ; $6025: $ba
    ld [bc], a                                    ; $6026: $02
    sub l                                         ; $6027: $95
    rst $38                                       ; $6028: $ff
    ld l, d                                       ; $6029: $6a

Jump_0be_602a:
    rst $38                                       ; $602a: $ff
    or h                                          ; $602b: $b4
    ld a, a                                       ; $602c: $7f
    nop                                           ; $602d: $00
    ld e, b                                       ; $602e: $58
    cp a                                          ; $602f: $bf
    inc l                                         ; $6030: $2c
    ld e, a                                       ; $6031: $5f
    sub [hl]                                      ; $6032: $96
    cpl                                           ; $6033: $2f
    rl a                                          ; $6034: $cb $17
    nop                                           ; $6036: $00
    push af                                       ; $6037: $f5
    adc e                                         ; $6038: $8b
    ld bc, $0501                                  ; $6039: $01 $01 $05
    dec b                                         ; $603c: $05
    adc c                                         ; $603d: $89
    adc l                                         ; $603e: $8d
    nop                                           ; $603f: $00
    ld d, c                                       ; $6040: $51
    db $dd                                        ; $6041: $dd
    add hl, bc                                    ; $6042: $09
    adc l                                         ; $6043: $8d
    dec b                                         ; $6044: $05
    dec b                                         ; $6045: $05
    ld bc, $2001                                  ; $6046: $01 $01 $20
    add l                                         ; $6049: $85
    add l                                         ; $604a: $85
    db $10                                        ; $604b: $10
    dec hl                                        ; $604c: $2b
    sub h                                         ; $604d: $94
    cp a                                          ; $604e: $bf
    xor [hl]                                      ; $604f: $ae
    cp e                                          ; $6050: $bb
    sbc d                                         ; $6051: $9a
    nop                                           ; $6052: $00
    cp e                                          ; $6053: $bb
    xor [hl]                                      ; $6054: $ae
    xor e                                         ; $6055: $ab
    ld [hl], c                                    ; $6056: $71
    rst $00                                       ; $6057: $c7
    ld a, a                                       ; $6058: $7f
    jp Jump_000_007b                              ; $6059: $c3 $7b $00


    push bc                                       ; $605c: $c5
    ld e, d                                       ; $605d: $5a
    pop hl                                        ; $605e: $e1
    dec l                                         ; $605f: $2d
    ld a, [c]                                     ; $6060: $f2
    ld [hl], $f9                                  ; $6061: $36 $f9
    dec de                                        ; $6063: $1b
    jr nc, @-$02                                  ; $6064: $30 $fc

    dec c                                         ; $6066: $0d
    jr nc, jr_0be_607e                            ; $6067: $30 $15

    ld [bc], a                                    ; $6069: $02
    dec c                                         ; $606a: $0d
    ld b, b                                       ; $606b: $40
    rst $38                                       ; $606c: $ff
    ldh a, [$7f]                                  ; $606d: $f0 $7f
    nop                                           ; $606f: $00
    inc a                                         ; $6070: $3c
    ld e, a                                       ; $6071: $5f
    rl a                                          ; $6072: $cb $17
    scf                                           ; $6074: $37
    rst $28                                       ; $6075: $ef
    dec hl                                        ; $6076: $2b
    rst $30                                       ; $6077: $f7
    inc d                                         ; $6078: $14
    dec de                                        ; $6079: $1b
    db $fd                                        ; $607a: $fd
    ld b, $40                                     ; $607b: $06 $40
    dec [hl]                                      ; $607d: $35

jr_0be_607e:
    pop hl                                        ; $607e: $e1
    db $f4                                        ; $607f: $f4
    ld [bc], a                                    ; $6080: $02
    pop bc                                        ; $6081: $c1
    db $fd                                        ; $6082: $fd
    nop                                           ; $6083: $00
    or c                                          ; $6084: $b1
    ld a, l                                       ; $6085: $7d
    db $fd                                        ; $6086: $fd
    db $fd                                        ; $6087: $fd
    ld [hl], c                                    ; $6088: $71
    db $fd                                        ; $6089: $fd
    add hl, hl                                    ; $608a: $29
    db $fd                                        ; $608b: $fd
    ld hl, $e5a1                                  ; $608c: $21 $a1 $e5
    jr nz, jr_0be_609e                            ; $608f: $20 $0d

    adc b                                         ; $6091: $88
    cp h                                          ; $6092: $bc
    add h                                         ; $6093: $84
    cp [hl]                                       ; $6094: $be
    ld l, h                                       ; $6095: $6c
    rrca                                          ; $6096: $0f
    ld h, h                                       ; $6097: $64
    add c                                         ; $6098: $81
    inc l                                         ; $6099: $2c
    rlca                                          ; $609a: $07
    jr nz, @+$0f                                  ; $609b: $20 $0d

    nop                                           ; $609d: $00

jr_0be_609e:
    ld e, d                                       ; $609e: $5a
    cp e                                          ; $609f: $bb
    ld [bc], a                                    ; $60a0: $02
    ld a, [hl+]                                   ; $60a1: $2a
    cp l                                          ; $60a2: $bd
    inc b                                         ; $60a3: $04
    rst $38                                       ; $60a4: $ff
    sub $01                                       ; $60a5: $d6 $01
    ld e, e                                       ; $60a7: $5b
    inc a                                         ; $60a8: $3c
    ldh a, [$0c]                                  ; $60a9: $f0 $0c
    ld bc, $103d                                  ; $60ab: $01 $3d $10
    ld hl, $417d                                  ; $60ae: $21 $7d $41
    ld l, $13                                     ; $60b1: $2e $13
    pop hl                                        ; $60b3: $e1
    ld a, l                                       ; $60b4: $7d
    rrca                                          ; $60b5: $0f
    rst $38                                       ; $60b6: $ff
    ld b, b                                       ; $60b7: $40
    cp a                                          ; $60b8: $bf
    jr nz, jr_0be_60bf                            ; $60b9: $20 $04

    db $ec                                        ; $60bb: $ec
    pop af                                        ; $60bc: $f1
    ld a, d                                       ; $60bd: $7a
    ld sp, hl                                     ; $60be: $f9

jr_0be_60bf:
    ld e, c                                       ; $60bf: $59
    ld e, $00                                     ; $60c0: $1e $00
    rst $00                                       ; $60c2: $c7
    jr c, @+$3c                                   ; $60c3: $38 $3a

    ret nz                                        ; $60c5: $c0

    and $f8                                       ; $60c6: $e6 $f8
    or $e1                                        ; $60c8: $f6 $e1
    nop                                           ; $60ca: $00
    xor c                                         ; $60cb: $a9
    ld h, $46                                     ; $60cc: $26 $46
    cp b                                          ; $60ce: $b8
    dec [hl]                                      ; $60cf: $35
    ret nz                                        ; $60d0: $c0

    ld [$0001], a                                 ; $60d1: $ea $01 $00
    ld e, c                                       ; $60d4: $59
    and [hl]                                      ; $60d5: $a6
    and a                                         ; $60d6: $a7
    ld e, b                                       ; $60d7: $58
    call Call_000_2930                            ; $60d8: $cd $30 $29
    add $00                                       ; $60db: $c6 $00
    ld e, h                                       ; $60dd: $5c
    inc bc                                        ; $60de: $03
    or e                                          ; $60df: $b3
    inc c                                         ; $60e0: $0c
    rst $08                                       ; $60e1: $cf
    jr nc, @+$3c                                  ; $60e2: $30 $3a

    push bc                                       ; $60e4: $c5
    nop                                           ; $60e5: $00
    push de                                       ; $60e6: $d5
    ld [bc], a                                    ; $60e7: $02
    cp [hl]                                       ; $60e8: $be
    ld bc, $1865                                  ; $60e9: $01 $65 $18
    ld a, [de]                                    ; $60ec: $1a
    ldh [rDIV], a                                 ; $60ed: $e0 $04
    rst $10                                       ; $60ef: $d7
    nop                                           ; $60f0: $00
    cp h                                          ; $60f1: $bc
    inc bc                                        ; $60f2: $03
    ld [hl], e                                    ; $60f3: $73
    ld [de], a                                    ; $60f4: $12
    nop                                           ; $60f5: $00

Call_0be_60f6:
    dec [hl]                                      ; $60f6: $35
    ret nz                                        ; $60f7: $c0

    inc b                                         ; $60f8: $04

jr_0be_60f9:
    ld l, e                                       ; $60f9: $6b
    add b                                         ; $60fa: $80
    ld [hl], e                                    ; $60fb: $73
    inc c                                         ; $60fc: $0c
    jp z, RST_08                                  ; $60fd: $ca $08 $00

    rst $28                                       ; $6100: $ef
    stop                                          ; $6101: $10 $00
    ld d, h                                       ; $6103: $54
    dec hl                                        ; $6104: $2b
    cp c                                          ; $6105: $b9
    rlca                                          ; $6106: $07
    ld [hl], a                                    ; $6107: $77
    rrca                                          ; $6108: $0f
    adc $3f                                       ; $6109: $ce $3f
    nop                                           ; $610b: $00
    ld d, e                                       ; $610c: $53
    rrca                                          ; $610d: $0f
    rst $20                                       ; $610e: $e7
    rra                                           ; $610f: $1f
    sbc [hl]                                      ; $6110: $9e
    ld a, a                                       ; $6111: $7f
    dec [hl]                                      ; $6112: $35
    cp $00                                        ; $6113: $fe $00
    rst $28                                       ; $6115: $ef
    ld sp, hl                                     ; $6116: $f9
    ei                                            ; $6117: $fb
    rst $30                                       ; $6118: $f7
    ld d, [hl]                                    ; $6119: $56
    rst $28                                       ; $611a: $ef
    xor b                                         ; $611b: $a8
    rst $18                                       ; $611c: $df
    ld bc, $df6d                                  ; $611d: $01 $6d $df
    rst $18                                       ; $6120: $df
    cp a                                          ; $6121: $bf
    and b                                         ; $6122: $a0
    ld a, a                                       ; $6123: $7f
    ret nz                                        ; $6124: $c0

    ret z                                         ; $6125: $c8

    dec d                                         ; $6126: $15
    nop                                           ; $6127: $00
    nop                                           ; $6128: $00
    cp $00                                        ; $6129: $fe $00
    db $fc                                        ; $612b: $fc
    call z, $98f0                                 ; $612c: $cc $f0 $98
    ldh [$80], a                                  ; $612f: $e0 $80
    ld e, a                                       ; $6131: $5f
    ld bc, $18c0                                  ; $6132: $01 $c0 $18
    add b                                         ; $6135: $80
    inc a                                         ; $6136: $3c
    nop                                           ; $6137: $00
    ld [de], a                                    ; $6138: $12
    nop                                           ; $6139: $00
    ld d, l                                       ; $613a: $55
    ld [$017e], sp                                ; $613b: $08 $7e $01
    ld [hl], b                                    ; $613e: $70
    ld l, [hl]                                    ; $613f: $6e
    ld bc, $7a00                                  ; $6140: $01 $00 $7a
    ld bc, $604f                                  ; $6143: $01 $4f $60
    inc bc                                        ; $6146: $03
    inc b                                         ; $6147: $04
    ld bc, $6700                                  ; $6148: $01 $00 $67
    nop                                           ; $614b: $00
    ld [hl-], a                                   ; $614c: $32
    ld b, b                                       ; $614d: $40
    rlca                                          ; $614e: $07
    nop                                           ; $614f: $00
    nop                                           ; $6150: $00
    ld d, h                                       ; $6151: $54
    db $e4                                        ; $6152: $e4
    ld d, $10                                     ; $6153: $16 $10
    ld bc, $019e                                  ; $6155: $01 $9e $01
    db $10                                        ; $6158: $10
    ld d, d                                       ; $6159: $52
    rlca                                          ; $615a: $07
    nop                                           ; $615b: $00

jr_0be_615c:
    nop                                           ; $615c: $00
    ld b, b                                       ; $615d: $40
    daa                                           ; $615e: $27
    and [hl]                                      ; $615f: $a6
    ld bc, $0000                                  ; $6160: $01 $00 $00
    ldh [rP1], a                                  ; $6163: $e0 $00
    or a                                          ; $6165: $b7
    db $e3                                        ; $6166: $e3
    nop                                           ; $6167: $00
    cp c                                          ; $6168: $b9
    or d                                          ; $6169: $b2
    cp a                                          ; $616a: $bf
    add sp, -$61                                  ; $616b: $e8 $9f
    or l                                          ; $616d: $b5
    xor a                                         ; $616e: $af
    cp d                                          ; $616f: $ba
    jr nz, jr_0be_60f9                            ; $6170: $20 $87

    cp a                                          ; $6172: $bf
    add sp, $0b                                   ; $6173: $e8 $0b
    xor l                                         ; $6175: $ad
    bit 7, a                                      ; $6176: $cb $7f
    adc c                                         ; $6178: $89
    db $fd                                        ; $6179: $fd
    nop                                           ; $617a: $00
    add hl, hl                                    ; $617b: $29
    ei                                            ; $617c: $fb
    ld e, c                                       ; $617d: $59
    rst $38                                       ; $617e: $ff
    or e                                          ; $617f: $b3
    rst $38                                       ; $6180: $ff
    db $e3                                        ; $6181: $e3
    di                                            ; $6182: $f3
    jr jr_0be_615c                                ; $6183: $18 $d7

    ld a, a                                       ; $6185: $7f
    db $e3                                        ; $6186: $e3
    ret nz                                        ; $6187: $c0

    inc a                                         ; $6188: $3c
    ld h, b                                       ; $6189: $60
    ld e, $f8                                     ; $618a: $1e $f8
    ld b, l                                       ; $618c: $45
    ld sp, hl                                     ; $618d: $f9
    nop                                           ; $618e: $00
    and d                                         ; $618f: $a2
    ld a, h                                       ; $6190: $7c
    pop bc                                        ; $6191: $c1
    dec a                                         ; $6192: $3d
    ld [c], a                                     ; $6193: $e2
    ld a, $f1                                     ; $6194: $3e $f1
    dec a                                         ; $6196: $3d
    nop                                           ; $6197: $00
    add sp, $1e                                   ; $6198: $e8 $1e
    pop af                                        ; $619a: $f1
    rra                                           ; $619b: $1f
    ld hl, sp-$3f                                 ; $619c: $f8 $c1
    call Call_000_00e1                            ; $619e: $cd $e1 $00
    db $fd                                        ; $61a1: $fd
    pop de                                        ; $61a2: $d1
    ld a, l                                       ; $61a3: $7d
    ld l, c                                       ; $61a4: $69
    db $fd                                        ; $61a5: $fd
    push af                                       ; $61a6: $f5
    ld a, l                                       ; $61a7: $7d
    ld l, c                                       ; $61a8: $69
    nop                                           ; $61a9: $00
    cp l                                          ; $61aa: $bd
    or c                                          ; $61ab: $b1
    ld a, l                                       ; $61ac: $7d
    ld [hl], c                                    ; $61ad: $71
    cp l                                          ; $61ae: $bd
    adc a                                         ; $61af: $8f
    adc c                                         ; $61b0: $89
    add l                                         ; $61b1: $85
    nop                                           ; $61b2: $00
    add l                                         ; $61b3: $85
    sbc l                                         ; $61b4: $9d
    sub [hl]                                      ; $61b5: $96
    or a                                          ; $61b6: $b7
    xor d                                         ; $61b7: $aa
    xor $d7                                       ; $61b8: $ee $d7
    db $dd                                        ; $61ba: $dd
    nop                                           ; $61bb: $00
    rst $28                                       ; $61bc: $ef
    ld sp, hl                                     ; $61bd: $f9
    rst $08                                       ; $61be: $cf
    xor $c7                                       ; $61bf: $ee $c7
    ld b, $ff                                     ; $61c1: $06 $ff
    add e                                         ; $61c3: $83

jr_0be_61c4:
    nop                                           ; $61c4: $00
    rst $38                                       ; $61c5: $ff
    ldh [$bf], a                                  ; $61c6: $e0 $bf
    or b                                          ; $61c8: $b0
    rst $18                                       ; $61c9: $df
    ret c                                         ; $61ca: $d8

    ld a, a                                       ; $61cb: $7f
    add sp, $00                                   ; $61cc: $e8 $00
    ccf                                           ; $61ce: $3f
    ld l, b                                       ; $61cf: $68
    cp a                                          ; $61d0: $bf
    cp h                                          ; $61d1: $bc
    cpl                                           ; $61d2: $2f
    ld [hl], h                                    ; $61d3: $74
    add c                                         ; $61d4: $81
    push de                                       ; $61d5: $d5
    inc c                                         ; $61d6: $0c
    ld a, [$fef7]                                 ; $61d7: $fa $f7 $fe
    dec e                                         ; $61da: $1d
    cp b                                          ; $61db: $b8
    rlca                                          ; $61dc: $07
    or d                                          ; $61dd: $b2
    ld e, $c1                                     ; $61de: $1e $c1
    rst $38                                       ; $61e0: $ff
    nop                                           ; $61e1: $00
    ld [hl], d                                    ; $61e2: $72
    cp a                                          ; $61e3: $bf
    ld l, l                                       ; $61e4: $6d
    rra                                           ; $61e5: $1f
    or $0f                                        ; $61e6: $f6 $0f
    xor e                                         ; $61e8: $ab
    rst $10                                       ; $61e9: $d7
    db $10                                        ; $61ea: $10
    push bc                                       ; $61eb: $c5
    db $eb                                        ; $61ec: $eb
    ld l, l                                       ; $61ed: $6d
    and h                                         ; $61ee: $a4
    ld bc, $c545                                  ; $61ef: $01 $45 $c5

jr_0be_61f2:
    add c                                         ; $61f2: $81
    add c                                         ; $61f3: $81
    nop                                           ; $61f4: $00
    ld b, c                                       ; $61f5: $41
    push bc                                       ; $61f6: $c5
    add hl, hl                                    ; $61f7: $29
    db $ed                                        ; $61f8: $ed
    ld bc, $85c5                                  ; $61f9: $01 $c5 $85
    add l                                         ; $61fc: $85
    ld bc, $c585                                  ; $61fd: $01 $85 $c5
    ld b, c                                       ; $6200: $41
    push hl                                       ; $6201: $e5
    add l                                         ; $6202: $85
    cp [hl]                                       ; $6203: $be
    add a                                         ; $6204: $87
    ld a, [hl]                                    ; $6205: $7e
    ld bc, $0680                                  ; $6206: $01 $80 $06
    ld [$bc86], sp                                ; $6209: $08 $86 $bc
    add a                                         ; $620c: $87
    db $fc                                        ; $620d: $fc
    push hl                                       ; $620e: $e5
    cp $be                                        ; $620f: $fe $be
    inc l                                         ; $6211: $2c
    ld a, a                                       ; $6212: $7f
    ld b, e                                       ; $6213: $43
    inc [hl]                                      ; $6214: $34
    nop                                           ; $6215: $00
    add c                                         ; $6216: $81
    ld e, $13                                     ; $6217: $1e $13
    add $05                                       ; $6219: $c6 $05
    ccf                                           ; $621b: $3f
    sbc c                                         ; $621c: $99
    nop                                           ; $621d: $00
    ld a, l                                       ; $621e: $7d
    db $fd                                        ; $621f: $fd
    ld l, a                                       ; $6220: $6f
    rst $28                                       ; $6221: $ef
    rra                                           ; $6222: $1f
    ld a, c                                       ; $6223: $79
    ei                                            ; $6224: $fb
    or c                                          ; $6225: $b1
    nop                                           ; $6226: $00
    ld a, a                                       ; $6227: $7f
    ei                                            ; $6228: $fb
    rst $18                                       ; $6229: $df
    ld a, a                                       ; $622a: $7f
    rst $38                                       ; $622b: $ff
    add hl, bc                                    ; $622c: $09
    rst $38                                       ; $622d: $ff
    push de                                       ; $622e: $d5
    inc b                                         ; $622f: $04
    nop                                           ; $6230: $00
    xor [hl]                                      ; $6231: $ae
    ld bc, $0e71                                  ; $6232: $01 $71 $0e
    ld c, h                                       ; $6235: $4c
    ld bc, $faca                                  ; $6236: $01 $ca $fa
    nop                                           ; $6239: $00
    dec b                                         ; $623a: $05
    push de                                       ; $623b: $d5
    nop                                           ; $623c: $00
    cp a                                          ; $623d: $bf
    nop                                           ; $623e: $00
    sbc l                                         ; $623f: $9d
    ld h, b                                       ; $6240: $60
    ld a, d                                       ; $6241: $7a
    jr nz, jr_0be_61c4                            ; $6242: $20 $80

    rst $10                                       ; $6244: $d7
    inc d                                         ; $6245: $14
    nop                                           ; $6246: $00
    ld e, l                                       ; $6247: $5d
    ld [bc], a                                    ; $6248: $02
    ld [hl], e                                    ; $6249: $73
    adc h                                         ; $624a: $8c
    call Call_000_3000                            ; $624b: $cd $00 $30
    dec sp                                        ; $624e: $3b
    ret nz                                        ; $624f: $c0

    ld a, c                                       ; $6250: $79
    ld b, $e6                                     ; $6251: $06 $e6
    jr jr_0be_61f2                                ; $6253: $18 $9d

    nop                                           ; $6255: $00
    ld h, b                                       ; $6256: $60
    ld a, e                                       ; $6257: $7b
    add b                                         ; $6258: $80
    xor l                                         ; $6259: $ad
    ld d, b                                       ; $625a: $50
    jp nc, $b52d                                  ; $625b: $d2 $2d $b5

    db $10                                        ; $625e: $10
    ld [bc], a                                    ; $625f: $02
    ld l, h                                       ; $6260: $6c
    inc bc                                        ; $6261: $03
    inc e                                         ; $6262: $1c
    nop                                           ; $6263: $00
    ld d, c                                       ; $6264: $51
    ld d, h                                       ; $6265: $54
    dec hl                                        ; $6266: $2b
    di                                            ; $6267: $f3
    add b                                         ; $6268: $80
    ld h, [hl]                                    ; $6269: $66
    ld bc, $7f9d                                  ; $626a: $01 $9d $7f
    dec sp                                        ; $626d: $3b
    rst $38                                       ; $626e: $ff
    ld [hl], a                                    ; $626f: $77
    cp $9b                                        ; $6270: $fe $9b
    nop                                           ; $6272: $00
    ld a, a                                       ; $6273: $7f
    ld [hl], l                                    ; $6274: $75
    cp $ea                                        ; $6275: $fe $ea
    db $fd                                        ; $6277: $fd
    cp l                                          ; $6278: $bd
    di                                            ; $6279: $f3
    ld a, e                                       ; $627a: $7b
    ld [bc], a                                    ; $627b: $02
    rst $20                                       ; $627c: $e7
    or [hl]                                       ; $627d: $b6
    rst $08                                       ; $627e: $cf
    ld a, d                                       ; $627f: $7a
    sbc a                                         ; $6280: $9f
    or d                                          ; $6281: $b2
    sbc $03                                       ; $6282: $de $03
    ldh [$c0], a                                  ; $6284: $e0 $c0
    ld l, [hl]                                    ; $6286: $6e
    add hl, hl                                    ; $6287: $29
    ld l, d                                       ; $6288: $6a
    rrca                                          ; $6289: $0f
    cp $07                                        ; $628a: $fe $07
    ld hl, sp+$0f                                 ; $628c: $f8 $0f
    ldh a, [rIF]                                  ; $628e: $f0 $0f
    ld bc, $00f0                                  ; $6290: $01 $f0 $00
    ldh [$08], a                                  ; $6293: $e0 $08
    ret nz                                        ; $6295: $c0

    ld [bc], a                                    ; $6296: $02
    add b                                         ; $6297: $80
    ld a, c                                       ; $6298: $79
    add hl, bc                                    ; $6299: $09
    db $10                                        ; $629a: $10
    stop                                          ; $629b: $10 $00
    add c                                         ; $629d: $81
    halt                                          ; $629e: $76
    ld bc, $0040                                  ; $629f: $01 $40 $00
    ld e, $00                                     ; $62a2: $1e $00
    ld bc, $003c                                  ; $62a4: $01 $3c $00
    ld [bc], a                                    ; $62a7: $02
    nop                                           ; $62a8: $00
    sub b                                         ; $62a9: $90
    nop                                           ; $62aa: $00
    db $fc                                        ; $62ab: $fc
    ld [bc], a                                    ; $62ac: $02
    nop                                           ; $62ad: $00
    inc d                                         ; $62ae: $14
    nop                                           ; $62af: $00
    nop                                           ; $62b0: $00
    ld c, e                                       ; $62b1: $4b
    inc b                                         ; $62b2: $04
    inc bc                                        ; $62b3: $03
    ld b, b                                       ; $62b4: $40
    ld a, [bc]                                    ; $62b5: $0a
    inc bc                                        ; $62b6: $03
    jr c, jr_0be_62b9                             ; $62b7: $38 $00

jr_0be_62b9:
    ld b, c                                       ; $62b9: $41
    inc hl                                        ; $62ba: $23
    ld l, b                                       ; $62bb: $68
    ld hl, $00e1                                  ; $62bc: $21 $e1 $00
    add e                                         ; $62bf: $83
    nop                                           ; $62c0: $00
    add hl, sp                                    ; $62c1: $39
    inc h                                         ; $62c2: $24
    nop                                           ; $62c3: $00
    ld b, l                                       ; $62c4: $45
    db $f4                                        ; $62c5: $f4
    sbc [hl]                                      ; $62c6: $9e
    ld de, $0007                                  ; $62c7: $11 $07 $00
    rst $20                                       ; $62ca: $e7
    ld [de], a                                    ; $62cb: $12
    nop                                           ; $62cc: $00
    add sp, $02                                   ; $62cd: $e8 $02
    dec b                                         ; $62cf: $05
    ld [$c773], sp                                ; $62d0: $08 $73 $c7
    ld a, a                                       ; $62d3: $7f
    db $e3                                        ; $62d4: $e3
    inc b                                         ; $62d5: $04
    ld [$c77b], sp                                ; $62d6: $08 $7b $c7
    dec a                                         ; $62d9: $3d
    dec b                                         ; $62da: $05
    db $e3                                        ; $62db: $e3
    dec sp                                        ; $62dc: $3b
    push af                                       ; $62dd: $f5
    dec a                                         ; $62de: $3d
    ld [c], a                                     ; $62df: $e2
    xor d                                         ; $62e0: $aa
    ccf                                           ; $62e1: $3f
    nop                                           ; $62e2: $00
    ld [bc], a                                    ; $62e3: $02
    inc b                                         ; $62e4: $04
    nop                                           ; $62e5: $00
    add d                                         ; $62e6: $82
    rst $38                                       ; $62e7: $ff
    ld a, [$ed65]                                 ; $62e8: $fa $65 $ed
    jp nc, $80ff                                  ; $62eb: $d2 $ff $80

    ret nz                                        ; $62ee: $c0

    ldh [$3c], a                                  ; $62ef: $e0 $3c
    add b                                         ; $62f1: $80
    inc b                                         ; $62f2: $04
    ld hl, sp+$1e                                 ; $62f3: $f8 $1e
    pop af                                        ; $62f5: $f1
    dec sp                                        ; $62f6: $3b
    add sp, $3f                                   ; $62f7: $e8 $3f
    nop                                           ; $62f9: $00
    pop af                                        ; $62fa: $f1
    scf                                           ; $62fb: $37
    add sp, $6f                                   ; $62fc: $e8 $6f
    pop de                                        ; $62fe: $d1
    rst $18                                       ; $62ff: $df
    and e                                         ; $6300: $a3
    ld sp, $748a                                  ; $6301: $31 $8a $74
    ld bc, $7df1                                  ; $6304: $01 $f1 $7d
    pop af                                        ; $6307: $f1
    ld a, d                                       ; $6308: $7a
    ld [bc], a                                    ; $6309: $02
    pop hl                                        ; $630a: $e1
    cp [hl]                                       ; $630b: $be
    ld b, $c1                                     ; $630c: $06 $c1
    nop                                           ; $630e: $00
    db $fd                                        ; $630f: $fd
    or e                                          ; $6310: $b3
    and h                                         ; $6311: $a4
    xor a                                         ; $6312: $af
    cp e                                          ; $6313: $bb
    sub a                                         ; $6314: $97
    cp h                                          ; $6315: $bc
    adc a                                         ; $6316: $8f
    jr nc, @-$3f                                  ; $6317: $30 $bf

    add a                                         ; $6319: $87
    call nc, Call_000_0207                        ; $631a: $d4 $07 $02
    ld [$2ffc], sp                                ; $631d: $08 $fc $2f
    db $ec                                        ; $6320: $ec
    ld l, a                                       ; $6321: $6f
    nop                                           ; $6322: $00
    call c, $bcef                                 ; $6323: $dc $ef $bc
    rst $08                                       ; $6326: $cf
    ld l, h                                       ; $6327: $6c
    rst $18                                       ; $6328: $df
    ld e, h                                       ; $6329: $5c
    adc a                                         ; $632a: $8f
    ld bc, $8ffc                                  ; $632b: $01 $fc $8f
    ld c, b                                       ; $632e: $48
    sbc a                                         ; $632f: $9f
    ld a, [de]                                    ; $6330: $1a
    db $fc                                        ; $6331: $fc
    dec bc                                        ; $6332: $0b
    ld b, $03                                     ; $6333: $06 $03
    inc d                                         ; $6335: $14
    rrca                                          ; $6336: $0f
    cp $05                                        ; $6337: $fe $05
    ld [bc], a                                    ; $6339: $02
    nop                                           ; $633a: $00
    rlca                                          ; $633b: $07
    ld b, $00                                     ; $633c: $06 $00
    pop hl                                        ; $633e: $e1
    ld [hl], l                                    ; $633f: $75
    nop                                           ; $6340: $00
    or c                                          ; $6341: $b1
    ld a, c                                       ; $6342: $79
    ld a, c                                       ; $6343: $79
    cp l                                          ; $6344: $bd
    cp l                                          ; $6345: $bd
    ld e, l                                       ; $6346: $5d
    ld e, c                                       ; $6347: $59
    cp l                                          ; $6348: $bd
    nop                                           ; $6349: $00
    cp l                                          ; $634a: $bd
    dec e                                         ; $634b: $1d
    sbc c                                         ; $634c: $99
    ld a, l                                       ; $634d: $7d
    ld e, c                                       ; $634e: $59
    cp l                                          ; $634f: $bd
    or d                                          ; $6350: $b2
    rst $38                                       ; $6351: $ff
    nop                                           ; $6352: $00
    cp c                                          ; $6353: $b9
    xor a                                         ; $6354: $af
    cp h                                          ; $6355: $bc
    xor a                                         ; $6356: $af
    sbc $f7                                       ; $6357: $de $f7
    ld a, [hl]                                    ; $6359: $7e
    sub l                                         ; $635a: $95
    nop                                           ; $635b: $00
    ld l, a                                       ; $635c: $6f
    cp c                                          ; $635d: $b9
    ld [hl], e                                    ; $635e: $73
    sbc c                                         ; $635f: $99
    ld a, a                                       ; $6360: $7f
    add c                                         ; $6361: $81
    cp b                                          ; $6362: $b8
    rra                                           ; $6363: $1f
    inc bc                                        ; $6364: $03
    ld e, a                                       ; $6365: $5f
    add a                                         ; $6366: $87
    call $3bf0                                    ; $6367: $cd $f0 $3b
    db $fc                                        ; $636a: $fc
    add $0c                                       ; $636b: $c6 $0c
    cp h                                          ; $636d: $bc
    rra                                           ; $636e: $1f
    nop                                           ; $636f: $00
    inc bc                                        ; $6370: $03
    di                                            ; $6371: $f3
    add e                                         ; $6372: $83
    di                                            ; $6373: $f3
    call Call_000_217f                            ; $6374: $cd $7f $21
    di                                            ; $6377: $f3
    nop                                           ; $6378: $00
    sub c                                         ; $6379: $91
    ld [hl], c                                    ; $637a: $71
    ret                                           ; $637b: $c9


    cp e                                          ; $637c: $bb
    call Call_000_009f                            ; $637d: $cd $9f $00
    nop                                           ; $6380: $00
    nop                                           ; $6381: $00
    db $10                                        ; $6382: $10
    ld a, b                                       ; $6383: $78
    ld [$077c], sp                                ; $6384: $08 $7c $07
    ld a, a                                       ; $6387: $7f
    dec bc                                        ; $6388: $0b
    ld a, h                                       ; $6389: $7c
    ld [bc], a                                    ; $638a: $02
    rla                                           ; $638b: $17
    ld a, e                                       ; $638c: $7b
    inc e                                         ; $638d: $1c
    ld [hl], a                                    ; $638e: $77
    inc e                                         ; $638f: $1c
    ld [hl], a                                    ; $6390: $77
    ld c, $06                                     ; $6391: $0e $06
    ld e, $00                                     ; $6393: $1e $00
    db $10                                        ; $6395: $10
    ld a, $e0                                     ; $6396: $3e $e0
    cp $f8                                        ; $6398: $fe $f8
    ld e, $fe                                     ; $639a: $1e $fe
    add $00                                       ; $639c: $c6 $00
    ccf                                           ; $639e: $3f
    jp hl                                         ; $639f: $e9


    ld a, $e2                                     ; $63a0: $3e $e2
    ld a, h                                       ; $63a2: $7c
    inc bc                                        ; $63a3: $03
    di                                            ; $63a4: $f3
    inc c                                         ; $63a5: $0c
    nop                                           ; $63a6: $00
    adc $30                                       ; $63a7: $ce $30
    cp l                                          ; $63a9: $bd
    ld b, b                                       ; $63aa: $40
    ld a, e                                       ; $63ab: $7b
    add b                                         ; $63ac: $80
    push af                                       ; $63ad: $f5
    nop                                           ; $63ae: $00
    db $10                                        ; $63af: $10
    ld a, [$b700]                                 ; $63b0: $fa $00 $b7
    di                                            ; $63b3: $f3
    rlca                                          ; $63b4: $07
    ld d, a                                       ; $63b5: $57
    xor b                                         ; $63b6: $a8
    xor [hl]                                      ; $63b7: $ae
    ld d, b                                       ; $63b8: $50
    ld bc, $00fd                                  ; $63b9: $01 $fd $00
    cp [hl]                                       ; $63bc: $be
    ld bc, $037c                                  ; $63bd: $01 $7c $03
    pop af                                        ; $63c0: $f1
    call c, $0002                                 ; $63c1: $dc $02 $00
    ld sp, hl                                     ; $63c4: $f9
    rlca                                          ; $63c5: $07
    ld h, e                                       ; $63c6: $63
    rra                                           ; $63c7: $1f
    rst $08                                       ; $63c8: $cf
    ccf                                           ; $63c9: $3f
    sbc [hl]                                      ; $63ca: $9e
    ld a, a                                       ; $63cb: $7f
    nop                                           ; $63cc: $00
    ld a, l                                       ; $63cd: $7d
    rst $38                                       ; $63ce: $ff
    db $eb                                        ; $63cf: $eb
    cp $d7                                        ; $63d0: $fe $d7
    db $fc                                        ; $63d2: $fc
    cp a                                          ; $63d3: $bf
    ld hl, sp+$00                                 ; $63d4: $f8 $00
    rst $18                                       ; $63d6: $df
    db $fc                                        ; $63d7: $fc
    or [hl]                                       ; $63d8: $b6
    ld sp, hl                                     ; $63d9: $f9
    ld a, l                                       ; $63da: $7d
    db $e3                                        ; $63db: $e3
    ld a, [$00c7]                                 ; $63dc: $fa $c7 $00
    ld a, l                                       ; $63df: $7d
    adc a                                         ; $63e0: $8f
    jp c, $bd3f                                   ; $63e1: $da $3f $bd

    ld a, a                                       ; $63e4: $7f
    ld a, a                                       ; $63e5: $7f
    rst $38                                       ; $63e6: $ff
    inc b                                         ; $63e7: $04
    ld h, d                                       ; $63e8: $62
    rst $38                                       ; $63e9: $ff
    call nz, $88ff                                ; $63ea: $c4 $ff $88
    ld [bc], a                                    ; $63ed: $02
    nop                                           ; $63ee: $00
    sub b                                         ; $63ef: $90
    rst $38                                       ; $63f0: $ff
    ld d, c                                       ; $63f1: $51
    and b                                         ; $63f2: $a0
    ldh a, [rTMA]                                 ; $63f3: $f0 $06
    add b                                         ; $63f5: $80
    add d                                         ; $63f6: $82
    ld bc, $fc00                                  ; $63f7: $01 $00 $fc
    ld [bc], a                                    ; $63fa: $02
    ld e, e                                       ; $63fb: $5b
    inc b                                         ; $63fc: $04
    ld [bc], a                                    ; $63fd: $02
    inc bc                                        ; $63fe: $03
    ldh [$03], a                                  ; $63ff: $e0 $03
    ret nz                                        ; $6401: $c0

    ld de, $db80                                  ; $6402: $11 $80 $db
    ld a, [bc]                                    ; $6405: $0a
    rrca                                          ; $6406: $0f
    add e                                         ; $6407: $83
    ld h, [hl]                                    ; $6408: $66
    inc d                                         ; $6409: $14
    add b                                         ; $640a: $80
    nop                                           ; $640b: $00
    ret z                                         ; $640c: $c8

    nop                                           ; $640d: $00
    jp nz, Jump_000_14ec                          ; $640e: $c2 $ec $14

    inc b                                         ; $6411: $04
    dec bc                                        ; $6412: $0b
    rla                                           ; $6413: $17
    nop                                           ; $6414: $00
    nop                                           ; $6415: $00
    db $fd                                        ; $6416: $fd
    sub d                                         ; $6417: $92
    inc b                                         ; $6418: $04
    ld [bc], a                                    ; $6419: $02
    db $ec                                        ; $641a: $ec
    ld [bc], a                                    ; $641b: $02
    add [hl]                                      ; $641c: $86
    inc c                                         ; $641d: $0c
    db $10                                        ; $641e: $10
    ld [$1054], sp                                ; $641f: $08 $54 $10
    sbc [hl]                                      ; $6422: $9e
    ld bc, $7220                                  ; $6423: $01 $20 $72
    ld b, $9c                                     ; $6426: $06 $9c
    inc e                                         ; $6428: $1c
    inc de                                        ; $6429: $13
    ccf                                           ; $642a: $3f
    nop                                           ; $642b: $00
    ld b, l                                       ; $642c: $45
    ld a, [hl]                                    ; $642d: $7e
    ld a, [bc]                                    ; $642e: $0a
    inc de                                        ; $642f: $13
    nop                                           ; $6430: $00
    nop                                           ; $6431: $00
    ld hl, $1520                                  ; $6432: $21 $20 $15
    sbc h                                         ; $6435: $9c
    stop                                          ; $6436: $10 $00
    ld bc, $0020                                  ; $6438: $01 $20 $00
    ld c, $00                                     ; $643b: $0e $00
    ld a, $00                                     ; $643d: $3e $00
    ld a, $d4                                     ; $643f: $3e $d4
    ld [bc], a                                    ; $6441: $02
    jr jr_0be_6463                                ; $6442: $18 $1f

    db $f4                                        ; $6444: $f4
    rrca                                          ; $6445: $0f
    ld l, h                                       ; $6446: $6c
    inc c                                         ; $6447: $0c
    ld [hl+], a                                   ; $6448: $22
    rla                                           ; $6449: $17
    push hl                                       ; $644a: $e5
    ld a, a                                       ; $644b: $7f
    ld e, d                                       ; $644c: $5a
    ld bc, $afbf                                  ; $644d: $01 $bf $af
    ld d, a                                       ; $6450: $57
    push af                                       ; $6451: $f5
    ld a, [bc]                                    ; $6452: $0a
    ld a, [$8140]                                 ; $6453: $fa $40 $81
    nop                                           ; $6456: $00
    nop                                           ; $6457: $00
    push de                                       ; $6458: $d5
    rst $38                                       ; $6459: $ff
    ld a, [$ff53]                                 ; $645a: $fa $53 $ff
    dec l                                         ; $645d: $2d
    cp $fa                                        ; $645e: $fe $fa
    nop                                           ; $6460: $00
    push af                                       ; $6461: $f5
    ld d, l                                       ; $6462: $55

jr_0be_6463:
    xor b                                         ; $6463: $a8
    cp a                                          ; $6464: $bf
    nop                                           ; $6465: $00
    rst $38                                       ; $6466: $ff
    ld a, [bc]                                    ; $6467: $0a
    rst $38                                       ; $6468: $ff
    nop                                           ; $6469: $00
    ld d, l                                       ; $646a: $55
    rst $38                                       ; $646b: $ff
    xor a                                         ; $646c: $af
    xor a                                         ; $646d: $af
    ld b, l                                       ; $646e: $45
    ld a, a                                       ; $646f: $7f
    adc e                                         ; $6470: $8b
    cp a                                          ; $6471: $bf
    nop                                           ; $6472: $00
    rla                                           ; $6473: $17
    cp $2f                                        ; $6474: $fe $2f
    db $fc                                        ; $6476: $fc
    ld e, a                                       ; $6477: $5f
    ld hl, sp-$41                                 ; $6478: $f8 $bf
    ldh a, [$b6]                                  ; $647a: $f0 $b6
    sub b                                         ; $647c: $90
    rlca                                          ; $647d: $07
    add c                                         ; $647e: $81
    db $ec                                        ; $647f: $ec
    ld b, [hl]                                    ; $6480: $46
    db $f4                                        ; $6481: $f4
    ld c, $81                                     ; $6482: $0e $81
    inc a                                         ; $6484: $3c
    ld b, a                                       ; $6485: $47
    xor h                                         ; $6486: $ac
    rrca                                          ; $6487: $0f
    ld hl, sp+$00                                 ; $6488: $f8 $00
    adc a                                         ; $648a: $8f
    cp b                                          ; $648b: $b8
    rst $08                                       ; $648c: $cf
    db $ec                                        ; $648d: $ec
    rst $10                                       ; $648e: $d7
    cp [hl]                                       ; $648f: $be
    rst $00                                       ; $6490: $c7
    ld a, e                                       ; $6491: $7b
    nop                                           ; $6492: $00
    rst $20                                       ; $6493: $e7

jr_0be_6494:
    ld e, l                                       ; $6494: $5d
    ld a, [c]                                     ; $6495: $f2
    cpl                                           ; $6496: $2f
    ldh a, [$1f]                                  ; $6497: $f0 $1f
    ld sp, hl                                     ; $6499: $f9
    inc d                                         ; $649a: $14
    nop                                           ; $649b: $00
    rst $38                                       ; $649c: $ff
    ld [$10ff], sp                                ; $649d: $08 $ff $10
    rst $38                                       ; $64a0: $ff
    ld a, [hl+]                                   ; $64a1: $2a
    rst $38                                       ; $64a2: $ff
    db $fd                                        ; $64a3: $fd
    nop                                           ; $64a4: $00
    rst $38                                       ; $64a5: $ff
    ld e, a                                       ; $64a6: $5f
    cp $d6                                        ; $64a7: $fe $d6
    add hl, hl                                    ; $64a9: $29
    rst $38                                       ; $64aa: $ff
    ld bc, $000e                                  ; $64ab: $01 $0e $00
    db $fd                                        ; $64ae: $fd
    dec c                                         ; $64af: $0d
    ld a, [$f41b]                                 ; $64b0: $fa $1b $f4
    scf                                           ; $64b3: $37
    add sp, -$02                                  ; $64b4: $e8 $fe
    nop                                           ; $64b6: $00
    jp $a74d                                      ; $64b7: $c3 $4d $a7


    cp e                                          ; $64ba: $bb
    rrca                                          ; $64bb: $0f
    xor $5f                                       ; $64bc: $ee $5f
    or c                                          ; $64be: $b1
    inc l                                         ; $64bf: $2c
    db $fd                                        ; $64c0: $fd
    ld sp, $0456                                  ; $64c1: $31 $56 $04
    ld h, c                                       ; $64c4: $61
    sub h                                         ; $64c5: $94
    inc b                                         ; $64c6: $04
    ld b, h                                       ; $64c7: $44
    rra                                           ; $64c8: $1f
    cp a                                          ; $64c9: $bf
    push bc                                       ; $64ca: $c5
    ld [$f9bf], sp                                ; $64cb: $08 $bf $f9
    adc a                                         ; $64ce: $8f
    cp c                                          ; $64cf: $b9
    ld [bc], a                                    ; $64d0: $02
    ld [$b987], sp                                ; $64d1: $08 $87 $b9
    add a                                         ; $64d4: $87
    jr jr_0be_6494                                ; $64d5: $18 $bd

    add a                                         ; $64d7: $87
    cp h                                          ; $64d8: $bc
    ld [hl], b                                    ; $64d9: $70
    ld l, $78                                     ; $64da: $2e $78
    ld e, $e7                                     ; $64dc: $1e $e7
    rst $38                                       ; $64de: $ff
    ld l, a                                       ; $64df: $6f
    nop                                           ; $64e0: $00
    rst $18                                       ; $64e1: $df
    ld a, c                                       ; $64e2: $79
    rst $00                                       ; $64e3: $c7
    ld l, l                                       ; $64e4: $6d
    rst $00                                       ; $64e5: $c7
    ld a, l                                       ; $64e6: $7d
    rst $00                                       ; $64e7: $c7
    ld e, l                                       ; $64e8: $5d
    nop                                           ; $64e9: $00
    call $cd79                                    ; $64ea: $cd $79 $cd
    cp c                                          ; $64ed: $b9
    db $dd                                        ; $64ee: $dd
    ld sp, $1fbd                                  ; $64ef: $31 $bd $1f
    nop                                           ; $64f2: $00
    ld [hl], e                                    ; $64f3: $73
    ld l, [hl]                                    ; $64f4: $6e

jr_0be_64f5:
    ld a, c                                       ; $64f5: $79
    or a                                          ; $64f6: $b7
    sbc h                                         ; $64f7: $9c
    ld l, e                                       ; $64f8: $6b
    ld a, a                                       ; $64f9: $7f
    add sp, $00                                   ; $64fa: $e8 $00
    cp a                                          ; $64fc: $bf
    cp b                                          ; $64fd: $b8
    xor a                                         ; $64fe: $af
    ld a, h                                       ; $64ff: $7c
    ld h, a                                       ; $6500: $67
    inc [hl]                                      ; $6501: $34
    ld l, a                                       ; $6502: $6f
    inc e                                         ; $6503: $1c
    nop                                           ; $6504: $00
    cp $c2                                        ; $6505: $fe $c2
    cp $a4                                        ; $6507: $fe $a4
    ld a, h                                       ; $6509: $7c
    ret c                                         ; $650a: $d8

    jr c, jr_0be_64f5                             ; $650b: $38 $e8

    ld bc, $34d8                                  ; $650d: $01 $d8 $34
    db $ec                                        ; $6510: $ec
    ld a, [de]                                    ; $6511: $1a
    or $1e                                        ; $6512: $f6 $1e
    ld a, [c]                                     ; $6514: $f2
    jp c, Jump_000_003f                           ; $6515: $da $3f $00

    add d                                         ; $6518: $82
    cp a                                          ; $6519: $bf
    add b                                         ; $651a: $80
    add b                                         ; $651b: $80
    rst $38                                       ; $651c: $ff
    rst $38                                       ; $651d: $ff
    dec b                                         ; $651e: $05

jr_0be_651f:
    rst $38                                       ; $651f: $ff
    nop                                           ; $6520: $00
    ld a, [bc]                                    ; $6521: $0a
    cp $04                                        ; $6522: $fe $04
    db $fc                                        ; $6524: $fc
    jr z, jr_0be_651f                             ; $6525: $28 $f8

    ld d, b                                       ; $6527: $50
    ld hl, sp+$40                                 ; $6528: $f8 $40
    and h                                         ; $652a: $a4
    ret                                           ; $652b: $c9


    ld [bc], a                                    ; $652c: $02
    rst $38                                       ; $652d: $ff
    rst $38                                       ; $652e: $ff
    rra                                           ; $652f: $1f
    rst $38                                       ; $6530: $ff
    ld b, a                                       ; $6531: $47
    ld [hl], a                                    ; $6532: $77
    ld b, h                                       ; $6533: $44
    jr nz, jr_0be_656f                            ; $6534: $20 $39

    add hl, bc                                    ; $6536: $09
    jr nz, jr_0be_6539                            ; $6537: $20 $00

jr_0be_6539:
    ld [hl], c                                    ; $6539: $71
    db $10                                        ; $653a: $10
    ld [$ffff], sp                                ; $653b: $08 $ff $ff
    nop                                           ; $653e: $00
    db $fc                                        ; $653f: $fc
    rst $38                                       ; $6540: $ff
    ld [bc], a                                    ; $6541: $02
    add d                                         ; $6542: $82
    nop                                           ; $6543: $00
    nop                                           ; $6544: $00
    ld [bc], a                                    ; $6545: $02
    add d                                         ; $6546: $82
    jr nz, jr_0be_658d                            ; $6547: $20 $44

    rst $00                                       ; $6549: $c7
    jr nz, jr_0be_6554                            ; $654a: $20 $08

    ret nc                                        ; $654c: $d0

    rst $38                                       ; $654d: $ff
    jr z, jr_0be_658f                             ; $654e: $28 $3f

    inc d                                         ; $6550: $14
    ld bc, $0a1f                                  ; $6551: $01 $1f $0a

jr_0be_6554:
    rrca                                          ; $6554: $0f
    inc b                                         ; $6555: $04
    rrca                                          ; $6556: $0f
    ld [bc], a                                    ; $6557: $02
    rra                                           ; $6558: $1f
    jr nc, jr_0be_6563                            ; $6559: $30 $08

    add b                                         ; $655b: $80
    db $fc                                        ; $655c: $fc
    ld c, b                                       ; $655d: $48
    ld bc, $ff01                                  ; $655e: $01 $01 $ff
    rst $38                                       ; $6561: $ff
    rrca                                          ; $6562: $0f

jr_0be_6563:
    cp $07                                        ; $6563: $fe $07
    nop                                           ; $6565: $00
    rst $38                                       ; $6566: $ff
    ld [$51fd], sp                                ; $6567: $08 $fd $51
    ld sp, hl                                     ; $656a: $f9
    and b                                         ; $656b: $a0
    ldh a, [rLCDC]                                ; $656c: $f0 $40
    ld c, a                                       ; $656e: $4f

jr_0be_656f:
    pop hl                                        ; $656f: $e1
    ld b, b                                       ; $6570: $40
    db $10                                        ; $6571: $10
    sub $a9                                       ; $6572: $d6 $a9
    call c, $a906                                 ; $6574: $dc $06 $a9
    inc b                                         ; $6577: $04
    xor c                                         ; $6578: $a9
    add hl, bc                                    ; $6579: $09
    and [hl]                                      ; $657a: $a6
    rlca                                          ; $657b: $07
    nop                                           ; $657c: $00
    cp h                                          ; $657d: $bc
    rst $38                                       ; $657e: $ff
    db $f4                                        ; $657f: $f4
    rst $38                                       ; $6580: $ff
    ld a, [$45ff]                                 ; $6581: $fa $ff $45
    ld c, a                                       ; $6584: $4f
    dec bc                                        ; $6585: $0b
    ld [bc], a                                    ; $6586: $02
    rlca                                          ; $6587: $07
    ld b, c                                       ; $6588: $41
    ld b, e                                       ; $6589: $43
    ld b, b                                       ; $658a: $40
    ld c, b                                       ; $658b: $48
    add c                                         ; $658c: $81

jr_0be_658d:
    ld [hl+], a                                   ; $658d: $22
    rlca                                          ; $658e: $07

jr_0be_658f:
    ld b, b                                       ; $658f: $40
    ld [$8712], sp                                ; $6590: $08 $12 $87
    cp [hl]                                       ; $6593: $be
    add e                                         ; $6594: $83
    ld a, b                                       ; $6595: $78
    dec b                                         ; $6596: $05
    add d                                         ; $6597: $82
    cp a                                          ; $6598: $bf
    add d                                         ; $6599: $82
    dec b                                         ; $659a: $05
    cp h                                          ; $659b: $bc
    adc b                                         ; $659c: $88
    and b                                         ; $659d: $a0
    ld [$7ebd], sp                                ; $659e: $08 $bd $7e
    rst $10                                       ; $65a1: $d7
    and [hl]                                      ; $65a2: $a6
    nop                                           ; $65a3: $00
    rst $38                                       ; $65a4: $ff
    jp Jump_0be_683e                              ; $65a5: $c3 $3e $68


    ld a, a                                       ; $65a8: $7f
    ld a, c                                       ; $65a9: $79
    inc bc                                        ; $65aa: $03
    and $07                                       ; $65ab: $e6 $07
    ld [hl], c                                    ; $65ad: $71
    ld hl, sp+$12                                 ; $65ae: $f8 $12
    add c                                         ; $65b0: $81
    db $fd                                        ; $65b1: $fd
    ld hl, $7d10                                  ; $65b2: $21 $10 $7d
    ld de, $703d                                  ; $65b5: $11 $3d $70
    ld [$771c], sp                                ; $65b8: $08 $1c $77
    inc d                                         ; $65bb: $14
    ld a, a                                       ; $65bc: $7f
    nop                                           ; $65bd: $00
    rra                                           ; $65be: $1f
    ld [hl], e                                    ; $65bf: $73
    rrca                                          ; $65c0: $0f
    ld a, b                                       ; $65c1: $78
    dec b                                         ; $65c2: $05
    ld a, [hl]                                    ; $65c3: $7e
    dec bc                                        ; $65c4: $0b
    ld a, a                                       ; $65c5: $7f
    nop                                           ; $65c6: $00
    db $10                                        ; $65c7: $10
    ld a, b                                       ; $65c8: $78
    nop                                           ; $65c9: $00
    nop                                           ; $65ca: $00
    ld e, $f2                                     ; $65cb: $1e $f2
    ld a, [de]                                    ; $65cd: $1a
    or $00                                        ; $65ce: $f6 $00
    db $ec                                        ; $65d0: $ec
    or $f8                                        ; $65d1: $f6 $f8
    ld c, $d0                                     ; $65d3: $0e $d0
    ld a, $f0                                     ; $65d5: $3e $f0
    cp $20                                        ; $65d7: $fe $20
    ld [$d21e], sp                                ; $65d9: $08 $1e $d2
    ld [$8f87], sp                                ; $65dc: $08 $87 $8f
    add e                                         ; $65df: $83
    add a                                         ; $65e0: $87
    add c                                         ; $65e1: $81
    ld [$8083], sp                                ; $65e2: $08 $83 $80
    add c                                         ; $65e5: $81
    add b                                         ; $65e6: $80
    ld bc, $c008                                  ; $65e7: $01 $08 $c0
    rst $38                                       ; $65ea: $ff
    rst $38                                       ; $65eb: $ff
    nop                                           ; $65ec: $00
    ldh [$f0], a                                  ; $65ed: $e0 $f0
    ldh a, [$f8]                                  ; $65ef: $f0 $f8
    ld hl, sp-$04                                 ; $65f1: $f8 $fc
    db $fc                                        ; $65f3: $fc
    cp $00                                        ; $65f4: $fe $00
    ld a, [hl]                                    ; $65f6: $7e
    rst $38                                       ; $65f7: $ff
    ccf                                           ; $65f8: $3f
    ld a, a                                       ; $65f9: $7f
    rra                                           ; $65fa: $1f
    ccf                                           ; $65fb: $3f
    rst $38                                       ; $65fc: $ff
    rst $38                                       ; $65fd: $ff
    ld [bc], a                                    ; $65fe: $02
    rlca                                          ; $65ff: $07
    rrca                                          ; $6600: $0f
    inc bc                                        ; $6601: $03
    rlca                                          ; $6602: $07
    ld bc, $d603                                  ; $6603: $01 $03 $d6
    dec b                                         ; $6606: $05
    ld bc, $0108                                  ; $6607: $01 $08 $01
    add c                                         ; $660a: $81
    adc l                                         ; $660b: $8d
    call $15f0                                    ; $660c: $cd $f0 $15
    db $10                                        ; $660f: $10
    db $10                                        ; $6610: $10
    db $10                                        ; $6611: $10
    ld a, [bc]                                    ; $6612: $0a
    jr c, jr_0be_664d                             ; $6613: $38 $38

    ld a, h                                       ; $6615: $7c
    cp $05                                        ; $6616: $fe $05
    nop                                           ; $6618: $00
    jr c, jr_0be_661b                             ; $6619: $38 $00

jr_0be_661b:
    ld d, $04                                     ; $661b: $16 $04
    ld [bc], a                                    ; $661d: $02
    inc b                                         ; $661e: $04
    inc b                                         ; $661f: $04
    ld c, $0e                                     ; $6620: $0e $0e
    sbc a                                         ; $6622: $9f
    cp a                                          ; $6623: $bf
    dec b                                         ; $6624: $05
    nop                                           ; $6625: $00
    ld c, $c2                                     ; $6626: $0e $c2
    nop                                           ; $6628: $00
    ld d, $03                                     ; $6629: $16 $03
    ld b, $03                                     ; $662b: $06 $03
    inc bc                                        ; $662d: $03
    daa                                           ; $662e: $27
    xor a                                         ; $662f: $af
    dec b                                         ; $6630: $05
    nop                                           ; $6631: $00
    inc bc                                        ; $6632: $03
    nop                                           ; $6633: $00
    ret nz                                        ; $6634: $c0

    ldh [$e0], a                                  ; $6635: $e0 $e0
    ldh a, [$f7]                                  ; $6637: $f0 $f7
    rst $30                                       ; $6639: $f7
    or $f5                                        ; $663a: $f6 $f5
    nop                                           ; $663c: $00
    rst $30                                       ; $663d: $f7
    db $f4                                        ; $663e: $f4
    push af                                       ; $663f: $f5
    or $b5                                        ; $6640: $f6 $b5
    or $9a                                        ; $6642: $f6 $9a
    cp e                                          ; $6644: $bb
    nop                                           ; $6645: $00
    rrca                                          ; $6646: $0f
    rra                                           ; $6647: $1f
    rlca                                          ; $6648: $07
    rrca                                          ; $6649: $0f
    add b                                         ; $664a: $80
    add b                                         ; $664b: $80
    ld c, a                                       ; $664c: $4f

jr_0be_664d:
    rst $08                                       ; $664d: $cf
    nop                                           ; $664e: $00
    dec [hl]                                      ; $664f: $35
    rst $38                                       ; $6650: $ff
    sbc e                                         ; $6651: $9b
    ld a, a                                       ; $6652: $7f
    rst $38                                       ; $6653: $ff
    nop                                           ; $6654: $00
    rst $30                                       ; $6655: $f7
    ld [$da00], sp                                ; $6656: $08 $00 $da
    sub $3e                                       ; $6659: $d6 $3e
    ld [hl-], a                                   ; $665b: $32
    rst $30                                       ; $665c: $f7
    ld sp, hl                                     ; $665d: $f9
    jp hl                                         ; $665e: $e9


    rst $38                                       ; $665f: $ff
    nop                                           ; $6660: $00
    db $dd                                        ; $6661: $dd
    ccf                                           ; $6662: $3f
    rst $30                                       ; $6663: $f7
    adc a                                         ; $6664: $8f
    ld e, h                                       ; $6665: $5c
    db $e3                                        ; $6666: $e3
    add $39                                       ; $6667: $c6 $39
    jr nz, jr_0be_667b                            ; $6669: $20 $10

    jr c, @-$5d                                   ; $666b: $38 $a1

    rla                                           ; $666d: $17
    nop                                           ; $666e: $00
    ld bc, $1301                                  ; $666f: $01 $01 $13
    rla                                           ; $6672: $17
    inc bc                                        ; $6673: $03
    add b                                         ; $6674: $80
    add c                                         ; $6675: $81
    pop bc                                        ; $6676: $c1
    pop bc                                        ; $6677: $c1
    inc b                                         ; $6678: $04
    ld c, $cd                                     ; $6679: $0e $cd

jr_0be_667b:
    ld a, [bc]                                    ; $667b: $0a
    sbc c                                         ; $667c: $99
    nop                                           ; $667d: $00
    inc d                                         ; $667e: $14
    ret nz                                        ; $667f: $c0

    db $e4                                        ; $6680: $e4
    push af                                       ; $6681: $f5
    dec b                                         ; $6682: $05
    nop                                           ; $6683: $00
    ret nz                                        ; $6684: $c0

    adc d                                         ; $6685: $8a
    db $10                                        ; $6686: $10
    ld hl, $0421                                  ; $6687: $21 $21 $04
    ld hl, $7171                                  ; $668a: $21 $71 $71
    ld sp, hl                                     ; $668d: $f9
    db $fd                                        ; $668e: $fd
    dec b                                         ; $668f: $05
    nop                                           ; $6690: $00
    ld [hl], c                                    ; $6691: $71
    adc e                                         ; $6692: $8b
    inc bc                                        ; $6693: $03
    sbc e                                         ; $6694: $9b
    add l                                         ; $6695: $85
    adc l                                         ; $6696: $8d
    add c                                         ; $6697: $81
    add l                                         ; $6698: $85
    add c                                         ; $6699: $81
    ld bc, $c000                                  ; $669a: $01 $00 $c0
    jr jr_0be_669f                                ; $669d: $18 $00

jr_0be_669f:
    ld l, a                                       ; $669f: $6f
    sbc b                                         ; $66a0: $98
    ei                                            ; $66a1: $fb
    inc e                                         ; $66a2: $1c
    rst $38                                       ; $66a3: $ff
    inc a                                         ; $66a4: $3c
    cp l                                          ; $66a5: $bd
    ld a, [hl]                                    ; $66a6: $7e
    nop                                           ; $66a7: $00
    dec a                                         ; $66a8: $3d

jr_0be_66a9:
    cp $fb                                        ; $66a9: $fe $fb
    cp h                                          ; $66ab: $bc
    db $fd                                        ; $66ac: $fd
    sbc [hl]                                      ; $66ad: $9e
    xor [hl]                                      ; $66ae: $ae
    rst $18                                       ; $66af: $df
    nop                                           ; $66b0: $00
    dec hl                                        ; $66b1: $2b
    call c, $fe1d                                 ; $66b2: $dc $1d $fe
    ld c, l                                       ; $66b5: $4d
    rst $38                                       ; $66b6: $ff
    sbc $3f                                       ; $66b7: $de $3f
    jr nz, jr_0be_66a9                            ; $66b9: $20 $ee

    rra                                           ; $66bb: $1f
    dec l                                         ; $66bc: $2d
    rlca                                          ; $66bd: $07
    ld bc, $c03f                                  ; $66be: $01 $3f $c0
    ld b, b                                       ; $66c1: $40
    pop bc                                        ; $66c2: $c1
    nop                                           ; $66c3: $00
    or b                                          ; $66c4: $b0
    ld [hl], b                                    ; $66c5: $70
    db $ec                                        ; $66c6: $ec
    inc a                                         ; $66c7: $3c
    ei                                            ; $66c8: $fb
    adc a                                         ; $66c9: $8f
    dec a                                         ; $66ca: $3d
    rst $08                                       ; $66cb: $cf
    ld bc, $fd7a                                  ; $66cc: $01 $7a $fd
    pop af                                        ; $66cf: $f1
    cp $7b                                        ; $66d0: $fe $7b
    db $fc                                        ; $66d2: $fc
    add b                                         ; $66d3: $80
    dec e                                         ; $66d4: $1d
    ld c, $80                                     ; $66d5: $0e $80
    ret nz                                        ; $66d7: $c0

    nop                                           ; $66d8: $00
    adc [hl]                                      ; $66d9: $8e
    adc [hl]                                      ; $66da: $8e
    ld e, a                                       ; $66db: $5f
    rst $18                                       ; $66dc: $df
    inc h                                         ; $66dd: $24
    xor $96                                       ; $66de: $ee $96
    db $10                                        ; $66e0: $10
    halt                                          ; $66e1: $76
    ld hl, $c071                                  ; $66e2: $21 $71 $c0
    ld e, b                                       ; $66e5: $58
    rst $38                                       ; $66e6: $ff
    rst $38                                       ; $66e7: $ff
    adc a                                         ; $66e8: $8f
    sbc a                                         ; $66e9: $9f
    push hl                                       ; $66ea: $e5
    jr nz, jr_0be_66f6                            ; $66eb: $20 $09

    ld h, b                                       ; $66ed: $60
    nop                                           ; $66ee: $00
    ld a, [hl]                                    ; $66ef: $7e
    nop                                           ; $66f0: $00
    ret nz                                        ; $66f1: $c0

    ldh [rP1], a                                  ; $66f2: $e0 $00
    rlca                                          ; $66f4: $07
    ret nz                                        ; $66f5: $c0

jr_0be_66f6:
    ld [hl+], a                                   ; $66f6: $22
    ld bc, $2480                                  ; $66f7: $01 $80 $24
    ld bc, $fe7c                                  ; $66fa: $01 $7c $fe
    ld a, $7e                                     ; $66fd: $3e $7e
    add hl, de                                    ; $66ff: $19
    add hl, sp                                    ; $6700: $39
    rst $38                                       ; $6701: $ff
    nop                                           ; $6702: $00
    rst $38                                       ; $6703: $ff
    ld [hl], b                                    ; $6704: $70
    ld [hl], b                                    ; $6705: $70
    ld [de], a                                    ; $6706: $12
    ld [hl-], a                                   ; $6707: $32
    inc de                                        ; $6708: $13
    inc de                                        ; $6709: $13
    rla                                           ; $670a: $17
    ld bc, $531f                                  ; $670b: $01 $1f $53
    ld d, e                                       ; $670e: $53
    and b                                         ; $670f: $a0
    pop hl                                        ; $6710: $e1
    ldh [$a0], a                                  ; $6711: $e0 $a0
    db $10                                        ; $6713: $10
    rrca                                          ; $6714: $0f
    adc [hl]                                      ; $6715: $8e
    cp $08                                        ; $6716: $fe $08
    add a                                         ; $6718: $87
    rst $08                                       ; $6719: $cf
    inc bc                                        ; $671a: $03
    inc [hl]                                      ; $671b: $34
    ld bc, $1202                                  ; $671c: $01 $02 $12
    ld c, $11                                     ; $671f: $0e $11
    sub a                                         ; $6721: $97
    ld a, b                                       ; $6722: $78
    rst $10                                       ; $6723: $d7
    stop                                          ; $6724: $10 $00
    ld b, [hl]                                    ; $6726: $46
    ld bc, $0910                                  ; $6727: $01 $10 $09
    ld h, b                                       ; $672a: $60
    add hl, de                                    ; $672b: $19
    add d                                         ; $672c: $82
    add d                                         ; $672d: $82
    db $fd                                        ; $672e: $fd
    nop                                           ; $672f: $00
    db $fd                                        ; $6730: $fd
    or e                                          ; $6731: $b3
    rst $08                                       ; $6732: $cf
    ld c, a                                       ; $6733: $4f
    ld a, a                                       ; $6734: $7f
    dec sp                                        ; $6735: $3b
    ccf                                           ; $6736: $3f
    ld l, a                                       ; $6737: $6f
    nop                                           ; $6738: $00
    ld a, a                                       ; $6739: $7f
    ld a, a                                       ; $673a: $7f
    ld a, a                                       ; $673b: $7f
    add $ff                                       ; $673c: $c6 $ff
    and $ff                                       ; $673e: $e6 $ff
    rlca                                          ; $6740: $07
    nop                                           ; $6741: $00
    db $fd                                        ; $6742: $fd
    add d                                         ; $6743: $82
    db $fd                                        ; $6744: $fd
    ld a, [bc]                                    ; $6745: $0a
    rst $30                                       ; $6746: $f7
    rst $28                                       ; $6747: $ef
    rst $38                                       ; $6748: $ff
    sub c                                         ; $6749: $91
    add b                                         ; $674a: $80
    xor $07                                       ; $674b: $ee $07
    ld a, [hl+]                                   ; $674d: $2a
    rst $38                                       ; $674e: $ff
    add a                                         ; $674f: $87
    rst $38                                       ; $6750: $ff
    rst $38                                       ; $6751: $ff
    ld e, a                                       ; $6752: $5f
    sbc a                                         ; $6753: $9f
    nop                                           ; $6754: $00
    ld a, a                                       ; $6755: $7f
    ld sp, $d0fe                                  ; $6756: $31 $fe $d0
    rst $38                                       ; $6759: $ff
    ld a, [hl]                                    ; $675a: $7e
    rst $38                                       ; $675b: $ff
    xor a                                         ; $675c: $af
    ld [$15ff], sp                                ; $675d: $08 $ff $15
    rst $38                                       ; $6760: $ff
    and d                                         ; $6761: $a2
    ld l, a                                       ; $6762: $6f
    inc bc                                        ; $6763: $03
    rst $38                                       ; $6764: $ff
    rst $38                                       ; $6765: $ff
    ret z                                         ; $6766: $c8

    nop                                           ; $6767: $00
    ld a, [hl-]                                   ; $6768: $3a
    and h                                         ; $6769: $a4
    ld e, h                                       ; $676a: $5c
    ld a, [bc]                                    ; $676b: $0a
    cp $55                                        ; $676c: $fe $55
    rst $38                                       ; $676e: $ff
    db $eb                                        ; $676f: $eb
    jr c, @+$01                                   ; $6770: $38 $ff

    cp $24                                        ; $6772: $fe $24
    inc bc                                        ; $6774: $03
    ld l, [hl]                                    ; $6775: $6e
    rlca                                          ; $6776: $07
    db $10                                        ; $6777: $10
    ld sp, $bdb9                                  ; $6778: $31 $b9 $bd
    and c                                         ; $677b: $a1
    nop                                           ; $677c: $00
    or c                                          ; $677d: $b1
    ld d, c                                       ; $677e: $51
    pop de                                        ; $677f: $d1
    rst $28                                       ; $6780: $ef
    rst $28                                       ; $6781: $ef
    xor $e9                                       ; $6782: $ee $e9
    ld [$ed00], a                                 ; $6784: $ea $00 $ed
    xor c                                         ; $6787: $a9
    xor $97                                       ; $6788: $ee $97
    or [hl]                                       ; $678a: $b6
    adc e                                         ; $678b: $8b
    sbc d                                         ; $678c: $9a
    add e                                         ; $678d: $83
    nop                                           ; $678e: $00
    adc d                                         ; $678f: $8a
    add d                                         ; $6790: $82
    add e                                         ; $6791: $83
    rlca                                          ; $6792: $07
    rlca                                          ; $6793: $07
    sbc $f9                                       ; $6794: $de $f9
    ld l, a                                       ; $6796: $6f
    ld bc, $fafc                                  ; $6797: $01 $fc $fa
    rlca                                          ; $679a: $07
    cp c                                          ; $679b: $b9
    ld h, [hl]                                    ; $679c: $66
    add sp, $77                                   ; $679d: $e8 $77
    ld l, c                                       ; $679f: $69
    ld b, $00                                     ; $67a0: $06 $00
    pop af                                        ; $67a2: $f1
    ldh a, [$90]                                  ; $67a3: $f0 $90
    ret nc                                        ; $67a5: $d0

    ldh a, [$f2]                                  ; $67a6: $f0 $f2
    ld [hl], d                                    ; $67a8: $72
    ret z                                         ; $67a9: $c8

    nop                                           ; $67aa: $00
    jr c, jr_0be_67e1                             ; $67ab: $38 $34

    call z, $e6da                                 ; $67ad: $cc $da $e6
    ld e, l                                       ; $67b0: $5d
    di                                            ; $67b1: $f3
    rst $28                                       ; $67b2: $ef
    nop                                           ; $67b3: $00
    ld sp, hl                                     ; $67b4: $f9
    nop                                           ; $67b5: $00
    nop                                           ; $67b6: $00
    jr nc, jr_0be_67e9                            ; $67b7: $30 $30

    ld a, c                                       ; $67b9: $79
    db $fd                                        ; $67ba: $fd
    nop                                           ; $67bb: $00

jr_0be_67bc:
    ld b, b                                       ; $67bc: $40
    jr nc, jr_0be_67bc                            ; $67bd: $30 $fd

    dec bc                                        ; $67bf: $0b
    add b                                         ; $67c0: $80
    add c                                         ; $67c1: $81
    ld h, c                                       ; $67c2: $61
    pop hl                                        ; $67c3: $e1
    ld bc, $0011                                  ; $67c4: $01 $11 $00
    add hl, sp                                    ; $67c7: $39
    add hl, sp                                    ; $67c8: $39
    ld a, c                                       ; $67c9: $79
    db $fd                                        ; $67ca: $fd
    ld de, $1139                                  ; $67cb: $11 $39 $11
    ld de, $c8a0                                  ; $67ce: $11 $a0 $c8
    add hl, de                                    ; $67d1: $19
    adc b                                         ; $67d2: $88
    db $e3                                        ; $67d3: $e3
    ld a, [bc]                                    ; $67d4: $0a
    rst $28                                       ; $67d5: $ef
    rst $18                                       ; $67d6: $df
    rst $38                                       ; $67d7: $ff
    rst $20                                       ; $67d8: $e7
    rst $20                                       ; $67d9: $e7
    or b                                          ; $67da: $b0
    add h                                         ; $67db: $84
    add hl, de                                    ; $67dc: $19
    jp hl                                         ; $67dd: $e9


    di                                            ; $67de: $f3
    ld a, [bc]                                    ; $67df: $0a
    inc b                                         ; $67e0: $04

jr_0be_67e1:
    db $10                                        ; $67e1: $10
    inc bc                                        ; $67e2: $03
    inc bc                                        ; $67e3: $03
    ld [hl], e                                    ; $67e4: $73
    ld [hl], e                                    ; $67e5: $73
    ld h, e                                       ; $67e6: $63
    ld sp, hl                                     ; $67e7: $f9
    add e                                         ; $67e8: $83

jr_0be_67e9:
    ld [$2012], sp                                ; $67e9: $08 $12 $20
    ei                                            ; $67ec: $fb
    rst $38                                       ; $67ed: $ff
    rst $30                                       ; $67ee: $f7

jr_0be_67ef:
    sub d                                         ; $67ef: $92
    db $10                                        ; $67f0: $10
    ld [de], a                                    ; $67f1: $12
    jr c, jr_0be_680c                             ; $67f2: $38 $18

    cp a                                          ; $67f4: $bf
    rst $38                                       ; $67f5: $ff
    ld e, a                                       ; $67f6: $5f
    db $10                                        ; $67f7: $10
    ld d, b                                       ; $67f8: $50
    ld l, $0b                                     ; $67f9: $2e $0b
    pop bc                                        ; $67fb: $c1
    pop de                                        ; $67fc: $d1
    ld h, c                                       ; $67fd: $61
    ld [bc], a                                    ; $67fe: $02
    pop hl                                        ; $67ff: $e1
    pop hl                                        ; $6800: $e1
    pop hl                                        ; $6801: $e1
    pop af                                        ; $6802: $f1
    pop af                                        ; $6803: $f1
    rst $30                                       ; $6804: $f7
    ld bc, $fb10                                  ; $6805: $01 $10 $fb
    nop                                           ; $6808: $00
    ei                                            ; $6809: $fb
    add e                                         ; $680a: $83
    add d                                         ; $680b: $82

jr_0be_680c:
    add d                                         ; $680c: $82
    add e                                         ; $680d: $83
    add c                                         ; $680e: $81
    pop bc                                        ; $680f: $c1

Jump_0be_6810:
    ret nz                                        ; $6810: $c0

    ld b, b                                       ; $6811: $40
    ldh [rNR13], a                                ; $6812: $e0 $13
    nop                                           ; $6814: $00
    ld sp, hl                                     ; $6815: $f9
    ld sp, hl                                     ; $6816: $f9
    db $fd                                        ; $6817: $fd
    ld a, [$effb]                                 ; $6818: $fa $fb $ef
    ld [bc], a                                    ; $681b: $02
    ldh a, [rIE]                                  ; $681c: $f0 $ff
    ld [hl], b                                    ; $681e: $70
    or c                                          ; $681f: $b1
    ld a, [hl]                                    ; $6820: $7e
    rst $28                                       ; $6821: $ef
    ld [$f803], sp                                ; $6822: $08 $03 $f8
    ld [bc], a                                    ; $6825: $02
    rst $38                                       ; $6826: $ff
    ld de, $1fff                                  ; $6827: $11 $ff $1f
    ld [$bad7], a                                 ; $682a: $ea $d7 $ba
    ld bc, $08f7                                  ; $682d: $01 $f7 $08
    rrca                                          ; $6830: $0f
    ld a, [hl]                                    ; $6831: $7e
    rst $38                                       ; $6832: $ff
    sub a                                         ; $6833: $97
    call z, Call_000_2206                         ; $6834: $cc $06 $22
    rst $38                                       ; $6837: $ff
    push af                                       ; $6838: $f5
    nop                                           ; $6839: $00
    rst $38                                       ; $683a: $ff
    ld d, a                                       ; $683b: $57
    or a                                          ; $683c: $b7
    add hl, hl                                    ; $683d: $29

Jump_0be_683e:
    db $db                                        ; $683e: $db
    ld d, l                                       ; $683f: $55
    xor l                                         ; $6840: $ad
    add hl, sp                                    ; $6841: $39
    nop                                           ; $6842: $00
    rst $00                                       ; $6843: $c7
    jp z, Jump_0be_75f7                           ; $6844: $ca $f7 $75

    rst $38                                       ; $6847: $ff
    cp d                                          ; $6848: $ba
    rst $38                                       ; $6849: $ff
    ld a, a                                       ; $684a: $7f
    jr @+$01                                      ; $684b: $18 $ff

    sub a                                         ; $684d: $97
    rst $10                                       ; $684e: $d7
    ld h, [hl]                                    ; $684f: $66
    ld a, [bc]                                    ; $6850: $0a
    sbc [hl]                                      ; $6851: $9e
    ld [bc], a                                    ; $6852: $02
    ld de, $9191                                  ; $6853: $11 $91 $91
    nop                                           ; $6856: $00
    cp c                                          ; $6857: $b9
    cp c                                          ; $6858: $b9
    pop de                                        ; $6859: $d1
    reti                                          ; $685a: $d9


    rst $38                                       ; $685b: $ff
    rst $38                                       ; $685c: $ff
    sbc h                                         ; $685d: $9c
    cp h                                          ; $685e: $bc
    jr nz, jr_0be_67ef                            ; $685f: $20 $8e

    sbc [hl]                                      ; $6861: $9e
    call nc, $830a                                ; $6862: $d4 $0a $83
    jp $fbeb                                      ; $6865: $c3 $eb $fb


    push af                                       ; $6868: $f5
    ld [bc], a                                    ; $6869: $02
    rst $28                                       ; $686a: $ef
    rst $38                                       ; $686b: $ff
    rst $38                                       ; $686c: $ff
    db $10                                        ; $686d: $10
    inc [hl]                                      ; $686e: $34
    inc d                                         ; $686f: $14
    ld bc, $f000                                  ; $6870: $01 $00 $f0
    ld bc, $70f4                                  ; $6873: $01 $f4 $70

Call_0be_6876:
    ld d, b                                       ; $6876: $50
    sub b                                         ; $6877: $90
    pop af                                        ; $6878: $f1
    push af                                       ; $6879: $f5
    scf                                           ; $687a: $37
    sub d                                         ; $687b: $92
    inc bc                                        ; $687c: $03
    add h                                         ; $687d: $84
    ld a, $02                                     ; $687e: $3e $02
    ld hl, $0121                                  ; $6880: $21 $21 $01
    ld hl, $02d2                                  ; $6883: $21 $d2 $02
    dec b                                         ; $6886: $05
    xor l                                         ; $6887: $ad
    add h                                         ; $6888: $84
    adc $01                                       ; $6889: $ce $01
    ret nz                                        ; $688b: $c0

    ret nz                                        ; $688c: $c0

    add b                                         ; $688d: $80
    ret nz                                        ; $688e: $c0

    db $fc                                        ; $688f: $fc
    ld [bc], a                                    ; $6890: $02
    add h                                         ; $6891: $84
    add h                                         ; $6892: $84
    dec b                                         ; $6893: $05
    add h                                         ; $6894: $84
    adc [hl]                                      ; $6895: $8e

Call_0be_6896:
    adc [hl]                                      ; $6896: $8e
    sbc a                                         ; $6897: $9f
    cp a                                          ; $6898: $bf
    ld d, h                                       ; $6899: $54
    ld a, [bc]                                    ; $689a: $0a
    ld hl, $03da                                  ; $689b: $21 $da $03
    add d                                         ; $689e: $82
    dec sp                                        ; $689f: $3b
    dec c                                         ; $68a0: $0d
    ld [bc], a                                    ; $68a1: $02
    ld [bc], a                                    ; $68a2: $02
    daa                                           ; $68a3: $27
    xor a                                         ; $68a4: $af
    jp c, Jump_000_0074                           ; $68a5: $da $74 $00

    ld hl, sp+$08                                 ; $68a8: $f8 $08
    rst $38                                       ; $68aa: $ff
    ld a, [c]                                     ; $68ab: $f2
    db $fd                                        ; $68ac: $fd
    add sp, $04                                   ; $68ad: $e8 $04
    nop                                           ; $68af: $00
    ld sp, hl                                     ; $68b0: $f9
    cp $7c                                        ; $68b1: $fe $7c
    ld b, b                                       ; $68b3: $40
    ld a, a                                       ; $68b4: $7f
    call nc, $2f08                                ; $68b5: $d4 $08 $2f
    rst $38                                       ; $68b8: $ff
    sub a                                         ; $68b9: $97
    ld a, a                                       ; $68ba: $7f
    ld c, a                                       ; $68bb: $4f
    cp a                                          ; $68bc: $bf
    ld [bc], a                                    ; $68bd: $02
    and a                                         ; $68be: $a7
    ld e, a                                       ; $68bf: $5f
    ld d, e                                       ; $68c0: $53
    xor a                                         ; $68c1: $af
    cp e                                          ; $68c2: $bb
    ld b, a                                       ; $68c3: $47
    rrca                                          ; $68c4: $0f
    add hl, de                                    ; $68c5: $19
    db $fd                                        ; $68c6: $fd
    nop                                           ; $68c7: $00
    rst $38                                       ; $68c8: $ff
    db $e4                                        ; $68c9: $e4
    ei                                            ; $68ca: $fb
    jp z, $95f7                                   ; $68cb: $ca $f7 $95

    rst $28                                       ; $68ce: $ef
    db $db                                        ; $68cf: $db
    ld [$fbef], sp                                ; $68d0: $08 $ef $fb
    ei                                            ; $68d3: $fb
    db $fd                                        ; $68d4: $fd
    ld bc, $5d00                                  ; $68d5: $01 $00 $5d
    db $fd                                        ; $68d8: $fd
    cp l                                          ; $68d9: $bd
    ret nz                                        ; $68da: $c0

    rlca                                          ; $68db: $07
    ld [$000b], sp                                ; $68dc: $08 $0b $00
    and [hl]                                      ; $68df: $a6
    rst $18                                       ; $68e0: $df
    sub c                                         ; $68e1: $91
    rst $38                                       ; $68e2: $ff
    rst $38                                       ; $68e3: $ff
    rst $18                                       ; $68e4: $df
    nop                                           ; $68e5: $00
    rst $38                                       ; $68e6: $ff
    rst $38                                       ; $68e7: $ff
    rst $08                                       ; $68e8: $cf
    rst $08                                       ; $68e9: $cf
    add b                                         ; $68ea: $80
    add b                                         ; $68eb: $80
    ret                                           ; $68ec: $c9


    db $eb                                        ; $68ed: $eb
    inc b                                         ; $68ee: $04
    add b                                         ; $68ef: $80
    pop bc                                        ; $68f0: $c1
    dec d                                         ; $68f1: $15
    ld [$42af], a                                 ; $68f2: $ea $af $42
    ld hl, $0f0f                                  ; $68f5: $21 $0f $0f
    ld [$ffef], sp                                ; $68f8: $08 $ef $ff
    adc [hl]                                      ; $68fb: $8e
    rst $08                                       ; $68fc: $cf
    ld l, $49                                     ; $68fd: $2e $49
    rst $10                                       ; $68ff: $d7
    rst $38                                       ; $6900: $ff
    xor e                                         ; $6901: $ab
    rlca                                          ; $6902: $07
    rst $38                                       ; $6903: $ff
    xor c                                         ; $6904: $a9
    jp hl                                         ; $6905: $e9


    pop hl                                        ; $6906: $e1
    jp hl                                         ; $6907: $e9


    dec bc                                        ; $6908: $0b
    add hl, bc                                    ; $6909: $09
    ld d, d                                       ; $690a: $52
    ld de, $0001                                  ; $690b: $11 $01 $00
    nop                                           ; $690e: $00
    rst $28                                       ; $690f: $ef
    ldh a, [$fd]                                  ; $6910: $f0 $fd
    or $df                                        ; $6912: $f6 $df
    or $b7                                        ; $6914: $f6 $b7
    cp [hl]                                       ; $6916: $be
    nop                                           ; $6917: $00
    sbc a                                         ; $6918: $9f
    sub [hl]                                      ; $6919: $96
    adc e                                         ; $691a: $8b
    adc a                                         ; $691b: $8f
    set 1, a                                      ; $691c: $cb $cf
    rst $08                                       ; $691e: $cf
    rst $28                                       ; $691f: $ef
    nop                                           ; $6920: $00
    xor c                                         ; $6921: $a9
    ld e, c                                       ; $6922: $59
    ld [hl], h                                    ; $6923: $74
    db $ec                                        ; $6924: $ec
    cp d                                          ; $6925: $ba
    or $a7                                        ; $6926: $f6 $a7
    ld a, e                                       ; $6928: $7b
    nop                                           ; $6929: $00
    db $ed                                        ; $692a: $ed
    ld e, $05                                     ; $692b: $1e $05
    cp $fe                                        ; $692d: $fe $fe
    rst $38                                       ; $692f: $ff
    rlca                                          ; $6930: $07
    rst $38                                       ; $6931: $ff
    jr nz, jr_0be_6939                            ; $6932: $20 $05

    adc l                                         ; $6934: $8d
    db $10                                        ; $6935: $10
    dec de                                        ; $6936: $1b
    and c                                         ; $6937: $a1
    and c                                         ; $6938: $a1

jr_0be_6939:
    pop bc                                        ; $6939: $c1
    ld b, c                                       ; $693a: $41
    ld hl, $5ac7                                  ; $693b: $21 $c7 $5a
    ld bc, $00c5                                  ; $693e: $01 $c5 $00
    adc [hl]                                      ; $6941: $8e
    add h                                         ; $6942: $84
    adc [hl]                                      ; $6943: $8e
    call z, Call_000_3413                         ; $6944: $cc $13 $34
    inc de                                        ; $6947: $13
    ld e, $11                                     ; $6948: $1e $11
    add b                                         ; $694a: $80
    ld [hl], e                                    ; $694b: $73
    rrca                                          ; $694c: $0f
    jr nz, jr_0be_696f                            ; $694d: $20 $20

    jr nz, jr_0be_69c1                            ; $694f: $20 $70

    ld [hl], b                                    ; $6951: $70
    ld sp, hl                                     ; $6952: $f9
    db $fd                                        ; $6953: $fd
    nop                                           ; $6954: $00
    ld a, b                                       ; $6955: $78
    ld a, a                                       ; $6956: $7f
    ld a, h                                       ; $6957: $7c
    ld a, a                                       ; $6958: $7f
    ld a, [hl]                                    ; $6959: $7e
    ld a, a                                       ; $695a: $7f
    ld a, $3f                                     ; $695b: $3e $3f
    nop                                           ; $695d: $00
    ccf                                           ; $695e: $3f
    ccf                                           ; $695f: $3f
    dec d                                         ; $6960: $15
    rra                                           ; $6961: $1f
    inc e                                         ; $6962: $1c
    dec de                                        ; $6963: $1b
    cpl                                           ; $6964: $2f
    ld l, a                                       ; $6965: $6f
    nop                                           ; $6966: $00
    push de                                       ; $6967: $d5
    dec hl                                        ; $6968: $2b
    ld a, d                                       ; $6969: $7a
    add l                                         ; $696a: $85
    ld a, l                                       ; $696b: $7d
    add d                                         ; $696c: $82
    ld a, $c1                                     ; $696d: $3e $c1

jr_0be_696f:
    nop                                           ; $696f: $00
    rra                                           ; $6970: $1f
    ldh [$df], a                                  ; $6971: $e0 $df
    ldh [$ef], a                                  ; $6973: $e0 $ef
    ldh a, [$f0]                                  ; $6975: $f0 $f0
    rst $38                                       ; $6977: $ff
    nop                                           ; $6978: $00
    add e                                         ; $6979: $83
    rst $38                                       ; $697a: $ff
    db $d3                                        ; $697b: $d3
    rst $28                                       ; $697c: $ef
    ld h, c                                       ; $697d: $61
    rst $38                                       ; $697e: $ff
    cp c                                          ; $697f: $b9
    ld a, a                                       ; $6980: $7f
    nop                                           ; $6981: $00
    ld a, h                                       ; $6982: $7c
    cp a                                          ; $6983: $bf
    db $dd                                        ; $6984: $dd
    ccf                                           ; $6985: $3f
    rst $18                                       ; $6986: $df
    ccf                                           ; $6987: $3f
    ld h, a                                       ; $6988: $67
    sbc a                                         ; $6989: $9f
    reti                                          ; $698a: $d9


    adc $08                                       ; $698b: $ce $08
    call c, $fd09                                 ; $698d: $dc $09 $fd
    sub d                                         ; $6990: $92
    dec b                                         ; $6991: $05
    ld b, $08                                     ; $6992: $06 $08
    pop bc                                        ; $6994: $c1
    pop bc                                        ; $6995: $c1
    jr z, jr_0be_699c                             ; $6996: $28 $04

    nop                                           ; $6998: $00
    adc b                                         ; $6999: $88
    adc b                                         ; $699a: $88
    adc b                                         ; $699b: $88

jr_0be_699c:
    sbc h                                         ; $699c: $9c
    sbc h                                         ; $699d: $9c
    adc b                                         ; $699e: $88
    sbc h                                         ; $699f: $9c
    adc h                                         ; $69a0: $8c
    ld [bc], a                                    ; $69a1: $02
    sbc h                                         ; $69a2: $9c
    add b                                         ; $69a3: $80
    adc h                                         ; $69a4: $8c
    rst $08                                       ; $69a5: $cf
    rst $08                                       ; $69a6: $cf
    rlca                                          ; $69a7: $07
    ld bc, $0b20                                  ; $69a8: $01 $20 $0b
    add b                                         ; $69ab: $80
    ld bc, $d710                                  ; $69ac: $01 $10 $d7
    rst $38                                       ; $69af: $ff
    xor d                                         ; $69b0: $aa
    rst $10                                       ; $69b1: $d7
    dec b                                         ; $69b2: $05
    ei                                            ; $69b3: $fb
    xor b                                         ; $69b4: $a8
    nop                                           ; $69b5: $00
    rst $10                                       ; $69b6: $d7
    sub [hl]                                      ; $69b7: $96
    jp hl                                         ; $69b8: $e9


    adc [hl]                                      ; $69b9: $8e
    pop af                                        ; $69ba: $f1
    rst $00                                       ; $69bb: $c7
    ld hl, sp-$19                                 ; $69bc: $f8 $e7
    ld b, b                                       ; $69be: $40
    ld hl, sp+$22                                 ; $69bf: $f8 $22

jr_0be_69c1:
    dec c                                         ; $69c1: $0d
    ld sp, hl                                     ; $69c2: $f9
    cp $f2                                        ; $69c3: $fe $f2
    db $fd                                        ; $69c5: $fd
    ld h, l                                       ; $69c6: $65
    ei                                            ; $69c7: $fb
    nop                                           ; $69c8: $00
    and b                                         ; $69c9: $a0
    ld a, a                                       ; $69ca: $7f
    ld d, h                                       ; $69cb: $54
    cp e                                          ; $69cc: $bb
    cp b                                          ; $69cd: $b8
    ld e, a                                       ; $69ce: $5f
    db $fd                                        ; $69cf: $fd
    db $fd                                        ; $69d0: $fd
    ld d, b                                       ; $69d1: $50
    xor l                                         ; $69d2: $ad
    ld e, $01                                     ; $69d3: $1e $01
    ld a, l                                       ; $69d5: $7d
    ld e, $21                                     ; $69d6: $1e $21
    rst $38                                       ; $69d8: $ff
    rst $38                                       ; $69d9: $ff
    ld a, [bc]                                    ; $69da: $0a
    rrca                                          ; $69db: $0f
    jr nz, jr_0be_6a33                            ; $69dc: $20 $55

    cp d                                          ; $69de: $ba
    pop af                                        ; $69df: $f1
    inc b                                         ; $69e0: $04
    rst $38                                       ; $69e1: $ff
    cp a                                          ; $69e2: $bf
    cp a                                          ; $69e3: $bf
    adc l                                         ; $69e4: $8d
    adc l                                         ; $69e5: $8d
    ld [bc], a                                    ; $69e6: $02
    add c                                         ; $69e7: $81
    adc l                                         ; $69e8: $8d
    add c                                         ; $69e9: $81
    adc c                                         ; $69ea: $89
    or d                                          ; $69eb: $b2
    rst $38                                       ; $69ec: $ff
    ld h, e                                       ; $69ed: $63
    ld bc, $80bf                                  ; $69ee: $01 $bf $80
    ld e, b                                       ; $69f1: $58
    dec c                                         ; $69f2: $0d

jr_0be_69f3:
    rst $30                                       ; $69f3: $f7
    rst $38                                       ; $69f4: $ff
    rst $00                                       ; $69f5: $c7
    rst $38                                       ; $69f6: $ff
    jp $e5ff                                      ; $69f7: $c3 $ff $e5


    jr jr_0be_69f3                                ; $69fa: $18 $f7

    db $fd                                        ; $69fc: $fd
    db $fd                                        ; $69fd: $fd
    add hl, de                                    ; $69fe: $19
    ld [bc], a                                    ; $69ff: $02
    ld l, b                                       ; $6a00: $68
    ld [de], a                                    ; $6a01: $12
    db $fd                                        ; $6a02: $fd
    db $fd                                        ; $6a03: $fd
    rst $10                                       ; $6a04: $d7
    add b                                         ; $6a05: $80
    ld [hl], c                                    ; $6a06: $71
    dec b                                         ; $6a07: $05

Jump_0be_6a08:
    sbc b                                         ; $6a08: $98
    cp b                                          ; $6a09: $b8
    adc h                                         ; $6a0a: $8c
    sbc h                                         ; $6a0b: $9c
    cp a                                          ; $6a0c: $bf
    cp [hl]                                       ; $6a0d: $be
    rst $20                                       ; $6a0e: $e7
    ld bc, $f9dd                                  ; $6a0f: $01 $dd $f9
    and $bf                                       ; $6a12: $e6 $bf
    cp e                                          ; $6a14: $bb
    cp a                                          ; $6a15: $bf
    xor b                                         ; $6a16: $a8
    ld h, d                                       ; $6a17: $62
    dec b                                         ; $6a18: $05
    nop                                           ; $6a19: $00
    ld b, l                                       ; $6a1a: $45
    ld b, l                                       ; $6a1b: $45
    push hl                                       ; $6a1c: $e5
    ld bc, $0541                                  ; $6a1d: $01 $41 $05
    daa                                           ; $6a20: $27
    add c                                         ; $6a21: $81
    inc b                                         ; $6a22: $04
    and e                                         ; $6a23: $a3
    jp hl                                         ; $6a24: $e9


    ld l, c                                       ; $6a25: $69
    cp c                                          ; $6a26: $b9
    reti                                          ; $6a27: $d9


    push hl                                       ; $6a28: $e5
    nop                                           ; $6a29: $00
    ld [hl], b                                    ; $6a2a: $70
    jr nz, jr_0be_6a6d                            ; $6a2b: $20 $40

    ld [hl], b                                    ; $6a2d: $70
    add h                                         ; $6a2e: $84
    inc de                                        ; $6a2f: $13
    ld [bc], a                                    ; $6a30: $02
    inc bc                                        ; $6a31: $03
    ld [bc], a                                    ; $6a32: $02

jr_0be_6a33:
    dec h                                         ; $6a33: $25
    xor l                                         ; $6a34: $ad
    jr @+$05                                      ; $6a35: $18 $03

    rra                                           ; $6a37: $1f
    ld de, $621f                                  ; $6a38: $11 $1f $62
    ld a, a                                       ; $6a3b: $7f
    adc l                                         ; $6a3c: $8d
    sbc [hl]                                      ; $6a3d: $9e
    ld [bc], a                                    ; $6a3e: $02
    ld b, l                                       ; $6a3f: $45
    inc bc                                        ; $6a40: $03
    ld [$f8ab], sp                                ; $6a41: $08 $ab $f8
    ld hl, sp-$02                                 ; $6a44: $f8 $fe
    inc [hl]                                      ; $6a46: $34
    ld [bc], a                                    ; $6a47: $02
    cp $fe                                        ; $6a48: $fe $fe
    ldh a, [rP1]                                  ; $6a4a: $f0 $00
    ldh a, [$c0]                                  ; $6a4c: $f0 $c0
    ret nz                                        ; $6a4e: $c0

    add c                                         ; $6a4f: $81

jr_0be_6a50:
    add c                                         ; $6a50: $81
    ld bc, $8001                                  ; $6a51: $01 $01 $80
    ld [hl+], a                                   ; $6a54: $22
    ret nz                                        ; $6a55: $c0

    ld bc, $0572                                  ; $6a56: $01 $72 $05
    ld [hl], b                                    ; $6a59: $70
    ld a, a                                       ; $6a5a: $7f
    dec l                                         ; $6a5b: $2d
    add sp, $04                                   ; $6a5c: $e8 $04
    rst $38                                       ; $6a5e: $ff
    inc d                                         ; $6a5f: $14
    ld d, a                                       ; $6a60: $57
    xor [hl]                                      ; $6a61: $ae
    ld d, l                                       ; $6a62: $55
    jp z, $7d09                                   ; $6a63: $ca $09 $7d

    ld [c], a                                     ; $6a66: $e2
    ld [hl+], a                                   ; $6a67: $22
    db $fd                                        ; $6a68: $fd
    db $fd                                        ; $6a69: $fd
    jr nz, @-$1d                                  ; $6a6a: $20 $e1

    pop hl                                        ; $6a6c: $e1

jr_0be_6a6d:
    xor $10                                       ; $6a6d: $ee $10
    add b                                         ; $6a6f: $80
    pop bc                                        ; $6a70: $c1
    pop bc                                        ; $6a71: $c1
    ret                                           ; $6a72: $c9


    db $eb                                        ; $6a73: $eb
    call nz, $00f8                                ; $6a74: $c4 $f8 $00
    ld a, [$8800]                                 ; $6a77: $fa $00 $88
    adc b                                         ; $6a7a: $88
    ld bc, $0528                                  ; $6a7b: $01 $28 $05
    ret nz                                        ; $6a7e: $c0

    ret nz                                        ; $6a7f: $c0

    nop                                           ; $6a80: $00
    jp hl                                         ; $6a81: $e9


    ei                                            ; $6a82: $fb
    ret nz                                        ; $6a83: $c0

    ret nz                                        ; $6a84: $c0

    add e                                         ; $6a85: $83
    jp $0704                                      ; $6a86: $c3 $04 $07


    nop                                           ; $6a89: $00
    rrca                                          ; $6a8a: $0f
    dec b                                         ; $6a8b: $05
    di                                            ; $6a8c: $f3
    db $fc                                        ; $6a8d: $fc
    rst $18                                       ; $6a8e: $df
    db $fc                                        ; $6a8f: $fc
    call Call_000_10be                            ; $6a90: $cd $be $10
    ld a, [hl]                                    ; $6a93: $7e
    ld a, a                                       ; $6a94: $7f

Call_0be_6a95:
    sub a                                         ; $6a95: $97
    ld d, $02                                     ; $6a96: $16 $02
    ld e, [hl]                                    ; $6a98: $5e
    cp $f8                                        ; $6a99: $fe $f8
    ld a, b                                       ; $6a9b: $78
    db $10                                        ; $6a9c: $10
    rst $38                                       ; $6a9d: $ff
    rrca                                          ; $6a9e: $0f
    rst $30                                       ; $6a9f: $f7
    ld [bc], a                                    ; $6aa0: $02
    nop                                           ; $6aa1: $00
    add hl, de                                    ; $6aa2: $19
    rst $20                                       ; $6aa3: $e7
    rst $28                                       ; $6aa4: $ef
    rst $38                                       ; $6aa5: $ff
    ld bc, $dfdc                                  ; $6aa6: $01 $dc $df
    dec bc                                        ; $6aa9: $0b
    rrca                                          ; $6aaa: $0f
    ccf                                           ; $6aab: $3f
    dec [hl]                                      ; $6aac: $35
    ld a, l                                       ; $6aad: $7d
    jr c, jr_0be_6ad1                             ; $6aae: $38 $21

    ld h, b                                       ; $6ab0: $60
    dec a                                         ; $6ab1: $3d
    xor h                                         ; $6ab2: $ac
    ld [bc], a                                    ; $6ab3: $02
    jp nz, $8108                                  ; $6ab4: $c2 $08 $81

    and c                                         ; $6ab7: $a1
    and c                                         ; $6ab8: $a1
    and c                                         ; $6ab9: $a1
    ldh a, [rNR10]                                ; $6aba: $f0 $10
    ldh a, [$80]                                  ; $6abc: $f0 $80
    and b                                         ; $6abe: $a0
    ld l, [hl]                                    ; $6abf: $6e
    dec c                                         ; $6ac0: $0d
    add h                                         ; $6ac1: $84
    add h                                         ; $6ac2: $84
    add b                                         ; $6ac3: $80
    adc h                                         ; $6ac4: $8c
    jr nz, jr_0be_6a50                            ; $6ac5: $20 $89

    rst $30                                       ; $6ac7: $f7
    db $e4                                        ; $6ac8: $e4
    nop                                           ; $6ac9: $00
    ei                                            ; $6aca: $fb
    db $ec                                        ; $6acb: $ec
    di                                            ; $6acc: $f3
    ld h, [hl]                                    ; $6acd: $66
    ld a, c                                       ; $6ace: $79
    nop                                           ; $6acf: $00
    ld a, a                                       ; $6ad0: $7f

jr_0be_6ad1:
    ld a, b                                       ; $6ad1: $78
    ld l, e                                       ; $6ad2: $6b
    ld e, h                                       ; $6ad3: $5c
    ld c, [hl]                                    ; $6ad4: $4e
    ld a, a                                       ; $6ad5: $7f
    and l                                         ; $6ad6: $a5
    rst $18                                       ; $6ad7: $df
    nop                                           ; $6ad8: $00
    adc a                                         ; $6ad9: $8f
    rst $38                                       ; $6ada: $ff
    rst $18                                       ; $6adb: $df
    cp a                                          ; $6adc: $bf
    sbc a                                         ; $6add: $9f
    rst $38                                       ; $6ade: $ff
    ld e, l                                       ; $6adf: $5d
    rst $38                                       ; $6ae0: $ff
    nop                                           ; $6ae1: $00
    rst $38                                       ; $6ae2: $ff
    ld a, a                                       ; $6ae3: $7f
    db $fd                                        ; $6ae4: $fd
    ld a, a                                       ; $6ae5: $7f
    rra                                           ; $6ae6: $1f
    rst $38                                       ; $6ae7: $ff
    sub l                                         ; $6ae8: $95
    sbc a                                         ; $6ae9: $9f
    db $10                                        ; $6aea: $10
    reti                                          ; $6aeb: $d9


    rst $18                                       ; $6aec: $df
    and a                                         ; $6aed: $a7
    jr nz, jr_0be_6af1                            ; $6aee: $20 $01

    add a                                         ; $6af0: $87

jr_0be_6af1:
    sub a                                         ; $6af1: $97
    sub a                                         ; $6af2: $97
    cp a                                          ; $6af3: $bf
    nop                                           ; $6af4: $00
    add a                                         ; $6af5: $87
    sub [hl]                                      ; $6af6: $96
    add [hl]                                      ; $6af7: $86
    rst $00                                       ; $6af8: $c7
    sbc c                                         ; $6af9: $99
    jp hl                                         ; $6afa: $e9


    inc sp                                        ; $6afb: $33
    ei                                            ; $6afc: $fb
    ret nz                                        ; $6afd: $c0

    adc [hl]                                      ; $6afe: $8e
    ld bc, $03fb                                  ; $6aff: $01 $fb $03
    ld a, a                                       ; $6b02: $7f
    rst $38                                       ; $6b03: $ff
    dec sp                                        ; $6b04: $3b
    rst $38                                       ; $6b05: $ff
    xor a                                         ; $6b06: $af
    ld a, a                                       ; $6b07: $7f
    ret c                                         ; $6b08: $d8

    ldh a, [$59]                                  ; $6b09: $f0 $59
    ld c, d                                       ; $6b0b: $4a
    ld b, $02                                     ; $6b0c: $06 $02
    ldh a, [rOBP1]                                ; $6b0e: $f0 $49
    xor [hl]                                      ; $6b10: $ae
    dec c                                         ; $6b11: $0d
    add b                                         ; $6b12: $80
    add b                                         ; $6b13: $80
    nop                                           ; $6b14: $00
    ld b, b                                       ; $6b15: $40
    add b                                         ; $6b16: $80
    ld e, [hl]                                    ; $6b17: $5e
    ld c, $08                                     ; $6b18: $0e $08
    ld [$1c1c], sp                                ; $6b1a: $08 $1c $1c
    rst $38                                       ; $6b1d: $ff
    rst $38                                       ; $6b1e: $ff
    and l                                         ; $6b1f: $a5
    add b                                         ; $6b20: $80
    inc a                                         ; $6b21: $3c
    cp $ca                                        ; $6b22: $fe $ca
    inc de                                        ; $6b24: $13
    nop                                           ; $6b25: $00
    nop                                           ; $6b26: $00
    ldh [rNR33], a                                ; $6b27: $e0 $1d
    nop                                           ; $6b29: $00
    xor h                                         ; $6b2a: $ac
    inc b                                         ; $6b2b: $04
    ld c, d                                       ; $6b2c: $4a
    nop                                           ; $6b2d: $00
    ldh a, [rTMA]                                 ; $6b2e: $f0 $06
    ld bc, $8a21                                  ; $6b30: $01 $21 $8a
    dec de                                        ; $6b33: $1b
    db $fd                                        ; $6b34: $fd
    ld e, h                                       ; $6b35: $5c
    inc bc                                        ; $6b36: $03
    ccf                                           ; $6b37: $3f
    add b                                         ; $6b38: $80
    or e                                          ; $6b39: $b3
    nop                                           ; $6b3a: $00
    sbc h                                         ; $6b3b: $9c
    sbc h                                         ; $6b3c: $9c
    cp [hl]                                       ; $6b3d: $be
    cp [hl]                                       ; $6b3e: $be
    adc b                                         ; $6b3f: $88
    sbc h                                         ; $6b40: $9c
    adc b                                         ; $6b41: $88
    ld h, d                                       ; $6b42: $62
    adc b                                         ; $6b43: $88
    ld [$c019], sp                                ; $6b44: $08 $19 $c0
    ld b, $05                                     ; $6b47: $06 $05
    sbc a                                         ; $6b49: $9f
    cp a                                          ; $6b4a: $bf
    xor e                                         ; $6b4b: $ab
    ld b, $0c                                     ; $6b4c: $06 $0c
    ret nz                                        ; $6b4e: $c0

    sub [hl]                                      ; $6b4f: $96
    dec c                                         ; $6b50: $0d
    ld [hl], b                                    ; $6b51: $70
    ld [$30f0], sp                                ; $6b52: $08 $f0 $30
    adc b                                         ; $6b55: $88
    adc h                                         ; $6b56: $8c
    inc c                                         ; $6b57: $0c
    inc c                                         ; $6b58: $0c
    jr z, jr_0be_6b69                             ; $6b59: $28 $0e

    rrca                                          ; $6b5b: $0f
    ld bc, $cf08                                  ; $6b5c: $01 $08 $cf
    adc $02                                       ; $6b5f: $ce $02
    dec hl                                        ; $6b61: $2b

jr_0be_6b62:
    dec [hl]                                      ; $6b62: $35
    rra                                           ; $6b63: $1f
    add sp, -$08                                  ; $6b64: $e8 $f8
    ld b, $4e                                     ; $6b66: $06 $4e
    nop                                           ; $6b68: $00

jr_0be_6b69:
    ld c, h                                       ; $6b69: $4c
    ld b, $e0                                     ; $6b6a: $06 $e0
    ld l, $05                                     ; $6b6c: $2e $05
    ld [hl], c                                    ; $6b6e: $71
    pop af                                        ; $6b6f: $f1
    pop hl                                        ; $6b70: $e1
    and h                                         ; $6b71: $a4
    ld d, h                                       ; $6b72: $54
    inc b                                         ; $6b73: $04
    ld sp, hl                                     ; $6b74: $f9
    call c, $7d03                                 ; $6b75: $dc $03 $7d
    rst $38                                       ; $6b78: $ff
    ld c, [hl]                                    ; $6b79: $4e
    ld c, $80                                     ; $6b7a: $0e $80
    adc b                                         ; $6b7c: $88
    nop                                           ; $6b7d: $00
    add c                                         ; $6b7e: $81
    and c                                         ; $6b7f: $a1
    and e                                         ; $6b80: $a3
    and d                                         ; $6b81: $a2
    di                                            ; $6b82: $f3
    di                                            ; $6b83: $f3
    add b                                         ; $6b84: $80
    and c                                         ; $6b85: $a1
    add b                                         ; $6b86: $80
    ld [hl], b                                    ; $6b87: $70
    ld c, $ff                                     ; $6b88: $0e $ff
    rst $38                                       ; $6b8a: $ff
    adc [hl]                                      ; $6b8b: $8e
    cp $d8                                        ; $6b8c: $fe $d8
    ld hl, sp+$51                                 ; $6b8e: $f8 $51
    add hl, bc                                    ; $6b90: $09
    or c                                          ; $6b91: $b1
    ldh [$e8], a                                  ; $6b92: $e0 $e8
    ld [$0045], sp                                ; $6b94: $08 $45 $00
    ld c, $0f                                     ; $6b97: $0e $0f
    jr z, jr_0be_6b9e                             ; $6b99: $28 $03

    and b                                         ; $6b9b: $a0
    ld d, e                                       ; $6b9c: $53
    rlca                                          ; $6b9d: $07

jr_0be_6b9e:
    add hl, hl                                    ; $6b9e: $29
    cpl                                           ; $6b9f: $2f
    nop                                           ; $6ba0: $00
    add hl, sp                                    ; $6ba1: $39
    dec a                                         ; $6ba2: $3d
    dec e                                         ; $6ba3: $1d
    rra                                           ; $6ba4: $1f
    rrca                                          ; $6ba5: $0f
    add b                                         ; $6ba6: $80
    stop                                          ; $6ba7: $10 $00
    jp nz, $83c3                                  ; $6ba9: $c2 $c3 $83

    sub e                                         ; $6bac: $93
    sub e                                         ; $6bad: $93
    cp e                                          ; $6bae: $bb
    add l                                         ; $6baf: $85
    inc b                                         ; $6bb0: $04
    sub a                                         ; $6bb1: $97
    add a                                         ; $6bb2: $87
    add l                                         ; $6bb3: $85
    add e                                         ; $6bb4: $83
    jp Jump_000_0f90                              ; $6bb5: $c3 $90 $0f


    rst $00                                       ; $6bb8: $c7
    ccf                                           ; $6bb9: $3f
    nop                                           ; $6bba: $00
    ld a, a                                       ; $6bbb: $7f
    sbc a                                         ; $6bbc: $9f
    sbc a                                         ; $6bbd: $9f
    rst $28                                       ; $6bbe: $ef
    rst $30                                       ; $6bbf: $f7

jr_0be_6bc0:
    rst $38                                       ; $6bc0: $ff
    cp a                                          ; $6bc1: $bf
    xor a                                         ; $6bc2: $af
    jr nc, jr_0be_6b62                            ; $6bc3: $30 $9d

    sbc l                                         ; $6bc5: $9d
    sub b                                         ; $6bc6: $90
    ld [$0782], sp                                ; $6bc7: $08 $82 $07
    add b                                         ; $6bca: $80
    jp nz, $c482                                  ; $6bcb: $c2 $82 $c4

    nop                                           ; $6bce: $00
    add h                                         ; $6bcf: $84
    call z, $dc88                                 ; $6bd0: $cc $88 $dc
    sub b                                         ; $6bd3: $90
    db $ec                                        ; $6bd4: $ec
    and b                                         ; $6bd5: $a0
    call z, $b280                                 ; $6bd6: $cc $80 $b2
    rlca                                          ; $6bd9: $07
    rst $28                                       ; $6bda: $ef
    db $10                                        ; $6bdb: $10
    call nz, $c818                                ; $6bdc: $c4 $18 $c8
    inc e                                         ; $6bdf: $1c
    call z, Call_000_1e00                         ; $6be0: $cc $00 $1e
    add $0f                                       ; $6be3: $c6 $0f
    add $0f                                       ; $6be5: $c6 $0f
    add e                                         ; $6be7: $83
    rlca                                          ; $6be8: $07
    rst $38                                       ; $6be9: $ff
    nop                                           ; $6bea: $00
    rst $38                                       ; $6beb: $ff
    ld a, [$0507]                                 ; $6bec: $fa $07 $05
    rrca                                          ; $6bef: $0f
    inc bc                                        ; $6bf0: $03
    add a                                         ; $6bf1: $87
    ld a, [bc]                                    ; $6bf2: $0a
    ld [bc], a                                    ; $6bf3: $02
    rst $08                                       ; $6bf4: $cf
    ld e, e                                       ; $6bf5: $5b
    or $6b                                        ; $6bf6: $f6 $6b
    or $33                                        ; $6bf8: $f6 $33
    push af                                       ; $6bfa: $f5
    ld [$0000], sp                                ; $6bfb: $08 $00 $00
    ld b, b                                       ; $6bfe: $40
    sbc h                                         ; $6bff: $9c
    ld e, b                                       ; $6c00: $58
    cp h                                          ; $6c01: $bc
    xor b                                         ; $6c02: $a8
    db $fc                                        ; $6c03: $fc
    cp b                                          ; $6c04: $b8
    db $ec                                        ; $6c05: $ec
    jr jr_0be_6bc0                                ; $6c06: $18 $b8

    db $ec                                        ; $6c08: $ec
    xor b                                         ; $6c09: $a8
    ld b, e                                       ; $6c0a: $43
    dec c                                         ; $6c0b: $0d
    add sp, $03                                   ; $6c0c: $e8 $03
    inc b                                         ; $6c0e: $04
    inc b                                         ; $6c0f: $04
    inc c                                         ; $6c10: $0c
    ld bc, $1c08                                  ; $6c11: $01 $08 $1c
    db $10                                        ; $6c14: $10
    inc l                                         ; $6c15: $2c
    jr nz, jr_0be_6c64                            ; $6c16: $20 $4c

    ld b, b                                       ; $6c18: $40
    ld d, e                                       ; $6c19: $53
    dec c                                         ; $6c1a: $0d
    inc b                                         ; $6c1b: $04
    rst $08                                       ; $6c1c: $cf
    ld bc, $01cb                                  ; $6c1d: $01 $cb $01
    jp $1002                                      ; $6c20: $c3 $02 $10


    add e                                         ; $6c23: $83
    ld bc, $cc2c                                  ; $6c24: $01 $2c $cc
    add b                                         ; $6c27: $80
    ld [bc], a                                    ; $6c28: $02
    ld [$23c8], sp                                ; $6c29: $08 $c8 $23
    inc b                                         ; $6c2c: $04
    ld [bc], a                                    ; $6c2d: $02
    jr jr_0be_6c33                                ; $6c2e: $18 $03

    rlca                                          ; $6c30: $07
    nop                                           ; $6c31: $00
    ld [bc], a                                    ; $6c32: $02

jr_0be_6c33:
    rlca                                          ; $6c33: $07
    inc bc                                        ; $6c34: $03
    rlca                                          ; $6c35: $07
    dec b                                         ; $6c36: $05
    rlca                                          ; $6c37: $07
    dec c                                         ; $6c38: $0d
    dec bc                                        ; $6c39: $0b
    nop                                           ; $6c3a: $00
    dec e                                         ; $6c3b: $1d
    inc de                                        ; $6c3c: $13
    dec l                                         ; $6c3d: $2d
    inc hl                                        ; $6c3e: $23
    ld c, l                                       ; $6c3f: $4d
    ld b, e                                       ; $6c40: $43
    or d                                          ; $6c41: $b2
    rst $38                                       ; $6c42: $ff
    ld b, h                                       ; $6c43: $44
    or h                                          ; $6c44: $b4
    xor c                                         ; $6c45: $a9
    ld bc, $f5ff                                  ; $6c46: $01 $ff $f5
    ld a, c                                       ; $6c49: $79
    ld bc, $7305                                  ; $6c4a: $01 $05 $73
    cp $00                                        ; $6c4d: $fe $00
    db $ed                                        ; $6c4f: $ed
    halt                                          ; $6c50: $76
    ret                                           ; $6c51: $c9


    rst $38                                       ; $6c52: $ff
    di                                            ; $6c53: $f3
    rst $18                                       ; $6c54: $df
    sub l                                         ; $6c55: $95
    rst $38                                       ; $6c56: $ff
    nop                                           ; $6c57: $00
    or $bf                                        ; $6c58: $f6 $bf
    ld a, $eb                                     ; $6c5a: $3e $eb
    call c, Call_0be_6876                         ; $6c5c: $dc $76 $68
    db $fd                                        ; $6c5f: $fd
    ld [$dffd], sp                                ; $6c60: $08 $fd $df
    ld c, h                                       ; $6c63: $4c

jr_0be_6c64:
    add b                                         ; $6c64: $80
    ld [bc], a                                    ; $6c65: $02
    ld [$00c8], sp                                ; $6c66: $08 $c8 $00
    ret nz                                        ; $6c69: $c0

    inc h                                         ; $6c6a: $24
    nop                                           ; $6c6b: $00
    ld b, b                                       ; $6c6c: $40
    ld e, [hl]                                    ; $6c6d: $5e
    rlca                                          ; $6c6e: $07
    ld b, b                                       ; $6c6f: $40
    ldh [rTIMA], a                                ; $6c70: $e0 $05
    ld c, $03                                     ; $6c72: $0e $03
    ld bc, $9380                                  ; $6c74: $01 $80 $93
    nop                                           ; $6c77: $00
    add hl, bc                                    ; $6c78: $09
    rra                                           ; $6c79: $1f
    ld de, $212f                                  ; $6c7a: $11 $2f $21
    ld c, a                                       ; $6c7d: $4f
    ld b, c                                       ; $6c7e: $41
    ld [$80c0], sp                                ; $6c7f: $08 $c0 $80
    pop bc                                        ; $6c82: $c1
    add c                                         ; $6c83: $81
    ret nz                                        ; $6c84: $c0

    ld c, b                                       ; $6c85: $48
    call $cd83                                    ; $6c86: $cd $83 $cd
    ld [bc], a                                    ; $6c89: $02
    inc bc                                        ; $6c8a: $03
    call $cb03                                    ; $6c8b: $cd $03 $cb
    rlca                                          ; $6c8e: $07
    jp $0002                                      ; $6c8f: $c3 $02 $00


    rst $00                                       ; $6c92: $c7
    nop                                           ; $6c93: $00
    rrca                                          ; $6c94: $0f
    add a                                         ; $6c95: $87
    rrca                                          ; $6c96: $0f
    ld e, h                                       ; $6c97: $5c
    rst $20                                       ; $6c98: $e7
    push af                                       ; $6c99: $f5
    ld c, a                                       ; $6c9a: $4f
    db $f4                                        ; $6c9b: $f4
    nop                                           ; $6c9c: $00
    ld c, a                                       ; $6c9d: $4f
    dec hl                                        ; $6c9e: $2b
    sbc $6e                                       ; $6c9f: $de $6e
    sbc a                                         ; $6ca1: $9f
    ld d, l                                       ; $6ca2: $55
    cp a                                          ; $6ca3: $bf
    ld l, a                                       ; $6ca4: $6f
    nop                                           ; $6ca5: $00
    sbc [hl]                                      ; $6ca6: $9e
    ld e, d                                       ; $6ca7: $5a
    cp l                                          ; $6ca8: $bd
    sbc $bb                                       ; $6ca9: $de $bb
    xor l                                         ; $6cab: $ad
    ld [hl], a                                    ; $6cac: $77
    sbc d                                         ; $6cad: $9a
    nop                                           ; $6cae: $00
    ld a, a                                       ; $6caf: $7f
    ld [hl], h                                    ; $6cb0: $74
    rst $28                                       ; $6cb1: $ef
    and [hl]                                      ; $6cb2: $a6
    rst $18                                       ; $6cb3: $df
    sbc a                                         ; $6cb4: $9f
    ld a, e                                       ; $6cb5: $7b
    inc hl                                        ; $6cb6: $23
    db $10                                        ; $6cb7: $10
    rst $38                                       ; $6cb8: $ff
    rst $08                                       ; $6cb9: $cf
    cp $c2                                        ; $6cba: $fe $c2
    ld [bc], a                                    ; $6cbc: $02
    add c                                         ; $6cbd: $81
    ld [bc], a                                    ; $6cbe: $02
    ld [c], a                                     ; $6cbf: $e2
    call nz, $e400                                ; $6cc0: $c4 $00 $e4
    adc h                                         ; $6cc3: $8c
    ret z                                         ; $6cc4: $c8

    inc e                                         ; $6cc5: $1c
    sub b                                         ; $6cc6: $90
    inc l                                         ; $6cc7: $2c
    ldh [$cc], a                                  ; $6cc8: $e0 $cc
    inc c                                         ; $6cca: $0c
    ldh [$cf], a                                  ; $6ccb: $e0 $cf
    add c                                         ; $6ccd: $81
    rst $08                                       ; $6cce: $cf
    ret nz                                        ; $6ccf: $c0

    ld d, b                                       ; $6cd0: $50
    jr nz, jr_0be_6cdc                            ; $6cd1: $20 $09

    ret                                           ; $6cd3: $c9


    adc b                                         ; $6cd4: $88
    inc bc                                        ; $6cd5: $03
    reti                                          ; $6cd6: $d9


    sub b                                         ; $6cd7: $90
    ld sp, hl                                     ; $6cd8: $f9
    and b                                         ; $6cd9: $a0
    ret c                                         ; $6cda: $d8

    add b                                         ; $6cdb: $80

jr_0be_6cdc:
    ld [bc], a                                    ; $6cdc: $02
    ld [$0596], sp                                ; $6cdd: $08 $96 $05
    nop                                           ; $6ce0: $00
    ld b, b                                       ; $6ce1: $40
    jr nz, jr_0be_6d58                            ; $6ce2: $20 $74

    jr nc, jr_0be_6d5c                            ; $6ce4: $30 $76

    ld [de], a                                    ; $6ce6: $12
    ccf                                           ; $6ce7: $3f
    add hl, bc                                    ; $6ce8: $09
    inc b                                         ; $6ce9: $04
    rra                                           ; $6cea: $1f
    dec c                                         ; $6ceb: $0d
    rra                                           ; $6cec: $1f
    dec b                                         ; $6ced: $05
    rra                                           ; $6cee: $1f
    rla                                           ; $6cef: $17
    inc bc                                        ; $6cf0: $03
    ld [hl], b                                    ; $6cf1: $70
    scf                                           ; $6cf2: $37
    nop                                           ; $6cf3: $00
    ld a, e                                       ; $6cf4: $7b
    add hl, hl                                    ; $6cf5: $29
    ld a, a                                       ; $6cf6: $7f
    cp e                                          ; $6cf7: $bb
    db $ed                                        ; $6cf8: $ed
    cp c                                          ; $6cf9: $b9
    rst $28                                       ; $6cfa: $ef
    xor l                                         ; $6cfb: $ad
    jr nz, @+$01                                  ; $6cfc: $20 $ff

    adc $13                                       ; $6cfe: $ce $13
    ld [de], a                                    ; $6d00: $12
    ld bc, $0381                                  ; $6d01: $01 $81 $03
    add d                                         ; $6d04: $82
    rlca                                          ; $6d05: $07
    ld [bc], a                                    ; $6d06: $02
    add h                                         ; $6d07: $84
    inc de                                        ; $6d08: $13
    or b                                          ; $6d09: $b0
    inc sp                                        ; $6d0a: $33
    ldh [$73], a                                  ; $6d0b: $e0 $73
    ldh a, [rTMA]                                 ; $6d0d: $f0 $06
    rst $38                                       ; $6d0f: $ff
    cpl                                           ; $6d10: $2f
    ld bc, $0263                                  ; $6d11: $01 $63 $02
    db $10                                        ; $6d14: $10
    ld b, e                                       ; $6d15: $43
    cp d                                          ; $6d16: $ba
    jr jr_0be_6d47                                ; $6d17: $18 $2e

    ld [bc], a                                    ; $6d19: $02
    ld [bc], a                                    ; $6d1a: $02
    ld [$2900], sp                                ; $6d1b: $08 $00 $29
    nop                                           ; $6d1e: $00
    call $babb                                    ; $6d1f: $cd $bb $ba
    rst $10                                       ; $6d22: $d7
    push bc                                       ; $6d23: $c5
    cp $ae                                        ; $6d24: $fe $ae
    db $dd                                        ; $6d26: $dd
    nop                                           ; $6d27: $00
    pop de                                        ; $6d28: $d1
    cp $a9                                        ; $6d29: $fe $a9
    rst $10                                       ; $6d2b: $d7
    db $fd                                        ; $6d2c: $fd
    jp nz, $dfa7                                  ; $6d2d: $c2 $a7 $df

    nop                                           ; $6d30: $00
    ld h, h                                       ; $6d31: $64
    sbc a                                         ; $6d32: $9f
    reti                                          ; $6d33: $d9


    ccf                                           ; $6d34: $3f
    ld [hl], a                                    ; $6d35: $77
    ei                                            ; $6d36: $fb
    or a                                          ; $6d37: $b7
    rst $08                                       ; $6d38: $cf
    inc b                                         ; $6d39: $04
    ld a, [hl-]                                   ; $6d3a: $3a
    db $fd                                        ; $6d3b: $fd
    and a                                         ; $6d3c: $a7
    rst $18                                       ; $6d3d: $df
    ld a, $b0                                     ; $6d3e: $3e $b0
    ld b, $8c                                     ; $6d40: $06 $8c
    ret nz                                        ; $6d42: $c0

    inc de                                        ; $6d43: $13
    adc h                                         ; $6d44: $8c
    ret nz                                        ; $6d45: $c0

    inc c                                         ; $6d46: $0c

jr_0be_6d47:
    ld l, $07                                     ; $6d47: $2e $07
    ret nz                                        ; $6d49: $c0

    ldh a, [rOCPS]                                ; $6d4a: $f0 $6a
    rlca                                          ; $6d4c: $07
    ld [hl], $07                                  ; $6d4d: $36 $07
    ld b, b                                       ; $6d4f: $40
    ret c                                         ; $6d50: $d8

    ld c, d                                       ; $6d51: $4a
    ld hl, $80c1                                  ; $6d52: $21 $c1 $80
    jp $c582                                      ; $6d55: $c3 $82 $c5


jr_0be_6d58:
    add h                                         ; $6d58: $84
    nop                                           ; $6d59: $00
    ret                                           ; $6d5a: $c9


    adc b                                         ; $6d5b: $88

jr_0be_6d5c:
    dec bc                                        ; $6d5c: $0b
    rra                                           ; $6d5d: $1f
    dec sp                                        ; $6d5e: $3b
    cpl                                           ; $6d5f: $2f
    ld a, a                                       ; $6d60: $7f
    ld c, a                                       ; $6d61: $4f
    nop                                           ; $6d62: $00
    cp e                                          ; $6d63: $bb
    adc a                                         ; $6d64: $8f
    ld a, [hl-]                                   ; $6d65: $3a
    rrca                                          ; $6d66: $0f
    ccf                                           ; $6d67: $3f
    ld a, [bc]                                    ; $6d68: $0a
    ccf                                           ; $6d69: $3f
    ld a, [bc]                                    ; $6d6a: $0a
    nop                                           ; $6d6b: $00
    add hl, hl                                    ; $6d6c: $29
    ld e, $fa                                     ; $6d6d: $1e $fa
    rst $18                                       ; $6d6f: $df
    sub e                                         ; $6d70: $93
    db $fd                                        ; $6d71: $fd
    rst $38                                       ; $6d72: $ff
    or [hl]                                       ; $6d73: $b6
    nop                                           ; $6d74: $00
    or l                                          ; $6d75: $b5
    rst $28                                       ; $6d76: $ef
    rst $08                                       ; $6d77: $cf
    ld a, e                                       ; $6d78: $7b
    reti                                          ; $6d79: $d9


    halt                                          ; $6d7a: $76
    bit 6, a                                      ; $6d7b: $cb $77
    nop                                           ; $6d7d: $00
    ld [hl], $ed                                  ; $6d7e: $36 $ed
    or e                                          ; $6d80: $b3
    ldh [$d0], a                                  ; $6d81: $e0 $d0
    ld h, b                                       ; $6d83: $60
    sub b                                         ; $6d84: $90
    ret nz                                        ; $6d85: $c0

    nop                                           ; $6d86: $00
    nop                                           ; $6d87: $00
    or b                                          ; $6d88: $b0
    ret nz                                        ; $6d89: $c0

    ld [hl], b                                    ; $6d8a: $70
    and b                                         ; $6d8b: $a0
    ldh [rLCDC], a                                ; $6d8c: $e0 $40
    ld hl, sp+$20                                 ; $6d8e: $f8 $20
    sub c                                         ; $6d90: $91
    ld sp, hl                                     ; $6d91: $f9
    inc a                                         ; $6d92: $3c
    ld bc, $0f01                                  ; $6d93: $01 $01 $0f
    add hl, bc                                    ; $6d96: $09
    rla                                           ; $6d97: $17
    ld de, $6706                                  ; $6d98: $11 $06 $67
    ld b, c                                       ; $6d9b: $41
    rst $20                                       ; $6d9c: $e7
    add c                                         ; $6d9d: $81
    ld h, a                                       ; $6d9e: $67
    sbc d                                         ; $6d9f: $9a
    nop                                           ; $6da0: $00
    jr nc, jr_0be_6dbc                            ; $6da1: $30 $19

    ret z                                         ; $6da3: $c8

    jr nz, jr_0be_6da7                            ; $6da4: $20 $01

    ret nz                                        ; $6da6: $c0

jr_0be_6da7:
    ld [bc], a                                    ; $6da7: $02
    db $10                                        ; $6da8: $10
    add b                                         ; $6da9: $80
    ld bc, $dffa                                  ; $6daa: $01 $fa $df
    db $e3                                        ; $6dad: $e3
    nop                                           ; $6dae: $00
    call c, $c7f9                                 ; $6daf: $dc $f9 $c7
    db $e3                                        ; $6db2: $e3
    rst $18                                       ; $6db3: $df
    adc e                                         ; $6db4: $8b
    db $fc                                        ; $6db5: $fc
    db $e3                                        ; $6db6: $e3
    nop                                           ; $6db7: $00
    rst $18                                       ; $6db8: $df
    sbc l                                         ; $6db9: $9d
    db $e3                                        ; $6dba: $e3
    rst $28                                       ; $6dbb: $ef

jr_0be_6dbc:
    ret nc                                        ; $6dbc: $d0

    ld l, d                                       ; $6dbd: $6a
    sbc a                                         ; $6dbe: $9f
    ccf                                           ; $6dbf: $3f
    and b                                         ; $6dc0: $a0
    ld a, [hl+]                                   ; $6dc1: $2a
    rlca                                          ; $6dc2: $07
    db $fc                                        ; $6dc3: $fc
    ld a, [hl+]                                   ; $6dc4: $2a
    inc bc                                        ; $6dc5: $03
    ld [hl-], a                                   ; $6dc6: $32
    rst $08                                       ; $6dc7: $cf
    db $fd                                        ; $6dc8: $fd
    rst $38                                       ; $6dc9: $ff
    halt                                          ; $6dca: $76
    nop                                           ; $6dcb: $00
    rst $38                                       ; $6dcc: $ff
    ret nz                                        ; $6dcd: $c0

    ldh a, [$81]                                  ; $6dce: $f0 $81
    pop bc                                        ; $6dd0: $c1
    ld [bc], a                                    ; $6dd1: $02
    add d                                         ; $6dd2: $82
    inc b                                         ; $6dd3: $04
    nop                                           ; $6dd4: $00
    db $e4                                        ; $6dd5: $e4
    db $ec                                        ; $6dd6: $ec
    ld hl, sp-$24                                 ; $6dd7: $f8 $dc
    ldh a, [$ac]                                  ; $6dd9: $f0 $ac
    ldh [$0c], a                                  ; $6ddb: $e0 $0c
    ld [$f9e0], sp                                ; $6ddd: $08 $e0 $f9
    and b                                         ; $6de0: $a0
    reti                                          ; $6de1: $d9


    jr jr_0be_6df5                                ; $6de2: $18 $11

    ret c                                         ; $6de4: $d8

    add b                                         ; $6de5: $80
    ret nc                                        ; $6de6: $d0

    add b                                         ; $6de7: $80
    db $e4                                        ; $6de8: $e4
    ld de, $1d0a                                  ; $6de9: $11 $0a $1d
    dec de                                        ; $6dec: $1b
    inc a                                         ; $6ded: $3c
    ld a, [de]                                    ; $6dee: $1a
    dec a                                         ; $6def: $3d
    dec c                                         ; $6df0: $0d
    nop                                           ; $6df1: $00
    ld e, $0e                                     ; $6df2: $1e $0e
    rra                                           ; $6df4: $1f

jr_0be_6df5:
    dec c                                         ; $6df5: $0d
    ld e, $3e                                     ; $6df6: $1e $3e
    cpl                                           ; $6df8: $2f
    cp a                                          ; $6df9: $bf
    nop                                           ; $6dfa: $00
    adc [hl]                                      ; $6dfb: $8e
    db $db                                        ; $6dfc: $db
    rst $30                                       ; $6dfd: $f7
    ld [hl], b                                    ; $6dfe: $70
    rst $28                                       ; $6dff: $ef
    xor l                                         ; $6e00: $ad
    rst $18                                       ; $6e01: $df
    xor a                                         ; $6e02: $af
    nop                                           ; $6e03: $00
    di                                            ; $6e04: $f3
    ld d, [hl]                                    ; $6e05: $56
    rst $28                                       ; $6e06: $ef
    ld l, d                                       ; $6e07: $6a
    db $dd                                        ; $6e08: $dd
    sub e                                         ; $6e09: $93
    rst $28                                       ; $6e0a: $ef
    db $d3                                        ; $6e0b: $d3
    nop                                           ; $6e0c: $00
    cpl                                           ; $6e0d: $2f
    rst $20                                       ; $6e0e: $e7
    ld h, h                                       ; $6e0f: $64
    ld l, e                                       ; $6e10: $6b
    ld hl, sp-$0d                                 ; $6e11: $f8 $f3
    ret c                                         ; $6e13: $d8

    inc hl                                        ; $6e14: $23
    nop                                           ; $6e15: $00
    ldh a, [$e3]                                  ; $6e16: $f0 $e3
    ld a, h                                       ; $6e18: $7c
    db $fc                                        ; $6e19: $fc
    cp $50                                        ; $6e1a: $fe $50
    cp h                                          ; $6e1c: $bc
    ret nz                                        ; $6e1d: $c0

    ld b, c                                       ; $6e1e: $41
    db $fc                                        ; $6e1f: $fc
    ld a, [de]                                    ; $6e20: $1a
    ld b, c                                       ; $6e21: $41
    dec b                                         ; $6e22: $05
    rlca                                          ; $6e23: $07
    ld bc, $1117                                  ; $6e24: $01 $17 $11
    and e                                         ; $6e27: $a3
    rlca                                          ; $6e28: $07
    nop                                           ; $6e29: $00
    add h                                         ; $6e2a: $84
    db $eb                                        ; $6e2b: $eb
    adc a                                         ; $6e2c: $8f
    rst $28                                       ; $6e2d: $ef
    adc a                                         ; $6e2e: $8f
    and $87                                       ; $6e2f: $e6 $87
    push hl                                       ; $6e31: $e5
    ld [$c287], sp                                ; $6e32: $08 $87 $c2
    add e                                         ; $6e35: $83
    rst $00                                       ; $6e36: $c7
    push bc                                       ; $6e37: $c5
    rlca                                          ; $6e38: $07
    cp c                                          ; $6e39: $b9
    scf                                           ; $6e3a: $37
    ld b, d                                       ; $6e3b: $42
    nop                                           ; $6e3c: $00
    cp $96                                        ; $6e3d: $fe $96
    ld [$ffc9], a                                 ; $6e3f: $ea $c9 $ff
    ld c, l                                       ; $6e42: $4d
    rst $38                                       ; $6e43: $ff
    sbc $20                                       ; $6e44: $de $20
    rst $30                                       ; $6e46: $f7
    ld l, [hl]                                    ; $6e47: $6e
    ld a, [bc]                                    ; $6e48: $0a
    ld b, $ff                                     ; $6e49: $06 $ff
    ld bc, $012b                                  ; $6e4b: $01 $2b $01
    dec bc                                        ; $6e4e: $0b
    nop                                           ; $6e4f: $00
    ld bc, $01a3                                  ; $6e50: $01 $a3 $01
    inc hl                                        ; $6e53: $23
    ld bc, $8183                                  ; $6e54: $01 $83 $81
    add a                                         ; $6e57: $87
    ld d, b                                       ; $6e58: $50
    add l                                         ; $6e59: $85
    ld h, b                                       ; $6e5a: $60
    ld h, d                                       ; $6e5b: $62
    add c                                         ; $6e5c: $81
    adc b                                         ; $6e5d: $88
    inc bc                                        ; $6e5e: $03
    ld bc, $0302                                  ; $6e5f: $01 $02 $03
    nop                                           ; $6e62: $00
    nop                                           ; $6e63: $00
    rrca                                          ; $6e64: $0f
    rrca                                          ; $6e65: $0f
    ccf                                           ; $6e66: $3f
    ccf                                           ; $6e67: $3f
    ld [hl], b                                    ; $6e68: $70
    ld [hl], e                                    ; $6e69: $73
    call z, Call_000_00ec                         ; $6e6a: $cc $ec $00
    cp a                                          ; $6e6d: $bf
    or h                                          ; $6e6e: $b4
    res 5, e                                      ; $6e6f: $cb $ab
    rst $10                                       ; $6e71: $d7
    xor e                                         ; $6e72: $ab
    call c, Call_000_00df                         ; $6e73: $dc $df $00
    jp hl                                         ; $6e76: $e9


    or $cf                                        ; $6e77: $f6 $cf
    add hl, hl                                    ; $6e79: $29
    rst $18                                       ; $6e7a: $df
    db $fd                                        ; $6e7b: $fd
    rrca                                          ; $6e7c: $0f
    xor e                                         ; $6e7d: $ab
    nop                                           ; $6e7e: $00
    ld e, a                                       ; $6e7f: $5f
    rst $20                                       ; $6e80: $e7
    rra                                           ; $6e81: $1f
    ld c, b                                       ; $6e82: $48
    or a                                          ; $6e83: $b7
    ld l, a                                       ; $6e84: $6f
    rst $38                                       ; $6e85: $ff
    cp l                                          ; $6e86: $bd
    jr z, @+$01                                   ; $6e87: $28 $ff

    jp c, $04cf                                   ; $6e89: $da $cf $04

    rst $18                                       ; $6e8c: $df
    ld h, d                                       ; $6e8d: $62
    rlca                                          ; $6e8e: $07
    db $ec                                        ; $6e8f: $ec
    ldh a, [$4c]                                  ; $6e90: $f0 $4c
    add hl, bc                                    ; $6e92: $09
    ldh [$8c], a                                  ; $6e93: $e0 $8c
    ret nz                                        ; $6e95: $c0

    ret z                                         ; $6e96: $c8

    sub $03                                       ; $6e97: $d6 $03
    ret nz                                        ; $6e99: $c0

    ldh [$a5], a                                  ; $6e9a: $e0 $a5
    ld a, [bc]                                    ; $6e9c: $0a
    inc c                                         ; $6e9d: $0c
    pop bc                                        ; $6e9e: $c1
    add c                                         ; $6e9f: $81
    pop bc                                        ; $6ea0: $c1
    add b                                         ; $6ea1: $80
    ld e, b                                       ; $6ea2: $58
    add hl, bc                                    ; $6ea3: $09
    ld a, [c]                                     ; $6ea4: $f2
    add hl, hl                                    ; $6ea5: $29
    dec a                                         ; $6ea6: $3d
    ld c, $40                                     ; $6ea7: $0e $40
    ccf                                           ; $6ea9: $3f
    ld [bc], a                                    ; $6eaa: $02
    nop                                           ; $6eab: $00
    daa                                           ; $6eac: $27
    ld c, $04                                     ; $6ead: $0e $04
    rrca                                          ; $6eaf: $0f
    rlca                                          ; $6eb0: $07
    ld c, $00                                     ; $6eb1: $0e $00
    rlca                                          ; $6eb3: $07
    ld c, $05                                     ; $6eb4: $0e $05
    ld c, $7f                                     ; $6eb6: $0e $7f
    rst $38                                       ; $6eb8: $ff
    and l                                         ; $6eb9: $a5
    ei                                            ; $6eba: $fb
    nop                                           ; $6ebb: $00
    sbc a                                         ; $6ebc: $9f
    ld a, a                                       ; $6ebd: $7f
    ccf                                           ; $6ebe: $3f
    rst $38                                       ; $6ebf: $ff
    add hl, sp                                    ; $6ec0: $39
    rst $00                                       ; $6ec1: $c7
    ld [hl-], a                                   ; $6ec2: $32
    db $fd                                        ; $6ec3: $fd
    ld [$8f76], sp                                ; $6ec4: $08 $76 $8f
    call z, $c633                                 ; $6ec7: $cc $33 $c6
    nop                                           ; $6eca: $00
    db $fc                                        ; $6ecb: $fc
    ret nz                                        ; $6ecc: $c0

    ldh [rP1], a                                  ; $6ecd: $e0 $00
    add c                                         ; $6ecf: $81
    ld sp, hl                                     ; $6ed0: $f9
    ei                                            ; $6ed1: $fb
    cp $57                                        ; $6ed2: $fe $57
    db $fc                                        ; $6ed4: $fc
    jp Jump_000_03f8                              ; $6ed5: $c3 $f8 $03


    ei                                            ; $6ed8: $fb
    db $fc                                        ; $6ed9: $fc
    daa                                           ; $6eda: $27
    ld hl, $4167                                  ; $6edb: $21 $67 $41
    ld e, b                                       ; $6ede: $58
    add hl, bc                                    ; $6edf: $09
    ld a, [c]                                     ; $6ee0: $f2
    add hl, hl                                    ; $6ee1: $29
    nop                                           ; $6ee2: $00
    res 1, e                                      ; $6ee3: $cb $8b
    db $db                                        ; $6ee5: $db
    sub c                                         ; $6ee6: $91
    jp $e981                                      ; $6ee7: $c3 $81 $e9


    add e                                         ; $6eea: $83
    inc b                                         ; $6eeb: $04
    db $eb                                        ; $6eec: $eb
    add e                                         ; $6eed: $83
    jp $e383                                      ; $6eee: $c3 $83 $e3


    inc b                                         ; $6ef1: $04
    nop                                           ; $6ef2: $00
    or a                                          ; $6ef3: $b7
    rst $28                                       ; $6ef4: $ef
    nop                                           ; $6ef5: $00
    ld h, e                                       ; $6ef6: $63
    rst $38                                       ; $6ef7: $ff
    push hl                                       ; $6ef8: $e5
    rst $38                                       ; $6ef9: $ff
    ld h, d                                       ; $6efa: $62
    rst $38                                       ; $6efb: $ff
    pop af                                        ; $6efc: $f1
    rst $28                                       ; $6efd: $ef
    nop                                           ; $6efe: $00
    ld a, d                                       ; $6eff: $7a
    rst $30                                       ; $6f00: $f7
    rst $38                                       ; $6f01: $ff
    db $ed                                        ; $6f02: $ed
    rst $20                                       ; $6f03: $e7
    ei                                            ; $6f04: $fb
    adc e                                         ; $6f05: $8b
    adc c                                         ; $6f06: $89
    nop                                           ; $6f07: $00
    dec de                                        ; $6f08: $1b
    ld de, $8183                                  ; $6f09: $11 $83 $81
    db $eb                                        ; $6f0c: $eb
    pop bc                                        ; $6f0d: $c1
    ld c, e                                       ; $6f0e: $4b
    pop bc                                        ; $6f0f: $c1
    nop                                           ; $6f10: $00
    ld h, e                                       ; $6f11: $63
    pop bc                                        ; $6f12: $c1
    inc hl                                        ; $6f13: $23
    pop hl                                        ; $6f14: $e1
    jp $c1c1                                      ; $6f15: $c3 $c1 $c1


    add e                                         ; $6f18: $83
    add h                                         ; $6f19: $84
    ld [bc], a                                    ; $6f1a: $02
    ld [$87c5], sp                                ; $6f1b: $08 $c5 $87
    call z, $9089                                 ; $6f1e: $cc $89 $90
    dec de                                        ; $6f21: $1b
    cp $7f                                        ; $6f22: $fe $7f
    nop                                           ; $6f24: $00
    rst $18                                       ; $6f25: $df
    ccf                                           ; $6f26: $3f
    cp a                                          ; $6f27: $bf
    ld a, a                                       ; $6f28: $7f
    ld b, e                                       ; $6f29: $43
    rst $38                                       ; $6f2a: $ff
    add b                                         ; $6f2b: $80
    jp $4040                                      ; $6f2c: $c3 $40 $40


    ld bc, $8002                                  ; $6f2f: $01 $02 $80
    nop                                           ; $6f32: $00
    or a                                          ; $6f33: $b7
    rst $18                                       ; $6f34: $df
    adc e                                         ; $6f35: $8b
    rst $38                                       ; $6f36: $ff
    ld d, c                                       ; $6f37: $51
    ld b, a                                       ; $6f38: $47
    and $03                                       ; $6f39: $e6 $03
    rst $28                                       ; $6f3b: $ef
    ld h, b                                       ; $6f3c: $60
    inc d                                         ; $6f3d: $14
    dec a                                         ; $6f3e: $3d
    ld a, a                                       ; $6f3f: $7f
    ei                                            ; $6f40: $fb
    call z, $4000                                 ; $6f41: $cc $00 $40
    ei                                            ; $6f44: $fb
    adc e                                         ; $6f45: $8b
    inc b                                         ; $6f46: $04
    sbc h                                         ; $6f47: $9c
    rst $38                                       ; $6f48: $ff
    ld e, d                                       ; $6f49: $5a
    rst $20                                       ; $6f4a: $e7
    xor l                                         ; $6f4b: $ad
    di                                            ; $6f4c: $f3
    nop                                           ; $6f4d: $00
    jp nc, Jump_000_00fd                          ; $6f4e: $d2 $fd $00

    add b                                         ; $6f51: $80
    ld bc, $8281                                  ; $6f52: $01 $81 $82
    jp nz, Jump_000_0422                          ; $6f55: $c2 $22 $04

    add h                                         ; $6f58: $84
    sub b                                         ; $6f59: $90
    inc de                                        ; $6f5a: $13
    ldh [$cc], a                                  ; $6f5b: $e0 $cc
    ldh a, [$98]                                  ; $6f5d: $f0 $98
    ld hl, $0081                                  ; $6f5f: $21 $81 $00
    pop bc                                        ; $6f62: $c1
    add c                                         ; $6f63: $81
    jp $c387                                      ; $6f64: $c3 $87 $c3


    add [hl]                                      ; $6f67: $86
    jp nz, Jump_000_0087                          ; $6f68: $c2 $87 $00

    dec b                                         ; $6f6b: $05

jr_0be_6f6c:
    ld c, $06                                     ; $6f6c: $0e $06
    ccf                                           ; $6f6e: $3f
    ccf                                           ; $6f6f: $3f
    cp $f9                                        ; $6f70: $fe $f9
    add $04                                       ; $6f72: $c6 $04
    rst $08                                       ; $6f74: $cf
    jr nc, jr_0be_6f6c                            ; $6f75: $30 $f5

    cp $7c                                        ; $6f77: $fe $7c
    add hl, sp                                    ; $6f79: $39
    ld b, $35                                     ; $6f7a: $06 $35
    ld a, [$fb01]                                 ; $6f7c: $fa $01 $fb
    rra                                           ; $6f7f: $1f
    rst $28                                       ; $6f80: $ef
    ld a, a                                       ; $6f81: $7f
    add hl, de                                    ; $6f82: $19
    rst $38                                       ; $6f83: $ff
    rst $18                                       ; $6f84: $df
    ld e, a                                       ; $6f85: $5f
    dec b                                         ; $6f86: $05
    ld b, b                                       ; $6f87: $40
    dec sp                                        ; $6f88: $3b
    call c, Call_000_1305                         ; $6f89: $dc $05 $13
    ld hl, sp-$4e                                 ; $6f8c: $f8 $b2
    ld hl, sp+$58                                 ; $6f8e: $f8 $58
    db $fc                                        ; $6f90: $fc
    nop                                           ; $6f91: $00
    ldh a, [$f8]                                  ; $6f92: $f0 $f8
    ldh [$f0], a                                  ; $6f94: $e0 $f0
    ld h, b                                       ; $6f96: $60
    ldh [$a0], a                                  ; $6f97: $e0 $a0
    ldh [$32], a                                  ; $6f99: $e0 $32
    ld h, b                                       ; $6f9b: $60
    ret nc                                        ; $6f9c: $d0

    sbc b                                         ; $6f9d: $98
    add hl, de                                    ; $6f9e: $19
    ld [hl-], a                                   ; $6f9f: $32
    ld a, [hl-]                                   ; $6fa0: $3a
    rst $00                                       ; $6fa1: $c7
    add a                                         ; $6fa2: $87
    jp nc, $9300                                  ; $6fa3: $d2 $00 $93

    ld bc, $a1e1                                  ; $6fa6: $01 $e1 $a1
    jp hl                                         ; $6fa9: $e9


    add c                                         ; $6faa: $81
    ret                                           ; $6fab: $c9


    add c                                         ; $6fac: $81
    pop hl                                        ; $6fad: $e1
    ld [bc], a                                    ; $6fae: $02
    nop                                           ; $6faf: $00
    ld b, b                                       ; $6fb0: $40
    ld [hl], e                                    ; $6fb1: $73
    ld l, d                                       ; $6fb2: $6a
    ld c, $ef                                     ; $6fb3: $0e $ef
    xor $ff                                       ; $6fb5: $ee $ff
    ld d, e                                       ; $6fb7: $53
    rst $28                                       ; $6fb8: $ef
    rst $20                                       ; $6fb9: $e7
    nop                                           ; $6fba: $00
    rst $18                                       ; $6fbb: $df
    ld l, d                                       ; $6fbc: $6a
    rst $10                                       ; $6fbd: $d7
    jp c, Jump_0be_47ef                           ; $6fbe: $da $ef $47

    push bc                                       ; $6fc1: $c5
    rlc b                                         ; $6fc2: $cb $00
    ret                                           ; $6fc4: $c9


    sbc e                                         ; $6fc5: $9b
    sub c                                         ; $6fc6: $91
    db $e3                                        ; $6fc7: $e3
    pop hl                                        ; $6fc8: $e1
    xor e                                         ; $6fc9: $ab
    pop hl                                        ; $6fca: $e1
    ld l, e                                       ; $6fcb: $6b
    nop                                           ; $6fcc: $00
    pop hl                                        ; $6fcd: $e1
    and e                                         ; $6fce: $a3
    pop hl                                        ; $6fcf: $e1
    ld h, e                                       ; $6fd0: $63
    pop hl                                        ; $6fd1: $e1
    rst $38                                       ; $6fd2: $ff
    nop                                           ; $6fd3: $00
    rlc b                                         ; $6fd4: $cb $00
    ld c, a                                       ; $6fd6: $4f
    db $d3                                        ; $6fd7: $d3
    rra                                           ; $6fd8: $1f
    db $d3                                        ; $6fd9: $d3
    ld e, $9f                                     ; $6fda: $1e $9f
    rla                                           ; $6fdc: $17
    sbc d                                         ; $6fdd: $9a
    nop                                           ; $6fde: $00
    dec d                                         ; $6fdf: $15
    sub c                                         ; $6fe0: $91
    rra                                           ; $6fe1: $1f
    ret                                           ; $6fe2: $c9


    rrca                                          ; $6fe3: $0f
    rst $38                                       ; $6fe4: $ff
    nop                                           ; $6fe5: $00
    ld l, l                                       ; $6fe6: $6d
    nop                                           ; $6fe7: $00
    ldh [$5d], a                                  ; $6fe8: $e0 $5d
    ldh a, [$29]                                  ; $6fea: $f0 $29
    ldh [$e3], a                                  ; $6fec: $e0 $e3
    and d                                         ; $6fee: $a2
    push de                                       ; $6fef: $d5
    ld b, $74                                     ; $6ff0: $06 $74
    adc l                                         ; $6ff2: $8d
    ld hl, sp+$3d                                 ; $6ff3: $f8 $3d
    ldh a, [rOCPS]                                ; $6ff5: $f0 $6a
    ld c, $40                                     ; $6ff7: $0e $40
    inc e                                         ; $6ff9: $1c
    jr jr_0be_6ffc                                ; $6ffa: $18 $00

jr_0be_6ffc:
    rla                                           ; $6ffc: $17
    daa                                           ; $6ffd: $27
    cpl                                           ; $6ffe: $2f
    ld c, e                                       ; $6fff: $4b
    ld e, [hl]                                    ; $7000: $5e
    or [hl]                                       ; $7001: $b6
    db $fd                                        ; $7002: $fd
    xor d                                         ; $7003: $aa
    nop                                           ; $7004: $00

Jump_0be_7005:
    ld a, l                                       ; $7005: $7d
    or h                                          ; $7006: $b4
    ld a, e                                       ; $7007: $7b

jr_0be_7008:
    ld c, e                                       ; $7008: $4b
    db $fd                                        ; $7009: $fd
    ld l, l                                       ; $700a: $6d
    db $db                                        ; $700b: $db
    ld d, e                                       ; $700c: $53
    nop                                           ; $700d: $00
    rst $38                                       ; $700e: $ff
    cp $f7                                        ; $700f: $fe $f7
    dec l                                         ; $7011: $2d
    rst $38                                       ; $7012: $ff
    xor c                                         ; $7013: $a9
    cp $fc                                        ; $7014: $fe $fc
    add b                                         ; $7016: $80
    ldh a, [rTAC]                                 ; $7017: $f0 $07
    rst $18                                       ; $7019: $df
    rst $38                                       ; $701a: $ff
    ld b, c                                       ; $701b: $41
    rst $38                                       ; $701c: $ff
    sbc h                                         ; $701d: $9c
    pop de                                        ; $701e: $d1
    xor h                                         ; $701f: $ac
    nop                                           ; $7020: $00
    ldh [$4c], a                                  ; $7021: $e0 $4c
    ret nz                                        ; $7023: $c0

    ld [hl], b                                    ; $7024: $70
    cp [hl]                                       ; $7025: $be
    sbc [hl]                                      ; $7026: $9e
    rst $28                                       ; $7027: $ef
    ld l, c                                       ; $7028: $69
    nop                                           ; $7029: $00
    rst $10                                       ; $702a: $d7
    jp c, $b4ed                                   ; $702b: $da $ed $b4

    ei                                            ; $702e: $fb
    ld a, c                                       ; $702f: $79
    cp $ba                                        ; $7030: $fe $ba
    db $10                                        ; $7032: $10
    ld a, a                                       ; $7033: $7f
    sbc l                                         ; $7034: $9d
    ccf                                           ; $7035: $3f
    sbc l                                         ; $7036: $9d
    rlca                                          ; $7037: $07
    ld sp, hl                                     ; $7038: $f9
    di                                            ; $7039: $f3
    ld sp, hl                                     ; $703a: $f9
    rst $10                                       ; $703b: $d7
    nop                                           ; $703c: $00
    dec a                                         ; $703d: $3d
    xor a                                         ; $703e: $af
    ld sp, hl                                     ; $703f: $f9
    ld l, a                                       ; $7040: $6f
    or c                                          ; $7041: $b1
    rst $08                                       ; $7042: $cf
    pop hl                                        ; $7043: $e1
    rrca                                          ; $7044: $0f
    jr jr_0be_7008                                ; $7045: $18 $c1

    ret c                                         ; $7047: $d8

    sub e                                         ; $7048: $93
    sub d                                         ; $7049: $92
    ld e, d                                       ; $704a: $5a
    sbc [hl]                                      ; $704b: $9e
    dec e                                         ; $704c: $1d
    ld bc, $0d03                                  ; $704d: $01 $03 $0d
    nop                                           ; $7050: $00
    dec bc                                        ; $7051: $0b
    dec b                                         ; $7052: $05
    inc bc                                        ; $7053: $03
    ld [de], a                                    ; $7054: $12
    rla                                           ; $7055: $17
    ld h, d                                       ; $7056: $62
    ld e, a                                       ; $7057: $5f
    ld a, e                                       ; $7058: $7b
    nop                                           ; $7059: $00
    rst $38                                       ; $705a: $ff
    rst $30                                       ; $705b: $f7
    db $fc                                        ; $705c: $fc
    ld sp, hl                                     ; $705d: $f9
    cp $de                                        ; $705e: $fe $de
    rst $38                                       ; $7060: $ff
    cpl                                           ; $7061: $2f
    nop                                           ; $7062: $00
    rst $18                                       ; $7063: $df
    rst $08                                       ; $7064: $cf
    cp a                                          ; $7065: $bf
    ccf                                           ; $7066: $3f
    rst $18                                       ; $7067: $df
    cp e                                          ; $7068: $bb
    cp $83                                        ; $7069: $fe $83
    nop                                           ; $706b: $00
    ld [c], a                                     ; $706c: $e2
    ld b, a                                       ; $706d: $47
    db $e4                                        ; $706e: $e4
    xor e                                         ; $706f: $ab
    ld a, b                                       ; $7070: $78
    ld d, e                                       ; $7071: $53
    cp h                                          ; $7072: $bc

jr_0be_7073:
    add a                                         ; $7073: $87
    ld bc, $fafb                                  ; $7074: $01 $fb $fa
    push af                                       ; $7077: $f5
    or $fb                                        ; $7078: $f6 $fb
    sbc [hl]                                      ; $707a: $9e
    ccf                                           ; $707b: $3f
    xor h                                         ; $707c: $ac
    inc sp                                        ; $707d: $33
    nop                                           ; $707e: $00
    ld sp, hl                                     ; $707f: $f9
    ei                                            ; $7080: $fb
    ld sp, hl                                     ; $7081: $f9
    ld l, a                                       ; $7082: $6f
    sbc l                                         ; $7083: $9d
    or a                                          ; $7084: $b7
    ld e, c                                       ; $7085: $59
    rst $00                                       ; $7086: $c7
    nop                                           ; $7087: $00
    add a                                         ; $7088: $87
    rst $08                                       ; $7089: $cf
    adc h                                         ; $708a: $8c

Call_0be_708b:
    jp c, $df97                                   ; $708b: $da $97 $df

    sub a                                         ; $708e: $97
    rst $38                                       ; $708f: $ff
    nop                                           ; $7090: $00
    cp a                                          ; $7091: $bf
    add sp, -$78                                  ; $7092: $e8 $88
    add sp, -$80                                  ; $7094: $e8 $80
    ldh [$80], a                                  ; $7096: $e0 $80
    call z, $ff02                                 ; $7098: $cc $02 $ff
    ld hl, $13ff                                  ; $709b: $21 $ff $13
    rst $38                                       ; $709e: $ff
    rlca                                          ; $709f: $07
    ld h, e                                       ; $70a0: $63
    rlca                                          ; $70a1: $07
    db $fd                                        ; $70a2: $fd
    nop                                           ; $70a3: $00
    ei                                            ; $70a4: $fb
    ld [hl], e                                    ; $70a5: $73
    ld a, l                                       ; $70a6: $7d
    ld h, c                                       ; $70a7: $61
    ld a, [hl]                                    ; $70a8: $7e
    and e                                         ; $70a9: $a3
    pop hl                                        ; $70aa: $e1
    rst $00                                       ; $70ab: $c7
    jr nz, jr_0be_7073                            ; $70ac: $20 $c5

    ld c, e                                       ; $70ae: $4b
    ld a, [c]                                     ; $70af: $f2
    nop                                           ; $70b0: $00
    inc hl                                        ; $70b1: $23
    ld hl, $c1eb                                  ; $70b2: $21 $eb $c1
    ld l, e                                       ; $70b5: $6b
    nop                                           ; $70b6: $00
    pop hl                                        ; $70b7: $e1
    di                                            ; $70b8: $f3
    ld [hl], c                                    ; $70b9: $71
    rst $08                                       ; $70ba: $cf
    rrca                                          ; $70bb: $0f
    adc [hl]                                      ; $70bc: $8e
    rlca                                          ; $70bd: $07
    adc l                                         ; $70be: $8d
    nop                                           ; $70bf: $00
    rlca                                          ; $70c0: $07
    adc [hl]                                      ; $70c1: $8e
    dec b                                         ; $70c2: $05
    push bc                                       ; $70c3: $c5
    rlca                                          ; $70c4: $07
    adc $0d                                       ; $70c5: $ce $0d
    db $dd                                        ; $70c7: $dd
    nop                                           ; $70c8: $00
    ld d, $b2                                     ; $70c9: $16 $b2
    dec l                                         ; $70cb: $2d
    ld sp, hl                                     ; $70cc: $f9
    ld [hl], b                                    ; $70cd: $70
    ld c, c                                       ; $70ce: $49
    ld hl, sp-$0f                                 ; $70cf: $f8 $f1
    nop                                           ; $70d1: $00
    ldh a, [$d5]                                  ; $70d2: $f0 $d5
    ldh a, [$0d]                                  ; $70d4: $f0 $0d
    ld hl, sp-$47                                 ; $70d6: $f8 $b9
    ld a, b                                       ; $70d8: $78
    ld l, c                                       ; $70d9: $69
    ret nc                                        ; $70da: $d0

    ld a, [bc]                                    ; $70db: $0a
    nop                                           ; $70dc: $00
    or b                                          ; $70dd: $b0
    ld c, h                                       ; $70de: $4c
    rst $38                                       ; $70df: $ff
    jr nc, @+$08                                  ; $70e0: $30 $06

    sub $bd                                       ; $70e2: $d6 $bd
    push de                                       ; $70e4: $d5
    ccf                                           ; $70e5: $3f
    nop                                           ; $70e6: $00
    sbc $3f                                       ; $70e7: $de $3f
    jp z, $c01f                                   ; $70e9: $ca $1f $c0

    ld a, [bc]                                    ; $70ec: $0a
    ret nz                                        ; $70ed: $c0

    nop                                           ; $70ee: $00
    nop                                           ; $70ef: $00
    rst $38                                       ; $70f0: $ff
    nop                                           ; $70f1: $00
    rst $38                                       ; $70f2: $ff
    rst $38                                       ; $70f3: $ff
    xor $bf                                       ; $70f4: $ee $bf
    xor c                                         ; $70f6: $a9
    rst $18                                       ; $70f7: $df
    nop                                           ; $70f8: $00
    ld l, d                                       ; $70f9: $6a
    cp $28                                        ; $70fa: $fe $28
    ld a, h                                       ; $70fc: $7c
    inc [hl]                                      ; $70fd: $34
    ld a, b                                       ; $70fe: $78

Jump_0be_70ff:
    inc l                                         ; $70ff: $2c
    ld [hl], b                                    ; $7100: $70
    ld [$20df], sp                                ; $7101: $08 $df $20
    rst $38                                       ; $7104: $ff
    rst $38                                       ; $7105: $ff
    ld b, b                                       ; $7106: $40
    dec b                                         ; $7107: $05
    nop                                           ; $7108: $00
    call z, $c300                                 ; $7109: $cc $00 $c3
    nop                                           ; $710c: $00
    dec c                                         ; $710d: $0d
    jr nz, jr_0be_7128                            ; $710e: $20 $18

    ld a, [bc]                                    ; $7110: $0a
    rra                                           ; $7111: $1f
    ld bc, $700b                                  ; $7112: $01 $0b $70
    dec l                                         ; $7115: $2d
    jr nc, jr_0be_7120                            ; $7116: $30 $08

    cp h                                          ; $7118: $bc
    or b                                          ; $7119: $b0
    ld c, h                                       ; $711a: $4c
    rst $38                                       ; $711b: $ff
    xor [hl]                                      ; $711c: $ae
    inc b                                         ; $711d: $04
    db $10                                        ; $711e: $10
    dec c                                         ; $711f: $0d

jr_0be_7120:
    jp nz, Jump_0be_602a                          ; $7120: $c2 $2a $60

    ld [$bf9f], sp                                ; $7123: $08 $9f $bf
    nop                                           ; $7126: $00
    add hl, hl                                    ; $7127: $29

jr_0be_7128:
    ld [hl], a                                    ; $7128: $77
    ld d, a                                       ; $7129: $57
    db $fd                                        ; $712a: $fd
    ld [hl], e                                    ; $712b: $73
    rst $38                                       ; $712c: $ff
    ld hl, $107b                                  ; $712d: $21 $7b $10
    ld bc, $fe23                                  ; $7130: $01 $23 $fe
    adc $04                                       ; $7133: $ce $04
    jp hl                                         ; $7135: $e9


    db $fc                                        ; $7136: $fc
    ld d, l                                       ; $7137: $55
    db $fc                                        ; $7138: $fc
    inc bc                                        ; $7139: $03
    ld l, l                                       ; $713a: $6d
    ld hl, sp+$2d                                 ; $713b: $f8 $2d
    ldh [$0d], a                                  ; $713d: $e0 $0d
    ret nz                                        ; $713f: $c0

    db $ec                                        ; $7140: $ec
    dec b                                         ; $7141: $05
    ld [hl], b                                    ; $7142: $70
    nop                                           ; $7143: $00
    ld bc, $1f8e                                  ; $7144: $01 $8e $1f
    add a                                         ; $7147: $87
    rrca                                          ; $7148: $0f
    add d                                         ; $7149: $82
    rlca                                          ; $714a: $07
    add b                                         ; $714b: $80
    ldh a, [rNR22]                                ; $714c: $f0 $17
    add c                                         ; $714e: $81
    add b                                         ; $714f: $80
    ld [$f167], sp                                ; $7150: $08 $67 $f1
    add a                                         ; $7153: $87
    pop hl                                        ; $7154: $e1
    ld h, a                                       ; $7155: $67
    pop bc                                        ; $7156: $c1
    jp nz, $801a                                  ; $7157: $c2 $1a $80

    ld d, b                                       ; $715a: $50
    ld [$80e0], sp                                ; $715b: $08 $e0 $80
    jp nz, $c380                                  ; $715e: $c2 $80 $c3

    add e                                         ; $7161: $83
    rlc d                                         ; $7162: $cb $02
    adc h                                         ; $7164: $8c
    rst $18                                       ; $7165: $df
    sub a                                         ; $7166: $97
    xor $a7                                       ; $7167: $ee $a7
    cp $e0                                        ; $7169: $fe $e0
    ld b, $6f                                     ; $716b: $06 $6f
    nop                                           ; $716d: $00
    ld e, a                                       ; $716e: $5f
    cp c                                          ; $716f: $b9
    rst $18                                       ; $7170: $df
    rst $28                                       ; $7171: $ef
    rst $38                                       ; $7172: $ff
    ld a, [hl-]                                   ; $7173: $3a
    ld hl, sp+$5a                                 ; $7174: $f8 $5a
    ld [$a8b0], sp                                ; $7176: $08 $b0 $a8
    ld h, b                                       ; $7179: $60
    rst $38                                       ; $717a: $ff
    jr nc, jr_0be_7184                            ; $717b: $30 $07

    sbc a                                         ; $717d: $9f
    db $fd                                        ; $717e: $fd
    ld h, e                                       ; $717f: $63
    nop                                           ; $7180: $00
    db $dd                                        ; $7181: $dd
    set 7, c                                      ; $7182: $cb $f9

jr_0be_7184:
    ld [hl], a                                    ; $7184: $77
    ld a, l                                       ; $7185: $7d
    dec de                                        ; $7186: $1b
    add hl, de                                    ; $7187: $19
    dec hl                                        ; $7188: $2b
    ld b, b                                       ; $7189: $40
    ld hl, $0880                                  ; $718a: $21 $80 $08
    xor l                                         ; $718d: $ad
    ccf                                           ; $718e: $3f
    push af                                       ; $718f: $f5
    ld [hl], a                                    ; $7190: $77
    jp nz, $0003                                  ; $7191: $c2 $03 $00

    adc $0f                                       ; $7194: $ce $0f
    sub e                                         ; $7196: $93
    rra                                           ; $7197: $1f
    xor l                                         ; $7198: $ad
    ccf                                           ; $7199: $3f
    sub [hl]                                      ; $719a: $96
    ld e, $10                                     ; $719b: $1e $10
    rst $38                                       ; $719d: $ff
    nop                                           ; $719e: $00
    ld h, l                                       ; $719f: $65
    xor $01                                       ; $71a0: $ee $01
    adc l                                         ; $71a2: $8d
    ld hl, sp-$09                                 ; $71a3: $f8 $f7
    xor $00                                       ; $71a5: $ee $00
    pop af                                        ; $71a7: $f1
    cp $d5                                        ; $71a8: $fe $d5
    inc e                                         ; $71aa: $1c
    call $ff08                                    ; $71ab: $cd $08 $ff
    nop                                           ; $71ae: $00
    nop                                           ; $71af: $00
    xor d                                         ; $71b0: $aa
    ld d, l                                       ; $71b1: $55
    nop                                           ; $71b2: $00
    rst $38                                       ; $71b3: $ff
    xor d                                         ; $71b4: $aa
    ld d, l                                       ; $71b5: $55
    ld d, l                                       ; $71b6: $55
    xor d                                         ; $71b7: $aa
    add l                                         ; $71b8: $85
    inc b                                         ; $71b9: $04
    ld [$00ff], sp                                ; $71ba: $08 $ff $00
    ld d, l                                       ; $71bd: $55
    xor d                                         ; $71be: $aa
    or l                                          ; $71bf: $b5
    ld [$b911], sp                                ; $71c0: $08 $11 $b9
    nop                                           ; $71c3: $00
    ld de, $ff51                                  ; $71c4: $11 $51 $ff
    xor e                                         ; $71c7: $ab
    ld [$5107], a                                 ; $71c8: $ea $07 $51
    xor [hl]                                      ; $71cb: $ae
    add b                                         ; $71cc: $80
    dec d                                         ; $71cd: $15
    ld bc, $0480                                  ; $71ce: $01 $80 $04
    jr @+$01                                      ; $71d1: $18 $ff

    rst $38                                       ; $71d3: $ff
    jr z, @+$01                                   ; $71d4: $28 $ff

    ld [hl], l                                    ; $71d6: $75
    cp d                                          ; $71d7: $ba
    ld [bc], a                                    ; $71d8: $02
    jr nz, @+$01                                  ; $71d9: $20 $ff

    dec d                                         ; $71db: $15
    add b                                         ; $71dc: $80
    inc b                                         ; $71dd: $04
    ld e, a                                       ; $71de: $5f
    and b                                         ; $71df: $a0
    xor d                                         ; $71e0: $aa
    nop                                           ; $71e1: $00
    ld d, a                                       ; $71e2: $57
    sub b                                         ; $71e3: $90
    sbc c                                         ; $71e4: $99
    rlca                                          ; $71e5: $07
    ld d, l                                       ; $71e6: $55
    nop                                           ; $71e7: $00
    ld c, $08                                     ; $71e8: $0e $08
    ld c, a                                       ; $71ea: $4f
    or b                                          ; $71eb: $b0
    push af                                       ; $71ec: $f5
    nop                                           ; $71ed: $00
    nop                                           ; $71ee: $00
    xor d                                         ; $71ef: $aa
    nop                                           ; $71f0: $00
    db $d3                                        ; $71f1: $d3
    inc c                                         ; $71f2: $0c
    ld sp, hl                                     ; $71f3: $f9
    sub d                                         ; $71f4: $92
    ld sp, hl                                     ; $71f5: $f9
    di                                            ; $71f6: $f3
    nop                                           ; $71f7: $00
    cp $ff                                        ; $71f8: $fe $ff
    ld d, l                                       ; $71fa: $55
    xor d                                         ; $71fb: $aa
    ld a, [$df00]                                 ; $71fc: $fa $00 $df
    nop                                           ; $71ff: $00
    nop                                           ; $7200: $00
    db $eb                                        ; $7201: $eb
    ld b, $d7                                     ; $7202: $06 $d7
    ld b, a                                       ; $7204: $47
    add a                                         ; $7205: $87
    jp $81d6                                      ; $7206: $c3 $d6 $81


    nop                                           ; $7209: $00
    ld e, a                                       ; $720a: $5f
    and b                                         ; $720b: $a0
    cp d                                          ; $720c: $ba
    ld b, l                                       ; $720d: $45
    rst $30                                       ; $720e: $f7
    nop                                           ; $720f: $00
    ld h, l                                       ; $7210: $65
    jr jr_0be_7213                                ; $7211: $18 $00

jr_0be_7213:
    or d                                          ; $7213: $b2
    inc h                                         ; $7214: $24
    pop af                                        ; $7215: $f1
    inc h                                         ; $7216: $24
    or $bc                                        ; $7217: $f6 $bc
    rst $28                                       ; $7219: $ef
    cp $90                                        ; $721a: $fe $90
    ld a, [bc]                                    ; $721c: $0a
    xor h                                         ; $721d: $ac
    ld b, $02                                     ; $721e: $06 $02
    reti                                          ; $7220: $d9


    halt                                          ; $7221: $76
    ld h, b                                       ; $7222: $60
    cp a                                          ; $7223: $bf
    nop                                           ; $7224: $00
    rst $38                                       ; $7225: $ff
    ld [bc], a                                    ; $7226: $02
    jr c, @+$01                                   ; $7227: $38 $ff

    nop                                           ; $7229: $00
    ld sp, hl                                     ; $722a: $f9
    rst $38                                       ; $722b: $ff
    ld a, a                                       ; $722c: $7f
    ld a, a                                       ; $722d: $7f
    cp a                                          ; $722e: $bf
    ccf                                           ; $722f: $3f
    rst $18                                       ; $7230: $df
    rra                                           ; $7231: $1f
    ld bc, $0fef                                  ; $7232: $01 $ef $0f
    rst $30                                       ; $7235: $f7
    rlca                                          ; $7236: $07
    ei                                            ; $7237: $fb
    inc bc                                        ; $7238: $03
    db $fd                                        ; $7239: $fd
    stop                                          ; $723a: $10 $00
    add b                                         ; $723c: $80
    ld bc, $f050                                  ; $723d: $01 $50 $f0
    rst $08                                       ; $7240: $cf
    add b                                         ; $7241: $80
    ld a, a                                       ; $7242: $7f
    ret nz                                        ; $7243: $c0

    cp a                                          ; $7244: $bf
    ldh [rP1], a                                  ; $7245: $e0 $00
    rst $18                                       ; $7247: $df
    ldh a, [$ef]                                  ; $7248: $f0 $ef
    ld hl, sp-$09                                 ; $724a: $f8 $f7
    db $fc                                        ; $724c: $fc
    ei                                            ; $724d: $fb
    cp $1b                                        ; $724e: $fe $1b
    db $fd                                        ; $7250: $fd
    ld bc, $3efe                                  ; $7251: $01 $fe $3e
    ld c, b                                       ; $7254: $48
    ld b, b                                       ; $7255: $40
    nop                                           ; $7256: $00
    rst $38                                       ; $7257: $ff
    ld b, b                                       ; $7258: $40
    ld h, b                                       ; $7259: $60
    ld bc, $0060                                  ; $725a: $01 $60 $00
    nop                                           ; $725d: $00
    rst $38                                       ; $725e: $ff
    add b                                         ; $725f: $80
    ld a, a                                       ; $7260: $7f
    add b                                         ; $7261: $80
    rst $38                                       ; $7262: $ff
    ret nz                                        ; $7263: $c0

    cp a                                          ; $7264: $bf
    nop                                           ; $7265: $00
    ret nz                                        ; $7266: $c0

    rst $38                                       ; $7267: $ff
    ldh [$df], a                                  ; $7268: $e0 $df
    ldh [rIE], a                                  ; $726a: $e0 $ff
    ldh a, [$ef]                                  ; $726c: $f0 $ef
    add b                                         ; $726e: $80
    ld a, $58                                     ; $726f: $3e $58
    nop                                           ; $7271: $00
    rst $38                                       ; $7272: $ff
    jr nz, @+$01                                  ; $7273: $20 $ff

    ld d, b                                       ; $7275: $50
    rst $38                                       ; $7276: $ff
    and b                                         ; $7277: $a0
    nop                                           ; $7278: $00
    rst $38                                       ; $7279: $ff
    db $10                                        ; $727a: $10
    rst $38                                       ; $727b: $ff
    add hl, bc                                    ; $727c: $09
    rst $38                                       ; $727d: $ff
    ld [bc], a                                    ; $727e: $02
    rst $38                                       ; $727f: $ff
    dec c                                         ; $7280: $0d
    nop                                           ; $7281: $00
    cp $33                                        ; $7282: $fe $33
    db $fc                                        ; $7284: $fc
    nop                                           ; $7285: $00
    rst $38                                       ; $7286: $ff
    ld bc, $02fe                                  ; $7287: $01 $fe $02
    nop                                           ; $728a: $00
    db $fd                                        ; $728b: $fd
    add c                                         ; $728c: $81
    cp $40                                        ; $728d: $fe $40
    rst $38                                       ; $728f: $ff
    and b                                         ; $7290: $a0
    ld a, a                                       ; $7291: $7f
    ret c                                         ; $7292: $d8

    nop                                           ; $7293: $00
    ccf                                           ; $7294: $3f
    and $1f                                       ; $7295: $e6 $1f
    nop                                           ; $7297: $00
    rst $38                                       ; $7298: $ff
    ld [bc], a                                    ; $7299: $02
    db $fd                                        ; $729a: $fd
    ld a, $00                                     ; $729b: $3e $00
    rst $38                                       ; $729d: $ff
    inc bc                                        ; $729e: $03
    rst $28                                       ; $729f: $ef
    rlca                                          ; $72a0: $07
    ldh a, [$0b]                                  ; $72a1: $f0 $0b
    ldh a, [$03]                                  ; $72a3: $f0 $03

jr_0be_72a5:
    nop                                           ; $72a5: $00
    ld hl, sp+$03                                 ; $72a6: $f8 $03
    ld hl, sp-$80                                 ; $72a8: $f8 $80
    ld a, a                                       ; $72aa: $7f
    nop                                           ; $72ab: $00
    rst $38                                       ; $72ac: $ff
    jr jr_0be_72ef                                ; $72ad: $18 $40

    rst $38                                       ; $72af: $ff
    ld c, d                                       ; $72b0: $4a
    nop                                           ; $72b1: $00
    rlca                                          ; $72b2: $07
    ldh [rIF], a                                  ; $72b3: $e0 $0f
    ldh [$1f], a                                  ; $72b5: $e0 $1f
    ld a, [c]                                     ; $72b7: $f2
    ld h, [hl]                                    ; $72b8: $66

jr_0be_72b9:
    dec e                                         ; $72b9: $1d
    ld h, b                                       ; $72ba: $60
    ld [$48a0], sp                                ; $72bb: $08 $a0 $48
    rst $38                                       ; $72be: $ff
    cp $c0                                        ; $72bf: $fe $c0
    ld e, b                                       ; $72c1: $58
    or [hl]                                       ; $72c2: $b6
    ld [$f0fc], sp                                ; $72c3: $08 $fc $f0
    dec d                                         ; $72c6: $15

jr_0be_72c7:
    ld [$2018], sp                                ; $72c7: $08 $18 $20
    db $fc                                        ; $72ca: $fc
    jr c, jr_0be_72a5                             ; $72cb: $38 $d8

    jr jr_0be_72d8                                ; $72cd: $18 $09

    ldh a, [rSC]                                  ; $72cf: $f0 $02
    db $fc                                        ; $72d1: $fc
    and b                                         ; $72d2: $a0
    call nc, $0218                                ; $72d3: $d4 $18 $02
    cp h                                          ; $72d6: $bc
    db $10                                        ; $72d7: $10

jr_0be_72d8:
    ret z                                         ; $72d8: $c8

    rlca                                          ; $72d9: $07
    and b                                         ; $72da: $a0
    rra                                           ; $72db: $1f
    ld b, b                                       ; $72dc: $40
    ld [bc], a                                    ; $72dd: $02
    ccf                                           ; $72de: $3f
    db $10                                        ; $72df: $10
    ld a, a                                       ; $72e0: $7f
    adc b                                         ; $72e1: $88
    ld a, a                                       ; $72e2: $7f
    inc b                                         ; $72e3: $04
    add hl, bc                                    ; $72e4: $09
    ld de, $0003                                  ; $72e5: $11 $03 $00
    db $fc                                        ; $72e8: $fc
    rlca                                          ; $72e9: $07
    db $fc                                        ; $72ea: $fc
    db $10                                        ; $72eb: $10
    add sp, $28                                   ; $72ec: $e8 $28
    rst $30                                       ; $72ee: $f7

jr_0be_72ef:
    inc d                                         ; $72ef: $14
    nop                                           ; $72f0: $00
    ei                                            ; $72f1: $fb
    ld a, [bc]                                    ; $72f2: $0a
    db $fd                                        ; $72f3: $fd
    ret nz                                        ; $72f4: $c0

    rst $38                                       ; $72f5: $ff
    ret nz                                        ; $72f6: $c0

    rst $38                                       ; $72f7: $ff
    pop af                                        ; $72f8: $f1
    nop                                           ; $72f9: $00
    ld e, $ea                                     ; $72fa: $1e $ea
    dec e                                         ; $72fc: $1d
    add hl, hl                                    ; $72fd: $29
    ld e, $50                                     ; $72fe: $1e $50
    adc a                                         ; $7300: $8f
    nop                                           ; $7301: $00
    db $10                                        ; $7302: $10
    rst $20                                       ; $7303: $e7
    ld [$48f7], sp                                ; $7304: $08 $f7 $48
    jr z, jr_0be_7349                             ; $7307: $28 $40

    cp a                                          ; $7309: $bf
    and b                                         ; $730a: $a0
    ld e, a                                       ; $730b: $5f
    ld [$bf41], sp                                ; $730c: $08 $41 $bf
    ld [hl+], a                                   ; $730f: $22
    rst $18                                       ; $7310: $df
    ret nz                                        ; $7311: $c0

    ld [$6f90], sp                                ; $7312: $08 $90 $6f
    add hl, hl                                    ; $7315: $29
    inc b                                         ; $7316: $04
    rst $10                                       ; $7317: $d7
    nop                                           ; $7318: $00
    rst $38                                       ; $7319: $ff
    add d                                         ; $731a: $82
    db $fd                                        ; $731b: $fd
    ret nz                                        ; $731c: $c0

    jr z, jr_0be_72c7                             ; $731d: $28 $a8

    ld d, a                                       ; $731f: $57
    jr z, @+$42                                   ; $7320: $28 $40

    cp a                                          ; $7322: $bf
    ld [hl+], a                                   ; $7323: $22
    ld [$e001], sp                                ; $7324: $08 $01 $e0
    jr nz, jr_0be_72b9                            ; $7327: $20 $90

    rst $38                                       ; $7329: $ff
    jr z, jr_0be_7330                             ; $732a: $28 $04

    rst $38                                       ; $732c: $ff
    dec b                                         ; $732d: $05
    cp $80                                        ; $732e: $fe $80

jr_0be_7330:
    rst $38                                       ; $7330: $ff
    ldh [$28], a                                  ; $7331: $e0 $28
    add hl, bc                                    ; $7333: $09
    ldh a, [rP1]                                  ; $7334: $f0 $00

jr_0be_7336:
    ld b, d                                       ; $7336: $42
    db $fc                                        ; $7337: $fc
    ld hl, $88fe                                  ; $7338: $21 $fe $88
    rst $38                                       ; $733b: $ff
    inc b                                         ; $733c: $04
    rst $38                                       ; $733d: $ff
    ld b, b                                       ; $733e: $40
    ld a, [bc]                                    ; $733f: $0a
    ld a, c                                       ; $7340: $79
    ld de, $07c8                                  ; $7341: $11 $c8 $07
    xor d                                         ; $7344: $aa
    dec d                                         ; $7345: $15
    ld b, l                                       ; $7346: $45
    ld a, [hl-]                                   ; $7347: $3a
    ld a, [bc]                                    ; $7348: $0a

jr_0be_7349:
    ld [bc], a                                    ; $7349: $02
    ld a, l                                       ; $734a: $7d
    add c                                         ; $734b: $81
    ld a, [hl]                                    ; $734c: $7e

jr_0be_734d:
    ld e, h                                       ; $734d: $5c
    ld de, $a0ff                                  ; $734e: $11 $ff $a0
    ld [$0c41], sp                                ; $7351: $08 $41 $0c
    cp [hl]                                       ; $7354: $be
    jr nz, jr_0be_7336                            ; $7355: $20 $df

    db $10                                        ; $7357: $10
    ld a, [hl-]                                   ; $7358: $3a
    ld bc, $18a0                                  ; $7359: $01 $a0 $18
    and d                                         ; $735c: $a2
    rra                                           ; $735d: $1f
    nop                                           ; $735e: $00
    ld d, c                                       ; $735f: $51
    cpl                                           ; $7360: $2f
    ld [$8477], sp                                ; $7361: $08 $77 $84
    ld a, e                                       ; $7364: $7b
    ld a, [bc]                                    ; $7365: $0a
    push af                                       ; $7366: $f5
    add b                                         ; $7367: $80
    xor d                                         ; $7368: $aa
    add hl, bc                                    ; $7369: $09
    ld d, b                                       ; $736a: $50
    xor a                                         ; $736b: $af
    jr nz, jr_0be_734d                            ; $736c: $20 $df

    add hl, bc                                    ; $736e: $09
    rst $30                                       ; $736f: $f7
    ld bc, $ff00                                  ; $7370: $01 $00 $ff
    ld a, [bc]                                    ; $7373: $0a
    rst $30                                       ; $7374: $f7
    inc b                                         ; $7375: $04
    rst $38                                       ; $7376: $ff
    add hl, bc                                    ; $7377: $09
    cp $13                                        ; $7378: $fe $13
    nop                                           ; $737a: $00
    db $fc                                        ; $737b: $fc
    inc bc                                        ; $737c: $03
    rst $38                                       ; $737d: $ff
    inc hl                                        ; $737e: $23
    rst $18                                       ; $737f: $df
    rla                                           ; $7380: $17
    db $eb                                        ; $7381: $eb
    dec bc                                        ; $7382: $0b
    nop                                           ; $7383: $00
    rst $30                                       ; $7384: $f7
    add a                                         ; $7385: $87
    ei                                            ; $7386: $fb
    ld b, e                                       ; $7387: $43
    rst $38                                       ; $7388: $ff
    daa                                           ; $7389: $27
    ei                                            ; $738a: $fb
    sub e                                         ; $738b: $93
    nop                                           ; $738c: $00
    ld a, a                                       ; $738d: $7f
    ld a, a                                       ; $738e: $7f
    rst $38                                       ; $738f: $ff
    ld a, a                                       ; $7390: $7f
    cp $7e                                        ; $7391: $fe $7e
    rst $38                                       ; $7393: $ff
    ld a, [hl]                                    ; $7394: $7e
    nop                                           ; $7395: $00
    db $fd                                        ; $7396: $fd
    ld a, [hl]                                    ; $7397: $7e
    ld sp, hl                                     ; $7398: $f9
    ld a, b                                       ; $7399: $78
    rst $30                                       ; $739a: $f7
    ld [hl], b                                    ; $739b: $70
    rst $28                                       ; $739c: $ef
    ld h, b                                       ; $739d: $60
    adc h                                         ; $739e: $8c
    db $dd                                        ; $739f: $dd
    add hl, hl                                    ; $73a0: $29
    ld a, a                                       ; $73a1: $7f
    rst $38                                       ; $73a2: $ff
    ccf                                           ; $73a3: $3f
    db $f4                                        ; $73a4: $f4

jr_0be_73a5:
    ld de, $51ed                                  ; $73a5: $11 $ed $51
    cp $fd                                        ; $73a8: $fe $fd
    ld d, b                                       ; $73aa: $50
    db $fc                                        ; $73ab: $fc
    rlca                                          ; $73ac: $07
    db $10                                        ; $73ad: $10
    cp $0a                                        ; $73ae: $fe $0a
    nop                                           ; $73b0: $00
    cp $f9                                        ; $73b1: $fe $f9
    ld hl, sp-$09                                 ; $73b3: $f8 $f7
    nop                                           ; $73b5: $00
    ldh a, [$ef]                                  ; $73b6: $f0 $ef
    ldh [rIE], a                                  ; $73b8: $e0 $ff
    add a                                         ; $73ba: $87
    ld h, b                                       ; $73bb: $60
    dec bc                                        ; $73bc: $0b
    ldh a, [rP1]                                  ; $73bd: $f0 $00
    and l                                         ; $73bf: $a5
    ld e, b                                       ; $73c0: $58
    ld de, $0aec                                  ; $73c1: $11 $ec $0a
    db $f4                                        ; $73c4: $f4
    jr nz, jr_0be_73a5                            ; $73c5: $20 $de

    nop                                           ; $73c7: $00
    dec d                                         ; $73c8: $15
    ld [$ff00], a                                 ; $73c9: $ea $00 $ff
    jp $a30f                                      ; $73cc: $c3 $0f $a3


    rra                                           ; $73cf: $1f
    nop                                           ; $73d0: $00
    ld b, e                                       ; $73d1: $43
    ccf                                           ; $73d2: $3f
    inc bc                                        ; $73d3: $03
    ld a, a                                       ; $73d4: $7f
    and e                                         ; $73d5: $a3
    ld e, a                                       ; $73d6: $5f
    inc de                                        ; $73d7: $13
    rst $28                                       ; $73d8: $ef
    jr jr_0be_73de                                ; $73d9: $18 $03

    rst $38                                       ; $73db: $ff
    inc bc                                        ; $73dc: $03
    ld l, a                                       ; $73dd: $6f

jr_0be_73de:
    ld bc, $5802                                  ; $73de: $01 $02 $58
    ld h, h                                       ; $73e1: $64
    ei                                            ; $73e2: $fb
    ld l, h                                       ; $73e3: $6c
    nop                                           ; $73e4: $00
    rst $38                                       ; $73e5: $ff
    ld a, h                                       ; $73e6: $7c
    rst $28                                       ; $73e7: $ef
    ld a, [hl]                                    ; $73e8: $7e
    db $fd                                        ; $73e9: $fd
    ld a, h                                       ; $73ea: $7c
    rst $38                                       ; $73eb: $ff
    ld a, l                                       ; $73ec: $7d
    nop                                           ; $73ed: $00
    rst $38                                       ; $73ee: $ff
    ld a, [hl]                                    ; $73ef: $7e
    rst $38                                       ; $73f0: $ff
    ld a, h                                       ; $73f1: $7c
    rst $38                                       ; $73f2: $ff
    ld c, a                                       ; $73f3: $4f
    cp a                                          ; $73f4: $bf
    ld l, a                                       ; $73f5: $6f
    db $10                                        ; $73f6: $10
    rst $38                                       ; $73f7: $ff
    ld a, a                                       ; $73f8: $7f
    rst $28                                       ; $73f9: $ef
    ld [hl], b                                    ; $73fa: $70
    nop                                           ; $73fb: $00
    rst $38                                       ; $73fc: $ff
    ld a, a                                       ; $73fd: $7f
    cp a                                          ; $73fe: $bf
    cp a                                          ; $73ff: $bf
    nop                                           ; $7400: $00
    ld e, a                                       ; $7401: $5f
    sbc a                                         ; $7402: $9f
    cpl                                           ; $7403: $2f
    db $e4                                        ; $7404: $e4
    ei                                            ; $7405: $fb
    db $ec                                        ; $7406: $ec
    rst $38                                       ; $7407: $ff
    db $fc                                        ; $7408: $fc
    ld a, [hl]                                    ; $7409: $7e
    rst $28                                       ; $740a: $ef
    ld l, d                                       ; $740b: $6a
    ld [$0196], sp                                ; $740c: $08 $96 $01
    xor [hl]                                      ; $740f: $ae
    ld bc, $2820                                  ; $7410: $01 $20 $28
    xor b                                         ; $7413: $a8
    nop                                           ; $7414: $00
    sub [hl]                                      ; $7415: $96
    ld [$acff], sp                                ; $7416: $08 $ff $ac
    ld d, [hl]                                    ; $7419: $56
    add hl, bc                                    ; $741a: $09
    ld bc, $0002                                  ; $741b: $01 $02 $00
    ld [bc], a                                    ; $741e: $02
    ld [de], a                                    ; $741f: $12
    ld bc, $08d0                                  ; $7420: $01 $d0 $08
    dec hl                                        ; $7423: $2b
    rst $10                                       ; $7424: $d7
    add b                                         ; $7425: $80
    adc $08                                       ; $7426: $ce $08
    rlca                                          ; $7428: $07
    ei                                            ; $7429: $fb
    add e                                         ; $742a: $83
    rst $38                                       ; $742b: $ff
    ld b, a                                       ; $742c: $47
    ei                                            ; $742d: $fb
    inc hl                                        ; $742e: $23

jr_0be_742f:
    ld [hl], $ff                                  ; $742f: $36 $ff
    sub e                                         ; $7431: $93
    ld c, b                                       ; $7432: $48
    nop                                           ; $7433: $00
    or b                                          ; $7434: $b0
    ld c, d                                       ; $7435: $4a
    ld [bc], a                                    ; $7436: $02
    ret c                                         ; $7437: $d8

    ld sp, $1ab6                                  ; $7438: $31 $b6 $1a
    rrca                                          ; $743b: $0f
    ld b, d                                       ; $743c: $42
    di                                            ; $743d: $f3
    and b                                         ; $743e: $a0
    ld c, d                                       ; $743f: $4a
    inc bc                                        ; $7440: $03
    db $fd                                        ; $7441: $fd
    rra                                           ; $7442: $1f
    db $ec                                        ; $7443: $ec
    call z, Call_0be_7f00                         ; $7444: $cc $00 $7f
    nop                                           ; $7447: $00
    ld a, [hl]                                    ; $7448: $7e
    cp a                                          ; $7449: $bf
    ld a, $df                                     ; $744a: $3e $df
    ld e, $ef                                     ; $744c: $1e $ef
    rrca                                          ; $744e: $0f
    or $00                                        ; $744f: $f6 $00
    db $fc                                        ; $7451: $fc
    di                                            ; $7452: $f3
    nop                                           ; $7453: $00
    rst $38                                       ; $7454: $ff
    ld a, b                                       ; $7455: $78
    rst $38                                       ; $7456: $ff
    ld [hl], b                                    ; $7457: $70
    rst $38                                       ; $7458: $ff
    ld d, b                                       ; $7459: $50
    ld h, b                                       ; $745a: $60
    ld a, [hl]                                    ; $745b: $7e
    ld bc, $0480                                  ; $745c: $01 $80 $04
    ld [hl+], a                                   ; $745f: $22
    rst $08                                       ; $7460: $cf
    rla                                           ; $7461: $17
    rst $10                                       ; $7462: $d7
    dec bc                                        ; $7463: $0b
    add b                                         ; $7464: $80
    call nc, Call_000_0500                        ; $7465: $d4 $00 $05
    and l                                         ; $7468: $a5
    ld b, e                                       ; $7469: $43
    or c                                          ; $746a: $b1
    ld b, d                                       ; $746b: $42
    jr c, jr_0be_742f                             ; $746c: $38 $c1

    nop                                           ; $746e: $00
    ld a, [bc]                                    ; $746f: $0a
    pop af                                        ; $7470: $f1
    rlca                                          ; $7471: $07
    ldh [$0b], a                                  ; $7472: $e0 $0b
    ldh a, [rTIMA]                                ; $7474: $f0 $05
    ld hl, sp+$03                                 ; $7476: $f8 $03
    ld b, c                                       ; $7478: $41
    db $fc                                        ; $7479: $fc
    and d                                         ; $747a: $a2
    db $fc                                        ; $747b: $fc
    ld d, b                                       ; $747c: $50
    cp $98                                        ; $747d: $fe $98
    add hl, bc                                    ; $747f: $09
    ldh a, [$28]                                  ; $7480: $f0 $28
    ld bc, $7f87                                  ; $7482: $01 $87 $7f
    inc bc                                        ; $7485: $03
    rst $38                                       ; $7486: $ff
    rlca                                          ; $7487: $07
    rst $38                                       ; $7488: $ff
    dec bc                                        ; $7489: $0b
    and [hl]                                      ; $748a: $a6
    ld [bc], a                                    ; $748b: $02
    add b                                         ; $748c: $80
    ld [bc], a                                    ; $748d: $02
    ld e, b                                       ; $748e: $58
    and b                                         ; $748f: $a0
    ld e, a                                       ; $7490: $5f
    nop                                           ; $7491: $00
    add a                                         ; $7492: $87
    and d                                         ; $7493: $a2
    ld bc, $00c0                                  ; $7494: $01 $c0 $00
    nop                                           ; $7497: $00
    ret z                                         ; $7498: $c8

    nop                                           ; $7499: $00
    add d                                         ; $749a: $82
    nop                                           ; $749b: $00
    push hl                                       ; $749c: $e5
    nop                                           ; $749d: $00
    ld d, d                                       ; $749e: $52
    ld bc, $ff80                                  ; $749f: $01 $80 $ff
    ld a, [hl]                                    ; $74a2: $7e
    rra                                           ; $74a3: $1f
    rst $28                                       ; $74a4: $ef
    rlca                                          ; $74a5: $07
    ei                                            ; $74a6: $fb
    ld h, d                                       ; $74a7: $62
    inc bc                                        ; $74a8: $03
    nop                                           ; $74a9: $00
    ld a, a                                       ; $74aa: $7f
    nop                                           ; $74ab: $00
    ccf                                           ; $74ac: $3f
    ld b, b                                       ; $74ad: $40
    rra                                           ; $74ae: $1f
    db $10                                        ; $74af: $10
    adc a                                         ; $74b0: $8f
    ld a, b                                       ; $74b1: $78
    inc b                                         ; $74b2: $04
    and a                                         ; $74b3: $a7
    db $e4                                        ; $74b4: $e4
    sbc e                                         ; $74b5: $9b
    cp [hl]                                       ; $74b6: $be
    ld b, c                                       ; $74b7: $41
    ld [hl], d                                    ; $74b8: $72
    dec hl                                        ; $74b9: $2b
    rrca                                          ; $74ba: $0f
    ldh a, [rNR41]                                ; $74bb: $f0 $20
    inc l                                         ; $74bd: $2c
    db $d3                                        ; $74be: $d3
    ld a, [hl]                                    ; $74bf: $7e
    dec bc                                        ; $74c0: $0b
    ld de, $04e0                                  ; $74c1: $11 $e0 $04
    ld hl, sp+$02                                 ; $74c4: $f8 $02
    add h                                         ; $74c6: $84
    db $ec                                        ; $74c7: $ec
    ld [bc], a                                    ; $74c8: $02
    nop                                           ; $74c9: $00
    rst $38                                       ; $74ca: $ff
    inc h                                         ; $74cb: $24
    db $db                                        ; $74cc: $db
    adc h                                         ; $74cd: $8c
    ld a, [de]                                    ; $74ce: $1a
    nop                                           ; $74cf: $00
    rra                                           ; $74d0: $1f
    nop                                           ; $74d1: $00
    nop                                           ; $74d2: $00
    rlca                                          ; $74d3: $07
    add b                                         ; $74d4: $80
    ld bc, $c020                                  ; $74d5: $01 $20 $c0
    dec c                                         ; $74d8: $0d
    ldh a, [$91]                                  ; $74d9: $f0 $91
    ld h, d                                       ; $74db: $62
    dec bc                                        ; $74dc: $0b
    ld b, $f9                                     ; $74dd: $06 $f9
    ld l, b                                       ; $74df: $68
    inc hl                                        ; $74e0: $23
    rra                                           ; $74e1: $1f
    db $e4                                        ; $74e2: $e4
    ld a, e                                       ; $74e3: $7b
    ld d, b                                       ; $74e4: $50
    ld de, $bd00                                  ; $74e5: $11 $00 $bd
    inc a                                         ; $74e8: $3c
    rst $18                                       ; $74e9: $df
    inc e                                         ; $74ea: $1c
    rst $28                                       ; $74eb: $ef
    ld l, $d5                                     ; $74ec: $2e $d5
    rla                                           ; $74ee: $17
    ld [hl], $ea                                  ; $74ef: $36 $ea
    ld b, h                                       ; $74f1: $44
    ld a, $08                                     ; $74f2: $3e $08
    jr nz, jr_0be_7537                            ; $74f4: $20 $41

    rlca                                          ; $74f6: $07
    add h                                         ; $74f7: $84
    ld bc, $0988                                  ; $74f8: $01 $88 $09
    sub a                                         ; $74fb: $97
    db $10                                        ; $74fc: $10
    db $eb                                        ; $74fd: $eb
    ld c, e                                       ; $74fe: $4b
    rst $30                                       ; $74ff: $f7
    ldh a, [$09]                                  ; $7500: $f0 $09
    ld [bc], a                                    ; $7502: $02
    rst $38                                       ; $7503: $ff
    add e                                         ; $7504: $83
    ld a, [hl]                                    ; $7505: $7e
    nop                                           ; $7506: $00
    jp $e3bd                                      ; $7507: $c3 $bd $e3


    db $dd                                        ; $750a: $dd
    pop af                                        ; $750b: $f1
    rst $28                                       ; $750c: $ef
    ld sp, hl                                     ; $750d: $f9
    or $80                                        ; $750e: $f6 $80
    or b                                          ; $7510: $b0
    dec bc                                        ; $7511: $0b
    ld e, l                                       ; $7512: $5d
    add b                                         ; $7513: $80
    ld [hl], h                                    ; $7514: $74
    add e                                         ; $7515: $83
    ld a, h                                       ; $7516: $7c
    add c                                         ; $7517: $81
    ld a, a                                       ; $7518: $7f
    nop                                           ; $7519: $00
    add b                                         ; $751a: $80
    ld a, $c0                                     ; $751b: $3e $c0
    sbc a                                         ; $751d: $9f
    ld h, b                                       ; $751e: $60
    add e                                         ; $751f: $83
    db $fc                                        ; $7520: $fc
    jp nz, $3d00                                  ; $7521: $c2 $00 $3d

    pop bc                                        ; $7524: $c1
    ld a, $70                                     ; $7525: $3e $70
    nop                                           ; $7527: $00
    inc d                                         ; $7528: $14
    add b                                         ; $7529: $80
    xor d                                         ; $752a: $aa
    jr nz, jr_0be_752d                            ; $752b: $20 $00

jr_0be_752d:
    ret nc                                        ; $752d: $d0

    xor [hl]                                      ; $752e: $ae
    nop                                           ; $752f: $00
    pop de                                        ; $7530: $d1
    nop                                           ; $7531: $00
    adc [hl]                                      ; $7532: $8e
    ld bc, $02a8                                  ; $7533: $01 $a8 $02
    nop                                           ; $7536: $00

jr_0be_7537:
    ld [bc], a                                    ; $7537: $02
    nop                                           ; $7538: $00
    ld d, b                                       ; $7539: $50
    nop                                           ; $753a: $00
    inc b                                         ; $753b: $04
    inc b                                         ; $753c: $04
    nop                                           ; $753d: $00
    ld hl, sp+$00                                 ; $753e: $f8 $00
    nop                                           ; $7540: $00
    dec c                                         ; $7541: $0d
    ldh a, [rNR30]                                ; $7542: $f0 $1a
    ldh [rLCDC], a                                ; $7544: $e0 $40
    ccf                                           ; $7546: $3f
    jr jr_0be_7549                                ; $7547: $18 $00

jr_0be_7549:
    rlca                                          ; $7549: $07
    dec bc                                        ; $754a: $0b
    nop                                           ; $754b: $00
    nop                                           ; $754c: $00
    nop                                           ; $754d: $00
    stop                                          ; $754e: $10 $00
    add e                                         ; $7550: $83
    nop                                           ; $7551: $00
    nop                                           ; $7552: $00
    ld bc, $5206                                  ; $7553: $01 $06 $52
    dec c                                         ; $7556: $0d
    db $10                                        ; $7557: $10
    ldh [rP1], a                                  ; $7558: $e0 $00
    nop                                           ; $755a: $00
    ldh a, [rDIV]                                 ; $755b: $f0 $04
    ld hl, sp-$80                                 ; $755d: $f8 $80
    ld a, h                                       ; $755f: $7c
    ld h, b                                       ; $7560: $60
    rra                                           ; $7561: $1f
    stop                                          ; $7562: $10 $00
    rlca                                          ; $7564: $07
    add b                                         ; $7565: $80
    inc bc                                        ; $7566: $03
    ld a, [$0001]                                 ; $7567: $fa $01 $00
    rrca                                          ; $756a: $0f
    nop                                           ; $756b: $00
    nop                                           ; $756c: $00
    rlca                                          ; $756d: $07
    inc h                                         ; $756e: $24
    inc bc                                        ; $756f: $03
    nop                                           ; $7570: $00
    inc bc                                        ; $7571: $03
    jr nc, @-$3d                                  ; $7572: $30 $c1

    stop                                          ; $7574: $10 $00
    ldh [$0a], a                                  ; $7576: $e0 $0a
    ldh a, [$08]                                  ; $7578: $f0 $08
    ldh a, [rNR31]                                ; $757a: $f0 $1b
    push hl                                       ; $757c: $e5
    add hl, hl                                    ; $757d: $29
    nop                                           ; $757e: $00
    rst $00                                       ; $757f: $c7
    ld c, l                                       ; $7580: $4d
    sub d                                         ; $7581: $92
    ld h, b                                       ; $7582: $60
    sbc a                                         ; $7583: $9f
    ld d, b                                       ; $7584: $50
    xor a                                         ; $7585: $af
    add h                                         ; $7586: $84
    ld b, $79                                     ; $7587: $06 $79
    nop                                           ; $7589: $00

Jump_0be_758a:
    dec sp                                        ; $758a: $3b
    ld [$3e17], sp                                ; $758b: $08 $17 $3e
    inc [hl]                                      ; $758e: $34
    jp nc, Jump_0be_7f11                          ; $758f: $d2 $11 $7f

    ld b, b                                       ; $7592: $40
    cp a                                          ; $7593: $bf
    ld d, b                                       ; $7594: $50
    add hl, de                                    ; $7595: $19
    add c                                         ; $7596: $81
    ld a, h                                       ; $7597: $7c
    ld b, d                                       ; $7598: $42
    cp h                                          ; $7599: $bc
    and b                                         ; $759a: $a0
    ld e, [hl]                                    ; $759b: $5e
    dec bc                                        ; $759c: $0b
    ld b, c                                       ; $759d: $41
    cp [hl]                                       ; $759e: $be
    and b                                         ; $759f: $a0
    ld e, a                                       ; $75a0: $5f
    ld b, b                                       ; $75a1: $40
    ld a, [hl+]                                   ; $75a2: $2a
    add e                                         ; $75a3: $83
    ld d, b                                       ; $75a4: $50
    ld bc, $0a40                                  ; $75a5: $01 $40 $0a
    nop                                           ; $75a8: $00
    ld b, c                                       ; $75a9: $41
    cp $c1                                        ; $75aa: $fe $c1
    ld a, [hl]                                    ; $75ac: $7e
    jp nz, $ccfc                                  ; $75ad: $c2 $fc $cc

    ldh a, [rP1]                                  ; $75b0: $f0 $00
    ret                                           ; $75b2: $c9


    ldh a, [$cc]                                  ; $75b3: $f0 $cc
    ldh a, [$db]                                  ; $75b5: $f0 $db
    ldh [$cc], a                                  ; $75b7: $e0 $cc
    ldh a, [rP1]                                  ; $75b9: $f0 $00
    jp z, $9601                                   ; $75bb: $ca $01 $96

    ld bc, $0768                                  ; $75be: $01 $68 $07
    cp b                                          ; $75c1: $b8
    rlca                                          ; $75c2: $07
    nop                                           ; $75c3: $00
    jr nc, jr_0be_75d5                            ; $75c4: $30 $0f

    and b                                         ; $75c6: $a0
    rra                                           ; $75c7: $1f
    nop                                           ; $75c8: $00
    ld a, a                                       ; $75c9: $7f
    add b                                         ; $75ca: $80
    ld a, a                                       ; $75cb: $7f
    inc bc                                        ; $75cc: $03
    inc c                                         ; $75cd: $0c
    ldh a, [rTMA]                                 ; $75ce: $f0 $06
    ld hl, sp+$07                                 ; $75d0: $f8 $07
    ld hl, sp-$7a                                 ; $75d2: $f8 $86
    inc bc                                        ; $75d4: $03

jr_0be_75d5:
    inc b                                         ; $75d5: $04
    nop                                           ; $75d6: $00
    ld b, b                                       ; $75d7: $40
    inc bc                                        ; $75d8: $03
    xor d                                         ; $75d9: $aa
    inc bc                                        ; $75da: $03
    ld d, $09                                     ; $75db: $16 $09
    add b                                         ; $75dd: $80
    rlca                                          ; $75de: $07
    nop                                           ; $75df: $00
    inc c                                         ; $75e0: $0c
    nop                                           ; $75e1: $00
    add [hl]                                      ; $75e2: $86
    add hl, bc                                    ; $75e3: $09
    ld b, b                                       ; $75e4: $40
    dec c                                         ; $75e5: $0d
    and b                                         ; $75e6: $a0
    ld b, $a0                                     ; $75e7: $06 $a0
    inc bc                                        ; $75e9: $03
    nop                                           ; $75ea: $00
    jp nc, Jump_000_0601                          ; $75eb: $d2 $01 $06

    ld sp, hl                                     ; $75ee: $f9
    sub b                                         ; $75ef: $90

jr_0be_75f0:
    cpl                                           ; $75f0: $2f
    inc l                                         ; $75f1: $2c
    db $d3                                        ; $75f2: $d3
    nop                                           ; $75f3: $00
    ld b, [hl]                                    ; $75f4: $46
    sbc c                                         ; $75f5: $99
    ld [bc], a                                    ; $75f6: $02

Jump_0be_75f7:
    db $fd                                        ; $75f7: $fd
    ld a, [bc]                                    ; $75f8: $0a
    pop af                                        ; $75f9: $f1
    nop                                           ; $75fa: $00
    ld h, a                                       ; $75fb: $67
    jr c, jr_0be_761e                             ; $75fc: $38 $20

    rst $18                                       ; $75fe: $df
    ld e, b                                       ; $75ff: $58
    add hl, bc                                    ; $7600: $09
    jr z, jr_0be_760b                             ; $7601: $28 $08

    db $e4                                        ; $7603: $e4
    inc l                                         ; $7604: $2c
    sub b                                         ; $7605: $90
    rrca                                          ; $7606: $0f
    nop                                           ; $7607: $00
    nop                                           ; $7608: $00
    rrca                                          ; $7609: $0f
    inc b                                         ; $760a: $04

jr_0be_760b:
    inc bc                                        ; $760b: $03
    ld b, d                                       ; $760c: $42
    add c                                         ; $760d: $81
    ld bc, $18e0                                  ; $760e: $01 $e0 $18
    ld b, b                                       ; $7611: $40
    ldh [$e3], a                                  ; $7612: $e0 $e3
    nop                                           ; $7614: $00
    db $fc                                        ; $7615: $fc
    cp a                                          ; $7616: $bf
    ld e, a                                       ; $7617: $5f
    adc a                                         ; $7618: $8f
    ld [hl], a                                    ; $7619: $77
    jp $3d00                                      ; $761a: $c3 $00 $3d


    ld b, b                                       ; $761d: $40

jr_0be_761e:
    sbc a                                         ; $761e: $9f
    jr nc, jr_0be_75f0                            ; $761f: $30 $cf

    sbc b                                         ; $7621: $98
    ld h, a                                       ; $7622: $67
    ld c, b                                       ; $7623: $48
    db $10                                        ; $7624: $10
    scf                                           ; $7625: $37
    jr nz, jr_0be_7647                            ; $7626: $20 $1f

    sub b                                         ; $7628: $90
    ld [hl+], a                                   ; $7629: $22
    ld a, l                                       ; $762a: $7d
    inc a                                         ; $762b: $3c
    rst $18                                       ; $762c: $df
    ld c, $06                                     ; $762d: $0e $06
    rst $30                                       ; $762f: $f7
    db $e3                                        ; $7630: $e3
    dec e                                         ; $7631: $1d
    cp h                                          ; $7632: $bc
    ld b, e                                       ; $7633: $43
    sub b                                         ; $7634: $90
    ld d, d                                       ; $7635: $52
    call c, $de04                                 ; $7636: $dc $04 $de
    nop                                           ; $7639: $00
    ldh [$cf], a                                  ; $763a: $e0 $cf
    ldh a, [$cd]                                  ; $763c: $f0 $cd
    ldh a, [$e7]                                  ; $763e: $f0 $e7
    ret c                                         ; $7640: $d8

    rst $20                                       ; $7641: $e7
    inc bc                                        ; $7642: $03
    ret c                                         ; $7643: $d8

    pop af                                        ; $7644: $f1
    xor $f1                                       ; $7645: $ee $f1

jr_0be_7647:
    xor $f0                                       ; $7647: $ee $f0
    adc $0c                                       ; $7649: $ce $0c
    sub [hl]                                      ; $764b: $96
    nop                                           ; $764c: $00
    nop                                           ; $764d: $00
    ld b, b                                       ; $764e: $40
    ccf                                           ; $764f: $3f
    and b                                         ; $7650: $a0
    rra                                           ; $7651: $1f
    ret nc                                        ; $7652: $d0

    rrca                                          ; $7653: $0f
    ld hl, sp+$07                                 ; $7654: $f8 $07
    ld c, $7c                                     ; $7656: $0e $7c
    add e                                         ; $7658: $83
    ld bc, $12fe                                  ; $7659: $01 $fe $12
    dec c                                         ; $765c: $0d
    sbc h                                         ; $765d: $9c
    ld [$08a6], sp                                ; $765e: $08 $a6 $08
    dec b                                         ; $7661: $05
    nop                                           ; $7662: $00
    ld a, [$00a4]                                 ; $7663: $fa $a4 $00
    ldh a, [rP1]                                  ; $7666: $f0 $00
    call $f200                                    ; $7668: $cd $00 $f2
    nop                                           ; $766b: $00
    nop                                           ; $766c: $00
    ld e, [hl]                                    ; $766d: $5e
    nop                                           ; $766e: $00
    and l                                         ; $766f: $a5
    nop                                           ; $7670: $00
    jp hl                                         ; $7671: $e9


    nop                                           ; $7672: $00
    call nc, RST_00                               ; $7673: $d4 $00 $00
    nop                                           ; $7676: $00
    rlca                                          ; $7677: $07
    jr z, jr_0be_768d                             ; $7678: $28 $13

    nop                                           ; $767a: $00
    dec c                                         ; $767b: $0d
    ld b, h                                       ; $767c: $44
    nop                                           ; $767d: $00
    ld [bc], a                                    ; $767e: $02
    add b                                         ; $767f: $80
    ld bc, $0068                                  ; $7680: $01 $68 $00
    jp c, Jump_000_2500                           ; $7683: $da $00 $25

    ld b, b                                       ; $7686: $40
    nop                                           ; $7687: $00
    ld a, h                                       ; $7688: $7c
    dec l                                         ; $7689: $2d
    ret nz                                        ; $768a: $c0

    rrca                                          ; $768b: $0f
    db $10                                        ; $768c: $10

jr_0be_768d:
    rlca                                          ; $768d: $07
    ld b, d                                       ; $768e: $42
    ld bc, $aa02                                  ; $768f: $01 $02 $aa
    ld bc, $7e80                                  ; $7692: $01 $80 $7e
    ld c, b                                       ; $7695: $48
    or a                                          ; $7696: $b7
    inc h                                         ; $7697: $24
    dec c                                         ; $7698: $0d
    ld [bc], a                                    ; $7699: $02
    ld b, b                                       ; $769a: $40
    db $fd                                        ; $769b: $fd
    sub [hl]                                      ; $769c: $96
    dec e                                         ; $769d: $1d
    adc h                                         ; $769e: $8c
    inc bc                                        ; $769f: $03
    dec b                                         ; $76a0: $05
    nop                                           ; $76a1: $00
    ld de, $0080                                  ; $76a2: $11 $80 $00
    nop                                           ; $76a5: $00
    add a                                         ; $76a6: $87
    ld [de], a                                    ; $76a7: $12
    adc l                                         ; $76a8: $8d
    ld h, b                                       ; $76a9: $60
    sub e                                         ; $76aa: $93
    nop                                           ; $76ab: $00
    cp a                                          ; $76ac: $bf
    nop                                           ; $76ad: $00
    ld h, b                                       ; $76ae: $60
    sbc a                                         ; $76af: $9f
    ld a, $81                                     ; $76b0: $3e $81
    rra                                           ; $76b2: $1f
    ret nz                                        ; $76b3: $c0

    ld l, $c1                                     ; $76b4: $2e $c1
    nop                                           ; $76b6: $00
    ld [hl], $c1                                  ; $76b7: $36 $c1
    ld a, [bc]                                    ; $76b9: $0a
    pop hl                                        ; $76ba: $e1
    rrca                                          ; $76bb: $0f
    ldh [rTIMA], a                                ; $76bc: $e0 $05
    ldh [rP1], a                                  ; $76be: $e0 $00
    ld e, $c0                                     ; $76c0: $1e $c0
    ccf                                           ; $76c2: $3f
    rst $18                                       ; $76c3: $df
    rrca                                          ; $76c4: $0f
    rst $30                                       ; $76c5: $f7
    inc bc                                        ; $76c6: $03

jr_0be_76c7:
    db $fd                                        ; $76c7: $fd
    nop                                           ; $76c8: $00
    ld de, $c0ee                                  ; $76c9: $11 $ee $c0
    ccf                                           ; $76cc: $3f
    db $e4                                        ; $76cd: $e4
    dec de                                        ; $76ce: $1b
    cp $01                                        ; $76cf: $fe $01
    jr nz, jr_0be_76c7                            ; $76d1: $20 $f4

    dec bc                                        ; $76d3: $0b
    or b                                          ; $76d4: $b0
    inc sp                                        ; $76d5: $33
    ld a, c                                       ; $76d6: $79
    ld a, b                                       ; $76d7: $78
    or a                                          ; $76d8: $b7
    db $10                                        ; $76d9: $10
    rst $38                                       ; $76da: $ff
    ld b, b                                       ; $76db: $40
    ld [$04f0], sp                                ; $76dc: $08 $f0 $04
    ld hl, sp+$77                                 ; $76df: $f8 $77
    ld a, h                                       ; $76e1: $7c
    cp e                                          ; $76e2: $bb
    inc a                                         ; $76e3: $3c
    rst $18                                       ; $76e4: $df
    ld [$ed1e], sp                                ; $76e5: $08 $1e $ed
    rrca                                          ; $76e8: $0f
    or $d0                                        ; $76e9: $f6 $d0
    dec c                                         ; $76eb: $0d
    call nc, $8003                                ; $76ec: $d4 $03 $80
    nop                                           ; $76ef: $00
    ld bc, $8059                                  ; $76f0: $01 $59 $80
    cpl                                           ; $76f3: $2f
    ret nz                                        ; $76f4: $c0

    rlca                                          ; $76f5: $07
    ldh a, [rTAC]                                 ; $76f6: $f0 $07
    ld [$81f8], sp                                ; $76f8: $08 $f8 $81
    ld a, [hl]                                    ; $76fb: $7e
    ret nz                                        ; $76fc: $c0

    db $fc                                        ; $76fd: $fc
    ld d, l                                       ; $76fe: $55
    ret nz                                        ; $76ff: $c0

    ccf                                           ; $7700: $3f
    jr nz, jr_0be_7703                            ; $7701: $20 $00

jr_0be_7703:
    rst $18                                       ; $7703: $df
    ld sp, hl                                     ; $7704: $f9
    nop                                           ; $7705: $00
    ld a, [hl]                                    ; $7706: $7e
    add b                                         ; $7707: $80
    ccf                                           ; $7708: $3f
    ret nz                                        ; $7709: $c0

    rra                                           ; $770a: $1f
    nop                                           ; $770b: $00
    ldh [$1f], a                                  ; $770c: $e0 $1f
    ldh [rIF], a                                  ; $770e: $e0 $0f
    ldh a, [rP1]                                  ; $7710: $f0 $00
    rst $38                                       ; $7712: $ff
    inc b                                         ; $7713: $04
    nop                                           ; $7714: $00
    ei                                            ; $7715: $fb
    ld d, d                                       ; $7716: $52
    nop                                           ; $7717: $00
    xor c                                         ; $7718: $a9
    nop                                           ; $7719: $00
    xor [hl]                                      ; $771a: $ae
    nop                                           ; $771b: $00
    rst $18                                       ; $771c: $df
    nop                                           ; $771d: $00
    nop                                           ; $771e: $00
    push af                                       ; $771f: $f5
    nop                                           ; $7720: $00
    rst $30                                       ; $7721: $f7
    ld [$50af], sp                                ; $7722: $08 $af $50
    ld e, a                                       ; $7725: $5f
    nop                                           ; $7726: $00
    and b                                         ; $7727: $a0
    inc b                                         ; $7728: $04
    ld bc, $0051                                  ; $7729: $01 $51 $00
    and h                                         ; $772c: $a4
    nop                                           ; $772d: $00
    ld a, [$0000]                                 ; $772e: $fa $00 $00
    ld l, a                                       ; $7731: $6f
    nop                                           ; $7732: $00
    db $fd                                        ; $7733: $fd
    ld [bc], a                                    ; $7734: $02
    ldh a, [rIF]                                  ; $7735: $f0 $0f
    ret nz                                        ; $7737: $c0

    ld b, b                                       ; $7738: $40
    ccf                                           ; $7739: $3f
    inc a                                         ; $773a: $3c
    ld c, $40                                     ; $773b: $0e $40
    ccf                                           ; $773d: $3f
    ldh [$1f], a                                  ; $773e: $e0 $1f
    xor b                                         ; $7740: $a8
    rlca                                          ; $7741: $07
    ld c, $ff                                     ; $7742: $0e $ff
    nop                                           ; $7744: $00
    ld b, $f9                                     ; $7745: $06 $f9
    ld c, d                                       ; $7747: $4a
    ld b, $9a                                     ; $7748: $06 $9a
    inc d                                         ; $774a: $14
    ld d, $06                                     ; $774b: $16 $06
    cp $80                                        ; $774d: $fe $80
    or d                                          ; $774f: $b2
    inc c                                         ; $7750: $0c
    ld [hl+], a                                   ; $7751: $22
    db $dd                                        ; $7752: $dd
    ld d, l                                       ; $7753: $55
    add b                                         ; $7754: $80
    ld l, $80                                     ; $7755: $2e $80
    cp l                                          ; $7757: $bd
    jr nz, jr_0be_775a                            ; $7758: $20 $00

jr_0be_775a:
    sub $63                                       ; $775a: $d6 $63
    ld b, $9d                                     ; $775c: $06 $9d
    ld h, b                                       ; $775e: $60
    ld a, a                                       ; $775f: $7f
    add b                                         ; $7760: $80
    rla                                           ; $7761: $17
    nop                                           ; $7762: $00
    add sp, -$06                                  ; $7763: $e8 $fa
    dec b                                         ; $7765: $05
    and l                                         ; $7766: $a5
    ld a, [de]                                    ; $7767: $1a
    ld [hl], d                                    ; $7768: $72
    dec c                                         ; $7769: $0d
    rst $28                                       ; $776a: $ef
    nop                                           ; $776b: $00
    db $10                                        ; $776c: $10
    cp a                                          ; $776d: $bf
    nop                                           ; $776e: $00
    ld [hl], a                                    ; $776f: $77
    nop                                           ; $7770: $00
    cp [hl]                                       ; $7771: $be
    nop                                           ; $7772: $00
    push de                                       ; $7773: $d5
    nop                                           ; $7774: $00
    nop                                           ; $7775: $00
    add h                                         ; $7776: $84
    ld a, a                                       ; $7777: $7f
    ld b, d                                       ; $7778: $42
    cp a                                          ; $7779: $bf
    add c                                         ; $777a: $81
    ld a, a                                       ; $777b: $7f
    jr nc, jr_0be_777e                            ; $777c: $30 $00

jr_0be_777e:
    rst $08                                       ; $777e: $cf
    add sp, $17                                   ; $777f: $e8 $17
    ret nc                                        ; $7781: $d0

    cpl                                           ; $7782: $2f

jr_0be_7783:
    db $e4                                        ; $7783: $e4
    dec de                                        ; $7784: $1b
    pop de                                        ; $7785: $d1
    ld e, h                                       ; $7786: $5c
    ld l, $20                                     ; $7787: $2e $20
    inc c                                         ; $7789: $0c
    rst $38                                       ; $778a: $ff
    nop                                           ; $778b: $00
    inc c                                         ; $778c: $0c
    add h                                         ; $778d: $84
    ld h, $60                                     ; $778e: $26 $60

jr_0be_7790:
    ld e, [hl]                                    ; $7790: $5e
    ld bc, $80fe                                  ; $7791: $01 $fe $80
    ld [hl], $06                                  ; $7794: $36 $06
    ld a, a                                       ; $7796: $7f
    ld h, b                                       ; $7797: $60
    cp a                                          ; $7798: $bf
    jr nz, @+$01                                  ; $7799: $20 $ff

    ld h, b                                       ; $779b: $60
    cp a                                          ; $779c: $bf
    nop                                           ; $779d: $00
    ld h, c                                       ; $779e: $61
    sbc $c0                                       ; $779f: $de $c0
    cp a                                          ; $77a1: $bf
    add b                                         ; $77a2: $80
    rst $38                                       ; $77a3: $ff
    ld e, h                                       ; $77a4: $5c
    and e                                         ; $77a5: $a3
    ret nz                                        ; $77a6: $c0

    ld b, d                                       ; $77a7: $42
    ld l, [hl]                                    ; $77a8: $6e
    adc $4e                                       ; $77a9: $ce $4e
    inc bc                                        ; $77ab: $03
    db $fc                                        ; $77ac: $fc
    dec bc                                        ; $77ad: $0b
    db $f4                                        ; $77ae: $f4
    jr nz, jr_0be_7790                            ; $77af: $20 $df

    add c                                         ; $77b1: $81
    ld e, b                                       ; $77b2: $58
    dec de                                        ; $77b3: $1b
    inc sp                                        ; $77b4: $33
    adc h                                         ; $77b5: $8c
    ld h, a                                       ; $77b6: $67
    jr jr_0be_7783                                ; $77b7: $18 $ca

    dec [hl]                                      ; $77b9: $35
    db $ec                                        ; $77ba: $ec
    ld l, $00                                     ; $77bb: $2e $00
    ld hl, sp+$07                                 ; $77bd: $f8 $07
    xor $01                                       ; $77bf: $ee $01
    jp hl                                         ; $77c1: $e9


    ld d, $b4                                     ; $77c2: $16 $b4
    ld c, e                                       ; $77c4: $4b
    ld hl, $eb14                                  ; $77c5: $21 $14 $eb
    ret nz                                        ; $77c8: $c0

    ld e, [hl]                                    ; $77c9: $5e
    adc a                                         ; $77ca: $8f
    ld [hl], b                                    ; $77cb: $70
    ld d, l                                       ; $77cc: $55
    xor d                                         ; $77cd: $aa
    db $10                                        ; $77ce: $10
    rrca                                          ; $77cf: $0f
    ld h, b                                       ; $77d0: $60
    inc b                                         ; $77d1: $04
    or h                                          ; $77d2: $b4
    dec bc                                        ; $77d3: $0b
    jr jr_0be_77dd                                ; $77d4: $18 $07

    db $ed                                        ; $77d6: $ed
    ld [bc], a                                    ; $77d7: $02
    rst $08                                       ; $77d8: $cf
    jr nc, @-$59                                  ; $77d9: $30 $a5

    nop                                           ; $77db: $00
    ld e, d                                       ; $77dc: $5a

jr_0be_77dd:
    ld a, [bc]                                    ; $77dd: $0a
    push af                                       ; $77de: $f5
    ld b, l                                       ; $77df: $45
    cp d                                          ; $77e0: $ba
    nop                                           ; $77e1: $00
    rst $38                                       ; $77e2: $ff
    add hl, hl                                    ; $77e3: $29
    add b                                         ; $77e4: $80
    rst $00                                       ; $77e5: $c7
    nop                                           ; $77e6: $00
    db $f4                                        ; $77e7: $f4
    dec bc                                        ; $77e8: $0b
    cp d                                          ; $77e9: $ba
    dec b                                         ; $77ea: $05
    db $fc                                        ; $77eb: $fc
    inc bc                                        ; $77ec: $03
    xor [hl]                                      ; $77ed: $ae
    nop                                           ; $77ee: $00
    ld bc, $00fb                                  ; $77ef: $01 $fb $00
    rst $30                                       ; $77f2: $f7
    nop                                           ; $77f3: $00
    ccf                                           ; $77f4: $3f
    ret nz                                        ; $77f5: $c0

    ld c, d                                       ; $77f6: $4a
    ld b, b                                       ; $77f7: $40
    or b                                          ; $77f8: $b0
    adc d                                         ; $77f9: $8a
    inc b                                         ; $77fa: $04
    ld a, a                                       ; $77fb: $7f
    inc bc                                        ; $77fc: $03
    db $fd                                        ; $77fd: $fd
    and c                                         ; $77fe: $a1
    ld e, a                                       ; $77ff: $5f
    ld d, c                                       ; $7800: $51
    inc bc                                        ; $7801: $03
    xor [hl]                                      ; $7802: $ae
    and b                                         ; $7803: $a0
    ld e, a                                       ; $7804: $5f
    ld d, h                                       ; $7805: $54
    xor e                                         ; $7806: $ab
    ldh a, [rSTAT]                                ; $7807: $f0 $41
    dec c                                         ; $7809: $0d
    ld b, b                                       ; $780a: $40
    ld b, a                                       ; $780b: $47
    db $10                                        ; $780c: $10
    rst $38                                       ; $780d: $ff
    ccf                                           ; $780e: $3f
    ld bc, $0380                                  ; $780f: $01 $80 $03
    add $bb                                       ; $7812: $c6 $bb
    db $e4                                        ; $7814: $e4
    rst $18                                       ; $7815: $df
    inc de                                        ; $7816: $13
    ld hl, sp-$11                                 ; $7817: $f8 $ef
    ldh a, [$ee]                                  ; $7819: $f0 $ee
    ld b, $e0                                     ; $781b: $06 $e0
    rst $18                                       ; $781d: $df
    or b                                          ; $781e: $b0
    ld c, $20                                     ; $781f: $0e $20
    ld a, [bc]                                    ; $7821: $0a
    inc h                                         ; $7822: $24
    ld bc, $54fe                                  ; $7823: $01 $fe $54
    ld [$d02f], sp                                ; $7826: $08 $2f $d0
    ld a, h                                       ; $7829: $7c
    cpl                                           ; $782a: $2f
    ret nc                                        ; $782b: $d0

    cpl                                           ; $782c: $2f
    nop                                           ; $782d: $00
    ldh [$1f], a                                  ; $782e: $e0 $1f
    sub b                                         ; $7830: $90
    ld l, a                                       ; $7831: $6f
    and b                                         ; $7832: $a0
    ld e, [hl]                                    ; $7833: $5e
    rlca                                          ; $7834: $07
    ld hl, sp+$03                                 ; $7835: $f8 $03

jr_0be_7837:
    dec e                                         ; $7837: $1d
    ld [c], a                                     ; $7838: $e2
    ld l, d                                       ; $7839: $6a
    sub l                                         ; $783a: $95
    and b                                         ; $783b: $a0
    ld e, a                                       ; $783c: $5f
    ret c                                         ; $783d: $d8

    ld c, $04                                     ; $783e: $0e $04
    ld [bc], a                                    ; $7840: $02
    nop                                           ; $7841: $00
    ld a, c                                       ; $7842: $79
    add b                                         ; $7843: $80
    ld a, a                                       ; $7844: $7f
    ld bc, $28fe                                  ; $7845: $01 $fe $28
    rst $10                                       ; $7848: $d7
    sub b                                         ; $7849: $90
    ld b, b                                       ; $784a: $40
    ld l, a                                       ; $784b: $6f
    and h                                         ; $784c: $a4
    rra                                           ; $784d: $1f
    db $10                                        ; $784e: $10
    rst $28                                       ; $784f: $ef
    ld [hl], c                                    ; $7850: $71
    adc [hl]                                      ; $7851: $8e
    ld [bc], a                                    ; $7852: $02
    db $fd                                        ; $7853: $fd

jr_0be_7854:
    jr nc, jr_0be_785e                            ; $7854: $30 $08

    rst $30                                       ; $7856: $f7
    ld b, [hl]                                    ; $7857: $46
    jr jr_0be_7854                                ; $7858: $18 $fa

    ld a, b                                       ; $785a: $78
    rlca                                          ; $785b: $07

jr_0be_785c:
    ld hl, sp+$05                                 ; $785c: $f8 $05

jr_0be_785e:
    ld a, [$28c0]                                 ; $785e: $fa $c0 $28
    jr jr_0be_7837                                ; $7861: $18 $d4

    cpl                                           ; $7863: $2f
    rla                                           ; $7864: $17
    add sp, $0a                                   ; $7865: $e8 $0a
    db $f4                                        ; $7867: $f4
    sub a                                         ; $7868: $97
    ld l, b                                       ; $7869: $68
    nop                                           ; $786a: $00
    dec bc                                        ; $786b: $0b
    db $f4                                        ; $786c: $f4
    dec h                                         ; $786d: $25
    jp c, Jump_0be_758a                           ; $786e: $da $8a $75

    ld hl, $08de                                  ; $7871: $21 $de $08
    ld [de], a                                    ; $7874: $12
    db $ed                                        ; $7875: $ed
    reti                                          ; $7876: $d9


    ld h, $be                                     ; $7877: $26 $be
    nop                                           ; $7879: $00
    ld d, c                                       ; $787a: $51
    rst $38                                       ; $787b: $ff
    nop                                           ; $787c: $00
    nop                                           ; $787d: $00
    db $db                                        ; $787e: $db
    inc h                                         ; $787f: $24
    db $fd                                        ; $7880: $fd
    ld [bc], a                                    ; $7881: $02
    ld a, [$bf05]                                 ; $7882: $fa $05 $bf
    ld b, b                                       ; $7885: $40
    add b                                         ; $7886: $80
    jr nz, jr_0be_78b8                            ; $7887: $20 $2f

    cp $fd                                        ; $7889: $fe $fd
    ld hl, sp-$09                                 ; $788b: $f8 $f7
    di                                            ; $788d: $f3
    db $ec                                        ; $788e: $ec
    and $00                                       ; $788f: $e6 $00
    reti                                          ; $7891: $d9


    rlca                                          ; $7892: $07
    ei                                            ; $7893: $fb
    sbc h                                         ; $7894: $9c
    ld l, e                                       ; $7895: $6b
    di                                            ; $7896: $f3
    xor h                                         ; $7897: $ac
    rst $08                                       ; $7898: $cf
    inc b                                         ; $7899: $04
    or b                                          ; $789a: $b0
    rra                                           ; $789b: $1f
    ldh [$b8], a                                  ; $789c: $e0 $b8
    ld b, a                                       ; $789e: $47
    ld e, h                                       ; $789f: $5c
    rrca                                          ; $78a0: $0f
    ldh [$9f], a                                  ; $78a1: $e0 $9f
    nop                                           ; $78a3: $00
    ld c, $f0                                     ; $78a4: $0e $f0
    rst $30                                       ; $78a6: $f7
    nop                                           ; $78a7: $00
    cp a                                          ; $78a8: $bf
    nop                                           ; $78a9: $00
    dec [hl]                                      ; $78aa: $35
    ret z                                         ; $78ab: $c8

    nop                                           ; $78ac: $00
    ld c, c                                       ; $78ad: $49
    or [hl]                                       ; $78ae: $b6
    sub d                                         ; $78af: $92
    ld l, l                                       ; $78b0: $6d
    inc b                                         ; $78b1: $04
    ei                                            ; $78b2: $fb
    rrca                                          ; $78b3: $0f
    di                                            ; $78b4: $f3
    inc bc                                        ; $78b5: $03
    db $e3                                        ; $78b6: $e3

jr_0be_78b7:
    inc e                                         ; $78b7: $1c

jr_0be_78b8:
    adc b                                         ; $78b8: $88
    ld [hl], a                                    ; $78b9: $77
    cp $01                                        ; $78ba: $fe $01
    add sp, $04                                   ; $78bc: $e8 $04
    cp b                                          ; $78be: $b8
    ld a, [de]                                    ; $78bf: $1a
    ld [c], a                                     ; $78c0: $e2
    xor h                                         ; $78c1: $ac
    inc c                                         ; $78c2: $0c
    or $26                                        ; $78c3: $f6 $26
    call z, Call_000_3d0f                         ; $78c5: $cc $0f $3d
    jp nz, Jump_0be_5a0f                          ; $78c8: $c2 $0f $5a

    ld [bc], a                                    ; $78cb: $02
    inc e                                         ; $78cc: $1c
    ld b, b                                       ; $78cd: $40
    db $e3                                        ; $78ce: $e3
    ld a, b                                       ; $78cf: $78
    dec l                                         ; $78d0: $2d
    ld a, [c]                                     ; $78d1: $f2
    inc c                                         ; $78d2: $0c
    add b                                         ; $78d3: $80
    ld a, h                                       ; $78d4: $7c
    dec b                                         ; $78d5: $05
    ld hl, sp+$00                                 ; $78d6: $f8 $00
    push bc                                       ; $78d8: $c5
    jr c, jr_0be_785c                             ; $78d9: $38 $81

    ld a, b                                       ; $78db: $78
    nop                                           ; $78dc: $00
    ld sp, hl                                     ; $78dd: $f9
    ld [bc], a                                    ; $78de: $02
    ld sp, hl                                     ; $78df: $f9
    nop                                           ; $78e0: $00
    inc b                                         ; $78e1: $04
    ei                                            ; $78e2: $fb

jr_0be_78e3:
    adc b                                         ; $78e3: $88
    ld [hl], c                                    ; $78e4: $71
    add b                                         ; $78e5: $80
    ld [hl], e                                    ; $78e6: $73
    sub h                                         ; $78e7: $94
    ld h, e                                       ; $78e8: $63
    and b                                         ; $78e9: $a0
    ld l, $07                                     ; $78ea: $2e $07
    rst $20                                       ; $78ec: $e7
    and h                                         ; $78ed: $a4
    jr jr_0be_7918                                ; $78ee: $18 $28

    rst $00                                       ; $78f0: $c7
    ld b, c                                       ; $78f1: $41
    adc [hl]                                      ; $78f2: $8e
    ld [de], a                                    ; $78f3: $12
    nop                                           ; $78f4: $00
    adc h                                         ; $78f5: $8c
    add b                                         ; $78f6: $80
    inc e                                         ; $78f7: $1c
    dec h                                         ; $78f8: $25
    jr @+$42                                      ; $78f9: $18 $40

    add hl, sp                                    ; $78fb: $39
    ld [bc], a                                    ; $78fc: $02
    ld [de], a                                    ; $78fd: $12
    ld a, c                                       ; $78fe: $79
    add b                                         ; $78ff: $80

jr_0be_7900:
    ld a, e                                       ; $7900: $7b
    ld a, [hl+]                                   ; $7901: $2a
    dec c                                         ; $7902: $0d
    add d                                         ; $7903: $82
    ld a, l                                       ; $7904: $7d
    sub [hl]                                      ; $7905: $96
    ccf                                           ; $7906: $3f
    ld a, [de]                                    ; $7907: $1a
    ld h, b                                       ; $7908: $60
    push hl                                       ; $7909: $e5
    ld l, d                                       ; $790a: $6a
    jr z, jr_0be_78b7                             ; $790b: $28 $aa

    rra                                           ; $790d: $1f
    or h                                          ; $790e: $b4
    ld c, e                                       ; $790f: $4b
    ld c, [hl]                                    ; $7910: $4e
    or c                                          ; $7911: $b1
    inc bc                                        ; $7912: $03
    ret nz                                        ; $7913: $c0

jr_0be_7914:
    ld a, [hl+]                                   ; $7914: $2a
    dec d                                         ; $7915: $15
    cp b                                          ; $7916: $b8
    ccf                                           ; $7917: $3f

jr_0be_7918:
    ldh [$1f], a                                  ; $7918: $e0 $1f
    jr c, jr_0be_78e3                             ; $791a: $38 $c7

    ld a, [bc]                                    ; $791c: $0a
    push af                                       ; $791d: $f5

jr_0be_791e:
    jp nz, Jump_0be_6a08                          ; $791e: $c2 $08 $6a

    ld l, d                                       ; $7921: $6a
    add hl, de                                    ; $7922: $19
    dec b                                         ; $7923: $05
    ld a, [$bf40]                                 ; $7924: $fa $40 $bf
    ld c, h                                       ; $7927: $4c
    dec de                                        ; $7928: $1b
    ld bc, $fe40                                  ; $7929: $01 $40 $fe
    call nc, $5e09                                ; $792c: $d4 $09 $5e
    and c                                         ; $792f: $a1
    xor a                                         ; $7930: $af
    ld d, b                                       ; $7931: $50

jr_0be_7932:
    rra                                           ; $7932: $1f
    ldh [rP1], a                                  ; $7933: $e0 $00
    ld c, a                                       ; $7935: $4f
    or b                                          ; $7936: $b0
    rla                                           ; $7937: $17
    add sp, $2b                                   ; $7938: $e8 $2b
    call nc, $a857                                ; $793a: $d4 $57 $a8
    nop                                           ; $793d: $00
    inc bc                                        ; $793e: $03
    db $fc                                        ; $793f: $fc
    ret nc                                        ; $7940: $d0

    xor a                                         ; $7941: $af
    add [hl]                                      ; $7942: $86
    ld a, c                                       ; $7943: $79
    ld c, $f1                                     ; $7944: $0e $f1
    nop                                           ; $7946: $00
    inc e                                         ; $7947: $1c
    db $e3                                        ; $7948: $e3
    jr jr_0be_7932                                ; $7949: $18 $e7

    jr c, jr_0be_7914                             ; $794b: $38 $c7

    jr nc, jr_0be_791e                            ; $794d: $30 $cf

    jr nz, jr_0be_7900                            ; $794f: $20 $af

    ld d, [hl]                                    ; $7951: $56
    ld a, [$e707]                                 ; $7952: $fa $07 $e7
    jr nz, @-$2f                                  ; $7955: $20 $cf

    db $10                                        ; $7957: $10
    rst $08                                       ; $7958: $cf
    nop                                           ; $7959: $00
    ld bc, $209e                                  ; $795a: $01 $9e $20
    sbc [hl]                                      ; $795d: $9e
    add d                                         ; $795e: $82
    inc a                                         ; $795f: $3c
    jr c, @-$27                                   ; $7960: $38 $d7

    nop                                           ; $7962: $00
    jr nc, @-$2f                                  ; $7963: $30 $cf

    ld d, b                                       ; $7965: $50
    adc a                                         ; $7966: $8f
    ld bc, $009e                                  ; $7967: $01 $9e $00
    ld a, $01                                     ; $796a: $3e $01
    ld b, d                                       ; $796c: $42
    inc a                                         ; $796d: $3c
    add c                                         ; $796e: $81
    ld a, h                                       ; $796f: $7c
    ld bc, $78fc                                  ; $7970: $01 $fc $78
    sbc h                                         ; $7973: $9c
    inc bc                                        ; $7974: $03
    inc c                                         ; $7975: $0c
    ret nz                                        ; $7976: $c0

    ccf                                           ; $7977: $3f
    ld b, b                                       ; $7978: $40
    ccf                                           ; $7979: $3f
    adc d                                         ; $797a: $8a
    inc c                                         ; $797b: $0c
    xor $0f                                       ; $797c: $ee $0f
    ld a, a                                       ; $797e: $7f
    sbc a                                         ; $797f: $9f
    add d                                         ; $7980: $82
    ld a, h                                       ; $7981: $7c
    ld b, c                                       ; $7982: $41
    ld sp, hl                                     ; $7983: $f9

jr_0be_7984:
    rst $38                                       ; $7984: $ff
    ccf                                           ; $7985: $3f
    di                                            ; $7986: $f3
    call Call_000_25d8                            ; $7987: $cd $d8 $25
    di                                            ; $798a: $f3
    jr nc, @+$01                                  ; $798b: $30 $ff

    ccf                                           ; $798d: $3f
    ld e, e                                       ; $798e: $5b
    rra                                           ; $798f: $1f
    ld a, [hl]                                    ; $7990: $7e
    ld e, $e0                                     ; $7991: $1e $e0
    sbc a                                         ; $7993: $9f
    db $fc                                        ; $7994: $fc
    di                                            ; $7995: $f3
    pop hl                                        ; $7996: $e1
    ldh [rNR34], a                                ; $7997: $e0 $1e
    ld e, b                                       ; $7999: $58
    ld a, [hl+]                                   ; $799a: $2a
    sub [hl]                                      ; $799b: $96
    ld l, $22                                     ; $799c: $2e $22
    db $dd                                        ; $799e: $dd
    add hl, bc                                    ; $799f: $09
    or $d8                                        ; $79a0: $f6 $d8
    add hl, bc                                    ; $79a2: $09
    ret nz                                        ; $79a3: $c0

    ldh a, [$0b]                                  ; $79a4: $f0 $0b
    xor h                                         ; $79a6: $ac
    ld l, $10                                     ; $79a7: $2e $10
    rst $38                                       ; $79a9: $ff
    jr @+$01                                      ; $79aa: $18 $ff

    inc b                                         ; $79ac: $04
    rst $28                                       ; $79ad: $ef
    nop                                           ; $79ae: $00
    dec bc                                        ; $79af: $0b
    rst $20                                       ; $79b0: $e7
    sub [hl]                                      ; $79b1: $96
    ld h, c                                       ; $79b2: $61
    ld d, a                                       ; $79b3: $57
    and b                                         ; $79b4: $a0
    inc bc                                        ; $79b5: $03
    rst $38                                       ; $79b6: $ff
    dec b                                         ; $79b7: $05
    add e                                         ; $79b8: $83
    rst $38                                       ; $79b9: $ff
    ld d, b                                       ; $79ba: $50
    rst $28                                       ; $79bb: $ef
    jr z, jr_0be_79c4                             ; $79bc: $28 $06

    rlca                                          ; $79be: $07
    ldh [$5c], a                                  ; $79bf: $e0 $5c
    inc bc                                        ; $79c1: $03
    jr z, jr_0be_7984                             ; $79c2: $28 $c0

jr_0be_79c4:
    rra                                           ; $79c4: $1f
    push af                                       ; $79c5: $f5
    rrca                                          ; $79c6: $0f
    ld a, [bc]                                    ; $79c7: $0a
    inc c                                         ; $79c8: $0c
    rlca                                          ; $79c9: $07
    adc b                                         ; $79ca: $88
    rst $38                                       ; $79cb: $ff
    ld hl, $ff0c                                  ; $79cc: $21 $0c $ff
    ld b, d                                       ; $79cf: $42
    rst $38                                       ; $79d0: $ff
    dec c                                         ; $79d1: $0d
    xor $16                                       ; $79d2: $ee $16
    ld [hl], b                                    ; $79d4: $70

jr_0be_79d5:
    dec bc                                        ; $79d5: $0b
    add d                                         ; $79d6: $82
    db $fd                                        ; $79d7: $fd
    rlca                                          ; $79d8: $07
    ld b, l                                       ; $79d9: $45
    ld a, [$75aa]                                 ; $79da: $fa $aa $75
    ret c                                         ; $79dd: $d8

    halt                                          ; $79de: $76
    db $10                                        ; $79df: $10
    ldh a, [rNR41]                                ; $79e0: $f0 $20
    inc [hl]                                      ; $79e2: $34
    rlca                                          ; $79e3: $07
    xor c                                         ; $79e4: $a9
    jr nz, @+$1a                                  ; $79e5: $20 $18

    inc b                                         ; $79e7: $04
    ld [$9004], sp                                ; $79e8: $08 $04 $90
    db $e4                                        ; $79eb: $e4
    ld b, $a0                                     ; $79ec: $06 $a0
    ld a, a                                       ; $79ee: $7f
    jr nz, jr_0be_7a09                            ; $79ef: $20 $18

    add h                                         ; $79f1: $84
    ld c, b                                       ; $79f2: $48
    ld a, [bc]                                    ; $79f3: $0a
    jr nz, jr_0be_79d5                            ; $79f4: $20 $df

    ld b, c                                       ; $79f6: $41
    cp a                                          ; $79f7: $bf
    jr nz, jr_0be_7a22                            ; $79f8: $20 $28

    ld a, [bc]                                    ; $79fa: $0a

Call_0be_79fb:
    push af                                       ; $79fb: $f5
    add h                                         ; $79fc: $84
    sbc b                                         ; $79fd: $98
    ld bc, $51f7                                  ; $79fe: $01 $f7 $51
    rst $28                                       ; $7a01: $ef
    and d                                         ; $7a02: $a2
    jr nz, jr_0be_7a05                            ; $7a03: $20 $00

jr_0be_7a05:
    daa                                           ; $7a05: $27
    ret nc                                        ; $7a06: $d0

    nop                                           ; $7a07: $00
    adc a                                         ; $7a08: $8f

jr_0be_7a09:
    ld [hl], b                                    ; $7a09: $70
    rrca                                          ; $7a0a: $0f
    ld hl, sp+$17                                 ; $7a0b: $f8 $17
    ld hl, sp+$08                                 ; $7a0d: $f8 $08
    ldh [rP1], a                                  ; $7a0f: $e0 $00
    inc b                                         ; $7a11: $04
    db $e3                                        ; $7a12: $e3
    ld [bc], a                                    ; $7a13: $02
    rst $38                                       ; $7a14: $ff
    dec d                                         ; $7a15: $15

jr_0be_7a16:
    rst $38                                       ; $7a16: $ff
    db $e4                                        ; $7a17: $e4
    rra                                           ; $7a18: $1f
    nop                                           ; $7a19: $00
    ld [c], a                                     ; $7a1a: $e2
    ccf                                           ; $7a1b: $3f
    ldh [$3f], a                                  ; $7a1c: $e0 $3f
    ret nc                                        ; $7a1e: $d0

    ccf                                           ; $7a1f: $3f
    jr z, @+$21                                   ; $7a20: $28 $1f

jr_0be_7a22:
    jr nz, jr_0be_7a68                            ; $7a22: $20 $44

    add e                                         ; $7a24: $83
    ld c, d                                       ; $7a25: $4a
    rrca                                          ; $7a26: $0f
    inc sp                                        ; $7a27: $33
    db $fc                                        ; $7a28: $fc
    add hl, bc                                    ; $7a29: $09
    ldh a, [rNR43]                                ; $7a2a: $f0 $22
    ld c, b                                       ; $7a2c: $48
    call c, $0dba                                 ; $7a2d: $dc $ba $0d
    ld b, b                                       ; $7a30: $40
    cp a                                          ; $7a31: $bf
    call z, $e60a                                 ; $7a32: $cc $0a $e6
    rra                                           ; $7a35: $1f
    ret z                                         ; $7a36: $c8

    nop                                           ; $7a37: $00
    rlca                                          ; $7a38: $07
    and b                                         ; $7a39: $a0
    rra                                           ; $7a3a: $1f
    ld b, b                                       ; $7a3b: $40
    ccf                                           ; $7a3c: $3f
    ld [bc], a                                    ; $7a3d: $02
    ld a, l                                       ; $7a3e: $7d
    add b                                         ; $7a3f: $80
    jr nc, @+$81                                  ; $7a40: $30 $7f

    add hl, hl                                    ; $7a42: $29
    xor b                                         ; $7a43: $a8
    ld [bc], a                                    ; $7a44: $02
    jr nz, jr_0be_7a4f                            ; $7a45: $20 $08

    ld [bc], a                                    ; $7a47: $02
    db $fc                                        ; $7a48: $fc
    add hl, bc                                    ; $7a49: $09
    cp $01                                        ; $7a4a: $fe $01
    db $10                                        ; $7a4c: $10
    rst $38                                       ; $7a4d: $ff
    and b                                         ; $7a4e: $a0

jr_0be_7a4f:
    rst $38                                       ; $7a4f: $ff
    ld d, b                                       ; $7a50: $50
    rst $38                                       ; $7a51: $ff
    jr nz, @+$22                                  ; $7a52: $20 $20

    jr nc, @+$0e                                  ; $7a54: $30 $0c

    ld bc, $827e                                  ; $7a56: $01 $7e $82
    ld a, l                                       ; $7a59: $7d
    adc h                                         ; $7a5a: $8c
    rrca                                          ; $7a5b: $0f
    jr nz, @+$1a                                  ; $7a5c: $20 $18

    ld bc, $84fe                                  ; $7a5e: $01 $fe $84
    ld a, $08                                     ; $7a61: $3e $08
    ld b, b                                       ; $7a63: $40
    cp a                                          ; $7a64: $bf
    xor b                                         ; $7a65: $a8
    ld d, a                                       ; $7a66: $57
    ld b, b                                       ; $7a67: $40

jr_0be_7a68:
    jr z, jr_0be_7a6a                             ; $7a68: $28 $00

jr_0be_7a6a:
    ld a, a                                       ; $7a6a: $7f
    db $10                                        ; $7a6b: $10
    add l                                         ; $7a6c: $85
    ld a, [hl]                                    ; $7a6d: $7e
    jr z, jr_0be_7a16                             ; $7a6e: $28 $a6

    nop                                           ; $7a70: $00

    db $14, $00, $12, $00, $00, $01, $41, $80, $01, $18, $81, $82, $83, $84, $85, $0c
    db $20, $80, $12, $20, $86, $87, $88, $89, $8a, $8b, $8c, $40, $8d, $16, $38, $8e
    db $8f, $90, $91, $92, $80, $02, $80, $93, $94, $95, $96, $81, $2c, $28, $97, $00
    db $98, $99, $9a, $9b, $9b, $9c, $9d, $80, $10, $9e, $9f, $a0, $4c, $20, $a1, $a2
    db $a3, $a4, $00, $a5, $a6, $a6, $a7, $a8, $a9, $80, $aa, $20, $ab, $ac, $61, $18
    db $ad, $ae, $af, $b0, $b1, $00, $b1, $b2, $b3, $b4, $b5, $81, $80, $b6, $40, $b7
    db $75, $18, $b8, $b9, $ba, $bb, $bc, $bd, $00, $be, $bf, $c0, $c1, $c2, $80, $c3
    db $c4, $80, $89, $18, $c5, $c6, $c7, $c8, $c8, $c8, $c9, $01, $ca, $80, $af, $cb
    db $cc, $cd, $ce, $9d, $18, $00, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $02, $d7
    db $d8, $d9, $da, $db, $dc, $b1, $18, $dd, $00, $de, $d1, $df, $e0, $e1, $e2, $e3
    db $d7, $04, $e4, $e5, $e6, $e7, $e8, $c5, $18, $e9, $ea, $44, $eb, $c2, $28, $ec
    db $ed, $ee, $d9, $20, $ef, $f0, $44, $f1, $e3, $18, $f2, $f3, $f4, $db, $30, $f5
    db $f6, $00, $f7, $f8, $80, $80, $f9, $fa, $fb, $fc, $80, $f3, $40, $fd, $fe, $ff
    db $00, $01, $02, $03, $41, $04, $06, $51, $80, $05, $06, $07, $08, $18, $49, $00
    db $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $08, $11, $12, $13, $14, $3c, $19, $15
    db $16, $17, $00, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $04, $20, $21, $22, $23
    db $24, $52, $09, $25, $26, $00, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $00, $2f
    db $30, $31, $32, $33, $34, $80, $80, $6b, $00, $01, $f8, $23, $88, $20, $38, $40
    db $01, $01, $08, $48, $58, $e7, $13, $10, $15, $58, $13, $20, $01, $21, $14, $80
    db $3f, $48, $3b, $20, $5b, $41, $53, $48, $02, $01, $30, $af, $38, $42, $15, $10
    db $06, $08, $df, $c3, $f8, $e5, $60, $40, $f5, $f8, $17, $91, $87, $38, $0a, $f8
    db $2c, $68, $20, $00, $16, $00, $54, $01, $46, $b0, $01, $28, $90, $82, $01, $0c
    db $30, $09, $48, $7e, $00, $00, $ff, $fe, $b1, $fc, $fb, $fa, $f9, $02, $f8, $f7
    db $f9, $b1, $f6, $f5, $24, $70, $f2, $00, $d0, $f3, $f1, $f0, $ef, $ed, $ec, $eb
    db $00, $ea, $e9, $e8, $e7, $e6, $e5, $e4, $e3, $40, $e2, $47, $58, $fd, $f4, $e1
    db $df, $de, $dd, $00, $dc, $db, $da, $d9, $d8, $d7, $d6, $ee, $08, $d5, $d4, $d3
    db $d2, $67, $58, $e0, $d1, $f3, $00, $cc, $cb, $ca, $c9, $c8, $c7, $c6, $c5, $01
    db $c4, $c3, $ee, $c2, $c1, $c0, $bb, $87, $58, $00, $cf, $ce, $cd, $bf, $be, $bd
    db $bc, $ba, $00, $b0, $b9, $b0, $b8, $b7, $b6, $b5, $b4, $20, $b3, $b2, $a7, $50
    db $02, $03, $04, $05, $06, $10, $07, $08, $09, $08, $a8, $0a, $0b, $0c, $0d, $08
    db $0e, $0f, $10, $11, $08, $a8, $12, $13, $14, $04, $15, $16, $17, $18, $19, $08
    db $a8, $1a, $1b, $02, $1c, $1d, $1e, $1f, $20, $21, $08, $a8, $22, $01, $23, $24
    db $25, $26, $27, $28, $29, $08, $a8, $00, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31
    db $80, $08, $a8, $32, $33, $34, $35, $36, $37, $38, $40, $39, $08, $a8, $3a, $3b
    db $3c, $3d, $b0, $3f, $00, $40, $41, $42, $43, $44, $45, $46, $47, $89, $ae, $01
    db $4b, $4c, $4d, $a8, $49, $4e, $4f, $c2, $19, $00, $50, $51, $52, $53, $54, $55
    db $56, $57, $08, $b0, $58, $59, $5a, $c8, $49, $5b, $5c, $5d, $00, $b0, $5e, $b0
    db $5f, $60, $61, $62, $63, $00, $64, $65, $66, $67, $68, $69, $b0, $6a, $40, $6b
    db $e8, $49, $6c, $7d, $76, $6f, $70, $71, $00, $72, $73, $74, $75, $76, $77, $78
    db $79, $02, $7a, $7b, $7c, $76, $6e, $7f, $08, $4a, $80, $00, $81, $6d, $83, $84
    db $85, $86, $87, $88, $00, $89, $8a, $8b, $8c, $8d, $8e, $8f, $4a, $1f, $49, $48
    db $3e, $28, $4a, $a0, $f8, $a0, $f8, $a0, $f8, $a0, $b8, $4c, $04, $01, $28, $0c
    db $0c, $0b, $30, $09, $80, $05, $04, $08, $04, $07, $06, $64, $22, $90, $06, $07
    db $06, $c9, $1e, $00, $45, $02, $07, $06, $29, $08, $06, $07, $3b, $68, $fe, $21
    db $40, $29, $10, $5c, $70, $42, $00, $3a, $18, $4a, $18, $7d, $78, $06, $4d, $07
    db $15, $08, $05, $04, $63, $18, $a8, $50, $01, $01, $f8, $de, $23, $f8, $45, $c0
    db $02, $01, $f8, $23, $f8, $45, $f8, $67, $b0, $03, $3b, $03, $03, $98, $59, $11
    db $60, $20, $00, $06, $01, $50, $31, $60, $1f, $00, $00, $00, $20, $58, $11, $00
    db $20, $50, $3e, $58, $22, $10, $87, $09, $4a, $08, $08, $00, $08, $01, $48, $50
    db $00, $40, $50, $f0, $a0, $f8, $a0, $f8, $a0, $f8, $a0, $b8, $14, $00, $12, $00
    db $f5, $00, $00, $80, $99, $98, $24, $97, $96, $95, $93, $10, $92, $88, $89, $01
    db $30, $8c, $91, $90, $8f, $03, $8e, $8b, $8a, $87, $86, $94, $14, $38, $28, $20
    db $05, $85, $84, $88, $9b, $9c, $01, $20, $9d, $28, $20, $08, $83, $82, $94, $a5
    db $3d, $28, $a8, $80, $81, $00, $af, $b0, $b1, $b2, $b3, $b4, $81, $88, $80, $14
    db $38, $8c, $8d, $c2, $c3, $c4, $c5, $c6, $20, $c7, $8d, $28, $50, $d6, $d7, $d8
    db $d9, $da, $40, $db, $28, $58, $e9, $ea, $eb, $ec, $ed, $ee, $80, $28, $58, $fc
    db $fd, $fe, $ff, $00, $01, $81, $10, $88, $02, $03, $01, $20, $04, $8c, $8d, $12
    db $02, $13, $14, $15, $16, $17, $8d, $a0, $48, $81, $00, $21, $22, $23, $24, $25
    db $26, $81, $88, $00, $80, $81, $81, $27, $28, $1b, $1a, $19, $00, $81, $88, $8c
    db $8d, $f5, $f4, $f3, $f2, $00, $f1, $f0, $8d, $94, $8c, $8d, $8d, $ef, $00, $e8
    db $e7, $e6, $e5, $8d, $94, $80, $df, $01, $de, $dd, $dc, $d5, $d4, $d3, $d2, $28
    db $08, $04, $d1, $d0, $cf, $ce, $81, $28, $00, $c0, $bf, $02, $be, $bd, $bc, $bb
    db $ba, $b9, $28, $08, $b8, $08, $b7, $b6, $b5, $8d, $28, $00, $81, $a3, $a2, $08
    db $a1, $fe, $a0, $9f, $50, $00, $9e, $9a, $a4, $04, $a6, $a7, $a9, $aa, $b4, $50
    db $00, $ab, $ac, $08, $ad, $ae, $c1, $c8, $50, $00, $c9, $ca, $cb, $04, $cc, $cd
    db $e0, $e1, $e2, $28, $00, $81, $e3, $10, $e4, $f6, $a0, $46, $00, $f7, $f8, $f9
    db $fa, $02, $18, $20, $1f, $1e, $1d, $1c, $6e, $00, $11, $10, $10, $0f, $0e, $46
    db $00, $0d, $0c, $0b, $0a, $01, $09, $08, $07, $06, $05, $fb, $00, $01, $30, $7f
    db $01, $01, $30, $14, $d8, $0a, $90, $27, $88, $14, $f8, $3c, $f8, $77, $f8, $f8
    db $a0, $f8, $1b, $f8, $3d, $f8, $5f, $f8, $21, $e1

    jr nz, jr_0be_7ecd                            ; $7ecb: $20 $00

jr_0be_7ecd:
    ld [de], a                                    ; $7ecd: $12
    nop                                           ; $7ece: $00
    ret nc                                        ; $7ecf: $d0

    nop                                           ; $7ed0: $00
    ld b, b                                       ; $7ed1: $40
    call z, Call_000_0801                         ; $7ed2: $cc $01 $08
    adc [hl]                                      ; $7ed5: $8e
    adc a                                         ; $7ed6: $8f
    ret                                           ; $7ed7: $c9


    ret z                                         ; $7ed8: $c8

    rst $00                                       ; $7ed9: $c7
    add $60                                       ; $7eda: $c6 $60
    push bc                                       ; $7edc: $c5
    inc c                                         ; $7edd: $0c
    db $10                                        ; $7ede: $10
    rrca                                          ; $7edf: $0f
    ld h, b                                       ; $7ee0: $60
    jp $cbca                                      ; $7ee1: $c3 $ca $cb


    ld c, $10                                     ; $7ee4: $0e $10
    db $10                                        ; $7ee6: $10
    ld [hl], h                                    ; $7ee7: $74
    sub b                                         ; $7ee8: $90
    jp Jump_0be_5801                              ; $7ee9: $c3 $01 $58


    sub c                                         ; $7eec: $91
    sub d                                         ; $7eed: $92
    sub e                                         ; $7eee: $93
    sub h                                         ; $7eef: $94
    ld bc, $9695                                  ; $7ef0: $01 $95 $96
    sub a                                         ; $7ef3: $97
    sbc b                                         ; $7ef4: $98
    jp $99c3                                      ; $7ef5: $c3 $c3 $99


    ld bc, $40e0                                  ; $7ef8: $01 $e0 $40
    sbc d                                         ; $7efb: $9a
    ld bc, $9b08                                  ; $7efc: $01 $08 $9b
    sbc h                                         ; $7eff: $9c

Call_0be_7f00:
    sbc l                                         ; $7f00: $9d
    sbc [hl]                                      ; $7f01: $9e
    sbc a                                         ; $7f02: $9f
    and b                                         ; $7f03: $a0
    jr nc, @-$5d                                  ; $7f04: $30 $a1

    and d                                         ; $7f06: $a2
    dec c                                         ; $7f07: $0d
    db $10                                        ; $7f08: $10
    db $10                                        ; $7f09: $10
    ld e, b                                       ; $7f0a: $58
    and e                                         ; $7f0b: $a3
    and h                                         ; $7f0c: $a4
    and l                                         ; $7f0d: $a5
    and [hl]                                      ; $7f0e: $a6
    nop                                           ; $7f0f: $00
    and a                                         ; $7f10: $a7

Jump_0be_7f11:
    xor b                                         ; $7f11: $a8
    xor c                                         ; $7f12: $a9
    xor d                                         ; $7f13: $aa
    xor e                                         ; $7f14: $ab
    xor h                                         ; $7f15: $ac
    xor l                                         ; $7f16: $ad
    xor [hl]                                      ; $7f17: $ae
    ld [$b0af], sp                                ; $7f18: $08 $af $b0
    or c                                          ; $7f1b: $b1
    or d                                          ; $7f1c: $b2
    db $10                                        ; $7f1d: $10
    ld l, b                                       ; $7f1e: $68
    or e                                          ; $7f1f: $b3
    or h                                          ; $7f20: $b4
    or l                                          ; $7f21: $b5
    nop                                           ; $7f22: $00
    or [hl]                                       ; $7f23: $b6
    or a                                          ; $7f24: $b7
    cp b                                          ; $7f25: $b8
    cp c                                          ; $7f26: $b9
    cp d                                          ; $7f27: $ba
    cp e                                          ; $7f28: $bb
    cp h                                          ; $7f29: $bc
    cp l                                          ; $7f2a: $bd
    rlca                                          ; $7f2b: $07
    cp [hl]                                       ; $7f2c: $be
    cp a                                          ; $7f2d: $bf
    ret nz                                        ; $7f2e: $c0

    pop bc                                        ; $7f2f: $c1
    jp nz, Jump_0be_6810                          ; $7f30: $c2 $10 $68

    ld d, e                                       ; $7f33: $53
    jr z, @+$0a                                   ; $7f34: $28 $08

    ld hl, sp-$0c                                 ; $7f36: $f8 $f4
    ld a, [hl+]                                   ; $7f38: $2a
    ld hl, sp+$4c                                 ; $7f39: $f8 $4c
    ld hl, sp+$6e                                 ; $7f3b: $f8 $6e
    ld hl, sp-$70                                 ; $7f3d: $f8 $90
    ld l, b                                       ; $7f3f: $68
    adc $01                                       ; $7f40: $ce $01
    ldh [$15], a                                  ; $7f42: $e0 $15
    ld d, $08                                     ; $7f44: $16 $08
    rla                                           ; $7f46: $17
    jr jr_0be_7f62                                ; $7f47: $18 $19

    ld a, [de]                                    ; $7f49: $1a
    ld b, $b8                                     ; $7f4a: $06 $b8
    dec de                                        ; $7f4c: $1b
    inc e                                         ; $7f4d: $1c
    dec e                                         ; $7f4e: $1d
    ld [bc], a                                    ; $7f4f: $02
    ld e, $1f                                     ; $7f50: $1e $1f
    jr nz, jr_0be_7f75                            ; $7f52: $20 $21

    ld [hl+], a                                   ; $7f54: $22
    inc hl                                        ; $7f55: $23
    add hl, bc                                    ; $7f56: $09
    and b                                         ; $7f57: $a0
    inc h                                         ; $7f58: $24
    nop                                           ; $7f59: $00
    dec h                                         ; $7f5a: $25
    ld h, $27                                     ; $7f5b: $26 $27
    jr z, jr_0be_7f88                             ; $7f5d: $28 $29

    ld a, [hl+]                                   ; $7f5f: $2a
    dec hl                                        ; $7f60: $2b
    inc l                                         ; $7f61: $2c

jr_0be_7f62:
    ld bc, $2e2d                                  ; $7f62: $01 $2d $2e
    cpl                                           ; $7f65: $2f
    jr nc, jr_0be_7f99                            ; $7f66: $30 $31

    ld [hl-], a                                   ; $7f68: $32
    inc sp                                        ; $7f69: $33
    db $10                                        ; $7f6a: $10
    ld l, b                                       ; $7f6b: $68
    nop                                           ; $7f6c: $00
    inc [hl]                                      ; $7f6d: $34
    dec [hl]                                      ; $7f6e: $35
    ld [hl], $37                                  ; $7f6f: $36 $37
    jr c, @+$3b                                   ; $7f71: $38 $39

    ld a, [hl-]                                   ; $7f73: $3a
    dec sp                                        ; $7f74: $3b

jr_0be_7f75:
    nop                                           ; $7f75: $00
    inc a                                         ; $7f76: $3c
    dec a                                         ; $7f77: $3d
    ld a, $3f                                     ; $7f78: $3e $3f
    ld b, b                                       ; $7f7a: $40
    ld b, c                                       ; $7f7b: $41
    ld b, d                                       ; $7f7c: $42
    ld b, e                                       ; $7f7d: $43
    add b                                         ; $7f7e: $80
    db $10                                        ; $7f7f: $10
    ld l, b                                       ; $7f80: $68
    ld b, h                                       ; $7f81: $44
    ld b, l                                       ; $7f82: $45
    ld b, [hl]                                    ; $7f83: $46
    ld b, a                                       ; $7f84: $47
    ld c, b                                       ; $7f85: $48
    ld c, c                                       ; $7f86: $49
    ld c, d                                       ; $7f87: $4a

jr_0be_7f88:
    nop                                           ; $7f88: $00
    ld c, e                                       ; $7f89: $4b
    ld c, h                                       ; $7f8a: $4c
    ld c, l                                       ; $7f8b: $4d
    ld c, [hl]                                    ; $7f8c: $4e
    ld c, a                                       ; $7f8d: $4f
    ld d, b                                       ; $7f8e: $50
    ld d, c                                       ; $7f8f: $51
    ld d, d                                       ; $7f90: $52
    ld b, b                                       ; $7f91: $40
    ld d, e                                       ; $7f92: $53
    db $10                                        ; $7f93: $10
    ld l, b                                       ; $7f94: $68
    ld d, h                                       ; $7f95: $54
    ld d, l                                       ; $7f96: $55
    ld d, [hl]                                    ; $7f97: $56
    ld d, a                                       ; $7f98: $57

jr_0be_7f99:
    ld e, b                                       ; $7f99: $58
    ld e, c                                       ; $7f9a: $59
    nop                                           ; $7f9b: $00
    ld e, d                                       ; $7f9c: $5a
    ld e, e                                       ; $7f9d: $5b
    ld e, h                                       ; $7f9e: $5c
    ld e, l                                       ; $7f9f: $5d
    ld e, [hl]                                    ; $7fa0: $5e
    ld e, a                                       ; $7fa1: $5f
    ld h, b                                       ; $7fa2: $60
    ld h, c                                       ; $7fa3: $61
    ld a, [hl+]                                   ; $7fa4: $2a
    ld h, d                                       ; $7fa5: $62
    ld h, e                                       ; $7fa6: $63
    db $10                                        ; $7fa7: $10
    ld l, b                                       ; $7fa8: $68
    ld [bc], a                                    ; $7fa9: $02
    ld bc, $01e0                                  ; $7faa: $01 $e0 $01
    ld bc, $00e0                                  ; $7fad: $01 $e0 $00
    cp e                                          ; $7fb0: $bb
    ld bc, $03e0                                  ; $7fb1: $01 $e0 $03
    ld bc, $23f8                                  ; $7fb4: $01 $f8 $23
    ld hl, sp+$45                                 ; $7fb7: $f8 $45
    ret nz                                        ; $7fb9: $c0

    inc b                                         ; $7fba: $04
    ld bc, $23f8                                  ; $7fbb: $01 $f8 $23
    ld hl, sp-$11                                 ; $7fbe: $f8 $ef
    ld b, l                                       ; $7fc0: $45
    ld hl, sp+$67                                 ; $7fc1: $f8 $67
    ld hl, sp-$77                                 ; $7fc3: $f8 $89
    and b                                         ; $7fc5: $a0
    dec b                                         ; $7fc6: $05
    ld bc, $40e0                                  ; $7fc7: $01 $e0 $40
    jp hl                                         ; $7fca: $e9


    add b                                         ; $7fcb: $80
    jp hl                                         ; $7fcc: $e9


    ret nz                                        ; $7fcd: $c0

    jp hl                                         ; $7fce: $e9


    inc e                                         ; $7fcf: $1c
    ld [bc], a                                    ; $7fd0: $02
    ld [bc], a                                    ; $7fd1: $02
    inc bc                                        ; $7fd2: $03
    ld [$0a30], sp                                ; $7fd3: $08 $30 $0a
    ld [$280e], sp                                ; $7fd6: $08 $0e $28
    ld [bc], a                                    ; $7fd9: $02
    inc bc                                        ; $7fda: $03
    rst $38                                       ; $7fdb: $ff
    stop                                          ; $7fdc: $10 $00
    dec de                                        ; $7fde: $1b
    nop                                           ; $7fdf: $00
    rlca                                          ; $7fe0: $07
    jr jr_0be_7ff0                                ; $7fe1: $18 $0d

    ld [$2002], sp                                ; $7fe3: $08 $02 $20
    ld d, $10                                     ; $7fe6: $16 $10
    inc d                                         ; $7fe8: $14
    jr c, @-$3e                                   ; $7fe9: $38 $c0

    jp hl                                         ; $7feb: $e9


    rst $38                                       ; $7fec: $ff
    ld a, a                                       ; $7fed: $7f
    push af                                       ; $7fee: $f5
    ld l, d                                       ; $7fef: $6a

jr_0be_7ff0:
    adc e                                         ; $7ff0: $8b
    dec [hl]                                      ; $7ff1: $35
    ld b, b                                       ; $7ff2: $40
    inc c                                         ; $7ff3: $0c
    rst $38                                       ; $7ff4: $ff
    ld a, a                                       ; $7ff5: $7f
    xor [hl]                                      ; $7ff6: $ae
    ld a, $07                                     ; $7ff7: $3e $07
    dec d                                         ; $7ff9: $15
    ld hl, $ff08                                  ; $7ffa: $21 $08 $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
