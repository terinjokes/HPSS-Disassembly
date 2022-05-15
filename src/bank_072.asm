; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $072", ROMX[$4000], BANK[$72]

    ld [hl], d                                    ; $4000: $72
    ld sp, $3332                                  ; $4001: $31 $32 $33
    inc [hl]                                      ; $4004: $34
    dec [hl]                                      ; $4005: $35
    ld [hl], $37                                  ; $4006: $36 $37
    jr c, jr_072_4043                             ; $4008: $38 $39

    jr nc, jr_072_403d                            ; $400a: $30 $31

    ld [hl-], a                                   ; $400c: $32
    inc sp                                        ; $400d: $33
    inc [hl]                                      ; $400e: $34
    dec [hl]                                      ; $400f: $35
    ld [hl], l                                    ; $4010: $75
    ccf                                           ; $4011: $3f
    rst $28                                       ; $4012: $ef
    rst $38                                       ; $4013: $ff
    rst $38                                       ; $4014: $ff
    rst $38                                       ; $4015: $ff
    rst $38                                       ; $4016: $ff
    rst $38                                       ; $4017: $ff
    rst $38                                       ; $4018: $ff
    rst $38                                       ; $4019: $ff
    db $fd                                        ; $401a: $fd
    rst $38                                       ; $401b: $ff
    rst $28                                       ; $401c: $ef
    rst $38                                       ; $401d: $ff
    sub $ff                                       ; $401e: $d6 $ff
    push de                                       ; $4020: $d5
    rst $38                                       ; $4021: $ff
    ld a, a                                       ; $4022: $7f
    rst $38                                       ; $4023: $ff
    db $fd                                        ; $4024: $fd
    rst $38                                       ; $4025: $ff

jr_072_4026:
    rst $38                                       ; $4026: $ff
    rst $38                                       ; $4027: $ff
    rst $38                                       ; $4028: $ff
    rst $38                                       ; $4029: $ff
    rst $38                                       ; $402a: $ff
    rst $38                                       ; $402b: $ff
    ld a, e                                       ; $402c: $7b
    rst $38                                       ; $402d: $ff
    rst $10                                       ; $402e: $d7
    ei                                            ; $402f: $fb
    cp l                                          ; $4030: $bd
    ld hl, sp-$23                                 ; $4031: $f8 $dd
    db $fd                                        ; $4033: $fd
    rst $38                                       ; $4034: $ff
    db $fd                                        ; $4035: $fd
    rst $38                                       ; $4036: $ff
    rst $38                                       ; $4037: $ff
    rst $38                                       ; $4038: $ff
    rst $38                                       ; $4039: $ff
    db $fd                                        ; $403a: $fd
    rst $38                                       ; $403b: $ff
    rst $10                                       ; $403c: $d7

jr_072_403d:
    rst $38                                       ; $403d: $ff
    ld l, e                                       ; $403e: $6b
    rst $38                                       ; $403f: $ff
    call c, $7ef8                                 ; $4040: $dc $f8 $7e

jr_072_4043:
    cp $bf                                        ; $4043: $fe $bf
    cp $ff                                        ; $4045: $fe $ff
    rst $38                                       ; $4047: $ff
    rst $38                                       ; $4048: $ff
    rst $38                                       ; $4049: $ff
    rst $30                                       ; $404a: $f7
    rst $38                                       ; $404b: $ff
    cp e                                          ; $404c: $bb
    rst $38                                       ; $404d: $ff
    ld [hl], a                                    ; $404e: $77
    rst $38                                       ; $404f: $ff
    ld h, e                                       ; $4050: $63
    rst $38                                       ; $4051: $ff

jr_072_4052:
    ld d, $ff                                     ; $4052: $16 $ff
    ld [hl+], a                                   ; $4054: $22
    rst $38                                       ; $4055: $ff
    ld c, c                                       ; $4056: $49
    rst $38                                       ; $4057: $ff
    ld [bc], a                                    ; $4058: $02
    rst $38                                       ; $4059: $ff
    db $10                                        ; $405a: $10
    rst $38                                       ; $405b: $ff
    ld b, h                                       ; $405c: $44
    cp e                                          ; $405d: $bb
    ld a, [de]                                    ; $405e: $1a
    push hl                                       ; $405f: $e5
    jp Jump_072_5afb                              ; $4060: $c3 $fb $5a


    pop af                                        ; $4063: $f1
    jr nz, jr_072_4026                            ; $4064: $20 $c0

    sbc d                                         ; $4066: $9a
    pop af                                        ; $4067: $f1
    ld a, [hl+]                                   ; $4068: $2a
    ei                                            ; $4069: $fb
    dec d                                         ; $406a: $15
    ei                                            ; $406b: $fb
    ld c, b                                       ; $406c: $48
    or a                                          ; $406d: $b7
    and b                                         ; $406e: $a0
    ld e, a                                       ; $406f: $5f
    sbc b                                         ; $4070: $98

jr_072_4071:
    rst $38                                       ; $4071: $ff
    nop                                           ; $4072: $00
    rst $38                                       ; $4073: $ff
    add d                                         ; $4074: $82
    ld a, a                                       ; $4075: $7f
    and b                                         ; $4076: $a0
    rst $38                                       ; $4077: $ff
    dec b                                         ; $4078: $05
    rst $38                                       ; $4079: $ff
    ld b, b                                       ; $407a: $40
    rst $38                                       ; $407b: $ff
    adc b                                         ; $407c: $88
    ld [hl], a                                    ; $407d: $77
    ld d, d                                       ; $407e: $52
    xor l                                         ; $407f: $ad

jr_072_4080:
    ret z                                         ; $4080: $c8

    rst $38                                       ; $4081: $ff
    add h                                         ; $4082: $84
    rst $38                                       ; $4083: $ff
    jr nz, @+$01                                  ; $4084: $20 $ff

    db $10                                        ; $4086: $10
    rst $38                                       ; $4087: $ff
    add h                                         ; $4088: $84
    rst $38                                       ; $4089: $ff
    ld [$40f7], sp                                ; $408a: $08 $f7 $40
    cp a                                          ; $408d: $bf
    inc d                                         ; $408e: $14
    db $eb                                        ; $408f: $eb
    and c                                         ; $4090: $a1
    ld e, [hl]                                    ; $4091: $5e
    rst $38                                       ; $4092: $ff
    nop                                           ; $4093: $00
    cp d                                          ; $4094: $ba
    ld b, l                                       ; $4095: $45
    rst $38                                       ; $4096: $ff
    nop                                           ; $4097: $00
    db $fd                                        ; $4098: $fd
    ld [bc], a                                    ; $4099: $02
    and $19                                       ; $409a: $e6 $19
    cp e                                          ; $409c: $bb
    ld b, h                                       ; $409d: $44
    ld c, h                                       ; $409e: $4c
    or e                                          ; $409f: $b3
    db $dd                                        ; $40a0: $dd
    ld [hl+], a                                   ; $40a1: $22
    xor d                                         ; $40a2: $aa
    ld d, l                                       ; $40a3: $55
    rst $38                                       ; $40a4: $ff
    nop                                           ; $40a5: $00
    rst $38                                       ; $40a6: $ff
    nop                                           ; $40a7: $00
    ld a, a                                       ; $40a8: $7f
    add b                                         ; $40a9: $80
    xor b                                         ; $40aa: $a8
    ld d, a                                       ; $40ab: $57
    rst $18                                       ; $40ac: $df
    jr nz, jr_072_4052                            ; $40ad: $20 $a3

    ld e, h                                       ; $40af: $5c
    add a                                         ; $40b0: $87
    ld a, b                                       ; $40b1: $78
    jp hl                                         ; $40b2: $e9


    ld d, $ff                                     ; $40b3: $16 $ff
    nop                                           ; $40b5: $00
    rst $38                                       ; $40b6: $ff
    nop                                           ; $40b7: $00
    ld a, d                                       ; $40b8: $7a
    add l                                         ; $40b9: $85
    rst $00                                       ; $40ba: $c7
    jr c, jr_072_4071                             ; $40bb: $38 $b4

    ld c, b                                       ; $40bd: $48
    ld l, l                                       ; $40be: $6d
    sub d                                         ; $40bf: $92
    rst $00                                       ; $40c0: $c7
    jr c, jr_072_4080                             ; $40c1: $38 $bd

    ld b, d                                       ; $40c3: $42
    ld d, a                                       ; $40c4: $57
    xor b                                         ; $40c5: $a8
    rst $38                                       ; $40c6: $ff
    nop                                           ; $40c7: $00
    ld a, a                                       ; $40c8: $7f
    nop                                           ; $40c9: $00
    ld c, l                                       ; $40ca: $4d
    ld [hl-], a                                   ; $40cb: $32
    rra                                           ; $40cc: $1f
    nop                                           ; $40cd: $00
    ld d, e                                       ; $40ce: $53
    inc l                                         ; $40cf: $2c
    ld [de], a                                    ; $40d0: $12
    db $ed                                        ; $40d1: $ed
    nop                                           ; $40d2: $00
    rst $38                                       ; $40d3: $ff
    jr nz, @+$01                                  ; $40d4: $20 $ff

    add [hl]                                      ; $40d6: $86
    rst $38                                       ; $40d7: $ff
    inc d                                         ; $40d8: $14
    rst $38                                       ; $40d9: $ff
    xor [hl]                                      ; $40da: $ae
    rst $38                                       ; $40db: $ff
    ld e, c                                       ; $40dc: $59
    rst $38                                       ; $40dd: $ff
    ld [hl-], a                                   ; $40de: $32
    rst $38                                       ; $40df: $ff
    ld d, b                                       ; $40e0: $50
    xor a                                         ; $40e1: $af
    add c                                         ; $40e2: $81
    ld a, [hl]                                    ; $40e3: $7e
    ld b, b                                       ; $40e4: $40
    rst $38                                       ; $40e5: $ff
    inc b                                         ; $40e6: $04
    rst $38                                       ; $40e7: $ff
    ret                                           ; $40e8: $c9


    rst $38                                       ; $40e9: $ff
    inc b                                         ; $40ea: $04
    rst $38                                       ; $40eb: $ff
    ld d, b                                       ; $40ec: $50
    rst $38                                       ; $40ed: $ff
    or $ff                                        ; $40ee: $f6 $ff
    sub [hl]                                      ; $40f0: $96
    ld l, c                                       ; $40f1: $69
    nop                                           ; $40f2: $00
    rst $38                                       ; $40f3: $ff
    jr nz, @+$01                                  ; $40f4: $20 $ff

    ld bc, $8eff                                  ; $40f6: $01 $ff $8e

jr_072_40f9:
    db $fd                                        ; $40f9: $fd
    jr z, jr_072_40f9                             ; $40fa: $28 $fd

    push bc                                       ; $40fc: $c5
    ld hl, sp+$70                                 ; $40fd: $f8 $70
    ldh [rNR50], a                                ; $40ff: $e0 $24
    ld e, e                                       ; $4101: $5b
    jp nz, $003d                                  ; $4102: $c2 $3d $00

    rst $38                                       ; $4105: $ff
    ld [$c2ff], sp                                ; $4106: $08 $ff $c2
    rst $38                                       ; $4109: $ff
    jr @+$01                                      ; $410a: $18 $ff

    daa                                           ; $410c: $27
    cp $72                                        ; $410d: $fe $72
    ld a, $f7                                     ; $410f: $3e $f7
    rst $38                                       ; $4111: $ff
    rst $38                                       ; $4112: $ff
    rst $38                                       ; $4113: $ff
    rst $38                                       ; $4114: $ff
    rst $38                                       ; $4115: $ff
    rst $38                                       ; $4116: $ff
    rst $38                                       ; $4117: $ff
    rst $18                                       ; $4118: $df
    rst $38                                       ; $4119: $ff
    rst $30                                       ; $411a: $f7
    rst $38                                       ; $411b: $ff
    ld l, l                                       ; $411c: $6d
    rst $38                                       ; $411d: $ff
    adc a                                         ; $411e: $8f
    rst $38                                       ; $411f: $ff
    db $fd                                        ; $4120: $fd
    rst $38                                       ; $4121: $ff
    rst $18                                       ; $4122: $df
    rst $38                                       ; $4123: $ff
    rst $38                                       ; $4124: $ff
    rst $38                                       ; $4125: $ff
    rst $38                                       ; $4126: $ff
    rst $38                                       ; $4127: $ff
    rst $38                                       ; $4128: $ff
    rst $38                                       ; $4129: $ff
    cp l                                          ; $412a: $bd
    rst $38                                       ; $412b: $ff
    ld a, [hl]                                    ; $412c: $7e
    rst $30                                       ; $412d: $f7
    ld b, $f7                                     ; $412e: $06 $f7
    ei                                            ; $4130: $fb
    pop af                                        ; $4131: $f1
    ei                                            ; $4132: $fb
    ei                                            ; $4133: $fb
    rst $38                                       ; $4134: $ff
    ei                                            ; $4135: $fb
    rst $38                                       ; $4136: $ff
    rst $38                                       ; $4137: $ff
    rst $18                                       ; $4138: $df
    rst $38                                       ; $4139: $ff
    ld a, e                                       ; $413a: $7b
    rst $38                                       ; $413b: $ff
    or a                                          ; $413c: $b7
    rst $38                                       ; $413d: $ff
    ld h, e                                       ; $413e: $63
    rst $38                                       ; $413f: $ff
    pop af                                        ; $4140: $f1
    ldh [$fb], a                                  ; $4141: $e0 $fb
    ei                                            ; $4143: $fb
    rst $38                                       ; $4144: $ff
    ei                                            ; $4145: $fb
    rst $38                                       ; $4146: $ff
    rst $38                                       ; $4147: $ff
    ld a, a                                       ; $4148: $7f
    rst $38                                       ; $4149: $ff
    cp [hl]                                       ; $414a: $be
    rst $38                                       ; $414b: $ff
    ld a, l                                       ; $414c: $7d
    rst $38                                       ; $414d: $ff
    ld hl, $59ff                                  ; $414e: $21 $ff $59
    rst $38                                       ; $4151: $ff
    adc b                                         ; $4152: $88
    rst $38                                       ; $4153: $ff
    ld h, $ff                                     ; $4154: $26 $ff
    ld [$40ff], sp                                ; $4156: $08 $ff $40
    rst $38                                       ; $4159: $ff
    ld de, $6aee                                  ; $415a: $11 $ee $6a
    sub l                                         ; $415d: $95
    ld b, e                                       ; $415e: $43
    cp h                                          ; $415f: $bc
    ld d, h                                       ; $4160: $54
    db $e3                                        ; $4161: $e3
    ld b, c                                       ; $4162: $41
    add b                                         ; $4163: $80
    halt                                          ; $4164: $76
    db $e3                                        ; $4165: $e3
    or b                                          ; $4166: $b0
    rst $30                                       ; $4167: $f7
    ld c, l                                       ; $4168: $4d

jr_072_4169:
    rst $30                                       ; $4169: $f7
    ld [hl+], a                                   ; $416a: $22
    db $dd                                        ; $416b: $dd
    add c                                         ; $416c: $81
    ld a, [hl]                                    ; $416d: $7e
    cp e                                          ; $416e: $bb
    ld b, h                                       ; $416f: $44
    ld [bc], a                                    ; $4170: $02
    rst $38                                       ; $4171: $ff
    ld [$80ff], sp                                ; $4172: $08 $ff $80
    rst $38                                       ; $4175: $ff
    ld d, $ff                                     ; $4176: $16 $ff
    nop                                           ; $4178: $00
    rst $38                                       ; $4179: $ff
    ld hl, $48de                                  ; $417a: $21 $de $48
    or a                                          ; $417d: $b7
    rrca                                          ; $417e: $0f
    ldh a, [rNR10]                                ; $417f: $f0 $10
    rst $38                                       ; $4181: $ff
    add b                                         ; $4182: $80
    rst $38                                       ; $4183: $ff
    ld b, c                                       ; $4184: $41
    rst $38                                       ; $4185: $ff
    db $10                                        ; $4186: $10
    rst $38                                       ; $4187: $ff
    jr nz, jr_072_4169                            ; $4188: $20 $df

    ld bc, $50fe                                  ; $418a: $01 $fe $50
    xor a                                         ; $418d: $af
    adc a                                         ; $418e: $8f
    ld [hl], b                                    ; $418f: $70
    rst $38                                       ; $4190: $ff
    nop                                           ; $4191: $00
    ld [hl], l                                    ; $4192: $75
    adc d                                         ; $4193: $8a
    rst $38                                       ; $4194: $ff
    nop                                           ; $4195: $00
    ld a, [$cd05]                                 ; $4196: $fa $05 $cd
    ld [hl-], a                                   ; $4199: $32
    ld [hl], a                                    ; $419a: $77
    adc b                                         ; $419b: $88
    sbc c                                         ; $419c: $99
    ld h, [hl]                                    ; $419d: $66
    ld c, c                                       ; $419e: $49
    or [hl]                                       ; $419f: $b6
    ld d, l                                       ; $41a0: $55
    xor d                                         ; $41a1: $aa
    rst $38                                       ; $41a2: $ff
    nop                                           ; $41a3: $00
    rst $38                                       ; $41a4: $ff
    nop                                           ; $41a5: $00
    cp $01                                        ; $41a6: $fe $01
    ld d, c                                       ; $41a8: $51
    xor [hl]                                      ; $41a9: $ae
    cp a                                          ; $41aa: $bf
    ld b, b                                       ; $41ab: $40
    ld b, [hl]                                    ; $41ac: $46
    cp c                                          ; $41ad: $b9
    ld b, d                                       ; $41ae: $42
    cp l                                          ; $41af: $bd
    db $d3                                        ; $41b0: $d3
    inc l                                         ; $41b1: $2c
    cp $01                                        ; $41b2: $fe $01
    rst $38                                       ; $41b4: $ff
    nop                                           ; $41b5: $00
    db $f4                                        ; $41b6: $f4
    ld a, [bc]                                    ; $41b7: $0a
    adc [hl]                                      ; $41b8: $8e
    ld [hl], b                                    ; $41b9: $70
    ld l, b                                       ; $41ba: $68
    sub b                                         ; $41bb: $90
    jp c, Jump_072_5824                           ; $41bc: $da $24 $58

    and [hl]                                      ; $41bf: $a6
    ld a, e                                       ; $41c0: $7b
    add h                                         ; $41c1: $84
    xor a                                         ; $41c2: $af
    ld d, b                                       ; $41c3: $50
    rst $38                                       ; $41c4: $ff
    nop                                           ; $41c5: $00
    rst $38                                       ; $41c6: $ff
    nop                                           ; $41c7: $00
    sbc e                                         ; $41c8: $9b
    ld h, h                                       ; $41c9: $64
    ccf                                           ; $41ca: $3f
    nop                                           ; $41cb: $00
    and [hl]                                      ; $41cc: $a6
    ld e, c                                       ; $41cd: $59
    sub b                                         ; $41ce: $90
    ld l, a                                       ; $41cf: $6f
    ld [bc], a                                    ; $41d0: $02
    db $fd                                        ; $41d1: $fd
    add c                                         ; $41d2: $81
    rst $38                                       ; $41d3: $ff
    jr @+$01                                      ; $41d4: $18 $ff

    ld d, e                                       ; $41d6: $53
    rst $38                                       ; $41d7: $ff
    cp b                                          ; $41d8: $b8
    rst $38                                       ; $41d9: $ff
    ld h, l                                       ; $41da: $65
    rst $38                                       ; $41db: $ff
    set 7, a                                      ; $41dc: $cb $ff
    ld e, l                                       ; $41de: $5d
    rst $38                                       ; $41df: $ff
    inc b                                         ; $41e0: $04
    ei                                            ; $41e1: $fb
    nop                                           ; $41e2: $00
    rst $38                                       ; $41e3: $ff
    db $10                                        ; $41e4: $10
    rst $38                                       ; $41e5: $ff
    ld h, $ff                                     ; $41e6: $26 $ff
    db $10                                        ; $41e8: $10
    rst $38                                       ; $41e9: $ff
    ld b, e                                       ; $41ea: $43
    rst $38                                       ; $41eb: $ff
    reti                                          ; $41ec: $d9


    rst $38                                       ; $41ed: $ff
    ld e, e                                       ; $41ee: $5b
    rst $38                                       ; $41ef: $ff
    ld bc, $80fe                                  ; $41f0: $01 $fe $80
    rst $38                                       ; $41f3: $ff
    inc b                                         ; $41f4: $04
    rst $38                                       ; $41f5: $ff
    inc sp                                        ; $41f6: $33

jr_072_41f7:
    rst $38                                       ; $41f7: $ff
    and h                                         ; $41f8: $a4
    ei                                            ; $41f9: $fb
    jr jr_072_41f7                                ; $41fa: $18 $fb

    ld [$a0f1], a                                 ; $41fc: $ea $f1 $a0
    ret nz                                        ; $41ff: $c0

    ld [$00f7], sp                                ; $4200: $08 $f7 $00
    rst $38                                       ; $4203: $ff
    ld [hl+], a                                   ; $4204: $22
    rst $38                                       ; $4205: $ff
    ld [$62ff], sp                                ; $4206: $08 $ff $62
    rst $38                                       ; $4209: $ff
    sbc l                                         ; $420a: $9d
    rst $38                                       ; $420b: $ff
    call z, $9bfb                                 ; $420c: $cc $fb $9b
    ld a, e                                       ; $420f: $7b
    db $fd                                        ; $4210: $fd
    rst $38                                       ; $4211: $ff
    rst $38                                       ; $4212: $ff
    rst $38                                       ; $4213: $ff
    rst $38                                       ; $4214: $ff
    rst $38                                       ; $4215: $ff
    rst $38                                       ; $4216: $ff
    rst $38                                       ; $4217: $ff
    ld a, e                                       ; $4218: $7b
    rst $38                                       ; $4219: $ff
    rst $10                                       ; $421a: $d7
    rst $38                                       ; $421b: $ff
    inc a                                         ; $421c: $3c
    rst $38                                       ; $421d: $ff
    ld h, l                                       ; $421e: $65
    rst $38                                       ; $421f: $ff
    rst $38                                       ; $4220: $ff
    rst $38                                       ; $4221: $ff
    rst $38                                       ; $4222: $ff
    rst $38                                       ; $4223: $ff
    rst $38                                       ; $4224: $ff
    rst $38                                       ; $4225: $ff
    db $fd                                        ; $4226: $fd
    rst $38                                       ; $4227: $ff
    rst $10                                       ; $4228: $d7
    rst $38                                       ; $4229: $ff
    ld a, e                                       ; $422a: $7b
    rst $28                                       ; $422b: $ef
    add hl, hl                                    ; $422c: $29
    rst $28                                       ; $422d: $ef
    ld l, b                                       ; $422e: $68
    rst $00                                       ; $422f: $c7
    or a                                          ; $4230: $b7
    db $e3                                        ; $4231: $e3
    rst $30                                       ; $4232: $f7
    rst $30                                       ; $4233: $f7
    rst $38                                       ; $4234: $ff
    rst $30                                       ; $4235: $f7
    rst $30                                       ; $4236: $f7
    rst $38                                       ; $4237: $ff
    cp e                                          ; $4238: $bb
    rst $38                                       ; $4239: $ff
    ld [hl], a                                    ; $423a: $77
    rst $38                                       ; $423b: $ff
    adc h                                         ; $423c: $8c
    rst $38                                       ; $423d: $ff
    ld [$c7ff], sp                                ; $423e: $08 $ff $c7
    add e                                         ; $4241: $83
    rst $28                                       ; $4242: $ef
    rst $28                                       ; $4243: $ef
    rst $38                                       ; $4244: $ff
    rst $28                                       ; $4245: $ef
    db $fd                                        ; $4246: $fd
    rst $38                                       ; $4247: $ff
    rst $28                                       ; $4248: $ef
    rst $38                                       ; $4249: $ff
    sub $ff                                       ; $424a: $d6 $ff
    add [hl]                                      ; $424c: $86
    rst $38                                       ; $424d: $ff
    ld b, c                                       ; $424e: $41
    rst $38                                       ; $424f: $ff
    jr nz, @+$01                                  ; $4250: $20 $ff

    sbc c                                         ; $4252: $99
    rst $38                                       ; $4253: $ff
    ld [hl+], a                                   ; $4254: $22
    rst $38                                       ; $4255: $ff
    ld bc, $44ff                                  ; $4256: $01 $ff $44
    cp e                                          ; $4259: $bb
    xor d                                         ; $425a: $aa
    ld d, l                                       ; $425b: $55
    add a                                         ; $425c: $87
    ld a, b                                       ; $425d: $78
    cp $01                                        ; $425e: $fe $01
    add d                                         ; $4260: $82
    ld bc, $c7aa                                  ; $4261: $01 $aa $c7
    ldh [$ef], a                                  ; $4264: $e0 $ef
    inc d                                         ; $4266: $14
    rst $28                                       ; $4267: $ef
    adc b                                         ; $4268: $88
    ld [hl], a                                    ; $4269: $77
    dec b                                         ; $426a: $05
    ld a, [$8976]                                 ; $426b: $fa $76 $89
    xor e                                         ; $426e: $ab
    ld d, h                                       ; $426f: $54

jr_072_4270:
    ld [hl+], a                                   ; $4270: $22
    rst $38                                       ; $4271: $ff
    ld bc, $58ff                                  ; $4272: $01 $ff $58
    rst $38                                       ; $4275: $ff
    nop                                           ; $4276: $00
    rst $38                                       ; $4277: $ff
    add h                                         ; $4278: $84
    ld a, e                                       ; $4279: $7b
    ld hl, $1fde                                  ; $427a: $21 $de $1f
    ldh [$a6], a                                  ; $427d: $e0 $a6
    ld e, c                                       ; $427f: $59
    ld [bc], a                                    ; $4280: $02
    rst $38                                       ; $4281: $ff
    inc b                                         ; $4282: $04
    rst $38                                       ; $4283: $ff
    ld b, b                                       ; $4284: $40
    rst $38                                       ; $4285: $ff
    add c                                         ; $4286: $81
    ld a, a                                       ; $4287: $7f
    inc b                                         ; $4288: $04
    ei                                            ; $4289: $fb
    ld b, c                                       ; $428a: $41
    cp [hl]                                       ; $428b: $be
    ld e, $e1                                     ; $428c: $1e $e1
    rst $30                                       ; $428e: $f7
    ld [$14eb], sp                                ; $428f: $08 $eb $14
    rst $38                                       ; $4292: $ff
    nop                                           ; $4293: $00
    push af                                       ; $4294: $f5
    ld a, [bc]                                    ; $4295: $0a
    sbc d                                         ; $4296: $9a
    ld h, l                                       ; $4297: $65
    rst $28                                       ; $4298: $ef
    db $10                                        ; $4299: $10
    ld [hl-], a                                   ; $429a: $32
    call $da25                                    ; $429b: $cd $25 $da
    ld [$fff7], sp                                ; $429e: $08 $f7 $ff
    nop                                           ; $42a1: $00
    rst $38                                       ; $42a2: $ff
    nop                                           ; $42a3: $00
    db $fd                                        ; $42a4: $fd
    ld [bc], a                                    ; $42a5: $02
    and e                                         ; $42a6: $a3
    ld e, h                                       ; $42a7: $5c
    ld a, [hl]                                    ; $42a8: $7e
    add c                                         ; $42a9: $81
    adc l                                         ; $42aa: $8d
    ld [hl], d                                    ; $42ab: $72
    add hl, bc                                    ; $42ac: $09
    or $10                                        ; $42ad: $f6 $10

jr_072_42af:
    rst $28                                       ; $42af: $ef
    db $fd                                        ; $42b0: $fd
    ld [bc], a                                    ; $42b1: $02
    rst $38                                       ; $42b2: $ff
    nop                                           ; $42b3: $00
    jp hl                                         ; $42b4: $e9


    inc d                                         ; $42b5: $14
    dec e                                         ; $42b6: $1d
    ldh [$d0], a                                  ; $42b7: $e0 $d0
    jr nz, jr_072_4270                            ; $42b9: $20 $b5

    ld c, b                                       ; $42bb: $48
    ld h, b                                       ; $42bc: $60
    sbc l                                         ; $42bd: $9d
    ld b, $f9                                     ; $42be: $06 $f9
    ld e, [hl]                                    ; $42c0: $5e
    and c                                         ; $42c1: $a1
    rst $38                                       ; $42c2: $ff
    nop                                           ; $42c3: $00
    rst $38                                       ; $42c4: $ff
    nop                                           ; $42c5: $00
    scf                                           ; $42c6: $37
    ret z                                         ; $42c7: $c8

    ld a, [hl]                                    ; $42c8: $7e
    ld bc, $b24d                                  ; $42c9: $01 $4d $b2
    ld b, c                                       ; $42cc: $41
    cp [hl]                                       ; $42cd: $be
    jr nz, jr_072_42af                            ; $42ce: $20 $df

    inc b                                         ; $42d0: $04
    rst $38                                       ; $42d1: $ff
    ld h, b                                       ; $42d2: $60
    rst $38                                       ; $42d3: $ff
    ld c, h                                       ; $42d4: $4c
    rst $38                                       ; $42d5: $ff
    ldh [rIE], a                                  ; $42d6: $e0 $ff
    sub l                                         ; $42d8: $95
    rst $38                                       ; $42d9: $ff
    cpl                                           ; $42da: $2f
    rst $38                                       ; $42db: $ff
    push de                                       ; $42dc: $d5
    rst $38                                       ; $42dd: $ff
    ld a, a                                       ; $42de: $7f
    rst $38                                       ; $42df: $ff
    ld [bc], a                                    ; $42e0: $02
    rst $38                                       ; $42e1: $ff
    ld b, b                                       ; $42e2: $40
    rst $38                                       ; $42e3: $ff
    sbc b                                         ; $42e4: $98
    rst $38                                       ; $42e5: $ff
    ld b, d                                       ; $42e6: $42
    rst $38                                       ; $42e7: $ff
    inc c                                         ; $42e8: $0c
    rst $38                                       ; $42e9: $ff
    ld h, a                                       ; $42ea: $67
    rst $38                                       ; $42eb: $ff
    cp e                                          ; $42ec: $bb
    rst $38                                       ; $42ed: $ff
    rst $18                                       ; $42ee: $df
    rst $38                                       ; $42ef: $ff
    nop                                           ; $42f0: $00
    rst $38                                       ; $42f1: $ff
    db $10                                        ; $42f2: $10
    rst $38                                       ; $42f3: $ff
    call z, $81ff                                 ; $42f4: $cc $ff $81
    rst $38                                       ; $42f7: $ff
    ld a, d                                       ; $42f8: $7a
    rst $30                                       ; $42f9: $f7
    or e                                          ; $42fa: $b3
    rst $30                                       ; $42fb: $f7
    push de                                       ; $42fc: $d5
    db $e3                                        ; $42fd: $e3
    ld b, c                                       ; $42fe: $41
    add b                                         ; $42ff: $80
    ld [bc], a                                    ; $4300: $02
    rst $38                                       ; $4301: $ff
    adc b                                         ; $4302: $88
    rst $38                                       ; $4303: $ff
    ld hl, $8aff                                  ; $4304: $21 $ff $8a
    rst $38                                       ; $4307: $ff
    ld [hl], l                                    ; $4308: $75
    rst $38                                       ; $4309: $ff
    inc hl                                        ; $430a: $23
    rst $38                                       ; $430b: $ff
    or l                                          ; $430c: $b5
    rst $28                                       ; $430d: $ef
    rst $28                                       ; $430e: $ef
    rst $28                                       ; $430f: $ef
    rst $38                                       ; $4310: $ff
    rst $38                                       ; $4311: $ff
    rst $38                                       ; $4312: $ff
    rst $38                                       ; $4313: $ff
    rst $38                                       ; $4314: $ff
    rst $38                                       ; $4315: $ff
    cp l                                          ; $4316: $bd
    rst $38                                       ; $4317: $ff
    halt                                          ; $4318: $76
    rst $38                                       ; $4319: $ff
    ldh a, [rIE]                                  ; $431a: $f0 $ff
    sub l                                         ; $431c: $95
    rst $38                                       ; $431d: $ff
    add c                                         ; $431e: $81
    cp $ff                                        ; $431f: $fe $ff
    rst $38                                       ; $4321: $ff
    rst $38                                       ; $4322: $ff
    rst $38                                       ; $4323: $ff
    rst $18                                       ; $4324: $df
    rst $38                                       ; $4325: $ff
    ld a, e                                       ; $4326: $7b
    rst $38                                       ; $4327: $ff
    or a                                          ; $4328: $b7
    rst $18                                       ; $4329: $df
    add $df                                       ; $432a: $c6 $df
    ld d, b                                       ; $432c: $50
    adc a                                         ; $432d: $8f
    inc b                                         ; $432e: $04
    inc bc                                        ; $432f: $03
    rst $28                                       ; $4330: $ef
    add $ef                                       ; $4331: $c6 $ef
    rst $28                                       ; $4333: $ef
    ld a, a                                       ; $4334: $7f
    rst $28                                       ; $4335: $ef
    cp [hl]                                       ; $4336: $be
    rst $38                                       ; $4337: $ff
    ld a, l                                       ; $4338: $7d
    rst $38                                       ; $4339: $ff
    ld [hl-], a                                   ; $433a: $32
    rst $38                                       ; $433b: $ff
    ld hl, $88ff                                  ; $433c: $21 $ff $88
    rst $38                                       ; $433f: $ff
    rra                                           ; $4340: $1f
    rrca                                          ; $4341: $0f
    cp a                                          ; $4342: $bf
    cp a                                          ; $4343: $bf
    rst $18                                       ; $4344: $df
    cp a                                          ; $4345: $bf
    rst $30                                       ; $4346: $f7
    rst $38                                       ; $4347: $ff
    ld l, l                                       ; $4348: $6d
    rst $38                                       ; $4349: $ff
    jr @+$01                                      ; $434a: $18 $ff

    dec b                                         ; $434c: $05
    rst $38                                       ; $434d: $ff
    ld [$66ff], sp                                ; $434e: $08 $ff $66
    rst $38                                       ; $4351: $ff
    adc e                                         ; $4352: $8b
    rst $38                                       ; $4353: $ff
    inc b                                         ; $4354: $04
    rst $38                                       ; $4355: $ff
    ld [de], a                                    ; $4356: $12
    db $ed                                        ; $4357: $ed
    xor b                                         ; $4358: $a8
    ld d, a                                       ; $4359: $57
    ld c, $f1                                     ; $435a: $0e $f1
    db $fd                                        ; $435c: $fd
    ld [bc], a                                    ; $435d: $02
    rst $10                                       ; $435e: $d7
    jr z, jr_072_43b9                             ; $435f: $28 $58

    adc a                                         ; $4361: $8f
    add c                                         ; $4362: $81
    rst $18                                       ; $4363: $df
    ld [hl], b                                    ; $4364: $70
    rst $18                                       ; $4365: $df
    ld [hl+], a                                   ; $4366: $22
    db $dd                                        ; $4367: $dd
    inc d                                         ; $4368: $14
    db $eb                                        ; $4369: $eb
    db $ec                                        ; $436a: $ec
    inc de                                        ; $436b: $13
    ld d, a                                       ; $436c: $57
    xor b                                         ; $436d: $a8
    rst $38                                       ; $436e: $ff
    nop                                           ; $436f: $00
    inc b                                         ; $4370: $04
    rst $38                                       ; $4371: $ff
    ld h, c                                       ; $4372: $61
    rst $38                                       ; $4373: $ff
    ld [bc], a                                    ; $4374: $02
    db $fd                                        ; $4375: $fd
    db $10                                        ; $4376: $10
    rst $28                                       ; $4377: $ef
    add l                                         ; $4378: $85
    ld a, d                                       ; $4379: $7a
    ld a, $c1                                     ; $437a: $3e $c1
    ld c, l                                       ; $437c: $4d

jr_072_437d:
    or d                                          ; $437d: $b2
    ld a, [$1205]                                 ; $437e: $fa $05 $12
    rst $38                                       ; $4381: $ff
    nop                                           ; $4382: $00
    rst $38                                       ; $4383: $ff
    inc b                                         ; $4384: $04
    rst $38                                       ; $4385: $ff
    ld de, $06ee                                  ; $4386: $11 $ee $06
    ld sp, hl                                     ; $4389: $f9
    dec a                                         ; $438a: $3d
    jp nz, Jump_000_10ef                          ; $438b: $c2 $ef $10

    cp l                                          ; $438e: $bd
    ld b, d                                       ; $438f: $42
    rst $38                                       ; $4390: $ff
    nop                                           ; $4391: $00
    db $eb                                        ; $4392: $eb
    inc d                                         ; $4393: $14
    dec [hl]                                      ; $4394: $35
    jp z, $21de                                   ; $4395: $ca $de $21

    ld h, l                                       ; $4398: $65
    sbc d                                         ; $4399: $9a
    sub h                                         ; $439a: $94
    ld l, e                                       ; $439b: $6b
    jr nz, jr_072_437d                            ; $439c: $20 $df

    db $10                                        ; $439e: $10
    rst $38                                       ; $439f: $ff
    rst $38                                       ; $43a0: $ff
    nop                                           ; $43a1: $00
    ei                                            ; $43a2: $fb
    inc b                                         ; $43a3: $04
    ld b, [hl]                                    ; $43a4: $46
    cp c                                          ; $43a5: $b9
    db $fd                                        ; $43a6: $fd
    ld [bc], a                                    ; $43a7: $02
    dec de                                        ; $43a8: $1b
    db $e4                                        ; $43a9: $e4
    dec h                                         ; $43aa: $25
    jp c, $bf40                                   ; $43ab: $da $40 $bf

    ld [$ffff], sp                                ; $43ae: $08 $ff $ff
    nop                                           ; $43b1: $00
    db $d3                                        ; $43b2: $d3
    jr z, jr_072_43ef                             ; $43b3: $28 $3a

    pop bc                                        ; $43b5: $c1
    and b                                         ; $43b6: $a0
    ld b, b                                       ; $43b7: $40
    ld l, d                                       ; $43b8: $6a

jr_072_43b9:
    sub c                                         ; $43b9: $91
    adc c                                         ; $43ba: $89
    ld [hl], d                                    ; $43bb: $72
    inc d                                         ; $43bc: $14
    db $eb                                        ; $43bd: $eb
    nop                                           ; $43be: $00
    rst $38                                       ; $43bf: $ff
    rst $38                                       ; $43c0: $ff
    nop                                           ; $43c1: $00
    rst $38                                       ; $43c2: $ff
    nop                                           ; $43c3: $00
    ld l, a                                       ; $43c4: $6f
    sub b                                         ; $43c5: $90
    db $fd                                        ; $43c6: $fd
    ld [bc], a                                    ; $43c7: $02
    sbc d                                         ; $43c8: $9a
    ld h, l                                       ; $43c9: $65
    inc b                                         ; $43ca: $04
    ei                                            ; $43cb: $fb
    add b                                         ; $43cc: $80
    ld a, a                                       ; $43cd: $7f
    ld [$81ff], sp                                ; $43ce: $08 $ff $81
    rst $38                                       ; $43d1: $ff
    ld [hl-], a                                   ; $43d2: $32
    rst $38                                       ; $43d3: $ff
    add c                                         ; $43d4: $81
    rst $38                                       ; $43d5: $ff
    ld d, h                                       ; $43d6: $54
    rst $38                                       ; $43d7: $ff
    cp l                                          ; $43d8: $bd
    rst $38                                       ; $43d9: $ff
    ld e, e                                       ; $43da: $5b
    rst $38                                       ; $43db: $ff
    db $fd                                        ; $43dc: $fd
    rst $38                                       ; $43dd: $ff
    rst $18                                       ; $43de: $df
    rst $38                                       ; $43df: $ff
    nop                                           ; $43e0: $00
    rst $38                                       ; $43e1: $ff
    ld h, e                                       ; $43e2: $63
    rst $38                                       ; $43e3: $ff
    ld a, [bc]                                    ; $43e4: $0a
    rst $38                                       ; $43e5: $ff
    ld sp, $9eff                                  ; $43e6: $31 $ff $9e
    rst $38                                       ; $43e9: $ff
    cp l                                          ; $43ea: $bd
    rst $38                                       ; $43eb: $ff
    rst $30                                       ; $43ec: $f7
    rst $38                                       ; $43ed: $ff
    ei                                            ; $43ee: $fb

jr_072_43ef:
    rst $38                                       ; $43ef: $ff
    ld b, d                                       ; $43f0: $42
    rst $38                                       ; $43f1: $ff
    jr nc, @+$01                                  ; $43f2: $30 $ff

    ld b, $ff                                     ; $43f4: $06 $ff
    ret                                           ; $43f6: $c9


    rst $38                                       ; $43f7: $ff
    call c, $8bef                                 ; $43f8: $dc $ef $8b
    rst $28                                       ; $43fb: $ef
    xor $c7                                       ; $43fc: $ee $c7
    add e                                         ; $43fe: $83
    ld bc, $ff21                                  ; $43ff: $01 $21 $ff
    add l                                         ; $4402: $85
    rst $38                                       ; $4403: $ff
    dec hl                                        ; $4404: $2b
    rst $38                                       ; $4405: $ff
    sub $ff                                       ; $4406: $d6 $ff
    adc h                                         ; $4408: $8c
    rst $38                                       ; $4409: $ff
    ld e, l                                       ; $440a: $5d
    rst $38                                       ; $440b: $ff
    rst $30                                       ; $440c: $f7
    cp a                                          ; $440d: $bf
    cp a                                          ; $440e: $bf
    cp a                                          ; $440f: $bf
    rst $38                                       ; $4410: $ff
    rst $38                                       ; $4411: $ff
    db $fd                                        ; $4412: $fd
    rst $38                                       ; $4413: $ff
    rst $10                                       ; $4414: $d7
    rst $38                                       ; $4415: $ff
    ld l, e                                       ; $4416: $6b
    rst $38                                       ; $4417: $ff
    jp $54ff                                      ; $4418: $c3 $ff $54


    rst $38                                       ; $441b: $ff
    ld [bc], a                                    ; $441c: $02
    db $fc                                        ; $441d: $fc
    sbc b                                         ; $441e: $98
    rst $38                                       ; $441f: $ff
    rst $38                                       ; $4420: $ff
    rst $38                                       ; $4421: $ff
    rst $30                                       ; $4422: $f7
    rst $38                                       ; $4423: $ff
    cp e                                          ; $4424: $bb
    rst $38                                       ; $4425: $ff
    ld [hl], a                                    ; $4426: $77
    cp a                                          ; $4427: $bf
    sbc b                                         ; $4428: $98
    cp a                                          ; $4429: $bf
    and b                                         ; $442a: $a0
    rra                                           ; $442b: $1f
    ld a, [bc]                                    ; $442c: $0a
    rlca                                          ; $442d: $07
    and b                                         ; $442e: $a0
    rra                                           ; $442f: $1f
    call c, $dc88                                 ; $4430: $dc $88 $dc
    sbc $ef                                       ; $4433: $de $ef
    sbc $d6                                       ; $4435: $de $d6
    rst $38                                       ; $4437: $ff
    ret z                                         ; $4438: $c8

    rst $38                                       ; $4439: $ff
    add h                                         ; $443a: $84
    rst $38                                       ; $443b: $ff
    jr nz, @+$01                                  ; $443c: $20 $ff

    db $10                                        ; $443e: $10
    rst $38                                       ; $443f: $ff
    ld a, a                                       ; $4440: $7f
    ccf                                           ; $4441: $3f
    rst $38                                       ; $4442: $ff
    rst $38                                       ; $4443: $ff
    ld a, e                                       ; $4444: $7b
    rst $38                                       ; $4445: $ff
    rst $10                                       ; $4446: $d7
    rst $38                                       ; $4447: $ff
    ld h, e                                       ; $4448: $63
    rst $38                                       ; $4449: $ff
    ld d, $ff                                     ; $444a: $16 $ff
    ld [hl+], a                                   ; $444c: $22
    rst $38                                       ; $444d: $ff
    ld c, c                                       ; $444e: $49
    rst $38                                       ; $444f: $ff
    ld l, $ff                                     ; $4450: $2e $ff
    ld de, $48ff                                  ; $4452: $11 $ff $48
    or a                                          ; $4455: $b7
    and b                                         ; $4456: $a0
    ld e, a                                       ; $4457: $5f
    dec e                                         ; $4458: $1d
    ld [c], a                                     ; $4459: $e2
    ld a, [$af05]                                 ; $445a: $fa $05 $af
    ld d, b                                       ; $445d: $50
    rst $38                                       ; $445e: $ff
    nop                                           ; $445f: $00
    dec b                                         ; $4460: $05
    cp a                                          ; $4461: $bf
    ld b, b                                       ; $4462: $40
    cp a                                          ; $4463: $bf
    adc b                                         ; $4464: $88
    ld [hl], a                                    ; $4465: $77
    ld d, d                                       ; $4466: $52
    xor l                                         ; $4467: $ad
    ret c                                         ; $4468: $d8

    daa                                           ; $4469: $27
    xor [hl]                                      ; $446a: $ae
    ld d, c                                       ; $446b: $51
    rst $38                                       ; $446c: $ff
    nop                                           ; $446d: $00
    rst $38                                       ; $446e: $ff
    nop                                           ; $446f: $00
    add h                                         ; $4470: $84
    rst $38                                       ; $4471: $ff
    ld [$40f7], sp                                ; $4472: $08 $f7 $40
    cp a                                          ; $4475: $bf
    inc d                                         ; $4476: $14
    db $eb                                        ; $4477: $eb
    ld a, h                                       ; $4478: $7c
    add e                                         ; $4479: $83
    sbc e                                         ; $447a: $9b
    ld h, h                                       ; $447b: $64
    push af                                       ; $447c: $f5
    ld a, [bc]                                    ; $447d: $0a
    rst $38                                       ; $447e: $ff
    nop                                           ; $447f: $00
    ld [bc], a                                    ; $4480: $02
    rst $38                                       ; $4481: $ff
    db $10                                        ; $4482: $10
    rst $38                                       ; $4483: $ff
    ld b, h                                       ; $4484: $44
    cp e                                          ; $4485: $bb
    ld a, [de]                                    ; $4486: $1a
    push hl                                       ; $4487: $e5
    ld a, d                                       ; $4488: $7a
    add l                                         ; $4489: $85
    rst $18                                       ; $448a: $df
    jr nz, jr_072_4508                            ; $448b: $20 $7b

    add h                                         ; $448d: $84
    rst $38                                       ; $448e: $ff
    nop                                           ; $448f: $00
    rst $10                                       ; $4490: $d7
    jr z, jr_072_44fd                             ; $4491: $28 $6a

    sub l                                         ; $4493: $95
    cp l                                          ; $4494: $bd
    ld b, d                                       ; $4495: $42
    jp z, Jump_072_5035                           ; $4496: $ca $35 $50

    xor a                                         ; $4499: $af
    add c                                         ; $449a: $81
    ld a, [hl]                                    ; $449b: $7e
    ld b, b                                       ; $449c: $40
    rst $38                                       ; $449d: $ff
    inc b                                         ; $449e: $04
    rst $38                                       ; $449f: $ff
    rst $30                                       ; $44a0: $f7
    ld [$738c], sp                                ; $44a1: $08 $8c $73
    ei                                            ; $44a4: $fb
    inc b                                         ; $44a5: $04
    ld [hl], $c9                                  ; $44a6: $36 $c9
    sub [hl]                                      ; $44a8: $96
    ld l, c                                       ; $44a9: $69
    nop                                           ; $44aa: $00
    rst $38                                       ; $44ab: $ff
    jr nz, @+$01                                  ; $44ac: $20 $ff

    ld bc, $a7ff                                  ; $44ae: $01 $ff $a7
    ld d, b                                       ; $44b1: $50
    ld [hl], h                                    ; $44b2: $74
    add e                                         ; $44b3: $83
    ld b, c                                       ; $44b4: $41
    add b                                         ; $44b5: $80
    push de                                       ; $44b6: $d5
    ld [hl+], a                                   ; $44b7: $22
    inc h                                         ; $44b8: $24
    db $d3                                        ; $44b9: $d3
    ld c, d                                       ; $44ba: $4a
    or l                                          ; $44bb: $b5
    nop                                           ; $44bc: $00
    rst $38                                       ; $44bd: $ff
    ld [$ffff], sp                                ; $44be: $08 $ff $ff
    nop                                           ; $44c1: $00
    sbc $21                                       ; $44c2: $de $21
    ei                                            ; $44c4: $fb
    inc b                                         ; $44c5: $04
    inc [hl]                                      ; $44c6: $34
    rl d                                          ; $44c7: $cb $12
    db $ed                                        ; $44c9: $ed
    nop                                           ; $44ca: $00
    rst $38                                       ; $44cb: $ff
    jr nz, @+$01                                  ; $44cc: $20 $ff

    add [hl]                                      ; $44ce: $86
    rst $38                                       ; $44cf: $ff
    ret                                           ; $44d0: $c9


    rst $38                                       ; $44d1: $ff
    inc b                                         ; $44d2: $04
    rst $38                                       ; $44d3: $ff
    ld d, b                                       ; $44d4: $50
    rst $38                                       ; $44d5: $ff
    or $ff                                        ; $44d6: $f6 $ff
    cp e                                          ; $44d8: $bb
    rst $38                                       ; $44d9: $ff
    rst $18                                       ; $44da: $df
    rst $38                                       ; $44db: $ff
    rst $38                                       ; $44dc: $ff
    rst $38                                       ; $44dd: $ff
    rst $38                                       ; $44de: $ff
    rst $38                                       ; $44df: $ff
    adc h                                         ; $44e0: $8c
    rst $38                                       ; $44e1: $ff
    jr z, @+$01                                   ; $44e2: $28 $ff

    rst $00                                       ; $44e4: $c7
    rst $38                                       ; $44e5: $ff
    ld a, e                                       ; $44e6: $7b
    rst $38                                       ; $44e7: $ff
    reti                                          ; $44e8: $d9


    rst $38                                       ; $44e9: $ff
    ld a, a                                       ; $44ea: $7f
    rst $38                                       ; $44eb: $ff
    cp a                                          ; $44ec: $bf
    rst $38                                       ; $44ed: $ff
    rst $38                                       ; $44ee: $ff
    cp $c2                                        ; $44ef: $fe $c2
    rst $38                                       ; $44f1: $ff
    jr @+$01                                      ; $44f2: $18 $ff

    daa                                           ; $44f4: $27
    rst $38                                       ; $44f5: $ff
    ld [hl-], a                                   ; $44f6: $32
    rst $38                                       ; $44f7: $ff
    or l                                          ; $44f8: $b5
    rst $18                                       ; $44f9: $df
    rst $08                                       ; $44fa: $cf
    rst $18                                       ; $44fb: $df
    rst $18                                       ; $44fc: $df

jr_072_44fd:
    adc [hl]                                      ; $44fd: $8e
    ld b, $02                                     ; $44fe: $06 $02

Jump_072_4500:
    inc d                                         ; $4500: $14
    rst $38                                       ; $4501: $ff
    xor [hl]                                      ; $4502: $ae
    rst $38                                       ; $4503: $ff
    ld e, c                                       ; $4504: $59
    rst $38                                       ; $4505: $ff
    ld [hl-], a                                   ; $4506: $32
    rst $38                                       ; $4507: $ff

jr_072_4508:
    push de                                       ; $4508: $d5
    rst $38                                       ; $4509: $ff
    ld a, a                                       ; $450a: $7f
    rst $38                                       ; $450b: $ff
    db $fd                                        ; $450c: $fd
    rst $38                                       ; $450d: $ff
    rst $38                                       ; $450e: $ff
    rst $38                                       ; $450f: $ff
    rst $18                                       ; $4510: $df
    rst $38                                       ; $4511: $ff
    ld a, e                                       ; $4512: $7b
    rst $38                                       ; $4513: $ff
    or a                                          ; $4514: $b7
    rst $38                                       ; $4515: $ff
    ld c, $ff                                     ; $4516: $0e $ff
    ld d, c                                       ; $4518: $51
    cp $04                                        ; $4519: $fe $04
    ld hl, sp+$63                                 ; $451b: $f8 $63
    cp $b8                                        ; $451d: $fe $b8
    rst $38                                       ; $451f: $ff
    ld a, a                                       ; $4520: $7f
    rst $38                                       ; $4521: $ff
    cp [hl]                                       ; $4522: $be
    rst $38                                       ; $4523: $ff
    db $fd                                        ; $4524: $fd
    ld a, a                                       ; $4525: $7f
    ld h, e                                       ; $4526: $63
    ld a, a                                       ; $4527: $7f
    ld b, d                                       ; $4528: $42
    ccf                                           ; $4529: $3f
    jr jr_072_453b                                ; $452a: $18 $0f

    ld b, b                                       ; $452c: $40
    ccf                                           ; $452d: $3f
    ld d, $7f                                     ; $452e: $16 $7f
    or c                                          ; $4530: $b1
    nop                                           ; $4531: $00
    or e                                          ; $4532: $b3
    cp e                                          ; $4533: $bb
    ld l, l                                       ; $4534: $6d
    cp e                                          ; $4535: $bb
    ld hl, $10ff                                  ; $4536: $21 $ff $10
    rst $38                                       ; $4539: $ff
    add b                                         ; $453a: $80

jr_072_453b:
    rst $38                                       ; $453b: $ff
    ld b, c                                       ; $453c: $41
    rst $38                                       ; $453d: $ff
    db $10                                        ; $453e: $10
    rst $38                                       ; $453f: $ff
    rst $38                                       ; $4540: $ff
    rst $38                                       ; $4541: $ff
    cp l                                          ; $4542: $bd
    rst $38                                       ; $4543: $ff
    halt                                          ; $4544: $76
    rst $38                                       ; $4545: $ff
    adc a                                         ; $4546: $8f
    rst $38                                       ; $4547: $ff
    ld e, c                                       ; $4548: $59
    rst $38                                       ; $4549: $ff
    adc b                                         ; $454a: $88
    rst $38                                       ; $454b: $ff
    ld h, $ff                                     ; $454c: $26 $ff
    ld [$45ff], sp                                ; $454e: $08 $ff $45

jr_072_4551:
    rst $38                                       ; $4551: $ff
    ld [hl+], a                                   ; $4552: $22
    db $dd                                        ; $4553: $dd
    add c                                         ; $4554: $81
    ld a, [hl]                                    ; $4555: $7e
    dec sp                                        ; $4556: $3b
    call nz, $0af5                                ; $4557: $c4 $f5 $0a
    ld e, a                                       ; $455a: $5f
    and b                                         ; $455b: $a0
    rst $38                                       ; $455c: $ff
    nop                                           ; $455d: $00
    xor a                                         ; $455e: $af
    ld d, b                                       ; $455f: $50
    add b                                         ; $4560: $80
    ld a, a                                       ; $4561: $7f
    ld hl, $48de                                  ; $4562: $21 $de $48
    or a                                          ; $4565: $b7
    or b                                          ; $4566: $b0
    ld c, a                                       ; $4567: $4f
    ld e, l                                       ; $4568: $5d
    and d                                         ; $4569: $a2
    rst $38                                       ; $456a: $ff
    nop                                           ; $456b: $00
    rst $38                                       ; $456c: $ff
    nop                                           ; $456d: $00
    rst $28                                       ; $456e: $ef
    db $10                                        ; $456f: $10
    jr nz, jr_072_4551                            ; $4570: $20 $df

    ld bc, $50fe                                  ; $4572: $01 $fe $50
    xor a                                         ; $4575: $af
    ld hl, sp+$07                                 ; $4576: $f8 $07
    scf                                           ; $4578: $37
    ret z                                         ; $4579: $c8

    ld [$ff15], a                                 ; $457a: $ea $15 $ff
    nop                                           ; $457d: $00
    ld c, a                                       ; $457e: $4f
    and b                                         ; $457f: $a0
    ld b, b                                       ; $4580: $40
    rst $38                                       ; $4581: $ff
    ld de, $6aee                                  ; $4582: $11 $ee $6a
    sub l                                         ; $4585: $95
    db $f4                                        ; $4586: $f4
    dec bc                                        ; $4587: $0b
    cp a                                          ; $4588: $bf

jr_072_4589:
    ld b, b                                       ; $4589: $40
    rst $30                                       ; $458a: $f7
    ld [$00ff], sp                                ; $458b: $08 $ff $00
    rst $38                                       ; $458e: $ff
    nop                                           ; $458f: $00
    push de                                       ; $4590: $d5
    ld a, [hl+]                                   ; $4591: $2a
    ld a, e                                       ; $4592: $7b
    add h                                         ; $4593: $84
    sub h                                         ; $4594: $94
    ld l, e                                       ; $4595: $6b
    ld b, d                                       ; $4596: $42
    cp l                                          ; $4597: $bd
    inc b                                         ; $4598: $04
    ei                                            ; $4599: $fb
    nop                                           ; $459a: $00
    rst $38                                       ; $459b: $ff
    db $10                                        ; $459c: $10
    rst $38                                       ; $459d: $ff
    ld h, $ff                                     ; $459e: $26 $ff
    jr jr_072_4589                                ; $45a0: $18 $e7

    or $09                                        ; $45a2: $f6 $09
    ld l, l                                       ; $45a4: $6d
    sub d                                         ; $45a5: $92
    ld e, b                                       ; $45a6: $58
    and a                                         ; $45a7: $a7
    ld bc, $80fe                                  ; $45a8: $01 $fe $80
    rst $38                                       ; $45ab: $ff
    inc b                                         ; $45ac: $04
    rst $38                                       ; $45ad: $ff
    inc sp                                        ; $45ae: $33
    rst $38                                       ; $45af: $ff
    jp hl                                         ; $45b0: $e9


    ld b, $83                                     ; $45b1: $06 $83
    nop                                           ; $45b3: $00
    xor d                                         ; $45b4: $aa
    ld b, l                                       ; $45b5: $45
    add b                                         ; $45b6: $80
    ld l, a                                       ; $45b7: $6f
    jr @-$17                                      ; $45b8: $18 $e7

    nop                                           ; $45ba: $00
    rst $38                                       ; $45bb: $ff
    ld [hl+], a                                   ; $45bc: $22
    rst $38                                       ; $45bd: $ff
    ld [$bcff], sp                                ; $45be: $08 $ff $bc
    ld b, e                                       ; $45c1: $43
    rst $30                                       ; $45c2: $f7
    ld [$9669], sp                                ; $45c3: $08 $69 $96
    ld c, c                                       ; $45c6: $49
    or [hl]                                       ; $45c7: $b6
    ld [bc], a                                    ; $45c8: $02
    db $fd                                        ; $45c9: $fd
    add c                                         ; $45ca: $81
    rst $38                                       ; $45cb: $ff
    jr @+$01                                      ; $45cc: $18 $ff

    ld d, e                                       ; $45ce: $53
    rst $38                                       ; $45cf: $ff
    db $10                                        ; $45d0: $10
    rst $38                                       ; $45d1: $ff
    ld b, e                                       ; $45d2: $43
    rst $38                                       ; $45d3: $ff
    reti                                          ; $45d4: $d9


    rst $38                                       ; $45d5: $ff
    cp l                                          ; $45d6: $bd
    rst $38                                       ; $45d7: $ff
    rst $30                                       ; $45d8: $f7
    rst $38                                       ; $45d9: $ff
    ei                                            ; $45da: $fb
    rst $38                                       ; $45db: $ff
    rst $38                                       ; $45dc: $ff
    rst $38                                       ; $45dd: $ff
    rst $38                                       ; $45de: $ff
    rst $38                                       ; $45df: $ff
    and b                                         ; $45e0: $a0
    rst $38                                       ; $45e1: $ff
    inc e                                         ; $45e2: $1c
    rst $38                                       ; $45e3: $ff
    db $ec                                        ; $45e4: $ec
    rst $38                                       ; $45e5: $ff
    sbc e                                         ; $45e6: $9b
    rst $38                                       ; $45e7: $ff
    cp $ff                                        ; $45e8: $fe $ff
    rst $38                                       ; $45ea: $ff
    rst $38                                       ; $45eb: $ff
    rst $38                                       ; $45ec: $ff
    rst $38                                       ; $45ed: $ff
    cp $fc                                        ; $45ee: $fe $fc
    ld h, d                                       ; $45f0: $62
    rst $38                                       ; $45f1: $ff
    sbc l                                         ; $45f2: $9d
    rst $38                                       ; $45f3: $ff
    ret z                                         ; $45f4: $c8

    rst $38                                       ; $45f5: $ff
    ld e, l                                       ; $45f6: $5d
    rst $38                                       ; $45f7: $ff
    rst $30                                       ; $45f8: $f7
    cp a                                          ; $45f9: $bf
    cp a                                          ; $45fa: $bf
    cp a                                          ; $45fb: $bf
    cp a                                          ; $45fc: $bf
    dec de                                        ; $45fd: $1b
    dec bc                                        ; $45fe: $0b
    inc bc                                        ; $45ff: $03
    cp b                                          ; $4600: $b8
    rst $38                                       ; $4601: $ff
    ld h, l                                       ; $4602: $65
    rst $38                                       ; $4603: $ff
    set 7, a                                      ; $4604: $cb $ff
    ld e, e                                       ; $4606: $5b
    rst $38                                       ; $4607: $ff
    db $fd                                        ; $4608: $fd
    rst $38                                       ; $4609: $ff

jr_072_460a:
    rst $18                                       ; $460a: $df
    rst $38                                       ; $460b: $ff
    rst $38                                       ; $460c: $ff
    rst $38                                       ; $460d: $ff
    rst $38                                       ; $460e: $ff
    rst $38                                       ; $460f: $ff
    cp e                                          ; $4610: $bb
    rst $38                                       ; $4611: $ff
    ld [hl], a                                    ; $4612: $77
    cp $38                                        ; $4613: $fe $38
    cp $42                                        ; $4615: $fe $42
    db $fc                                        ; $4617: $fc
    jr jr_072_460a                                ; $4618: $18 $f0

    adc d                                         ; $461a: $8a
    db $fc                                        ; $461b: $fc
    ldh [$fe], a                                  ; $461c: $e0 $fe
    dec d                                         ; $461e: $15
    cp $ef                                        ; $461f: $fe $ef
    cp $d6                                        ; $4621: $fe $d6
    rst $38                                       ; $4623: $ff
    adc h                                         ; $4624: $8c
    rst $38                                       ; $4625: $ff
    adc b                                         ; $4626: $88
    ld a, a                                       ; $4627: $7f
    ld [hl+], a                                   ; $4628: $22
    rra                                           ; $4629: $1f
    add c                                         ; $462a: $81
    ld a, a                                       ; $462b: $7f
    ld e, b                                       ; $462c: $58
    rst $38                                       ; $462d: $ff
    nop                                           ; $462e: $00
    rst $38                                       ; $462f: $ff
    ld b, a                                       ; $4630: $47
    inc bc                                        ; $4631: $03
    ld b, a                                       ; $4632: $47
    ld l, a                                       ; $4633: $6f
    sub [hl]                                      ; $4634: $96
    ld l, a                                       ; $4635: $6f
    ld b, c                                       ; $4636: $41
    rst $38                                       ; $4637: $ff
    ld [bc], a                                    ; $4638: $02
    rst $38                                       ; $4639: $ff
    inc b                                         ; $463a: $04
    rst $38                                       ; $463b: $ff
    ld b, b                                       ; $463c: $40
    rst $38                                       ; $463d: $ff
    add c                                         ; $463e: $81
    ld a, a                                       ; $463f: $7f
    rst $10                                       ; $4640: $d7
    rst $38                                       ; $4641: $ff
    ld l, e                                       ; $4642: $6b
    rst $38                                       ; $4643: $ff
    inc a                                         ; $4644: $3c
    rst $38                                       ; $4645: $ff
    ld h, l                                       ; $4646: $65
    rst $38                                       ; $4647: $ff
    jr nz, @+$01                                  ; $4648: $20 $ff

    sbc c                                         ; $464a: $99
    rst $38                                       ; $464b: $ff
    ld [hl+], a                                   ; $464c: $22
    rst $38                                       ; $464d: $ff
    ld bc, $88ff                                  ; $464e: $01 $ff $88
    ld [hl], a                                    ; $4651: $77
    dec b                                         ; $4652: $05
    ld a, [$8877]                                 ; $4653: $fa $77 $88
    ld [$bf15], a                                 ; $4656: $ea $15 $bf
    ld b, b                                       ; $4659: $40
    rst $38                                       ; $465a: $ff
    nop                                           ; $465b: $00
    ld e, a                                       ; $465c: $5f
    and b                                         ; $465d: $a0
    xor d                                         ; $465e: $aa
    ld d, l                                       ; $465f: $55
    add h                                         ; $4660: $84
    ld a, e                                       ; $4661: $7b
    ld hl, $61de                                  ; $4662: $21 $de $61
    sbc [hl]                                      ; $4665: $9e
    cp d                                          ; $4666: $ba
    ld b, l                                       ; $4667: $45
    rst $38                                       ; $4668: $ff
    nop                                           ; $4669: $00
    rst $38                                       ; $466a: $ff
    nop                                           ; $466b: $00
    sbc $21                                       ; $466c: $de $21
    ld sp, $04ce                                  ; $466e: $31 $ce $04
    ei                                            ; $4671: $fb
    ld b, c                                       ; $4672: $41
    cp [hl]                                       ; $4673: $be
    pop af                                        ; $4674: $f1
    ld c, $6f                                     ; $4675: $0e $6f
    sub b                                         ; $4677: $90
    push de                                       ; $4678: $d5
    ld a, [hl+]                                   ; $4679: $2a
    rst $38                                       ; $467a: $ff
    nop                                           ; $467b: $00
    sbc a                                         ; $467c: $9f
    ld b, b                                       ; $467d: $40
    db $d3                                        ; $467e: $d3
    inc c                                         ; $467f: $0c
    ld b, h                                       ; $4680: $44
    cp e                                          ; $4681: $bb
    xor d                                         ; $4682: $aa
    ld d, l                                       ; $4683: $55
    add sp, $17                                   ; $4684: $e8 $17
    ld a, a                                       ; $4686: $7f
    add b                                         ; $4687: $80
    xor $11                                       ; $4688: $ee $11
    rst $38                                       ; $468a: $ff
    nop                                           ; $468b: $00
    rst $38                                       ; $468c: $ff
    nop                                           ; $468d: $00
    ld a, c                                       ; $468e: $79
    add [hl]                                      ; $468f: $86
    rst $30                                       ; $4690: $f7
    ld [$d728], sp                                ; $4691: $08 $28 $d7
    add hl, bc                                    ; $4694: $09
    or $10                                        ; $4695: $f6 $10

jr_072_4697:
    rst $28                                       ; $4697: $ef
    ld [bc], a                                    ; $4698: $02
    rst $38                                       ; $4699: $ff
    ld b, b                                       ; $469a: $40
    rst $38                                       ; $469b: $ff
    sbc b                                         ; $469c: $98
    rst $38                                       ; $469d: $ff
    ld b, d                                       ; $469e: $42
    rst $38                                       ; $469f: $ff
    db $ed                                        ; $46a0: $ed
    ld [de], a                                    ; $46a1: $12
    db $db                                        ; $46a2: $db
    inc h                                         ; $46a3: $24
    ld h, d                                       ; $46a4: $62
    sbc l                                         ; $46a5: $9d
    inc b                                         ; $46a6: $04
    ei                                            ; $46a7: $fb
    nop                                           ; $46a8: $00
    rst $38                                       ; $46a9: $ff
    db $10                                        ; $46aa: $10
    rst $38                                       ; $46ab: $ff
    call z, $81ff                                 ; $46ac: $cc $ff $81
    rst $38                                       ; $46af: $ff
    rlca                                          ; $46b0: $07
    nop                                           ; $46b1: $00
    ld d, h                                       ; $46b2: $54
    adc e                                         ; $46b3: $8b
    ld b, c                                       ; $46b4: $41
    sbc [hl]                                      ; $46b5: $9e
    jr nz, jr_072_4697                            ; $46b6: $20 $df

    ld [bc], a                                    ; $46b8: $02
    rst $38                                       ; $46b9: $ff
    adc b                                         ; $46ba: $88
    rst $38                                       ; $46bb: $ff
    ld hl, $8aff                                  ; $46bc: $21 $ff $8a
    rst $38                                       ; $46bf: $ff
    xor $11                                       ; $46c0: $ee $11
    db $d3                                        ; $46c2: $d3
    inc l                                         ; $46c3: $2c
    dec h                                         ; $46c4: $25
    jp c, $f708                                   ; $46c5: $da $08 $f7

    inc b                                         ; $46c8: $04
    rst $38                                       ; $46c9: $ff
    ld h, b                                       ; $46ca: $60
    rst $38                                       ; $46cb: $ff
    ld c, h                                       ; $46cc: $4c
    rst $38                                       ; $46cd: $ff
    ldh [rIE], a                                  ; $46ce: $e0 $ff
    inc c                                         ; $46d0: $0c
    rst $38                                       ; $46d1: $ff
    ld h, a                                       ; $46d2: $67
    rst $38                                       ; $46d3: $ff
    reti                                          ; $46d4: $d9


    rst $38                                       ; $46d5: $ff
    ld a, a                                       ; $46d6: $7f
    rst $38                                       ; $46d7: $ff
    cp a                                          ; $46d8: $bf
    rst $38                                       ; $46d9: $ff
    rst $38                                       ; $46da: $ff
    rst $38                                       ; $46db: $ff
    rst $38                                       ; $46dc: $ff
    rst $38                                       ; $46dd: $ff
    rst $30                                       ; $46de: $f7
    rst $38                                       ; $46df: $ff
    ld [hl], d                                    ; $46e0: $72
    rst $38                                       ; $46e1: $ff
    or e                                          ; $46e2: $b3
    rst $38                                       ; $46e3: $ff
    or l                                          ; $46e4: $b5
    rst $38                                       ; $46e5: $ff
    rst $28                                       ; $46e6: $ef
    rst $38                                       ; $46e7: $ff
    rst $38                                       ; $46e8: $ff
    rst $38                                       ; $46e9: $ff
    rst $38                                       ; $46ea: $ff
    rst $38                                       ; $46eb: $ff
    rst $38                                       ; $46ec: $ff
    cp $fc                                        ; $46ed: $fe $fc
    ld hl, sp+$75                                 ; $46ef: $f8 $75
    rst $38                                       ; $46f1: $ff
    inc hl                                        ; $46f2: $23

jr_072_46f3:
    rst $38                                       ; $46f3: $ff
    push de                                       ; $46f4: $d5
    rst $38                                       ; $46f5: $ff
    ld a, a                                       ; $46f6: $7f
    rst $38                                       ; $46f7: $ff
    db $fd                                        ; $46f8: $fd
    ld a, a                                       ; $46f9: $7f
    ld a, a                                       ; $46fa: $7f
    ld a, a                                       ; $46fb: $7f
    ld a, a                                       ; $46fc: $7f
    cpl                                           ; $46fd: $2f
    rra                                           ; $46fe: $1f
    rrca                                          ; $46ff: $0f
    sub l                                         ; $4700: $95
    rst $38                                       ; $4701: $ff
    cpl                                           ; $4702: $2f
    rst $38                                       ; $4703: $ff
    cp e                                          ; $4704: $bb
    rst $38                                       ; $4705: $ff
    rst $18                                       ; $4706: $df
    rst $38                                       ; $4707: $ff
    rst $38                                       ; $4708: $ff
    rst $38                                       ; $4709: $ff
    rst $38                                       ; $470a: $ff
    rst $38                                       ; $470b: $ff
    rst $38                                       ; $470c: $ff
    rst $38                                       ; $470d: $ff
    db $fd                                        ; $470e: $fd
    rst $38                                       ; $470f: $ff
    ld a, a                                       ; $4710: $7f
    db $fd                                        ; $4711: $fd
    db $e4                                        ; $4712: $e4
    db $fd                                        ; $4713: $fd
    dec b                                         ; $4714: $05
    ld hl, sp+$50                                 ; $4715: $f8 $50
    ldh [$2d], a                                  ; $4717: $e0 $2d
    ld hl, sp-$7f                                 ; $4719: $f8 $81
    db $fd                                        ; $471b: $fd
    ld d, d                                       ; $471c: $52
    db $fd                                        ; $471d: $fd
    ld [hl+], a                                   ; $471e: $22
    db $dd                                        ; $471f: $dd
    ld l, [hl]                                    ; $4720: $6e
    db $fc                                        ; $4721: $fc
    ld [hl-], a                                   ; $4722: $32
    cp $21                                        ; $4723: $fe $21
    cp $48                                        ; $4725: $fe $48
    ccf                                           ; $4727: $3f
    inc b                                         ; $4728: $04
    rst $38                                       ; $4729: $ff
    ld h, c                                       ; $472a: $61
    rst $38                                       ; $472b: $ff
    ld [bc], a                                    ; $472c: $02
    db $fd                                        ; $472d: $fd
    db $10                                        ; $472e: $10
    rst $28                                       ; $472f: $ef
    sub [hl]                                      ; $4730: $96
    rrca                                          ; $4731: $0f
    jr jr_072_46f3                                ; $4732: $18 $bf

    ld b, l                                       ; $4734: $45
    cp a                                          ; $4735: $bf
    ld [$12ff], sp                                ; $4736: $08 $ff $12
    rst $38                                       ; $4739: $ff
    nop                                           ; $473a: $00
    rst $38                                       ; $473b: $ff
    inc b                                         ; $473c: $04
    rst $38                                       ; $473d: $ff
    ld de, $b7ee                                  ; $473e: $11 $ee $b7
    rst $38                                       ; $4741: $ff
    ldh a, [rIE]                                  ; $4742: $f0 $ff
    sub l                                         ; $4744: $95
    rst $38                                       ; $4745: $ff
    add b                                         ; $4746: $80
    rst $38                                       ; $4747: $ff
    ld h, [hl]                                    ; $4748: $66
    rst $38                                       ; $4749: $ff
    adc e                                         ; $474a: $8b
    rst $38                                       ; $474b: $ff
    inc b                                         ; $474c: $04
    rst $38                                       ; $474d: $ff
    ld [de], a                                    ; $474e: $12
    db $ed                                        ; $474f: $ed
    inc d                                         ; $4750: $14
    db $eb                                        ; $4751: $eb
    xor $11                                       ; $4752: $ee $11
    push de                                       ; $4754: $d5
    ld a, [hl+]                                   ; $4755: $2a
    ld a, a                                       ; $4756: $7f
    add b                                         ; $4757: $80
    rst $38                                       ; $4758: $ff
    nop                                           ; $4759: $00
    cp a                                          ; $475a: $bf
    ld b, b                                       ; $475b: $40
    ld d, h                                       ; $475c: $54
    xor e                                         ; $475d: $ab
    rst $28                                       ; $475e: $ef
    db $10                                        ; $475f: $10
    add l                                         ; $4760: $85
    ld a, d                                       ; $4761: $7a
    jp Jump_072_743c                              ; $4762: $c3 $3c $74


    adc e                                         ; $4765: $8b
    rst $38                                       ; $4766: $ff
    nop                                           ; $4767: $00
    rst $38                                       ; $4768: $ff
    nop                                           ; $4769: $00
    cp l                                          ; $476a: $bd
    ld b, d                                       ; $476b: $42
    ld h, e                                       ; $476c: $63
    sbc h                                         ; $476d: $9c
    jp c, $0624                                   ; $476e: $da $24 $06

    ld sp, hl                                     ; $4771: $f9
    db $e3                                        ; $4772: $e3
    inc e                                         ; $4773: $1c
    sbc $21                                       ; $4774: $de $21
    xor e                                         ; $4776: $ab
    ld d, h                                       ; $4777: $54
    rst $38                                       ; $4778: $ff
    nop                                           ; $4779: $00
    ccf                                           ; $477a: $3f
    add b                                         ; $477b: $80
    and [hl]                                      ; $477c: $a6
    add hl, de                                    ; $477d: $19
    rrca                                          ; $477e: $0f
    nop                                           ; $477f: $00
    xor b                                         ; $4780: $a8
    ld d, a                                       ; $4781: $57
    ret nc                                        ; $4782: $d0

    cpl                                           ; $4783: $2f
    rst $38                                       ; $4784: $ff
    nop                                           ; $4785: $00
    db $dd                                        ; $4786: $dd
    ld [hl+], a                                   ; $4787: $22
    rst $38                                       ; $4788: $ff
    nop                                           ; $4789: $00
    cp $01                                        ; $478a: $fe $01
    di                                            ; $478c: $f3
    inc c                                         ; $478d: $0c
    db $dd                                        ; $478e: $dd
    ld [hl+], a                                   ; $478f: $22
    ld d, c                                       ; $4790: $51
    xor [hl]                                      ; $4791: $ae
    dec h                                         ; $4792: $25
    jp c, $bf40                                   ; $4793: $da $40 $bf

    ld [$00ff], sp                                ; $4796: $08 $ff $00
    rst $38                                       ; $4799: $ff
    ld h, e                                       ; $479a: $63
    rst $38                                       ; $479b: $ff
    ld a, [bc]                                    ; $479c: $0a
    rst $38                                       ; $479d: $ff
    ld sp, $b6ff                                  ; $479e: $31 $ff $b6
    ld c, c                                       ; $47a1: $49
    adc c                                         ; $47a2: $89
    halt                                          ; $47a3: $76
    db $10                                        ; $47a4: $10

jr_072_47a5:
    rst $28                                       ; $47a5: $ef
    nop                                           ; $47a6: $00
    rst $38                                       ; $47a7: $ff
    ld b, d                                       ; $47a8: $42
    rst $38                                       ; $47a9: $ff
    jr nc, @+$01                                  ; $47aa: $30 $ff

    ld b, $ff                                     ; $47ac: $06 $ff
    ret                                           ; $47ae: $c9


    rst $38                                       ; $47af: $ff
    xor c                                         ; $47b0: $a9
    ld d, $04                                     ; $47b1: $16 $04
    cp e                                          ; $47b3: $bb
    ret nz                                        ; $47b4: $c0

    ccf                                           ; $47b5: $3f
    ld [$21ff], sp                                ; $47b6: $08 $ff $21
    rst $38                                       ; $47b9: $ff
    add l                                         ; $47ba: $85
    rst $38                                       ; $47bb: $ff
    dec hl                                        ; $47bc: $2b
    rst $38                                       ; $47bd: $ff
    sub $ff                                       ; $47be: $d6 $ff
    and [hl]                                      ; $47c0: $a6
    ld e, c                                       ; $47c1: $59
    sub h                                         ; $47c2: $94
    ld l, e                                       ; $47c3: $6b
    jr nz, jr_072_47a5                            ; $47c4: $20 $df

    db $10                                        ; $47c6: $10
    rst $38                                       ; $47c7: $ff
    add c                                         ; $47c8: $81
    rst $38                                       ; $47c9: $ff
    ld [hl-], a                                   ; $47ca: $32
    rst $38                                       ; $47cb: $ff
    add c                                         ; $47cc: $81
    rst $38                                       ; $47cd: $ff
    ld d, h                                       ; $47ce: $54
    rst $38                                       ; $47cf: $ff
    sbc [hl]                                      ; $47d0: $9e
    rst $38                                       ; $47d1: $ff
    sbc e                                         ; $47d2: $9b
    rst $38                                       ; $47d3: $ff
    cp $ff                                        ; $47d4: $fe $ff

jr_072_47d6:
    rst $38                                       ; $47d6: $ff
    rst $38                                       ; $47d7: $ff
    rst $38                                       ; $47d8: $ff
    rst $38                                       ; $47d9: $ff
    rst $38                                       ; $47da: $ff
    rst $38                                       ; $47db: $ff
    ld a, a                                       ; $47dc: $7f
    rst $38                                       ; $47dd: $ff
    cp [hl]                                       ; $47de: $be
    rst $38                                       ; $47df: $ff
    call z, $5dff                                 ; $47e0: $cc $ff $5d
    rst $38                                       ; $47e3: $ff
    rst $30                                       ; $47e4: $f7
    rst $38                                       ; $47e5: $ff
    rst $38                                       ; $47e6: $ff
    rst $38                                       ; $47e7: $ff
    rst $38                                       ; $47e8: $ff
    cp $fe                                        ; $47e9: $fe $fe
    cp $de                                        ; $47eb: $fe $de
    db $fc                                        ; $47ed: $fc
    ld hl, sp-$10                                 ; $47ee: $f8 $f0
    adc h                                         ; $47f0: $8c
    rst $38                                       ; $47f1: $ff
    ld e, e                                       ; $47f2: $5b
    rst $38                                       ; $47f3: $ff
    db $fd                                        ; $47f4: $fd
    rst $38                                       ; $47f5: $ff
    rst $18                                       ; $47f6: $df
    rst $38                                       ; $47f7: $ff
    rst $38                                       ; $47f8: $ff
    rst $38                                       ; $47f9: $ff
    rst $38                                       ; $47fa: $ff
    rst $38                                       ; $47fb: $ff
    rst $38                                       ; $47fc: $ff
    ccf                                           ; $47fd: $3f
    dec a                                         ; $47fe: $3d
    rra                                           ; $47ff: $1f
    cp l                                          ; $4800: $bd
    rst $38                                       ; $4801: $ff

jr_072_4802:
    cp l                                          ; $4802: $bd
    rst $38                                       ; $4803: $ff
    rst $30                                       ; $4804: $f7
    rst $38                                       ; $4805: $ff
    ei                                            ; $4806: $fb
    rst $38                                       ; $4807: $ff
    rst $38                                       ; $4808: $ff
    rst $38                                       ; $4809: $ff
    rst $38                                       ; $480a: $ff
    rst $38                                       ; $480b: $ff
    rst $18                                       ; $480c: $df
    rst $38                                       ; $480d: $ff
    ld a, e                                       ; $480e: $7b
    rst $38                                       ; $480f: $ff
    sbc b                                         ; $4810: $98
    ei                                            ; $4811: $fb
    ld a, [bc]                                    ; $4812: $0a
    pop af                                        ; $4813: $f1
    jr nz, jr_072_47d6                            ; $4814: $20 $c0

    xor d                                         ; $4816: $aa
    pop af                                        ; $4817: $f1
    ld bc, $44fb                                  ; $4818: $01 $fb $44
    ei                                            ; $481b: $fb
    adc b                                         ; $481c: $88
    ld [hl], a                                    ; $481d: $77
    ld d, d                                       ; $481e: $52
    xor l                                         ; $481f: $ad
    call $84f8                                    ; $4820: $cd $f8 $84
    db $fc                                        ; $4823: $fc

Jump_072_4824:
    and e                                         ; $4824: $a3
    ld a, h                                       ; $4825: $7c
    db $10                                        ; $4826: $10
    rst $38                                       ; $4827: $ff
    add h                                         ; $4828: $84
    rst $38                                       ; $4829: $ff
    ld [$40f7], sp                                ; $482a: $08 $f7 $40
    cp a                                          ; $482d: $bf
    inc d                                         ; $482e: $14
    db $eb                                        ; $482f: $eb

jr_072_4830:
    ld h, e                                       ; $4830: $63
    ccf                                           ; $4831: $3f
    ld d, $ff                                     ; $4832: $16 $ff
    ld [hl+], a                                   ; $4834: $22
    rst $38                                       ; $4835: $ff
    ld c, c                                       ; $4836: $49
    rst $38                                       ; $4837: $ff
    ld [bc], a                                    ; $4838: $02
    rst $38                                       ; $4839: $ff
    db $10                                        ; $483a: $10
    rst $38                                       ; $483b: $ff
    ld b, h                                       ; $483c: $44
    cp e                                          ; $483d: $bb
    ld a, [de]                                    ; $483e: $1a
    push hl                                       ; $483f: $e5
    jp $54ff                                      ; $4840: $c3 $ff $54


    rst $38                                       ; $4843: $ff
    ld bc, $98ff                                  ; $4844: $01 $ff $98
    rst $38                                       ; $4847: $ff
    ld l, $ff                                     ; $4848: $2e $ff
    ld de, $48ff                                  ; $484a: $11 $ff $48
    or a                                          ; $484d: $b7
    and b                                         ; $484e: $a0
    ld e, a                                       ; $484f: $5f
    db $dd                                        ; $4850: $dd
    ld [hl+], a                                   ; $4851: $22
    xor d                                         ; $4852: $aa
    ld d, l                                       ; $4853: $55
    rst $38                                       ; $4854: $ff
    nop                                           ; $4855: $00
    rst $38                                       ; $4856: $ff
    nop                                           ; $4857: $00
    ld a, a                                       ; $4858: $7f
    add b                                         ; $4859: $80
    xor b                                         ; $485a: $a8
    ld d, a                                       ; $485b: $57
    rst $18                                       ; $485c: $df
    jr nz, jr_072_4802                            ; $485d: $20 $a3

    ld e, h                                       ; $485f: $5c
    add a                                         ; $4860: $87
    ld a, b                                       ; $4861: $78
    jp hl                                         ; $4862: $e9


    ld d, $ff                                     ; $4863: $16 $ff
    nop                                           ; $4865: $00
    rst $38                                       ; $4866: $ff
    nop                                           ; $4867: $00
    ld a, d                                       ; $4868: $7a
    add l                                         ; $4869: $85
    rst $00                                       ; $486a: $c7
    jr c, @-$4a                                   ; $486b: $38 $b4

    ld c, b                                       ; $486d: $48
    ld l, l                                       ; $486e: $6d
    sub d                                         ; $486f: $92
    rst $00                                       ; $4870: $c7
    jr c, jr_072_4830                             ; $4871: $38 $bd

    ld b, d                                       ; $4873: $42
    ld d, a                                       ; $4874: $57
    xor b                                         ; $4875: $a8
    rst $38                                       ; $4876: $ff
    nop                                           ; $4877: $00
    ld a, a                                       ; $4878: $7f
    nop                                           ; $4879: $00
    ld c, l                                       ; $487a: $4d
    ld [hl-], a                                   ; $487b: $32
    rra                                           ; $487c: $1f
    nop                                           ; $487d: $00
    ld d, e                                       ; $487e: $53
    inc l                                         ; $487f: $2c
    and c                                         ; $4880: $a1
    ld e, [hl]                                    ; $4881: $5e
    rst $38                                       ; $4882: $ff
    nop                                           ; $4883: $00
    cp d                                          ; $4884: $ba
    ld b, l                                       ; $4885: $45
    rst $38                                       ; $4886: $ff
    nop                                           ; $4887: $00
    db $fd                                        ; $4888: $fd
    ld [bc], a                                    ; $4889: $02
    and $19                                       ; $488a: $e6 $19
    cp e                                          ; $488c: $bb
    ld b, h                                       ; $488d: $44
    ld c, h                                       ; $488e: $4c
    or e                                          ; $488f: $b3
    sub [hl]                                      ; $4890: $96
    ld l, c                                       ; $4891: $69
    nop                                           ; $4892: $00
    rst $38                                       ; $4893: $ff
    jr nz, @+$01                                  ; $4894: $20 $ff

    ld bc, $8cff                                  ; $4896: $01 $ff $8c
    rst $38                                       ; $4899: $ff
    jr z, @+$01                                   ; $489a: $28 $ff

    rst $00                                       ; $489c: $c7
    rst $38                                       ; $489d: $ff
    ld a, e                                       ; $489e: $7b
    rst $38                                       ; $489f: $ff
    inc h                                         ; $48a0: $24
    db $db                                        ; $48a1: $db
    ld b, d                                       ; $48a2: $42
    cp l                                          ; $48a3: $bd
    nop                                           ; $48a4: $00
    rst $38                                       ; $48a5: $ff
    ld [$c2ff], sp                                ; $48a6: $08 $ff $c2
    rst $38                                       ; $48a9: $ff
    jr @+$01                                      ; $48aa: $18 $ff

    daa                                           ; $48ac: $27
    rst $38                                       ; $48ad: $ff
    ld [hl-], a                                   ; $48ae: $32
    rst $38                                       ; $48af: $ff
    ld [de], a                                    ; $48b0: $12
    ld l, l                                       ; $48b1: $6d
    add b                                         ; $48b2: $80
    ld a, a                                       ; $48b3: $7f
    jr nz, @+$01                                  ; $48b4: $20 $ff

    add [hl]                                      ; $48b6: $86
    rst $38                                       ; $48b7: $ff
    inc d                                         ; $48b8: $14
    rst $38                                       ; $48b9: $ff
    xor [hl]                                      ; $48ba: $ae
    rst $38                                       ; $48bb: $ff
    ld e, c                                       ; $48bc: $59
    rst $38                                       ; $48bd: $ff
    ld [hl-], a                                   ; $48be: $32
    rst $38                                       ; $48bf: $ff
    ld d, b                                       ; $48c0: $50
    xor a                                         ; $48c1: $af
    add c                                         ; $48c2: $81
    ld a, [hl]                                    ; $48c3: $7e
    ld b, b                                       ; $48c4: $40
    rst $38                                       ; $48c5: $ff
    inc b                                         ; $48c6: $04
    rst $38                                       ; $48c7: $ff
    ret                                           ; $48c8: $c9


    rst $38                                       ; $48c9: $ff
    inc b                                         ; $48ca: $04
    rst $38                                       ; $48cb: $ff
    ld d, b                                       ; $48cc: $50
    rst $38                                       ; $48cd: $ff
    or $ff                                        ; $48ce: $f6 $ff
    or l                                          ; $48d0: $b5
    rst $38                                       ; $48d1: $ff
    rst $28                                       ; $48d2: $ef
    rst $38                                       ; $48d3: $ff
    rst $38                                       ; $48d4: $ff
    rst $38                                       ; $48d5: $ff
    rst $38                                       ; $48d6: $ff
    rst $38                                       ; $48d7: $ff
    rst $38                                       ; $48d8: $ff
    rst $38                                       ; $48d9: $ff
    db $fd                                        ; $48da: $fd
    rst $38                                       ; $48db: $ff
    rst $28                                       ; $48dc: $ef
    rst $38                                       ; $48dd: $ff
    sub $fb                                       ; $48de: $d6 $fb
    push de                                       ; $48e0: $d5
    rst $38                                       ; $48e1: $ff
    ld a, a                                       ; $48e2: $7f
    rst $38                                       ; $48e3: $ff
    db $fd                                        ; $48e4: $fd
    rst $38                                       ; $48e5: $ff
    rst $38                                       ; $48e6: $ff
    rst $38                                       ; $48e7: $ff
    rst $38                                       ; $48e8: $ff
    db $fd                                        ; $48e9: $fd
    db $fd                                        ; $48ea: $fd
    db $fd                                        ; $48eb: $fd
    ld a, l                                       ; $48ec: $7d
    ld hl, sp-$30                                 ; $48ed: $f8 $d0
    ldh [$bb], a                                  ; $48ef: $e0 $bb
    rst $38                                       ; $48f1: $ff
    rst $18                                       ; $48f2: $df
    rst $38                                       ; $48f3: $ff
    rst $38                                       ; $48f4: $ff
    rst $38                                       ; $48f5: $ff
    rst $38                                       ; $48f6: $ff
    rst $38                                       ; $48f7: $ff
    rst $38                                       ; $48f8: $ff
    rst $38                                       ; $48f9: $ff
    db $fd                                        ; $48fa: $fd
    rst $38                                       ; $48fb: $ff
    rst $10                                       ; $48fc: $d7
    rst $38                                       ; $48fd: $ff
    ld l, e                                       ; $48fe: $6b
    ccf                                           ; $48ff: $3f
    reti                                          ; $4900: $d9


    rst $38                                       ; $4901: $ff
    ld a, a                                       ; $4902: $7f
    rst $38                                       ; $4903: $ff
    cp a                                          ; $4904: $bf
    rst $38                                       ; $4905: $ff
    rst $38                                       ; $4906: $ff
    rst $38                                       ; $4907: $ff
    rst $38                                       ; $4908: $ff

jr_072_4909:
    rst $38                                       ; $4909: $ff
    rst $30                                       ; $490a: $f7
    rst $38                                       ; $490b: $ff
    cp e                                          ; $490c: $bb
    rst $38                                       ; $490d: $ff
    ld [hl], a                                    ; $490e: $77
    rst $38                                       ; $490f: $ff
    ld d, $e3                                     ; $4910: $16 $e3
    ld b, c                                       ; $4912: $41
    add b                                         ; $4913: $80
    sub h                                         ; $4914: $94
    db $e3                                        ; $4915: $e3
    ld d, $f7                                     ; $4916: $16 $f7
    ld [$21f7], sp                                ; $4918: $08 $f7 $21
    sbc $48                                       ; $491b: $de $48
    or a                                          ; $491d: $b7
    cp e                                          ; $491e: $bb
    ld b, h                                       ; $491f: $44
    dec de                                        ; $4920: $1b
    ldh [$80], a                                  ; $4921: $e0 $80
    ei                                            ; $4923: $fb
    ld b, l                                       ; $4924: $45
    ei                                            ; $4925: $fb
    db $10                                        ; $4926: $10
    rst $38                                       ; $4927: $ff
    jr nz, jr_072_4909                            ; $4928: $20 $df

    ld bc, $50fe                                  ; $492a: $01 $fe $50
    xor a                                         ; $492d: $af
    rrca                                          ; $492e: $0f
    ldh a, [$59]                                  ; $492f: $f0 $59
    rst $38                                       ; $4931: $ff
    adc b                                         ; $4932: $88
    rst $38                                       ; $4933: $ff
    ld h, $ff                                     ; $4934: $26 $ff
    ld [$40ff], sp                                ; $4936: $08 $ff $40
    rst $38                                       ; $4939: $ff
    ld de, $6aee                                  ; $493a: $11 $ee $6a
    sub l                                         ; $493d: $95
    adc a                                         ; $493e: $8f
    ld [hl], b                                    ; $493f: $70
    ld d, b                                       ; $4940: $50
    rst $38                                       ; $4941: $ff
    inc b                                         ; $4942: $04
    rst $38                                       ; $4943: $ff
    ld h, d                                       ; $4944: $62
    rst $38                                       ; $4945: $ff
    cp b                                          ; $4946: $b8
    rst $38                                       ; $4947: $ff
    ld b, l                                       ; $4948: $45
    rst $38                                       ; $4949: $ff
    ld [hl+], a                                   ; $494a: $22
    db $dd                                        ; $494b: $dd
    add c                                         ; $494c: $81
    ld a, [hl]                                    ; $494d: $7e
    ld b, e                                       ; $494e: $43
    cp h                                          ; $494f: $bc
    ld d, l                                       ; $4950: $55
    xor d                                         ; $4951: $aa
    rst $38                                       ; $4952: $ff
    nop                                           ; $4953: $00
    rst $38                                       ; $4954: $ff
    nop                                           ; $4955: $00
    cp $01                                        ; $4956: $fe $01
    ld d, c                                       ; $4958: $51
    xor [hl]                                      ; $4959: $ae
    cp a                                          ; $495a: $bf
    ld b, b                                       ; $495b: $40
    ld b, [hl]                                    ; $495c: $46
    cp c                                          ; $495d: $b9
    ld e, b                                       ; $495e: $58
    and a                                         ; $495f: $a7
    db $d3                                        ; $4960: $d3
    inc l                                         ; $4961: $2c
    cp $01                                        ; $4962: $fe $01
    rst $38                                       ; $4964: $ff
    nop                                           ; $4965: $00
    db $f4                                        ; $4966: $f4
    ld a, [bc]                                    ; $4967: $0a
    adc [hl]                                      ; $4968: $8e
    ld [hl], b                                    ; $4969: $70
    ld l, b                                       ; $496a: $68
    sub b                                         ; $496b: $90
    jp c, $9024                                   ; $496c: $da $24 $90

    ld l, [hl]                                    ; $496f: $6e
    ld a, e                                       ; $4970: $7b
    add h                                         ; $4971: $84
    xor a                                         ; $4972: $af
    ld d, b                                       ; $4973: $50
    rst $38                                       ; $4974: $ff
    nop                                           ; $4975: $00
    rst $38                                       ; $4976: $ff
    nop                                           ; $4977: $00
    sbc e                                         ; $4978: $9b
    ld h, h                                       ; $4979: $64
    ccf                                           ; $497a: $3f
    nop                                           ; $497b: $00
    and [hl]                                      ; $497c: $a6
    ld e, c                                       ; $497d: $59
    ld c, c                                       ; $497e: $49
    or [hl]                                       ; $497f: $b6
    rst $38                                       ; $4980: $ff
    nop                                           ; $4981: $00
    ld [hl], l                                    ; $4982: $75
    adc d                                         ; $4983: $8a
    rst $38                                       ; $4984: $ff
    nop                                           ; $4985: $00
    ld a, [$cd05]                                 ; $4986: $fa $05 $cd
    ld [hl-], a                                   ; $4989: $32
    ld [hl], a                                    ; $498a: $77
    adc b                                         ; $498b: $88
    sbc c                                         ; $498c: $99
    ld h, [hl]                                    ; $498d: $66
    ld b, d                                       ; $498e: $42
    cp l                                          ; $498f: $bd
    ld bc, $80fe                                  ; $4990: $01 $fe $80
    rst $38                                       ; $4993: $ff
    inc b                                         ; $4994: $04
    rst $38                                       ; $4995: $ff
    inc sp                                        ; $4996: $33
    rst $38                                       ; $4997: $ff
    and b                                         ; $4998: $a0
    rst $38                                       ; $4999: $ff
    inc e                                         ; $499a: $1c
    rst $38                                       ; $499b: $ff
    db $ec                                        ; $499c: $ec
    rst $38                                       ; $499d: $ff
    ld e, l                                       ; $499e: $5d
    rst $38                                       ; $499f: $ff
    add hl, bc                                    ; $49a0: $09
    or $00                                        ; $49a1: $f6 $00
    rst $38                                       ; $49a3: $ff
    ld [hl+], a                                   ; $49a4: $22
    rst $38                                       ; $49a5: $ff
    ld [$62ff], sp                                ; $49a6: $08 $ff $62
    rst $38                                       ; $49a9: $ff
    sbc l                                         ; $49aa: $9d
    rst $38                                       ; $49ab: $ff
    ret z                                         ; $49ac: $c8

    rst $38                                       ; $49ad: $ff
    ld e, e                                       ; $49ae: $5b
    rst $38                                       ; $49af: $ff

jr_072_49b0:
    ld [bc], a                                    ; $49b0: $02
    db $fd                                        ; $49b1: $fd
    add c                                         ; $49b2: $81
    rst $38                                       ; $49b3: $ff
    jr @+$01                                      ; $49b4: $18 $ff

    ld d, e                                       ; $49b6: $53
    rst $38                                       ; $49b7: $ff
    cp b                                          ; $49b8: $b8
    rst $38                                       ; $49b9: $ff
    ld h, l                                       ; $49ba: $65
    rst $38                                       ; $49bb: $ff
    set 7, a                                      ; $49bc: $cb $ff
    cp l                                          ; $49be: $bd
    rst $38                                       ; $49bf: $ff
    inc b                                         ; $49c0: $04
    ei                                            ; $49c1: $fb
    nop                                           ; $49c2: $00
    rst $38                                       ; $49c3: $ff
    db $10                                        ; $49c4: $10
    rst $38                                       ; $49c5: $ff
    ld h, $ff                                     ; $49c6: $26 $ff
    db $10                                        ; $49c8: $10
    rst $38                                       ; $49c9: $ff
    ld b, e                                       ; $49ca: $43
    rst $38                                       ; $49cb: $ff
    reti                                          ; $49cc: $d9


    rst $38                                       ; $49cd: $ff
    sbc e                                         ; $49ce: $9b
    rst $38                                       ; $49cf: $ff
    rst $30                                       ; $49d0: $f7
    rst $38                                       ; $49d1: $ff
    rst $38                                       ; $49d2: $ff
    rst $38                                       ; $49d3: $ff
    rst $38                                       ; $49d4: $ff
    rst $38                                       ; $49d5: $ff
    rst $38                                       ; $49d6: $ff
    rst $38                                       ; $49d7: $ff
    rst $18                                       ; $49d8: $df
    rst $38                                       ; $49d9: $ff
    rst $30                                       ; $49da: $f7
    rst $38                                       ; $49db: $ff
    ld l, l                                       ; $49dc: $6d
    rst $30                                       ; $49dd: $f7
    ld h, e                                       ; $49de: $63
    rst $30                                       ; $49df: $f7
    db $fd                                        ; $49e0: $fd
    rst $38                                       ; $49e1: $ff
    rst $18                                       ; $49e2: $df
    rst $38                                       ; $49e3: $ff
    rst $38                                       ; $49e4: $ff
    rst $38                                       ; $49e5: $ff
    rst $38                                       ; $49e6: $ff
    rst $38                                       ; $49e7: $ff
    rst $38                                       ; $49e8: $ff
    ei                                            ; $49e9: $fb
    cp c                                          ; $49ea: $b9
    ei                                            ; $49eb: $fb
    ld a, d                                       ; $49ec: $7a
    pop af                                        ; $49ed: $f1
    jr nz, jr_072_49b0                            ; $49ee: $20 $c0

    rst $30                                       ; $49f0: $f7
    rst $38                                       ; $49f1: $ff
    ei                                            ; $49f2: $fb
    rst $38                                       ; $49f3: $ff
    rst $38                                       ; $49f4: $ff
    rst $38                                       ; $49f5: $ff
    rst $38                                       ; $49f6: $ff
    rst $38                                       ; $49f7: $ff
    rst $18                                       ; $49f8: $df
    rst $38                                       ; $49f9: $ff
    ld a, e                                       ; $49fa: $7b
    rst $38                                       ; $49fb: $ff
    or a                                          ; $49fc: $b7
    rst $38                                       ; $49fd: $ff
    adc a                                         ; $49fe: $8f
    ld a, a                                       ; $49ff: $7f
    cp $ff                                        ; $4a00: $fe $ff
    rst $38                                       ; $4a02: $ff
    rst $38                                       ; $4a03: $ff
    rst $38                                       ; $4a04: $ff
    rst $38                                       ; $4a05: $ff
    rst $38                                       ; $4a06: $ff
    rst $38                                       ; $4a07: $ff
    ld a, a                                       ; $4a08: $7f
    rst $38                                       ; $4a09: $ff
    cp [hl]                                       ; $4a0a: $be
    rst $38                                       ; $4a0b: $ff
    ld a, l                                       ; $4a0c: $7d
    rst $38                                       ; $4a0d: $ff
    ld c, $ff                                     ; $4a0e: $0e $ff
    add d                                         ; $4a10: $82
    ld bc, $c729                                  ; $4a11: $01 $29 $c7
    ld c, b                                       ; $4a14: $48
    rst $28                                       ; $4a15: $ef
    db $10                                        ; $4a16: $10
    rst $28                                       ; $4a17: $ef
    add h                                         ; $4a18: $84
    ld a, e                                       ; $4a19: $7b
    ld hl, $76de                                  ; $4a1a: $21 $de $76
    adc c                                         ; $4a1d: $89
    xor e                                         ; $4a1e: $ab
    ld d, h                                       ; $4a1f: $54

jr_072_4a20:
    ld d, [hl]                                    ; $4a20: $56
    add e                                         ; $4a21: $83
    inc b                                         ; $4a22: $04
    rst $20                                       ; $4a23: $e7
    ld e, b                                       ; $4a24: $58
    rst $20                                       ; $4a25: $e7
    add c                                         ; $4a26: $81
    ld a, a                                       ; $4a27: $7f
    inc b                                         ; $4a28: $04
    ei                                            ; $4a29: $fb
    ld b, c                                       ; $4a2a: $41
    cp [hl]                                       ; $4a2b: $be
    rra                                           ; $4a2c: $1f
    ldh [$a6], a                                  ; $4a2d: $e0 $a6
    ld e, c                                       ; $4a2f: $59
    jr nz, @+$01                                  ; $4a30: $20 $ff

    sbc c                                         ; $4a32: $99
    rst $38                                       ; $4a33: $ff
    ld [hl+], a                                   ; $4a34: $22
    rst $38                                       ; $4a35: $ff
    ld bc, $44ff                                  ; $4a36: $01 $ff $44
    cp e                                          ; $4a39: $bb
    xor d                                         ; $4a3a: $aa
    ld d, l                                       ; $4a3b: $55
    ld e, $e1                                     ; $4a3c: $1e $e1
    rst $30                                       ; $4a3e: $f7
    ld [$ff10], sp                                ; $4a3f: $08 $10 $ff
    adc d                                         ; $4a42: $8a
    rst $38                                       ; $4a43: $ff
    ldh [rIE], a                                  ; $4a44: $e0 $ff
    inc d                                         ; $4a46: $14
    rst $38                                       ; $4a47: $ff
    adc b                                         ; $4a48: $88
    ld [hl], a                                    ; $4a49: $77
    dec b                                         ; $4a4a: $05
    ld a, [$7887]                                 ; $4a4b: $fa $87 $78
    cp $01                                        ; $4a4e: $fe $01
    rst $38                                       ; $4a50: $ff
    nop                                           ; $4a51: $00
    rst $38                                       ; $4a52: $ff
    nop                                           ; $4a53: $00
    db $fd                                        ; $4a54: $fd
    ld [bc], a                                    ; $4a55: $02
    and e                                         ; $4a56: $a3
    ld e, h                                       ; $4a57: $5c
    ld a, [hl]                                    ; $4a58: $7e
    add c                                         ; $4a59: $81
    adc l                                         ; $4a5a: $8d
    ld [hl], d                                    ; $4a5b: $72
    ld h, d                                       ; $4a5c: $62
    sbc l                                         ; $4a5d: $9d
    inc b                                         ; $4a5e: $04
    ei                                            ; $4a5f: $fb
    db $fd                                        ; $4a60: $fd
    ld [bc], a                                    ; $4a61: $02
    rst $38                                       ; $4a62: $ff
    nop                                           ; $4a63: $00
    jp hl                                         ; $4a64: $e9


    inc d                                         ; $4a65: $14
    dec e                                         ; $4a66: $1d
    ldh [$d0], a                                  ; $4a67: $e0 $d0
    jr nz, jr_072_4a20                            ; $4a69: $20 $b5

    ld c, b                                       ; $4a6b: $48
    ld b, c                                       ; $4a6c: $41
    cp h                                          ; $4a6d: $bc
    ld [hl+], a                                   ; $4a6e: $22
    db $dd                                        ; $4a6f: $dd
    ld e, [hl]                                    ; $4a70: $5e
    and c                                         ; $4a71: $a1
    rst $38                                       ; $4a72: $ff
    nop                                           ; $4a73: $00
    rst $38                                       ; $4a74: $ff
    nop                                           ; $4a75: $00
    scf                                           ; $4a76: $37
    ret z                                         ; $4a77: $c8

    ld a, [hl]                                    ; $4a78: $7e
    ld bc, $b24d                                  ; $4a79: $01 $4d $b2
    dec h                                         ; $4a7c: $25
    jp c, $f708                                   ; $4a7d: $da $08 $f7

    db $eb                                        ; $4a80: $eb
    inc d                                         ; $4a81: $14
    rst $38                                       ; $4a82: $ff
    nop                                           ; $4a83: $00
    push af                                       ; $4a84: $f5
    ld a, [bc]                                    ; $4a85: $0a
    sbc d                                         ; $4a86: $9a
    ld h, l                                       ; $4a87: $65
    rst $28                                       ; $4a88: $ef
    db $10                                        ; $4a89: $10
    ld [hl-], a                                   ; $4a8a: $32
    call $f609                                    ; $4a8b: $cd $09 $f6
    db $10                                        ; $4a8e: $10
    rst $28                                       ; $4a8f: $ef
    nop                                           ; $4a90: $00
    rst $38                                       ; $4a91: $ff
    db $10                                        ; $4a92: $10
    rst $38                                       ; $4a93: $ff
    call z, $81ff                                 ; $4a94: $cc $ff $81
    rst $38                                       ; $4a97: $ff
    ld [hl], d                                    ; $4a98: $72
    rst $38                                       ; $4a99: $ff
    or e                                          ; $4a9a: $b3
    rst $38                                       ; $4a9b: $ff
    push de                                       ; $4a9c: $d5
    rst $38                                       ; $4a9d: $ff
    ld a, a                                       ; $4a9e: $7f
    rst $38                                       ; $4a9f: $ff
    ld [bc], a                                    ; $4aa0: $02
    rst $38                                       ; $4aa1: $ff
    adc b                                         ; $4aa2: $88
    rst $38                                       ; $4aa3: $ff
    ld hl, $8aff                                  ; $4aa4: $21 $ff $8a

jr_072_4aa7:
    rst $38                                       ; $4aa7: $ff
    ld [hl], l                                    ; $4aa8: $75
    rst $38                                       ; $4aa9: $ff
    inc hl                                        ; $4aaa: $23
    rst $38                                       ; $4aab: $ff
    cp e                                          ; $4aac: $bb
    rst $38                                       ; $4aad: $ff
    rst $18                                       ; $4aae: $df
    rst $38                                       ; $4aaf: $ff
    inc b                                         ; $4ab0: $04
    rst $38                                       ; $4ab1: $ff
    ld h, b                                       ; $4ab2: $60
    rst $38                                       ; $4ab3: $ff
    ld c, h                                       ; $4ab4: $4c
    rst $38                                       ; $4ab5: $ff
    ldh [rIE], a                                  ; $4ab6: $e0 $ff
    sub l                                         ; $4ab8: $95
    rst $38                                       ; $4ab9: $ff
    cpl                                           ; $4aba: $2f
    rst $38                                       ; $4abb: $ff
    reti                                          ; $4abc: $d9


    rst $38                                       ; $4abd: $ff
    ld a, a                                       ; $4abe: $7f
    rst $38                                       ; $4abf: $ff
    ld [bc], a                                    ; $4ac0: $02
    rst $38                                       ; $4ac1: $ff
    ld b, b                                       ; $4ac2: $40
    rst $38                                       ; $4ac3: $ff
    sbc b                                         ; $4ac4: $98
    rst $38                                       ; $4ac5: $ff
    ld b, d                                       ; $4ac6: $42
    rst $38                                       ; $4ac7: $ff
    inc c                                         ; $4ac8: $0c
    rst $38                                       ; $4ac9: $ff
    ld h, a                                       ; $4aca: $67
    rst $38                                       ; $4acb: $ff
    or l                                          ; $4acc: $b5
    rst $38                                       ; $4acd: $ff
    rst $28                                       ; $4ace: $ef
    rst $38                                       ; $4acf: $ff
    db $fd                                        ; $4ad0: $fd
    rst $38                                       ; $4ad1: $ff
    rst $38                                       ; $4ad2: $ff
    rst $38                                       ; $4ad3: $ff
    rst $38                                       ; $4ad4: $ff
    rst $38                                       ; $4ad5: $ff
    rst $38                                       ; $4ad6: $ff
    rst $38                                       ; $4ad7: $ff
    ld a, e                                       ; $4ad8: $7b
    rst $38                                       ; $4ad9: $ff
    rst $10                                       ; $4ada: $d7
    rst $28                                       ; $4adb: $ef
    adc h                                         ; $4adc: $8c
    rst $28                                       ; $4add: $ef
    jr z, jr_072_4aa7                             ; $4ade: $28 $c7

    rst $38                                       ; $4ae0: $ff
    rst $38                                       ; $4ae1: $ff
    rst $38                                       ; $4ae2: $ff
    rst $38                                       ; $4ae3: $ff
    rst $38                                       ; $4ae4: $ff
    rst $38                                       ; $4ae5: $ff
    db $fd                                        ; $4ae6: $fd
    rst $38                                       ; $4ae7: $ff
    rst $18                                       ; $4ae8: $df
    rst $30                                       ; $4ae9: $f7
    ld h, e                                       ; $4aea: $63
    rst $30                                       ; $4aeb: $f7
    sub [hl]                                      ; $4aec: $96
    db $e3                                        ; $4aed: $e3
    ld b, c                                       ; $4aee: $41
    add b                                         ; $4aef: $80
    cp a                                          ; $4af0: $bf
    rst $38                                       ; $4af1: $ff
    rst $38                                       ; $4af2: $ff
    rst $38                                       ; $4af3: $ff
    rst $38                                       ; $4af4: $ff
    rst $38                                       ; $4af5: $ff
    rst $30                                       ; $4af6: $f7
    rst $38                                       ; $4af7: $ff
    cp e                                          ; $4af8: $bb
    rst $38                                       ; $4af9: $ff
    ld [hl], a                                    ; $4afa: $77
    rst $38                                       ; $4afb: $ff
    inc a                                         ; $4afc: $3c
    rst $38                                       ; $4afd: $ff
    ld h, l                                       ; $4afe: $65
    rst $38                                       ; $4aff: $ff
    rst $38                                       ; $4b00: $ff
    rst $38                                       ; $4b01: $ff
    rst $38                                       ; $4b02: $ff
    rst $38                                       ; $4b03: $ff
    rst $38                                       ; $4b04: $ff
    rst $38                                       ; $4b05: $ff
    db $fd                                        ; $4b06: $fd
    rst $38                                       ; $4b07: $ff
    rst $28                                       ; $4b08: $ef
    rst $38                                       ; $4b09: $ff
    sub $ff                                       ; $4b0a: $d6 $ff
    add hl, sp                                    ; $4b0c: $39
    rst $38                                       ; $4b0d: $ff
    ld b, b                                       ; $4b0e: $40
    rst $38                                       ; $4b0f: $ff
    ld d, l                                       ; $4b10: $55
    adc [hl]                                      ; $4b11: $8e
    ld b, c                                       ; $4b12: $41
    rst $18                                       ; $4b13: $df
    ld [hl+], a                                   ; $4b14: $22
    db $dd                                        ; $4b15: $dd
    db $10                                        ; $4b16: $10
    rst $28                                       ; $4b17: $ef
    add l                                         ; $4b18: $85
    ld a, d                                       ; $4b19: $7a
    db $ec                                        ; $4b1a: $ec
    inc de                                        ; $4b1b: $13
    ld d, a                                       ; $4b1c: $57
    xor b                                         ; $4b1d: $a8
    rst $38                                       ; $4b1e: $ff
    nop                                           ; $4b1f: $00
    ld a, [hl+]                                   ; $4b20: $2a
    rlca                                          ; $4b21: $07
    nop                                           ; $4b22: $00
    xor a                                         ; $4b23: $af
    ld d, h                                       ; $4b24: $54
    xor a                                         ; $4b25: $af
    ld de, $06ee                                  ; $4b26: $11 $ee $06
    ld sp, hl                                     ; $4b29: $f9
    ld a, $c1                                     ; $4b2a: $3e $c1
    ld c, l                                       ; $4b2c: $4d
    or d                                          ; $4b2d: $b2
    ld a, [$6605]                                 ; $4b2e: $fa $05 $66
    rst $38                                       ; $4b31: $ff
    adc e                                         ; $4b32: $8b
    rst $38                                       ; $4b33: $ff
    inc b                                         ; $4b34: $04
    rst $38                                       ; $4b35: $ff
    ld [de], a                                    ; $4b36: $12
    db $ed                                        ; $4b37: $ed
    xor b                                         ; $4b38: $a8
    ld d, a                                       ; $4b39: $57
    dec a                                         ; $4b3a: $3d
    jp nz, Jump_000_10ef                          ; $4b3b: $c2 $ef $10

    cp l                                          ; $4b3e: $bd
    ld b, d                                       ; $4b3f: $42
    jr z, @+$01                                   ; $4b40: $28 $ff

    add c                                         ; $4b42: $81
    rst $38                                       ; $4b43: $ff
    ld d, b                                       ; $4b44: $50
    rst $38                                       ; $4b45: $ff
    ld [hl+], a                                   ; $4b46: $22
    db $dd                                        ; $4b47: $dd
    inc d                                         ; $4b48: $14
    db $eb                                        ; $4b49: $eb
    ld c, $f1                                     ; $4b4a: $0e $f1
    db $fd                                        ; $4b4c: $fd
    ld [bc], a                                    ; $4b4d: $02
    rst $10                                       ; $4b4e: $d7
    jr z, @+$01                                   ; $4b4f: $28 $ff

    nop                                           ; $4b51: $00
    ei                                            ; $4b52: $fb
    inc b                                         ; $4b53: $04
    ld b, [hl]                                    ; $4b54: $46
    cp c                                          ; $4b55: $b9
    db $fd                                        ; $4b56: $fd
    ld [bc], a                                    ; $4b57: $02
    dec de                                        ; $4b58: $1b
    db $e4                                        ; $4b59: $e4
    adc c                                         ; $4b5a: $89
    halt                                          ; $4b5b: $76
    db $10                                        ; $4b5c: $10

jr_072_4b5d:
    rst $28                                       ; $4b5d: $ef
    nop                                           ; $4b5e: $00
    rst $38                                       ; $4b5f: $ff
    rst $38                                       ; $4b60: $ff
    nop                                           ; $4b61: $00
    db $d3                                        ; $4b62: $d3
    jr z, jr_072_4b9f                             ; $4b63: $28 $3a

    pop bc                                        ; $4b65: $c1
    and b                                         ; $4b66: $a0
    ld b, b                                       ; $4b67: $40
    ld l, d                                       ; $4b68: $6a
    sub c                                         ; $4b69: $91
    nop                                           ; $4b6a: $00
    ei                                            ; $4b6b: $fb
    add h                                         ; $4b6c: $84
    ld a, e                                       ; $4b6d: $7b
    ld [$ffff], sp                                ; $4b6e: $08 $ff $ff
    nop                                           ; $4b71: $00
    rst $38                                       ; $4b72: $ff
    nop                                           ; $4b73: $00
    ld l, a                                       ; $4b74: $6f
    sub b                                         ; $4b75: $90
    db $fd                                        ; $4b76: $fd
    ld [bc], a                                    ; $4b77: $02
    sbc d                                         ; $4b78: $9a
    ld h, l                                       ; $4b79: $65
    sub h                                         ; $4b7a: $94
    ld l, e                                       ; $4b7b: $6b
    jr nz, jr_072_4b5d                            ; $4b7c: $20 $df

    db $10                                        ; $4b7e: $10
    rst $38                                       ; $4b7f: $ff
    rst $38                                       ; $4b80: $ff
    nop                                           ; $4b81: $00
    db $eb                                        ; $4b82: $eb
    inc d                                         ; $4b83: $14
    dec [hl]                                      ; $4b84: $35
    jp z, $21de                                   ; $4b85: $ca $de $21

    ld h, l                                       ; $4b88: $65
    sbc d                                         ; $4b89: $9a
    dec h                                         ; $4b8a: $25
    jp c, $bf40                                   ; $4b8b: $da $40 $bf

    ld [$42ff], sp                                ; $4b8e: $08 $ff $42
    rst $38                                       ; $4b91: $ff
    jr nc, @+$01                                  ; $4b92: $30 $ff

    ld b, $ff                                     ; $4b94: $06 $ff
    ret                                           ; $4b96: $c9


    rst $38                                       ; $4b97: $ff
    call z, Call_072_5bff                         ; $4b98: $cc $ff $5b
    rst $38                                       ; $4b9b: $ff
    db $fd                                        ; $4b9c: $fd
    rst $38                                       ; $4b9d: $ff
    rst $18                                       ; $4b9e: $df

jr_072_4b9f:
    rst $38                                       ; $4b9f: $ff
    ld hl, $85ff                                  ; $4ba0: $21 $ff $85
    rst $38                                       ; $4ba3: $ff
    dec hl                                        ; $4ba4: $2b
    rst $38                                       ; $4ba5: $ff
    sub $ff                                       ; $4ba6: $d6 $ff
    adc h                                         ; $4ba8: $8c
    rst $38                                       ; $4ba9: $ff
    cp l                                          ; $4baa: $bd
    rst $38                                       ; $4bab: $ff
    rst $30                                       ; $4bac: $f7
    rst $38                                       ; $4bad: $ff
    ei                                            ; $4bae: $fb
    rst $38                                       ; $4baf: $ff
    add c                                         ; $4bb0: $81
    rst $38                                       ; $4bb1: $ff
    ld [hl-], a                                   ; $4bb2: $32
    rst $38                                       ; $4bb3: $ff
    add c                                         ; $4bb4: $81
    rst $38                                       ; $4bb5: $ff
    ld d, h                                       ; $4bb6: $54
    rst $38                                       ; $4bb7: $ff
    cp l                                          ; $4bb8: $bd
    rst $38                                       ; $4bb9: $ff
    sbc e                                         ; $4bba: $9b
    rst $38                                       ; $4bbb: $ff
    cp $ff                                        ; $4bbc: $fe $ff
    rst $38                                       ; $4bbe: $ff
    rst $38                                       ; $4bbf: $ff
    nop                                           ; $4bc0: $00
    rst $38                                       ; $4bc1: $ff
    ld h, e                                       ; $4bc2: $63
    rst $38                                       ; $4bc3: $ff
    ld a, [bc]                                    ; $4bc4: $0a
    rst $38                                       ; $4bc5: $ff
    ld sp, $9eff                                  ; $4bc6: $31 $ff $9e
    rst $38                                       ; $4bc9: $ff
    ld e, l                                       ; $4bca: $5d
    rst $38                                       ; $4bcb: $ff
    rst $30                                       ; $4bcc: $f7
    rst $38                                       ; $4bcd: $ff
    rst $38                                       ; $4bce: $ff
    rst $38                                       ; $4bcf: $ff
    rst $38                                       ; $4bd0: $ff
    rst $38                                       ; $4bd1: $ff
    rst $38                                       ; $4bd2: $ff
    rst $38                                       ; $4bd3: $ff
    rst $38                                       ; $4bd4: $ff
    rst $38                                       ; $4bd5: $ff
    cp l                                          ; $4bd6: $bd
    rst $38                                       ; $4bd7: $ff
    halt                                          ; $4bd8: $76
    rst $18                                       ; $4bd9: $df
    ld [de], a                                    ; $4bda: $12
    rst $18                                       ; $4bdb: $df
    ld d, c                                       ; $4bdc: $51
    adc a                                         ; $4bdd: $8f
    inc b                                         ; $4bde: $04
    inc bc                                        ; $4bdf: $03
    rst $38                                       ; $4be0: $ff
    rst $38                                       ; $4be1: $ff
    rst $38                                       ; $4be2: $ff
    rst $38                                       ; $4be3: $ff
    rst $18                                       ; $4be4: $df
    rst $38                                       ; $4be5: $ff
    ld a, e                                       ; $4be6: $7b
    rst $38                                       ; $4be7: $ff
    or a                                          ; $4be8: $b7
    rst $28                                       ; $4be9: $ef
    ld [$6def], sp                                ; $4bea: $08 $ef $6d
    add a                                         ; $4bed: $87
    add d                                         ; $4bee: $82
    ld bc, $ffff                                  ; $4bef: $01 $ff $ff
    rst $38                                       ; $4bf2: $ff
    rst $38                                       ; $4bf3: $ff
    ld a, a                                       ; $4bf4: $7f
    rst $38                                       ; $4bf5: $ff
    cp [hl]                                       ; $4bf6: $be
    rst $38                                       ; $4bf7: $ff
    ld a, l                                       ; $4bf8: $7d
    rst $38                                       ; $4bf9: $ff
    ldh a, [rIE]                                  ; $4bfa: $f0 $ff
    sub l                                         ; $4bfc: $95
    rst $38                                       ; $4bfd: $ff
    add b                                         ; $4bfe: $80
    rst $38                                       ; $4bff: $ff
    rst $38                                       ; $4c00: $ff
    rst $38                                       ; $4c01: $ff
    rst $38                                       ; $4c02: $ff
    rst $38                                       ; $4c03: $ff
    rst $18                                       ; $4c04: $df
    rst $38                                       ; $4c05: $ff
    rst $30                                       ; $4c06: $f7
    rst $38                                       ; $4c07: $ff
    ld l, l                                       ; $4c08: $6d
    rst $38                                       ; $4c09: $ff
    and $ff                                       ; $4c0a: $e6 $ff
    nop                                           ; $4c0c: $00
    rst $38                                       ; $4c0d: $ff
    ld b, b                                       ; $4c0e: $40
    rst $38                                       ; $4c0f: $ff
    add h                                         ; $4c10: $84
    cp b                                          ; $4c11: $b8
    ld c, b                                       ; $4c12: $48
    or [hl]                                       ; $4c13: $b6
    ld b, c                                       ; $4c14: $41
    cp [hl]                                       ; $4c15: $be
    inc d                                         ; $4c16: $14
    db $eb                                        ; $4c17: $eb
    ret c                                         ; $4c18: $d8

    daa                                           ; $4c19: $27
    xor [hl]                                      ; $4c1a: $ae
    ld d, c                                       ; $4c1b: $51
    rst $38                                       ; $4c1c: $ff
    nop                                           ; $4c1d: $00
    rst $38                                       ; $4c1e: $ff
    nop                                           ; $4c1f: $00
    ld d, d                                       ; $4c20: $52
    rrca                                          ; $4c21: $0f
    db $10                                        ; $4c22: $10
    rst $18                                       ; $4c23: $df
    ld h, h                                       ; $4c24: $64
    sbc e                                         ; $4c25: $9b
    ld a, [de]                                    ; $4c26: $1a
    push hl                                       ; $4c27: $e5
    ld a, h                                       ; $4c28: $7c
    add e                                         ; $4c29: $83
    sbc e                                         ; $4c2a: $9b
    ld h, h                                       ; $4c2b: $64
    push af                                       ; $4c2c: $f5
    ld a, [bc]                                    ; $4c2d: $0a
    rst $38                                       ; $4c2e: $ff
    nop                                           ; $4c2f: $00
    ld l, $ff                                     ; $4c30: $2e $ff
    ld de, $48ff                                  ; $4c32: $11 $ff $48
    or a                                          ; $4c35: $b7
    and b                                         ; $4c36: $a0
    ld e, a                                       ; $4c37: $5f
    ld a, d                                       ; $4c38: $7a
    add l                                         ; $4c39: $85
    rst $18                                       ; $4c3a: $df
    jr nz, jr_072_4cb8                            ; $4c3b: $20 $7b

    add h                                         ; $4c3d: $84
    rst $38                                       ; $4c3e: $ff
    nop                                           ; $4c3f: $00
    dec b                                         ; $4c40: $05
    rst $38                                       ; $4c41: $ff
    ld b, b                                       ; $4c42: $40
    rst $38                                       ; $4c43: $ff
    adc b                                         ; $4c44: $88
    ld [hl], a                                    ; $4c45: $77
    ld d, d                                       ; $4c46: $52
    xor l                                         ; $4c47: $ad
    dec e                                         ; $4c48: $1d
    ld [c], a                                     ; $4c49: $e2
    ld a, [$af05]                                 ; $4c4a: $fa $05 $af
    ld d, b                                       ; $4c4d: $50
    rst $38                                       ; $4c4e: $ff
    nop                                           ; $4c4f: $00
    rst $30                                       ; $4c50: $f7
    ld [$738c], sp                                ; $4c51: $08 $8c $73
    ei                                            ; $4c54: $fb
    inc b                                         ; $4c55: $04
    ld [hl], $c9                                  ; $4c56: $36 $c9
    inc h                                         ; $4c58: $24
    db $db                                        ; $4c59: $db
    ld b, d                                       ; $4c5a: $42
    cp l                                          ; $4c5b: $bd
    nop                                           ; $4c5c: $00
    rst $38                                       ; $4c5d: $ff
    ld [$a7ff], sp                                ; $4c5e: $08 $ff $a7
    ld d, b                                       ; $4c61: $50
    ld [hl], h                                    ; $4c62: $74
    add e                                         ; $4c63: $83
    ld b, c                                       ; $4c64: $41
    add b                                         ; $4c65: $80
    push de                                       ; $4c66: $d5
    ld [hl+], a                                   ; $4c67: $22
    ld [de], a                                    ; $4c68: $12
    push hl                                       ; $4c69: $e5
    ld [$20f7], sp                                ; $4c6a: $08 $f7 $20
    rst $38                                       ; $4c6d: $ff
    add [hl]                                      ; $4c6e: $86
    rst $38                                       ; $4c6f: $ff
    rst $38                                       ; $4c70: $ff
    nop                                           ; $4c71: $00
    sbc $21                                       ; $4c72: $de $21
    ei                                            ; $4c74: $fb
    inc b                                         ; $4c75: $04
    inc [hl]                                      ; $4c76: $34
    bit 2, b                                      ; $4c77: $cb $50
    xor a                                         ; $4c79: $af
    add c                                         ; $4c7a: $81
    ld a, [hl]                                    ; $4c7b: $7e
    ld b, b                                       ; $4c7c: $40
    rst $38                                       ; $4c7d: $ff
    inc b                                         ; $4c7e: $04
    rst $38                                       ; $4c7f: $ff
    rst $10                                       ; $4c80: $d7
    jr z, jr_072_4ced                             ; $4c81: $28 $6a

    sub l                                         ; $4c83: $95
    cp l                                          ; $4c84: $bd
    ld b, d                                       ; $4c85: $42
    jp z, $9635                                   ; $4c86: $ca $35 $96

    ld l, c                                       ; $4c89: $69
    nop                                           ; $4c8a: $00
    rst $38                                       ; $4c8b: $ff
    jr nz, @+$01                                  ; $4c8c: $20 $ff

    ld bc, $c2ff                                  ; $4c8e: $01 $ff $c2
    rst $38                                       ; $4c91: $ff
    jr @+$01                                      ; $4c92: $18 $ff

    daa                                           ; $4c94: $27
    rst $38                                       ; $4c95: $ff
    ld [hl-], a                                   ; $4c96: $32
    rst $38                                       ; $4c97: $ff
    cp e                                          ; $4c98: $bb
    rst $38                                       ; $4c99: $ff
    rst $18                                       ; $4c9a: $df
    rst $38                                       ; $4c9b: $ff
    rst $38                                       ; $4c9c: $ff
    rst $38                                       ; $4c9d: $ff
    rst $38                                       ; $4c9e: $ff
    rst $38                                       ; $4c9f: $ff
    inc d                                         ; $4ca0: $14
    rst $38                                       ; $4ca1: $ff
    xor [hl]                                      ; $4ca2: $ae
    rst $38                                       ; $4ca3: $ff
    ld e, c                                       ; $4ca4: $59
    rst $38                                       ; $4ca5: $ff
    ld [hl-], a                                   ; $4ca6: $32
    rst $38                                       ; $4ca7: $ff
    reti                                          ; $4ca8: $d9


    rst $38                                       ; $4ca9: $ff
    ld a, a                                       ; $4caa: $7f
    rst $38                                       ; $4cab: $ff
    cp a                                          ; $4cac: $bf
    rst $38                                       ; $4cad: $ff
    rst $38                                       ; $4cae: $ff
    rst $38                                       ; $4caf: $ff
    ret                                           ; $4cb0: $c9


    rst $38                                       ; $4cb1: $ff
    inc b                                         ; $4cb2: $04
    rst $38                                       ; $4cb3: $ff
    ld d, b                                       ; $4cb4: $50
    rst $38                                       ; $4cb5: $ff
    or $ff                                        ; $4cb6: $f6 $ff

jr_072_4cb8:
    or l                                          ; $4cb8: $b5
    rst $38                                       ; $4cb9: $ff
    rst $28                                       ; $4cba: $ef
    rst $38                                       ; $4cbb: $ff
    rst $38                                       ; $4cbc: $ff
    rst $38                                       ; $4cbd: $ff
    rst $38                                       ; $4cbe: $ff
    rst $38                                       ; $4cbf: $ff
    adc h                                         ; $4cc0: $8c
    rst $38                                       ; $4cc1: $ff
    jr z, @+$01                                   ; $4cc2: $28 $ff

    rst $00                                       ; $4cc4: $c7
    rst $38                                       ; $4cc5: $ff
    ld a, e                                       ; $4cc6: $7b
    rst $38                                       ; $4cc7: $ff
    push de                                       ; $4cc8: $d5
    rst $38                                       ; $4cc9: $ff
    ld a, a                                       ; $4cca: $7f
    rst $38                                       ; $4ccb: $ff
    db $fd                                        ; $4ccc: $fd
    rst $38                                       ; $4ccd: $ff
    rst $38                                       ; $4cce: $ff
    rst $38                                       ; $4ccf: $ff
    rst $38                                       ; $4cd0: $ff
    rst $38                                       ; $4cd1: $ff
    db $fd                                        ; $4cd2: $fd
    rst $38                                       ; $4cd3: $ff
    rst $10                                       ; $4cd4: $d7
    rst $38                                       ; $4cd5: $ff
    ld l, e                                       ; $4cd6: $6b
    cp a                                          ; $4cd7: $bf
    adc b                                         ; $4cd8: $88
    cp a                                          ; $4cd9: $bf
    and h                                         ; $4cda: $a4
    rra                                           ; $4cdb: $1f
    add hl, bc                                    ; $4cdc: $09
    ld b, $b1                                     ; $4cdd: $06 $b1
    ld e, $ff                                     ; $4cdf: $1e $ff
    rst $38                                       ; $4ce1: $ff
    rst $30                                       ; $4ce2: $f7
    rst $38                                       ; $4ce3: $ff
    cp e                                          ; $4ce4: $bb
    rst $38                                       ; $4ce5: $ff
    ld [hl], a                                    ; $4ce6: $77
    rst $38                                       ; $4ce7: $ff
    ld h, e                                       ; $4ce8: $63
    rst $18                                       ; $4ce9: $df
    ld d, $df                                     ; $4cea: $16 $df
    ld d, d                                       ; $4cec: $52

jr_072_4ced:
    adc a                                         ; $4ced: $8f
    dec b                                         ; $4cee: $05
    inc bc                                        ; $4cef: $03
    rst $38                                       ; $4cf0: $ff
    rst $38                                       ; $4cf1: $ff
    db $fd                                        ; $4cf2: $fd
    rst $38                                       ; $4cf3: $ff
    rst $28                                       ; $4cf4: $ef
    rst $38                                       ; $4cf5: $ff
    sub $ff                                       ; $4cf6: $d6 $ff
    jp $54ff                                      ; $4cf8: $c3 $ff $54


    rst $38                                       ; $4cfb: $ff
    ld bc, $98ff                                  ; $4cfc: $01 $ff $98
    rst $38                                       ; $4cff: $ff
    rst $38                                       ; $4d00: $ff
    rst $38                                       ; $4d01: $ff
    rst $38                                       ; $4d02: $ff
    rst $38                                       ; $4d03: $ff
    ld a, e                                       ; $4d04: $7b
    rst $38                                       ; $4d05: $ff
    rst $10                                       ; $4d06: $d7
    rst $38                                       ; $4d07: $ff
    sbc b                                         ; $4d08: $98
    rst $38                                       ; $4d09: $ff
    nop                                           ; $4d0a: $00
    rst $38                                       ; $4d0b: $ff
    ld [bc], a                                    ; $4d0c: $02
    rst $38                                       ; $4d0d: $ff
    and b                                         ; $4d0e: $a0
    rst $38                                       ; $4d0f: $ff
    or c                                          ; $4d10: $b1
    ld b, b                                       ; $4d11: $40
    ld bc, $54fa                                  ; $4d12: $01 $fa $54
    xor e                                         ; $4d15: $ab
    or b                                          ; $4d16: $b0
    ld c, a                                       ; $4d17: $4f
    ld e, l                                       ; $4d18: $5d
    and d                                         ; $4d19: $a2
    rst $38                                       ; $4d1a: $ff
    nop                                           ; $4d1b: $00
    rst $38                                       ; $4d1c: $ff
    nop                                           ; $4d1d: $00
    rst $28                                       ; $4d1e: $ef
    db $10                                        ; $4d1f: $10
    and b                                         ; $4d20: $a0
    rra                                           ; $4d21: $1f
    ld de, $6aae                                  ; $4d22: $11 $ae $6a
    sub l                                         ; $4d25: $95
    ld hl, sp+$07                                 ; $4d26: $f8 $07
    scf                                           ; $4d28: $37
    ret z                                         ; $4d29: $c8

    ld [$ff15], a                                 ; $4d2a: $ea $15 $ff
    nop                                           ; $4d2d: $00
    ld c, a                                       ; $4d2e: $4f
    and b                                         ; $4d2f: $a0
    ld b, l                                       ; $4d30: $45
    rst $38                                       ; $4d31: $ff
    ld [hl+], a                                   ; $4d32: $22
    db $dd                                        ; $4d33: $dd
    add c                                         ; $4d34: $81
    ld a, [hl]                                    ; $4d35: $7e
    db $f4                                        ; $4d36: $f4
    dec bc                                        ; $4d37: $0b
    cp a                                          ; $4d38: $bf

jr_072_4d39:
    ld b, b                                       ; $4d39: $40
    rst $30                                       ; $4d3a: $f7
    ld [$00ff], sp                                ; $4d3b: $08 $ff $00
    rst $38                                       ; $4d3e: $ff
    nop                                           ; $4d3f: $00
    nop                                           ; $4d40: $00
    rst $38                                       ; $4d41: $ff
    ld hl, $48de                                  ; $4d42: $21 $de $48
    or a                                          ; $4d45: $b7
    dec sp                                        ; $4d46: $3b
    call nz, $0af5                                ; $4d47: $c4 $f5 $0a
    ld e, a                                       ; $4d4a: $5f
    and b                                         ; $4d4b: $a0
    rst $38                                       ; $4d4c: $ff
    nop                                           ; $4d4d: $00
    xor a                                         ; $4d4e: $af
    ld d, b                                       ; $4d4f: $50
    jr jr_072_4d39                                ; $4d50: $18 $e7

    or $09                                        ; $4d52: $f6 $09
    ld l, l                                       ; $4d54: $6d
    sub d                                         ; $4d55: $92
    sub b                                         ; $4d56: $90
    ld l, a                                       ; $4d57: $6f
    ld [$00f7], sp                                ; $4d58: $08 $f7 $00
    rst $38                                       ; $4d5b: $ff
    ld [hl+], a                                   ; $4d5c: $22
    rst $38                                       ; $4d5d: $ff
    ld [$e9ff], sp                                ; $4d5e: $08 $ff $e9
    ld b, $83                                     ; $4d61: $06 $83
    nop                                           ; $4d63: $00
    xor d                                         ; $4d64: $aa
    ld b, l                                       ; $4d65: $45
    ld c, c                                       ; $4d66: $49
    and [hl]                                      ; $4d67: $a6
    ld [de], a                                    ; $4d68: $12
    db $ed                                        ; $4d69: $ed
    add c                                         ; $4d6a: $81
    rst $38                                       ; $4d6b: $ff
    jr @+$01                                      ; $4d6c: $18 $ff

    ld d, e                                       ; $4d6e: $53
    rst $38                                       ; $4d6f: $ff
    cp h                                          ; $4d70: $bc
    ld b, e                                       ; $4d71: $43
    rst $30                                       ; $4d72: $f7
    ld [$9669], sp                                ; $4d73: $08 $69 $96
    ld b, d                                       ; $4d76: $42
    cp l                                          ; $4d77: $bd
    inc b                                         ; $4d78: $04
    ei                                            ; $4d79: $fb
    nop                                           ; $4d7a: $00
    rst $38                                       ; $4d7b: $ff
    db $10                                        ; $4d7c: $10
    rst $38                                       ; $4d7d: $ff
    ld h, $ff                                     ; $4d7e: $26 $ff
    push de                                       ; $4d80: $d5
    ld a, [hl+]                                   ; $4d81: $2a
    ld a, e                                       ; $4d82: $7b
    add h                                         ; $4d83: $84
    sub h                                         ; $4d84: $94
    ld l, e                                       ; $4d85: $6b
    ld e, b                                       ; $4d86: $58
    and a                                         ; $4d87: $a7
    ld bc, $80fe                                  ; $4d88: $01 $fe $80
    rst $38                                       ; $4d8b: $ff
    inc b                                         ; $4d8c: $04
    rst $38                                       ; $4d8d: $ff
    inc sp                                        ; $4d8e: $33
    rst $38                                       ; $4d8f: $ff
    ld h, d                                       ; $4d90: $62
    rst $38                                       ; $4d91: $ff
    sbc l                                         ; $4d92: $9d
    rst $38                                       ; $4d93: $ff
    ret z                                         ; $4d94: $c8

    rst $38                                       ; $4d95: $ff
    cp l                                          ; $4d96: $bd
    rst $38                                       ; $4d97: $ff
    rst $30                                       ; $4d98: $f7
    rst $38                                       ; $4d99: $ff
    ei                                            ; $4d9a: $fb
    rst $38                                       ; $4d9b: $ff
    rst $38                                       ; $4d9c: $ff
    rst $38                                       ; $4d9d: $ff
    rst $38                                       ; $4d9e: $ff
    rst $38                                       ; $4d9f: $ff
    cp b                                          ; $4da0: $b8
    rst $38                                       ; $4da1: $ff
    ld h, l                                       ; $4da2: $65
    rst $38                                       ; $4da3: $ff
    set 7, a                                      ; $4da4: $cb $ff
    sbc e                                         ; $4da6: $9b
    rst $38                                       ; $4da7: $ff
    cp $ff                                        ; $4da8: $fe $ff
    rst $38                                       ; $4daa: $ff
    rst $38                                       ; $4dab: $ff
    rst $38                                       ; $4dac: $ff
    rst $38                                       ; $4dad: $ff
    rst $38                                       ; $4dae: $ff
    rst $38                                       ; $4daf: $ff
    db $10                                        ; $4db0: $10
    rst $38                                       ; $4db1: $ff
    ld b, e                                       ; $4db2: $43
    rst $38                                       ; $4db3: $ff
    reti                                          ; $4db4: $d9


    rst $38                                       ; $4db5: $ff
    ld e, l                                       ; $4db6: $5d
    rst $38                                       ; $4db7: $ff
    rst $30                                       ; $4db8: $f7
    rst $38                                       ; $4db9: $ff
    rst $38                                       ; $4dba: $ff
    rst $38                                       ; $4dbb: $ff
    rst $38                                       ; $4dbc: $ff
    rst $38                                       ; $4dbd: $ff
    rst $38                                       ; $4dbe: $ff
    rst $38                                       ; $4dbf: $ff
    and b                                         ; $4dc0: $a0
    rst $38                                       ; $4dc1: $ff
    inc e                                         ; $4dc2: $1c
    rst $38                                       ; $4dc3: $ff
    db $ec                                        ; $4dc4: $ec
    rst $38                                       ; $4dc5: $ff
    ld e, e                                       ; $4dc6: $5b
    rst $38                                       ; $4dc7: $ff
    db $fd                                        ; $4dc8: $fd
    rst $38                                       ; $4dc9: $ff
    rst $18                                       ; $4dca: $df
    rst $38                                       ; $4dcb: $ff
    rst $38                                       ; $4dcc: $ff
    rst $38                                       ; $4dcd: $ff
    rst $38                                       ; $4dce: $ff
    rst $38                                       ; $4dcf: $ff
    rst $18                                       ; $4dd0: $df
    rst $38                                       ; $4dd1: $ff
    ld a, e                                       ; $4dd2: $7b
    rst $38                                       ; $4dd3: $ff
    or a                                          ; $4dd4: $b7
    ld a, a                                       ; $4dd5: $7f
    ld hl, $507f                                  ; $4dd6: $21 $7f $50
    ccf                                           ; $4dd9: $3f
    db $10                                        ; $4dda: $10
    rrca                                          ; $4ddb: $0f
    ld b, l                                       ; $4ddc: $45
    dec sp                                        ; $4ddd: $3b
    ld [de], a                                    ; $4dde: $12
    ld a, b                                       ; $4ddf: $78
    ld a, a                                       ; $4de0: $7f
    rst $38                                       ; $4de1: $ff
    cp [hl]                                       ; $4de2: $be
    rst $38                                       ; $4de3: $ff
    ld a, l                                       ; $4de4: $7d
    rst $38                                       ; $4de5: $ff
    adc a                                         ; $4de6: $8f
    rst $38                                       ; $4de7: $ff
    ld e, c                                       ; $4de8: $59
    cp a                                          ; $4de9: $bf
    adc b                                         ; $4dea: $88
    cp a                                          ; $4deb: $bf
    and [hl]                                      ; $4dec: $a6
    rra                                           ; $4ded: $1f
    ld [$df07], sp                                ; $4dee: $08 $07 $df
    rst $38                                       ; $4df1: $ff
    rst $30                                       ; $4df2: $f7
    rst $38                                       ; $4df3: $ff
    ld l, l                                       ; $4df4: $6d
    rst $38                                       ; $4df5: $ff
    ld c, $ff                                     ; $4df6: $0e $ff
    ld d, b                                       ; $4df8: $50
    rst $38                                       ; $4df9: $ff
    inc b                                         ; $4dfa: $04
    rst $38                                       ; $4dfb: $ff
    ld h, d                                       ; $4dfc: $62
    rst $38                                       ; $4dfd: $ff
    cp b                                          ; $4dfe: $b8
    rst $38                                       ; $4dff: $ff
    rst $38                                       ; $4e00: $ff
    rst $38                                       ; $4e01: $ff
    cp l                                          ; $4e02: $bd
    rst $38                                       ; $4e03: $ff
    halt                                          ; $4e04: $76
    rst $38                                       ; $4e05: $ff
    ld h, e                                       ; $4e06: $63
    rst $38                                       ; $4e07: $ff
    ld [bc], a                                    ; $4e08: $02
    rst $38                                       ; $4e09: $ff
    ld [$80ff], sp                                ; $4e0a: $08 $ff $80
    rst $38                                       ; $4e0d: $ff
    ld d, $ff                                     ; $4e0e: $16 $ff
    ld b, l                                       ; $4e10: $45
    add d                                         ; $4e11: $82
    ld b, c                                       ; $4e12: $41
    xor [hl]                                      ; $4e13: $ae
    ld [hl], c                                    ; $4e14: $71
    adc [hl]                                      ; $4e15: $8e
    cp d                                          ; $4e16: $ba
    ld b, l                                       ; $4e17: $45
    rst $38                                       ; $4e18: $ff
    nop                                           ; $4e19: $00
    rst $38                                       ; $4e1a: $ff
    nop                                           ; $4e1b: $00
    sbc $21                                       ; $4e1c: $de $21
    ld sp, $44ce                                  ; $4e1e: $31 $ce $44
    dec sp                                        ; $4e21: $3b
    ld a, [hl+]                                   ; $4e22: $2a
    ld d, l                                       ; $4e23: $55
    pop af                                        ; $4e24: $f1
    ld c, $6f                                     ; $4e25: $0e $6f
    sub b                                         ; $4e27: $90
    push de                                       ; $4e28: $d5
    ld a, [hl+]                                   ; $4e29: $2a
    rst $38                                       ; $4e2a: $ff
    nop                                           ; $4e2b: $00
    sbc a                                         ; $4e2c: $9f
    ld b, b                                       ; $4e2d: $40
    db $d3                                        ; $4e2e: $d3
    inc c                                         ; $4e2f: $0c
    adc b                                         ; $4e30: $88
    ld [hl], a                                    ; $4e31: $77
    dec b                                         ; $4e32: $05
    ld a, [$17e8]                                 ; $4e33: $fa $e8 $17
    ld a, a                                       ; $4e36: $7f

jr_072_4e37:
    add b                                         ; $4e37: $80
    xor $11                                       ; $4e38: $ee $11
    rst $38                                       ; $4e3a: $ff
    nop                                           ; $4e3b: $00
    rst $38                                       ; $4e3c: $ff
    nop                                           ; $4e3d: $00
    ld a, c                                       ; $4e3e: $79
    add [hl]                                      ; $4e3f: $86
    add h                                         ; $4e40: $84
    ld a, e                                       ; $4e41: $7b
    ld hl, $77de                                  ; $4e42: $21 $de $77
    adc b                                         ; $4e45: $88
    ld [$bf15], a                                 ; $4e46: $ea $15 $bf
    ld b, b                                       ; $4e49: $40
    rst $38                                       ; $4e4a: $ff
    nop                                           ; $4e4b: $00
    ld e, a                                       ; $4e4c: $5f
    and b                                         ; $4e4d: $a0
    xor d                                         ; $4e4e: $aa
    ld d, l                                       ; $4e4f: $55
    db $ed                                        ; $4e50: $ed
    ld [de], a                                    ; $4e51: $12
    db $db                                        ; $4e52: $db
    inc h                                         ; $4e53: $24
    ld b, c                                       ; $4e54: $41
    cp [hl]                                       ; $4e55: $be
    jr nz, jr_072_4e37                            ; $4e56: $20 $df

    ld [bc], a                                    ; $4e58: $02
    rst $38                                       ; $4e59: $ff
    adc b                                         ; $4e5a: $88
    rst $38                                       ; $4e5b: $ff
    ld hl, $8aff                                  ; $4e5c: $21 $ff $8a
    rst $38                                       ; $4e5f: $ff
    rlca                                          ; $4e60: $07
    nop                                           ; $4e61: $00
    ld d, h                                       ; $4e62: $54
    adc e                                         ; $4e63: $8b
    dec b                                         ; $4e64: $05
    jp c, $d728                                   ; $4e65: $da $28 $d7

    inc b                                         ; $4e68: $04
    rst $38                                       ; $4e69: $ff
    ld h, b                                       ; $4e6a: $60
    rst $38                                       ; $4e6b: $ff
    ld c, h                                       ; $4e6c: $4c
    rst $38                                       ; $4e6d: $ff
    ldh [rIE], a                                  ; $4e6e: $e0 $ff
    xor $11                                       ; $4e70: $ee $11
    db $d3                                        ; $4e72: $d3
    inc l                                         ; $4e73: $2c
    add hl, bc                                    ; $4e74: $09
    or $10                                        ; $4e75: $f6 $10
    rst $28                                       ; $4e77: $ef
    ld [bc], a                                    ; $4e78: $02
    rst $38                                       ; $4e79: $ff
    ld b, b                                       ; $4e7a: $40
    rst $38                                       ; $4e7b: $ff
    sbc b                                         ; $4e7c: $98
    rst $38                                       ; $4e7d: $ff
    ld b, d                                       ; $4e7e: $42
    rst $38                                       ; $4e7f: $ff
    rst $30                                       ; $4e80: $f7
    ld [$d728], sp                                ; $4e81: $08 $28 $d7
    ld h, d                                       ; $4e84: $62
    sbc l                                         ; $4e85: $9d
    inc b                                         ; $4e86: $04
    ei                                            ; $4e87: $fb
    nop                                           ; $4e88: $00
    rst $38                                       ; $4e89: $ff
    db $10                                        ; $4e8a: $10
    rst $38                                       ; $4e8b: $ff
    call z, $81ff                                 ; $4e8c: $cc $ff $81
    rst $38                                       ; $4e8f: $ff
    ld [hl], l                                    ; $4e90: $75
    rst $38                                       ; $4e91: $ff
    inc hl                                        ; $4e92: $23
    rst $38                                       ; $4e93: $ff
    reti                                          ; $4e94: $d9


    rst $38                                       ; $4e95: $ff
    ld a, a                                       ; $4e96: $7f
    rst $38                                       ; $4e97: $ff
    cp a                                          ; $4e98: $bf
    rst $38                                       ; $4e99: $ff
    rst $38                                       ; $4e9a: $ff
    rst $38                                       ; $4e9b: $ff
    rst $38                                       ; $4e9c: $ff
    rst $38                                       ; $4e9d: $ff
    rst $30                                       ; $4e9e: $f7
    rst $38                                       ; $4e9f: $ff
    sub l                                         ; $4ea0: $95
    rst $38                                       ; $4ea1: $ff
    cpl                                           ; $4ea2: $2f
    rst $38                                       ; $4ea3: $ff
    or l                                          ; $4ea4: $b5
    rst $38                                       ; $4ea5: $ff
    rst $28                                       ; $4ea6: $ef
    rst $38                                       ; $4ea7: $ff
    rst $38                                       ; $4ea8: $ff
    rst $38                                       ; $4ea9: $ff
    rst $38                                       ; $4eaa: $ff
    rst $38                                       ; $4eab: $ff
    rst $38                                       ; $4eac: $ff
    rst $38                                       ; $4ead: $ff
    db $fd                                        ; $4eae: $fd
    rst $38                                       ; $4eaf: $ff
    inc c                                         ; $4eb0: $0c
    rst $38                                       ; $4eb1: $ff
    ld h, a                                       ; $4eb2: $67
    rst $38                                       ; $4eb3: $ff
    push de                                       ; $4eb4: $d5
    rst $38                                       ; $4eb5: $ff
    ld a, a                                       ; $4eb6: $7f
    rst $38                                       ; $4eb7: $ff
    db $fd                                        ; $4eb8: $fd
    rst $38                                       ; $4eb9: $ff
    rst $38                                       ; $4eba: $ff
    rst $38                                       ; $4ebb: $ff
    rst $38                                       ; $4ebc: $ff
    rst $38                                       ; $4ebd: $ff
    rst $38                                       ; $4ebe: $ff
    rst $38                                       ; $4ebf: $ff
    ld [hl], d                                    ; $4ec0: $72
    rst $38                                       ; $4ec1: $ff
    or e                                          ; $4ec2: $b3
    rst $38                                       ; $4ec3: $ff
    cp e                                          ; $4ec4: $bb
    rst $38                                       ; $4ec5: $ff
    rst $18                                       ; $4ec6: $df
    rst $38                                       ; $4ec7: $ff
    rst $38                                       ; $4ec8: $ff
    rst $38                                       ; $4ec9: $ff
    rst $38                                       ; $4eca: $ff
    rst $38                                       ; $4ecb: $ff
    rst $38                                       ; $4ecc: $ff
    rst $38                                       ; $4ecd: $ff
    db $fd                                        ; $4ece: $fd
    rst $38                                       ; $4ecf: $ff
    cp e                                          ; $4ed0: $bb
    rst $38                                       ; $4ed1: $ff
    ld [hl], a                                    ; $4ed2: $77
    rst $38                                       ; $4ed3: $ff
    add [hl]                                      ; $4ed4: $86
    rst $38                                       ; $4ed5: $ff
    pop bc                                        ; $4ed6: $c1
    ld a, a                                       ; $4ed7: $7f
    ld [hl+], a                                   ; $4ed8: $22
    rra                                           ; $4ed9: $1f
    add h                                         ; $4eda: $84
    ld a, a                                       ; $4edb: $7f
    ld d, c                                       ; $4edc: $51
    xor $84                                       ; $4edd: $ee $84
    ld l, b                                       ; $4edf: $68
    rst $28                                       ; $4ee0: $ef
    rst $38                                       ; $4ee1: $ff
    sub $ff                                       ; $4ee2: $d6 $ff
    inc a                                         ; $4ee4: $3c
    rst $38                                       ; $4ee5: $ff
    ld h, l                                       ; $4ee6: $65
    rst $38                                       ; $4ee7: $ff
    and b                                         ; $4ee8: $a0
    ld a, a                                       ; $4ee9: $7f
    add hl, de                                    ; $4eea: $19
    ld a, a                                       ; $4eeb: $7f
    ld h, d                                       ; $4eec: $62
    ccf                                           ; $4eed: $3f
    ld de, $7b0f                                  ; $4eee: $11 $0f $7b
    rst $38                                       ; $4ef1: $ff
    rst $10                                       ; $4ef2: $d7
    rst $38                                       ; $4ef3: $ff
    add hl, sp                                    ; $4ef4: $39
    rst $38                                       ; $4ef5: $ff
    ld b, b                                       ; $4ef6: $40
    rst $38                                       ; $4ef7: $ff
    db $10                                        ; $4ef8: $10
    rst $38                                       ; $4ef9: $ff

jr_072_4efa:
    adc d                                         ; $4efa: $8a
    rst $38                                       ; $4efb: $ff
    ldh [rIE], a                                  ; $4efc: $e0 $ff
    inc d                                         ; $4efe: $14
    rst $38                                       ; $4eff: $ff
    rst $10                                       ; $4f00: $d7
    rst $38                                       ; $4f01: $ff
    ld l, e                                       ; $4f02: $6b
    cp $8c                                        ; $4f03: $fe $8c
    cp $0a                                        ; $4f05: $fe $0a
    db $fc                                        ; $4f07: $fc
    jr z, jr_072_4efa                             ; $4f08: $28 $f0

    ld [bc], a                                    ; $4f0a: $02
    db $fc                                        ; $4f0b: $fc
    ld e, b                                       ; $4f0c: $58
    cp $01                                        ; $4f0d: $fe $01
    cp $16                                        ; $4f0f: $fe $16
    ld [$3c82], sp                                ; $4f11: $08 $82 $3c
    ld [hl], l                                    ; $4f14: $75
    adc d                                         ; $4f15: $8a
    rst $38                                       ; $4f16: $ff
    nop                                           ; $4f17: $00
    rst $38                                       ; $4f18: $ff
    nop                                           ; $4f19: $00
    cp l                                          ; $4f1a: $bd
    ld b, d                                       ; $4f1b: $42
    ld h, e                                       ; $4f1c: $63
    sbc h                                         ; $4f1d: $9c
    jp c, $a824                                   ; $4f1e: $da $24 $a8

    ld d, a                                       ; $4f21: $57
    db $e3                                        ; $4f22: $e3
    inc e                                         ; $4f23: $1c
    sbc $21                                       ; $4f24: $de $21
    xor e                                         ; $4f26: $ab
    ld d, h                                       ; $4f27: $54
    rst $38                                       ; $4f28: $ff
    nop                                           ; $4f29: $00
    ccf                                           ; $4f2a: $3f
    add b                                         ; $4f2b: $80
    and [hl]                                      ; $4f2c: $a6
    add hl, de                                    ; $4f2d: $19
    rrca                                          ; $4f2e: $0f
    nop                                           ; $4f2f: $00
    inc d                                         ; $4f30: $14
    db $eb                                        ; $4f31: $eb
    ret nc                                        ; $4f32: $d0

    cpl                                           ; $4f33: $2f
    rst $38                                       ; $4f34: $ff
    nop                                           ; $4f35: $00
    db $dd                                        ; $4f36: $dd
    ld [hl+], a                                   ; $4f37: $22
    rst $38                                       ; $4f38: $ff
    nop                                           ; $4f39: $00
    cp $01                                        ; $4f3a: $fe $01
    di                                            ; $4f3c: $f3
    inc c                                         ; $4f3d: $0c
    db $dd                                        ; $4f3e: $dd
    ld [hl+], a                                   ; $4f3f: $22
    add l                                         ; $4f40: $85
    ld a, d                                       ; $4f41: $7a
    xor $11                                       ; $4f42: $ee $11
    push de                                       ; $4f44: $d5
    ld a, [hl+]                                   ; $4f45: $2a
    ld a, a                                       ; $4f46: $7f
    add b                                         ; $4f47: $80
    rst $38                                       ; $4f48: $ff
    nop                                           ; $4f49: $00
    cp a                                          ; $4f4a: $bf
    ld b, b                                       ; $4f4b: $40
    ld d, h                                       ; $4f4c: $54
    xor e                                         ; $4f4d: $ab
    rst $28                                       ; $4f4e: $ef
    db $10                                        ; $4f4f: $10
    or [hl]                                       ; $4f50: $b6
    ld c, c                                       ; $4f51: $49
    inc b                                         ; $4f52: $04
    ei                                            ; $4f53: $fb
    add b                                         ; $4f54: $80
    ld a, a                                       ; $4f55: $7f
    ld [$21ff], sp                                ; $4f56: $08 $ff $21
    rst $38                                       ; $4f59: $ff
    add l                                         ; $4f5a: $85
    rst $38                                       ; $4f5b: $ff
    dec hl                                        ; $4f5c: $2b
    rst $38                                       ; $4f5d: $ff
    sub $ff                                       ; $4f5e: $d6 $ff
    xor c                                         ; $4f60: $a9
    ld d, $94                                     ; $4f61: $16 $94
    dec hl                                        ; $4f63: $2b
    ld h, b                                       ; $4f64: $60
    sbc a                                         ; $4f65: $9f
    db $10                                        ; $4f66: $10
    rst $38                                       ; $4f67: $ff
    add c                                         ; $4f68: $81
    rst $38                                       ; $4f69: $ff
    ld [hl-], a                                   ; $4f6a: $32
    rst $38                                       ; $4f6b: $ff
    add c                                         ; $4f6c: $81
    rst $38                                       ; $4f6d: $ff
    ld d, h                                       ; $4f6e: $54
    rst $38                                       ; $4f6f: $ff
    and [hl]                                      ; $4f70: $a6
    ld e, c                                       ; $4f71: $59
    dec h                                         ; $4f72: $25
    jp c, $bf40                                   ; $4f73: $da $40 $bf

    ld [$00ff], sp                                ; $4f76: $08 $ff $00
    rst $38                                       ; $4f79: $ff
    ld h, e                                       ; $4f7a: $63
    rst $38                                       ; $4f7b: $ff
    ld a, [bc]                                    ; $4f7c: $0a
    rst $38                                       ; $4f7d: $ff
    ld sp, $51ff                                  ; $4f7e: $31 $ff $51
    xor [hl]                                      ; $4f81: $ae
    adc c                                         ; $4f82: $89
    halt                                          ; $4f83: $76
    db $10                                        ; $4f84: $10
    rst $28                                       ; $4f85: $ef
    nop                                           ; $4f86: $00
    rst $38                                       ; $4f87: $ff
    ld b, d                                       ; $4f88: $42
    rst $38                                       ; $4f89: $ff
    jr nc, @+$01                                  ; $4f8a: $30 $ff

    ld b, $ff                                     ; $4f8c: $06 $ff
    ret                                           ; $4f8e: $c9


    rst $38                                       ; $4f8f: $ff
    adc h                                         ; $4f90: $8c
    rst $38                                       ; $4f91: $ff
    sbc e                                         ; $4f92: $9b
    rst $38                                       ; $4f93: $ff
    cp $ff                                        ; $4f94: $fe $ff
    rst $38                                       ; $4f96: $ff
    rst $38                                       ; $4f97: $ff
    rst $38                                       ; $4f98: $ff
    rst $38                                       ; $4f99: $ff
    rst $38                                       ; $4f9a: $ff
    rst $38                                       ; $4f9b: $ff
    ld a, a                                       ; $4f9c: $7f
    rst $38                                       ; $4f9d: $ff
    cp [hl]                                       ; $4f9e: $be
    rst $38                                       ; $4f9f: $ff
    cp l                                          ; $4fa0: $bd
    rst $38                                       ; $4fa1: $ff
    ld e, l                                       ; $4fa2: $5d
    rst $38                                       ; $4fa3: $ff
    rst $30                                       ; $4fa4: $f7
    rst $38                                       ; $4fa5: $ff
    rst $38                                       ; $4fa6: $ff
    rst $38                                       ; $4fa7: $ff
    rst $38                                       ; $4fa8: $ff
    rst $38                                       ; $4fa9: $ff
    rst $38                                       ; $4faa: $ff
    rst $38                                       ; $4fab: $ff
    rst $18                                       ; $4fac: $df
    rst $38                                       ; $4fad: $ff
    rst $30                                       ; $4fae: $f7
    rst $38                                       ; $4faf: $ff
    sbc [hl]                                      ; $4fb0: $9e
    rst $38                                       ; $4fb1: $ff
    ld e, e                                       ; $4fb2: $5b
    rst $38                                       ; $4fb3: $ff
    db $fd                                        ; $4fb4: $fd
    rst $38                                       ; $4fb5: $ff
    rst $18                                       ; $4fb6: $df
    rst $38                                       ; $4fb7: $ff
    rst $38                                       ; $4fb8: $ff
    rst $38                                       ; $4fb9: $ff
    rst $38                                       ; $4fba: $ff
    rst $38                                       ; $4fbb: $ff
    rst $38                                       ; $4fbc: $ff
    rst $38                                       ; $4fbd: $ff
    cp l                                          ; $4fbe: $bd
    rst $38                                       ; $4fbf: $ff
    call z, $bdff                                 ; $4fc0: $cc $ff $bd
    rst $38                                       ; $4fc3: $ff
    rst $30                                       ; $4fc4: $f7
    rst $38                                       ; $4fc5: $ff
    ei                                            ; $4fc6: $fb
    rst $38                                       ; $4fc7: $ff
    rst $38                                       ; $4fc8: $ff
    rst $38                                       ; $4fc9: $ff
    rst $38                                       ; $4fca: $ff
    rst $38                                       ; $4fcb: $ff
    rst $18                                       ; $4fcc: $df
    rst $38                                       ; $4fcd: $ff
    ld a, e                                       ; $4fce: $7b
    rst $38                                       ; $4fcf: $ff
    ld a, l                                       ; $4fd0: $7d

jr_072_4fd1:
    rst $38                                       ; $4fd1: $ff
    jr @+$01                                      ; $4fd2: $18 $ff

    dec b                                         ; $4fd4: $05
    rst $38                                       ; $4fd5: $ff
    ld c, b                                       ; $4fd6: $48
    ccf                                           ; $4fd7: $3f
    inc de                                        ; $4fd8: $13
    cp $00                                        ; $4fd9: $fe $00
    cp $46                                        ; $4fdb: $fe $46
    cp h                                          ; $4fdd: $bc
    jr @-$5e                                      ; $4fde: $18 $a0

jr_072_4fe0:
    ld l, l                                       ; $4fe0: $6d
    rst $38                                       ; $4fe1: $ff
    ldh a, [rIE]                                  ; $4fe2: $f0 $ff
    sub l                                         ; $4fe4: $95
    rst $38                                       ; $4fe5: $ff
    add b                                         ; $4fe6: $80
    rst $38                                       ; $4fe7: $ff
    ld h, [hl]                                    ; $4fe8: $66
    rst $38                                       ; $4fe9: $ff
    adc e                                         ; $4fea: $8b
    rst $38                                       ; $4feb: $ff
    add h                                         ; $4fec: $84
    ld a, a                                       ; $4fed: $7f
    ld [hl-], a                                   ; $4fee: $32
    dec c                                         ; $4fef: $0d
    halt                                          ; $4ff0: $76
    rst $38                                       ; $4ff1: $ff

jr_072_4ff2:
    and $ff                                       ; $4ff2: $e6 $ff
    nop                                           ; $4ff4: $00
    rst $38                                       ; $4ff5: $ff
    ld b, b                                       ; $4ff6: $40
    rst $38                                       ; $4ff7: $ff
    jr z, @+$01                                   ; $4ff8: $28 $ff

    add c                                         ; $4ffa: $81
    rst $38                                       ; $4ffb: $ff

jr_072_4ffc:
    ld d, b                                       ; $4ffc: $50
    rst $38                                       ; $4ffd: $ff
    ld [hl+], a                                   ; $4ffe: $22
    db $dd                                        ; $4fff: $dd
    or a                                          ; $5000: $b7

jr_072_5001:
    db $fd                                        ; $5001: $fd
    jr nc, jr_072_5001                            ; $5002: $30 $fd

    dec h                                         ; $5004: $25
    ld hl, sp-$70                                 ; $5005: $f8 $90
    ldh [rTIMA], a                                ; $5007: $e0 $05
    ld hl, sp+$61                                 ; $5009: $f8 $61
    db $fd                                        ; $500b: $fd
    ld [bc], a                                    ; $500c: $02
    db $fd                                        ; $500d: $fd
    db $10                                        ; $500e: $10
    rst $28                                       ; $500f: $ef
    ld b, l                                       ; $5010: $45
    jr c, jr_072_4ffc                             ; $5011: $38 $e9

    inc d                                         ; $5013: $14
    rst $38                                       ; $5014: $ff
    nop                                           ; $5015: $00
    rst $38                                       ; $5016: $ff
    nop                                           ; $5017: $00
    ld a, d                                       ; $5018: $7a
    add l                                         ; $5019: $85
    rst $00                                       ; $501a: $c7
    jr c, jr_072_4fd1                             ; $501b: $38 $b4

    ld c, b                                       ; $501d: $48
    ld l, l                                       ; $501e: $6d
    sub d                                         ; $501f: $92
    rst $00                                       ; $5020: $c7
    jr c, jr_072_4fe0                             ; $5021: $38 $bd

    ld b, d                                       ; $5023: $42
    ld d, a                                       ; $5024: $57
    xor b                                         ; $5025: $a8
    rst $38                                       ; $5026: $ff
    nop                                           ; $5027: $00
    ld a, a                                       ; $5028: $7f
    nop                                           ; $5029: $00
    ld c, l                                       ; $502a: $4d
    ld [hl-], a                                   ; $502b: $32
    rra                                           ; $502c: $1f
    nop                                           ; $502d: $00
    ld d, e                                       ; $502e: $53
    inc l                                         ; $502f: $2c
    and c                                         ; $5030: $a1
    ld e, [hl]                                    ; $5031: $5e
    rst $38                                       ; $5032: $ff
    nop                                           ; $5033: $00
    cp d                                          ; $5034: $ba

Jump_072_5035:
    ld b, l                                       ; $5035: $45
    rst $38                                       ; $5036: $ff
    nop                                           ; $5037: $00
    db $fd                                        ; $5038: $fd
    ld [bc], a                                    ; $5039: $02
    and $19                                       ; $503a: $e6 $19
    cp e                                          ; $503c: $bb
    ld b, h                                       ; $503d: $44
    ld c, h                                       ; $503e: $4c
    or e                                          ; $503f: $b3
    call c, $aa20                                 ; $5040: $dc $20 $aa
    ld d, h                                       ; $5043: $54
    rst $38                                       ; $5044: $ff
    nop                                           ; $5045: $00
    rst $38                                       ; $5046: $ff
    nop                                           ; $5047: $00
    ld a, a                                       ; $5048: $7f
    add b                                         ; $5049: $80
    xor b                                         ; $504a: $a8
    ld d, a                                       ; $504b: $57
    rst $18                                       ; $504c: $df
    jr nz, jr_072_4ff2                            ; $504d: $20 $a3

    ld e, h                                       ; $504f: $5c
    ld [de], a                                    ; $5050: $12
    db $ed                                        ; $5051: $ed
    nop                                           ; $5052: $00
    rst $38                                       ; $5053: $ff
    jr nz, @+$01                                  ; $5054: $20 $ff

    add [hl]                                      ; $5056: $86
    rst $38                                       ; $5057: $ff
    inc d                                         ; $5058: $14
    rst $38                                       ; $5059: $ff
    xor [hl]                                      ; $505a: $ae
    rst $38                                       ; $505b: $ff
    ld e, c                                       ; $505c: $59
    rst $38                                       ; $505d: $ff
    ld [hl-], a                                   ; $505e: $32
    rst $38                                       ; $505f: $ff
    ld d, b                                       ; $5060: $50
    cpl                                           ; $5061: $2f
    add c                                         ; $5062: $81
    ld a, [hl]                                    ; $5063: $7e
    ld b, b                                       ; $5064: $40
    rst $38                                       ; $5065: $ff
    inc b                                         ; $5066: $04
    rst $38                                       ; $5067: $ff
    ret                                           ; $5068: $c9


    rst $38                                       ; $5069: $ff
    inc b                                         ; $506a: $04
    rst $38                                       ; $506b: $ff
    ld d, b                                       ; $506c: $50
    rst $38                                       ; $506d: $ff
    or $ff                                        ; $506e: $f6 $ff
    sub [hl]                                      ; $5070: $96
    ld l, c                                       ; $5071: $69
    nop                                           ; $5072: $00
    rst $38                                       ; $5073: $ff
    jr nz, @+$01                                  ; $5074: $20 $ff

    ld bc, $8cff                                  ; $5076: $01 $ff $8c
    rst $38                                       ; $5079: $ff
    jr z, @+$01                                   ; $507a: $28 $ff

    rst $00                                       ; $507c: $c7
    rst $38                                       ; $507d: $ff
    ld a, e                                       ; $507e: $7b
    rst $38                                       ; $507f: $ff
    inc h                                         ; $5080: $24
    db $db                                        ; $5081: $db
    ld b, d                                       ; $5082: $42
    cp l                                          ; $5083: $bd
    nop                                           ; $5084: $00
    rst $38                                       ; $5085: $ff
    ld [$c2ff], sp                                ; $5086: $08 $ff $c2
    rst $38                                       ; $5089: $ff
    jr @+$01                                      ; $508a: $18 $ff

    daa                                           ; $508c: $27
    rst $38                                       ; $508d: $ff
    ld [hl-], a                                   ; $508e: $32
    rst $38                                       ; $508f: $ff
    or l                                          ; $5090: $b5
    rst $38                                       ; $5091: $ff
    rst $28                                       ; $5092: $ef
    rst $38                                       ; $5093: $ff
    rst $38                                       ; $5094: $ff
    rst $38                                       ; $5095: $ff
    rst $38                                       ; $5096: $ff
    rst $38                                       ; $5097: $ff
    rst $38                                       ; $5098: $ff
    rst $38                                       ; $5099: $ff
    db $fd                                        ; $509a: $fd
    rst $38                                       ; $509b: $ff
    rst $28                                       ; $509c: $ef
    rst $38                                       ; $509d: $ff
    sub $ff                                       ; $509e: $d6 $ff
    push de                                       ; $50a0: $d5
    rst $38                                       ; $50a1: $ff
    ld a, a                                       ; $50a2: $7f
    rst $38                                       ; $50a3: $ff
    db $fd                                        ; $50a4: $fd
    rst $38                                       ; $50a5: $ff
    rst $38                                       ; $50a6: $ff
    rst $38                                       ; $50a7: $ff
    rst $38                                       ; $50a8: $ff
    rst $38                                       ; $50a9: $ff
    rst $38                                       ; $50aa: $ff
    rst $38                                       ; $50ab: $ff
    ld a, e                                       ; $50ac: $7b
    rst $38                                       ; $50ad: $ff
    rst $10                                       ; $50ae: $d7
    rst $38                                       ; $50af: $ff
    cp e                                          ; $50b0: $bb
    rst $38                                       ; $50b1: $ff
    rst $18                                       ; $50b2: $df
    rst $38                                       ; $50b3: $ff
    rst $38                                       ; $50b4: $ff
    rst $38                                       ; $50b5: $ff
    rst $38                                       ; $50b6: $ff
    rst $38                                       ; $50b7: $ff
    rst $38                                       ; $50b8: $ff
    rst $38                                       ; $50b9: $ff
    db $fd                                        ; $50ba: $fd
    rst $38                                       ; $50bb: $ff
    rst $10                                       ; $50bc: $d7
    rst $38                                       ; $50bd: $ff
    ld l, e                                       ; $50be: $6b
    rst $38                                       ; $50bf: $ff
    reti                                          ; $50c0: $d9


    rst $38                                       ; $50c1: $ff
    ld a, a                                       ; $50c2: $7f
    rst $38                                       ; $50c3: $ff
    cp a                                          ; $50c4: $bf
    rst $38                                       ; $50c5: $ff

jr_072_50c6:
    rst $38                                       ; $50c6: $ff
    rst $38                                       ; $50c7: $ff
    rst $38                                       ; $50c8: $ff
    rst $38                                       ; $50c9: $ff
    rst $30                                       ; $50ca: $f7
    rst $38                                       ; $50cb: $ff
    cp e                                          ; $50cc: $bb
    rst $38                                       ; $50cd: $ff
    ld [hl], a                                    ; $50ce: $77
    ei                                            ; $50cf: $fb
    ld h, e                                       ; $50d0: $63
    rst $38                                       ; $50d1: $ff
    ld d, $ff                                     ; $50d2: $16 $ff
    and d                                         ; $50d4: $a2
    ld a, a                                       ; $50d5: $7f
    ld c, c                                       ; $50d6: $49
    rst $38                                       ; $50d7: $ff
    ld [bc], a                                    ; $50d8: $02
    db $fd                                        ; $50d9: $fd
    db $10                                        ; $50da: $10
    db $fd                                        ; $50db: $fd
    ld b, l                                       ; $50dc: $45
    cp b                                          ; $50dd: $b8
    db $10                                        ; $50de: $10
    ldh [$c3], a                                  ; $50df: $e0 $c3
    rst $38                                       ; $50e1: $ff
    ld d, h                                       ; $50e2: $54
    rst $38                                       ; $50e3: $ff
    ld bc, $98ff                                  ; $50e4: $01 $ff $98
    rst $38                                       ; $50e7: $ff
    ld l, $ff                                     ; $50e8: $2e $ff
    ld de, $48ff                                  ; $50ea: $11 $ff $48
    or a                                          ; $50ed: $b7
    ld h, b                                       ; $50ee: $60
    rra                                           ; $50ef: $1f
    sbc b                                         ; $50f0: $98
    rst $38                                       ; $50f1: $ff
    nop                                           ; $50f2: $00
    rst $38                                       ; $50f3: $ff
    ld [bc], a                                    ; $50f4: $02
    rst $38                                       ; $50f5: $ff
    and b                                         ; $50f6: $a0
    rst $38                                       ; $50f7: $ff
    dec b                                         ; $50f8: $05
    rst $38                                       ; $50f9: $ff
    ld b, b                                       ; $50fa: $40
    rst $38                                       ; $50fb: $ff
    adc b                                         ; $50fc: $88
    ld [hl], a                                    ; $50fd: $77
    ld d, d                                       ; $50fe: $52
    xor l                                         ; $50ff: $ad
    ret z                                         ; $5100: $c8

    ei                                            ; $5101: $fb
    adc d                                         ; $5102: $8a
    pop af                                        ; $5103: $f1
    jr nz, jr_072_50c6                            ; $5104: $20 $c0

    ld a, [de]                                    ; $5106: $1a
    pop af                                        ; $5107: $f1
    add b                                         ; $5108: $80
    ei                                            ; $5109: $fb
    inc c                                         ; $510a: $0c
    di                                            ; $510b: $f3
    ld b, c                                       ; $510c: $41
    cp [hl]                                       ; $510d: $be
    inc d                                         ; $510e: $14
    ld [$20db], a                                 ; $510f: $ea $db $20
    ld a, [$ff01]                                 ; $5112: $fa $01 $ff
    nop                                           ; $5115: $00
    db $f4                                        ; $5116: $f4
    ld a, [bc]                                    ; $5117: $0a
    adc [hl]                                      ; $5118: $8e
    ld [hl], b                                    ; $5119: $70
    ld l, b                                       ; $511a: $68
    sub b                                         ; $511b: $90
    jp c, Jump_072_4824                           ; $511c: $da $24 $48

    or [hl]                                       ; $511f: $b6
    ld a, e                                       ; $5120: $7b
    add h                                         ; $5121: $84
    xor a                                         ; $5122: $af
    ld d, b                                       ; $5123: $50
    rst $38                                       ; $5124: $ff
    nop                                           ; $5125: $00
    rst $38                                       ; $5126: $ff
    nop                                           ; $5127: $00
    sbc e                                         ; $5128: $9b
    ld h, h                                       ; $5129: $64
    ccf                                           ; $512a: $3f
    nop                                           ; $512b: $00
    and [hl]                                      ; $512c: $a6
    ld e, c                                       ; $512d: $59
    ld b, d                                       ; $512e: $42
    cp l                                          ; $512f: $bd
    rst $38                                       ; $5130: $ff
    nop                                           ; $5131: $00
    ld [hl], l                                    ; $5132: $75
    adc d                                         ; $5133: $8a
    rst $38                                       ; $5134: $ff
    nop                                           ; $5135: $00
    ld a, [$cd05]                                 ; $5136: $fa $05 $cd
    ld [hl-], a                                   ; $5139: $32
    ld [hl], a                                    ; $513a: $77
    adc b                                         ; $513b: $88
    sbc c                                         ; $513c: $99
    ld h, [hl]                                    ; $513d: $66
    ld e, b                                       ; $513e: $58
    and a                                         ; $513f: $a7
    ld d, c                                       ; $5140: $51
    and b                                         ; $5141: $a0
    ei                                            ; $5142: $fb
    nop                                           ; $5143: $00
    rst $38                                       ; $5144: $ff
    nop                                           ; $5145: $00
    cp $01                                        ; $5146: $fe $01
    ld d, c                                       ; $5148: $51
    xor [hl]                                      ; $5149: $ae
    cp a                                          ; $514a: $bf
    ld b, b                                       ; $514b: $40
    ld b, [hl]                                    ; $514c: $46
    cp c                                          ; $514d: $b9
    sub b                                         ; $514e: $90
    ld l, a                                       ; $514f: $6f
    inc bc                                        ; $5150: $03
    db $fc                                        ; $5151: $fc
    add c                                         ; $5152: $81
    rst $38                                       ; $5153: $ff
    jr @+$01                                      ; $5154: $18 $ff

    ld d, e                                       ; $5156: $53
    rst $38                                       ; $5157: $ff
    cp b                                          ; $5158: $b8
    rst $38                                       ; $5159: $ff
    ld h, l                                       ; $515a: $65
    rst $38                                       ; $515b: $ff
    set 7, a                                      ; $515c: $cb $ff
    ld e, l                                       ; $515e: $5d
    rst $38                                       ; $515f: $ff
    inc b                                         ; $5160: $04
    ei                                            ; $5161: $fb
    nop                                           ; $5162: $00
    rst $38                                       ; $5163: $ff
    db $10                                        ; $5164: $10
    rst $38                                       ; $5165: $ff
    ld h, $ff                                     ; $5166: $26 $ff
    db $10                                        ; $5168: $10
    rst $38                                       ; $5169: $ff
    ld b, e                                       ; $516a: $43
    rst $38                                       ; $516b: $ff
    reti                                          ; $516c: $d9


    rst $38                                       ; $516d: $ff
    ld e, e                                       ; $516e: $5b
    rst $38                                       ; $516f: $ff
    ld bc, $80fe                                  ; $5170: $01 $fe $80
    rst $38                                       ; $5173: $ff
    inc b                                         ; $5174: $04
    rst $38                                       ; $5175: $ff
    inc sp                                        ; $5176: $33
    rst $38                                       ; $5177: $ff
    and b                                         ; $5178: $a0
    rst $38                                       ; $5179: $ff
    inc e                                         ; $517a: $1c
    rst $38                                       ; $517b: $ff
    db $ec                                        ; $517c: $ec
    rst $38                                       ; $517d: $ff
    cp l                                          ; $517e: $bd
    rst $38                                       ; $517f: $ff
    ld [$00f7], sp                                ; $5180: $08 $f7 $00
    rst $38                                       ; $5183: $ff
    ld [hl+], a                                   ; $5184: $22
    rst $38                                       ; $5185: $ff
    ld [$62ff], sp                                ; $5186: $08 $ff $62
    rst $38                                       ; $5189: $ff
    sbc l                                         ; $518a: $9d
    rst $38                                       ; $518b: $ff
    ret z                                         ; $518c: $c8

    rst $38                                       ; $518d: $ff
    sbc e                                         ; $518e: $9b
    rst $38                                       ; $518f: $ff
    rst $30                                       ; $5190: $f7
    rst $38                                       ; $5191: $ff
    rst $38                                       ; $5192: $ff
    rst $38                                       ; $5193: $ff
    rst $38                                       ; $5194: $ff
    rst $38                                       ; $5195: $ff
    rst $38                                       ; $5196: $ff
    rst $38                                       ; $5197: $ff
    rst $18                                       ; $5198: $df
    rst $38                                       ; $5199: $ff
    rst $30                                       ; $519a: $f7
    rst $38                                       ; $519b: $ff
    ld l, l                                       ; $519c: $6d
    rst $38                                       ; $519d: $ff
    adc a                                         ; $519e: $8f
    rst $38                                       ; $519f: $ff

jr_072_51a0:
    db $fd                                        ; $51a0: $fd
    rst $38                                       ; $51a1: $ff
    rst $18                                       ; $51a2: $df
    rst $38                                       ; $51a3: $ff
    rst $38                                       ; $51a4: $ff
    rst $38                                       ; $51a5: $ff
    rst $38                                       ; $51a6: $ff
    rst $38                                       ; $51a7: $ff
    rst $38                                       ; $51a8: $ff
    rst $38                                       ; $51a9: $ff
    cp l                                          ; $51aa: $bd
    rst $38                                       ; $51ab: $ff
    halt                                          ; $51ac: $76
    rst $38                                       ; $51ad: $ff
    ld c, $ff                                     ; $51ae: $0e $ff
    rst $30                                       ; $51b0: $f7
    rst $38                                       ; $51b1: $ff
    ei                                            ; $51b2: $fb
    rst $38                                       ; $51b3: $ff
    rst $38                                       ; $51b4: $ff
    rst $38                                       ; $51b5: $ff
    rst $38                                       ; $51b6: $ff
    rst $38                                       ; $51b7: $ff
    rst $18                                       ; $51b8: $df
    rst $38                                       ; $51b9: $ff
    ld a, e                                       ; $51ba: $7b
    rst $38                                       ; $51bb: $ff
    or a                                          ; $51bc: $b7
    rst $38                                       ; $51bd: $ff
    ld h, e                                       ; $51be: $63
    rst $38                                       ; $51bf: $ff
    cp $ff                                        ; $51c0: $fe $ff
    rst $38                                       ; $51c2: $ff
    rst $38                                       ; $51c3: $ff
    rst $38                                       ; $51c4: $ff
    rst $38                                       ; $51c5: $ff
    rst $38                                       ; $51c6: $ff
    rst $38                                       ; $51c7: $ff
    ld a, a                                       ; $51c8: $7f
    rst $38                                       ; $51c9: $ff
    cp [hl]                                       ; $51ca: $be
    rst $38                                       ; $51cb: $ff
    ld a, l                                       ; $51cc: $7d
    rst $30                                       ; $51cd: $f7
    ld hl, $59f7                                  ; $51ce: $21 $f7 $59
    rst $38                                       ; $51d1: $ff
    adc b                                         ; $51d2: $88
    rst $38                                       ; $51d3: $ff
    ld h, $ff                                     ; $51d4: $26 $ff
    ld [$44ff], sp                                ; $51d6: $08 $ff $44
    ei                                            ; $51d9: $fb
    ld de, $6aea                                  ; $51da: $11 $ea $6a
    sub c                                         ; $51dd: $91
    jr nz, jr_072_51a0                            ; $51de: $20 $c0

    ld d, b                                       ; $51e0: $50

jr_072_51e1:
    rst $38                                       ; $51e1: $ff
    inc b                                         ; $51e2: $04
    rst $38                                       ; $51e3: $ff
    ld h, d                                       ; $51e4: $62
    rst $38                                       ; $51e5: $ff
    cp b                                          ; $51e6: $b8
    rst $38                                       ; $51e7: $ff
    ld b, l                                       ; $51e8: $45
    rst $38                                       ; $51e9: $ff
    ld [hl+], a                                   ; $51ea: $22
    db $dd                                        ; $51eb: $dd
    add c                                         ; $51ec: $81
    ld a, [hl]                                    ; $51ed: $7e
    adc a                                         ; $51ee: $8f
    ld [hl], b                                    ; $51ef: $70
    ld [bc], a                                    ; $51f0: $02
    rst $38                                       ; $51f1: $ff
    ld [$80ff], sp                                ; $51f2: $08 $ff $80
    rst $38                                       ; $51f5: $ff
    ld d, $ff                                     ; $51f6: $16 $ff
    nop                                           ; $51f8: $00
    rst $38                                       ; $51f9: $ff
    ld hl, $48de                                  ; $51fa: $21 $de $48
    or a                                          ; $51fd: $b7
    ld b, e                                       ; $51fe: $43
    cp h                                          ; $51ff: $bc
    inc d                                         ; $5200: $14
    db $e3                                        ; $5201: $e3
    pop bc                                        ; $5202: $c1
    add b                                         ; $5203: $80
    ld d, l                                       ; $5204: $55
    db $e3                                        ; $5205: $e3
    db $10                                        ; $5206: $10
    rst $30                                       ; $5207: $f7
    jr z, jr_072_51e1                             ; $5208: $28 $d7

    ld bc, $54fe                                  ; $520a: $01 $fe $54
    xor e                                         ; $520d: $ab
    cp e                                          ; $520e: $bb
    ld b, b                                       ; $520f: $40
    push af                                       ; $5210: $f5
    ld [bc], a                                    ; $5211: $02
    rst $30                                       ; $5212: $f7
    nop                                           ; $5213: $00
    jp hl                                         ; $5214: $e9


    inc d                                         ; $5215: $14
    dec e                                         ; $5216: $1d
    ldh [$d0], a                                  ; $5217: $e0 $d0
    jr nz, @-$49                                  ; $5219: $20 $b5

    ld c, b                                       ; $521b: $48
    dec h                                         ; $521c: $25
    ret c                                         ; $521d: $d8

    ld a, [bc]                                    ; $521e: $0a
    push af                                       ; $521f: $f5
    ld e, [hl]                                    ; $5220: $5e
    and c                                         ; $5221: $a1
    rst $38                                       ; $5222: $ff
    nop                                           ; $5223: $00
    rst $38                                       ; $5224: $ff
    nop                                           ; $5225: $00
    scf                                           ; $5226: $37
    ret z                                         ; $5227: $c8

    ld a, [hl]                                    ; $5228: $7e
    ld bc, $b24d                                  ; $5229: $01 $4d $b2
    add hl, bc                                    ; $522c: $09
    or $10                                        ; $522d: $f6 $10

jr_072_522f:
    rst $28                                       ; $522f: $ef
    db $eb                                        ; $5230: $eb
    inc d                                         ; $5231: $14
    rst $38                                       ; $5232: $ff
    nop                                           ; $5233: $00
    push af                                       ; $5234: $f5
    ld a, [bc]                                    ; $5235: $0a
    sbc d                                         ; $5236: $9a
    ld h, l                                       ; $5237: $65
    rst $28                                       ; $5238: $ef
    db $10                                        ; $5239: $10
    ld [hl-], a                                   ; $523a: $32
    call $9d62                                    ; $523b: $cd $62 $9d
    inc b                                         ; $523e: $04
    ei                                            ; $523f: $fb
    rst $00                                       ; $5240: $c7
    nop                                           ; $5241: $00
    rst $28                                       ; $5242: $ef
    nop                                           ; $5243: $00
    db $fd                                        ; $5244: $fd
    ld [bc], a                                    ; $5245: $02
    and e                                         ; $5246: $a3
    ld e, h                                       ; $5247: $5c
    ld a, [hl]                                    ; $5248: $7e
    add c                                         ; $5249: $81
    adc l                                         ; $524a: $8d
    ld [hl], d                                    ; $524b: $72
    ld b, c                                       ; $524c: $41
    cp [hl]                                       ; $524d: $be
    jr nz, jr_072_522f                            ; $524e: $20 $df

    inc b                                         ; $5250: $04
    rst $38                                       ; $5251: $ff
    ld h, b                                       ; $5252: $60
    rst $38                                       ; $5253: $ff
    ld c, h                                       ; $5254: $4c
    rst $38                                       ; $5255: $ff
    ldh [rIE], a                                  ; $5256: $e0 $ff
    sub l                                         ; $5258: $95
    rst $38                                       ; $5259: $ff
    cpl                                           ; $525a: $2f
    rst $38                                       ; $525b: $ff
    push de                                       ; $525c: $d5
    rst $38                                       ; $525d: $ff
    ld a, a                                       ; $525e: $7f
    rst $38                                       ; $525f: $ff
    ld [bc], a                                    ; $5260: $02
    rst $38                                       ; $5261: $ff
    ld b, b                                       ; $5262: $40
    rst $38                                       ; $5263: $ff
    sbc b                                         ; $5264: $98
    rst $38                                       ; $5265: $ff
    ld b, d                                       ; $5266: $42
    rst $38                                       ; $5267: $ff
    inc c                                         ; $5268: $0c
    rst $38                                       ; $5269: $ff
    ld h, a                                       ; $526a: $67
    rst $38                                       ; $526b: $ff
    cp e                                          ; $526c: $bb
    rst $38                                       ; $526d: $ff
    rst $18                                       ; $526e: $df
    rst $38                                       ; $526f: $ff
    nop                                           ; $5270: $00
    rst $38                                       ; $5271: $ff
    db $10                                        ; $5272: $10
    rst $38                                       ; $5273: $ff
    call z, $81ff                                 ; $5274: $cc $ff $81
    rst $38                                       ; $5277: $ff
    ld [hl], d                                    ; $5278: $72
    rst $38                                       ; $5279: $ff
    or e                                          ; $527a: $b3
    rst $38                                       ; $527b: $ff
    reti                                          ; $527c: $d9


    rst $38                                       ; $527d: $ff
    ld a, a                                       ; $527e: $7f
    rst $38                                       ; $527f: $ff
    ld [bc], a                                    ; $5280: $02
    rst $38                                       ; $5281: $ff
    adc b                                         ; $5282: $88
    rst $38                                       ; $5283: $ff
    ld hl, $8aff                                  ; $5284: $21 $ff $8a
    rst $38                                       ; $5287: $ff
    ld [hl], l                                    ; $5288: $75
    rst $38                                       ; $5289: $ff
    inc hl                                        ; $528a: $23
    rst $38                                       ; $528b: $ff
    or l                                          ; $528c: $b5
    rst $38                                       ; $528d: $ff
    rst $28                                       ; $528e: $ef
    rst $38                                       ; $528f: $ff
    db $fd                                        ; $5290: $fd
    rst $38                                       ; $5291: $ff
    rst $38                                       ; $5292: $ff
    rst $38                                       ; $5293: $ff
    rst $38                                       ; $5294: $ff
    rst $38                                       ; $5295: $ff
    rst $38                                       ; $5296: $ff
    rst $38                                       ; $5297: $ff
    ld a, e                                       ; $5298: $7b
    rst $38                                       ; $5299: $ff
    rst $10                                       ; $529a: $d7
    rst $38                                       ; $529b: $ff
    inc a                                         ; $529c: $3c
    rst $38                                       ; $529d: $ff
    ld h, l                                       ; $529e: $65
    rst $38                                       ; $529f: $ff
    rst $38                                       ; $52a0: $ff
    rst $38                                       ; $52a1: $ff
    rst $38                                       ; $52a2: $ff
    rst $38                                       ; $52a3: $ff
    rst $38                                       ; $52a4: $ff
    rst $38                                       ; $52a5: $ff
    db $fd                                        ; $52a6: $fd
    rst $38                                       ; $52a7: $ff
    rst $10                                       ; $52a8: $d7
    rst $38                                       ; $52a9: $ff
    ld l, e                                       ; $52aa: $6b
    rst $38                                       ; $52ab: $ff
    add hl, sp                                    ; $52ac: $39
    rst $38                                       ; $52ad: $ff
    ld b, b                                       ; $52ae: $40
    rst $38                                       ; $52af: $ff
    cp a                                          ; $52b0: $bf
    rst $38                                       ; $52b1: $ff
    rst $38                                       ; $52b2: $ff
    rst $38                                       ; $52b3: $ff
    rst $38                                       ; $52b4: $ff
    rst $38                                       ; $52b5: $ff
    rst $30                                       ; $52b6: $f7
    rst $38                                       ; $52b7: $ff
    cp e                                          ; $52b8: $bb
    rst $38                                       ; $52b9: $ff
    ld [hl], a                                    ; $52ba: $77
    rst $38                                       ; $52bb: $ff
    adc h                                         ; $52bc: $8c
    rst $38                                       ; $52bd: $ff
    ld [$ffff], sp                                ; $52be: $08 $ff $ff
    rst $38                                       ; $52c1: $ff
    rst $38                                       ; $52c2: $ff
    rst $38                                       ; $52c3: $ff
    rst $38                                       ; $52c4: $ff
    rst $38                                       ; $52c5: $ff
    db $fd                                        ; $52c6: $fd
    rst $38                                       ; $52c7: $ff
    rst $28                                       ; $52c8: $ef
    rst $38                                       ; $52c9: $ff
    sub $ef                                       ; $52ca: $d6 $ef
    add [hl]                                      ; $52cc: $86
    rst $28                                       ; $52cd: $ef
    ld l, c                                       ; $52ce: $69
    rst $00                                       ; $52cf: $c7
    jr nz, @+$01                                  ; $52d0: $20 $ff

    sbc c                                         ; $52d2: $99
    rst $38                                       ; $52d3: $ff
    ld [hl+], a                                   ; $52d4: $22
    rst $38                                       ; $52d5: $ff
    ld bc, $4cff                                  ; $52d6: $01 $ff $4c
    or e                                          ; $52d9: $b3
    and d                                         ; $52da: $a2
    ld d, l                                       ; $52db: $55
    rla                                           ; $52dc: $17
    ldh [$c1], a                                  ; $52dd: $e0 $c1
    nop                                           ; $52df: $00
    db $10                                        ; $52e0: $10
    rst $38                                       ; $52e1: $ff
    adc d                                         ; $52e2: $8a
    rst $38                                       ; $52e3: $ff
    ldh [rIE], a                                  ; $52e4: $e0 $ff
    inc d                                         ; $52e6: $14
    rst $38                                       ; $52e7: $ff
    adc b                                         ; $52e8: $88
    ld [hl], a                                    ; $52e9: $77
    dec b                                         ; $52ea: $05
    ld a, [$e11e]                                 ; $52eb: $fa $1e $e1
    rst $30                                       ; $52ee: $f7
    ld [$ff22], sp                                ; $52ef: $08 $22 $ff
    ld bc, $58ff                                  ; $52f2: $01 $ff $58
    rst $38                                       ; $52f5: $ff
    nop                                           ; $52f6: $00
    rst $38                                       ; $52f7: $ff
    add h                                         ; $52f8: $84
    ld a, e                                       ; $52f9: $7b
    ld hl, $87de                                  ; $52fa: $21 $de $87
    ld a, b                                       ; $52fd: $78
    cp $01                                        ; $52fe: $fe $01
    add d                                         ; $5300: $82
    ld bc, $c72c                                  ; $5301: $01 $2c $c7
    ld b, b                                       ; $5304: $40
    rst $28                                       ; $5305: $ef
    sub c                                         ; $5306: $91
    ld l, a                                       ; $5307: $6f
    inc b                                         ; $5308: $04
    ei                                            ; $5309: $fb
    ld b, c                                       ; $530a: $41
    cp [hl]                                       ; $530b: $be
    halt                                          ; $530c: $76
    adc c                                         ; $530d: $89
    xor e                                         ; $530e: $ab
    ld b, h                                       ; $530f: $44
    rst $28                                       ; $5310: $ef
    nop                                           ; $5311: $00
    jp Jump_000_3a28                              ; $5312: $c3 $28 $3a


    pop bc                                        ; $5315: $c1
    and b                                         ; $5316: $a0
    ld b, b                                       ; $5317: $40
    ld l, d                                       ; $5318: $6a
    sub c                                         ; $5319: $91
    sub b                                         ; $531a: $90
    ld l, e                                       ; $531b: $6b
    inc h                                         ; $531c: $24
    db $db                                        ; $531d: $db
    db $10                                        ; $531e: $10
    rst $38                                       ; $531f: $ff
    rst $38                                       ; $5320: $ff
    nop                                           ; $5321: $00
    rst $38                                       ; $5322: $ff
    nop                                           ; $5323: $00
    ld l, a                                       ; $5324: $6f
    sub b                                         ; $5325: $90
    db $fd                                        ; $5326: $fd
    ld [bc], a                                    ; $5327: $02
    sbc d                                         ; $5328: $9a
    ld h, l                                       ; $5329: $65
    dec h                                         ; $532a: $25
    jp c, $bf40                                   ; $532b: $da $40 $bf

    ld [$ffff], sp                                ; $532e: $08 $ff $ff
    nop                                           ; $5331: $00
    db $eb                                        ; $5332: $eb
    inc d                                         ; $5333: $14
    dec [hl]                                      ; $5334: $35
    jp z, $21de                                   ; $5335: $ca $de $21

    ld h, l                                       ; $5338: $65
    sbc d                                         ; $5339: $9a
    adc c                                         ; $533a: $89
    halt                                          ; $533b: $76
    db $10                                        ; $533c: $10
    rst $28                                       ; $533d: $ef
    nop                                           ; $533e: $00
    rst $38                                       ; $533f: $ff
    rra                                           ; $5340: $1f
    nop                                           ; $5341: $00
    cp e                                          ; $5342: $bb
    inc b                                         ; $5343: $04
    ld b, [hl]                                    ; $5344: $46
    cp c                                          ; $5345: $b9
    db $fd                                        ; $5346: $fd
    ld [bc], a                                    ; $5347: $02
    dec de                                        ; $5348: $1b
    db $e4                                        ; $5349: $e4
    inc b                                         ; $534a: $04
    ei                                            ; $534b: $fb
    add b                                         ; $534c: $80
    ld a, a                                       ; $534d: $7f
    ld [$81ff], sp                                ; $534e: $08 $ff $81
    rst $38                                       ; $5351: $ff
    ld [hl-], a                                   ; $5352: $32
    rst $38                                       ; $5353: $ff
    add c                                         ; $5354: $81
    rst $38                                       ; $5355: $ff
    ld d, h                                       ; $5356: $54
    rst $38                                       ; $5357: $ff
    cp l                                          ; $5358: $bd
    rst $38                                       ; $5359: $ff
    ld e, e                                       ; $535a: $5b
    rst $38                                       ; $535b: $ff
    db $fd                                        ; $535c: $fd
    rst $38                                       ; $535d: $ff
    rst $18                                       ; $535e: $df
    rst $38                                       ; $535f: $ff
    nop                                           ; $5360: $00
    rst $38                                       ; $5361: $ff
    ld h, e                                       ; $5362: $63
    rst $38                                       ; $5363: $ff
    ld a, [bc]                                    ; $5364: $0a
    rst $38                                       ; $5365: $ff
    ld sp, $9eff                                  ; $5366: $31 $ff $9e
    rst $38                                       ; $5369: $ff
    cp l                                          ; $536a: $bd
    rst $38                                       ; $536b: $ff
    rst $30                                       ; $536c: $f7
    rst $38                                       ; $536d: $ff
    ei                                            ; $536e: $fb
    rst $38                                       ; $536f: $ff
    ld b, d                                       ; $5370: $42
    rst $38                                       ; $5371: $ff
    jr nc, @+$01                                  ; $5372: $30 $ff

    ld b, $ff                                     ; $5374: $06 $ff
    ret                                           ; $5376: $c9


    rst $38                                       ; $5377: $ff
    call z, $9bff                                 ; $5378: $cc $ff $9b
    rst $38                                       ; $537b: $ff
    cp $ff                                        ; $537c: $fe $ff
    rst $38                                       ; $537e: $ff
    rst $38                                       ; $537f: $ff
    ld hl, $85ff                                  ; $5380: $21 $ff $85
    rst $38                                       ; $5383: $ff
    dec hl                                        ; $5384: $2b
    rst $38                                       ; $5385: $ff
    sub $ff                                       ; $5386: $d6 $ff
    adc h                                         ; $5388: $8c
    rst $38                                       ; $5389: $ff
    ld e, l                                       ; $538a: $5d
    rst $38                                       ; $538b: $ff
    rst $30                                       ; $538c: $f7
    rst $38                                       ; $538d: $ff
    rst $38                                       ; $538e: $ff
    rst $38                                       ; $538f: $ff
    rst $38                                       ; $5390: $ff
    rst $38                                       ; $5391: $ff
    rst $38                                       ; $5392: $ff
    rst $38                                       ; $5393: $ff
    rst $38                                       ; $5394: $ff
    rst $38                                       ; $5395: $ff
    cp l                                          ; $5396: $bd
    rst $38                                       ; $5397: $ff
    halt                                          ; $5398: $76
    rst $38                                       ; $5399: $ff
    ldh a, [rIE]                                  ; $539a: $f0 $ff
    sub l                                         ; $539c: $95
    rst $38                                       ; $539d: $ff
    add b                                         ; $539e: $80
    rst $38                                       ; $539f: $ff
    rst $38                                       ; $53a0: $ff
    rst $38                                       ; $53a1: $ff
    rst $38                                       ; $53a2: $ff
    rst $38                                       ; $53a3: $ff
    rst $18                                       ; $53a4: $df
    rst $38                                       ; $53a5: $ff
    ld a, e                                       ; $53a6: $7b
    rst $38                                       ; $53a7: $ff
    or a                                          ; $53a8: $b7
    rst $38                                       ; $53a9: $ff
    and $ff                                       ; $53aa: $e6 $ff
    nop                                           ; $53ac: $00
    rst $38                                       ; $53ad: $ff
    ld b, b                                       ; $53ae: $40
    rst $38                                       ; $53af: $ff
    rst $38                                       ; $53b0: $ff
    rst $38                                       ; $53b1: $ff
    rst $38                                       ; $53b2: $ff
    rst $38                                       ; $53b3: $ff
    ld a, a                                       ; $53b4: $7f
    rst $38                                       ; $53b5: $ff
    cp [hl]                                       ; $53b6: $be
    rst $38                                       ; $53b7: $ff
    ld a, l                                       ; $53b8: $7d
    rst $38                                       ; $53b9: $ff
    ld [hl-], a                                   ; $53ba: $32
    rst $38                                       ; $53bb: $ff
    ld hl, $89ff                                  ; $53bc: $21 $ff $89
    cp $ff                                        ; $53bf: $fe $ff
    rst $38                                       ; $53c1: $ff
    rst $38                                       ; $53c2: $ff
    rst $38                                       ; $53c3: $ff
    rst $18                                       ; $53c4: $df
    rst $38                                       ; $53c5: $ff
    rst $30                                       ; $53c6: $f7
    rst $38                                       ; $53c7: $ff
    ld l, l                                       ; $53c8: $6d
    rst $18                                       ; $53c9: $df
    jr @-$1f                                      ; $53ca: $18 $df

    ld d, l                                       ; $53cc: $55
    adc a                                         ; $53cd: $8f
    inc b                                         ; $53ce: $04
    inc bc                                        ; $53cf: $03
    ld h, [hl]                                    ; $53d0: $66
    rst $38                                       ; $53d1: $ff
    adc e                                         ; $53d2: $8b
    rst $38                                       ; $53d3: $ff
    inc b                                         ; $53d4: $04
    rst $38                                       ; $53d5: $ff
    ld [de], a                                    ; $53d6: $12
    db $ed                                        ; $53d7: $ed
    cp b                                          ; $53d8: $b8
    ld b, a                                       ; $53d9: $47
    ld l, $c1                                     ; $53da: $2e $c1
    ld l, l                                       ; $53dc: $6d
    add d                                         ; $53dd: $82
    add d                                         ; $53de: $82
    ld bc, $ff28                                  ; $53df: $01 $28 $ff
    add c                                         ; $53e2: $81
    rst $38                                       ; $53e3: $ff
    ld d, b                                       ; $53e4: $50
    rst $38                                       ; $53e5: $ff
    ld [hl+], a                                   ; $53e6: $22
    db $dd                                        ; $53e7: $dd
    inc d                                         ; $53e8: $14
    db $eb                                        ; $53e9: $eb
    dec a                                         ; $53ea: $3d
    jp nz, Jump_000_10ef                          ; $53eb: $c2 $ef $10

    cp l                                          ; $53ee: $bd
    ld b, d                                       ; $53ef: $42
    inc b                                         ; $53f0: $04
    rst $38                                       ; $53f1: $ff
    ld h, c                                       ; $53f2: $61
    rst $38                                       ; $53f3: $ff
    ld [bc], a                                    ; $53f4: $02
    db $fd                                        ; $53f5: $fd
    db $10                                        ; $53f6: $10
    rst $28                                       ; $53f7: $ef
    add l                                         ; $53f8: $85
    ld a, d                                       ; $53f9: $7a
    ld c, $f1                                     ; $53fa: $0e $f1
    db $fd                                        ; $53fc: $fd
    ld [bc], a                                    ; $53fd: $02
    rst $10                                       ; $53fe: $d7
    jr z, jr_072_5453                             ; $53ff: $28 $52

    adc a                                         ; $5401: $8f
    nop                                           ; $5402: $00
    rst $18                                       ; $5403: $df
    inc h                                         ; $5404: $24
    rst $18                                       ; $5405: $df
    ld de, $06ee                                  ; $5406: $11 $ee $06
    ld sp, hl                                     ; $5409: $f9
    db $ec                                        ; $540a: $ec
    inc de                                        ; $540b: $13
    ld d, a                                       ; $540c: $57
    xor b                                         ; $540d: $a8
    cp a                                          ; $540e: $bf
    nop                                           ; $540f: $00
    rst $10                                       ; $5410: $d7
    nop                                           ; $5411: $00
    ld d, h                                       ; $5412: $54
    add e                                         ; $5413: $83
    ld b, c                                       ; $5414: $41
    add b                                         ; $5415: $80
    push de                                       ; $5416: $d5
    ld [hl+], a                                   ; $5417: $22
    ld d, b                                       ; $5418: $50
    and a                                         ; $5419: $a7
    adc c                                         ; $541a: $89
    halt                                          ; $541b: $76
    ld b, b                                       ; $541c: $40
    rst $38                                       ; $541d: $ff
    inc b                                         ; $541e: $04
    rst $38                                       ; $541f: $ff
    rst $38                                       ; $5420: $ff
    nop                                           ; $5421: $00
    sbc $21                                       ; $5422: $de $21
    ei                                            ; $5424: $fb
    inc b                                         ; $5425: $04
    inc [hl]                                      ; $5426: $34
    res 2, [hl]                                   ; $5427: $cb $96
    ld l, c                                       ; $5429: $69
    nop                                           ; $542a: $00
    rst $38                                       ; $542b: $ff
    jr nz, @+$01                                  ; $542c: $20 $ff

    ld bc, $d4ff                                  ; $542e: $01 $ff $d4
    jr z, @+$6c                                   ; $5431: $28 $6a

    sub h                                         ; $5433: $94
    cp l                                          ; $5434: $bd
    ld b, d                                       ; $5435: $42
    jp z, $2435                                   ; $5436: $ca $35 $24

    db $db                                        ; $5439: $db
    ld b, d                                       ; $543a: $42
    cp l                                          ; $543b: $bd
    nop                                           ; $543c: $00
    rst $38                                       ; $543d: $ff
    ld [$77ff], sp                                ; $543e: $08 $ff $77
    ld [$738c], sp                                ; $5441: $08 $8c $73
    ei                                            ; $5444: $fb
    inc b                                         ; $5445: $04
    ld [hl], $c9                                  ; $5446: $36 $c9
    ld [de], a                                    ; $5448: $12
    db $ed                                        ; $5449: $ed
    nop                                           ; $544a: $00
    rst $38                                       ; $544b: $ff
    jr nz, @+$01                                  ; $544c: $20 $ff

    add [hl]                                      ; $544e: $86
    rst $38                                       ; $544f: $ff
    ret                                           ; $5450: $c9


    rst $38                                       ; $5451: $ff
    inc b                                         ; $5452: $04

jr_072_5453:
    rst $38                                       ; $5453: $ff
    ld d, b                                       ; $5454: $50
    rst $38                                       ; $5455: $ff
    or $ff                                        ; $5456: $f6 $ff
    cp e                                          ; $5458: $bb
    rst $38                                       ; $5459: $ff
    rst $18                                       ; $545a: $df
    rst $38                                       ; $545b: $ff
    rst $38                                       ; $545c: $ff
    rst $38                                       ; $545d: $ff
    rst $38                                       ; $545e: $ff
    rst $38                                       ; $545f: $ff
    adc h                                         ; $5460: $8c
    rst $38                                       ; $5461: $ff
    jr z, @+$01                                   ; $5462: $28 $ff

    rst $00                                       ; $5464: $c7
    rst $38                                       ; $5465: $ff
    ld a, e                                       ; $5466: $7b
    rst $38                                       ; $5467: $ff
    reti                                          ; $5468: $d9


    rst $38                                       ; $5469: $ff
    ld a, a                                       ; $546a: $7f
    rst $38                                       ; $546b: $ff
    cp a                                          ; $546c: $bf
    rst $38                                       ; $546d: $ff
    rst $38                                       ; $546e: $ff
    rst $38                                       ; $546f: $ff
    jp nz, Jump_000_18ff                          ; $5470: $c2 $ff $18

    rst $38                                       ; $5473: $ff
    daa                                           ; $5474: $27
    rst $38                                       ; $5475: $ff
    ld [hl-], a                                   ; $5476: $32
    rst $38                                       ; $5477: $ff
    or l                                          ; $5478: $b5
    rst $38                                       ; $5479: $ff
    rst $28                                       ; $547a: $ef
    rst $38                                       ; $547b: $ff
    rst $38                                       ; $547c: $ff
    rst $38                                       ; $547d: $ff
    rst $38                                       ; $547e: $ff
    rst $38                                       ; $547f: $ff
    inc d                                         ; $5480: $14
    rst $38                                       ; $5481: $ff
    xor [hl]                                      ; $5482: $ae
    rst $38                                       ; $5483: $ff
    ld e, c                                       ; $5484: $59
    rst $38                                       ; $5485: $ff
    ld [hl-], a                                   ; $5486: $32
    rst $38                                       ; $5487: $ff
    push de                                       ; $5488: $d5
    rst $38                                       ; $5489: $ff
    ld a, a                                       ; $548a: $7f
    rst $38                                       ; $548b: $ff
    db $fd                                        ; $548c: $fd
    rst $38                                       ; $548d: $ff
    rst $38                                       ; $548e: $ff
    rst $38                                       ; $548f: $ff
    rst $38                                       ; $5490: $ff
    rst $38                                       ; $5491: $ff
    db $fd                                        ; $5492: $fd
    rst $38                                       ; $5493: $ff
    rst $10                                       ; $5494: $d7
    rst $38                                       ; $5495: $ff
    ld l, e                                       ; $5496: $6b
    rst $38                                       ; $5497: $ff
    jp $54ff                                      ; $5498: $c3 $ff $54


    rst $38                                       ; $549b: $ff
    ld bc, $98ff                                  ; $549c: $01 $ff $98
    rst $38                                       ; $549f: $ff
    rst $38                                       ; $54a0: $ff
    rst $38                                       ; $54a1: $ff
    rst $30                                       ; $54a2: $f7
    rst $38                                       ; $54a3: $ff
    cp e                                          ; $54a4: $bb
    rst $38                                       ; $54a5: $ff
    ld [hl], a                                    ; $54a6: $77
    rst $38                                       ; $54a7: $ff
    sbc b                                         ; $54a8: $98
    rst $38                                       ; $54a9: $ff
    nop                                           ; $54aa: $00
    rst $38                                       ; $54ab: $ff
    ld [bc], a                                    ; $54ac: $02
    rst $38                                       ; $54ad: $ff
    and b                                         ; $54ae: $a0
    rst $38                                       ; $54af: $ff
    rst $38                                       ; $54b0: $ff
    rst $38                                       ; $54b1: $ff
    db $fd                                        ; $54b2: $fd
    rst $38                                       ; $54b3: $ff
    rst $28                                       ; $54b4: $ef
    rst $38                                       ; $54b5: $ff
    sub $ff                                       ; $54b6: $d6 $ff
    ret z                                         ; $54b8: $c8

    rst $38                                       ; $54b9: $ff
    add h                                         ; $54ba: $84
    rst $38                                       ; $54bb: $ff
    ld [hl+], a                                   ; $54bc: $22
    db $fc                                        ; $54bd: $fc
    db $10                                        ; $54be: $10
    rst $38                                       ; $54bf: $ff
    rst $38                                       ; $54c0: $ff
    rst $38                                       ; $54c1: $ff
    rst $38                                       ; $54c2: $ff
    rst $38                                       ; $54c3: $ff
    ld a, e                                       ; $54c4: $7b
    rst $38                                       ; $54c5: $ff
    rst $10                                       ; $54c6: $d7
    cp a                                          ; $54c7: $bf
    inc hl                                        ; $54c8: $23
    cp a                                          ; $54c9: $bf
    or [hl]                                       ; $54ca: $b6
    rra                                           ; $54cb: $1f
    ld a, [bc]                                    ; $54cc: $0a
    rlca                                          ; $54cd: $07
    xor c                                         ; $54ce: $a9
    rra                                           ; $54cf: $1f
    ld l, $ff                                     ; $54d0: $2e $ff
    ld de, $48ff                                  ; $54d2: $11 $ff $48
    or a                                          ; $54d5: $b7
    and b                                         ; $54d6: $a0
    ld e, a                                       ; $54d7: $5f
    ld a, h                                       ; $54d8: $7c
    add e                                         ; $54d9: $83
    sbc e                                         ; $54da: $9b
    ld b, h                                       ; $54db: $44
    push de                                       ; $54dc: $d5
    ld a, [bc]                                    ; $54dd: $0a
    rrca                                          ; $54de: $0f
    nop                                           ; $54df: $00
    dec b                                         ; $54e0: $05
    rst $38                                       ; $54e1: $ff
    ld b, b                                       ; $54e2: $40
    rst $38                                       ; $54e3: $ff
    adc b                                         ; $54e4: $88
    ld [hl], a                                    ; $54e5: $77
    ld d, d                                       ; $54e6: $52
    xor l                                         ; $54e7: $ad
    ld a, d                                       ; $54e8: $7a
    add l                                         ; $54e9: $85
    rst $18                                       ; $54ea: $df
    jr nz, jr_072_5568                            ; $54eb: $20 $7b

    add h                                         ; $54ed: $84
    rst $38                                       ; $54ee: $ff
    nop                                           ; $54ef: $00
    add h                                         ; $54f0: $84
    rst $38                                       ; $54f1: $ff
    ld [$40f7], sp                                ; $54f2: $08 $f7 $40
    cp a                                          ; $54f5: $bf
    inc d                                         ; $54f6: $14
    db $eb                                        ; $54f7: $eb
    dec e                                         ; $54f8: $1d
    ld [c], a                                     ; $54f9: $e2
    ld a, [$af05]                                 ; $54fa: $fa $05 $af
    ld d, b                                       ; $54fd: $50
    cp $00                                        ; $54fe: $fe $00
    ld [bc], a                                    ; $5500: $02
    cp a                                          ; $5501: $bf
    ld d, b                                       ; $5502: $50
    cp a                                          ; $5503: $bf
    ld b, h                                       ; $5504: $44
    cp e                                          ; $5505: $bb
    ld a, [de]                                    ; $5506: $1a
    push hl                                       ; $5507: $e5
    ret c                                         ; $5508: $d8

    daa                                           ; $5509: $27
    xor [hl]                                      ; $550a: $ae
    ld d, c                                       ; $550b: $51
    rst $38                                       ; $550c: $ff
    nop                                           ; $550d: $00
    rst $38                                       ; $550e: $ff
    nop                                           ; $550f: $00
    xor c                                         ; $5510: $a9
    ld b, $83                                     ; $5511: $06 $83
    nop                                           ; $5513: $00
    ld [$4205], a                                 ; $5514: $ea $05 $42
    xor l                                         ; $5517: $ad
    inc d                                         ; $5518: $14
    db $eb                                        ; $5519: $eb
    nop                                           ; $551a: $00
    rst $38                                       ; $551b: $ff
    db $10                                        ; $551c: $10
    rst $38                                       ; $551d: $ff
    ld h, $ff                                     ; $551e: $26 $ff
    cp h                                          ; $5520: $bc
    ld b, e                                       ; $5521: $43
    rst $30                                       ; $5522: $f7
    ld [$9669], sp                                ; $5523: $08 $69 $96
    ld e, b                                       ; $5526: $58
    and a                                         ; $5527: $a7
    ld bc, $80fe                                  ; $5528: $01 $fe $80
    rst $38                                       ; $552b: $ff
    inc b                                         ; $552c: $04
    rst $38                                       ; $552d: $ff
    inc sp                                        ; $552e: $33
    rst $38                                       ; $552f: $ff
    pop de                                        ; $5530: $d1
    jr nz, jr_072_55ae                            ; $5531: $20 $7b

    add b                                         ; $5533: $80
    sub h                                         ; $5534: $94
    ld l, e                                       ; $5535: $6b
    sub b                                         ; $5536: $90
    ld l, a                                       ; $5537: $6f
    ld [$00f7], sp                                ; $5538: $08 $f7 $00
    rst $38                                       ; $553b: $ff
    ld [hl+], a                                   ; $553c: $22
    rst $38                                       ; $553d: $ff
    ld [$18ff], sp                                ; $553e: $08 $ff $18
    rst $20                                       ; $5541: $e7
    or $09                                        ; $5542: $f6 $09
    ld l, l                                       ; $5544: $6d
    sub d                                         ; $5545: $92
    ld c, c                                       ; $5546: $49
    or [hl]                                       ; $5547: $b6
    ld [bc], a                                    ; $5548: $02
    db $fd                                        ; $5549: $fd
    add c                                         ; $554a: $81
    rst $38                                       ; $554b: $ff
    jr @+$01                                      ; $554c: $18 $ff

    ld d, e                                       ; $554e: $53
    rst $38                                       ; $554f: $ff
    db $10                                        ; $5550: $10
    rst $38                                       ; $5551: $ff
    ld b, e                                       ; $5552: $43
    rst $38                                       ; $5553: $ff
    reti                                          ; $5554: $d9


    rst $38                                       ; $5555: $ff
    cp l                                          ; $5556: $bd
    rst $38                                       ; $5557: $ff
    rst $30                                       ; $5558: $f7
    rst $38                                       ; $5559: $ff
    ei                                            ; $555a: $fb
    rst $38                                       ; $555b: $ff
    rst $38                                       ; $555c: $ff
    rst $38                                       ; $555d: $ff
    rst $38                                       ; $555e: $ff
    rst $38                                       ; $555f: $ff
    and b                                         ; $5560: $a0
    rst $38                                       ; $5561: $ff
    inc e                                         ; $5562: $1c
    rst $38                                       ; $5563: $ff
    db $ec                                        ; $5564: $ec
    rst $38                                       ; $5565: $ff
    sbc e                                         ; $5566: $9b
    rst $38                                       ; $5567: $ff

jr_072_5568:
    cp $ff                                        ; $5568: $fe $ff
    rst $38                                       ; $556a: $ff
    rst $38                                       ; $556b: $ff
    rst $38                                       ; $556c: $ff
    rst $38                                       ; $556d: $ff
    rst $38                                       ; $556e: $ff
    rst $38                                       ; $556f: $ff
    ld h, d                                       ; $5570: $62
    rst $38                                       ; $5571: $ff
    sbc l                                         ; $5572: $9d
    rst $38                                       ; $5573: $ff
    ret z                                         ; $5574: $c8

    rst $38                                       ; $5575: $ff
    ld e, l                                       ; $5576: $5d
    rst $38                                       ; $5577: $ff
    rst $30                                       ; $5578: $f7
    rst $38                                       ; $5579: $ff
    rst $38                                       ; $557a: $ff
    rst $38                                       ; $557b: $ff
    rst $38                                       ; $557c: $ff
    rst $38                                       ; $557d: $ff
    rst $38                                       ; $557e: $ff
    rst $38                                       ; $557f: $ff
    cp b                                          ; $5580: $b8
    rst $38                                       ; $5581: $ff
    ld h, l                                       ; $5582: $65
    rst $38                                       ; $5583: $ff
    set 7, a                                      ; $5584: $cb $ff
    ld e, e                                       ; $5586: $5b
    rst $38                                       ; $5587: $ff
    db $fd                                        ; $5588: $fd
    rst $38                                       ; $5589: $ff
    rst $18                                       ; $558a: $df
    rst $38                                       ; $558b: $ff
    rst $38                                       ; $558c: $ff
    rst $38                                       ; $558d: $ff
    rst $38                                       ; $558e: $ff
    rst $38                                       ; $558f: $ff
    rst $18                                       ; $5590: $df
    rst $38                                       ; $5591: $ff
    ld a, e                                       ; $5592: $7b
    rst $38                                       ; $5593: $ff
    or a                                          ; $5594: $b7
    rst $38                                       ; $5595: $ff
    ld c, $ff                                     ; $5596: $0e $ff
    ld d, b                                       ; $5598: $50
    rst $38                                       ; $5599: $ff
    inc b                                         ; $559a: $04
    rst $38                                       ; $559b: $ff
    ld h, d                                       ; $559c: $62
    rst $38                                       ; $559d: $ff
    cp b                                          ; $559e: $b8
    rst $38                                       ; $559f: $ff
    ld a, a                                       ; $55a0: $7f
    rst $38                                       ; $55a1: $ff
    cp [hl]                                       ; $55a2: $be
    rst $38                                       ; $55a3: $ff
    ld a, l                                       ; $55a4: $7d
    rst $38                                       ; $55a5: $ff
    ld h, e                                       ; $55a6: $63
    rst $38                                       ; $55a7: $ff
    ld [bc], a                                    ; $55a8: $02
    rst $38                                       ; $55a9: $ff
    ld [$80ff], sp                                ; $55aa: $08 $ff $80
    rst $38                                       ; $55ad: $ff

jr_072_55ae:
    ld d, $ff                                     ; $55ae: $16 $ff
    rst $18                                       ; $55b0: $df
    rst $38                                       ; $55b1: $ff
    rst $30                                       ; $55b2: $f7
    rst $38                                       ; $55b3: $ff
    ld l, l                                       ; $55b4: $6d
    rst $38                                       ; $55b5: $ff
    ld hl, $11ff                                  ; $55b6: $21 $ff $11
    cp $84                                        ; $55b9: $fe $84
    ld hl, sp+$41                                 ; $55bb: $f8 $41
    cp $10                                        ; $55bd: $fe $10
    rst $38                                       ; $55bf: $ff
    rst $38                                       ; $55c0: $ff
    rst $38                                       ; $55c1: $ff
    cp l                                          ; $55c2: $bd
    rst $38                                       ; $55c3: $ff
    or $7f                                        ; $55c4: $f6 $7f
    rrca                                          ; $55c6: $0f
    ld a, a                                       ; $55c7: $7f
    ld e, c                                       ; $55c8: $59
    ccf                                           ; $55c9: $3f
    jr jr_072_55db                                ; $55ca: $18 $0f

    ld h, [hl]                                    ; $55cc: $66
    ccf                                           ; $55cd: $3f
    ld [$457f], sp                                ; $55ce: $08 $7f $45

jr_072_55d1:
    rst $38                                       ; $55d1: $ff
    ld [hl+], a                                   ; $55d2: $22
    db $dd                                        ; $55d3: $dd
    add c                                         ; $55d4: $81
    ld a, [hl]                                    ; $55d5: $7e
    ld hl, sp+$07                                 ; $55d6: $f8 $07
    ld [hl], a                                    ; $55d8: $77
    adc b                                         ; $55d9: $88
    xor d                                         ; $55da: $aa

jr_072_55db:
    dec d                                         ; $55db: $15
    cp a                                          ; $55dc: $bf
    nop                                           ; $55dd: $00
    rrca                                          ; $55de: $0f
    nop                                           ; $55df: $00
    nop                                           ; $55e0: $00
    rst $38                                       ; $55e1: $ff
    ld hl, $48de                                  ; $55e2: $21 $de $48
    or a                                          ; $55e5: $b7
    db $f4                                        ; $55e6: $f4

jr_072_55e7:
    dec bc                                        ; $55e7: $0b
    cp a                                          ; $55e8: $bf
    ld b, b                                       ; $55e9: $40
    rst $30                                       ; $55ea: $f7
    ld [$00ff], sp                                ; $55eb: $08 $ff $00
    rst $38                                       ; $55ee: $ff
    nop                                           ; $55ef: $00
    jr nz, jr_072_55d1                            ; $55f0: $20 $df

    ld bc, $50fe                                  ; $55f2: $01 $fe $50
    xor a                                         ; $55f5: $af
    dec sp                                        ; $55f6: $3b
    call nz, $0af5                                ; $55f7: $c4 $f5 $0a
    ld e, a                                       ; $55fa: $5f

jr_072_55fb:
    and b                                         ; $55fb: $a0
    rst $38                                       ; $55fc: $ff
    nop                                           ; $55fd: $00
    xor e                                         ; $55fe: $ab
    ld d, b                                       ; $55ff: $50
    ret nz                                        ; $5600: $c0

    ld a, a                                       ; $5601: $7f
    ld de, $6aee                                  ; $5602: $11 $ee $6a
    sub l                                         ; $5605: $95
    or b                                          ; $5606: $b0
    ld c, a                                       ; $5607: $4f
    ld e, l                                       ; $5608: $5d
    and d                                         ; $5609: $a2
    rst $38                                       ; $560a: $ff
    nop                                           ; $560b: $00
    rst $38                                       ; $560c: $ff
    nop                                           ; $560d: $00
    xor $10                                       ; $560e: $ee $10
    rlca                                          ; $5610: $07
    nop                                           ; $5611: $00
    ld d, h                                       ; $5612: $54
    dec bc                                        ; $5613: $0b
    adc c                                         ; $5614: $89
    ld d, [hl]                                    ; $5615: $56
    jr nc, jr_072_55e7                            ; $5616: $30 $cf

    ld [bc], a                                    ; $5618: $02
    rst $38                                       ; $5619: $ff
    ld b, b                                       ; $561a: $40
    rst $38                                       ; $561b: $ff
    sbc b                                         ; $561c: $98
    rst $38                                       ; $561d: $ff
    ld b, d                                       ; $561e: $42
    rst $38                                       ; $561f: $ff
    xor $11                                       ; $5620: $ee $11
    db $d3                                        ; $5622: $d3
    inc l                                         ; $5623: $2c
    ld h, d                                       ; $5624: $62
    sbc l                                         ; $5625: $9d
    inc b                                         ; $5626: $04
    ei                                            ; $5627: $fb
    nop                                           ; $5628: $00
    rst $38                                       ; $5629: $ff
    db $10                                        ; $562a: $10
    rst $38                                       ; $562b: $ff
    call z, $81ff                                 ; $562c: $cc $ff $81
    rst $38                                       ; $562f: $ff
    rst $00                                       ; $5630: $c7
    nop                                           ; $5631: $00
    jr z, jr_072_55fb                             ; $5632: $28 $c7

    ld d, c                                       ; $5634: $51
    xor [hl]                                      ; $5635: $ae
    jr nz, @-$1f                                  ; $5636: $20 $df

    ld [bc], a                                    ; $5638: $02
    rst $38                                       ; $5639: $ff
    adc b                                         ; $563a: $88
    rst $38                                       ; $563b: $ff
    ld hl, $8aff                                  ; $563c: $21 $ff $8a
    rst $38                                       ; $563f: $ff
    db $ed                                        ; $5640: $ed
    ld [de], a                                    ; $5641: $12
    db $db                                        ; $5642: $db
    inc h                                         ; $5643: $24
    dec h                                         ; $5644: $25
    jp c, $f708                                   ; $5645: $da $08 $f7

    inc b                                         ; $5648: $04
    rst $38                                       ; $5649: $ff
    ld h, b                                       ; $564a: $60
    rst $38                                       ; $564b: $ff
    ld c, h                                       ; $564c: $4c
    rst $38                                       ; $564d: $ff
    ldh [rIE], a                                  ; $564e: $e0 $ff
    inc c                                         ; $5650: $0c
    rst $38                                       ; $5651: $ff
    ld h, a                                       ; $5652: $67
    rst $38                                       ; $5653: $ff
    reti                                          ; $5654: $d9


    rst $38                                       ; $5655: $ff
    ld a, a                                       ; $5656: $7f
    rst $38                                       ; $5657: $ff
    cp a                                          ; $5658: $bf
    rst $38                                       ; $5659: $ff
    rst $38                                       ; $565a: $ff
    rst $38                                       ; $565b: $ff
    rst $38                                       ; $565c: $ff
    rst $38                                       ; $565d: $ff
    rst $30                                       ; $565e: $f7
    rst $38                                       ; $565f: $ff
    ld [hl], d                                    ; $5660: $72
    rst $38                                       ; $5661: $ff
    or e                                          ; $5662: $b3
    rst $38                                       ; $5663: $ff
    or l                                          ; $5664: $b5
    rst $38                                       ; $5665: $ff
    rst $28                                       ; $5666: $ef
    rst $38                                       ; $5667: $ff
    rst $38                                       ; $5668: $ff
    rst $38                                       ; $5669: $ff
    rst $38                                       ; $566a: $ff
    rst $38                                       ; $566b: $ff
    rst $38                                       ; $566c: $ff
    rst $38                                       ; $566d: $ff
    db $fd                                        ; $566e: $fd
    rst $38                                       ; $566f: $ff
    ld [hl], l                                    ; $5670: $75
    rst $38                                       ; $5671: $ff
    inc hl                                        ; $5672: $23
    rst $38                                       ; $5673: $ff
    push de                                       ; $5674: $d5
    rst $38                                       ; $5675: $ff
    ld a, a                                       ; $5676: $7f
    rst $38                                       ; $5677: $ff
    db $fd                                        ; $5678: $fd
    rst $38                                       ; $5679: $ff
    rst $38                                       ; $567a: $ff
    rst $38                                       ; $567b: $ff
    rst $38                                       ; $567c: $ff
    rst $38                                       ; $567d: $ff
    rst $38                                       ; $567e: $ff
    rst $38                                       ; $567f: $ff
    sub l                                         ; $5680: $95
    rst $38                                       ; $5681: $ff
    cpl                                           ; $5682: $2f
    rst $38                                       ; $5683: $ff
    cp e                                          ; $5684: $bb
    rst $38                                       ; $5685: $ff
    rst $18                                       ; $5686: $df
    rst $38                                       ; $5687: $ff
    rst $38                                       ; $5688: $ff
    rst $38                                       ; $5689: $ff
    rst $38                                       ; $568a: $ff
    rst $38                                       ; $568b: $ff
    rst $38                                       ; $568c: $ff
    rst $38                                       ; $568d: $ff
    db $fd                                        ; $568e: $fd
    rst $38                                       ; $568f: $ff
    cp e                                          ; $5690: $bb
    rst $38                                       ; $5691: $ff
    ld [hl], a                                    ; $5692: $77
    rst $38                                       ; $5693: $ff
    add hl, sp                                    ; $5694: $39
    rst $38                                       ; $5695: $ff
    ld b, b                                       ; $5696: $40
    rst $38                                       ; $5697: $ff
    db $10                                        ; $5698: $10
    rst $38                                       ; $5699: $ff
    adc d                                         ; $569a: $8a
    rst $38                                       ; $569b: $ff
    ldh [rIE], a                                  ; $569c: $e0 $ff
    inc d                                         ; $569e: $14
    rst $38                                       ; $569f: $ff
    rst $28                                       ; $56a0: $ef
    rst $38                                       ; $56a1: $ff
    sub $ff                                       ; $56a2: $d6 $ff
    adc h                                         ; $56a4: $8c
    rst $38                                       ; $56a5: $ff
    ld [$22ff], sp                                ; $56a6: $08 $ff $22
    rst $38                                       ; $56a9: $ff
    ld bc, $58ff                                  ; $56aa: $01 $ff $58
    rst $38                                       ; $56ad: $ff
    nop                                           ; $56ae: $00
    rst $38                                       ; $56af: $ff
    ld a, e                                       ; $56b0: $7b
    rst $38                                       ; $56b1: $ff
    rst $10                                       ; $56b2: $d7
    cp $86                                        ; $56b3: $fe $86
    cp $42                                        ; $56b5: $fe $42
    db $fc                                        ; $56b7: $fc
    ld [$06f0], sp                                ; $56b8: $08 $f0 $06
    db $fc                                        ; $56bb: $fc
    ld b, b                                       ; $56bc: $40
    cp $81                                        ; $56bd: $fe $81
    ld a, [hl]                                    ; $56bf: $7e
    rst $10                                       ; $56c0: $d7
    rst $38                                       ; $56c1: $ff
    ld l, e                                       ; $56c2: $6b
    rst $38                                       ; $56c3: $ff
    inc a                                         ; $56c4: $3c
    rst $38                                       ; $56c5: $ff
    push hl                                       ; $56c6: $e5
    ld a, a                                       ; $56c7: $7f
    jr nz, @+$21                                  ; $56c8: $20 $1f

    sbc c                                         ; $56ca: $99
    ld a, a                                       ; $56cb: $7f
    ld [hl+], a                                   ; $56cc: $22
    rst $38                                       ; $56cd: $ff
    ld bc, $88ff                                  ; $56ce: $01 $ff $88
    ld [hl], a                                    ; $56d1: $77
    dec b                                         ; $56d2: $05
    ld a, [$0ef1]                                 ; $56d3: $fa $f1 $0e
    ld l, a                                       ; $56d6: $6f
    sub b                                         ; $56d7: $90
    push de                                       ; $56d8: $d5
    ld a, [hl+]                                   ; $56d9: $2a
    ld a, a                                       ; $56da: $7f
    nop                                           ; $56db: $00
    ld e, a                                       ; $56dc: $5f
    nop                                           ; $56dd: $00
    ld d, e                                       ; $56de: $53
    inc c                                         ; $56df: $0c
    add h                                         ; $56e0: $84
    ld a, e                                       ; $56e1: $7b
    ld hl, $e8de                                  ; $56e2: $21 $de $e8
    rla                                           ; $56e5: $17
    ld a, a                                       ; $56e6: $7f
    add b                                         ; $56e7: $80
    xor $11                                       ; $56e8: $ee $11
    rst $38                                       ; $56ea: $ff
    nop                                           ; $56eb: $00
    rst $38                                       ; $56ec: $ff
    nop                                           ; $56ed: $00
    ld a, c                                       ; $56ee: $79
    add [hl]                                      ; $56ef: $86
    inc b                                         ; $56f0: $04
    ei                                            ; $56f1: $fb
    ld b, c                                       ; $56f2: $41
    cp [hl]                                       ; $56f3: $be
    ld [hl], a                                    ; $56f4: $77
    adc b                                         ; $56f5: $88
    ld [$bf15], a                                 ; $56f6: $ea $15 $bf
    ld b, b                                       ; $56f9: $40
    rst $38                                       ; $56fa: $ff
    nop                                           ; $56fb: $00
    ld e, a                                       ; $56fc: $5f
    and b                                         ; $56fd: $a0
    xor d                                         ; $56fe: $aa
    ld b, l                                       ; $56ff: $45
    ld b, h                                       ; $5700: $44
    cp e                                          ; $5701: $bb
    xor d                                         ; $5702: $aa
    ld d, l                                       ; $5703: $55
    ld h, c                                       ; $5704: $61
    sbc [hl]                                      ; $5705: $9e
    cp d                                          ; $5706: $ba
    ld b, l                                       ; $5707: $45
    rst $38                                       ; $5708: $ff
    nop                                           ; $5709: $00
    rst $38                                       ; $570a: $ff
    nop                                           ; $570b: $00
    rst $18                                       ; $570c: $df
    jr nz, jr_072_5743                            ; $570d: $20 $34

    ret z                                         ; $570f: $c8

    xor c                                         ; $5710: $a9
    ld d, $25                                     ; $5711: $16 $25
    sbc d                                         ; $5713: $9a
    ld b, b                                       ; $5714: $40
    cp a                                          ; $5715: $bf
    ld [$00ff], sp                                ; $5716: $08 $ff $00
    rst $38                                       ; $5719: $ff
    ld h, e                                       ; $571a: $63
    rst $38                                       ; $571b: $ff
    ld a, [bc]                                    ; $571c: $0a
    rst $38                                       ; $571d: $ff
    ld sp, $a7ff                                  ; $571e: $31 $ff $a7
    ld e, b                                       ; $5721: $58
    adc c                                         ; $5722: $89
    halt                                          ; $5723: $76
    db $10                                        ; $5724: $10
    rst $28                                       ; $5725: $ef
    nop                                           ; $5726: $00
    rst $38                                       ; $5727: $ff
    ld b, d                                       ; $5728: $42
    rst $38                                       ; $5729: $ff
    jr nc, @+$01                                  ; $572a: $30 $ff

    ld b, $ff                                     ; $572c: $06 $ff
    ret                                           ; $572e: $c9


    rst $38                                       ; $572f: $ff
    ld de, $040e                                  ; $5730: $11 $0e $04
    cp e                                          ; $5733: $bb
    ret nz                                        ; $5734: $c0

    ccf                                           ; $5735: $3f
    ld [$21ff], sp                                ; $5736: $08 $ff $21
    rst $38                                       ; $5739: $ff
    add l                                         ; $573a: $85
    rst $38                                       ; $573b: $ff
    dec hl                                        ; $573c: $2b
    rst $38                                       ; $573d: $ff
    sub $ff                                       ; $573e: $d6 $ff
    or [hl]                                       ; $5740: $b6
    ld c, b                                       ; $5741: $48
    sub h                                         ; $5742: $94

jr_072_5743:
    ld l, d                                       ; $5743: $6a
    ld hl, $10de                                  ; $5744: $21 $de $10
    rst $38                                       ; $5747: $ff
    add c                                         ; $5748: $81
    rst $38                                       ; $5749: $ff
    ld [hl-], a                                   ; $574a: $32
    rst $38                                       ; $574b: $ff
    add c                                         ; $574c: $81
    rst $38                                       ; $574d: $ff
    ld d, h                                       ; $574e: $54
    rst $38                                       ; $574f: $ff
    sbc [hl]                                      ; $5750: $9e
    rst $38                                       ; $5751: $ff
    sbc e                                         ; $5752: $9b
    rst $38                                       ; $5753: $ff
    cp $ff                                        ; $5754: $fe $ff
    rst $38                                       ; $5756: $ff
    rst $38                                       ; $5757: $ff
    rst $38                                       ; $5758: $ff
    rst $38                                       ; $5759: $ff
    rst $38                                       ; $575a: $ff
    rst $38                                       ; $575b: $ff
    ld a, a                                       ; $575c: $7f
    rst $38                                       ; $575d: $ff
    cp [hl]                                       ; $575e: $be
    rst $38                                       ; $575f: $ff
    call z, $5dff                                 ; $5760: $cc $ff $5d
    rst $38                                       ; $5763: $ff
    rst $30                                       ; $5764: $f7
    rst $38                                       ; $5765: $ff
    rst $38                                       ; $5766: $ff
    rst $38                                       ; $5767: $ff
    rst $38                                       ; $5768: $ff
    rst $38                                       ; $5769: $ff
    rst $38                                       ; $576a: $ff
    rst $38                                       ; $576b: $ff
    rst $18                                       ; $576c: $df
    rst $38                                       ; $576d: $ff
    rst $30                                       ; $576e: $f7
    rst $38                                       ; $576f: $ff
    adc h                                         ; $5770: $8c
    rst $38                                       ; $5771: $ff
    ld e, e                                       ; $5772: $5b
    rst $38                                       ; $5773: $ff
    db $fd                                        ; $5774: $fd
    rst $38                                       ; $5775: $ff
    rst $18                                       ; $5776: $df
    rst $38                                       ; $5777: $ff
    rst $38                                       ; $5778: $ff
    rst $38                                       ; $5779: $ff
    rst $38                                       ; $577a: $ff
    rst $38                                       ; $577b: $ff
    rst $38                                       ; $577c: $ff
    rst $38                                       ; $577d: $ff
    cp l                                          ; $577e: $bd
    rst $38                                       ; $577f: $ff
    cp l                                          ; $5780: $bd
    rst $38                                       ; $5781: $ff
    cp l                                          ; $5782: $bd
    rst $38                                       ; $5783: $ff
    rst $30                                       ; $5784: $f7
    rst $38                                       ; $5785: $ff
    ei                                            ; $5786: $fb
    rst $38                                       ; $5787: $ff
    rst $38                                       ; $5788: $ff
    rst $38                                       ; $5789: $ff
    rst $38                                       ; $578a: $ff
    rst $38                                       ; $578b: $ff
    rst $18                                       ; $578c: $df
    rst $38                                       ; $578d: $ff
    ld a, e                                       ; $578e: $7b
    rst $38                                       ; $578f: $ff
    ld a, l                                       ; $5790: $7d
    rst $38                                       ; $5791: $ff
    and $ff                                       ; $5792: $e6 $ff
    nop                                           ; $5794: $00
    rst $38                                       ; $5795: $ff
    ld b, b                                       ; $5796: $40
    rst $38                                       ; $5797: $ff
    jr z, @+$01                                   ; $5798: $28 $ff

    add c                                         ; $579a: $81
    rst $38                                       ; $579b: $ff
    ld d, b                                       ; $579c: $50
    rst $38                                       ; $579d: $ff
    ld [hl+], a                                   ; $579e: $22
    db $dd                                        ; $579f: $dd
    ld l, l                                       ; $57a0: $6d
    rst $38                                       ; $57a1: $ff
    ld [hl-], a                                   ; $57a2: $32
    rst $38                                       ; $57a3: $ff
    ld hl, $88ff                                  ; $57a4: $21 $ff $88
    rst $38                                       ; $57a7: $ff
    inc b                                         ; $57a8: $04
    rst $38                                       ; $57a9: $ff
    ld h, c                                       ; $57aa: $61
    rst $38                                       ; $57ab: $ff
    ld [bc], a                                    ; $57ac: $02
    db $fd                                        ; $57ad: $fd
    db $10                                        ; $57ae: $10
    rst $28                                       ; $57af: $ef
    halt                                          ; $57b0: $76

jr_072_57b1:
    db $fd                                        ; $57b1: $fd
    jr jr_072_57b1                                ; $57b2: $18 $fd

    dec b                                         ; $57b4: $05
    ld hl, sp+$10                                 ; $57b5: $f8 $10
    ldh [$15], a                                  ; $57b7: $e0 $15
    ld hl, sp+$00                                 ; $57b9: $f8 $00
    db $fd                                        ; $57bb: $fd
    ld b, $fd                                     ; $57bc: $06 $fd
    ld de, $b7ee                                  ; $57be: $11 $ee $b7
    rst $38                                       ; $57c1: $ff
    ldh a, [rIE]                                  ; $57c2: $f0 $ff
    sub l                                         ; $57c4: $95
    rst $38                                       ; $57c5: $ff
    ld b, b                                       ; $57c6: $40
    ccf                                           ; $57c7: $3f
    ld h, [hl]                                    ; $57c8: $66
    rst $38                                       ; $57c9: $ff
    adc e                                         ; $57ca: $8b
    rst $38                                       ; $57cb: $ff
    inc b                                         ; $57cc: $04
    rst $38                                       ; $57cd: $ff
    ld [de], a                                    ; $57ce: $12
    db $ed                                        ; $57cf: $ed
    inc d                                         ; $57d0: $14
    db $eb                                        ; $57d1: $eb
    db $e3                                        ; $57d2: $e3
    inc e                                         ; $57d3: $1c
    sbc $21                                       ; $57d4: $de $21
    xor e                                         ; $57d6: $ab
    ld d, h                                       ; $57d7: $54
    rst $38                                       ; $57d8: $ff
    nop                                           ; $57d9: $00
    ccf                                           ; $57da: $3f
    add b                                         ; $57db: $80
    and [hl]                                      ; $57dc: $a6
    add hl, de                                    ; $57dd: $19
    rrca                                          ; $57de: $0f
    nop                                           ; $57df: $00
    add l                                         ; $57e0: $85
    ld a, d                                       ; $57e1: $7a
    ret nc                                        ; $57e2: $d0

    cpl                                           ; $57e3: $2f
    rst $38                                       ; $57e4: $ff
    nop                                           ; $57e5: $00
    db $dd                                        ; $57e6: $dd
    ld [hl+], a                                   ; $57e7: $22
    rst $38                                       ; $57e8: $ff
    nop                                           ; $57e9: $00
    cp $01                                        ; $57ea: $fe $01
    di                                            ; $57ec: $f3
    inc c                                         ; $57ed: $0c
    db $dd                                        ; $57ee: $dd
    ld [hl+], a                                   ; $57ef: $22
    ld b, $f9                                     ; $57f0: $06 $f9
    xor $11                                       ; $57f2: $ee $11
    push de                                       ; $57f4: $d5
    ld a, [hl+]                                   ; $57f5: $2a
    ld a, a                                       ; $57f6: $7f
    add b                                         ; $57f7: $80
    rst $38                                       ; $57f8: $ff
    nop                                           ; $57f9: $00
    cp a                                          ; $57fa: $bf
    ld b, b                                       ; $57fb: $40
    ld d, h                                       ; $57fc: $54
    xor e                                         ; $57fd: $ab
    xor a                                         ; $57fe: $af
    db $10                                        ; $57ff: $10
    xor b                                         ; $5800: $a8
    ld d, a                                       ; $5801: $57
    jp Jump_072_743c                              ; $5802: $c3 $3c $74


    adc e                                         ; $5805: $8b
    rst $38                                       ; $5806: $ff
    nop                                           ; $5807: $00
    rst $38                                       ; $5808: $ff
    nop                                           ; $5809: $00
    cp h                                          ; $580a: $bc
    ld b, d                                       ; $580b: $42
    ld h, d                                       ; $580c: $62
    sbc h                                         ; $580d: $9c
    jp c, Jump_000_1620                           ; $580e: $da $20 $16

    ld l, c                                       ; $5811: $69
    add b                                         ; $5812: $80
    ld a, a                                       ; $5813: $7f
    jr nz, @+$01                                  ; $5814: $20 $ff

    ld bc, $8cff                                  ; $5816: $01 $ff $8c
    rst $38                                       ; $5819: $ff
    jr z, @+$01                                   ; $581a: $28 $ff

    rst $00                                       ; $581c: $c7
    rst $38                                       ; $581d: $ff
    ld a, e                                       ; $581e: $7b
    rst $38                                       ; $581f: $ff
    inc h                                         ; $5820: $24
    ret c                                         ; $5821: $d8

    ld b, d                                       ; $5822: $42
    cp h                                          ; $5823: $bc

Jump_072_5824:
    ld bc, $08fe                                  ; $5824: $01 $fe $08
    rst $38                                       ; $5827: $ff
    jp nz, Jump_000_18ff                          ; $5828: $c2 $ff $18

    rst $38                                       ; $582b: $ff
    daa                                           ; $582c: $27
    rst $38                                       ; $582d: $ff
    ld [hl-], a                                   ; $582e: $32
    rst $38                                       ; $582f: $ff
    ld d, d                                       ; $5830: $52
    dec l                                         ; $5831: $2d
    nop                                           ; $5832: $00
    rst $38                                       ; $5833: $ff
    jr nz, @+$01                                  ; $5834: $20 $ff

    add [hl]                                      ; $5836: $86
    rst $38                                       ; $5837: $ff
    inc d                                         ; $5838: $14
    rst $38                                       ; $5839: $ff
    xor [hl]                                      ; $583a: $ae
    rst $38                                       ; $583b: $ff
    ld e, c                                       ; $583c: $59
    rst $38                                       ; $583d: $ff
    ld [hl-], a                                   ; $583e: $32
    rst $38                                       ; $583f: $ff
    ld d, l                                       ; $5840: $55
    xor b                                         ; $5841: $a8
    add c                                         ; $5842: $81
    ld a, h                                       ; $5843: $7c
    ld b, d                                       ; $5844: $42
    db $fd                                        ; $5845: $fd
    inc b                                         ; $5846: $04
    rst $38                                       ; $5847: $ff
    ret                                           ; $5848: $c9


    rst $38                                       ; $5849: $ff
    inc b                                         ; $584a: $04
    rst $38                                       ; $584b: $ff
    ld d, b                                       ; $584c: $50
    rst $38                                       ; $584d: $ff
    or $ff                                        ; $584e: $f6 $ff
    or l                                          ; $5850: $b5
    rst $38                                       ; $5851: $ff
    rst $28                                       ; $5852: $ef
    rst $38                                       ; $5853: $ff
    rst $38                                       ; $5854: $ff
    rst $38                                       ; $5855: $ff
    rst $38                                       ; $5856: $ff
    rst $38                                       ; $5857: $ff
    rst $38                                       ; $5858: $ff
    rst $38                                       ; $5859: $ff
    db $fd                                        ; $585a: $fd
    rst $38                                       ; $585b: $ff
    rst $28                                       ; $585c: $ef
    rst $38                                       ; $585d: $ff
    sub $ff                                       ; $585e: $d6 $ff
    push de                                       ; $5860: $d5
    rst $38                                       ; $5861: $ff
    ld a, a                                       ; $5862: $7f
    rst $38                                       ; $5863: $ff
    db $fd                                        ; $5864: $fd
    rst $38                                       ; $5865: $ff
    rst $38                                       ; $5866: $ff
    rst $38                                       ; $5867: $ff
    rst $38                                       ; $5868: $ff
    rst $38                                       ; $5869: $ff
    rst $38                                       ; $586a: $ff
    rst $38                                       ; $586b: $ff
    ld a, e                                       ; $586c: $7b
    rst $38                                       ; $586d: $ff
    rst $10                                       ; $586e: $d7
    rst $38                                       ; $586f: $ff
    cp e                                          ; $5870: $bb
    rst $38                                       ; $5871: $ff
    rst $18                                       ; $5872: $df
    rst $38                                       ; $5873: $ff
    rst $38                                       ; $5874: $ff
    rst $38                                       ; $5875: $ff

jr_072_5876:
    rst $38                                       ; $5876: $ff
    rst $38                                       ; $5877: $ff
    rst $38                                       ; $5878: $ff
    rst $38                                       ; $5879: $ff
    db $fd                                        ; $587a: $fd
    rst $38                                       ; $587b: $ff
    rst $10                                       ; $587c: $d7
    rst $38                                       ; $587d: $ff
    ld l, a                                       ; $587e: $6f
    ei                                            ; $587f: $fb
    reti                                          ; $5880: $d9


    rst $38                                       ; $5881: $ff
    ld a, a                                       ; $5882: $7f
    rst $38                                       ; $5883: $ff
    cp a                                          ; $5884: $bf
    rst $38                                       ; $5885: $ff
    rst $38                                       ; $5886: $ff
    rst $38                                       ; $5887: $ff
    rst $38                                       ; $5888: $ff
    rst $38                                       ; $5889: $ff
    rst $30                                       ; $588a: $f7
    rst $38                                       ; $588b: $ff
    cp e                                          ; $588c: $bb
    rst $38                                       ; $588d: $ff
    ld [hl], a                                    ; $588e: $77
    rst $38                                       ; $588f: $ff

jr_072_5890:
    sbc b                                         ; $5890: $98
    rst $38                                       ; $5891: $ff
    nop                                           ; $5892: $00
    rst $38                                       ; $5893: $ff
    ld [bc], a                                    ; $5894: $02
    rst $38                                       ; $5895: $ff
    and b                                         ; $5896: $a0
    rst $38                                       ; $5897: $ff
    dec b                                         ; $5898: $05
    rst $38                                       ; $5899: $ff
    ld b, b                                       ; $589a: $40
    rst $38                                       ; $589b: $ff
    adc b                                         ; $589c: $88
    ld [hl], a                                    ; $589d: $77
    ld d, d                                       ; $589e: $52
    xor l                                         ; $589f: $ad
    ret z                                         ; $58a0: $c8

    rst $38                                       ; $58a1: $ff

jr_072_58a2:
    add h                                         ; $58a2: $84
    rst $38                                       ; $58a3: $ff
    jr nz, @+$01                                  ; $58a4: $20 $ff

    db $10                                        ; $58a6: $10
    rst $38                                       ; $58a7: $ff
    add h                                         ; $58a8: $84
    rst $38                                       ; $58a9: $ff
    ld [$40f7], sp                                ; $58aa: $08 $f7 $40
    cp a                                          ; $58ad: $bf
    inc d                                         ; $58ae: $14
    db $eb                                        ; $58af: $eb
    ld h, e                                       ; $58b0: $63
    ei                                            ; $58b1: $fb
    ld a, [de]                                    ; $58b2: $1a
    pop af                                        ; $58b3: $f1
    jr nz, jr_072_5876                            ; $58b4: $20 $c0

    ld c, e                                       ; $58b6: $4b
    pop af                                        ; $58b7: $f1
    ld [bc], a                                    ; $58b8: $02
    ei                                            ; $58b9: $fb
    inc d                                         ; $58ba: $14
    ei                                            ; $58bb: $fb
    ld b, h                                       ; $58bc: $44
    cp e                                          ; $58bd: $bb
    ld a, [de]                                    ; $58be: $1a
    push hl                                       ; $58bf: $e5
    jp $54ff                                      ; $58c0: $c3 $ff $54


    rst $38                                       ; $58c3: $ff
    add c                                         ; $58c4: $81
    ld a, a                                       ; $58c5: $7f
    sbc b                                         ; $58c6: $98
    rst $38                                       ; $58c7: $ff
    ld l, $ff                                     ; $58c8: $2e $ff
    ld de, $48ff                                  ; $58ca: $11 $ff $48
    or a                                          ; $58cd: $b7
    and b                                         ; $58ce: $a0
    ld e, a                                       ; $58cf: $5f
    rst $00                                       ; $58d0: $c7
    jr c, jr_072_5890                             ; $58d1: $38 $bd

    ld b, d                                       ; $58d3: $42
    ld d, a                                       ; $58d4: $57
    xor b                                         ; $58d5: $a8
    rst $38                                       ; $58d6: $ff
    nop                                           ; $58d7: $00
    ld a, a                                       ; $58d8: $7f
    nop                                           ; $58d9: $00
    ld c, l                                       ; $58da: $4d
    ld [hl-], a                                   ; $58db: $32
    rra                                           ; $58dc: $1f
    nop                                           ; $58dd: $00
    ld d, e                                       ; $58de: $53
    inc l                                         ; $58df: $2c
    and c                                         ; $58e0: $a1
    ld e, [hl]                                    ; $58e1: $5e
    rst $38                                       ; $58e2: $ff
    nop                                           ; $58e3: $00
    cp d                                          ; $58e4: $ba
    ld b, l                                       ; $58e5: $45
    rst $38                                       ; $58e6: $ff
    nop                                           ; $58e7: $00
    db $fd                                        ; $58e8: $fd
    ld [bc], a                                    ; $58e9: $02
    and $19                                       ; $58ea: $e6 $19
    cp e                                          ; $58ec: $bb
    ld b, h                                       ; $58ed: $44
    ld c, h                                       ; $58ee: $4c
    or d                                          ; $58ef: $b2
    db $dd                                        ; $58f0: $dd
    ld [hl+], a                                   ; $58f1: $22
    xor d                                         ; $58f2: $aa
    ld d, l                                       ; $58f3: $55
    rst $38                                       ; $58f4: $ff
    nop                                           ; $58f5: $00
    rst $38                                       ; $58f6: $ff
    nop                                           ; $58f7: $00
    ld a, a                                       ; $58f8: $7f
    add b                                         ; $58f9: $80
    xor b                                         ; $58fa: $a8
    ld d, a                                       ; $58fb: $57
    rst $18                                       ; $58fc: $df
    jr nz, jr_072_58a2                            ; $58fd: $20 $a3

    ld e, h                                       ; $58ff: $5c
    add a                                         ; $5900: $87
    ld a, b                                       ; $5901: $78
    jp hl                                         ; $5902: $e9


    ld d, $ff                                     ; $5903: $16 $ff
    nop                                           ; $5905: $00
    rst $38                                       ; $5906: $ff
    nop                                           ; $5907: $00
    ld a, d                                       ; $5908: $7a
    add l                                         ; $5909: $85
    push bc                                       ; $590a: $c5
    jr c, @-$4a                                   ; $590b: $38 $b4

    ld c, b                                       ; $590d: $48
    ld [hl], c                                    ; $590e: $71
    add b                                         ; $590f: $80
    ld bc, $80fe                                  ; $5910: $01 $fe $80
    rst $38                                       ; $5913: $ff
    inc b                                         ; $5914: $04
    rst $38                                       ; $5915: $ff
    inc sp                                        ; $5916: $33
    rst $38                                       ; $5917: $ff
    and b                                         ; $5918: $a0
    rst $38                                       ; $5919: $ff
    inc e                                         ; $591a: $1c
    rst $38                                       ; $591b: $ff
    db $ec                                        ; $591c: $ec
    rst $38                                       ; $591d: $ff
    ld e, l                                       ; $591e: $5d
    rst $38                                       ; $591f: $ff
    ld de, $00e0                                  ; $5920: $11 $e0 $00
    ei                                            ; $5923: $fb
    ld h, $fb                                     ; $5924: $26 $fb
    ld [$62ff], sp                                ; $5926: $08 $ff $62
    rst $38                                       ; $5929: $ff
    sbc l                                         ; $592a: $9d
    rst $38                                       ; $592b: $ff
    ret z                                         ; $592c: $c8

    rst $38                                       ; $592d: $ff
    ld e, e                                       ; $592e: $5b
    rst $38                                       ; $592f: $ff
    ld [bc], a                                    ; $5930: $02
    db $fd                                        ; $5931: $fd
    add c                                         ; $5932: $81
    rst $38                                       ; $5933: $ff
    jr @+$01                                      ; $5934: $18 $ff

    ld d, e                                       ; $5936: $53
    rst $38                                       ; $5937: $ff
    cp b                                          ; $5938: $b8
    rst $38                                       ; $5939: $ff
    ld h, l                                       ; $593a: $65
    rst $38                                       ; $593b: $ff
    set 7, a                                      ; $593c: $cb $ff
    cp l                                          ; $593e: $bd
    rst $38                                       ; $593f: $ff
    dec bc                                        ; $5940: $0b
    ldh a, [rP1]                                  ; $5941: $f0 $00
    ei                                            ; $5943: $fb
    inc d                                         ; $5944: $14
    ei                                            ; $5945: $fb
    ld h, $ff                                     ; $5946: $26 $ff
    db $10                                        ; $5948: $10
    rst $38                                       ; $5949: $ff
    ld b, e                                       ; $594a: $43
    rst $38                                       ; $594b: $ff
    reti                                          ; $594c: $d9


    rst $38                                       ; $594d: $ff
    sbc e                                         ; $594e: $9b
    rst $38                                       ; $594f: $ff
    rst $30                                       ; $5950: $f7
    rst $38                                       ; $5951: $ff
    rst $38                                       ; $5952: $ff
    rst $38                                       ; $5953: $ff
    rst $38                                       ; $5954: $ff
    rst $38                                       ; $5955: $ff
    rst $38                                       ; $5956: $ff
    rst $38                                       ; $5957: $ff
    rst $18                                       ; $5958: $df
    rst $38                                       ; $5959: $ff
    rst $30                                       ; $595a: $f7
    rst $38                                       ; $595b: $ff
    ld l, l                                       ; $595c: $6d
    rst $38                                       ; $595d: $ff
    ld h, e                                       ; $595e: $63
    rst $38                                       ; $595f: $ff
    db $fd                                        ; $5960: $fd
    rst $38                                       ; $5961: $ff
    rst $18                                       ; $5962: $df
    rst $38                                       ; $5963: $ff
    rst $38                                       ; $5964: $ff
    rst $38                                       ; $5965: $ff
    rst $38                                       ; $5966: $ff
    rst $38                                       ; $5967: $ff
    rst $38                                       ; $5968: $ff
    rst $38                                       ; $5969: $ff
    cp l                                          ; $596a: $bd
    rst $38                                       ; $596b: $ff
    halt                                          ; $596c: $76
    rst $38                                       ; $596d: $ff
    ld hl, $f7ff                                  ; $596e: $21 $ff $f7
    rst $38                                       ; $5971: $ff
    ei                                            ; $5972: $fb
    rst $38                                       ; $5973: $ff
    rst $38                                       ; $5974: $ff
    rst $38                                       ; $5975: $ff
    rst $38                                       ; $5976: $ff
    rst $38                                       ; $5977: $ff
    rst $18                                       ; $5978: $df
    rst $38                                       ; $5979: $ff
    ld a, e                                       ; $597a: $7b
    rst $38                                       ; $597b: $ff
    cp a                                          ; $597c: $bf
    rst $30                                       ; $597d: $f7
    add a                                         ; $597e: $87
    rst $30                                       ; $597f: $f7
    cp $ff                                        ; $5980: $fe $ff
    rst $38                                       ; $5982: $ff
    rst $38                                       ; $5983: $ff
    rst $38                                       ; $5984: $ff
    rst $38                                       ; $5985: $ff
    rst $38                                       ; $5986: $ff
    rst $38                                       ; $5987: $ff
    ld a, a                                       ; $5988: $7f

jr_072_5989:
    rst $38                                       ; $5989: $ff
    cp [hl]                                       ; $598a: $be
    rst $38                                       ; $598b: $ff
    ld a, l                                       ; $598c: $7d
    rst $38                                       ; $598d: $ff
    ld c, $ff                                     ; $598e: $0e $ff
    ld [bc], a                                    ; $5990: $02
    rst $38                                       ; $5991: $ff
    ld [$80ff], sp                                ; $5992: $08 $ff $80
    rst $38                                       ; $5995: $ff
    ld d, $ff                                     ; $5996: $16 $ff
    nop                                           ; $5998: $00
    rst $38                                       ; $5999: $ff
    ld hl, $48de                                  ; $599a: $21 $de $48
    or a                                          ; $599d: $b7
    adc a                                         ; $599e: $8f
    ld [hl], b                                    ; $599f: $70
    db $10                                        ; $59a0: $10
    rst $38                                       ; $59a1: $ff
    add b                                         ; $59a2: $80
    rst $38                                       ; $59a3: $ff
    ld b, c                                       ; $59a4: $41
    rst $38                                       ; $59a5: $ff
    db $10                                        ; $59a6: $10
    rst $38                                       ; $59a7: $ff
    jr nz, jr_072_5989                            ; $59a8: $20 $df

    ld bc, $50fe                                  ; $59aa: $01 $fe $50
    xor a                                         ; $59ad: $af
    ld b, e                                       ; $59ae: $43
    cp h                                          ; $59af: $bc
    ld d, l                                       ; $59b0: $55
    db $e3                                        ; $59b1: $e3
    pop bc                                        ; $59b2: $c1
    add b                                         ; $59b3: $80
    ld [hl], $e3                                  ; $59b4: $36 $e3
    nop                                           ; $59b6: $00
    rst $30                                       ; $59b7: $f7
    ld c, b                                       ; $59b8: $48
    rst $30                                       ; $59b9: $f7
    ld de, $6aee                                  ; $59ba: $11 $ee $6a
    sub l                                         ; $59bd: $95
    cp e                                          ; $59be: $bb
    ld b, h                                       ; $59bf: $44
    ld d, b                                       ; $59c0: $50
    rst $38                                       ; $59c1: $ff
    inc b                                         ; $59c2: $04
    rst $38                                       ; $59c3: $ff
    ld h, d                                       ; $59c4: $62
    rst $38                                       ; $59c5: $ff
    cp b                                          ; $59c6: $b8
    rst $38                                       ; $59c7: $ff
    ld b, l                                       ; $59c8: $45
    rst $38                                       ; $59c9: $ff
    ld [hl+], a                                   ; $59ca: $22
    db $dd                                        ; $59cb: $dd
    add c                                         ; $59cc: $81
    ld a, [hl]                                    ; $59cd: $7e
    rrca                                          ; $59ce: $0f
    ldh a, [$7b]                                  ; $59cf: $f0 $7b
    add h                                         ; $59d1: $84
    xor a                                         ; $59d2: $af
    ld d, b                                       ; $59d3: $50
    rst $38                                       ; $59d4: $ff
    nop                                           ; $59d5: $00
    rst $38                                       ; $59d6: $ff
    nop                                           ; $59d7: $00
    sbc e                                         ; $59d8: $9b
    ld h, h                                       ; $59d9: $64
    ccf                                           ; $59da: $3f
    nop                                           ; $59db: $00
    and [hl]                                      ; $59dc: $a6
    ld e, c                                       ; $59dd: $59
    ret c                                         ; $59de: $d8

    daa                                           ; $59df: $27
    rst $38                                       ; $59e0: $ff
    nop                                           ; $59e1: $00
    ld [hl], l                                    ; $59e2: $75
    adc d                                         ; $59e3: $8a
    rst $38                                       ; $59e4: $ff
    nop                                           ; $59e5: $00
    ld a, [$cd05]                                 ; $59e6: $fa $05 $cd
    ld [hl-], a                                   ; $59e9: $32
    ld [hl], a                                    ; $59ea: $77
    adc b                                         ; $59eb: $88
    sbc l                                         ; $59ec: $9d
    ld h, d                                       ; $59ed: $62
    sub b                                         ; $59ee: $90
    ld l, e                                       ; $59ef: $6b
    ld d, l                                       ; $59f0: $55
    xor d                                         ; $59f1: $aa
    rst $38                                       ; $59f2: $ff
    nop                                           ; $59f3: $00
    rst $38                                       ; $59f4: $ff
    nop                                           ; $59f5: $00
    cp $01                                        ; $59f6: $fe $01
    ld d, c                                       ; $59f8: $51
    xor [hl]                                      ; $59f9: $ae
    cp a                                          ; $59fa: $bf
    ld b, b                                       ; $59fb: $40
    ld b, [hl]                                    ; $59fc: $46
    cp c                                          ; $59fd: $b9
    ld c, c                                       ; $59fe: $49

Jump_072_59ff:
    or [hl]                                       ; $59ff: $b6
    db $d3                                        ; $5a00: $d3
    inc l                                         ; $5a01: $2c
    cp $01                                        ; $5a02: $fe $01
    rst $38                                       ; $5a04: $ff
    nop                                           ; $5a05: $00
    db $f4                                        ; $5a06: $f4
    ld a, [bc]                                    ; $5a07: $0a
    adc [hl]                                      ; $5a08: $8e
    ld [hl], b                                    ; $5a09: $70
    ld l, b                                       ; $5a0a: $68
    sub b                                         ; $5a0b: $90
    jp c, Jump_072_6020                           ; $5a0c: $da $20 $60

    add b                                         ; $5a0f: $80
    nop                                           ; $5a10: $00
    rst $38                                       ; $5a11: $ff
    db $10                                        ; $5a12: $10
    rst $38                                       ; $5a13: $ff
    call z, $81ff                                 ; $5a14: $cc $ff $81
    rst $38                                       ; $5a17: $ff
    ld [hl], d                                    ; $5a18: $72
    rst $38                                       ; $5a19: $ff
    or e                                          ; $5a1a: $b3
    rst $38                                       ; $5a1b: $ff
    push de                                       ; $5a1c: $d5
    rst $38                                       ; $5a1d: $ff
    ld a, a                                       ; $5a1e: $7f
    rst $38                                       ; $5a1f: $ff
    ld b, [hl]                                    ; $5a20: $46
    add e                                         ; $5a21: $83
    adc b                                         ; $5a22: $88
    rst $28                                       ; $5a23: $ef
    ld sp, $8aef                                  ; $5a24: $31 $ef $8a
    rst $38                                       ; $5a27: $ff
    ld [hl], l                                    ; $5a28: $75
    rst $38                                       ; $5a29: $ff
    inc hl                                        ; $5a2a: $23
    rst $38                                       ; $5a2b: $ff
    cp e                                          ; $5a2c: $bb
    rst $38                                       ; $5a2d: $ff
    rst $18                                       ; $5a2e: $df
    rst $38                                       ; $5a2f: $ff
    inc b                                         ; $5a30: $04
    rst $38                                       ; $5a31: $ff
    ld h, b                                       ; $5a32: $60
    rst $38                                       ; $5a33: $ff
    ld c, h                                       ; $5a34: $4c
    rst $38                                       ; $5a35: $ff
    ldh [rIE], a                                  ; $5a36: $e0 $ff
    sub l                                         ; $5a38: $95
    rst $38                                       ; $5a39: $ff
    cpl                                           ; $5a3a: $2f
    rst $38                                       ; $5a3b: $ff
    reti                                          ; $5a3c: $d9


    rst $38                                       ; $5a3d: $ff
    ld a, a                                       ; $5a3e: $7f
    rst $38                                       ; $5a3f: $ff
    ld d, $e3                                     ; $5a40: $16 $e3
    ld b, b                                       ; $5a42: $40
    rst $30                                       ; $5a43: $f7
    sbc b                                         ; $5a44: $98
    rst $30                                       ; $5a45: $f7
    ld b, d                                       ; $5a46: $42
    rst $38                                       ; $5a47: $ff
    inc c                                         ; $5a48: $0c
    rst $38                                       ; $5a49: $ff
    ld h, a                                       ; $5a4a: $67
    rst $38                                       ; $5a4b: $ff
    or l                                          ; $5a4c: $b5
    rst $38                                       ; $5a4d: $ff
    rst $28                                       ; $5a4e: $ef
    rst $38                                       ; $5a4f: $ff
    db $fd                                        ; $5a50: $fd
    rst $38                                       ; $5a51: $ff
    rst $38                                       ; $5a52: $ff
    rst $38                                       ; $5a53: $ff
    rst $38                                       ; $5a54: $ff
    rst $38                                       ; $5a55: $ff
    rst $38                                       ; $5a56: $ff
    rst $38                                       ; $5a57: $ff
    ld a, e                                       ; $5a58: $7b
    rst $38                                       ; $5a59: $ff
    rst $10                                       ; $5a5a: $d7
    rst $38                                       ; $5a5b: $ff
    adc h                                         ; $5a5c: $8c
    rst $38                                       ; $5a5d: $ff
    ld [$ffff], sp                                ; $5a5e: $08 $ff $ff
    rst $38                                       ; $5a61: $ff
    rst $38                                       ; $5a62: $ff
    rst $38                                       ; $5a63: $ff
    rst $38                                       ; $5a64: $ff
    rst $38                                       ; $5a65: $ff
    db $fd                                        ; $5a66: $fd
    rst $38                                       ; $5a67: $ff
    rst $10                                       ; $5a68: $d7
    rst $38                                       ; $5a69: $ff
    ld l, e                                       ; $5a6a: $6b
    rst $38                                       ; $5a6b: $ff
    add [hl]                                      ; $5a6c: $86
    rst $38                                       ; $5a6d: $ff
    ld b, c                                       ; $5a6e: $41
    rst $38                                       ; $5a6f: $ff
    cp a                                          ; $5a70: $bf
    rst $38                                       ; $5a71: $ff
    rst $38                                       ; $5a72: $ff
    rst $38                                       ; $5a73: $ff
    rst $38                                       ; $5a74: $ff
    rst $38                                       ; $5a75: $ff
    rst $30                                       ; $5a76: $f7
    rst $38                                       ; $5a77: $ff
    cp e                                          ; $5a78: $bb
    rst $38                                       ; $5a79: $ff
    ld [hl], a                                    ; $5a7a: $77
    rst $28                                       ; $5a7b: $ef
    inc l                                         ; $5a7c: $2c
    rst $28                                       ; $5a7d: $ef
    ld l, l                                       ; $5a7e: $6d
    rst $00                                       ; $5a7f: $c7
    rst $38                                       ; $5a80: $ff
    rst $38                                       ; $5a81: $ff
    rst $38                                       ; $5a82: $ff
    rst $38                                       ; $5a83: $ff
    rst $38                                       ; $5a84: $ff
    rst $38                                       ; $5a85: $ff
    db $fd                                        ; $5a86: $fd
    rst $38                                       ; $5a87: $ff
    rst $28                                       ; $5a88: $ef
    rst $38                                       ; $5a89: $ff
    sub $ff                                       ; $5a8a: $d6 $ff
    add hl, sp                                    ; $5a8c: $39
    rst $38                                       ; $5a8d: $ff
    ld b, b                                       ; $5a8e: $40
    rst $38                                       ; $5a8f: $ff
    ld [hl+], a                                   ; $5a90: $22
    rst $38                                       ; $5a91: $ff
    ld bc, $58ff                                  ; $5a92: $01 $ff $58
    rst $38                                       ; $5a95: $ff
    nop                                           ; $5a96: $00
    rst $38                                       ; $5a97: $ff
    add h                                         ; $5a98: $84
    ld a, e                                       ; $5a99: $7b
    ld hl, $1ede                                  ; $5a9a: $21 $de $1e
    pop hl                                        ; $5a9d: $e1
    rst $30                                       ; $5a9e: $f7
    ld [$ff02], sp                                ; $5a9f: $08 $02 $ff
    inc b                                         ; $5aa2: $04
    rst $38                                       ; $5aa3: $ff
    ld b, b                                       ; $5aa4: $40
    rst $38                                       ; $5aa5: $ff
    add c                                         ; $5aa6: $81
    ld a, a                                       ; $5aa7: $7f
    inc b                                         ; $5aa8: $04
    ei                                            ; $5aa9: $fb
    ld b, c                                       ; $5aaa: $41
    cp [hl]                                       ; $5aab: $be
    add a                                         ; $5aac: $87
    ld a, b                                       ; $5aad: $78
    cp $01                                        ; $5aae: $fe $01
    add d                                         ; $5ab0: $82
    ld bc, $c7a9                                  ; $5ab1: $01 $a9 $c7
    ld [hl+], a                                   ; $5ab4: $22
    rst $28                                       ; $5ab5: $ef
    ld de, $44ef                                  ; $5ab6: $11 $ef $44
    cp e                                          ; $5ab9: $bb
    xor d                                         ; $5aba: $aa
    ld d, l                                       ; $5abb: $55
    halt                                          ; $5abc: $76
    adc c                                         ; $5abd: $89
    xor e                                         ; $5abe: $ab

jr_072_5abf:
    ld d, h                                       ; $5abf: $54

jr_072_5ac0:
    db $10                                        ; $5ac0: $10
    rst $38                                       ; $5ac1: $ff
    adc d                                         ; $5ac2: $8a
    rst $38                                       ; $5ac3: $ff
    ldh [rIE], a                                  ; $5ac4: $e0 $ff
    inc d                                         ; $5ac6: $14
    rst $38                                       ; $5ac7: $ff
    adc b                                         ; $5ac8: $88
    ld [hl], a                                    ; $5ac9: $77
    dec b                                         ; $5aca: $05
    ld a, [$e01f]                                 ; $5acb: $fa $1f $e0
    and [hl]                                      ; $5ace: $a6
    ld e, c                                       ; $5acf: $59
    ld e, [hl]                                    ; $5ad0: $5e
    and c                                         ; $5ad1: $a1
    rst $38                                       ; $5ad2: $ff
    nop                                           ; $5ad3: $00
    rst $38                                       ; $5ad4: $ff
    nop                                           ; $5ad5: $00
    scf                                           ; $5ad6: $37
    ret z                                         ; $5ad7: $c8

    ld a, [hl]                                    ; $5ad8: $7e
    ld bc, $b24d                                  ; $5ad9: $01 $4d $b2
    ld h, d                                       ; $5adc: $62
    sbc l                                         ; $5add: $9d
    inc b                                         ; $5ade: $04
    ei                                            ; $5adf: $fb
    db $eb                                        ; $5ae0: $eb
    inc d                                         ; $5ae1: $14
    rst $38                                       ; $5ae2: $ff
    nop                                           ; $5ae3: $00
    push af                                       ; $5ae4: $f5
    ld a, [bc]                                    ; $5ae5: $0a
    sbc d                                         ; $5ae6: $9a
    ld h, l                                       ; $5ae7: $65
    rst $28                                       ; $5ae8: $ef
    db $10                                        ; $5ae9: $10
    ld [hl-], a                                   ; $5aea: $32
    call $ae51                                    ; $5aeb: $cd $51 $ae
    jr nz, jr_072_5abf                            ; $5aee: $20 $cf

    rst $38                                       ; $5af0: $ff
    nop                                           ; $5af1: $00
    rst $38                                       ; $5af2: $ff
    nop                                           ; $5af3: $00
    db $fd                                        ; $5af4: $fd
    ld [bc], a                                    ; $5af5: $02
    and e                                         ; $5af6: $a3
    ld e, h                                       ; $5af7: $5c
    ld a, [hl]                                    ; $5af8: $7e
    add c                                         ; $5af9: $81
    adc l                                         ; $5afa: $8d

Jump_072_5afb:
    ld [hl], d                                    ; $5afb: $72
    dec h                                         ; $5afc: $25
    jp c, $f708                                   ; $5afd: $da $08 $f7

    db $fd                                        ; $5b00: $fd
    ld [bc], a                                    ; $5b01: $02
    rst $38                                       ; $5b02: $ff
    nop                                           ; $5b03: $00
    jp hl                                         ; $5b04: $e9


    inc d                                         ; $5b05: $14
    dec e                                         ; $5b06: $1d
    ldh [$d0], a                                  ; $5b07: $e0 $d0

jr_072_5b09:
    jr nz, jr_072_5ac0                            ; $5b09: $20 $b5

    ld b, b                                       ; $5b0b: $40
    dec d                                         ; $5b0c: $15
    ldh [rSCX], a                                 ; $5b0d: $e0 $43
    add b                                         ; $5b0f: $80
    ld b, e                                       ; $5b10: $43
    cp $30                                        ; $5b11: $fe $30
    rst $38                                       ; $5b13: $ff
    ld b, $ff                                     ; $5b14: $06 $ff
    ret                                           ; $5b16: $c9


    rst $38                                       ; $5b17: $ff
    call z, Call_072_5bff                         ; $5b18: $cc $ff $5b
    rst $38                                       ; $5b1b: $ff
    db $fd                                        ; $5b1c: $fd
    rst $38                                       ; $5b1d: $ff
    rst $18                                       ; $5b1e: $df
    rst $38                                       ; $5b1f: $ff
    ld de, $850f                                  ; $5b20: $11 $0f $85
    cp a                                          ; $5b23: $bf
    ld l, e                                       ; $5b24: $6b
    cp a                                          ; $5b25: $bf
    sub $ff                                       ; $5b26: $d6 $ff
    adc h                                         ; $5b28: $8c
    rst $38                                       ; $5b29: $ff
    cp l                                          ; $5b2a: $bd
    rst $38                                       ; $5b2b: $ff
    rst $30                                       ; $5b2c: $f7
    rst $38                                       ; $5b2d: $ff
    ei                                            ; $5b2e: $fb
    rst $38                                       ; $5b2f: $ff
    add c                                         ; $5b30: $81
    rst $38                                       ; $5b31: $ff
    ld [hl-], a                                   ; $5b32: $32
    rst $38                                       ; $5b33: $ff
    add c                                         ; $5b34: $81
    rst $38                                       ; $5b35: $ff
    ld d, h                                       ; $5b36: $54
    rst $38                                       ; $5b37: $ff
    cp l                                          ; $5b38: $bd
    rst $38                                       ; $5b39: $ff
    sbc e                                         ; $5b3a: $9b
    rst $38                                       ; $5b3b: $ff
    cp $ff                                        ; $5b3c: $fe $ff
    rst $38                                       ; $5b3e: $ff
    rst $38                                       ; $5b3f: $ff
    jr z, jr_072_5b09                             ; $5b40: $28 $c7

    ld h, e                                       ; $5b42: $63
    rst $28                                       ; $5b43: $ef
    ld a, [de]                                    ; $5b44: $1a
    rst $28                                       ; $5b45: $ef
    ld sp, $9eff                                  ; $5b46: $31 $ff $9e
    rst $38                                       ; $5b49: $ff
    ld e, l                                       ; $5b4a: $5d
    rst $38                                       ; $5b4b: $ff
    rst $30                                       ; $5b4c: $f7
    rst $38                                       ; $5b4d: $ff
    rst $38                                       ; $5b4e: $ff
    rst $38                                       ; $5b4f: $ff
    rst $38                                       ; $5b50: $ff
    rst $38                                       ; $5b51: $ff
    rst $38                                       ; $5b52: $ff
    rst $38                                       ; $5b53: $ff
    rst $38                                       ; $5b54: $ff
    rst $38                                       ; $5b55: $ff
    cp l                                          ; $5b56: $bd
    rst $38                                       ; $5b57: $ff
    halt                                          ; $5b58: $76
    rst $38                                       ; $5b59: $ff
    ld [hl-], a                                   ; $5b5a: $32
    rst $38                                       ; $5b5b: $ff
    ld hl, $88ff                                  ; $5b5c: $21 $ff $88
    rst $38                                       ; $5b5f: $ff
    rst $38                                       ; $5b60: $ff
    rst $38                                       ; $5b61: $ff
    rst $38                                       ; $5b62: $ff
    rst $38                                       ; $5b63: $ff
    rst $18                                       ; $5b64: $df
    rst $38                                       ; $5b65: $ff
    ld a, e                                       ; $5b66: $7b
    rst $38                                       ; $5b67: $ff
    or a                                          ; $5b68: $b7
    rst $38                                       ; $5b69: $ff
    jr @+$01                                      ; $5b6a: $18 $ff

    dec b                                         ; $5b6c: $05
    rst $38                                       ; $5b6d: $ff
    add hl, bc                                    ; $5b6e: $09
    cp $ff                                        ; $5b6f: $fe $ff
    rst $38                                       ; $5b71: $ff
    rst $38                                       ; $5b72: $ff
    rst $38                                       ; $5b73: $ff
    ld a, a                                       ; $5b74: $7f
    rst $38                                       ; $5b75: $ff
    cp [hl]                                       ; $5b76: $be
    rst $38                                       ; $5b77: $ff
    ld a, l                                       ; $5b78: $7d
    rst $18                                       ; $5b79: $df
    ret nc                                        ; $5b7a: $d0

    rst $18                                       ; $5b7b: $df
    push de                                       ; $5b7c: $d5
    adc a                                         ; $5b7d: $8f
    inc b                                         ; $5b7e: $04
    inc bc                                        ; $5b7f: $03
    rst $38                                       ; $5b80: $ff
    rst $38                                       ; $5b81: $ff
    rst $38                                       ; $5b82: $ff
    rst $38                                       ; $5b83: $ff
    rst $18                                       ; $5b84: $df
    rst $38                                       ; $5b85: $ff
    rst $30                                       ; $5b86: $f7
    rst $38                                       ; $5b87: $ff
    ld l, l                                       ; $5b88: $6d
    rst $38                                       ; $5b89: $ff
    and $ff                                       ; $5b8a: $e6 $ff
    nop                                           ; $5b8c: $00
    rst $38                                       ; $5b8d: $ff
    ld b, b                                       ; $5b8e: $40
    rst $38                                       ; $5b8f: $ff
    inc b                                         ; $5b90: $04
    rst $38                                       ; $5b91: $ff
    ld h, c                                       ; $5b92: $61
    rst $38                                       ; $5b93: $ff
    ld [bc], a                                    ; $5b94: $02
    db $fd                                        ; $5b95: $fd
    db $10                                        ; $5b96: $10
    rst $28                                       ; $5b97: $ef
    add l                                         ; $5b98: $85
    ld a, d                                       ; $5b99: $7a
    dec a                                         ; $5b9a: $3d
    jp nz, Jump_000_10ef                          ; $5b9b: $c2 $ef $10

    cp l                                          ; $5b9e: $bd
    ld b, d                                       ; $5b9f: $42
    ld [de], a                                    ; $5ba0: $12
    rst $38                                       ; $5ba1: $ff
    nop                                           ; $5ba2: $00
    rst $38                                       ; $5ba3: $ff
    inc b                                         ; $5ba4: $04
    rst $38                                       ; $5ba5: $ff
    ld de, $06ee                                  ; $5ba6: $11 $ee $06
    ld sp, hl                                     ; $5ba9: $f9
    ld c, $f1                                     ; $5baa: $0e $f1
    db $fd                                        ; $5bac: $fd
    ld [bc], a                                    ; $5bad: $02
    rst $10                                       ; $5bae: $d7
    jr z, jr_072_5c07                             ; $5baf: $28 $56

    adc a                                         ; $5bb1: $8f
    adc e                                         ; $5bb2: $8b
    rst $18                                       ; $5bb3: $df
    inc h                                         ; $5bb4: $24
    rst $18                                       ; $5bb5: $df
    ld [de], a                                    ; $5bb6: $12
    db $ed                                        ; $5bb7: $ed
    xor b                                         ; $5bb8: $a8
    ld d, a                                       ; $5bb9: $57
    db $ec                                        ; $5bba: $ec
    inc de                                        ; $5bbb: $13
    ld d, a                                       ; $5bbc: $57
    xor b                                         ; $5bbd: $a8
    rst $38                                       ; $5bbe: $ff
    nop                                           ; $5bbf: $00
    jr z, @+$01                                   ; $5bc0: $28 $ff

    add c                                         ; $5bc2: $81
    rst $38                                       ; $5bc3: $ff
    ld d, b                                       ; $5bc4: $50
    rst $38                                       ; $5bc5: $ff
    ld [hl+], a                                   ; $5bc6: $22
    db $dd                                        ; $5bc7: $dd
    inc d                                         ; $5bc8: $14
    db $eb                                        ; $5bc9: $eb
    ld a, $c1                                     ; $5bca: $3e $c1
    ld c, l                                       ; $5bcc: $4d
    or d                                          ; $5bcd: $b2
    ld a, [$ff05]                                 ; $5bce: $fa $05 $ff
    nop                                           ; $5bd1: $00
    rst $38                                       ; $5bd2: $ff
    nop                                           ; $5bd3: $00
    ld l, a                                       ; $5bd4: $6f
    sub b                                         ; $5bd5: $90
    db $fd                                        ; $5bd6: $fd
    ld [bc], a                                    ; $5bd7: $02
    sbc d                                         ; $5bd8: $9a
    ld h, l                                       ; $5bd9: $65
    adc c                                         ; $5bda: $89
    halt                                          ; $5bdb: $76
    db $10                                        ; $5bdc: $10

jr_072_5bdd:
    rst $28                                       ; $5bdd: $ef
    nop                                           ; $5bde: $00
    rst $38                                       ; $5bdf: $ff
    rst $38                                       ; $5be0: $ff
    nop                                           ; $5be1: $00
    db $eb                                        ; $5be2: $eb
    inc d                                         ; $5be3: $14
    dec [hl]                                      ; $5be4: $35
    jp z, $21de                                   ; $5be5: $ca $de $21

    ld h, l                                       ; $5be8: $65
    sbc d                                         ; $5be9: $9a
    inc b                                         ; $5bea: $04
    ei                                            ; $5beb: $fb
    ret nz                                        ; $5bec: $c0

    ccf                                           ; $5bed: $3f
    ld [$ffbf], sp                                ; $5bee: $08 $bf $ff
    nop                                           ; $5bf1: $00
    ei                                            ; $5bf2: $fb
    inc b                                         ; $5bf3: $04
    ld b, [hl]                                    ; $5bf4: $46
    cp c                                          ; $5bf5: $b9
    db $fd                                        ; $5bf6: $fd
    ld [bc], a                                    ; $5bf7: $02
    dec de                                        ; $5bf8: $1b
    db $e4                                        ; $5bf9: $e4
    sub h                                         ; $5bfa: $94
    ld l, e                                       ; $5bfb: $6b
    jr nz, jr_072_5bdd                            ; $5bfc: $20 $df

    db $10                                        ; $5bfe: $10

Call_072_5bff:
    rst $38                                       ; $5bff: $ff

Jump_072_5c00:
    rst $38                                       ; $5c00: $ff
    nop                                           ; $5c01: $00
    db $d3                                        ; $5c02: $d3
    jr z, jr_072_5c3f                             ; $5c03: $28 $3a

    pop bc                                        ; $5c05: $c1
    and b                                         ; $5c06: $a0

jr_072_5c07:
    ld b, b                                       ; $5c07: $40
    ld a, d                                       ; $5c08: $7a
    add c                                         ; $5c09: $81
    ld hl, $6cca                                  ; $5c0a: $21 $ca $6c
    add e                                         ; $5c0d: $83
    add d                                         ; $5c0e: $82
    ld bc, $f8c4                                  ; $5c0f: $01 $c4 $f8

jr_072_5c12:
    jr jr_072_5c12                                ; $5c12: $18 $fe

    daa                                           ; $5c14: $27
    cp $32                                        ; $5c15: $fe $32
    rst $38                                       ; $5c17: $ff
    cp e                                          ; $5c18: $bb
    rst $38                                       ; $5c19: $ff
    rst $18                                       ; $5c1a: $df
    rst $38                                       ; $5c1b: $ff
    rst $38                                       ; $5c1c: $ff
    rst $38                                       ; $5c1d: $ff
    rst $38                                       ; $5c1e: $ff
    rst $38                                       ; $5c1f: $ff
    ld d, h                                       ; $5c20: $54
    ccf                                           ; $5c21: $3f
    xor [hl]                                      ; $5c22: $ae
    rst $38                                       ; $5c23: $ff
    ld e, c                                       ; $5c24: $59
    rst $38                                       ; $5c25: $ff
    ld [hl-], a                                   ; $5c26: $32
    rst $38                                       ; $5c27: $ff
    reti                                          ; $5c28: $d9


    rst $38                                       ; $5c29: $ff
    ld a, a                                       ; $5c2a: $7f
    rst $38                                       ; $5c2b: $ff
    cp a                                          ; $5c2c: $bf
    rst $38                                       ; $5c2d: $ff
    rst $38                                       ; $5c2e: $ff
    rst $38                                       ; $5c2f: $ff
    ret                                           ; $5c30: $c9


    rst $38                                       ; $5c31: $ff
    inc b                                         ; $5c32: $04
    rst $38                                       ; $5c33: $ff
    ld d, b                                       ; $5c34: $50
    rst $38                                       ; $5c35: $ff
    or $ff                                        ; $5c36: $f6 $ff
    or l                                          ; $5c38: $b5
    rst $38                                       ; $5c39: $ff
    rst $28                                       ; $5c3a: $ef
    rst $38                                       ; $5c3b: $ff
    rst $38                                       ; $5c3c: $ff
    rst $38                                       ; $5c3d: $ff
    rst $38                                       ; $5c3e: $ff

jr_072_5c3f:
    rst $38                                       ; $5c3f: $ff
    call c, $088f                                 ; $5c40: $dc $8f $08
    rst $18                                       ; $5c43: $df
    rst $20                                       ; $5c44: $e7
    rst $18                                       ; $5c45: $df
    ld a, e                                       ; $5c46: $7b
    rst $38                                       ; $5c47: $ff
    push de                                       ; $5c48: $d5
    rst $38                                       ; $5c49: $ff
    ld a, a                                       ; $5c4a: $7f
    rst $38                                       ; $5c4b: $ff
    db $fd                                        ; $5c4c: $fd
    rst $38                                       ; $5c4d: $ff
    rst $38                                       ; $5c4e: $ff
    rst $38                                       ; $5c4f: $ff
    rst $38                                       ; $5c50: $ff
    rst $38                                       ; $5c51: $ff
    db $fd                                        ; $5c52: $fd
    rst $38                                       ; $5c53: $ff
    rst $10                                       ; $5c54: $d7
    rst $38                                       ; $5c55: $ff
    ld l, e                                       ; $5c56: $6b
    rst $38                                       ; $5c57: $ff
    ret z                                         ; $5c58: $c8

    rst $38                                       ; $5c59: $ff
    add h                                         ; $5c5a: $84
    rst $38                                       ; $5c5b: $ff
    jr nz, @+$01                                  ; $5c5c: $20 $ff

    db $10                                        ; $5c5e: $10
    rst $38                                       ; $5c5f: $ff
    rst $38                                       ; $5c60: $ff
    rst $38                                       ; $5c61: $ff
    rst $30                                       ; $5c62: $f7
    rst $38                                       ; $5c63: $ff
    cp e                                          ; $5c64: $bb
    rst $38                                       ; $5c65: $ff
    ld [hl], a                                    ; $5c66: $77
    rst $38                                       ; $5c67: $ff
    ld h, e                                       ; $5c68: $63
    rst $38                                       ; $5c69: $ff
    ld d, $ff                                     ; $5c6a: $16 $ff
    ld [hl+], a                                   ; $5c6c: $22
    db $fc                                        ; $5c6d: $fc
    ld c, c                                       ; $5c6e: $49
    rst $38                                       ; $5c6f: $ff
    rst $38                                       ; $5c70: $ff
    rst $38                                       ; $5c71: $ff
    db $fd                                        ; $5c72: $fd
    rst $38                                       ; $5c73: $ff
    rst $28                                       ; $5c74: $ef
    rst $38                                       ; $5c75: $ff
    sub $bf                                       ; $5c76: $d6 $bf
    add e                                         ; $5c78: $83
    cp a                                          ; $5c79: $bf
    or h                                          ; $5c7a: $b4
    rra                                           ; $5c7b: $1f
    add hl, bc                                    ; $5c7c: $09
    rlca                                          ; $5c7d: $07
    cp b                                          ; $5c7e: $b8
    rra                                           ; $5c7f: $1f
    rst $38                                       ; $5c80: $ff
    rst $38                                       ; $5c81: $ff
    rst $38                                       ; $5c82: $ff
    rst $38                                       ; $5c83: $ff
    ld a, e                                       ; $5c84: $7b
    rst $38                                       ; $5c85: $ff
    rst $10                                       ; $5c86: $d7
    rst $38                                       ; $5c87: $ff
    sbc b                                         ; $5c88: $98
    rst $38                                       ; $5c89: $ff
    nop                                           ; $5c8a: $00
    rst $38                                       ; $5c8b: $ff
    ld [bc], a                                    ; $5c8c: $02
    rst $38                                       ; $5c8d: $ff
    and b                                         ; $5c8e: $a0
    rst $38                                       ; $5c8f: $ff
    add h                                         ; $5c90: $84
    rst $38                                       ; $5c91: $ff
    ld [$40f7], sp                                ; $5c92: $08 $f7 $40
    cp a                                          ; $5c95: $bf
    inc d                                         ; $5c96: $14
    db $eb                                        ; $5c97: $eb
    ld a, d                                       ; $5c98: $7a
    add l                                         ; $5c99: $85
    rst $18                                       ; $5c9a: $df
    jr nz, jr_072_5d18                            ; $5c9b: $20 $7b

    add h                                         ; $5c9d: $84
    rst $38                                       ; $5c9e: $ff
    nop                                           ; $5c9f: $00
    ld [bc], a                                    ; $5ca0: $02
    rst $38                                       ; $5ca1: $ff
    db $10                                        ; $5ca2: $10
    rst $38                                       ; $5ca3: $ff
    ld b, h                                       ; $5ca4: $44
    cp e                                          ; $5ca5: $bb
    ld a, [de]                                    ; $5ca6: $1a
    push hl                                       ; $5ca7: $e5
    dec e                                         ; $5ca8: $1d
    ld [c], a                                     ; $5ca9: $e2
    ld a, [$af05]                                 ; $5caa: $fa $05 $af
    ld d, b                                       ; $5cad: $50
    rst $38                                       ; $5cae: $ff
    nop                                           ; $5caf: $00
    ld l, $bf                                     ; $5cb0: $2e $bf
    ld d, c                                       ; $5cb2: $51
    cp a                                          ; $5cb3: $bf
    ld c, b                                       ; $5cb4: $48
    or a                                          ; $5cb5: $b7
    and b                                         ; $5cb6: $a0
    ld e, a                                       ; $5cb7: $5f
    ret c                                         ; $5cb8: $d8

    daa                                           ; $5cb9: $27
    xor [hl]                                      ; $5cba: $ae
    ld d, c                                       ; $5cbb: $51
    rst $38                                       ; $5cbc: $ff
    nop                                           ; $5cbd: $00
    rst $38                                       ; $5cbe: $ff
    nop                                           ; $5cbf: $00
    dec b                                         ; $5cc0: $05
    rst $38                                       ; $5cc1: $ff
    ld b, b                                       ; $5cc2: $40
    rst $38                                       ; $5cc3: $ff
    adc b                                         ; $5cc4: $88
    ld [hl], a                                    ; $5cc5: $77
    ld d, d                                       ; $5cc6: $52
    xor l                                         ; $5cc7: $ad
    ld a, h                                       ; $5cc8: $7c
    add e                                         ; $5cc9: $83
    sbc e                                         ; $5cca: $9b
    ld h, h                                       ; $5ccb: $64
    push af                                       ; $5ccc: $f5
    ld a, [bc]                                    ; $5ccd: $0a
    rst $38                                       ; $5cce: $ff
    nop                                           ; $5ccf: $00
    rst $38                                       ; $5cd0: $ff
    nop                                           ; $5cd1: $00
    sbc $21                                       ; $5cd2: $de $21
    ei                                            ; $5cd4: $fb
    inc b                                         ; $5cd5: $04
    inc [hl]                                      ; $5cd6: $34
    sla h                                         ; $5cd7: $cb $24
    db $db                                        ; $5cd9: $db
    ld b, d                                       ; $5cda: $42
    cp l                                          ; $5cdb: $bd
    ld bc, $08fe                                  ; $5cdc: $01 $fe $08
    cp $d7                                        ; $5cdf: $fe $d7
    jr z, jr_072_5d4d                             ; $5ce1: $28 $6a

    sub l                                         ; $5ce3: $95
    cp l                                          ; $5ce4: $bd
    ld b, d                                       ; $5ce5: $42
    jp z, Jump_000_1235                           ; $5ce6: $ca $35 $12

    db $ed                                        ; $5ce9: $ed
    nop                                           ; $5cea: $00
    rst $38                                       ; $5ceb: $ff
    jr nz, @+$01                                  ; $5cec: $20 $ff

    add [hl]                                      ; $5cee: $86
    rst $38                                       ; $5cef: $ff
    rst $30                                       ; $5cf0: $f7
    ld [$738c], sp                                ; $5cf1: $08 $8c $73
    ei                                            ; $5cf4: $fb
    inc b                                         ; $5cf5: $04
    ld [hl], $c9                                  ; $5cf6: $36 $c9
    ld d, b                                       ; $5cf8: $50
    xor a                                         ; $5cf9: $af
    add c                                         ; $5cfa: $81
    ld a, [hl]                                    ; $5cfb: $7e
    ld b, b                                       ; $5cfc: $40
    rst $38                                       ; $5cfd: $ff
    dec b                                         ; $5cfe: $05
    cp $a7                                        ; $5cff: $fe $a7
    ld d, b                                       ; $5d01: $50
    ld [hl], h                                    ; $5d02: $74
    add e                                         ; $5d03: $83
    ld b, c                                       ; $5d04: $41
    add b                                         ; $5d05: $80
    push de                                       ; $5d06: $d5
    ld [hl+], a                                   ; $5d07: $22
    or [hl]                                       ; $5d08: $b6
    ld b, c                                       ; $5d09: $41
    ld [$50d7], sp                                ; $5d0a: $08 $d7 $50
    adc a                                         ; $5d0d: $8f
    dec b                                         ; $5d0e: $05
    inc bc                                        ; $5d0f: $03
    ld [hl], c                                    ; $5d10: $71
    ldh [$99], a                                  ; $5d11: $e0 $99
    ei                                            ; $5d13: $fb
    call z, $bdfb                                 ; $5d14: $cc $fb $bd
    rst $38                                       ; $5d17: $ff

jr_072_5d18:
    rst $30                                       ; $5d18: $f7
    rst $38                                       ; $5d19: $ff
    ei                                            ; $5d1a: $fb
    rst $38                                       ; $5d1b: $ff
    rst $38                                       ; $5d1c: $ff
    rst $38                                       ; $5d1d: $ff
    rst $38                                       ; $5d1e: $ff
    rst $38                                       ; $5d1f: $ff
    cp b                                          ; $5d20: $b8
    rst $38                                       ; $5d21: $ff
    ld h, l                                       ; $5d22: $65
    rst $38                                       ; $5d23: $ff
    set 7, a                                      ; $5d24: $cb $ff
    sbc e                                         ; $5d26: $9b
    rst $38                                       ; $5d27: $ff
    cp $ff                                        ; $5d28: $fe $ff
    rst $38                                       ; $5d2a: $ff
    rst $38                                       ; $5d2b: $ff
    rst $38                                       ; $5d2c: $ff
    rst $38                                       ; $5d2d: $ff
    rst $38                                       ; $5d2e: $ff
    rst $38                                       ; $5d2f: $ff
    db $10                                        ; $5d30: $10
    rst $38                                       ; $5d31: $ff
    ld b, e                                       ; $5d32: $43
    rst $38                                       ; $5d33: $ff
    reti                                          ; $5d34: $d9


    rst $38                                       ; $5d35: $ff
    ld e, l                                       ; $5d36: $5d
    rst $38                                       ; $5d37: $ff
    rst $30                                       ; $5d38: $f7
    rst $38                                       ; $5d39: $ff
    rst $38                                       ; $5d3a: $ff
    rst $38                                       ; $5d3b: $ff
    rst $38                                       ; $5d3c: $ff
    rst $38                                       ; $5d3d: $ff
    rst $38                                       ; $5d3e: $ff
    rst $38                                       ; $5d3f: $ff
    and b                                         ; $5d40: $a0
    rra                                           ; $5d41: $1f
    inc e                                         ; $5d42: $1c
    cp a                                          ; $5d43: $bf
    db $ec                                        ; $5d44: $ec
    cp a                                          ; $5d45: $bf
    ld e, e                                       ; $5d46: $5b
    rst $38                                       ; $5d47: $ff
    db $fd                                        ; $5d48: $fd
    rst $38                                       ; $5d49: $ff
    rst $18                                       ; $5d4a: $df
    rst $38                                       ; $5d4b: $ff
    rst $38                                       ; $5d4c: $ff

jr_072_5d4d:
    rst $38                                       ; $5d4d: $ff
    rst $38                                       ; $5d4e: $ff
    rst $38                                       ; $5d4f: $ff
    rst $18                                       ; $5d50: $df
    rst $38                                       ; $5d51: $ff
    ld a, e                                       ; $5d52: $7b
    rst $38                                       ; $5d53: $ff
    or a                                          ; $5d54: $b7
    rst $38                                       ; $5d55: $ff
    ld hl, $10ff                                  ; $5d56: $21 $ff $10
    rst $38                                       ; $5d59: $ff
    add b                                         ; $5d5a: $80
    rst $38                                       ; $5d5b: $ff
    ld b, c                                       ; $5d5c: $41
    rst $38                                       ; $5d5d: $ff
    db $10                                        ; $5d5e: $10
    rst $38                                       ; $5d5f: $ff
    ld a, a                                       ; $5d60: $7f
    rst $38                                       ; $5d61: $ff
    cp [hl]                                       ; $5d62: $be
    rst $38                                       ; $5d63: $ff
    ld a, l                                       ; $5d64: $7d
    rst $38                                       ; $5d65: $ff
    adc a                                         ; $5d66: $8f
    rst $38                                       ; $5d67: $ff
    ld e, c                                       ; $5d68: $59
    cp $8c                                        ; $5d69: $fe $8c
    ld hl, sp+$27                                 ; $5d6b: $f8 $27
    cp $08                                        ; $5d6d: $fe $08
    rst $38                                       ; $5d6f: $ff
    rst $18                                       ; $5d70: $df

jr_072_5d71:
    rst $38                                       ; $5d71: $ff
    rst $30                                       ; $5d72: $f7
    rst $38                                       ; $5d73: $ff
    db $ed                                        ; $5d74: $ed
    ld a, a                                       ; $5d75: $7f
    ld c, $7f                                     ; $5d76: $0e $7f
    ld d, b                                       ; $5d78: $50
    ccf                                           ; $5d79: $3f
    inc d                                         ; $5d7a: $14
    rrca                                          ; $5d7b: $0f
    ld h, d                                       ; $5d7c: $62
    ccf                                           ; $5d7d: $3f
    jr c, @+$81                                   ; $5d7e: $38 $7f

    rst $38                                       ; $5d80: $ff
    rst $38                                       ; $5d81: $ff
    cp l                                          ; $5d82: $bd
    rst $38                                       ; $5d83: $ff
    halt                                          ; $5d84: $76
    rst $38                                       ; $5d85: $ff
    ld h, e                                       ; $5d86: $63
    rst $38                                       ; $5d87: $ff
    ld [bc], a                                    ; $5d88: $02
    rst $38                                       ; $5d89: $ff
    ld [$80ff], sp                                ; $5d8a: $08 $ff $80
    rst $38                                       ; $5d8d: $ff
    ld d, $ff                                     ; $5d8e: $16 $ff
    jr nz, jr_072_5d71                            ; $5d90: $20 $df

    ld bc, $50fe                                  ; $5d92: $01 $fe $50
    xor a                                         ; $5d95: $af
    db $f4                                        ; $5d96: $f4
    dec bc                                        ; $5d97: $0b
    cp a                                          ; $5d98: $bf
    ld b, b                                       ; $5d99: $40
    rst $30                                       ; $5d9a: $f7
    ld [$00ff], sp                                ; $5d9b: $08 $ff $00
    rst $38                                       ; $5d9e: $ff
    nop                                           ; $5d9f: $00
    ld b, b                                       ; $5da0: $40
    rst $38                                       ; $5da1: $ff
    ld de, $6aee                                  ; $5da2: $11 $ee $6a
    sub l                                         ; $5da5: $95
    dec sp                                        ; $5da6: $3b
    call nz, $0af5                                ; $5da7: $c4 $f5 $0a
    ld e, a                                       ; $5daa: $5f
    and b                                         ; $5dab: $a0
    rst $38                                       ; $5dac: $ff
    nop                                           ; $5dad: $00
    xor a                                         ; $5dae: $af
    ld d, b                                       ; $5daf: $50
    push bc                                       ; $5db0: $c5
    ld a, a                                       ; $5db1: $7f
    ld [hl+], a                                   ; $5db2: $22
    db $dd                                        ; $5db3: $dd
    add c                                         ; $5db4: $81
    ld a, [hl]                                    ; $5db5: $7e
    or b                                          ; $5db6: $b0
    ld c, a                                       ; $5db7: $4f
    ld e, l                                       ; $5db8: $5d
    and d                                         ; $5db9: $a2
    rst $38                                       ; $5dba: $ff
    nop                                           ; $5dbb: $00
    rst $38                                       ; $5dbc: $ff
    nop                                           ; $5dbd: $00
    rst $28                                       ; $5dbe: $ef
    stop                                          ; $5dbf: $10 $00
    rst $38                                       ; $5dc1: $ff
    ld hl, $48de                                  ; $5dc2: $21 $de $48
    or a                                          ; $5dc5: $b7
    ld hl, sp+$07                                 ; $5dc6: $f8 $07
    scf                                           ; $5dc8: $37
    ret z                                         ; $5dc9: $c8

    ld [$ff15], a                                 ; $5dca: $ea $15 $ff
    nop                                           ; $5dcd: $00
    ld c, a                                       ; $5dce: $4f
    and b                                         ; $5dcf: $a0
    cp h                                          ; $5dd0: $bc
    ld b, e                                       ; $5dd1: $43
    rst $30                                       ; $5dd2: $f7
    ld [$9669], sp                                ; $5dd3: $08 $69 $96
    sub b                                         ; $5dd6: $90
    ld l, a                                       ; $5dd7: $6f
    ld [$00f7], sp                                ; $5dd8: $08 $f7 $00
    rst $38                                       ; $5ddb: $ff
    ld h, $fb                                     ; $5ddc: $26 $fb
    ld [$d5fb], sp                                ; $5dde: $08 $fb $d5
    ld a, [hl+]                                   ; $5de1: $2a
    ld a, e                                       ; $5de2: $7b
    add h                                         ; $5de3: $84
    sub h                                         ; $5de4: $94
    ld l, e                                       ; $5de5: $6b
    ld c, c                                       ; $5de6: $49
    or [hl]                                       ; $5de7: $b6
    ld [bc], a                                    ; $5de8: $02
    db $fd                                        ; $5de9: $fd
    add c                                         ; $5dea: $81
    rst $38                                       ; $5deb: $ff
    jr @+$01                                      ; $5dec: $18 $ff

    ld d, e                                       ; $5dee: $53
    rst $38                                       ; $5def: $ff
    jr @-$17                                      ; $5df0: $18 $e7

    or $09                                        ; $5df2: $f6 $09
    ld l, l                                       ; $5df4: $6d
    sub d                                         ; $5df5: $92
    ld b, d                                       ; $5df6: $42
    cp l                                          ; $5df7: $bd
    inc b                                         ; $5df8: $04
    ei                                            ; $5df9: $fb
    nop                                           ; $5dfa: $00
    rst $38                                       ; $5dfb: $ff
    db $10                                        ; $5dfc: $10
    rst $38                                       ; $5dfd: $ff
    ld h, $fc                                     ; $5dfe: $26 $fc
    jp hl                                         ; $5e00: $e9


    ld b, $83                                     ; $5e01: $06 $83
    nop                                           ; $5e03: $00
    xor d                                         ; $5e04: $aa
    ld b, l                                       ; $5e05: $45
    ld c, b                                       ; $5e06: $48
    and a                                         ; $5e07: $a7
    ld d, c                                       ; $5e08: $51
    xor [hl]                                      ; $5e09: $ae
    add b                                         ; $5e0a: $80
    cp a                                          ; $5e0b: $bf
    and h                                         ; $5e0c: $a4
    rra                                           ; $5e0d: $1f
    dec bc                                        ; $5e0e: $0b
    rlca                                          ; $5e0f: $07
    ld b, l                                       ; $5e10: $45
    add e                                         ; $5e11: $83
    inc hl                                        ; $5e12: $23
    rst $28                                       ; $5e13: $ef
    reti                                          ; $5e14: $d9


    rst $28                                       ; $5e15: $ef
    ld a, a                                       ; $5e16: $7f
    rst $38                                       ; $5e17: $ff
    cp a                                          ; $5e18: $bf
    rst $38                                       ; $5e19: $ff
    rst $38                                       ; $5e1a: $ff
    rst $38                                       ; $5e1b: $ff
    rst $38                                       ; $5e1c: $ff
    rst $38                                       ; $5e1d: $ff
    rst $30                                       ; $5e1e: $f7
    rst $38                                       ; $5e1f: $ff
    sub l                                         ; $5e20: $95
    rst $38                                       ; $5e21: $ff
    cpl                                           ; $5e22: $2f
    rst $38                                       ; $5e23: $ff
    or l                                          ; $5e24: $b5
    rst $38                                       ; $5e25: $ff
    rst $28                                       ; $5e26: $ef
    rst $38                                       ; $5e27: $ff
    rst $38                                       ; $5e28: $ff
    rst $38                                       ; $5e29: $ff
    rst $38                                       ; $5e2a: $ff
    rst $38                                       ; $5e2b: $ff
    rst $38                                       ; $5e2c: $ff
    rst $38                                       ; $5e2d: $ff
    db $fd                                        ; $5e2e: $fd
    rst $38                                       ; $5e2f: $ff
    dec c                                         ; $5e30: $0d
    cp $67                                        ; $5e31: $fe $67
    rst $38                                       ; $5e33: $ff
    push de                                       ; $5e34: $d5
    rst $38                                       ; $5e35: $ff
    ld a, a                                       ; $5e36: $7f
    rst $38                                       ; $5e37: $ff
    db $fd                                        ; $5e38: $fd
    rst $38                                       ; $5e39: $ff
    rst $38                                       ; $5e3a: $ff
    rst $38                                       ; $5e3b: $ff
    rst $38                                       ; $5e3c: $ff
    rst $38                                       ; $5e3d: $ff
    rst $38                                       ; $5e3e: $ff
    rst $38                                       ; $5e3f: $ff
    ld [hl], d                                    ; $5e40: $72
    ccf                                           ; $5e41: $3f
    inc sp                                        ; $5e42: $33
    ld a, a                                       ; $5e43: $7f
    cp e                                          ; $5e44: $bb
    ld a, a                                       ; $5e45: $7f
    rst $18                                       ; $5e46: $df
    rst $38                                       ; $5e47: $ff
    rst $38                                       ; $5e48: $ff
    rst $38                                       ; $5e49: $ff
    rst $38                                       ; $5e4a: $ff
    rst $38                                       ; $5e4b: $ff
    rst $38                                       ; $5e4c: $ff
    rst $38                                       ; $5e4d: $ff
    db $fd                                        ; $5e4e: $fd
    rst $38                                       ; $5e4f: $ff
    cp e                                          ; $5e50: $bb
    rst $38                                       ; $5e51: $ff
    ld [hl], a                                    ; $5e52: $77
    rst $38                                       ; $5e53: $ff
    add [hl]                                      ; $5e54: $86
    rst $38                                       ; $5e55: $ff
    ld b, c                                       ; $5e56: $41
    rst $38                                       ; $5e57: $ff
    ld [bc], a                                    ; $5e58: $02
    rst $38                                       ; $5e59: $ff

jr_072_5e5a:
    inc b                                         ; $5e5a: $04
    rst $38                                       ; $5e5b: $ff
    ld b, b                                       ; $5e5c: $40
    rst $38                                       ; $5e5d: $ff
    add c                                         ; $5e5e: $81
    ld a, a                                       ; $5e5f: $7f
    rst $28                                       ; $5e60: $ef
    rst $38                                       ; $5e61: $ff
    rst $10                                       ; $5e62: $d7
    cp $3c                                        ; $5e63: $fe $3c
    cp $66                                        ; $5e65: $fe $66
    db $fc                                        ; $5e67: $fc
    jr z, jr_072_5e5a                             ; $5e68: $28 $f0

    sbc d                                         ; $5e6a: $9a
    db $fc                                        ; $5e6b: $fc
    ld [hl+], a                                   ; $5e6c: $22
    cp $01                                        ; $5e6d: $fe $01
    cp $7b                                        ; $5e6f: $fe $7b
    rst $38                                       ; $5e71: $ff
    rst $10                                       ; $5e72: $d7
    rst $38                                       ; $5e73: $ff
    add hl, sp                                    ; $5e74: $39
    rst $38                                       ; $5e75: $ff
    ret nz                                        ; $5e76: $c0

    ld a, a                                       ; $5e77: $7f
    jr nc, @+$21                                  ; $5e78: $30 $1f

    adc d                                         ; $5e7a: $8a
    ld a, a                                       ; $5e7b: $7f
    ldh [rIE], a                                  ; $5e7c: $e0 $ff
    inc d                                         ; $5e7e: $14
    rst $38                                       ; $5e7f: $ff
    rst $10                                       ; $5e80: $d7
    rst $38                                       ; $5e81: $ff
    ld l, e                                       ; $5e82: $6b
    rst $38                                       ; $5e83: $ff
    adc h                                         ; $5e84: $8c
    rst $38                                       ; $5e85: $ff
    ld [$22ff], sp                                ; $5e86: $08 $ff $22
    rst $38                                       ; $5e89: $ff
    ld bc, $58ff                                  ; $5e8a: $01 $ff $58
    rst $38                                       ; $5e8d: $ff
    nop                                           ; $5e8e: $00
    rst $38                                       ; $5e8f: $ff
    inc b                                         ; $5e90: $04
    ei                                            ; $5e91: $fb
    ld b, c                                       ; $5e92: $41
    cp [hl]                                       ; $5e93: $be
    add sp, $17                                   ; $5e94: $e8 $17
    ld a, a                                       ; $5e96: $7f
    add b                                         ; $5e97: $80
    xor $11                                       ; $5e98: $ee $11
    rst $38                                       ; $5e9a: $ff
    nop                                           ; $5e9b: $00
    rst $38                                       ; $5e9c: $ff
    nop                                           ; $5e9d: $00
    ld a, c                                       ; $5e9e: $79
    add [hl]                                      ; $5e9f: $86
    ld b, h                                       ; $5ea0: $44
    cp e                                          ; $5ea1: $bb
    xor d                                         ; $5ea2: $aa
    ld d, l                                       ; $5ea3: $55
    ld [hl], a                                    ; $5ea4: $77
    adc b                                         ; $5ea5: $88
    ld [$bf15], a                                 ; $5ea6: $ea $15 $bf
    ld b, b                                       ; $5ea9: $40
    rst $38                                       ; $5eaa: $ff
    nop                                           ; $5eab: $00
    ld e, a                                       ; $5eac: $5f
    and b                                         ; $5ead: $a0
    xor d                                         ; $5eae: $aa
    ld d, l                                       ; $5eaf: $55
    adc b                                         ; $5eb0: $88
    ld [hl], a                                    ; $5eb1: $77
    dec b                                         ; $5eb2: $05
    ld a, [$9e61]                                 ; $5eb3: $fa $61 $9e
    cp d                                          ; $5eb6: $ba

jr_072_5eb7:
    ld b, l                                       ; $5eb7: $45
    rst $38                                       ; $5eb8: $ff
    nop                                           ; $5eb9: $00
    rst $38                                       ; $5eba: $ff
    nop                                           ; $5ebb: $00
    sbc $21                                       ; $5ebc: $de $21
    ld sp, $84ce                                  ; $5ebe: $31 $ce $84
    ld a, e                                       ; $5ec1: $7b
    ld hl, $f1de                                  ; $5ec2: $21 $de $f1
    ld c, $6f                                     ; $5ec5: $0e $6f
    sub b                                         ; $5ec7: $90
    push de                                       ; $5ec8: $d5
    ld a, [hl+]                                   ; $5ec9: $2a
    rst $38                                       ; $5eca: $ff
    nop                                           ; $5ecb: $00
    sbc a                                         ; $5ecc: $9f
    ld b, b                                       ; $5ecd: $40
    db $d3                                        ; $5ece: $d3
    inc c                                         ; $5ecf: $0c
    xor $11                                       ; $5ed0: $ee $11
    db $d3                                        ; $5ed2: $d3
    inc l                                         ; $5ed3: $2c
    ld b, c                                       ; $5ed4: $41
    cp [hl]                                       ; $5ed5: $be
    jr nz, jr_072_5eb7                            ; $5ed6: $20 $df

    ld [bc], a                                    ; $5ed8: $02
    rst $38                                       ; $5ed9: $ff
    adc b                                         ; $5eda: $88
    rst $38                                       ; $5edb: $ff
    ld sp, $8aef                                  ; $5edc: $31 $ef $8a
    rst $28                                       ; $5edf: $ef
    rst $30                                       ; $5ee0: $f7
    ld [$d728], sp                                ; $5ee1: $08 $28 $d7
    dec h                                         ; $5ee4: $25
    jp c, $f708                                   ; $5ee5: $da $08 $f7

    inc b                                         ; $5ee8: $04
    rst $38                                       ; $5ee9: $ff
    ld h, b                                       ; $5eea: $60
    rst $38                                       ; $5eeb: $ff
    ld c, h                                       ; $5eec: $4c
    rst $38                                       ; $5eed: $ff
    ldh [rIE], a                                  ; $5eee: $e0 $ff
    db $ed                                        ; $5ef0: $ed
    ld [de], a                                    ; $5ef1: $12
    db $db                                        ; $5ef2: $db
    inc h                                         ; $5ef3: $24
    add hl, bc                                    ; $5ef4: $09
    or $10                                        ; $5ef5: $f6 $10
    rst $28                                       ; $5ef7: $ef
    ld [bc], a                                    ; $5ef8: $02
    rst $38                                       ; $5ef9: $ff
    ld b, b                                       ; $5efa: $40
    rst $38                                       ; $5efb: $ff
    sbc c                                         ; $5efc: $99
    cp $44                                        ; $5efd: $fe $44
    ld hl, sp+$07                                 ; $5eff: $f8 $07
    nop                                           ; $5f01: $00
    ld d, h                                       ; $5f02: $54
    adc e                                         ; $5f03: $8b
    ld b, d                                       ; $5f04: $42
    sbc l                                         ; $5f05: $9d
    inc h                                         ; $5f06: $24
    db $db                                        ; $5f07: $db
    add b                                         ; $5f08: $80
    ld a, a                                       ; $5f09: $7f
    db $10                                        ; $5f0a: $10
    ld a, a                                       ; $5f0b: $7f
    ld c, h                                       ; $5f0c: $4c
    ccf                                           ; $5f0d: $3f
    ld de, $190f                                  ; $5f0e: $11 $0f $19
    rrca                                          ; $5f11: $0f
    sbc e                                         ; $5f12: $9b
    cp a                                          ; $5f13: $bf
    cp $bf                                        ; $5f14: $fe $bf
    rst $38                                       ; $5f16: $ff
    rst $38                                       ; $5f17: $ff
    rst $38                                       ; $5f18: $ff
    rst $38                                       ; $5f19: $ff
    rst $38                                       ; $5f1a: $ff
    rst $38                                       ; $5f1b: $ff
    ld a, a                                       ; $5f1c: $7f
    rst $38                                       ; $5f1d: $ff
    cp [hl]                                       ; $5f1e: $be
    rst $38                                       ; $5f1f: $ff
    ld a, e                                       ; $5f20: $7b
    rst $38                                       ; $5f21: $ff
    ld e, l                                       ; $5f22: $5d
    rst $38                                       ; $5f23: $ff
    rst $30                                       ; $5f24: $f7
    rst $38                                       ; $5f25: $ff
    rst $38                                       ; $5f26: $ff
    rst $38                                       ; $5f27: $ff
    rst $38                                       ; $5f28: $ff
    rst $38                                       ; $5f29: $ff
    rst $38                                       ; $5f2a: $ff
    rst $38                                       ; $5f2b: $ff
    rst $18                                       ; $5f2c: $df
    rst $38                                       ; $5f2d: $ff
    rst $30                                       ; $5f2e: $f7
    rst $38                                       ; $5f2f: $ff
    ld a, $fc                                     ; $5f30: $3e $fc
    ld e, d                                       ; $5f32: $5a
    cp $fd                                        ; $5f33: $fe $fd
    cp $df                                        ; $5f35: $fe $df
    rst $38                                       ; $5f37: $ff
    rst $38                                       ; $5f38: $ff
    rst $38                                       ; $5f39: $ff
    rst $38                                       ; $5f3a: $ff
    rst $38                                       ; $5f3b: $ff
    rst $38                                       ; $5f3c: $ff
    rst $38                                       ; $5f3d: $ff
    cp l                                          ; $5f3e: $bd
    rst $38                                       ; $5f3f: $ff
    sbc c                                         ; $5f40: $99
    ld a, [hl]                                    ; $5f41: $7e
    cp l                                          ; $5f42: $bd
    rst $38                                       ; $5f43: $ff
    rst $30                                       ; $5f44: $f7
    rst $38                                       ; $5f45: $ff
    ei                                            ; $5f46: $fb
    rst $38                                       ; $5f47: $ff
    rst $38                                       ; $5f48: $ff
    rst $38                                       ; $5f49: $ff
    rst $38                                       ; $5f4a: $ff
    rst $38                                       ; $5f4b: $ff
    rst $18                                       ; $5f4c: $df
    rst $38                                       ; $5f4d: $ff
    ld a, e                                       ; $5f4e: $7b
    rst $38                                       ; $5f4f: $ff
    ld a, l                                       ; $5f50: $7d
    rst $38                                       ; $5f51: $ff
    jr @+$01                                      ; $5f52: $18 $ff

    dec b                                         ; $5f54: $05
    rst $38                                       ; $5f55: $ff
    ld [$12ff], sp                                ; $5f56: $08 $ff $12
    rst $38                                       ; $5f59: $ff
    nop                                           ; $5f5a: $00
    rst $38                                       ; $5f5b: $ff
    inc b                                         ; $5f5c: $04
    rst $38                                       ; $5f5d: $ff
    ld de, $6fee                                  ; $5f5e: $11 $ee $6f
    db $fd                                        ; $5f61: $fd
    ldh a, [$fd]                                  ; $5f62: $f0 $fd
    sub l                                         ; $5f64: $95
    ld hl, sp-$70                                 ; $5f65: $f8 $90
    ldh [$65], a                                  ; $5f67: $e0 $65
    ld hl, sp-$77                                 ; $5f69: $f8 $89
    db $fd                                        ; $5f6b: $fd
    ld b, $fd                                     ; $5f6c: $06 $fd
    ld [de], a                                    ; $5f6e: $12
    db $ed                                        ; $5f6f: $ed
    halt                                          ; $5f70: $76
    rst $38                                       ; $5f71: $ff
    and $ff                                       ; $5f72: $e6 $ff
    nop                                           ; $5f74: $00
    rst $38                                       ; $5f75: $ff
    ld b, b                                       ; $5f76: $40
    ccf                                           ; $5f77: $3f
    jr z, @+$01                                   ; $5f78: $28 $ff

    add c                                         ; $5f7a: $81
    rst $38                                       ; $5f7b: $ff
    ld d, b                                       ; $5f7c: $50
    rst $38                                       ; $5f7d: $ff
    ld [hl+], a                                   ; $5f7e: $22
    db $dd                                        ; $5f7f: $dd
    or a                                          ; $5f80: $b7
    rst $38                                       ; $5f81: $ff
    ld [hl-], a                                   ; $5f82: $32
    rst $38                                       ; $5f83: $ff
    ld hl, $88ff                                  ; $5f84: $21 $ff $88
    rst $38                                       ; $5f87: $ff
    inc b                                         ; $5f88: $04
    rst $38                                       ; $5f89: $ff
    ld h, c                                       ; $5f8a: $61
    rst $38                                       ; $5f8b: $ff
    ld [bc], a                                    ; $5f8c: $02
    db $fd                                        ; $5f8d: $fd
    db $10                                        ; $5f8e: $10
    rst $28                                       ; $5f8f: $ef
    ld b, $f9                                     ; $5f90: $06 $f9
    ret nc                                        ; $5f92: $d0

    cpl                                           ; $5f93: $2f
    rst $38                                       ; $5f94: $ff
    nop                                           ; $5f95: $00
    db $dd                                        ; $5f96: $dd
    ld [hl+], a                                   ; $5f97: $22
    rst $38                                       ; $5f98: $ff
    nop                                           ; $5f99: $00
    cp $01                                        ; $5f9a: $fe $01
    di                                            ; $5f9c: $f3
    inc c                                         ; $5f9d: $0c
    db $dd                                        ; $5f9e: $dd
    ld [hl+], a                                   ; $5f9f: $22
    xor b                                         ; $5fa0: $a8
    ld d, a                                       ; $5fa1: $57
    xor $11                                       ; $5fa2: $ee $11
    push de                                       ; $5fa4: $d5
    ld a, [hl+]                                   ; $5fa5: $2a
    ld a, a                                       ; $5fa6: $7f
    add b                                         ; $5fa7: $80
    rst $38                                       ; $5fa8: $ff
    nop                                           ; $5fa9: $00
    cp a                                          ; $5faa: $bf
    ld b, b                                       ; $5fab: $40
    ld d, h                                       ; $5fac: $54
    xor e                                         ; $5fad: $ab
    rst $28                                       ; $5fae: $ef
    db $10                                        ; $5faf: $10
    inc d                                         ; $5fb0: $14
    db $eb                                        ; $5fb1: $eb
    jp Jump_072_743c                              ; $5fb2: $c3 $3c $74


    adc e                                         ; $5fb5: $8b
    rst $38                                       ; $5fb6: $ff
    nop                                           ; $5fb7: $00
    rst $38                                       ; $5fb8: $ff
    nop                                           ; $5fb9: $00
    cp l                                          ; $5fba: $bd

jr_072_5fbb:
    ld b, d                                       ; $5fbb: $42
    ld h, e                                       ; $5fbc: $63
    sbc h                                         ; $5fbd: $9c
    jp c, $8524                                   ; $5fbe: $da $24 $85

    ld a, d                                       ; $5fc1: $7a
    db $e3                                        ; $5fc2: $e3
    inc e                                         ; $5fc3: $1c
    sbc $21                                       ; $5fc4: $de $21
    xor e                                         ; $5fc6: $ab
    ld d, h                                       ; $5fc7: $54
    rst $38                                       ; $5fc8: $ff
    nop                                           ; $5fc9: $00
    ccf                                           ; $5fca: $3f
    add b                                         ; $5fcb: $80
    and [hl]                                      ; $5fcc: $a6
    add hl, de                                    ; $5fcd: $19
    rrca                                          ; $5fce: $0f
    nop                                           ; $5fcf: $00
    and [hl]                                      ; $5fd0: $a6
    ld e, c                                       ; $5fd1: $59
    add hl, bc                                    ; $5fd2: $09
    or $00                                        ; $5fd3: $f6 $00
    rst $38                                       ; $5fd5: $ff
    db $10                                        ; $5fd6: $10
    rst $38                                       ; $5fd7: $ff
    ld b, e                                       ; $5fd8: $43
    rst $38                                       ; $5fd9: $ff
    ld a, [bc]                                    ; $5fda: $0a
    rst $38                                       ; $5fdb: $ff
    ld d, a                                       ; $5fdc: $57
    cp a                                          ; $5fdd: $bf
    xor h                                         ; $5fde: $ac
    cp a                                          ; $5fdf: $bf
    ld d, c                                       ; $5fe0: $51
    xor [hl]                                      ; $5fe1: $ae
    jr z, jr_072_5fbb                             ; $5fe2: $28 $d7

    ld b, b                                       ; $5fe4: $40
    cp a                                          ; $5fe5: $bf
    jr nz, @+$01                                  ; $5fe6: $20 $ff

    ld [bc], a                                    ; $5fe8: $02
    rst $38                                       ; $5fe9: $ff
    ld h, h                                       ; $5fea: $64
    rst $38                                       ; $5feb: $ff
    ld [bc], a                                    ; $5fec: $02
    rst $38                                       ; $5fed: $ff
    xor b                                         ; $5fee: $a8
    rst $38                                       ; $5fef: $ff
    or [hl]                                       ; $5ff0: $b6
    ld c, c                                       ; $5ff1: $49
    ld c, e                                       ; $5ff2: $4b
    or h                                          ; $5ff3: $b4
    add b                                         ; $5ff4: $80
    ld a, a                                       ; $5ff5: $7f
    db $10                                        ; $5ff6: $10
    rst $38                                       ; $5ff7: $ff
    ld bc, $c6fe                                  ; $5ff8: $01 $fe $c6
    cp $16                                        ; $5ffb: $fe $16
    db $fc                                        ; $5ffd: $fc
    ld l, b                                       ; $5ffe: $68
    ldh a, [$a9]                                  ; $5fff: $f0 $a9
    ld d, $12                                     ; $6001: $16 $12
    xor l                                         ; $6003: $ad
    ld h, c                                       ; $6004: $61
    sbc [hl]                                      ; $6005: $9e
    nop                                           ; $6006: $00
    rst $38                                       ; $6007: $ff
    add h                                         ; $6008: $84
    rst $38                                       ; $6009: $ff
    ld h, c                                       ; $600a: $61
    rst $38                                       ; $600b: $ff
    adc h                                         ; $600c: $8c
    ld a, a                                       ; $600d: $7f
    inc sp                                        ; $600e: $33
    rra                                           ; $600f: $1f
    nop                                           ; $6010: $00
    rst $38                                       ; $6011: $ff
    nop                                           ; $6012: $00
    rst $38                                       ; $6013: $ff
    nop                                           ; $6014: $00
    rst $38                                       ; $6015: $ff
    nop                                           ; $6016: $00
    rst $38                                       ; $6017: $ff
    nop                                           ; $6018: $00
    rst $38                                       ; $6019: $ff
    nop                                           ; $601a: $00
    rst $38                                       ; $601b: $ff
    nop                                           ; $601c: $00
    rst $38                                       ; $601d: $ff
    nop                                           ; $601e: $00
    rst $38                                       ; $601f: $ff

Jump_072_6020:
    nop                                           ; $6020: $00
    rst $38                                       ; $6021: $ff
    ld de, $00ee                                  ; $6022: $11 $ee $00
    rst $38                                       ; $6025: $ff
    ld b, h                                       ; $6026: $44
    cp e                                          ; $6027: $bb
    nop                                           ; $6028: $00
    rst $38                                       ; $6029: $ff
    xor d                                         ; $602a: $aa
    ld d, l                                       ; $602b: $55
    ld d, l                                       ; $602c: $55
    xor d                                         ; $602d: $aa
    rst $38                                       ; $602e: $ff
    nop                                           ; $602f: $00
    rst $38                                       ; $6030: $ff
    nop                                           ; $6031: $00
    rst $38                                       ; $6032: $ff
    nop                                           ; $6033: $00
    rst $38                                       ; $6034: $ff
    nop                                           ; $6035: $00
    rst $38                                       ; $6036: $ff
    nop                                           ; $6037: $00
    xor $00                                       ; $6038: $ee $00
    rst $38                                       ; $603a: $ff
    nop                                           ; $603b: $00
    xor d                                         ; $603c: $aa
    nop                                           ; $603d: $00
    ld d, l                                       ; $603e: $55
    nop                                           ; $603f: $00
    rst $38                                       ; $6040: $ff
    rst $38                                       ; $6041: $ff
    rst $38                                       ; $6042: $ff
    rst $38                                       ; $6043: $ff
    rst $38                                       ; $6044: $ff
    rst $38                                       ; $6045: $ff
    rst $38                                       ; $6046: $ff
    rst $38                                       ; $6047: $ff
    rst $38                                       ; $6048: $ff
    rst $38                                       ; $6049: $ff
    rst $38                                       ; $604a: $ff
    rst $38                                       ; $604b: $ff
    rst $38                                       ; $604c: $ff
    rst $38                                       ; $604d: $ff
    rst $38                                       ; $604e: $ff
    rst $38                                       ; $604f: $ff
    rst $38                                       ; $6050: $ff
    rra                                           ; $6051: $1f
    rst $38                                       ; $6052: $ff
    rlca                                          ; $6053: $07
    rst $38                                       ; $6054: $ff
    ld bc, $007f                                  ; $6055: $01 $7f $00
    ld a, a                                       ; $6058: $7f
    nop                                           ; $6059: $00
    inc bc                                        ; $605a: $03
    nop                                           ; $605b: $00
    db $fc                                        ; $605c: $fc
    nop                                           ; $605d: $00
    or [hl]                                       ; $605e: $b6
    ld c, b                                       ; $605f: $48
    rst $38                                       ; $6060: $ff
    cp $ff                                        ; $6061: $fe $ff
    ld hl, sp-$01                                 ; $6063: $f8 $ff
    ldh [rIE], a                                  ; $6065: $e0 $ff
    nop                                           ; $6067: $00
    db $fd                                        ; $6068: $fd
    nop                                           ; $6069: $00
    cp b                                          ; $606a: $b8
    nop                                           ; $606b: $00
    scf                                           ; $606c: $37
    nop                                           ; $606d: $00
    dec c                                         ; $606e: $0d
    ld [bc], a                                    ; $606f: $02
    rst $38                                       ; $6070: $ff
    rra                                           ; $6071: $1f
    rst $38                                       ; $6072: $ff
    rlca                                          ; $6073: $07
    rst $38                                       ; $6074: $ff
    ld bc, $007f                                  ; $6075: $01 $7f $00
    ld a, a                                       ; $6078: $7f
    nop                                           ; $6079: $00
    inc h                                         ; $607a: $24
    nop                                           ; $607b: $00
    ld a, [de]                                    ; $607c: $1a
    nop                                           ; $607d: $00
    db $ec                                        ; $607e: $ec
    db $10                                        ; $607f: $10
    rst $38                                       ; $6080: $ff
    cp $ff                                        ; $6081: $fe $ff
    ld hl, sp-$01                                 ; $6083: $f8 $ff
    ldh [rIE], a                                  ; $6085: $e0 $ff
    nop                                           ; $6087: $00
    rst $38                                       ; $6088: $ff
    nop                                           ; $6089: $00
    db $fd                                        ; $608a: $fd
    nop                                           ; $608b: $00
    inc l                                         ; $608c: $2c
    nop                                           ; $608d: $00
    inc hl                                        ; $608e: $23
    nop                                           ; $608f: $00
    db $db                                        ; $6090: $db
    inc h                                         ; $6091: $24
    call c, $ee23                                 ; $6092: $dc $23 $ee
    ld de, $314e                                  ; $6095: $11 $4e $31
    ld l, e                                       ; $6098: $6b
    db $10                                        ; $6099: $10
    add hl, bc                                    ; $609a: $09
    nop                                           ; $609b: $00
    nop                                           ; $609c: $00
    nop                                           ; $609d: $00
    nop                                           ; $609e: $00
    nop                                           ; $609f: $00
    sbc l                                         ; $60a0: $9d
    ld [bc], a                                    ; $60a1: $02
    jp nc, $eb2d                                  ; $60a2: $d2 $2d $eb

    inc d                                         ; $60a5: $14
    ld h, a                                       ; $60a6: $67
    sbc b                                         ; $60a7: $98
    cp l                                          ; $60a8: $bd
    ld b, b                                       ; $60a9: $40
    ld [hl], b                                    ; $60aa: $70
    add b                                         ; $60ab: $80
    nop                                           ; $60ac: $00
    nop                                           ; $60ad: $00
    nop                                           ; $60ae: $00
    nop                                           ; $60af: $00
    cpl                                           ; $60b0: $2f
    ret nc                                        ; $60b1: $d0

    rst $30                                       ; $60b2: $f7
    ld [$1e21], sp                                ; $60b3: $08 $21 $1e
    cp c                                          ; $60b6: $b9
    ld b, $1e                                     ; $60b7: $06 $1e
    ld bc, $0003                                  ; $60b9: $01 $03 $00
    nop                                           ; $60bc: $00
    nop                                           ; $60bd: $00
    nop                                           ; $60be: $00
    nop                                           ; $60bf: $00
    ld c, $01                                     ; $60c0: $0e $01
    db $fd                                        ; $60c2: $fd
    ld [bc], a                                    ; $60c3: $02
    jp z, $7234                                   ; $60c4: $ca $34 $72

    adc h                                         ; $60c7: $8c
    ld [hl], $88                                  ; $60c8: $36 $88
    sbc b                                         ; $60ca: $98
    nop                                           ; $60cb: $00
    nop                                           ; $60cc: $00
    nop                                           ; $60cd: $00
    nop                                           ; $60ce: $00
    nop                                           ; $60cf: $00
    ret nz                                        ; $60d0: $c0

    nop                                           ; $60d1: $00
    dec c                                         ; $60d2: $0d
    ccf                                           ; $60d3: $3f
    ld d, e                                       ; $60d4: $53
    rst $38                                       ; $60d5: $ff
    jr nz, @+$01                                  ; $60d6: $20 $ff

    nop                                           ; $60d8: $00
    rst $38                                       ; $60d9: $ff
    nop                                           ; $60da: $00
    rst $38                                       ; $60db: $ff
    nop                                           ; $60dc: $00
    rst $38                                       ; $60dd: $ff
    nop                                           ; $60de: $00
    rst $38                                       ; $60df: $ff
    rra                                           ; $60e0: $1f
    nop                                           ; $60e1: $00
    rst $08                                       ; $60e2: $cf
    ldh [rP1], a                                  ; $60e3: $e0 $00
    ldh a, [$60]                                  ; $60e5: $f0 $60
    rst $38                                       ; $60e7: $ff
    dec b                                         ; $60e8: $05
    rst $38                                       ; $60e9: $ff
    nop                                           ; $60ea: $00
    rst $38                                       ; $60eb: $ff
    nop                                           ; $60ec: $00
    rst $38                                       ; $60ed: $ff
    nop                                           ; $60ee: $00
    rst $38                                       ; $60ef: $ff
    ret nz                                        ; $60f0: $c0

    nop                                           ; $60f1: $00
    jr jr_072_6133                                ; $60f2: $18 $3f

    dec bc                                        ; $60f4: $0b
    rst $38                                       ; $60f5: $ff
    or d                                          ; $60f6: $b2
    rst $38                                       ; $60f7: $ff
    nop                                           ; $60f8: $00
    rst $38                                       ; $60f9: $ff
    nop                                           ; $60fa: $00
    rst $38                                       ; $60fb: $ff
    nop                                           ; $60fc: $00
    rst $38                                       ; $60fd: $ff
    nop                                           ; $60fe: $00
    rst $38                                       ; $60ff: $ff
    rrca                                          ; $6100: $0f
    nop                                           ; $6101: $00
    ld h, e                                       ; $6102: $63
    ldh a, [$30]                                  ; $6103: $f0 $30
    db $fc                                        ; $6105: $fc
    jr z, @+$01                                   ; $6106: $28 $ff

    db $10                                        ; $6108: $10
    rst $38                                       ; $6109: $ff
    nop                                           ; $610a: $00
    rst $38                                       ; $610b: $ff
    nop                                           ; $610c: $00
    rst $38                                       ; $610d: $ff
    nop                                           ; $610e: $00
    rst $38                                       ; $610f: $ff
    rst $38                                       ; $6110: $ff
    nop                                           ; $6111: $00
    rst $38                                       ; $6112: $ff
    add b                                         ; $6113: $80
    sbc a                                         ; $6114: $9f
    add b                                         ; $6115: $80
    cp $c0                                        ; $6116: $fe $c0
    ret z                                         ; $6118: $c8

    add b                                         ; $6119: $80
    add b                                         ; $611a: $80
    nop                                           ; $611b: $00
    ret nz                                        ; $611c: $c0

    ld b, b                                       ; $611d: $40
    ldh [$e0], a                                  ; $611e: $e0 $e0
    rst $28                                       ; $6120: $ef
    db $10                                        ; $6121: $10
    adc $00                                       ; $6122: $ce $00
    rra                                           ; $6124: $1f
    nop                                           ; $6125: $00
    rra                                           ; $6126: $1f
    ld bc, $0001                                  ; $6127: $01 $01 $00
    ld [bc], a                                    ; $612a: $02
    nop                                           ; $612b: $00
    inc e                                         ; $612c: $1c
    nop                                           ; $612d: $00
    ld bc, $ff00                                  ; $612e: $01 $00 $ff
    nop                                           ; $6131: $00
    db $fd                                        ; $6132: $fd

jr_072_6133:
    add b                                         ; $6133: $80
    cp h                                          ; $6134: $bc
    add b                                         ; $6135: $80
    cp $c0                                        ; $6136: $fe $c0
    call c, $8080                                 ; $6138: $dc $80 $80
    nop                                           ; $613b: $00
    call nz, $e040                                ; $613c: $c4 $40 $e0
    ldh [rIE], a                                  ; $613f: $e0 $ff
    nop                                           ; $6141: $00
    cp $00                                        ; $6142: $fe $00
    db $dd                                        ; $6144: $dd
    nop                                           ; $6145: $00
    sbc e                                         ; $6146: $9b
    ld bc, $0081                                  ; $6147: $01 $81 $00
    ld b, d                                       ; $614a: $42
    nop                                           ; $614b: $00
    inc c                                         ; $614c: $0c
    nop                                           ; $614d: $00
    ld bc, $c000                                  ; $614e: $01 $00 $c0
    nop                                           ; $6151: $00
    stop                                          ; $6152: $10 $00
    nop                                           ; $6154: $00
    nop                                           ; $6155: $00
    add sp, -$60                                  ; $6156: $e8 $a0
    ldh a, [rSVBK]                                ; $6158: $f0 $70
    ldh [$e0], a                                  ; $615a: $e0 $e0
    db $fc                                        ; $615c: $fc
    sbc b                                         ; $615d: $98
    ldh [$60], a                                  ; $615e: $e0 $60
    inc c                                         ; $6160: $0c
    nop                                           ; $6161: $00
    rlca                                          ; $6162: $07
    nop                                           ; $6163: $00
    inc de                                        ; $6164: $13
    inc bc                                        ; $6165: $03
    add hl, de                                    ; $6166: $19
    nop                                           ; $6167: $00
    inc hl                                        ; $6168: $23
    nop                                           ; $6169: $00
    rla                                           ; $616a: $17
    ld bc, $0122                                  ; $616b: $01 $22 $01
    ld h, a                                       ; $616e: $67
    nop                                           ; $616f: $00
    or $44                                        ; $6170: $f6 $44
    db $fc                                        ; $6172: $fc
    ldh a, [$fa]                                  ; $6173: $f0 $fa
    jr jr_072_61f1                                ; $6175: $18 $7a

    xor b                                         ; $6177: $a8
    db $e4                                        ; $6178: $e4
    ld b, b                                       ; $6179: $40
    add sp, -$58                                  ; $617a: $e8 $a8
    ldh a, [$60]                                  ; $617c: $f0 $60
    ldh [$60], a                                  ; $617e: $e0 $60
    ld d, l                                       ; $6180: $55
    ld [bc], a                                    ; $6181: $02
    ld c, a                                       ; $6182: $4f
    nop                                           ; $6183: $00
    ld [bc], a                                    ; $6184: $02
    ld bc, $0027                                  ; $6185: $01 $27 $00
    ld d, e                                       ; $6188: $53
    inc bc                                        ; $6189: $03
    dec d                                         ; $618a: $15
    nop                                           ; $618b: $00
    ld h, e                                       ; $618c: $63
    nop                                           ; $618d: $00
    ld d, $01                                     ; $618e: $16 $01
    db $fc                                        ; $6190: $fc
    ld e, b                                       ; $6191: $58
    ldh [$e0], a                                  ; $6192: $e0 $e0
    or $24                                        ; $6194: $f6 $24
    db $fc                                        ; $6196: $fc
    ret nc                                        ; $6197: $d0

    ld a, [$7a58]                                 ; $6198: $fa $58 $7a
    or d                                          ; $619b: $b2
    db $f4                                        ; $619c: $f4
    nop                                           ; $619d: $00
    db $fc                                        ; $619e: $fc
    ld a, b                                       ; $619f: $78
    jr nz, @+$05                                  ; $61a0: $20 $03

    ld h, l                                       ; $61a2: $65
    ld [bc], a                                    ; $61a3: $02
    ld de, $0702                                  ; $61a4: $11 $02 $07
    nop                                           ; $61a7: $00
    jp nz, $2e01                                  ; $61a8: $c2 $01 $2e

    ld bc, $0152                                  ; $61ab: $01 $52 $01
    ld [hl], a                                    ; $61ae: $77
    ld [de], a                                    ; $61af: $12
    ldh a, [$d0]                                  ; $61b0: $f0 $d0
    ret nc                                        ; $61b2: $d0

    ld b, b                                       ; $61b3: $40
    ret nz                                        ; $61b4: $c0

    nop                                           ; $61b5: $00
    nop                                           ; $61b6: $00
    ret nz                                        ; $61b7: $c0

    inc c                                         ; $61b8: $0c
    call z, $fe1e                                 ; $61b9: $cc $1e $fe
    ld a, a                                       ; $61bc: $7f
    rst $38                                       ; $61bd: $ff
    rst $38                                       ; $61be: $ff
    rst $38                                       ; $61bf: $ff
    rla                                           ; $61c0: $17
    dec b                                         ; $61c1: $05
    add hl, sp                                    ; $61c2: $39
    ld b, $19                                     ; $61c3: $06 $19
    ld b, $00                                     ; $61c5: $06 $00
    rlca                                          ; $61c7: $07
    ld b, b                                       ; $61c8: $40
    ld b, a                                       ; $61c9: $47
    ldh a, [$f7]                                  ; $61ca: $f0 $f7
    db $fc                                        ; $61cc: $fc
    rst $38                                       ; $61cd: $ff
    rst $38                                       ; $61ce: $ff
    rst $38                                       ; $61cf: $ff
    nop                                           ; $61d0: $00
    rst $38                                       ; $61d1: $ff
    nop                                           ; $61d2: $00
    rst $38                                       ; $61d3: $ff
    nop                                           ; $61d4: $00
    rst $38                                       ; $61d5: $ff
    nop                                           ; $61d6: $00
    rst $38                                       ; $61d7: $ff
    nop                                           ; $61d8: $00
    rst $38                                       ; $61d9: $ff
    nop                                           ; $61da: $00
    rst $38                                       ; $61db: $ff
    nop                                           ; $61dc: $00
    rst $38                                       ; $61dd: $ff
    nop                                           ; $61de: $00
    rst $38                                       ; $61df: $ff
    nop                                           ; $61e0: $00
    rst $38                                       ; $61e1: $ff
    ld de, $00ee                                  ; $61e2: $11 $ee $00
    rst $38                                       ; $61e5: $ff
    ld b, h                                       ; $61e6: $44
    cp e                                          ; $61e7: $bb
    nop                                           ; $61e8: $00
    rst $38                                       ; $61e9: $ff
    xor d                                         ; $61ea: $aa
    ld d, l                                       ; $61eb: $55
    ld d, l                                       ; $61ec: $55
    xor d                                         ; $61ed: $aa
    rst $38                                       ; $61ee: $ff
    nop                                           ; $61ef: $00
    rst $38                                       ; $61f0: $ff

jr_072_61f1:
    nop                                           ; $61f1: $00
    rst $38                                       ; $61f2: $ff
    nop                                           ; $61f3: $00
    rst $38                                       ; $61f4: $ff
    nop                                           ; $61f5: $00
    rst $38                                       ; $61f6: $ff
    nop                                           ; $61f7: $00
    xor $00                                       ; $61f8: $ee $00
    rst $38                                       ; $61fa: $ff
    nop                                           ; $61fb: $00
    xor d                                         ; $61fc: $aa
    nop                                           ; $61fd: $00
    ld d, l                                       ; $61fe: $55
    nop                                           ; $61ff: $00
    rst $38                                       ; $6200: $ff
    rst $38                                       ; $6201: $ff
    rst $38                                       ; $6202: $ff
    rst $38                                       ; $6203: $ff
    rst $38                                       ; $6204: $ff
    rst $38                                       ; $6205: $ff
    rst $38                                       ; $6206: $ff
    rst $38                                       ; $6207: $ff
    rst $38                                       ; $6208: $ff
    rst $38                                       ; $6209: $ff
    rst $38                                       ; $620a: $ff
    rst $38                                       ; $620b: $ff
    rst $38                                       ; $620c: $ff
    rst $38                                       ; $620d: $ff
    rst $38                                       ; $620e: $ff
    rst $38                                       ; $620f: $ff
    rst $38                                       ; $6210: $ff
    add a                                         ; $6211: $87
    rst $38                                       ; $6212: $ff
    ld bc, $00ff                                  ; $6213: $01 $ff $00
    rst $18                                       ; $6216: $df
    nop                                           ; $6217: $00
    ld e, a                                       ; $6218: $5f
    nop                                           ; $6219: $00
    ld bc, $7e00                                  ; $621a: $01 $00 $7e
    nop                                           ; $621d: $00
    db $db                                        ; $621e: $db
    inc h                                         ; $621f: $24
    rst $38                                       ; $6220: $ff
    rst $38                                       ; $6221: $ff
    rst $38                                       ; $6222: $ff
    cp $ff                                        ; $6223: $fe $ff
    ld a, b                                       ; $6225: $78
    rst $38                                       ; $6226: $ff
    nop                                           ; $6227: $00
    rst $38                                       ; $6228: $ff
    nop                                           ; $6229: $00
    inc a                                         ; $622a: $3c
    nop                                           ; $622b: $00
    adc e                                         ; $622c: $8b
    nop                                           ; $622d: $00
    ld b, $01                                     ; $622e: $06 $01
    rst $38                                       ; $6230: $ff
    add a                                         ; $6231: $87
    rst $38                                       ; $6232: $ff
    ld bc, $00ff                                  ; $6233: $01 $ff $00
    rst $18                                       ; $6236: $df
    nop                                           ; $6237: $00
    rst $18                                       ; $6238: $df
    nop                                           ; $6239: $00
    ld b, e                                       ; $623a: $43
    nop                                           ; $623b: $00
    adc l                                         ; $623c: $8d
    nop                                           ; $623d: $00
    or $08                                        ; $623e: $f6 $08
    rst $38                                       ; $6240: $ff
    rst $38                                       ; $6241: $ff
    rst $38                                       ; $6242: $ff
    cp $ff                                        ; $6243: $fe $ff
    ld a, b                                       ; $6245: $78
    rst $38                                       ; $6246: $ff
    nop                                           ; $6247: $00
    rst $38                                       ; $6248: $ff
    nop                                           ; $6249: $00
    rst $28                                       ; $624a: $ef
    nop                                           ; $624b: $00
    adc h                                         ; $624c: $8c
    nop                                           ; $624d: $00
    ld bc, $6d00                                  ; $624e: $01 $00 $6d
    sub d                                         ; $6251: $92
    xor $11                                       ; $6252: $ee $11
    ld [hl], a                                    ; $6254: $77
    ld [$1827], sp                                ; $6255: $08 $27 $18
    dec [hl]                                      ; $6258: $35
    ld [$0004], sp                                ; $6259: $08 $04 $00
    nop                                           ; $625c: $00
    nop                                           ; $625d: $00
    nop                                           ; $625e: $00
    nop                                           ; $625f: $00
    adc $01                                       ; $6260: $ce $01
    ld l, c                                       ; $6262: $69
    sub [hl]                                      ; $6263: $96
    ld [hl], l                                    ; $6264: $75
    adc d                                         ; $6265: $8a
    inc sp                                        ; $6266: $33
    call z, Call_000_20de                         ; $6267: $cc $de $20
    cp b                                          ; $626a: $b8
    ld b, b                                       ; $626b: $40
    nop                                           ; $626c: $00
    nop                                           ; $626d: $00
    nop                                           ; $626e: $00
    nop                                           ; $626f: $00
    sub a                                         ; $6270: $97
    ld l, b                                       ; $6271: $68
    ld a, e                                       ; $6272: $7b
    add h                                         ; $6273: $84
    sub b                                         ; $6274: $90
    rrca                                          ; $6275: $0f
    call c, $8f03                                 ; $6276: $dc $03 $8f
    nop                                           ; $6279: $00
    ld bc, $0000                                  ; $627a: $01 $00 $00
    nop                                           ; $627d: $00
    nop                                           ; $627e: $00
    nop                                           ; $627f: $00
    add a                                         ; $6280: $87
    nop                                           ; $6281: $00
    cp $01                                        ; $6282: $fe $01
    push hl                                       ; $6284: $e5
    ld a, [de]                                    ; $6285: $1a
    cp c                                          ; $6286: $b9
    ld b, [hl]                                    ; $6287: $46
    dec de                                        ; $6288: $1b
    call nz, Call_000_00cc                        ; $6289: $c4 $cc $00
    nop                                           ; $628c: $00
    nop                                           ; $628d: $00
    nop                                           ; $628e: $00
    nop                                           ; $628f: $00
    ldh [rP1], a                                  ; $6290: $e0 $00
    add [hl]                                      ; $6292: $86
    rra                                           ; $6293: $1f
    add hl, hl                                    ; $6294: $29
    ld a, a                                       ; $6295: $7f
    db $10                                        ; $6296: $10
    rst $38                                       ; $6297: $ff
    nop                                           ; $6298: $00
    rst $38                                       ; $6299: $ff
    nop                                           ; $629a: $00
    rst $38                                       ; $629b: $ff
    nop                                           ; $629c: $00
    rst $38                                       ; $629d: $ff
    nop                                           ; $629e: $00
    rst $38                                       ; $629f: $ff
    rrca                                          ; $62a0: $0f
    nop                                           ; $62a1: $00
    rst $20                                       ; $62a2: $e7
    ldh a, [$80]                                  ; $62a3: $f0 $80
    ld hl, sp+$30                                 ; $62a5: $f8 $30
    rst $38                                       ; $62a7: $ff
    ld [bc], a                                    ; $62a8: $02
    rst $38                                       ; $62a9: $ff
    nop                                           ; $62aa: $00
    rst $38                                       ; $62ab: $ff
    nop                                           ; $62ac: $00
    rst $38                                       ; $62ad: $ff
    nop                                           ; $62ae: $00
    rst $38                                       ; $62af: $ff
    ldh [rP1], a                                  ; $62b0: $e0 $00
    adc h                                         ; $62b2: $8c
    rra                                           ; $62b3: $1f
    dec b                                         ; $62b4: $05
    ld a, a                                       ; $62b5: $7f
    ld e, c                                       ; $62b6: $59
    rst $38                                       ; $62b7: $ff
    add b                                         ; $62b8: $80
    rst $38                                       ; $62b9: $ff
    nop                                           ; $62ba: $00
    rst $38                                       ; $62bb: $ff
    nop                                           ; $62bc: $00
    rst $38                                       ; $62bd: $ff
    nop                                           ; $62be: $00
    rst $38                                       ; $62bf: $ff
    rlca                                          ; $62c0: $07
    nop                                           ; $62c1: $00
    ld sp, $98f8                                  ; $62c2: $31 $f8 $98
    cp $14                                        ; $62c5: $fe $14
    rst $38                                       ; $62c7: $ff
    ld [$00ff], sp                                ; $62c8: $08 $ff $00
    rst $38                                       ; $62cb: $ff
    nop                                           ; $62cc: $00
    rst $38                                       ; $62cd: $ff
    nop                                           ; $62ce: $00
    rst $38                                       ; $62cf: $ff
    rst $38                                       ; $62d0: $ff
    nop                                           ; $62d1: $00
    rst $38                                       ; $62d2: $ff
    add b                                         ; $62d3: $80
    xor a                                         ; $62d4: $af
    add b                                         ; $62d5: $80
    rst $28                                       ; $62d6: $ef
    ret nz                                        ; $62d7: $c0

    db $e4                                        ; $62d8: $e4
    add b                                         ; $62d9: $80
    add b                                         ; $62da: $80
    nop                                           ; $62db: $00
    ret nz                                        ; $62dc: $c0

    ld b, b                                       ; $62dd: $40
    ldh [$e0], a                                  ; $62de: $e0 $e0
    rst $30                                       ; $62e0: $f7
    ld [$00e6], sp                                ; $62e1: $08 $e6 $00
    adc a                                         ; $62e4: $8f
    nop                                           ; $62e5: $00
    rrca                                          ; $62e6: $0f
    ld bc, $0001                                  ; $62e7: $01 $01 $00
    ld [bc], a                                    ; $62ea: $02
    nop                                           ; $62eb: $00
    inc c                                         ; $62ec: $0c
    nop                                           ; $62ed: $00
    ld bc, $ff00                                  ; $62ee: $01 $00 $ff
    nop                                           ; $62f1: $00
    cp $80                                        ; $62f2: $fe $80
    cp [hl]                                       ; $62f4: $be
    add b                                         ; $62f5: $80
    rst $28                                       ; $62f6: $ef
    ret nz                                        ; $62f7: $c0

    xor $80                                       ; $62f8: $ee $80
    add b                                         ; $62fa: $80
    nop                                           ; $62fb: $00
    jp nz, $e040                                  ; $62fc: $c2 $40 $e0

    ldh [rIE], a                                  ; $62ff: $e0 $ff
    nop                                           ; $6301: $00
    cp $00                                        ; $6302: $fe $00
    ld l, a                                       ; $6304: $6f
    nop                                           ; $6305: $00
    ld c, a                                       ; $6306: $4f
    ld bc, $0041                                  ; $6307: $01 $41 $00
    ld [hl+], a                                   ; $630a: $22
    nop                                           ; $630b: $00
    inc c                                         ; $630c: $0c
    nop                                           ; $630d: $00
    ld bc, $c000                                  ; $630e: $01 $00 $c0
    nop                                           ; $6311: $00
    stop                                          ; $6312: $10 $00
    nop                                           ; $6314: $00
    nop                                           ; $6315: $00
    add sp, -$60                                  ; $6316: $e8 $a0
    ldh a, [rSVBK]                                ; $6318: $f0 $70
    ldh [$e0], a                                  ; $631a: $e0 $e0
    db $fc                                        ; $631c: $fc
    sbc b                                         ; $631d: $98
    ldh [$60], a                                  ; $631e: $e0 $60
    inc c                                         ; $6320: $0c
    nop                                           ; $6321: $00
    rlca                                          ; $6322: $07
    nop                                           ; $6323: $00
    inc de                                        ; $6324: $13
    inc bc                                        ; $6325: $03
    add hl, de                                    ; $6326: $19
    nop                                           ; $6327: $00
    inc hl                                        ; $6328: $23
    nop                                           ; $6329: $00
    rla                                           ; $632a: $17
    ld bc, $0122                                  ; $632b: $01 $22 $01
    ld h, a                                       ; $632e: $67
    nop                                           ; $632f: $00
    or $44                                        ; $6330: $f6 $44
    db $fc                                        ; $6332: $fc
    ldh a, [$fa]                                  ; $6333: $f0 $fa
    jr jr_072_63b1                                ; $6335: $18 $7a

    xor b                                         ; $6337: $a8
    db $e4                                        ; $6338: $e4
    ld b, b                                       ; $6339: $40
    add sp, -$58                                  ; $633a: $e8 $a8
    ldh a, [$60]                                  ; $633c: $f0 $60
    ldh [$60], a                                  ; $633e: $e0 $60
    ld d, l                                       ; $6340: $55
    ld [bc], a                                    ; $6341: $02
    ld c, a                                       ; $6342: $4f
    nop                                           ; $6343: $00
    ld [bc], a                                    ; $6344: $02
    ld bc, $0027                                  ; $6345: $01 $27 $00
    ld d, e                                       ; $6348: $53
    inc bc                                        ; $6349: $03
    dec d                                         ; $634a: $15
    nop                                           ; $634b: $00
    ld h, e                                       ; $634c: $63
    nop                                           ; $634d: $00
    ld d, $01                                     ; $634e: $16 $01
    db $fc                                        ; $6350: $fc
    ld e, b                                       ; $6351: $58
    ldh [$e0], a                                  ; $6352: $e0 $e0
    or $24                                        ; $6354: $f6 $24
    db $fc                                        ; $6356: $fc
    ret nc                                        ; $6357: $d0

    ld a, [$7a58]                                 ; $6358: $fa $58 $7a
    or d                                          ; $635b: $b2
    db $f4                                        ; $635c: $f4
    nop                                           ; $635d: $00
    db $fc                                        ; $635e: $fc
    ld a, b                                       ; $635f: $78
    jr nz, @+$05                                  ; $6360: $20 $03

    ld h, l                                       ; $6362: $65
    ld [bc], a                                    ; $6363: $02
    ld de, $0702                                  ; $6364: $11 $02 $07
    nop                                           ; $6367: $00
    jp nz, $2e01                                  ; $6368: $c2 $01 $2e

    ld bc, $0152                                  ; $636b: $01 $52 $01
    ld [hl], a                                    ; $636e: $77
    ld [de], a                                    ; $636f: $12
    ldh a, [$d0]                                  ; $6370: $f0 $d0
    ret nc                                        ; $6372: $d0

    ld b, b                                       ; $6373: $40
    ret nz                                        ; $6374: $c0

    nop                                           ; $6375: $00
    nop                                           ; $6376: $00
    ret nz                                        ; $6377: $c0

    inc c                                         ; $6378: $0c
    call z, $fe1e                                 ; $6379: $cc $1e $fe
    ld a, a                                       ; $637c: $7f
    rst $38                                       ; $637d: $ff
    rst $38                                       ; $637e: $ff
    rst $38                                       ; $637f: $ff
    rla                                           ; $6380: $17
    dec b                                         ; $6381: $05
    add hl, sp                                    ; $6382: $39
    ld b, $19                                     ; $6383: $06 $19
    ld b, $00                                     ; $6385: $06 $00
    rlca                                          ; $6387: $07
    ld b, b                                       ; $6388: $40
    ld b, a                                       ; $6389: $47
    ldh a, [$f7]                                  ; $638a: $f0 $f7
    db $fc                                        ; $638c: $fc
    rst $38                                       ; $638d: $ff
    rst $38                                       ; $638e: $ff
    rst $38                                       ; $638f: $ff
    nop                                           ; $6390: $00
    rst $38                                       ; $6391: $ff
    nop                                           ; $6392: $00
    rst $38                                       ; $6393: $ff
    nop                                           ; $6394: $00
    rst $38                                       ; $6395: $ff
    nop                                           ; $6396: $00
    rst $38                                       ; $6397: $ff
    nop                                           ; $6398: $00
    rst $38                                       ; $6399: $ff
    nop                                           ; $639a: $00
    rst $38                                       ; $639b: $ff
    nop                                           ; $639c: $00
    rst $38                                       ; $639d: $ff
    nop                                           ; $639e: $00
    rst $38                                       ; $639f: $ff
    nop                                           ; $63a0: $00
    rst $38                                       ; $63a1: $ff
    ld de, $00ee                                  ; $63a2: $11 $ee $00
    rst $38                                       ; $63a5: $ff
    ld b, h                                       ; $63a6: $44
    cp e                                          ; $63a7: $bb
    nop                                           ; $63a8: $00
    rst $38                                       ; $63a9: $ff
    xor d                                         ; $63aa: $aa
    ld d, l                                       ; $63ab: $55
    ld d, l                                       ; $63ac: $55
    xor d                                         ; $63ad: $aa
    rst $38                                       ; $63ae: $ff
    nop                                           ; $63af: $00
    rst $38                                       ; $63b0: $ff

jr_072_63b1:
    nop                                           ; $63b1: $00
    rst $38                                       ; $63b2: $ff
    nop                                           ; $63b3: $00
    rst $38                                       ; $63b4: $ff
    nop                                           ; $63b5: $00
    rst $38                                       ; $63b6: $ff
    nop                                           ; $63b7: $00
    ld [hl], a                                    ; $63b8: $77
    nop                                           ; $63b9: $00
    rst $38                                       ; $63ba: $ff
    nop                                           ; $63bb: $00
    ld d, l                                       ; $63bc: $55
    nop                                           ; $63bd: $00
    xor d                                         ; $63be: $aa
    nop                                           ; $63bf: $00
    rst $38                                       ; $63c0: $ff
    rst $38                                       ; $63c1: $ff
    rst $38                                       ; $63c2: $ff
    rst $38                                       ; $63c3: $ff
    rst $38                                       ; $63c4: $ff
    rst $38                                       ; $63c5: $ff
    rst $38                                       ; $63c6: $ff
    rst $38                                       ; $63c7: $ff
    rst $38                                       ; $63c8: $ff
    rst $38                                       ; $63c9: $ff
    rst $38                                       ; $63ca: $ff
    rst $38                                       ; $63cb: $ff
    rst $38                                       ; $63cc: $ff
    rst $38                                       ; $63cd: $ff
    rst $38                                       ; $63ce: $ff
    rst $38                                       ; $63cf: $ff
    rst $38                                       ; $63d0: $ff
    pop hl                                        ; $63d1: $e1
    rst $38                                       ; $63d2: $ff
    add b                                         ; $63d3: $80
    rst $38                                       ; $63d4: $ff
    nop                                           ; $63d5: $00
    rst $30                                       ; $63d6: $f7
    nop                                           ; $63d7: $00
    rst $10                                       ; $63d8: $d7
    nop                                           ; $63d9: $00
    ret nz                                        ; $63da: $c0

    nop                                           ; $63db: $00
    ccf                                           ; $63dc: $3f
    nop                                           ; $63dd: $00
    db $ed                                        ; $63de: $ed
    ld [de], a                                    ; $63df: $12
    rst $38                                       ; $63e0: $ff
    rst $38                                       ; $63e1: $ff
    rst $38                                       ; $63e2: $ff
    ld a, a                                       ; $63e3: $7f
    rst $38                                       ; $63e4: $ff
    ld e, $ff                                     ; $63e5: $1e $ff
    nop                                           ; $63e7: $00
    rst $38                                       ; $63e8: $ff
    nop                                           ; $63e9: $00
    adc $00                                       ; $63ea: $ce $00
    ld h, c                                       ; $63ec: $61
    nop                                           ; $63ed: $00
    add e                                         ; $63ee: $83
    nop                                           ; $63ef: $00
    rst $38                                       ; $63f0: $ff
    pop hl                                        ; $63f1: $e1
    rst $38                                       ; $63f2: $ff
    add b                                         ; $63f3: $80
    rst $38                                       ; $63f4: $ff
    nop                                           ; $63f5: $00
    rst $30                                       ; $63f6: $f7
    nop                                           ; $63f7: $00
    rst $30                                       ; $63f8: $f7
    nop                                           ; $63f9: $00
    ld de, $c600                                  ; $63fa: $11 $00 $c6
    nop                                           ; $63fd: $00
    ld a, e                                       ; $63fe: $7b
    add h                                         ; $63ff: $84
    rst $38                                       ; $6400: $ff
    rst $38                                       ; $6401: $ff
    rst $38                                       ; $6402: $ff
    ld a, a                                       ; $6403: $7f
    rst $38                                       ; $6404: $ff
    ld e, $ff                                     ; $6405: $1e $ff
    nop                                           ; $6407: $00
    rst $38                                       ; $6408: $ff
    nop                                           ; $6409: $00
    ei                                            ; $640a: $fb
    nop                                           ; $640b: $00
    ld h, e                                       ; $640c: $63
    nop                                           ; $640d: $00
    nop                                           ; $640e: $00
    nop                                           ; $640f: $00
    or [hl]                                       ; $6410: $b6
    ld c, c                                       ; $6411: $49
    ld [hl], a                                    ; $6412: $77
    adc b                                         ; $6413: $88
    cp e                                          ; $6414: $bb
    inc b                                         ; $6415: $04
    sub e                                         ; $6416: $93
    inc c                                         ; $6417: $0c
    sbc d                                         ; $6418: $9a
    inc b                                         ; $6419: $04
    ld [bc], a                                    ; $641a: $02
    nop                                           ; $641b: $00
    nop                                           ; $641c: $00
    nop                                           ; $641d: $00
    nop                                           ; $641e: $00
    nop                                           ; $641f: $00
    rst $20                                       ; $6420: $e7
    nop                                           ; $6421: $00
    inc [hl]                                      ; $6422: $34
    res 7, d                                      ; $6423: $cb $ba
    ld b, l                                       ; $6425: $45
    sbc c                                         ; $6426: $99
    ld h, [hl]                                    ; $6427: $66
    rst $28                                       ; $6428: $ef
    db $10                                        ; $6429: $10
    ld e, h                                       ; $642a: $5c
    jr nz, jr_072_642d                            ; $642b: $20 $00

jr_072_642d:
    nop                                           ; $642d: $00
    nop                                           ; $642e: $00
    nop                                           ; $642f: $00
    ld c, e                                       ; $6430: $4b
    or h                                          ; $6431: $b4
    cp l                                          ; $6432: $bd
    ld b, d                                       ; $6433: $42
    ret z                                         ; $6434: $c8

    rlca                                          ; $6435: $07
    xor $01                                       ; $6436: $ee $01
    ld b, a                                       ; $6438: $47
    nop                                           ; $6439: $00
    nop                                           ; $643a: $00
    nop                                           ; $643b: $00
    nop                                           ; $643c: $00
    nop                                           ; $643d: $00
    nop                                           ; $643e: $00
    nop                                           ; $643f: $00
    jp $ff00                                      ; $6440: $c3 $00 $ff


    nop                                           ; $6443: $00
    ld [hl], d                                    ; $6444: $72
    adc l                                         ; $6445: $8d
    ld e, h                                       ; $6446: $5c
    and e                                         ; $6447: $a3
    adc l                                         ; $6448: $8d
    ld h, d                                       ; $6449: $62
    and $00                                       ; $644a: $e6 $00
    nop                                           ; $644c: $00
    nop                                           ; $644d: $00
    nop                                           ; $644e: $00
    nop                                           ; $644f: $00
    ldh a, [rP1]                                  ; $6450: $f0 $00
    jp Jump_000_140f                              ; $6452: $c3 $0f $14


    ccf                                           ; $6455: $3f
    ld [$00ff], sp                                ; $6456: $08 $ff $00
    rst $38                                       ; $6459: $ff
    nop                                           ; $645a: $00
    rst $38                                       ; $645b: $ff
    nop                                           ; $645c: $00
    rst $38                                       ; $645d: $ff
    nop                                           ; $645e: $00
    rst $38                                       ; $645f: $ff
    rlca                                          ; $6460: $07
    nop                                           ; $6461: $00
    ld [hl], e                                    ; $6462: $73
    ld hl, sp-$40                                 ; $6463: $f8 $c0
    db $fc                                        ; $6465: $fc
    jr @+$01                                      ; $6466: $18 $ff

    ld bc, $00ff                                  ; $6468: $01 $ff $00
    rst $38                                       ; $646b: $ff
    nop                                           ; $646c: $00
    rst $38                                       ; $646d: $ff
    nop                                           ; $646e: $00
    rst $38                                       ; $646f: $ff
    ldh a, [rP1]                                  ; $6470: $f0 $00
    add $0f                                       ; $6472: $c6 $0f
    ld [bc], a                                    ; $6474: $02
    ccf                                           ; $6475: $3f
    inc l                                         ; $6476: $2c
    rst $38                                       ; $6477: $ff
    ld b, b                                       ; $6478: $40
    rst $38                                       ; $6479: $ff
    nop                                           ; $647a: $00
    rst $38                                       ; $647b: $ff
    nop                                           ; $647c: $00
    rst $38                                       ; $647d: $ff
    nop                                           ; $647e: $00
    rst $38                                       ; $647f: $ff

jr_072_6480:
    inc bc                                        ; $6480: $03
    nop                                           ; $6481: $00
    jr jr_072_6480                                ; $6482: $18 $fc

    call z, $8aff                                 ; $6484: $cc $ff $8a
    rst $38                                       ; $6487: $ff
    inc b                                         ; $6488: $04
    rst $38                                       ; $6489: $ff
    nop                                           ; $648a: $00
    rst $38                                       ; $648b: $ff
    nop                                           ; $648c: $00
    rst $38                                       ; $648d: $ff
    nop                                           ; $648e: $00

jr_072_648f:
    rst $38                                       ; $648f: $ff
    rst $38                                       ; $6490: $ff
    nop                                           ; $6491: $00
    ld a, a                                       ; $6492: $7f
    ld b, b                                       ; $6493: $40
    rst $10                                       ; $6494: $d7
    ld b, b                                       ; $6495: $40
    rst $30                                       ; $6496: $f7
    ldh [$f2], a                                  ; $6497: $e0 $f2
    ld b, b                                       ; $6499: $40
    ld b, b                                       ; $649a: $40
    nop                                           ; $649b: $00
    ld h, b                                       ; $649c: $60
    jr nz, jr_072_648f                            ; $649d: $20 $f0

    ld [hl], b                                    ; $649f: $70
    ei                                            ; $64a0: $fb
    inc b                                         ; $64a1: $04
    di                                            ; $64a2: $f3
    nop                                           ; $64a3: $00
    rst $00                                       ; $64a4: $c7
    nop                                           ; $64a5: $00
    add a                                         ; $64a6: $87
    nop                                           ; $64a7: $00
    nop                                           ; $64a8: $00
    nop                                           ; $64a9: $00
    ld bc, $0600                                  ; $64aa: $01 $00 $06
    nop                                           ; $64ad: $00
    nop                                           ; $64ae: $00

jr_072_64af:
    nop                                           ; $64af: $00
    rst $38                                       ; $64b0: $ff
    nop                                           ; $64b1: $00
    ld a, a                                       ; $64b2: $7f
    ld b, b                                       ; $64b3: $40
    rst $18                                       ; $64b4: $df
    ld b, b                                       ; $64b5: $40
    rst $30                                       ; $64b6: $f7
    ldh [$f7], a                                  ; $64b7: $e0 $f7
    ld b, b                                       ; $64b9: $40
    ld b, b                                       ; $64ba: $40
    nop                                           ; $64bb: $00
    ld h, c                                       ; $64bc: $61
    jr nz, jr_072_64af                            ; $64bd: $20 $f0

    ld [hl], b                                    ; $64bf: $70
    rst $38                                       ; $64c0: $ff
    nop                                           ; $64c1: $00
    ld a, a                                       ; $64c2: $7f
    nop                                           ; $64c3: $00
    scf                                           ; $64c4: $37
    nop                                           ; $64c5: $00
    and a                                         ; $64c6: $a7
    nop                                           ; $64c7: $00
    jr nz, jr_072_64ca                            ; $64c8: $20 $00

jr_072_64ca:
    ld de, $0600                                  ; $64ca: $11 $00 $06
    nop                                           ; $64cd: $00
    nop                                           ; $64ce: $00
    nop                                           ; $64cf: $00
    ld h, b                                       ; $64d0: $60
    nop                                           ; $64d1: $00
    adc b                                         ; $64d2: $88
    nop                                           ; $64d3: $00
    add b                                         ; $64d4: $80
    add b                                         ; $64d5: $80
    db $f4                                        ; $64d6: $f4
    ld d, b                                       ; $64d7: $50
    ld hl, sp+$38                                 ; $64d8: $f8 $38
    ldh a, [$f0]                                  ; $64da: $f0 $f0
    ld a, [hl]                                    ; $64dc: $7e
    call z, $30f0                                 ; $64dd: $cc $f0 $30
    ld b, $00                                     ; $64e0: $06 $00
    inc bc                                        ; $64e2: $03
    nop                                           ; $64e3: $00
    add hl, bc                                    ; $64e4: $09
    ld bc, $000c                                  ; $64e5: $01 $0c $00
    ld de, $0b00                                  ; $64e8: $11 $00 $0b
    nop                                           ; $64eb: $00
    ld de, $3300                                  ; $64ec: $11 $00 $33
    nop                                           ; $64ef: $00
    ei                                            ; $64f0: $fb
    ld [hl+], a                                   ; $64f1: $22
    cp $78                                        ; $64f2: $fe $78
    ld a, l                                       ; $64f4: $7d
    adc h                                         ; $64f5: $8c
    cp l                                          ; $64f6: $bd
    ld d, h                                       ; $64f7: $54
    ld a, [c]                                     ; $64f8: $f2
    and b                                         ; $64f9: $a0
    db $f4                                        ; $64fa: $f4
    ld d, h                                       ; $64fb: $54
    ld hl, sp+$30                                 ; $64fc: $f8 $30
    ld [hl], b                                    ; $64fe: $70
    or b                                          ; $64ff: $b0
    ld a, [hl+]                                   ; $6500: $2a
    ld bc, $0027                                  ; $6501: $01 $27 $00
    ld bc, $1300                                  ; $6504: $01 $00 $13
    nop                                           ; $6507: $00
    add hl, hl                                    ; $6508: $29
    ld bc, $000a                                  ; $6509: $01 $0a $00
    ld sp, $0b00                                  ; $650c: $31 $00 $0b
    nop                                           ; $650f: $00
    ld a, [hl]                                    ; $6510: $7e
    xor h                                         ; $6511: $ac
    ldh a, [rSVBK]                                ; $6512: $f0 $70
    ei                                            ; $6514: $fb
    ld [de], a                                    ; $6515: $12
    cp $68                                        ; $6516: $fe $68
    ld a, l                                       ; $6518: $7d
    xor h                                         ; $6519: $ac
    dec a                                         ; $651a: $3d
    reti                                          ; $651b: $d9


    ld a, d                                       ; $651c: $7a
    add b                                         ; $651d: $80
    cp $3c                                        ; $651e: $fe $3c
    db $10                                        ; $6520: $10
    ld bc, $0132                                  ; $6521: $01 $32 $01
    ld [$0301], sp                                ; $6524: $08 $01 $03
    nop                                           ; $6527: $00
    ld h, c                                       ; $6528: $61
    nop                                           ; $6529: $00
    rla                                           ; $652a: $17
    nop                                           ; $652b: $00
    add hl, hl                                    ; $652c: $29
    nop                                           ; $652d: $00
    dec sp                                        ; $652e: $3b
    add hl, bc                                    ; $652f: $09
    ld hl, sp-$18                                 ; $6530: $f8 $e8
    add sp, $20                                   ; $6532: $e8 $20
    ldh [rP1], a                                  ; $6534: $e0 $00
    nop                                           ; $6536: $00
    ldh [rTMA], a                                 ; $6537: $e0 $06
    and $0f                                       ; $6539: $e6 $0f
    rst $38                                       ; $653b: $ff
    ccf                                           ; $653c: $3f
    rst $38                                       ; $653d: $ff
    rst $38                                       ; $653e: $ff
    rst $38                                       ; $653f: $ff
    dec bc                                        ; $6540: $0b
    ld [bc], a                                    ; $6541: $02
    inc e                                         ; $6542: $1c
    inc bc                                        ; $6543: $03
    inc c                                         ; $6544: $0c
    inc bc                                        ; $6545: $03
    nop                                           ; $6546: $00
    inc bc                                        ; $6547: $03
    jr nz, jr_072_656d                            ; $6548: $20 $23

    ld a, b                                       ; $654a: $78
    ld a, e                                       ; $654b: $7b
    cp $ff                                        ; $654c: $fe $ff
    rst $38                                       ; $654e: $ff
    rst $38                                       ; $654f: $ff
    nop                                           ; $6550: $00
    rst $38                                       ; $6551: $ff
    nop                                           ; $6552: $00
    rst $38                                       ; $6553: $ff
    nop                                           ; $6554: $00
    rst $38                                       ; $6555: $ff
    nop                                           ; $6556: $00
    rst $38                                       ; $6557: $ff
    nop                                           ; $6558: $00
    rst $38                                       ; $6559: $ff
    nop                                           ; $655a: $00
    rst $38                                       ; $655b: $ff
    nop                                           ; $655c: $00
    rst $38                                       ; $655d: $ff
    nop                                           ; $655e: $00
    rst $38                                       ; $655f: $ff
    nop                                           ; $6560: $00
    rst $38                                       ; $6561: $ff
    ld de, $00ee                                  ; $6562: $11 $ee $00
    rst $38                                       ; $6565: $ff
    ld b, h                                       ; $6566: $44
    cp e                                          ; $6567: $bb
    nop                                           ; $6568: $00
    rst $38                                       ; $6569: $ff
    xor d                                         ; $656a: $aa
    ld d, l                                       ; $656b: $55
    ld d, l                                       ; $656c: $55

jr_072_656d:
    xor d                                         ; $656d: $aa
    rst $38                                       ; $656e: $ff
    nop                                           ; $656f: $00
    rst $38                                       ; $6570: $ff
    nop                                           ; $6571: $00
    rst $38                                       ; $6572: $ff
    nop                                           ; $6573: $00
    rst $38                                       ; $6574: $ff
    nop                                           ; $6575: $00
    rst $38                                       ; $6576: $ff
    nop                                           ; $6577: $00
    ld [hl], a                                    ; $6578: $77
    nop                                           ; $6579: $00
    rst $38                                       ; $657a: $ff
    nop                                           ; $657b: $00
    ld d, l                                       ; $657c: $55
    nop                                           ; $657d: $00
    xor d                                         ; $657e: $aa
    nop                                           ; $657f: $00
    rst $38                                       ; $6580: $ff
    rst $38                                       ; $6581: $ff
    rst $38                                       ; $6582: $ff
    rst $38                                       ; $6583: $ff
    rst $38                                       ; $6584: $ff
    rst $38                                       ; $6585: $ff
    rst $38                                       ; $6586: $ff
    rst $38                                       ; $6587: $ff
    rst $38                                       ; $6588: $ff
    rst $38                                       ; $6589: $ff
    rst $38                                       ; $658a: $ff
    rst $38                                       ; $658b: $ff
    rst $38                                       ; $658c: $ff
    rst $38                                       ; $658d: $ff
    rst $38                                       ; $658e: $ff
    rst $38                                       ; $658f: $ff
    rst $38                                       ; $6590: $ff
    ld hl, sp-$01                                 ; $6591: $f8 $ff
    ldh [rIE], a                                  ; $6593: $e0 $ff
    add b                                         ; $6595: $80
    db $fd                                        ; $6596: $fd
    nop                                           ; $6597: $00
    push af                                       ; $6598: $f5
    nop                                           ; $6599: $00
    ldh [rP1], a                                  ; $659a: $e0 $00
    sbc a                                         ; $659c: $9f
    nop                                           ; $659d: $00
    halt                                          ; $659e: $76
    add hl, bc                                    ; $659f: $09
    rst $38                                       ; $65a0: $ff
    ld a, a                                       ; $65a1: $7f
    rst $38                                       ; $65a2: $ff
    rra                                           ; $65a3: $1f
    rst $38                                       ; $65a4: $ff
    rlca                                          ; $65a5: $07
    rst $38                                       ; $65a6: $ff
    nop                                           ; $65a7: $00
    rst $38                                       ; $65a8: $ff
    nop                                           ; $65a9: $00
    inc sp                                        ; $65aa: $33
    nop                                           ; $65ab: $00
    sbc b                                         ; $65ac: $98
    nop                                           ; $65ad: $00
    pop bc                                        ; $65ae: $c1
    nop                                           ; $65af: $00
    rst $38                                       ; $65b0: $ff
    ld hl, sp-$01                                 ; $65b1: $f8 $ff
    ldh [rIE], a                                  ; $65b3: $e0 $ff
    add b                                         ; $65b5: $80
    db $fd                                        ; $65b6: $fd
    nop                                           ; $65b7: $00
    db $fd                                        ; $65b8: $fd
    nop                                           ; $65b9: $00
    inc d                                         ; $65ba: $14
    nop                                           ; $65bb: $00
    db $e3                                        ; $65bc: $e3
    nop                                           ; $65bd: $00
    cp l                                          ; $65be: $bd
    ld b, d                                       ; $65bf: $42
    rst $38                                       ; $65c0: $ff
    ld a, a                                       ; $65c1: $7f
    rst $38                                       ; $65c2: $ff
    rra                                           ; $65c3: $1f
    rst $38                                       ; $65c4: $ff
    rlca                                          ; $65c5: $07
    rst $38                                       ; $65c6: $ff
    nop                                           ; $65c7: $00
    rst $38                                       ; $65c8: $ff
    nop                                           ; $65c9: $00
    cp $00                                        ; $65ca: $fe $00
    jr jr_072_65ce                                ; $65cc: $18 $00

jr_072_65ce:
    add b                                         ; $65ce: $80
    nop                                           ; $65cf: $00
    db $db                                        ; $65d0: $db
    inc h                                         ; $65d1: $24
    cp e                                          ; $65d2: $bb
    ld b, h                                       ; $65d3: $44
    ld e, l                                       ; $65d4: $5d
    add d                                         ; $65d5: $82
    ld c, c                                       ; $65d6: $49
    add [hl]                                      ; $65d7: $86
    call $0102                                    ; $65d8: $cd $02 $01
    nop                                           ; $65db: $00
    nop                                           ; $65dc: $00
    nop                                           ; $65dd: $00
    nop                                           ; $65de: $00
    nop                                           ; $65df: $00
    ld [hl], e                                    ; $65e0: $73
    add b                                         ; $65e1: $80
    sbc d                                         ; $65e2: $9a
    ld h, l                                       ; $65e3: $65
    db $dd                                        ; $65e4: $dd
    ld [hl+], a                                   ; $65e5: $22
    call z, Call_072_7733                         ; $65e6: $cc $33 $77
    ld [$102e], sp                                ; $65e9: $08 $2e $10
    nop                                           ; $65ec: $00
    nop                                           ; $65ed: $00
    nop                                           ; $65ee: $00
    nop                                           ; $65ef: $00
    and l                                         ; $65f0: $a5
    ld e, d                                       ; $65f1: $5a
    ld e, [hl]                                    ; $65f2: $5e
    and c                                         ; $65f3: $a1
    ld h, h                                       ; $65f4: $64
    add e                                         ; $65f5: $83
    rst $30                                       ; $65f6: $f7
    nop                                           ; $65f7: $00
    and e                                         ; $65f8: $a3
    nop                                           ; $65f9: $00
    nop                                           ; $65fa: $00
    nop                                           ; $65fb: $00
    nop                                           ; $65fc: $00
    nop                                           ; $65fd: $00
    nop                                           ; $65fe: $00
    nop                                           ; $65ff: $00
    pop hl                                        ; $6600: $e1
    nop                                           ; $6601: $00
    rst $38                                       ; $6602: $ff
    nop                                           ; $6603: $00
    add hl, sp                                    ; $6604: $39
    add $2e                                       ; $6605: $c6 $2e
    pop de                                        ; $6607: $d1
    add $31                                       ; $6608: $c6 $31
    ld [hl], e                                    ; $660a: $73
    nop                                           ; $660b: $00
    nop                                           ; $660c: $00
    nop                                           ; $660d: $00
    nop                                           ; $660e: $00
    nop                                           ; $660f: $00
    ld hl, sp+$00                                 ; $6610: $f8 $00
    ld h, c                                       ; $6612: $61
    rlca                                          ; $6613: $07
    ld a, [bc]                                    ; $6614: $0a
    sbc a                                         ; $6615: $9f
    inc b                                         ; $6616: $04
    rst $38                                       ; $6617: $ff
    nop                                           ; $6618: $00
    rst $38                                       ; $6619: $ff
    nop                                           ; $661a: $00
    rst $38                                       ; $661b: $ff
    nop                                           ; $661c: $00
    rst $38                                       ; $661d: $ff
    nop                                           ; $661e: $00
    rst $38                                       ; $661f: $ff
    inc bc                                        ; $6620: $03
    nop                                           ; $6621: $00
    cp c                                          ; $6622: $b9
    db $fc                                        ; $6623: $fc
    ld h, b                                       ; $6624: $60
    cp $0c                                        ; $6625: $fe $0c
    rst $38                                       ; $6627: $ff
    nop                                           ; $6628: $00
    rst $38                                       ; $6629: $ff
    nop                                           ; $662a: $00
    rst $38                                       ; $662b: $ff
    nop                                           ; $662c: $00
    rst $38                                       ; $662d: $ff
    nop                                           ; $662e: $00
    rst $38                                       ; $662f: $ff
    ld hl, sp+$00                                 ; $6630: $f8 $00
    db $e3                                        ; $6632: $e3
    rlca                                          ; $6633: $07
    ld bc, $161f                                  ; $6634: $01 $1f $16
    rst $38                                       ; $6637: $ff
    and b                                         ; $6638: $a0
    rst $38                                       ; $6639: $ff
    nop                                           ; $663a: $00
    rst $38                                       ; $663b: $ff
    nop                                           ; $663c: $00
    rst $38                                       ; $663d: $ff
    nop                                           ; $663e: $00
    rst $38                                       ; $663f: $ff
    ld bc, $0c00                                  ; $6640: $01 $00 $0c
    cp $66                                        ; $6643: $fe $66
    rst $38                                       ; $6645: $ff
    ld b, l                                       ; $6646: $45
    rst $38                                       ; $6647: $ff
    ld [bc], a                                    ; $6648: $02
    rst $38                                       ; $6649: $ff
    nop                                           ; $664a: $00
    rst $38                                       ; $664b: $ff
    nop                                           ; $664c: $00
    rst $38                                       ; $664d: $ff
    nop                                           ; $664e: $00

jr_072_664f:
    rst $38                                       ; $664f: $ff
    rst $38                                       ; $6650: $ff
    nop                                           ; $6651: $00
    ld a, a                                       ; $6652: $7f
    ld b, b                                       ; $6653: $40
    db $db                                        ; $6654: $db
    ld b, b                                       ; $6655: $40
    ei                                            ; $6656: $fb
    ldh [$f9], a                                  ; $6657: $e0 $f9
    ld b, b                                       ; $6659: $40
    ld b, b                                       ; $665a: $40
    nop                                           ; $665b: $00
    ld h, b                                       ; $665c: $60
    jr nz, jr_072_664f                            ; $665d: $20 $f0

    ld [hl], b                                    ; $665f: $70
    db $fd                                        ; $6660: $fd
    ld [bc], a                                    ; $6661: $02
    ld sp, hl                                     ; $6662: $f9
    nop                                           ; $6663: $00
    db $e3                                        ; $6664: $e3
    nop                                           ; $6665: $00
    jp RST_00                                     ; $6666: $c3 $00 $00


    nop                                           ; $6669: $00
    ld bc, $0600                                  ; $666a: $01 $00 $06
    nop                                           ; $666d: $00
    nop                                           ; $666e: $00

jr_072_666f:
    nop                                           ; $666f: $00
    rst $38                                       ; $6670: $ff
    nop                                           ; $6671: $00
    ld a, a                                       ; $6672: $7f
    ld b, b                                       ; $6673: $40
    rst $18                                       ; $6674: $df
    ld b, b                                       ; $6675: $40
    ei                                            ; $6676: $fb
    ldh [$fb], a                                  ; $6677: $e0 $fb
    ld b, b                                       ; $6679: $40
    ld b, b                                       ; $667a: $40
    nop                                           ; $667b: $00
    ld h, b                                       ; $667c: $60
    jr nz, jr_072_666f                            ; $667d: $20 $f0

    ld [hl], b                                    ; $667f: $70
    rst $38                                       ; $6680: $ff
    nop                                           ; $6681: $00
    cp a                                          ; $6682: $bf
    nop                                           ; $6683: $00
    sbc e                                         ; $6684: $9b
    nop                                           ; $6685: $00
    db $d3                                        ; $6686: $d3
    nop                                           ; $6687: $00
    sub b                                         ; $6688: $90
    nop                                           ; $6689: $00
    add hl, bc                                    ; $668a: $09
    nop                                           ; $668b: $00
    add [hl]                                      ; $668c: $86
    nop                                           ; $668d: $00
    nop                                           ; $668e: $00
    nop                                           ; $668f: $00
    ld h, b                                       ; $6690: $60
    nop                                           ; $6691: $00
    adc b                                         ; $6692: $88
    nop                                           ; $6693: $00
    add b                                         ; $6694: $80
    add b                                         ; $6695: $80
    db $f4                                        ; $6696: $f4
    ld d, b                                       ; $6697: $50
    ld hl, sp+$38                                 ; $6698: $f8 $38
    ldh a, [$f0]                                  ; $669a: $f0 $f0
    ld a, [hl]                                    ; $669c: $7e
    call z, $30f0                                 ; $669d: $cc $f0 $30
    ld b, $00                                     ; $66a0: $06 $00
    inc bc                                        ; $66a2: $03
    nop                                           ; $66a3: $00
    add hl, bc                                    ; $66a4: $09
    ld bc, $000c                                  ; $66a5: $01 $0c $00
    ld de, $0b00                                  ; $66a8: $11 $00 $0b
    nop                                           ; $66ab: $00
    ld de, $3300                                  ; $66ac: $11 $00 $33
    nop                                           ; $66af: $00
    ei                                            ; $66b0: $fb
    ld [hl+], a                                   ; $66b1: $22
    cp $78                                        ; $66b2: $fe $78
    ld a, l                                       ; $66b4: $7d
    adc h                                         ; $66b5: $8c
    cp l                                          ; $66b6: $bd
    ld d, h                                       ; $66b7: $54
    ld a, [c]                                     ; $66b8: $f2
    and b                                         ; $66b9: $a0
    db $f4                                        ; $66ba: $f4
    ld d, h                                       ; $66bb: $54
    ld hl, sp+$30                                 ; $66bc: $f8 $30
    ld [hl], b                                    ; $66be: $70
    or b                                          ; $66bf: $b0
    ld a, [hl+]                                   ; $66c0: $2a
    ld bc, $0027                                  ; $66c1: $01 $27 $00
    ld bc, $1300                                  ; $66c4: $01 $00 $13
    nop                                           ; $66c7: $00
    add hl, hl                                    ; $66c8: $29
    ld bc, $000a                                  ; $66c9: $01 $0a $00
    ld sp, $0b00                                  ; $66cc: $31 $00 $0b
    nop                                           ; $66cf: $00
    ld a, [hl]                                    ; $66d0: $7e
    xor h                                         ; $66d1: $ac
    ldh a, [rSVBK]                                ; $66d2: $f0 $70
    ei                                            ; $66d4: $fb
    ld [de], a                                    ; $66d5: $12
    cp $68                                        ; $66d6: $fe $68
    ld a, l                                       ; $66d8: $7d
    xor h                                         ; $66d9: $ac
    dec a                                         ; $66da: $3d
    reti                                          ; $66db: $d9


    ld a, d                                       ; $66dc: $7a
    add b                                         ; $66dd: $80
    cp $3c                                        ; $66de: $fe $3c
    db $10                                        ; $66e0: $10
    ld bc, $0132                                  ; $66e1: $01 $32 $01
    ld [$0301], sp                                ; $66e4: $08 $01 $03
    nop                                           ; $66e7: $00
    ld h, c                                       ; $66e8: $61
    nop                                           ; $66e9: $00
    rla                                           ; $66ea: $17
    nop                                           ; $66eb: $00
    add hl, hl                                    ; $66ec: $29
    nop                                           ; $66ed: $00
    dec sp                                        ; $66ee: $3b
    add hl, bc                                    ; $66ef: $09
    ld hl, sp-$18                                 ; $66f0: $f8 $e8
    add sp, $20                                   ; $66f2: $e8 $20
    ldh [rP1], a                                  ; $66f4: $e0 $00
    nop                                           ; $66f6: $00
    ldh [rTMA], a                                 ; $66f7: $e0 $06
    and $0f                                       ; $66f9: $e6 $0f
    rst $38                                       ; $66fb: $ff
    ccf                                           ; $66fc: $3f
    rst $38                                       ; $66fd: $ff
    rst $38                                       ; $66fe: $ff
    rst $38                                       ; $66ff: $ff
    dec bc                                        ; $6700: $0b
    ld [bc], a                                    ; $6701: $02
    inc e                                         ; $6702: $1c
    inc bc                                        ; $6703: $03
    inc c                                         ; $6704: $0c
    inc bc                                        ; $6705: $03
    nop                                           ; $6706: $00
    inc bc                                        ; $6707: $03
    jr nz, jr_072_672d                            ; $6708: $20 $23

    ld a, b                                       ; $670a: $78
    ld a, e                                       ; $670b: $7b
    cp $ff                                        ; $670c: $fe $ff
    rst $38                                       ; $670e: $ff
    rst $38                                       ; $670f: $ff
    nop                                           ; $6710: $00
    rst $38                                       ; $6711: $ff
    nop                                           ; $6712: $00
    rst $38                                       ; $6713: $ff
    nop                                           ; $6714: $00
    rst $38                                       ; $6715: $ff
    nop                                           ; $6716: $00
    rst $38                                       ; $6717: $ff
    nop                                           ; $6718: $00
    rst $38                                       ; $6719: $ff
    nop                                           ; $671a: $00
    rst $38                                       ; $671b: $ff
    nop                                           ; $671c: $00
    rst $38                                       ; $671d: $ff
    nop                                           ; $671e: $00
    rst $38                                       ; $671f: $ff
    nop                                           ; $6720: $00
    rst $38                                       ; $6721: $ff
    adc b                                         ; $6722: $88
    ld [hl], a                                    ; $6723: $77
    nop                                           ; $6724: $00
    rst $38                                       ; $6725: $ff
    ld [hl+], a                                   ; $6726: $22
    db $dd                                        ; $6727: $dd
    nop                                           ; $6728: $00
    rst $38                                       ; $6729: $ff
    ld d, l                                       ; $672a: $55
    xor d                                         ; $672b: $aa
    xor d                                         ; $672c: $aa

jr_072_672d:
    ld d, l                                       ; $672d: $55
    rst $38                                       ; $672e: $ff
    nop                                           ; $672f: $00
    rst $38                                       ; $6730: $ff
    nop                                           ; $6731: $00
    rst $38                                       ; $6732: $ff
    nop                                           ; $6733: $00
    rst $38                                       ; $6734: $ff
    nop                                           ; $6735: $00
    rst $38                                       ; $6736: $ff
    nop                                           ; $6737: $00
    cp e                                          ; $6738: $bb
    nop                                           ; $6739: $00
    rst $38                                       ; $673a: $ff
    nop                                           ; $673b: $00
    xor d                                         ; $673c: $aa
    nop                                           ; $673d: $00
    ld d, l                                       ; $673e: $55
    nop                                           ; $673f: $00
    rst $38                                       ; $6740: $ff
    rst $38                                       ; $6741: $ff
    rst $38                                       ; $6742: $ff
    rst $38                                       ; $6743: $ff
    rst $38                                       ; $6744: $ff
    rst $38                                       ; $6745: $ff
    rst $38                                       ; $6746: $ff
    rst $38                                       ; $6747: $ff
    rst $38                                       ; $6748: $ff
    rst $38                                       ; $6749: $ff
    rst $38                                       ; $674a: $ff
    rst $38                                       ; $674b: $ff
    rst $38                                       ; $674c: $ff
    rst $38                                       ; $674d: $ff
    rst $38                                       ; $674e: $ff
    rst $38                                       ; $674f: $ff
    rst $38                                       ; $6750: $ff
    cp $ff                                        ; $6751: $fe $ff
    ld hl, sp-$01                                 ; $6753: $f8 $ff
    ldh [rIE], a                                  ; $6755: $e0 $ff
    nop                                           ; $6757: $00
    db $fd                                        ; $6758: $fd
    nop                                           ; $6759: $00
    or b                                          ; $675a: $b0
    nop                                           ; $675b: $00
    rrca                                          ; $675c: $0f
    nop                                           ; $675d: $00
    dec sp                                        ; $675e: $3b
    inc b                                         ; $675f: $04
    rst $38                                       ; $6760: $ff
    rra                                           ; $6761: $1f
    rst $38                                       ; $6762: $ff
    rlca                                          ; $6763: $07
    rst $38                                       ; $6764: $ff
    ld bc, $007f                                  ; $6765: $01 $7f $00
    ld a, a                                       ; $6768: $7f
    nop                                           ; $6769: $00
    inc l                                         ; $676a: $2c
    nop                                           ; $676b: $00
    add $00                                       ; $676c: $c6 $00
    ld h, b                                       ; $676e: $60
    add b                                         ; $676f: $80
    rst $38                                       ; $6770: $ff
    cp $ff                                        ; $6771: $fe $ff
    ld hl, sp-$01                                 ; $6773: $f8 $ff
    ldh [rIE], a                                  ; $6775: $e0 $ff
    nop                                           ; $6777: $00
    rst $38                                       ; $6778: $ff
    nop                                           ; $6779: $00
    adc h                                         ; $677a: $8c
    nop                                           ; $677b: $00
    ld [hl], c                                    ; $677c: $71
    nop                                           ; $677d: $00
    sbc $21                                       ; $677e: $de $21
    rst $38                                       ; $6780: $ff
    rra                                           ; $6781: $1f
    rst $38                                       ; $6782: $ff
    rlca                                          ; $6783: $07
    rst $38                                       ; $6784: $ff
    ld bc, $007f                                  ; $6785: $01 $7f $00
    ld a, a                                       ; $6788: $7f
    nop                                           ; $6789: $00
    ccf                                           ; $678a: $3f
    nop                                           ; $678b: $00
    and [hl]                                      ; $678c: $a6
    nop                                           ; $678d: $00
    ret nz                                        ; $678e: $c0

    nop                                           ; $678f: $00
    db $ed                                        ; $6790: $ed
    ld [de], a                                    ; $6791: $12
    db $dd                                        ; $6792: $dd
    ld [hl+], a                                   ; $6793: $22
    xor [hl]                                      ; $6794: $ae
    ld b, c                                       ; $6795: $41
    inc h                                         ; $6796: $24
    jp $8166                                      ; $6797: $c3 $66 $81


    add b                                         ; $679a: $80
    nop                                           ; $679b: $00
    nop                                           ; $679c: $00
    nop                                           ; $679d: $00
    nop                                           ; $679e: $00
    nop                                           ; $679f: $00
    cp c                                          ; $67a0: $b9
    ld b, b                                       ; $67a1: $40
    call $ee32                                    ; $67a2: $cd $32 $ee
    ld de, $19e6                                  ; $67a5: $11 $e6 $19
    cp e                                          ; $67a8: $bb
    inc b                                         ; $67a9: $04
    sub a                                         ; $67aa: $97
    ld [$0000], sp                                ; $67ab: $08 $00 $00
    nop                                           ; $67ae: $00
    nop                                           ; $67af: $00
    jp nc, Jump_000_2f2d                          ; $67b0: $d2 $2d $2f

    ret nc                                        ; $67b3: $d0

    or d                                          ; $67b4: $b2
    ld b, c                                       ; $67b5: $41
    ld a, e                                       ; $67b6: $7b
    add b                                         ; $67b7: $80
    pop de                                        ; $67b8: $d1
    nop                                           ; $67b9: $00
    nop                                           ; $67ba: $00

jr_072_67bb:
    nop                                           ; $67bb: $00
    nop                                           ; $67bc: $00
    nop                                           ; $67bd: $00
    nop                                           ; $67be: $00
    nop                                           ; $67bf: $00
    ldh a, [rP1]                                  ; $67c0: $f0 $00
    ld a, a                                       ; $67c2: $7f
    add b                                         ; $67c3: $80
    inc e                                         ; $67c4: $1c
    db $e3                                        ; $67c5: $e3
    sub a                                         ; $67c6: $97
    ld l, b                                       ; $67c7: $68
    db $e3                                        ; $67c8: $e3
    jr jr_072_6804                                ; $67c9: $18 $39

    nop                                           ; $67cb: $00
    nop                                           ; $67cc: $00
    nop                                           ; $67cd: $00
    nop                                           ; $67ce: $00
    nop                                           ; $67cf: $00
    db $fc                                        ; $67d0: $fc
    nop                                           ; $67d1: $00
    jr nc, jr_072_67d7                            ; $67d2: $30 $03

    dec b                                         ; $67d4: $05
    rst $08                                       ; $67d5: $cf
    add d                                         ; $67d6: $82

jr_072_67d7:
    rst $38                                       ; $67d7: $ff
    nop                                           ; $67d8: $00
    rst $38                                       ; $67d9: $ff
    nop                                           ; $67da: $00

jr_072_67db:
    rst $38                                       ; $67db: $ff
    nop                                           ; $67dc: $00
    rst $38                                       ; $67dd: $ff
    nop                                           ; $67de: $00
    rst $38                                       ; $67df: $ff
    ld bc, $dc00                                  ; $67e0: $01 $00 $dc
    cp $30                                        ; $67e3: $fe $30
    rst $38                                       ; $67e5: $ff
    ld b, $ff                                     ; $67e6: $06 $ff
    nop                                           ; $67e8: $00
    rst $38                                       ; $67e9: $ff
    nop                                           ; $67ea: $00
    rst $38                                       ; $67eb: $ff
    nop                                           ; $67ec: $00
    rst $38                                       ; $67ed: $ff
    nop                                           ; $67ee: $00
    rst $38                                       ; $67ef: $ff
    db $fc                                        ; $67f0: $fc
    nop                                           ; $67f1: $00
    pop af                                        ; $67f2: $f1
    inc bc                                        ; $67f3: $03
    nop                                           ; $67f4: $00
    rrca                                          ; $67f5: $0f
    dec bc                                        ; $67f6: $0b
    rst $38                                       ; $67f7: $ff
    ld d, b                                       ; $67f8: $50
    rst $38                                       ; $67f9: $ff
    nop                                           ; $67fa: $00
    rst $38                                       ; $67fb: $ff
    nop                                           ; $67fc: $00
    rst $38                                       ; $67fd: $ff
    nop                                           ; $67fe: $00
    rst $38                                       ; $67ff: $ff
    nop                                           ; $6800: $00
    nop                                           ; $6801: $00

jr_072_6802:
    add [hl]                                      ; $6802: $86
    rst $38                                       ; $6803: $ff

jr_072_6804:
    or e                                          ; $6804: $b3
    rst $38                                       ; $6805: $ff
    ld [hl+], a                                   ; $6806: $22
    rst $38                                       ; $6807: $ff
    ld bc, $00ff                                  ; $6808: $01 $ff $00
    rst $38                                       ; $680b: $ff
    nop                                           ; $680c: $00
    rst $38                                       ; $680d: $ff
    nop                                           ; $680e: $00
    rst $38                                       ; $680f: $ff
    rst $38                                       ; $6810: $ff
    nop                                           ; $6811: $00
    cp a                                          ; $6812: $bf
    jr nz, jr_072_6802                            ; $6813: $20 $ed

    jr nz, @-$01                                  ; $6815: $20 $fd

    ld [hl], b                                    ; $6817: $70
    ld a, h                                       ; $6818: $7c
    jr nz, jr_072_67bb                            ; $6819: $20 $a0

    nop                                           ; $681b: $00
    jr nc, jr_072_682e                            ; $681c: $30 $10

    ld a, b                                       ; $681e: $78

jr_072_681f:
    jr c, jr_072_681f                             ; $681f: $38 $fe

    ld bc, $00fc                                  ; $6821: $01 $fc $00

jr_072_6824:
    pop af                                        ; $6824: $f1
    nop                                           ; $6825: $00
    pop hl                                        ; $6826: $e1
    nop                                           ; $6827: $00
    add b                                         ; $6828: $80
    nop                                           ; $6829: $00
    nop                                           ; $682a: $00
    nop                                           ; $682b: $00
    inc bc                                        ; $682c: $03
    nop                                           ; $682d: $00

jr_072_682e:
    nop                                           ; $682e: $00
    nop                                           ; $682f: $00
    rst $38                                       ; $6830: $ff
    nop                                           ; $6831: $00
    cp a                                          ; $6832: $bf
    jr nz, jr_072_6824                            ; $6833: $20 $ef

    jr nz, @-$01                                  ; $6835: $20 $fd

jr_072_6837:
    ld [hl], b                                    ; $6837: $70
    ld a, l                                       ; $6838: $7d
    jr nz, jr_072_67db                            ; $6839: $20 $a0

    nop                                           ; $683b: $00
    jr nc, jr_072_684e                            ; $683c: $30 $10

    ld a, b                                       ; $683e: $78
    jr c, @+$01                                   ; $683f: $38 $ff

    nop                                           ; $6841: $00
    rst $18                                       ; $6842: $df
    nop                                           ; $6843: $00
    call $e900                                    ; $6844: $cd $00 $e9
    nop                                           ; $6847: $00
    ret z                                         ; $6848: $c8

    nop                                           ; $6849: $00
    inc b                                         ; $684a: $04
    nop                                           ; $684b: $00
    ld b, e                                       ; $684c: $43
    nop                                           ; $684d: $00

jr_072_684e:
    nop                                           ; $684e: $00
    nop                                           ; $684f: $00
    jr nc, jr_072_6852                            ; $6850: $30 $00

jr_072_6852:
    call nz, $c000                                ; $6852: $c4 $00 $c0

jr_072_6855:
    ret nz                                        ; $6855: $c0

    ld a, d                                       ; $6856: $7a
    jr z, jr_072_6855                             ; $6857: $28 $fc

    inc e                                         ; $6859: $1c
    ld hl, sp+$78                                 ; $685a: $f8 $78
    cp a                                          ; $685c: $bf
    ld h, [hl]                                    ; $685d: $66
    ld hl, sp+$18                                 ; $685e: $f8 $18
    inc bc                                        ; $6860: $03
    nop                                           ; $6861: $00
    ld bc, $0400                                  ; $6862: $01 $00 $04
    nop                                           ; $6865: $00
    ld b, $00                                     ; $6866: $06 $00
    ld [$0500], sp                                ; $6868: $08 $00 $05
    nop                                           ; $686b: $00
    ld [$1900], sp                                ; $686c: $08 $00 $19
    nop                                           ; $686f: $00
    ld a, l                                       ; $6870: $7d
    sub c                                         ; $6871: $91
    rst $38                                       ; $6872: $ff
    inc a                                         ; $6873: $3c
    cp [hl]                                       ; $6874: $be
    ld b, [hl]                                    ; $6875: $46
    sbc $2a                                       ; $6876: $de $2a
    ld sp, hl                                     ; $6878: $f9
    ret nc                                        ; $6879: $d0

    ld a, d                                       ; $687a: $7a
    ld a, [hl+]                                   ; $687b: $2a
    db $fc                                        ; $687c: $fc
    jr jr_072_6837                                ; $687d: $18 $b8

    ld e, b                                       ; $687f: $58
    sub l                                         ; $6880: $95
    nop                                           ; $6881: $00
    inc de                                        ; $6882: $13
    nop                                           ; $6883: $00
    add b                                         ; $6884: $80
    nop                                           ; $6885: $00
    adc c                                         ; $6886: $89
    nop                                           ; $6887: $00
    inc d                                         ; $6888: $14
    nop                                           ; $6889: $00
    dec b                                         ; $688a: $05
    nop                                           ; $688b: $00
    jr jr_072_688e                                ; $688c: $18 $00

jr_072_688e:
    dec b                                         ; $688e: $05
    nop                                           ; $688f: $00
    ccf                                           ; $6890: $3f
    sub $78                                       ; $6891: $d6 $78
    cp b                                          ; $6893: $b8
    ld a, l                                       ; $6894: $7d
    adc c                                         ; $6895: $89
    rst $38                                       ; $6896: $ff
    inc [hl]                                      ; $6897: $34
    cp [hl]                                       ; $6898: $be
    ld d, [hl]                                    ; $6899: $56
    sbc [hl]                                      ; $689a: $9e
    ld l, h                                       ; $689b: $6c
    cp l                                          ; $689c: $bd
    ld b, b                                       ; $689d: $40
    rst $38                                       ; $689e: $ff
    sbc [hl]                                      ; $689f: $9e
    ld [$1900], sp                                ; $68a0: $08 $00 $19
    nop                                           ; $68a3: $00
    add h                                         ; $68a4: $84
    nop                                           ; $68a5: $00
    ld bc, $b000                                  ; $68a6: $01 $00 $b0
    nop                                           ; $68a9: $00
    adc e                                         ; $68aa: $8b
    add b                                         ; $68ab: $80
    inc d                                         ; $68ac: $14
    nop                                           ; $68ad: $00
    dec e                                         ; $68ae: $1d
    inc b                                         ; $68af: $04
    db $fc                                        ; $68b0: $fc
    ld [hl], h                                    ; $68b1: $74
    ld [hl], h                                    ; $68b2: $74
    sub b                                         ; $68b3: $90
    ld [hl], b                                    ; $68b4: $70
    add b                                         ; $68b5: $80
    nop                                           ; $68b6: $00
    ldh a, [$03]                                  ; $68b7: $f0 $03
    di                                            ; $68b9: $f3
    rlca                                          ; $68ba: $07
    rst $38                                       ; $68bb: $ff
    rra                                           ; $68bc: $1f
    rst $38                                       ; $68bd: $ff
    rst $38                                       ; $68be: $ff
    rst $38                                       ; $68bf: $ff
    dec b                                         ; $68c0: $05
    ld bc, $010e                                  ; $68c1: $01 $0e $01
    ld b, $01                                     ; $68c4: $06 $01
    nop                                           ; $68c6: $00
    ld bc, $1110                                  ; $68c7: $01 $10 $11
    cp h                                          ; $68ca: $bc
    cp l                                          ; $68cb: $bd
    rst $38                                       ; $68cc: $ff
    rst $38                                       ; $68cd: $ff
    rst $38                                       ; $68ce: $ff
    rst $38                                       ; $68cf: $ff
    nop                                           ; $68d0: $00
    rst $38                                       ; $68d1: $ff
    nop                                           ; $68d2: $00
    rst $38                                       ; $68d3: $ff
    nop                                           ; $68d4: $00
    rst $38                                       ; $68d5: $ff
    nop                                           ; $68d6: $00
    rst $38                                       ; $68d7: $ff
    nop                                           ; $68d8: $00
    rst $38                                       ; $68d9: $ff
    nop                                           ; $68da: $00
    rst $38                                       ; $68db: $ff
    nop                                           ; $68dc: $00
    rst $38                                       ; $68dd: $ff
    nop                                           ; $68de: $00
    rst $38                                       ; $68df: $ff
    nop                                           ; $68e0: $00
    rst $38                                       ; $68e1: $ff
    adc b                                         ; $68e2: $88
    ld [hl], a                                    ; $68e3: $77
    nop                                           ; $68e4: $00
    rst $38                                       ; $68e5: $ff
    ld [hl+], a                                   ; $68e6: $22
    db $dd                                        ; $68e7: $dd
    nop                                           ; $68e8: $00
    rst $38                                       ; $68e9: $ff
    ld d, l                                       ; $68ea: $55
    xor d                                         ; $68eb: $aa
    xor d                                         ; $68ec: $aa
    ld d, l                                       ; $68ed: $55
    rst $38                                       ; $68ee: $ff
    nop                                           ; $68ef: $00
    rst $38                                       ; $68f0: $ff
    nop                                           ; $68f1: $00
    rst $38                                       ; $68f2: $ff
    nop                                           ; $68f3: $00
    rst $38                                       ; $68f4: $ff
    nop                                           ; $68f5: $00
    rst $38                                       ; $68f6: $ff
    nop                                           ; $68f7: $00
    cp e                                          ; $68f8: $bb
    nop                                           ; $68f9: $00
    rst $38                                       ; $68fa: $ff
    nop                                           ; $68fb: $00
    xor d                                         ; $68fc: $aa
    nop                                           ; $68fd: $00
    ld d, l                                       ; $68fe: $55
    nop                                           ; $68ff: $00
    rst $38                                       ; $6900: $ff
    rst $38                                       ; $6901: $ff
    rst $38                                       ; $6902: $ff
    rst $38                                       ; $6903: $ff
    rst $38                                       ; $6904: $ff
    rst $38                                       ; $6905: $ff
    rst $38                                       ; $6906: $ff
    rst $38                                       ; $6907: $ff
    rst $38                                       ; $6908: $ff
    rst $38                                       ; $6909: $ff
    rst $38                                       ; $690a: $ff
    rst $38                                       ; $690b: $ff
    rst $38                                       ; $690c: $ff
    rst $38                                       ; $690d: $ff
    rst $38                                       ; $690e: $ff
    rst $38                                       ; $690f: $ff
    rst $38                                       ; $6910: $ff
    rst $38                                       ; $6911: $ff
    rst $38                                       ; $6912: $ff
    cp $ff                                        ; $6913: $fe $ff

jr_072_6915:
    ld a, b                                       ; $6915: $78
    rst $38                                       ; $6916: $ff
    nop                                           ; $6917: $00
    rst $38                                       ; $6918: $ff
    nop                                           ; $6919: $00
    add sp, $00                                   ; $691a: $e8 $00
    add a                                         ; $691c: $87
    nop                                           ; $691d: $00
    dec e                                         ; $691e: $1d
    ld [bc], a                                    ; $691f: $02
    rst $38                                       ; $6920: $ff
    add a                                         ; $6921: $87
    rst $38                                       ; $6922: $ff
    ld bc, $00ff                                  ; $6923: $01 $ff $00
    rst $18                                       ; $6926: $df
    nop                                           ; $6927: $00
    ld e, a                                       ; $6928: $5f
    nop                                           ; $6929: $00
    dec bc                                        ; $692a: $0b
    nop                                           ; $692b: $00
    jp hl                                         ; $692c: $e9


    nop                                           ; $692d: $00
    or b                                          ; $692e: $b0
    ld b, b                                       ; $692f: $40
    rst $38                                       ; $6930: $ff
    rst $38                                       ; $6931: $ff
    rst $38                                       ; $6932: $ff
    cp $ff                                        ; $6933: $fe $ff
    ld a, b                                       ; $6935: $78
    rst $38                                       ; $6936: $ff
    nop                                           ; $6937: $00
    rst $38                                       ; $6938: $ff
    nop                                           ; $6939: $00
    rlca                                          ; $693a: $07
    nop                                           ; $693b: $00
    cp b                                          ; $693c: $b8
    nop                                           ; $693d: $00
    ld l, a                                       ; $693e: $6f
    db $10                                        ; $693f: $10
    rst $38                                       ; $6940: $ff
    add a                                         ; $6941: $87
    rst $38                                       ; $6942: $ff
    ld bc, $00ff                                  ; $6943: $01 $ff $00
    rst $18                                       ; $6946: $df
    nop                                           ; $6947: $00
    rst $18                                       ; $6948: $df
    nop                                           ; $6949: $00
    rrca                                          ; $694a: $0f
    nop                                           ; $694b: $00
    reti                                          ; $694c: $d9


    nop                                           ; $694d: $00
    ld h, b                                       ; $694e: $60
    add b                                         ; $694f: $80
    halt                                          ; $6950: $76
    add hl, bc                                    ; $6951: $09
    xor $11                                       ; $6952: $ee $11
    ld d, a                                       ; $6954: $57
    and b                                         ; $6955: $a0
    sub d                                         ; $6956: $92
    ld h, c                                       ; $6957: $61
    or e                                          ; $6958: $b3
    ld b, b                                       ; $6959: $40
    ret nz                                        ; $695a: $c0

    nop                                           ; $695b: $00
    nop                                           ; $695c: $00
    nop                                           ; $695d: $00
    nop                                           ; $695e: $00
    nop                                           ; $695f: $00
    call c, $e620                                 ; $6960: $dc $20 $e6
    add hl, de                                    ; $6963: $19
    ld [hl], a                                    ; $6964: $77
    adc b                                         ; $6965: $88
    ld [hl], e                                    ; $6966: $73
    adc h                                         ; $6967: $8c
    ld e, l                                       ; $6968: $5d
    add d                                         ; $6969: $82
    ld c, e                                       ; $696a: $4b
    inc b                                         ; $696b: $04
    nop                                           ; $696c: $00
    nop                                           ; $696d: $00
    nop                                           ; $696e: $00
    nop                                           ; $696f: $00
    jp hl                                         ; $6970: $e9


    ld d, $97                                     ; $6971: $16 $97
    ld l, b                                       ; $6973: $68
    ld e, c                                       ; $6974: $59
    and b                                         ; $6975: $a0
    dec a                                         ; $6976: $3d
    ret nz                                        ; $6977: $c0

    add sp, $00                                   ; $6978: $e8 $00
    add b                                         ; $697a: $80
    nop                                           ; $697b: $00
    nop                                           ; $697c: $00
    nop                                           ; $697d: $00
    nop                                           ; $697e: $00
    nop                                           ; $697f: $00
    ld a, b                                       ; $6980: $78
    add b                                         ; $6981: $80
    cp a                                          ; $6982: $bf

jr_072_6983:
    ld b, b                                       ; $6983: $40
    ld c, $f1                                     ; $6984: $0e $f1
    swap h                                        ; $6986: $cb $34
    pop af                                        ; $6988: $f1
    inc c                                         ; $6989: $0c
    inc e                                         ; $698a: $1c
    nop                                           ; $698b: $00
    nop                                           ; $698c: $00
    nop                                           ; $698d: $00
    nop                                           ; $698e: $00
    nop                                           ; $698f: $00
    ld a, [hl]                                    ; $6990: $7e
    nop                                           ; $6991: $00
    jr jr_072_6915                                ; $6992: $18 $81

    add d                                         ; $6994: $82
    rst $20                                       ; $6995: $e7
    ld b, c                                       ; $6996: $41
    rst $38                                       ; $6997: $ff
    add b                                         ; $6998: $80
    rst $38                                       ; $6999: $ff
    nop                                           ; $699a: $00
    rst $38                                       ; $699b: $ff
    nop                                           ; $699c: $00
    rst $38                                       ; $699d: $ff
    nop                                           ; $699e: $00
    rst $38                                       ; $699f: $ff
    nop                                           ; $69a0: $00
    nop                                           ; $69a1: $00
    ld l, [hl]                                    ; $69a2: $6e

jr_072_69a3:
    rst $38                                       ; $69a3: $ff
    sbc b                                         ; $69a4: $98
    rst $38                                       ; $69a5: $ff
    inc bc                                        ; $69a6: $03
    rst $38                                       ; $69a7: $ff
    nop                                           ; $69a8: $00
    rst $38                                       ; $69a9: $ff
    nop                                           ; $69aa: $00
    rst $38                                       ; $69ab: $ff
    nop                                           ; $69ac: $00
    rst $38                                       ; $69ad: $ff
    nop                                           ; $69ae: $00
    rst $38                                       ; $69af: $ff
    cp $00                                        ; $69b0: $fe $00
    ld a, b                                       ; $69b2: $78
    ld bc, $8700                                  ; $69b3: $01 $00 $87
    dec b                                         ; $69b6: $05
    rst $38                                       ; $69b7: $ff
    jr z, @+$01                                   ; $69b8: $28 $ff

    nop                                           ; $69ba: $00

jr_072_69bb:
    rst $38                                       ; $69bb: $ff
    nop                                           ; $69bc: $00
    rst $38                                       ; $69bd: $ff
    nop                                           ; $69be: $00
    rst $38                                       ; $69bf: $ff
    nop                                           ; $69c0: $00
    nop                                           ; $69c1: $00
    jp Jump_072_59ff                              ; $69c2: $c3 $ff $59


    rst $38                                       ; $69c5: $ff
    sub c                                         ; $69c6: $91
    rst $38                                       ; $69c7: $ff
    nop                                           ; $69c8: $00
    rst $38                                       ; $69c9: $ff
    nop                                           ; $69ca: $00
    rst $38                                       ; $69cb: $ff
    nop                                           ; $69cc: $00
    rst $38                                       ; $69cd: $ff
    nop                                           ; $69ce: $00
    rst $38                                       ; $69cf: $ff
    rst $38                                       ; $69d0: $ff
    nop                                           ; $69d1: $00
    cp a                                          ; $69d2: $bf
    jr nz, jr_072_69bb                            ; $69d3: $20 $e6

jr_072_69d5:
    jr nz, jr_072_69d5                            ; $69d5: $20 $fe

    ld [hl], b                                    ; $69d7: $70
    halt                                          ; $69d8: $76
    jr nz, jr_072_6983                            ; $69d9: $20 $a8

    nop                                           ; $69db: $00

jr_072_69dc:
    jr nc, jr_072_69ee                            ; $69dc: $30 $10

    ld a, b                                       ; $69de: $78
    jr c, @+$01                                   ; $69df: $38 $ff

    nop                                           ; $69e1: $00
    cp $00                                        ; $69e2: $fe $00
    ld hl, sp+$00                                 ; $69e4: $f8 $00
    ldh a, [rP1]                                  ; $69e6: $f0 $00
    ld b, b                                       ; $69e8: $40
    nop                                           ; $69e9: $00
    nop                                           ; $69ea: $00
    nop                                           ; $69eb: $00
    inc bc                                        ; $69ec: $03
    nop                                           ; $69ed: $00

jr_072_69ee:
    nop                                           ; $69ee: $00
    nop                                           ; $69ef: $00
    ld a, a                                       ; $69f0: $7f
    add b                                         ; $69f1: $80
    ccf                                           ; $69f2: $3f
    jr nz, jr_072_69dc                            ; $69f3: $20 $e7

jr_072_69f5:
    jr nz, jr_072_69f5                            ; $69f5: $20 $fe

jr_072_69f7:
    ld [hl], b                                    ; $69f7: $70
    halt                                          ; $69f8: $76
    jr nz, jr_072_69a3                            ; $69f9: $20 $a8

    nop                                           ; $69fb: $00
    jr nc, jr_072_6a0e                            ; $69fc: $30 $10

    ld a, b                                       ; $69fe: $78
    jr c, @+$01                                   ; $69ff: $38 $ff

    nop                                           ; $6a01: $00
    rst $28                                       ; $6a02: $ef
    nop                                           ; $6a03: $00
    and $00                                       ; $6a04: $e6 $00
    db $f4                                        ; $6a06: $f4
    nop                                           ; $6a07: $00
    db $e4                                        ; $6a08: $e4
    nop                                           ; $6a09: $00
    ld [bc], a                                    ; $6a0a: $02
    nop                                           ; $6a0b: $00
    inc hl                                        ; $6a0c: $23
    nop                                           ; $6a0d: $00

jr_072_6a0e:
    nop                                           ; $6a0e: $00
    nop                                           ; $6a0f: $00
    jr nc, jr_072_6a12                            ; $6a10: $30 $00

jr_072_6a12:
    call nz, $c000                                ; $6a12: $c4 $00 $c0

jr_072_6a15:
    ret nz                                        ; $6a15: $c0

    ld a, d                                       ; $6a16: $7a
    jr z, jr_072_6a15                             ; $6a17: $28 $fc

    inc e                                         ; $6a19: $1c
    ld hl, sp+$78                                 ; $6a1a: $f8 $78
    cp a                                          ; $6a1c: $bf
    ld h, [hl]                                    ; $6a1d: $66
    ld hl, sp+$18                                 ; $6a1e: $f8 $18
    inc bc                                        ; $6a20: $03
    nop                                           ; $6a21: $00
    ld bc, $0400                                  ; $6a22: $01 $00 $04
    nop                                           ; $6a25: $00
    ld b, $00                                     ; $6a26: $06 $00
    ld [$0500], sp                                ; $6a28: $08 $00 $05
    nop                                           ; $6a2b: $00
    ld [$1900], sp                                ; $6a2c: $08 $00 $19
    nop                                           ; $6a2f: $00
    ld a, l                                       ; $6a30: $7d
    sub c                                         ; $6a31: $91
    rst $38                                       ; $6a32: $ff
    inc a                                         ; $6a33: $3c
    cp [hl]                                       ; $6a34: $be
    ld b, [hl]                                    ; $6a35: $46
    sbc $2a                                       ; $6a36: $de $2a
    ld sp, hl                                     ; $6a38: $f9
    ret nc                                        ; $6a39: $d0

    ld a, d                                       ; $6a3a: $7a
    ld a, [hl+]                                   ; $6a3b: $2a
    db $fc                                        ; $6a3c: $fc
    jr jr_072_69f7                                ; $6a3d: $18 $b8

    ld e, b                                       ; $6a3f: $58
    sub l                                         ; $6a40: $95
    nop                                           ; $6a41: $00
    inc de                                        ; $6a42: $13
    nop                                           ; $6a43: $00
    add b                                         ; $6a44: $80
    nop                                           ; $6a45: $00
    adc c                                         ; $6a46: $89
    nop                                           ; $6a47: $00
    inc d                                         ; $6a48: $14
    nop                                           ; $6a49: $00
    dec b                                         ; $6a4a: $05
    nop                                           ; $6a4b: $00
    jr jr_072_6a4e                                ; $6a4c: $18 $00

jr_072_6a4e:
    dec b                                         ; $6a4e: $05
    nop                                           ; $6a4f: $00
    ccf                                           ; $6a50: $3f
    sub $78                                       ; $6a51: $d6 $78
    cp b                                          ; $6a53: $b8
    ld a, l                                       ; $6a54: $7d
    adc c                                         ; $6a55: $89
    rst $38                                       ; $6a56: $ff
    inc [hl]                                      ; $6a57: $34
    cp [hl]                                       ; $6a58: $be
    ld d, [hl]                                    ; $6a59: $56
    sbc [hl]                                      ; $6a5a: $9e
    ld l, h                                       ; $6a5b: $6c
    cp l                                          ; $6a5c: $bd
    ld b, b                                       ; $6a5d: $40
    rst $38                                       ; $6a5e: $ff
    sbc [hl]                                      ; $6a5f: $9e
    ld [$1900], sp                                ; $6a60: $08 $00 $19
    nop                                           ; $6a63: $00
    add h                                         ; $6a64: $84
    nop                                           ; $6a65: $00
    ld bc, $b000                                  ; $6a66: $01 $00 $b0
    nop                                           ; $6a69: $00
    adc e                                         ; $6a6a: $8b
    add b                                         ; $6a6b: $80
    inc d                                         ; $6a6c: $14
    nop                                           ; $6a6d: $00
    dec e                                         ; $6a6e: $1d
    inc b                                         ; $6a6f: $04
    db $fc                                        ; $6a70: $fc
    ld [hl], h                                    ; $6a71: $74
    ld [hl], h                                    ; $6a72: $74
    sub b                                         ; $6a73: $90
    ld [hl], b                                    ; $6a74: $70
    add b                                         ; $6a75: $80
    nop                                           ; $6a76: $00
    ldh a, [$03]                                  ; $6a77: $f0 $03
    di                                            ; $6a79: $f3
    rlca                                          ; $6a7a: $07
    rst $38                                       ; $6a7b: $ff
    rra                                           ; $6a7c: $1f
    rst $38                                       ; $6a7d: $ff
    rst $38                                       ; $6a7e: $ff
    rst $38                                       ; $6a7f: $ff
    dec b                                         ; $6a80: $05
    ld bc, $010e                                  ; $6a81: $01 $0e $01
    ld b, $01                                     ; $6a84: $06 $01
    nop                                           ; $6a86: $00
    ld bc, $1110                                  ; $6a87: $01 $10 $11
    cp h                                          ; $6a8a: $bc
    cp l                                          ; $6a8b: $bd
    rst $38                                       ; $6a8c: $ff
    rst $38                                       ; $6a8d: $ff
    rst $38                                       ; $6a8e: $ff
    rst $38                                       ; $6a8f: $ff
    nop                                           ; $6a90: $00
    rst $38                                       ; $6a91: $ff
    nop                                           ; $6a92: $00
    rst $38                                       ; $6a93: $ff
    nop                                           ; $6a94: $00
    rst $38                                       ; $6a95: $ff
    nop                                           ; $6a96: $00
    rst $38                                       ; $6a97: $ff
    nop                                           ; $6a98: $00
    rst $38                                       ; $6a99: $ff
    nop                                           ; $6a9a: $00
    rst $38                                       ; $6a9b: $ff
    nop                                           ; $6a9c: $00
    rst $38                                       ; $6a9d: $ff
    nop                                           ; $6a9e: $00
    rst $38                                       ; $6a9f: $ff
    nop                                           ; $6aa0: $00
    rst $38                                       ; $6aa1: $ff
    adc b                                         ; $6aa2: $88
    ld [hl], a                                    ; $6aa3: $77
    nop                                           ; $6aa4: $00
    rst $38                                       ; $6aa5: $ff
    ld [hl+], a                                   ; $6aa6: $22
    db $dd                                        ; $6aa7: $dd
    nop                                           ; $6aa8: $00
    rst $38                                       ; $6aa9: $ff
    ld d, l                                       ; $6aaa: $55
    xor d                                         ; $6aab: $aa
    xor d                                         ; $6aac: $aa
    ld d, l                                       ; $6aad: $55
    rst $38                                       ; $6aae: $ff
    nop                                           ; $6aaf: $00
    rst $38                                       ; $6ab0: $ff
    nop                                           ; $6ab1: $00
    rst $38                                       ; $6ab2: $ff
    nop                                           ; $6ab3: $00
    rst $38                                       ; $6ab4: $ff
    nop                                           ; $6ab5: $00
    rst $38                                       ; $6ab6: $ff
    nop                                           ; $6ab7: $00
    db $dd                                        ; $6ab8: $dd
    nop                                           ; $6ab9: $00
    rst $38                                       ; $6aba: $ff
    nop                                           ; $6abb: $00
    ld d, l                                       ; $6abc: $55
    nop                                           ; $6abd: $00
    xor d                                         ; $6abe: $aa
    nop                                           ; $6abf: $00
    rst $38                                       ; $6ac0: $ff
    rst $38                                       ; $6ac1: $ff
    rst $38                                       ; $6ac2: $ff
    rst $38                                       ; $6ac3: $ff
    rst $38                                       ; $6ac4: $ff
    rst $38                                       ; $6ac5: $ff
    rst $38                                       ; $6ac6: $ff
    rst $38                                       ; $6ac7: $ff
    rst $38                                       ; $6ac8: $ff
    rst $38                                       ; $6ac9: $ff
    rst $38                                       ; $6aca: $ff
    rst $38                                       ; $6acb: $ff

jr_072_6acc:
    rst $38                                       ; $6acc: $ff
    rst $38                                       ; $6acd: $ff
    rst $38                                       ; $6ace: $ff
    rst $38                                       ; $6acf: $ff
    rst $38                                       ; $6ad0: $ff
    rst $38                                       ; $6ad1: $ff
    rst $38                                       ; $6ad2: $ff
    ld a, a                                       ; $6ad3: $7f
    rst $38                                       ; $6ad4: $ff
    ld e, $ff                                     ; $6ad5: $1e $ff
    nop                                           ; $6ad7: $00
    rst $38                                       ; $6ad8: $ff
    nop                                           ; $6ad9: $00
    ld hl, sp+$00                                 ; $6ada: $f8 $00
    ld h, e                                       ; $6adc: $63
    nop                                           ; $6add: $00
    ld c, $01                                     ; $6ade: $0e $01
    rst $38                                       ; $6ae0: $ff
    pop hl                                        ; $6ae1: $e1
    rst $38                                       ; $6ae2: $ff
    add b                                         ; $6ae3: $80
    rst $38                                       ; $6ae4: $ff
    nop                                           ; $6ae5: $00
    rst $30                                       ; $6ae6: $f7
    nop                                           ; $6ae7: $00
    rst $10                                       ; $6ae8: $d7
    nop                                           ; $6ae9: $00
    ld [bc], a                                    ; $6aea: $02
    nop                                           ; $6aeb: $00
    or $00                                        ; $6aec: $f6 $00
    ret c                                         ; $6aee: $d8

    jr nz, @+$01                                  ; $6aef: $20 $ff

    rst $38                                       ; $6af1: $ff

jr_072_6af2:
    rst $38                                       ; $6af2: $ff
    ld a, a                                       ; $6af3: $7f
    rst $38                                       ; $6af4: $ff
    ld e, $ff                                     ; $6af5: $1e $ff
    nop                                           ; $6af7: $00
    rst $38                                       ; $6af8: $ff
    nop                                           ; $6af9: $00
    jp Jump_072_5c00                              ; $6afa: $c3 $00 $5c


    nop                                           ; $6afd: $00
    scf                                           ; $6afe: $37
    ld [$e1ff], sp                                ; $6aff: $08 $ff $e1
    rst $38                                       ; $6b02: $ff
    add b                                         ; $6b03: $80
    rst $38                                       ; $6b04: $ff
    nop                                           ; $6b05: $00
    rst $30                                       ; $6b06: $f7
    nop                                           ; $6b07: $00
    rst $30                                       ; $6b08: $f7
    nop                                           ; $6b09: $00
    sub e                                         ; $6b0a: $93
    nop                                           ; $6b0b: $00
    ld h, [hl]                                    ; $6b0c: $66
    nop                                           ; $6b0d: $00
    or b                                          ; $6b0e: $b0
    ld b, b                                       ; $6b0f: $40
    dec sp                                        ; $6b10: $3b
    inc b                                         ; $6b11: $04
    rst $30                                       ; $6b12: $f7
    ld [$d02b], sp                                ; $6b13: $08 $2b $d0
    ret                                           ; $6b16: $c9


    jr nc, jr_072_6af2                            ; $6b17: $30 $d9

    jr nz, jr_072_6b7b                            ; $6b19: $20 $60

    nop                                           ; $6b1b: $00
    nop                                           ; $6b1c: $00
    nop                                           ; $6b1d: $00
    nop                                           ; $6b1e: $00
    nop                                           ; $6b1f: $00
    ld l, [hl]                                    ; $6b20: $6e
    sub b                                         ; $6b21: $90
    ld [hl], e                                    ; $6b22: $73
    adc h                                         ; $6b23: $8c
    cp e                                          ; $6b24: $bb
    ld b, h                                       ; $6b25: $44
    add hl, sp                                    ; $6b26: $39
    add $ae                                       ; $6b27: $c6 $ae
    ld b, c                                       ; $6b29: $41
    dec h                                         ; $6b2a: $25
    ld [bc], a                                    ; $6b2b: $02
    nop                                           ; $6b2c: $00
    nop                                           ; $6b2d: $00
    nop                                           ; $6b2e: $00
    nop                                           ; $6b2f: $00
    ld [hl], h                                    ; $6b30: $74
    dec bc                                        ; $6b31: $0b
    ld c, e                                       ; $6b32: $4b
    or h                                          ; $6b33: $b4
    xor h                                         ; $6b34: $ac
    ld d, b                                       ; $6b35: $50
    sbc [hl]                                      ; $6b36: $9e
    ld h, b                                       ; $6b37: $60
    db $f4                                        ; $6b38: $f4
    nop                                           ; $6b39: $00
    ret nz                                        ; $6b3a: $c0

    nop                                           ; $6b3b: $00
    nop                                           ; $6b3c: $00
    nop                                           ; $6b3d: $00
    nop                                           ; $6b3e: $00
    nop                                           ; $6b3f: $00
    cp h                                          ; $6b40: $bc
    ld b, b                                       ; $6b41: $40
    rst $18                                       ; $6b42: $df
    jr nz, jr_072_6acc                            ; $6b43: $20 $87

    ld a, b                                       ; $6b45: $78
    push hl                                       ; $6b46: $e5
    ld a, [de]                                    ; $6b47: $1a
    ld a, b                                       ; $6b48: $78
    ld b, $0e                                     ; $6b49: $06 $0e
    nop                                           ; $6b4b: $00
    nop                                           ; $6b4c: $00
    nop                                           ; $6b4d: $00
    nop                                           ; $6b4e: $00
    nop                                           ; $6b4f: $00
    ccf                                           ; $6b50: $3f
    nop                                           ; $6b51: $00
    adc h                                         ; $6b52: $8c
    ret nz                                        ; $6b53: $c0

    pop bc                                        ; $6b54: $c1
    di                                            ; $6b55: $f3
    and b                                         ; $6b56: $a0
    rst $38                                       ; $6b57: $ff
    ld b, b                                       ; $6b58: $40
    rst $38                                       ; $6b59: $ff
    nop                                           ; $6b5a: $00
    rst $38                                       ; $6b5b: $ff
    nop                                           ; $6b5c: $00
    rst $38                                       ; $6b5d: $ff
    nop                                           ; $6b5e: $00
    rst $38                                       ; $6b5f: $ff
    nop                                           ; $6b60: $00
    nop                                           ; $6b61: $00
    scf                                           ; $6b62: $37
    rst $38                                       ; $6b63: $ff
    ld c, h                                       ; $6b64: $4c
    rst $38                                       ; $6b65: $ff
    add c                                         ; $6b66: $81
    rst $38                                       ; $6b67: $ff
    nop                                           ; $6b68: $00
    rst $38                                       ; $6b69: $ff
    nop                                           ; $6b6a: $00
    rst $38                                       ; $6b6b: $ff
    nop                                           ; $6b6c: $00
    rst $38                                       ; $6b6d: $ff
    nop                                           ; $6b6e: $00
    rst $38                                       ; $6b6f: $ff
    ld a, a                                       ; $6b70: $7f
    nop                                           ; $6b71: $00
    inc a                                         ; $6b72: $3c
    add b                                         ; $6b73: $80
    nop                                           ; $6b74: $00
    jp $ff82                                      ; $6b75: $c3 $82 $ff


    inc d                                         ; $6b78: $14
    rst $38                                       ; $6b79: $ff
    nop                                           ; $6b7a: $00

jr_072_6b7b:
    rst $38                                       ; $6b7b: $ff
    nop                                           ; $6b7c: $00
    rst $38                                       ; $6b7d: $ff
    nop                                           ; $6b7e: $00
    rst $38                                       ; $6b7f: $ff
    nop                                           ; $6b80: $00
    nop                                           ; $6b81: $00
    ld h, c                                       ; $6b82: $61
    rst $38                                       ; $6b83: $ff
    inc l                                         ; $6b84: $2c
    rst $38                                       ; $6b85: $ff
    ret z                                         ; $6b86: $c8

    rst $38                                       ; $6b87: $ff
    nop                                           ; $6b88: $00
    rst $38                                       ; $6b89: $ff
    nop                                           ; $6b8a: $00
    rst $38                                       ; $6b8b: $ff
    nop                                           ; $6b8c: $00
    rst $38                                       ; $6b8d: $ff
    nop                                           ; $6b8e: $00
    rst $38                                       ; $6b8f: $ff
    rst $38                                       ; $6b90: $ff
    nop                                           ; $6b91: $00
    rst $18                                       ; $6b92: $df
    db $10                                        ; $6b93: $10
    ld [hl], e                                    ; $6b94: $73
    db $10                                        ; $6b95: $10
    ld a, a                                       ; $6b96: $7f
    jr c, jr_072_6bd4                             ; $6b97: $38 $3b

    db $10                                        ; $6b99: $10
    ld d, h                                       ; $6b9a: $54
    nop                                           ; $6b9b: $00
    sbc b                                         ; $6b9c: $98
    ld [$1c3c], sp                                ; $6b9d: $08 $3c $1c
    rst $38                                       ; $6ba0: $ff
    nop                                           ; $6ba1: $00
    rst $38                                       ; $6ba2: $ff
    nop                                           ; $6ba3: $00
    ld a, h                                       ; $6ba4: $7c
    nop                                           ; $6ba5: $00
    ld a, b                                       ; $6ba6: $78
    nop                                           ; $6ba7: $00
    jr nz, jr_072_6baa                            ; $6ba8: $20 $00

jr_072_6baa:
    nop                                           ; $6baa: $00
    nop                                           ; $6bab: $00
    ld bc, $0000                                  ; $6bac: $01 $00 $00
    nop                                           ; $6baf: $00
    cp a                                          ; $6bb0: $bf
    ld b, b                                       ; $6bb1: $40
    rra                                           ; $6bb2: $1f
    db $10                                        ; $6bb3: $10
    ld [hl], e                                    ; $6bb4: $73
    db $10                                        ; $6bb5: $10
    ld a, a                                       ; $6bb6: $7f
    jr c, @+$3d                                   ; $6bb7: $38 $3b

    db $10                                        ; $6bb9: $10
    ld d, h                                       ; $6bba: $54
    nop                                           ; $6bbb: $00
    sbc b                                         ; $6bbc: $98
    ld [$1c3c], sp                                ; $6bbd: $08 $3c $1c
    rst $38                                       ; $6bc0: $ff
    nop                                           ; $6bc1: $00
    rst $30                                       ; $6bc2: $f7
    nop                                           ; $6bc3: $00
    di                                            ; $6bc4: $f3
    nop                                           ; $6bc5: $00
    ld a, d                                       ; $6bc6: $7a
    nop                                           ; $6bc7: $00
    ld [hl], d                                    ; $6bc8: $72
    nop                                           ; $6bc9: $00
    ld bc, $1100                                  ; $6bca: $01 $00 $11
    nop                                           ; $6bcd: $00
    nop                                           ; $6bce: $00
    nop                                           ; $6bcf: $00
    sbc b                                         ; $6bd0: $98
    nop                                           ; $6bd1: $00
    ld [c], a                                     ; $6bd2: $e2
    nop                                           ; $6bd3: $00

jr_072_6bd4:
    ld h, b                                       ; $6bd4: $60
    ld h, b                                       ; $6bd5: $60
    dec a                                         ; $6bd6: $3d
    inc d                                         ; $6bd7: $14
    ld a, [hl]                                    ; $6bd8: $7e
    ld c, $fc                                     ; $6bd9: $0e $fc
    inc a                                         ; $6bdb: $3c
    ld e, a                                       ; $6bdc: $5f
    inc sp                                        ; $6bdd: $33
    db $fc                                        ; $6bde: $fc
    inc c                                         ; $6bdf: $0c
    ld bc, $0000                                  ; $6be0: $01 $00 $00
    nop                                           ; $6be3: $00
    ld [bc], a                                    ; $6be4: $02
    nop                                           ; $6be5: $00
    inc bc                                        ; $6be6: $03
    nop                                           ; $6be7: $00
    inc b                                         ; $6be8: $04
    nop                                           ; $6be9: $00
    ld [bc], a                                    ; $6bea: $02
    nop                                           ; $6beb: $00
    add h                                         ; $6bec: $84
    nop                                           ; $6bed: $00
    inc c                                         ; $6bee: $0c
    nop                                           ; $6bef: $00
    cp [hl]                                       ; $6bf0: $be
    ld c, b                                       ; $6bf1: $48
    rst $38                                       ; $6bf2: $ff
    ld e, $5f                                     ; $6bf3: $1e $5f
    inc hl                                        ; $6bf5: $23

jr_072_6bf6:
    rst $28                                       ; $6bf6: $ef
    dec d                                         ; $6bf7: $15
    ld a, h                                       ; $6bf8: $7c
    ld l, b                                       ; $6bf9: $68
    cp l                                          ; $6bfa: $bd
    dec d                                         ; $6bfb: $15
    ld a, [hl]                                    ; $6bfc: $7e
    inc c                                         ; $6bfd: $0c
    call c, $ca2c                                 ; $6bfe: $dc $2c $ca
    add b                                         ; $6c01: $80
    adc c                                         ; $6c02: $89
    nop                                           ; $6c03: $00
    ld b, b                                       ; $6c04: $40
    nop                                           ; $6c05: $00
    ld b, h                                       ; $6c06: $44
    nop                                           ; $6c07: $00
    adc d                                         ; $6c08: $8a
    nop                                           ; $6c09: $00
    ld [bc], a                                    ; $6c0a: $02
    nop                                           ; $6c0b: $00
    inc c                                         ; $6c0c: $0c
    nop                                           ; $6c0d: $00
    ld [bc], a                                    ; $6c0e: $02
    nop                                           ; $6c0f: $00
    rra                                           ; $6c10: $1f
    ld l, e                                       ; $6c11: $6b
    cp h                                          ; $6c12: $bc
    ld e, h                                       ; $6c13: $5c
    ld a, $44                                     ; $6c14: $3e $44
    rst $38                                       ; $6c16: $ff
    ld a, [de]                                    ; $6c17: $1a
    ld e, a                                       ; $6c18: $5f
    dec hl                                        ; $6c19: $2b
    rst $08                                       ; $6c1a: $cf
    ld [hl], $5e                                  ; $6c1b: $36 $5e
    jr nz, @+$01                                  ; $6c1d: $20 $ff

    ld c, a                                       ; $6c1f: $4f
    add h                                         ; $6c20: $84
    nop                                           ; $6c21: $00
    inc c                                         ; $6c22: $0c
    nop                                           ; $6c23: $00
    jp nz, $8080                                  ; $6c24: $c2 $80 $80

    nop                                           ; $6c27: $00
    ld e, b                                       ; $6c28: $58
    nop                                           ; $6c29: $00
    ld b, l                                       ; $6c2a: $45
    ld b, b                                       ; $6c2b: $40
    adc d                                         ; $6c2c: $8a
    nop                                           ; $6c2d: $00
    adc [hl]                                      ; $6c2e: $8e
    ld [bc], a                                    ; $6c2f: $02
    cp $ba                                        ; $6c30: $fe $ba
    ld a, [hl-]                                   ; $6c32: $3a
    ret z                                         ; $6c33: $c8

    jr c, jr_072_6bf6                             ; $6c34: $38 $c0

    nop                                           ; $6c36: $00
    ld hl, sp+$01                                 ; $6c37: $f8 $01
    ld sp, hl                                     ; $6c39: $f9
    inc bc                                        ; $6c3a: $03
    rst $38                                       ; $6c3b: $ff
    adc a                                         ; $6c3c: $8f
    rst $38                                       ; $6c3d: $ff
    rst $38                                       ; $6c3e: $ff
    rst $38                                       ; $6c3f: $ff
    ld [bc], a                                    ; $6c40: $02
    nop                                           ; $6c41: $00
    rlca                                          ; $6c42: $07
    nop                                           ; $6c43: $00
    inc bc                                        ; $6c44: $03
    nop                                           ; $6c45: $00
    nop                                           ; $6c46: $00
    nop                                           ; $6c47: $00
    adc b                                         ; $6c48: $88
    adc b                                         ; $6c49: $88
    sbc $de                                       ; $6c4a: $de $de
    rst $38                                       ; $6c4c: $ff
    rst $38                                       ; $6c4d: $ff
    rst $38                                       ; $6c4e: $ff
    rst $38                                       ; $6c4f: $ff
    nop                                           ; $6c50: $00
    rst $38                                       ; $6c51: $ff
    nop                                           ; $6c52: $00
    rst $38                                       ; $6c53: $ff
    nop                                           ; $6c54: $00
    rst $38                                       ; $6c55: $ff
    nop                                           ; $6c56: $00
    rst $38                                       ; $6c57: $ff
    nop                                           ; $6c58: $00
    rst $38                                       ; $6c59: $ff
    nop                                           ; $6c5a: $00
    rst $38                                       ; $6c5b: $ff
    nop                                           ; $6c5c: $00
    rst $38                                       ; $6c5d: $ff
    nop                                           ; $6c5e: $00
    rst $38                                       ; $6c5f: $ff
    nop                                           ; $6c60: $00
    rst $38                                       ; $6c61: $ff
    adc b                                         ; $6c62: $88
    ld [hl], a                                    ; $6c63: $77
    nop                                           ; $6c64: $00
    rst $38                                       ; $6c65: $ff
    ld [hl+], a                                   ; $6c66: $22
    db $dd                                        ; $6c67: $dd
    nop                                           ; $6c68: $00
    rst $38                                       ; $6c69: $ff
    ld d, l                                       ; $6c6a: $55
    xor d                                         ; $6c6b: $aa
    xor d                                         ; $6c6c: $aa
    ld d, l                                       ; $6c6d: $55
    rst $38                                       ; $6c6e: $ff
    nop                                           ; $6c6f: $00
    rst $38                                       ; $6c70: $ff
    nop                                           ; $6c71: $00
    rst $38                                       ; $6c72: $ff
    nop                                           ; $6c73: $00
    rst $38                                       ; $6c74: $ff
    nop                                           ; $6c75: $00
    rst $38                                       ; $6c76: $ff
    nop                                           ; $6c77: $00
    db $dd                                        ; $6c78: $dd
    nop                                           ; $6c79: $00
    rst $38                                       ; $6c7a: $ff
    nop                                           ; $6c7b: $00
    ld d, l                                       ; $6c7c: $55
    nop                                           ; $6c7d: $00
    xor d                                         ; $6c7e: $aa
    nop                                           ; $6c7f: $00
    rst $38                                       ; $6c80: $ff
    rst $38                                       ; $6c81: $ff
    rst $38                                       ; $6c82: $ff
    rst $38                                       ; $6c83: $ff
    rst $38                                       ; $6c84: $ff
    rst $38                                       ; $6c85: $ff
    rst $38                                       ; $6c86: $ff
    rst $38                                       ; $6c87: $ff
    rst $38                                       ; $6c88: $ff
    rst $38                                       ; $6c89: $ff
    rst $38                                       ; $6c8a: $ff
    rst $38                                       ; $6c8b: $ff
    rst $38                                       ; $6c8c: $ff
    rst $38                                       ; $6c8d: $ff
    rst $38                                       ; $6c8e: $ff
    rst $38                                       ; $6c8f: $ff
    rst $38                                       ; $6c90: $ff
    ld a, a                                       ; $6c91: $7f
    rst $38                                       ; $6c92: $ff
    rra                                           ; $6c93: $1f
    rst $38                                       ; $6c94: $ff
    rlca                                          ; $6c95: $07
    rst $38                                       ; $6c96: $ff
    nop                                           ; $6c97: $00
    rst $38                                       ; $6c98: $ff
    nop                                           ; $6c99: $00
    cp $00                                        ; $6c9a: $fe $00
    sbc c                                         ; $6c9c: $99
    nop                                           ; $6c9d: $00
    rlca                                          ; $6c9e: $07
    nop                                           ; $6c9f: $00
    rst $38                                       ; $6ca0: $ff
    ld hl, sp-$01                                 ; $6ca1: $f8 $ff
    ldh [rIE], a                                  ; $6ca3: $e0 $ff
    add b                                         ; $6ca5: $80
    db $fd                                        ; $6ca6: $fd
    nop                                           ; $6ca7: $00
    push af                                       ; $6ca8: $f5
    nop                                           ; $6ca9: $00
    inc b                                         ; $6caa: $04
    nop                                           ; $6cab: $00
    ld sp, hl                                     ; $6cac: $f9
    nop                                           ; $6cad: $00
    ld l, h                                       ; $6cae: $6c
    sub b                                         ; $6caf: $90
    rst $38                                       ; $6cb0: $ff
    ld a, a                                       ; $6cb1: $7f
    rst $38                                       ; $6cb2: $ff
    rra                                           ; $6cb3: $1f
    rst $38                                       ; $6cb4: $ff
    rlca                                          ; $6cb5: $07
    rst $38                                       ; $6cb6: $ff
    nop                                           ; $6cb7: $00
    rst $38                                       ; $6cb8: $ff
    nop                                           ; $6cb9: $00
    or c                                          ; $6cba: $b1
    nop                                           ; $6cbb: $00
    adc [hl]                                      ; $6cbc: $8e
    nop                                           ; $6cbd: $00
    dec de                                        ; $6cbe: $1b
    inc b                                         ; $6cbf: $04
    rst $38                                       ; $6cc0: $ff
    ld hl, sp-$01                                 ; $6cc1: $f8 $ff
    ldh [rIE], a                                  ; $6cc3: $e0 $ff
    add b                                         ; $6cc5: $80
    db $fd                                        ; $6cc6: $fd
    nop                                           ; $6cc7: $00
    db $fd                                        ; $6cc8: $fd
    nop                                           ; $6cc9: $00
    call nz, Call_000_3100                        ; $6cca: $c4 $00 $31
    nop                                           ; $6ccd: $00
    ret c                                         ; $6cce: $d8

    jr nz, jr_072_6cee                            ; $6ccf: $20 $1d

    ld [bc], a                                    ; $6cd1: $02
    ei                                            ; $6cd2: $fb
    inc b                                         ; $6cd3: $04
    sub l                                         ; $6cd4: $95
    ld l, b                                       ; $6cd5: $68
    db $e4                                        ; $6cd6: $e4
    jr @+$6e                                      ; $6cd7: $18 $6c

    db $10                                        ; $6cd9: $10
    jr nc, jr_072_6cdc                            ; $6cda: $30 $00

jr_072_6cdc:
    nop                                           ; $6cdc: $00
    nop                                           ; $6cdd: $00
    nop                                           ; $6cde: $00
    nop                                           ; $6cdf: $00
    or a                                          ; $6ce0: $b7
    ld c, b                                       ; $6ce1: $48
    cp c                                          ; $6ce2: $b9
    ld b, [hl]                                    ; $6ce3: $46
    db $dd                                        ; $6ce4: $dd
    ld [hl+], a                                   ; $6ce5: $22
    sbc h                                         ; $6ce6: $9c
    ld h, e                                       ; $6ce7: $63
    rst $10                                       ; $6ce8: $d7
    jr nz, jr_072_6cfd                            ; $6ce9: $20 $12

    ld bc, $0000                                  ; $6ceb: $01 $00 $00

jr_072_6cee:
    nop                                           ; $6cee: $00
    nop                                           ; $6cef: $00
    ld a, [hl-]                                   ; $6cf0: $3a
    dec b                                         ; $6cf1: $05
    and l                                         ; $6cf2: $a5
    ld e, d                                       ; $6cf3: $5a
    sub $28                                       ; $6cf4: $d6 $28
    rst $08                                       ; $6cf6: $cf
    jr nc, jr_072_6d73                            ; $6cf7: $30 $7a

    add b                                         ; $6cf9: $80
    ldh [rP1], a                                  ; $6cfa: $e0 $00
    nop                                           ; $6cfc: $00

jr_072_6cfd:
    nop                                           ; $6cfd: $00
    nop                                           ; $6cfe: $00
    nop                                           ; $6cff: $00
    ld e, [hl]                                    ; $6d00: $5e
    and b                                         ; $6d01: $a0
    rst $28                                       ; $6d02: $ef
    db $10                                        ; $6d03: $10
    ld b, e                                       ; $6d04: $43
    inc a                                         ; $6d05: $3c
    ld [hl], d                                    ; $6d06: $72
    dec c                                         ; $6d07: $0d
    inc a                                         ; $6d08: $3c
    inc bc                                        ; $6d09: $03
    rlca                                          ; $6d0a: $07
    nop                                           ; $6d0b: $00
    nop                                           ; $6d0c: $00
    nop                                           ; $6d0d: $00
    nop                                           ; $6d0e: $00
    nop                                           ; $6d0f: $00
    rra                                           ; $6d10: $1f
    nop                                           ; $6d11: $00
    add $e0                                       ; $6d12: $c6 $e0
    ld h, b                                       ; $6d14: $60
    ld sp, hl                                     ; $6d15: $f9
    ld d, b                                       ; $6d16: $50
    rst $38                                       ; $6d17: $ff
    jr nz, @+$01                                  ; $6d18: $20 $ff

    nop                                           ; $6d1a: $00
    rst $38                                       ; $6d1b: $ff
    nop                                           ; $6d1c: $00
    rst $38                                       ; $6d1d: $ff
    nop                                           ; $6d1e: $00
    rst $38                                       ; $6d1f: $ff
    add b                                         ; $6d20: $80
    nop                                           ; $6d21: $00
    dec de                                        ; $6d22: $1b
    ld a, a                                       ; $6d23: $7f
    and [hl]                                      ; $6d24: $a6
    rst $38                                       ; $6d25: $ff
    ld b, b                                       ; $6d26: $40
    rst $38                                       ; $6d27: $ff
    nop                                           ; $6d28: $00
    rst $38                                       ; $6d29: $ff
    nop                                           ; $6d2a: $00
    rst $38                                       ; $6d2b: $ff
    nop                                           ; $6d2c: $00
    rst $38                                       ; $6d2d: $ff
    nop                                           ; $6d2e: $00
    rst $38                                       ; $6d2f: $ff
    ccf                                           ; $6d30: $3f
    nop                                           ; $6d31: $00
    sbc [hl]                                      ; $6d32: $9e
    ret nz                                        ; $6d33: $c0

    nop                                           ; $6d34: $00
    pop hl                                        ; $6d35: $e1
    pop bc                                        ; $6d36: $c1
    rst $38                                       ; $6d37: $ff
    ld a, [bc]                                    ; $6d38: $0a
    rst $38                                       ; $6d39: $ff
    nop                                           ; $6d3a: $00
    rst $38                                       ; $6d3b: $ff
    nop                                           ; $6d3c: $00
    rst $38                                       ; $6d3d: $ff
    nop                                           ; $6d3e: $00
    rst $38                                       ; $6d3f: $ff
    add b                                         ; $6d40: $80
    nop                                           ; $6d41: $00
    jr nc, jr_072_6dc3                            ; $6d42: $30 $7f

    ld d, $ff                                     ; $6d44: $16 $ff
    ld h, h                                       ; $6d46: $64
    rst $38                                       ; $6d47: $ff
    nop                                           ; $6d48: $00
    rst $38                                       ; $6d49: $ff
    nop                                           ; $6d4a: $00
    rst $38                                       ; $6d4b: $ff
    nop                                           ; $6d4c: $00
    rst $38                                       ; $6d4d: $ff
    nop                                           ; $6d4e: $00
    rst $38                                       ; $6d4f: $ff
    rst $38                                       ; $6d50: $ff
    nop                                           ; $6d51: $00
    rst $18                                       ; $6d52: $df
    db $10                                        ; $6d53: $10
    or c                                          ; $6d54: $b1
    db $10                                        ; $6d55: $10
    ld a, a                                       ; $6d56: $7f
    jr c, jr_072_6d92                             ; $6d57: $38 $39

    db $10                                        ; $6d59: $10
    jp nc, $9800                                  ; $6d5a: $d2 $00 $98

    ld [$1c3c], sp                                ; $6d5d: $08 $3c $1c
    rst $38                                       ; $6d60: $ff
    nop                                           ; $6d61: $00
    rst $38                                       ; $6d62: $ff
    nop                                           ; $6d63: $00
    cp [hl]                                       ; $6d64: $be
    nop                                           ; $6d65: $00
    cp h                                          ; $6d66: $bc
    nop                                           ; $6d67: $00
    sub b                                         ; $6d68: $90
    nop                                           ; $6d69: $00
    nop                                           ; $6d6a: $00
    nop                                           ; $6d6b: $00
    ld bc, $0000                                  ; $6d6c: $01 $00 $00
    nop                                           ; $6d6f: $00
    rst $38                                       ; $6d70: $ff
    nop                                           ; $6d71: $00
    sbc a                                         ; $6d72: $9f

jr_072_6d73:
    db $10                                        ; $6d73: $10
    dec [hl]                                      ; $6d74: $35
    db $10                                        ; $6d75: $10
    ld a, l                                       ; $6d76: $7d
    jr c, jr_072_6db2                             ; $6d77: $38 $39

    db $10                                        ; $6d79: $10
    ld d, d                                       ; $6d7a: $52
    nop                                           ; $6d7b: $00
    sbc h                                         ; $6d7c: $9c
    ld [$1c3c], sp                                ; $6d7d: $08 $3c $1c
    rst $38                                       ; $6d80: $ff
    nop                                           ; $6d81: $00
    ei                                            ; $6d82: $fb
    nop                                           ; $6d83: $00
    ld sp, hl                                     ; $6d84: $f9
    nop                                           ; $6d85: $00
    cp l                                          ; $6d86: $bd
    nop                                           ; $6d87: $00
    cp c                                          ; $6d88: $b9
    nop                                           ; $6d89: $00
    nop                                           ; $6d8a: $00
    nop                                           ; $6d8b: $00
    add hl, bc                                    ; $6d8c: $09
    nop                                           ; $6d8d: $00
    nop                                           ; $6d8e: $00
    nop                                           ; $6d8f: $00
    sbc b                                         ; $6d90: $98
    nop                                           ; $6d91: $00

jr_072_6d92:
    ld [c], a                                     ; $6d92: $e2
    nop                                           ; $6d93: $00
    ld h, b                                       ; $6d94: $60
    ld h, b                                       ; $6d95: $60
    dec a                                         ; $6d96: $3d
    inc d                                         ; $6d97: $14
    ld a, [hl]                                    ; $6d98: $7e
    ld c, $fc                                     ; $6d99: $0e $fc
    inc a                                         ; $6d9b: $3c
    ld e, a                                       ; $6d9c: $5f
    inc sp                                        ; $6d9d: $33
    db $fc                                        ; $6d9e: $fc
    inc c                                         ; $6d9f: $0c
    ld bc, $0000                                  ; $6da0: $01 $00 $00
    nop                                           ; $6da3: $00
    ld [bc], a                                    ; $6da4: $02
    nop                                           ; $6da5: $00
    inc bc                                        ; $6da6: $03
    nop                                           ; $6da7: $00
    inc b                                         ; $6da8: $04
    nop                                           ; $6da9: $00
    ld [bc], a                                    ; $6daa: $02
    nop                                           ; $6dab: $00
    add h                                         ; $6dac: $84
    nop                                           ; $6dad: $00
    inc c                                         ; $6dae: $0c
    nop                                           ; $6daf: $00
    cp [hl]                                       ; $6db0: $be
    ld c, b                                       ; $6db1: $48

jr_072_6db2:
    rst $38                                       ; $6db2: $ff
    ld e, $5f                                     ; $6db3: $1e $5f
    inc hl                                        ; $6db5: $23

jr_072_6db6:
    rst $28                                       ; $6db6: $ef
    dec d                                         ; $6db7: $15
    ld a, h                                       ; $6db8: $7c
    ld l, b                                       ; $6db9: $68
    cp l                                          ; $6dba: $bd
    dec d                                         ; $6dbb: $15
    ld a, [hl]                                    ; $6dbc: $7e
    inc c                                         ; $6dbd: $0c
    call c, $ca2c                                 ; $6dbe: $dc $2c $ca
    add b                                         ; $6dc1: $80
    adc c                                         ; $6dc2: $89

jr_072_6dc3:
    nop                                           ; $6dc3: $00
    ld b, b                                       ; $6dc4: $40
    nop                                           ; $6dc5: $00
    ld b, h                                       ; $6dc6: $44
    nop                                           ; $6dc7: $00
    adc d                                         ; $6dc8: $8a
    nop                                           ; $6dc9: $00
    ld [bc], a                                    ; $6dca: $02
    nop                                           ; $6dcb: $00
    inc c                                         ; $6dcc: $0c
    nop                                           ; $6dcd: $00
    ld [bc], a                                    ; $6dce: $02
    nop                                           ; $6dcf: $00
    rra                                           ; $6dd0: $1f
    ld l, e                                       ; $6dd1: $6b
    cp h                                          ; $6dd2: $bc
    ld e, h                                       ; $6dd3: $5c
    ld a, $44                                     ; $6dd4: $3e $44
    rst $38                                       ; $6dd6: $ff
    ld a, [de]                                    ; $6dd7: $1a
    ld e, a                                       ; $6dd8: $5f
    dec hl                                        ; $6dd9: $2b
    rst $08                                       ; $6dda: $cf
    ld [hl], $5e                                  ; $6ddb: $36 $5e
    jr nz, @+$01                                  ; $6ddd: $20 $ff

    ld c, a                                       ; $6ddf: $4f
    add h                                         ; $6de0: $84
    nop                                           ; $6de1: $00
    inc c                                         ; $6de2: $0c
    nop                                           ; $6de3: $00
    jp nz, $8080                                  ; $6de4: $c2 $80 $80

    nop                                           ; $6de7: $00
    ld e, b                                       ; $6de8: $58
    nop                                           ; $6de9: $00
    ld b, l                                       ; $6dea: $45
    ld b, b                                       ; $6deb: $40
    adc d                                         ; $6dec: $8a
    nop                                           ; $6ded: $00
    adc [hl]                                      ; $6dee: $8e
    ld [bc], a                                    ; $6def: $02
    cp $ba                                        ; $6df0: $fe $ba
    ld a, [hl-]                                   ; $6df2: $3a
    ret z                                         ; $6df3: $c8

    jr c, jr_072_6db6                             ; $6df4: $38 $c0

    nop                                           ; $6df6: $00
    ld hl, sp+$01                                 ; $6df7: $f8 $01
    ld sp, hl                                     ; $6df9: $f9
    inc bc                                        ; $6dfa: $03
    rst $38                                       ; $6dfb: $ff
    adc a                                         ; $6dfc: $8f
    rst $38                                       ; $6dfd: $ff
    rst $38                                       ; $6dfe: $ff
    rst $38                                       ; $6dff: $ff
    ld [bc], a                                    ; $6e00: $02
    nop                                           ; $6e01: $00
    rlca                                          ; $6e02: $07
    nop                                           ; $6e03: $00
    inc bc                                        ; $6e04: $03
    nop                                           ; $6e05: $00
    nop                                           ; $6e06: $00
    nop                                           ; $6e07: $00
    adc b                                         ; $6e08: $88
    adc b                                         ; $6e09: $88
    sbc $de                                       ; $6e0a: $de $de
    rst $38                                       ; $6e0c: $ff
    rst $38                                       ; $6e0d: $ff
    rst $38                                       ; $6e0e: $ff
    rst $38                                       ; $6e0f: $ff
    nop                                           ; $6e10: $00
    rst $38                                       ; $6e11: $ff
    nop                                           ; $6e12: $00
    rst $38                                       ; $6e13: $ff
    nop                                           ; $6e14: $00
    rst $38                                       ; $6e15: $ff
    nop                                           ; $6e16: $00
    rst $38                                       ; $6e17: $ff
    nop                                           ; $6e18: $00
    rst $38                                       ; $6e19: $ff
    nop                                           ; $6e1a: $00
    rst $38                                       ; $6e1b: $ff
    nop                                           ; $6e1c: $00
    rst $38                                       ; $6e1d: $ff
    nop                                           ; $6e1e: $00
    rst $38                                       ; $6e1f: $ff
    nop                                           ; $6e20: $00
    rst $38                                       ; $6e21: $ff
    ld b, h                                       ; $6e22: $44
    cp e                                          ; $6e23: $bb
    nop                                           ; $6e24: $00
    rst $38                                       ; $6e25: $ff
    ld de, $00ee                                  ; $6e26: $11 $ee $00
    rst $38                                       ; $6e29: $ff
    xor d                                         ; $6e2a: $aa
    ld d, l                                       ; $6e2b: $55
    ld d, l                                       ; $6e2c: $55
    xor d                                         ; $6e2d: $aa
    rst $38                                       ; $6e2e: $ff
    nop                                           ; $6e2f: $00
    rst $38                                       ; $6e30: $ff
    nop                                           ; $6e31: $00
    rst $38                                       ; $6e32: $ff
    nop                                           ; $6e33: $00
    rst $38                                       ; $6e34: $ff
    nop                                           ; $6e35: $00
    rst $38                                       ; $6e36: $ff
    nop                                           ; $6e37: $00
    xor $00                                       ; $6e38: $ee $00
    rst $38                                       ; $6e3a: $ff
    nop                                           ; $6e3b: $00
    xor d                                         ; $6e3c: $aa
    nop                                           ; $6e3d: $00
    ld d, l                                       ; $6e3e: $55
    nop                                           ; $6e3f: $00
    rst $38                                       ; $6e40: $ff
    rst $38                                       ; $6e41: $ff
    rst $38                                       ; $6e42: $ff
    rst $38                                       ; $6e43: $ff
    rst $38                                       ; $6e44: $ff
    rst $38                                       ; $6e45: $ff
    rst $38                                       ; $6e46: $ff
    rst $38                                       ; $6e47: $ff
    rst $38                                       ; $6e48: $ff
    rst $38                                       ; $6e49: $ff
    rst $38                                       ; $6e4a: $ff
    rst $38                                       ; $6e4b: $ff
    rst $38                                       ; $6e4c: $ff
    rst $38                                       ; $6e4d: $ff
    rst $38                                       ; $6e4e: $ff
    rst $38                                       ; $6e4f: $ff
    rst $38                                       ; $6e50: $ff
    rra                                           ; $6e51: $1f
    rst $38                                       ; $6e52: $ff
    rlca                                          ; $6e53: $07
    rst $38                                       ; $6e54: $ff
    ld bc, $007f                                  ; $6e55: $01 $7f $00
    ld a, a                                       ; $6e58: $7f
    nop                                           ; $6e59: $00
    ccf                                           ; $6e5a: $3f
    nop                                           ; $6e5b: $00
    ld h, h                                       ; $6e5c: $64
    nop                                           ; $6e5d: $00
    inc bc                                        ; $6e5e: $03
    nop                                           ; $6e5f: $00
    rst $38                                       ; $6e60: $ff
    cp $ff                                        ; $6e61: $fe $ff
    ld hl, sp-$01                                 ; $6e63: $f8 $ff
    ldh [rIE], a                                  ; $6e65: $e0 $ff
    nop                                           ; $6e67: $00
    db $fd                                        ; $6e68: $fd
    nop                                           ; $6e69: $00
    ld bc, $fc00                                  ; $6e6a: $01 $00 $fc
    nop                                           ; $6e6d: $00
    or [hl]                                       ; $6e6e: $b6
    ld c, b                                       ; $6e6f: $48
    rst $38                                       ; $6e70: $ff
    rra                                           ; $6e71: $1f
    rst $38                                       ; $6e72: $ff
    rlca                                          ; $6e73: $07
    rst $38                                       ; $6e74: $ff
    ld bc, $007f                                  ; $6e75: $01 $7f $00
    ld a, a                                       ; $6e78: $7f
    nop                                           ; $6e79: $00
    jr z, jr_072_6e7c                             ; $6e7a: $28 $00

jr_072_6e7c:
    ld h, a                                       ; $6e7c: $67
    nop                                           ; $6e7d: $00
    dec c                                         ; $6e7e: $0d
    ld [bc], a                                    ; $6e7f: $02
    rst $38                                       ; $6e80: $ff
    cp $ff                                        ; $6e81: $fe $ff
    ld hl, sp-$01                                 ; $6e83: $f8 $ff
    ldh [rIE], a                                  ; $6e85: $e0 $ff
    nop                                           ; $6e87: $00
    rst $38                                       ; $6e88: $ff
    nop                                           ; $6e89: $00
    push hl                                       ; $6e8a: $e5
    nop                                           ; $6e8b: $00
    jr jr_072_6e8e                                ; $6e8c: $18 $00

jr_072_6e8e:
    db $ec                                        ; $6e8e: $ec
    db $10                                        ; $6e8f: $10
    ld c, $01                                     ; $6e90: $0e $01
    db $fd                                        ; $6e92: $fd
    ld [bc], a                                    ; $6e93: $02
    jp z, $7234                                   ; $6e94: $ca $34 $72

    adc h                                         ; $6e97: $8c
    ld [hl], $88                                  ; $6e98: $36 $88
    sbc b                                         ; $6e9a: $98
    nop                                           ; $6e9b: $00
    nop                                           ; $6e9c: $00
    nop                                           ; $6e9d: $00
    nop                                           ; $6e9e: $00
    nop                                           ; $6e9f: $00
    db $db                                        ; $6ea0: $db
    inc h                                         ; $6ea1: $24
    call c, $ee23                                 ; $6ea2: $dc $23 $ee
    ld de, $314e                                  ; $6ea5: $11 $4e $31
    ld l, e                                       ; $6ea8: $6b
    db $10                                        ; $6ea9: $10
    add hl, bc                                    ; $6eaa: $09
    nop                                           ; $6eab: $00
    nop                                           ; $6eac: $00
    nop                                           ; $6ead: $00
    nop                                           ; $6eae: $00
    nop                                           ; $6eaf: $00
    sbc l                                         ; $6eb0: $9d
    ld [bc], a                                    ; $6eb1: $02
    jp nc, $eb2d                                  ; $6eb2: $d2 $2d $eb

    inc d                                         ; $6eb5: $14
    ld h, a                                       ; $6eb6: $67
    sbc b                                         ; $6eb7: $98
    cp l                                          ; $6eb8: $bd
    ld b, b                                       ; $6eb9: $40
    ld [hl], b                                    ; $6eba: $70
    add b                                         ; $6ebb: $80
    nop                                           ; $6ebc: $00
    nop                                           ; $6ebd: $00
    nop                                           ; $6ebe: $00
    nop                                           ; $6ebf: $00
    cpl                                           ; $6ec0: $2f
    ret nc                                        ; $6ec1: $d0

    rst $30                                       ; $6ec2: $f7
    ld [$1e21], sp                                ; $6ec3: $08 $21 $1e
    cp c                                          ; $6ec6: $b9
    ld b, $1e                                     ; $6ec7: $06 $1e
    ld bc, $0003                                  ; $6ec9: $01 $03 $00
    nop                                           ; $6ecc: $00
    nop                                           ; $6ecd: $00
    nop                                           ; $6ece: $00
    nop                                           ; $6ecf: $00
    rrca                                          ; $6ed0: $0f
    nop                                           ; $6ed1: $00
    ld h, e                                       ; $6ed2: $63
    ldh a, [$30]                                  ; $6ed3: $f0 $30
    db $fc                                        ; $6ed5: $fc
    jr z, @+$01                                   ; $6ed6: $28 $ff

    db $10                                        ; $6ed8: $10
    rst $38                                       ; $6ed9: $ff
    nop                                           ; $6eda: $00
    rst $38                                       ; $6edb: $ff
    nop                                           ; $6edc: $00
    rst $38                                       ; $6edd: $ff
    nop                                           ; $6ede: $00
    rst $38                                       ; $6edf: $ff
    ret nz                                        ; $6ee0: $c0

    nop                                           ; $6ee1: $00
    dec c                                         ; $6ee2: $0d
    ccf                                           ; $6ee3: $3f
    ld d, e                                       ; $6ee4: $53
    rst $38                                       ; $6ee5: $ff
    jr nz, @+$01                                  ; $6ee6: $20 $ff

    nop                                           ; $6ee8: $00
    rst $38                                       ; $6ee9: $ff
    nop                                           ; $6eea: $00
    rst $38                                       ; $6eeb: $ff
    nop                                           ; $6eec: $00
    rst $38                                       ; $6eed: $ff
    nop                                           ; $6eee: $00
    rst $38                                       ; $6eef: $ff
    rra                                           ; $6ef0: $1f
    nop                                           ; $6ef1: $00
    rst $08                                       ; $6ef2: $cf
    ldh [rP1], a                                  ; $6ef3: $e0 $00
    ldh a, [$60]                                  ; $6ef5: $f0 $60
    rst $38                                       ; $6ef7: $ff
    dec b                                         ; $6ef8: $05
    rst $38                                       ; $6ef9: $ff
    nop                                           ; $6efa: $00
    rst $38                                       ; $6efb: $ff
    nop                                           ; $6efc: $00
    rst $38                                       ; $6efd: $ff
    nop                                           ; $6efe: $00
    rst $38                                       ; $6eff: $ff
    ret nz                                        ; $6f00: $c0

    nop                                           ; $6f01: $00
    jr jr_072_6f43                                ; $6f02: $18 $3f

    dec bc                                        ; $6f04: $0b
    rst $38                                       ; $6f05: $ff
    or d                                          ; $6f06: $b2
    rst $38                                       ; $6f07: $ff
    nop                                           ; $6f08: $00
    rst $38                                       ; $6f09: $ff
    nop                                           ; $6f0a: $00
    rst $38                                       ; $6f0b: $ff
    nop                                           ; $6f0c: $00
    rst $38                                       ; $6f0d: $ff
    nop                                           ; $6f0e: $00
    rst $38                                       ; $6f0f: $ff
    rst $38                                       ; $6f10: $ff
    nop                                           ; $6f11: $00
    rst $28                                       ; $6f12: $ef
    ld [$08d8], sp                                ; $6f13: $08 $d8 $08
    cp a                                          ; $6f16: $bf
    inc e                                         ; $6f17: $1c
    sbc h                                         ; $6f18: $9c
    ld [$0069], sp                                ; $6f19: $08 $69 $00
    call z, Call_000_1e04                         ; $6f1c: $cc $04 $1e
    ld c, $ff                                     ; $6f1f: $0e $ff
    nop                                           ; $6f21: $00
    rst $38                                       ; $6f22: $ff
    nop                                           ; $6f23: $00
    rst $18                                       ; $6f24: $df
    nop                                           ; $6f25: $00
    sbc $00                                       ; $6f26: $de $00
    ret z                                         ; $6f28: $c8

    nop                                           ; $6f29: $00
    nop                                           ; $6f2a: $00
    nop                                           ; $6f2b: $00
    nop                                           ; $6f2c: $00
    nop                                           ; $6f2d: $00
    nop                                           ; $6f2e: $00
    nop                                           ; $6f2f: $00
    rst $38                                       ; $6f30: $ff
    nop                                           ; $6f31: $00
    rst $08                                       ; $6f32: $cf
    ld [$081a], sp                                ; $6f33: $08 $1a $08
    ld a, $1c                                     ; $6f36: $3e $1c
    inc e                                         ; $6f38: $1c
    ld [$0029], sp                                ; $6f39: $08 $29 $00
    adc $04                                       ; $6f3c: $ce $04
    ld e, $0e                                     ; $6f3e: $1e $0e
    rst $38                                       ; $6f40: $ff
    nop                                           ; $6f41: $00
    db $fd                                        ; $6f42: $fd

jr_072_6f43:
    nop                                           ; $6f43: $00
    db $fc                                        ; $6f44: $fc
    nop                                           ; $6f45: $00
    sbc $00                                       ; $6f46: $de $00
    call c, RST_00                                ; $6f48: $dc $00 $00
    nop                                           ; $6f4b: $00
    inc b                                         ; $6f4c: $04
    nop                                           ; $6f4d: $00
    nop                                           ; $6f4e: $00
    nop                                           ; $6f4f: $00
    call z, $7100                                 ; $6f50: $cc $00 $71
    nop                                           ; $6f53: $00
    jr nc, jr_072_6f86                            ; $6f54: $30 $30

    sbc [hl]                                      ; $6f56: $9e
    ld a, [bc]                                    ; $6f57: $0a
    ccf                                           ; $6f58: $3f
    rlca                                          ; $6f59: $07
    ld a, [hl]                                    ; $6f5a: $7e
    ld e, $2f                                     ; $6f5b: $1e $2f
    add hl, de                                    ; $6f5d: $19
    ld a, [hl]                                    ; $6f5e: $7e
    ld b, $00                                     ; $6f5f: $06 $00
    nop                                           ; $6f61: $00
    nop                                           ; $6f62: $00
    nop                                           ; $6f63: $00
    ld bc, $8100                                  ; $6f64: $01 $00 $81
    nop                                           ; $6f67: $00
    ld [bc], a                                    ; $6f68: $02
    nop                                           ; $6f69: $00
    ld bc, $c200                                  ; $6f6a: $01 $00 $c2
    add b                                         ; $6f6d: $80
    ld b, $00                                     ; $6f6e: $06 $00
    ld e, a                                       ; $6f70: $5f
    inc h                                         ; $6f71: $24
    rst $38                                       ; $6f72: $ff
    rrca                                          ; $6f73: $0f
    cpl                                           ; $6f74: $2f
    ld de, $0a77                                  ; $6f75: $11 $77 $0a
    ld a, $34                                     ; $6f78: $3e $34
    ld e, [hl]                                    ; $6f7a: $5e
    ld a, [bc]                                    ; $6f7b: $0a
    ccf                                           ; $6f7c: $3f
    ld b, $6e                                     ; $6f7d: $06 $6e
    ld d, $65                                     ; $6f7f: $16 $65
    ld b, b                                       ; $6f81: $40
    call nz, $a000                                ; $6f82: $c4 $00 $a0
    add b                                         ; $6f85: $80

jr_072_6f86:
    and d                                         ; $6f86: $a2
    add b                                         ; $6f87: $80
    ld b, l                                       ; $6f88: $45
    nop                                           ; $6f89: $00
    add c                                         ; $6f8a: $81
    add b                                         ; $6f8b: $80
    ld b, $00                                     ; $6f8c: $06 $00
    ld bc, $0f00                                  ; $6f8e: $01 $00 $0f
    dec [hl]                                      ; $6f91: $35
    ld e, [hl]                                    ; $6f92: $5e
    ld l, $1f                                     ; $6f93: $2e $1f
    ld [hl+], a                                   ; $6f95: $22
    ld a, a                                       ; $6f96: $7f
    dec c                                         ; $6f97: $0d
    cpl                                           ; $6f98: $2f
    dec d                                         ; $6f99: $15
    rst $20                                       ; $6f9a: $e7
    dec de                                        ; $6f9b: $1b
    cpl                                           ; $6f9c: $2f
    db $10                                        ; $6f9d: $10
    ld a, a                                       ; $6f9e: $7f
    daa                                           ; $6f9f: $27
    jp nz, Jump_000_0680                          ; $6fa0: $c2 $80 $06

    nop                                           ; $6fa3: $00
    ld h, c                                       ; $6fa4: $61
    ld b, b                                       ; $6fa5: $40
    ret nz                                        ; $6fa6: $c0

    nop                                           ; $6fa7: $00
    xor h                                         ; $6fa8: $ac
    add b                                         ; $6fa9: $80
    and d                                         ; $6faa: $a2
    jr nz, jr_072_6ff2                            ; $6fab: $20 $45

    nop                                           ; $6fad: $00
    rst $00                                       ; $6fae: $c7
    add c                                         ; $6faf: $81
    ld a, a                                       ; $6fb0: $7f
    ld e, l                                       ; $6fb1: $5d
    sbc l                                         ; $6fb2: $9d
    ld h, h                                       ; $6fb3: $64
    sbc h                                         ; $6fb4: $9c
    ld h, b                                       ; $6fb5: $60
    nop                                           ; $6fb6: $00
    ld a, h                                       ; $6fb7: $7c
    nop                                           ; $6fb8: $00
    ld a, h                                       ; $6fb9: $7c
    ld bc, $c77f                                  ; $6fba: $01 $7f $c7
    rst $38                                       ; $6fbd: $ff
    rst $38                                       ; $6fbe: $ff
    rst $38                                       ; $6fbf: $ff
    ld bc, $0300                                  ; $6fc0: $01 $00 $03
    nop                                           ; $6fc3: $00
    ld bc, $0000                                  ; $6fc4: $01 $00 $00
    nop                                           ; $6fc7: $00
    call nz, $efc4                                ; $6fc8: $c4 $c4 $ef
    rst $28                                       ; $6fcb: $ef
    rst $38                                       ; $6fcc: $ff
    rst $38                                       ; $6fcd: $ff
    rst $38                                       ; $6fce: $ff
    rst $38                                       ; $6fcf: $ff
    nop                                           ; $6fd0: $00
    rst $38                                       ; $6fd1: $ff
    nop                                           ; $6fd2: $00
    rst $38                                       ; $6fd3: $ff
    nop                                           ; $6fd4: $00
    rst $38                                       ; $6fd5: $ff
    nop                                           ; $6fd6: $00
    rst $38                                       ; $6fd7: $ff
    nop                                           ; $6fd8: $00
    rst $38                                       ; $6fd9: $ff
    nop                                           ; $6fda: $00
    rst $38                                       ; $6fdb: $ff
    nop                                           ; $6fdc: $00
    rst $38                                       ; $6fdd: $ff
    nop                                           ; $6fde: $00
    rst $38                                       ; $6fdf: $ff
    nop                                           ; $6fe0: $00
    rst $38                                       ; $6fe1: $ff
    ld b, h                                       ; $6fe2: $44
    cp e                                          ; $6fe3: $bb
    nop                                           ; $6fe4: $00
    rst $38                                       ; $6fe5: $ff
    ld de, $00ee                                  ; $6fe6: $11 $ee $00
    rst $38                                       ; $6fe9: $ff
    xor d                                         ; $6fea: $aa
    ld d, l                                       ; $6feb: $55
    ld d, l                                       ; $6fec: $55
    xor d                                         ; $6fed: $aa
    rst $38                                       ; $6fee: $ff
    nop                                           ; $6fef: $00
    rst $38                                       ; $6ff0: $ff
    nop                                           ; $6ff1: $00

jr_072_6ff2:
    rst $38                                       ; $6ff2: $ff
    nop                                           ; $6ff3: $00
    rst $38                                       ; $6ff4: $ff
    nop                                           ; $6ff5: $00
    rst $38                                       ; $6ff6: $ff
    nop                                           ; $6ff7: $00
    xor $00                                       ; $6ff8: $ee $00
    rst $38                                       ; $6ffa: $ff
    nop                                           ; $6ffb: $00
    xor d                                         ; $6ffc: $aa
    nop                                           ; $6ffd: $00
    ld d, l                                       ; $6ffe: $55
    nop                                           ; $6fff: $00
    rst $38                                       ; $7000: $ff
    rst $38                                       ; $7001: $ff
    rst $38                                       ; $7002: $ff
    rst $38                                       ; $7003: $ff
    rst $38                                       ; $7004: $ff
    rst $38                                       ; $7005: $ff
    rst $38                                       ; $7006: $ff
    rst $38                                       ; $7007: $ff
    rst $38                                       ; $7008: $ff
    rst $38                                       ; $7009: $ff
    rst $38                                       ; $700a: $ff
    rst $38                                       ; $700b: $ff
    rst $38                                       ; $700c: $ff
    rst $38                                       ; $700d: $ff
    rst $38                                       ; $700e: $ff
    rst $38                                       ; $700f: $ff
    rst $38                                       ; $7010: $ff
    add a                                         ; $7011: $87
    rst $38                                       ; $7012: $ff
    ld bc, $00ff                                  ; $7013: $01 $ff $00
    rst $18                                       ; $7016: $df
    nop                                           ; $7017: $00
    rst $18                                       ; $7018: $df
    nop                                           ; $7019: $00
    ld c, a                                       ; $701a: $4f
    nop                                           ; $701b: $00
    jr jr_072_701e                                ; $701c: $18 $00

jr_072_701e:
    ld bc, $ff00                                  ; $701e: $01 $00 $ff
    rst $38                                       ; $7021: $ff
    rst $38                                       ; $7022: $ff
    cp $ff                                        ; $7023: $fe $ff
    ld a, b                                       ; $7025: $78
    rst $38                                       ; $7026: $ff
    nop                                           ; $7027: $00
    rst $38                                       ; $7028: $ff
    nop                                           ; $7029: $00
    add c                                         ; $702a: $81
    nop                                           ; $702b: $00
    ld a, [hl]                                    ; $702c: $7e
    nop                                           ; $702d: $00
    db $db                                        ; $702e: $db
    inc h                                         ; $702f: $24
    rst $38                                       ; $7030: $ff
    add a                                         ; $7031: $87
    rst $38                                       ; $7032: $ff
    ld bc, $00ff                                  ; $7033: $01 $ff $00
    rst $18                                       ; $7036: $df
    nop                                           ; $7037: $00
    ld e, a                                       ; $7038: $5f
    nop                                           ; $7039: $00
    ld c, b                                       ; $703a: $48
    nop                                           ; $703b: $00
    dec de                                        ; $703c: $1b
    nop                                           ; $703d: $00
    ld b, $01                                     ; $703e: $06 $01
    rst $38                                       ; $7040: $ff
    rst $38                                       ; $7041: $ff
    rst $38                                       ; $7042: $ff
    cp $ff                                        ; $7043: $fe $ff
    ld a, b                                       ; $7045: $78
    rst $38                                       ; $7046: $ff
    nop                                           ; $7047: $00
    rst $38                                       ; $7048: $ff
    nop                                           ; $7049: $00
    inc sp                                        ; $704a: $33
    nop                                           ; $704b: $00
    adc l                                         ; $704c: $8d
    nop                                           ; $704d: $00
    or $08                                        ; $704e: $f6 $08
    add a                                         ; $7050: $87
    nop                                           ; $7051: $00
    cp $01                                        ; $7052: $fe $01
    push hl                                       ; $7054: $e5
    ld a, [de]                                    ; $7055: $1a
    cp c                                          ; $7056: $b9
    ld b, [hl]                                    ; $7057: $46
    dec de                                        ; $7058: $1b
    call nz, Call_000_00cc                        ; $7059: $c4 $cc $00
    nop                                           ; $705c: $00
    nop                                           ; $705d: $00
    nop                                           ; $705e: $00
    nop                                           ; $705f: $00
    ld l, l                                       ; $7060: $6d
    sub d                                         ; $7061: $92
    xor $11                                       ; $7062: $ee $11
    ld [hl], a                                    ; $7064: $77
    ld [$1827], sp                                ; $7065: $08 $27 $18
    dec [hl]                                      ; $7068: $35
    ld [$0004], sp                                ; $7069: $08 $04 $00
    nop                                           ; $706c: $00
    nop                                           ; $706d: $00
    nop                                           ; $706e: $00
    nop                                           ; $706f: $00
    adc $01                                       ; $7070: $ce $01
    ld l, c                                       ; $7072: $69
    sub [hl]                                      ; $7073: $96
    ld [hl], l                                    ; $7074: $75
    adc d                                         ; $7075: $8a
    inc sp                                        ; $7076: $33
    call z, Call_000_20de                         ; $7077: $cc $de $20
    cp b                                          ; $707a: $b8
    ld b, b                                       ; $707b: $40
    nop                                           ; $707c: $00
    nop                                           ; $707d: $00
    nop                                           ; $707e: $00
    nop                                           ; $707f: $00
    sub a                                         ; $7080: $97
    ld l, b                                       ; $7081: $68
    ld a, e                                       ; $7082: $7b
    add h                                         ; $7083: $84
    sub b                                         ; $7084: $90
    rrca                                          ; $7085: $0f
    call c, $8f03                                 ; $7086: $dc $03 $8f
    nop                                           ; $7089: $00
    ld bc, $0000                                  ; $708a: $01 $00 $00
    nop                                           ; $708d: $00
    nop                                           ; $708e: $00
    nop                                           ; $708f: $00
    rlca                                          ; $7090: $07
    nop                                           ; $7091: $00
    ld sp, $98f8                                  ; $7092: $31 $f8 $98
    cp $14                                        ; $7095: $fe $14
    rst $38                                       ; $7097: $ff
    ld [$00ff], sp                                ; $7098: $08 $ff $00
    rst $38                                       ; $709b: $ff
    nop                                           ; $709c: $00
    rst $38                                       ; $709d: $ff
    nop                                           ; $709e: $00
    rst $38                                       ; $709f: $ff
    ldh [rP1], a                                  ; $70a0: $e0 $00
    add [hl]                                      ; $70a2: $86
    rra                                           ; $70a3: $1f
    add hl, hl                                    ; $70a4: $29
    ld a, a                                       ; $70a5: $7f
    db $10                                        ; $70a6: $10
    rst $38                                       ; $70a7: $ff
    nop                                           ; $70a8: $00
    rst $38                                       ; $70a9: $ff
    nop                                           ; $70aa: $00
    rst $38                                       ; $70ab: $ff
    nop                                           ; $70ac: $00
    rst $38                                       ; $70ad: $ff
    nop                                           ; $70ae: $00
    rst $38                                       ; $70af: $ff
    rrca                                          ; $70b0: $0f
    nop                                           ; $70b1: $00
    rst $20                                       ; $70b2: $e7
    ldh a, [$80]                                  ; $70b3: $f0 $80
    ld hl, sp+$30                                 ; $70b5: $f8 $30
    rst $38                                       ; $70b7: $ff
    ld [bc], a                                    ; $70b8: $02
    rst $38                                       ; $70b9: $ff
    nop                                           ; $70ba: $00
    rst $38                                       ; $70bb: $ff
    nop                                           ; $70bc: $00
    rst $38                                       ; $70bd: $ff
    nop                                           ; $70be: $00
    rst $38                                       ; $70bf: $ff
    ldh [rP1], a                                  ; $70c0: $e0 $00
    adc h                                         ; $70c2: $8c
    rra                                           ; $70c3: $1f
    dec b                                         ; $70c4: $05
    ld a, a                                       ; $70c5: $7f
    ld e, c                                       ; $70c6: $59
    rst $38                                       ; $70c7: $ff
    add b                                         ; $70c8: $80
    rst $38                                       ; $70c9: $ff
    nop                                           ; $70ca: $00
    rst $38                                       ; $70cb: $ff
    nop                                           ; $70cc: $00
    rst $38                                       ; $70cd: $ff
    nop                                           ; $70ce: $00
    rst $38                                       ; $70cf: $ff
    rst $38                                       ; $70d0: $ff
    nop                                           ; $70d1: $00
    rst $28                                       ; $70d2: $ef
    ld [$087a], sp                                ; $70d3: $08 $7a $08
    ld a, [hl]                                    ; $70d6: $7e
    inc e                                         ; $70d7: $1c
    ld e, h                                       ; $70d8: $5c
    ld [$0028], sp                                ; $70d9: $08 $28 $00
    call z, Call_000_1e04                         ; $70dc: $cc $04 $1e
    ld c, $ff                                     ; $70df: $0e $ff
    nop                                           ; $70e1: $00
    rst $38                                       ; $70e2: $ff
    nop                                           ; $70e3: $00
    ld l, a                                       ; $70e4: $6f
    nop                                           ; $70e5: $00
    rst $28                                       ; $70e6: $ef
    nop                                           ; $70e7: $00
    ld h, h                                       ; $70e8: $64
    nop                                           ; $70e9: $00
    add b                                         ; $70ea: $80
    nop                                           ; $70eb: $00
    nop                                           ; $70ec: $00
    nop                                           ; $70ed: $00
    nop                                           ; $70ee: $00
    nop                                           ; $70ef: $00
    rst $38                                       ; $70f0: $ff
    nop                                           ; $70f1: $00
    rst $28                                       ; $70f2: $ef
    ld [$089b], sp                                ; $70f3: $08 $9b $08
    ld a, $1c                                     ; $70f6: $3e $1c
    inc e                                         ; $70f8: $1c
    ld [$0028], sp                                ; $70f9: $08 $28 $00
    call Call_000_1e04                            ; $70fc: $cd $04 $1e
    ld c, $ff                                     ; $70ff: $0e $ff
    nop                                           ; $7101: $00
    cp $00                                        ; $7102: $fe $00
    ld a, [hl]                                    ; $7104: $7e
    nop                                           ; $7105: $00
    ld l, a                                       ; $7106: $6f
    nop                                           ; $7107: $00
    ld l, [hl]                                    ; $7108: $6e
    nop                                           ; $7109: $00
    add b                                         ; $710a: $80
    nop                                           ; $710b: $00
    ld [bc], a                                    ; $710c: $02
    nop                                           ; $710d: $00
    nop                                           ; $710e: $00
    nop                                           ; $710f: $00
    call z, $7100                                 ; $7110: $cc $00 $71
    nop                                           ; $7113: $00
    jr nc, jr_072_7146                            ; $7114: $30 $30

    sbc [hl]                                      ; $7116: $9e
    ld a, [bc]                                    ; $7117: $0a
    ccf                                           ; $7118: $3f
    rlca                                          ; $7119: $07
    ld a, [hl]                                    ; $711a: $7e
    ld e, $2f                                     ; $711b: $1e $2f
    add hl, de                                    ; $711d: $19
    ld a, [hl]                                    ; $711e: $7e
    ld b, $00                                     ; $711f: $06 $00
    nop                                           ; $7121: $00
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    ld bc, $8100                                  ; $7124: $01 $00 $81
    nop                                           ; $7127: $00
    ld [bc], a                                    ; $7128: $02
    nop                                           ; $7129: $00
    ld bc, $c200                                  ; $712a: $01 $00 $c2
    add b                                         ; $712d: $80
    ld b, $00                                     ; $712e: $06 $00
    ld e, a                                       ; $7130: $5f
    inc h                                         ; $7131: $24
    rst $38                                       ; $7132: $ff
    rrca                                          ; $7133: $0f
    cpl                                           ; $7134: $2f
    ld de, $0a77                                  ; $7135: $11 $77 $0a
    ld a, $34                                     ; $7138: $3e $34
    ld e, [hl]                                    ; $713a: $5e
    ld a, [bc]                                    ; $713b: $0a
    ccf                                           ; $713c: $3f
    ld b, $6e                                     ; $713d: $06 $6e
    ld d, $65                                     ; $713f: $16 $65
    ld b, b                                       ; $7141: $40
    call nz, $a000                                ; $7142: $c4 $00 $a0
    add b                                         ; $7145: $80

jr_072_7146:
    and d                                         ; $7146: $a2
    add b                                         ; $7147: $80
    ld b, l                                       ; $7148: $45
    nop                                           ; $7149: $00
    add c                                         ; $714a: $81
    add b                                         ; $714b: $80
    ld b, $00                                     ; $714c: $06 $00
    ld bc, $0f00                                  ; $714e: $01 $00 $0f
    dec [hl]                                      ; $7151: $35
    ld e, [hl]                                    ; $7152: $5e
    ld l, $1f                                     ; $7153: $2e $1f
    ld [hl+], a                                   ; $7155: $22
    ld a, a                                       ; $7156: $7f
    dec c                                         ; $7157: $0d
    cpl                                           ; $7158: $2f
    dec d                                         ; $7159: $15
    rst $20                                       ; $715a: $e7
    dec de                                        ; $715b: $1b
    cpl                                           ; $715c: $2f
    db $10                                        ; $715d: $10
    ld a, a                                       ; $715e: $7f
    daa                                           ; $715f: $27
    jp nz, Jump_000_0680                          ; $7160: $c2 $80 $06

    nop                                           ; $7163: $00
    ld h, c                                       ; $7164: $61
    ld b, b                                       ; $7165: $40
    ret nz                                        ; $7166: $c0

    nop                                           ; $7167: $00
    xor h                                         ; $7168: $ac
    add b                                         ; $7169: $80
    and d                                         ; $716a: $a2
    jr nz, jr_072_71b2                            ; $716b: $20 $45

    nop                                           ; $716d: $00
    rst $00                                       ; $716e: $c7
    add c                                         ; $716f: $81
    ld a, a                                       ; $7170: $7f
    ld e, l                                       ; $7171: $5d
    sbc l                                         ; $7172: $9d
    ld h, h                                       ; $7173: $64
    sbc h                                         ; $7174: $9c
    ld h, b                                       ; $7175: $60
    nop                                           ; $7176: $00
    ld a, h                                       ; $7177: $7c
    nop                                           ; $7178: $00
    ld a, h                                       ; $7179: $7c
    ld bc, $c77f                                  ; $717a: $01 $7f $c7
    rst $38                                       ; $717d: $ff
    rst $38                                       ; $717e: $ff
    rst $38                                       ; $717f: $ff
    ld bc, $0300                                  ; $7180: $01 $00 $03
    nop                                           ; $7183: $00
    ld bc, $0000                                  ; $7184: $01 $00 $00
    nop                                           ; $7187: $00
    call nz, $efc4                                ; $7188: $c4 $c4 $ef
    rst $28                                       ; $718b: $ef
    rst $38                                       ; $718c: $ff
    rst $38                                       ; $718d: $ff
    rst $38                                       ; $718e: $ff
    rst $38                                       ; $718f: $ff
    nop                                           ; $7190: $00
    rst $38                                       ; $7191: $ff
    nop                                           ; $7192: $00
    rst $38                                       ; $7193: $ff
    nop                                           ; $7194: $00
    rst $38                                       ; $7195: $ff
    nop                                           ; $7196: $00
    rst $38                                       ; $7197: $ff
    nop                                           ; $7198: $00
    rst $38                                       ; $7199: $ff
    nop                                           ; $719a: $00
    rst $38                                       ; $719b: $ff
    nop                                           ; $719c: $00
    rst $38                                       ; $719d: $ff
    nop                                           ; $719e: $00
    rst $38                                       ; $719f: $ff
    nop                                           ; $71a0: $00
    rst $38                                       ; $71a1: $ff
    ld b, h                                       ; $71a2: $44
    cp e                                          ; $71a3: $bb
    nop                                           ; $71a4: $00
    rst $38                                       ; $71a5: $ff
    ld de, $00ee                                  ; $71a6: $11 $ee $00
    rst $38                                       ; $71a9: $ff
    xor d                                         ; $71aa: $aa
    ld d, l                                       ; $71ab: $55
    ld d, l                                       ; $71ac: $55
    xor d                                         ; $71ad: $aa
    rst $38                                       ; $71ae: $ff
    nop                                           ; $71af: $00
    rst $38                                       ; $71b0: $ff
    nop                                           ; $71b1: $00

jr_072_71b2:
    rst $38                                       ; $71b2: $ff
    nop                                           ; $71b3: $00
    rst $38                                       ; $71b4: $ff
    nop                                           ; $71b5: $00
    rst $38                                       ; $71b6: $ff
    nop                                           ; $71b7: $00
    ld [hl], a                                    ; $71b8: $77
    nop                                           ; $71b9: $00
    rst $38                                       ; $71ba: $ff
    nop                                           ; $71bb: $00
    ld d, l                                       ; $71bc: $55
    nop                                           ; $71bd: $00
    xor d                                         ; $71be: $aa
    nop                                           ; $71bf: $00
    rst $38                                       ; $71c0: $ff
    rst $38                                       ; $71c1: $ff
    rst $38                                       ; $71c2: $ff
    rst $38                                       ; $71c3: $ff
    rst $38                                       ; $71c4: $ff
    rst $38                                       ; $71c5: $ff
    rst $38                                       ; $71c6: $ff
    rst $38                                       ; $71c7: $ff
    rst $38                                       ; $71c8: $ff
    rst $38                                       ; $71c9: $ff
    rst $38                                       ; $71ca: $ff
    rst $38                                       ; $71cb: $ff
    rst $38                                       ; $71cc: $ff
    rst $38                                       ; $71cd: $ff
    rst $38                                       ; $71ce: $ff
    rst $38                                       ; $71cf: $ff
    rst $38                                       ; $71d0: $ff
    pop hl                                        ; $71d1: $e1
    rst $38                                       ; $71d2: $ff
    add b                                         ; $71d3: $80
    rst $38                                       ; $71d4: $ff
    nop                                           ; $71d5: $00
    rst $30                                       ; $71d6: $f7
    nop                                           ; $71d7: $00
    rst $30                                       ; $71d8: $f7
    nop                                           ; $71d9: $00
    db $d3                                        ; $71da: $d3
    nop                                           ; $71db: $00
    add $00                                       ; $71dc: $c6 $00
    nop                                           ; $71de: $00
    nop                                           ; $71df: $00
    rst $38                                       ; $71e0: $ff
    rst $38                                       ; $71e1: $ff
    rst $38                                       ; $71e2: $ff
    ld a, a                                       ; $71e3: $7f
    rst $38                                       ; $71e4: $ff
    ld e, $ff                                     ; $71e5: $1e $ff
    nop                                           ; $71e7: $00
    rst $38                                       ; $71e8: $ff
    nop                                           ; $71e9: $00
    ret nz                                        ; $71ea: $c0

    nop                                           ; $71eb: $00
    ccf                                           ; $71ec: $3f
    nop                                           ; $71ed: $00
    db $ed                                        ; $71ee: $ed
    ld [de], a                                    ; $71ef: $12
    rst $38                                       ; $71f0: $ff
    pop hl                                        ; $71f1: $e1
    rst $38                                       ; $71f2: $ff
    add b                                         ; $71f3: $80
    rst $38                                       ; $71f4: $ff
    nop                                           ; $71f5: $00
    rst $30                                       ; $71f6: $f7
    nop                                           ; $71f7: $00
    rst $10                                       ; $71f8: $d7
    nop                                           ; $71f9: $00
    jp nc, Jump_072_4500                          ; $71fa: $d2 $00 $45

    nop                                           ; $71fd: $00
    add e                                         ; $71fe: $83
    nop                                           ; $71ff: $00
    rst $38                                       ; $7200: $ff
    rst $38                                       ; $7201: $ff
    rst $38                                       ; $7202: $ff
    ld a, a                                       ; $7203: $7f
    rst $38                                       ; $7204: $ff
    ld e, $ff                                     ; $7205: $1e $ff
    nop                                           ; $7207: $00
    rst $38                                       ; $7208: $ff
    nop                                           ; $7209: $00
    add hl, bc                                    ; $720a: $09
    nop                                           ; $720b: $00
    add $00                                       ; $720c: $c6 $00
    ld a, e                                       ; $720e: $7b
    add h                                         ; $720f: $84
    jp $ff00                                      ; $7210: $c3 $00 $ff


    nop                                           ; $7213: $00
    ld [hl], d                                    ; $7214: $72
    adc l                                         ; $7215: $8d
    ld e, h                                       ; $7216: $5c
    and e                                         ; $7217: $a3
    adc l                                         ; $7218: $8d
    ld h, d                                       ; $7219: $62
    and $00                                       ; $721a: $e6 $00
    nop                                           ; $721c: $00
    nop                                           ; $721d: $00
    nop                                           ; $721e: $00
    nop                                           ; $721f: $00
    or [hl]                                       ; $7220: $b6
    ld c, c                                       ; $7221: $49
    ld [hl], a                                    ; $7222: $77
    adc b                                         ; $7223: $88
    cp e                                          ; $7224: $bb
    inc b                                         ; $7225: $04
    sub e                                         ; $7226: $93
    inc c                                         ; $7227: $0c
    sbc d                                         ; $7228: $9a
    inc b                                         ; $7229: $04
    ld [bc], a                                    ; $722a: $02
    nop                                           ; $722b: $00
    nop                                           ; $722c: $00
    nop                                           ; $722d: $00
    nop                                           ; $722e: $00
    nop                                           ; $722f: $00
    rst $20                                       ; $7230: $e7
    nop                                           ; $7231: $00
    inc [hl]                                      ; $7232: $34
    res 7, d                                      ; $7233: $cb $ba
    ld b, l                                       ; $7235: $45
    sbc c                                         ; $7236: $99
    ld h, [hl]                                    ; $7237: $66
    rst $28                                       ; $7238: $ef
    db $10                                        ; $7239: $10
    ld e, h                                       ; $723a: $5c
    jr nz, jr_072_723d                            ; $723b: $20 $00

jr_072_723d:
    nop                                           ; $723d: $00
    nop                                           ; $723e: $00
    nop                                           ; $723f: $00
    ld c, e                                       ; $7240: $4b
    or h                                          ; $7241: $b4
    cp l                                          ; $7242: $bd
    ld b, d                                       ; $7243: $42
    ret z                                         ; $7244: $c8

    rlca                                          ; $7245: $07
    xor $01                                       ; $7246: $ee $01
    ld b, a                                       ; $7248: $47
    nop                                           ; $7249: $00
    nop                                           ; $724a: $00
    nop                                           ; $724b: $00
    nop                                           ; $724c: $00
    nop                                           ; $724d: $00
    nop                                           ; $724e: $00
    nop                                           ; $724f: $00

jr_072_7250:
    inc bc                                        ; $7250: $03
    nop                                           ; $7251: $00
    jr jr_072_7250                                ; $7252: $18 $fc

    call z, $8aff                                 ; $7254: $cc $ff $8a
    rst $38                                       ; $7257: $ff
    inc b                                         ; $7258: $04
    rst $38                                       ; $7259: $ff
    nop                                           ; $725a: $00
    rst $38                                       ; $725b: $ff
    nop                                           ; $725c: $00
    rst $38                                       ; $725d: $ff
    nop                                           ; $725e: $00
    rst $38                                       ; $725f: $ff
    ldh a, [rP1]                                  ; $7260: $f0 $00
    jp Jump_000_140f                              ; $7262: $c3 $0f $14


    ccf                                           ; $7265: $3f
    ld [$00ff], sp                                ; $7266: $08 $ff $00
    rst $38                                       ; $7269: $ff
    nop                                           ; $726a: $00
    rst $38                                       ; $726b: $ff
    nop                                           ; $726c: $00
    rst $38                                       ; $726d: $ff
    nop                                           ; $726e: $00
    rst $38                                       ; $726f: $ff
    rlca                                          ; $7270: $07
    nop                                           ; $7271: $00
    ld [hl], e                                    ; $7272: $73
    ld hl, sp-$40                                 ; $7273: $f8 $c0
    db $fc                                        ; $7275: $fc
    jr @+$01                                      ; $7276: $18 $ff

    ld bc, $00ff                                  ; $7278: $01 $ff $00
    rst $38                                       ; $727b: $ff
    nop                                           ; $727c: $00
    rst $38                                       ; $727d: $ff
    nop                                           ; $727e: $00
    rst $38                                       ; $727f: $ff
    ldh a, [rP1]                                  ; $7280: $f0 $00
    add $0f                                       ; $7282: $c6 $0f
    ld [bc], a                                    ; $7284: $02
    ccf                                           ; $7285: $3f
    inc l                                         ; $7286: $2c
    rst $38                                       ; $7287: $ff
    ld b, b                                       ; $7288: $40
    rst $38                                       ; $7289: $ff
    nop                                           ; $728a: $00
    rst $38                                       ; $728b: $ff
    nop                                           ; $728c: $00
    rst $38                                       ; $728d: $ff
    nop                                           ; $728e: $00
    rst $38                                       ; $728f: $ff
    rst $38                                       ; $7290: $ff
    nop                                           ; $7291: $00
    ld [hl], a                                    ; $7292: $77
    inc b                                         ; $7293: $04
    dec a                                         ; $7294: $3d
    inc b                                         ; $7295: $04
    cp a                                          ; $7296: $bf
    ld c, $2e                                     ; $7297: $0e $2e
    inc b                                         ; $7299: $04
    inc d                                         ; $729a: $14
    nop                                           ; $729b: $00
    ld h, [hl]                                    ; $729c: $66
    ld [bc], a                                    ; $729d: $02
    rrca                                          ; $729e: $0f
    rlca                                          ; $729f: $07
    rst $38                                       ; $72a0: $ff
    nop                                           ; $72a1: $00
    rst $38                                       ; $72a2: $ff
    nop                                           ; $72a3: $00
    scf                                           ; $72a4: $37
    nop                                           ; $72a5: $00

jr_072_72a6:
    ld [hl], a                                    ; $72a6: $77
    nop                                           ; $72a7: $00
    ld [hl-], a                                   ; $72a8: $32
    nop                                           ; $72a9: $00
    ld b, b                                       ; $72aa: $40
    nop                                           ; $72ab: $00
    nop                                           ; $72ac: $00
    nop                                           ; $72ad: $00
    nop                                           ; $72ae: $00
    nop                                           ; $72af: $00
    rst $38                                       ; $72b0: $ff
    nop                                           ; $72b1: $00
    rst $30                                       ; $72b2: $f7
    inc b                                         ; $72b3: $04
    call $9f04                                    ; $72b4: $cd $04 $9f
    ld c, $0e                                     ; $72b7: $0e $0e
    inc b                                         ; $72b9: $04
    inc d                                         ; $72ba: $14
    nop                                           ; $72bb: $00
    ld h, [hl]                                    ; $72bc: $66
    ld [bc], a                                    ; $72bd: $02
    rrca                                          ; $72be: $0f
    rlca                                          ; $72bf: $07
    rst $38                                       ; $72c0: $ff
    nop                                           ; $72c1: $00
    rst $38                                       ; $72c2: $ff
    nop                                           ; $72c3: $00
    cp a                                          ; $72c4: $bf
    nop                                           ; $72c5: $00
    scf                                           ; $72c6: $37
    nop                                           ; $72c7: $00
    scf                                           ; $72c8: $37
    nop                                           ; $72c9: $00
    ld b, b                                       ; $72ca: $40
    nop                                           ; $72cb: $00
    add c                                         ; $72cc: $81
    nop                                           ; $72cd: $00
    nop                                           ; $72ce: $00
    nop                                           ; $72cf: $00
    ld h, [hl]                                    ; $72d0: $66
    nop                                           ; $72d1: $00
    jr c, jr_072_72d4                             ; $72d2: $38 $00

jr_072_72d4:
    sbc b                                         ; $72d4: $98
    jr jr_072_72a6                                ; $72d5: $18 $cf

    dec b                                         ; $72d7: $05
    rra                                           ; $72d8: $1f
    inc bc                                        ; $72d9: $03
    cp a                                          ; $72da: $bf
    rrca                                          ; $72db: $0f
    rla                                           ; $72dc: $17
    inc c                                         ; $72dd: $0c
    ccf                                           ; $72de: $3f
    inc bc                                        ; $72df: $03
    nop                                           ; $72e0: $00
    nop                                           ; $72e1: $00
    add b                                         ; $72e2: $80
    nop                                           ; $72e3: $00
    nop                                           ; $72e4: $00

jr_072_72e5:
    nop                                           ; $72e5: $00
    ld b, b                                       ; $72e6: $40
    nop                                           ; $72e7: $00
    add c                                         ; $72e8: $81
    add b                                         ; $72e9: $80
    nop                                           ; $72ea: $00
    nop                                           ; $72eb: $00
    pop hl                                        ; $72ec: $e1
    ret nz                                        ; $72ed: $c0

    inc bc                                        ; $72ee: $03
    nop                                           ; $72ef: $00
    xor a                                         ; $72f0: $af
    ld [de], a                                    ; $72f1: $12
    ld a, a                                       ; $72f2: $7f
    rlca                                          ; $72f3: $07
    rla                                           ; $72f4: $17
    ld [$053b], sp                                ; $72f5: $08 $3b $05
    sbc a                                         ; $72f8: $9f
    ld a, [de]                                    ; $72f9: $1a
    xor a                                         ; $72fa: $af
    dec b                                         ; $72fb: $05
    rra                                           ; $72fc: $1f
    inc bc                                        ; $72fd: $03
    or a                                          ; $72fe: $b7
    dec bc                                        ; $72ff: $0b
    or d                                          ; $7300: $b2
    jr nz, jr_072_72e5                            ; $7301: $20 $e2

    add b                                         ; $7303: $80
    ret nc                                        ; $7304: $d0

    ret nz                                        ; $7305: $c0

    pop de                                        ; $7306: $d1

jr_072_7307:
    ld b, b                                       ; $7307: $40
    ld [hl+], a                                   ; $7308: $22
    nop                                           ; $7309: $00
    ld b, b                                       ; $730a: $40
    ld b, b                                       ; $730b: $40
    add e                                         ; $730c: $83
    nop                                           ; $730d: $00
    nop                                           ; $730e: $00
    nop                                           ; $730f: $00
    rlca                                          ; $7310: $07
    ld a, [de]                                    ; $7311: $1a
    cpl                                           ; $7312: $2f
    rla                                           ; $7313: $17
    adc a                                         ; $7314: $8f
    ld de, $063f                                  ; $7315: $11 $3f $06
    rla                                           ; $7318: $17
    ld a, [bc]                                    ; $7319: $0a
    ld [hl], e                                    ; $731a: $73
    dec c                                         ; $731b: $0d
    sub a                                         ; $731c: $97
    ld [$93bf], sp                                ; $731d: $08 $bf $93
    pop hl                                        ; $7320: $e1
    ret nz                                        ; $7321: $c0

    inc bc                                        ; $7322: $03
    nop                                           ; $7323: $00
    or b                                          ; $7324: $b0
    jr nz, jr_072_7307                            ; $7325: $20 $e0

    add b                                         ; $7327: $80
    sub $c0                                       ; $7328: $d6 $c0
    pop de                                        ; $732a: $d1
    sub b                                         ; $732b: $90
    and d                                         ; $732c: $a2
    nop                                           ; $732d: $00
    db $e3                                        ; $732e: $e3
    ret nz                                        ; $732f: $c0

    cp a                                          ; $7330: $bf
    ld l, $ce                                     ; $7331: $2e $ce
    ld [hl-], a                                   ; $7333: $32
    adc $30                                       ; $7334: $ce $30
    nop                                           ; $7336: $00
    ld a, $00                                     ; $7337: $3e $00
    ld a, $80                                     ; $7339: $3e $80
    cp a                                          ; $733b: $bf
    db $e3                                        ; $733c: $e3
    rst $38                                       ; $733d: $ff
    rst $38                                       ; $733e: $ff
    rst $38                                       ; $733f: $ff
    add b                                         ; $7340: $80
    add b                                         ; $7341: $80
    add c                                         ; $7342: $81
    nop                                           ; $7343: $00
    nop                                           ; $7344: $00
    nop                                           ; $7345: $00
    nop                                           ; $7346: $00
    nop                                           ; $7347: $00
    ld h, d                                       ; $7348: $62
    ld h, d                                       ; $7349: $62
    rst $30                                       ; $734a: $f7
    rst $30                                       ; $734b: $f7
    rst $38                                       ; $734c: $ff
    rst $38                                       ; $734d: $ff
    rst $38                                       ; $734e: $ff
    rst $38                                       ; $734f: $ff
    nop                                           ; $7350: $00
    rst $38                                       ; $7351: $ff
    nop                                           ; $7352: $00
    rst $38                                       ; $7353: $ff
    nop                                           ; $7354: $00
    rst $38                                       ; $7355: $ff
    nop                                           ; $7356: $00
    rst $38                                       ; $7357: $ff
    nop                                           ; $7358: $00
    rst $38                                       ; $7359: $ff
    nop                                           ; $735a: $00
    rst $38                                       ; $735b: $ff
    nop                                           ; $735c: $00
    rst $38                                       ; $735d: $ff
    nop                                           ; $735e: $00
    rst $38                                       ; $735f: $ff
    nop                                           ; $7360: $00
    rst $38                                       ; $7361: $ff
    ld b, h                                       ; $7362: $44
    cp e                                          ; $7363: $bb
    nop                                           ; $7364: $00
    rst $38                                       ; $7365: $ff
    ld de, $00ee                                  ; $7366: $11 $ee $00
    rst $38                                       ; $7369: $ff
    xor d                                         ; $736a: $aa
    ld d, l                                       ; $736b: $55
    ld d, l                                       ; $736c: $55
    xor d                                         ; $736d: $aa
    rst $38                                       ; $736e: $ff
    nop                                           ; $736f: $00
    rst $38                                       ; $7370: $ff
    nop                                           ; $7371: $00
    rst $38                                       ; $7372: $ff
    nop                                           ; $7373: $00
    rst $38                                       ; $7374: $ff
    nop                                           ; $7375: $00
    rst $38                                       ; $7376: $ff
    nop                                           ; $7377: $00
    ld [hl], a                                    ; $7378: $77
    nop                                           ; $7379: $00
    rst $38                                       ; $737a: $ff
    nop                                           ; $737b: $00
    ld d, l                                       ; $737c: $55
    nop                                           ; $737d: $00
    xor d                                         ; $737e: $aa
    nop                                           ; $737f: $00
    rst $38                                       ; $7380: $ff
    rst $38                                       ; $7381: $ff
    rst $38                                       ; $7382: $ff
    rst $38                                       ; $7383: $ff
    rst $38                                       ; $7384: $ff
    rst $38                                       ; $7385: $ff
    rst $38                                       ; $7386: $ff
    rst $38                                       ; $7387: $ff
    rst $38                                       ; $7388: $ff
    rst $38                                       ; $7389: $ff
    rst $38                                       ; $738a: $ff
    rst $38                                       ; $738b: $ff
    rst $38                                       ; $738c: $ff
    rst $38                                       ; $738d: $ff
    rst $38                                       ; $738e: $ff
    rst $38                                       ; $738f: $ff
    rst $38                                       ; $7390: $ff
    ld hl, sp-$01                                 ; $7391: $f8 $ff
    ldh [rIE], a                                  ; $7393: $e0 $ff
    add b                                         ; $7395: $80
    db $fd                                        ; $7396: $fd
    nop                                           ; $7397: $00
    db $fd                                        ; $7398: $fd
    nop                                           ; $7399: $00
    db $f4                                        ; $739a: $f4
    nop                                           ; $739b: $00
    ld sp, $8000                                  ; $739c: $31 $00 $80
    nop                                           ; $739f: $00
    rst $38                                       ; $73a0: $ff
    ld a, a                                       ; $73a1: $7f
    rst $38                                       ; $73a2: $ff
    rra                                           ; $73a3: $1f
    rst $38                                       ; $73a4: $ff
    rlca                                          ; $73a5: $07
    rst $38                                       ; $73a6: $ff
    nop                                           ; $73a7: $00
    rst $38                                       ; $73a8: $ff
    nop                                           ; $73a9: $00
    ldh [rP1], a                                  ; $73aa: $e0 $00
    sbc a                                         ; $73ac: $9f
    nop                                           ; $73ad: $00
    halt                                          ; $73ae: $76
    add hl, bc                                    ; $73af: $09
    rst $38                                       ; $73b0: $ff
    ld hl, sp-$01                                 ; $73b1: $f8 $ff
    ldh [rIE], a                                  ; $73b3: $e0 $ff
    add b                                         ; $73b5: $80
    db $fd                                        ; $73b6: $fd
    nop                                           ; $73b7: $00
    push af                                       ; $73b8: $f5
    nop                                           ; $73b9: $00
    ld [hl], h                                    ; $73ba: $74
    nop                                           ; $73bb: $00
    sub b                                         ; $73bc: $90
    nop                                           ; $73bd: $00
    pop bc                                        ; $73be: $c1
    nop                                           ; $73bf: $00
    rst $38                                       ; $73c0: $ff
    ld a, a                                       ; $73c1: $7f
    rst $38                                       ; $73c2: $ff
    rra                                           ; $73c3: $1f
    rst $38                                       ; $73c4: $ff
    rlca                                          ; $73c5: $07
    rst $38                                       ; $73c6: $ff
    nop                                           ; $73c7: $00
    rst $38                                       ; $73c8: $ff
    nop                                           ; $73c9: $00
    stop                                          ; $73ca: $10 $00
    db $e3                                        ; $73cc: $e3
    nop                                           ; $73cd: $00
    cp l                                          ; $73ce: $bd
    ld b, d                                       ; $73cf: $42
    pop hl                                        ; $73d0: $e1
    nop                                           ; $73d1: $00
    rst $38                                       ; $73d2: $ff
    nop                                           ; $73d3: $00
    add hl, sp                                    ; $73d4: $39
    add $2e                                       ; $73d5: $c6 $2e
    pop de                                        ; $73d7: $d1
    add $31                                       ; $73d8: $c6 $31
    ld [hl], e                                    ; $73da: $73
    nop                                           ; $73db: $00
    nop                                           ; $73dc: $00
    nop                                           ; $73dd: $00
    nop                                           ; $73de: $00
    nop                                           ; $73df: $00
    db $db                                        ; $73e0: $db
    inc h                                         ; $73e1: $24
    cp e                                          ; $73e2: $bb
    ld b, h                                       ; $73e3: $44
    ld e, l                                       ; $73e4: $5d
    add d                                         ; $73e5: $82
    ld c, c                                       ; $73e6: $49
    add [hl]                                      ; $73e7: $86
    call $0102                                    ; $73e8: $cd $02 $01
    nop                                           ; $73eb: $00
    nop                                           ; $73ec: $00
    nop                                           ; $73ed: $00
    nop                                           ; $73ee: $00
    nop                                           ; $73ef: $00
    ld [hl], e                                    ; $73f0: $73
    add b                                         ; $73f1: $80
    sbc d                                         ; $73f2: $9a
    ld h, l                                       ; $73f3: $65
    db $dd                                        ; $73f4: $dd
    ld [hl+], a                                   ; $73f5: $22
    call z, Call_072_7733                         ; $73f6: $cc $33 $77
    ld [$102e], sp                                ; $73f9: $08 $2e $10
    nop                                           ; $73fc: $00
    nop                                           ; $73fd: $00
    nop                                           ; $73fe: $00
    nop                                           ; $73ff: $00
    and l                                         ; $7400: $a5
    ld e, d                                       ; $7401: $5a
    ld e, [hl]                                    ; $7402: $5e
    and c                                         ; $7403: $a1
    ld h, h                                       ; $7404: $64
    add e                                         ; $7405: $83
    rst $30                                       ; $7406: $f7
    nop                                           ; $7407: $00
    and e                                         ; $7408: $a3
    nop                                           ; $7409: $00
    nop                                           ; $740a: $00
    nop                                           ; $740b: $00
    nop                                           ; $740c: $00
    nop                                           ; $740d: $00
    nop                                           ; $740e: $00
    nop                                           ; $740f: $00
    ld bc, $0c00                                  ; $7410: $01 $00 $0c
    cp $66                                        ; $7413: $fe $66
    rst $38                                       ; $7415: $ff
    ld b, l                                       ; $7416: $45
    rst $38                                       ; $7417: $ff
    ld [bc], a                                    ; $7418: $02
    rst $38                                       ; $7419: $ff
    nop                                           ; $741a: $00
    rst $38                                       ; $741b: $ff
    nop                                           ; $741c: $00
    rst $38                                       ; $741d: $ff
    nop                                           ; $741e: $00
    rst $38                                       ; $741f: $ff
    ld hl, sp+$00                                 ; $7420: $f8 $00
    ld h, c                                       ; $7422: $61
    rlca                                          ; $7423: $07
    ld a, [bc]                                    ; $7424: $0a
    sbc a                                         ; $7425: $9f
    inc b                                         ; $7426: $04
    rst $38                                       ; $7427: $ff
    nop                                           ; $7428: $00
    rst $38                                       ; $7429: $ff
    nop                                           ; $742a: $00
    rst $38                                       ; $742b: $ff
    nop                                           ; $742c: $00
    rst $38                                       ; $742d: $ff
    nop                                           ; $742e: $00
    rst $38                                       ; $742f: $ff
    inc bc                                        ; $7430: $03
    nop                                           ; $7431: $00
    cp c                                          ; $7432: $b9
    db $fc                                        ; $7433: $fc
    ld h, b                                       ; $7434: $60
    cp $0c                                        ; $7435: $fe $0c
    rst $38                                       ; $7437: $ff
    nop                                           ; $7438: $00
    rst $38                                       ; $7439: $ff
    nop                                           ; $743a: $00
    rst $38                                       ; $743b: $ff

Jump_072_743c:
    nop                                           ; $743c: $00
    rst $38                                       ; $743d: $ff
    nop                                           ; $743e: $00
    rst $38                                       ; $743f: $ff
    ld hl, sp+$00                                 ; $7440: $f8 $00
    db $e3                                        ; $7442: $e3
    rlca                                          ; $7443: $07
    ld bc, $161f                                  ; $7444: $01 $1f $16
    rst $38                                       ; $7447: $ff
    and b                                         ; $7448: $a0
    rst $38                                       ; $7449: $ff
    nop                                           ; $744a: $00
    rst $38                                       ; $744b: $ff
    nop                                           ; $744c: $00
    rst $38                                       ; $744d: $ff
    nop                                           ; $744e: $00
    rst $38                                       ; $744f: $ff
    rst $38                                       ; $7450: $ff
    nop                                           ; $7451: $00
    or a                                          ; $7452: $b7
    inc b                                         ; $7453: $04
    sbc l                                         ; $7454: $9d
    inc b                                         ; $7455: $04
    rst $18                                       ; $7456: $df
    ld c, $8e                                     ; $7457: $0e $8e
    inc b                                         ; $7459: $04
    inc d                                         ; $745a: $14
    nop                                           ; $745b: $00
    and $02                                       ; $745c: $e6 $02
    rrca                                          ; $745e: $0f
    rlca                                          ; $745f: $07
    rst $38                                       ; $7460: $ff
    nop                                           ; $7461: $00
    rst $38                                       ; $7462: $ff
    nop                                           ; $7463: $00
    sbc e                                         ; $7464: $9b
    nop                                           ; $7465: $00

jr_072_7466:
    dec sp                                        ; $7466: $3b
    nop                                           ; $7467: $00
    add hl, de                                    ; $7468: $19
    nop                                           ; $7469: $00
    jr nz, jr_072_746c                            ; $746a: $20 $00

jr_072_746c:
    nop                                           ; $746c: $00
    nop                                           ; $746d: $00
    nop                                           ; $746e: $00
    nop                                           ; $746f: $00
    db $fd                                        ; $7470: $fd
    ld [bc], a                                    ; $7471: $02
    rst $30                                       ; $7472: $f7
    inc b                                         ; $7473: $04
    db $ed                                        ; $7474: $ed
    inc b                                         ; $7475: $04
    rst $18                                       ; $7476: $df
    ld c, $0e                                     ; $7477: $0e $0e
    inc b                                         ; $7479: $04
    inc d                                         ; $747a: $14
    nop                                           ; $747b: $00
    ld h, [hl]                                    ; $747c: $66
    ld [bc], a                                    ; $747d: $02
    rrca                                          ; $747e: $0f
    rlca                                          ; $747f: $07
    rst $38                                       ; $7480: $ff
    nop                                           ; $7481: $00
    rst $38                                       ; $7482: $ff
    nop                                           ; $7483: $00
    rst $18                                       ; $7484: $df
    nop                                           ; $7485: $00
    sbc e                                         ; $7486: $9b
    nop                                           ; $7487: $00
    dec de                                        ; $7488: $1b
    nop                                           ; $7489: $00
    jr nz, jr_072_748c                            ; $748a: $20 $00

jr_072_748c:
    ld b, b                                       ; $748c: $40
    nop                                           ; $748d: $00
    nop                                           ; $748e: $00
    nop                                           ; $748f: $00
    ld h, [hl]                                    ; $7490: $66
    nop                                           ; $7491: $00
    jr c, jr_072_7494                             ; $7492: $38 $00

jr_072_7494:
    sbc b                                         ; $7494: $98
    jr jr_072_7466                                ; $7495: $18 $cf

    dec b                                         ; $7497: $05
    rra                                           ; $7498: $1f
    inc bc                                        ; $7499: $03
    cp a                                          ; $749a: $bf
    rrca                                          ; $749b: $0f
    rla                                           ; $749c: $17
    inc c                                         ; $749d: $0c
    ccf                                           ; $749e: $3f
    inc bc                                        ; $749f: $03
    nop                                           ; $74a0: $00
    nop                                           ; $74a1: $00
    add b                                         ; $74a2: $80
    nop                                           ; $74a3: $00
    nop                                           ; $74a4: $00

jr_072_74a5:
    nop                                           ; $74a5: $00
    ld b, b                                       ; $74a6: $40
    nop                                           ; $74a7: $00
    add c                                         ; $74a8: $81
    add b                                         ; $74a9: $80
    nop                                           ; $74aa: $00
    nop                                           ; $74ab: $00
    pop hl                                        ; $74ac: $e1
    ret nz                                        ; $74ad: $c0

    inc bc                                        ; $74ae: $03
    nop                                           ; $74af: $00
    xor a                                         ; $74b0: $af
    ld [de], a                                    ; $74b1: $12
    ld a, a                                       ; $74b2: $7f
    rlca                                          ; $74b3: $07
    rla                                           ; $74b4: $17
    ld [$053b], sp                                ; $74b5: $08 $3b $05
    sbc a                                         ; $74b8: $9f
    ld a, [de]                                    ; $74b9: $1a
    xor a                                         ; $74ba: $af
    dec b                                         ; $74bb: $05
    rra                                           ; $74bc: $1f
    inc bc                                        ; $74bd: $03
    or a                                          ; $74be: $b7
    dec bc                                        ; $74bf: $0b
    or d                                          ; $74c0: $b2
    jr nz, jr_072_74a5                            ; $74c1: $20 $e2

    add b                                         ; $74c3: $80
    ret nc                                        ; $74c4: $d0

    ret nz                                        ; $74c5: $c0

    pop de                                        ; $74c6: $d1

jr_072_74c7:
    ld b, b                                       ; $74c7: $40
    ld [hl+], a                                   ; $74c8: $22
    nop                                           ; $74c9: $00
    ld b, b                                       ; $74ca: $40
    ld b, b                                       ; $74cb: $40
    add e                                         ; $74cc: $83
    nop                                           ; $74cd: $00
    nop                                           ; $74ce: $00
    nop                                           ; $74cf: $00
    rlca                                          ; $74d0: $07
    ld a, [de]                                    ; $74d1: $1a
    cpl                                           ; $74d2: $2f
    rla                                           ; $74d3: $17
    adc a                                         ; $74d4: $8f
    ld de, $063f                                  ; $74d5: $11 $3f $06
    rla                                           ; $74d8: $17
    ld a, [bc]                                    ; $74d9: $0a
    ld [hl], e                                    ; $74da: $73
    dec c                                         ; $74db: $0d
    sub a                                         ; $74dc: $97
    ld [$93bf], sp                                ; $74dd: $08 $bf $93
    pop hl                                        ; $74e0: $e1
    ret nz                                        ; $74e1: $c0

    inc bc                                        ; $74e2: $03
    nop                                           ; $74e3: $00
    or b                                          ; $74e4: $b0
    jr nz, jr_072_74c7                            ; $74e5: $20 $e0

    add b                                         ; $74e7: $80
    sub $c0                                       ; $74e8: $d6 $c0
    pop de                                        ; $74ea: $d1
    sub b                                         ; $74eb: $90
    and d                                         ; $74ec: $a2
    nop                                           ; $74ed: $00
    db $e3                                        ; $74ee: $e3
    ret nz                                        ; $74ef: $c0

    cp a                                          ; $74f0: $bf
    ld l, $ce                                     ; $74f1: $2e $ce
    ld [hl-], a                                   ; $74f3: $32
    adc $30                                       ; $74f4: $ce $30
    nop                                           ; $74f6: $00
    ld a, $00                                     ; $74f7: $3e $00
    ld a, $80                                     ; $74f9: $3e $80
    cp a                                          ; $74fb: $bf
    db $e3                                        ; $74fc: $e3
    rst $38                                       ; $74fd: $ff
    rst $38                                       ; $74fe: $ff
    rst $38                                       ; $74ff: $ff
    add b                                         ; $7500: $80
    add b                                         ; $7501: $80
    add c                                         ; $7502: $81
    nop                                           ; $7503: $00
    nop                                           ; $7504: $00
    nop                                           ; $7505: $00
    nop                                           ; $7506: $00
    nop                                           ; $7507: $00
    ld h, d                                       ; $7508: $62
    ld h, d                                       ; $7509: $62
    rst $30                                       ; $750a: $f7
    rst $30                                       ; $750b: $f7
    rst $38                                       ; $750c: $ff
    rst $38                                       ; $750d: $ff
    rst $38                                       ; $750e: $ff
    rst $38                                       ; $750f: $ff
    nop                                           ; $7510: $00
    rst $38                                       ; $7511: $ff
    nop                                           ; $7512: $00
    rst $38                                       ; $7513: $ff
    nop                                           ; $7514: $00
    rst $38                                       ; $7515: $ff
    nop                                           ; $7516: $00
    rst $38                                       ; $7517: $ff
    nop                                           ; $7518: $00
    rst $38                                       ; $7519: $ff
    nop                                           ; $751a: $00
    rst $38                                       ; $751b: $ff
    nop                                           ; $751c: $00
    rst $38                                       ; $751d: $ff
    nop                                           ; $751e: $00
    rst $38                                       ; $751f: $ff
    nop                                           ; $7520: $00
    rst $38                                       ; $7521: $ff
    ld [hl+], a                                   ; $7522: $22
    db $dd                                        ; $7523: $dd
    nop                                           ; $7524: $00
    rst $38                                       ; $7525: $ff
    adc b                                         ; $7526: $88
    ld [hl], a                                    ; $7527: $77
    nop                                           ; $7528: $00
    rst $38                                       ; $7529: $ff
    ld d, l                                       ; $752a: $55
    xor d                                         ; $752b: $aa
    xor d                                         ; $752c: $aa
    ld d, l                                       ; $752d: $55
    rst $38                                       ; $752e: $ff
    nop                                           ; $752f: $00
    rst $38                                       ; $7530: $ff
    nop                                           ; $7531: $00
    rst $38                                       ; $7532: $ff
    nop                                           ; $7533: $00
    rst $38                                       ; $7534: $ff
    nop                                           ; $7535: $00
    rst $38                                       ; $7536: $ff
    nop                                           ; $7537: $00
    cp e                                          ; $7538: $bb
    nop                                           ; $7539: $00
    rst $38                                       ; $753a: $ff
    nop                                           ; $753b: $00
    xor d                                         ; $753c: $aa
    nop                                           ; $753d: $00
    ld d, l                                       ; $753e: $55
    nop                                           ; $753f: $00
    rst $38                                       ; $7540: $ff
    rst $38                                       ; $7541: $ff
    rst $38                                       ; $7542: $ff
    rst $38                                       ; $7543: $ff
    rst $38                                       ; $7544: $ff
    rst $38                                       ; $7545: $ff
    rst $38                                       ; $7546: $ff
    rst $38                                       ; $7547: $ff
    rst $38                                       ; $7548: $ff
    rst $38                                       ; $7549: $ff
    rst $38                                       ; $754a: $ff
    rst $38                                       ; $754b: $ff
    rst $38                                       ; $754c: $ff
    rst $38                                       ; $754d: $ff
    rst $38                                       ; $754e: $ff
    rst $38                                       ; $754f: $ff
    rst $38                                       ; $7550: $ff
    cp $ff                                        ; $7551: $fe $ff
    ld hl, sp-$01                                 ; $7553: $f8 $ff
    ldh [rIE], a                                  ; $7555: $e0 $ff
    nop                                           ; $7557: $00
    rst $38                                       ; $7558: $ff
    nop                                           ; $7559: $00
    ld a, l                                       ; $755a: $7d
    nop                                           ; $755b: $00
    xor h                                         ; $755c: $ac
    nop                                           ; $755d: $00
    ret nz                                        ; $755e: $c0

    nop                                           ; $755f: $00
    rst $38                                       ; $7560: $ff
    rra                                           ; $7561: $1f
    rst $38                                       ; $7562: $ff
    rlca                                          ; $7563: $07
    rst $38                                       ; $7564: $ff
    ld bc, $007f                                  ; $7565: $01 $7f $00
    ld a, a                                       ; $7568: $7f
    nop                                           ; $7569: $00
    jr nc, jr_072_756c                            ; $756a: $30 $00

jr_072_756c:
    ld c, a                                       ; $756c: $4f
    nop                                           ; $756d: $00
    dec sp                                        ; $756e: $3b
    inc b                                         ; $756f: $04
    rst $38                                       ; $7570: $ff
    cp $ff                                        ; $7571: $fe $ff
    ld hl, sp-$01                                 ; $7573: $f8 $ff
    ldh [rIE], a                                  ; $7575: $e0 $ff
    nop                                           ; $7577: $00
    db $fd                                        ; $7578: $fd
    nop                                           ; $7579: $00
    dec a                                         ; $757a: $3d
    nop                                           ; $757b: $00
    call nc, $6000                                ; $757c: $d4 $00 $60
    add b                                         ; $757f: $80
    rst $38                                       ; $7580: $ff
    rra                                           ; $7581: $1f
    rst $38                                       ; $7582: $ff
    rlca                                          ; $7583: $07
    rst $38                                       ; $7584: $ff
    ld bc, $007f                                  ; $7585: $01 $7f $00
    ld a, a                                       ; $7588: $7f
    nop                                           ; $7589: $00
    inc c                                         ; $758a: $0c
    nop                                           ; $758b: $00
    ld [hl], c                                    ; $758c: $71
    nop                                           ; $758d: $00
    sbc $21                                       ; $758e: $de $21
    ldh a, [rP1]                                  ; $7590: $f0 $00
    ld a, a                                       ; $7592: $7f
    add b                                         ; $7593: $80
    inc e                                         ; $7594: $1c
    db $e3                                        ; $7595: $e3
    sub a                                         ; $7596: $97
    ld l, b                                       ; $7597: $68
    db $e3                                        ; $7598: $e3
    jr jr_072_75d4                                ; $7599: $18 $39

    nop                                           ; $759b: $00
    nop                                           ; $759c: $00
    nop                                           ; $759d: $00
    nop                                           ; $759e: $00
    nop                                           ; $759f: $00
    db $ed                                        ; $75a0: $ed
    ld [de], a                                    ; $75a1: $12
    db $dd                                        ; $75a2: $dd
    ld [hl+], a                                   ; $75a3: $22
    xor [hl]                                      ; $75a4: $ae
    ld b, c                                       ; $75a5: $41
    inc h                                         ; $75a6: $24
    jp $8166                                      ; $75a7: $c3 $66 $81


    add b                                         ; $75aa: $80
    nop                                           ; $75ab: $00
    nop                                           ; $75ac: $00
    nop                                           ; $75ad: $00
    nop                                           ; $75ae: $00
    nop                                           ; $75af: $00
    cp c                                          ; $75b0: $b9
    ld b, b                                       ; $75b1: $40
    call $ee32                                    ; $75b2: $cd $32 $ee
    ld de, $19e6                                  ; $75b5: $11 $e6 $19
    cp e                                          ; $75b8: $bb
    inc b                                         ; $75b9: $04
    sub a                                         ; $75ba: $97
    ld [$0000], sp                                ; $75bb: $08 $00 $00
    nop                                           ; $75be: $00
    nop                                           ; $75bf: $00
    jp nc, Jump_000_2f2d                          ; $75c0: $d2 $2d $2f

    ret nc                                        ; $75c3: $d0

    or d                                          ; $75c4: $b2
    ld b, c                                       ; $75c5: $41
    ld a, e                                       ; $75c6: $7b
    add b                                         ; $75c7: $80
    pop de                                        ; $75c8: $d1
    nop                                           ; $75c9: $00
    nop                                           ; $75ca: $00
    nop                                           ; $75cb: $00
    nop                                           ; $75cc: $00
    nop                                           ; $75cd: $00
    nop                                           ; $75ce: $00
    nop                                           ; $75cf: $00
    nop                                           ; $75d0: $00
    nop                                           ; $75d1: $00
    add [hl]                                      ; $75d2: $86
    rst $38                                       ; $75d3: $ff

jr_072_75d4:
    or e                                          ; $75d4: $b3
    rst $38                                       ; $75d5: $ff
    ld [hl+], a                                   ; $75d6: $22
    rst $38                                       ; $75d7: $ff
    ld bc, $00ff                                  ; $75d8: $01 $ff $00
    rst $38                                       ; $75db: $ff
    nop                                           ; $75dc: $00
    rst $38                                       ; $75dd: $ff
    nop                                           ; $75de: $00
    rst $38                                       ; $75df: $ff
    db $fc                                        ; $75e0: $fc
    nop                                           ; $75e1: $00
    jr nc, jr_072_75e7                            ; $75e2: $30 $03

    dec b                                         ; $75e4: $05
    rst $08                                       ; $75e5: $cf
    add d                                         ; $75e6: $82

jr_072_75e7:
    rst $38                                       ; $75e7: $ff
    nop                                           ; $75e8: $00
    rst $38                                       ; $75e9: $ff
    nop                                           ; $75ea: $00
    rst $38                                       ; $75eb: $ff
    nop                                           ; $75ec: $00
    rst $38                                       ; $75ed: $ff
    nop                                           ; $75ee: $00
    rst $38                                       ; $75ef: $ff
    ld bc, $dc00                                  ; $75f0: $01 $00 $dc
    cp $30                                        ; $75f3: $fe $30
    rst $38                                       ; $75f5: $ff
    ld b, $ff                                     ; $75f6: $06 $ff
    nop                                           ; $75f8: $00
    rst $38                                       ; $75f9: $ff
    nop                                           ; $75fa: $00
    rst $38                                       ; $75fb: $ff
    nop                                           ; $75fc: $00
    rst $38                                       ; $75fd: $ff
    nop                                           ; $75fe: $00
    rst $38                                       ; $75ff: $ff
    db $fc                                        ; $7600: $fc
    nop                                           ; $7601: $00
    pop af                                        ; $7602: $f1
    inc bc                                        ; $7603: $03
    nop                                           ; $7604: $00
    rrca                                          ; $7605: $0f
    dec bc                                        ; $7606: $0b
    rst $38                                       ; $7607: $ff
    ld d, b                                       ; $7608: $50
    rst $38                                       ; $7609: $ff
    nop                                           ; $760a: $00
    rst $38                                       ; $760b: $ff
    nop                                           ; $760c: $00
    rst $38                                       ; $760d: $ff
    nop                                           ; $760e: $00
    rst $38                                       ; $760f: $ff
    rst $38                                       ; $7610: $ff
    nop                                           ; $7611: $00
    db $db                                        ; $7612: $db
    ld [bc], a                                    ; $7613: $02
    adc $02                                       ; $7614: $ce $02
    rst $28                                       ; $7616: $ef
    rlca                                          ; $7617: $07
    rst $00                                       ; $7618: $c7
    ld [bc], a                                    ; $7619: $02
    ld a, [bc]                                    ; $761a: $0a
    nop                                           ; $761b: $00
    ld [hl], e                                    ; $761c: $73
    ld bc, $0307                                  ; $761d: $01 $07 $03
    rst $38                                       ; $7620: $ff
    nop                                           ; $7621: $00
    rst $38                                       ; $7622: $ff
    nop                                           ; $7623: $00
    call $9d00                                    ; $7624: $cd $00 $9d
    nop                                           ; $7627: $00
    inc c                                         ; $7628: $0c
    nop                                           ; $7629: $00
    stop                                          ; $762a: $10 $00
    nop                                           ; $762c: $00
    nop                                           ; $762d: $00
    add b                                         ; $762e: $80
    add b                                         ; $762f: $80
    cp $01                                        ; $7630: $fe $01
    ei                                            ; $7632: $fb
    ld [bc], a                                    ; $7633: $02
    or $02                                        ; $7634: $f6 $02
    rst $28                                       ; $7636: $ef
    rlca                                          ; $7637: $07
    add a                                         ; $7638: $87
    ld [bc], a                                    ; $7639: $02
    ld a, [bc]                                    ; $763a: $0a
    nop                                           ; $763b: $00
    inc sp                                        ; $763c: $33
    ld bc, $0307                                  ; $763d: $01 $07 $03
    rst $38                                       ; $7640: $ff
    nop                                           ; $7641: $00
    rst $38                                       ; $7642: $ff
    nop                                           ; $7643: $00
    rst $28                                       ; $7644: $ef
    nop                                           ; $7645: $00
    call $0d00                                    ; $7646: $cd $00 $0d
    nop                                           ; $7649: $00
    stop                                          ; $764a: $10 $00
    jr nz, jr_072_764e                            ; $764c: $20 $00

jr_072_764e:
    add b                                         ; $764e: $80
    add b                                         ; $764f: $80
    inc sp                                        ; $7650: $33
    nop                                           ; $7651: $00
    inc e                                         ; $7652: $1c
    nop                                           ; $7653: $00
    ld c, h                                       ; $7654: $4c
    inc c                                         ; $7655: $0c
    ld h, a                                       ; $7656: $67
    ld [bc], a                                    ; $7657: $02
    adc a                                         ; $7658: $8f
    ld bc, $075f                                  ; $7659: $01 $5f $07
    adc e                                         ; $765c: $8b
    ld b, $9f                                     ; $765d: $06 $9f
    ld bc, $0000                                  ; $765f: $01 $00 $00
    ld b, b                                       ; $7662: $40
    nop                                           ; $7663: $00
    nop                                           ; $7664: $00
    nop                                           ; $7665: $00
    and b                                         ; $7666: $a0
    add b                                         ; $7667: $80
    ret nz                                        ; $7668: $c0

    ret nz                                        ; $7669: $c0

    add b                                         ; $766a: $80
    add b                                         ; $766b: $80
    ldh a, [$60]                                  ; $766c: $f0 $60
    add c                                         ; $766e: $81
    add b                                         ; $766f: $80
    ld d, a                                       ; $7670: $57
    add hl, bc                                    ; $7671: $09
    ccf                                           ; $7672: $3f
    inc bc                                        ; $7673: $03
    dec bc                                        ; $7674: $0b
    inc b                                         ; $7675: $04
    sbc l                                         ; $7676: $9d
    ld [bc], a                                    ; $7677: $02
    ld c, a                                       ; $7678: $4f
    dec c                                         ; $7679: $0d
    ld d, a                                       ; $767a: $57
    ld [bc], a                                    ; $767b: $02
    adc a                                         ; $767c: $8f
    ld bc, $055b                                  ; $767d: $01 $5b $05
    reti                                          ; $7680: $d9


    db $10                                        ; $7681: $10
    pop af                                        ; $7682: $f1
    ret nz                                        ; $7683: $c0

    add sp, $60                                   ; $7684: $e8 $60
    add sp, -$60                                  ; $7686: $e8 $a0
    sub c                                         ; $7688: $91
    nop                                           ; $7689: $00
    and b                                         ; $768a: $a0
    and b                                         ; $768b: $a0
    pop bc                                        ; $768c: $c1
    add b                                         ; $768d: $80
    add b                                         ; $768e: $80
    add b                                         ; $768f: $80
    add e                                         ; $7690: $83
    dec c                                         ; $7691: $0d
    sub a                                         ; $7692: $97
    dec bc                                        ; $7693: $0b
    ld b, a                                       ; $7694: $47
    ld [$031f], sp                                ; $7695: $08 $1f $03
    dec bc                                        ; $7698: $0b
    dec b                                         ; $7699: $05
    cp c                                          ; $769a: $b9
    ld b, $4b                                     ; $769b: $06 $4b
    inc b                                         ; $769d: $04
    rst $18                                       ; $769e: $df
    ld c, c                                       ; $769f: $49
    ldh a, [$60]                                  ; $76a0: $f0 $60
    add c                                         ; $76a2: $81
    add b                                         ; $76a3: $80
    ret c                                         ; $76a4: $d8

    sub b                                         ; $76a5: $90
    ldh a, [rLCDC]                                ; $76a6: $f0 $40
    db $eb                                        ; $76a8: $eb
    ld h, b                                       ; $76a9: $60
    add sp, -$38                                  ; $76aa: $e8 $c8
    pop de                                        ; $76ac: $d1
    nop                                           ; $76ad: $00
    pop af                                        ; $76ae: $f1
    ldh [$5f], a                                  ; $76af: $e0 $5f
    rla                                           ; $76b1: $17
    rst $20                                       ; $76b2: $e7
    add hl, de                                    ; $76b3: $19
    ld h, a                                       ; $76b4: $67
    jr jr_072_76b7                                ; $76b5: $18 $00

jr_072_76b7:
    rra                                           ; $76b7: $1f
    nop                                           ; $76b8: $00
    rra                                           ; $76b9: $1f
    ret nz                                        ; $76ba: $c0

    rst $18                                       ; $76bb: $df
    pop af                                        ; $76bc: $f1
    rst $38                                       ; $76bd: $ff
    rst $38                                       ; $76be: $ff
    rst $38                                       ; $76bf: $ff
    ret nz                                        ; $76c0: $c0

    ld b, b                                       ; $76c1: $40
    ld b, b                                       ; $76c2: $40
    nop                                           ; $76c3: $00
    nop                                           ; $76c4: $00
    nop                                           ; $76c5: $00
    nop                                           ; $76c6: $00
    nop                                           ; $76c7: $00
    ld sp, $7b31                                  ; $76c8: $31 $31 $7b
    ei                                            ; $76cb: $fb
    rst $38                                       ; $76cc: $ff
    rst $38                                       ; $76cd: $ff
    rst $38                                       ; $76ce: $ff
    rst $38                                       ; $76cf: $ff
    nop                                           ; $76d0: $00
    rst $38                                       ; $76d1: $ff
    nop                                           ; $76d2: $00
    rst $38                                       ; $76d3: $ff
    nop                                           ; $76d4: $00
    rst $38                                       ; $76d5: $ff
    nop                                           ; $76d6: $00
    rst $38                                       ; $76d7: $ff
    nop                                           ; $76d8: $00
    rst $38                                       ; $76d9: $ff
    nop                                           ; $76da: $00
    rst $38                                       ; $76db: $ff
    nop                                           ; $76dc: $00
    rst $38                                       ; $76dd: $ff
    nop                                           ; $76de: $00
    rst $38                                       ; $76df: $ff
    nop                                           ; $76e0: $00
    rst $38                                       ; $76e1: $ff
    ld [hl+], a                                   ; $76e2: $22
    db $dd                                        ; $76e3: $dd
    nop                                           ; $76e4: $00
    rst $38                                       ; $76e5: $ff
    adc b                                         ; $76e6: $88
    ld [hl], a                                    ; $76e7: $77
    nop                                           ; $76e8: $00
    rst $38                                       ; $76e9: $ff
    ld d, l                                       ; $76ea: $55
    xor d                                         ; $76eb: $aa
    xor d                                         ; $76ec: $aa
    ld d, l                                       ; $76ed: $55
    rst $38                                       ; $76ee: $ff
    nop                                           ; $76ef: $00
    rst $38                                       ; $76f0: $ff
    nop                                           ; $76f1: $00
    rst $38                                       ; $76f2: $ff
    nop                                           ; $76f3: $00
    rst $38                                       ; $76f4: $ff
    nop                                           ; $76f5: $00
    rst $38                                       ; $76f6: $ff
    nop                                           ; $76f7: $00
    cp e                                          ; $76f8: $bb
    nop                                           ; $76f9: $00
    rst $38                                       ; $76fa: $ff
    nop                                           ; $76fb: $00
    xor d                                         ; $76fc: $aa
    nop                                           ; $76fd: $00
    ld d, l                                       ; $76fe: $55
    nop                                           ; $76ff: $00
    rst $38                                       ; $7700: $ff
    rst $38                                       ; $7701: $ff
    rst $38                                       ; $7702: $ff
    rst $38                                       ; $7703: $ff
    rst $38                                       ; $7704: $ff
    rst $38                                       ; $7705: $ff
    rst $38                                       ; $7706: $ff
    rst $38                                       ; $7707: $ff
    rst $38                                       ; $7708: $ff
    rst $38                                       ; $7709: $ff
    rst $38                                       ; $770a: $ff
    rst $38                                       ; $770b: $ff
    rst $38                                       ; $770c: $ff
    rst $38                                       ; $770d: $ff
    rst $38                                       ; $770e: $ff
    rst $38                                       ; $770f: $ff
    rst $38                                       ; $7710: $ff
    rst $38                                       ; $7711: $ff
    rst $38                                       ; $7712: $ff
    cp $ff                                        ; $7713: $fe $ff
    ld a, b                                       ; $7715: $78
    rst $38                                       ; $7716: $ff
    nop                                           ; $7717: $00
    rst $38                                       ; $7718: $ff
    nop                                           ; $7719: $00
    ccf                                           ; $771a: $3f
    nop                                           ; $771b: $00
    rlc b                                         ; $771c: $cb $00
    ld h, b                                       ; $771e: $60
    add b                                         ; $771f: $80
    rst $38                                       ; $7720: $ff
    add a                                         ; $7721: $87
    rst $38                                       ; $7722: $ff
    ld bc, $00ff                                  ; $7723: $01 $ff $00
    rst $18                                       ; $7726: $df
    nop                                           ; $7727: $00
    rst $18                                       ; $7728: $df
    nop                                           ; $7729: $00
    ld c, b                                       ; $772a: $48
    nop                                           ; $772b: $00
    rlca                                          ; $772c: $07
    nop                                           ; $772d: $00
    dec e                                         ; $772e: $1d
    ld [bc], a                                    ; $772f: $02
    rst $38                                       ; $7730: $ff
    rst $38                                       ; $7731: $ff
    rst $38                                       ; $7732: $ff

Call_072_7733:
    cp $ff                                        ; $7733: $fe $ff
    ld a, b                                       ; $7735: $78
    rst $38                                       ; $7736: $ff
    nop                                           ; $7737: $00
    rst $38                                       ; $7738: $ff
    nop                                           ; $7739: $00
    rrca                                          ; $773a: $0f
    nop                                           ; $773b: $00
    db $ed                                        ; $773c: $ed
    nop                                           ; $773d: $00
    or b                                          ; $773e: $b0
    ld b, b                                       ; $773f: $40
    rst $38                                       ; $7740: $ff
    add a                                         ; $7741: $87
    rst $38                                       ; $7742: $ff
    ld bc, $00ff                                  ; $7743: $01 $ff $00
    rst $18                                       ; $7746: $df
    nop                                           ; $7747: $00
    ld e, a                                       ; $7748: $5f
    nop                                           ; $7749: $00
    ld b, e                                       ; $774a: $43
    nop                                           ; $774b: $00
    jr c, jr_072_774e                             ; $774c: $38 $00

jr_072_774e:
    ld l, a                                       ; $774e: $6f
    db $10                                        ; $774f: $10
    ld a, b                                       ; $7750: $78
    add b                                         ; $7751: $80
    cp a                                          ; $7752: $bf
    ld b, b                                       ; $7753: $40
    ld c, $f1                                     ; $7754: $0e $f1
    swap h                                        ; $7756: $cb $34
    pop af                                        ; $7758: $f1
    inc c                                         ; $7759: $0c
    inc e                                         ; $775a: $1c
    nop                                           ; $775b: $00
    nop                                           ; $775c: $00
    nop                                           ; $775d: $00
    nop                                           ; $775e: $00
    nop                                           ; $775f: $00
    halt                                          ; $7760: $76
    add hl, bc                                    ; $7761: $09
    xor $11                                       ; $7762: $ee $11
    ld d, a                                       ; $7764: $57
    and b                                         ; $7765: $a0
    sub d                                         ; $7766: $92
    ld h, c                                       ; $7767: $61
    or e                                          ; $7768: $b3
    ld b, b                                       ; $7769: $40
    ret nz                                        ; $776a: $c0

    nop                                           ; $776b: $00
    nop                                           ; $776c: $00
    nop                                           ; $776d: $00
    nop                                           ; $776e: $00
    nop                                           ; $776f: $00
    call c, $e620                                 ; $7770: $dc $20 $e6
    add hl, de                                    ; $7773: $19
    ld [hl], a                                    ; $7774: $77
    adc b                                         ; $7775: $88
    ld [hl], e                                    ; $7776: $73
    adc h                                         ; $7777: $8c
    ld e, l                                       ; $7778: $5d
    add d                                         ; $7779: $82
    ld c, e                                       ; $777a: $4b
    inc b                                         ; $777b: $04
    nop                                           ; $777c: $00
    nop                                           ; $777d: $00
    nop                                           ; $777e: $00
    nop                                           ; $777f: $00
    jp hl                                         ; $7780: $e9


    ld d, $97                                     ; $7781: $16 $97
    ld l, b                                       ; $7783: $68
    ld e, c                                       ; $7784: $59
    and b                                         ; $7785: $a0
    dec a                                         ; $7786: $3d
    ret nz                                        ; $7787: $c0

    add sp, $00                                   ; $7788: $e8 $00
    add b                                         ; $778a: $80
    nop                                           ; $778b: $00
    nop                                           ; $778c: $00
    nop                                           ; $778d: $00
    nop                                           ; $778e: $00
    nop                                           ; $778f: $00
    nop                                           ; $7790: $00
    nop                                           ; $7791: $00
    jp Jump_072_59ff                              ; $7792: $c3 $ff $59


    rst $38                                       ; $7795: $ff
    sub c                                         ; $7796: $91
    rst $38                                       ; $7797: $ff
    nop                                           ; $7798: $00
    rst $38                                       ; $7799: $ff
    nop                                           ; $779a: $00
    rst $38                                       ; $779b: $ff
    nop                                           ; $779c: $00
    rst $38                                       ; $779d: $ff
    nop                                           ; $779e: $00
    rst $38                                       ; $779f: $ff
    ld a, [hl]                                    ; $77a0: $7e
    nop                                           ; $77a1: $00
    jr @-$7d                                      ; $77a2: $18 $81

    add d                                         ; $77a4: $82
    rst $20                                       ; $77a5: $e7
    ld b, c                                       ; $77a6: $41
    rst $38                                       ; $77a7: $ff
    add b                                         ; $77a8: $80
    rst $38                                       ; $77a9: $ff
    nop                                           ; $77aa: $00
    rst $38                                       ; $77ab: $ff
    nop                                           ; $77ac: $00
    rst $38                                       ; $77ad: $ff
    nop                                           ; $77ae: $00
    rst $38                                       ; $77af: $ff
    nop                                           ; $77b0: $00
    nop                                           ; $77b1: $00
    ld l, [hl]                                    ; $77b2: $6e
    rst $38                                       ; $77b3: $ff
    sbc b                                         ; $77b4: $98
    rst $38                                       ; $77b5: $ff
    inc bc                                        ; $77b6: $03
    rst $38                                       ; $77b7: $ff
    nop                                           ; $77b8: $00
    rst $38                                       ; $77b9: $ff
    nop                                           ; $77ba: $00
    rst $38                                       ; $77bb: $ff
    nop                                           ; $77bc: $00
    rst $38                                       ; $77bd: $ff
    nop                                           ; $77be: $00
    rst $38                                       ; $77bf: $ff
    cp $00                                        ; $77c0: $fe $00
    ld a, b                                       ; $77c2: $78
    ld bc, $8700                                  ; $77c3: $01 $00 $87
    dec b                                         ; $77c6: $05
    rst $38                                       ; $77c7: $ff
    jr z, @+$01                                   ; $77c8: $28 $ff

    nop                                           ; $77ca: $00
    rst $38                                       ; $77cb: $ff
    nop                                           ; $77cc: $00
    rst $38                                       ; $77cd: $ff
    nop                                           ; $77ce: $00
    rst $38                                       ; $77cf: $ff
    rst $38                                       ; $77d0: $ff
    nop                                           ; $77d1: $00
    db $eb                                        ; $77d2: $eb
    ld [bc], a                                    ; $77d3: $02
    and $02                                       ; $77d4: $e6 $02
    rst $38                                       ; $77d6: $ff
    rlca                                          ; $77d7: $07
    rst $20                                       ; $77d8: $e7
    ld [bc], a                                    ; $77d9: $02
    ld a, [bc]                                    ; $77da: $0a
    nop                                           ; $77db: $00
    inc sp                                        ; $77dc: $33
    ld bc, $0307                                  ; $77dd: $01 $07 $03
    rst $38                                       ; $77e0: $ff
    nop                                           ; $77e1: $00
    rst $38                                       ; $77e2: $ff
    nop                                           ; $77e3: $00
    and $00                                       ; $77e4: $e6 $00
    adc $00                                       ; $77e6: $ce $00
    ld b, $00                                     ; $77e8: $06 $00
    ld [$0000], sp                                ; $77ea: $08 $00 $00
    nop                                           ; $77ed: $00
    add b                                         ; $77ee: $80
    add b                                         ; $77ef: $80
    rst $38                                       ; $77f0: $ff
    nop                                           ; $77f1: $00
    ei                                            ; $77f2: $fb
    ld [bc], a                                    ; $77f3: $02
    cp $02                                        ; $77f4: $fe $02
    rst $38                                       ; $77f6: $ff
    rlca                                          ; $77f7: $07
    ld b, a                                       ; $77f8: $47
    ld [bc], a                                    ; $77f9: $02
    ld a, [bc]                                    ; $77fa: $0a
    nop                                           ; $77fb: $00
    inc sp                                        ; $77fc: $33
    ld bc, $0307                                  ; $77fd: $01 $07 $03
    ld a, a                                       ; $7800: $7f
    add b                                         ; $7801: $80
    ld a, a                                       ; $7802: $7f
    nop                                           ; $7803: $00
    rst $30                                       ; $7804: $f7
    nop                                           ; $7805: $00
    and $00                                       ; $7806: $e6 $00
    ld b, $00                                     ; $7808: $06 $00
    ld [$9000], sp                                ; $780a: $08 $00 $90
    nop                                           ; $780d: $00
    add b                                         ; $780e: $80
    add b                                         ; $780f: $80
    inc sp                                        ; $7810: $33
    nop                                           ; $7811: $00
    inc e                                         ; $7812: $1c
    nop                                           ; $7813: $00
    ld c, h                                       ; $7814: $4c
    inc c                                         ; $7815: $0c
    ld h, a                                       ; $7816: $67
    ld [bc], a                                    ; $7817: $02
    adc a                                         ; $7818: $8f
    ld bc, $075f                                  ; $7819: $01 $5f $07
    adc e                                         ; $781c: $8b
    ld b, $9f                                     ; $781d: $06 $9f
    ld bc, $0000                                  ; $781f: $01 $00 $00
    ld b, b                                       ; $7822: $40
    nop                                           ; $7823: $00
    nop                                           ; $7824: $00
    nop                                           ; $7825: $00
    and b                                         ; $7826: $a0
    add b                                         ; $7827: $80
    ret nz                                        ; $7828: $c0

    ret nz                                        ; $7829: $c0

    add b                                         ; $782a: $80
    add b                                         ; $782b: $80
    ldh a, [$60]                                  ; $782c: $f0 $60
    add c                                         ; $782e: $81
    add b                                         ; $782f: $80
    ld d, a                                       ; $7830: $57
    add hl, bc                                    ; $7831: $09
    ccf                                           ; $7832: $3f
    inc bc                                        ; $7833: $03
    dec bc                                        ; $7834: $0b
    inc b                                         ; $7835: $04
    sbc l                                         ; $7836: $9d
    ld [bc], a                                    ; $7837: $02
    ld c, a                                       ; $7838: $4f
    dec c                                         ; $7839: $0d
    ld d, a                                       ; $783a: $57
    ld [bc], a                                    ; $783b: $02
    adc a                                         ; $783c: $8f
    ld bc, $055b                                  ; $783d: $01 $5b $05
    reti                                          ; $7840: $d9


    db $10                                        ; $7841: $10
    pop af                                        ; $7842: $f1
    ret nz                                        ; $7843: $c0

    add sp, $60                                   ; $7844: $e8 $60
    add sp, -$60                                  ; $7846: $e8 $a0
    sub c                                         ; $7848: $91
    nop                                           ; $7849: $00
    and b                                         ; $784a: $a0
    and b                                         ; $784b: $a0
    pop bc                                        ; $784c: $c1
    add b                                         ; $784d: $80
    add b                                         ; $784e: $80
    add b                                         ; $784f: $80
    add e                                         ; $7850: $83
    dec c                                         ; $7851: $0d
    sub a                                         ; $7852: $97
    dec bc                                        ; $7853: $0b
    ld b, a                                       ; $7854: $47
    ld [$031f], sp                                ; $7855: $08 $1f $03
    dec bc                                        ; $7858: $0b
    dec b                                         ; $7859: $05
    cp c                                          ; $785a: $b9
    ld b, $4b                                     ; $785b: $06 $4b
    inc b                                         ; $785d: $04
    rst $18                                       ; $785e: $df
    ld c, c                                       ; $785f: $49
    ldh a, [$60]                                  ; $7860: $f0 $60
    add c                                         ; $7862: $81
    add b                                         ; $7863: $80
    ret c                                         ; $7864: $d8

    sub b                                         ; $7865: $90
    ldh a, [rLCDC]                                ; $7866: $f0 $40
    db $eb                                        ; $7868: $eb
    ld h, b                                       ; $7869: $60
    add sp, -$38                                  ; $786a: $e8 $c8
    pop de                                        ; $786c: $d1
    nop                                           ; $786d: $00
    pop af                                        ; $786e: $f1
    ldh [$5f], a                                  ; $786f: $e0 $5f
    rla                                           ; $7871: $17
    rst $20                                       ; $7872: $e7
    add hl, de                                    ; $7873: $19
    ld h, a                                       ; $7874: $67
    jr jr_072_7877                                ; $7875: $18 $00

jr_072_7877:
    rra                                           ; $7877: $1f
    nop                                           ; $7878: $00
    rra                                           ; $7879: $1f
    ret nz                                        ; $787a: $c0

    rst $18                                       ; $787b: $df
    pop af                                        ; $787c: $f1
    rst $38                                       ; $787d: $ff
    rst $38                                       ; $787e: $ff
    rst $38                                       ; $787f: $ff
    ret nz                                        ; $7880: $c0

    ld b, b                                       ; $7881: $40
    ld b, b                                       ; $7882: $40
    nop                                           ; $7883: $00
    nop                                           ; $7884: $00
    nop                                           ; $7885: $00
    nop                                           ; $7886: $00
    nop                                           ; $7887: $00
    ld sp, $7b31                                  ; $7888: $31 $31 $7b
    ei                                            ; $788b: $fb
    rst $38                                       ; $788c: $ff
    rst $38                                       ; $788d: $ff
    rst $38                                       ; $788e: $ff
    rst $38                                       ; $788f: $ff
    nop                                           ; $7890: $00
    rst $38                                       ; $7891: $ff
    nop                                           ; $7892: $00
    rst $38                                       ; $7893: $ff
    nop                                           ; $7894: $00
    rst $38                                       ; $7895: $ff
    nop                                           ; $7896: $00
    rst $38                                       ; $7897: $ff
    nop                                           ; $7898: $00
    rst $38                                       ; $7899: $ff
    nop                                           ; $789a: $00
    rst $38                                       ; $789b: $ff

jr_072_789c:
    nop                                           ; $789c: $00
    rst $38                                       ; $789d: $ff
    nop                                           ; $789e: $00
    rst $38                                       ; $789f: $ff
    nop                                           ; $78a0: $00
    rst $38                                       ; $78a1: $ff
    ld [hl+], a                                   ; $78a2: $22
    db $dd                                        ; $78a3: $dd
    nop                                           ; $78a4: $00
    rst $38                                       ; $78a5: $ff
    adc b                                         ; $78a6: $88
    ld [hl], a                                    ; $78a7: $77
    nop                                           ; $78a8: $00
    rst $38                                       ; $78a9: $ff
    ld d, l                                       ; $78aa: $55
    xor d                                         ; $78ab: $aa
    xor d                                         ; $78ac: $aa
    ld d, l                                       ; $78ad: $55
    rst $38                                       ; $78ae: $ff
    nop                                           ; $78af: $00
    rst $38                                       ; $78b0: $ff
    nop                                           ; $78b1: $00
    rst $38                                       ; $78b2: $ff
    nop                                           ; $78b3: $00
    rst $38                                       ; $78b4: $ff
    nop                                           ; $78b5: $00
    rst $38                                       ; $78b6: $ff
    nop                                           ; $78b7: $00
    db $dd                                        ; $78b8: $dd
    nop                                           ; $78b9: $00
    rst $38                                       ; $78ba: $ff
    nop                                           ; $78bb: $00
    ld d, l                                       ; $78bc: $55
    nop                                           ; $78bd: $00
    xor d                                         ; $78be: $aa
    nop                                           ; $78bf: $00
    rst $38                                       ; $78c0: $ff
    rst $38                                       ; $78c1: $ff
    rst $38                                       ; $78c2: $ff
    rst $38                                       ; $78c3: $ff
    rst $38                                       ; $78c4: $ff
    rst $38                                       ; $78c5: $ff
    rst $38                                       ; $78c6: $ff
    rst $38                                       ; $78c7: $ff
    rst $38                                       ; $78c8: $ff
    rst $38                                       ; $78c9: $ff
    rst $38                                       ; $78ca: $ff
    rst $38                                       ; $78cb: $ff
    rst $38                                       ; $78cc: $ff
    rst $38                                       ; $78cd: $ff
    rst $38                                       ; $78ce: $ff
    rst $38                                       ; $78cf: $ff
    rst $38                                       ; $78d0: $ff
    rst $38                                       ; $78d1: $ff
    rst $38                                       ; $78d2: $ff
    ld a, a                                       ; $78d3: $7f
    rst $38                                       ; $78d4: $ff
    ld e, $ff                                     ; $78d5: $1e $ff
    nop                                           ; $78d7: $00
    rst $38                                       ; $78d8: $ff
    nop                                           ; $78d9: $00
    adc a                                         ; $78da: $8f
    nop                                           ; $78db: $00
    ld h, d                                       ; $78dc: $62
    nop                                           ; $78dd: $00
    or d                                          ; $78de: $b2
    ld b, b                                       ; $78df: $40
    rst $38                                       ; $78e0: $ff
    pop hl                                        ; $78e1: $e1
    rst $38                                       ; $78e2: $ff
    add b                                         ; $78e3: $80
    rst $38                                       ; $78e4: $ff
    nop                                           ; $78e5: $00
    rst $30                                       ; $78e6: $f7
    nop                                           ; $78e7: $00
    rst $30                                       ; $78e8: $f7
    nop                                           ; $78e9: $00
    ret nc                                        ; $78ea: $d0

    nop                                           ; $78eb: $00
    jp $0e00                                      ; $78ec: $c3 $00 $0e


    ld bc, $ffff                                  ; $78ef: $01 $ff $ff
    rst $38                                       ; $78f2: $ff
    ld a, a                                       ; $78f3: $7f
    rst $38                                       ; $78f4: $ff
    ld e, $ff                                     ; $78f5: $1e $ff
    nop                                           ; $78f7: $00
    rst $38                                       ; $78f8: $ff
    nop                                           ; $78f9: $00
    dec bc                                        ; $78fa: $0b
    nop                                           ; $78fb: $00
    di                                            ; $78fc: $f3
    nop                                           ; $78fd: $00
    ret c                                         ; $78fe: $d8

    jr nz, @+$01                                  ; $78ff: $20 $ff

    pop hl                                        ; $7901: $e1

jr_072_7902:
    rst $38                                       ; $7902: $ff
    add b                                         ; $7903: $80
    rst $38                                       ; $7904: $ff
    nop                                           ; $7905: $00
    rst $30                                       ; $7906: $f7
    nop                                           ; $7907: $00
    rst $10                                       ; $7908: $d7
    nop                                           ; $7909: $00
    jp nz, Jump_072_5c00                          ; $790a: $c2 $00 $5c

    nop                                           ; $790d: $00
    scf                                           ; $790e: $37
    ld [$40bc], sp                                ; $790f: $08 $bc $40
    rst $18                                       ; $7912: $df
    jr nz, jr_072_789c                            ; $7913: $20 $87

    ld a, b                                       ; $7915: $78
    push hl                                       ; $7916: $e5
    ld a, [de]                                    ; $7917: $1a
    ld a, b                                       ; $7918: $78
    ld b, $0e                                     ; $7919: $06 $0e
    nop                                           ; $791b: $00
    nop                                           ; $791c: $00
    nop                                           ; $791d: $00
    nop                                           ; $791e: $00
    nop                                           ; $791f: $00
    dec sp                                        ; $7920: $3b
    inc b                                         ; $7921: $04
    rst $30                                       ; $7922: $f7
    ld [$d02b], sp                                ; $7923: $08 $2b $d0
    ret                                           ; $7926: $c9


    jr nc, jr_072_7902                            ; $7927: $30 $d9

    jr nz, jr_072_798b                            ; $7929: $20 $60

    nop                                           ; $792b: $00
    nop                                           ; $792c: $00
    nop                                           ; $792d: $00
    nop                                           ; $792e: $00
    nop                                           ; $792f: $00
    ld l, [hl]                                    ; $7930: $6e
    sub b                                         ; $7931: $90
    ld [hl], e                                    ; $7932: $73
    adc h                                         ; $7933: $8c
    cp e                                          ; $7934: $bb
    ld b, h                                       ; $7935: $44
    add hl, sp                                    ; $7936: $39
    add $ae                                       ; $7937: $c6 $ae
    ld b, c                                       ; $7939: $41
    dec h                                         ; $793a: $25
    ld [bc], a                                    ; $793b: $02
    nop                                           ; $793c: $00
    nop                                           ; $793d: $00
    nop                                           ; $793e: $00
    nop                                           ; $793f: $00
    ld [hl], h                                    ; $7940: $74
    dec bc                                        ; $7941: $0b
    ld c, e                                       ; $7942: $4b
    or h                                          ; $7943: $b4
    xor h                                         ; $7944: $ac
    ld d, b                                       ; $7945: $50
    sbc [hl]                                      ; $7946: $9e
    ld h, b                                       ; $7947: $60
    db $f4                                        ; $7948: $f4
    nop                                           ; $7949: $00
    ret nz                                        ; $794a: $c0

    nop                                           ; $794b: $00
    nop                                           ; $794c: $00
    nop                                           ; $794d: $00
    nop                                           ; $794e: $00
    nop                                           ; $794f: $00
    nop                                           ; $7950: $00
    nop                                           ; $7951: $00
    ld h, c                                       ; $7952: $61
    rst $38                                       ; $7953: $ff
    inc l                                         ; $7954: $2c
    rst $38                                       ; $7955: $ff
    ret z                                         ; $7956: $c8

    rst $38                                       ; $7957: $ff
    nop                                           ; $7958: $00
    rst $38                                       ; $7959: $ff
    nop                                           ; $795a: $00
    rst $38                                       ; $795b: $ff
    nop                                           ; $795c: $00
    rst $38                                       ; $795d: $ff
    nop                                           ; $795e: $00
    rst $38                                       ; $795f: $ff
    ccf                                           ; $7960: $3f
    nop                                           ; $7961: $00
    adc h                                         ; $7962: $8c
    ret nz                                        ; $7963: $c0

    pop bc                                        ; $7964: $c1
    di                                            ; $7965: $f3
    and b                                         ; $7966: $a0
    rst $38                                       ; $7967: $ff
    ld b, b                                       ; $7968: $40
    rst $38                                       ; $7969: $ff
    nop                                           ; $796a: $00
    rst $38                                       ; $796b: $ff
    nop                                           ; $796c: $00
    rst $38                                       ; $796d: $ff
    nop                                           ; $796e: $00
    rst $38                                       ; $796f: $ff
    nop                                           ; $7970: $00
    nop                                           ; $7971: $00
    scf                                           ; $7972: $37
    rst $38                                       ; $7973: $ff
    ld c, h                                       ; $7974: $4c
    rst $38                                       ; $7975: $ff
    add c                                         ; $7976: $81
    rst $38                                       ; $7977: $ff
    nop                                           ; $7978: $00
    rst $38                                       ; $7979: $ff
    nop                                           ; $797a: $00
    rst $38                                       ; $797b: $ff
    nop                                           ; $797c: $00
    rst $38                                       ; $797d: $ff
    nop                                           ; $797e: $00
    rst $38                                       ; $797f: $ff
    ld a, a                                       ; $7980: $7f
    nop                                           ; $7981: $00
    inc a                                         ; $7982: $3c
    add b                                         ; $7983: $80
    nop                                           ; $7984: $00
    jp $ff82                                      ; $7985: $c3 $82 $ff


    inc d                                         ; $7988: $14
    rst $38                                       ; $7989: $ff
    nop                                           ; $798a: $00

jr_072_798b:
    rst $38                                       ; $798b: $ff
    nop                                           ; $798c: $00
    rst $38                                       ; $798d: $ff
    nop                                           ; $798e: $00
    rst $38                                       ; $798f: $ff
    rst $38                                       ; $7990: $ff
    nop                                           ; $7991: $00
    push af                                       ; $7992: $f5
    ld bc, $01f3                                  ; $7993: $01 $f3 $01
    ld a, a                                       ; $7996: $7f
    inc bc                                        ; $7997: $03
    ld [hl], e                                    ; $7998: $73
    ld bc, $0005                                  ; $7999: $01 $05 $00
    add hl, de                                    ; $799c: $19
    nop                                           ; $799d: $00
    inc bc                                        ; $799e: $03
    ld bc, $00ff                                  ; $799f: $01 $ff $00
    rst $38                                       ; $79a2: $ff
    nop                                           ; $79a3: $00
    ld [hl], e                                    ; $79a4: $73
    nop                                           ; $79a5: $00
    rst $20                                       ; $79a6: $e7
    add b                                         ; $79a7: $80
    add e                                         ; $79a8: $83
    nop                                           ; $79a9: $00
    inc b                                         ; $79aa: $04
    nop                                           ; $79ab: $00
    add b                                         ; $79ac: $80
    add b                                         ; $79ad: $80
    ret nz                                        ; $79ae: $c0

    ret nz                                        ; $79af: $c0

    rst $38                                       ; $79b0: $ff
    nop                                           ; $79b1: $00
    db $fd                                        ; $79b2: $fd
    ld bc, $017f                                  ; $79b3: $01 $7f $01
    ld a, a                                       ; $79b6: $7f
    inc bc                                        ; $79b7: $03
    inc hl                                        ; $79b8: $23
    ld bc, $0005                                  ; $79b9: $01 $05 $00
    add hl, de                                    ; $79bc: $19
    nop                                           ; $79bd: $00
    inc bc                                        ; $79be: $03
    ld bc, $40bf                                  ; $79bf: $01 $bf $40
    cp a                                          ; $79c2: $bf
    nop                                           ; $79c3: $00
    ld a, e                                       ; $79c4: $7b
    nop                                           ; $79c5: $00
    di                                            ; $79c6: $f3
    add b                                         ; $79c7: $80
    add e                                         ; $79c8: $83
    nop                                           ; $79c9: $00
    inc b                                         ; $79ca: $04
    nop                                           ; $79cb: $00
    ret z                                         ; $79cc: $c8

    add b                                         ; $79cd: $80
    ret nz                                        ; $79ce: $c0

    ret nz                                        ; $79cf: $c0

    add hl, de                                    ; $79d0: $19
    nop                                           ; $79d1: $00
    ld c, $00                                     ; $79d2: $0e $00
    ld h, $06                                     ; $79d4: $26 $06
    inc sp                                        ; $79d6: $33
    ld bc, $0047                                  ; $79d7: $01 $47 $00
    cpl                                           ; $79da: $2f
    inc bc                                        ; $79db: $03
    ld b, l                                       ; $79dc: $45
    inc bc                                        ; $79dd: $03
    rst $08                                       ; $79de: $cf
    nop                                           ; $79df: $00
    add b                                         ; $79e0: $80
    nop                                           ; $79e1: $00

jr_072_79e2:
    jr nz, jr_072_79e4                            ; $79e2: $20 $00

jr_072_79e4:
    nop                                           ; $79e4: $00
    nop                                           ; $79e5: $00
    ret nc                                        ; $79e6: $d0

    ld b, b                                       ; $79e7: $40
    ldh [$e0], a                                  ; $79e8: $e0 $e0
    ret nz                                        ; $79ea: $c0

    ret nz                                        ; $79eb: $c0

    ld hl, sp+$30                                 ; $79ec: $f8 $30
    ret nz                                        ; $79ee: $c0

    ret nz                                        ; $79ef: $c0

    xor e                                         ; $79f0: $ab
    inc b                                         ; $79f1: $04
    sbc a                                         ; $79f2: $9f
    ld bc, $0205                                  ; $79f3: $01 $05 $02
    ld c, [hl]                                    ; $79f6: $4e
    ld bc, $06a7                                  ; $79f7: $01 $a7 $06
    dec hl                                        ; $79fa: $2b

jr_072_79fb:
    ld bc, $00c7                                  ; $79fb: $01 $c7 $00
    dec l                                         ; $79fe: $2d
    ld [bc], a                                    ; $79ff: $02
    db $ec                                        ; $7a00: $ec
    adc b                                         ; $7a01: $88
    ld hl, sp-$20                                 ; $7a02: $f8 $e0
    db $f4                                        ; $7a04: $f4
    jr nc, jr_072_79fb                            ; $7a05: $30 $f4

    ld d, b                                       ; $7a07: $50
    ret z                                         ; $7a08: $c8

    add b                                         ; $7a09: $80
    ret nc                                        ; $7a0a: $d0

    ld d, b                                       ; $7a0b: $50
    ldh [$c0], a                                  ; $7a0c: $e0 $c0
    ret nz                                        ; $7a0e: $c0

    ret nz                                        ; $7a0f: $c0

    ld b, c                                       ; $7a10: $41
    ld b, $cb                                     ; $7a11: $06 $cb
    dec b                                         ; $7a13: $05
    inc hl                                        ; $7a14: $23
    inc b                                         ; $7a15: $04
    rrca                                          ; $7a16: $0f
    ld bc, $0285                                  ; $7a17: $01 $85 $02
    ld e, h                                       ; $7a1a: $5c
    inc bc                                        ; $7a1b: $03
    and l                                         ; $7a1c: $a5
    ld [bc], a                                    ; $7a1d: $02
    rst $28                                       ; $7a1e: $ef
    inc h                                         ; $7a1f: $24
    ld hl, sp-$50                                 ; $7a20: $f8 $b0
    ret nz                                        ; $7a22: $c0

    ret nz                                        ; $7a23: $c0

    db $ec                                        ; $7a24: $ec
    ld c, b                                       ; $7a25: $48
    ld hl, sp-$60                                 ; $7a26: $f8 $a0
    push af                                       ; $7a28: $f5
    or b                                          ; $7a29: $b0
    db $f4                                        ; $7a2a: $f4
    ld h, h                                       ; $7a2b: $64
    add sp, $00                                   ; $7a2c: $e8 $00
    ld hl, sp-$10                                 ; $7a2e: $f8 $f0
    cpl                                           ; $7a30: $2f
    dec bc                                        ; $7a31: $0b
    ld [hl], e                                    ; $7a32: $73
    inc c                                         ; $7a33: $0c
    inc sp                                        ; $7a34: $33
    inc c                                         ; $7a35: $0c
    nop                                           ; $7a36: $00
    rrca                                          ; $7a37: $0f
    add b                                         ; $7a38: $80
    adc a                                         ; $7a39: $8f
    ldh [$ef], a                                  ; $7a3a: $e0 $ef
    ld hl, sp-$01                                 ; $7a3c: $f8 $ff
    rst $38                                       ; $7a3e: $ff
    rst $38                                       ; $7a3f: $ff
    ldh [$a0], a                                  ; $7a40: $e0 $a0
    and b                                         ; $7a42: $a0
    add b                                         ; $7a43: $80
    add b                                         ; $7a44: $80
    nop                                           ; $7a45: $00
    nop                                           ; $7a46: $00
    add b                                         ; $7a47: $80
    jr jr_072_79e2                                ; $7a48: $18 $98

    dec a                                         ; $7a4a: $3d
    db $fd                                        ; $7a4b: $fd
    rst $38                                       ; $7a4c: $ff
    rst $38                                       ; $7a4d: $ff
    rst $38                                       ; $7a4e: $ff
    rst $38                                       ; $7a4f: $ff
    nop                                           ; $7a50: $00
    rst $38                                       ; $7a51: $ff
    nop                                           ; $7a52: $00
    rst $38                                       ; $7a53: $ff
    nop                                           ; $7a54: $00
    rst $38                                       ; $7a55: $ff
    nop                                           ; $7a56: $00
    rst $38                                       ; $7a57: $ff
    nop                                           ; $7a58: $00
    rst $38                                       ; $7a59: $ff
    nop                                           ; $7a5a: $00
    rst $38                                       ; $7a5b: $ff
    nop                                           ; $7a5c: $00
    rst $38                                       ; $7a5d: $ff
    nop                                           ; $7a5e: $00
    rst $38                                       ; $7a5f: $ff
    nop                                           ; $7a60: $00
    rst $38                                       ; $7a61: $ff
    ld [hl+], a                                   ; $7a62: $22
    db $dd                                        ; $7a63: $dd
    nop                                           ; $7a64: $00
    rst $38                                       ; $7a65: $ff
    adc b                                         ; $7a66: $88
    ld [hl], a                                    ; $7a67: $77
    nop                                           ; $7a68: $00
    rst $38                                       ; $7a69: $ff
    ld d, l                                       ; $7a6a: $55
    xor d                                         ; $7a6b: $aa
    xor d                                         ; $7a6c: $aa
    ld d, l                                       ; $7a6d: $55
    rst $38                                       ; $7a6e: $ff
    nop                                           ; $7a6f: $00
    rst $38                                       ; $7a70: $ff
    nop                                           ; $7a71: $00
    rst $38                                       ; $7a72: $ff
    nop                                           ; $7a73: $00
    rst $38                                       ; $7a74: $ff
    nop                                           ; $7a75: $00
    rst $38                                       ; $7a76: $ff
    nop                                           ; $7a77: $00
    db $dd                                        ; $7a78: $dd
    nop                                           ; $7a79: $00
    rst $38                                       ; $7a7a: $ff
    nop                                           ; $7a7b: $00
    ld d, l                                       ; $7a7c: $55
    nop                                           ; $7a7d: $00
    xor d                                         ; $7a7e: $aa
    nop                                           ; $7a7f: $00
    rst $38                                       ; $7a80: $ff
    rst $38                                       ; $7a81: $ff
    rst $38                                       ; $7a82: $ff
    rst $38                                       ; $7a83: $ff
    rst $38                                       ; $7a84: $ff
    rst $38                                       ; $7a85: $ff
    rst $38                                       ; $7a86: $ff
    rst $38                                       ; $7a87: $ff
    rst $38                                       ; $7a88: $ff
    rst $38                                       ; $7a89: $ff
    rst $38                                       ; $7a8a: $ff
    rst $38                                       ; $7a8b: $ff
    rst $38                                       ; $7a8c: $ff
    rst $38                                       ; $7a8d: $ff
    rst $38                                       ; $7a8e: $ff
    rst $38                                       ; $7a8f: $ff
    rst $38                                       ; $7a90: $ff
    ld a, a                                       ; $7a91: $7f
    rst $38                                       ; $7a92: $ff
    rra                                           ; $7a93: $1f
    rst $38                                       ; $7a94: $ff
    rlca                                          ; $7a95: $07
    rst $38                                       ; $7a96: $ff
    nop                                           ; $7a97: $00
    rst $38                                       ; $7a98: $ff
    nop                                           ; $7a99: $00
    add e                                         ; $7a9a: $83
    nop                                           ; $7a9b: $00
    jr nc, jr_072_7a9e                            ; $7a9c: $30 $00

jr_072_7a9e:
    ret c                                         ; $7a9e: $d8

    jr nz, @+$01                                  ; $7a9f: $20 $ff

    ld hl, sp-$01                                 ; $7aa1: $f8 $ff
    ldh [rIE], a                                  ; $7aa3: $e0 $ff
    add b                                         ; $7aa5: $80
    db $fd                                        ; $7aa6: $fd
    nop                                           ; $7aa7: $00
    db $fd                                        ; $7aa8: $fd
    nop                                           ; $7aa9: $00
    db $f4                                        ; $7aaa: $f4
    nop                                           ; $7aab: $00
    or c                                          ; $7aac: $b1
    nop                                           ; $7aad: $00
    add a                                         ; $7aae: $87
    nop                                           ; $7aaf: $00
    rst $38                                       ; $7ab0: $ff
    ld a, a                                       ; $7ab1: $7f
    rst $38                                       ; $7ab2: $ff
    rra                                           ; $7ab3: $1f
    rst $38                                       ; $7ab4: $ff
    rlca                                          ; $7ab5: $07
    rst $38                                       ; $7ab6: $ff
    nop                                           ; $7ab7: $00
    rst $38                                       ; $7ab8: $ff
    nop                                           ; $7ab9: $00
    ld b, $00                                     ; $7aba: $06 $00
    ld hl, sp+$00                                 ; $7abc: $f8 $00
    ld l, h                                       ; $7abe: $6c
    sub b                                         ; $7abf: $90
    rst $38                                       ; $7ac0: $ff
    ld hl, sp-$01                                 ; $7ac1: $f8 $ff
    ldh [rIE], a                                  ; $7ac3: $e0 $ff
    add b                                         ; $7ac5: $80
    db $fd                                        ; $7ac6: $fd
    nop                                           ; $7ac7: $00
    push af                                       ; $7ac8: $f5
    nop                                           ; $7ac9: $00
    ldh a, [rP1]                                  ; $7aca: $f0 $00
    adc $00                                       ; $7acc: $ce $00
    dec de                                        ; $7ace: $1b
    inc b                                         ; $7acf: $04
    ld e, [hl]                                    ; $7ad0: $5e
    and b                                         ; $7ad1: $a0
    rst $28                                       ; $7ad2: $ef
    db $10                                        ; $7ad3: $10
    ld b, e                                       ; $7ad4: $43
    inc a                                         ; $7ad5: $3c
    ld [hl], d                                    ; $7ad6: $72
    dec c                                         ; $7ad7: $0d
    inc a                                         ; $7ad8: $3c
    inc bc                                        ; $7ad9: $03
    rlca                                          ; $7ada: $07
    nop                                           ; $7adb: $00
    nop                                           ; $7adc: $00
    nop                                           ; $7add: $00
    nop                                           ; $7ade: $00
    nop                                           ; $7adf: $00
    dec e                                         ; $7ae0: $1d
    ld [bc], a                                    ; $7ae1: $02
    ei                                            ; $7ae2: $fb
    inc b                                         ; $7ae3: $04
    sub l                                         ; $7ae4: $95
    ld l, b                                       ; $7ae5: $68
    db $e4                                        ; $7ae6: $e4
    jr @+$6e                                      ; $7ae7: $18 $6c

    db $10                                        ; $7ae9: $10
    jr nc, jr_072_7aec                            ; $7aea: $30 $00

jr_072_7aec:
    nop                                           ; $7aec: $00
    nop                                           ; $7aed: $00
    nop                                           ; $7aee: $00
    nop                                           ; $7aef: $00
    or a                                          ; $7af0: $b7
    ld c, b                                       ; $7af1: $48
    cp c                                          ; $7af2: $b9
    ld b, [hl]                                    ; $7af3: $46
    db $dd                                        ; $7af4: $dd
    ld [hl+], a                                   ; $7af5: $22
    sbc h                                         ; $7af6: $9c
    ld h, e                                       ; $7af7: $63
    rst $10                                       ; $7af8: $d7
    jr nz, jr_072_7b0d                            ; $7af9: $20 $12

    ld bc, $0000                                  ; $7afb: $01 $00 $00
    nop                                           ; $7afe: $00
    nop                                           ; $7aff: $00
    ld a, [hl-]                                   ; $7b00: $3a
    dec b                                         ; $7b01: $05
    and l                                         ; $7b02: $a5
    ld e, d                                       ; $7b03: $5a
    sub $28                                       ; $7b04: $d6 $28
    rst $08                                       ; $7b06: $cf
    jr nc, jr_072_7b83                            ; $7b07: $30 $7a

    add b                                         ; $7b09: $80
    ldh [rP1], a                                  ; $7b0a: $e0 $00
    nop                                           ; $7b0c: $00

jr_072_7b0d:
    nop                                           ; $7b0d: $00
    nop                                           ; $7b0e: $00
    nop                                           ; $7b0f: $00
    add b                                         ; $7b10: $80
    nop                                           ; $7b11: $00
    jr nc, @+$81                                  ; $7b12: $30 $7f

    ld d, $ff                                     ; $7b14: $16 $ff
    ld h, h                                       ; $7b16: $64
    rst $38                                       ; $7b17: $ff
    nop                                           ; $7b18: $00
    rst $38                                       ; $7b19: $ff
    nop                                           ; $7b1a: $00
    rst $38                                       ; $7b1b: $ff
    nop                                           ; $7b1c: $00
    rst $38                                       ; $7b1d: $ff
    nop                                           ; $7b1e: $00
    rst $38                                       ; $7b1f: $ff
    rra                                           ; $7b20: $1f
    nop                                           ; $7b21: $00
    add $e0                                       ; $7b22: $c6 $e0
    ld h, b                                       ; $7b24: $60
    ld sp, hl                                     ; $7b25: $f9
    ld d, b                                       ; $7b26: $50
    rst $38                                       ; $7b27: $ff
    jr nz, @+$01                                  ; $7b28: $20 $ff

    nop                                           ; $7b2a: $00
    rst $38                                       ; $7b2b: $ff
    nop                                           ; $7b2c: $00
    rst $38                                       ; $7b2d: $ff
    nop                                           ; $7b2e: $00
    rst $38                                       ; $7b2f: $ff
    add b                                         ; $7b30: $80
    nop                                           ; $7b31: $00
    dec de                                        ; $7b32: $1b
    ld a, a                                       ; $7b33: $7f
    and [hl]                                      ; $7b34: $a6
    rst $38                                       ; $7b35: $ff
    ld b, b                                       ; $7b36: $40
    rst $38                                       ; $7b37: $ff
    nop                                           ; $7b38: $00
    rst $38                                       ; $7b39: $ff
    nop                                           ; $7b3a: $00
    rst $38                                       ; $7b3b: $ff
    nop                                           ; $7b3c: $00
    rst $38                                       ; $7b3d: $ff
    nop                                           ; $7b3e: $00
    rst $38                                       ; $7b3f: $ff
    ccf                                           ; $7b40: $3f
    nop                                           ; $7b41: $00
    sbc [hl]                                      ; $7b42: $9e
    ret nz                                        ; $7b43: $c0

    nop                                           ; $7b44: $00
    pop hl                                        ; $7b45: $e1
    pop bc                                        ; $7b46: $c1
    rst $38                                       ; $7b47: $ff
    ld a, [bc]                                    ; $7b48: $0a
    rst $38                                       ; $7b49: $ff
    nop                                           ; $7b4a: $00
    rst $38                                       ; $7b4b: $ff
    nop                                           ; $7b4c: $00
    rst $38                                       ; $7b4d: $ff
    nop                                           ; $7b4e: $00
    rst $38                                       ; $7b4f: $ff
    rst $38                                       ; $7b50: $ff
    nop                                           ; $7b51: $00
    ld sp, hl                                     ; $7b52: $f9
    ld bc, $01fb                                  ; $7b53: $01 $fb $01
    cp a                                          ; $7b56: $bf
    inc bc                                        ; $7b57: $03
    cp e                                          ; $7b58: $bb
    ld bc, $0005                                  ; $7b59: $01 $05 $00
    add hl, de                                    ; $7b5c: $19
    nop                                           ; $7b5d: $00
    inc bc                                        ; $7b5e: $03
    ld bc, $00ff                                  ; $7b5f: $01 $ff $00
    rst $38                                       ; $7b62: $ff
    nop                                           ; $7b63: $00
    add hl, sp                                    ; $7b64: $39
    nop                                           ; $7b65: $00
    di                                            ; $7b66: $f3
    add b                                         ; $7b67: $80
    add c                                         ; $7b68: $81
    nop                                           ; $7b69: $00
    ld [bc], a                                    ; $7b6a: $02
    nop                                           ; $7b6b: $00
    add b                                         ; $7b6c: $80
    add b                                         ; $7b6d: $80
    ret nz                                        ; $7b6e: $c0

    ret nz                                        ; $7b6f: $c0

    rst $38                                       ; $7b70: $ff
    nop                                           ; $7b71: $00
    db $fd                                        ; $7b72: $fd
    ld bc, $01bf                                  ; $7b73: $01 $bf $01
    cp a                                          ; $7b76: $bf
    inc bc                                        ; $7b77: $03
    sub e                                         ; $7b78: $93
    ld bc, $0005                                  ; $7b79: $01 $05 $00
    add hl, de                                    ; $7b7c: $19
    nop                                           ; $7b7d: $00
    inc bc                                        ; $7b7e: $03
    ld bc, $20df                                  ; $7b7f: $01 $df $20
    sbc a                                         ; $7b82: $9f

jr_072_7b83:
    nop                                           ; $7b83: $00
    dec a                                         ; $7b84: $3d
    nop                                           ; $7b85: $00
    ld sp, hl                                     ; $7b86: $f9
    add b                                         ; $7b87: $80
    add c                                         ; $7b88: $81
    nop                                           ; $7b89: $00
    ld [bc], a                                    ; $7b8a: $02
    nop                                           ; $7b8b: $00
    and h                                         ; $7b8c: $a4
    add b                                         ; $7b8d: $80
    ret nz                                        ; $7b8e: $c0

    ret nz                                        ; $7b8f: $c0

    add hl, de                                    ; $7b90: $19
    nop                                           ; $7b91: $00
    ld c, $00                                     ; $7b92: $0e $00
    ld h, $06                                     ; $7b94: $26 $06
    inc sp                                        ; $7b96: $33
    ld bc, $0047                                  ; $7b97: $01 $47 $00
    cpl                                           ; $7b9a: $2f
    inc bc                                        ; $7b9b: $03
    ld b, l                                       ; $7b9c: $45
    inc bc                                        ; $7b9d: $03
    rst $08                                       ; $7b9e: $cf
    nop                                           ; $7b9f: $00
    add b                                         ; $7ba0: $80
    nop                                           ; $7ba1: $00

jr_072_7ba2:
    jr nz, jr_072_7ba4                            ; $7ba2: $20 $00

jr_072_7ba4:
    nop                                           ; $7ba4: $00
    nop                                           ; $7ba5: $00
    ret nc                                        ; $7ba6: $d0

    ld b, b                                       ; $7ba7: $40
    ldh [$e0], a                                  ; $7ba8: $e0 $e0
    ret nz                                        ; $7baa: $c0

    ret nz                                        ; $7bab: $c0

    ld hl, sp+$30                                 ; $7bac: $f8 $30
    ret nz                                        ; $7bae: $c0

    ret nz                                        ; $7baf: $c0

    xor e                                         ; $7bb0: $ab
    inc b                                         ; $7bb1: $04
    sbc a                                         ; $7bb2: $9f
    ld bc, $0205                                  ; $7bb3: $01 $05 $02
    ld c, [hl]                                    ; $7bb6: $4e
    ld bc, $06a7                                  ; $7bb7: $01 $a7 $06
    dec hl                                        ; $7bba: $2b

jr_072_7bbb:
    ld bc, $00c7                                  ; $7bbb: $01 $c7 $00
    dec l                                         ; $7bbe: $2d
    ld [bc], a                                    ; $7bbf: $02
    db $ec                                        ; $7bc0: $ec
    adc b                                         ; $7bc1: $88
    ld hl, sp-$20                                 ; $7bc2: $f8 $e0
    db $f4                                        ; $7bc4: $f4
    jr nc, jr_072_7bbb                            ; $7bc5: $30 $f4

    ld d, b                                       ; $7bc7: $50
    ret z                                         ; $7bc8: $c8

    add b                                         ; $7bc9: $80
    ret nc                                        ; $7bca: $d0

    ld d, b                                       ; $7bcb: $50
    ldh [$c0], a                                  ; $7bcc: $e0 $c0
    ret nz                                        ; $7bce: $c0

    ret nz                                        ; $7bcf: $c0

    ld b, c                                       ; $7bd0: $41
    ld b, $cb                                     ; $7bd1: $06 $cb
    dec b                                         ; $7bd3: $05
    inc hl                                        ; $7bd4: $23
    inc b                                         ; $7bd5: $04
    rrca                                          ; $7bd6: $0f
    ld bc, $0285                                  ; $7bd7: $01 $85 $02
    ld e, h                                       ; $7bda: $5c
    inc bc                                        ; $7bdb: $03
    and l                                         ; $7bdc: $a5
    ld [bc], a                                    ; $7bdd: $02
    rst $28                                       ; $7bde: $ef
    inc h                                         ; $7bdf: $24
    ld hl, sp-$50                                 ; $7be0: $f8 $b0
    ret nz                                        ; $7be2: $c0

    ret nz                                        ; $7be3: $c0

    db $ec                                        ; $7be4: $ec
    ld c, b                                       ; $7be5: $48
    ld hl, sp-$60                                 ; $7be6: $f8 $a0
    push af                                       ; $7be8: $f5
    or b                                          ; $7be9: $b0
    db $f4                                        ; $7bea: $f4
    ld h, h                                       ; $7beb: $64
    add sp, $00                                   ; $7bec: $e8 $00
    ld hl, sp-$10                                 ; $7bee: $f8 $f0
    cpl                                           ; $7bf0: $2f
    dec bc                                        ; $7bf1: $0b
    ld [hl], e                                    ; $7bf2: $73
    inc c                                         ; $7bf3: $0c
    inc sp                                        ; $7bf4: $33
    inc c                                         ; $7bf5: $0c
    nop                                           ; $7bf6: $00
    rrca                                          ; $7bf7: $0f
    add b                                         ; $7bf8: $80
    adc a                                         ; $7bf9: $8f
    ldh [$ef], a                                  ; $7bfa: $e0 $ef
    ld hl, sp-$01                                 ; $7bfc: $f8 $ff
    rst $38                                       ; $7bfe: $ff
    rst $38                                       ; $7bff: $ff
    ldh [$a0], a                                  ; $7c00: $e0 $a0
    and b                                         ; $7c02: $a0
    add b                                         ; $7c03: $80
    add b                                         ; $7c04: $80
    nop                                           ; $7c05: $00
    nop                                           ; $7c06: $00
    add b                                         ; $7c07: $80
    jr jr_072_7ba2                                ; $7c08: $18 $98

    dec a                                         ; $7c0a: $3d
    db $fd                                        ; $7c0b: $fd
    rst $38                                       ; $7c0c: $ff
    rst $38                                       ; $7c0d: $ff
    rst $38                                       ; $7c0e: $ff
    rst $38                                       ; $7c0f: $ff
    nop                                           ; $7c10: $00
    rst $38                                       ; $7c11: $ff
    nop                                           ; $7c12: $00
    rst $38                                       ; $7c13: $ff
    nop                                           ; $7c14: $00
    rst $38                                       ; $7c15: $ff
    nop                                           ; $7c16: $00
    rst $38                                       ; $7c17: $ff
    nop                                           ; $7c18: $00
    rst $38                                       ; $7c19: $ff
    nop                                           ; $7c1a: $00
    rst $38                                       ; $7c1b: $ff
    nop                                           ; $7c1c: $00
    rst $38                                       ; $7c1d: $ff
    nop                                           ; $7c1e: $00
    rst $38                                       ; $7c1f: $ff
    nop                                           ; $7c20: $00
    rst $38                                       ; $7c21: $ff
    ld de, $00ee                                  ; $7c22: $11 $ee $00
    rst $38                                       ; $7c25: $ff
    ld b, h                                       ; $7c26: $44
    cp e                                          ; $7c27: $bb
    nop                                           ; $7c28: $00
    rst $38                                       ; $7c29: $ff
    xor d                                         ; $7c2a: $aa
    ld d, l                                       ; $7c2b: $55
    ld d, l                                       ; $7c2c: $55
    xor d                                         ; $7c2d: $aa
    rst $38                                       ; $7c2e: $ff
    nop                                           ; $7c2f: $00
    rst $38                                       ; $7c30: $ff
    nop                                           ; $7c31: $00
    rst $38                                       ; $7c32: $ff
    nop                                           ; $7c33: $00
    rst $38                                       ; $7c34: $ff
    nop                                           ; $7c35: $00
    rst $38                                       ; $7c36: $ff
    nop                                           ; $7c37: $00
    xor $00                                       ; $7c38: $ee $00
    rst $38                                       ; $7c3a: $ff
    nop                                           ; $7c3b: $00
    xor d                                         ; $7c3c: $aa
    nop                                           ; $7c3d: $00
    ld d, l                                       ; $7c3e: $55
    nop                                           ; $7c3f: $00
    rst $38                                       ; $7c40: $ff
    rst $38                                       ; $7c41: $ff
    rst $38                                       ; $7c42: $ff
    rst $38                                       ; $7c43: $ff
    rst $38                                       ; $7c44: $ff
    rst $38                                       ; $7c45: $ff
    rst $38                                       ; $7c46: $ff
    rst $38                                       ; $7c47: $ff
    rst $38                                       ; $7c48: $ff
    rst $38                                       ; $7c49: $ff
    rst $38                                       ; $7c4a: $ff
    rst $38                                       ; $7c4b: $ff
    rst $38                                       ; $7c4c: $ff
    rst $38                                       ; $7c4d: $ff
    rst $38                                       ; $7c4e: $ff
    rst $38                                       ; $7c4f: $ff
    rst $38                                       ; $7c50: $ff
    rra                                           ; $7c51: $1f
    rst $38                                       ; $7c52: $ff
    rlca                                          ; $7c53: $07
    rst $38                                       ; $7c54: $ff
    ld bc, $007f                                  ; $7c55: $01 $7f $00
    ld a, a                                       ; $7c58: $7f
    nop                                           ; $7c59: $00
    inc h                                         ; $7c5a: $24
    nop                                           ; $7c5b: $00
    ld a, [de]                                    ; $7c5c: $1a
    nop                                           ; $7c5d: $00
    db $ec                                        ; $7c5e: $ec
    db $10                                        ; $7c5f: $10
    rst $38                                       ; $7c60: $ff
    cp $ff                                        ; $7c61: $fe $ff
    ld hl, sp-$01                                 ; $7c63: $f8 $ff
    ldh [rIE], a                                  ; $7c65: $e0 $ff
    nop                                           ; $7c67: $00
    rst $38                                       ; $7c68: $ff
    nop                                           ; $7c69: $00
    db $fd                                        ; $7c6a: $fd
    nop                                           ; $7c6b: $00
    inc l                                         ; $7c6c: $2c
    nop                                           ; $7c6d: $00
    inc hl                                        ; $7c6e: $23
    nop                                           ; $7c6f: $00
    rst $38                                       ; $7c70: $ff
    rra                                           ; $7c71: $1f
    rst $38                                       ; $7c72: $ff
    rlca                                          ; $7c73: $07
    rst $38                                       ; $7c74: $ff
    ld bc, $007f                                  ; $7c75: $01 $7f $00
    ld a, a                                       ; $7c78: $7f
    nop                                           ; $7c79: $00
    inc bc                                        ; $7c7a: $03
    nop                                           ; $7c7b: $00
    db $fc                                        ; $7c7c: $fc
    nop                                           ; $7c7d: $00
    or [hl]                                       ; $7c7e: $b6
    ld c, b                                       ; $7c7f: $48
    rst $38                                       ; $7c80: $ff
    cp $ff                                        ; $7c81: $fe $ff
    ld hl, sp-$01                                 ; $7c83: $f8 $ff
    ldh [rIE], a                                  ; $7c85: $e0 $ff
    nop                                           ; $7c87: $00
    db $fd                                        ; $7c88: $fd
    nop                                           ; $7c89: $00
    cp b                                          ; $7c8a: $b8
    nop                                           ; $7c8b: $00
    scf                                           ; $7c8c: $37
    nop                                           ; $7c8d: $00
    dec c                                         ; $7c8e: $0d
    ld [bc], a                                    ; $7c8f: $02
    cpl                                           ; $7c90: $2f
    ret nc                                        ; $7c91: $d0

    rst $30                                       ; $7c92: $f7
    ld [$1e21], sp                                ; $7c93: $08 $21 $1e
    cp c                                          ; $7c96: $b9
    ld b, $1e                                     ; $7c97: $06 $1e
    ld bc, $0003                                  ; $7c99: $01 $03 $00
    nop                                           ; $7c9c: $00
    nop                                           ; $7c9d: $00
    nop                                           ; $7c9e: $00
    nop                                           ; $7c9f: $00
    ld c, $01                                     ; $7ca0: $0e $01
    db $fd                                        ; $7ca2: $fd
    ld [bc], a                                    ; $7ca3: $02
    jp z, $7234                                   ; $7ca4: $ca $34 $72

    adc h                                         ; $7ca7: $8c
    ld [hl], $88                                  ; $7ca8: $36 $88
    sbc b                                         ; $7caa: $98
    nop                                           ; $7cab: $00
    nop                                           ; $7cac: $00
    nop                                           ; $7cad: $00
    nop                                           ; $7cae: $00
    nop                                           ; $7caf: $00
    db $db                                        ; $7cb0: $db
    inc h                                         ; $7cb1: $24
    call c, $ee23                                 ; $7cb2: $dc $23 $ee
    ld de, $314e                                  ; $7cb5: $11 $4e $31
    ld l, e                                       ; $7cb8: $6b
    db $10                                        ; $7cb9: $10
    add hl, bc                                    ; $7cba: $09
    nop                                           ; $7cbb: $00
    nop                                           ; $7cbc: $00
    nop                                           ; $7cbd: $00
    nop                                           ; $7cbe: $00
    nop                                           ; $7cbf: $00
    sbc l                                         ; $7cc0: $9d
    ld [bc], a                                    ; $7cc1: $02
    jp nc, $eb2d                                  ; $7cc2: $d2 $2d $eb

    inc d                                         ; $7cc5: $14
    ld h, a                                       ; $7cc6: $67
    sbc b                                         ; $7cc7: $98
    cp l                                          ; $7cc8: $bd
    ld b, b                                       ; $7cc9: $40
    ld [hl], b                                    ; $7cca: $70
    add b                                         ; $7ccb: $80
    nop                                           ; $7ccc: $00
    nop                                           ; $7ccd: $00
    nop                                           ; $7cce: $00
    nop                                           ; $7ccf: $00
    ret nz                                        ; $7cd0: $c0

    nop                                           ; $7cd1: $00
    jr jr_072_7d13                                ; $7cd2: $18 $3f

    dec bc                                        ; $7cd4: $0b
    rst $38                                       ; $7cd5: $ff
    or d                                          ; $7cd6: $b2
    rst $38                                       ; $7cd7: $ff
    nop                                           ; $7cd8: $00
    rst $38                                       ; $7cd9: $ff
    nop                                           ; $7cda: $00
    rst $38                                       ; $7cdb: $ff
    nop                                           ; $7cdc: $00
    rst $38                                       ; $7cdd: $ff
    nop                                           ; $7cde: $00
    rst $38                                       ; $7cdf: $ff
    rrca                                          ; $7ce0: $0f
    nop                                           ; $7ce1: $00
    ld h, e                                       ; $7ce2: $63
    ldh a, [$30]                                  ; $7ce3: $f0 $30
    db $fc                                        ; $7ce5: $fc
    jr z, @+$01                                   ; $7ce6: $28 $ff

    db $10                                        ; $7ce8: $10
    rst $38                                       ; $7ce9: $ff
    nop                                           ; $7cea: $00
    rst $38                                       ; $7ceb: $ff
    nop                                           ; $7cec: $00
    rst $38                                       ; $7ced: $ff
    nop                                           ; $7cee: $00
    rst $38                                       ; $7cef: $ff
    ret nz                                        ; $7cf0: $c0

    nop                                           ; $7cf1: $00
    dec c                                         ; $7cf2: $0d
    ccf                                           ; $7cf3: $3f
    ld d, e                                       ; $7cf4: $53
    rst $38                                       ; $7cf5: $ff
    jr nz, @+$01                                  ; $7cf6: $20 $ff

    nop                                           ; $7cf8: $00
    rst $38                                       ; $7cf9: $ff
    nop                                           ; $7cfa: $00
    rst $38                                       ; $7cfb: $ff
    nop                                           ; $7cfc: $00
    rst $38                                       ; $7cfd: $ff
    nop                                           ; $7cfe: $00
    rst $38                                       ; $7cff: $ff
    rra                                           ; $7d00: $1f
    nop                                           ; $7d01: $00
    rst $08                                       ; $7d02: $cf
    ldh [rP1], a                                  ; $7d03: $e0 $00
    ldh a, [$60]                                  ; $7d05: $f0 $60
    rst $38                                       ; $7d07: $ff
    dec b                                         ; $7d08: $05
    rst $38                                       ; $7d09: $ff
    nop                                           ; $7d0a: $00
    rst $38                                       ; $7d0b: $ff
    nop                                           ; $7d0c: $00
    rst $38                                       ; $7d0d: $ff
    nop                                           ; $7d0e: $00
    rst $38                                       ; $7d0f: $ff
    rst $38                                       ; $7d10: $ff
    nop                                           ; $7d11: $00
    db $fc                                        ; $7d12: $fc

jr_072_7d13:
    nop                                           ; $7d13: $00
    db $fd                                        ; $7d14: $fd
    nop                                           ; $7d15: $00
    rst $18                                       ; $7d16: $df
    ld bc, $00dd                                  ; $7d17: $01 $dd $00
    ld [bc], a                                    ; $7d1a: $02
    nop                                           ; $7d1b: $00
    inc c                                         ; $7d1c: $0c
    nop                                           ; $7d1d: $00
    ld bc, $ff00                                  ; $7d1e: $01 $00 $ff
    nop                                           ; $7d21: $00
    rst $38                                       ; $7d22: $ff
    add b                                         ; $7d23: $80
    sbc h                                         ; $7d24: $9c
    add b                                         ; $7d25: $80
    ld sp, hl                                     ; $7d26: $f9
    ret nz                                        ; $7d27: $c0

    ret nz                                        ; $7d28: $c0

    add b                                         ; $7d29: $80
    add c                                         ; $7d2a: $81
    nop                                           ; $7d2b: $00
    ret nz                                        ; $7d2c: $c0

    ld b, b                                       ; $7d2d: $40
    ldh [$e0], a                                  ; $7d2e: $e0 $e0
    rst $38                                       ; $7d30: $ff
    nop                                           ; $7d31: $00
    cp $00                                        ; $7d32: $fe $00
    rst $18                                       ; $7d34: $df
    nop                                           ; $7d35: $00
    rst $18                                       ; $7d36: $df
    ld bc, $00c9                                  ; $7d37: $01 $c9 $00
    ld [bc], a                                    ; $7d3a: $02
    nop                                           ; $7d3b: $00
    inc c                                         ; $7d3c: $0c
    nop                                           ; $7d3d: $00
    ld bc, $ef00                                  ; $7d3e: $01 $00 $ef
    db $10                                        ; $7d41: $10
    rst $08                                       ; $7d42: $cf
    add b                                         ; $7d43: $80
    sbc [hl]                                      ; $7d44: $9e
    add b                                         ; $7d45: $80
    db $fc                                        ; $7d46: $fc
    ret nz                                        ; $7d47: $c0

    ret nz                                        ; $7d48: $c0

    add b                                         ; $7d49: $80
    add c                                         ; $7d4a: $81
    nop                                           ; $7d4b: $00
    jp nc, $e040                                  ; $7d4c: $d2 $40 $e0

    ldh [$0c], a                                  ; $7d4f: $e0 $0c
    nop                                           ; $7d51: $00
    rlca                                          ; $7d52: $07
    nop                                           ; $7d53: $00
    inc de                                        ; $7d54: $13
    inc bc                                        ; $7d55: $03
    add hl, de                                    ; $7d56: $19
    nop                                           ; $7d57: $00
    inc hl                                        ; $7d58: $23
    nop                                           ; $7d59: $00
    rla                                           ; $7d5a: $17
    ld bc, $0122                                  ; $7d5b: $01 $22 $01
    ld h, a                                       ; $7d5e: $67
    nop                                           ; $7d5f: $00
    ret nz                                        ; $7d60: $c0

    nop                                           ; $7d61: $00
    stop                                          ; $7d62: $10 $00
    nop                                           ; $7d64: $00
    nop                                           ; $7d65: $00
    add sp, -$60                                  ; $7d66: $e8 $a0
    ldh a, [rSVBK]                                ; $7d68: $f0 $70
    ldh [$e0], a                                  ; $7d6a: $e0 $e0
    db $fc                                        ; $7d6c: $fc
    sbc b                                         ; $7d6d: $98
    ldh [$60], a                                  ; $7d6e: $e0 $60
    ld d, l                                       ; $7d70: $55
    ld [bc], a                                    ; $7d71: $02
    ld c, a                                       ; $7d72: $4f
    nop                                           ; $7d73: $00
    ld [bc], a                                    ; $7d74: $02
    ld bc, $0027                                  ; $7d75: $01 $27 $00
    ld d, e                                       ; $7d78: $53
    inc bc                                        ; $7d79: $03
    dec d                                         ; $7d7a: $15
    nop                                           ; $7d7b: $00
    ld h, e                                       ; $7d7c: $63
    nop                                           ; $7d7d: $00
    ld d, $01                                     ; $7d7e: $16 $01
    or $44                                        ; $7d80: $f6 $44
    db $fc                                        ; $7d82: $fc
    ldh a, [$fa]                                  ; $7d83: $f0 $fa
    jr jr_072_7e01                                ; $7d85: $18 $7a

    xor b                                         ; $7d87: $a8
    db $e4                                        ; $7d88: $e4
    ld b, b                                       ; $7d89: $40
    add sp, -$58                                  ; $7d8a: $e8 $a8
    ldh a, [$60]                                  ; $7d8c: $f0 $60
    ldh [$60], a                                  ; $7d8e: $e0 $60
    jr nz, @+$05                                  ; $7d90: $20 $03

    ld h, l                                       ; $7d92: $65
    ld [bc], a                                    ; $7d93: $02
    ld de, $0702                                  ; $7d94: $11 $02 $07
    nop                                           ; $7d97: $00
    jp nz, $2e01                                  ; $7d98: $c2 $01 $2e

    ld bc, $0152                                  ; $7d9b: $01 $52 $01
    ld [hl], a                                    ; $7d9e: $77
    ld [de], a                                    ; $7d9f: $12
    db $fc                                        ; $7da0: $fc
    ld e, b                                       ; $7da1: $58
    ldh [$e0], a                                  ; $7da2: $e0 $e0
    or $24                                        ; $7da4: $f6 $24
    db $fc                                        ; $7da6: $fc
    ret nc                                        ; $7da7: $d0

    ld a, [$7a58]                                 ; $7da8: $fa $58 $7a
    or d                                          ; $7dab: $b2
    db $f4                                        ; $7dac: $f4
    nop                                           ; $7dad: $00
    db $fc                                        ; $7dae: $fc
    ld a, b                                       ; $7daf: $78
    rla                                           ; $7db0: $17
    dec b                                         ; $7db1: $05
    add hl, sp                                    ; $7db2: $39
    ld b, $19                                     ; $7db3: $06 $19
    ld b, $00                                     ; $7db5: $06 $00
    rlca                                          ; $7db7: $07
    ld b, b                                       ; $7db8: $40
    ld b, a                                       ; $7db9: $47
    ldh a, [$f7]                                  ; $7dba: $f0 $f7
    db $fc                                        ; $7dbc: $fc
    rst $38                                       ; $7dbd: $ff
    rst $38                                       ; $7dbe: $ff
    rst $38                                       ; $7dbf: $ff
    ldh a, [$d0]                                  ; $7dc0: $f0 $d0
    ret nc                                        ; $7dc2: $d0

    ld b, b                                       ; $7dc3: $40
    ret nz                                        ; $7dc4: $c0

    nop                                           ; $7dc5: $00
    nop                                           ; $7dc6: $00
    ret nz                                        ; $7dc7: $c0

    inc c                                         ; $7dc8: $0c
    call z, $fe1e                                 ; $7dc9: $cc $1e $fe
    ld a, a                                       ; $7dcc: $7f
    rst $38                                       ; $7dcd: $ff
    rst $38                                       ; $7dce: $ff
    rst $38                                       ; $7dcf: $ff
    nop                                           ; $7dd0: $00
    rst $38                                       ; $7dd1: $ff
    nop                                           ; $7dd2: $00
    rst $38                                       ; $7dd3: $ff
    nop                                           ; $7dd4: $00
    rst $38                                       ; $7dd5: $ff
    nop                                           ; $7dd6: $00
    rst $38                                       ; $7dd7: $ff
    nop                                           ; $7dd8: $00
    rst $38                                       ; $7dd9: $ff
    nop                                           ; $7dda: $00
    rst $38                                       ; $7ddb: $ff
    nop                                           ; $7ddc: $00
    rst $38                                       ; $7ddd: $ff
    nop                                           ; $7dde: $00
    rst $38                                       ; $7ddf: $ff
    nop                                           ; $7de0: $00
    rst $38                                       ; $7de1: $ff
    ld de, $00ee                                  ; $7de2: $11 $ee $00
    rst $38                                       ; $7de5: $ff
    ld b, h                                       ; $7de6: $44
    cp e                                          ; $7de7: $bb
    nop                                           ; $7de8: $00
    rst $38                                       ; $7de9: $ff
    xor d                                         ; $7dea: $aa
    ld d, l                                       ; $7deb: $55
    ld d, l                                       ; $7dec: $55
    xor d                                         ; $7ded: $aa
    rst $38                                       ; $7dee: $ff
    nop                                           ; $7def: $00
    rst $38                                       ; $7df0: $ff
    nop                                           ; $7df1: $00
    rst $38                                       ; $7df2: $ff
    nop                                           ; $7df3: $00
    rst $38                                       ; $7df4: $ff
    nop                                           ; $7df5: $00
    rst $38                                       ; $7df6: $ff
    nop                                           ; $7df7: $00
    xor $00                                       ; $7df8: $ee $00
    rst $38                                       ; $7dfa: $ff
    nop                                           ; $7dfb: $00
    xor d                                         ; $7dfc: $aa
    nop                                           ; $7dfd: $00
    ld d, l                                       ; $7dfe: $55
    nop                                           ; $7dff: $00
    rst $38                                       ; $7e00: $ff

jr_072_7e01:
    rst $38                                       ; $7e01: $ff
    rst $38                                       ; $7e02: $ff
    rst $38                                       ; $7e03: $ff
    rst $38                                       ; $7e04: $ff
    rst $38                                       ; $7e05: $ff
    rst $38                                       ; $7e06: $ff
    rst $38                                       ; $7e07: $ff
    rst $38                                       ; $7e08: $ff
    rst $38                                       ; $7e09: $ff
    rst $38                                       ; $7e0a: $ff
    rst $38                                       ; $7e0b: $ff
    rst $38                                       ; $7e0c: $ff
    rst $38                                       ; $7e0d: $ff
    rst $38                                       ; $7e0e: $ff
    rst $38                                       ; $7e0f: $ff
    rst $38                                       ; $7e10: $ff
    add a                                         ; $7e11: $87
    rst $38                                       ; $7e12: $ff
    ld bc, $00ff                                  ; $7e13: $01 $ff $00
    rst $18                                       ; $7e16: $df
    nop                                           ; $7e17: $00
    rst $18                                       ; $7e18: $df
    nop                                           ; $7e19: $00
    ld b, e                                       ; $7e1a: $43
    nop                                           ; $7e1b: $00
    adc l                                         ; $7e1c: $8d
    nop                                           ; $7e1d: $00
    or $08                                        ; $7e1e: $f6 $08
    rst $38                                       ; $7e20: $ff
    rst $38                                       ; $7e21: $ff
    rst $38                                       ; $7e22: $ff
    cp $ff                                        ; $7e23: $fe $ff
    ld a, b                                       ; $7e25: $78
    rst $38                                       ; $7e26: $ff
    nop                                           ; $7e27: $00
    rst $38                                       ; $7e28: $ff
    nop                                           ; $7e29: $00
    ccf                                           ; $7e2a: $3f
    nop                                           ; $7e2b: $00
    adc d                                         ; $7e2c: $8a
    nop                                           ; $7e2d: $00
    add hl, bc                                    ; $7e2e: $09
    nop                                           ; $7e2f: $00
    rst $38                                       ; $7e30: $ff
    add a                                         ; $7e31: $87
    rst $38                                       ; $7e32: $ff
    ld bc, $00ff                                  ; $7e33: $01 $ff $00
    rst $18                                       ; $7e36: $df
    nop                                           ; $7e37: $00
    rst $18                                       ; $7e38: $df
    nop                                           ; $7e39: $00
    ld bc, $7e00                                  ; $7e3a: $01 $00 $7e
    nop                                           ; $7e3d: $00
    db $db                                        ; $7e3e: $db
    inc h                                         ; $7e3f: $24
    rst $38                                       ; $7e40: $ff
    rst $38                                       ; $7e41: $ff
    rst $38                                       ; $7e42: $ff
    cp $ff                                        ; $7e43: $fe $ff
    ld a, b                                       ; $7e45: $78
    rst $38                                       ; $7e46: $ff
    nop                                           ; $7e47: $00
    rst $38                                       ; $7e48: $ff
    nop                                           ; $7e49: $00
    db $ec                                        ; $7e4a: $ec
    nop                                           ; $7e4b: $00
    adc e                                         ; $7e4c: $8b
    nop                                           ; $7e4d: $00
    ld b, $01                                     ; $7e4e: $06 $01
    sub a                                         ; $7e50: $97
    ld l, b                                       ; $7e51: $68
    ld a, e                                       ; $7e52: $7b
    add h                                         ; $7e53: $84
    sub b                                         ; $7e54: $90
    rrca                                          ; $7e55: $0f
    call c, $8f03                                 ; $7e56: $dc $03 $8f
    nop                                           ; $7e59: $00
    ld bc, $0000                                  ; $7e5a: $01 $00 $00
    nop                                           ; $7e5d: $00
    nop                                           ; $7e5e: $00
    nop                                           ; $7e5f: $00
    add a                                         ; $7e60: $87
    nop                                           ; $7e61: $00
    cp $01                                        ; $7e62: $fe $01
    push hl                                       ; $7e64: $e5
    ld a, [de]                                    ; $7e65: $1a
    cp c                                          ; $7e66: $b9
    ld b, [hl]                                    ; $7e67: $46
    dec de                                        ; $7e68: $1b
    call nz, Call_000_00cc                        ; $7e69: $c4 $cc $00
    nop                                           ; $7e6c: $00
    nop                                           ; $7e6d: $00
    nop                                           ; $7e6e: $00
    nop                                           ; $7e6f: $00
    ld l, l                                       ; $7e70: $6d
    sub d                                         ; $7e71: $92
    xor $11                                       ; $7e72: $ee $11
    ld [hl], a                                    ; $7e74: $77
    ld [$1827], sp                                ; $7e75: $08 $27 $18
    dec [hl]                                      ; $7e78: $35
    ld [$0004], sp                                ; $7e79: $08 $04 $00
    nop                                           ; $7e7c: $00
    nop                                           ; $7e7d: $00
    nop                                           ; $7e7e: $00
    nop                                           ; $7e7f: $00
    adc $01                                       ; $7e80: $ce $01
    ld l, c                                       ; $7e82: $69
    sub [hl]                                      ; $7e83: $96
    ld [hl], l                                    ; $7e84: $75
    adc d                                         ; $7e85: $8a
    inc sp                                        ; $7e86: $33
    call z, Call_000_20de                         ; $7e87: $cc $de $20
    cp b                                          ; $7e8a: $b8
    ld b, b                                       ; $7e8b: $40
    nop                                           ; $7e8c: $00
    nop                                           ; $7e8d: $00
    nop                                           ; $7e8e: $00
    nop                                           ; $7e8f: $00
    ldh [rP1], a                                  ; $7e90: $e0 $00
    adc h                                         ; $7e92: $8c
    rra                                           ; $7e93: $1f
    dec b                                         ; $7e94: $05
    ld a, a                                       ; $7e95: $7f
    ld e, c                                       ; $7e96: $59
    rst $38                                       ; $7e97: $ff
    add b                                         ; $7e98: $80
    rst $38                                       ; $7e99: $ff
    nop                                           ; $7e9a: $00
    rst $38                                       ; $7e9b: $ff
    nop                                           ; $7e9c: $00
    rst $38                                       ; $7e9d: $ff
    nop                                           ; $7e9e: $00
    rst $38                                       ; $7e9f: $ff
    rlca                                          ; $7ea0: $07
    nop                                           ; $7ea1: $00
    ld sp, $98f8                                  ; $7ea2: $31 $f8 $98
    cp $14                                        ; $7ea5: $fe $14
    rst $38                                       ; $7ea7: $ff
    ld [$00ff], sp                                ; $7ea8: $08 $ff $00
    rst $38                                       ; $7eab: $ff
    nop                                           ; $7eac: $00
    rst $38                                       ; $7ead: $ff
    nop                                           ; $7eae: $00
    rst $38                                       ; $7eaf: $ff
    ldh [rP1], a                                  ; $7eb0: $e0 $00
    add [hl]                                      ; $7eb2: $86
    rra                                           ; $7eb3: $1f
    add hl, hl                                    ; $7eb4: $29
    ld a, a                                       ; $7eb5: $7f
    db $10                                        ; $7eb6: $10
    rst $38                                       ; $7eb7: $ff
    nop                                           ; $7eb8: $00
    rst $38                                       ; $7eb9: $ff
    nop                                           ; $7eba: $00
    rst $38                                       ; $7ebb: $ff
    nop                                           ; $7ebc: $00
    rst $38                                       ; $7ebd: $ff
    nop                                           ; $7ebe: $00
    rst $38                                       ; $7ebf: $ff
    rrca                                          ; $7ec0: $0f
    nop                                           ; $7ec1: $00
    rst $20                                       ; $7ec2: $e7
    ldh a, [$80]                                  ; $7ec3: $f0 $80
    ld hl, sp+$30                                 ; $7ec5: $f8 $30
    rst $38                                       ; $7ec7: $ff
    ld [bc], a                                    ; $7ec8: $02
    rst $38                                       ; $7ec9: $ff
    nop                                           ; $7eca: $00
    rst $38                                       ; $7ecb: $ff
    nop                                           ; $7ecc: $00
    rst $38                                       ; $7ecd: $ff
    nop                                           ; $7ece: $00
    rst $38                                       ; $7ecf: $ff
    rst $38                                       ; $7ed0: $ff
    nop                                           ; $7ed1: $00
    cp $00                                        ; $7ed2: $fe $00
    ld a, a                                       ; $7ed4: $7f
    nop                                           ; $7ed5: $00
    ld l, a                                       ; $7ed6: $6f
    ld bc, $006d                                  ; $7ed7: $01 $6d $00
    add d                                         ; $7eda: $82
    nop                                           ; $7edb: $00
    inc c                                         ; $7edc: $0c
    nop                                           ; $7edd: $00
    ld bc, $ff00                                  ; $7ede: $01 $00 $ff
    nop                                           ; $7ee1: $00
    rst $38                                       ; $7ee2: $ff
    add b                                         ; $7ee3: $80
    xor [hl]                                      ; $7ee4: $ae
    add b                                         ; $7ee5: $80
    db $ec                                        ; $7ee6: $ec
    ret nz                                        ; $7ee7: $c0

    ret nz                                        ; $7ee8: $c0

    add b                                         ; $7ee9: $80
    and b                                         ; $7eea: $a0
    nop                                           ; $7eeb: $00
    ret nz                                        ; $7eec: $c0

    ld b, b                                       ; $7eed: $40
    ldh [$e0], a                                  ; $7eee: $e0 $e0
    rst $38                                       ; $7ef0: $ff
    nop                                           ; $7ef1: $00
    cp $00                                        ; $7ef2: $fe $00
    ld l, a                                       ; $7ef4: $6f
    nop                                           ; $7ef5: $00
    rst $28                                       ; $7ef6: $ef
    ld bc, $0065                                  ; $7ef7: $01 $65 $00
    add d                                         ; $7efa: $82
    nop                                           ; $7efb: $00
    inc c                                         ; $7efc: $0c
    nop                                           ; $7efd: $00
    ld bc, $f700                                  ; $7efe: $01 $00 $f7
    ld [$80e7], sp                                ; $7f01: $08 $e7 $80
    adc a                                         ; $7f04: $8f
    add b                                         ; $7f05: $80
    xor $c0                                       ; $7f06: $ee $c0
    ret nz                                        ; $7f08: $c0

    add b                                         ; $7f09: $80
    add b                                         ; $7f0a: $80
    nop                                           ; $7f0b: $00
    ret                                           ; $7f0c: $c9


    ld b, b                                       ; $7f0d: $40
    ldh [$e0], a                                  ; $7f0e: $e0 $e0
    inc c                                         ; $7f10: $0c
    nop                                           ; $7f11: $00
    rlca                                          ; $7f12: $07
    nop                                           ; $7f13: $00
    inc de                                        ; $7f14: $13
    inc bc                                        ; $7f15: $03
    add hl, de                                    ; $7f16: $19
    nop                                           ; $7f17: $00
    inc hl                                        ; $7f18: $23
    nop                                           ; $7f19: $00
    rla                                           ; $7f1a: $17
    ld bc, $0122                                  ; $7f1b: $01 $22 $01
    ld h, a                                       ; $7f1e: $67
    nop                                           ; $7f1f: $00
    ret nz                                        ; $7f20: $c0

    nop                                           ; $7f21: $00
    stop                                          ; $7f22: $10 $00
    nop                                           ; $7f24: $00
    nop                                           ; $7f25: $00
    add sp, -$60                                  ; $7f26: $e8 $a0
    ldh a, [rSVBK]                                ; $7f28: $f0 $70
    ldh [$e0], a                                  ; $7f2a: $e0 $e0
    db $fc                                        ; $7f2c: $fc
    sbc b                                         ; $7f2d: $98
    ldh [$60], a                                  ; $7f2e: $e0 $60
    ld d, l                                       ; $7f30: $55
    ld [bc], a                                    ; $7f31: $02
    ld c, a                                       ; $7f32: $4f
    nop                                           ; $7f33: $00
    ld [bc], a                                    ; $7f34: $02
    ld bc, $0027                                  ; $7f35: $01 $27 $00
    ld d, e                                       ; $7f38: $53
    inc bc                                        ; $7f39: $03
    dec d                                         ; $7f3a: $15
    nop                                           ; $7f3b: $00
    ld h, e                                       ; $7f3c: $63
    nop                                           ; $7f3d: $00
    ld d, $01                                     ; $7f3e: $16 $01
    or $44                                        ; $7f40: $f6 $44
    db $fc                                        ; $7f42: $fc
    ldh a, [$fa]                                  ; $7f43: $f0 $fa
    jr jr_072_7fc1                                ; $7f45: $18 $7a

    xor b                                         ; $7f47: $a8
    db $e4                                        ; $7f48: $e4
    ld b, b                                       ; $7f49: $40
    add sp, -$58                                  ; $7f4a: $e8 $a8
    ldh a, [$60]                                  ; $7f4c: $f0 $60
    ldh [$60], a                                  ; $7f4e: $e0 $60
    jr nz, @+$05                                  ; $7f50: $20 $03

    ld h, l                                       ; $7f52: $65
    ld [bc], a                                    ; $7f53: $02
    ld de, $0702                                  ; $7f54: $11 $02 $07
    nop                                           ; $7f57: $00
    jp nz, $2e01                                  ; $7f58: $c2 $01 $2e

    ld bc, $0152                                  ; $7f5b: $01 $52 $01
    ld [hl], a                                    ; $7f5e: $77
    ld [de], a                                    ; $7f5f: $12
    db $fc                                        ; $7f60: $fc
    ld e, b                                       ; $7f61: $58
    ldh [$e0], a                                  ; $7f62: $e0 $e0
    or $24                                        ; $7f64: $f6 $24
    db $fc                                        ; $7f66: $fc
    ret nc                                        ; $7f67: $d0

    ld a, [$7a58]                                 ; $7f68: $fa $58 $7a
    or d                                          ; $7f6b: $b2
    db $f4                                        ; $7f6c: $f4
    nop                                           ; $7f6d: $00
    db $fc                                        ; $7f6e: $fc
    ld a, b                                       ; $7f6f: $78
    rla                                           ; $7f70: $17
    dec b                                         ; $7f71: $05
    add hl, sp                                    ; $7f72: $39
    ld b, $19                                     ; $7f73: $06 $19
    ld b, $00                                     ; $7f75: $06 $00
    rlca                                          ; $7f77: $07
    ld b, b                                       ; $7f78: $40
    ld b, a                                       ; $7f79: $47
    ldh a, [$f7]                                  ; $7f7a: $f0 $f7
    db $fc                                        ; $7f7c: $fc
    rst $38                                       ; $7f7d: $ff
    rst $38                                       ; $7f7e: $ff
    rst $38                                       ; $7f7f: $ff
    ldh a, [$d0]                                  ; $7f80: $f0 $d0
    ret nc                                        ; $7f82: $d0

    ld b, b                                       ; $7f83: $40
    ret nz                                        ; $7f84: $c0

    nop                                           ; $7f85: $00
    nop                                           ; $7f86: $00
    ret nz                                        ; $7f87: $c0

    inc c                                         ; $7f88: $0c
    call z, $fe1e                                 ; $7f89: $cc $1e $fe
    ld a, a                                       ; $7f8c: $7f
    rst $38                                       ; $7f8d: $ff
    rst $38                                       ; $7f8e: $ff
    rst $38                                       ; $7f8f: $ff
    nop                                           ; $7f90: $00
    nop                                           ; $7f91: $00
    ld d, l                                       ; $7f92: $55
    nop                                           ; $7f93: $00
    xor d                                         ; $7f94: $aa
    nop                                           ; $7f95: $00
    rst $38                                       ; $7f96: $ff
    nop                                           ; $7f97: $00
    sbc c                                         ; $7f98: $99
    ld b, h                                       ; $7f99: $44
    db $dd                                        ; $7f9a: $dd
    ld [hl+], a                                   ; $7f9b: $22
    xor d                                         ; $7f9c: $aa
    ld d, l                                       ; $7f9d: $55
    ld d, l                                       ; $7f9e: $55
    xor d                                         ; $7f9f: $aa
    adc b                                         ; $7fa0: $88
    ld [hl], a                                    ; $7fa1: $77
    ld b, h                                       ; $7fa2: $44
    cp e                                          ; $7fa3: $bb
    nop                                           ; $7fa4: $00
    rst $38                                       ; $7fa5: $ff
    xor d                                         ; $7fa6: $aa
    ld [hl], a                                    ; $7fa7: $77
    ld d, l                                       ; $7fa8: $55
    rst $38                                       ; $7fa9: $ff
    xor d                                         ; $7faa: $aa
    rst $38                                       ; $7fab: $ff
    db $dd                                        ; $7fac: $dd
    rst $38                                       ; $7fad: $ff
    rst $38                                       ; $7fae: $ff
    rst $38                                       ; $7faf: $ff
    rst $38                                       ; $7fb0: $ff
    rst $38                                       ; $7fb1: $ff
    cp e                                          ; $7fb2: $bb
    rst $38                                       ; $7fb3: $ff
    ld d, l                                       ; $7fb4: $55
    rst $38                                       ; $7fb5: $ff
    xor d                                         ; $7fb6: $aa
    rst $38                                       ; $7fb7: $ff
    ld d, l                                       ; $7fb8: $55
    xor $00                                       ; $7fb9: $ee $00
    rst $38                                       ; $7fbb: $ff
    ld [hl+], a                                   ; $7fbc: $22
    db $dd                                        ; $7fbd: $dd
    ld de, $aaee                                  ; $7fbe: $11 $ee $aa

jr_072_7fc1:
    ld d, l                                       ; $7fc1: $55
    ld d, l                                       ; $7fc2: $55
    xor d                                         ; $7fc3: $aa
    cp e                                          ; $7fc4: $bb
    ld b, h                                       ; $7fc5: $44
    sbc c                                         ; $7fc6: $99
    ld [hl+], a                                   ; $7fc7: $22
    rst $38                                       ; $7fc8: $ff
    nop                                           ; $7fc9: $00
    ld d, l                                       ; $7fca: $55
    nop                                           ; $7fcb: $00
    xor d                                         ; $7fcc: $aa
    nop                                           ; $7fcd: $00
    nop                                           ; $7fce: $00
    nop                                           ; $7fcf: $00
    dec h                                         ; $7fd0: $25
    nop                                           ; $7fd1: $00
    nop                                           ; $7fd2: $00
    nop                                           ; $7fd3: $00
    nop                                           ; $7fd4: $00
    ld bc, $0200                                  ; $7fd5: $01 $00 $02
    nop                                           ; $7fd8: $00
    inc bc                                        ; $7fd9: $03
    nop                                           ; $7fda: $00
    nop                                           ; $7fdb: $00
    dec c                                         ; $7fdc: $0d
    nop                                           ; $7fdd: $00
    nop                                           ; $7fde: $00
    nop                                           ; $7fdf: $00
    inc b                                         ; $7fe0: $04
    nop                                           ; $7fe1: $00
    dec b                                         ; $7fe2: $05
    nop                                           ; $7fe3: $00
    db $10                                        ; $7fe4: $10
    ld b, $00                                     ; $7fe5: $06 $00
    ld c, $0a                                     ; $7fe7: $0e $0a
    nop                                           ; $7fe9: $00
    rlca                                          ; $7fea: $07
    nop                                           ; $7feb: $00
    ld [$1000], sp                                ; $7fec: $08 $00 $10
    add hl, bc                                    ; $7fef: $09
    nop                                           ; $7ff0: $00
    rrca                                          ; $7ff1: $0f
    inc d                                         ; $7ff2: $14
    nop                                           ; $7ff3: $00
    ld a, [bc]                                    ; $7ff4: $0a
    nop                                           ; $7ff5: $00
    dec bc                                        ; $7ff6: $0b
    nop                                           ; $7ff7: $00
    jr @+$0e                                      ; $7ff8: $18 $0c

    nop                                           ; $7ffa: $00
    db $10                                        ; $7ffb: $10
    ld e, $00                                     ; $7ffc: $1e $00
    inc bc                                        ; $7ffe: $03
    db $28                                        ; $7fff: $28
