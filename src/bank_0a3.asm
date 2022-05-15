; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0a3", ROMX[$4000], BANK[$a3]

Call_0a3_4000:
    and e                                         ; $4000: $a3
    db $10                                        ; $4001: $10
    db $18, $d0                                   ; $4002: $18 $d0
    rrca                                          ; $4004: $0f
    ld b, b                                       ; $4005: $40
    rst $38                                       ; $4006: $ff
    ld bc, $ae60                                  ; $4007: $01 $60 $ae
    ret nc                                        ; $400a: $d0

    sbc l                                         ; $400b: $9d
    ldh [$6e], a                                  ; $400c: $e0 $6e
    ret nc                                        ; $400e: $d0

    ld [bc], a                                    ; $400f: $02
    or b                                          ; $4010: $b0
    rst $38                                       ; $4011: $ff
    and b                                         ; $4012: $a0
    ret nz                                        ; $4013: $c0

    sbc l                                         ; $4014: $9d
    ldh [$0c], a                                  ; $4015: $e0 $0c
    ld [$0032], sp                                ; $4017: $08 $32 $00
    rrca                                          ; $401a: $0f
    ld l, l                                       ; $401b: $6d
    rra                                           ; $401c: $1f
    rrca                                          ; $401d: $0f
    ld [hl], e                                    ; $401e: $73
    adc c                                         ; $401f: $89

jr_0a3_4020:
    rlca                                          ; $4020: $07
    inc sp                                        ; $4021: $33
    db $10                                        ; $4022: $10
    rrca                                          ; $4023: $0f
    ld l, c                                       ; $4024: $69
    rla                                           ; $4025: $17
    inc b                                         ; $4026: $04
    ld [$ee11], sp                                ; $4027: $08 $11 $ee
    xor d                                         ; $402a: $aa
    ld d, l                                       ; $402b: $55
    daa                                           ; $402c: $27
    ld d, l                                       ; $402d: $55
    xor d                                         ; $402e: $aa
    inc b                                         ; $402f: $04
    jr z, jr_0a3_4020                             ; $4030: $28 $ee

    ld de, $0830                                  ; $4032: $11 $30 $08
    inc b                                         ; $4035: $04
    ld c, b                                       ; $4036: $48
    jr z, jr_0a3_4061                             ; $4037: $28 $28

    add b                                         ; $4039: $80
    jr nc, jr_0a3_4064                            ; $403a: $30 $28

    ld d, l                                       ; $403c: $55
    xor d                                         ; $403d: $aa
    cp e                                          ; $403e: $bb
    ld b, h                                       ; $403f: $44
    ld d, l                                       ; $4040: $55
    xor d                                         ; $4041: $aa
    rst $38                                       ; $4042: $ff
    ld c, b                                       ; $4043: $48
    nop                                           ; $4044: $00
    inc b                                         ; $4045: $04
    ld [$2ad5], sp                                ; $4046: $08 $d5 $2a
    ld [$dd18], sp                                ; $4049: $08 $18 $dd
    ld [hl+], a                                   ; $404c: $22

jr_0a3_404d:
    rst $38                                       ; $404d: $ff
    ld b, $00                                     ; $404e: $06 $00
    ld [hl], a                                    ; $4050: $77
    adc b                                         ; $4051: $88
    rst $38                                       ; $4052: $ff
    nop                                           ; $4053: $00
    ld [bc], a                                    ; $4054: $02
    ld [$7001], sp                                ; $4055: $08 $01 $70
    rst $38                                       ; $4058: $ff
    ld [bc], a                                    ; $4059: $02
    ld [hl+], a                                   ; $405a: $22
    db $dd                                        ; $405b: $dd
    nop                                           ; $405c: $00
    rst $38                                       ; $405d: $ff
    xor d                                         ; $405e: $aa
    ld d, l                                       ; $405f: $55
    inc b                                         ; $4060: $04

jr_0a3_4061:
    ld [$6044], sp                                ; $4061: $08 $44 $60

jr_0a3_4064:
    cp e                                          ; $4064: $bb
    ld [$2708], sp                                ; $4065: $08 $08 $27
    ld [$f708], sp                                ; $4068: $08 $08 $f7

jr_0a3_406b:
    nop                                           ; $406b: $00
    rst $38                                       ; $406c: $ff
    jr nz, jr_0a3_406f                            ; $406d: $20 $00

jr_0a3_406f:
    rst $18                                       ; $406f: $df
    nop                                           ; $4070: $00
    rst $38                                       ; $4071: $ff
    xor b                                         ; $4072: $a8
    ld d, a                                       ; $4073: $57
    set 6, h                                      ; $4074: $cb $f4
    and l                                         ; $4076: $a5
    ld b, b                                       ; $4077: $40
    ld a, [$4804]                                 ; $4078: $fa $04 $48
    ld c, e                                       ; $407b: $4b
    db $f4                                        ; $407c: $f4
    or l                                          ; $407d: $b5
    ld a, [$cef1]                                 ; $407e: $fa $f1 $ce
    ld hl, $e091                                  ; $4081: $21 $91 $e0
    jr jr_0a3_40ae                                ; $4084: $18 $28

    ldh [rP1], a                                  ; $4086: $e0 $00
    ld d, c                                       ; $4088: $51
    add b                                         ; $4089: $80
    inc b                                         ; $408a: $04
    ld c, b                                       ; $408b: $48
    ld [hl], b                                    ; $408c: $70
    or e                                          ; $408d: $b3
    cp b                                          ; $408e: $b8
    nop                                           ; $408f: $00
    inc b                                         ; $4090: $04
    ld c, b                                       ; $4091: $48
    ldh a, [rNR23]                                ; $4092: $f0 $18
    ldh [$e0], a                                  ; $4094: $e0 $e0
    rst $08                                       ; $4096: $cf
    rst $08                                       ; $4097: $cf
    nop                                           ; $4098: $00
    sbc d                                         ; $4099: $9a
    sbc a                                         ; $409a: $9f
    sub l                                         ; $409b: $95
    sbc a                                         ; $409c: $9f
    jp z, $ffcf                                   ; $409d: $ca $cf $ff

    rst $38                                       ; $40a0: $ff
    nop                                           ; $40a1: $00
    cp $fe                                        ; $40a2: $fe $fe
    db $fc                                        ; $40a4: $fc
    db $fc                                        ; $40a5: $fc
    add hl, sp                                    ; $40a6: $39
    add hl, sp                                    ; $40a7: $39
    sbc c                                         ; $40a8: $99
    sbc c                                         ; $40a9: $99
    inc bc                                        ; $40aa: $03
    call z, Call_0a3_4dcc                         ; $40ab: $cc $cc $4d

jr_0a3_40ae:
    call $9d9c                                    ; $40ae: $cd $9c $9d
    ld b, b                                       ; $40b1: $40
    jr jr_0a3_404d                                ; $40b2: $18 $99

    ld [$48b0], sp                                ; $40b4: $08 $b0 $48
    jr jr_0a3_406b                                ; $40b7: $18 $b2

    nop                                           ; $40b9: $00
    ld hl, $2848                                  ; $40ba: $21 $48 $28
    ret nc                                        ; $40bd: $d0

    ret nc                                        ; $40be: $d0

    jp nz, Jump_000_20d7                          ; $40bf: $c2 $d7 $20

    push de                                       ; $40c2: $d5
    rst $10                                       ; $40c3: $d7
    inc b                                         ; $40c4: $04
    ld [$efea], sp                                ; $40c5: $08 $ea $ef
    ldh a, [$f0]                                  ; $40c8: $f0 $f0
    rst $38                                       ; $40ca: $ff
    nop                                           ; $40cb: $00
    rst $38                                       ; $40cc: $ff
    ld e, l                                       ; $40cd: $5d
    ld e, l                                       ; $40ce: $5d
    sbc h                                         ; $40cf: $9c
    db $dd                                        ; $40d0: $dd
    ld e, l                                       ; $40d1: $5d
    db $dd                                        ; $40d2: $dd
    sbc [hl]                                      ; $40d3: $9e
    ld bc, $5fde                                  ; $40d4: $01 $de $5f
    rst $18                                       ; $40d7: $df
    cp a                                          ; $40d8: $bf
    cp a                                          ; $40d9: $bf
    ld a, a                                       ; $40da: $7f
    ld a, a                                       ; $40db: $7f
    ld c, [hl]                                    ; $40dc: $4e
    add hl, bc                                    ; $40dd: $09
    ld b, c                                       ; $40de: $41
    xor d                                         ; $40df: $aa
    inc b                                         ; $40e0: $04
    db $10                                        ; $40e1: $10
    push de                                       ; $40e2: $d5
    rst $38                                       ; $40e3: $ff
    sub l                                         ; $40e4: $95
    ld [$0c80], a                                 ; $40e5: $ea $80 $0c
    jr nz, @-$7e                                  ; $40e8: $20 $80

    inc d                                         ; $40ea: $14
    ld [$ff55], sp                                ; $40eb: $08 $55 $ff
    rst $38                                       ; $40ee: $ff
    nop                                           ; $40ef: $00
    xor a                                         ; $40f0: $af
    ld d, b                                       ; $40f1: $50
    xor d                                         ; $40f2: $aa
    jr nz, @+$01                                  ; $40f3: $20 $ff

    rst $18                                       ; $40f5: $df
    jr z, jr_0a3_40f8                             ; $40f6: $28 $00

jr_0a3_40f8:
    xor a                                         ; $40f8: $af
    xor a                                         ; $40f9: $af
    or b                                          ; $40fa: $b0
    or b                                          ; $40fb: $b0
    rst $08                                       ; $40fc: $cf
    nop                                           ; $40fd: $00
    rst $08                                       ; $40fe: $cf

Jump_0a3_40ff:
    ret nc                                        ; $40ff: $d0

    ret nc                                        ; $4100: $d0

    and a                                         ; $4101: $a7
    and a                                         ; $4102: $a7
    ld b, b                                       ; $4103: $40
    ld a, a                                       ; $4104: $7f
    nop                                           ; $4105: $00
    nop                                           ; $4106: $00
    nop                                           ; $4107: $00
    rrca                                          ; $4108: $0f
    rrca                                          ; $4109: $0f
    jr c, jr_0a3_414b                             ; $410a: $38 $3f

    ld h, a                                       ; $410c: $67
    ld a, a                                       ; $410d: $7f
    rst $18                                       ; $410e: $df
    jr @+$01                                      ; $410f: $18 $ff

    cp a                                          ; $4111: $bf
    rst $38                                       ; $4112: $ff
    ccf                                           ; $4113: $3f
    db $10                                        ; $4114: $10
    sub c                                         ; $4115: $91
    add hl, hl                                    ; $4116: $29
    ld a, a                                       ; $4117: $7f
    ld a, a                                       ; $4118: $7f
    cp a                                          ; $4119: $bf
    ld bc, $dfbf                                  ; $411a: $01 $bf $df
    set 6, a                                      ; $411d: $cb $f7
    ld [c], a                                     ; $411f: $e2
    db $fd                                        ; $4120: $fd
    ld hl, sp-$5d                                 ; $4121: $f8 $a3
    ld d, c                                       ; $4123: $51
    inc b                                         ; $4124: $04
    nop                                           ; $4125: $00
    rst $38                                       ; $4126: $ff
    ld e, a                                       ; $4127: $5f
    and b                                         ; $4128: $a0
    add b                                         ; $4129: $80
    or l                                          ; $412a: $b5
    ld de, $fffe                                  ; $412b: $11 $fe $ff
    ld [hl], b                                    ; $412e: $70
    db $fd                                        ; $412f: $fd
    inc b                                         ; $4130: $04
    nop                                           ; $4131: $00
    ld [$2008], sp                                ; $4132: $08 $08 $20
    ld d, b                                       ; $4135: $50
    nop                                           ; $4136: $00
    ldh a, [$f0]                                  ; $4137: $f0 $f0
    xor h                                         ; $4139: $ac
    nop                                           ; $413a: $00
    db $fc                                        ; $413b: $fc
    ld a, [c]                                     ; $413c: $f2
    cp $f9                                        ; $413d: $fe $f9
    rst $38                                       ; $413f: $ff
    cp $fd                                        ; $4140: $fe $fd
    db $fd                                        ; $4142: $fd

jr_0a3_4143:
    jr nz, jr_0a3_4143                            ; $4143: $20 $fe

    cp $61                                        ; $4145: $fe $61
    ld b, c                                       ; $4147: $41
    add b                                         ; $4148: $80
    add b                                         ; $4149: $80
    ld b, b                                       ; $414a: $40

jr_0a3_414b:
    ret nz                                        ; $414b: $c0

    ret nz                                        ; $414c: $c0

    ld h, b                                       ; $414d: $60
    ld b, b                                       ; $414e: $40
    ldh a, [rNR24]                                ; $414f: $f0 $19
    jr c, jr_0a3_4153                             ; $4151: $38 $00

jr_0a3_4153:
    cp $ff                                        ; $4153: $fe $ff
    db $fc                                        ; $4155: $fc
    or $f9                                        ; $4156: $f6 $f9
    nop                                           ; $4158: $00
    db $dd                                        ; $4159: $dd
    db $e3                                        ; $415a: $e3
    and b                                         ; $415b: $a0
    ld h, b                                       ; $415c: $60
    ldh [rNR41], a                                ; $415d: $e0 $20
    ldh [rNR41], a                                ; $415f: $e0 $20
    nop                                           ; $4161: $00
    and b                                         ; $4162: $a0
    ld h, b                                       ; $4163: $60
    and b                                         ; $4164: $a0
    ld h, b                                       ; $4165: $60
    ld h, b                                       ; $4166: $60
    ldh [$f0], a                                  ; $4167: $e0 $f0
    ldh a, [rNR41]                                ; $4169: $f0 $20
    ld hl, sp-$08                                 ; $416b: $f8 $f8
    sub c                                         ; $416d: $91
    add hl, hl                                    ; $416e: $29
    inc b                                         ; $416f: $04
    inc b                                         ; $4170: $04
    ld bc, $0201                                  ; $4171: $01 $01 $02
    nop                                           ; $4174: $00
    ld [bc], a                                    ; $4175: $02
    nop                                           ; $4176: $00
    nop                                           ; $4177: $00
    ld [hl], e                                    ; $4178: $73
    adc a                                         ; $4179: $8f
    adc [hl]                                      ; $417a: $8e
    ld a, a                                       ; $417b: $7f
    db $fd                                        ; $417c: $fd
    nop                                           ; $417d: $00
    cp $f2                                        ; $417e: $fe $f2
    db $fd                                        ; $4180: $fd
    dec d                                         ; $4181: $15
    ld [$50af], a                                 ; $4182: $ea $af $50
    ld a, a                                       ; $4185: $7f
    nop                                           ; $4186: $00
    add b                                         ; $4187: $80
    xor d                                         ; $4188: $aa
    push de                                       ; $4189: $d5
    ld a, b                                       ; $418a: $78
    ld hl, sp-$44                                 ; $418b: $f8 $bc
    ld a, h                                       ; $418d: $7c
    ld e, h                                       ; $418e: $5c
    nop                                           ; $418f: $00
    cp h                                          ; $4190: $bc
    sbc $3e                                       ; $4191: $de $3e
    cp $3e                                        ; $4193: $fe $3e
    xor [hl]                                      ; $4195: $ae
    ld a, [hl]                                    ; $4196: $7e
    ld e, [hl]                                    ; $4197: $5e
    nop                                           ; $4198: $00
    cp $2e                                        ; $4199: $fe $2e
    cp $01                                        ; $419b: $fe $01
    ld bc, $0808                                  ; $419d: $01 $08 $08
    ld bc, $0100                                  ; $41a0: $01 $00 $01
    ld b, b                                       ; $41a3: $40
    ld b, b                                       ; $41a4: $40
    dec b                                         ; $41a5: $05
    dec b                                         ; $41a6: $05
    ld [$4108], sp                                ; $41a7: $08 $08 $41
    db $10                                        ; $41aa: $10
    ld b, c                                       ; $41ab: $41
    ld [bc], a                                    ; $41ac: $02
    ld [bc], a                                    ; $41ad: $02
    sbc b                                         ; $41ae: $98
    ld c, c                                       ; $41af: $49
    sbc $ff                                       ; $41b0: $de $ff
    xor c                                         ; $41b2: $a9
    rst $38                                       ; $41b3: $ff
    nop                                           ; $41b4: $00
    ld b, b                                       ; $41b5: $40
    rst $38                                       ; $41b6: $ff
    xor e                                         ; $41b7: $ab
    db $fc                                        ; $41b8: $fc
    ld d, l                                       ; $41b9: $55
    ld a, [$fdf2]                                 ; $41ba: $fa $f2 $fd
    nop                                           ; $41bd: $00

Jump_0a3_41be:
    db $fd                                        ; $41be: $fd

Jump_0a3_41bf:
    ld a, [$ffe8]                                 ; $41bf: $fa $e8 $ff
    push af                                       ; $41c2: $f5
    rst $38                                       ; $41c3: $ff
    ld a, [$02ff]                                 ; $41c4: $fa $ff $02
    ld e, $fe                                     ; $41c7: $1e $fe
    cp [hl]                                       ; $41c9: $be
    ld a, [hl]                                    ; $41ca: $7e
    ld e, h                                       ; $41cb: $5c
    cp h                                          ; $41cc: $bc
    ld b, h                                       ; $41cd: $44
    nop                                           ; $41ce: $00
    db $fc                                        ; $41cf: $fc
    nop                                           ; $41d0: $00
    cp b                                          ; $41d1: $b8
    ld hl, sp+$78                                 ; $41d2: $f8 $78
    ld hl, sp-$10                                 ; $41d4: $f8 $f0
    ldh a, [$08]                                  ; $41d6: $f0 $08
    ld [$6680], sp                                ; $41d8: $08 $80 $66
    ld [$0000], sp                                ; $41db: $08 $00 $00
    ld [$0008], sp                                ; $41de: $08 $08 $00
    nop                                           ; $41e1: $00
    ld [bc], a                                    ; $41e2: $02
    ld c, b                                       ; $41e3: $48
    ld [bc], a                                    ; $41e4: $02
    ld c, h                                       ; $41e5: $4c
    ld [$8080], sp                                ; $41e6: $08 $80 $80
    db $10                                        ; $41e9: $10
    jr jr_0a3_423e                                ; $41ea: $18 $52

    ld d, d                                       ; $41ec: $52
    dec b                                         ; $41ed: $05
    nop                                           ; $41ee: $00
    dec b                                         ; $41ef: $05
    dec bc                                        ; $41f0: $0b
    dec bc                                        ; $41f1: $0b
    ld a, [bc]                                    ; $41f2: $0a
    ld h, l                                       ; $41f3: $65
    dec b                                         ; $41f4: $05
    ld c, d                                       ; $41f5: $4a
    nop                                           ; $41f6: $00
    ld b, c                                       ; $41f7: $41
    ld c, a                                       ; $41f8: $4f
    ld [bc], a                                    ; $41f9: $02
    nop                                           ; $41fa: $00
    ld l, a                                       ; $41fb: $6f
    add b                                         ; $41fc: $80
    cp a                                          ; $41fd: $bf
    ret nz                                        ; $41fe: $c0

    rst $08                                       ; $41ff: $cf
    ld [hl], d                                    ; $4200: $72
    add hl, bc                                    ; $4201: $09
    db $eb                                        ; $4202: $eb
    ld h, b                                       ; $4203: $60
    ld d, c                                       ; $4204: $51
    ld l, l                                       ; $4205: $6d
    ld bc, $5160                                  ; $4206: $01 $60 $51
    xor d                                         ; $4209: $aa
    nop                                           ; $420a: $00
    ld c, d                                       ; $420b: $4a
    ld h, b                                       ; $420c: $60
    add hl, hl                                    ; $420d: $29
    ld bc, $2a00                                  ; $420e: $01 $00 $2a
    adc b                                         ; $4211: $88
    ret z                                         ; $4212: $c8

    add hl, bc                                    ; $4213: $09
    ei                                            ; $4214: $fb
    ld a, a                                       ; $4215: $7f
    sub l                                         ; $4216: $95
    ld [hl], c                                    ; $4217: $71
    ld [bc], a                                    ; $4218: $02
    ld [bc], a                                    ; $4219: $02
    ld [bc], a                                    ; $421a: $02
    jr nz, jr_0a3_421d                            ; $421b: $20 $00

jr_0a3_421d:
    jr nz, jr_0a3_4223                            ; $421d: $20 $04

    inc b                                         ; $421f: $04
    add hl, bc                                    ; $4220: $09
    add hl, bc                                    ; $4221: $09
    ld d, e                                       ; $4222: $53

jr_0a3_4223:
    ld d, e                                       ; $4223: $53
    xor a                                         ; $4224: $af
    db $10                                        ; $4225: $10
    xor a                                         ; $4226: $af
    ld [hl], l                                    ; $4227: $75
    ld a, a                                       ; $4228: $7f
    ld [hl], h                                    ; $4229: $74
    ld [$1212], sp                                ; $422a: $08 $12 $12
    and l                                         ; $422d: $a5
    and l                                         ; $422e: $a5
    nop                                           ; $422f: $00
    ld e, a                                       ; $4230: $5f
    ld e, a                                       ; $4231: $5f
    ld [$d0ff], a                                 ; $4232: $ea $ff $d0
    rst $38                                       ; $4235: $ff
    xor c                                         ; $4236: $a9
    cp $80                                        ; $4237: $fe $80
    sub c                                         ; $4239: $91
    ld a, [bc]                                    ; $423a: $0a
    dec h                                         ; $423b: $25
    dec h                                         ; $423c: $25
    dec bc                                        ; $423d: $0b

jr_0a3_423e:
    dec bc                                        ; $423e: $0b
    ld d, [hl]                                    ; $423f: $56
    ld d, a                                       ; $4240: $57
    cp b                                          ; $4241: $b8
    nop                                           ; $4242: $00
    cp a                                          ; $4243: $bf
    ld h, l                                       ; $4244: $65
    ld a, d                                       ; $4245: $7a
    rst $08                                       ; $4246: $cf
    ldh a, [rNR22]                                ; $4247: $f0 $17
    rla                                           ; $4249: $17
    xor l                                         ; $424a: $ad
    nop                                           ; $424b: $00
    xor a                                         ; $424c: $af
    ld [hl], l                                    ; $424d: $75
    ld a, [hl]                                    ; $424e: $7e
    and l                                         ; $424f: $a5
    ld a, [$f40b]                                 ; $4250: $fa $0b $f4
    and a                                         ; $4253: $a7
    ld b, b                                       ; $4254: $40
    ld e, b                                       ; $4255: $58
    or d                                          ; $4256: $b2
    ld a, [bc]                                    ; $4257: $0a
    and d                                         ; $4258: $a2
    rst $38                                       ; $4259: $ff
    db $10                                        ; $425a: $10
    rst $28                                       ; $425b: $ef
    ld l, d                                       ; $425c: $6a
    sub l                                         ; $425d: $95
    nop                                           ; $425e: $00
    cp h                                          ; $425f: $bc
    ld b, e                                       ; $4260: $43
    or h                                          ; $4261: $b4
    inc bc                                        ; $4262: $03
    ld c, [hl]                                    ; $4263: $4e
    ld bc, $0087                                  ; $4264: $01 $87 $00
    nop                                           ; $4267: $00
    ld l, $01                                     ; $4268: $2e $01
    add $f9                                       ; $426a: $c6 $f9
    sbc e                                         ; $426c: $9b
    db $f4                                        ; $426d: $f4
    ld b, [hl]                                    ; $426e: $46
    ld hl, sp+$00                                 ; $426f: $f8 $00
    db $eb                                        ; $4271: $eb
    db $f4                                        ; $4272: $f4
    ld b, a                                       ; $4273: $47
    ld hl, sp+$23                                 ; $4274: $f8 $23
    db $fc                                        ; $4276: $fc
    ld [hl], l                                    ; $4277: $75
    ld a, [$2221]                                 ; $4278: $fa $21 $22
    db $fd                                        ; $427b: $fd
    ld d, b                                       ; $427c: $50
    dec sp                                        ; $427d: $3b
    cp a                                          ; $427e: $bf
    cp a                                          ; $427f: $bf
    ld e, a                                       ; $4280: $5f
    ld e, a                                       ; $4281: $5f
    and b                                         ; $4282: $a0
    ld [$6280], sp                                ; $4283: $08 $80 $62
    ld c, e                                       ; $4286: $4b
    cp $fe                                        ; $4287: $fe $fe
    ld d, l                                       ; $4289: $55
    ld d, l                                       ; $428a: $55
    ld a, [hl+]                                   ; $428b: $2a
    ld a, [hl+]                                   ; $428c: $2a
    dec d                                         ; $428d: $15
    ld a, h                                       ; $428e: $7c
    dec d                                         ; $428f: $15

jr_0a3_4290:
    db $f4                                        ; $4290: $f4
    jr jr_0a3_4290                                ; $4291: $18 $fd

    ld a, [bc]                                    ; $4293: $0a
    ld c, l                                       ; $4294: $4d
    dec hl                                        ; $4295: $2b
    add hl, bc                                    ; $4296: $09
    ld l, e                                       ; $4297: $6b
    ld b, $09                                     ; $4298: $06 $09
    and c                                         ; $429a: $a1
    and c                                         ; $429b: $a1
    jr nc, jr_0a3_42de                            ; $429c: $30 $40

    ld b, b                                       ; $429e: $40
    sub b                                         ; $429f: $90
    add hl, sp                                    ; $42a0: $39
    dec hl                                        ; $42a1: $2b
    dec bc                                        ; $42a2: $0b
    ld [de], a                                    ; $42a3: $12
    ld [de], a                                    ; $42a4: $12
    and h                                         ; $42a5: $a4
    and h                                         ; $42a6: $a4
    jr nz, jr_0a3_42f1                            ; $42a7: $20 $48

    ld c, b                                       ; $42a9: $48
    ld [hl+], a                                   ; $42aa: $22
    add hl, de                                    ; $42ab: $19
    ld [bc], a                                    ; $42ac: $02
    ld [bc], a                                    ; $42ad: $02
    inc d                                         ; $42ae: $14
    inc d                                         ; $42af: $14
    jr nz, jr_0a3_42b2                            ; $42b0: $20 $00

jr_0a3_42b2:
    jr nz, jr_0a3_42b9                            ; $42b2: $20 $05

    dec b                                         ; $42b4: $05
    dec hl                                        ; $42b5: $2b
    dec hl                                        ; $42b6: $2b
    ld d, [hl]                                    ; $42b7: $56
    ld d, a                                       ; $42b8: $57

jr_0a3_42b9:
    dec c                                         ; $42b9: $0d
    nop                                           ; $42ba: $00
    rrca                                          ; $42bb: $0f
    ld a, [bc]                                    ; $42bc: $0a
    rrca                                          ; $42bd: $0f
    ld d, l                                       ; $42be: $55
    ld e, [hl]                                    ; $42bf: $5e
    and e                                         ; $42c0: $a3
    cp h                                          ; $42c1: $bc
    ld d, a                                       ; $42c2: $57
    ld b, b                                       ; $42c3: $40
    ld a, b                                       ; $42c4: $78
    ld l, h                                       ; $42c5: $6c
    ld c, b                                       ; $42c6: $48
    push af                                       ; $42c7: $f5
    push af                                       ; $42c8: $f5
    xor d                                         ; $42c9: $aa
    xor d                                         ; $42ca: $aa
    ldh a, [$f0]                                  ; $42cb: $f0 $f0
    dec bc                                        ; $42cd: $0b
    ldh [$e0], a                                  ; $42ce: $e0 $e0
    ret nz                                        ; $42d0: $c0

    ret nz                                        ; $42d1: $c0

    db $fc                                        ; $42d2: $fc
    ld bc, $0440                                  ; $42d3: $01 $40 $04
    jr jr_0a3_42b2                                ; $42d6: $18 $da

    add hl, bc                                    ; $42d8: $09
    nop                                           ; $42d9: $00
    ld de, $4a11                                  ; $42da: $11 $11 $4a
    ld c, d                                       ; $42dd: $4a

jr_0a3_42de:
    inc de                                        ; $42de: $13
    inc de                                        ; $42df: $13
    ld h, $27                                     ; $42e0: $26 $27
    nop                                           ; $42e2: $00
    ld e, h                                       ; $42e3: $5c
    ld e, a                                       ; $42e4: $5f
    ld a, [hl-]                                   ; $42e5: $3a
    dec a                                         ; $42e6: $3d
    ld b, $07                                     ; $42e7: $06 $07
    sbc c                                         ; $42e9: $99
    sbc a                                         ; $42ea: $9f
    nop                                           ; $42eb: $00
    inc [hl]                                      ; $42ec: $34
    dec sp                                        ; $42ed: $3b
    set 6, h                                      ; $42ee: $cb $f4
    dec d                                         ; $42f0: $15

jr_0a3_42f1:
    ld [$d42b], a                                 ; $42f1: $ea $2b $d4
    inc sp                                        ; $42f4: $33
    ld d, a                                       ; $42f5: $57
    xor b                                         ; $42f6: $a8
    xor b                                         ; $42f7: $a8
    inc bc                                        ; $42f8: $03
    db $dd                                        ; $42f9: $dd
    inc bc                                        ; $42fa: $03
    ld d, b                                       ; $42fb: $50
    ld d, b                                       ; $42fc: $50
    add h                                         ; $42fd: $84
    add hl, de                                    ; $42fe: $19
    sbc l                                         ; $42ff: $9d
    dec bc                                        ; $4300: $0b
    nop                                           ; $4301: $00
    ld a, [bc]                                    ; $4302: $0a
    ld a, [bc]                                    ; $4303: $0a
    dec b                                         ; $4304: $05
    dec b                                         ; $4305: $05
    inc bc                                        ; $4306: $03
    inc bc                                        ; $4307: $03
    inc h                                         ; $4308: $24
    daa                                           ; $4309: $27
    nop                                           ; $430a: $00
    ld e, d                                       ; $430b: $5a
    ld e, a                                       ; $430c: $5f
    or h                                          ; $430d: $b4
    cp a                                          ; $430e: $bf
    ld h, d                                       ; $430f: $62
    ld a, l                                       ; $4310: $7d
    push bc                                       ; $4311: $c5
    ld a, [$d500]                                 ; $4312: $fa $00 $d5
    ld a, [$fca3]                                 ; $4315: $fa $a3 $fc
    ld d, [hl]                                    ; $4318: $56
    ld hl, sp-$71                                 ; $4319: $f8 $8f
    ldh a, [rP1]                                  ; $431b: $f0 $00
    ld h, $d8                                     ; $431d: $26 $d8
    ld d, e                                       ; $431f: $53
    xor b                                         ; $4320: $a8
    cp [hl]                                       ; $4321: $be
    ld b, b                                       ; $4322: $40

jr_0a3_4323:
    ei                                            ; $4323: $fb
    inc b                                         ; $4324: $04
    ld b, b                                       ; $4325: $40
    halt                                          ; $4326: $76
    ld l, [hl]                                    ; $4327: $6e
    inc bc                                        ; $4328: $03
    ret nz                                        ; $4329: $c0

    nop                                           ; $432a: $00
    ld b, l                                       ; $432b: $45
    nop                                           ; $432c: $00
    adc [hl]                                      ; $432d: $8e
    nop                                           ; $432e: $00
    nop                                           ; $432f: $00
    rla                                           ; $4330: $17

jr_0a3_4331:
    nop                                           ; $4331: $00
    dec c                                         ; $4332: $0d
    ld [bc], a                                    ; $4333: $02
    rla                                           ; $4334: $17
    nop                                           ; $4335: $00
    add hl, hl                                    ; $4336: $29
    add hl, hl                                    ; $4337: $29
    nop                                           ; $4338: $00
    ld b, d                                       ; $4339: $42
    ld b, e                                       ; $433a: $43
    dec d                                         ; $433b: $15
    rla                                           ; $433c: $17
    ld l, $2f                                     ; $433d: $2e $2f
    ld e, a                                       ; $433f: $5f
    ld e, a                                       ; $4340: $5f
    nop                                           ; $4341: $00
    cp [hl]                                       ; $4342: $be
    cp a                                          ; $4343: $bf
    ld l, e                                       ; $4344: $6b
    ld a, a                                       ; $4345: $7f
    add l                                         ; $4346: $85
    rst $38                                       ; $4347: $ff
    dec bc                                        ; $4348: $0b
    db $f4                                        ; $4349: $f4
    nop                                           ; $434a: $00
    xor l                                         ; $434b: $ad
    ret nc                                        ; $434c: $d0

    ld e, [hl]                                    ; $434d: $5e
    and b                                         ; $434e: $a0
    jr jr_0a3_4331                                ; $434f: $18 $e0

    jr z, jr_0a3_4323                             ; $4351: $28 $d0

    nop                                           ; $4353: $00
    or h                                          ; $4354: $b4
    ret nz                                        ; $4355: $c0

    ld a, [de]                                    ; $4356: $1a
    ldh [$95], a                                  ; $4357: $e0 $95
    ldh [$af], a                                  ; $4359: $e0 $af
    nop                                           ; $435b: $00
    nop                                           ; $435c: $00
    dec b                                         ; $435d: $05
    nop                                           ; $435e: $00
    inc bc                                        ; $435f: $03
    nop                                           ; $4360: $00
    dec d                                         ; $4361: $15
    nop                                           ; $4362: $00
    dec hl                                        ; $4363: $2b
    nop                                           ; $4364: $00
    nop                                           ; $4365: $00
    ld a, a                                       ; $4366: $7f
    nop                                           ; $4367: $00
    cp h                                          ; $4368: $bc
    inc bc                                        ; $4369: $03
    ld l, b                                       ; $436a: $68
    rla                                           ; $436b: $17
    xor [hl]                                      ; $436c: $ae
    ld bc, $d900                                  ; $436d: $01 $00 $d9
    daa                                           ; $4370: $27
    ld [hl], d                                    ; $4371: $72
    rrca                                          ; $4372: $0f
    pop de                                        ; $4373: $d1
    cpl                                           ; $4374: $2f
    and a                                         ; $4375: $a7
    ld e, a                                       ; $4376: $5f
    nop                                           ; $4377: $00
    ld a, [bc]                                    ; $4378: $0a
    rst $38                                       ; $4379: $ff
    inc [hl]                                      ; $437a: $34
    rst $38                                       ; $437b: $ff
    ld l, b                                       ; $437c: $68
    rst $30                                       ; $437d: $f7
    ld [de], a                                    ; $437e: $12
    rst $28                                       ; $437f: $ef
    nop                                           ; $4380: $00
    add hl, hl                                    ; $4381: $29
    rst $10                                       ; $4382: $d7
    ld d, h                                       ; $4383: $54
    xor e                                         ; $4384: $ab
    ld a, [hl]                                    ; $4385: $7e
    add c                                         ; $4386: $81
    rst $10                                       ; $4387: $d7
    nop                                           ; $4388: $00
    db $10                                        ; $4389: $10
    xor e                                         ; $438a: $ab
    nop                                           ; $438b: $00
    ld b, a                                       ; $438c: $47
    ld a, [hl+]                                   ; $438d: $2a
    nop                                           ; $438e: $00
    xor d                                         ; $438f: $aa
    ret nc                                        ; $4390: $d0

    ld d, a                                       ; $4391: $57
    add sp, $00                                   ; $4392: $e8 $00
    inc hl                                        ; $4394: $23
    db $fc                                        ; $4395: $fc
    db $10                                        ; $4396: $10
    rst $38                                       ; $4397: $ff
    adc d                                         ; $4398: $8a
    ld a, a                                       ; $4399: $7f
    ld b, l                                       ; $439a: $45
    cp a                                          ; $439b: $bf
    nop                                           ; $439c: $00
    srl a                                         ; $439d: $cb $3f
    and l                                         ; $439f: $a5
    ld e, a                                       ; $43a0: $5f
    jp nz, $e53f                                  ; $43a1: $c2 $3f $e5

    rra                                           ; $43a4: $1f
    nop                                           ; $43a5: $00
    rrca                                          ; $43a6: $0f
    rst $38                                       ; $43a7: $ff
    ld l, $ff                                     ; $43a8: $2e $ff
    ld e, h                                       ; $43aa: $5c
    rst $38                                       ; $43ab: $ff
    ld l, b                                       ; $43ac: $68
    rst $38                                       ; $43ad: $ff
    nop                                           ; $43ae: $00
    db $d3                                        ; $43af: $d3
    db $fc                                        ; $43b0: $fc
    and l                                         ; $43b1: $a5
    ld a, [$fea1]                                 ; $43b2: $fa $a1 $fe
    ld d, d                                       ; $43b5: $52
    db $ed                                        ; $43b6: $ed
    db $10                                        ; $43b7: $10
    add l                                         ; $43b8: $85
    ld a, [$642f]                                 ; $43b9: $fa $2f $64

Jump_0a3_43bc:
    nop                                           ; $43bc: $00
    or l                                          ; $43bd: $b5
    ld b, b                                       ; $43be: $40
    ld a, [$0000]                                 ; $43bf: $fa $00 $00
    ret nc                                        ; $43c2: $d0

    nop                                           ; $43c3: $00
    or a                                          ; $43c4: $b7
    ret z                                         ; $43c5: $c8

    ld e, l                                       ; $43c6: $5d
    add b                                         ; $43c7: $80
    db $f4                                        ; $43c8: $f4
    nop                                           ; $43c9: $00
    nop                                           ; $43ca: $00
    jp c, $b700                                   ; $43cb: $da $00 $b7

    ld [$005f], sp                                ; $43ce: $08 $5f $00
    cp e                                          ; $43d1: $bb
    inc b                                         ; $43d2: $04
    nop                                           ; $43d3: $00
    ld [hl], h                                    ; $43d4: $74
    dec bc                                        ; $43d5: $0b
    push de                                       ; $43d6: $d5
    nop                                           ; $43d7: $00
    ld a, [bc]                                    ; $43d8: $0a
    nop                                           ; $43d9: $00
    ld d, $01                                     ; $43da: $16 $01
    nop                                           ; $43dc: $00
    xor a                                         ; $43dd: $af
    nop                                           ; $43de: $00
    db $fd                                        ; $43df: $fd
    nop                                           ; $43e0: $00
    cp [hl]                                       ; $43e1: $be
    ld b, c                                       ; $43e2: $41
    ld [hl], h                                    ; $43e3: $74
    adc e                                         ; $43e4: $8b
    nop                                           ; $43e5: $00
    and b                                         ; $43e6: $a0
    ld e, a                                       ; $43e7: $5f
    ld d, a                                       ; $43e8: $57
    nop                                           ; $43e9: $00
    ei                                            ; $43ea: $fb
    inc b                                         ; $43eb: $04
    sbc $01                                       ; $43ec: $de $01
    nop                                           ; $43ee: $00
    cp e                                          ; $43ef: $bb
    ld b, h                                       ; $43f0: $44
    db $f4                                        ; $43f1: $f4
    dec bc                                        ; $43f2: $0b
    xor d                                         ; $43f3: $aa
    ld d, l                                       ; $43f4: $55
    ld bc, $00ff                                  ; $43f5: $01 $ff $00
    inc de                                        ; $43f8: $13
    rst $38                                       ; $43f9: $ff
    ld [hl], c                                    ; $43fa: $71
    cp $3a                                        ; $43fb: $fe $3a
    rst $38                                       ; $43fd: $ff
    sub b                                         ; $43fe: $90
    ld a, a                                       ; $43ff: $7f
    inc d                                         ; $4400: $14
    ld a, [hl-]                                   ; $4401: $3a
    rst $38                                       ; $4402: $ff
    ld e, l                                       ; $4403: $5d
    add b                                         ; $4404: $80
    inc bc                                        ; $4405: $03
    ld a, e                                       ; $4406: $7b
    or [hl]                                       ; $4407: $b6
    inc bc                                        ; $4408: $03
    jp hl                                         ; $4409: $e9


    rla                                           ; $440a: $17
    nop                                           ; $440b: $00
    ld [hl], b                                    ; $440c: $70
    rrca                                          ; $440d: $0f
    db $e4                                        ; $440e: $e4
    rra                                           ; $440f: $1f
    ld [hl], c                                    ; $4410: $71
    rrca                                          ; $4411: $0f
    ld [c], a                                     ; $4412: $e2
    rra                                           ; $4413: $1f
    nop                                           ; $4414: $00
    push bc                                       ; $4415: $c5
    ccf                                           ; $4416: $3f
    xor e                                         ; $4417: $ab
    ld e, a                                       ; $4418: $5f
    ld d, a                                       ; $4419: $57
    cp a                                          ; $441a: $bf
    nop                                           ; $441b: $00
    rst $38                                       ; $441c: $ff
    db $10                                        ; $441d: $10
    dec d                                         ; $441e: $15
    rst $38                                       ; $441f: $ff
    xor a                                         ; $4420: $af
    dec h                                         ; $4421: $25
    dec b                                         ; $4422: $05
    ld sp, hl                                     ; $4423: $f9
    cp $e0                                        ; $4424: $fe $e0
    rst $38                                       ; $4426: $ff
    nop                                           ; $4427: $00
    jp $86fc                                      ; $4428: $c3 $fc $86


    ld hl, sp-$51                                 ; $442b: $f8 $af
    rst $38                                       ; $442d: $ff
    ld a, h                                       ; $442e: $7c
    rst $38                                       ; $442f: $ff
    ld b, b                                       ; $4430: $40
    ld [c], a                                     ; $4431: $e2
    ld c, $03                                     ; $4432: $0e $03
    ld l, a                                       ; $4434: $6f
    sub b                                         ; $4435: $90
    push de                                       ; $4436: $d5
    nop                                           ; $4437: $00
    ld [c], a                                     ; $4438: $e2
    nop                                           ; $4439: $00
    ld b, b                                       ; $443a: $40
    add c                                         ; $443b: $81
    or b                                          ; $443c: $b0
    inc b                                         ; $443d: $04
    db $10                                        ; $443e: $10
    rst $28                                       ; $443f: $ef
    xor b                                         ; $4440: $a8
    ld d, a                                       ; $4441: $57
    pop de                                        ; $4442: $d1
    cpl                                           ; $4443: $2f
    nop                                           ; $4444: $00
    ld h, d                                       ; $4445: $62
    sbc a                                         ; $4446: $9f
    or l                                          ; $4447: $b5
    ld c, a                                       ; $4448: $4f
    db $e3                                        ; $4449: $e3
    rra                                           ; $444a: $1f
    rst $00                                       ; $444b: $c7
    ccf                                           ; $444c: $3f
    db $10                                        ; $444d: $10
    dec a                                         ; $444e: $3d
    rst $38                                       ; $444f: $ff
    ld a, d                                       ; $4450: $7a
    sbc b                                         ; $4451: $98
    inc bc                                        ; $4452: $03
    xor [hl]                                      ; $4453: $ae
    rst $38                                       ; $4454: $ff
    ld b, [hl]                                    ; $4455: $46
    rst $38                                       ; $4456: $ff
    nop                                           ; $4457: $00
    adc e                                         ; $4458: $8b
    rst $38                                       ; $4459: $ff

jr_0a3_445a:
    dec h                                         ; $445a: $25
    rst $18                                       ; $445b: $df
    ld b, e                                       ; $445c: $43
    cp a                                          ; $445d: $bf
    dec e                                         ; $445e: $1d
    ldh [rP1], a                                  ; $445f: $e0 $00
    ld [hl], $c8                                  ; $4461: $36 $c8
    ld c, d                                       ; $4463: $4a
    and b                                         ; $4464: $a0
    inc a                                         ; $4465: $3c
    ret nz                                        ; $4466: $c0

    sub h                                         ; $4467: $94
    ldh [rSB], a                                  ; $4468: $e0 $01
    inc a                                         ; $446a: $3c
    ret nz                                        ; $446b: $c0

    ld d, $e8                                     ; $446c: $16 $e8
    adc l                                         ; $446e: $8d
    ldh a, [$03]                                  ; $446f: $f0 $03
    nop                                           ; $4471: $00
    ld de, $0700                                  ; $4472: $11 $00 $07
    nop                                           ; $4475: $00
    ld a, [bc]                                    ; $4476: $0a
    ld bc, $0007                                  ; $4477: $01 $07 $00
    rrca                                          ; $447a: $0f
    nop                                           ; $447b: $00
    nop                                           ; $447c: $00
    inc c                                         ; $447d: $0c
    ld bc, $1f6a                                  ; $447e: $01 $6a $1f
    add $3f                                       ; $4481: $c6 $3f
    ld h, h                                       ; $4483: $64
    sbc a                                         ; $4484: $9f
    nop                                           ; $4485: $00
    ret z                                         ; $4486: $c8

    ccf                                           ; $4487: $3f
    ld l, h                                       ; $4488: $6c
    rra                                           ; $4489: $1f

Call_0a3_448a:
    ret z                                         ; $448a: $c8

    ccf                                           ; $448b: $3f
    adc b                                         ; $448c: $88
    ld a, a                                       ; $448d: $7f
    jr nz, jr_0a3_445a                            ; $448e: $20 $ca

    ccf                                           ; $4490: $3f
    ld c, h                                       ; $4491: $4c
    ld [$1768], sp                                ; $4492: $08 $68 $17
    db $f4                                        ; $4495: $f4
    dec bc                                        ; $4496: $0b
    cp d                                          ; $4497: $ba
    ld [$5c05], sp                                ; $4498: $08 $05 $5c
    inc bc                                        ; $449b: $03
    ld l, $24                                     ; $449c: $2e $24
    nop                                           ; $449e: $00
    or a                                          ; $449f: $b7
    add sp, $4f                                   ; $44a0: $e8 $4f
    nop                                           ; $44a2: $00
    ldh a, [$e6]                                  ; $44a3: $f0 $e6
    ld hl, sp+$33                                 ; $44a5: $f8 $33
    db $fc                                        ; $44a7: $fc
    ld e, c                                       ; $44a8: $59
    cp $34                                        ; $44a9: $fe $34
    nop                                           ; $44ab: $00
    rst $38                                       ; $44ac: $ff
    add hl, de                                    ; $44ad: $19
    cp $4c                                        ; $44ae: $fe $4c
    cp a                                          ; $44b0: $bf
    rla                                           ; $44b1: $17
    nop                                           ; $44b2: $00
    xor a                                         ; $44b3: $af
    nop                                           ; $44b4: $00
    nop                                           ; $44b5: $00
    db $db                                        ; $44b6: $db
    inc b                                         ; $44b7: $04
    ld [hl], l                                    ; $44b8: $75
    ld a, [bc]                                    ; $44b9: $0a
    ld a, [$d405]                                 ; $44ba: $fa $05 $d4
    nop                                           ; $44bd: $00
    dec hl                                        ; $44be: $2b
    and d                                         ; $44bf: $a2
    ld e, a                                       ; $44c0: $5f
    dec b                                         ; $44c1: $05
    rst $38                                       ; $44c2: $ff
    xor b                                         ; $44c3: $a8
    ld e, a                                       ; $44c4: $5f
    ld c, b                                       ; $44c5: $48
    nop                                           ; $44c6: $00
    cp a                                          ; $44c7: $bf
    sbc b                                         ; $44c8: $98
    ld a, a                                       ; $44c9: $7f
    ld c, b                                       ; $44ca: $48
    rst $38                                       ; $44cb: $ff
    jr @+$01                                      ; $44cc: $18 $ff

    ld c, h                                       ; $44ce: $4c
    nop                                           ; $44cf: $00
    rst $38                                       ; $44d0: $ff
    cp b                                          ; $44d1: $b8
    rst $38                                       ; $44d2: $ff
    db $fc                                        ; $44d3: $fc
    rst $38                                       ; $44d4: $ff
    ld b, b                                       ; $44d5: $40
    ld b, b                                       ; $44d6: $40
    stop                                          ; $44d7: $10 $00
    db $10                                        ; $44d9: $10
    dec h                                         ; $44da: $25
    dec h                                         ; $44db: $25
    ld a, [bc]                                    ; $44dc: $0a
    dec bc                                        ; $44dd: $0b
    daa                                           ; $44de: $27
    daa                                           ; $44df: $27
    adc h                                         ; $44e0: $8c
    nop                                           ; $44e1: $00
    adc a                                         ; $44e2: $8f
    ld e, b                                       ; $44e3: $58
    ld e, a                                       ; $44e4: $5f
    cp c                                          ; $44e5: $b9
    cp [hl]                                       ; $44e6: $be
    jp z, $a6f4                                   ; $44e7: $ca $f4 $a6

    nop                                           ; $44ea: $00
    ld hl, sp+$0d                                 ; $44eb: $f8 $0d
    ldh a, [$b8]                                  ; $44ed: $f0 $b8
    ret nz                                        ; $44ef: $c0

    ld d, b                                       ; $44f0: $50
    and b                                         ; $44f1: $a0
    ld l, b                                       ; $44f2: $68
    inc b                                         ; $44f3: $04
    add b                                         ; $44f4: $80
    ret nc                                        ; $44f5: $d0

    nop                                           ; $44f6: $00
    and d                                         ; $44f7: $a2
    nop                                           ; $44f8: $00
    or b                                          ; $44f9: $b0
    ld c, l                                       ; $44fa: $4d
    ld l, [hl]                                    ; $44fb: $6e
    ret nc                                        ; $44fc: $d0

    inc [hl]                                      ; $44fd: $34
    cp a                                          ; $44fe: $bf
    rst $38                                       ; $44ff: $ff
    ret c                                         ; $4500: $d8

    dec l                                         ; $4501: $2d
    add sp, $0d                                   ; $4502: $e8 $0d
    ld a, e                                       ; $4504: $7b
    jr nz, jr_0a3_450a                            ; $4505: $20 $03

    ld d, d                                       ; $4507: $52
    ld e, l                                       ; $4508: $5d
    nop                                           ; $4509: $00

jr_0a3_450a:
    xor e                                         ; $450a: $ab
    cp h                                          ; $450b: $bc
    ld [hl], c                                    ; $450c: $71
    ld a, [hl]                                    ; $450d: $7e
    jp $e1fc                                      ; $450e: $c3 $fc $e1


    cp $00                                        ; $4511: $fe $00
    jp nc, $a1fd                                  ; $4513: $d2 $fd $a1

    cp $43                                        ; $4516: $fe $43
    db $fc                                        ; $4518: $fc
    ld b, l                                       ; $4519: $45
    nop                                           ; $451a: $00
    ld b, c                                       ; $451b: $41
    adc e                                         ; $451c: $8b
    adc b                                         ; $451d: $88
    ld bc, $0083                                  ; $451e: $01 $83 $00
    sub $01                                       ; $4521: $d6 $01
    xor e                                         ; $4523: $ab
    or b                                          ; $4524: $b0
    dec b                                         ; $4525: $05
    ld [bc], a                                    ; $4526: $02
    ld l, [hl]                                    ; $4527: $6e
    sub c                                         ; $4528: $91
    ld d, l                                       ; $4529: $55
    ld d, l                                       ; $452a: $55
    and b                                         ; $452b: $a0
    and b                                         ; $452c: $a0
    ld c, h                                       ; $452d: $4c
    ld a, [bc]                                    ; $452e: $0a
    ld bc, $0140                                  ; $452f: $01 $40 $01
    ld d, d                                       ; $4532: $52
    inc c                                         ; $4533: $0c
    ld [$0a08], sp                                ; $4534: $08 $08 $0a
    dec bc                                        ; $4537: $0b
    rlca                                          ; $4538: $07
    rlca                                          ; $4539: $07
    nop                                           ; $453a: $00
    rrca                                          ; $453b: $0f
    rrca                                          ; $453c: $0f
    ld d, [hl]                                    ; $453d: $56
    ld d, a                                       ; $453e: $57
    dec l                                         ; $453f: $2d
    cpl                                           ; $4540: $2f
    ld e, d                                       ; $4541: $5a
    ld e, a                                       ; $4542: $5f
    nop                                           ; $4543: $00
    inc [hl]                                      ; $4544: $34
    ccf                                           ; $4545: $3f
    ld e, c                                       ; $4546: $59
    ld e, [hl]                                    ; $4547: $5e
    rst $00                                       ; $4548: $c7
    ld hl, sp-$5b                                 ; $4549: $f8 $a5
    ld hl, sp+$04                                 ; $454b: $f8 $04
    ld c, h                                       ; $454d: $4c
    ldh a, [$98]                                  ; $454e: $f0 $98
    ldh [$34], a                                  ; $4550: $e0 $34
    ld [hl], d                                    ; $4552: $72
    nop                                           ; $4553: $00
    cp b                                          ; $4554: $b8
    ld b, b                                       ; $4555: $40
    nop                                           ; $4556: $00
    ld [hl], l                                    ; $4557: $75
    add b                                         ; $4558: $80
    or $09                                        ; $4559: $f6 $09
    ld l, [hl]                                    ; $455b: $6e
    ld de, $03bc                                  ; $455c: $11 $bc $03
    nop                                           ; $455f: $00
    jr c, jr_0a3_4569                             ; $4560: $38 $07

    ld [hl], h                                    ; $4562: $74
    dec bc                                        ; $4563: $0b
    add hl, hl                                    ; $4564: $29
    rla                                           ; $4565: $17
    ld [hl], c                                    ; $4566: $71
    rrca                                          ; $4567: $0f
    nop                                           ; $4568: $00

jr_0a3_4569:
    ld h, e                                       ; $4569: $63
    rra                                           ; $456a: $1f
    nop                                           ; $456b: $00
    nop                                           ; $456c: $00
    jr nz, jr_0a3_458f                            ; $456d: $20 $20

    ld [bc], a                                    ; $456f: $02
    ld [bc], a                                    ; $4570: $02
    add b                                         ; $4571: $80
    ld e, [hl]                                    ; $4572: $5e
    inc c                                         ; $4573: $0c
    ld [hl+], a                                   ; $4574: $22
    ld [hl+], a                                   ; $4575: $22
    ld bc, $4301                                  ; $4576: $01 $01 $43
    ld b, e                                       ; $4579: $43
    or d                                          ; $457a: $b2
    nop                                           ; $457b: $00
    cp l                                          ; $457c: $bd
    dec h                                         ; $457d: $25
    ld a, [hl-]                                   ; $457e: $3a
    ld b, e                                       ; $457f: $43
    ld a, h                                       ; $4580: $7c
    push hl                                       ; $4581: $e5
    ld a, [$004b]                                 ; $4582: $fa $4b $00
    ld [hl], h                                    ; $4585: $74
    and a                                         ; $4586: $a7
    ld hl, sp-$31                                 ; $4587: $f8 $cf
    ldh a, [$9f]                                  ; $4589: $f0 $9f
    ldh [$be], a                                  ; $458b: $e0 $be
    nop                                           ; $458d: $00
    ld b, b                                       ; $458e: $40

jr_0a3_458f:
    db $fd                                        ; $458f: $fd
    nop                                           ; $4590: $00
    cp $00                                        ; $4591: $fe $00
    rst $10                                       ; $4593: $d7
    jr z, jr_0a3_4615                             ; $4594: $28 $7f

    nop                                           ; $4596: $00
    nop                                           ; $4597: $00
    cp d                                          ; $4598: $ba
    dec b                                         ; $4599: $05
    ld [hl], h                                    ; $459a: $74
    dec bc                                        ; $459b: $0b
    xor b                                         ; $459c: $a8
    rla                                           ; $459d: $17
    jp nc, Jump_000_2f00                          ; $459e: $d2 $00 $2f

    push hl                                       ; $45a1: $e5
    rra                                           ; $45a2: $1f
    and $1f                                       ; $45a3: $e6 $1f
    call z, $093f                                 ; $45a5: $cc $3f $09
    nop                                           ; $45a8: $00
    cp $10                                        ; $45a9: $fe $10
    rst $38                                       ; $45ab: $ff
    or l                                          ; $45ac: $b5
    ld a, [$fc63]                                 ; $45ad: $fa $63 $fc
    adc c                                         ; $45b0: $89
    jr nz, jr_0a3_45b3                            ; $45b1: $20 $00

jr_0a3_45b3:
    inc de                                        ; $45b3: $13
    halt                                          ; $45b4: $76
    inc bc                                        ; $45b5: $03
    ld e, a                                       ; $45b6: $5f
    nop                                           ; $45b7: $00
    or h                                          ; $45b8: $b4
    dec bc                                        ; $45b9: $0b
    ld e, b                                       ; $45ba: $58
    nop                                           ; $45bb: $00
    daa                                           ; $45bc: $27
    or b                                          ; $45bd: $b0
    ld c, a                                       ; $45be: $4f
    push hl                                       ; $45bf: $e5
    rra                                           ; $45c0: $1f
    ld h, a                                       ; $45c1: $67
    sbc a                                         ; $45c2: $9f
    jp z, Jump_000_3f08                           ; $45c3: $ca $08 $3f

    sub l                                         ; $45c6: $95
    ld a, a                                       ; $45c7: $7f
    ld a, [bc]                                    ; $45c8: $0a
    db $10                                        ; $45c9: $10
    ld [bc], a                                    ; $45ca: $02
    jr c, @+$01                                   ; $45cb: $38 $ff

    or c                                          ; $45cd: $b1
    nop                                           ; $45ce: $00
    cp $66                                        ; $45cf: $fe $66
    ld hl, sp+$0a                                 ; $45d1: $f8 $0a
    db $f4                                        ; $45d3: $f4
    rla                                           ; $45d4: $17
    add sp, $2e                                   ; $45d5: $e8 $2e
    nop                                           ; $45d7: $00
    ret nc                                        ; $45d8: $d0

    ld e, e                                       ; $45d9: $5b
    and b                                         ; $45da: $a0
    ld l, $c0                                     ; $45db: $2e $c0
    db $fd                                        ; $45dd: $fd
    nop                                           ; $45de: $00
    ld a, a                                       ; $45df: $7f
    ld bc, $f780                                  ; $45e0: $01 $80 $f7
    nop                                           ; $45e3: $00
    and b                                         ; $45e4: $a0
    nop                                           ; $45e5: $00
    ld b, b                                       ; $45e6: $40
    nop                                           ; $45e7: $00
    call Call_000_001a                            ; $45e8: $cd $1a $00
    dec c                                         ; $45eb: $0d
    nop                                           ; $45ec: $00
    ld d, a                                       ; $45ed: $57
    nop                                           ; $45ee: $00
    xor [hl]                                      ; $45ef: $ae
    nop                                           ; $45f0: $00
    jp z, Jump_000_003f                           ; $45f1: $ca $3f $00

    ld b, c                                       ; $45f4: $41
    cp a                                          ; $45f5: $bf
    add e                                         ; $45f6: $83
    ld a, a                                       ; $45f7: $7f
    dec bc                                        ; $45f8: $0b
    rst $38                                       ; $45f9: $ff
    sub [hl]                                      ; $45fa: $96
    ld a, a                                       ; $45fb: $7f
    inc d                                         ; $45fc: $14
    inc l                                         ; $45fd: $2c
    rst $38                                       ; $45fe: $ff
    ld a, [de]                                    ; $45ff: $1a
    ld [hl], d                                    ; $4600: $72
    ld [bc], a                                    ; $4601: $02
    res 7, d                                      ; $4602: $cb $ba
    inc bc                                        ; $4604: $03
    sub a                                         ; $4605: $97
    add sp, $00                                   ; $4606: $e8 $00
    dec l                                         ; $4608: $2d
    ret nc                                        ; $4609: $d0

    ld a, [de]                                    ; $460a: $1a
    ldh [$b4], a                                  ; $460b: $e0 $b4
    ld b, b                                       ; $460d: $40
    ld a, b                                       ; $460e: $78
    add b                                         ; $460f: $80
    nop                                           ; $4610: $00
    or b                                          ; $4611: $b0
    ld b, b                                       ; $4612: $40
    db $db                                        ; $4613: $db
    nop                                           ; $4614: $00

jr_0a3_4615:
    xor [hl]                                      ; $4615: $ae
    ld bc, $02fd                                  ; $4616: $01 $fd $02
    nop                                           ; $4619: $00
    ld e, d                                       ; $461a: $5a
    dec b                                         ; $461b: $05
    cp l                                          ; $461c: $bd
    ld [bc], a                                    ; $461d: $02
    ld a, d                                       ; $461e: $7a
    dec b                                         ; $461f: $05
    inc [hl]                                      ; $4620: $34
    dec bc                                        ; $4621: $0b
    nop                                           ; $4622: $00
    ld h, b                                       ; $4623: $60
    rra                                           ; $4624: $1f
    ei                                            ; $4625: $fb
    inc b                                         ; $4626: $04
    rst $18                                       ; $4627: $df
    jr nz, jr_0a3_46a4                            ; $4628: $20 $7a

    add l                                         ; $462a: $85
    ld bc, $2bd4                                  ; $462b: $01 $d4 $2b
    xor c                                         ; $462e: $a9
    ld d, [hl]                                    ; $462f: $56
    nop                                           ; $4630: $00
    rst $38                                       ; $4631: $ff
    ld a, [bc]                                    ; $4632: $0a
    add $05                                       ; $4633: $c6 $05
    nop                                           ; $4635: $00
    ld l, b                                       ; $4636: $68
    rst $38                                       ; $4637: $ff
    or h                                          ; $4638: $b4
    ei                                            ; $4639: $fb
    ld h, c                                       ; $463a: $61
    cp $d1                                        ; $463b: $fe $d1
    cp $00                                        ; $463d: $fe $00
    ld [$d1f5], a                                 ; $463f: $ea $f5 $d1
    cp $e8                                        ; $4642: $fe $e8
    rst $38                                       ; $4644: $ff
    ld [hl], h                                    ; $4645: $74
    rst $38                                       ; $4646: $ff
    db $10                                        ; $4647: $10
    ld l, b                                       ; $4648: $68
    add b                                         ; $4649: $80
    ldh a, [$64]                                  ; $464a: $f0 $64
    nop                                           ; $464c: $00
    ret nz                                        ; $464d: $c0

    nop                                           ; $464e: $00
    ldh [rP1], a                                  ; $464f: $e0 $00
    ld bc, $8058                                  ; $4651: $01 $58 $80
    xor l                                         ; $4654: $ad
    ld b, b                                       ; $4655: $40
    ld e, a                                       ; $4656: $5f
    and b                                         ; $4657: $a0
    dec a                                         ; $4658: $3d
    jr c, jr_0a3_465b                             ; $4659: $38 $00

jr_0a3_465b:
    nop                                           ; $465b: $00
    rst $28                                       ; $465c: $ef
    nop                                           ; $465d: $00
    ld e, l                                       ; $465e: $5d
    ld [bc], a                                    ; $465f: $02
    ld a, [$b405]                                 ; $4660: $fa $05 $b4
    dec bc                                        ; $4663: $0b
    ld bc, $057a                                  ; $4664: $01 $7a $05
    and b                                         ; $4667: $a0
    ld e, a                                       ; $4668: $5f
    dec bc                                        ; $4669: $0b
    rst $38                                       ; $466a: $ff
    rla                                           ; $466b: $17
    xor [hl]                                      ; $466c: $ae
    ld [bc], a                                    ; $466d: $02
    nop                                           ; $466e: $00
    dec d                                         ; $466f: $15
    rst $38                                       ; $4670: $ff
    ld a, [hl+]                                   ; $4671: $2a
    rst $38                                       ; $4672: $ff
    ld d, h                                       ; $4673: $54
    rst $38                                       ; $4674: $ff
    jr nz, @+$01                                  ; $4675: $20 $ff

    nop                                           ; $4677: $00
    ld h, d                                       ; $4678: $62
    db $fd                                        ; $4679: $fd
    cp [hl]                                       ; $467a: $be
    rst $38                                       ; $467b: $ff
    rrca                                          ; $467c: $0f
    rst $38                                       ; $467d: $ff
    ld b, l                                       ; $467e: $45
    rst $38                                       ; $467f: $ff
    nop                                           ; $4680: $00
    and h                                         ; $4681: $a4
    ld e, e                                       ; $4682: $5b
    ld a, d                                       ; $4683: $7a
    add l                                         ; $4684: $85
    rst $38                                       ; $4685: $ff
    nop                                           ; $4686: $00
    rst $10                                       ; $4687: $d7
    nop                                           ; $4688: $00
    nop                                           ; $4689: $00
    jp z, Jump_000_0b00                           ; $468a: $ca $00 $0b

    ldh a, [rNR52]                                ; $468d: $f0 $26
    reti                                          ; $468f: $d9


    and c                                         ; $4690: $a1
    cp $40                                        ; $4691: $fe $40
    ret nc                                        ; $4693: $d0

    ld [hl], $02                                  ; $4694: $36 $02
    cpl                                           ; $4696: $2f
    rst $38                                       ; $4697: $ff
    add a                                         ; $4698: $87
    ld a, a                                       ; $4699: $7f
    ld [c], a                                     ; $469a: $e2
    rra                                           ; $469b: $1f
    nop                                           ; $469c: $00
    ld d, c                                       ; $469d: $51
    xor a                                         ; $469e: $af
    ld [hl+], a                                   ; $469f: $22
    rst $18                                       ; $46a0: $df
    ld b, l                                       ; $46a1: $45
    cp a                                          ; $46a2: $bf
    inc bc                                        ; $46a3: $03

jr_0a3_46a4:
    rst $38                                       ; $46a4: $ff
    db $10                                        ; $46a5: $10
    ld d, $ff                                     ; $46a6: $16 $ff
    xor h                                         ; $46a8: $ac
    ld [hl-], a                                   ; $46a9: $32
    nop                                           ; $46aa: $00
    ld sp, hl                                     ; $46ab: $f9
    cp $55                                        ; $46ac: $fe $55
    ld a, [$ab00]                                 ; $46ae: $fa $00 $ab
    db $f4                                        ; $46b1: $f4
    ld d, $e8                                     ; $46b2: $16 $e8
    dec a                                         ; $46b4: $3d
    ret nz                                        ; $46b5: $c0

    ld a, d                                       ; $46b6: $7a
    add b                                         ; $46b7: $80
    ld a, [de]                                    ; $46b8: $1a
    call nc, $ac20                                ; $46b9: $d4 $20 $ac
    ld [c], a                                     ; $46bc: $e2
    ld [bc], a                                    ; $46bd: $02
    jr c, jr_0a3_46ca                             ; $46be: $38 $0a

    dec bc                                        ; $46c0: $0b
    ld b, h                                       ; $46c1: $44
    inc bc                                        ; $46c2: $03
    rrca                                          ; $46c3: $0f
    ld b, d                                       ; $46c4: $42
    nop                                           ; $46c5: $00
    inc b                                         ; $46c6: $04
    ld bc, $fd03                                  ; $46c7: $01 $03 $fd

jr_0a3_46ca:
    ld [bc], a                                    ; $46ca: $02
    sub [hl]                                      ; $46cb: $96
    db $fc                                        ; $46cc: $fc
    nop                                           ; $46cd: $00

Call_0a3_46ce:
    sub a                                         ; $46ce: $97
    ld [bc], a                                    ; $46cf: $02
    ld l, a                                       ; $46d0: $6f
    ld b, e                                       ; $46d1: $43
    cp a                                          ; $46d2: $bf
    add a                                         ; $46d3: $87
    ld a, a                                       ; $46d4: $7f
    ld c, [hl]                                    ; $46d5: $4e
    ld [$3102], sp                                ; $46d6: $08 $02 $31
    ld [$53fe], sp                                ; $46d9: $08 $fe $53
    rst $38                                       ; $46dc: $ff
    xor l                                         ; $46dd: $ad
    ld h, [hl]                                    ; $46de: $66
    dec b                                         ; $46df: $05
    pop de                                        ; $46e0: $d1
    cp $8a                                        ; $46e1: $fe $8a
    ld b, h                                       ; $46e3: $44
    push af                                       ; $46e4: $f5
    or d                                          ; $46e5: $b2
    dec c                                         ; $46e6: $0d
    ld a, l                                       ; $46e7: $7d
    add b                                         ; $46e8: $80
    xor b                                         ; $46e9: $a8
    ld a, [hl+]                                   ; $46ea: $2a
    inc bc                                        ; $46eb: $03
    ld c, $ff                                     ; $46ec: $0e $ff
    nop                                           ; $46ee: $00
    ld b, l                                       ; $46ef: $45
    cp a                                          ; $46f0: $bf
    xor d                                         ; $46f1: $aa
    ld e, a                                       ; $46f2: $5f
    ld c, e                                       ; $46f3: $4b
    scf                                           ; $46f4: $37
    push hl                                       ; $46f5: $e5
    rra                                           ; $46f6: $1f
    nop                                           ; $46f7: $00
    ld d, c                                       ; $46f8: $51
    cpl                                           ; $46f9: $2f
    ld [$5115], a                                 ; $46fa: $ea $15 $51
    xor a                                         ; $46fd: $af
    add e                                         ; $46fe: $83
    ld a, a                                       ; $46ff: $7f
    ld b, b                                       ; $4700: $40
    inc b                                         ; $4701: $04
    sub b                                         ; $4702: $90
    db $10                                        ; $4703: $10
    xor b                                         ; $4704: $a8
    rst $38                                       ; $4705: $ff
    pop af                                        ; $4706: $f1
    cp $42                                        ; $4707: $fe $42
    db $fd                                        ; $4709: $fd
    nop                                           ; $470a: $00
    adc e                                         ; $470b: $8b
    db $f4                                        ; $470c: $f4
    dec d                                         ; $470d: $15
    add sp, $2f                                   ; $470e: $e8 $2f
    ret nc                                        ; $4710: $d0

    or h                                          ; $4711: $b4
    ld b, b                                       ; $4712: $40
    nop                                           ; $4713: $00
    ld e, b                                       ; $4714: $58
    and b                                         ; $4715: $a0
    or b                                          ; $4716: $b0
    ld b, b                                       ; $4717: $40
    ld h, c                                       ; $4718: $61
    add b                                         ; $4719: $80
    ld [$4000], a                                 ; $471a: $ea $00 $40
    pop de                                        ; $471d: $d1
    inc [hl]                                      ; $471e: $34
    ld de, $0008                                  ; $471f: $11 $08 $00
    ld d, h                                       ; $4722: $54
    nop                                           ; $4723: $00
    cp d                                          ; $4724: $ba
    nop                                           ; $4725: $00
    nop                                           ; $4726: $00
    rst $30                                       ; $4727: $f7
    nop                                           ; $4728: $00
    and $1b                                       ; $4729: $e6 $1b
    ld d, d                                       ; $472b: $52
    dec c                                         ; $472c: $0d
    ld hl, sp+$07                                 ; $472d: $f8 $07
    nop                                           ; $472f: $00
    ld d, b                                       ; $4730: $50
    rrca                                          ; $4731: $0f
    ld sp, hl                                     ; $4732: $f9
    ld b, $70                                     ; $4733: $06 $70
    rrca                                          ; $4735: $0f
    jp z, Jump_000_0415                           ; $4736: $ca $15 $04

    ldh a, [rIF]                                  ; $4739: $f0 $0f
    ld [$f0fd], a                                 ; $473b: $ea $fd $f0
    ld h, $05                                     ; $473e: $26 $05
    ld d, h                                       ; $4740: $54
    rst $38                                       ; $4741: $ff
    nop                                           ; $4742: $00
    jr z, @+$01                                   ; $4743: $28 $ff

    dec d                                         ; $4745: $15
    cp $82                                        ; $4746: $fe $82
    ld a, a                                       ; $4748: $7f
    ld c, c                                       ; $4749: $49
    cp a                                          ; $474a: $bf
    nop                                           ; $474b: $00
    jp c, $f500                                   ; $474c: $da $00 $f5

    nop                                           ; $474f: $00
    ld e, e                                       ; $4750: $5b
    add b                                         ; $4751: $80
    cp l                                          ; $4752: $bd
    ld b, d                                       ; $4753: $42
    nop                                           ; $4754: $00
    halt                                          ; $4755: $76
    adc c                                         ; $4756: $89
    ld e, a                                       ; $4757: $5f
    and b                                         ; $4758: $a0
    ld a, [hl+]                                   ; $4759: $2a
    push de                                       ; $475a: $d5
    dec d                                         ; $475b: $15
    ld [$fd40], a                                 ; $475c: $ea $40 $fd
    cp h                                          ; $475f: $bc
    ld bc, $01fe                                  ; $4760: $01 $fe $01
    push af                                       ; $4763: $f5
    ld a, [bc]                                    ; $4764: $0a
    xor d                                         ; $4765: $aa
    ld d, l                                       ; $4766: $55
    ld [bc], a                                    ; $4767: $02
    ld b, c                                       ; $4768: $41
    cp a                                          ; $4769: $bf
    adc b                                         ; $476a: $88
    ld a, a                                       ; $476b: $7f
    inc hl                                        ; $476c: $23
    rst $18                                       ; $476d: $df
    inc e                                         ; $476e: $1c
    dec bc                                        ; $476f: $0b
    xor e                                         ; $4770: $ab
    nop                                           ; $4771: $00
    ld e, a                                       ; $4772: $5f
    rla                                           ; $4773: $17
    rst $38                                       ; $4774: $ff
    inc a                                         ; $4775: $3c
    rst $38                                       ; $4776: $ff
    ld a, c                                       ; $4777: $79
    rst $38                                       ; $4778: $ff
    db $f4                                        ; $4779: $f4
    add b                                         ; $477a: $80
    ld b, [hl]                                    ; $477b: $46
    inc bc                                        ; $477c: $03
    and b                                         ; $477d: $a0
    ld e, a                                       ; $477e: $5f
    ld e, d                                       ; $477f: $5a
    dec h                                         ; $4780: $25
    db $f4                                        ; $4781: $f4
    dec bc                                        ; $4782: $0b
    ld l, l                                       ; $4783: $6d
    nop                                           ; $4784: $00
    ld [bc], a                                    ; $4785: $02
    jp c, Jump_0a3_6d05                           ; $4786: $da $05 $6d

    ld [bc], a                                    ; $4789: $02
    cp d                                          ; $478a: $ba
    dec b                                         ; $478b: $05
    ld d, l                                       ; $478c: $55
    nop                                           ; $478d: $00
    ld a, [bc]                                    ; $478e: $0a
    adc b                                         ; $478f: $88
    rst $30                                       ; $4790: $f7
    ld h, d                                       ; $4791: $62
    db $fd                                        ; $4792: $fd
    jr nc, @+$01                                  ; $4793: $30 $ff

    dec e                                         ; $4795: $1d
    ret nz                                        ; $4796: $c0

    jp nc, $2803                                  ; $4797: $d2 $03 $28

    add hl, de                                    ; $479a: $19
    rlca                                          ; $479b: $07
    rst $38                                       ; $479c: $ff
    cp h                                          ; $479d: $bc
    rst $38                                       ; $479e: $ff
    ld l, d                                       ; $479f: $6a
    rst $38                                       ; $47a0: $ff
    ld b, b                                       ; $47a1: $40
    call nc, Call_000_058a                        ; $47a2: $d4 $8a $05
    ld b, d                                       ; $47a5: $42
    db $fd                                        ; $47a6: $fd
    sub l                                         ; $47a7: $95
    ld [$d02f], a                                 ; $47a8: $ea $2f $d0
    ld b, b                                       ; $47ab: $40
    ld e, d                                       ; $47ac: $5a
    ld [$1e01], sp                                ; $47ad: $08 $01 $1e
    rst $38                                       ; $47b0: $ff
    xor l                                         ; $47b1: $ad
    ld e, a                                       ; $47b2: $5f
    ld d, [hl]                                    ; $47b3: $56
    xor a                                         ; $47b4: $af
    ld h, b                                       ; $47b5: $60
    xor e                                         ; $47b6: $ab
    ld h, [hl]                                    ; $47b7: $66
    inc bc                                        ; $47b8: $03
    ret nz                                        ; $47b9: $c0

    rrca                                          ; $47ba: $0f
    inc bc                                        ; $47bb: $03
    inc bc                                        ; $47bc: $03
    ld sp, hl                                     ; $47bd: $f9
    ld sp, hl                                     ; $47be: $f9
    xor h                                         ; $47bf: $ac
    nop                                           ; $47c0: $00
    db $fc                                        ; $47c1: $fc
    ld d, h                                       ; $47c2: $54
    db $fc                                        ; $47c3: $fc
    xor c                                         ; $47c4: $a9
    ld sp, hl                                     ; $47c5: $f9
    ld bc, $2801                                  ; $47c6: $01 $01 $28
    ld l, h                                       ; $47c9: $6c
    ld a, h                                       ; $47ca: $7c
    ret nc                                        ; $47cb: $d0

    rra                                           ; $47cc: $1f
    inc d                                         ; $47cd: $14

jr_0a3_47ce:
    jr c, jr_0a3_47ce                             ; $47ce: $38 $fe

    ld bc, $6a00                                  ; $47d0: $01 $00 $6a
    dec e                                         ; $47d3: $1d
    db $fd                                        ; $47d4: $fd
    db $fd                                        ; $47d5: $fd
    ld b, b                                       ; $47d6: $40
    db $fc                                        ; $47d7: $fc
    ld [bc], a                                    ; $47d8: $02
    nop                                           ; $47d9: $00
    ld d, l                                       ; $47da: $55
    ld a, l                                       ; $47db: $7d
    jr z, jr_0a3_485b                             ; $47dc: $28 $7d

    ld d, l                                       ; $47de: $55
    ld a, l                                       ; $47df: $7d
    ld [$f9a8], sp                                ; $47e0: $08 $a8 $f9
    dec b                                         ; $47e3: $05
    dec b                                         ; $47e4: $05
    jr jr_0a3_47ff                                ; $47e5: $18 $18

    dec b                                         ; $47e7: $05
    dec b                                         ; $47e8: $05
    add hl, hl                                    ; $47e9: $29
    ret nz                                        ; $47ea: $c0

    stop                                          ; $47eb: $10 $00
    inc b                                         ; $47ed: $04
    ld [$fbab], sp                                ; $47ee: $08 $ab $fb
    rlca                                          ; $47f1: $07
    rlca                                          ; $47f2: $07
    rst $38                                       ; $47f3: $ff
    rst $38                                       ; $47f4: $ff
    cp b                                          ; $47f5: $b8
    inc h                                         ; $47f6: $24
    ld [$29fc], sp                                ; $47f7: $08 $fc $29
    rrca                                          ; $47fa: $0f
    ld a, h                                       ; $47fb: $7c
    scf                                           ; $47fc: $37
    or b                                          ; $47fd: $b0
    ccf                                           ; $47fe: $3f

jr_0a3_47ff:
    rst $38                                       ; $47ff: $ff
    nop                                           ; $4800: $00
    xor d                                         ; $4801: $aa
    nop                                           ; $4802: $00
    rst $38                                       ; $4803: $ff
    rst $28                                       ; $4804: $ef
    rst $28                                       ; $4805: $ef
    rst $30                                       ; $4806: $f7
    rst $30                                       ; $4807: $f7
    rst $10                                       ; $4808: $d7
    rst $10                                       ; $4809: $d7
    scf                                           ; $480a: $37
    nop                                           ; $480b: $00
    scf                                           ; $480c: $37
    rst $08                                       ; $480d: $cf
    rst $08                                       ; $480e: $cf
    cpl                                           ; $480f: $2f
    cpl                                           ; $4810: $2f
    rst $30                                       ; $4811: $f7
    rst $30                                       ; $4812: $f7
    dec bc                                        ; $4813: $0b
    nop                                           ; $4814: $00
    ei                                            ; $4815: $fb
    rst $30                                       ; $4816: $f7
    rst $30                                       ; $4817: $f7
    rst $28                                       ; $4818: $ef
    add sp, -$11                                  ; $4819: $e8 $ef
    ldh [$e7], a                                  ; $481b: $e0 $e7
    ld [bc], a                                    ; $481d: $02
    ldh [$e8], a                                  ; $481e: $e0 $e8
    ldh [$ef], a                                  ; $4820: $e0 $ef
    ldh [$eb], a                                  ; $4822: $e0 $eb
    ld [bc], a                                    ; $4824: $02
    nop                                           ; $4825: $00
    rst $18                                       ; $4826: $df
    nop                                           ; $4827: $00
    rst $18                                       ; $4828: $df
    rst $28                                       ; $4829: $ef
    cpl                                           ; $482a: $2f
    rst $28                                       ; $482b: $ef
    rrca                                          ; $482c: $0f
    rst $08                                       ; $482d: $cf
    rrca                                          ; $482e: $0f
    cpl                                           ; $482f: $2f
    ld bc, $ee0f                                  ; $4830: $01 $0f $ee
    ld c, $ec                                     ; $4833: $0e $ec
    inc c                                         ; $4835: $0c
    db $ec                                        ; $4836: $ec
    inc c                                         ; $4837: $0c
    jp $002f                                      ; $4838: $c3 $2f $00


    ld bc, $7c01                                  ; $483b: $01 $01 $7c
    ld a, h                                       ; $483e: $7c
    sub $fe                                       ; $483f: $d6 $fe
    xor d                                         ; $4841: $aa
    cp $00                                        ; $4842: $fe $00
    cp a                                          ; $4844: $bf
    cp a                                          ; $4845: $bf
    ret nz                                        ; $4846: $c0

    ret nz                                        ; $4847: $c0

    ccf                                           ; $4848: $3f
    ccf                                           ; $4849: $3f
    ld b, b                                       ; $484a: $40
    ld b, b                                       ; $484b: $40
    nop                                           ; $484c: $00
    sbc a                                         ; $484d: $9f
    sbc a                                         ; $484e: $9f
    nop                                           ; $484f: $00
    rst $38                                       ; $4850: $ff
    ld a, [hl+]                                   ; $4851: $2a

jr_0a3_4852:
    sub l                                         ; $4852: $95
    dec d                                         ; $4853: $15
    ld a, [hl+]                                   ; $4854: $2a
    ld [bc], a                                    ; $4855: $02
    ld e, a                                       ; $4856: $5f
    ld e, a                                       ; $4857: $5f
    rst $18                                       ; $4858: $df
    rst $18                                       ; $4859: $df
    ccf                                           ; $485a: $3f

jr_0a3_485b:
    ccf                                           ; $485b: $3f
    db $db                                        ; $485c: $db
    rlca                                          ; $485d: $07
    rst $18                                       ; $485e: $df
    nop                                           ; $485f: $00
    cpl                                           ; $4860: $2f
    rst $28                                       ; $4861: $ef
    adc a                                         ; $4862: $8f
    ld l, a                                       ; $4863: $6f
    rrca                                          ; $4864: $0f
    rst $28                                       ; $4865: $ef
    rst $28                                       ; $4866: $ef
    rst $28                                       ; $4867: $ef
    nop                                           ; $4868: $00
    rst $18                                       ; $4869: $df
    ret nc                                        ; $486a: $d0

    rst $18                                       ; $486b: $df
    ret nz                                        ; $486c: $c0

    rst $08                                       ; $486d: $cf
    ret nz                                        ; $486e: $c0

    ret nc                                        ; $486f: $d0

    ret nz                                        ; $4870: $c0

    jr jr_0a3_4852                                ; $4871: $18 $df

    ret nz                                        ; $4873: $c0

    rst $10                                       ; $4874: $d7
    ld [bc], a                                    ; $4875: $02
    nop                                           ; $4876: $00
    push af                                       ; $4877: $f5
    rlca                                          ; $4878: $07
    ld e, a                                       ; $4879: $5f
    rst $18                                       ; $487a: $df
    rra                                           ; $487b: $1f
    inc b                                         ; $487c: $04
    sbc a                                         ; $487d: $9f
    rra                                           ; $487e: $1f
    ld e, a                                       ; $487f: $5f
    rra                                           ; $4880: $1f
    rst $18                                       ; $4881: $df
    ld [bc], a                                    ; $4882: $02
    stop                                          ; $4883: $10 $00
    ccf                                           ; $4885: $3f
    jp nz, $0002                                  ; $4886: $c2 $02 $00

    add [hl]                                      ; $4889: $86
    inc b                                         ; $488a: $04
    nop                                           ; $488b: $00
    ccf                                           ; $488c: $3f
    ret nz                                        ; $488d: $c0

    ret nz                                        ; $488e: $c0

    rst $30                                       ; $488f: $f7
    rrca                                          ; $4890: $0f
    rrca                                          ; $4891: $0f
    ld e, [hl]                                    ; $4892: $5e
    rst $28                                       ; $4893: $ef
    ld [bc], a                                    ; $4894: $02
    ld [$441f], sp                                ; $4895: $08 $1f $44
    nop                                           ; $4898: $00
    rst $30                                       ; $4899: $f7
    rra                                           ; $489a: $1f
    inc [hl]                                      ; $489b: $34
    ld [$1804], sp                                ; $489c: $08 $04 $18
    rst $28                                       ; $489f: $ef
    sbc b                                         ; $48a0: $98
    ret nz                                        ; $48a1: $c0

    rlca                                          ; $48a2: $07
    rst $38                                       ; $48a3: $ff
    rst $38                                       ; $48a4: $ff
    ld [hl], $18                                  ; $48a5: $36 $18
    inc a                                         ; $48a7: $3c
    ld [$3fbf], sp                                ; $48a8: $08 $bf $3f
    ld a, a                                       ; $48ab: $7f
    ld [hl], h                                    ; $48ac: $74
    ld a, a                                       ; $48ad: $7f
    ret nc                                        ; $48ae: $d0

    ld e, b                                       ; $48af: $58
    sub [hl]                                      ; $48b0: $96
    ld bc, $07ff                                  ; $48b1: $01 $ff $07
    xor e                                         ; $48b4: $ab
    inc b                                         ; $48b5: $04
    db $10                                        ; $48b6: $10
    ld d, l                                       ; $48b7: $55
    rst $38                                       ; $48b8: $ff
    rla                                           ; $48b9: $17
    xor c                                         ; $48ba: $a9
    ld d, a                                       ; $48bb: $57
    ld bc, $000c                                  ; $48bc: $01 $0c $00
    db $fd                                        ; $48bf: $fd
    ld bc, $3400                                  ; $48c0: $01 $00 $34
    add hl, bc                                    ; $48c3: $09
    jr c, @+$0b                                   ; $48c4: $38 $09

    ld c, d                                       ; $48c6: $4a
    ld a, [hl]                                    ; $48c7: $7e
    ld bc, $8110                                  ; $48c8: $01 $10 $81
    add c                                         ; $48cb: $81
    inc b                                         ; $48cc: $04
    ld [$c244], sp                                ; $48cd: $08 $44 $c2
    ld bc, $0a55                                  ; $48d0: $01 $55 $0a
    adc d                                         ; $48d3: $8a
    adc d                                         ; $48d4: $8a
    dec d                                         ; $48d5: $15
    cp a                                          ; $48d6: $bf
    ld bc, $7f00                                  ; $48d7: $01 $00 $7f

jr_0a3_48da:
    ld bc, $a340                                  ; $48da: $01 $40 $a3
    inc b                                         ; $48dd: $04
    ld e, e                                       ; $48de: $5b
    ld b, e                                       ; $48df: $43
    cp e                                          ; $48e0: $bb
    inc bc                                        ; $48e1: $03
    ei                                            ; $48e2: $fb
    ld [bc], a                                    ; $48e3: $02
    ld [$f707], sp                                ; $48e4: $08 $07 $f7
    inc c                                         ; $48e7: $0c

jr_0a3_48e8:
    rrca                                          ; $48e8: $0f
    rst $08                                       ; $48e9: $cf
    ccf                                           ; $48ea: $3f
    ccf                                           ; $48eb: $3f
    inc b                                         ; $48ec: $04
    add hl, bc                                    ; $48ed: $09
    inc b                                         ; $48ee: $04
    jr jr_0a3_48e8                                ; $48ef: $18 $f7

    ldh a, [rSC]                                  ; $48f1: $f0 $02
    ld hl, sp-$08                                 ; $48f3: $f8 $f8
    rst $38                                       ; $48f5: $ff
    rst $38                                       ; $48f6: $ff
    xor $0e                                       ; $48f7: $ee $0e
    ld [bc], a                                    ; $48f9: $02
    jr z, jr_0a3_48da                             ; $48fa: $28 $de

    ld b, b                                       ; $48fc: $40
    ld e, $a4                                     ; $48fd: $1e $a4
    ld [$7c54], sp                                ; $48ff: $08 $54 $7c
    add d                                         ; $4902: $82
    add d                                         ; $4903: $82
    inc d                                         ; $4904: $14
    cp [hl]                                       ; $4905: $be
    ld hl, $beaa                                  ; $4906: $21 $aa $be
    inc b                                         ; $4909: $04
    ld [$7d55], sp                                ; $490a: $08 $55 $7d
    add e                                         ; $490d: $83
    add e                                         ; $490e: $83
    ld h, b                                       ; $490f: $60
    ld h, c                                       ; $4910: $61
    add d                                         ; $4911: $82
    ld hl, sp+$06                                 ; $4912: $f8 $06
    ld bc, $a701                                  ; $4914: $01 $01 $a7
    and a                                         ; $4917: $a7
    ld a, [$031c]                                 ; $4918: $fa $1c $03
    dec d                                         ; $491b: $15
    nop                                           ; $491c: $00
    ld [$40bf], a                                 ; $491d: $ea $bf $40
    ld a, l                                       ; $4920: $7d
    add d                                         ; $4921: $82
    nop                                           ; $4922: $00
    nop                                           ; $4923: $00
    daa                                           ; $4924: $27
    nop                                           ; $4925: $00
    daa                                           ; $4926: $27
    ld a, [$10ff]                                 ; $4927: $fa $ff $10
    rst $38                                       ; $492a: $ff
    ld d, d                                       ; $492b: $52
    xor l                                         ; $492c: $ad
    ld a, l                                       ; $492d: $7d
    ld [$ff82], sp                                ; $492e: $08 $82 $ff
    nop                                           ; $4931: $00
    cp $66                                        ; $4932: $fe $66
    inc b                                         ; $4934: $04
    rst $38                                       ; $4935: $ff
    rst $38                                       ; $4936: $ff
    or l                                          ; $4937: $b5
    nop                                           ; $4938: $00
    rst $38                                       ; $4939: $ff
    dec de                                        ; $493a: $1b
    rst $38                                       ; $493b: $ff
    or a                                          ; $493c: $b7
    ld a, a                                       ; $493d: $7f
    ld e, a                                       ; $493e: $5f
    cp a                                          ; $493f: $bf
    sub a                                         ; $4940: $97
    db $10                                        ; $4941: $10
    ld a, a                                       ; $4942: $7f
    sbc a                                         ; $4943: $9f
    ld a, a                                       ; $4944: $7f
    ld e, [hl]                                    ; $4945: $5e
    ld [bc], a                                    ; $4946: $02
    nop                                           ; $4947: $00
    call nc, $a800                                ; $4948: $d4 $00 $a8
    add b                                         ; $494b: $80
    sub $03                                       ; $494c: $d6 $03
    and d                                         ; $494e: $a2
    nop                                           ; $494f: $00
    push de                                       ; $4950: $d5
    nop                                           ; $4951: $00
    cp l                                          ; $4952: $bd
    ld b, d                                       ; $4953: $42
    ld d, l                                       ; $4954: $55
    ret nc                                        ; $4955: $d0

    sbc h                                         ; $4956: $9c
    inc b                                         ; $4957: $04
    ld d, b                                       ; $4958: $50
    dec c                                         ; $4959: $0d
    ld c, l                                       ; $495a: $4d
    ld c, [hl]                                    ; $495b: $4e
    ld [bc], a                                    ; $495c: $02
    db $e4                                        ; $495d: $e4
    dec de                                        ; $495e: $1b
    ld b, b                                       ; $495f: $40
    cp a                                          ; $4960: $bf
    ld d, b                                       ; $4961: $50
    ld e, a                                       ; $4962: $5f
    xor a                                         ; $4963: $af
    nop                                           ; $4964: $00
    rra                                           ; $4965: $1f
    ld l, $00                                     ; $4966: $2e $00
    rra                                           ; $4968: $1f
    rst $38                                       ; $4969: $ff
    ld d, a                                       ; $496a: $57
    rst $38                                       ; $496b: $ff
    halt                                          ; $496c: $76
    dec sp                                        ; $496d: $3b
    or b                                          ; $496e: $b0
    inc bc                                        ; $496f: $03
    call c, $9828                                 ; $4970: $dc $28 $98
    cpl                                           ; $4973: $2f
    dec d                                         ; $4974: $15
    call nc, Call_000_0400                        ; $4975: $d4 $00 $04
    nop                                           ; $4978: $00
    ld d, l                                       ; $4979: $55
    rrca                                          ; $497a: $0f
    ld d, h                                       ; $497b: $54
    ld a, [hl+]                                   ; $497c: $2a
    add c                                         ; $497d: $81
    add c                                         ; $497e: $81
    ldh a, [rBCPD]                                ; $497f: $f0 $69
    or [hl]                                       ; $4981: $b6
    ld [bc], a                                    ; $4982: $02
    or b                                          ; $4983: $b0
    rlca                                          ; $4984: $07
    jr nz, @+$53                                  ; $4985: $20 $51

    nop                                           ; $4987: $00
    xor e                                         ; $4988: $ab
    nop                                           ; $4989: $00
    nop                                           ; $498a: $00
    ldh [$e0], a                                  ; $498b: $e0 $e0
    ld e, a                                       ; $498d: $5f
    rst $38                                       ; $498e: $ff
    ld [$ff03], sp                                ; $498f: $08 $03 $ff
    ld c, d                                       ; $4992: $4a
    or l                                          ; $4993: $b5
    cp [hl]                                       ; $4994: $be
    ld b, c                                       ; $4995: $41
    rst $38                                       ; $4996: $ff
    ld d, d                                       ; $4997: $52
    inc b                                         ; $4998: $04
    cp b                                          ; $4999: $b8
    rrca                                          ; $499a: $0f
    add b                                         ; $499b: $80
    ld [de], a                                    ; $499c: $12
    ld [$ff04], sp                                ; $499d: $08 $04 $ff
    xor b                                         ; $49a0: $a8
    ld d, a                                       ; $49a1: $57
    db $fd                                        ; $49a2: $fd
    ld [bc], a                                    ; $49a3: $02
    cp [hl]                                       ; $49a4: $be
    ld [$6a41], sp                                ; $49a5: $08 $41 $6a
    sub l                                         ; $49a8: $95
    add b                                         ; $49a9: $80
    ld c, [hl]                                    ; $49aa: $4e
    inc bc                                        ; $49ab: $03
    dec hl                                        ; $49ac: $2b
    rst $38                                       ; $49ad: $ff
    ld a, a                                       ; $49ae: $7f
    nop                                           ; $49af: $00
    rst $38                                       ; $49b0: $ff
    rst $28                                       ; $49b1: $ef
    rst $38                                       ; $49b2: $ff
    sub $ff                                       ; $49b3: $d6 $ff
    dec l                                         ; $49b5: $2d
    rst $38                                       ; $49b6: $ff
    ld [hl+], a                                   ; $49b7: $22
    and b                                         ; $49b8: $a0
    ldh a, [$03]                                  ; $49b9: $f0 $03
    xor [hl]                                      ; $49bb: $ae
    ld [$e802], a                                 ; $49bc: $ea $02 $e8
    rst $38                                       ; $49bf: $ff
    ld d, d                                       ; $49c0: $52
    rst $38                                       ; $49c1: $ff
    add b                                         ; $49c2: $80
    add d                                         ; $49c3: $82
    ld b, e                                       ; $49c4: $43
    ld [bc], a                                    ; $49c5: $02
    rst $38                                       ; $49c6: $ff
    rst $38                                       ; $49c7: $ff
    ret nc                                        ; $49c8: $d0

    rst $38                                       ; $49c9: $ff
    and b                                         ; $49ca: $a0
    ld c, e                                       ; $49cb: $4b
    ld [bc], a                                    ; $49cc: $02
    stop                                          ; $49cd: $10 $00
    rst $28                                       ; $49cf: $ef
    nop                                           ; $49d0: $00
    rst $38                                       ; $49d1: $ff
    add h                                         ; $49d2: $84
    ld a, a                                       ; $49d3: $7f
    nop                                           ; $49d4: $00
    rst $38                                       ; $49d5: $ff
    ld e, b                                       ; $49d6: $58
    ld [$b0ff], sp                                ; $49d7: $08 $ff $b0
    rst $38                                       ; $49da: $ff
    ld h, b                                       ; $49db: $60
    ldh [rSC], a                                  ; $49dc: $e0 $02
    and b                                         ; $49de: $a0
    rst $38                                       ; $49df: $ff
    ld b, b                                       ; $49e0: $40
    sbc d                                         ; $49e1: $9a
    jr jr_0a3_49e4                                ; $49e2: $18 $00

jr_0a3_49e4:
    ld b, d                                       ; $49e4: $42
    db $fd                                        ; $49e5: $fd
    ld d, l                                       ; $49e6: $55
    dec b                                         ; $49e7: $05
    ld l, c                                       ; $49e8: $69
    ld [bc], a                                    ; $49e9: $02
    jr nz, @+$24                                  ; $49ea: $20 $22

    db $10                                        ; $49ec: $10
    ld bc, $ff2c                                  ; $49ed: $01 $2c $ff
    inc bc                                        ; $49f0: $03
    ld c, $10                                     ; $49f1: $0e $10
    nop                                           ; $49f3: $00
    inc h                                         ; $49f4: $24
    inc b                                         ; $49f5: $04
    rst $18                                       ; $49f6: $df
    add hl, bc                                    ; $49f7: $09
    rst $28                                       ; $49f8: $ef
    ldh a, [rTIMA]                                ; $49f9: $f0 $05
    rst $08                                       ; $49fb: $cf
    ldh a, [rP1]                                  ; $49fc: $f0 $00
    rst $38                                       ; $49fe: $ff
    ld [bc], a                                    ; $49ff: $02
    adc c                                         ; $4a00: $89
    ld [bc], a                                    ; $4a01: $02
    ldh a, [$da]                                  ; $4a02: $f0 $da
    dec b                                         ; $4a04: $05
    ld [bc], a                                    ; $4a05: $02
    rst $38                                       ; $4a06: $ff
    rst $38                                       ; $4a07: $ff
    rst $08                                       ; $4a08: $cf
    ccf                                           ; $4a09: $3f
    rst $20                                       ; $4a0a: $e7
    rra                                           ; $4a0b: $1f
    ld d, h                                       ; $4a0c: $54
    ld [$1a00], sp                                ; $4a0d: $08 $00 $1a
    rst $38                                       ; $4a10: $ff
    ld [$32f7], sp                                ; $4a11: $08 $f7 $32
    ld [$083c], sp                                ; $4a14: $08 $3c $08
    rlca                                          ; $4a17: $07
    ld [hl-], a                                   ; $4a18: $32
    inc bc                                        ; $4a19: $03
    rrca                                          ; $4a1a: $0f
    nop                                           ; $4a1b: $00
    rst $38                                       ; $4a1c: $ff
    inc c                                         ; $4a1d: $0c
    rst $38                                       ; $4a1e: $ff
    sbc [hl]                                      ; $4a1f: $9e
    ld a, l                                       ; $4a20: $7d
    dec de                                        ; $4a21: $1b
    db $fc                                        ; $4a22: $fc
    add hl, de                                    ; $4a23: $19
    nop                                           ; $4a24: $00
    db $fc                                        ; $4a25: $fc
    ld a, [de]                                    ; $4a26: $1a
    db $fc                                        ; $4a27: $fc
    rst $00                                       ; $4a28: $c7
    ld hl, sp-$51                                 ; $4a29: $f8 $af
    ldh a, [rRP]                                  ; $4a2b: $f0 $56
    nop                                           ; $4a2d: $00
    jp hl                                         ; $4a2e: $e9


    ccf                                           ; $4a2f: $3f
    ret nz                                        ; $4a30: $c0

    ld [hl], a                                    ; $4a31: $77
    add b                                         ; $4a32: $80
    db $eb                                        ; $4a33: $eb
    nop                                           ; $4a34: $00
    ld d, l                                       ; $4a35: $55
    ld [bc], a                                    ; $4a36: $02
    nop                                           ; $4a37: $00
    ld bc, $e700                                  ; $4a38: $01 $00 $e7
    rra                                           ; $4a3b: $1f
    ld c, e                                       ; $4a3c: $4b
    inc e                                         ; $4a3d: $1c
    inc b                                         ; $4a3e: $04
    ld c, e                                       ; $4a3f: $4b
    nop                                           ; $4a40: $00
    cp a                                          ; $4a41: $bf
    sub h                                         ; $4a42: $94
    ld a, a                                       ; $4a43: $7f
    inc bc                                        ; $4a44: $03
    db $fc                                        ; $4a45: $fc
    add a                                         ; $4a46: $87
    ld a, b                                       ; $4a47: $78
    sbc a                                         ; $4a48: $9f
    ld e, b                                       ; $4a49: $58
    ld h, b                                       ; $4a4a: $60
    xor [hl]                                      ; $4a4b: $ae
    nop                                           ; $4a4c: $00
    ei                                            ; $4a4d: $fb
    ld [hl], h                                    ; $4a4e: $74
    ld [$2848], sp                                ; $4a4f: $08 $48 $28
    jr @-$02                                      ; $4a52: $18 $fc

    jr jr_0a3_4a60                                ; $4a54: $18 $0a

    db $fc                                        ; $4a56: $fc
    dec e                                         ; $4a57: $1d
    cp $1f                                        ; $4a58: $fe $1f
    sub [hl]                                      ; $4a5a: $96
    inc b                                         ; $4a5b: $04
    rrca                                          ; $4a5c: $0f
    ld a, h                                       ; $4a5d: $7c
    inc bc                                        ; $4a5e: $03
    daa                                           ; $4a5f: $27

jr_0a3_4a60:
    ld b, b                                       ; $4a60: $40
    rst $18                                       ; $4a61: $df
    ld hl, sp+$0f                                 ; $4a62: $f8 $0f
    ld bc, $0700                                  ; $4a64: $01 $00 $07
    add b                                         ; $4a67: $80
    sbc e                                         ; $4a68: $9b
    call nz, $f600                                ; $4a69: $c4 $00 $f6
    add sp, -$16                                  ; $4a6c: $e8 $ea
    db $f4                                        ; $4a6e: $f4
    or $f8                                        ; $4a6f: $f6 $f8
    ld a, [$4000]                                 ; $4a71: $fa $00 $40
    push bc                                       ; $4a74: $c5
    ld a, $15                                     ; $4a75: $3e $15
    nop                                           ; $4a77: $00
    nop                                           ; $4a78: $00
    ld [bc], a                                    ; $4a79: $02
    ld bc, $0305                                  ; $4a7a: $01 $05 $03
    jr c, @+$09                                   ; $4a7d: $38 $07

    rrca                                          ; $4a7f: $0f
    or b                                          ; $4a80: $b0
    ld [$0842], sp                                ; $4a81: $08 $42 $08
    or d                                          ; $4a84: $b2
    ld [$ff80], sp                                ; $4a85: $08 $80 $ff
    ret nz                                        ; $4a88: $c0

    ld [$e4ff], sp                                ; $4a89: $08 $ff $e4
    ei                                            ; $4a8c: $fb
    ldh [$9e], a                                  ; $4a8d: $e0 $9e
    nop                                           ; $4a8f: $00
    ldh a, [rIE]                                  ; $4a90: $f0 $ff
    ld hl, sp+$05                                 ; $4a92: $f8 $05
    rst $38                                       ; $4a94: $ff
    cp b                                          ; $4a95: $b8
    ld a, a                                       ; $4a96: $7f
    ld hl, sp+$3f                                 ; $4a97: $f8 $3f
    ld [bc], a                                    ; $4a99: $02
    ld [$0679], sp                                ; $4a9a: $08 $79 $06
    nop                                           ; $4a9d: $00
    inc d                                         ; $4a9e: $14
    jr c, jr_0a3_4b20                             ; $4a9f: $38 $7f

    ld [hl], b                                    ; $4aa1: $70
    or h                                          ; $4aa2: $b4
    nop                                           ; $4aa3: $00
    ldh [rSC], a                                  ; $4aa4: $e0 $02
    nop                                           ; $4aa6: $00
    nop                                           ; $4aa7: $00
    rst $38                                       ; $4aa8: $ff
    ld l, b                                       ; $4aa9: $68
    ld c, b                                       ; $4aaa: $48
    cp [hl]                                       ; $4aab: $be
    ld a, [bc]                                    ; $4aac: $0a
    or h                                          ; $4aad: $b4
    db $10                                        ; $4aae: $10
    add b                                         ; $4aaf: $80
    db $f4                                        ; $4ab0: $f4
    nop                                           ; $4ab1: $00
    inc bc                                        ; $4ab2: $03
    rst $38                                       ; $4ab3: $ff
    ld bc, $de88                                  ; $4ab4: $01 $88 $de
    ld bc, $ff00                                  ; $4ab7: $01 $00 $ff
    add d                                         ; $4aba: $82
    ld a, [$fc20]                                 ; $4abb: $fa $20 $fc
    ld hl, sp-$06                                 ; $4abe: $f8 $fa
    or b                                          ; $4ac0: $b0
    db $db                                        ; $4ac1: $db
    nop                                           ; $4ac2: $00
    ccf                                           ; $4ac3: $3f
    ld d, $05                                     ; $4ac4: $16 $05
    ld a, [bc]                                    ; $4ac6: $0a
    add hl, bc                                    ; $4ac7: $09
    ld bc, $0ffe                                  ; $4ac8: $01 $fe $0f
    rra                                           ; $4acb: $1f
    ld e, h                                       ; $4acc: $5c
    ld e, a                                       ; $4acd: $5f
    jp c, $fc02                                   ; $4ace: $da $02 $fc

    ld a, [c]                                     ; $4ad1: $f2
    nop                                           ; $4ad2: $00
    ld a, [de]                                    ; $4ad3: $1a
    add hl, de                                    ; $4ad4: $19
    jr z, jr_0a3_4ae0                             ; $4ad5: $28 $09

    and h                                         ; $4ad7: $a4
    rst $38                                       ; $4ad8: $ff
    ld e, d                                       ; $4ad9: $5a
    ld [hl], b                                    ; $4ada: $70
    sbc $05                                       ; $4adb: $de $05
    ld e, h                                       ; $4add: $5c
    inc h                                         ; $4ade: $24
    inc d                                         ; $4adf: $14

jr_0a3_4ae0:
    add b                                         ; $4ae0: $80
    jr z, jr_0a3_4b27                             ; $4ae1: $28 $44

    add $00                                       ; $4ae3: $c6 $00
    add c                                         ; $4ae5: $81
    ret z                                         ; $4ae6: $c8

    ld b, h                                       ; $4ae7: $44
    ld bc, $1940                                  ; $4ae8: $01 $40 $19
    jr z, @-$07                                   ; $4aeb: $28 $f7

    ld c, b                                       ; $4aed: $48
    add hl, de                                    ; $4aee: $19
    db $10                                        ; $4aef: $10
    rst $28                                       ; $4af0: $ef
    xor a                                         ; $4af1: $af
    and b                                         ; $4af2: $a0
    ld l, b                                       ; $4af3: $68
    inc b                                         ; $4af4: $04
    jp nc, $056a                                  ; $4af5: $d2 $6a $05

    dec bc                                        ; $4af8: $0b
    db $f4                                        ; $4af9: $f4
    ld d, a                                       ; $4afa: $57
    xor b                                         ; $4afb: $a8
    cp l                                          ; $4afc: $bd
    ld [bc], a                                    ; $4afd: $02
    ld b, b                                       ; $4afe: $40
    ld l, b                                       ; $4aff: $68
    add b                                         ; $4b00: $80
    db $e4                                        ; $4b01: $e4
    rst $38                                       ; $4b02: $ff
    ld [hl], d                                    ; $4b03: $72
    ld [de], a                                    ; $4b04: $12
    dec b                                         ; $4b05: $05
    rla                                           ; $4b06: $17
    add hl, bc                                    ; $4b07: $09
    rst $38                                       ; $4b08: $ff
    add b                                         ; $4b09: $80
    ld a, a                                       ; $4b0a: $7f
    push de                                       ; $4b0b: $d5
    ld e, b                                       ; $4b0c: $58
    rlca                                          ; $4b0d: $07
    xor l                                         ; $4b0e: $ad
    ld [bc], a                                    ; $4b0f: $02
    ld [hl], b                                    ; $4b10: $70
    add hl, bc                                    ; $4b11: $09
    xor b                                         ; $4b12: $a8
    ld a, d                                       ; $4b13: $7a
    add hl, bc                                    ; $4b14: $09
    rst $38                                       ; $4b15: $ff
    or d                                          ; $4b16: $b2
    ld bc, $24bb                                  ; $4b17: $01 $bb $24
    ld [bc], a                                    ; $4b1a: $02
    db $f4                                        ; $4b1b: $f4
    nop                                           ; $4b1c: $00
    ld e, d                                       ; $4b1d: $5a
    nop                                           ; $4b1e: $00

jr_0a3_4b1f:
    add b                                         ; $4b1f: $80

jr_0a3_4b20:
    cp a                                          ; $4b20: $bf
    ld b, b                                       ; $4b21: $40
    ld l, l                                       ; $4b22: $6d
    sub b                                         ; $4b23: $90
    ld d, a                                       ; $4b24: $57
    xor b                                         ; $4b25: $a8
    dec hl                                        ; $4b26: $2b

jr_0a3_4b27:
    nop                                           ; $4b27: $00
    call nc, $e857                                ; $4b28: $d4 $57 $e8
    and d                                         ; $4b2b: $a2
    db $fd                                        ; $4b2c: $fd
    ld d, $01                                     ; $4b2d: $16 $01
    dec bc                                        ; $4b2f: $0b
    jr nz, jr_0a3_4b32                            ; $4b30: $20 $00

jr_0a3_4b32:
    ld b, [hl]                                    ; $4b32: $46
    db $ec                                        ; $4b33: $ec
    ld b, $45                                     ; $4b34: $06 $45
    nop                                           ; $4b36: $00
    sub d                                         ; $4b37: $92
    nop                                           ; $4b38: $00
    ld l, c                                       ; $4b39: $69
    nop                                           ; $4b3a: $00
    nop                                           ; $4b3b: $00
    ei                                            ; $4b3c: $fb
    nop                                           ; $4b3d: $00
    cp e                                          ; $4b3e: $bb
    ld a, a                                       ; $4b3f: $7f
    rla                                           ; $4b40: $17
    rst $38                                       ; $4b41: $ff
    cp a                                          ; $4b42: $bf
    db $10                                        ; $4b43: $10
    ld a, a                                       ; $4b44: $7f
    ld d, a                                       ; $4b45: $57
    cp a                                          ; $4b46: $bf
    ld a, d                                       ; $4b47: $7a
    ld [bc], a                                    ; $4b48: $02
    ccf                                           ; $4b49: $3f
    sbc a                                         ; $4b4a: $9f
    ld a, a                                       ; $4b4b: $7f
    rst $18                                       ; $4b4c: $df
    ld [hl], $3f                                  ; $4b4d: $36 $3f
    call nz, Call_000_313a                        ; $4b4f: $c4 $3a $31
    ld a, h                                       ; $4b52: $7c
    jr @+$01                                      ; $4b53: $18 $ff

    and $01                                       ; $4b55: $e6 $01
    ld [$bf01], sp                                ; $4b57: $08 $01 $bf
    sub e                                         ; $4b5a: $93
    inc b                                         ; $4b5b: $04
    jr jr_0a3_4b1f                                ; $4b5c: $18 $c1

    cp a                                          ; $4b5e: $bf
    scf                                           ; $4b5f: $37
    inc c                                         ; $4b60: $0c
    xor d                                         ; $4b61: $aa
    ld d, l                                       ; $4b62: $55
    sub $19                                       ; $4b63: $d6 $19
    ld c, d                                       ; $4b65: $4a
    inc c                                         ; $4b66: $0c
    sbc l                                         ; $4b67: $9d
    ld a, [bc]                                    ; $4b68: $0a
    inc b                                         ; $4b69: $04
    rst $38                                       ; $4b6a: $ff
    xor e                                         ; $4b6b: $ab
    ld l, d                                       ; $4b6c: $6a
    inc bc                                        ; $4b6d: $03
    ld hl, sp+$08                                 ; $4b6e: $f8 $08
    ld a, d                                       ; $4b70: $7a
    dec bc                                        ; $4b71: $0b
    add e                                         ; $4b72: $83
    inc h                                         ; $4b73: $24
    nop                                           ; $4b74: $00
    add b                                         ; $4b75: $80
    inc b                                         ; $4b76: $04
    ld c, b                                       ; $4b77: $48
    ld d, h                                       ; $4b78: $54
    adc e                                         ; $4b79: $8b
    cp $01                                        ; $4b7a: $fe $01
    ld e, e                                       ; $4b7c: $5b
    nop                                           ; $4b7d: $00
    cpl                                           ; $4b7e: $2f
    ld [$9500], sp                                ; $4b7f: $08 $00 $95
    nop                                           ; $4b82: $00
    ld c, d                                       ; $4b83: $4a
    xor [hl]                                      ; $4b84: $ae
    ld bc, $0004                                  ; $4b85: $01 $04 $00
    add hl, sp                                    ; $4b88: $39
    nop                                           ; $4b89: $00
    rst $00                                       ; $4b8a: $c7
    call c, Call_0a3_7703                         ; $4b8b: $dc $03 $77
    ld bc, $01aa                                  ; $4b8e: $01 $aa $01
    ld b, a                                       ; $4b91: $47
    nop                                           ; $4b92: $00
    ld bc, $0192                                  ; $4b93: $01 $92 $01
    ld [bc], a                                    ; $4b96: $02
    ld bc, $0106                                  ; $4b97: $01 $06 $01
    rst $00                                       ; $4b9a: $c7
    inc e                                         ; $4b9b: $1c
    rst $38                                       ; $4b9c: $ff
    db $e3                                        ; $4b9d: $e3
    rst $18                                       ; $4b9e: $df
    inc b                                         ; $4b9f: $04
    ld c, b                                       ; $4ba0: $48
    adc h                                         ; $4ba1: $8c
    ld hl, $05a0                                  ; $4ba2: $21 $a0 $05
    ld [bc], a                                    ; $4ba5: $02
    nop                                           ; $4ba6: $00
    ld a, [de]                                    ; $4ba7: $1a
    xor e                                         ; $4ba8: $ab
    nop                                           ; $4ba9: $00
    ld a, [bc]                                    ; $4baa: $0a
    sub [hl]                                      ; $4bab: $96
    ld bc, $2802                                  ; $4bac: $01 $02 $28
    ld b, d                                       ; $4baf: $42
    jr nc, jr_0a3_4bb2                            ; $4bb0: $30 $00

jr_0a3_4bb2:
    ld [de], a                                    ; $4bb2: $12
    jr z, jr_0a3_4bb6                             ; $4bb3: $28 $01

    cpl                                           ; $4bb5: $2f

jr_0a3_4bb6:
    ld d, $00                                     ; $4bb6: $16 $00
    ei                                            ; $4bb8: $fb
    ld sp, $aa04                                  ; $4bb9: $31 $04 $aa
    ld de, $00fb                                  ; $4bbc: $11 $fb $00
    nop                                           ; $4bbf: $00
    xor [hl]                                      ; $4bc0: $ae
    ld de, $11ea                                  ; $4bc1: $11 $ea $11
    ld b, d                                       ; $4bc4: $42
    ld bc, $0213                                  ; $4bc5: $01 $13 $02
    ld bc, $01a2                                  ; $4bc8: $01 $a2 $01
    or a                                          ; $4bcb: $b7
    ld bc, $04e6                                  ; $4bcc: $01 $e6 $04
    nop                                           ; $4bcf: $00
    or [hl]                                       ; $4bd0: $b6
    nop                                           ; $4bd1: $00
    ld bc, $01fe                                  ; $4bd2: $01 $fe $01
    dec b                                         ; $4bd5: $05
    dec b                                         ; $4bd6: $05
    dec bc                                        ; $4bd7: $0b
    dec bc                                        ; $4bd8: $0b
    ld h, $00                                     ; $4bd9: $26 $00
    daa                                           ; $4bdb: $27
    ld a, [bc]                                    ; $4bdc: $0a
    dec bc                                        ; $4bdd: $0b
    sub a                                         ; $4bde: $97
    sub a                                         ; $4bdf: $97
    ld l, $2f                                     ; $4be0: $2e $2f
    ld d, h                                       ; $4be2: $54
    nop                                           ; $4be3: $00
    ld d, a                                       ; $4be4: $57
    xor [hl]                                      ; $4be5: $ae
    xor a                                         ; $4be6: $af
    ld a, [hl-]                                   ; $4be7: $3a
    ret nz                                        ; $4be8: $c0

    ld d, h                                       ; $4be9: $54
    and b                                         ; $4bea: $a0
    jr z, jr_0a3_4bed                             ; $4beb: $28 $00

jr_0a3_4bed:
    ret nz                                        ; $4bed: $c0

    ld [hl], b                                    ; $4bee: $70
    add b                                         ; $4bef: $80
    xor b                                         ; $4bf0: $a8
    ld b, b                                       ; $4bf1: $40
    ld [hl], c                                    ; $4bf2: $71
    add b                                         ; $4bf3: $80
    cp d                                          ; $4bf4: $ba
    add b                                         ; $4bf5: $80
    ret nz                                        ; $4bf6: $c0

    ld b, $70                                     ; $4bf7: $06 $70
    rrca                                          ; $4bf9: $0f
    ld h, c                                       ; $4bfa: $61
    rra                                           ; $4bfb: $1f
    ld [hl], d                                    ; $4bfc: $72
    rrca                                          ; $4bfd: $0f
    push hl                                       ; $4bfe: $e5
    ld [bc], a                                    ; $4bff: $02
    rra                                           ; $4c00: $1f
    ld [c], a                                     ; $4c01: $e2

Call_0a3_4c02:
    rra                                           ; $4c02: $1f
    pop bc                                        ; $4c03: $c1
    ccf                                           ; $4c04: $3f
    db $e3                                        ; $4c05: $e3
    inc b                                         ; $4c06: $04
    nop                                           ; $4c07: $00
    ld hl, $fe00                                  ; $4c08: $21 $00 $fe
    ld d, d                                       ; $4c0b: $52
    db $fd                                        ; $4c0c: $fd
    jp hl                                         ; $4c0d: $e9


    or $c2                                        ; $4c0e: $f6 $c2
    rst $38                                       ; $4c10: $ff
    and c                                         ; $4c11: $a1
    nop                                           ; $4c12: $00
    cp $c8                                        ; $4c13: $fe $c8
    rst $30                                       ; $4c15: $f7
    sub l                                         ; $4c16: $95
    ld a, [$ff00]                                 ; $4c17: $fa $00 $ff
    ld e, h                                       ; $4c1a: $5c
    nop                                           ; $4c1b: $00
    ld e, a                                       ; $4c1c: $5f
    xor a                                         ; $4c1d: $af
    xor a                                         ; $4c1e: $af
    ld e, l                                       ; $4c1f: $5d
    ld e, a                                       ; $4c20: $5f
    xor d                                         ; $4c21: $aa
    xor a                                         ; $4c22: $af
    call nc, $df00                                ; $4c23: $d4 $00 $df
    cp b                                          ; $4c26: $b8
    cp a                                          ; $4c27: $bf
    ret nc                                        ; $4c28: $d0

    rst $18                                       ; $4c29: $df
    db $f4                                        ; $4c2a: $f4
    rst $38                                       ; $4c2b: $ff
    dec l                                         ; $4c2c: $2d
    ld a, [bc]                                    ; $4c2d: $0a
    jp nc, $f946                                  ; $4c2e: $d2 $46 $f9

    and h                                         ; $4c31: $a4
    cp [hl]                                       ; $4c32: $be
    ld b, $47                                     ; $4c33: $06 $47
    xor $02                                       ; $4c35: $ee $02
    ld d, b                                       ; $4c37: $50
    nop                                           ; $4c38: $00
    xor a                                         ; $4c39: $af
    add sp, $17                                   ; $4c3a: $e8 $17
    ld h, e                                       ; $4c3c: $63
    sbc a                                         ; $4c3d: $9f
    push bc                                       ; $4c3e: $c5
    ccf                                           ; $4c3f: $3f
    ld a, [bc]                                    ; $4c40: $0a
    add b                                         ; $4c41: $80
    ld c, $00                                     ; $4c42: $0e $00
    xor d                                         ; $4c44: $aa
    rst $38                                       ; $4c45: $ff
    push af                                       ; $4c46: $f5
    rst $38                                       ; $4c47: $ff
    ld e, [hl]                                    ; $4c48: $5e
    rst $38                                       ; $4c49: $ff
    inc l                                         ; $4c4a: $2c
    nop                                           ; $4c4b: $00
    rst $38                                       ; $4c4c: $ff
    ld [hl+], a                                   ; $4c4d: $22
    db $dd                                        ; $4c4e: $dd
    dec b                                         ; $4c4f: $05
    ld a, [$fc83]                                 ; $4c50: $fa $83 $fc
    ld d, $00                                     ; $4c53: $16 $00
    add sp, -$71                                  ; $4c55: $e8 $8f
    ldh a, [rNR21]                                ; $4c57: $f0 $16
    jp hl                                         ; $4c59: $e9


    ld b, l                                       ; $4c5a: $45
    ld a, [$280a]                                 ; $4c5b: $fa $0a $28
    push af                                       ; $4c5e: $f5
    ld a, [$0606]                                 ; $4c5f: $fa $06 $06
    ld [$1320], a                                 ; $4c62: $ea $20 $13
    ld a, [c]                                     ; $4c65: $f2
    db $fd                                        ; $4c66: $fd
    push hl                                       ; $4c67: $e5
    nop                                           ; $4c68: $00
    ld a, [$fdc2]                                 ; $4c69: $fa $c2 $fd
    ld [hl], l                                    ; $4c6c: $75
    adc d                                         ; $4c6d: $8a
    ld a, $c1                                     ; $4c6e: $3e $c1
    ld e, e                                       ; $4c70: $5b
    nop                                           ; $4c71: $00
    and b                                         ; $4c72: $a0
    or a                                          ; $4c73: $b7
    ld b, b                                       ; $4c74: $40
    ld l, e                                       ; $4c75: $6b
    add b                                         ; $4c76: $80
    or a                                          ; $4c77: $b7
    ld b, b                                       ; $4c78: $40
    ld h, a                                       ; $4c79: $67
    add b                                         ; $4c7a: $80
    or h                                          ; $4c7b: $b4
    ld [bc], a                                    ; $4c7c: $02
    ld d, $ff                                     ; $4c7d: $16 $ff
    adc h                                         ; $4c7f: $8c
    ld a, a                                       ; $4c80: $7f
    ld c, h                                       ; $4c81: $4c
    cp a                                          ; $4c82: $bf
    adc d                                         ; $4c83: $8a
    nop                                           ; $4c84: $00
    ld a, a                                       ; $4c85: $7f
    inc e                                         ; $4c86: $1c
    rst $38                                       ; $4c87: $ff
    xor d                                         ; $4c88: $aa
    ld a, a                                       ; $4c89: $7f
    sbc l                                         ; $4c8a: $9d
    ld a, a                                       ; $4c8b: $7f
    dec sp                                        ; $4c8c: $3b
    ld [$42ff], sp                                ; $4c8d: $08 $ff $42
    cp a                                          ; $4c90: $bf
    rlca                                          ; $4c91: $07
    ld d, b                                       ; $4c92: $50
    inc bc                                        ; $4c93: $03
    ld e, l                                       ; $4c94: $5d
    rst $38                                       ; $4c95: $ff
    cp d                                          ; $4c96: $ba
    and b                                         ; $4c97: $a0
    ld c, b                                       ; $4c98: $48
    inc bc                                        ; $4c99: $03
    and c                                         ; $4c9a: $a1
    sub e                                         ; $4c9b: $93
    dec b                                         ; $4c9c: $05
    db $d3                                        ; $4c9d: $d3
    db $fc                                        ; $4c9e: $fc
    rst $20                                       ; $4c9f: $e7
    ld hl, sp-$32                                 ; $4ca0: $f8 $ce
    nop                                           ; $4ca2: $00
    ldh a, [$df]                                  ; $4ca3: $f0 $df
    ldh [$ca], a                                  ; $4ca5: $e0 $ca
    db $f4                                        ; $4ca7: $f4
    rst $10                                       ; $4ca8: $d7
    add sp, -$75                                  ; $4ca9: $e8 $8b
    ld [bc], a                                    ; $4cab: $02
    db $f4                                        ; $4cac: $f4
    add l                                         ; $4cad: $85
    ld a, [$00c7]                                 ; $4cae: $fa $c7 $00
    ld b, e                                       ; $4cb1: $43
    ld [bc], a                                    ; $4cb2: $02
    inc b                                         ; $4cb3: $04
    rlca                                          ; $4cb4: $07
    nop                                           ; $4cb5: $00
    nop                                           ; $4cb6: $00
    adc [hl]                                      ; $4cb7: $8e
    ld bc, $0255                                  ; $4cb8: $01 $55 $02
    xor [hl]                                      ; $4cbb: $ae
    ld bc, $20dc                                  ; $4cbc: $01 $dc $20
    inc bc                                        ; $4cbf: $03
    sbc [hl]                                      ; $4cc0: $9e
    ld a, [hl-]                                   ; $4cc1: $3a
    nop                                           ; $4cc2: $00
    inc a                                         ; $4cc3: $3c
    rst $38                                       ; $4cc4: $ff
    jr @+$01                                      ; $4cc5: $18 $ff

    sub h                                         ; $4cc7: $94
    rrca                                          ; $4cc8: $0f
    ld a, a                                       ; $4cc9: $7f
    jr c, @+$01                                   ; $4cca: $38 $ff

    ld [hl-], a                                   ; $4ccc: $32
    ld l, d                                       ; $4ccd: $6a
    inc bc                                        ; $4cce: $03
    ld h, b                                       ; $4ccf: $60
    dec de                                        ; $4cd0: $1b
    or h                                          ; $4cd1: $b4
    ld [bc], a                                    ; $4cd2: $02
    ld e, d                                       ; $4cd3: $5a
    inc hl                                        ; $4cd4: $23
    ld b, c                                       ; $4cd5: $41
    and l                                         ; $4cd6: $a5
    xor h                                         ; $4cd7: $ac
    rlca                                          ; $4cd8: $07
    ld h, b                                       ; $4cd9: $60
    add b                                         ; $4cda: $80
    ldh [rP1], a                                  ; $4cdb: $e0 $00
    ld [hl], b                                    ; $4cdd: $70
    inc b                                         ; $4cde: $04
    nop                                           ; $4cdf: $00
    nop                                           ; $4ce0: $00
    ld d, b                                       ; $4ce1: $50
    add b                                         ; $4ce2: $80
    db $e3                                        ; $4ce3: $e3
    nop                                           ; $4ce4: $00
    ld a, c                                       ; $4ce5: $79
    rlca                                          ; $4ce6: $07
    cp h                                          ; $4ce7: $bc
    inc bc                                        ; $4ce8: $03
    nop                                           ; $4ce9: $00
    ld e, l                                       ; $4cea: $5d
    inc bc                                        ; $4ceb: $03
    ld a, [hl-]                                   ; $4cec: $3a
    dec b                                         ; $4ced: $05
    inc l                                         ; $4cee: $2c
    inc bc                                        ; $4cef: $03
    ld e, c                                       ; $4cf0: $59
    rlca                                          ; $4cf1: $07
    nop                                           ; $4cf2: $00
    or b                                          ; $4cf3: $b0
    rrca                                          ; $4cf4: $0f
    db $f4                                        ; $4cf5: $f4
    dec bc                                        ; $4cf6: $0b
    ld a, d                                       ; $4cf7: $7a
    db $fd                                        ; $4cf8: $fd
    push af                                       ; $4cf9: $f5
    cp $00                                        ; $4cfa: $fe $00
    ld l, e                                       ; $4cfc: $6b
    db $fc                                        ; $4cfd: $fc
    ld h, l                                       ; $4cfe: $65
    ld a, [$f4cb]                                 ; $4cff: $fa $cb $f4
    ld h, a                                       ; $4d02: $67
    ld hl, sp+$04                                 ; $4d03: $f8 $04
    call $96f0                                    ; $4d05: $cd $f0 $96
    add sp, -$03                                  ; $4d08: $e8 $fd
    ld b, $07                                     ; $4d0a: $06 $07
    db $fc                                        ; $4d0c: $fc
    nop                                           ; $4d0d: $00
    ld b, b                                       ; $4d0e: $40
    ld d, b                                       ; $4d0f: $50
    ld [hl], d                                    ; $4d10: $72
    inc d                                         ; $4d11: $14
    dec b                                         ; $4d12: $05
    nop                                           ; $4d13: $00
    xor d                                         ; $4d14: $aa
    ld bc, $00c5                                  ; $4d15: $01 $c5 $00
    nop                                           ; $4d18: $00
    rlc b                                         ; $4d19: $cb $00
    ld a, a                                       ; $4d1b: $7f
    nop                                           ; $4d1c: $00
    or [hl]                                       ; $4d1d: $b6
    add hl, bc                                    ; $4d1e: $09
    add sp, $17                                   ; $4d1f: $e8 $17
    nop                                           ; $4d21: $00
    jp nz, $973f                                  ; $4d22: $c2 $3f $97

    ld a, a                                       ; $4d25: $7f
    dec a                                         ; $4d26: $3d
    rst $38                                       ; $4d27: $ff
    ld l, c                                       ; $4d28: $69
    rla                                           ; $4d29: $17
    nop                                           ; $4d2a: $00
    db $d3                                        ; $4d2b: $d3
    cpl                                           ; $4d2c: $2f
    push bc                                       ; $4d2d: $c5
    ccf                                           ; $4d2e: $3f
    xor e                                         ; $4d2f: $ab
    ld a, a                                       ; $4d30: $7f
    ld d, $ff                                     ; $4d31: $16 $ff
    ld b, b                                       ; $4d33: $40
    xor a                                         ; $4d34: $af
    adc e                                         ; $4d35: $8b
    ld b, $42                                     ; $4d36: $06 $42
    rst $38                                       ; $4d38: $ff
    ld c, e                                       ; $4d39: $4b
    db $f4                                        ; $4d3a: $f4
    dec d                                         ; $4d3b: $15
    ld [$8a01], a                                 ; $4d3c: $ea $01 $8a
    push af                                       ; $4d3f: $f5
    ld hl, $90fe                                  ; $4d40: $21 $fe $90
    rst $38                                       ; $4d43: $ff
    ld b, h                                       ; $4d44: $44
    add sp, $00                                   ; $4d45: $e8 $00
    nop                                           ; $4d47: $00
    cp l                                          ; $4d48: $bd
    rst $38                                       ; $4d49: $ff
    rst $10                                       ; $4d4a: $d7
    nop                                           ; $4d4b: $00
    ei                                            ; $4d4c: $fb
    inc b                                         ; $4d4d: $04
    cp a                                          ; $4d4e: $bf
    ld b, b                                       ; $4d4f: $40
    jr nz, jr_0a3_4da9                            ; $4d50: $20 $57

    xor b                                         ; $4d52: $a8
    ld c, [hl]                                    ; $4d53: $4e
    dec b                                         ; $4d54: $05
    xor d                                         ; $4d55: $aa
    ld [$44f7], sp                                ; $4d56: $08 $f7 $44
    ei                                            ; $4d59: $fb
    ld b, d                                       ; $4d5a: $42
    ld [$0334], a                                 ; $4d5b: $ea $34 $03
    add b                                         ; $4d5e: $80
    rst $38                                       ; $4d5f: $ff
    dec b                                         ; $4d60: $05
    cp $f4                                        ; $4d61: $fe $f4
    inc bc                                        ; $4d63: $03
    rst $18                                       ; $4d64: $df
    adc d                                         ; $4d65: $8a
    db $fc                                        ; $4d66: $fc
    dec de                                        ; $4d67: $1b
    ld b, b                                       ; $4d68: $40
    rst $38                                       ; $4d69: $ff
    ld [bc], a                                    ; $4d6a: $02
    ld b, $14                                     ; $4d6b: $06 $14
    add h                                         ; $4d6d: $84
    sbc b                                         ; $4d6e: $98
    inc de                                        ; $4d6f: $13
    ld d, a                                       ; $4d70: $57
    dec [hl]                                      ; $4d71: $35
    rst $38                                       ; $4d72: $ff
    dec bc                                        ; $4d73: $0b
    ld [hl+], a                                   ; $4d74: $22
    inc bc                                        ; $4d75: $03
    db $10                                        ; $4d76: $10
    inc c                                         ; $4d77: $0c
    ld [de], a                                    ; $4d78: $12
    ld [hl-], a                                   ; $4d79: $32
    inc b                                         ; $4d7a: $04
    nop                                           ; $4d7b: $00
    db $f4                                        ; $4d7c: $f4
    nop                                           ; $4d7d: $00
    ld de, $ffc0                                  ; $4d7e: $11 $c0 $ff
    ld [hl], l                                    ; $4d81: $75
    cp $00                                        ; $4d82: $fe $00
    dec c                                         ; $4d84: $0d
    rst $38                                       ; $4d85: $ff
    inc hl                                        ; $4d86: $23
    ld a, [hl-]                                   ; $4d87: $3a
    inc bc                                        ; $4d88: $03
    ld d, h                                       ; $4d89: $54
    ld b, b                                       ; $4d8a: $40
    ld a, [bc]                                    ; $4d8b: $0a
    ld b, $80                                     ; $4d8c: $06 $80
    ld c, h                                       ; $4d8e: $4c
    inc d                                         ; $4d8f: $14
    inc bc                                        ; $4d90: $03
    sub $07                                       ; $4d91: $d6 $07
    dec de                                        ; $4d93: $1b
    db $fc                                        ; $4d94: $fc
    jr nc, jr_0a3_4dc7                            ; $4d95: $30 $30

    ld hl, sp+$40                                 ; $4d97: $f8 $40
    inc e                                         ; $4d99: $1c
    ld a, [de]                                    ; $4d9a: $1a
    ld d, $ff                                     ; $4d9b: $16 $ff
    ld e, e                                       ; $4d9d: $5b
    rlca                                          ; $4d9e: $07
    inc bc                                        ; $4d9f: $03
    ld e, e                                       ; $4da0: $5b
    ld bc, $1858                                  ; $4da1: $01 $58 $18
    ld bc, $039a                                  ; $4da4: $01 $9a $03
    sub h                                         ; $4da7: $94
    dec bc                                        ; $4da8: $0b

jr_0a3_4da9:
    db $fc                                        ; $4da9: $fc
    nop                                           ; $4daa: $00
    ld sp, $1c48                                  ; $4dab: $31 $48 $1c
    nop                                           ; $4dae: $00
    jr nz, @+$01                                  ; $4daf: $20 $ff

    ld e, $01                                     ; $4db1: $1e $01
    inc l                                         ; $4db3: $2c
    inc bc                                        ; $4db4: $03
    ld e, d                                       ; $4db5: $5a
    dec b                                         ; $4db6: $05
    ld bc, $0bb5                                  ; $4db7: $01 $b5 $0b
    ld l, b                                       ; $4dba: $68
    rla                                           ; $4dbb: $17
    jp nc, $a92f                                  ; $4dbc: $d2 $2f $a9

    sbc h                                         ; $4dbf: $9c
    rlca                                          ; $4dc0: $07
    nop                                           ; $4dc1: $00
    jr z, @+$01                                   ; $4dc2: $28 $ff

    sub h                                         ; $4dc4: $94
    ld a, e                                       ; $4dc5: $7b
    dec hl                                        ; $4dc6: $2b

jr_0a3_4dc7:
    db $f4                                        ; $4dc7: $f4
    halt                                          ; $4dc8: $76
    add sp, $00                                   ; $4dc9: $e8 $00
    ld c, l                                       ; $4dcb: $4d

Call_0a3_4dcc:
    ldh a, [$da]                                  ; $4dcc: $f0 $da
    ldh [$ae], a                                  ; $4dce: $e0 $ae
    ret nc                                        ; $4dd0: $d0

    ld e, l                                       ; $4dd1: $5d
    and b                                         ; $4dd2: $a0
    jr jr_0a3_4e32                                ; $4dd3: $18 $5d

    and b                                         ; $4dd5: $a0
    ld [$0558], a                                 ; $4dd6: $ea $58 $05
    rst $20                                       ; $4dd9: $e7
    inc c                                         ; $4dda: $0c
    stop                                          ; $4ddb: $10 $00
    xor d                                         ; $4ddd: $aa
    add b                                         ; $4dde: $80
    ld b, d                                       ; $4ddf: $42
    inc b                                         ; $4de0: $04
    db $f4                                        ; $4de1: $f4
    dec bc                                        ; $4de2: $0b
    cp d                                          ; $4de3: $ba
    dec b                                         ; $4de4: $05
    rra                                           ; $4de5: $1f
    nop                                           ; $4de6: $00
    ld c, d                                       ; $4de7: $4a
    ld [$9605], sp                                ; $4de8: $08 $05 $96
    ld bc, $662d                                  ; $4deb: $01 $2d $66
    dec b                                         ; $4dee: $05
    ld a, [bc]                                    ; $4def: $0a
    nop                                           ; $4df0: $00
    and d                                         ; $4df1: $a2
    nop                                           ; $4df2: $00
    ld e, a                                       ; $4df3: $5f
    ld d, a                                       ; $4df4: $57
    cp a                                          ; $4df5: $bf
    add [hl]                                      ; $4df6: $86
    ld a, a                                       ; $4df7: $7f
    ld l, a                                       ; $4df8: $6f
    cp a                                          ; $4df9: $bf
    adc l                                         ; $4dfa: $8d
    jr nz, jr_0a3_4e7c                            ; $4dfb: $20 $7f

    ld a, [de]                                    ; $4dfd: $1a
    ld h, h                                       ; $4dfe: $64
    ld bc, $ff28                                  ; $4dff: $01 $28 $ff
    scf                                           ; $4e02: $37
    ret z                                         ; $4e03: $c8

    ld e, [hl]                                    ; $4e04: $5e
    ld de, $2fa0                                  ; $4e05: $11 $a0 $2f
    ret nc                                        ; $4e08: $d0

    ld a, [hl-]                                   ; $4e09: $3a
    dec bc                                        ; $4e0a: $0b
    pop af                                        ; $4e0b: $f1
    cp $2a                                        ; $4e0c: $fe $2a
    ret nz                                        ; $4e0e: $c0

    rlca                                          ; $4e0f: $07
    nop                                           ; $4e10: $00
    xor $00                                       ; $4e11: $ee $00
    rst $30                                       ; $4e13: $f7
    nop                                           ; $4e14: $00
    cp $00                                        ; $4e15: $fe $00
    db $db                                        ; $4e17: $db
    jr nz, jr_0a3_4e1a                            ; $4e18: $20 $00

jr_0a3_4e1a:
    rst $28                                       ; $4e1a: $ef
    db $10                                        ; $4e1b: $10
    ld d, a                                       ; $4e1c: $57
    xor b                                         ; $4e1d: $a8
    cpl                                           ; $4e1e: $2f
    ret nc                                        ; $4e1f: $d0

    rla                                           ; $4e20: $17
    add sp, $41                                   ; $4e21: $e8 $41
    add c                                         ; $4e23: $81
    ret c                                         ; $4e24: $d8

    ld [bc], a                                    ; $4e25: $02
    push de                                       ; $4e26: $d5
    nop                                           ; $4e27: $00
    rst $28                                       ; $4e28: $ef
    nop                                           ; $4e29: $00
    ld a, d                                       ; $4e2a: $7a
    ld c, [hl]                                    ; $4e2b: $4e
    rlca                                          ; $4e2c: $07
    inc b                                         ; $4e2d: $04
    ld l, e                                       ; $4e2e: $6b
    add h                                         ; $4e2f: $84
    or a                                          ; $4e30: $b7
    ld c, b                                       ; $4e31: $48

jr_0a3_4e32:
    ld [hl], d                                    ; $4e32: $72
    or $01                                        ; $4e33: $f6 $01
    ld c, e                                       ; $4e35: $4b
    db $f4                                        ; $4e36: $f4
    nop                                           ; $4e37: $00
    rst $00                                       ; $4e38: $c7
    ld hl, sp-$57                                 ; $4e39: $f8 $a9
    db $f4                                        ; $4e3b: $f4
    add [hl]                                      ; $4e3c: $86
    ld hl, sp-$54                                 ; $4e3d: $f8 $ac
    ldh a, [rP1]                                  ; $4e3f: $f0 $00
    rst $10                                       ; $4e41: $d7
    ld hl, sp-$7d                                 ; $4e42: $f8 $83
    ld a, a                                       ; $4e44: $7f
    ld c, c                                       ; $4e45: $49
    or a                                          ; $4e46: $b7
    and b                                         ; $4e47: $a0
    ld e, a                                       ; $4e48: $5f
    nop                                           ; $4e49: $00
    or h                                          ; $4e4a: $b4
    dec bc                                        ; $4e4b: $0b
    ld e, d                                       ; $4e4c: $5a
    dec b                                         ; $4e4d: $05
    rrca                                          ; $4e4e: $0f
    nop                                           ; $4e4f: $00
    rla                                           ; $4e50: $17
    nop                                           ; $4e51: $00
    nop                                           ; $4e52: $00
    dec bc                                        ; $4e53: $0b
    nop                                           ; $4e54: $00
    xor d                                         ; $4e55: $aa
    push af                                       ; $4e56: $f5
    ld d, l                                       ; $4e57: $55
    ld a, [$ffa8]                                 ; $4e58: $fa $a8 $ff
    nop                                           ; $4e5b: $00
    inc e                                         ; $4e5c: $1c
    rst $38                                       ; $4e5d: $ff
    add a                                         ; $4e5e: $87
    ld a, a                                       ; $4e5f: $7f
    ld d, d                                       ; $4e60: $52
    xor a                                         ; $4e61: $af
    xor c                                         ; $4e62: $a9
    ld d, a                                       ; $4e63: $57
    nop                                           ; $4e64: $00
    db $f4                                        ; $4e65: $f4
    dec bc                                        ; $4e66: $0b
    db $dd                                        ; $4e67: $dd
    ld [hl+], a                                   ; $4e68: $22
    ld a, [hl]                                    ; $4e69: $7e
    add c                                         ; $4e6a: $81
    cpl                                           ; $4e6b: $2f
    ret nc                                        ; $4e6c: $d0

    nop                                           ; $4e6d: $00
    sub l                                         ; $4e6e: $95
    ld [$fd42], a                                 ; $4e6f: $ea $42 $fd
    add sp, -$01                                  ; $4e72: $e8 $ff
    ld [hl], h                                    ; $4e74: $74
    rst $38                                       ; $4e75: $ff
    nop                                           ; $4e76: $00
    ld a, [hl-]                                   ; $4e77: $3a
    rst $38                                       ; $4e78: $ff
    ld h, d                                       ; $4e79: $62
    db $fc                                        ; $4e7a: $fc
    dec [hl]                                      ; $4e7b: $35

jr_0a3_4e7c:
    ld a, [$fd32]                                 ; $4e7c: $fa $32 $fd
    db $10                                        ; $4e7f: $10
    add hl, de                                    ; $4e80: $19
    cp $2a                                        ; $4e81: $fe $2a
    inc b                                         ; $4e83: $04
    nop                                           ; $4e84: $00
    inc c                                         ; $4e85: $0c
    rst $38                                       ; $4e86: $ff
    ld b, $ff                                     ; $4e87: $06 $ff
    ld b, h                                       ; $4e89: $44
    sub [hl]                                      ; $4e8a: $96
    adc [hl]                                      ; $4e8b: $8e
    ld bc, $00da                                  ; $4e8c: $01 $da $00
    ld a, l                                       ; $4e8f: $7d
    call nz, Call_0a3_5503                        ; $4e90: $c4 $03 $55
    xor d                                         ; $4e93: $aa
    nop                                           ; $4e94: $00
    ld a, [hl+]                                   ; $4e95: $2a
    push de                                       ; $4e96: $d5
    nop                                           ; $4e97: $00
    rst $38                                       ; $4e98: $ff
    or [hl]                                       ; $4e99: $b6
    ld bc, $004b                                  ; $4e9a: $01 $4b $00
    db $10                                        ; $4e9d: $10
    add c                                         ; $4e9e: $81
    nop                                           ; $4e9f: $00
    ld e, b                                       ; $4ea0: $58
    cp h                                          ; $4ea1: $bc
    rlca                                          ; $4ea2: $07
    ld d, l                                       ; $4ea3: $55
    xor d                                         ; $4ea4: $aa
    add d                                         ; $4ea5: $82
    ld a, l                                       ; $4ea6: $7d
    nop                                           ; $4ea7: $00
    ld de, $8fee                                  ; $4ea8: $11 $ee $8f
    ld a, a                                       ; $4eab: $7f
    ld b, a                                       ; $4eac: $47
    cp a                                          ; $4ead: $bf
    xor e                                         ; $4eae: $ab
    ld e, a                                       ; $4eaf: $5f
    nop                                           ; $4eb0: $00
    push de                                       ; $4eb1: $d5
    cpl                                           ; $4eb2: $2f
    pop hl                                        ; $4eb3: $e1
    rra                                           ; $4eb4: $1f
    jp $a23f                                      ; $4eb5: $c3 $3f $a2


    ld e, a                                       ; $4eb8: $5f
    nop                                           ; $4eb9: $00
    ld d, [hl]                                    ; $4eba: $56
    cp a                                          ; $4ebb: $bf
    rst $28                                       ; $4ebc: $ef
    db $10                                        ; $4ebd: $10
    ld b, [hl]                                    ; $4ebe: $46
    cp c                                          ; $4ebf: $b9
    ld l, $d1                                     ; $4ec0: $2e $d1
    nop                                           ; $4ec2: $00
    add [hl]                                      ; $4ec3: $86
    ld a, c                                       ; $4ec4: $79
    ld a, [bc]                                    ; $4ec5: $0a
    push af                                       ; $4ec6: $f5
    inc b                                         ; $4ec7: $04
    ei                                            ; $4ec8: $fb
    ld a, [hl+]                                   ; $4ec9: $2a
    push de                                       ; $4eca: $d5
    nop                                           ; $4ecb: $00
    inc b                                         ; $4ecc: $04
    ei                                            ; $4ecd: $fb
    db $e4                                        ; $4ece: $e4
    inc de                                        ; $4ecf: $13
    cp [hl]                                       ; $4ed0: $be
    ld bc, $13ec                                  ; $4ed1: $01 $ec $13
    nop                                           ; $4ed4: $00
    db $ed                                        ; $4ed5: $ed
    inc de                                        ; $4ed6: $13
    db $e4                                        ; $4ed7: $e4
    dec de                                        ; $4ed8: $1b
    ld l, c                                       ; $4ed9: $69
    sub a                                         ; $4eda: $97
    ret nz                                        ; $4edb: $c0

    ccf                                           ; $4edc: $3f
    ld d, b                                       ; $4edd: $50
    ld bc, $018c                                  ; $4ede: $01 $8c $01
    ld b, b                                       ; $4ee1: $40
    adc [hl]                                      ; $4ee2: $8e
    dec d                                         ; $4ee3: $15
    or l                                          ; $4ee4: $b5
    rst $38                                       ; $4ee5: $ff
    jp c, Jump_0a3_40ff                           ; $4ee6: $da $ff $40

    jp hl                                         ; $4ee9: $e9


    sbc $0b                                       ; $4eea: $de $0b
    ld a, a                                       ; $4eec: $7f
    ld bc, $25ff                                  ; $4eed: $01 $ff $25
    rst $38                                       ; $4ef0: $ff
    ld de, $e28b                                  ; $4ef1: $11 $8b $e2
    dec b                                         ; $4ef4: $05
    rst $38                                       ; $4ef5: $ff
    rst $38                                       ; $4ef6: $ff
    ld l, l                                       ; $4ef7: $6d
    db $dd                                        ; $4ef8: $dd
    rrca                                          ; $4ef9: $0f
    add sp, $4b                                   ; $4efa: $e8 $4b
    rlca                                          ; $4efc: $07
    inc b                                         ; $4efd: $04
    ld b, b                                       ; $4efe: $40
    ld a, [de]                                    ; $4eff: $1a
    add d                                         ; $4f00: $82
    db $fd                                        ; $4f01: $fd
    ret nc                                        ; $4f02: $d0

    ret nc                                        ; $4f03: $d0

    ld [bc], a                                    ; $4f04: $02
    ld d, [hl]                                    ; $4f05: $56
    rrca                                          ; $4f06: $0f
    ld e, a                                       ; $4f07: $5f
    ei                                            ; $4f08: $fb
    rla                                           ; $4f09: $17
    ld a, [$0511]                                 ; $4f0a: $fa $11 $05
    inc [hl]                                      ; $4f0d: $34
    set 6, [hl]                                   ; $4f0e: $cb $f6
    dec c                                         ; $4f10: $0d
    push de                                       ; $4f11: $d5
    rst $38                                       ; $4f12: $ff
    ld a, [$17a1]                                 ; $4f13: $fa $a1 $17
    ld b, h                                       ; $4f16: $44
    ld d, h                                       ; $4f17: $54
    jr nz, @+$07                                  ; $4f18: $20 $05

    ret nz                                        ; $4f1a: $c0

    rst $38                                       ; $4f1b: $ff
    add d                                         ; $4f1c: $82
    inc c                                         ; $4f1d: $0c
    ld b, $d0                                     ; $4f1e: $06 $d0
    rst $28                                       ; $4f20: $ef
    ret nz                                        ; $4f21: $c0

    ld a, [hl+]                                   ; $4f22: $2a
    inc c                                         ; $4f23: $0c
    ld hl, sp+$29                                 ; $4f24: $f8 $29
    ld bc, $09ff                                  ; $4f26: $01 $ff $09
    rst $30                                       ; $4f29: $f7
    ld bc, $75ff                                  ; $4f2a: $01 $ff $75
    ld hl, $050e                                  ; $4f2d: $21 $0e $05
    ld [bc], a                                    ; $4f30: $02
    jr jr_0a3_4f3b                                ; $4f31: $18 $08

    ld e, $22                                     ; $4f33: $1e $22
    db $10                                        ; $4f35: $10
    ld h, $80                                     ; $4f36: $26 $80
    ld a, [hl+]                                   ; $4f38: $2a
    ld b, $80                                     ; $4f39: $06 $80

jr_0a3_4f3b:
    ld a, [de]                                    ; $4f3b: $1a
    ld e, $62                                     ; $4f3c: $1e $62
    ldh a, [rBGP]                                 ; $4f3e: $f0 $47
    ldh [$ef], a                                  ; $4f40: $e0 $ef
    ret nz                                        ; $4f42: $c0

    xor a                                         ; $4f43: $af
    nop                                           ; $4f44: $00
    ret nz                                        ; $4f45: $c0

    sbc a                                         ; $4f46: $9f
    ret nz                                        ; $4f47: $c0

    sbc $80                                       ; $4f48: $de $80
    call z, $c080                                 ; $4f4a: $cc $80 $c0
    inc c                                         ; $4f4d: $0c
    add b                                         ; $4f4e: $80
    ld h, c                                       ; $4f4f: $61
    nop                                           ; $4f50: $00
    ld h, b                                       ; $4f51: $60
    sub b                                         ; $4f52: $90
    dec h                                         ; $4f53: $25
    sub a                                         ; $4f54: $97
    dec e                                         ; $4f55: $1d
    cp $ff                                        ; $4f56: $fe $ff

jr_0a3_4f58:
    jr nz, jr_0a3_4f58                            ; $4f58: $20 $fe

    ld a, a                                       ; $4f5a: $7f
    and c                                         ; $4f5b: $a1
    rlca                                          ; $4f5c: $07
    ccf                                           ; $4f5d: $3f
    ld e, a                                       ; $4f5e: $5f
    ccf                                           ; $4f5f: $3f
    ccf                                           ; $4f60: $3f
    rra                                           ; $4f61: $1f
    ld c, $1f                                     ; $4f62: $0e $1f
    rrca                                          ; $4f64: $0f
    dec c                                         ; $4f65: $0d
    inc bc                                        ; $4f66: $03
    jr nc, jr_0a3_4f6f                            ; $4f67: $30 $06

    ld d, h                                       ; $4f69: $54
    ld d, $96                                     ; $4f6a: $16 $96
    inc c                                         ; $4f6c: $0c
    add b                                         ; $4f6d: $80
    and b                                         ; $4f6e: $a0

jr_0a3_4f6f:
    ld a, b                                       ; $4f6f: $78
    nop                                           ; $4f70: $00
    ret nz                                        ; $4f71: $c0

    inc [hl]                                      ; $4f72: $34
    nop                                           ; $4f73: $00
    ret nz                                        ; $4f74: $c0

    add b                                         ; $4f75: $80
    add b                                         ; $4f76: $80
    ret nz                                        ; $4f77: $c0

    and b                                         ; $4f78: $a0
    ld bc, $e0c0                                  ; $4f79: $01 $c0 $e0
    ret nz                                        ; $4f7c: $c0

    ld b, b                                       ; $4f7d: $40
    ldh [$62], a                                  ; $4f7e: $e0 $62
    ldh a, [$c0]                                  ; $4f80: $f0 $c0
    ld c, $80                                     ; $4f82: $0e $80
    jr nc, jr_0a3_4f95                            ; $4f84: $30 $0f

    rrca                                          ; $4f86: $0f
    nop                                           ; $4f87: $00
    ld c, $00                                     ; $4f88: $0e $00
    pop bc                                        ; $4f8a: $c1
    nop                                           ; $4f8b: $00
    ld [c], a                                     ; $4f8c: $e2
    nop                                           ; $4f8d: $00
    ld bc, $0001                                  ; $4f8e: $01 $01 $00
    inc de                                        ; $4f91: $13
    rrca                                          ; $4f92: $0f
    xor a                                         ; $4f93: $af
    rra                                           ; $4f94: $1f

jr_0a3_4f95:
    rra                                           ; $4f95: $1f
    nop                                           ; $4f96: $00
    ccf                                           ; $4f97: $3f
    ld a, a                                       ; $4f98: $7f
    ccf                                           ; $4f99: $3f
    cp a                                          ; $4f9a: $bf
    ld a, a                                       ; $4f9b: $7f
    ld a, [hl]                                    ; $4f9c: $7e
    rst $38                                       ; $4f9d: $ff
    cp $e0                                        ; $4f9e: $fe $e0
    jr c, @+$22                                   ; $4fa0: $38 $20

    xor b                                         ; $4fa2: $a8
    jr jr_0a3_4fcf                                ; $4fa3: $18 $2a

    ld c, $30                                     ; $4fa5: $0e $30
    ld hl, sp+$1b                                 ; $4fa7: $f8 $1b
    db $fc                                        ; $4fa9: $fc
    ld c, $a0                                     ; $4faa: $0e $a0
    sbc b                                         ; $4fac: $98
    ld b, $80                                     ; $4fad: $06 $80
    or $15                                        ; $4faf: $f6 $15
    nop                                           ; $4fb1: $00
    rst $38                                       ; $4fb2: $ff
    dec c                                         ; $4fb3: $0d
    inc bc                                        ; $4fb4: $03
    ld [hl], a                                    ; $4fb5: $77
    dec sp                                        ; $4fb6: $3b
    rrca                                          ; $4fb7: $0f
    rra                                           ; $4fb8: $1f
    ld c, l                                       ; $4fb9: $4d
    rla                                           ; $4fba: $17
    ret nz                                        ; $4fbb: $c0

    dec h                                         ; $4fbc: $25
    ld a, [$f005]                                 ; $4fbd: $fa $05 $f0
    ld [$9406], sp                                ; $4fc0: $08 $06 $94
    ld b, $aa                                     ; $4fc3: $06 $aa
    ld l, h                                       ; $4fc5: $6c
    inc sp                                        ; $4fc6: $33
    add h                                         ; $4fc7: $84
    halt                                          ; $4fc8: $76
    ld b, d                                       ; $4fc9: $42
    ld c, d                                       ; $4fca: $4a
    ret nz                                        ; $4fcb: $c0

    inc bc                                        ; $4fcc: $03
    inc de                                        ; $4fcd: $13
    db $f4                                        ; $4fce: $f4

jr_0a3_4fcf:
    dec b                                         ; $4fcf: $05
    inc bc                                        ; $4fd0: $03
    jr nz, @+$01                                  ; $4fd1: $20 $ff

    ld de, $06e0                                  ; $4fd3: $11 $e0 $06
    ld bc, $92ff                                  ; $4fd6: $01 $ff $92
    rst $28                                       ; $4fd9: $ef
    ld d, b                                       ; $4fda: $50
    cp b                                          ; $4fdb: $b8
    ld [hl], d                                    ; $4fdc: $72
    rla                                           ; $4fdd: $17
    push de                                       ; $4fde: $d5
    jr nc, jr_0a3_4fe8                            ; $4fdf: $30 $07

    dec l                                         ; $4fe1: $2d
    dec b                                         ; $4fe2: $05
    jp nc, $2402                                  ; $4fe3: $d2 $02 $24

    rst $38                                       ; $4fe6: $ff
    ld d, b                                       ; $4fe7: $50

jr_0a3_4fe8:
    push de                                       ; $4fe8: $d5
    sbc l                                         ; $4fe9: $9d
    cpl                                           ; $4fea: $2f
    and l                                         ; $4feb: $a5
    rlca                                          ; $4fec: $07
    xor l                                         ; $4fed: $ad
    ld e, b                                       ; $4fee: $58
    ld [bc], a                                    ; $4fef: $02
    xor h                                         ; $4ff0: $ac
    ld c, [hl]                                    ; $4ff1: $4e
    ld b, $5c                                     ; $4ff2: $06 $5c
    ld b, d                                       ; $4ff4: $42
    rlca                                          ; $4ff5: $07
    ld d, d                                       ; $4ff6: $52
    ld hl, sp+$56                                 ; $4ff7: $f8 $56
    ld b, $81                                     ; $4ff9: $06 $81
    ld e, h                                       ; $4ffb: $5c
    dec [hl]                                      ; $4ffc: $35
    ret nz                                        ; $4ffd: $c0

    cp a                                          ; $4ffe: $bf
    xor d                                         ; $4fff: $aa
    rrca                                          ; $5000: $0f
    inc l                                         ; $5001: $2c
    and b                                         ; $5002: $a0
    ld d, [hl]                                    ; $5003: $56
    inc b                                         ; $5004: $04
    push af                                       ; $5005: $f5
    or h                                          ; $5006: $b4
    rlca                                          ; $5007: $07
    ld b, a                                       ; $5008: $47
    rst $38                                       ; $5009: $ff
    ld a, [hl+]                                   ; $500a: $2a
    db $dd                                        ; $500b: $dd
    push de                                       ; $500c: $d5
    nop                                           ; $500d: $00
    ld a, [hl+]                                   ; $500e: $2a
    ld l, e                                       ; $500f: $6b
    sub h                                         ; $5010: $94
    ld a, [bc]                                    ; $5011: $0a
    push af                                       ; $5012: $f5
    ld b, l                                       ; $5013: $45
    ld a, [$4016]                                 ; $5014: $fa $16 $40
    jp hl                                         ; $5017: $e9


    ld e, [hl]                                    ; $5018: $5e
    inc b                                         ; $5019: $04
    add sp, -$7d                                  ; $501a: $e8 $83
    db $fc                                        ; $501c: $fc
    dec b                                         ; $501d: $05
    ld a, [$6aa2]                                 ; $501e: $fa $a2 $6a
    ld e, l                                       ; $5021: $5d
    ret nz                                        ; $5022: $c0

    ld d, $01                                     ; $5023: $16 $01
    nop                                           ; $5025: $00
    inc bc                                        ; $5026: $03
    ld bc, $0700                                  ; $5027: $01 $00 $07
    ld bc, $0000                                  ; $502a: $01 $00 $00
    nop                                           ; $502d: $00
    rst $38                                       ; $502e: $ff
    sub l                                         ; $502f: $95
    ld a, d                                       ; $5030: $7a
    ld c, b                                       ; $5031: $48
    or a                                          ; $5032: $b7
    and c                                         ; $5033: $a1
    ld e, [hl]                                    ; $5034: $5e
    ld b, d                                       ; $5035: $42
    nop                                           ; $5036: $00
    cp a                                          ; $5037: $bf
    xor c                                         ; $5038: $a9
    halt                                          ; $5039: $76
    sub d                                         ; $503a: $92
    ld a, l                                       ; $503b: $7d
    pop hl                                        ; $503c: $e1
    ld a, $f0                                     ; $503d: $3e $f0
    and d                                         ; $503f: $a2
    ld bc, $f800                                  ; $5040: $01 $00 $f8
    ld bc, $fc00                                  ; $5043: $01 $00 $fc
    db $fc                                        ; $5046: $fc
    cp $01                                        ; $5047: $fe $01
    nop                                           ; $5049: $00
    rst $38                                       ; $504a: $ff
    nop                                           ; $504b: $00
    rst $38                                       ; $504c: $ff
    and e                                         ; $504d: $a3
    ld e, h                                       ; $504e: $5c
    push de                                       ; $504f: $d5
    ld a, [hl+]                                   ; $5050: $2a
    and b                                         ; $5051: $a0
    ld e, a                                       ; $5052: $5f
    ld sp, hl                                     ; $5053: $f9
    nop                                           ; $5054: $00
    ld c, $ec                                     ; $5055: $0e $ec
    rra                                           ; $5057: $1f
    or $0f                                        ; $5058: $f6 $0f
    db $ed                                        ; $505a: $ed
    inc de                                        ; $505b: $13
    or $46                                        ; $505c: $f6 $46
    add hl, bc                                    ; $505e: $09
    dec hl                                        ; $505f: $2b
    ld bc, $e0c0                                  ; $5060: $01 $c0 $e0
    ldh [rNR50], a                                ; $5063: $e0 $24
    ld [$1822], sp                                ; $5065: $08 $22 $18
    inc [hl]                                      ; $5068: $34
    nop                                           ; $5069: $00
    rst $38                                       ; $506a: $ff
    adc b                                         ; $506b: $88
    ld a, a                                       ; $506c: $7f
    ld d, c                                       ; $506d: $51
    cp [hl]                                       ; $506e: $be
    xor d                                         ; $506f: $aa
    ld d, l                                       ; $5070: $55
    pop de                                        ; $5071: $d1
    nop                                           ; $5072: $00
    ld l, $e1                                     ; $5073: $2e $e1
    ld e, $f4                                     ; $5075: $1e $f4
    dec bc                                        ; $5077: $0b
    ld [$0015], a                                 ; $5078: $ea $15 $00
    ld b, b                                       ; $507b: $40
    nop                                           ; $507c: $00
    ld [hl+], a                                   ; $507d: $22
    ld e, b                                       ; $507e: $58
    or b                                          ; $507f: $b0
    ld b, b                                       ; $5080: $40
    ld a, b                                       ; $5081: $78
    add b                                         ; $5082: $80
    or h                                          ; $5083: $b4
    ld b, b                                       ; $5084: $40
    nop                                           ; $5085: $00
    ld e, d                                       ; $5086: $5a
    and b                                         ; $5087: $a0
    db $ed                                        ; $5088: $ed
    db $10                                        ; $5089: $10
    or a                                          ; $508a: $b7
    ld c, b                                       ; $508b: $48
    rst $28                                       ; $508c: $ef
    db $10                                        ; $508d: $10
    add hl, bc                                    ; $508e: $09
    ei                                            ; $508f: $fb
    inc b                                         ; $5090: $04
    nop                                           ; $5091: $00
    nop                                           ; $5092: $00
    ld b, b                                       ; $5093: $40
    ld c, b                                       ; $5094: $48
    rst $38                                       ; $5095: $ff
    rst $38                                       ; $5096: $ff
    sbc c                                         ; $5097: $99
    ld c, $00                                     ; $5098: $0e $00
    db $fd                                        ; $509a: $fd
    nop                                           ; $509b: $00
    xor [hl]                                      ; $509c: $ae
    ld b, b                                       ; $509d: $40
    db $db                                        ; $509e: $db

jr_0a3_509f:
    jr nz, jr_0a3_509f                            ; $509f: $20 $fe

    nop                                           ; $50a1: $00
    nop                                           ; $50a2: $00
    rst $30                                       ; $50a3: $f7
    ld [$00fe], sp                                ; $50a4: $08 $fe $00
    xor [hl]                                      ; $50a7: $ae
    nop                                           ; $50a8: $00
    ld d, a                                       ; $50a9: $57
    nop                                           ; $50aa: $00
    ld b, b                                       ; $50ab: $40
    dec c                                         ; $50ac: $0d
    ld h, b                                       ; $50ad: $60
    inc bc                                        ; $50ae: $03
    ld b, b                                       ; $50af: $40
    nop                                           ; $50b0: $00
    and b                                         ; $50b1: $a0
    nop                                           ; $50b2: $00
    ld [hl], l                                    ; $50b3: $75
    nop                                           ; $50b4: $00
    ld b, e                                       ; $50b5: $43
    db $eb                                        ; $50b6: $eb
    ld c, [hl]                                    ; $50b7: $4e
    nop                                           ; $50b8: $00
    ldh [$e0], a                                  ; $50b9: $e0 $e0
    ld hl, sp-$08                                 ; $50bb: $f8 $f8
    adc d                                         ; $50bd: $8a
    ld [$1905], sp                                ; $50be: $08 $05 $19
    pop bc                                        ; $50c1: $c1
    db $dd                                        ; $50c2: $dd
    add hl, hl                                    ; $50c3: $29
    jr jr_0a3_50ee                                ; $50c4: $18 $28

    db $fd                                        ; $50c6: $fd
    ld [bc], a                                    ; $50c7: $02
    or h                                          ; $50c8: $b4
    inc bc                                        ; $50c9: $03
    ld e, a                                       ; $50ca: $5f
    xor [hl]                                      ; $50cb: $ae
    ld bc, $0540                                  ; $50cc: $01 $40 $05
    inc e                                         ; $50cf: $1c
    inc bc                                        ; $50d0: $03
    rlca                                          ; $50d1: $07
    nop                                           ; $50d2: $00
    adc d                                         ; $50d3: $8a
    ld bc, $0057                                  ; $50d4: $01 $57 $00
    nop                                           ; $50d7: $00
    xor [hl]                                      ; $50d8: $ae
    ld bc, $02fd                                  ; $50d9: $01 $fd $02
    cp d                                          ; $50dc: $ba
    dec b                                         ; $50dd: $05
    rst $30                                       ; $50de: $f7
    ld [$7e00], sp                                ; $50df: $08 $00 $7e
    ld bc, $22dd                                  ; $50e2: $01 $dd $22
    db $eb                                        ; $50e5: $eb
    inc d                                         ; $50e6: $14
    ld c, h                                       ; $50e7: $4c
    cp a                                          ; $50e8: $bf
    ld b, b                                       ; $50e9: $40
    add hl, de                                    ; $50ea: $19
    and h                                         ; $50eb: $a4
    nop                                           ; $50ec: $00
    ld e, c                                       ; $50ed: $59

jr_0a3_50ee:
    cp $23                                        ; $50ee: $fe $23
    db $fc                                        ; $50f0: $fc
    sub [hl]                                      ; $50f1: $96
    ld l, b                                       ; $50f2: $68
    add b                                         ; $50f3: $80
    ld [hl], h                                    ; $50f4: $74
    dec bc                                        ; $50f5: $0b
    dec b                                         ; $50f6: $05
    rst $38                                       ; $50f7: $ff
    and d                                         ; $50f8: $a2
    ld e, a                                       ; $50f9: $5f
    call nc, $fa2b                                ; $50fa: $d4 $2b $fa
    inc bc                                        ; $50fd: $03
    dec b                                         ; $50fe: $05
    ld [hl], l                                    ; $50ff: $75
    ld a, [bc]                                    ; $5100: $0a
    db $db                                        ; $5101: $db
    inc b                                         ; $5102: $04
    ld l, a                                       ; $5103: $6f
    adc h                                         ; $5104: $8c
    inc bc                                        ; $5105: $03
    ld d, b                                       ; $5106: $50
    ld e, b                                       ; $5107: $58
    ret c                                         ; $5108: $d8

    ld e, d                                       ; $5109: $5a
    rlca                                          ; $510a: $07
    ld l, e                                       ; $510b: $6b
    ld [de], a                                    ; $510c: $12
    ld a, [$1271]                                 ; $510d: $fa $71 $12
    add e                                         ; $5110: $83
    rrca                                          ; $5111: $0f
    jp z, $883f                                   ; $5112: $ca $3f $88

    nop                                           ; $5115: $00
    ld a, a                                       ; $5116: $7f
    ret z                                         ; $5117: $c8

    ccf                                           ; $5118: $3f
    ld l, h                                       ; $5119: $6c
    rra                                           ; $511a: $1f
    ret z                                         ; $511b: $c8

    ccf                                           ; $511c: $3f
    ld h, h                                       ; $511d: $64
    nop                                           ; $511e: $00
    sbc a                                         ; $511f: $9f
    add $3f                                       ; $5120: $c6 $3f
    ld l, d                                       ; $5122: $6a
    dec d                                         ; $5123: $15
    push bc                                       ; $5124: $c5
    cp $68                                        ; $5125: $fe $68
    jr nz, @+$01                                  ; $5127: $20 $ff

    ld d, c                                       ; $5129: $51
    ld e, [hl]                                    ; $512a: $5e
    inc bc                                        ; $512b: $03
    or c                                          ; $512c: $b1
    ld a, [hl]                                    ; $512d: $7e
    ld e, b                                       ; $512e: $58
    cp a                                          ; $512f: $bf
    xor l                                         ; $5130: $ad
    ld [bc], a                                    ; $5131: $02
    ld e, a                                       ; $5132: $5f
    ret z                                         ; $5133: $c8

    ccf                                           ; $5134: $3f
    pop de                                        ; $5135: $d1
    nop                                           ; $5136: $00
    cp c                                          ; $5137: $b9
    ld a, [de]                                    ; $5138: $1a
    ld b, $bb                                     ; $5139: $06 $bb
    nop                                           ; $513b: $00
    ld b, b                                       ; $513c: $40
    ld e, l                                       ; $513d: $5d
    and b                                         ; $513e: $a0
    cp e                                          ; $513f: $bb
    ld b, b                                       ; $5140: $40
    ld l, a                                       ; $5141: $6f
    sub b                                         ; $5142: $90
    dec a                                         ; $5143: $3d
    ld h, d                                       ; $5144: $62
    ret nz                                        ; $5145: $c0

    inc b                                         ; $5146: $04
    rrca                                          ; $5147: $0f
    ld [$bf0f], sp                                ; $5148: $08 $0f $bf
    ld a, a                                       ; $514b: $7f
    rra                                           ; $514c: $1f
    jr jr_0a3_5156                                ; $514d: $18 $07

    rla                                           ; $514f: $17
    nop                                           ; $5150: $00
    rst $38                                       ; $5151: $ff
    push hl                                       ; $5152: $e5
    rra                                           ; $5153: $1f
    sub $2f                                       ; $5154: $d6 $2f

jr_0a3_5156:
    db $eb                                        ; $5156: $eb
    rla                                           ; $5157: $17
    ld [hl], d                                    ; $5158: $72
    nop                                           ; $5159: $00
    rrca                                          ; $515a: $0f
    cp e                                          ; $515b: $bb
    rlca                                          ; $515c: $07
    push af                                       ; $515d: $f5
    dec bc                                        ; $515e: $0b
    ld sp, hl                                     ; $515f: $f9
    rlca                                          ; $5160: $07
    ld a, h                                       ; $5161: $7c
    inc b                                         ; $5162: $04
    add e                                         ; $5163: $83
    ld e, [hl]                                    ; $5164: $5e
    and c                                         ; $5165: $a1
    dec hl                                        ; $5166: $2b
    call nc, $0d02                                ; $5167: $d4 $02 $0d
    ld d, b                                       ; $516a: $50
    rst $38                                       ; $516b: $ff
    ld b, b                                       ; $516c: $40
    adc d                                         ; $516d: $8a
    add hl, hl                                    ; $516e: $29
    inc bc                                        ; $516f: $03
    xor e                                         ; $5170: $ab
    rst $38                                       ; $5171: $ff
    sbc a                                         ; $5172: $9f
    ld a, a                                       ; $5173: $7f
    scf                                           ; $5174: $37
    rst $38                                       ; $5175: $ff
    inc b                                         ; $5176: $04
    ld e, e                                       ; $5177: $5b
    rst $38                                       ; $5178: $ff
    scf                                           ; $5179: $37
    rst $38                                       ; $517a: $ff
    ld a, e                                       ; $517b: $7b
    xor $11                                       ; $517c: $ee $11
    call nc, Call_000_00ff                        ; $517e: $d4 $ff $00
    add sp, $17                                   ; $5181: $e8 $17
    db $dd                                        ; $5183: $dd
    inc hl                                        ; $5184: $23
    xor d                                         ; $5185: $aa
    ld d, a                                       ; $5186: $57
    ld d, l                                       ; $5187: $55
    xor a                                         ; $5188: $af
    ld bc, $7f8f                                  ; $5189: $01 $8f $7f
    dec c                                         ; $518c: $0d
    rst $38                                       ; $518d: $ff
    ld e, d                                       ; $518e: $5a
    rst $38                                       ; $518f: $ff
    or b                                          ; $5190: $b0
    ld [hl], d                                    ; $5191: $72
    ld [bc], a                                    ; $5192: $02
    ld l, d                                       ; $5193: $6a
    db $fc                                        ; $5194: $fc
    inc c                                         ; $5195: $0c
    ld b, $dc                                     ; $5196: $06 $dc
    dec b                                         ; $5198: $05
    cp $cc                                        ; $5199: $fe $cc
    rrca                                          ; $519b: $0f
    inc b                                         ; $519c: $04
    ld e, [hl]                                    ; $519d: $5e
    rla                                           ; $519e: $17
    db $10                                        ; $519f: $10
    call nz, $17e4                                ; $51a0: $c4 $e4 $17
    inc b                                         ; $51a3: $04
    dec c                                         ; $51a4: $0d
    ld [bc], a                                    ; $51a5: $02
    rst $38                                       ; $51a6: $ff
    ld l, c                                       ; $51a7: $69
    ld hl, sp+$05                                 ; $51a8: $f8 $05
    ldh [rIE], a                                  ; $51aa: $e0 $ff
    rla                                           ; $51ac: $17
    pop de                                        ; $51ad: $d1
    cp $a0                                        ; $51ae: $fe $a0
    db $ec                                        ; $51b0: $ec
    rlca                                          ; $51b1: $07
    add hl, bc                                    ; $51b2: $09
    xor $27                                       ; $51b3: $ee $27
    ld e, $0d                                     ; $51b5: $1e $0d
    jp nc, $301c                                  ; $51b7: $d2 $1c $30

    db $10                                        ; $51ba: $10
    rst $28                                       ; $51bb: $ef
    ld [de], a                                    ; $51bc: $12
    dec c                                         ; $51bd: $0d
    db $10                                        ; $51be: $10
    jr z, jr_0a3_51c1                             ; $51bf: $28 $00

jr_0a3_51c1:
    rst $38                                       ; $51c1: $ff
    inc h                                         ; $51c2: $24
    db $db                                        ; $51c3: $db
    or [hl]                                       ; $51c4: $b6
    ld a, d                                       ; $51c5: $7a
    rra                                           ; $51c6: $1f
    adc b                                         ; $51c7: $88
    ld b, b                                       ; $51c8: $40
    inc sp                                        ; $51c9: $33
    ldh a, [rIF]                                  ; $51ca: $f0 $0f
    ld hl, $056e                                  ; $51cc: $21 $6e $05
    ld hl, sp+$0f                                 ; $51cf: $f8 $0f
    inc d                                         ; $51d1: $14
    ld l, b                                       ; $51d2: $68
    db $eb                                        ; $51d3: $eb
    or h                                          ; $51d4: $b4
    rra                                           ; $51d5: $1f
    ret nz                                        ; $51d6: $c0

    rrca                                          ; $51d7: $0f
    inc bc                                        ; $51d8: $03
    jr nc, jr_0a3_51e0                            ; $51d9: $30 $05

    rla                                           ; $51db: $17
    rst $38                                       ; $51dc: $ff
    inc sp                                        ; $51dd: $33
    add b                                         ; $51de: $80
    ld a, [de]                                    ; $51df: $1a

jr_0a3_51e0:
    ld h, $ff                                     ; $51e0: $26 $ff
    rst $38                                       ; $51e2: $ff
    ei                                            ; $51e3: $fb
    ld a, a                                       ; $51e4: $7f
    ld a, l                                       ; $51e5: $7d
    dec sp                                        ; $51e6: $3b
    add hl, de                                    ; $51e7: $19
    dec e                                         ; $51e8: $1d
    jr c, jr_0a3_51f3                             ; $51e9: $38 $08

    sbc h                                         ; $51eb: $9c
    jp c, $e00f                                   ; $51ec: $da $0f $e0

    rrca                                          ; $51ef: $0f
    ld b, b                                       ; $51f0: $40
    dec e                                         ; $51f1: $1d
    ld a, h                                       ; $51f2: $7c

jr_0a3_51f3:
    inc a                                         ; $51f3: $3c
    dec l                                         ; $51f4: $2d
    ld l, a                                       ; $51f5: $6f
    db $fd                                        ; $51f6: $fd
    ld a, d                                       ; $51f7: $7a
    dec c                                         ; $51f8: $0d
    ld b, [hl]                                    ; $51f9: $46
    ld e, $10                                     ; $51fa: $1e $10
    ret z                                         ; $51fc: $c8

    inc bc                                        ; $51fd: $03
    xor $1a                                       ; $51fe: $ee $1a
    and [hl]                                      ; $5200: $a6
    dec hl                                        ; $5201: $2b
    ld e, d                                       ; $5202: $5a
    dec e                                         ; $5203: $1d
    ldh [$b4], a                                  ; $5204: $e0 $b4
    ld [$2d68], sp                                ; $5206: $08 $68 $2d
    add d                                         ; $5209: $82
    dec c                                         ; $520a: $0d
    ld bc, $41ff                                  ; $520b: $01 $ff $41
    cp a                                          ; $520e: $bf
    ld bc, $ff03                                  ; $520f: $01 $03 $ff
    ld [hl], c                                    ; $5212: $71
    ei                                            ; $5213: $fb
    ld [hl], d                                    ; $5214: $72
    ld sp, hl                                     ; $5215: $f9
    db $fc                                        ; $5216: $fc
    ld [bc], a                                    ; $5217: $02
    nop                                           ; $5218: $00
    dec b                                         ; $5219: $05
    ld [$fe70], sp                                ; $521a: $08 $70 $fe
    ld [bc], a                                    ; $521d: $02
    nop                                           ; $521e: $00
    ldh a, [$3b]                                  ; $521f: $f0 $3b
    and $10                                       ; $5221: $e6 $10
    rst $38                                       ; $5223: $ff
    reti                                          ; $5224: $d9


    db $fc                                        ; $5225: $fc
    pop de                                        ; $5226: $d1
    ld [bc], a                                    ; $5227: $02
    call z, $c1ed                                 ; $5228: $cc $ed $c1
    jp nc, $f3e1                                  ; $522b: $d2 $e1 $f3

    adc a                                         ; $522e: $8f
    ld [bc], a                                    ; $522f: $02

jr_0a3_5230:
    ld a, [hl]                                    ; $5230: $7e
    inc a                                         ; $5231: $3c
    cp $7f                                        ; $5232: $fe $7f
    jr @+$08                                      ; $5234: $18 $06

    sbc $0d                                       ; $5236: $de $0d
    ld d, $0e                                     ; $5238: $16 $0e
    cp d                                          ; $523a: $ba
    ld e, $3e                                     ; $523b: $1e $3e
    rst $38                                       ; $523d: $ff
    ld d, b                                       ; $523e: $50
    rra                                           ; $523f: $1f
    jp c, $0305                                   ; $5240: $da $05 $03

    call nc, $da30                                ; $5243: $d4 $30 $da
    adc h                                         ; $5246: $8c
    call c, Call_000_088e                         ; $5247: $dc $8e $08
    add h                                         ; $524a: $84
    adc $94                                       ; $524b: $ce $94
    adc $04                                       ; $524d: $ce $04
    ld [$cc8e], sp                                ; $524f: $08 $8e $cc
    sbc $42                                       ; $5252: $de $42
    adc h                                         ; $5254: $8c
    inc sp                                        ; $5255: $33
    nop                                           ; $5256: $00
    ld a, a                                       ; $5257: $7f
    ld a, a                                       ; $5258: $7f
    ld a, a                                       ; $5259: $7f
    rst $38                                       ; $525a: $ff
    inc b                                         ; $525b: $04
    db $10                                        ; $525c: $10
    di                                            ; $525d: $f3
    jr jr_0a3_52df                                ; $525e: $18 $7f

    ld [hl], e                                    ; $5260: $73
    pop hl                                        ; $5261: $e1
    ld [c], a                                     ; $5262: $e2
    jr z, jr_0a3_52d1                             ; $5263: $28 $6c

    inc c                                         ; $5265: $0c
    adc b                                         ; $5266: $88
    rst $30                                       ; $5267: $f7
    add b                                         ; $5268: $80
    nop                                           ; $5269: $00
    rst $38                                       ; $526a: $ff
    call c, Call_000_098c                         ; $526b: $dc $8c $09
    sbc h                                         ; $526e: $9c
    cp c                                          ; $526f: $b9
    inc e                                         ; $5270: $1c
    inc e                                         ; $5271: $1c
    nop                                           ; $5272: $00
    inc a                                         ; $5273: $3c
    ld a, [hl]                                    ; $5274: $7e
    inc a                                         ; $5275: $3c
    ccf                                           ; $5276: $3f
    ld a, [hl]                                    ; $5277: $7e
    ld a, [hl-]                                   ; $5278: $3a
    ld a, c                                       ; $5279: $79
    ld a, c                                       ; $527a: $79
    nop                                           ; $527b: $00
    inc [hl]                                      ; $527c: $34
    ld l, b                                       ; $527d: $68
    pop hl                                        ; $527e: $e1
    ld [hl], b                                    ; $527f: $70
    ld sp, hl                                     ; $5280: $f9
    ld [hl], b                                    ; $5281: $70
    ld sp, hl                                     ; $5282: $f9
    ld sp, hl                                     ; $5283: $f9
    nop                                           ; $5284: $00
    ld [hl], c                                    ; $5285: $71
    ld d, e                                       ; $5286: $53
    ld hl, $0305                                  ; $5287: $21 $05 $03
    adc d                                         ; $528a: $8a
    rlca                                          ; $528b: $07
    ld c, [hl]                                    ; $528c: $4e
    or b                                          ; $528d: $b0
    jr z, jr_0a3_52a4                             ; $528e: $28 $14

    add c                                         ; $5290: $81
    sbc b                                         ; $5291: $98
    inc d                                         ; $5292: $14
    jr z, @+$29                                   ; $5293: $28 $27

    jr c, jr_0a3_5230                             ; $5295: $38 $99

    nop                                           ; $5297: $00
    jp nz, $812e                                  ; $5298: $c2 $2e $81

    jp Jump_000_33e0                              ; $529b: $c3 $e0 $33


    ld a, h                                       ; $529e: $7c
    ldh [$3b], a                                  ; $529f: $e0 $3b
    jr jr_0a3_52b4                                ; $52a1: $18 $11

    add d                                         ; $52a3: $82

jr_0a3_52a4:
    ld c, $08                                     ; $52a4: $0e $08
    ret nz                                        ; $52a6: $c0

    or d                                          ; $52a7: $b2
    ld h, $5c                                     ; $52a8: $26 $5c
    rrca                                          ; $52aa: $0f
    call c, $b9ff                                 ; $52ab: $dc $ff $b9
    cp $55                                        ; $52ae: $fe $55
    cp $10                                        ; $52b0: $fe $10
    ld a, [hl-]                                   ; $52b2: $3a
    db $fd                                        ; $52b3: $fd

jr_0a3_52b4:
    ld d, l                                       ; $52b4: $55
    sub [hl]                                      ; $52b5: $96
    dec b                                         ; $52b6: $05
    ld sp, $6dfe                                  ; $52b7: $31 $fe $6d
    ld a, [$3700]                                 ; $52ba: $fa $00 $37
    ld hl, sp+$7b                                 ; $52bd: $f8 $7b
    db $f4                                        ; $52bf: $f4
    xor l                                         ; $52c0: $ad
    ld a, [$e45b]                                 ; $52c1: $fa $5b $e4
    nop                                           ; $52c4: $00
    or a                                          ; $52c5: $b7
    ret z                                         ; $52c6: $c8

    ld e, e                                       ; $52c7: $5b
    db $e4                                        ; $52c8: $e4
    xor a                                         ; $52c9: $af
    ret nc                                        ; $52ca: $d0

    ld e, a                                       ; $52cb: $5f
    and b                                         ; $52cc: $a0
    ld a, b                                       ; $52cd: $78
    ld bc, $117c                                  ; $52ce: $01 $7c $11

jr_0a3_52d1:
    call nc, Call_000_0618                        ; $52d1: $d4 $18 $06
    inc c                                         ; $52d4: $0c
    ld [$0f1c], a                                 ; $52d5: $ea $1c $0f
    rst $38                                       ; $52d8: $ff
    ccf                                           ; $52d9: $3f
    ld bc, $dfff                                  ; $52da: $01 $ff $df
    rst $38                                       ; $52dd: $ff
    rst $28                                       ; $52de: $ef

jr_0a3_52df:
    rst $18                                       ; $52df: $df
    rst $18                                       ; $52e0: $df
    rst $08                                       ; $52e1: $cf
    ld d, [hl]                                    ; $52e2: $56
    inc e                                         ; $52e3: $1c
    ld de, $fff0                                  ; $52e4: $11 $f0 $ff
    cp h                                          ; $52e7: $bc
    call nz, $9f04                                ; $52e8: $c4 $04 $9f
    ccf                                           ; $52eb: $3f
    ld e, a                                       ; $52ec: $5f
    xor $07                                       ; $52ed: $ee $07
    nop                                           ; $52ef: $00
    ld b, l                                       ; $52f0: $45
    rst $38                                       ; $52f1: $ff
    rrca                                          ; $52f2: $0f
    db $fd                                        ; $52f3: $fd
    ld [$19fd], sp                                ; $52f4: $08 $fd $19
    db $fc                                        ; $52f7: $fc
    nop                                           ; $52f8: $00
    inc e                                         ; $52f9: $1c
    ld hl, sp+$14                                 ; $52fa: $f8 $14
    ld hl, sp+$10                                 ; $52fc: $f8 $10
    ld hl, sp-$31                                 ; $52fe: $f8 $cf
    rst $08                                       ; $5300: $cf
    nop                                           ; $5301: $00
    rst $28                                       ; $5302: $ef
    rst $08                                       ; $5303: $cf
    cp $ef                                        ; $5304: $fe $ef
    rst $18                                       ; $5306: $df
    cp $ed                                        ; $5307: $fe $ed
    sbc $00                                       ; $5309: $de $00
    call nc, Call_0a3_46ce                        ; $530b: $d4 $ce $46
    call z, Call_0a3_448a                         ; $530e: $cc $8a $44
    dec a                                         ; $5311: $3d
    rst $38                                       ; $5312: $ff
    nop                                           ; $5313: $00
    rst $38                                       ; $5314: $ff
    ld a, l                                       ; $5315: $7d
    ccf                                           ; $5316: $3f
    ld a, l                                       ; $5317: $7d
    ld a, b                                       ; $5318: $78
    dec a                                         ; $5319: $3d

jr_0a3_531a:
    ld e, l                                       ; $531a: $5d
    jr c, @+$04                                   ; $531b: $38 $02

    inc d                                         ; $531d: $14
    jr c, jr_0a3_5350                             ; $531e: $38 $30

    jr @+$0a                                      ; $5320: $18 $08

    db $10                                        ; $5322: $10
    ld [de], a                                    ; $5323: $12
    ld a, [hl-]                                   ; $5324: $3a
    xor d                                         ; $5325: $aa
    ld d, b                                       ; $5326: $50
    ld d, l                                       ; $5327: $55
    inc b                                         ; $5328: $04
    ld [$3610], sp                                ; $5329: $08 $10 $36
    nop                                           ; $532c: $00
    sbc h                                         ; $532d: $9c
    ld hl, sp+$18                                 ; $532e: $f8 $18
    db $fc                                        ; $5330: $fc
    nop                                           ; $5331: $00
    ld c, $fc                                     ; $5332: $0e $fc
    xor [hl]                                      ; $5334: $ae
    ld d, h                                       ; $5335: $54
    nop                                           ; $5336: $00
    cp $aa                                        ; $5337: $fe $aa
    ld d, l                                       ; $5339: $55
    dec sp                                        ; $533a: $3b
    ld b, h                                       ; $533b: $44
    nop                                           ; $533c: $00
    sub e                                         ; $533d: $93
    inc bc                                        ; $533e: $03
    ld [hl-], a                                   ; $533f: $32
    dec h                                         ; $5340: $25
    ret nc                                        ; $5341: $d0

    ld c, $10                                     ; $5342: $0e $10
    ld a, $45                                     ; $5344: $3e $45
    ldh [$0e], a                                  ; $5346: $e0 $0e
    cp b                                          ; $5348: $b8
    jr nz, jr_0a3_537a                            ; $5349: $20 $2f

    inc d                                         ; $534b: $14
    ld l, [hl]                                    ; $534c: $6e
    rlca                                          ; $534d: $07
    ld l, b                                       ; $534e: $68
    inc b                                         ; $534f: $04

jr_0a3_5350:
    ld l, h                                       ; $5350: $6c
    ld [bc], a                                    ; $5351: $02
    and b                                         ; $5352: $a0
    rst $38                                       ; $5353: $ff
    ldh a, [rP1]                                  ; $5354: $f0 $00
    cp a                                          ; $5356: $bf
    ldh a, [$bf]                                  ; $5357: $f0 $bf
    jr c, jr_0a3_531a                             ; $5359: $38 $bf

    cp b                                          ; $535b: $b8
    rra                                           ; $535c: $1f
    jr z, jr_0a3_537f                             ; $535d: $28 $20

    rra                                           ; $535f: $1f
    ld [$0002], sp                                ; $5360: $08 $02 $00
    jr z, jr_0a3_5384                             ; $5363: $28 $1f

    ld a, [hl-]                                   ; $5365: $3a
    dec e                                         ; $5366: $1d
    jr jr_0a3_536d                                ; $5367: $18 $04

    ccf                                           ; $5369: $3f
    ld d, b                                       ; $536a: $50
    ccf                                           ; $536b: $3f

jr_0a3_536c:
    ld [hl], b                                    ; $536c: $70

jr_0a3_536d:
    ld a, [hl-]                                   ; $536d: $3a
    sub [hl]                                      ; $536e: $96
    dec b                                         ; $536f: $05
    xor d                                         ; $5370: $aa
    ld e, a                                       ; $5371: $5f
    jr nz, @+$01                                  ; $5372: $20 $ff

    cpl                                           ; $5374: $2f
    and h                                         ; $5375: $a4
    rlca                                          ; $5376: $07
    dec hl                                        ; $5377: $2b
    rst $38                                       ; $5378: $ff
    rlca                                          ; $5379: $07

jr_0a3_537a:
    rst $38                                       ; $537a: $ff
    ld b, e                                       ; $537b: $43
    nop                                           ; $537c: $00
    cp a                                          ; $537d: $bf
    and l                                         ; $537e: $a5

jr_0a3_537f:
    ld e, a                                       ; $537f: $5f
    ld h, d                                       ; $5380: $62
    sbc a                                         ; $5381: $9f
    db $db                                        ; $5382: $db
    cpl                                           ; $5383: $2f

jr_0a3_5384:
    push hl                                       ; $5384: $e5
    nop                                           ; $5385: $00
    rra                                           ; $5386: $1f
    ld [hl], d                                    ; $5387: $72
    rrca                                          ; $5388: $0f
    ld sp, hl                                     ; $5389: $f9
    rlca                                          ; $538a: $07
    ld d, [hl]                                    ; $538b: $56
    dec hl                                        ; $538c: $2b
    ei                                            ; $538d: $fb
    nop                                           ; $538e: $00
    dec b                                         ; $538f: $05
    db $dd                                        ; $5390: $dd
    ld [hl+], a                                   ; $5391: $22
    rst $38                                       ; $5392: $ff
    nop                                           ; $5393: $00
    ld e, a                                       ; $5394: $5f
    and b                                         ; $5395: $a0
    ld l, $00                                     ; $5396: $2e $00
    pop de                                        ; $5398: $d1
    dec b                                         ; $5399: $05
    ld a, [$fdfa]                                 ; $539a: $fa $fa $fd
    xor l                                         ; $539d: $ad
    cp $58                                        ; $539e: $fe $58
    rlca                                          ; $53a0: $07
    rst $38                                       ; $53a1: $ff
    db $fd                                        ; $53a2: $fd
    cp $fa                                        ; $53a3: $fe $fa
    db $fd                                        ; $53a5: $fd
    adc h                                         ; $53a6: $8c
    inc c                                         ; $53a7: $0c
    sub b                                         ; $53a8: $90
    inc l                                         ; $53a9: $2c
    sub h                                         ; $53aa: $94
    inc c                                         ; $53ab: $0c
    nop                                           ; $53ac: $00
    db $fd                                        ; $53ad: $fd
    ld a, [$fcfb]                                 ; $53ae: $fa $fb $fc
    ld d, l                                       ; $53b1: $55
    ld a, [$f4ab]                                 ; $53b2: $fa $ab $f4
    rlca                                          ; $53b5: $07
    rst $30                                       ; $53b6: $f7
    ld hl, sp+$0b                                 ; $53b7: $f8 $0b
    db $f4                                        ; $53b9: $f4
    cpl                                           ; $53ba: $2f
    jr nz, jr_0a3_53be                            ; $53bb: $20 $01

    and h                                         ; $53bd: $a4

jr_0a3_53be:
    inc c                                         ; $53be: $0c
    xor b                                         ; $53bf: $a8
    inc c                                         ; $53c0: $0c
    ld c, b                                       ; $53c1: $48
    rrca                                          ; $53c2: $0f
    ld bc, $1f10                                  ; $53c3: $01 $10 $1f
    rra                                           ; $53c6: $1f
    inc d                                         ; $53c7: $14
    ld [$40bf], sp                                ; $53c8: $08 $bf $40
    ld e, a                                       ; $53cb: $5f
    ld [$37a0], sp                                ; $53cc: $08 $a0 $37
    ret z                                         ; $53cf: $c8

    ld a, a                                       ; $53d0: $7f
    call nc, Call_0a3_7f06                        ; $53d1: $d4 $06 $7f
    add b                                         ; $53d4: $80
    rra                                           ; $53d5: $1f
    or a                                          ; $53d6: $b7
    ld bc, $3f00                                  ; $53d7: $01 $00 $3f
    ld bc, $e710                                  ; $53da: $01 $10 $e7
    ld bc, $e67f                                  ; $53dd: $01 $7f $e6
    rlca                                          ; $53e0: $07
    ld h, $10                                     ; $53e1: $26 $10
    inc d                                         ; $53e3: $14

jr_0a3_53e4:
    jr jr_0a3_536c                                ; $53e4: $18 $86

    ld [de], a                                    ; $53e6: $12
    ld [$e0e0], sp                                ; $53e7: $08 $e0 $e0
    db $fc                                        ; $53ea: $fc

jr_0a3_53eb:
    db $fc                                        ; $53eb: $fc
    ccf                                           ; $53ec: $3f
    ld b, l                                       ; $53ed: $45
    ld b, b                                       ; $53ee: $40
    inc d                                         ; $53ef: $14
    add b                                         ; $53f0: $80
    ld a, a                                       ; $53f1: $7f
    add b                                         ; $53f2: $80
    ld [$500b], a                                 ; $53f3: $ea $0b $50
    ld l, h                                       ; $53f6: $6c
    jr z, jr_0a3_5411                             ; $53f7: $28 $18

    dec a                                         ; $53f9: $3d
    ld c, [hl]                                    ; $53fa: $4e
    db $10                                        ; $53fb: $10
    inc c                                         ; $53fc: $0c
    ld c, l                                       ; $53fd: $4d
    ld d, [hl]                                    ; $53fe: $56
    cp c                                          ; $53ff: $b9
    ld b, $b0                                     ; $5400: $06 $b0
    ld [de], a                                    ; $5402: $12
    ld hl, $520b                                  ; $5403: $21 $0b $52
    rst $38                                       ; $5406: $ff
    ld bc, $8070                                  ; $5407: $01 $70 $80
    ld [bc], a                                    ; $540a: $02
    nop                                           ; $540b: $00
    ret nz                                        ; $540c: $c0

    cp a                                          ; $540d: $bf
    inc b                                         ; $540e: $04
    jr @-$3d                                      ; $540f: $18 $c1

jr_0a3_5411:
    jr nz, @-$3f                                  ; $5411: $20 $bf

    add e                                         ; $5413: $83
    inc b                                         ; $5414: $04
    ld h, b                                       ; $5415: $60
    rst $38                                       ; $5416: $ff
    rst $38                                       ; $5417: $ff
    nop                                           ; $5418: $00
    rst $38                                       ; $5419: $ff
    xor d                                         ; $541a: $aa
    jr c, jr_0a3_5472                             ; $541b: $38 $55

    nop                                           ; $541d: $00
    ld b, $00                                     ; $541e: $06 $00
    ld [$3d00], sp                                ; $5420: $08 $00 $3d
    nop                                           ; $5423: $00
    ld d, l                                       ; $5424: $55
    cp $28                                        ; $5425: $fe $28
    nop                                           ; $5427: $00
    rst $10                                       ; $5428: $d7
    ld d, l                                       ; $5429: $55
    xor d                                         ; $542a: $aa
    ld a, [$ed05]                                 ; $542b: $fa $05 $ed
    ld [de], a                                    ; $542e: $12
    ei                                            ; $542f: $fb
    ld b, b                                       ; $5430: $40
    inc b                                         ; $5431: $04
    dec d                                         ; $5432: $15
    ld [$ff2a], sp                                ; $5433: $08 $2a $ff
    ld [bc], a                                    ; $5436: $02
    db $fd                                        ; $5437: $fd
    ld d, l                                       ; $5438: $55
    xor d                                         ; $5439: $aa
    jr nz, jr_0a3_53eb                            ; $543a: $20 $af

    ld d, b                                       ; $543c: $50
    ld c, $08                                     ; $543d: $0e $08
    cp a                                          ; $543f: $bf
    ld b, b                                       ; $5440: $40
    rst $38                                       ; $5441: $ff
    nop                                           ; $5442: $00
    xor d                                         ; $5443: $aa
    nop                                           ; $5444: $00
    rst $38                                       ; $5445: $ff
    xor e                                         ; $5446: $ab
    ld d, h                                       ; $5447: $54
    ld d, a                                       ; $5448: $57
    xor b                                         ; $5449: $a8
    cp l                                          ; $544a: $bd
    ld b, d                                       ; $544b: $42
    ld a, e                                       ; $544c: $7b
    ld b, b                                       ; $544d: $40
    add h                                         ; $544e: $84
    inc sp                                        ; $544f: $33
    stop                                          ; $5450: $10 $00
    ld a, [bc]                                    ; $5452: $0a
    rst $38                                       ; $5453: $ff
    ld d, b                                       ; $5454: $50
    xor a                                         ; $5455: $af
    cp d                                          ; $5456: $ba
    ld bc, $fd45                                  ; $5457: $01 $45 $fd
    ld [bc], a                                    ; $545a: $02
    rst $28                                       ; $545b: $ef
    db $10                                        ; $545c: $10
    rst $18                                       ; $545d: $df
    jr nz, jr_0a3_5472                            ; $545e: $20 $12

    jr jr_0a3_53e4                                ; $5460: $18 $82

    ld b, $88                                     ; $5462: $06 $88
    db $fd                                        ; $5464: $fd
    inc bc                                        ; $5465: $03
    rst $20                                       ; $5466: $e7
    inc b                                         ; $5467: $04
    rst $20                                       ; $5468: $e7
    ld h, l                                       ; $5469: $65
    db $10                                        ; $546a: $10
    sbc a                                         ; $546b: $9f

jr_0a3_546c:
    inc b                                         ; $546c: $04
    nop                                           ; $546d: $00
    sub a                                         ; $546e: $97
    jr jr_0a3_546c                                ; $546f: $18 $fb

    add a                                         ; $5471: $87

jr_0a3_5472:
    ld a, [hl+]                                   ; $5472: $2a
    ld e, b                                       ; $5473: $58
    ld a, a                                       ; $5474: $7f
    add b                                         ; $5475: $80
    jr nz, @-$57                                  ; $5476: $20 $a7

    ld h, b                                       ; $5478: $60
    ld e, $00                                     ; $5479: $1e $00
    inc b                                         ; $547b: $04
    rst $38                                       ; $547c: $ff
    ld [bc], a                                    ; $547d: $02
    cp $01                                        ; $547e: $fe $01
    jp nz, Jump_000_2844                          ; $5480: $c2 $44 $28

    ld l, h                                       ; $5483: $6c
    ld [$14eb], sp                                ; $5484: $08 $eb $14
    ld e, a                                       ; $5487: $5f
    and b                                         ; $5488: $a0
    ld d, h                                       ; $5489: $54
    ld c, b                                       ; $548a: $48
    rst $30                                       ; $548b: $f7
    ld b, d                                       ; $548c: $42
    ld [$4862], sp                                ; $548d: $08 $62 $48
    rst $28                                       ; $5490: $ef
    db $10                                        ; $5491: $10
    rst $38                                       ; $5492: $ff
    nop                                           ; $5493: $00
    and h                                         ; $5494: $a4
    jr @+$01                                      ; $5495: $18 $ff

    jr nz, jr_0a3_5499                            ; $5497: $20 $00

jr_0a3_5499:
    db $fc                                        ; $5499: $fc
    ld [bc], a                                    ; $549a: $02
    nop                                           ; $549b: $00
    cp $01                                        ; $549c: $fe $01
    or l                                          ; $549e: $b5
    ld c, d                                       ; $549f: $4a
    ld [$1500], a                                 ; $54a0: $ea $00 $15
    and b                                         ; $54a3: $a0
    rst $38                                       ; $54a4: $ff
    ld b, c                                       ; $54a5: $41
    cp [hl]                                       ; $54a6: $be
    adc b                                         ; $54a7: $88

jr_0a3_54a8:
    ld [hl], a                                    ; $54a8: $77
    ld d, l                                       ; $54a9: $55
    inc b                                         ; $54aa: $04
    xor d                                         ; $54ab: $aa
    rst $28                                       ; $54ac: $ef
    db $10                                        ; $54ad: $10
    cp l                                          ; $54ae: $bd
    ld b, d                                       ; $54af: $42
    push de                                       ; $54b0: $d5
    ld [$ffaa], sp                                ; $54b1: $08 $aa $ff
    nop                                           ; $54b4: $00
    dec b                                         ; $54b5: $05
    ld a, [$d42b]                                 ; $54b6: $fa $2b $d4
    ld d, [hl]                                    ; $54b9: $56
    xor c                                         ; $54ba: $a9
    xor l                                         ; $54bb: $ad
    ld d, d                                       ; $54bc: $52
    ret nz                                        ; $54bd: $c0

    ld l, b                                       ; $54be: $68
    ld [$08d0], sp                                ; $54bf: $08 $d0 $08
    ld d, b                                       ; $54c2: $50
    xor a                                         ; $54c3: $af
    ld [$f715], a                                 ; $54c4: $ea $15 $f7
    ld [$cd10], sp                                ; $54c7: $08 $10 $cd
    ld [bc], a                                    ; $54ca: $02
    set 4, b                                      ; $54cb: $cb $e0
    db $10                                        ; $54cd: $10
    add l                                         ; $54ce: $85
    rst $38                                       ; $54cf: $ff
    db $10                                        ; $54d0: $10
    adc a                                         ; $54d1: $8f
    ld [$158a], sp                                ; $54d2: $08 $8a $15
    db $dd                                        ; $54d5: $dd
    ld [hl+], a                                   ; $54d6: $22
    ld e, h                                       ; $54d7: $5c
    ld [$009f], sp                                ; $54d8: $08 $9f $00
    sbc a                                         ; $54db: $9f
    ret z                                         ; $54dc: $c8

    ld [hl+], a                                   ; $54dd: $22
    nop                                           ; $54de: $00

jr_0a3_54df:
    add $50                                       ; $54df: $c6 $50
    add b                                         ; $54e1: $80
    and $ba                                       ; $54e2: $e6 $ba
    nop                                           ; $54e4: $00
    ei                                            ; $54e5: $fb
    inc b                                         ; $54e6: $04
    db $fd                                        ; $54e7: $fd
    inc c                                         ; $54e8: $0c
    ld [bc], a                                    ; $54e9: $02
    rst $38                                       ; $54ea: $ff
    ld [bc], a                                    ; $54eb: $02
    rst $38                                       ; $54ec: $ff
    sbc h                                         ; $54ed: $9c
    jr nc, jr_0a3_54a8                            ; $54ee: $30 $b8

    jr c, @+$41                                   ; $54f0: $38 $3f

    nop                                           ; $54f2: $00
    nop                                           ; $54f3: $00
    rst $38                                       ; $54f4: $ff
    ld b, b                                       ; $54f5: $40
    rst $28                                       ; $54f6: $ef
    jr nc, @+$40                                  ; $54f7: $30 $3e

    ld [$041c], sp                                ; $54f9: $08 $1c $04
    nop                                           ; $54fc: $00
    sbc h                                         ; $54fd: $9c
    nop                                           ; $54fe: $00
    sbc $22                                       ; $54ff: $de $22
    rst $30                                       ; $5501: $f7
    inc c                                         ; $5502: $0c

Call_0a3_5503:
    cp a                                          ; $5503: $bf
    ld [hl], b                                    ; $5504: $70
    add b                                         ; $5505: $80
    ld c, c                                       ; $5506: $49
    add hl, bc                                    ; $5507: $09
    ld a, e                                       ; $5508: $7b
    rlca                                          ; $5509: $07
    scf                                           ; $550a: $37
    jr c, @+$41                                   ; $550b: $38 $3f

    nop                                           ; $550d: $00
    ld a, a                                       ; $550e: $7f
    nop                                           ; $550f: $00
    nop                                           ; $5510: $00
    rst $30                                       ; $5511: $f7
    adc b                                         ; $5512: $88
    rst $38                                       ; $5513: $ff
    ld b, b                                       ; $5514: $40
    rst $38                                       ; $5515: $ff
    ld bc, $16dd                                  ; $5516: $01 $dd $16
    ld a, $bf                                     ; $5519: $3e $bf
    ret nz                                        ; $551b: $c0

    ld [$0231], sp                                ; $551c: $08 $31 $02
    ld [hl-], a                                   ; $551f: $32
    nop                                           ; $5520: $00
    ld a, [bc]                                    ; $5521: $0a
    jr nz, jr_0a3_54df                            ; $5522: $20 $bb

    ld b, $44                                     ; $5524: $06 $44
    push af                                       ; $5526: $f5
    ld a, [bc]                                    ; $5527: $0a
    ld hl, sp+$07                                 ; $5528: $f8 $07
    inc [hl]                                      ; $552a: $34
    add hl, sp                                    ; $552b: $39
    ret nz                                        ; $552c: $c0

    jr jr_0a3_556a                                ; $552d: $18 $3b

    nop                                           ; $552f: $00
    call nz, Call_0a3_6897                        ; $5530: $c4 $97 $68
    cpl                                           ; $5533: $2f
    ret nc                                        ; $5534: $d0

    dec d                                         ; $5535: $15
    ld [$004b], a                                 ; $5536: $ea $4b $00
    or h                                          ; $5539: $b4
    dec h                                         ; $553a: $25
    jp c, $fd42                                   ; $553b: $da $42 $fd

    ld bc, $bffe                                  ; $553e: $01 $fe $bf
    nop                                           ; $5541: $00
    ld b, b                                       ; $5542: $40
    db $dd                                        ; $5543: $dd
    ld [hl+], a                                   ; $5544: $22
    cp a                                          ; $5545: $bf
    ld b, b                                       ; $5546: $40
    cp $01                                        ; $5547: $fe $01
    db $ed                                        ; $5549: $ed
    ld bc, $5e12                                  ; $554a: $01 $12 $5e
    and c                                         ; $554d: $a1
    db $fd                                        ; $554e: $fd
    ld [bc], a                                    ; $554f: $02
    ld l, d                                       ; $5550: $6a
    sub l                                         ; $5551: $95
    ld l, d                                       ; $5552: $6a
    add hl, bc                                    ; $5553: $09
    nop                                           ; $5554: $00
    ld e, a                                       ; $5555: $5f
    and b                                         ; $5556: $a0
    cp b                                          ; $5557: $b8
    ld b, c                                       ; $5558: $41
    ld b, b                                       ; $5559: $40
    or b                                          ; $555a: $b0
    sub b                                         ; $555b: $90
    ld h, b                                       ; $555c: $60
    nop                                           ; $555d: $00
    add hl, hl                                    ; $555e: $29
    reti                                          ; $555f: $d9


    ld b, b                                       ; $5560: $40
    cp a                                          ; $5561: $bf
    db $f4                                        ; $5562: $f4
    dec bc                                        ; $5563: $0b
    xor a                                         ; $5564: $af
    ld d, a                                       ; $5565: $57
    nop                                           ; $5566: $00
    ld e, c                                       ; $5567: $59
    cp [hl]                                       ; $5568: $be
    ld [c], a                                     ; $5569: $e2

jr_0a3_556a:
    ld a, l                                       ; $556a: $7d
    ret z                                         ; $556b: $c8

    or a                                          ; $556c: $b7
    add c                                         ; $556d: $81
    ld a, a                                       ; $556e: $7f
    nop                                           ; $556f: $00
    and b                                         ; $5570: $a0
    rst $38                                       ; $5571: $ff
    push hl                                       ; $5572: $e5
    rst $38                                       ; $5573: $ff
    jr z, @+$01                                   ; $5574: $28 $ff

    ld b, d                                       ; $5576: $42
    db $fd                                        ; $5577: $fd
    nop                                           ; $5578: $00
    xor c                                         ; $5579: $a9
    cp $d4                                        ; $557a: $fe $d4
    rst $38                                       ; $557c: $ff
    ld a, [$dfff]                                 ; $557d: $fa $ff $df
    rst $38                                       ; $5580: $ff
    ld b, b                                       ; $5581: $40
    db $fd                                        ; $5582: $fd
    dec c                                         ; $5583: $0d
    ld [bc], a                                    ; $5584: $02
    ret nc                                        ; $5585: $d0

    cpl                                           ; $5586: $2f
    add hl, hl                                    ; $5587: $29
    sub $00                                       ; $5588: $d6 $00
    rst $38                                       ; $558a: $ff
    ld d, h                                       ; $558b: $54
    ld b, c                                       ; $558c: $41
    call c, Call_0a3_7501                         ; $558d: $dc $01 $75
    dec de                                        ; $5590: $1b
    ld [de], a                                    ; $5591: $12
    ld de, $0137                                  ; $5592: $11 $37 $01
    ld [hl+], a                                   ; $5595: $22
    rst $38                                       ; $5596: $ff
    ld bc, $ff55                                  ; $5597: $01 $55 $ff
    xor [hl]                                      ; $559a: $ae
    rst $38                                       ; $559b: $ff
    ld a, a                                       ; $559c: $7f
    rst $38                                       ; $559d: $ff
    ei                                            ; $559e: $fb
    dec l                                         ; $559f: $2d
    ld [bc], a                                    ; $55a0: $02
    ld bc, $e707                                  ; $55a1: $01 $07 $e7
    ld b, d                                       ; $55a4: $42
    rst $20                                       ; $55a5: $e7
    cp b                                          ; $55a6: $b8
    rst $38                                       ; $55a7: $ff
    ld l, h                                       ; $55a8: $6c
    scf                                           ; $55a9: $37
    ld [bc], a                                    ; $55aa: $02
    ld b, b                                       ; $55ab: $40
    ld [hl], a                                    ; $55ac: $77
    db $10                                        ; $55ad: $10
    db $10                                        ; $55ae: $10
    rst $30                                       ; $55af: $f7
    ld hl, sp-$26                                 ; $55b0: $f8 $da
    dec a                                         ; $55b2: $3d
    ld e, l                                       ; $55b3: $5d
    ld c, $00                                     ; $55b4: $0e $00
    ld a, [bc]                                    ; $55b6: $0a
    rlca                                          ; $55b7: $07
    inc [hl]                                      ; $55b8: $34
    inc bc                                        ; $55b9: $03
    rst $18                                       ; $55ba: $df
    ld bc, $03fc                                  ; $55bb: $01 $fc $03
    nop                                           ; $55be: $00
    jp hl                                         ; $55bf: $e9


    rla                                           ; $55c0: $17
    jp hl                                         ; $55c1: $e9


    rlca                                          ; $55c2: $07
    or $0b                                        ; $55c3: $f6 $0b
    ld l, b                                       ; $55c5: $68
    sub a                                         ; $55c6: $97
    nop                                           ; $55c7: $00
    and e                                         ; $55c8: $a3
    ld e, [hl]                                    ; $55c9: $5e
    rrca                                          ; $55ca: $0f
    rst $38                                       ; $55cb: $ff
    sbc l                                         ; $55cc: $9d
    cp $da                                        ; $55cd: $fe $da
    db $fc                                        ; $55cf: $fc
    nop                                           ; $55d0: $00
    ld c, e                                       ; $55d1: $4b
    cp h                                          ; $55d2: $bc
    dec de                                        ; $55d3: $1b
    cp $ef                                        ; $55d4: $fe $ef
    ld a, [c]                                     ; $55d6: $f2
    sub $eb                                       ; $55d7: $d6 $eb
    nop                                           ; $55d9: $00
    ei                                            ; $55da: $fb
    cp $06                                        ; $55db: $fe $06
    rst $38                                       ; $55dd: $ff
    ld d, e                                       ; $55de: $53
    xor a                                         ; $55df: $af
    ld e, c                                       ; $55e0: $59
    rlca                                          ; $55e1: $07
    nop                                           ; $55e2: $00
    dec l                                         ; $55e3: $2d
    jp Jump_000_060d                              ; $55e4: $c3 $0d $06


    ld [bc], a                                    ; $55e7: $02
    rlca                                          ; $55e8: $07
    ld b, l                                       ; $55e9: $45
    inc bc                                        ; $55ea: $03
    nop                                           ; $55eb: $00
    xor l                                         ; $55ec: $ad
    inc bc                                        ; $55ed: $03
    jp nc, $5a07                                  ; $55ee: $d2 $07 $5a

    and a                                         ; $55f1: $a7
    add l                                         ; $55f2: $85
    cp $00                                        ; $55f3: $fe $00
    ld sp, hl                                     ; $55f5: $f9
    cp $d6                                        ; $55f6: $fe $d6
    cpl                                           ; $55f8: $2f
    dec l                                         ; $55f9: $2d
    sbc $1c                                       ; $55fa: $de $1c
    rst $38                                       ; $55fc: $ff
    nop                                           ; $55fd: $00
    adc $ff                                       ; $55fe: $ce $ff
    db $db                                        ; $5600: $db
    add a                                         ; $5601: $87
    add d                                         ; $5602: $82
    ld bc, $0000                                  ; $5603: $01 $00 $00
    nop                                           ; $5606: $00
    add b                                         ; $5607: $80
    nop                                           ; $5608: $00
    xor b                                         ; $5609: $a8
    rra                                           ; $560a: $1f
    ld [hl-], a                                   ; $560b: $32
    rrca                                          ; $560c: $0f
    ld [hl], l                                    ; $560d: $75
    adc a                                         ; $560e: $8f
    nop                                           ; $560f: $00
    and e                                         ; $5610: $a3
    rst $18                                       ; $5611: $df
    ld d, l                                       ; $5612: $55
    rst $38                                       ; $5613: $ff
    db $eb                                        ; $5614: $eb
    rst $38                                       ; $5615: $ff
    db $fc                                        ; $5616: $fc
    ld a, a                                       ; $5617: $7f
    nop                                           ; $5618: $00
    cp a                                          ; $5619: $bf
    ld a, b                                       ; $561a: $78
    dec d                                         ; $561b: $15
    db $eb                                        ; $561c: $eb
    ld bc, $2bff                                  ; $561d: $01 $ff $2b
    rst $38                                       ; $5620: $ff
    nop                                           ; $5621: $00
    ld d, a                                       ; $5622: $57
    rst $38                                       ; $5623: $ff

jr_0a3_5624:
    db $fd                                        ; $5624: $fd
    cp $9a                                        ; $5625: $fe $9a
    db $fc                                        ; $5627: $fc
    di                                            ; $5628: $f3
    inc c                                         ; $5629: $0c
    nop                                           ; $562a: $00
    xor [hl]                                      ; $562b: $ae
    dec b                                         ; $562c: $05
    ld e, h                                       ; $562d: $5c
    cp a                                          ; $562e: $bf
    xor d                                         ; $562f: $aa
    rra                                           ; $5630: $1f
    dec [hl]                                      ; $5631: $35
    rst $08                                       ; $5632: $cf
    inc b                                         ; $5633: $04
    sbc [hl]                                      ; $5634: $9e
    rst $38                                       ; $5635: $ff
    rst $30                                       ; $5636: $f7
    rrca                                          ; $5637: $0f
    rst $18                                       ; $5638: $df
    ld b, [hl]                                    ; $5639: $46
    nop                                           ; $563a: $00
    db $dd                                        ; $563b: $dd
    inc bc                                        ; $563c: $03
    nop                                           ; $563d: $00
    rst $10                                       ; $563e: $d7
    add sp, $0a                                   ; $563f: $e8 $0a
    push af                                       ; $5641: $f5
    dec b                                         ; $5642: $05
    ld a, [$ed12]                                 ; $5643: $fa $12 $ed
    nop                                           ; $5646: $00
    and c                                         ; $5647: $a1
    sbc $10                                       ; $5648: $de $10

jr_0a3_564a:
    rst $28                                       ; $564a: $ef
    rrca                                          ; $564b: $0f
    rst $38                                       ; $564c: $ff
    ldh a, [rIE]                                  ; $564d: $f0 $ff
    nop                                           ; $564f: $00
    ld a, a                                       ; $5650: $7f
    and b                                         ; $5651: $a0
    xor $31                                       ; $5652: $ee $31
    ld a, l                                       ; $5654: $7d
    sub d                                         ; $5655: $92
    db $e3                                        ; $5656: $e3
    inc b                                         ; $5657: $04
    nop                                           ; $5658: $00
    ld b, b                                       ; $5659: $40
    add e                                         ; $565a: $83
    ld b, e                                       ; $565b: $43
    jp $e582                                      ; $565c: $c3 $82 $e5


jr_0a3_565f:
    nop                                           ; $565f: $00
    rst $38                                       ; $5660: $ff
    nop                                           ; $5661: $00
    rst $18                                       ; $5662: $df
    jr nz, jr_0a3_5624                            ; $5663: $20 $bf

    ld b, b                                       ; $5665: $40
    db $fd                                        ; $5666: $fd
    ld [bc], a                                    ; $5667: $02
    ld [$0015], a                                 ; $5668: $ea $15 $00
    ld d, h                                       ; $566b: $54
    xor e                                         ; $566c: $ab
    and b                                         ; $566d: $a0
    db $d3                                        ; $566e: $d3
    ld [hl], e                                    ; $566f: $73
    di                                            ; $5670: $f3
    jr z, jr_0a3_564a                             ; $5671: $28 $d7

    nop                                           ; $5673: $00
    jp nc, $a02d                                  ; $5674: $d2 $2d $a0

    ld e, a                                       ; $5677: $5f
    ld c, b                                       ; $5678: $48
    or a                                          ; $5679: $b7
    sub c                                         ; $567a: $91
    ld l, [hl]                                    ; $567b: $6e
    nop                                           ; $567c: $00
    inc b                                         ; $567d: $04
    ei                                            ; $567e: $fb
    jr nz, jr_0a3_565f                            ; $567f: $20 $de

    ldh a, [$fc]                                  ; $5681: $f0 $fc
    inc e                                         ; $5683: $1c
    db $fc                                        ; $5684: $fc
    db $10                                        ; $5685: $10
    ld [de], a                                    ; $5686: $12
    rst $38                                       ; $5687: $ff
    inc h                                         ; $5688: $24
    xor $00                                       ; $5689: $ee $00
    and d                                         ; $568b: $a2
    rst $38                                       ; $568c: $ff
    ld b, l                                       ; $568d: $45
    rst $38                                       ; $568e: $ff
    db $10                                        ; $568f: $10
    xor e                                         ; $5690: $ab
    rst $38                                       ; $5691: $ff
    cp $0d                                        ; $5692: $fe $0d
    inc bc                                        ; $5694: $03
    nop                                           ; $5695: $00
    rst $38                                       ; $5696: $ff
    dec h                                         ; $5697: $25
    rst $38                                       ; $5698: $ff
    nop                                           ; $5699: $00
    ld c, d                                       ; $569a: $4a
    rst $38                                       ; $569b: $ff
    cp l                                          ; $569c: $bd
    rst $38                                       ; $569d: $ff
    sbc $ff                                       ; $569e: $de $ff
    cp a                                          ; $56a0: $bf
    rst $38                                       ; $56a1: $ff
    ld b, b                                       ; $56a2: $40
    rst $30                                       ; $56a3: $f7
    dec e                                         ; $56a4: $1d
    inc bc                                        ; $56a5: $03
    add c                                         ; $56a6: $81
    rst $38                                       ; $56a7: $ff
    ld b, d                                       ; $56a8: $42
    rst $38                                       ; $56a9: $ff
    adc b                                         ; $56aa: $88
    rst $38                                       ; $56ab: $ff
    nop                                           ; $56ac: $00
    ld de, $2aff                                  ; $56ad: $11 $ff $2a
    rst $38                                       ; $56b0: $ff
    ld b, a                                       ; $56b1: $47
    rst $08                                       ; $56b2: $cf
    rst $08                                       ; $56b3: $cf
    rst $08                                       ; $56b4: $cf
    nop                                           ; $56b5: $00
    rst $38                                       ; $56b6: $ff
    rst $38                                       ; $56b7: $ff
    inc b                                         ; $56b8: $04
    cp $49                                        ; $56b9: $fe $49
    rst $38                                       ; $56bb: $ff
    sub a                                         ; $56bc: $97
    rst $38                                       ; $56bd: $ff
    db $10                                        ; $56be: $10
    cpl                                           ; $56bf: $2f
    rst $38                                       ; $56c0: $ff
    ld e, e                                       ; $56c1: $5b
    ld e, $10                                     ; $56c2: $1e $10
    rst $38                                       ; $56c4: $ff
    rst $38                                       ; $56c5: $ff
    db $f4                                        ; $56c6: $f4
    rrca                                          ; $56c7: $0f
    db $10                                        ; $56c8: $10
    inc l                                         ; $56c9: $2c
    rst $18                                       ; $56ca: $df
    ld e, d                                       ; $56cb: $5a
    ld a, [hl-]                                   ; $56cc: $3a
    ld bc, $ff1f                                  ; $56cd: $01 $1f $ff
    sub $2f                                       ; $56d0: $d6 $2f
    nop                                           ; $56d2: $00
    db $eb                                        ; $56d3: $eb
    rla                                           ; $56d4: $17
    ld d, e                                       ; $56d5: $53
    xor a                                         ; $56d6: $af
    ccf                                           ; $56d7: $3f
    rst $38                                       ; $56d8: $ff
    ld d, h                                       ; $56d9: $54
    rst $38                                       ; $56da: $ff
    nop                                           ; $56db: $00
    and a                                         ; $56dc: $a7
    ld hl, sp+$5c                                 ; $56dd: $f8 $5c
    ldh a, [$a8]                                  ; $56df: $f0 $a8
    ldh a, [$e4]                                  ; $56e1: $f0 $e4
    ld hl, sp+$01                                 ; $56e3: $f8 $01
    xor e                                         ; $56e5: $ab
    db $f4                                        ; $56e6: $f4
    or l                                          ; $56e7: $b5
    ld a, [$fe03]                                 ; $56e8: $fa $03 $fe
    ld a, [bc]                                    ; $56eb: $0a
    cp [hl]                                       ; $56ec: $be
    nop                                           ; $56ed: $00
    nop                                           ; $56ee: $00
    cp l                                          ; $56ef: $bd
    rst $38                                       ; $56f0: $ff
    ld [hl], a                                    ; $56f1: $77
    ld hl, sp-$27                                 ; $56f2: $f8 $d9
    ldh [rNR41], a                                ; $56f4: $e0 $20
    ret nz                                        ; $56f6: $c0

    nop                                           ; $56f7: $00
    ld d, l                                       ; $56f8: $55
    add b                                         ; $56f9: $80
    cp d                                          ; $56fa: $ba
    dec e                                         ; $56fb: $1d
    adc [hl]                                      ; $56fc: $8e
    rrca                                          ; $56fd: $0f
    ld e, l                                       ; $56fe: $5d
    adc a                                         ; $56ff: $8f
    nop                                           ; $5700: $00
    and d                                         ; $5701: $a2
    reti                                          ; $5702: $d9


    inc [hl]                                      ; $5703: $34
    ld sp, hl                                     ; $5704: $f9
    ld l, e                                       ; $5705: $6b
    dec e                                         ; $5706: $1d
    dec d                                         ; $5707: $15
    rrca                                          ; $5708: $0f
    jr nz, jr_0a3_571a                            ; $5709: $20 $0f

    rlca                                          ; $570b: $07
    ret nz                                        ; $570c: $c0

    ld b, c                                       ; $570d: $41
    ld e, d                                       ; $570e: $5a
    ld [bc], a                                    ; $570f: $02
    dec a                                         ; $5710: $3d
    ld bc, $803e                                  ; $5711: $01 $3e $80
    or b                                          ; $5714: $b0
    add hl, de                                    ; $5715: $19
    cp [hl]                                       ; $5716: $be
    ld b, c                                       ; $5717: $41
    ld c, e                                       ; $5718: $4b
    or h                                          ; $5719: $b4

jr_0a3_571a:
    sub h                                         ; $571a: $94
    ld l, e                                       ; $571b: $6b
    ld a, [hl+]                                   ; $571c: $2a
    ld b, b                                       ; $571d: $40
    db $dd                                        ; $571e: $dd
    or b                                          ; $571f: $b0
    add hl, bc                                    ; $5720: $09
    xor b                                         ; $5721: $a8
    ld d, a                                       ; $5722: $57
    ld d, c                                       ; $5723: $51
    xor [hl]                                      ; $5724: $ae
    and d                                         ; $5725: $a2
    ld e, l                                       ; $5726: $5d
    ld b, b                                       ; $5727: $40
    ld c, b                                       ; $5728: $48
    or b                                          ; $5729: $b0
    ld bc, $ff20                                  ; $572a: $01 $20 $ff
    add h                                         ; $572d: $84
    rst $38                                       ; $572e: $ff
    jr z, @+$81                                   ; $572f: $28 $7f

    add h                                         ; $5731: $84
    or b                                          ; $5732: $b0
    ld e, c                                       ; $5733: $59
    add hl, bc                                    ; $5734: $09
    rst $38                                       ; $5735: $ff
    ld d, d                                       ; $5736: $52
    rst $38                                       ; $5737: $ff
    sub b                                         ; $5738: $90
    ld c, c                                       ; $5739: $49
    sub l                                         ; $573a: $95
    ld l, e                                       ; $573b: $6b
    sub b                                         ; $573c: $90
    jr nc, jr_0a3_5798                            ; $573d: $30 $59

    add e                                         ; $573f: $83
    ld a, [hl]                                    ; $5740: $7e
    add b                                         ; $5741: $80
    ld e, b                                       ; $5742: $58
    sbc d                                         ; $5743: $9a
    ldh [rLCDC], a                                ; $5744: $e0 $40
    add b                                         ; $5746: $80
    ld b, d                                       ; $5747: $42
    add b                                         ; $5748: $80
    ld l, b                                       ; $5749: $68
    ld bc, $8045                                  ; $574a: $01 $45 $80
    ld l, d                                       ; $574d: $6a
    add c                                         ; $574e: $81
    db $fc                                        ; $574f: $fc
    dec bc                                        ; $5750: $0b
    ld c, d                                       ; $5751: $4a
    nop                                           ; $5752: $00
    db $f4                                        ; $5753: $f4
    db $ec                                        ; $5754: $ec
    db $10                                        ; $5755: $10
    sbc b                                         ; $5756: $98
    nop                                           ; $5757: $00
    sub h                                         ; $5758: $94
    nop                                           ; $5759: $00
    ld a, [bc]                                    ; $575a: $0a
    inc d                                         ; $575b: $14
    sub b                                         ; $575c: $90

jr_0a3_575d:
    ld h, l                                       ; $575d: $65
    sbc b                                         ; $575e: $98
    db $10                                        ; $575f: $10
    db $10                                        ; $5760: $10
    add c                                         ; $5761: $81
    ld e, $08                                     ; $5762: $1e $08
    and d                                         ; $5764: $a2
    nop                                           ; $5765: $00
    ld [$8055], sp                                ; $5766: $08 $55 $80
    dec l                                         ; $5769: $2d
    jp $0c1c                                      ; $576a: $c3 $1c $0c


    adc e                                         ; $576d: $8b
    rlca                                          ; $576e: $07
    ld b, $00                                     ; $576f: $06 $00
    ld bc, $0001                                  ; $5771: $01 $01 $00
    add c                                         ; $5774: $81
    nop                                           ; $5775: $00
    ld d, h                                       ; $5776: $54
    ld bc, $409a                                  ; $5777: $01 $9a $40
    pop hl                                        ; $577a: $e1
    inc l                                         ; $577b: $2c
    inc c                                         ; $577c: $0c
    ld e, c                                       ; $577d: $59
    ld b, $05                                     ; $577e: $06 $05
    ld [bc], a                                    ; $5780: $02
    inc bc                                        ; $5781: $03
    nop                                           ; $5782: $00
    ld [bc], a                                    ; $5783: $02
    jr z, jr_0a3_5788                             ; $5784: $28 $02

    ld d, l                                       ; $5786: $55
    ld [bc], a                                    ; $5787: $02

jr_0a3_5788:
    sbc [hl]                                      ; $5788: $9e
    ld a, a                                       ; $5789: $7f
    inc a                                         ; $578a: $3c
    inc c                                         ; $578b: $0c
    xor l                                         ; $578c: $ad
    jr nz, @+$05                                  ; $578d: $20 $03

    nop                                           ; $578f: $00
    ld bc, $a000                                  ; $5790: $01 $00 $a0
    nop                                           ; $5793: $00
    ld d, d                                       ; $5794: $52
    nop                                           ; $5795: $00
    ld e, l                                       ; $5796: $5d
    ld b, b                                       ; $5797: $40

jr_0a3_5798:
    and b                                         ; $5798: $a0
    ld c, h                                       ; $5799: $4c
    inc c                                         ; $579a: $0c
    and d                                         ; $579b: $a2
    db $fc                                        ; $579c: $fc
    inc [hl]                                      ; $579d: $34
    ld [$000c], sp                                ; $579e: $08 $0c $00
    ld [bc], a                                    ; $57a1: $02
    ld a, [de]                                    ; $57a2: $1a
    nop                                           ; $57a3: $00
    or l                                          ; $57a4: $b5
    ld [$1d6a], sp                                ; $57a5: $08 $6a $1d
    ld e, h                                       ; $57a8: $5c
    inc c                                         ; $57a9: $0c
    ld e, b                                       ; $57aa: $58
    ld h, c                                       ; $57ab: $61
    daa                                           ; $57ac: $27
    rst $10                                       ; $57ad: $d7
    ld bc, $0023                                  ; $57ae: $01 $23 $00
    xor d                                         ; $57b1: $aa
    nop                                           ; $57b2: $00
    ld d, h                                       ; $57b3: $54
    dec bc                                        ; $57b4: $0b
    ld l, h                                       ; $57b5: $6c
    inc c                                         ; $57b6: $0c
    nop                                           ; $57b7: $00
    xor d                                         ; $57b8: $aa
    ld [hl], b                                    ; $57b9: $70
    ld d, b                                       ; $57ba: $50
    jr nz, jr_0a3_575d                            ; $57bb: $20 $a0

    nop                                           ; $57bd: $00
    ld d, b                                       ; $57be: $50
    jr nz, @+$0b                                  ; $57bf: $20 $09

    jp z, $b530                                   ; $57c1: $ca $30 $b5

    ld a, [$0c7c]                                 ; $57c4: $fa $7c $0c
    pop de                                        ; $57c7: $d1
    cpl                                           ; $57c8: $2f
    jr nz, @+$1a                                  ; $57c9: $20 $18

    ld [$00a1], sp                                ; $57cb: $08 $a1 $00
    ld e, e                                       ; $57ce: $5b
    nop                                           ; $57cf: $00
    adc h                                         ; $57d0: $8c
    inc c                                         ; $57d1: $0c
    ld e, d                                       ; $57d2: $5a
    pop hl                                        ; $57d3: $e1
    add c                                         ; $57d4: $81
    nop                                           ; $57d5: $00
    ld b, b                                       ; $57d6: $40
    add c                                         ; $57d7: $81
    ld b, b                                       ; $57d8: $40
    pop hl                                        ; $57d9: $e1
    nop                                           ; $57da: $00
    or l                                          ; $57db: $b5
    ld b, b                                       ; $57dc: $40
    ld l, d                                       ; $57dd: $6a
    ld c, b                                       ; $57de: $48
    pop de                                        ; $57df: $d1
    sbc h                                         ; $57e0: $9c
    inc c                                         ; $57e1: $0c
    jp z, $b0f4                                   ; $57e2: $ca $f4 $b0

    ld [$00d0], sp                                ; $57e5: $08 $d0 $00
    ld l, d                                       ; $57e8: $6a
    db $10                                        ; $57e9: $10
    add b                                         ; $57ea: $80
    sub l                                         ; $57eb: $95
    add sp, -$54                                  ; $57ec: $e8 $ac
    inc c                                         ; $57ee: $0c
    ld a, [hl+]                                   ; $57ef: $2a
    ld bc, HeaderLogo                             ; $57f0: $01 $04 $01
    nop                                           ; $57f3: $00
    inc bc                                        ; $57f4: $03
    nop                                           ; $57f5: $00
    ld [bc], a                                    ; $57f6: $02
    ld bc, $0116                                  ; $57f7: $01 $16 $01
    dec hl                                        ; $57fa: $2b
    rlca                                          ; $57fb: $07
    adc b                                         ; $57fc: $88
    cp h                                          ; $57fd: $bc
    inc c                                         ; $57fe: $0c
    xor b                                         ; $57ff: $a8
    ld b, b                                       ; $5800: $40
    ret nz                                        ; $5801: $c0

    ld [hl], $02                                  ; $5802: $36 $02
    and b                                         ; $5804: $a0
    nop                                           ; $5805: $00
    ld d, h                                       ; $5806: $54
    ld de, $1a80                                  ; $5807: $11 $80 $1a
    push hl                                       ; $580a: $e5
    call z, $b40c                                 ; $580b: $cc $0c $b4
    dec bc                                        ; $580e: $0b
    ld d, $b0                                     ; $580f: $16 $b0
    nop                                           ; $5811: $00
    ld [bc], a                                    ; $5812: $02
    ld bc, $0300                                  ; $5813: $01 $00 $03
    nop                                           ; $5816: $00
    and l                                         ; $5817: $a5
    inc bc                                        ; $5818: $03
    call c, $b50c                                 ; $5819: $dc $0c $b5
    ld b, b                                       ; $581c: $40
    ld b, b                                       ; $581d: $40
    and b                                         ; $581e: $a0
    ld [$0005], sp                                ; $581f: $08 $05 $00
    ld c, d                                       ; $5822: $4a
    nop                                           ; $5823: $00
    cp d                                          ; $5824: $ba
    dec b                                         ; $5825: $05
    and d                                         ; $5826: $a2
    add b                                         ; $5827: $80
    db $10                                        ; $5828: $10
    ldh a, [$80]                                  ; $5829: $f0 $80
    ld e, b                                       ; $582b: $58
    sbc d                                         ; $582c: $9a
    ld h, h                                       ; $582d: $64
    add b                                         ; $582e: $80
    and b                                         ; $582f: $a0
    db $10                                        ; $5830: $10
    ld d, l                                       ; $5831: $55
    inc d                                         ; $5832: $14
    nop                                           ; $5833: $00
    ld a, [hl+]                                   ; $5834: $2a
    ret nc                                        ; $5835: $d0

    ld d, b                                       ; $5836: $50
    db $10                                        ; $5837: $10
    ret nz                                        ; $5838: $c0

    ld d, b                                       ; $5839: $50
    ld e, b                                       ; $583a: $58
    and d                                         ; $583b: $a2
    ld a, h                                       ; $583c: $7c
    jp z, Jump_0a3_58d0                           ; $583d: $ca $d0 $58

    db $10                                        ; $5840: $10
    inc l                                         ; $5841: $2c
    db $fd                                        ; $5842: $fd
    ld [bc], a                                    ; $5843: $02
    ldh a, [rNR32]                                ; $5844: $f0 $1c
    add l                                         ; $5846: $85
    ret nc                                        ; $5847: $d0

    inc b                                         ; $5848: $04
    xor d                                         ; $5849: $aa
    ld h, a                                       ; $584a: $67
    ld d, l                                       ; $584b: $55
    db $10                                        ; $584c: $10
    inc e                                         ; $584d: $1c
    ret nc                                        ; $584e: $d0

    ld b, h                                       ; $584f: $44
    ld bc, $20ff                                  ; $5850: $01 $ff $20
    nop                                           ; $5853: $00
    add b                                         ; $5854: $80
    inc b                                         ; $5855: $04
    add d                                         ; $5856: $82
    inc b                                         ; $5857: $04
    inc c                                         ; $5858: $0c
    cpl                                           ; $5859: $2f
    jr nc, jr_0a3_5893                            ; $585a: $30 $37

    rrca                                          ; $585c: $0f
    ld [$1a6c], a                                 ; $585d: $ea $6c $1a

jr_0a3_5860:
    dec c                                         ; $5860: $0d
    rst $18                                       ; $5861: $df
    jr nz, jr_0a3_5898                            ; $5862: $20 $34

    ei                                            ; $5864: $fb
    inc b                                         ; $5865: $04
    ld [hl+], a                                   ; $5866: $22
    dec c                                         ; $5867: $0d
    sub b                                         ; $5868: $90
    inc e                                         ; $5869: $1c
    ld hl, sp+$02                                 ; $586a: $f8 $02
    nop                                           ; $586c: $00
    ldh a, [$08]                                  ; $586d: $f0 $08
    nop                                           ; $586f: $00
    db $fc                                        ; $5870: $fc
    nop                                           ; $5871: $00
    rst $38                                       ; $5872: $ff
    db $10                                        ; $5873: $10
    rst $38                                       ; $5874: $ff
    jr nz, @+$01                                  ; $5875: $20 $ff

    ld b, b                                       ; $5877: $40
    nop                                           ; $5878: $00
    ld a, a                                       ; $5879: $7f
    nop                                           ; $587a: $00
    dec a                                         ; $587b: $3d
    inc bc                                        ; $587c: $03
    dec sp                                        ; $587d: $3b
    inc a                                         ; $587e: $3c
    ccf                                           ; $587f: $3f
    ld bc, $7d20                                  ; $5880: $01 $20 $7d
    inc bc                                        ; $5883: $03
    ld [hl], $1d                                  ; $5884: $36 $1d
    ccf                                           ; $5886: $3f
    nop                                           ; $5887: $00
    dec a                                         ; $5888: $3d
    ld [hl+], a                                   ; $5889: $22
    xor l                                         ; $588a: $ad
    inc b                                         ; $588b: $04
    sbc $f4                                       ; $588c: $de $f4
    dec bc                                        ; $588e: $0b
    ld hl, sp+$07                                 ; $588f: $f8 $07
    ld h, b                                       ; $5891: $60
    dec c                                         ; $5892: $0d

jr_0a3_5893:
    ld d, c                                       ; $5893: $51
    and b                                         ; $5894: $a0
    nop                                           ; $5895: $00
    and b                                         ; $5896: $a0
    ld b, b                                       ; $5897: $40

jr_0a3_5898:
    ldh [rP1], a                                  ; $5898: $e0 $00
    ldh [rP1], a                                  ; $589a: $e0 $00
    or c                                          ; $589c: $b1
    ld b, b                                       ; $589d: $40
    nop                                           ; $589e: $00
    rst $38                                       ; $589f: $ff
    ld [$9f8a], sp                                ; $58a0: $08 $8a $9f
    adc e                                         ; $58a3: $8b
    inc d                                         ; $58a4: $14
    rst $10                                       ; $58a5: $d7
    cp b                                          ; $58a6: $b8
    ld bc, $4abd                                  ; $58a7: $01 $bd $4a
    ld [hl], e                                    ; $58aa: $73
    add b                                         ; $58ab: $80
    di                                            ; $58ac: $f3
    nop                                           ; $58ad: $00
    ei                                            ; $58ae: $fb
    ld e, $04                                     ; $58af: $1e $04
    nop                                           ; $58b1: $00
    ld [bc], a                                    ; $58b2: $02
    rst $20                                       ; $58b3: $e7
    ld b, b                                       ; $58b4: $40
    and a                                         ; $58b5: $a7
    cp d                                          ; $58b6: $ba
    ld d, l                                       ; $58b7: $55
    db $fd                                        ; $58b8: $fd
    ld [de], a                                    ; $58b9: $12
    ld [$30cf], sp                                ; $58ba: $08 $cf $30
    rst $38                                       ; $58bd: $ff
    jr nz, jr_0a3_5860                            ; $58be: $20 $a0

    inc l                                         ; $58c0: $2c
    ld a, a                                       ; $58c1: $7f
    add b                                         ; $58c2: $80
    cp e                                          ; $58c3: $bb
    jr nc, jr_0a3_5942                            ; $58c4: $30 $7c

    rst $38                                       ; $58c6: $ff
    ld c, d                                       ; $58c7: $4a
    jr nz, jr_0a3_58de                            ; $58c8: $20 $14

    dec b                                         ; $58ca: $05
    db $10                                        ; $58cb: $10
    adc a                                         ; $58cc: $8f
    nop                                           ; $58cd: $00
    rlca                                          ; $58ce: $07
    sbc b                                         ; $58cf: $98

Jump_0a3_58d0:
    ld [bc], a                                    ; $58d0: $02
    db $10                                        ; $58d1: $10
    adc a                                         ; $58d2: $8f
    ld [$0544], sp                                ; $58d3: $08 $44 $05
    ld b, b                                       ; $58d6: $40
    ld c, l                                       ; $58d7: $4d
    db $f4                                        ; $58d8: $f4
    ld e, l                                       ; $58d9: $5d
    cp [hl]                                       ; $58da: $be
    jr c, @+$01                                   ; $58db: $38 $ff

    ld [bc], a                                    ; $58dd: $02

jr_0a3_58de:
    inc e                                         ; $58de: $1c
    dec c                                         ; $58df: $0d
    cp [hl]                                       ; $58e0: $be
    inc b                                         ; $58e1: $04
    jp nz, $f704                                  ; $58e2: $c2 $04 $f7

    inc c                                         ; $58e5: $0c
    ld hl, sp+$00                                 ; $58e6: $f8 $00
    nop                                           ; $58e8: $00
    add e                                         ; $58e9: $83
    rst $38                                       ; $58ea: $ff
    ld b, c                                       ; $58eb: $41
    cp a                                          ; $58ec: $bf
    add e                                         ; $58ed: $83
    ld a, a                                       ; $58ee: $7f
    ld bc, $3fa0                                  ; $58ef: $01 $a0 $3f
    nop                                           ; $58f2: $00
    ld bc, $0322                                  ; $58f3: $01 $22 $03
    rst $38                                       ; $58f6: $ff
    rst $38                                       ; $58f7: $ff
    and c                                         ; $58f8: $a1
    rst $38                                       ; $58f9: $ff
    ld [$f700], sp                                ; $58fa: $08 $00 $f7
    ld d, l                                       ; $58fd: $55
    xor e                                         ; $58fe: $ab
    cp d                                          ; $58ff: $ba
    ld b, l                                       ; $5900: $45
    db $ed                                        ; $5901: $ed
    inc de                                        ; $5902: $13
    cp $12                                        ; $5903: $fe $12
    ld bc, $03fd                                  ; $5905: $01 $fd $03
    add b                                         ; $5908: $80
    dec b                                         ; $5909: $05
    ld bc, $02fe                                  ; $590a: $01 $fe $02
    ld d, b                                       ; $590d: $50
    and [hl]                                      ; $590e: $a6
    nop                                           ; $590f: $00
    inc bc                                        ; $5910: $03
    call nc, $fe03                                ; $5911: $d4 $03 $fe
    inc bc                                        ; $5914: $03
    ei                                            ; $5915: $fb
    rlca                                          ; $5916: $07
    or h                                          ; $5917: $b4
    ld bc, $4d4f                                  ; $5918: $01 $4f $4d
    cp b                                          ; $591b: $b8
    cp b                                          ; $591c: $b8
    ldh a, [$d6]                                  ; $591d: $f0 $d6
    ld hl, sp+$1e                                 ; $591f: $f8 $1e
    jr jr_0a3_5923                                ; $5921: $18 $00

jr_0a3_5923:
    db $fc                                        ; $5923: $fc
    inc bc                                        ; $5924: $03
    cp [hl]                                       ; $5925: $be
    ld b, c                                       ; $5926: $41
    db $dd                                        ; $5927: $dd
    inc hl                                        ; $5928: $23
    xor [hl]                                      ; $5929: $ae
    ld d, c                                       ; $592a: $51
    nop                                           ; $592b: $00
    dec e                                         ; $592c: $1d
    db $e3                                        ; $592d: $e3
    ld l, c                                       ; $592e: $69
    ld e, $16                                     ; $592f: $1e $16
    rrca                                          ; $5931: $0f
    adc e                                         ; $5932: $8b
    rlca                                          ; $5933: $07
    nop                                           ; $5934: $00
    ld b, a                                       ; $5935: $47
    inc bc                                        ; $5936: $03
    db $ed                                        ; $5937: $ed
    inc bc                                        ; $5938: $03
    ld a, l                                       ; $5939: $7d
    add e                                         ; $593a: $83
    xor c                                         ; $593b: $a9
    ld d, a                                       ; $593c: $57
    nop                                           ; $593d: $00
    ld c, e                                       ; $593e: $4b
    cp [hl]                                       ; $593f: $be
    ld b, c                                       ; $5940: $41
    add b                                         ; $5941: $80

jr_0a3_5942:
    xor d                                         ; $5942: $aa
    ld bc, $a354                                  ; $5943: $01 $54 $a3
    nop                                           ; $5946: $00
    dec hl                                        ; $5947: $2b
    rst $10                                       ; $5948: $d7
    xor $ff                                       ; $5949: $ee $ff
    cp b                                          ; $594b: $b8
    ld a, [hl]                                    ; $594c: $7e
    ld h, a                                       ; $594d: $67
    jr c, jr_0a3_5950                             ; $594e: $38 $00

jr_0a3_5950:
    swap h                                        ; $5950: $cb $34
    cp l                                          ; $5952: $bd
    ld [hl], b                                    ; $5953: $70
    ld h, a                                       ; $5954: $67
    ld hl, sp-$1e                                 ; $5955: $f8 $e2
    db $fd                                        ; $5957: $fd
    nop                                           ; $5958: $00
    add hl, de                                    ; $5959: $19
    cp $a4                                        ; $595a: $fe $a4
    rra                                           ; $595c: $1f
    db $db                                        ; $595d: $db
    rlca                                          ; $595e: $07
    or e                                          ; $595f: $b3
    ld c, a                                       ; $5960: $4f
    nop                                           ; $5961: $00
    ld c, e                                       ; $5962: $4b
    cp a                                          ; $5963: $bf
    db $fd                                        ; $5964: $fd
    ld b, $54                                     ; $5965: $06 $54
    cpl                                           ; $5967: $2f
    and $1f                                       ; $5968: $e6 $1f
    nop                                           ; $596a: $00
    inc sp                                        ; $596b: $33
    rst $38                                       ; $596c: $ff
    and c                                         ; $596d: $a1
    ret nz                                        ; $596e: $c0

    ld b, d                                       ; $596f: $42
    add b                                         ; $5970: $80
    sub l                                         ; $5971: $95
    nop                                           ; $5972: $00
    ld bc, $856a                                  ; $5973: $01 $6a $85
    ld [hl], h                                    ; $5976: $74
    adc e                                         ; $5977: $8b
    add hl, hl                                    ; $5978: $29
    rst $10                                       ; $5979: $d7
    add e                                         ; $597a: $83
    db $10                                        ; $597b: $10
    inc c                                         ; $597c: $0c
    nop                                           ; $597d: $00
    rst $38                                       ; $597e: $ff
    and a                                         ; $597f: $a7
    ld a, b                                       ; $5980: $78
    ld e, l                                       ; $5981: $5d
    ld [c], a                                     ; $5982: $e2
    ld l, d                                       ; $5983: $6a
    push af                                       ; $5984: $f5
    jr nz, jr_0a3_5987                            ; $5985: $20 $00

jr_0a3_5987:
    rst $38                                       ; $5987: $ff
    call c, $d7ff                                 ; $5988: $dc $ff $d7
    adc a                                         ; $598b: $8f
    ld c, e                                       ; $598c: $4b
    add a                                         ; $598d: $87
    ld a, $20                                     ; $598e: $3e $20
    rst $00                                       ; $5990: $c7
    push bc                                       ; $5991: $c5
    ld c, [hl]                                    ; $5992: $4e
    inc b                                         ; $5993: $04
    jp c, $973d                                   ; $5994: $da $3d $97

    ld a, a                                       ; $5997: $7f
    xor b                                         ; $5998: $a8
    nop                                           ; $5999: $00
    rst $38                                       ; $599a: $ff
    ld [hl], h                                    ; $599b: $74
    ei                                            ; $599c: $fb
    or $fb                                        ; $599d: $f6 $fb
    ei                                            ; $599f: $fb
    cp $e6                                        ; $59a0: $fe $e6
    nop                                           ; $59a2: $00
    rra                                           ; $59a3: $1f
    ld l, d                                       ; $59a4: $6a
    rlca                                          ; $59a5: $07
    db $fd                                        ; $59a6: $fd
    inc bc                                        ; $59a7: $03
    sub h                                         ; $59a8: $94
    db $eb                                        ; $59a9: $eb
    and a                                         ; $59aa: $a7
    nop                                           ; $59ab: $00
    rst $38                                       ; $59ac: $ff
    call c, $8703                                 ; $59ad: $dc $03 $87
    nop                                           ; $59b0: $00
    ld [bc], a                                    ; $59b1: $02
    nop                                           ; $59b2: $00
    ld [$0100], a                                 ; $59b3: $ea $00 $01
    inc a                                         ; $59b6: $3c
    jp $a55a                                      ; $59b7: $c3 $5a $a5


    ret nz                                        ; $59ba: $c0

    rst $38                                       ; $59bb: $ff
    ld [$ff00], a                                 ; $59bc: $ea $00 $ff
    push af                                       ; $59bf: $f5
    rst $38                                       ; $59c0: $ff
    cp a                                          ; $59c1: $bf
    ld a, a                                       ; $59c2: $7f

jr_0a3_59c3:
    jp c, $a83c                                   ; $59c3: $da $3c $a8

    ld bc, $7070                                  ; $59c6: $01 $70 $70
    ldh [$d5], a                                  ; $59c9: $e0 $d5
    ldh [$57], a                                  ; $59cb: $e0 $57
    xor b                                         ; $59cd: $a8
    ld b, b                                       ; $59ce: $40
    inc a                                         ; $59cf: $3c
    ld b, b                                       ; $59d0: $40
    ld [bc], a                                    ; $59d1: $02
    call c, Call_0a3_7f06                         ; $59d2: $dc $06 $7f
    add b                                         ; $59d5: $80
    xor $11                                       ; $59d6: $ee $11
    ld a, l                                       ; $59d8: $7d
    add d                                         ; $59d9: $82
    nop                                           ; $59da: $00
    db $eb                                        ; $59db: $eb
    inc d                                         ; $59dc: $14
    ld d, h                                       ; $59dd: $54
    xor e                                         ; $59de: $ab
    add hl, hl                                    ; $59df: $29
    sub $12                                       ; $59e0: $d6 $12
    db $ed                                        ; $59e2: $ed
    ld [$ff00], sp                                ; $59e3: $08 $00 $ff
    sbc $21                                       ; $59e6: $de $21

jr_0a3_59e8:
    jr jr_0a3_59f0                                ; $59e8: $18 $06

    ld [bc], a                                    ; $59ea: $02
    ld [$0117], a                                 ; $59eb: $ea $17 $01
    ld d, b                                       ; $59ee: $50
    xor c                                         ; $59ef: $a9

jr_0a3_59f0:
    jr z, jr_0a3_59c3                             ; $59f0: $28 $d1

    ld d, [hl]                                    ; $59f2: $56
    xor e                                         ; $59f3: $ab
    ld a, [hl+]                                   ; $59f4: $2a
    ld b, b                                       ; $59f5: $40
    ld c, h                                       ; $59f6: $4c
    nop                                           ; $59f7: $00
    rst $18                                       ; $59f8: $df
    sub b                                         ; $59f9: $90
    ld a, a                                       ; $59fa: $7f
    ld [bc], a                                    ; $59fb: $02
    rst $38                                       ; $59fc: $ff
    add e                                         ; $59fd: $83
    rst $38                                       ; $59fe: $ff
    ld b, e                                       ; $59ff: $43
    ld [hl+], a                                   ; $5a00: $22
    rst $38                                       ; $5a01: $ff
    adc c                                         ; $5a02: $89
    jr nz, jr_0a3_5a19                            ; $5a03: $20 $14

    ld d, [hl]                                    ; $5a05: $56
    cp $fe                                        ; $5a06: $fe $fe
    ld b, c                                       ; $5a08: $41
    inc b                                         ; $5a09: $04
    inc b                                         ; $5a0a: $04
    nop                                           ; $5a0b: $00
    rst $38                                       ; $5a0c: $ff
    ld b, c                                       ; $5a0d: $41
    di                                            ; $5a0e: $f3
    sub e                                         ; $5a0f: $93
    di                                            ; $5a10: $f3
    cpl                                           ; $5a11: $2f
    rst $38                                       ; $5a12: $ff
    db $db                                        ; $5a13: $db
    add hl, bc                                    ; $5a14: $09
    rst $38                                       ; $5a15: $ff
    ld [hl], a                                    ; $5a16: $77
    ld a, a                                       ; $5a17: $7f
    ld a, a                                       ; $5a18: $7f

jr_0a3_5a19:
    ld [hl+], a                                   ; $5a19: $22
    inc bc                                        ; $5a1a: $03
    ld a, [hl-]                                   ; $5a1b: $3a
    push bc                                       ; $5a1c: $c5
    and b                                         ; $5a1d: $a0
    ld c, l                                       ; $5a1e: $4d
    nop                                           ; $5a1f: $00
    nop                                           ; $5a20: $00
    cp $d0                                        ; $5a21: $fe $d0
    ldh [$d0], a                                  ; $5a23: $e0 $d0
    jr nc, @-$4e                                  ; $5a25: $30 $b0

    ld b, b                                       ; $5a27: $40
    jr nz, @-$06                                  ; $5a28: $20 $f8

    nop                                           ; $5a2a: $00
    and b                                         ; $5a2b: $a0
    dec h                                         ; $5a2c: $25
    dec d                                         ; $5a2d: $15
    ld a, l                                       ; $5a2e: $7d
    ld [bc], a                                    ; $5a2f: $02
    ld l, a                                       ; $5a30: $6f
    stop                                          ; $5a31: $10 $00
    ld d, e                                       ; $5a33: $53
    jr nz, jr_0a3_59e8                            ; $5a34: $20 $b2

    ld b, c                                       ; $5a36: $41
    set 6, h                                      ; $5a37: $cb $f4
    or h                                          ; $5a39: $b4
    ld a, e                                       ; $5a3a: $7b
    ld [$dd2e], sp                                ; $5a3b: $08 $2e $dd
    ld b, d                                       ; $5a3e: $42
    cp [hl]                                       ; $5a3f: $be
    ldh a, [$2b]                                  ; $5a40: $f0 $2b
    ld [$8197], sp                                ; $5a42: $08 $97 $81
    ld bc, $201f                                  ; $5a45: $01 $1f $20
    rst $38                                       ; $5a48: $ff
    inc b                                         ; $5a49: $04
    ld a, a                                       ; $5a4a: $7f

jr_0a3_5a4b:
    jr z, jr_0a3_5a4b                             ; $5a4b: $28 $fe

    and b                                         ; $5a4d: $a0
    dec c                                         ; $5a4e: $0d
    ld [$9f94], sp                                ; $5a4f: $08 $94 $9f
    sbc d                                         ; $5a52: $9a
    sbc a                                         ; $5a53: $9f
    and b                                         ; $5a54: $a0
    dec e                                         ; $5a55: $1d
    ld d, b                                       ; $5a56: $50
    ld l, $28                                     ; $5a57: $2e $28
    add h                                         ; $5a59: $84
    and b                                         ; $5a5a: $a0
    ld d, l                                       ; $5a5b: $55
    db $10                                        ; $5a5c: $10
    ld l, [hl]                                    ; $5a5d: $6e
    db $10                                        ; $5a5e: $10
    ld a, a                                       ; $5a5f: $7f
    and b                                         ; $5a60: $a0
    ld c, l                                       ; $5a61: $4d
    add hl, bc                                    ; $5a62: $09
    ld a, a                                       ; $5a63: $7f
    add b                                         ; $5a64: $80
    db $10                                        ; $5a65: $10
    ld e, h                                       ; $5a66: $5c
    ld c, d                                       ; $5a67: $4a
    or l                                          ; $5a68: $b5
    dec b                                         ; $5a69: $05
    ei                                            ; $5a6a: $fb
    ld [de], a                                    ; $5a6b: $12
    db $ed                                        ; $5a6c: $ed
    adc c                                         ; $5a6d: $89
    ld [bc], a                                    ; $5a6e: $02
    ld [hl], a                                    ; $5a6f: $77
    ld hl, $05df                                  ; $5a70: $21 $df $05
    ei                                            ; $5a73: $fb
    add hl, bc                                    ; $5a74: $09
    ret c                                         ; $5a75: $d8

    dec b                                         ; $5a76: $05
    sbc d                                         ; $5a77: $9a
    nop                                           ; $5a78: $00
    db $fc                                        ; $5a79: $fc
    ld [hl], b                                    ; $5a7a: $70
    ld hl, sp-$60                                 ; $5a7b: $f8 $a0
    ld [hl], b                                    ; $5a7d: $70
    ld a, b                                       ; $5a7e: $78
    and b                                         ; $5a7f: $a0
    or h                                          ; $5a80: $b4
    nop                                           ; $5a81: $00
    ld h, b                                       ; $5a82: $60
    ld l, d                                       ; $5a83: $6a
    ldh a, [$b3]                                  ; $5a84: $f0 $b3
    db $fc                                        ; $5a86: $fc
    ld hl, sp-$01                                 ; $5a87: $f8 $ff
    ld hl, $ff08                                  ; $5a89: $21 $08 $ff
    sub e                                         ; $5a8c: $93
    rst $38                                       ; $5a8d: $ff
    jp hl                                         ; $5a8e: $e9


    ld [de], a                                    ; $5a8f: $12
    ld bc, $ffdb                                  ; $5a90: $01 $db $ff
    rst $28                                       ; $5a93: $ef
    add b                                         ; $5a94: $80
    rst $38                                       ; $5a95: $ff
    rla                                           ; $5a96: $17
    and $ff                                       ; $5a97: $e6 $ff
    ld d, [hl]                                    ; $5a99: $56
    pop hl                                        ; $5a9a: $e1
    pop hl                                        ; $5a9b: $e1
    ld b, b                                       ; $5a9c: $40
    ld a, [$4000]                                 ; $5a9d: $fa $00 $40
    rla                                           ; $5aa0: $17
    add sp, -$56                                  ; $5aa1: $e8 $aa
    push de                                       ; $5aa3: $d5
    push bc                                       ; $5aa4: $c5
    ld a, [$2075]                                 ; $5aa5: $fa $75 $20
    rst $38                                       ; $5aa8: $ff
    add hl, de                                    ; $5aa9: $19
    call c, Call_000_0505                         ; $5aaa: $dc $05 $05
    inc bc                                        ; $5aad: $03
    dec bc                                        ; $5aae: $0b
    ld bc, $0056                                  ; $5aaf: $01 $56 $00
    ld bc, $03bc                                  ; $5ab2: $01 $bc $03
    ld [hl], c                                    ; $5ab5: $71
    rrca                                          ; $5ab6: $0f
    xor e                                         ; $5ab7: $ab
    ld d, a                                       ; $5ab8: $57
    push bc                                       ; $5ab9: $c5
    nop                                           ; $5aba: $00
    dec sp                                        ; $5abb: $3b
    xor e                                         ; $5abc: $ab
    rst $38                                       ; $5abd: $ff
    ld e, a                                       ; $5abe: $5f
    rst $38                                       ; $5abf: $ff
    add sp, -$01                                  ; $5ac0: $e8 $ff
    jp z, $f500                                   ; $5ac2: $ca $00 $f5

    sub l                                         ; $5ac5: $95
    add sp, $2a                                   ; $5ac6: $e8 $2a
    push de                                       ; $5ac8: $d5
    ld de, $c5ee                                  ; $5ac9: $11 $ee $c5
    jr nz, jr_0a3_5b49                            ; $5acc: $20 $7b

    and b                                         ; $5ace: $a0
    ld d, b                                       ; $5acf: $50
    ld bc, $ff1b                                  ; $5ad0: $01 $1b $ff
    rst $08                                       ; $5ad3: $cf
    ccf                                           ; $5ad4: $3f
    xor [hl]                                      ; $5ad5: $ae
    nop                                           ; $5ad6: $00
    rra                                           ; $5ad7: $1f
    or a                                          ; $5ad8: $b7
    ld c, $46                                     ; $5ad9: $0e $46
    cp a                                          ; $5adb: $bf
    ld c, e                                       ; $5adc: $4b
    ldh a, [$e5]                                  ; $5add: $f0 $e5
    nop                                           ; $5adf: $00
    ld a, [$ffa9]                                 ; $5ae0: $fa $a9 $ff
    ld a, e                                       ; $5ae3: $7b
    add a                                         ; $5ae4: $87
    sub $01                                       ; $5ae5: $d6 $01
    adc e                                         ; $5ae7: $8b
    inc b                                         ; $5ae8: $04
    nop                                           ; $5ae9: $00
    push de                                       ; $5aea: $d5
    nop                                           ; $5aeb: $00
    ei                                            ; $5aec: $fb
    nop                                           ; $5aed: $00
    and l                                         ; $5aee: $a5
    dec bc                                        ; $5aef: $0b
    ld a, a                                       ; $5af0: $7f
    rst $00                                       ; $5af1: $c7
    nop                                           ; $5af2: $00
    rst $38                                       ; $5af3: $ff
    inc hl                                        ; $5af4: $23
    ld e, e                                       ; $5af5: $5b
    inc a                                         ; $5af6: $3c
    sub l                                         ; $5af7: $95
    ld a, b                                       ; $5af8: $78
    ld a, [hl-]                                   ; $5af9: $3a
    ldh a, [rDIV]                                 ; $5afa: $f0 $04
    ld l, a                                       ; $5afc: $6f
    ldh a, [$a0]                                  ; $5afd: $f0 $a0
    rst $38                                       ; $5aff: $ff
    call nc, $0182                                ; $5b00: $d4 $82 $01
    ld a, l                                       ; $5b03: $7d
    rst $38                                       ; $5b04: $ff
    nop                                           ; $5b05: $00
    rst $18                                       ; $5b06: $df
    ccf                                           ; $5b07: $3f
    halt                                          ; $5b08: $76
    rrca                                          ; $5b09: $0f
    ld e, $03                                     ; $5b0a: $1e $03
    and h                                         ; $5b0c: $a4
    inc bc                                        ; $5b0d: $03
    nop                                           ; $5b0e: $00
    xor [hl]                                      ; $5b0f: $ae
    ld a, a                                       ; $5b10: $7f
    ld a, [hl]                                    ; $5b11: $7e
    rst $38                                       ; $5b12: $ff
    rst $20                                       ; $5b13: $e7
    ld sp, hl                                     ; $5b14: $f9
    xor d                                         ; $5b15: $aa
    pop bc                                        ; $5b16: $c1
    nop                                           ; $5b17: $00
    sbc $01                                       ; $5b18: $de $01
    db $f4                                        ; $5b1a: $f4
    dec bc                                        ; $5b1b: $0b
    xor c                                         ; $5b1c: $a9
    ld d, a                                       ; $5b1d: $57
    ld b, [hl]                                    ; $5b1e: $46
    cp a                                          ; $5b1f: $bf
    nop                                           ; $5b20: $00
    ld a, [hl]                                    ; $5b21: $7e
    add c                                         ; $5b22: $81
    xor l                                         ; $5b23: $ad
    ld d, d                                       ; $5b24: $52
    ld d, d                                       ; $5b25: $52
    xor l                                         ; $5b26: $ad
    ld hl, $00df                                  ; $5b27: $21 $df $00
    adc e                                         ; $5b2a: $8b
    rst $38                                       ; $5b2b: $ff
    db $dd                                        ; $5b2c: $dd
    cp $1b                                        ; $5b2d: $fe $1b
    db $fc                                        ; $5b2f: $fc
    sbc d                                         ; $5b30: $9a
    inc c                                         ; $5b31: $0c
    inc h                                         ; $5b32: $24
    sbc e                                         ; $5b33: $9b
    ld a, [hl]                                    ; $5b34: $7e
    ld b, b                                       ; $5b35: $40
    ld e, [hl]                                    ; $5b36: $5e
    dec a                                         ; $5b37: $3d
    ldh a, [rNR41]                                ; $5b38: $f0 $20
    ld e, d                                       ; $5b3a: $5a
    db $f4                                        ; $5b3b: $f4
    dec bc                                        ; $5b3c: $0b
    sub h                                         ; $5b3d: $94
    db $10                                        ; $5b3e: $10
    ld e, d                                       ; $5b3f: $5a
    rla                                           ; $5b40: $17
    rst $38                                       ; $5b41: $ff
    nop                                           ; $5b42: $00
    ld h, d                                       ; $5b43: $62
    ld l, e                                       ; $5b44: $6b
    nop                                           ; $5b45: $00
    ld e, d                                       ; $5b46: $5a
    ld b, l                                       ; $5b47: $45
    cp e                                          ; $5b48: $bb

jr_0a3_5b49:
    sub d                                         ; $5b49: $92
    ret nz                                        ; $5b4a: $c0

    ld e, b                                       ; $5b4b: $58
    ld b, l                                       ; $5b4c: $45
    ei                                            ; $5b4d: $fb
    ret nz                                        ; $5b4e: $c0

    ld e, b                                       ; $5b4f: $58
    bit 6, b                                      ; $5b50: $cb $70
    ret nz                                        ; $5b52: $c0

    ld e, b                                       ; $5b53: $58
    ld a, [hl-]                                   ; $5b54: $3a
    nop                                           ; $5b55: $00
    ret nz                                        ; $5b56: $c0

    ld a, a                                       ; $5b57: $7f
    add b                                         ; $5b58: $80
    cp a                                          ; $5b59: $bf
    ret nz                                        ; $5b5a: $c0

    sub a                                         ; $5b5b: $97
    add sp, $4a                                   ; $5b5c: $e8 $4a
    nop                                           ; $5b5e: $00
    push af                                       ; $5b5f: $f5
    xor b                                         ; $5b60: $a8
    ld a, a                                       ; $5b61: $7f
    ld e, [hl]                                    ; $5b62: $5e
    cp a                                          ; $5b63: $bf
    add hl, de                                    ; $5b64: $19
    rst $38                                       ; $5b65: $ff
    dec [hl]                                      ; $5b66: $35
    nop                                           ; $5b67: $00
    ld hl, sp-$18                                 ; $5b68: $f8 $e8
    ldh a, [$fa]                                  ; $5b6a: $f0 $fa
    ldh [$6f], a                                  ; $5b6c: $e0 $6f
    ldh a, [rWX]                                  ; $5b6e: $f0 $4b
    nop                                           ; $5b70: $00
    inc [hl]                                      ; $5b71: $34
    dec [hl]                                      ; $5b72: $35
    ld a, [de]                                    ; $5b73: $1a
    sbc d                                         ; $5b74: $9a
    ccf                                           ; $5b75: $3f
    ld e, a                                       ; $5b76: $5f
    ccf                                           ; $5b77: $3f
    xor l                                         ; $5b78: $ad

jr_0a3_5b79:
    nop                                           ; $5b79: $00
    ld [hl], e                                    ; $5b7a: $73
    ld a, e                                       ; $5b7b: $7b
    ret nz                                        ; $5b7c: $c0

    or l                                          ; $5b7d: $b5
    ret nz                                        ; $5b7e: $c0

    rst $18                                       ; $5b7f: $df
    and b                                         ; $5b80: $a0
    or [hl]                                       ; $5b81: $b6
    nop                                           ; $5b82: $00
    ret                                           ; $5b83: $c9


    xor l                                         ; $5b84: $ad
    ld a, [c]                                     ; $5b85: $f2
    ld d, d                                       ; $5b86: $52
    db $fd                                        ; $5b87: $fd
    jp hl                                         ; $5b88: $e9


    ld a, a                                       ; $5b89: $7f
    jp z, Jump_0a3_7440                           ; $5b8a: $ca $40 $74

    or b                                          ; $5b8d: $b0
    ld e, h                                       ; $5b8e: $5c
    push de                                       ; $5b8f: $d5
    rrca                                          ; $5b90: $0f
    ld a, [bc]                                    ; $5b91: $0a
    inc b                                         ; $5b92: $04
    dec b                                         ; $5b93: $05
    nop                                           ; $5b94: $00
    ld [bc], a                                    ; $5b95: $02
    ld a, [bc]                                    ; $5b96: $0a
    inc b                                         ; $5b97: $04
    ld d, e                                       ; $5b98: $53
    inc c                                         ; $5b99: $0c
    xor l                                         ; $5b9a: $ad
    ld e, a                                       ; $5b9b: $5f
    ld d, c                                       ; $5b9c: $51
    rrca                                          ; $5b9d: $0f
    reti                                          ; $5b9e: $d9


    ld [hl+], a                                   ; $5b9f: $22
    rlca                                          ; $5ba0: $07
    ld [bc], a                                    ; $5ba1: $02
    and b                                         ; $5ba2: $a0
    inc d                                         ; $5ba3: $14
    and d                                         ; $5ba4: $a2
    ld bc, $8056                                  ; $5ba5: $01 $56 $80
    dec d                                         ; $5ba8: $15
    call nc, RST_00                               ; $5ba9: $d4 $00 $00
    jr nz, @-$7e                                  ; $5bac: $20 $80

    ret nz                                        ; $5bae: $c0

    nop                                           ; $5baf: $00
    ld b, b                                       ; $5bb0: $40
    add b                                         ; $5bb1: $80
    ld l, b                                       ; $5bb2: $68
    ld [de], a                                    ; $5bb3: $12
    add b                                         ; $5bb4: $80
    call nc, Call_0a3_71e0                        ; $5bb5: $d4 $e0 $71
    rrca                                          ; $5bb8: $0f
    db $d3                                        ; $5bb9: $d3
    cpl                                           ; $5bba: $2f
    jr nz, jr_0a3_5bc5                            ; $5bbb: $20 $08

    dec bc                                        ; $5bbd: $0b
    inc b                                         ; $5bbe: $04

jr_0a3_5bbf:
    nop                                           ; $5bbf: $00
    ld d, [hl]                                    ; $5bc0: $56
    ld bc, $17a9                                  ; $5bc1: $01 $a9 $17
    add c                                         ; $5bc4: $81

jr_0a3_5bc5:
    rrca                                          ; $5bc5: $0f
    add c                                         ; $5bc6: $81
    rst $38                                       ; $5bc7: $ff
    rla                                           ; $5bc8: $17
    ret nz                                        ; $5bc9: $c0

    cp a                                          ; $5bca: $bf
    add b                                         ; $5bcb: $80
    inc b                                         ; $5bcc: $04
    jr nz, jr_0a3_5b79                            ; $5bcd: $20 $aa

    sub d                                         ; $5bcf: $92
    rrca                                          ; $5bd0: $0f
    ld a, [$020f]                                 ; $5bd1: $fa $0f $02
    nop                                           ; $5bd4: $00
    add c                                         ; $5bd5: $81
    and d                                         ; $5bd6: $a2
    inc bc                                        ; $5bd7: $03
    inc b                                         ; $5bd8: $04
    rst $38                                       ; $5bd9: $ff
    ld [$10ef], sp                                ; $5bda: $08 $ef $10
    ld a, [bc]                                    ; $5bdd: $0a
    sub b                                         ; $5bde: $90
    inc b                                         ; $5bdf: $04
    ld [hl+], a                                   ; $5be0: $22
    cp d                                          ; $5be1: $ba
    ld b, l                                       ; $5be2: $45
    and $0f                                       ; $5be3: $e6 $0f
    add $26                                       ; $5be5: $c6 $26
    and $90                                       ; $5be7: $e6 $90
    inc b                                         ; $5be9: $04
    and b                                         ; $5bea: $a0
    nop                                           ; $5beb: $00
    rst $38                                       ; $5bec: $ff
    ld bc, $083e                                  ; $5bed: $01 $3e $08
    scf                                           ; $5bf0: $37
    push de                                       ; $5bf1: $d5
    xor d                                         ; $5bf2: $aa
    rst $28                                       ; $5bf3: $ef
    nop                                           ; $5bf4: $00
    sub b                                         ; $5bf5: $90
    dec a                                         ; $5bf6: $3d
    ld b, d                                       ; $5bf7: $42
    ld a, a                                       ; $5bf8: $7f
    nop                                           ; $5bf9: $00
    ei                                            ; $5bfa: $fb
    ld b, a                                       ; $5bfb: $47
    xor d                                         ; $5bfc: $aa
    nop                                           ; $5bfd: $00
    rst $38                                       ; $5bfe: $ff
    dec b                                         ; $5bff: $05
    ld a, [$d42b]                                 ; $5c00: $fa $2b $d4
    ld d, [hl]                                    ; $5c03: $56
    xor c                                         ; $5c04: $a9
    adc l                                         ; $5c05: $8d
    ld a, b                                       ; $5c06: $78
    ld [bc], a                                    ; $5c07: $02
    db $f4                                        ; $5c08: $f4
    dec de                                        ; $5c09: $1b
    and [hl]                                      ; $5c0a: $a6
    inc a                                         ; $5c0b: $3c
    ld b, [hl]                                    ; $5c0c: $46
    jr nz, jr_0a3_5c5f                            ; $5c0d: $20 $50

    ld [$fb01], sp                                ; $5c0f: $08 $01 $fb
    ld b, $00                                     ; $5c12: $06 $00
    rst $28                                       ; $5c14: $ef
    jr @+$41                                      ; $5c15: $18 $3f

    ld h, b                                       ; $5c17: $60
    ld a, c                                       ; $5c18: $79
    nop                                           ; $5c19: $00
    ld sp, hl                                     ; $5c1a: $f9
    nop                                           ; $5c1b: $00
    ld b, $9f                                     ; $5c1c: $06 $9f
    jr jr_0a3_5bbf                                ; $5c1e: $18 $9f

    nop                                           ; $5c20: $00
    rst $38                                       ; $5c21: $ff
    ld [hl], $14                                  ; $5c22: $36 $14
    add $14                                       ; $5c24: $c6 $14
    ld bc, $8b2e                                  ; $5c26: $01 $2e $8b
    inc c                                         ; $5c29: $0c
    ld bc, $8107                                  ; $5c2a: $01 $07 $81
    ld [de], a                                    ; $5c2d: $12
    nop                                           ; $5c2e: $00
    ld [bc], a                                    ; $5c2f: $02
    ld [$04f0], sp                                ; $5c30: $08 $f0 $04
    ei                                            ; $5c33: $fb
    nop                                           ; $5c34: $00
    inc c                                         ; $5c35: $0c
    rst $28                                       ; $5c36: $ef
    jr nc, jr_0a3_5cb8                            ; $5c37: $30 $7f

    ld b, b                                       ; $5c39: $40
    ld a, c                                       ; $5c3a: $79
    ld a, [hl]                                    ; $5c3b: $7e
    db $fc                                        ; $5c3c: $fc
    ld bc, $ec00                                  ; $5c3d: $01 $00 $ec
    db $10                                        ; $5c40: $10
    rst $38                                       ; $5c41: $ff
    ld bc, $05fb                                  ; $5c42: $01 $fb $05
    inc h                                         ; $5c45: $24
    ld [$ff00], sp                                ; $5c46: $08 $00 $ff
    ld [bc], a                                    ; $5c49: $02
    cp a                                          ; $5c4a: $bf
    ld b, d                                       ; $5c4b: $42
    ld sp, hl                                     ; $5c4c: $f9
    nop                                           ; $5c4d: $00
    reti                                          ; $5c4e: $d9


    jr nz, jr_0a3_5c54                            ; $5c4f: $20 $03

    ei                                            ; $5c51: $fb
    ld b, $bf                                     ; $5c52: $06 $bf

jr_0a3_5c54:
    ld b, d                                       ; $5c54: $42
    ld l, $ff                                     ; $5c55: $2e $ff
    ret nc                                        ; $5c57: $d0

    ld e, c                                       ; $5c58: $59
    ldh [$36], a                                  ; $5c59: $e0 $36
    nop                                           ; $5c5b: $00
    or l                                          ; $5c5c: $b5
    dec h                                         ; $5c5d: $25
    db $db                                        ; $5c5e: $db

jr_0a3_5c5f:
    ld b, d                                       ; $5c5f: $42
    rst $38                                       ; $5c60: $ff
    dec b                                         ; $5c61: $05
    cp $bc                                        ; $5c62: $fe $bc
    inc h                                         ; $5c64: $24
    ld d, b                                       ; $5c65: $50
    db $fc                                        ; $5c66: $fc
    ldh [rDIV], a                                 ; $5c67: $e0 $04
    cp $81                                        ; $5c69: $fe $81
    nop                                           ; $5c6b: $00
    inc bc                                        ; $5c6c: $03
    and b                                         ; $5c6d: $a0
    db $fc                                        ; $5c6e: $fc
    nop                                           ; $5c6f: $00
    ld [bc], a                                    ; $5c70: $02
    ld l, d                                       ; $5c71: $6a
    sub l                                         ; $5c72: $95
    jr z, @+$01                                   ; $5c73: $28 $ff

    ld b, d                                       ; $5c75: $42
    push hl                                       ; $5c76: $e5
    and c                                         ; $5c77: $a1
    ld b, b                                       ; $5c78: $40
    and $d0                                       ; $5c79: $e6 $d0
    ld a, $fd                                     ; $5c7b: $3e $fd
    ld a, a                                       ; $5c7d: $7f
    ld l, c                                       ; $5c7e: $69
    ldh a, [$d0]                                  ; $5c7f: $f0 $d0
    ldh [rP1], a                                  ; $5c81: $e0 $00
    jp c, Jump_000_15e0                           ; $5c83: $da $e0 $15

    ld hl, sp-$46                                 ; $5c86: $f8 $ba
    dec c                                         ; $5c88: $0d
    rla                                           ; $5c89: $17
    rrca                                          ; $5c8a: $0f
    ld b, c                                       ; $5c8b: $41
    xor h                                         ; $5c8c: $ac
    jp nz, $ee03                                  ; $5c8d: $c2 $03 $ee

    ld de, $a05f                                  ; $5c90: $11 $5f $a0
    cp a                                          ; $5c93: $bf
    db $10                                        ; $5c94: $10
    rlca                                          ; $5c95: $07
    ld [$6b14], sp                                ; $5c96: $08 $14 $6b
    ld a, [hl+]                                   ; $5c99: $2a
    ld e, l                                       ; $5c9a: $5d
    db $10                                        ; $5c9b: $10
    rra                                           ; $5c9c: $1f
    pop de                                        ; $5c9d: $d1
    xor [hl]                                      ; $5c9e: $ae
    and d                                         ; $5c9f: $a2
    nop                                           ; $5ca0: $00
    db $dd                                        ; $5ca1: $dd
    ret z                                         ; $5ca2: $c8

    or a                                          ; $5ca3: $b7
    add c                                         ; $5ca4: $81
    rst $38                                       ; $5ca5: $ff
    and b                                         ; $5ca6: $a0
    rst $38                                       ; $5ca7: $ff
    inc b                                         ; $5ca8: $04
    ld [$573f], sp                                ; $5ca9: $08 $3f $57
    xor c                                         ; $5cac: $a9
    dec bc                                        ; $5cad: $0b
    ret nz                                        ; $5cae: $c0

    ld [hl], e                                    ; $5caf: $73
    db $fd                                        ; $5cb0: $fd
    add d                                         ; $5cb1: $82
    db $eb                                        ; $5cb2: $eb
    nop                                           ; $5cb3: $00
    sub h                                         ; $5cb4: $94
    ld d, h                                       ; $5cb5: $54
    db $eb                                        ; $5cb6: $eb
    ld l, c                                       ; $5cb7: $69

jr_0a3_5cb8:
    sub $32                                       ; $5cb8: $d6 $32
    db $ed                                        ; $5cba: $ed
    nop                                           ; $5cbb: $00
    ld [bc], a                                    ; $5cbc: $02
    rst $08                                       ; $5cbd: $cf
    ld de, $10ef                                  ; $5cbe: $11 $ef $10
    rst $38                                       ; $5cc1: $ff
    inc hl                                        ; $5cc2: $23
    add d                                         ; $5cc3: $82
    rlca                                          ; $5cc4: $07
    xor b                                         ; $5cc5: $a8
    ld [de], a                                    ; $5cc6: $12
    ld sp, hl                                     ; $5cc7: $f9
    ld a, c                                       ; $5cc8: $79
    ld sp, hl                                     ; $5cc9: $f9
    jr nz, @+$15                                  ; $5cca: $20 $13

    ccf                                           ; $5ccc: $3f
    jp nc, $5730                                  ; $5ccd: $d2 $30 $57

    nop                                           ; $5cd0: $00
    ld h, c                                       ; $5cd1: $61
    rst $08                                       ; $5cd2: $cf
    ldh a, [$5f]                                  ; $5cd3: $f0 $5f
    jr nc, jr_0a3_5cf4                            ; $5cd5: $30 $1d

    rst $38                                       ; $5cd7: $ff
    ld b, b                                       ; $5cd8: $40
    rst $28                                       ; $5cd9: $ef
    jr nc, @-$42                                  ; $5cda: $30 $bc

    dec b                                         ; $5cdc: $05
    ld sp, $fe04                                  ; $5cdd: $31 $04 $fe
    jr nz, jr_0a3_5cf3                            ; $5ce0: $20 $11

    jp c, $1f2d                                   ; $5ce2: $da $2d $1f

    nop                                           ; $5ce5: $00
    rrca                                          ; $5ce6: $0f
    ld a, h                                       ; $5ce7: $7c
    add hl, de                                    ; $5ce8: $19
    add d                                         ; $5ce9: $82
    or h                                          ; $5cea: $b4
    dec h                                         ; $5ceb: $25
    db $fc                                        ; $5cec: $fc
    nop                                           ; $5ced: $00
    db $fd                                        ; $5cee: $fd
    ld [bc], a                                    ; $5cef: $02
    rrca                                          ; $5cf0: $0f
    inc d                                         ; $5cf1: $14
    nop                                           ; $5cf2: $00

jr_0a3_5cf3:
    dec de                                        ; $5cf3: $1b

jr_0a3_5cf4:
    nop                                           ; $5cf4: $00
    inc c                                         ; $5cf5: $0c
    cp $03                                        ; $5cf6: $fe $03
    db $fd                                        ; $5cf8: $fd
    ld [bc], a                                    ; $5cf9: $02
    cp e                                          ; $5cfa: $bb
    ld b, h                                       ; $5cfb: $44
    push af                                       ; $5cfc: $f5
    jr nc, jr_0a3_5d09                            ; $5cfd: $30 $0a

    ld hl, sp-$7e                                 ; $5cff: $f8 $82
    dec b                                         ; $5d01: $05
    ld [$bc1e], sp                                ; $5d02: $08 $1e $bc
    ret nz                                        ; $5d05: $c0

    db $ec                                        ; $5d06: $ec
    jr nc, @+$0d                                  ; $5d07: $30 $0b

jr_0a3_5d09:
    db $eb                                        ; $5d09: $eb
    inc e                                         ; $5d0a: $1c
    ld e, [hl]                                    ; $5d0b: $5e
    and e                                         ; $5d0c: $a3
    ld d, $3e                                     ; $5d0d: $16 $3e

jr_0a3_5d0f:
    ccf                                           ; $5d0f: $3f
    add $05                                       ; $5d10: $c6 $05
    inc h                                         ; $5d12: $24
    ld l, $14                                     ; $5d13: $2e $14
    ld sp, hl                                     ; $5d15: $f9
    nop                                           ; $5d16: $00
    ldh a, [rSC]                                  ; $5d17: $f0 $02
    nop                                           ; $5d19: $00
    ld sp, hl                                     ; $5d1a: $f9
    jr z, jr_0a3_5d2b                             ; $5d1b: $28 $0e

    nop                                           ; $5d1d: $00
    di                                            ; $5d1e: $f3
    inc [hl]                                      ; $5d1f: $34
    nop                                           ; $5d20: $00
    pop af                                        ; $5d21: $f1
    ld a, [bc]                                    ; $5d22: $0a
    ld [$9002], sp                                ; $5d23: $08 $02 $90
    db $fd                                        ; $5d26: $fd

jr_0a3_5d27:
    add b                                         ; $5d27: $80
    jr nc, jr_0a3_5d27                            ; $5d28: $30 $fd

    ld [bc], a                                    ; $5d2a: $02

jr_0a3_5d2b:
    rlca                                          ; $5d2b: $07
    and e                                         ; $5d2c: $a3
    ld b, h                                       ; $5d2d: $44
    pop hl                                        ; $5d2e: $e1
    nop                                           ; $5d2f: $00
    ld hl, sp+$30                                 ; $5d30: $f8 $30
    nop                                           ; $5d32: $00
    ld c, d                                       ; $5d33: $4a
    jr jr_0a3_5d78                                ; $5d34: $18 $42

    ld c, $00                                     ; $5d36: $0e $00
    db $e3                                        ; $5d38: $e3
    inc b                                         ; $5d39: $04
    ld b, a                                       ; $5d3a: $47
    and b                                         ; $5d3b: $a0
    rst $38                                       ; $5d3c: $ff
    add b                                         ; $5d3d: $80
    cp $41                                        ; $5d3e: $fe $41
    nop                                           ; $5d40: $00
    ei                                            ; $5d41: $fb
    ld h, $cf                                     ; $5d42: $26 $cf
    ld [$00cf], sp                                ; $5d44: $08 $cf $00
    rst $38                                       ; $5d47: $ff
    ld d, b                                       ; $5d48: $50
    nop                                           ; $5d49: $00
    rst $38                                       ; $5d4a: $ff
    adc b                                         ; $5d4b: $88
    rst $38                                       ; $5d4c: $ff
    add h                                         ; $5d4d: $84
    xor d                                         ; $5d4e: $aa
    rst $38                                       ; $5d4f: $ff
    xor e                                         ; $5d50: $ab
    ld d, h                                       ; $5d51: $54
    nop                                           ; $5d52: $00
    ld d, a                                       ; $5d53: $57
    xor b                                         ; $5d54: $a8
    inc a                                         ; $5d55: $3c
    ld [bc], a                                    ; $5d56: $02
    ld a, [hl-]                                   ; $5d57: $3a
    inc b                                         ; $5d58: $04
    rst $38                                       ; $5d59: $ff
    ld [bc], a                                    ; $5d5a: $02
    ld b, b                                       ; $5d5b: $40
    ld sp, hl                                     ; $5d5c: $f9
    ret nc                                        ; $5d5d: $d0

    ld bc, $ff0a                                  ; $5d5e: $01 $0a $ff
    ld b, b                                       ; $5d61: $40
    adc a                                         ; $5d62: $8f
    adc d                                         ; $5d63: $8a
    ld b, l                                       ; $5d64: $45
    ld [bc], a                                    ; $5d65: $02
    ld a, l                                       ; $5d66: $7d
    ld [hl+], a                                   ; $5d67: $22
    ld l, a                                       ; $5d68: $6f
    ld d, b                                       ; $5d69: $50
    rst $18                                       ; $5d6a: $df
    jr nz, jr_0a3_5d0f                            ; $5d6b: $20 $a2

    ld d, $04                                     ; $5d6d: $16 $04
    ret z                                         ; $5d6f: $c8

    ld [bc], a                                    ; $5d70: $02
    ld [$06bc], sp                                ; $5d71: $08 $bc $06
    ld [$7af3], sp                                ; $5d74: $08 $f3 $7a
    nop                                           ; $5d77: $00

jr_0a3_5d78:
    rst $18                                       ; $5d78: $df
    jr nc, @+$01                                  ; $5d79: $30 $ff

    ld h, b                                       ; $5d7b: $60
    ld b, b                                       ; $5d7c: $40
    xor $29                                       ; $5d7d: $ee $29
    add hl, hl                                    ; $5d7f: $29
    ld bc, $fb00                                  ; $5d80: $01 $00 $fb
    inc b                                         ; $5d83: $04
    rst $18                                       ; $5d84: $df
    jr nz, jr_0a3_5d87                            ; $5d85: $20 $00

jr_0a3_5d87:
    cp a                                          ; $5d87: $bf
    ld b, b                                       ; $5d88: $40
    db $fd                                        ; $5d89: $fd
    ld [bc], a                                    ; $5d8a: $02
    ld [$5415], a                                 ; $5d8b: $ea $15 $54
    xor e                                         ; $5d8e: $ab
    ld sp, $d728                                  ; $5d8f: $31 $28 $d7
    inc b                                         ; $5d92: $04
    ld [$11c0], sp                                ; $5d93: $08 $c0 $11
    db $10                                        ; $5d96: $10
    dec d                                         ; $5d97: $15
    ld a, [hl+]                                   ; $5d98: $2a
    ret nz                                        ; $5d99: $c0

    inc e                                         ; $5d9a: $1c
    nop                                           ; $5d9b: $00
    ld bc, $9ffe                                  ; $5d9c: $01 $fe $9f
    add b                                         ; $5d9f: $80
    sbc l                                         ; $5da0: $9d
    ld [bc], a                                    ; $5da1: $02
    cp a                                          ; $5da2: $bf
    ld b, b                                       ; $5da3: $40
    dec h                                         ; $5da4: $25
    cp $01                                        ; $5da5: $fe $01
    ret nz                                        ; $5da7: $c0

    inc h                                         ; $5da8: $24
    sub l                                         ; $5da9: $95
    add c                                         ; $5daa: $81
    rra                                           ; $5dab: $1f
    ld [bc], a                                    ; $5dac: $02
    adc b                                         ; $5dad: $88
    nop                                           ; $5dae: $00
    dec d                                         ; $5daf: $15
    ld b, b                                       ; $5db0: $40
    ld d, a                                       ; $5db1: $57
    sub b                                         ; $5db2: $90
    inc d                                         ; $5db3: $14
    inc b                                         ; $5db4: $04
    rst $38                                       ; $5db5: $ff
    ld c, c                                       ; $5db6: $49
    rst $38                                       ; $5db7: $ff
    sub a                                         ; $5db8: $97
    rst $38                                       ; $5db9: $ff
    inc de                                        ; $5dba: $13
    cpl                                           ; $5dbb: $2f
    rst $38                                       ; $5dbc: $ff
    ld e, e                                       ; $5dbd: $5b
    ld c, [hl]                                    ; $5dbe: $4e
    add hl, de                                    ; $5dbf: $19
    rst $38                                       ; $5dc0: $ff
    add a                                         ; $5dc1: $87
    inc b                                         ; $5dc2: $04
    dec b                                         ; $5dc3: $05
    nop                                           ; $5dc4: $00
    ld d, h                                       ; $5dc5: $54
    ld c, b                                       ; $5dc6: $48
    ld a, a                                       ; $5dc7: $7f
    nop                                           ; $5dc8: $00
    ld e, h                                       ; $5dc9: $5c
    and $7f                                       ; $5dca: $e6 $7f
    ld [hl], b                                    ; $5dcc: $70
    ld e, h                                       ; $5dcd: $5c
    jp nc, $a021                                  ; $5dce: $d2 $21 $a0

    ld b, b                                       ; $5dd1: $40
    ld d, e                                       ; $5dd2: $53
    ld h, b                                       ; $5dd3: $60
    ld c, l                                       ; $5dd4: $4d
    dec sp                                        ; $5dd5: $3b
    push bc                                       ; $5dd6: $c5
    sub a                                         ; $5dd7: $97
    ld l, c                                       ; $5dd8: $69
    cpl                                           ; $5dd9: $2f
    jp nc, Jump_000_1100                          ; $5dda: $d2 $00 $11

    ld [c], a                                     ; $5ddd: $e2
    ld b, e                                       ; $5dde: $43
    or b                                          ; $5ddf: $b0
    dec [hl]                                      ; $5de0: $35
    jp c, $fd62                                   ; $5de1: $da $62 $fd

    ld [bc], a                                    ; $5de4: $02
    ld b, c                                       ; $5de5: $41
    cp $be                                        ; $5de6: $fe $be
    ld b, d                                       ; $5de8: $42
    call c, $8022                                 ; $5de9: $dc $22 $80
    ld e, b                                       ; $5dec: $58
    ld b, b                                       ; $5ded: $40
    db $10                                        ; $5dee: $10
    db $fc                                        ; $5def: $fc
    adc b                                         ; $5df0: $88
    db $fc                                        ; $5df1: $fc
    add b                                         ; $5df2: $80
    ld b, b                                       ; $5df3: $40
    db $fc                                        ; $5df4: $fc
    ld a, b                                       ; $5df5: $78
    db $fc                                        ; $5df6: $fc
    rst $10                                       ; $5df7: $d7
    sbc h                                         ; $5df8: $9c
    add b                                         ; $5df9: $80
    ld b, b                                       ; $5dfa: $40
    xor b                                         ; $5dfb: $a8
    rst $38                                       ; $5dfc: $ff
    ld b, b                                       ; $5dfd: $40
    dec c                                         ; $5dfe: $0d
    ld h, b                                       ; $5dff: $60
    ld a, [hl-]                                   ; $5e00: $3a
    ld [hl], b                                    ; $5e01: $70
    dec c                                         ; $5e02: $0d
    rst $18                                       ; $5e03: $df
    and b                                         ; $5e04: $a0
    nop                                           ; $5e05: $00
    sbc [hl]                                      ; $5e06: $9e
    ld bc, $940b                                  ; $5e07: $01 $0b $94
    or h                                          ; $5e0a: $b4
    ld l, e                                       ; $5e0b: $6b
    ld a, [hl-]                                   ; $5e0c: $3a
    db $dd                                        ; $5e0d: $dd
    nop                                           ; $5e0e: $00
    ld b, b                                       ; $5e0f: $40
    or e                                          ; $5e10: $b3
    ld de, $12e3                                  ; $5e11: $11 $e3 $12
    rst $38                                       ; $5e14: $ff
    ld [hl+], a                                   ; $5e15: $22
    cp $02                                        ; $5e16: $fe $02
    ld d, h                                       ; $5e18: $54
    db $fc                                        ; $5e19: $fc
    xor h                                         ; $5e1a: $ac
    db $fc                                        ; $5e1b: $fc
    ld a, [hl]                                    ; $5e1c: $7e
    cp $40                                        ; $5e1d: $fe $40
    dec d                                         ; $5e1f: $15
    rst $38                                       ; $5e20: $ff
    nop                                           ; $5e21: $00
    ld d, d                                       ; $5e22: $52
    rst $38                                       ; $5e23: $ff
    jr c, jr_0a3_5ea5                             ; $5e24: $38 $7f

    inc l                                         ; $5e26: $2c
    ccf                                           ; $5e27: $3f
    ccf                                           ; $5e28: $3f
    ccf                                           ; $5e29: $3f
    inc l                                         ; $5e2a: $2c
    ld [hl], a                                    ; $5e2b: $77
    ld a, a                                       ; $5e2c: $7f
    ld d, b                                       ; $5e2d: $50

jr_0a3_5e2e:
    dec c                                         ; $5e2e: $0d
    rst $38                                       ; $5e2f: $ff
    rlc a                                         ; $5e30: $cb $07
    nop                                           ; $5e32: $00
    cpl                                           ; $5e33: $2f
    inc bc                                        ; $5e34: $03
    rst $38                                       ; $5e35: $ff
    ld h, b                                       ; $5e36: $60
    pop bc                                        ; $5e37: $c1
    add h                                         ; $5e38: $84

jr_0a3_5e39:
    inc bc                                        ; $5e39: $03
    ld h, b                                       ; $5e3a: $60
    add hl, bc                                    ; $5e3b: $09
    cp l                                          ; $5e3c: $bd
    ld b, d                                       ; $5e3d: $42
    ld h, e                                       ; $5e3e: $63
    add h                                         ; $5e3f: $84
    jp Jump_000_000c                              ; $5e40: $c3 $0c $00


    jp $e703                                      ; $5e43: $c3 $03 $e7


    ld h, b                                       ; $5e46: $60
    ld bc, $2b80                                  ; $5e47: $01 $80 $2b
    rst $18                                       ; $5e4a: $df
    jr nz, jr_0a3_5e5a                            ; $5e4b: $20 $0d

    sbc a                                         ; $5e4d: $9f
    ldh [$e7], a                                  ; $5e4e: $e0 $e7
    rra                                           ; $5e50: $1f
    ret nz                                        ; $5e51: $c0

    rlca                                          ; $5e52: $07
    ld [bc], a                                    ; $5e53: $02
    jr nc, @-$0f                                  ; $5e54: $30 $ef

    ld [bc], a                                    ; $5e56: $02
    nop                                           ; $5e57: $00
    jr c, jr_0a3_5e39                             ; $5e58: $38 $df

jr_0a3_5e5a:
    jr nz, jr_0a3_5ed4                            ; $5e5a: $20 $78

    ld bc, $1002                                  ; $5e5c: $01 $02 $10
    ld d, d                                       ; $5e5f: $52
    ld [bc], a                                    ; $5e60: $02
    jr nz, jr_0a3_5e2e                            ; $5e61: $20 $cb

    inc b                                         ; $5e63: $04
    nop                                           ; $5e64: $00
    and b                                         ; $5e65: $a0
    rst $38                                       ; $5e66: $ff
    ld b, c                                       ; $5e67: $41
    cp [hl]                                       ; $5e68: $be
    adc b                                         ; $5e69: $88
    ld [hl], a                                    ; $5e6a: $77
    ld d, l                                       ; $5e6b: $55
    xor d                                         ; $5e6c: $aa
    nop                                           ; $5e6d: $00
    xor $10                                       ; $5e6e: $ee $10
    cp h                                          ; $5e70: $bc
    ld b, d                                       ; $5e71: $42
    rst $30                                       ; $5e72: $f7
    ld c, $8f                                     ; $5e73: $0e $8f
    sub b                                         ; $5e75: $90
    nop                                           ; $5e76: $00
    xor d                                         ; $5e77: $aa
    cp $04                                        ; $5e78: $fe $04
    ld hl, sp+$2c                                 ; $5e7a: $f8 $2c
    call nc, $a85e                                ; $5e7c: $d4 $5e $a8
    nop                                           ; $5e7f: $00
    dec l                                         ; $5e80: $2d
    ld [hl], d                                    ; $5e81: $72
    ld a, a                                       ; $5e82: $7f
    ld b, b                                       ; $5e83: $40
    ld a, a                                       ; $5e84: $7f
    add b                                         ; $5e85: $80
    rst $08                                       ; $5e86: $cf
    nop                                           ; $5e87: $00
    nop                                           ; $5e88: $00
    ld a, [hl+]                                   ; $5e89: $2a
    ld a, a                                       ; $5e8a: $7f
    db $10                                        ; $5e8b: $10
    cpl                                           ; $5e8c: $2f
    ld a, [hl+]                                   ; $5e8d: $2a
    dec d                                         ; $5e8e: $15
    ld [hl], a                                    ; $5e8f: $77
    jr z, jr_0a3_5ea0                             ; $5e90: $28 $0e

    db $fd                                        ; $5e92: $fd
    ld [de], a                                    ; $5e93: $12
    di                                            ; $5e94: $f3
    inc c                                         ; $5e95: $0c
    add d                                         ; $5e96: $82
    ld a, [bc]                                    ; $5e97: $0a
    adc [hl]                                      ; $5e98: $8e
    inc bc                                        ; $5e99: $03
    ld b, b                                       ; $5e9a: $40
    db $10                                        ; $5e9b: $10
    ld sp, hl                                     ; $5e9c: $f9
    cp d                                          ; $5e9d: $ba
    ld [bc], a                                    ; $5e9e: $02
    nop                                           ; $5e9f: $00

jr_0a3_5ea0:
    rst $38                                       ; $5ea0: $ff
    ld c, h                                       ; $5ea1: $4c
    nop                                           ; $5ea2: $00
    add sp, $01                                   ; $5ea3: $e8 $01

jr_0a3_5ea5:
    ld d, d                                       ; $5ea5: $52
    ld e, d                                       ; $5ea6: $5a
    ld [bc], a                                    ; $5ea7: $02
    add d                                         ; $5ea8: $82
    rlca                                          ; $5ea9: $07
    nop                                           ; $5eaa: $00
    ld a, d                                       ; $5eab: $7a
    ld a, $5c                                     ; $5eac: $3e $5c
    ld b, d                                       ; $5eae: $42
    ldh a, [rTAC]                                 ; $5eaf: $f0 $07
    ld [bc], a                                    ; $5eb1: $02
    nop                                           ; $5eb2: $00
    ret nc                                        ; $5eb3: $d0

    rlca                                          ; $5eb4: $07
    ld b, b                                       ; $5eb5: $40
    ld a, d                                       ; $5eb6: $7a
    ld [$40df], sp                                ; $5eb7: $08 $df $40
    jr nz, @-$78                                  ; $5eba: $20 $86

    ld [$50bf], sp                                ; $5ebc: $08 $bf $50
    rst $38                                       ; $5ebf: $ff
    db $10                                        ; $5ec0: $10
    rst $18                                       ; $5ec1: $df
    jr nc, jr_0a3_5ef5                            ; $5ec2: $30 $31

    ei                                            ; $5ec4: $fb
    inc d                                         ; $5ec5: $14
    ld [$0200], sp                                ; $5ec6: $08 $00 $02
    ld b, h                                       ; $5ec9: $44
    ld sp, hl                                     ; $5eca: $f9
    ld bc, $f6f9                                  ; $5ecb: $01 $f9 $f6
    add hl, bc                                    ; $5ece: $09
    ld b, b                                       ; $5ecf: $40
    db $10                                        ; $5ed0: $10
    inc c                                         ; $5ed1: $0c
    ld a, [bc]                                    ; $5ed2: $0a
    pop af                                        ; $5ed3: $f1

jr_0a3_5ed4:
    ld [bc], a                                    ; $5ed4: $02
    cp e                                          ; $5ed5: $bb
    ld [hl], h                                    ; $5ed6: $74
    ld [hl], l                                    ; $5ed7: $75
    adc d                                         ; $5ed8: $8a
    nop                                           ; $5ed9: $00
    ld hl, sp+$07                                 ; $5eda: $f8 $07
    add l                                         ; $5edc: $85
    ld [bc], a                                    ; $5edd: $02
    add a                                         ; $5ede: $87
    rlca                                          ; $5edf: $07
    ld c, a                                       ; $5ee0: $4f
    add b                                         ; $5ee1: $80
    ld b, d                                       ; $5ee2: $42
    cp [hl]                                       ; $5ee3: $be
    ld [hl], b                                    ; $5ee4: $70
    inc bc                                        ; $5ee5: $03
    sub h                                         ; $5ee6: $94
    ld l, e                                       ; $5ee7: $6b
    ld a, [hl+]                                   ; $5ee8: $2a
    db $dd                                        ; $5ee9: $dd
    ld [hl], b                                    ; $5eea: $70
    dec bc                                        ; $5eeb: $0b
    add sp, $00                                   ; $5eec: $e8 $00
    rst $30                                       ; $5eee: $f7
    ld e, a                                       ; $5eef: $5f
    cp a                                          ; $5ef0: $bf
    and d                                         ; $5ef1: $a2
    ld e, l                                       ; $5ef2: $5d
    ld c, b                                       ; $5ef3: $48
    or a                                          ; $5ef4: $b7

jr_0a3_5ef5:
    add c                                         ; $5ef5: $81
    nop                                           ; $5ef6: $00
    ld a, a                                       ; $5ef7: $7f
    jr nz, @+$01                                  ; $5ef8: $20 $ff

    add h                                         ; $5efa: $84
    rst $38                                       ; $5efb: $ff
    ld d, a                                       ; $5efc: $57
    cp b                                          ; $5efd: $b8
    ld a, [bc]                                    ; $5efe: $0a
    nop                                           ; $5eff: $00

Call_0a3_5f00:
    push bc                                       ; $5f00: $c5
    push bc                                       ; $5f01: $c5
    jp z, $ed1a                                   ; $5f02: $ca $1a $ed

    and l                                         ; $5f05: $a5
    sbc $12                                       ; $5f06: $de $12
    jr nz, @-$0f                                  ; $5f08: $20 $ef

    inc bc                                        ; $5f0a: $03
    jr nc, jr_0a3_5f8c                            ; $5f0b: $30 $7f

    ccf                                           ; $5f0d: $3f
    rst $18                                       ; $5f0e: $df
    ld [hl+], a                                   ; $5f0f: $22
    cp a                                          ; $5f10: $bf
    ld b, d                                       ; $5f11: $42
    add h                                         ; $5f12: $84
    ld b, b                                       ; $5f13: $40
    ld a, [bc]                                    ; $5f14: $0a
    ld d, l                                       ; $5f15: $55
    xor e                                         ; $5f16: $ab
    add hl, hl                                    ; $5f17: $29
    rst $10                                       ; $5f18: $d7
    inc b                                         ; $5f19: $04
    ld [$3f00], sp                                ; $5f1a: $08 $00 $3f
    ld de, $ff25                                  ; $5f1d: $11 $25 $ff
    ld e, d                                       ; $5f20: $5a
    ld h, b                                       ; $5f21: $60
    dec bc                                        ; $5f22: $0b
    cp $be                                        ; $5f23: $fe $be
    cp $60                                        ; $5f25: $fe $60
    dec bc                                        ; $5f27: $0b
    nop                                           ; $5f28: $00
    add b                                         ; $5f29: $80
    db $fc                                        ; $5f2a: $fc
    ld b, b                                       ; $5f2b: $40
    db $fc                                        ; $5f2c: $fc
    adc h                                         ; $5f2d: $8c
    rst $38                                       ; $5f2e: $ff
    add hl, de                                    ; $5f2f: $19
    ccf                                           ; $5f30: $3f
    ld bc, $1f0a                                  ; $5f31: $01 $0a $1f
    rla                                           ; $5f34: $17
    rra                                           ; $5f35: $1f
    ccf                                           ; $5f36: $3f
    ccf                                           ; $5f37: $3f
    rst $38                                       ; $5f38: $ff
    adc d                                         ; $5f39: $8a
    rlca                                          ; $5f3a: $07
    nop                                           ; $5f3b: $00
    ld d, h                                       ; $5f3c: $54
    rst $38                                       ; $5f3d: $ff
    and a                                         ; $5f3e: $a7
    ld hl, sp+$5c                                 ; $5f3f: $f8 $5c
    ldh a, [$a8]                                  ; $5f41: $f0 $a8
    ldh a, [rSC]                                  ; $5f43: $f0 $02
    db $e4                                        ; $5f45: $e4
    ld hl, sp-$55                                 ; $5f46: $f8 $ab
    db $f4                                        ; $5f48: $f4
    or l                                          ; $5f49: $b5
    ld a, [$2920]                                 ; $5f4a: $fa $20 $29
    db $ec                                        ; $5f4d: $ec
    inc h                                         ; $5f4e: $24
    db $10                                        ; $5f4f: $10
    cp h                                          ; $5f50: $bc
    ld [c], a                                     ; $5f51: $e2
    ld [bc], a                                    ; $5f52: $02
    rst $38                                       ; $5f53: $ff
    nop                                           ; $5f54: $00
    ret nz                                        ; $5f55: $c0

    inc l                                         ; $5f56: $2c
    xor l                                         ; $5f57: $ad
    ld d, d                                       ; $5f58: $52
    add h                                         ; $5f59: $84
    sbc b                                         ; $5f5a: $98
    inc de                                        ; $5f5b: $13
    add b                                         ; $5f5c: $80
    ld a, a                                       ; $5f5d: $7f
    add b                                         ; $5f5e: $80
    adc a                                         ; $5f5f: $8f
    ret z                                         ; $5f60: $c8

    inc b                                         ; $5f61: $04
    ld b, $04                                     ; $5f62: $06 $04
    inc c                                         ; $5f64: $0c
    ld b, $06                                     ; $5f65: $06 $06
    adc a                                         ; $5f67: $8f
    nop                                           ; $5f68: $00
    cp d                                          ; $5f69: $ba
    ld [$28f2], sp                                ; $5f6a: $08 $f2 $28
    ld a, e                                       ; $5f6d: $7b
    ld a, h                                       ; $5f6e: $7c
    ld h, c                                       ; $5f6f: $61
    db $fd                                        ; $5f70: $fd
    adc a                                         ; $5f71: $8f
    ld [$34e0], sp                                ; $5f72: $08 $e0 $34
    rst $08                                       ; $5f75: $cf
    nop                                           ; $5f76: $00
    rst $08                                       ; $5f77: $cf
    rst $08                                       ; $5f78: $cf
    ldh a, [rNR30]                                ; $5f79: $f0 $1a
    add $06                                       ; $5f7b: $c6 $06
    dec bc                                        ; $5f7d: $0b
    ld l, b                                       ; $5f7e: $68
    dec bc                                        ; $5f7f: $0b
    rst $38                                       ; $5f80: $ff
    nop                                           ; $5f81: $00
    rst $30                                       ; $5f82: $f7
    ld l, $20                                     ; $5f83: $2e $20
    adc [hl]                                      ; $5f85: $8e
    inc sp                                        ; $5f86: $33

jr_0a3_5f87:
    ld b, b                                       ; $5f87: $40
    jr c, jr_0a3_5f87                             ; $5f88: $38 $fd

    ld [hl+], a                                   ; $5f8a: $22
    ld l, d                                       ; $5f8b: $6a

jr_0a3_5f8c:
    dec sp                                        ; $5f8c: $3b
    ret nz                                        ; $5f8d: $c0

    dec de                                        ; $5f8e: $1b
    jr nc, @+$05                                  ; $5f8f: $30 $03

    add a                                         ; $5f91: $87
    add d                                         ; $5f92: $82
    ld bc, $8106                                  ; $5f93: $01 $06 $81
    ld [bc], a                                    ; $5f96: $02
    add e                                         ; $5f97: $83
    nop                                           ; $5f98: $00
    rst $00                                       ; $5f99: $c7
    ld a, d                                       ; $5f9a: $7a
    add hl, de                                    ; $5f9b: $19
    ld [hl-], a                                   ; $5f9c: $32
    dec h                                         ; $5f9d: $25
    or e                                          ; $5f9e: $b3
    inc sp                                        ; $5f9f: $33
    ld [hl], e                                    ; $5fa0: $73
    ld [hl], e                                    ; $5fa1: $73
    ld d, $2d                                     ; $5fa2: $16 $2d
    add d                                         ; $5fa4: $82
    dec b                                         ; $5fa5: $05
    sbc h                                         ; $5fa6: $9c
    ld a, a                                       ; $5fa7: $7f
    inc h                                         ; $5fa8: $24
    inc b                                         ; $5fa9: $04
    ld c, b                                       ; $5faa: $48
    dec l                                         ; $5fab: $2d
    db $10                                        ; $5fac: $10
    ld bc, $fe39                                  ; $5fad: $01 $39 $fe
    ld b, [hl]                                    ; $5fb0: $46
    dec e                                         ; $5fb1: $1d
    cp $01                                        ; $5fb2: $fe $01
    db $fd                                        ; $5fb4: $fd
    ld [bc], a                                    ; $5fb5: $02
    inc e                                         ; $5fb6: $1c
    sbc a                                         ; $5fb7: $9f
    nop                                           ; $5fb8: $00
    sbc a                                         ; $5fb9: $9f
    and [hl]                                      ; $5fba: $a6
    db $10                                        ; $5fbb: $10
    jr nz, jr_0a3_5ff6                            ; $5fbc: $20 $38

    ld [hl], d                                    ; $5fbe: $72
    dec e                                         ; $5fbf: $1d
    and a                                         ; $5fc0: $a7
    ld b, b                                       ; $5fc1: $40
    inc bc                                        ; $5fc2: $03

jr_0a3_5fc3:
    rst $20                                       ; $5fc3: $e7
    nop                                           ; $5fc4: $00
    db $eb                                        ; $5fc5: $eb
    inc d                                         ; $5fc6: $14
    ld e, a                                       ; $5fc7: $5f
    and b                                         ; $5fc8: $a0
    inc a                                         ; $5fc9: $3c
    inc a                                         ; $5fca: $3c
    sub b                                         ; $5fcb: $90
    jr nz, @+$0a                                  ; $5fcc: $20 $08

    ld [bc], a                                    ; $5fce: $02
    pop af                                        ; $5fcf: $f1
    ld [bc], a                                    ; $5fd0: $02
    di                                            ; $5fd1: $f3
    sub [hl]                                      ; $5fd2: $96
    dec bc                                        ; $5fd3: $0b
    ld [$18e7], sp                                ; $5fd4: $08 $e7 $18
    ld [$10ff], sp                                ; $5fd7: $08 $ff $10
    db $db                                        ; $5fda: $db
    inc h                                         ; $5fdb: $24
    inc l                                         ; $5fdc: $2c
    inc a                                         ; $5fdd: $3c

jr_0a3_5fde:
    cp $01                                        ; $5fde: $fe $01
    or l                                          ; $5fe0: $b5
    ld [$ea4a], sp                                ; $5fe1: $08 $4a $ea
    dec d                                         ; $5fe4: $15
    jp nc, Jump_000_162e                          ; $5fe5: $d2 $2e $16

    ld b, l                                       ; $5fe8: $45
    nop                                           ; $5fe9: $00
    xor d                                         ; $5fea: $aa
    db $10                                        ; $5feb: $10
    ld bc, $c3b4                                  ; $5fec: $01 $b4 $c3
    pop af                                        ; $5fef: $f1
    rrca                                          ; $5ff0: $0f
    jp c, $8161                                   ; $5ff1: $da $61 $81

    ld b, b                                       ; $5ff4: $40
    nop                                           ; $5ff5: $00

jr_0a3_5ff6:
    add c                                         ; $5ff6: $81
    ld b, b                                       ; $5ff7: $40
    pop hl                                        ; $5ff8: $e1
    nop                                           ; $5ff9: $00
    or l                                          ; $5ffa: $b5
    ld b, b                                       ; $5ffb: $40
    ld l, d                                       ; $5ffc: $6a
    pop de                                        ; $5ffd: $d1
    add b                                         ; $5ffe: $80
    or c                                          ; $5fff: $b1
    rrca                                          ; $6000: $0f
    rst $18                                       ; $6001: $df
    jr nc, jr_0a3_5fc3                            ; $6002: $30 $bf

    ld c, b                                       ; $6004: $48
    db $fc                                        ; $6005: $fc
    inc b                                         ; $6006: $04
    add sp, $00                                   ; $6007: $e8 $00
    db $10                                        ; $6009: $10
    ld d, b                                       ; $600a: $50
    xor b                                         ; $600b: $a8
    jr z, jr_0a3_5fde                             ; $600c: $28 $d0

    ld d, h                                       ; $600e: $54
    xor b                                         ; $600f: $a8
    jr z, jr_0a3_6012                             ; $6010: $28 $00

jr_0a3_6012:
    rst $10                                       ; $6012: $d7
    jp nc, $a02d                                  ; $6013: $d2 $2d $a0

    ld e, a                                       ; $6016: $5f
    ld c, b                                       ; $6017: $48
    scf                                           ; $6018: $37
    ld de, $2e00                                  ; $6019: $11 $00 $2e
    inc b                                         ; $601c: $04

jr_0a3_601d:
    dec sp                                        ; $601d: $3b
    jr nz, jr_0a3_603f                            ; $601e: $20 $1f

    jr nc, @+$81                                  ; $6020: $30 $7f

    ld c, $22                                     ; $6022: $0e $22
    rst $38                                       ; $6024: $ff
    rlca                                          ; $6025: $07
    sub b                                         ; $6026: $90
    ld h, e                                       ; $6027: $63
    cp a                                          ; $6028: $bf
    ld b, b                                       ; $6029: $40
    db $dd                                        ; $602a: $dd
    ld b, b                                       ; $602b: $40
    inc hl                                        ; $602c: $23
    ld e, a                                       ; $602d: $5f
    nop                                           ; $602e: $00
    and c                                         ; $602f: $a1
    rst $38                                       ; $6030: $ff
    ld [bc], a                                    ; $6031: $02
    ld l, d                                       ; $6032: $6a
    sub a                                         ; $6033: $97
    db $fd                                        ; $6034: $fd
    ld [hl+], a                                   ; $6035: $22
    xor a                                         ; $6036: $af
    ld [bc], a                                    ; $6037: $02
    ld d, b                                       ; $6038: $50
    ld e, a                                       ; $6039: $5f
    ldh [$be], a                                  ; $603a: $e0 $be
    pop bc                                        ; $603c: $c1
    set 6, b                                      ; $603d: $cb $f0

jr_0a3_603f:
    ld hl, $2c28                                  ; $603f: $21 $28 $2c
    rst $38                                       ; $6042: $ff
    jp nz, Jump_000_0590                          ; $6043: $c2 $90 $05

    call c, $051c                                 ; $6046: $dc $1c $05
    sub b                                         ; $6049: $90

jr_0a3_604a:
    dec e                                         ; $604a: $1d
    call nc, $002f                                ; $604b: $d4 $2f $00
    ld hl, $00d2                                  ; $604e: $21 $d2 $00
    di                                            ; $6051: $f3
    ld c, c                                       ; $6052: $49
    rst $38                                       ; $6053: $ff
    xor d                                         ; $6054: $aa
    rst $38                                       ; $6055: $ff
    jr nz, jr_0a3_601d                            ; $6056: $20 $c5

    rst $08                                       ; $6058: $cf
    ld d, d                                       ; $6059: $52
    ld bc, $d9ff                                  ; $605a: $01 $ff $d9
    ld b, $05                                     ; $605d: $06 $05
    ld [bc], a                                    ; $605f: $02
    ld bc, $0003                                  ; $6060: $01 $03 $00
    jr z, jr_0a3_6067                             ; $6063: $28 $02

    ld d, l                                       ; $6065: $55
    ld [bc], a                                    ; $6066: $02

jr_0a3_6067:
    sbc [hl]                                      ; $6067: $9e
    jp c, $0003                                   ; $6068: $da $03 $00

    rst $38                                       ; $606b: $ff
    rst $38                                       ; $606c: $ff
    sbc c                                         ; $606d: $99
    ld c, $0a                                     ; $606e: $0e $0a
    rlca                                          ; $6070: $07
    dec b                                         ; $6071: $05
    inc bc                                        ; $6072: $03
    nop                                           ; $6073: $00
    dec bc                                        ; $6074: $0b
    ld bc, $0156                                  ; $6075: $01 $56 $01
    cp h                                          ; $6078: $bc
    inc bc                                        ; $6079: $03
    ld [hl], c                                    ; $607a: $71
    rrca                                          ; $607b: $0f
    ld hl, $57ab                                  ; $607c: $21 $ab $57
    add b                                         ; $607f: $80
    inc e                                         ; $6080: $1c
    dec a                                         ; $6081: $3d
    ld [bc], a                                    ; $6082: $02
    dec sp                                        ; $6083: $3b
    inc b                                         ; $6084: $04
    ld l, d                                       ; $6085: $6a
    ld e, $81                                     ; $6086: $1e $81
    ldh a, [rNR30]                                ; $6088: $f0 $1a
    dec d                                         ; $608a: $15
    ld a, [hl+]                                   ; $608b: $2a
    ccf                                           ; $608c: $3f
    jr c, jr_0a3_604a                             ; $608d: $38 $bb

    ld b, a                                       ; $608f: $47
    ret nc                                        ; $6090: $d0

    ld c, c                                       ; $6091: $49
    nop                                           ; $6092: $00
    dec l                                         ; $6093: $2d
    ld [de], a                                    ; $6094: $12
    ccf                                           ; $6095: $3f
    nop                                           ; $6096: $00
    ld l, a                                       ; $6097: $6f
    or b                                          ; $6098: $b0
    push af                                       ; $6099: $f5
    ld c, $c6                                     ; $609a: $0e $c6
    sub b                                         ; $609c: $90
    ld l, $d0                                     ; $609d: $2e $d0
    inc c                                         ; $609f: $0c
    ld [$5e14], a                                 ; $60a0: $ea $14 $5e
    jr nz, jr_0a3_60c6                            ; $60a3: $20 $21

    and [hl]                                      ; $60a5: $a6
    ld e, $77                                     ; $60a6: $1e $77
    add hl, bc                                    ; $60a8: $09
    ld [$7979], sp                                ; $60a9: $08 $79 $79
    cp c                                          ; $60ac: $b9
    or b                                          ; $60ad: $b0
    nop                                           ; $60ae: $00
    cp [hl]                                       ; $60af: $be
    ld b, b                                       ; $60b0: $40

jr_0a3_60b1:
    ld l, [hl]                                    ; $60b1: $6e
    ld c, $5e                                     ; $60b2: $0e $5e
    ld e, h                                       ; $60b4: $5c
    jr nc, @+$18                                  ; $60b5: $30 $16

    cp $02                                        ; $60b7: $fe $02
    dec d                                         ; $60b9: $15
    add $1e                                       ; $60ba: $c6 $1e
    ld l, h                                       ; $60bc: $6c
    ld bc, $46d0                                  ; $60bd: $01 $d0 $46
    xor $50                                       ; $60c0: $ee $50
    db $10                                        ; $60c2: $10
    sub d                                         ; $60c3: $92
    dec b                                         ; $60c4: $05
    db $fc                                        ; $60c5: $fc

jr_0a3_60c6:
    ldh [$3e], a                                  ; $60c6: $e0 $3e
    ld a, $01                                     ; $60c8: $3e $01
    rra                                           ; $60ca: $1f
    rra                                           ; $60cb: $1f
    ld hl, $150a                                  ; $60cc: $21 $0a $15
    ld e, [hl]                                    ; $60cf: $5e
    jr c, jr_0a3_60b1                             ; $60d0: $38 $df

    ccf                                           ; $60d2: $3f
    cp e                                          ; $60d3: $bb
    call nz, $0d36                                ; $60d4: $c4 $36 $0d
    add h                                         ; $60d7: $84
    ld e, b                                       ; $60d8: $58
    dec d                                         ; $60d9: $15
    inc bc                                        ; $60da: $03
    inc sp                                        ; $60db: $33
    inc a                                         ; $60dc: $3c
    ccf                                           ; $60dd: $3f
    db $10                                        ; $60de: $10
    ld [de], a                                    ; $60df: $12
    db $fc                                        ; $60e0: $fc
    nop                                           ; $60e1: $00
    nop                                           ; $60e2: $00
    ld [$3716], a                                 ; $60e3: $ea $16 $37
    jr c, jr_0a3_6106                             ; $60e6: $38 $1e

    ld bc, $140b                                  ; $60e8: $01 $0b $14
    nop                                           ; $60eb: $00
    inc d                                         ; $60ec: $14
    dec bc                                        ; $60ed: $0b
    ld a, [hl+]                                   ; $60ee: $2a
    dec e                                         ; $60ef: $1d
    ld b, b                                       ; $60f0: $40
    cp a                                          ; $60f1: $bf
    inc d                                         ; $60f2: $14
    dec bc                                        ; $60f3: $0b
    ld [$1728], sp                                ; $60f4: $08 $28 $17
    ld d, c                                       ; $60f7: $51
    xor [hl]                                      ; $60f8: $ae
    ldh a, [$3a]                                  ; $60f9: $f0 $3a
    ld [de], a                                    ; $60fb: $12
    rst $38                                       ; $60fc: $ff
    inc h                                         ; $60fd: $24
    nop                                           ; $60fe: $00
    rst $38                                       ; $60ff: $ff
    ld bc, $223f                                  ; $6100: $01 $3f $22
    ccf                                           ; $6103: $3f
    ld b, l                                       ; $6104: $45
    rst $38                                       ; $6105: $ff

jr_0a3_6106:
    xor e                                         ; $6106: $ab
    jr nc, @+$01                                  ; $6107: $30 $ff

    cp $d1                                        ; $6109: $fe $d1
    rlca                                          ; $610b: $07
    ld [hl], b                                    ; $610c: $70
    ccf                                           ; $610d: $3f
    call c, $f820                                 ; $610e: $dc $20 $f8
    nop                                           ; $6111: $00
    ld b, b                                       ; $6112: $40
    ld hl, sp-$20                                 ; $6113: $f8 $e0
    jr nz, jr_0a3_616c                            ; $6115: $20 $55

    xor d                                         ; $6117: $aa
    rst $28                                       ; $6118: $ef
    db $10                                        ; $6119: $10
    db $fd                                        ; $611a: $fd
    ld [bc], a                                    ; $611b: $02
    ld de, $7979                                  ; $611c: $11 $79 $79
    ld a, c                                       ; $611f: $79
    or b                                          ; $6120: $b0
    ld [hl+], a                                   ; $6121: $22
    ld b, $89                                     ; $6122: $06 $89
    dec b                                         ; $6124: $05
    ld [hl], b                                    ; $6125: $70
    rla                                           ; $6126: $17
    add e                                         ; $6127: $83
    and h                                         ; $6128: $a4
    ld [bc], a                                    ; $6129: $02
    add b                                         ; $612a: $80
    cp a                                          ; $612b: $bf
    ld h, b                                       ; $612c: $60
    db $eb                                        ; $612d: $eb
    inc e                                         ; $612e: $1c
    sbc h                                         ; $612f: $9c
    ld e, d                                       ; $6130: $5a
    ld h, h                                       ; $6131: $64
    ld d, $02                                     ; $6132: $16 $02

jr_0a3_6134:
    ret nz                                        ; $6134: $c0

    rst $10                                       ; $6135: $d7
    jr c, jr_0a3_6134                             ; $6136: $38 $fc

    inc b                                         ; $6138: $04
    ld hl, sp+$14                                 ; $6139: $f8 $14
    ld e, b                                       ; $613b: $58
    nop                                           ; $613c: $00
    ld [hl], c                                    ; $613d: $71
    ld [hl], $10                                  ; $613e: $36 $10
    ld sp, $2bca                                  ; $6140: $31 $ca $2b
    jp c, $1f10                                   ; $6143: $da $10 $1f

    rst $18                                       ; $6146: $df
    ldh [rNR10], a                                ; $6147: $e0 $10
    ld l, $0c                                     ; $6149: $2e $0c
    ld hl, sp+$00                                 ; $614b: $f8 $00
    ld a, b                                       ; $614d: $78
    ld hl, sp+$3c                                 ; $614e: $f8 $3c
    ld a, [bc]                                    ; $6150: $0a
    ld [hl], b                                    ; $6151: $70
    ld l, $3e                                     ; $6152: $2e $3e
    jr nc, jr_0a3_6166                            ; $6154: $30 $10

    ccf                                           ; $6156: $3f
    jr nz, jr_0a3_61d8                            ; $6157: $20 $7f

    jp nz, $b903                                  ; $6159: $c2 $03 $b9

    ld b, [hl]                                    ; $615c: $46
    sbc a                                         ; $615d: $9f
    ld bc, $8b70                                  ; $615e: $01 $70 $8b
    ld h, b                                       ; $6161: $60
    ld [bc], a                                    ; $6162: $02
    ld [hl-], a                                   ; $6163: $32
    jr @-$18                                      ; $6164: $18 $e6

jr_0a3_6166:
    rrca                                          ; $6166: $0f
    rst $00                                       ; $6167: $c7
    nop                                           ; $6168: $00
    add e                                         ; $6169: $83
    add b                                         ; $616a: $80
    ld [bc], a                                    ; $616b: $02

jr_0a3_616c:
    add e                                         ; $616c: $83
    nop                                           ; $616d: $00
    ret nc                                        ; $616e: $d0

    add hl, hl                                    ; $616f: $29
    and b                                         ; $6170: $a0
    ld e, c                                       ; $6171: $59
    ld d, b                                       ; $6172: $50
    ld c, l                                       ; $6173: $4d
    add e                                         ; $6174: $83
    nop                                           ; $6175: $00
    nop                                           ; $6176: $00
    push bc                                       ; $6177: $c5
    ld [bc], a                                    ; $6178: $02
    cp a                                          ; $6179: $bf
    ld d, b                                       ; $617a: $50
    cp $11                                        ; $617b: $fe $11
    call $0218                                    ; $617d: $cd $18 $02
    ld c, [hl]                                    ; $6180: $4e
    add c                                         ; $6181: $81
    ret nz                                        ; $6182: $c0

    dec c                                         ; $6183: $0d
    ld [$f30f], a                                 ; $6184: $ea $0f $f3
    nop                                           ; $6187: $00
    pop hl                                        ; $6188: $e1
    inc c                                         ; $6189: $0c
    ld bc, $00e1                                  ; $618a: $01 $e1 $00
    db $e3                                        ; $618d: $e3
    cp d                                          ; $618e: $ba
    inc d                                         ; $618f: $14
    or b                                          ; $6190: $b0
    scf                                           ; $6191: $37
    or h                                          ; $6192: $b4
    inc h                                         ; $6193: $24
    nop                                           ; $6194: $00
    jp c, $fc42                                   ; $6195: $da $42 $fc

    nop                                           ; $6198: $00
    cp $af                                        ; $6199: $fe $af
    ld [hl], b                                    ; $619b: $70
    db $fd                                        ; $619c: $fd
    nop                                           ; $619d: $00
    ld [hl+], a                                   ; $619e: $22
    cp a                                          ; $619f: $bf
    ld h, b                                       ; $61a0: $60
    cp $21                                        ; $61a1: $fe $21
    dec c                                         ; $61a3: $0d
    ld [de], a                                    ; $61a4: $12
    ld c, $00                                     ; $61a5: $0e $00
    ld bc, $0e0e                                  ; $61a7: $01 $0e $0e
    ld a, [bc]                                    ; $61aa: $0a
    inc b                                         ; $61ab: $04
    db $10                                        ; $61ac: $10
    ld c, $29                                     ; $61ad: $0e $29
    dec bc                                        ; $61af: $0b
    sub $00                                       ; $61b0: $d6 $00
    rst $38                                       ; $61b2: $ff
    ld b, c                                       ; $61b3: $41
    db $10                                        ; $61b4: $10
    ld [bc], a                                    ; $61b5: $02
    ld [hl], l                                    ; $61b6: $75
    ldh a, [$15]                                  ; $61b7: $f0 $15
    ld [bc], a                                    ; $61b9: $02
    inc de                                        ; $61ba: $13
    ldh [rNR14], a                                ; $61bb: $e0 $14
    rrca                                          ; $61bd: $0f
    db $fc                                        ; $61be: $fc
    ld [bc], a                                    ; $61bf: $02
    adc h                                         ; $61c0: $8c
    inc b                                         ; $61c1: $04
    inc b                                         ; $61c2: $04
    db $fc                                        ; $61c3: $fc

jr_0a3_61c4:
    ld [$10ff], sp                                ; $61c4: $08 $ff $10
    daa                                           ; $61c7: $27
    ld e, a                                       ; $61c8: $5f
    ld h, b                                       ; $61c9: $60
    add [hl]                                      ; $61ca: $86
    jr c, jr_0a3_61c4                             ; $61cb: $38 $f7

    ld [$0088], sp                                ; $61cd: $08 $88 $00
    adc d                                         ; $61d0: $8a
    db $10                                        ; $61d1: $10
    ld d, b                                       ; $61d2: $50
    dec bc                                        ; $61d3: $0b
    nop                                           ; $61d4: $00
    db $e3                                        ; $61d5: $e3
    inc h                                         ; $61d6: $24
    push hl                                       ; $61d7: $e5

jr_0a3_61d8:
    ld [hl+], a                                   ; $61d8: $22
    rst $28                                       ; $61d9: $ef
    jr nc, jr_0a3_623b                            ; $61da: $30 $5f

    ldh [rP1], a                                  ; $61dc: $e0 $00
    cp $41                                        ; $61de: $fe $41
    ld c, e                                       ; $61e0: $4b
    db $f4                                        ; $61e1: $f4
    inc d                                         ; $61e2: $14
    dec bc                                        ; $61e3: $0b
    ld a, [bc]                                    ; $61e4: $0a
    dec c                                         ; $61e5: $0d
    nop                                           ; $61e6: $00
    nop                                           ; $61e7: $00
    rrca                                          ; $61e8: $0f
    ld bc, $100f                                  ; $61e9: $01 $0f $10
    rra                                           ; $61ec: $1f
    ld [hl+], a                                   ; $61ed: $22
    rst $38                                       ; $61ee: $ff
    inc b                                         ; $61ef: $04
    ld d, l                                       ; $61f0: $55
    rst $38                                       ; $61f1: $ff
    xor [hl]                                      ; $61f2: $ae
    rst $38                                       ; $61f3: $ff
    ld a, a                                       ; $61f4: $7f
    sub b                                         ; $61f5: $90
    rla                                           ; $61f6: $17
    jp $35ff                                      ; $61f7: $c3 $ff $35


    rst $20                                       ; $61fa: $e7
    rst $18                                       ; $61fb: $df
    inc b                                         ; $61fc: $04
    ld c, b                                       ; $61fd: $48
    ld c, e                                       ; $61fe: $4b
    ld d, $2e                                     ; $61ff: $16 $2e
    ld c, a                                       ; $6201: $4f
    ld b, $2f                                     ; $6202: $06 $2f
    ld b, a                                       ; $6204: $47
    inc b                                         ; $6205: $04
    add b                                         ; $6206: $80
    ld d, a                                       ; $6207: $57
    ld b, $60                                     ; $6208: $06 $60
    ld [de], a                                    ; $620a: $12
    cpl                                           ; $620b: $2f
    dec c                                         ; $620c: $0d
    nop                                           ; $620d: $00
    rst $28                                       ; $620e: $ef
    db $10                                        ; $620f: $10
    rst $08                                       ; $6210: $cf
    db $10                                        ; $6211: $10
    sbc c                                         ; $6212: $99
    ld [hl], $b3                                  ; $6213: $36 $b3
    inc h                                         ; $6215: $24
    nop                                           ; $6216: $00
    ld b, a                                       ; $6217: $47
    ld l, $0c                                     ; $6218: $2e $0c
    ld e, l                                       ; $621a: $5d
    xor e                                         ; $621b: $ab
    rlca                                          ; $621c: $07
    xor a                                         ; $621d: $af
    ld e, h                                       ; $621e: $5c
    nop                                           ; $621f: $00
    ld [$0008], sp                                ; $6220: $08 $08 $00
    ld [$0808], sp                                ; $6223: $08 $08 $08
    db $10                                        ; $6226: $10
    jr jr_0a3_6229                                ; $6227: $18 $00

jr_0a3_6229:
    ld [$3410], sp                                ; $6229: $08 $10 $34
    inc a                                         ; $622c: $3c
    inc l                                         ; $622d: $2c
    inc [hl]                                      ; $622e: $34
    nop                                           ; $622f: $00
    inc a                                         ; $6230: $3c
    jr nc, @+$01                                  ; $6231: $30 $ff

    nop                                           ; $6233: $00
    ld [bc], a                                    ; $6234: $02
    ld e, b                                       ; $6235: $58
    ld bc, $0248                                  ; $6236: $01 $48 $02
    ld [bc], a                                    ; $6239: $02
    dec b                                         ; $623a: $05

jr_0a3_623b:
    dec b                                         ; $623b: $05
    add b                                         ; $623c: $80
    ld de, $0050                                  ; $623d: $11 $50 $00
    ld bc, $2e01                                  ; $6240: $01 $01 $2e
    ld [hl], $0a                                  ; $6243: $36 $0a
    ld [hl], $00                                  ; $6245: $36 $00
    inc l                                         ; $6247: $2c
    ld [hl], $4a                                  ; $6248: $36 $4a
    halt                                          ; $624a: $76
    ld l, l                                       ; $624b: $6d
    ld [hl], e                                    ; $624c: $73
    ret c                                         ; $624d: $d8

    rst $20                                       ; $624e: $e7
    ld [$e3dd], sp                                ; $624f: $08 $dd $e3
    cp [hl]                                       ; $6252: $be
    pop bc                                        ; $6253: $c1
    ld d, $18                                     ; $6254: $16 $18
    inc bc                                        ; $6256: $03
    inc bc                                        ; $6257: $03
    rrca                                          ; $6258: $0f
    ld bc, $170f                                  ; $6259: $01 $0f $17
    rla                                           ; $625c: $17
    ld [bc], a                                    ; $625d: $02
    inc bc                                        ; $625e: $03
    dec b                                         ; $625f: $05
    rlca                                          ; $6260: $07
    inc h                                         ; $6261: $24
    ld [$0100], sp                                ; $6262: $08 $00 $01
    ld bc, $0302                                  ; $6265: $01 $02 $03
    ld [bc], a                                    ; $6268: $02
    inc bc                                        ; $6269: $03

jr_0a3_626a:
    inc b                                         ; $626a: $04
    rlca                                          ; $626b: $07
    nop                                           ; $626c: $00
    ld c, $0f                                     ; $626d: $0e $0f
    dec b                                         ; $626f: $05
    rlca                                          ; $6270: $07
    db $db                                        ; $6271: $db
    db $e4                                        ; $6272: $e4
    sbc h                                         ; $6273: $9c
    db $e3                                        ; $6274: $e3
    nop                                           ; $6275: $00
    ld c, c                                       ; $6276: $49
    rst $30                                       ; $6277: $f7
    sbc d                                         ; $6278: $9a
    rst $20                                       ; $6279: $e7
    dec a                                         ; $627a: $3d
    jp Jump_0a3_43bc                              ; $627b: $c3 $bc $43


    nop                                           ; $627e: $00
    ld c, $f1                                     ; $627f: $0e $f1
    ld e, a                                       ; $6281: $5f
    ldh [rP1], a                                  ; $6282: $e0 $00
    add b                                         ; $6284: $80
    ld b, b                                       ; $6285: $40
    ret nz                                        ; $6286: $c0

    db $10                                        ; $6287: $10
    jr nz, jr_0a3_626a                            ; $6288: $20 $e0

    ret nz                                        ; $628a: $c0

    ld bc, $6000                                  ; $628b: $01 $00 $60
    ldh [$a0], a                                  ; $628e: $e0 $a0
    ld h, b                                       ; $6290: $60
    nop                                           ; $6291: $00
    ld d, b                                       ; $6292: $50
    or b                                          ; $6293: $b0
    ld b, $07                                     ; $6294: $06 $07
    rrca                                          ; $6296: $0f
    rrca                                          ; $6297: $0f
    rra                                           ; $6298: $1f
    rra                                           ; $6299: $1f
    nop                                           ; $629a: $00
    ld a, l                                       ; $629b: $7d
    ld a, a                                       ; $629c: $7f
    ld e, $1f                                     ; $629d: $1e $1f
    inc [hl]                                      ; $629f: $34
    ccf                                           ; $62a0: $3f
    ld l, d                                       ; $62a1: $6a
    ld a, a                                       ; $62a2: $7f
    inc b                                         ; $62a3: $04
    db $fc                                        ; $62a4: $fc
    rst $38                                       ; $62a5: $ff
    ld [bc], a                                    ; $62a6: $02
    inc bc                                        ; $62a7: $03
    rlca                                          ; $62a8: $07
    ld bc, $0500                                  ; $62a9: $01 $00 $05
    rlca                                          ; $62ac: $07
    nop                                           ; $62ad: $00
    ld a, [bc]                                    ; $62ae: $0a
    rrca                                          ; $62af: $0f
    inc c                                         ; $62b0: $0c
    rrca                                          ; $62b1: $0f
    ld e, c                                       ; $62b2: $59
    ld e, a                                       ; $62b3: $5f
    or d                                          ; $62b4: $b2
    cp l                                          ; $62b5: $bd
    nop                                           ; $62b6: $00
    xor h                                         ; $62b7: $ac
    di                                            ; $62b8: $f3
    ld c, c                                       ; $62b9: $49
    rst $30                                       ; $62ba: $f7
    ldh [rIE], a                                  ; $62bb: $e0 $ff
    reti                                          ; $62bd: $d9


    rst $20                                       ; $62be: $e7
    nop                                           ; $62bf: $00
    xor h                                         ; $62c0: $ac
    db $d3                                        ; $62c1: $d3
    ld e, $e1                                     ; $62c2: $1e $e1
    dec a                                         ; $62c4: $3d
    jp nz, Jump_0a3_41be                          ; $62c5: $c2 $be $41

    nop                                           ; $62c8: $00
    cp b                                          ; $62c9: $b8
    ld hl, sp+$70                                 ; $62ca: $f8 $70
    ldh a, [$e0]                                  ; $62cc: $f0 $e0
    ldh [$d0], a                                  ; $62ce: $e0 $d0
    ret nc                                        ; $62d0: $d0

    nop                                           ; $62d1: $00
    ldh [$e0], a                                  ; $62d2: $e0 $e0
    ld d, b                                       ; $62d4: $50
    ldh a, [$28]                                  ; $62d5: $f0 $28
    ld hl, sp-$4c                                 ; $62d7: $f8 $b4
    ld e, h                                       ; $62d9: $5c
    nop                                           ; $62da: $00
    cp [hl]                                       ; $62db: $be
    cp a                                          ; $62dc: $bf
    ld e, a                                       ; $62dd: $5f
    ld e, a                                       ; $62de: $5f
    rlca                                          ; $62df: $07
    rlca                                          ; $62e0: $07
    ld c, $0e                                     ; $62e1: $0e $0e
    jr nz, jr_0a3_62e9                            ; $62e3: $20 $04

    inc b                                         ; $62e5: $04
    cp e                                          ; $62e6: $bb
    jr jr_0a3_6352                                ; $62e7: $18 $69

jr_0a3_62e9:
    ld a, [hl]                                    ; $62e9: $7e
    inc [hl]                                      ; $62ea: $34
    ccf                                           ; $62eb: $3f
    dec de                                        ; $62ec: $1b
    ld [$1e1f], sp                                ; $62ed: $08 $1f $1e
    rra                                           ; $62f0: $1f
    dec a                                         ; $62f1: $3d
    ld c, [hl]                                    ; $62f2: $4e
    nop                                           ; $62f3: $00
    push de                                       ; $62f4: $d5
    rst $38                                       ; $62f5: $ff
    xor d                                         ; $62f6: $aa
    nop                                           ; $62f7: $00
    rst $38                                       ; $62f8: $ff
    ld e, a                                       ; $62f9: $5f
    and b                                         ; $62fa: $a0
    ccf                                           ; $62fb: $3f
    ret nz                                        ; $62fc: $c0

    ld a, [bc]                                    ; $62fd: $0a
    push af                                       ; $62fe: $f5
    add h                                         ; $62ff: $84
    nop                                           ; $6300: $00
    ei                                            ; $6301: $fb
    ld e, $e1                                     ; $6302: $1e $e1
    cpl                                           ; $6304: $2f
    ret nc                                        ; $6305: $d0

    ld d, a                                       ; $6306: $57
    xor b                                         ; $6307: $a8
    xor a                                         ; $6308: $af
    nop                                           ; $6309: $00
    ld d, b                                       ; $630a: $50
    ld e, d                                       ; $630b: $5a
    xor [hl]                                      ; $630c: $ae
    rlca                                          ; $630d: $07
    rst $38                                       ; $630e: $ff
    ld d, [hl]                                    ; $630f: $56
    cp $bc                                        ; $6310: $fe $bc
    nop                                           ; $6312: $00
    db $fc                                        ; $6313: $fc
    cp h                                          ; $6314: $bc
    ld a, h                                       ; $6315: $7c
    inc d                                         ; $6316: $14
    db $fc                                        ; $6317: $fc
    xor d                                         ; $6318: $aa
    ld a, [hl]                                    ; $6319: $7e
    ld d, l                                       ; $631a: $55
    nop                                           ; $631b: $00
    cp a                                          ; $631c: $bf
    ldh a, [rIE]                                  ; $631d: $f0 $ff
    ld a, [$f1fd]                                 ; $631f: $fa $fd $f1
    cp $fc                                        ; $6322: $fe $fc
    nop                                           ; $6324: $00
    rst $38                                       ; $6325: $ff
    add sp, -$01                                  ; $6326: $e8 $ff
    ld d, h                                       ; $6328: $54
    ei                                            ; $6329: $fb
    xor e                                         ; $632a: $ab
    db $f4                                        ; $632b: $f4
    ld b, a                                       ; $632c: $47
    nop                                           ; $632d: $00
    ld hl, sp+$7f                                 ; $632e: $f8 $7f
    add b                                         ; $6330: $80
    rst $38                                       ; $6331: $ff
    nop                                           ; $6332: $00
    ld a, e                                       ; $6333: $7b
    add h                                         ; $6334: $84
    or l                                          ; $6335: $b5
    nop                                           ; $6336: $00
    ld c, d                                       ; $6337: $4a
    ld e, b                                       ; $6338: $58
    and a                                         ; $6339: $a7
    and c                                         ; $633a: $a1
    ld e, a                                       ; $633b: $5f
    ldh a, [rIF]                                  ; $633c: $f0 $0f
    db $fd                                        ; $633e: $fd
    nop                                           ; $633f: $00
    ld [bc], a                                    ; $6340: $02
    and d                                         ; $6341: $a2
    ld e, a                                       ; $6342: $5f
    push de                                       ; $6343: $d5
    dec hl                                        ; $6344: $2b
    ld [$4015], a                                 ; $6345: $ea $15 $40
    nop                                           ; $6348: $00
    cp a                                          ; $6349: $bf
    ld a, [bc]                                    ; $634a: $0a
    rst $38                                       ; $634b: $ff
    ld e, a                                       ; $634c: $5f
    rst $38                                       ; $634d: $ff
    rlca                                          ; $634e: $07
    rst $38                                       ; $634f: $ff
    ld d, d                                       ; $6350: $52
    nop                                           ; $6351: $00

jr_0a3_6352:
    xor a                                         ; $6352: $af
    add b                                         ; $6353: $80
    add b                                         ; $6354: $80
    ld h, c                                       ; $6355: $61
    pop hl                                        ; $6356: $e1
    ld sp, $62f1                                  ; $6357: $31 $f1 $62
    nop                                           ; $635a: $00
    db $e3                                        ; $635b: $e3
    jp nz, $84c3                                  ; $635c: $c2 $c3 $84

    add a                                         ; $635f: $87
    adc $cf                                       ; $6360: $ce $cf
    and l                                         ; $6362: $a5
    nop                                           ; $6363: $00
    rst $20                                       ; $6364: $e7
    xor e                                         ; $6365: $ab
    call nc, $fa85                                ; $6366: $d4 $85 $fa
    ld a, [c]                                     ; $6369: $f2
    db $fd                                        ; $636a: $fd
    ld b, c                                       ; $636b: $41
    db $10                                        ; $636c: $10
    cp $17                                        ; $636d: $fe $17
    add sp, $3a                                   ; $636f: $e8 $3a
    ld [$d42b], sp                                ; $6371: $08 $2b $d4
    cp $01                                        ; $6374: $fe $01
    add h                                         ; $6376: $84
    ld d, d                                       ; $6377: $52
    add hl, de                                    ; $6378: $19
    ld e, [hl]                                    ; $6379: $5e
    and c                                         ; $637a: $a1
    push af                                       ; $637b: $f5
    ld a, [bc]                                    ; $637c: $0a
    ld e, h                                       ; $637d: $5c
    add hl, bc                                    ; $637e: $09
    xor c                                         ; $637f: $a9
    ld d, a                                       ; $6380: $57
    nop                                           ; $6381: $00
    ld a, [c]                                     ; $6382: $f2
    rrca                                          ; $6383: $0f
    push hl                                       ; $6384: $e5
    rra                                           ; $6385: $1f
    add a                                         ; $6386: $87
    ld a, a                                       ; $6387: $7f
    and d                                         ; $6388: $a2
    ld e, a                                       ; $6389: $5f
    nop                                           ; $638a: $00
    ld d, c                                       ; $638b: $51
    xor a                                         ; $638c: $af
    ld a, [$fd05]                                 ; $638d: $fa $05 $fd
    ld [bc], a                                    ; $6390: $02
    ld d, d                                       ; $6391: $52
    di                                            ; $6392: $f3
    nop                                           ; $6393: $00
    xor a                                         ; $6394: $af
    rst $38                                       ; $6395: $ff
    rst $10                                       ; $6396: $d7
    rst $38                                       ; $6397: $ff
    db $fd                                        ; $6398: $fd
    rst $38                                       ; $6399: $ff
    ld a, [$00ff]                                 ; $639a: $fa $ff $00
    ld e, h                                       ; $639d: $5c
    rst $38                                       ; $639e: $ff
    ld a, c                                       ; $639f: $79
    rst $38                                       ; $63a0: $ff
    or d                                          ; $63a1: $b2
    cp l                                          ; $63a2: $bd
    sub l                                         ; $63a3: $95
    ld [$6104], a                                 ; $63a4: $ea $04 $61
    cp $d0                                        ; $63a7: $fe $d0
    rst $38                                       ; $63a9: $ff
    ld [$0012], a                                 ; $63aa: $ea $12 $00
    ccf                                           ; $63ad: $3f
    ccf                                           ; $63ae: $3f
    nop                                           ; $63af: $00
    inc de                                        ; $63b0: $13
    inc de                                        ; $63b1: $13
    inc b                                         ; $63b2: $04
    inc b                                         ; $63b3: $04
    xor a                                         ; $63b4: $af
    ld d, b                                       ; $63b5: $50
    ld d, l                                       ; $63b6: $55
    xor d                                         ; $63b7: $aa
    add h                                         ; $63b8: $84
    sub e                                         ; $63b9: $93
    add hl, bc                                    ; $63ba: $09
    ld c, d                                       ; $63bb: $4a
    rst $38                                       ; $63bc: $ff
    and l                                         ; $63bd: $a5
    rst $38                                       ; $63be: $ff
    ld bc, $a808                                  ; $63bf: $01 $08 $a8
    ld d, a                                       ; $63c2: $57
    ld b, b                                       ; $63c3: $40
    ld b, c                                       ; $63c4: $41
    ld a, h                                       ; $63c5: $7c
    nop                                           ; $63c6: $00
    ld d, a                                       ; $63c7: $57
    rst $38                                       ; $63c8: $ff
    cp l                                          ; $63c9: $bd
    db $fd                                        ; $63ca: $fd
    ld a, h                                       ; $63cb: $7c
    db $fc                                        ; $63cc: $fc
    nop                                           ; $63cd: $00
    cp d                                          ; $63ce: $ba
    cp d                                          ; $63cf: $ba
    ld b, l                                       ; $63d0: $45
    ld b, l                                       ; $63d1: $45
    ld l, c                                       ; $63d2: $69
    cp $74                                        ; $63d3: $fe $74
    rst $38                                       ; $63d5: $ff
    ld [bc], a                                    ; $63d6: $02
    ei                                            ; $63d7: $fb
    rst $38                                       ; $63d8: $ff
    sbc $df                                       ; $63d9: $de $df
    cp l                                          ; $63db: $bd
    cp a                                          ; $63dc: $bf
    ldh [rNR23], a                                ; $63dd: $e0 $18
    jr nc, jr_0a3_63f1                            ; $63df: $30 $10

    ld [hl], b                                    ; $63e1: $70
    jr nc, jr_0a3_6454                            ; $63e2: $30 $70

    inc bc                                        ; $63e4: $03
    nop                                           ; $63e5: $00
    jr nc, jr_0a3_6438                            ; $63e6: $30 $50

    jr nc, jr_0a3_63fa                            ; $63e8: $30 $10

    ld b, b                                       ; $63ea: $40
    ld [hl], b                                    ; $63eb: $70
    inc b                                         ; $63ec: $04
    ld [$8080], sp                                ; $63ed: $08 $80 $80
    ld h, b                                       ; $63f0: $60

jr_0a3_63f1:
    ldh [$30], a                                  ; $63f1: $e0 $30
    ldh a, [rSTAT]                                ; $63f3: $f0 $41
    ld h, b                                       ; $63f5: $60
    ld h, d                                       ; $63f6: $62
    ld bc, $8080                                  ; $63f7: $01 $80 $80

jr_0a3_63fa:
    ret nz                                        ; $63fa: $c0

    ret nz                                        ; $63fb: $c0

    and b                                         ; $63fc: $a0
    ld h, $01                                     ; $63fd: $26 $01
    nop                                           ; $63ff: $00
    xor b                                         ; $6400: $a8
    ld hl, sp-$2c                                 ; $6401: $f8 $d4
    db $fc                                        ; $6403: $fc
    ld a, [$fcfa]                                 ; $6404: $fa $fa $fc
    db $fc                                        ; $6407: $fc
    ld [bc], a                                    ; $6408: $02
    ld e, b                                       ; $6409: $58
    ld hl, sp+$2c                                 ; $640a: $f8 $2c
    db $fc                                        ; $640c: $fc
    ld e, h                                       ; $640d: $5c
    db $fc                                        ; $640e: $fc
    ld d, b                                       ; $640f: $50

jr_0a3_6410:
    ld c, b                                       ; $6410: $48
    cp b                                          ; $6411: $b8
    nop                                           ; $6412: $00
    cp b                                          ; $6413: $b8
    ld b, b                                       ; $6414: $40
    ld b, b                                       ; $6415: $40
    jr z, jr_0a3_6410                             ; $6416: $28 $f8

    ld d, h                                       ; $6418: $54
    db $f4                                        ; $6419: $f4
    add sp, $04                                   ; $641a: $e8 $04
    add sp, -$30                                  ; $641c: $e8 $d0
    ret nc                                        ; $641e: $d0

    and b                                         ; $641f: $a0
    and b                                         ; $6420: $a0
    ei                                            ; $6421: $fb
    add hl, de                                    ; $6422: $19
    rst $38                                       ; $6423: $ff
    rst $38                                       ; $6424: $ff
    nop                                           ; $6425: $00
    adc e                                         ; $6426: $8b
    rst $38                                       ; $6427: $ff
    di                                            ; $6428: $f3
    rst $08                                       ; $6429: $cf
    sbc c                                         ; $642a: $99
    rst $20                                       ; $642b: $e7
    di                                            ; $642c: $f3
    rst $08                                       ; $642d: $cf
    nop                                           ; $642e: $00
    reti                                          ; $642f: $d9


    rst $20                                       ; $6430: $e7
    ld d, d                                       ; $6431: $52
    ld l, [hl]                                    ; $6432: $6e
    inc a                                         ; $6433: $3c
    inc a                                         ; $6434: $3c
    rst $28                                       ; $6435: $ef
    stop                                          ; $6436: $10 $00

jr_0a3_6438:
    rst $18                                       ; $6438: $df
    jr nz, jr_0a3_6444                            ; $6439: $20 $09

    and [hl]                                      ; $643b: $a6
    db $e3                                        ; $643c: $e3
    ld d, h                                       ; $643d: $54
    dec hl                                        ; $643e: $2b
    and $02                                       ; $643f: $e6 $02
    and h                                         ; $6441: $a4
    dec c                                         ; $6442: $0d
    sub e                                         ; $6443: $93

jr_0a3_6444:
    rst $28                                       ; $6444: $ef
    rst $08                                       ; $6445: $cf
    ld a, h                                       ; $6446: $7c
    ld [hl], b                                    ; $6447: $70
    db $10                                        ; $6448: $10
    jr c, jr_0a3_644b                             ; $6449: $38 $00

jr_0a3_644b:
    ld l, b                                       ; $644b: $68
    inc [hl]                                      ; $644c: $34
    ld d, h                                       ; $644d: $54
    ld l, d                                       ; $644e: $6a
    ld d, h                                       ; $644f: $54
    ld l, d                                       ; $6450: $6a
    halt                                          ; $6451: $76
    ld c, b                                       ; $6452: $48
    nop                                           ; $6453: $00

jr_0a3_6454:
    ld e, h                                       ; $6454: $5c
    ld h, e                                       ; $6455: $63
    ld e, l                                       ; $6456: $5d
    ld h, d                                       ; $6457: $62
    ld e, l                                       ; $6458: $5d
    ld h, d                                       ; $6459: $62
    ld d, h                                       ; $645a: $54
    ld l, e                                       ; $645b: $6b
    nop                                           ; $645c: $00
    ld d, l                                       ; $645d: $55
    ld l, e                                       ; $645e: $6b
    ld e, [hl]                                    ; $645f: $5e
    ld h, b                                       ; $6460: $60
    ld d, h                                       ; $6461: $54
    ld l, d                                       ; $6462: $6a
    ld e, h                                       ; $6463: $5c
    ld h, d                                       ; $6464: $62
    nop                                           ; $6465: $00
    ld l, h                                       ; $6466: $6c
    ld d, d                                       ; $6467: $52
    ei                                            ; $6468: $fb
    inc b                                         ; $6469: $04
    rst $28                                       ; $646a: $ef
    db $10                                        ; $646b: $10
    ld a, l                                       ; $646c: $7d
    add d                                         ; $646d: $82
    add b                                         ; $646e: $80
    ld d, [hl]                                    ; $646f: $56
    ld a, [bc]                                    ; $6470: $0a
    db $dd                                        ; $6471: $dd
    ld [hl+], a                                   ; $6472: $22
    or [hl]                                       ; $6473: $b6
    ld c, c                                       ; $6474: $49
    rst $38                                       ; $6475: $ff
    nop                                           ; $6476: $00
    rst $28                                       ; $6477: $ef
    ld bc, $be10                                  ; $6478: $01 $10 $be
    ld b, c                                       ; $647b: $41
    rst $38                                       ; $647c: $ff
    nop                                           ; $647d: $00
    rst $30                                       ; $647e: $f7
    ld [$0a68], sp                                ; $647f: $08 $68 $0a
    nop                                           ; $6482: $00
    rst $18                                       ; $6483: $df
    jr nz, @-$03                                  ; $6484: $20 $fb

    inc b                                         ; $6486: $04
    cp l                                          ; $6487: $bd
    ld b, d                                       ; $6488: $42
    rst $30                                       ; $6489: $f7
    ld [$bf00], sp                                ; $648a: $08 $00 $bf
    ld b, b                                       ; $648d: $40
    rst $38                                       ; $648e: $ff
    nop                                           ; $648f: $00
    db $db                                        ; $6490: $db
    inc h                                         ; $6491: $24
    rst $38                                       ; $6492: $ff
    nop                                           ; $6493: $00
    add b                                         ; $6494: $80
    ld [$ff08], sp                                ; $6495: $08 $08 $ff
    nop                                           ; $6498: $00
    ei                                            ; $6499: $fb
    inc b                                         ; $649a: $04
    db $dd                                        ; $649b: $dd
    ld h, [hl]                                    ; $649c: $66
    and $00                                       ; $649d: $e6 $00
    ld [hl-], a                                   ; $649f: $32
    pop af                                        ; $64a0: $f1
    ld a, [de]                                    ; $64a1: $1a
    sub l                                         ; $64a2: $95
    ldh [$d2], a                                  ; $64a3: $e0 $d2
    ld a, b                                       ; $64a5: $78
    ld a, [$1d40]                                 ; $64a6: $fa $40 $1d
    add c                                         ; $64a9: $81
    ld [de], a                                    ; $64aa: $12
    jr c, @+$3a                                   ; $64ab: $38 $38

    ld b, [hl]                                    ; $64ad: $46

jr_0a3_64ae:
    dec e                                         ; $64ae: $1d
    ld h, e                                       ; $64af: $63
    ld h, c                                       ; $64b0: $61
    inc c                                         ; $64b1: $0c
    ld e, a                                       ; $64b2: $5f
    ld l, d                                       ; $64b3: $6a
    ld a, [hl]                                    ; $64b4: $7e
    inc a                                         ; $64b5: $3c
    and b                                         ; $64b6: $a0
    ld [bc], a                                    ; $64b7: $02
    ld d, d                                       ; $64b8: $52
    add hl, bc                                    ; $64b9: $09
    call c, $0022                                 ; $64ba: $dc $22 $00
    db $ec                                        ; $64bd: $ec
    ld [hl-], a                                   ; $64be: $32
    push hl                                       ; $64bf: $e5
    ld [hl-], a                                   ; $64c0: $32
    ld [$b111], a                                 ; $64c1: $ea $11 $b1
    ret c                                         ; $64c4: $d8

    add b                                         ; $64c5: $80
    or b                                          ; $64c6: $b0
    ld a, [bc]                                    ; $64c7: $0a
    ld a, a                                       ; $64c8: $7f
    add b                                         ; $64c9: $80
    ld [hl], a                                    ; $64ca: $77
    adc h                                         ; $64cb: $8c
    ld c, a                                       ; $64cc: $4f
    xor b                                         ; $64cd: $a8
    rrca                                          ; $64ce: $0f
    nop                                           ; $64cf: $00
    ld e, b                                       ; $64d0: $58
    cp h                                          ; $64d1: $bc
    inc de                                        ; $64d2: $13
    ld e, c                                       ; $64d3: $59
    inc sp                                        ; $64d4: $33
    call z, $e569                                 ; $64d5: $cc $69 $e5
    nop                                           ; $64d8: $00
    jr nc, jr_0a3_6526                            ; $64d9: $30 $4b

    or h                                          ; $64db: $b4
    ld c, h                                       ; $64dc: $4c
    add d                                         ; $64dd: $82
    sub e                                         ; $64de: $93
    db $e4                                        ; $64df: $e4
    ld [$7000], a                                 ; $64e0: $ea $00 $70
    ld sp, hl                                     ; $64e3: $f9
    ld a, $a2                                     ; $64e4: $3e $a2
    ld e, l                                       ; $64e6: $5d
    sub e                                         ; $64e7: $93
    ld h, $41                                     ; $64e8: $26 $41
    nop                                           ; $64ea: $00
    ld c, $17                                     ; $64eb: $0e $17

jr_0a3_64ed:
    ld bc, $238d                                  ; $64ed: $01 $8d $23
    inc de                                        ; $64f0: $13
    ld c, [hl]                                    ; $64f1: $4e
    xor e                                         ; $64f2: $ab
    nop                                           ; $64f3: $00
    ld e, $57                                     ; $64f4: $1e $57
    cp h                                          ; $64f6: $bc
    and l                                         ; $64f7: $a5
    ld e, d                                       ; $64f8: $5a
    rst $30                                       ; $64f9: $f7
    ld [$007f], sp                                ; $64fa: $08 $7f $00
    add b                                         ; $64fd: $80
    rst $28                                       ; $64fe: $ef
    db $10                                        ; $64ff: $10
    db $fd                                        ; $6500: $fd
    ld [bc], a                                    ; $6501: $02
    ei                                            ; $6502: $fb
    inc b                                         ; $6503: $04
    ld l, a                                       ; $6504: $6f
    jr @-$6e                                      ; $6505: $18 $90

    db $fd                                        ; $6507: $fd
    ld [bc], a                                    ; $6508: $02
    adc d                                         ; $6509: $8a
    ld [$087a], sp                                ; $650a: $08 $7a $08
    rst $38                                       ; $650d: $ff
    nop                                           ; $650e: $00
    cp l                                          ; $650f: $bd
    nop                                           ; $6510: $00
    ld b, d                                       ; $6511: $42
    rst $28                                       ; $6512: $ef
    db $10                                        ; $6513: $10
    rst $38                                       ; $6514: $ff
    nop                                           ; $6515: $00
    ld a, l                                       ; $6516: $7d
    add d                                         ; $6517: $82
    cp l                                          ; $6518: $bd
    ld de, $ff42                                  ; $6519: $11 $42 $ff
    jr z, jr_0a3_64ae                             ; $651c: $28 $90

    nop                                           ; $651e: $00
    db $10                                        ; $651f: $10
    db $db                                        ; $6520: $db
    dec h                                         ; $6521: $25
    ld a, [bc]                                    ; $6522: $0a
    inc bc                                        ; $6523: $03
    sbc b                                         ; $6524: $98
    sub h                                         ; $6525: $94

jr_0a3_6526:
    nop                                           ; $6526: $00
    cp e                                          ; $6527: $bb
    ld b, h                                       ; $6528: $44
    ld [de], a                                    ; $6529: $12
    dec bc                                        ; $652a: $0b
    inc h                                         ; $652b: $24
    jr jr_0a3_64ed                                ; $652c: $18 $bf

    ld b, b                                       ; $652e: $40
    db $fd                                        ; $652f: $fd
    nop                                           ; $6530: $00
    ld [bc], a                                    ; $6531: $02
    ld bc, $0500                                  ; $6532: $01 $00 $05
    db $10                                        ; $6535: $10
    inc bc                                        ; $6536: $03
    nop                                           ; $6537: $00
    ld a, [bc]                                    ; $6538: $0a
    nop                                           ; $6539: $00
    ld b, c                                       ; $653a: $41
    inc bc                                        ; $653b: $03
    nop                                           ; $653c: $00
    dec d                                         ; $653d: $15
    nop                                           ; $653e: $00
    rrca                                          ; $653f: $0f
    nop                                           ; $6540: $00
    dec bc                                        ; $6541: $0b
    ld b, l                                       ; $6542: $45
    inc h                                         ; $6543: $24
    call nz, Call_000_0500                        ; $6544: $c4 $00 $05
    rst $18                                       ; $6547: $df
    jr nz, @-$2e                                  ; $6548: $20 $d0

    nop                                           ; $654a: $00
    add b                                         ; $654b: $80
    ld [$8001], a                                 ; $654c: $ea $01 $80
    ld d, h                                       ; $654f: $54
    nop                                           ; $6550: $00
    cp [hl]                                       ; $6551: $be
    ld b, b                                       ; $6552: $40
    push af                                       ; $6553: $f5
    ld [$00ea], sp                                ; $6554: $08 $ea $00
    db $f4                                        ; $6557: $f4
    nop                                           ; $6558: $00
    ld [$8058], sp                                ; $6559: $08 $58 $80
    ldh [rSC], a                                  ; $655c: $e0 $02
    ret nz                                        ; $655e: $c0

    ld [$0080], sp                                ; $655f: $08 $80 $00
    nop                                           ; $6562: $00
    ld e, a                                       ; $6563: $5f
    nop                                           ; $6564: $00
    cp a                                          ; $6565: $bf
    nop                                           ; $6566: $00
    dec hl                                        ; $6567: $2b
    inc b                                         ; $6568: $04
    rra                                           ; $6569: $1f
    ld bc, $3e00                                  ; $656a: $01 $00 $3e
    ld bc, $006f                                  ; $656d: $01 $6f $00
    ld a, e                                       ; $6570: $7b
    inc b                                         ; $6571: $04
    ld [$9a08], a                                 ; $6572: $ea $08 $9a
    nop                                           ; $6575: $00
    add hl, bc                                    ; $6576: $09
    cp $09                                        ; $6577: $fe $09
    ld e, b                                       ; $6579: $58
    ld a, [bc]                                    ; $657a: $0a
    ld b, $01                                     ; $657b: $06 $01
    jr nz, jr_0a3_65e0                            ; $657d: $20 $61

    dec bc                                        ; $657f: $0b
    db $10                                        ; $6580: $10
    jr nz, jr_0a3_659b                            ; $6581: $20 $18

    jr z, jr_0a3_65c5                             ; $6583: $28 $40

jr_0a3_6585:
    add hl, hl                                    ; $6585: $29
    db $e3                                        ; $6586: $e3

Jump_0a3_6587:
    sbc l                                         ; $6587: $9d
    ld h, d                                       ; $6588: $62
    db $dd                                        ; $6589: $dd
    ld [hl+], a                                   ; $658a: $22
    inc c                                         ; $658b: $0c
    ld d, h                                       ; $658c: $54
    xor e                                         ; $658d: $ab
    push de                                       ; $658e: $d5
    db $eb                                        ; $658f: $eb
    ld b, b                                       ; $6590: $40
    add hl, hl                                    ; $6591: $29
    add b                                         ; $6592: $80
    nop                                           ; $6593: $00
    jr nz, @+$01                                  ; $6594: $20 $ff

    ld [de], a                                    ; $6596: $12
    ld [$45fb], sp                                ; $6597: $08 $fb $45
    adc [hl]                                      ; $659a: $8e

jr_0a3_659b:
    ld [$48bf], sp                                ; $659b: $08 $bf $48
    or d                                          ; $659e: $b2
    nop                                           ; $659f: $00
    inc b                                         ; $65a0: $04
    add d                                         ; $65a1: $82
    ld b, b                                       ; $65a2: $40
    ld bc, $f720                                  ; $65a3: $01 $20 $f7
    ld c, b                                       ; $65a6: $48
    rst $28                                       ; $65a7: $ef
    dec d                                         ; $65a8: $15
    xor d                                         ; $65a9: $aa
    inc bc                                        ; $65aa: $03
    ld d, b                                       ; $65ab: $50
    nop                                           ; $65ac: $00
    ei                                            ; $65ad: $fb
    dec b                                         ; $65ae: $05
    rst $30                                       ; $65af: $f7
    ld [$a1df], sp                                ; $65b0: $08 $df $a1
    rst $38                                       ; $65b3: $ff
    ld [bc], a                                    ; $65b4: $02
    nop                                           ; $65b5: $00

jr_0a3_65b6:
    rst $38                                       ; $65b6: $ff
    jr z, jr_0a3_65b6                             ; $65b7: $28 $fd

    ld [bc], a                                    ; $65b9: $02

Call_0a3_65ba:
    rst $28                                       ; $65ba: $ef
    ld d, c                                       ; $65bb: $51
    rst $38                                       ; $65bc: $ff
    jr nz, jr_0a3_65df                            ; $65bd: $20 $20

    ld a, l                                       ; $65bf: $7d
    sub d                                         ; $65c0: $92
    ld d, b                                       ; $65c1: $50
    ld h, b                                       ; $65c2: $60
    ld [c], a                                     ; $65c3: $e2
    dec a                                         ; $65c4: $3d

jr_0a3_65c5:
    ld b, d                                       ; $65c5: $42
    ccf                                           ; $65c6: $3f
    nop                                           ; $65c7: $00
    nop                                           ; $65c8: $00
    scf                                           ; $65c9: $37
    add hl, bc                                    ; $65ca: $09
    ld e, a                                       ; $65cb: $5f
    nop                                           ; $65cc: $00
    dec a                                         ; $65cd: $3d
    ld [bc], a                                    ; $65ce: $02
    rra                                           ; $65cf: $1f
    nop                                           ; $65d0: $00
    nop                                           ; $65d1: $00
    dec [hl]                                      ; $65d2: $35
    ld [$001e], sp                                ; $65d3: $08 $1e $00
    sbc $20                                       ; $65d6: $de $20
    db $fc                                        ; $65d8: $fc
    nop                                           ; $65d9: $00
    nop                                           ; $65da: $00
    ret c                                         ; $65db: $d8

    inc h                                         ; $65dc: $24
    ld hl, sp+$00                                 ; $65dd: $f8 $00

jr_0a3_65df:
    ld [hl], b                                    ; $65df: $70

jr_0a3_65e0:
    add h                                         ; $65e0: $84
    ld b, b                                       ; $65e1: $40
    ld [$8200], sp                                ; $65e2: $08 $00 $82
    db $10                                        ; $65e5: $10
    db $10                                        ; $65e6: $10
    jr nz, jr_0a3_6585                            ; $65e7: $20 $9c

    ld h, d                                       ; $65e9: $62
    call c, $0822                                 ; $65ea: $dc $22 $08
    ld d, h                                       ; $65ed: $54
    xor d                                         ; $65ee: $aa
    call nc, $b0ea                                ; $65ef: $d4 $ea $b0
    add hl, hl                                    ; $65f2: $29
    ld a, [hl-]                                   ; $65f3: $3a
    inc d                                         ; $65f4: $14
    inc [hl]                                      ; $65f5: $34
    nop                                           ; $65f6: $00
    ld [$005e], sp                                ; $65f7: $08 $5e $00
    inc a                                         ; $65fa: $3c
    nop                                           ; $65fb: $00
    ld [hl], $08                                  ; $65fc: $36 $08
    ld e, h                                       ; $65fe: $5c
    ld [$bc00], sp                                ; $65ff: $08 $00 $bc
    ld [$e67a], sp                                ; $6602: $08 $7a $e6
    inc hl                                        ; $6605: $23
    ld [bc], a                                    ; $6606: $02
    inc bc                                        ; $6607: $03
    inc bc                                        ; $6608: $03
    nop                                           ; $6609: $00
    ld [bc], a                                    ; $660a: $02
    ld a, [bc]                                    ; $660b: $0a
    rrca                                          ; $660c: $0f
    dec d                                         ; $660d: $15
    dec de                                        ; $660e: $1b
    inc d                                         ; $660f: $14
    dec de                                        ; $6610: $1b
    dec b                                         ; $6611: $05
    nop                                           ; $6612: $00
    nop                                           ; $6613: $00
    inc bc                                        ; $6614: $03
    db $10                                        ; $6615: $10
    dec c                                         ; $6616: $0d
    nop                                           ; $6617: $00
    add hl, bc                                    ; $6618: $09

jr_0a3_6619:
    ld b, d                                       ; $6619: $42
    cpl                                           ; $661a: $2f
    ld [$5700], sp                                ; $661b: $08 $00 $57
    ld [$d23f], sp                                ; $661e: $08 $3f $d2
    nop                                           ; $6621: $00
    ld e, b                                       ; $6622: $58
    jr nz, jr_0a3_6619                            ; $6623: $20 $f4

    nop                                           ; $6625: $00
    jr z, @-$06                                   ; $6626: $28 $f8

    nop                                           ; $6628: $00
    ldh a, [rP1]                                  ; $6629: $f0 $00
    or h                                          ; $662b: $b4
    ld b, b                                       ; $662c: $40
    ldh a, [rP1]                                  ; $662d: $f0 $00
    ld [$04f0], sp                                ; $662f: $08 $f0 $04
    db $fc                                        ; $6632: $fc
    ld [bc], a                                    ; $6633: $02
    rra                                           ; $6634: $1f
    ld de, $001d                                  ; $6635: $11 $1d $00
    ld [de], a                                    ; $6638: $12
    dec e                                         ; $6639: $1d
    inc de                                        ; $663a: $13
    ld d, $19                                     ; $663b: $16 $19
    dec d                                         ; $663d: $15
    dec de                                        ; $663e: $1b
    ld d, $05                                     ; $663f: $16 $05
    jr jr_0a3_6657                                ; $6641: $18 $14

    ld a, [de]                                    ; $6643: $1a
    db $10                                        ; $6644: $10
    inc e                                         ; $6645: $1c
    and $01                                       ; $6646: $e6 $01
    ld [hl+], a                                   ; $6648: $22
    or $09                                        ; $6649: $f6 $09
    inc b                                         ; $664b: $04
    rst $38                                       ; $664c: $ff
    nop                                           ; $664d: $00
    ld a, [$ff05]                                 ; $664e: $fa $05 $ff
    ld h, d                                       ; $6651: $62
    ld bc, $0af7                                  ; $6652: $01 $f7 $0a
    ld [hl], $af                                  ; $6655: $36 $af

jr_0a3_6657:
    ld d, b                                       ; $6657: $50
    ld a, [hl+]                                   ; $6658: $2a
    add hl, bc                                    ; $6659: $09
    add h                                         ; $665a: $84
    ld bc, $0e42                                  ; $665b: $01 $42 $0e
    ld [$2c61], sp                                ; $665e: $08 $61 $2c
    inc b                                         ; $6661: $04
    nop                                           ; $6662: $00
    ld b, $0a                                     ; $6663: $06 $0a
    dec c                                         ; $6665: $0d
    ld c, $09                                     ; $6666: $0e $09
    ld l, $39                                     ; $6668: $2e $39
    inc c                                         ; $666a: $0c
    ld [bc], a                                    ; $666b: $02
    ld c, $0c                                     ; $666c: $0e $0c
    ld c, $16                                     ; $666e: $0e $16
    inc e                                         ; $6670: $1c
    ld a, [hl+]                                   ; $6671: $2a
    ret nz                                        ; $6672: $c0

    jr nc, jr_0a3_66cc                            ; $6673: $30 $57

    nop                                           ; $6675: $00
    ld l, h                                       ; $6676: $6c
    ld d, e                                       ; $6677: $53
    ld l, h                                       ; $6678: $6c
    halt                                          ; $6679: $76
    call Call_0a3_65ba                            ; $667a: $cd $ba $65
    or [hl]                                       ; $667d: $b6
    nop                                           ; $667e: $00
    ld c, l                                       ; $667f: $4d
    cp [hl]                                       ; $6680: $be
    ld h, c                                       ; $6681: $61
    call nc, $b82e                                ; $6682: $d4 $2e $b8
    ld h, b                                       ; $6685: $60
    sub b                                         ; $6686: $90
    add hl, bc                                    ; $6687: $09
    ld l, b                                       ; $6688: $68
    ldh [$30], a                                  ; $6689: $e0 $30
    ret nz                                        ; $668b: $c0

    dec [hl]                                      ; $668c: $35
    inc b                                         ; $668d: $04
    nop                                           ; $668e: $00
    add b                                         ; $668f: $80
    and b                                         ; $6690: $a0
    ld [hl+], a                                   ; $6691: $22
    ld a, [hl+]                                   ; $6692: $2a
    nop                                           ; $6693: $00
    ei                                            ; $6694: $fb
    or d                                          ; $6695: $b2
    inc b                                         ; $6696: $04
    ld e, e                                       ; $6697: $5b
    call nz, $ef11                                ; $6698: $c4 $11 $ef
    add $01                                       ; $669b: $c6 $01
    push af                                       ; $669d: $f5
    add b                                         ; $669e: $80
    call nc, $ef01                                ; $669f: $d4 $01 $ef
    db $10                                        ; $66a2: $10
    cp $00                                        ; $66a3: $fe $00
    cp e                                          ; $66a5: $bb
    inc b                                         ; $66a6: $04
    rst $18                                       ; $66a7: $df
    ld hl, $f600                                  ; $66a8: $21 $00 $f6
    ld h, [hl]                                    ; $66ab: $66
    ld [bc], a                                    ; $66ac: $02
    ei                                            ; $66ad: $fb
    inc h                                         ; $66ae: $24
    rst $28                                       ; $66af: $ef
    ld de, $0280                                  ; $66b0: $11 $80 $02
    db $10                                        ; $66b3: $10
    inc h                                         ; $66b4: $24
    rst $38                                       ; $66b5: $ff
    ld de, $1280                                  ; $66b6: $11 $80 $12
    inc h                                         ; $66b9: $24
    rst $30                                       ; $66ba: $f7
    ld c, d                                       ; $66bb: $4a
    rst $38                                       ; $66bc: $ff
    dec b                                         ; $66bd: $05
    add c                                         ; $66be: $81
    rst $28                                       ; $66bf: $ef
    inc d                                         ; $66c0: $14
    db $fd                                        ; $66c1: $fd
    ld [hl+], a                                   ; $66c2: $22
    nop                                           ; $66c3: $00
    ld [bc], a                                    ; $66c4: $02
    sub c                                         ; $66c5: $91
    db $ec                                        ; $66c6: $ec
    inc b                                         ; $66c7: $04
    add hl, de                                    ; $66c8: $19
    ld c, b                                       ; $66c9: $48
    rst $38                                       ; $66ca: $ff
    ld [hl+], a                                   ; $66cb: $22

jr_0a3_66cc:
    ld hl, sp+$01                                 ; $66cc: $f8 $01
    db $e4                                        ; $66ce: $e4
    inc bc                                        ; $66cf: $03
    db $dd                                        ; $66d0: $dd
    ld [hl+], a                                   ; $66d1: $22
    sbc $01                                       ; $66d2: $de $01
    ld d, d                                       ; $66d4: $52
    ld [de], a                                    ; $66d5: $12
    sbc d                                         ; $66d6: $9a
    ld a, [bc]                                    ; $66d7: $0a
    cp $a0                                        ; $66d8: $fe $a0
    ld [bc], a                                    ; $66da: $02
    ld a, [hl]                                    ; $66db: $7e
    add l                                         ; $66dc: $85
    and h                                         ; $66dd: $a4
    ld a, [bc]                                    ; $66de: $0a
    cp a                                          ; $66df: $bf
    sbc d                                         ; $66e0: $9a
    xor d                                         ; $66e1: $aa
    ld [bc], a                                    ; $66e2: $02
    db $fd                                        ; $66e3: $fd
    ld [bc], a                                    ; $66e4: $02
    ld c, $0a                                     ; $66e5: $0e $0a
    ld h, d                                       ; $66e7: $62
    nop                                           ; $66e8: $00
    and h                                         ; $66e9: $a4
    db $e4                                        ; $66ea: $e4
    add hl, bc                                    ; $66eb: $09
    ei                                            ; $66ec: $fb
    ld b, d                                       ; $66ed: $42
    inc b                                         ; $66ee: $04
    or [hl]                                       ; $66ef: $b6
    ld a, [bc]                                    ; $66f0: $0a
    cp $05                                        ; $66f1: $fe $05
    ld [hl], a                                    ; $66f3: $77
    adc b                                         ; $66f4: $88
    ld a, [de]                                    ; $66f5: $1a
    ld [$10ff], sp                                ; $66f6: $08 $ff $10
    db $10                                        ; $66f9: $10
    cp e                                          ; $66fa: $bb
    ld b, h                                       ; $66fb: $44
    ld a, b                                       ; $66fc: $78
    ld bc, $ff10                                  ; $66fd: $01 $10 $ff
    inc b                                         ; $6700: $04
    rst $10                                       ; $6701: $d7
    ld h, c                                       ; $6702: $61
    jr z, jr_0a3_6721                             ; $6703: $28 $1c

    ld [$0a42], sp                                ; $6705: $08 $42 $0a
    rst $38                                       ; $6708: $ff
    nop                                           ; $6709: $00
    ld l, a                                       ; $670a: $6f
    sub b                                         ; $670b: $90
    sub b                                         ; $670c: $90
    ld bc, $26fc                                  ; $670d: $01 $fc $26
    inc bc                                        ; $6710: $03
    inc a                                         ; $6711: $3c
    ld [$0806], sp                                ; $6712: $08 $06 $08
    ld a, [$d60a]                                 ; $6715: $fa $0a $d6
    ld a, [bc]                                    ; $6718: $0a
    ld a, b                                       ; $6719: $78
    ld a, [bc]                                    ; $671a: $0a
    rst $38                                       ; $671b: $ff
    inc b                                         ; $671c: $04
    ld c, e                                       ; $671d: $4b
    ld a, a                                       ; $671e: $7f
    inc c                                         ; $671f: $0c
    inc bc                                        ; $6720: $03

jr_0a3_6721:
    db $ed                                        ; $6721: $ed
    ld d, d                                       ; $6722: $52
    ld h, [hl]                                    ; $6723: $66
    dec b                                         ; $6724: $05
    ld [$0afa], sp                                ; $6725: $08 $fa $0a
    ld l, [hl]                                    ; $6728: $6e
    dec c                                         ; $6729: $0d
    ld bc, $12fd                                  ; $672a: $01 $fd $12
    ld a, a                                       ; $672d: $7f
    add b                                         ; $672e: $80
    rst $30                                       ; $672f: $f7
    ld [$26fd], sp                                ; $6730: $08 $fd $26
    ld bc, $bf21                                  ; $6733: $01 $21 $bf
    ld b, b                                       ; $6736: $40
    jr jr_0a3_6744                                ; $6737: $18 $0b

    ei                                            ; $6739: $fb
    inc b                                         ; $673a: $04
    sbc $21                                       ; $673b: $de $21
    ld l, d                                       ; $673d: $6a
    jr @+$05                                      ; $673e: $18 $03

    rst $38                                       ; $6740: $ff
    ld b, b                                       ; $6741: $40
    or $09                                        ; $6742: $f6 $09

jr_0a3_6744:
    cp $81                                        ; $6744: $fe $81
    sbc b                                         ; $6746: $98
    ld a, [bc]                                    ; $6747: $0a
    sub [hl]                                      ; $6748: $96
    nop                                           ; $6749: $00
    inc e                                         ; $674a: $1c
    ld hl, $82ff                                  ; $674b: $21 $ff $82
    ld [hl], $0b                                  ; $674e: $36 $0b
    or h                                          ; $6750: $b4
    ld [bc], a                                    ; $6751: $02
    ld e, d                                       ; $6752: $5a
    nop                                           ; $6753: $00
    rst $28                                       ; $6754: $ef
    ld de, $9ae0                                  ; $6755: $11 $e0 $9a
    ld a, [bc]                                    ; $6758: $0a
    ld e, h                                       ; $6759: $5c
    inc c                                         ; $675a: $0c
    and c                                         ; $675b: $a1
    dec b                                         ; $675c: $05
    ld b, b                                       ; $675d: $40
    inc h                                         ; $675e: $24
    nop                                           ; $675f: $00
    add b                                         ; $6760: $80
    ld bc, $2200                                  ; $6761: $01 $00 $22
    nop                                           ; $6764: $00
    ld b, h                                       ; $6765: $44
    nop                                           ; $6766: $00
    ld a, [$d400]                                 ; $6767: $fa $00 $d4
    jr nz, jr_0a3_676c                            ; $676a: $20 $00

jr_0a3_676c:
    add b                                         ; $676c: $80
    nop                                           ; $676d: $00
    ret                                           ; $676e: $c9


    nop                                           ; $676f: $00
    or h                                          ; $6770: $b4
    nop                                           ; $6771: $00
    jp c, $0600                                   ; $6772: $da $00 $06

    or l                                          ; $6775: $b5
    ld c, b                                       ; $6776: $48
    rst $38                                       ; $6777: $ff
    nop                                           ; $6778: $00
    xor $26                                       ; $6779: $ee $26
    nop                                           ; $677b: $00
    cp e                                          ; $677c: $bb
    dec l                                         ; $677d: $2d
    nop                                           ; $677e: $00
    ld bc, $0009                                  ; $677f: $01 $09 $00
    rla                                           ; $6782: $17
    ld [bc], a                                    ; $6783: $02
    dec l                                         ; $6784: $2d
    dec b                                         ; $6785: $05
    ld a, [de]                                    ; $6786: $1a
    or e                                          ; $6787: $b3
    dec b                                         ; $6788: $05
    nop                                           ; $6789: $00
    ld a, [bc]                                    ; $678a: $0a
    ld [bc], a                                    ; $678b: $02
    dec e                                         ; $678c: $1d
    rla                                           ; $678d: $17
    xor b                                         ; $678e: $a8
    cpl                                           ; $678f: $2f
    ld d, b                                       ; $6790: $50
    ld e, a                                       ; $6791: $5f
    ld b, b                                       ; $6792: $40
    and b                                         ; $6793: $a0
    ld a, b                                       ; $6794: $78
    dec bc                                        ; $6795: $0b
    nop                                           ; $6796: $00
    ld d, b                                       ; $6797: $50
    ld d, b                                       ; $6798: $50
    xor h                                         ; $6799: $ac
    xor b                                         ; $679a: $a8
    ld d, l                                       ; $679b: $55
    inc bc                                        ; $679c: $03
    ret nc                                        ; $679d: $d0

    ld l, $c0                                     ; $679e: $2e $c0
    ccf                                           ; $67a0: $3f
    ld [$a215], a                                 ; $67a1: $ea $15 $a2
    inc c                                         ; $67a4: $0c
    ld a, [hl+]                                   ; $67a5: $2a
    nop                                           ; $67a6: $00
    db $10                                        ; $67a7: $10
    inc b                                         ; $67a8: $04
    nop                                           ; $67a9: $00
    ld a, [bc]                                    ; $67aa: $0a
    jp hl                                         ; $67ab: $e9


    dec b                                         ; $67ac: $05
    ld a, [de]                                    ; $67ad: $1a
    rrca                                          ; $67ae: $0f
    jr nc, jr_0a3_6808                            ; $67af: $30 $57

    nop                                           ; $67b1: $00

jr_0a3_67b2:
    ld l, b                                       ; $67b2: $68
    adc a                                         ; $67b3: $8f
    ldh a, [$0b]                                  ; $67b4: $f0 $0b
    inc [hl]                                      ; $67b6: $34
    rra                                           ; $67b7: $1f
    ld h, b                                       ; $67b8: $60
    cpl                                           ; $67b9: $2f
    ld bc, $8ad0                                  ; $67ba: $01 $d0 $8a
    ld [hl], l                                    ; $67bd: $75
    ld b, c                                       ; $67be: $41
    cp [hl]                                       ; $67bf: $be
    xor d                                         ; $67c0: $aa
    ld d, l                                       ; $67c1: $55
    jp nz, Jump_000_000c                          ; $67c2: $c2 $0c $00

    cp $01                                        ; $67c5: $fe $01
    db $fc                                        ; $67c7: $fc
    inc bc                                        ; $67c8: $03
    jp c, $b525                                   ; $67c9: $da $25 $b5

    ld c, d                                       ; $67cc: $4a
    inc sp                                        ; $67cd: $33
    ld e, a                                       ; $67ce: $5f
    and b                                         ; $67cf: $a0
    ld a, b                                       ; $67d0: $78
    dec bc                                        ; $67d1: $0b
    or h                                          ; $67d2: $b4
    dec bc                                        ; $67d3: $0b
    rla                                           ; $67d4: $17
    add sp, -$08                                  ; $67d5: $e8 $f8
    jr @-$1c                                      ; $67d7: $18 $e2

    add hl, bc                                    ; $67d9: $09
    nop                                           ; $67da: $00
    push af                                       ; $67db: $f5

jr_0a3_67dc:
    ld a, [bc]                                    ; $67dc: $0a
    sub l                                         ; $67dd: $95
    ld [$f58a], a                                 ; $67de: $ea $8a $f5
    rst $08                                       ; $67e1: $cf
    ldh a, [rP1]                                  ; $67e2: $f0 $00
    rst $10                                       ; $67e4: $d7
    add sp, -$3f                                  ; $67e5: $e8 $c1
    cp $e6                                        ; $67e7: $fe $e6
    rst $38                                       ; $67e9: $ff
    db $d3                                        ; $67ea: $d3
    rst $38                                       ; $67eb: $ff
    jr nz, jr_0a3_67dc                            ; $67ec: $20 $ee

    rst $38                                       ; $67ee: $ff
    ld b, d                                       ; $67ef: $42
    add hl, bc                                    ; $67f0: $09
    ld [$7d15], a                                 ; $67f1: $ea $15 $7d
    add d                                         ; $67f4: $82
    or a                                          ; $67f5: $b7
    nop                                           ; $67f6: $00
    ld c, b                                       ; $67f7: $48
    ld c, a                                       ; $67f8: $4f
    or b                                          ; $67f9: $b0
    dec h                                         ; $67fa: $25
    jp c, $ed92                                   ; $67fb: $da $92 $ed

    xor a                                         ; $67fe: $af
    add h                                         ; $67ff: $84
    ld a, b                                       ; $6800: $78
    nop                                           ; $6801: $00
    cpl                                           ; $6802: $2f
    ret nc                                        ; $6803: $d0

    ld a, [hl]                                    ; $6804: $7e
    add c                                         ; $6805: $81
    ld d, $08                                     ; $6806: $16 $08

jr_0a3_6808:
    ld d, h                                       ; $6808: $54
    xor e                                         ; $6809: $ab
    jr nc, jr_0a3_67b2                            ; $680a: $30 $a6

    ld e, a                                       ; $680c: $5f
    ld d, $02                                     ; $680d: $16 $02
    ld c, b                                       ; $680f: $48
    db $10                                        ; $6810: $10
    ld c, [hl]                                    ; $6811: $4e
    or c                                          ; $6812: $b1
    inc e                                         ; $6813: $1c
    db $e3                                        ; $6814: $e3
    jr nc, jr_0a3_683f                            ; $6815: $30 $28

    rst $10                                       ; $6817: $d7
    add c                                         ; $6818: $81
    ld [$1673], sp                                ; $6819: $08 $73 $16
    add b                                         ; $681c: $80
    nop                                           ; $681d: $00
    ret nz                                        ; $681e: $c0

    nop                                           ; $681f: $00
    ld bc, $20a0                                  ; $6820: $01 $a0 $20
    call nc, $2ed0                                ; $6823: $d4 $d0 $2e
    ld [$a615], a                                 ; $6826: $ea $15 $a6
    dec bc                                        ; $6829: $0b
    nop                                           ; $682a: $00
    rst $38                                       ; $682b: $ff
    nop                                           ; $682c: $00
    sub $29                                       ; $682d: $d6 $29
    ld l, e                                       ; $682f: $6b
    sub h                                         ; $6830: $94
    add c                                         ; $6831: $81
    ld a, [hl]                                    ; $6832: $7e
    nop                                           ; $6833: $00
    ld [hl-], a                                   ; $6834: $32
    call Call_0a3_4000                            ; $6835: $cd $00 $40
    nop                                           ; $6838: $00
    and b                                         ; $6839: $a0
    add b                                         ; $683a: $80
    ld d, b                                       ; $683b: $50
    nop                                           ; $683c: $00
    ld b, b                                       ; $683d: $40
    and b                                         ; $683e: $a0

jr_0a3_683f:
    add b                                         ; $683f: $80
    ld a, b                                       ; $6840: $78
    ld b, b                                       ; $6841: $40
    or b                                          ; $6842: $b0
    and b                                         ; $6843: $a0
    ld e, b                                       ; $6844: $58
    jr nz, @-$3e                                  ; $6845: $20 $c0

    jr c, jr_0a3_6859                             ; $6847: $38 $10

jr_0a3_6849:
    inc c                                         ; $6849: $0c
    push af                                       ; $684a: $f5
    ld a, [bc]                                    ; $684b: $0a
    ld l, c                                       ; $684c: $69
    sub [hl]                                      ; $684d: $96
    add d                                         ; $684e: $82
    nop                                           ; $684f: $00
    ld a, l                                       ; $6850: $7d
    ld b, b                                       ; $6851: $40
    rst $38                                       ; $6852: $ff
    xor l                                         ; $6853: $ad
    cp $d8                                        ; $6854: $fe $d8
    rst $38                                       ; $6856: $ff
    ldh [rP1], a                                  ; $6857: $e0 $00

jr_0a3_6859:
    db $10                                        ; $6859: $10
    ret z                                         ; $685a: $c8

    jr c, jr_0a3_6849                             ; $685b: $38 $ec

    inc e                                         ; $685d: $1c
    call z, $ee3c                                 ; $685e: $cc $3c $ee
    nop                                           ; $6861: $00
    ld e, $8e                                     ; $6862: $1e $8e
    ld a, [hl]                                    ; $6864: $7e
    rst $08                                       ; $6865: $cf
    ccf                                           ; $6866: $3f
    adc [hl]                                      ; $6867: $8e
    ld a, [hl]                                    ; $6868: $7e
    rst $28                                       ; $6869: $ef
    xor b                                         ; $686a: $a8
    ret nc                                        ; $686b: $d0

    ld b, $77                                     ; $686c: $06 $77
    ld l, [hl]                                    ; $686e: $6e
    inc b                                         ; $686f: $04
    cp e                                          ; $6870: $bb
    ld e, h                                       ; $6871: $5c
    ld bc, $00fe                                  ; $6872: $01 $fe $00
    xor l                                         ; $6875: $ad
    scf                                           ; $6876: $37
    db $10                                        ; $6877: $10
    push af                                       ; $6878: $f5
    jr z, jr_0a3_688d                             ; $6879: $28 $12

    jr nz, @+$04                                  ; $687b: $20 $02

    nop                                           ; $687d: $00
    jr nz, jr_0a3_6882                            ; $687e: $20 $02

    inc [hl]                                      ; $6880: $34
    ld [de], a                                    ; $6881: $12

jr_0a3_6882:
    jr nz, jr_0a3_6884                            ; $6882: $20 $00

jr_0a3_6884:
    adc d                                         ; $6884: $8a
    db $f4                                        ; $6885: $f4
    ld b, $bb                                     ; $6886: $06 $bb
    nop                                           ; $6888: $00
    rst $30                                       ; $6889: $f7
    ld d, $00                                     ; $688a: $16 $00
    xor l                                         ; $688c: $ad

jr_0a3_688d:
    inc d                                         ; $688d: $14
    db $10                                        ; $688e: $10
    ld a, e                                       ; $688f: $7b
    xor l                                         ; $6890: $ad
    inc b                                         ; $6891: $04
    rla                                           ; $6892: $17
    rst $28                                       ; $6893: $ef
    ld [de], a                                    ; $6894: $12
    nop                                           ; $6895: $00
    rst $18                                       ; $6896: $df

Call_0a3_6897:
    ld h, b                                       ; $6897: $60
    ld a, [hl+]                                   ; $6898: $2a
    ld [de], a                                    ; $6899: $12
    jr nz, jr_0a3_6859                            ; $689a: $20 $bd

    ld e, $07                                     ; $689c: $1e $07

jr_0a3_689e:
    ld e, [hl]                                    ; $689e: $5e
    rst $30                                       ; $689f: $f7
    ld d, d                                       ; $68a0: $52
    jr nz, jr_0a3_689e                            ; $68a1: $20 $fb

    ld a, b                                       ; $68a3: $78
    inc b                                         ; $68a4: $04
    jr nz, jr_0a3_68af                            ; $68a5: $20 $08

    db $10                                        ; $68a7: $10
    db $10                                        ; $68a8: $10
    adc b                                         ; $68a9: $88
    ld [de], a                                    ; $68aa: $12
    ld a, a                                       ; $68ab: $7f
    and b                                         ; $68ac: $a0
    ld d, h                                       ; $68ad: $54
    nop                                           ; $68ae: $00

jr_0a3_68af:
    rst $30                                       ; $68af: $f7
    adc [hl]                                      ; $68b0: $8e
    dec b                                         ; $68b1: $05
    ld a, a                                       ; $68b2: $7f
    ld a, a                                       ; $68b3: $7f
    ccf                                           ; $68b4: $3f
    ccf                                           ; $68b5: $3f
    ld e, a                                       ; $68b6: $5f
    nop                                           ; $68b7: $00
    ld e, a                                       ; $68b8: $5f
    cpl                                           ; $68b9: $2f
    cpl                                           ; $68ba: $2f
    rra                                           ; $68bb: $1f
    rra                                           ; $68bc: $1f
    rrca                                          ; $68bd: $0f
    rrca                                          ; $68be: $0f
    ld b, b                                       ; $68bf: $40
    ld [$e9ff], sp                                ; $68c0: $08 $ff $e9
    rst $38                                       ; $68c3: $ff
    or $ba                                        ; $68c4: $f6 $ba
    dec b                                         ; $68c6: $05
    push de                                       ; $68c7: $d5
    cp $e8                                        ; $68c8: $fe $e8
    inc b                                         ; $68ca: $04
    rst $38                                       ; $68cb: $ff
    or h                                          ; $68cc: $b4
    rst $38                                       ; $68cd: $ff
    jp nc, $ccff                                  ; $68ce: $d2 $ff $cc

    ld b, $05                                     ; $68d1: $06 $05
    ld a, [bc]                                    ; $68d3: $0a
    dec b                                         ; $68d4: $05
    ld a, [bc]                                    ; $68d5: $0a
    dec b                                         ; $68d6: $05
    dec b                                         ; $68d7: $05
    ld [bc], a                                    ; $68d8: $02
    ld [bc], a                                    ; $68d9: $02
    ld e, e                                       ; $68da: $5b
    rra                                           ; $68db: $1f
    jp hl                                         ; $68dc: $e9


    sub $15                                       ; $68dd: $d6 $15
    db $10                                        ; $68df: $10
    rst $38                                       ; $68e0: $ff
    rst $38                                       ; $68e1: $ff
    cp a                                          ; $68e2: $bf
    cp b                                          ; $68e3: $b8
    ld b, $2b                                     ; $68e4: $06 $2b
    dec hl                                        ; $68e6: $2b
    dec b                                         ; $68e7: $05
    dec b                                         ; $68e8: $05
    nop                                           ; $68e9: $00
    ld c, l                                       ; $68ea: $4d
    cp a                                          ; $68eb: $bf
    ld a, [de]                                    ; $68ec: $1a
    rst $38                                       ; $68ed: $ff
    cp a                                          ; $68ee: $bf
    rst $38                                       ; $68ef: $ff
    dec bc                                        ; $68f0: $0b
    rst $38                                       ; $68f1: $ff
    nop                                           ; $68f2: $00
    dec b                                         ; $68f3: $05
    rst $38                                       ; $68f4: $ff
    xor d                                         ; $68f5: $aa
    ld d, a                                       ; $68f6: $57
    ld e, l                                       ; $68f7: $5d
    and e                                         ; $68f8: $a3
    adc e                                         ; $68f9: $8b
    rst $30                                       ; $68fa: $f7
    ld d, h                                       ; $68fb: $54
    ld d, a                                       ; $68fc: $57
    or $15                                        ; $68fd: $f6 $15
    db $eb                                        ; $68ff: $eb
    ld a, [c]                                     ; $6900: $f2
    dec b                                         ; $6901: $05
    adc a                                         ; $6902: $8f
    or $05                                        ; $6903: $f6 $05
    xor [hl]                                      ; $6905: $ae
    rst $38                                       ; $6906: $ff
    nop                                           ; $6907: $00
    ld sp, hl                                     ; $6908: $f9
    cp $f2                                        ; $6909: $fe $f2
    db $fd                                        ; $690b: $fd
    call nc, $a0fb                                ; $690c: $d4 $fb $a0
    rst $38                                       ; $690f: $ff
    db $10                                        ; $6910: $10
    ld b, l                                       ; $6911: $45
    rst $38                                       ; $6912: $ff
    xor e                                         ; $6913: $ab
    ld b, $06                                     ; $6914: $06 $06
    cp a                                          ; $6916: $bf
    rst $38                                       ; $6917: $ff
    ld e, a                                       ; $6918: $5f
    cp a                                          ; $6919: $bf
    db $10                                        ; $691a: $10
    cp a                                          ; $691b: $bf
    ld a, a                                       ; $691c: $7f
    ld e, [hl]                                    ; $691d: $5e
    ret nz                                        ; $691e: $c0

    ld b, $7e                                     ; $691f: $06 $7e
    cp $fc                                        ; $6921: $fe $fc
    db $fc                                        ; $6923: $fc
    dec b                                         ; $6924: $05
    ld hl, sp-$08                                 ; $6925: $f8 $f8
    db $f4                                        ; $6927: $f4
    db $f4                                        ; $6928: $f4
    ld b, c                                       ; $6929: $41
    db $e4                                        ; $692a: $e4
    ld b, $f4                                     ; $692b: $06 $f4
    ld c, [hl]                                    ; $692d: $4e
    ld b, $83                                     ; $692e: $06 $83
    ld d, a                                       ; $6930: $57
    jr jr_0a3_69b2                                ; $6931: $18 $7f

    ld a, a                                       ; $6933: $7f
    rst $38                                       ; $6934: $ff
    rst $38                                       ; $6935: $ff
    ld a, [hl]                                    ; $6936: $7e
    ld e, [hl]                                    ; $6937: $5e
    ld b, $65                                     ; $6938: $06 $65
    jr @+$0e                                      ; $693a: $18 $0c

    cp $fe                                        ; $693c: $fe $fe
    push af                                       ; $693e: $f5
    push af                                       ; $693f: $f5
    ld de, $0800                                  ; $6940: $11 $00 $08
    nop                                           ; $6943: $00
    db $fd                                        ; $6944: $fd
    db $fd                                        ; $6945: $fd
    inc b                                         ; $6946: $04
    ld [$d0ea], a                                 ; $6947: $ea $ea $d0
    ret nc                                        ; $694a: $d0

    add b                                         ; $694b: $80
    ld b, h                                       ; $694c: $44
    inc bc                                        ; $694d: $03
    add sp, -$18                                  ; $694e: $e8 $e8
    inc c                                         ; $6950: $0c
    ld b, b                                       ; $6951: $40
    ld b, b                                       ; $6952: $40
    add b                                         ; $6953: $80
    add b                                         ; $6954: $80
    inc b                                         ; $6955: $04
    ld [$1feb], sp                                ; $6956: $08 $eb $1f
    rlca                                          ; $6959: $07
    rlca                                          ; $695a: $07
    ld [$0706], sp                                ; $695b: $08 $06 $07
    dec b                                         ; $695e: $05
    ld b, $04                                     ; $695f: $06 $04
    ld [$0704], sp                                ; $6961: $08 $04 $07
    ld b, $0c                                     ; $6964: $06 $0c
    dec b                                         ; $6966: $05

jr_0a3_6967:
    add hl, bc                                    ; $6967: $09
    ld c, $f0                                     ; $6968: $0e $f0
    ld bc, $4000                                  ; $696a: $01 $00 $40
    ld c, $a0                                     ; $696d: $0e $a0
    ldh [rLCDC], a                                ; $696f: $e0 $40
    ld b, b                                       ; $6971: $40
    and l                                         ; $6972: $a5
    rlca                                          ; $6973: $07
    add b                                         ; $6974: $80
    add b                                         ; $6975: $80
    ld a, [bc]                                    ; $6976: $0a
    dec c                                         ; $6977: $0d
    inc bc                                        ; $6978: $03
    inc c                                         ; $6979: $0c
    nop                                           ; $697a: $00
    ld b, $09                                     ; $697b: $06 $09
    rlca                                          ; $697d: $07
    jr @+$0d                                      ; $697e: $18 $0b

    inc d                                         ; $6980: $14
    ld [hl-], a                                   ; $6981: $32
    dec l                                         ; $6982: $2d
    ld b, $4b                                     ; $6983: $06 $4b
    ld a, l                                       ; $6985: $7d
    dec b                                         ; $6986: $05
    rlca                                          ; $6987: $07
    add b                                         ; $6988: $80
    ld bc, $8c00                                  ; $6989: $01 $00 $8c
    inc bc                                        ; $698c: $03
    add b                                         ; $698d: $80
    ld [$40c0], sp                                ; $698e: $08 $c0 $40
    and b                                         ; $6991: $a0
    ld h, b                                       ; $6992: $60
    ret z                                         ; $6993: $c8

    rlca                                          ; $6994: $07
    ldh [rP1], a                                  ; $6995: $e0 $00
    ld l, b                                       ; $6997: $68
    nop                                           ; $6998: $00
    nop                                           ; $6999: $00
    ld a, h                                       ; $699a: $7c
    nop                                           ; $699b: $00
    db $fc                                        ; $699c: $fc
    jr c, @-$38                                   ; $699d: $38 $c6

    jr c, jr_0a3_6967                             ; $699f: $38 $c6

    nop                                           ; $69a1: $00
    nop                                           ; $69a2: $00
    ld [hl], $00                                  ; $69a3: $36 $00
    jr nc, jr_0a3_69a7                            ; $69a5: $30 $00

jr_0a3_69a7:
    nop                                           ; $69a7: $00
    jr jr_0a3_69aa                                ; $69a8: $18 $00

jr_0a3_69aa:
    nop                                           ; $69aa: $00
    ld a, [hl]                                    ; $69ab: $7e
    nop                                           ; $69ac: $00
    ld a, [hl]                                    ; $69ad: $7e
    jr @+$1a                                      ; $69ae: $18 $18

    ld a, [hl]                                    ; $69b0: $7e
    ld l, h                                       ; $69b1: $6c

jr_0a3_69b2:
    db $10                                        ; $69b2: $10
    inc e                                         ; $69b3: $1c
    ld l, h                                       ; $69b4: $6c
    nop                                           ; $69b5: $00
    nop                                           ; $69b6: $00
    inc bc                                        ; $69b7: $03
    nop                                           ; $69b8: $00
    dec b                                         ; $69b9: $05
    nop                                           ; $69ba: $00
    ld bc, $1800                                  ; $69bb: $01 $00 $18
    ld h, h                                       ; $69be: $64
    nop                                           ; $69bf: $00
    ld a, [hl]                                    ; $69c0: $7e
    ld h, [hl]                                    ; $69c1: $66
    ld a, [hl]                                    ; $69c2: $7e
    ld a, [hl]                                    ; $69c3: $7e
    jr jr_0a3_6a44                                ; $69c4: $18 $7e

    nop                                           ; $69c6: $00
    jr @-$1e                                      ; $69c7: $18 $e0

    ret nz                                        ; $69c9: $c0

    dec d                                         ; $69ca: $15
    ld [hl+], a                                   ; $69cb: $22
    rla                                           ; $69cc: $17
    jr z, jr_0a3_69ee                             ; $69cd: $28 $1f

    nop                                           ; $69cf: $00
    ld a, a                                       ; $69d0: $7f
    ld de, $443f                                  ; $69d1: $11 $3f $44
    nop                                           ; $69d4: $00
    dec de                                        ; $69d5: $1b
    jr nz, @+$21                                  ; $69d6: $20 $1f

    inc b                                         ; $69d8: $04
    rst $38                                       ; $69d9: $ff
    inc d                                         ; $69da: $14
    dec sp                                        ; $69db: $3b
    nop                                           ; $69dc: $00
    nop                                           ; $69dd: $00
    ld e, a                                       ; $69de: $5f
    ld [hl+], a                                   ; $69df: $22
    rra                                           ; $69e0: $1f
    ld hl, $42df                                  ; $69e1: $21 $df $42
    cp l                                          ; $69e4: $bd
    stop                                          ; $69e5: $10 $00
    rst $38                                       ; $69e7: $ff
    add c                                         ; $69e8: $81
    ld a, a                                       ; $69e9: $7f
    dec bc                                        ; $69ea: $0b
    rst $38                                       ; $69eb: $ff
    dec d                                         ; $69ec: $15
    rst $38                                       ; $69ed: $ff

jr_0a3_69ee:
    adc b                                         ; $69ee: $88
    ld a, [de]                                    ; $69ef: $1a
    rst $38                                       ; $69f0: $ff
    ld [hl+], a                                   ; $69f1: $22
    db $fd                                        ; $69f2: $fd
    add hl, sp                                    ; $69f3: $39
    inc bc                                        ; $69f4: $03
    add c                                         ; $69f5: $81
    ld bc, $a052                                  ; $69f6: $01 $52 $a0
    rlca                                          ; $69f9: $07
    ld [hl], h                                    ; $69fa: $74
    nop                                           ; $69fb: $00
    rst $38                                       ; $69fc: $ff
    cp h                                          ; $69fd: $bc
    rst $38                                       ; $69fe: $ff
    jr @+$01                                      ; $69ff: $18 $ff

    add hl, bc                                    ; $6a01: $09
    cp $10                                        ; $6a02: $fe $10
    ld [bc], a                                    ; $6a04: $02
    rst $38                                       ; $6a05: $ff
    inc d                                         ; $6a06: $14
    db $eb                                        ; $6a07: $eb
    ld [bc], a                                    ; $6a08: $02
    db $fd                                        ; $6a09: $fd
    ld b, b                                       ; $6a0a: $40
    daa                                           ; $6a0b: $27
    dec b                                         ; $6a0c: $05
    inc b                                         ; $6a0d: $04
    inc b                                         ; $6a0e: $04
    rst $38                                       ; $6a0f: $ff
    jp nz, Jump_0a3_41bf                          ; $6a10: $c2 $bf $41

    ccf                                           ; $6a13: $3f
    ld e, e                                       ; $6a14: $5b
    ld b, $3f                                     ; $6a15: $06 $3f
    ld [de], a                                    ; $6a17: $12
    nop                                           ; $6a18: $00
    rra                                           ; $6a19: $1f
    jr nz, jr_0a3_6a5b                            ; $6a1a: $20 $3f

    ld [$1037], sp                                ; $6a1c: $08 $37 $10
    ld c, a                                       ; $6a1f: $4f
    ld b, l                                       ; $6a20: $45
    nop                                           ; $6a21: $00
    rst $38                                       ; $6a22: $ff
    add h                                         ; $6a23: $84
    ld a, e                                       ; $6a24: $7b
    db $10                                        ; $6a25: $10
    rst $28                                       ; $6a26: $ef
    jr z, @-$27                                   ; $6a27: $28 $d7

    ld e, l                                       ; $6a29: $5d
    nop                                           ; $6a2a: $00
    and d                                         ; $6a2b: $a2
    dec hl                                        ; $6a2c: $2b
    call nc, $fa05                                ; $6a2d: $d4 $05 $fa
    ld b, b                                       ; $6a30: $40
    rst $38                                       ; $6a31: $ff
    add d                                         ; $6a32: $82
    nop                                           ; $6a33: $00
    db $fd                                        ; $6a34: $fd
    add h                                         ; $6a35: $84
    rst $38                                       ; $6a36: $ff
    ld [hl+], a                                   ; $6a37: $22
    db $dd                                        ; $6a38: $dd
    ld c, b                                       ; $6a39: $48
    cp a                                          ; $6a3a: $bf
    jr jr_0a3_6a3f                                ; $6a3b: $18 $02

    rst $20                                       ; $6a3d: $e7
    or b                                          ; $6a3e: $b0

jr_0a3_6a3f:
    ld c, a                                       ; $6a3f: $4f
    ld h, c                                       ; $6a40: $61
    cp a                                          ; $6a41: $bf
    ld b, h                                       ; $6a42: $44
    dec sp                                        ; $6a43: $3b

jr_0a3_6a44:
    inc b                                         ; $6a44: $04
    db $10                                        ; $6a45: $10
    ld [bc], a                                    ; $6a46: $02
    rst $38                                       ; $6a47: $ff
    ld hl, $00fe                                  ; $6a48: $21 $fe $00
    rst $38                                       ; $6a4b: $ff
    sub h                                         ; $6a4c: $94
    ld b, d                                       ; $6a4d: $42
    nop                                           ; $6a4e: $00
    add b                                         ; $6a4f: $80
    nop                                           ; $6a50: $00
    ld a, a                                       ; $6a51: $7f
    ld d, b                                       ; $6a52: $50
    cp a                                          ; $6a53: $bf
    add hl, bc                                    ; $6a54: $09
    rst $38                                       ; $6a55: $ff
    ld [$00bf], sp                                ; $6a56: $08 $bf $00
    nop                                           ; $6a59: $00
    ld e, a                                       ; $6a5a: $5f

jr_0a3_6a5b:
    ld bc, $44be                                  ; $6a5b: $01 $be $44
    ccf                                           ; $6a5e: $3f
    add b                                         ; $6a5f: $80
    ld e, a                                       ; $6a60: $5f
    ld [$7f02], sp                                ; $6a61: $08 $02 $7f
    ld [de], a                                    ; $6a64: $12
    ccf                                           ; $6a65: $3f
    add b                                         ; $6a66: $80
    ccf                                           ; $6a67: $3f
    ld [bc], a                                    ; $6a68: $02
    ld [hl], b                                    ; $6a69: $70
    nop                                           ; $6a6a: $00
    ld d, b                                       ; $6a6b: $50
    inc hl                                        ; $6a6c: $23
    xor a                                         ; $6a6d: $af
    inc b                                         ; $6a6e: $04
    ld l, b                                       ; $6a6f: $68
    nop                                           ; $6a70: $00
    add b                                         ; $6a71: $80
    ld a, a                                       ; $6a72: $7f
    db $10                                        ; $6a73: $10
    ld b, b                                       ; $6a74: $40
    nop                                           ; $6a75: $00
    sub b                                         ; $6a76: $90
    jr jr_0a3_6abf                                ; $6a77: $18 $46

    add h                                         ; $6a79: $84
    or e                                          ; $6a7a: $b3
    nop                                           ; $6a7b: $00
    ld de, $90ef                                  ; $6a7c: $11 $ef $90
    sub b                                         ; $6a7f: $90
    jr nz, jr_0a3_6ada                            ; $6a80: $20 $58

    nop                                           ; $6a82: $00
    rst $38                                       ; $6a83: $ff
    ld d, b                                       ; $6a84: $50
    inc d                                         ; $6a85: $14
    rst $20                                       ; $6a86: $e7
    rlca                                          ; $6a87: $07
    and h                                         ; $6a88: $a4
    cpl                                           ; $6a89: $2f
    ld [bc], a                                    ; $6a8a: $02
    jr nz, @-$28                                  ; $6a8b: $20 $d6

    db $10                                        ; $6a8d: $10
    db $ec                                        ; $6a8e: $ec
    nop                                           ; $6a8f: $00
    nop                                           ; $6a90: $00
    ld sp, hl                                     ; $6a91: $f9
    nop                                           ; $6a92: $00

jr_0a3_6a93:
    db $fc                                        ; $6a93: $fc
    db $10                                        ; $6a94: $10
    cp $a4                                        ; $6a95: $fe $a4
    ld a, l                                       ; $6a97: $7d
    dec b                                         ; $6a98: $05
    ld b, b                                       ; $6a99: $40
    cp d                                          ; $6a9a: $ba
    ld [bc], a                                    ; $6a9b: $02
    db $fc                                        ; $6a9c: $fc
    ld b, h                                       ; $6a9d: $44
    inc sp                                        ; $6a9e: $33
    inc b                                         ; $6a9f: $04
    ld [hl+], a                                   ; $6aa0: $22
    ld b, a                                       ; $6aa1: $47
    ld [bc], a                                    ; $6aa2: $02
    ld c, $04                                     ; $6aa3: $0e $04
    ei                                            ; $6aa5: $fb
    ld [hl+], a                                   ; $6aa6: $22
    db $dd                                        ; $6aa7: $dd
    dec [hl]                                      ; $6aa8: $35
    inc b                                         ; $6aa9: $04
    sub b                                         ; $6aaa: $90
    nop                                           ; $6aab: $00
    ei                                            ; $6aac: $fb
    inc bc                                        ; $6aad: $03
    rst $38                                       ; $6aae: $ff
    inc bc                                        ; $6aaf: $03
    ld b, h                                       ; $6ab0: $44
    cp a                                          ; $6ab1: $bf
    jr nz, jr_0a3_6a93                            ; $6ab2: $20 $df

    ld bc, $90ff                                  ; $6ab4: $01 $ff $90
    db $10                                        ; $6ab7: $10
    jr jr_0a3_6aba                                ; $6ab8: $18 $00

jr_0a3_6aba:
    ld [de], a                                    ; $6aba: $12
    ld c, b                                       ; $6abb: $48
    cp a                                          ; $6abc: $bf
    nop                                           ; $6abd: $00
    add e                                         ; $6abe: $83

jr_0a3_6abf:
    inc b                                         ; $6abf: $04
    ld hl, $90ff                                  ; $6ac0: $21 $ff $90
    ld [$2aef], sp                                ; $6ac3: $08 $ef $2a
    nop                                           ; $6ac6: $00
    db $dd                                        ; $6ac7: $dd
    ld c, h                                       ; $6ac8: $4c
    inc de                                        ; $6ac9: $13
    ld d, a                                       ; $6aca: $57
    sbc d                                         ; $6acb: $9a
    ld [de], a                                    ; $6acc: $12
    db $dd                                        ; $6acd: $dd
    call nz, Call_0a3_7b14                        ; $6ace: $c4 $14 $7b
    db $dd                                        ; $6ad1: $dd
    inc c                                         ; $6ad2: $0c
    inc c                                         ; $6ad3: $0c
    sub b                                         ; $6ad4: $90
    ld a, [de]                                    ; $6ad5: $1a
    jr nz, @+$22                                  ; $6ad6: $20 $20

    nop                                           ; $6ad8: $00
    ld d, b                                       ; $6ad9: $50

jr_0a3_6ada:
    dec b                                         ; $6ada: $05
    jr nz, jr_0a3_6add                            ; $6adb: $20 $00

jr_0a3_6add:
    adc b                                         ; $6add: $88

jr_0a3_6ade:
    jr nz, @+$1a                                  ; $6ade: $20 $18

    ld [$df20], sp                                ; $6ae0: $08 $20 $df
    ld [de], a                                    ; $6ae3: $12
    rst $28                                       ; $6ae4: $ef
    dec hl                                        ; $6ae5: $2b
    inc c                                         ; $6ae6: $0c
    ld de, $a4fe                                  ; $6ae7: $11 $fe $a4
    add hl, bc                                    ; $6aea: $09
    ld a, a                                       ; $6aeb: $7f
    ld b, b                                       ; $6aec: $40
    cp a                                          ; $6aed: $bf
    ld [bc], a                                    ; $6aee: $02
    jr nz, jr_0a3_6af2                            ; $6aef: $20 $01

    ld d, h                                       ; $6af1: $54

jr_0a3_6af2:
    rst $28                                       ; $6af2: $ef
    call z, RST_00                                ; $6af3: $cc $00 $00
    rst $38                                       ; $6af6: $ff
    ld de, $a2ff                                  ; $6af7: $11 $ff $a2
    ld a, a                                       ; $6afa: $7f
    ld [$90f7], sp                                ; $6afb: $08 $f7 $90
    nop                                           ; $6afe: $00
    rst $28                                       ; $6aff: $ef
    ld bc, $48fe                                  ; $6b00: $01 $fe $48
    rst $38                                       ; $6b03: $ff
    sub b                                         ; $6b04: $90

jr_0a3_6b05:
    ld a, a                                       ; $6b05: $7f
    ld bc, $fe55                                  ; $6b06: $01 $55 $fe
    ldh [$08], a                                  ; $6b09: $e0 $08
    inc b                                         ; $6b0b: $04
    add c                                         ; $6b0c: $81
    dec b                                         ; $6b0d: $05
    ld de, $064f                                  ; $6b0e: $11 $4f $06
    ld bc, $006a                                  ; $6b11: $01 $6a $00
    ld b, h                                       ; $6b14: $44
    jr z, jr_0a3_6ade                             ; $6b15: $28 $c7

    ld [bc], a                                    ; $6b17: $02
    ret nz                                        ; $6b18: $c0

    cp a                                          ; $6b19: $bf
    ld [bc], a                                    ; $6b1a: $02
    ld d, d                                       ; $6b1b: $52
    ld bc, $ff01                                  ; $6b1c: $01 $01 $ff
    ld bc, $fb54                                  ; $6b1f: $01 $54 $fb
    xor e                                         ; $6b22: $ab
    rst $38                                       ; $6b23: $ff
    rla                                           ; $6b24: $17
    rst $38                                       ; $6b25: $ff
    pop bc                                        ; $6b26: $c1
    ld c, $00                                     ; $6b27: $0e $00
    ld a, [bc]                                    ; $6b29: $0a
    ld hl, $abdf                                  ; $6b2a: $21 $df $ab

jr_0a3_6b2d:
    ld d, h                                       ; $6b2d: $54
    ld c, $09                                     ; $6b2e: $0e $09
    ld d, h                                       ; $6b30: $54
    add $02                                       ; $6b31: $c6 $02
    ld e, [hl]                                    ; $6b33: $5e
    ld hl, $09ff                                  ; $6b34: $21 $ff $09
    or a                                          ; $6b37: $b7
    rlca                                          ; $6b38: $07
    ld d, l                                       ; $6b39: $55
    xor d                                         ; $6b3a: $aa
    xor d                                         ; $6b3b: $aa
    ld d, l                                       ; $6b3c: $55
    db $dd                                        ; $6b3d: $dd
    dec bc                                        ; $6b3e: $0b
    ld bc, $ff50                                  ; $6b3f: $01 $50 $ff
    ld [$7fff], a                                 ; $6b42: $ea $ff $7f
    rst $38                                       ; $6b45: $ff
    ld a, [bc]                                    ; $6b46: $0a
    and h                                         ; $6b47: $a4
    nop                                           ; $6b48: $00
    nop                                           ; $6b49: $00
    dec b                                         ; $6b4a: $05
    rst $38                                       ; $6b4b: $ff
    jr nz, jr_0a3_6b2d                            ; $6b4c: $20 $df

    ld a, [de]                                    ; $6b4e: $1a
    push hl                                       ; $6b4f: $e5
    dec b                                         ; $6b50: $05
    ld a, [$d088]                                 ; $6b51: $fa $88 $d0
    jr jr_0a3_6b05                                ; $6b54: $18 $af

    ld a, a                                       ; $6b56: $7f
    ld [hl], l                                    ; $6b57: $75
    ret nc                                        ; $6b58: $d0

    nop                                           ; $6b59: $00
    ret nz                                        ; $6b5a: $c0

    ccf                                           ; $6b5b: $3f
    ld l, d                                       ; $6b5c: $6a
    db $10                                        ; $6b5d: $10
    sub l                                         ; $6b5e: $95
    ld bc, $60fe                                  ; $6b5f: $01 $fe $60
    add hl, bc                                    ; $6b62: $09
    db $ec                                        ; $6b63: $ec
    ei                                            ; $6b64: $fb
    ld d, [hl]                                    ; $6b65: $56
    db $fd                                        ; $6b66: $fd
    ld c, b                                       ; $6b67: $48
    xor d                                         ; $6b68: $aa
    cp [hl]                                       ; $6b69: $be
    ld [bc], a                                    ; $6b6a: $02
    xor b                                         ; $6b6b: $a8
    ld d, a                                       ; $6b6c: $57
    ret nc                                        ; $6b6d: $d0

    jr @+$0b                                      ; $6b6e: $18 $09

    or $a6                                        ; $6b70: $f6 $a6
    ld [$05dd], sp                                ; $6b72: $08 $dd $05
    ld a, [$2214]                                 ; $6b75: $fa $14 $22
    ld bc, $ff40                                  ; $6b78: $01 $40 $ff
    ld a, [bc]                                    ; $6b7b: $0a
    nop                                           ; $6b7c: $00
    rst $30                                       ; $6b7d: $f7
    add hl, hl                                    ; $6b7e: $29
    rst $38                                       ; $6b7f: $ff
    dec c                                         ; $6b80: $0d
    rst $38                                       ; $6b81: $ff
    ld d, d                                       ; $6b82: $52
    cp a                                          ; $6b83: $bf
    adc b                                         ; $6b84: $88
    ld [bc], a                                    ; $6b85: $02
    ld a, a                                       ; $6b86: $7f
    ld [bc], a                                    ; $6b87: $02
    db $fd                                        ; $6b88: $fd
    sub h                                         ; $6b89: $94
    db $eb                                        ; $6b8a: $eb
    nop                                           ; $6b8b: $00
    ld a, d                                       ; $6b8c: $7a
    ld bc, $8010                                  ; $6b8d: $01 $10 $80
    inc c                                         ; $6b90: $0c
    ld bc, $7f84                                  ; $6b91: $01 $84 $7f
    ld [bc], a                                    ; $6b94: $02
    rst $38                                       ; $6b95: $ff
    dec a                                         ; $6b96: $3d
    rst $10                                       ; $6b97: $d7
    rst $28                                       ; $6b98: $ef
    nop                                           ; $6b99: $00
    cp a                                          ; $6b9a: $bf
    ld [hl], l                                    ; $6b9b: $75
    rst $38                                       ; $6b9c: $ff
    ld a, [hl+]                                   ; $6b9d: $2a
    db $fd                                        ; $6b9e: $fd
    sub b                                         ; $6b9f: $90
    rst $38                                       ; $6ba0: $ff
    adc d                                         ; $6ba1: $8a
    nop                                           ; $6ba2: $00
    rst $38                                       ; $6ba3: $ff
    dec e                                         ; $6ba4: $1d
    rst $38                                       ; $6ba5: $ff
    xor b                                         ; $6ba6: $a8
    rst $38                                       ; $6ba7: $ff
    ld [c], a                                     ; $6ba8: $e2
    rst $18                                       ; $6ba9: $df
    sub h                                         ; $6baa: $94
    and b                                         ; $6bab: $a0
    cp c                                          ; $6bac: $b9
    inc bc                                        ; $6bad: $03
    inc bc                                        ; $6bae: $03
    sub $01                                       ; $6baf: $d6 $01
    ld bc, $48fc                                  ; $6bb1: $01 $fc $48
    db $fc                                        ; $6bb4: $fc
    sub b                                         ; $6bb5: $90
    nop                                           ; $6bb6: $00
    ld a, [hl]                                    ; $6bb7: $7e
    ld bc, $02fa                                  ; $6bb8: $01 $fa $02
    db $fc                                        ; $6bbb: $fc
    add b                                         ; $6bbc: $80
    ld a, l                                       ; $6bbd: $7d
    nop                                           ; $6bbe: $00
    ld b, b                                       ; $6bbf: $40
    ld a, [$07b9]                                 ; $6bc0: $fa $b9 $07
    rst $38                                       ; $6bc3: $ff
    ld [$50f2], sp                                ; $6bc4: $08 $f2 $50
    xor h                                         ; $6bc7: $ac
    inc b                                         ; $6bc8: $04
    inc b                                         ; $6bc9: $04
    db $fc                                        ; $6bca: $fc
    ld [$80f8], sp                                ; $6bcb: $08 $f8 $80
    ld a, h                                       ; $6bce: $7c
    sub b                                         ; $6bcf: $90
    ld bc, $44fc                                  ; $6bd0: $01 $fc $44
    inc b                                         ; $6bd3: $04
    ld hl, sp+$00                                 ; $6bd4: $f8 $00
    ld a, [$dc20]                                 ; $6bd6: $fa $20 $dc
    ld h, b                                       ; $6bd9: $60
    ld bc, $22f8                                  ; $6bda: $01 $f8 $22
    nop                                           ; $6bdd: $00
    ret c                                         ; $6bde: $d8

    adc b                                         ; $6bdf: $88
    db $fc                                        ; $6be0: $fc
    nop                                           ; $6be1: $00
    cp $40                                        ; $6be2: $fe $40
    cp a                                          ; $6be4: $bf
    xor d                                         ; $6be5: $aa
    ld [bc], a                                    ; $6be6: $02
    ld d, l                                       ; $6be7: $55
    ld b, a                                       ; $6be8: $47
    ld hl, sp+$28                                 ; $6be9: $f8 $28
    rst $30                                       ; $6beb: $f7
    dec b                                         ; $6bec: $05
    ld b, [hl]                                    ; $6bed: $46
    inc bc                                        ; $6bee: $03
    ld [$ff00], a                                 ; $6bef: $ea $00 $ff
    and l                                         ; $6bf2: $a5
    rst $18                                       ; $6bf3: $df
    ld hl, $a0fe                                  ; $6bf4: $21 $fe $a0
    ld e, a                                       ; $6bf7: $5f
    ret nc                                        ; $6bf8: $d0

    nop                                           ; $6bf9: $00
    cpl                                           ; $6bfa: $2f
    ld [bc], a                                    ; $6bfb: $02
    db $fd                                        ; $6bfc: $fd
    ld l, e                                       ; $6bfd: $6b
    cp $d0                                        ; $6bfe: $fe $d0
    rst $38                                       ; $6c00: $ff
    xor c                                         ; $6c01: $a9
    and b                                         ; $6c02: $a0
    and a                                         ; $6c03: $a7
    inc d                                         ; $6c04: $14
    adc b                                         ; $6c05: $88
    ret nz                                        ; $6c06: $c0

    nop                                           ; $6c07: $00
    ld [bc], a                                    ; $6c08: $02
    db $fd                                        ; $6c09: $fd
    dec d                                         ; $6c0a: $15
    ld [$022f], a                                 ; $6c0b: $ea $2f $02
    ret nc                                        ; $6c0e: $d0

    cp a                                          ; $6c0f: $bf
    ld b, b                                       ; $6c10: $40
    db $f4                                        ; $6c11: $f4
    dec bc                                        ; $6c12: $0b
    add d                                         ; $6c13: $82
    ld h, h                                       ; $6c14: $64
    ld [$00ff], sp                                ; $6c15: $08 $ff $00
    jr z, @-$27                                   ; $6c18: $28 $d7

    ld a, [$ad05]                                 ; $6c1a: $fa $05 $ad
    ld e, d                                       ; $6c1d: $5a
    ld b, b                                       ; $6c1e: $40
    cp a                                          ; $6c1f: $bf
    sub b                                         ; $6c20: $90
    sbc [hl]                                      ; $6c21: $9e
    add hl, bc                                    ; $6c22: $09
    ld b, h                                       ; $6c23: $44
    ei                                            ; $6c24: $fb
    ld a, a                                       ; $6c25: $7f
    dec b                                         ; $6c26: $05
    rst $38                                       ; $6c27: $ff
    add b                                         ; $6c28: $80
    ld a, a                                       ; $6c29: $7f
    ld e, b                                       ; $6c2a: $58
    nop                                           ; $6c2b: $00
    xor a                                         ; $6c2c: $af
    ld [hl+], a                                   ; $6c2d: $22
    db $dd                                        ; $6c2e: $dd
    add h                                         ; $6c2f: $84
    ei                                            ; $6c30: $fb
    ld l, d                                       ; $6c31: $6a
    sub l                                         ; $6c32: $95
    ret nc                                        ; $6c33: $d0

    ld [$812f], sp                                ; $6c34: $08 $2f $81

jr_0a3_6c37:
    ld a, a                                       ; $6c37: $7f
    ld [$025c], sp                                ; $6c38: $08 $5c $02
    ld d, b                                       ; $6c3b: $50
    xor a                                         ; $6c3c: $af
    xor b                                         ; $6c3d: $a8
    jr nz, jr_0a3_6c37                            ; $6c3e: $20 $f7

    ld d, d                                       ; $6c40: $52
    add d                                         ; $6c41: $82
    ld [bc], a                                    ; $6c42: $02
    sub b                                         ; $6c43: $90
    rst $38                                       ; $6c44: $ff
    ld e, c                                       ; $6c45: $59
    rst $28                                       ; $6c46: $ef
    and [hl]                                      ; $6c47: $a6
    nop                                           ; $6c48: $00
    rst $38                                       ; $6c49: $ff
    ld a, l                                       ; $6c4a: $7d
    rst $38                                       ; $6c4b: $ff
    ld d, $ff                                     ; $6c4c: $16 $ff
    dec hl                                        ; $6c4e: $2b
    rst $38                                       ; $6c4f: $ff
    or l                                          ; $6c50: $b5
    add b                                         ; $6c51: $80
    call z, $a401                                 ; $6c52: $cc $01 $a4
    rst $38                                       ; $6c55: $ff
    sub $ff                                       ; $6c56: $d6 $ff
    ld l, e                                       ; $6c58: $6b
    rst $38                                       ; $6c59: $ff
    inc [hl]                                      ; $6c5a: $34
    adc d                                         ; $6c5b: $8a
    or [hl]                                       ; $6c5c: $b6
    nop                                           ; $6c5d: $00
    ld c, b                                       ; $6c5e: $48
    rst $30                                       ; $6c5f: $f7
    db $10                                        ; $6c60: $10
    xor d                                         ; $6c61: $aa
    inc bc                                        ; $6c62: $03
    or $c0                                        ; $6c63: $f6 $c0
    inc bc                                        ; $6c65: $03
    ld d, [hl]                                    ; $6c66: $56
    nop                                           ; $6c67: $00
    db $fd                                        ; $6c68: $fd
    add hl, bc                                    ; $6c69: $09
    cp $90                                        ; $6c6a: $fe $90
    ld a, a                                       ; $6c6c: $7f
    ld c, b                                       ; $6c6d: $48
    rst $38                                       ; $6c6e: $ff
    ld bc, $fe00                                  ; $6c6f: $01 $00 $fe
    ld a, [hl]                                    ; $6c72: $7e
    rst $38                                       ; $6c73: $ff
    rst $28                                       ; $6c74: $ef
    rst $38                                       ; $6c75: $ff
    sub l                                         ; $6c76: $95
    rst $38                                       ; $6c77: $ff
    add sp, $0a                                   ; $6c78: $e8 $0a
    rst $30                                       ; $6c7a: $f7
    ld b, h                                       ; $6c7b: $44
    ei                                            ; $6c7c: $fb
    ld bc, $07c9                                  ; $6c7d: $01 $c9 $07
    ld de, $0154                                  ; $6c80: $11 $54 $01
    ld d, b                                       ; $6c83: $50
    ld c, $bf                                     ; $6c84: $0e $bf
    add b                                         ; $6c86: $80
    rst $38                                       ; $6c87: $ff
    ld b, d                                       ; $6c88: $42
    nop                                           ; $6c89: $00
    ld sp, $2f00                                  ; $6c8a: $31 $00 $2f
    ld [$082f], sp                                ; $6c8d: $08 $2f $08
    nop                                           ; $6c90: $00
    ld [$0800], sp                                ; $6c91: $08 $00 $08
    add hl, bc                                    ; $6c94: $09
    add hl, bc                                    ; $6c95: $09
    inc de                                        ; $6c96: $13
    dec de                                        ; $6c97: $1b
    rrca                                          ; $6c98: $0f
    ld [bc], a                                    ; $6c99: $02
    rla                                           ; $6c9a: $17

jr_0a3_6c9b:
    scf                                           ; $6c9b: $37
    ccf                                           ; $6c9c: $3f
    ld l, $37                                     ; $6c9d: $2e $37
    ld bc, $0004                                  ; $6c9f: $01 $04 $00
    dec bc                                        ; $6ca2: $0b
    nop                                           ; $6ca3: $00
    scf                                           ; $6ca4: $37
    dec l                                         ; $6ca5: $2d
    scf                                           ; $6ca6: $37
    ld c, e                                       ; $6ca7: $4b
    ld [hl], a                                    ; $6ca8: $77
    ld l, l                                       ; $6ca9: $6d
    ld [hl], e                                    ; $6caa: $73
    ret c                                         ; $6cab: $d8

    nop                                           ; $6cac: $00
    rst $20                                       ; $6cad: $e7
    db $dd                                        ; $6cae: $dd
    db $e3                                        ; $6caf: $e3
    cp [hl]                                       ; $6cb0: $be
    pop bc                                        ; $6cb1: $c1
    xor e                                         ; $6cb2: $ab
    call nc, $0185                                ; $6cb3: $d4 $85 $01
    ld a, [$fdf2]                                 ; $6cb6: $fa $f2 $fd
    ld b, c                                       ; $6cb9: $41
    cp $17                                        ; $6cba: $fe $17
    add sp, $7e                                   ; $6cbc: $e8 $7e
    dec c                                         ; $6cbe: $0d
    ld bc, $d4ab                                  ; $6cbf: $01 $ab $d4
    dec d                                         ; $6cc2: $15
    ld [$fe61], a                                 ; $6cc3: $ea $61 $fe
    jr nc, @-$62                                  ; $6cc6: $30 $9c

    ld bc, $fd40                                  ; $6cc8: $01 $40 $fd
    sbc [hl]                                      ; $6ccb: $9e
    ld bc, $73b3                                  ; $6ccc: $01 $b3 $73
    ld d, h                                       ; $6ccf: $54
    or h                                          ; $6cd0: $b4
    and d                                         ; $6cd1: $a2
    ld e, a                                       ; $6cd2: $5f
    nop                                           ; $6cd3: $00
    push de                                       ; $6cd4: $d5
    dec hl                                        ; $6cd5: $2b
    ld [$4015], a                                 ; $6cd6: $ea $15 $40
    cp a                                          ; $6cd9: $bf
    ld a, [bc]                                    ; $6cda: $0a
    rst $38                                       ; $6cdb: $ff
    nop                                           ; $6cdc: $00
    ld e, a                                       ; $6cdd: $5f
    rst $38                                       ; $6cde: $ff
    rlca                                          ; $6cdf: $07
    rst $38                                       ; $6ce0: $ff
    ld d, e                                       ; $6ce1: $53
    xor a                                         ; $6ce2: $af
    xor [hl]                                      ; $6ce3: $ae
    or [hl]                                       ; $6ce4: $b6
    nop                                           ; $6ce5: $00
    ld c, d                                       ; $6ce6: $4a
    or $2c                                        ; $6ce7: $f6 $2c
    or $4a                                        ; $6ce9: $f6 $4a
    or $ed                                        ; $6ceb: $f6 $ed
    di                                            ; $6ced: $f3
    add b                                         ; $6cee: $80
    ld b, b                                       ; $6cef: $40
    jr jr_0a3_6c9b                                ; $6cf0: $18 $a9

    ld d, a                                       ; $6cf2: $57
    di                                            ; $6cf3: $f3
    rrca                                          ; $6cf4: $0f
    push hl                                       ; $6cf5: $e5
    rra                                           ; $6cf6: $1f
    add [hl]                                      ; $6cf7: $86
    nop                                           ; $6cf8: $00
    ld a, a                                       ; $6cf9: $7f
    and d                                         ; $6cfa: $a2
    ld e, a                                       ; $6cfb: $5f
    ld d, h                                       ; $6cfc: $54
    xor a                                         ; $6cfd: $af
    cp $0f                                        ; $6cfe: $fe $0f
    db $fd                                        ; $6d00: $fd
    nop                                           ; $6d01: $00
    rlca                                          ; $6d02: $07
    xor d                                         ; $6d03: $aa
    ld d, a                                       ; $6d04: $57

Jump_0a3_6d05:
    ld b, a                                       ; $6d05: $47
    cp a                                          ; $6d06: $bf
    rrca                                          ; $6d07: $0f
    rst $38                                       ; $6d08: $ff
    ld d, l                                       ; $6d09: $55
    nop                                           ; $6d0a: $00
    rst $38                                       ; $6d0b: $ff
    cp d                                          ; $6d0c: $ba
    rst $38                                       ; $6d0d: $ff
    ld a, h                                       ; $6d0e: $7c
    rst $38                                       ; $6d0f: $ff

jr_0a3_6d10:
    ld sp, hl                                     ; $6d10: $f9
    rst $38                                       ; $6d11: $ff
    ld a, [c]                                     ; $6d12: $f2
    add b                                         ; $6d13: $80
    dec hl                                        ; $6d14: $2b
    inc b                                         ; $6d15: $04
    adc e                                         ; $6d16: $8b
    rst $38                                       ; $6d17: $ff
    di                                            ; $6d18: $f3
    rst $08                                       ; $6d19: $cf
    sbc c                                         ; $6d1a: $99
    rst $20                                       ; $6d1b: $e7
    di                                            ; $6d1c: $f3
    nop                                           ; $6d1d: $00
    rst $08                                       ; $6d1e: $cf
    reti                                          ; $6d1f: $d9


    rst $20                                       ; $6d20: $e7
    ld d, d                                       ; $6d21: $52

jr_0a3_6d22:
    ld l, [hl]                                    ; $6d22: $6e
    dec a                                         ; $6d23: $3d
    dec a                                         ; $6d24: $3d
    ld hl, sp+$00                                 ; $6d25: $f8 $00
    rlca                                          ; $6d27: $07
    push hl                                       ; $6d28: $e5
    ld a, [de]                                    ; $6d29: $1a
    reti                                          ; $6d2a: $d9


    jr nz, jr_0a3_6d10                            ; $6d2b: $20 $e3

    ld b, b                                       ; $6d2d: $40
    and h                                         ; $6d2e: $a4
    nop                                           ; $6d2f: $00
    ret nz                                        ; $6d30: $c0

    ld hl, sp-$80                                 ; $6d31: $f8 $80
    xor b                                         ; $6d33: $a8
    ret nz                                        ; $6d34: $c0

    db $e4                                        ; $6d35: $e4
    ret nc                                        ; $6d36: $d0

    sbc a                                         ; $6d37: $9f
    nop                                           ; $6d38: $00
    ld h, b                                       ; $6d39: $60
    ld l, a                                       ; $6d3a: $6f
    sub b                                         ; $6d3b: $90
    or e                                          ; $6d3c: $b3
    inc c                                         ; $6d3d: $0c
    call Call_000_0a02                            ; $6d3e: $cd $02 $0a
    nop                                           ; $6d41: $00
    dec b                                         ; $6d42: $05
    ld [hl], d                                    ; $6d43: $72
    ld bc, HeaderManufacturerCode                 ; $6d44: $01 $3f $01
    dec b                                         ; $6d47: $05
    inc bc                                        ; $6d48: $03
    cp d                                          ; $6d49: $ba
    nop                                           ; $6d4a: $00
    push hl                                       ; $6d4b: $e5
    rst $00                                       ; $6d4c: $c7
    ld a, b                                       ; $6d4d: $78
    jp hl                                         ; $6d4e: $e9


    ld [hl], $f3                                  ; $6d4f: $36 $f3
    ld a, b                                       ; $6d51: $78
    ld hl, sp+$00                                 ; $6d52: $f8 $00
    ld [hl], b                                    ; $6d54: $70
    push hl                                       ; $6d55: $e5
    jr c, jr_0a3_6d22                             ; $6d56: $38 $ca

    ld [hl], l                                    ; $6d58: $75
    sub l                                         ; $6d59: $95
    ld [$009d], a                                 ; $6d5a: $ea $9d $00
    inc bc                                        ; $6d5d: $03
    ld l, e                                       ; $6d5e: $6b
    rlca                                          ; $6d5f: $07
    sbc l                                         ; $6d60: $9d
    inc bc                                        ; $6d61: $03
    xor e                                         ; $6d62: $ab
    ld d, [hl]                                    ; $6d63: $56
    ld d, a                                       ; $6d64: $57
    nop                                           ; $6d65: $00
    xor [hl]                                      ; $6d66: $ae
    adc e                                         ; $6d67: $8b
    ld a, [hl]                                    ; $6d68: $7e
    ld b, a                                       ; $6d69: $47
    ld a, $c9                                     ; $6d6a: $3e $c9
    rlca                                          ; $6d6c: $07
    xor d                                         ; $6d6d: $aa
    nop                                           ; $6d6e: $00
    push bc                                       ; $6d6f: $c5
    db $e4                                        ; $6d70: $e4
    jp $c1b2                                      ; $6d71: $c3 $b2 $c1


    ld [$e575], a                                 ; $6d74: $ea $75 $e5
    nop                                           ; $6d77: $00
    ld a, [hl]                                    ; $6d78: $7e
    ret c                                         ; $6d79: $d8

    ld a, a                                       ; $6d7a: $7f
    push af                                       ; $6d7b: $f5
    ccf                                           ; $6d7c: $3f
    cp $1f                                        ; $6d7d: $fe $1f
    ld h, a                                       ; $6d7f: $67
    nop                                           ; $6d80: $00
    add c                                         ; $6d81: $81
    xor e                                         ; $6d82: $ab
    ld b, c                                       ; $6d83: $41
    ld e, l                                       ; $6d84: $5d
    and e                                         ; $6d85: $a3
    cp c                                          ; $6d86: $b9
    rst $00                                       ; $6d87: $c7
    ld l, e                                       ; $6d88: $6b
    ld bc, $179e                                  ; $6d89: $01 $9e $17
    cp $0f                                        ; $6d8c: $fe $0f
    db $fc                                        ; $6d8e: $fc
    ccf                                           ; $6d8f: $3f
    ld hl, sp+$15                                 ; $6d90: $f8 $15
    inc c                                         ; $6d92: $0c
    dec bc                                        ; $6d93: $0b
    ld l, h                                       ; $6d94: $6c
    nop                                           ; $6d95: $00
    jr @+$7e                                      ; $6d96: $18 $7c

    dec c                                         ; $6d98: $0d
    inc d                                         ; $6d99: $14
    ld h, [hl]                                    ; $6d9a: $66
    cpl                                           ; $6d9b: $2f
    inc b                                         ; $6d9c: $04
    or b                                          ; $6d9d: $b0
    ld b, [hl]                                    ; $6d9e: $46
    ld de, $2d00                                  ; $6d9f: $11 $00 $2d
    ld bc, $26b0                                  ; $6da2: $01 $b0 $26
    dec b                                         ; $6da5: $05
    xor b                                         ; $6da6: $a8
    ld c, $b0                                     ; $6da7: $0e $b0
    ld d, $41                                     ; $6da9: $16 $41
    ld a, a                                       ; $6dab: $7f
    or b                                          ; $6dac: $b0
    ld b, $40                                     ; $6dad: $06 $40
    xor h                                         ; $6daf: $ac
    and b                                         ; $6db0: $a0
    ld d, l                                       ; $6db1: $55
    ld d, b                                       ; $6db2: $50
    or b                                          ; $6db3: $b0
    ld b, $50                                     ; $6db4: $06 $50
    xor d                                         ; $6db6: $aa
    or b                                          ; $6db7: $b0
    ld b, $fe                                     ; $6db8: $06 $fe
    or b                                          ; $6dba: $b0
    ld h, $00                                     ; $6dbb: $26 $00
    dec b                                         ; $6dbd: $05
    ld [bc], a                                    ; $6dbe: $02
    jr jr_0a3_6e05                                ; $6dbf: $18 $44

    dec c                                         ; $6dc1: $0d
    or b                                          ; $6dc2: $b0
    ld d, $05                                     ; $6dc3: $16 $05
    jr nc, jr_0a3_6de2                            ; $6dc5: $30 $1b

    or b                                          ; $6dc7: $b0
    ld d, [hl]                                    ; $6dc8: $56
    xor b                                         ; $6dc9: $a8
    dec d                                         ; $6dca: $15
    ld d, b                                       ; $6dcb: $50
    db $f4                                        ; $6dcc: $f4
    ld b, b                                       ; $6dcd: $40
    ld d, [hl]                                    ; $6dce: $56
    jr nz, @+$03                                  ; $6dcf: $20 $01

    ld [$0030], sp                                ; $6dd1: $08 $30 $00
    jr c, jr_0a3_6de6                             ; $6dd4: $38 $10

    nop                                           ; $6dd6: $00
    jr jr_0a3_6de9                                ; $6dd7: $18 $10

    inc e                                         ; $6dd9: $1c
    nop                                           ; $6dda: $00
    inc e                                         ; $6ddb: $1c
    sub b                                         ; $6ddc: $90
    sbc [hl]                                      ; $6ddd: $9e
    ld c, b                                       ; $6dde: $48
    nop                                           ; $6ddf: $00
    sbc $a4                                       ; $6de0: $de $a4

jr_0a3_6de2:
    ld a, [$f98e]                                 ; $6de2: $fa $8e $f9
    ld b, h                                       ; $6de5: $44

jr_0a3_6de6:
    ld a, e                                       ; $6de6: $7b
    ld c, d                                       ; $6de7: $4a
    nop                                           ; $6de8: $00

jr_0a3_6de9:
    ld [hl], l                                    ; $6de9: $75
    ld h, d                                       ; $6dea: $62
    ld e, l                                       ; $6deb: $5d
    ld [hl-], a                                   ; $6dec: $32
    dec l                                         ; $6ded: $2d

jr_0a3_6dee:
    jp hl                                         ; $6dee: $e9


    or $3b                                        ; $6def: $f6 $3b
    nop                                           ; $6df1: $00
    db $e4                                        ; $6df2: $e4
    adc l                                         ; $6df3: $8d
    ld a, [c]                                     ; $6df4: $f2
    push de                                       ; $6df5: $d5
    ld [$724d], a                                 ; $6df6: $ea $4d $72
    daa                                           ; $6df9: $27
    nop                                           ; $6dfa: $00
    jr c, jr_0a3_6e28                             ; $6dfb: $38 $2b

    inc [hl]                                      ; $6dfd: $34
    dec d                                         ; $6dfe: $15
    ld a, [de]                                    ; $6dff: $1a
    ld c, d                                       ; $6e00: $4a
    ld c, l                                       ; $6e01: $4d
    nop                                           ; $6e02: $00
    inc b                                         ; $6e03: $04
    nop                                           ; $6e04: $00

jr_0a3_6e05:
    inc b                                         ; $6e05: $04
    inc b                                         ; $6e06: $04
    add h                                         ; $6e07: $84
    adc h                                         ; $6e08: $8c
    ld [bc], a                                    ; $6e09: $02
    ld [$8ca0], sp                                ; $6e0a: $08 $a0 $8c
    nop                                           ; $6e0d: $00
    add h                                         ; $6e0e: $84
    db $fc                                        ; $6e0f: $fc
    jr nz, jr_0a3_6dee                            ; $6e10: $20 $dc

    add h                                         ; $6e12: $84
    ld hl, sp+$24                                 ; $6e13: $f8 $24
    ret c                                         ; $6e15: $d8

    nop                                           ; $6e16: $00
    add b                                         ; $6e17: $80

jr_0a3_6e18:
    db $fc                                        ; $6e18: $fc
    dec h                                         ; $6e19: $25
    reti                                          ; $6e1a: $d9


    xor c                                         ; $6e1b: $a9
    push de                                       ; $6e1c: $d5
    daa                                           ; $6e1d: $27
    rst $18                                       ; $6e1e: $df
    nop                                           ; $6e1f: $00
    ld c, c                                       ; $6e20: $49
    or a                                          ; $6e21: $b7
    dec h                                         ; $6e22: $25
    rst $18                                       ; $6e23: $df
    ld c, l                                       ; $6e24: $4d
    or a                                          ; $6e25: $b7
    pop de                                        ; $6e26: $d1
    cpl                                           ; $6e27: $2f

jr_0a3_6e28:
    nop                                           ; $6e28: $00
    ld c, c                                       ; $6e29: $49
    cp a                                          ; $6e2a: $bf
    db $d3                                        ; $6e2b: $d3
    cpl                                           ; $6e2c: $2f
    ld a, e                                       ; $6e2d: $7b
    adc a                                         ; $6e2e: $8f
    and $1e                                       ; $6e2f: $e6 $1e
    ld [$2ed6], sp                                ; $6e31: $08 $d6 $2e
    dec hl                                        ; $6e34: $2b
    db $db                                        ; $6e35: $db
    db $eb                                        ; $6e36: $eb
    inc b                                         ; $6e37: $04
    ld a, [hl]                                    ; $6e38: $7e
    ld a, [hl]                                    ; $6e39: $7e
    ld h, [hl]                                    ; $6e3a: $66
    ld b, $18                                     ; $6e3b: $06 $18
    ld h, [hl]                                    ; $6e3d: $66
    ld l, h                                       ; $6e3e: $6c
    ld a, h                                       ; $6e3f: $7c
    ld l, h                                       ; $6e40: $6c
    reti                                          ; $6e41: $d9


    ld [$1d0f], sp                                ; $6e42: $08 $0f $1d
    nop                                           ; $6e45: $00
    adc b                                         ; $6e46: $88
    rrca                                          ; $6e47: $0f
    dec b                                         ; $6e48: $05
    jr c, jr_0a3_6e7b                             ; $6e49: $38 $30

    add $0f                                       ; $6e4b: $c6 $0f
    dec b                                         ; $6e4d: $05
    jr nc, jr_0a3_6e18                            ; $6e4e: $30 $c8

    scf                                           ; $6e50: $37
    nop                                           ; $6e51: $00
    push af                                       ; $6e52: $f5
    ld a, [de]                                    ; $6e53: $1a
    ld l, b                                       ; $6e54: $68
    sub a                                         ; $6e55: $97
    db $f4                                        ; $6e56: $f4
    dec bc                                        ; $6e57: $0b
    ld sp, hl                                     ; $6e58: $f9
    ld h, $00                                     ; $6e59: $26 $00
    ld [$b515], a                                 ; $6e5b: $ea $15 $b5
    ld c, d                                       ; $6e5e: $4a
    jp nc, Jump_000_2f2d                          ; $6e5f: $d2 $2d $2f

    ret nc                                        ; $6e62: $d0

    nop                                           ; $6e63: $00
    rst $10                                       ; $6e64: $d7
    inc l                                         ; $6e65: $2c
    rra                                           ; $6e66: $1f
    ldh [$a7], a                                  ; $6e67: $e0 $a7
    ret c                                         ; $6e69: $d8

    ld e, a                                       ; $6e6a: $5f
    and b                                         ; $6e6b: $a0
    nop                                           ; $6e6c: $00
    sub l                                         ; $6e6d: $95
    ld l, d                                       ; $6e6e: $6a
    ld l, a                                       ; $6e6f: $6f
    sub b                                         ; $6e70: $90
    swap h                                        ; $6e71: $cb $34
    daa                                           ; $6e73: $27
    ret c                                         ; $6e74: $d8

    nop                                           ; $6e75: $00
    ld c, l                                       ; $6e76: $4d
    or d                                          ; $6e77: $b2
    ccf                                           ; $6e78: $3f
    ret z                                         ; $6e79: $c8

    xor a                                         ; $6e7a: $af

jr_0a3_6e7b:
    ld d, b                                       ; $6e7b: $50
    ld e, d                                       ; $6e7c: $5a
    and l                                         ; $6e7d: $a5
    nop                                           ; $6e7e: $00
    cpl                                           ; $6e7f: $2f
    ret nc                                        ; $6e80: $d0

    dec sp                                        ; $6e81: $3b
    push bc                                       ; $6e82: $c5
    sub a                                         ; $6e83: $97
    ld l, b                                       ; $6e84: $68
    ld a, a                                       ; $6e85: $7f
    add b                                         ; $6e86: $80
    nop                                           ; $6e87: $00
    add $39                                       ; $6e88: $c6 $39
    ld l, a                                       ; $6e8a: $6f
    ret nc                                        ; $6e8b: $d0

    ld c, a                                       ; $6e8c: $4f
    cp b                                          ; $6e8d: $b8
    dec hl                                        ; $6e8e: $2b
    call nc, Call_0a3_5f00                        ; $6e8f: $d4 $00 $5f
    and b                                         ; $6e92: $a0
    or a                                          ; $6e93: $b7
    ld c, b                                       ; $6e94: $48
    ld e, e                                       ; $6e95: $5b
    and h                                         ; $6e96: $a4
    ld l, a                                       ; $6e97: $6f
    sub b                                         ; $6e98: $90
    jr nz, @-$4f                                  ; $6e99: $20 $af

    ld e, b                                       ; $6e9b: $58
    inc e                                         ; $6e9c: $1c
    ld [$649f], sp                                ; $6e9d: $08 $9f $64
    rla                                           ; $6ea0: $17
    add sp, $6d                                   ; $6ea1: $e8 $6d
    db $10                                        ; $6ea3: $10
    sub d                                         ; $6ea4: $92
    adc e                                         ; $6ea5: $8b
    ld [hl], h                                    ; $6ea6: $74
    pop hl                                        ; $6ea7: $e1
    rlca                                          ; $6ea8: $07
    ret nz                                        ; $6ea9: $c0

    ret nz                                        ; $6eaa: $c0

    or b                                          ; $6eab: $b0
    ldh a, [rP1]                                  ; $6eac: $f0 $00
    adc b                                         ; $6eae: $88
    ld sp, hl                                     ; $6eaf: $f9
    add l                                         ; $6eb0: $85
    xor l                                         ; $6eb1: $ad
    db $d3                                        ; $6eb2: $d3
    or [hl]                                       ; $6eb3: $b6
    ret                                           ; $6eb4: $c9


    ld a, d                                       ; $6eb5: $7a
    nop                                           ; $6eb6: $00
    ld b, l                                       ; $6eb7: $45
    nop                                           ; $6eb8: $00
    inc bc                                        ; $6eb9: $03
    ld b, e                                       ; $6eba: $43
    ld c, l                                       ; $6ebb: $4d
    set 2, l                                      ; $6ebc: $cb $d5
    push de                                       ; $6ebe: $d5
    nop                                           ; $6ebf: $00
    db $eb                                        ; $6ec0: $eb
    xor l                                         ; $6ec1: $ad
    db $d3                                        ; $6ec2: $d3
    cp [hl]                                       ; $6ec3: $be
    jp nz, $e69a                                  ; $6ec4: $c2 $9a $e6

    and h                                         ; $6ec7: $a4
    ld de, $5ddc                                  ; $6ec8: $11 $dc $5d
    ld h, d                                       ; $6ecb: $62
    call z, Call_000_1108                         ; $6ecc: $cc $08 $11
    ld e, $7e                                     ; $6ecf: $1e $7e
    sub h                                         ; $6ed1: $94
    ld b, $00                                     ; $6ed2: $06 $00
    rra                                           ; $6ed4: $1f
    rra                                           ; $6ed5: $1f
    ld bc, $480f                                  ; $6ed6: $01 $0f $48
    ld hl, sp+$70                                 ; $6ed9: $f8 $70
    ldh a, [rP1]                                  ; $6edb: $f0 $00
    nop                                           ; $6edd: $00
    sbc [hl]                                      ; $6ede: $9e
    ld d, [hl]                                    ; $6edf: $56
    ld [$d62a], a                                 ; $6ee0: $ea $2a $d6
    call nc, Call_000_00ac                        ; $6ee3: $d4 $ac $00
    ld l, b                                       ; $6ee6: $68
    sbc b                                         ; $6ee7: $98
    ccf                                           ; $6ee8: $3f
    rst $38                                       ; $6ee9: $ff
    ld c, $11                                     ; $6eea: $0e $11
    add hl, de                                    ; $6eec: $19
    ld h, $00                                     ; $6eed: $26 $00
    scf                                           ; $6eef: $37
    ld c, b                                       ; $6ef0: $48
    ld l, $51                                     ; $6ef1: $2e $51
    ei                                            ; $6ef3: $fb
    add a                                         ; $6ef4: $87
    db $ec                                        ; $6ef5: $ec
    sbc h                                         ; $6ef6: $9c
    nop                                           ; $6ef7: $00
    or b                                          ; $6ef8: $b0
    ldh a, [$c4]                                  ; $6ef9: $f0 $c4
    call nz, $fefe                                ; $6efb: $c4 $fe $fe
    ld a, b                                       ; $6efe: $78
    ld hl, sp-$6c                                 ; $6eff: $f8 $94
    ld [$c80d], a                                 ; $6f01: $ea $0d $c8
    ret z                                         ; $6f04: $c8

    inc b                                         ; $6f05: $04
    ld [$da10], sp                                ; $6f06: $08 $10 $da
    rlca                                          ; $6f09: $07
    db $e3                                        ; $6f0a: $e3
    inc e                                         ; $6f0b: $1c
    nop                                           ; $6f0c: $00
    push af                                       ; $6f0d: $f5
    ld [de], a                                    ; $6f0e: $12
    ld a, [$f411]                                 ; $6f0f: $fa $11 $f4
    add hl, de                                    ; $6f12: $19
    db $fc                                        ; $6f13: $fc
    add hl, de                                    ; $6f14: $19
    ld [$3dc6], sp                                ; $6f15: $08 $c6 $3d
    ret z                                         ; $6f18: $c8

    daa                                           ; $6f19: $27
    ld [$f10f], a                                 ; $6f1a: $ea $0f $f1
    ld c, $cb                                     ; $6f1d: $0e $cb
    nop                                           ; $6f1f: $00
    ld [hl-], a                                   ; $6f20: $32
    and a                                         ; $6f21: $a7
    ld b, d                                       ; $6f22: $42
    rst $08                                       ; $6f23: $cf
    add h                                         ; $6f24: $84
    sbc a                                         ; $6f25: $9f
    adc b                                         ; $6f26: $88
    xor a                                         ; $6f27: $af
    nop                                           ; $6f28: $00
    sbc b                                         ; $6f29: $98
    ld a, [c]                                     ; $6f2a: $f2
    ld hl, $10f9                                  ; $6f2b: $21 $f9 $10
    cp $0c                                        ; $6f2e: $fe $0c
    di                                            ; $6f30: $f3
    nop                                           ; $6f31: $00
    rrca                                          ; $6f32: $0f
    add sp, $11                                   ; $6f33: $e8 $11
    rst $10                                       ; $6f35: $d7
    ld hl, $47aa                                  ; $6f36: $21 $aa $47
    sbc l                                         ; $6f39: $9d
    nop                                           ; $6f3a: $00
    ld c, [hl]                                    ; $6f3b: $4e
    rst $18                                       ; $6f3c: $df
    or b                                          ; $6f3d: $b0
    ld a, a                                       ; $6f3e: $7f
    ldh [rSCX], a                                 ; $6f3f: $e0 $43
    db $fc                                        ; $6f41: $fc
    ld sp, $c200                                  ; $6f42: $31 $00 $c2
    adc $81                                       ; $6f45: $ce $81
    rst $08                                       ; $6f47: $cf
    cp $3f                                        ; $6f48: $fe $3f
    ldh a, [$73]                                  ; $6f4a: $f0 $73
    nop                                           ; $6f4c: $00
    ld c, h                                       ; $6f4d: $4c
    db $f4                                        ; $6f4e: $f4
    ld a, b                                       ; $6f4f: $78
    ld [$db11], a                                 ; $6f50: $ea $11 $db
    daa                                           ; $6f53: $27
    rst $38                                       ; $6f54: $ff
    ld d, b                                       ; $6f55: $50
    inc a                                         ; $6f56: $3c
    call nz, Call_000_0207                        ; $6f57: $c4 $07 $02
    ld l, l                                       ; $6f5a: $6d
    dec b                                         ; $6f5b: $05
    nop                                           ; $6f5c: $00
    push de                                       ; $6f5d: $d5
    ld h, d                                       ; $6f5e: $62
    ld [$f101], a                                 ; $6f5f: $ea $01 $f1
    db $f4                                        ; $6f62: $f4
    reti                                          ; $6f63: $d9


    cp $cf                                        ; $6f64: $fe $cf
    rst $38                                       ; $6f66: $ff
    ret nz                                        ; $6f67: $c0

    ld [bc], a                                    ; $6f68: $02
    nop                                           ; $6f69: $00
    ld b, b                                       ; $6f6a: $40
    ret nc                                        ; $6f6b: $d0

    rst $28                                       ; $6f6c: $ef
    rlca                                          ; $6f6d: $07
    jr nz, jr_0a3_6f72                            ; $6f6e: $20 $02

    ld [hl+], a                                   ; $6f70: $22
    sub h                                         ; $6f71: $94

jr_0a3_6f72:
    or [hl]                                       ; $6f72: $b6
    db $ec                                        ; $6f73: $ec
    nop                                           ; $6f74: $00
    ld e, b                                       ; $6f75: $58
    ld a, b                                       ; $6f76: $78
    db $10                                        ; $6f77: $10
    jr nz, jr_0a3_6f8a                            ; $6f78: $20 $10

    ld e, b                                       ; $6f7a: $58
    ld a, b                                       ; $6f7b: $78
    xor h                                         ; $6f7c: $ac
    inc h                                         ; $6f7d: $24
    call nc, $f100                                ; $6f7e: $d4 $00 $f1

jr_0a3_6f81:
    ld bc, $0100                                  ; $6f81: $01 $00 $01
    ld d, $3b                                     ; $6f84: $16 $3b
    sub [hl]                                      ; $6f86: $96
    ld a, d                                       ; $6f87: $7a
    nop                                           ; $6f88: $00
    inc hl                                        ; $6f89: $23

jr_0a3_6f8a:
    sub l                                         ; $6f8a: $95
    db $10                                        ; $6f8b: $10
    ld sp, $1020                                  ; $6f8c: $31 $20 $10
    jr nc, jr_0a3_6fa1                            ; $6f8f: $30 $10

    nop                                           ; $6f91: $00
    rst $28                                       ; $6f92: $ef
    rst $18                                       ; $6f93: $df
    cp $01                                        ; $6f94: $fe $01
    jr nc, jr_0a3_6ff2                            ; $6f96: $30 $5a

    ld bc, $3001                                  ; $6f98: $01 $01 $30
    ld [bc], a                                    ; $6f9b: $02
    inc bc                                        ; $6f9c: $03
    ld e, $02                                     ; $6f9d: $1e $02
    dec a                                         ; $6f9f: $3d
    rlca                                          ; $6fa0: $07

jr_0a3_6fa1:
    rst $38                                       ; $6fa1: $ff
    rst $38                                       ; $6fa2: $ff
    ld a, c                                       ; $6fa3: $79
    add [hl]                                      ; $6fa4: $86
    nop                                           ; $6fa5: $00
    jr nc, @+$13                                  ; $6fa6: $30 $11

    ld hl, $de13                                  ; $6fa8: $21 $13 $de
    rst $38                                       ; $6fab: $ff
    rst $38                                       ; $6fac: $ff
    nop                                           ; $6fad: $00
    nop                                           ; $6fae: $00
    ld [de], a                                    ; $6faf: $12
    inc sp                                        ; $6fb0: $33
    and [hl]                                      ; $6fb1: $a6
    sub h                                         ; $6fb2: $94
    sub h                                         ; $6fb3: $94
    jr nc, jr_0a3_6fd8                            ; $6fb4: $30 $22

    sub [hl]                                      ; $6fb6: $96
    nop                                           ; $6fb7: $00
    jr nc, jr_0a3_6fcc                            ; $6fb8: $30 $12

    ld [hl+], a                                   ; $6fba: $22
    inc de                                        ; $6fbb: $13
    db $dd                                        ; $6fbc: $dd
    rst $38                                       ; $6fbd: $ff
    ld sp, hl                                     ; $6fbe: $f9
    ld b, $02                                     ; $6fbf: $06 $02
    ld de, $2133                                  ; $6fc1: $11 $33 $21
    db $10                                        ; $6fc4: $10
    db $10                                        ; $6fc5: $10
    jr nc, jr_0a3_6ffe                            ; $6fc6: $30 $36

    nop                                           ; $6fc8: $00
    ld de, $1080                                  ; $6fc9: $11 $80 $10

jr_0a3_6fcc:
    ld e, b                                       ; $6fcc: $58
    db $10                                        ; $6fcd: $10
    ld sp, $96a4                                  ; $6fce: $31 $a4 $96
    ld a, b                                       ; $6fd1: $78
    call c, Call_000_3620                         ; $6fd2: $dc $20 $36
    ld e, b                                       ; $6fd5: $58
    jr nc, @+$70                                  ; $6fd6: $30 $6e

jr_0a3_6fd8:
    nop                                           ; $6fd8: $00
    inc b                                         ; $6fd9: $04
    jr nz, jr_0a3_6fed                            ; $6fda: $20 $11

    inc c                                         ; $6fdc: $0c
    jr z, jr_0a3_6fff                             ; $6fdd: $28 $20

    db $10                                        ; $6fdf: $10
    jr nc, jr_0a3_6f81                            ; $6fe0: $30 $9f

    db $10                                        ; $6fe2: $10

jr_0a3_6fe3:
    ld [$3000], sp                                ; $6fe3: $08 $00 $30
    jr nz, @+$42                                  ; $6fe6: $20 $40

    ld c, b                                       ; $6fe8: $48
    jr @+$0a                                      ; $6fe9: $18 $08

    ld h, b                                       ; $6feb: $60
    inc l                                         ; $6fec: $2c

jr_0a3_6fed:
    jr jr_0a3_7017                                ; $6fed: $18 $28

    ld e, b                                       ; $6fef: $58
    add [hl]                                      ; $6ff0: $86
    ld d, h                                       ; $6ff1: $54

jr_0a3_6ff2:
    jr jr_0a3_6fe3                                ; $6ff2: $18 $ef

    rst $18                                       ; $6ff4: $df
    sub a                                         ; $6ff5: $97
    ld a, b                                       ; $6ff6: $78
    ld c, h                                       ; $6ff7: $4c
    ld [$2808], sp                                ; $6ff8: $08 $08 $28
    rst $08                                       ; $6ffb: $cf
    ld b, $ff                                     ; $6ffc: $06 $ff

jr_0a3_6ffe:
    sub a                                         ; $6ffe: $97

jr_0a3_6fff:
    ld a, b                                       ; $6fff: $78
    nop                                           ; $7000: $00
    jr nc, jr_0a3_700b                            ; $7001: $30 $08

    jr c, @-$1e                                   ; $7003: $38 $e0

    ld [hl], $77                                  ; $7005: $36 $77
    adc d                                         ; $7007: $8a
    ldh [rTMA], a                                 ; $7008: $e0 $06

jr_0a3_700a:
    ld e, l                                       ; $700a: $5d

jr_0a3_700b:
    ld [hl+], a                                   ; $700b: $22
    rra                                           ; $700c: $1f
    ret nz                                        ; $700d: $c0

    dec [hl]                                      ; $700e: $35
    halt                                          ; $700f: $76
    ret nz                                        ; $7010: $c0

    dec b                                         ; $7011: $05
    sbc l                                         ; $7012: $9d
    and d                                         ; $7013: $a2
    ret nz                                        ; $7014: $c0

    ld b, l                                       ; $7015: $45
    ld [hl], a                                    ; $7016: $77

jr_0a3_7017:
    ret nz                                        ; $7017: $c0

    dec b                                         ; $7018: $05
    push de                                       ; $7019: $d5
    sub b                                         ; $701a: $90
    rst $28                                       ; $701b: $ef
    ldh [$36], a                                  ; $701c: $e0 $36
    ld [hl], a                                    ; $701e: $77
    xor b                                         ; $701f: $a8
    ldh [rTMA], a                                 ; $7020: $e0 $06
    db $dd                                        ; $7022: $dd
    ldh [rTMA], a                                 ; $7023: $e0 $06
    dec d                                         ; $7025: $15
    and d                                         ; $7026: $a2
    ld b, $15                                     ; $7027: $06 $15
    ld [bc], a                                    ; $7029: $02
    rrca                                          ; $702a: $0f
    nop                                           ; $702b: $00
    nop                                           ; $702c: $00
    dec d                                         ; $702d: $15
    ld [$1032], sp                                ; $702e: $08 $32 $10
    ld b, l                                       ; $7031: $45
    ld b, b                                       ; $7032: $40
    ld [$0100], a                                 ; $7033: $ea $00 $01
    ld d, h                                       ; $7036: $54
    ld [$10bf], sp                                ; $7037: $08 $bf $10
    ld d, l                                       ; $703a: $55
    ld bc, $00ee                                  ; $703b: $01 $ee $00
    nop                                           ; $703e: $00
    ld d, l                                       ; $703f: $55
    add b                                         ; $7040: $80
    ld a, [hl-]                                   ; $7041: $3a
    inc b                                         ; $7042: $04
    ld d, l                                       ; $7043: $55
    nop                                           ; $7044: $00
    ld [$1100], a                                 ; $7045: $ea $00 $11
    ld d, l                                       ; $7048: $55
    jr nz, jr_0a3_700a                            ; $7049: $20 $bf

    ld bc, $4455                                  ; $704b: $01 $55 $44
    db $eb                                        ; $704e: $eb
    nop                                           ; $704f: $00
    nop                                           ; $7050: $00
    ld d, l                                       ; $7051: $55
    nop                                           ; $7052: $00
    cp d                                          ; $7053: $ba
    ld b, b                                       ; $7054: $40
    dec d                                         ; $7055: $15
    ld [bc], a                                    ; $7056: $02
    ld [$1001], a                                 ; $7057: $ea $01 $10
    ld d, l                                       ; $705a: $55
    ld hl, $00be                                  ; $705b: $21 $be $00
    ld d, l                                       ; $705e: $55
    add h                                         ; $705f: $84
    stop                                          ; $7060: $10 $00
    nop                                           ; $7062: $00
    add b                                         ; $7063: $80
    ld a, [hl-]                                   ; $7064: $3a
    ld d, b                                       ; $7065: $50
    dec d                                         ; $7066: $15
    ld [$00ea], sp                                ; $7067: $08 $ea $00
    dec d                                         ; $706a: $15
    nop                                           ; $706b: $00
    nop                                           ; $706c: $00
    ld a, [bc]                                    ; $706d: $0a
    ld bc, $0014                                  ; $706e: $01 $14 $00
    ld a, [hl+]                                   ; $7071: $2a
    nop                                           ; $7072: $00
    ld de, $0800                                  ; $7073: $11 $00 $08
    ld a, [hl+]                                   ; $7076: $2a
    nop                                           ; $7077: $00
    inc b                                         ; $7078: $04
    add b                                         ; $7079: $80
    ld a, [hl+]                                   ; $707a: $2a
    nop                                           ; $707b: $00
    ld d, l                                       ; $707c: $55
    nop                                           ; $707d: $00
    ld [$50a2], sp                                ; $707e: $08 $a2 $50
    dec b                                         ; $7081: $05
    nop                                           ; $7082: $00
    xor d                                         ; $7083: $aa
    ld bc, $8010                                  ; $7084: $01 $10 $80
    inc c                                         ; $7087: $0c
    nop                                           ; $7088: $00
    ld b, h                                       ; $7089: $44
    add d                                         ; $708a: $82
    xor b                                         ; $708b: $a8
    ld bc, $0255                                  ; $708c: $01 $55 $02
    xor b                                         ; $708f: $a8
    jr nz, jr_0a3_70a2                            ; $7090: $20 $10

    ld d, l                                       ; $7092: $55
    jr jr_0a3_7095                                ; $7093: $18 $00

jr_0a3_7095:
    ld de, $aa00                                  ; $7095: $11 $00 $aa
    nop                                           ; $7098: $00
    ld b, h                                       ; $7099: $44
    jr nz, jr_0a3_70be                            ; $709a: $20 $22

    xor b                                         ; $709c: $a8
    jr nz, jr_0a3_70a7                            ; $709d: $20 $08

    ld b, b                                       ; $709f: $40
    ld d, l                                       ; $70a0: $55
    add d                                         ; $70a1: $82

jr_0a3_70a2:
    xor d                                         ; $70a2: $aa
    db $10                                        ; $70a3: $10
    sub c                                         ; $70a4: $91
    stop                                          ; $70a5: $10 $00

jr_0a3_70a7:
    inc b                                         ; $70a7: $04
    ld b, h                                       ; $70a8: $44
    inc d                                         ; $70a9: $14
    nop                                           ; $70aa: $00
    nop                                           ; $70ab: $00
    ld [bc], a                                    ; $70ac: $02
    ld [$04a6], sp                                ; $70ad: $08 $a6 $04
    ld d, [hl]                                    ; $70b0: $56
    ld a, [bc]                                    ; $70b1: $0a
    cp b                                          ; $70b2: $b8
    ld b, h                                       ; $70b3: $44
    ld a, [hl+]                                   ; $70b4: $2a
    sub $07                                       ; $70b5: $d6 $07
    adc d                                         ; $70b7: $8a
    ret                                           ; $70b8: $c9


    ld bc, $0fdd                                  ; $70b9: $01 $dd $0f
    add b                                         ; $70bc: $80
    rst $10                                       ; $70bd: $d7

jr_0a3_70be:
    db $10                                        ; $70be: $10
    jr c, jr_0a3_70d2                             ; $70bf: $38 $11

    ld [$1080], sp                                ; $70c1: $08 $80 $10
    nop                                           ; $70c4: $00
    ld [hl+], a                                   ; $70c5: $22
    jr nc, jr_0a3_70c8                            ; $70c6: $30 $00

jr_0a3_70c8:
    jr nz, jr_0a3_70da                            ; $70c8: $20 $10

    ld hl, $0008                                  ; $70ca: $21 $08 $00
    add b                                         ; $70cd: $80
    rlca                                          ; $70ce: $07
    rlca                                          ; $70cf: $07
    inc bc                                        ; $70d0: $03
    inc bc                                        ; $70d1: $03

jr_0a3_70d2:
    ld de, $1931                                  ; $70d2: $11 $31 $19
    nop                                           ; $70d5: $00
    add hl, bc                                    ; $70d6: $09
    dec c                                         ; $70d7: $0d
    dec b                                         ; $70d8: $05
    rra                                           ; $70d9: $1f

jr_0a3_70da:
    dec de                                        ; $70da: $1b
    inc sp                                        ; $70db: $33
    ld hl, $5043                                  ; $70dc: $21 $43 $50
    ld h, c                                       ; $70df: $61
    nop                                           ; $70e0: $00
    dec e                                         ; $70e1: $1d
    ld bc, $0001                                  ; $70e2: $01 $01 $00
    inc bc                                        ; $70e5: $03
    ld [bc], a                                    ; $70e6: $02
    rlca                                          ; $70e7: $07
    dec b                                         ; $70e8: $05
    nop                                           ; $70e9: $00
    dec e                                         ; $70ea: $1d
    dec de                                        ; $70eb: $1b
    ld h, c                                       ; $70ec: $61
    ld b, e                                       ; $70ed: $43
    add e                                         ; $70ee: $83
    pop bc                                        ; $70ef: $c1
    jp Jump_000_1481                              ; $70f0: $c3 $81 $14


    ld b, c                                       ; $70f3: $41
    add e                                         ; $70f4: $83
    add e                                         ; $70f5: $83
    ld de, $0300                                  ; $70f6: $11 $00 $03
    dec d                                         ; $70f9: $15
    nop                                           ; $70fa: $00
    nop                                           ; $70fb: $00
    nop                                           ; $70fc: $00
    nop                                           ; $70fd: $00
    inc bc                                        ; $70fe: $03
    inc bc                                        ; $70ff: $03

Call_0a3_7100:
    dec c                                         ; $7100: $0d
    ld c, $14                                     ; $7101: $0e $14
    add hl, de                                    ; $7103: $19
    ld sp, $0020                                  ; $7104: $31 $20 $00
    ld h, b                                       ; $7107: $60
    ld b, c                                       ; $7108: $41
    ld b, c                                       ; $7109: $41
    ld b, b                                       ; $710a: $40
    pop bc                                        ; $710b: $c1
    add b                                         ; $710c: $80
    db $eb                                        ; $710d: $eb
    pop af                                        ; $710e: $f1
    ld [bc], a                                    ; $710f: $02
    and c                                         ; $7110: $a1
    ld b, e                                       ; $7111: $43
    add e                                         ; $7112: $83
    add c                                         ; $7113: $81
    add e                                         ; $7114: $83
    add c                                         ; $7115: $81
    inc bc                                        ; $7116: $03
    nop                                           ; $7117: $00
    add e                                         ; $7118: $83
    sub b                                         ; $7119: $90

jr_0a3_711a:
    ld [$0308], sp                                ; $711a: $08 $08 $03
    ld bc, $1802                                  ; $711d: $01 $02 $18
    ld bc, $0f03                                  ; $7120: $01 $03 $0f
    rrca                                          ; $7123: $0f
    nop                                           ; $7124: $00
    ccf                                           ; $7125: $3f
    ccf                                           ; $7126: $3f
    ld a, a                                       ; $7127: $7f
    ld a, a                                       ; $7128: $7f
    pop bc                                        ; $7129: $c1
    ret nz                                        ; $712a: $c0

    ld b, c                                       ; $712b: $41
    ret nz                                        ; $712c: $c0

    ld b, b                                       ; $712d: $40
    ret nz                                        ; $712e: $c0

    add hl, hl                                    ; $712f: $29
    nop                                           ; $7130: $00
    pop bc                                        ; $7131: $c1
    ld b, b                                       ; $7132: $40
    ld a, a                                       ; $7133: $7f
    cp $dd                                        ; $7134: $fe $dd
    ld h, d                                       ; $7136: $62
    jr nc, jr_0a3_717a                            ; $7137: $30 $41

    ret nz                                        ; $7139: $c0

    ld a, [hl+]                                   ; $713a: $2a
    ld [$0801], sp                                ; $713b: $08 $01 $08
    add a                                         ; $713e: $87
    add a                                         ; $713f: $87
    rst $38                                       ; $7140: $ff
    rst $38                                       ; $7141: $ff
    nop                                           ; $7142: $00
    cp a                                          ; $7143: $bf
    rst $08                                       ; $7144: $cf
    add a                                         ; $7145: $87
    adc a                                         ; $7146: $8f
    rst $38                                       ; $7147: $ff
    rst $38                                       ; $7148: $ff
    ld hl, sp-$01                                 ; $7149: $f8 $ff
    nop                                           ; $714b: $00
    rst $08                                       ; $714c: $cf
    ldh a, [$bf]                                  ; $714d: $f0 $bf
    adc $77                                       ; $714f: $ce $77
    cp [hl]                                       ; $7151: $be
    rst $18                                       ; $7152: $df
    cp [hl]                                       ; $7153: $be
    ld [$ae5b], sp                                ; $7154: $08 $5b $ae
    rst $28                                       ; $7157: $ef
    or [hl]                                       ; $7158: $b6
    jr z, jr_0a3_7173                             ; $7159: $28 $18

    pop bc                                        ; $715b: $c1
    ld b, b                                       ; $715c: $40
    ret nz                                        ; $715d: $c0

    ld b, b                                       ; $715e: $40
    ld b, c                                       ; $715f: $41
    inc b                                         ; $7160: $04
    ld [$c041], sp                                ; $7161: $08 $41 $c0
    add a                                         ; $7164: $87
    adc a                                         ; $7165: $8f
    di                                            ; $7166: $f3
    rst $38                                       ; $7167: $ff
    nop                                           ; $7168: $00
    cp a                                          ; $7169: $bf
    rst $00                                       ; $716a: $c7
    adc e                                         ; $716b: $8b
    add a                                         ; $716c: $87
    adc e                                         ; $716d: $8b
    add a                                         ; $716e: $87
    adc c                                         ; $716f: $89
    add a                                         ; $7170: $87
    nop                                           ; $7171: $00
    add h                                         ; $7172: $84

jr_0a3_7173:
    add e                                         ; $7173: $83
    add l                                         ; $7174: $85
    add e                                         ; $7175: $83
    ld [hl], a                                    ; $7176: $77
    cp [hl]                                       ; $7177: $be
    pop bc                                        ; $7178: $c1
    cp [hl]                                       ; $7179: $be

jr_0a3_717a:
    nop                                           ; $717a: $00
    ld a, a                                       ; $717b: $7f
    add b                                         ; $717c: $80
    rst $28                                       ; $717d: $ef

jr_0a3_717e:
    cp [hl]                                       ; $717e: $be
    ld [hl], a                                    ; $717f: $77
    xor d                                         ; $7180: $aa
    rst $18                                       ; $7181: $df
    or d                                          ; $7182: $b2
    ld [bc], a                                    ; $7183: $02
    db $ed                                        ; $7184: $ed
    sbc $73                                       ; $7185: $de $73
    xor $41                                       ; $7187: $ee $41
    ret nz                                        ; $7189: $c0

    jr z, jr_0a3_71a4                             ; $718a: $28 $18

    pop bc                                        ; $718c: $c1
    ld b, b                                       ; $718d: $40

jr_0a3_718e:
    ld b, b                                       ; $718e: $40
    ld l, b                                       ; $718f: $68
    ld [$41c0], sp                                ; $7190: $08 $c0 $41
    add d                                         ; $7193: $82
    add c                                         ; $7194: $81
    add d                                         ; $7195: $82
    add c                                         ; $7196: $81
    jr nc, jr_0a3_711a                            ; $7197: $30 $81

    add d                                         ; $7199: $82
    ld h, [hl]                                    ; $719a: $66
    db $10                                        ; $719b: $10
    inc b                                         ; $719c: $04
    db $10                                        ; $719d: $10
    cp e                                          ; $719e: $bb
    or $5d                                        ; $719f: $f6 $5d
    ld a, [$2b00]                                 ; $71a1: $fa $00 $2b

jr_0a3_71a4:
    db $fc                                        ; $71a4: $fc
    and l                                         ; $71a5: $a5
    ld e, a                                       ; $71a6: $5f
    ld d, h                                       ; $71a7: $54
    dec hl                                        ; $71a8: $2b
    ld a, [hl-]                                   ; $71a9: $3a
    dec b                                         ; $71aa: $05
    rrca                                          ; $71ab: $0f
    rrca                                          ; $71ac: $0f
    nop                                           ; $71ad: $00
    ld bc, $2403                                  ; $71ae: $01 $03 $24
    ld [$0858], sp                                ; $71b1: $08 $58 $08
    jr c, jr_0a3_71be                             ; $71b4: $38 $08

    sub [hl]                                      ; $71b6: $96
    ld [$2afc], sp                                ; $71b7: $08 $fc $2a
    jr jr_0a3_717e                                ; $71ba: $18 $c2

    jr c, jr_0a3_71a4                             ; $71bc: $38 $e6

jr_0a3_71be:
    jr @+$06                                      ; $71be: $18 $04

    jr jr_0a3_718e                                ; $71c0: $18 $cc

    ld [$188e], sp                                ; $71c2: $08 $8e $18
    ld b, c                                       ; $71c5: $41
    ret nz                                        ; $71c6: $c0

    jr nz, @+$01                                  ; $71c7: $20 $ff

    ld a, [hl]                                    ; $71c9: $7e
    sub [hl]                                      ; $71ca: $96
    ld [$40c1], sp                                ; $71cb: $08 $c1 $40
    db $fd                                        ; $71ce: $fd
    rst $38                                       ; $71cf: $ff
    cp c                                          ; $71d0: $b9
    ld b, d                                       ; $71d1: $42
    rst $00                                       ; $71d2: $c7
    ldh a, [$08]                                  ; $71d3: $f0 $08
    rst $38                                       ; $71d5: $ff
    db $fd                                        ; $71d6: $fd
    cp e                                          ; $71d7: $bb
    push bc                                       ; $71d8: $c5
    ld hl, sp+$08                                 ; $71d9: $f8 $08
    db $fd                                        ; $71db: $fd
    inc e                                         ; $71dc: $1c
    rst $38                                       ; $71dd: $ff
    ld a, e                                       ; $71de: $7b
    add l                                         ; $71df: $85

Call_0a3_71e0:
    ld a, [de]                                    ; $71e0: $1a
    add hl, bc                                    ; $71e1: $09
    ld [$fc08], sp                                ; $71e2: $08 $08 $fc
    ld [$d620], sp                                ; $71e5: $08 $20 $d6
    nop                                           ; $71e8: $00
    db $10                                        ; $71e9: $10
    db $ec                                        ; $71ea: $ec
    nop                                           ; $71eb: $00
    ld sp, hl                                     ; $71ec: $f9
    nop                                           ; $71ed: $00
    db $fc                                        ; $71ee: $fc
    db $10                                        ; $71ef: $10
    halt                                          ; $71f0: $76
    ld [bc], a                                    ; $71f1: $02
    and h                                         ; $71f2: $a4
    ld a, l                                       ; $71f3: $7d

jr_0a3_71f4:
    ld b, b                                       ; $71f4: $40

jr_0a3_71f5:
    sbc b                                         ; $71f5: $98
    ld [bc], a                                    ; $71f6: $02
    db $fc                                        ; $71f7: $fc
    db $10                                        ; $71f8: $10
    ld [bc], a                                    ; $71f9: $02
    cp h                                          ; $71fa: $bc
    nop                                           ; $71fb: $00
    db $10                                        ; $71fc: $10
    ld d, h                                       ; $71fd: $54
    ld bc, $00ea                                  ; $71fe: $01 $ea $00
    ld d, h                                       ; $7201: $54
    add b                                         ; $7202: $80
    jr c, jr_0a3_720d                             ; $7203: $38 $08

    nop                                           ; $7205: $00
    ld d, b                                       ; $7206: $50
    nop                                           ; $7207: $00
    add sp, -$20                                  ; $7208: $e8 $e0
    ld de, $0004                                  ; $720a: $11 $04 $00

jr_0a3_720d:
    xor b                                         ; $720d: $a8
    ld [$1000], sp                                ; $720e: $08 $00 $10
    add b                                         ; $7211: $80
    jr z, jr_0a3_71f4                             ; $7212: $28 $e0

    add hl, bc                                    ; $7214: $09
    ld h, b                                       ; $7215: $60
    ldh [rLCDC], a                                ; $7216: $e0 $40
    nop                                           ; $7218: $00
    ret nz                                        ; $7219: $c0

    ld [$188c], sp                                ; $721a: $08 $8c $18
    sub b                                         ; $721d: $90
    or b                                          ; $721e: $b0
    and b                                         ; $721f: $a0
    ld a, b                                       ; $7220: $78
    nop                                           ; $7221: $00
    ret c                                         ; $7222: $d8

    call z, $4284                                 ; $7223: $cc $84 $42
    add [hl]                                      ; $7226: $86
    add $82                                       ; $7227: $c6 $82
    ld b, c                                       ; $7229: $41
    nop                                           ; $722a: $00
    add e                                         ; $722b: $83
    ld b, e                                       ; $722c: $43
    add c                                         ; $722d: $81
    ld [bc], a                                    ; $722e: $02
    pop bc                                        ; $722f: $c1
    ld b, c                                       ; $7230: $41
    add b                                         ; $7231: $80
    add b                                         ; $7232: $80
    jr nz, jr_0a3_71f5                            ; $7233: $20 $c0

    ld b, b                                       ; $7235: $40
    inc b                                         ; $7236: $04
    nop                                           ; $7237: $00
    rst $38                                       ; $7238: $ff
    rst $38                                       ; $7239: $ff
    rra                                           ; $723a: $1f
    rst $38                                       ; $723b: $ff
    di                                            ; $723c: $f3
    nop                                           ; $723d: $00
    rrca                                          ; $723e: $0f
    db $ed                                        ; $723f: $ed
    ld [hl], e                                    ; $7240: $73
    ld a, [$df7d]                                 ; $7241: $fa $7d $df
    ld a, l                                       ; $7244: $7d
    sub $00                                       ; $7245: $d6 $00
    ld l, l                                       ; $7247: $6d
    rst $38                                       ; $7248: $ff
    ld l, l                                       ; $7249: $6d
    sub $7d                                       ; $724a: $d6 $7d
    add e                                         ; $724c: $83
    ld a, l                                       ; $724d: $7d
    cp $20                                        ; $724e: $fe $20
    ld bc, $0cef                                  ; $7250: $01 $ef $0c
    nop                                           ; $7253: $00
    cp e                                          ; $7254: $bb
    ld c, l                                       ; $7255: $4d
    rst $10                                       ; $7256: $d7
    ld a, e                                       ; $7257: $7b
    xor $4c                                       ; $7258: $ee $4c
    ld [hl], a                                    ; $725a: $77
    ld h, $08                                     ; $725b: $26 $08
    ret nz                                        ; $725d: $c0

    add b                                         ; $725e: $80
    ld a, [hl+]                                   ; $725f: $2a
    ld [$1804], sp                                ; $7260: $08 $04 $18
    ccf                                           ; $7263: $3f
    rst $38                                       ; $7264: $ff
    ld a, [de]                                    ; $7265: $1a
    ld e, [hl]                                    ; $7266: $5e
    and c                                         ; $7267: $a1
    ld b, b                                       ; $7268: $40
    stop                                          ; $7269: $10 $00
    ld [$0008], sp                                ; $726b: $08 $08 $00
    ld b, d                                       ; $726e: $42
    nop                                           ; $726f: $00
    ld h, b                                       ; $7270: $60
    dec bc                                        ; $7271: $0b
    cp e                                          ; $7272: $bb
    rlca                                          ; $7273: $07
    ld b, d                                       ; $7274: $42
    rst $38                                       ; $7275: $ff
    ld bc, $8360                                  ; $7276: $01 $60 $83
    rst $38                                       ; $7279: $ff
    pop bc                                        ; $727a: $c1
    cp a                                          ; $727b: $bf
    inc b                                         ; $727c: $04
    ld c, b                                       ; $727d: $48
    nop                                           ; $727e: $00
    nop                                           ; $727f: $00
    rst $38                                       ; $7280: $ff
    inc b                                         ; $7281: $04
    ei                                            ; $7282: $fb
    ld l, $d1                                     ; $7283: $2e $d1
    ld d, l                                       ; $7285: $55
    xor d                                         ; $7286: $aa
    cp $00                                        ; $7287: $fe $00
    ld bc, $8077                                  ; $7289: $01 $77 $80
    cp $00                                        ; $728c: $fe $00
    rst $10                                       ; $728e: $d7
    nop                                           ; $728f: $00
    nop                                           ; $7290: $00
    nop                                           ; $7291: $00
    add b                                         ; $7292: $80
    sbc c                                         ; $7293: $99
    sbc c                                         ; $7294: $99
    inc h                                         ; $7295: $24
    and h                                         ; $7296: $a4
    sbc b                                         ; $7297: $98
    sbc b                                         ; $7298: $98
    dec h                                         ; $7299: $25
    nop                                           ; $729a: $00
    and l                                         ; $729b: $a5
    sbc c                                         ; $729c: $99
    sbc c                                         ; $729d: $99
    nop                                           ; $729e: $00
    add b                                         ; $729f: $80
    add b                                         ; $72a0: $80
    add b                                         ; $72a1: $80
    nop                                           ; $72a2: $00
    nop                                           ; $72a3: $00
    nop                                           ; $72a4: $00
    ret nz                                        ; $72a5: $c0

    ret nz                                        ; $72a6: $c0

    jr nz, jr_0a3_72c9                            ; $72a7: $20 $20

    ret nz                                        ; $72a9: $c0

    ret nz                                        ; $72aa: $c0

    nop                                           ; $72ab: $00
    nop                                           ; $72ac: $00
    nop                                           ; $72ad: $00
    ldh [$e0], a                                  ; $72ae: $e0 $e0
    ld bc, $ff01                                  ; $72b0: $01 $01 $ff
    cp $a2                                        ; $72b3: $fe $a2
    nop                                           ; $72b5: $00
    nop                                           ; $72b6: $00
    ld b, l                                       ; $72b7: $45
    nop                                           ; $72b8: $00
    xor b                                         ; $72b9: $a8
    nop                                           ; $72ba: $00
    ld bc, $4200                                  ; $72bb: $01 $00 $42
    ld b, b                                       ; $72be: $40
    nop                                           ; $72bf: $00
    ld bc, $0318                                  ; $72c0: $01 $18 $03
    add e                                         ; $72c3: $83
    add a                                         ; $72c4: $87
    add h                                         ; $72c5: $84
    inc c                                         ; $72c6: $0c
    adc e                                         ; $72c7: $8b
    nop                                           ; $72c8: $00

jr_0a3_72c9:
    sbc b                                         ; $72c9: $98
    sub a                                         ; $72ca: $97
    inc e                                         ; $72cb: $1c
    sbc a                                         ; $72cc: $9f
    adc a                                         ; $72cd: $8f
    adc a                                         ; $72ce: $8f
    ld b, a                                       ; $72cf: $47
    rst $00                                       ; $72d0: $c7
    nop                                           ; $72d1: $00
    or c                                          ; $72d2: $b1
    pop de                                        ; $72d3: $d1
    rst $38                                       ; $72d4: $ff
    ld bc, $fe01                                  ; $72d5: $01 $01 $fe
    ld a, h                                       ; $72d8: $7c
    rst $38                                       ; $72d9: $ff
    nop                                           ; $72da: $00
    or e                                          ; $72db: $b3
    rst $08                                       ; $72dc: $cf
    sbc [hl]                                      ; $72dd: $9e
    rst $20                                       ; $72de: $e7
    ld a, b                                       ; $72df: $78

jr_0a3_72e0:
    rst $38                                       ; $72e0: $ff
    db $fd                                        ; $72e1: $fd
    db $db                                        ; $72e2: $db
    jr nc, jr_0a3_72e0                            ; $72e3: $30 $fb

    sbc $27                                       ; $72e5: $de $27
    jr nz, jr_0a3_72f0                            ; $72e7: $20 $07

    jr nc, @+$6e                                  ; $72e9: $30 $6c

    db $f4                                        ; $72eb: $f4
    cp a                                          ; $72ec: $bf
    ei                                            ; $72ed: $fb
    nop                                           ; $72ee: $00
    db $ed                                        ; $72ef: $ed

jr_0a3_72f0:
    sbc [hl]                                      ; $72f0: $9e
    db $fd                                        ; $72f1: $fd
    add [hl]                                      ; $72f2: $86
    ld e, l                                       ; $72f3: $5d
    cp [hl]                                       ; $72f4: $be
    db $e3                                        ; $72f5: $e3
    and e                                         ; $72f6: $a3
    nop                                           ; $72f7: $00
    ld h, b                                       ; $72f8: $60
    and b                                         ; $72f9: $a0
    ldh [$a0], a                                  ; $72fa: $e0 $a0
    rst $30                                       ; $72fc: $f7
    ret z                                         ; $72fd: $c8

    db $d3                                        ; $72fe: $d3
    db $ec                                        ; $72ff: $ec
    nop                                           ; $7300: $00
    ld a, a                                       ; $7301: $7f
    rst $38                                       ; $7302: $ff
    rst $28                                       ; $7303: $ef
    ld [hl], c                                    ; $7304: $71
    ld e, [hl]                                    ; $7305: $5e
    rst $18                                       ; $7306: $df
    add a                                         ; $7307: $87
    add a                                         ; $7308: $87
    nop                                           ; $7309: $00
    rlca                                          ; $730a: $07
    inc b                                         ; $730b: $04
    inc a                                         ; $730c: $3c
    ccf                                           ; $730d: $3f
    ld [bc], a                                    ; $730e: $02
    nop                                           ; $730f: $00
    ld b, c                                       ; $7310: $41
    nop                                           ; $7311: $00
    inc b                                         ; $7312: $04
    adc b                                         ; $7313: $88
    nop                                           ; $7314: $00
    ld d, l                                       ; $7315: $55
    nop                                           ; $7316: $00
    cp e                                          ; $7317: $bb
    adc h                                         ; $7318: $8c
    nop                                           ; $7319: $00
    cp a                                          ; $731a: $bf
    nop                                           ; $731b: $00
    nop                                           ; $731c: $00
    cp $01                                        ; $731d: $fe $01
    ldh [$a0], a                                  ; $731f: $e0 $a0
    db $e3                                        ; $7321: $e3
    and e                                         ; $7322: $a3
    db $ed                                        ; $7323: $ed
    xor [hl]                                      ; $7324: $ae
    nop                                           ; $7325: $00
    or [hl]                                       ; $7326: $b6
    reti                                          ; $7327: $d9


    ld l, l                                       ; $7328: $6d
    db $d3                                        ; $7329: $d3
    sub $ef                                       ; $732a: $d6 $ef
    dec l                                         ; $732c: $2d
    cp [hl]                                       ; $732d: $be
    nop                                           ; $732e: $00
    rst $38                                       ; $732f: $ff
    rst $38                                       ; $7330: $ff
    ld [hl], e                                    ; $7331: $73
    ld c, [hl]                                    ; $7332: $4e
    db $fd                                        ; $7333: $fd
    cp a                                          ; $7334: $bf
    sub $ef                                       ; $7335: $d6 $ef
    nop                                           ; $7337: $00
    cp e                                          ; $7338: $bb
    rst $00                                       ; $7339: $c7
    cp e                                          ; $733a: $bb

jr_0a3_733b:
    rst $00                                       ; $733b: $c7
    di                                            ; $733c: $f3
    adc a                                         ; $733d: $8f
    rst $30                                       ; $733e: $f7
    adc a                                         ; $733f: $8f
    ld [bc], a                                    ; $7340: $02
    rst $38                                       ; $7341: $ff
    rst $38                                       ; $7342: $ff
    nop                                           ; $7343: $00
    ld bc, $0101                                  ; $7344: $01 $01 $01
    inc b                                         ; $7347: $04
    jr jr_0a3_733b                                ; $7348: $18 $f1

    dec b                                         ; $734a: $05
    pop af                                        ; $734b: $f1
    ret z                                         ; $734c: $c8

    add hl, sp                                    ; $734d: $39
    and l                                         ; $734e: $a5
    ld e, l                                       ; $734f: $5d
    ret nc                                        ; $7350: $d0

    ld c, b                                       ; $7351: $48
    rst $38                                       ; $7352: $ff
    ret nc                                        ; $7353: $d0

    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    or $8f                                        ; $7356: $f6 $8f
    or l                                          ; $7358: $b5
    rst $08                                       ; $7359: $cf
    db $f4                                        ; $735a: $f4
    adc a                                         ; $735b: $8f
    or b                                          ; $735c: $b0
    rst $08                                       ; $735d: $cf
    nop                                           ; $735e: $00
    rst $38                                       ; $735f: $ff
    add b                                         ; $7360: $80
    cp [hl]                                       ; $7361: $be
    rst $00                                       ; $7362: $c7
    rst $38                                       ; $7363: $ff
    add l                                         ; $7364: $85
    cp [hl]                                       ; $7365: $be
    push bc                                       ; $7366: $c5
    nop                                           ; $7367: $00
    ld a, [c]                                     ; $7368: $f2
    rst $38                                       ; $7369: $ff
    rst $20                                       ; $736a: $e7
    rst $38                                       ; $736b: $ff
    ld [hl], a                                    ; $736c: $77
    rst $38                                       ; $736d: $ff
    nop                                           ; $736e: $00
    rst $38                                       ; $736f: $ff
    nop                                           ; $7370: $00
    rst $38                                       ; $7371: $ff
    inc h                                         ; $7372: $24
    cp a                                          ; $7373: $bf
    or $ff                                        ; $7374: $f6 $ff
    ld l, l                                       ; $7376: $6d
    or [hl]                                       ; $7377: $b6
    rst $38                                       ; $7378: $ff
    nop                                           ; $7379: $00
    call nz, $f5fd                                ; $737a: $c4 $fd $f5
    dec a                                         ; $737d: $3d
    ld a, $cf                                     ; $737e: $3e $cf
    adc a                                         ; $7380: $8f
    push af                                       ; $7381: $f5
    nop                                           ; $7382: $00
    ld h, [hl]                                    ; $7383: $66
    ei                                            ; $7384: $fb
    di                                            ; $7385: $f3
    dec a                                         ; $7386: $3d
    ld hl, sp-$61                                 ; $7387: $f8 $9f
    call Call_000_00ff                            ; $7389: $cd $ff $00
    and e                                         ; $738c: $a3
    nop                                           ; $738d: $00
    push bc                                       ; $738e: $c5
    nop                                           ; $738f: $00
    xor c                                         ; $7390: $a9
    nop                                           ; $7391: $00
    add c                                         ; $7392: $81
    nop                                           ; $7393: $00
    ld h, b                                       ; $7394: $60
    jp Jump_000_0004                              ; $7395: $c3 $04 $00


    ld [bc], a                                    ; $7398: $02
    ld [$80ff], sp                                ; $7399: $08 $ff $80
    or b                                          ; $739c: $b0
    rst $08                                       ; $739d: $cf
    ld a, [c]                                     ; $739e: $f2
    ld [$b78f], sp                                ; $739f: $08 $8f $b7
    rst $08                                       ; $73a2: $cf
    rst $30                                       ; $73a3: $f7
    ld b, h                                       ; $73a4: $44
    db $10                                        ; $73a5: $10
    cp a                                          ; $73a6: $bf
    jp nz, Jump_000_00ff                          ; $73a7: $c2 $ff $00

    nop                                           ; $73aa: $00
    jr nz, @+$01                                  ; $73ab: $20 $ff

    add sp, -$01                                  ; $73ad: $e8 $ff
    or b                                          ; $73af: $b0
    rst $38                                       ; $73b0: $ff
    cp b                                          ; $73b1: $b8
    add b                                         ; $73b2: $80
    ld b, h                                       ; $73b3: $44
    ld [$ef00], sp                                ; $73b4: $08 $00 $ef
    ld e, d                                       ; $73b7: $5a
    ld [$ebd7], a                                 ; $73b8: $ea $d7 $eb
    rla                                           ; $73bb: $17
    nop                                           ; $73bc: $00
    rst $18                                       ; $73bd: $df
    or a                                          ; $73be: $b7
    ld e, a                                       ; $73bf: $5f
    or a                                          ; $73c0: $b7
    rst $30                                       ; $73c1: $f7
    ld a, a                                       ; $73c2: $7f
    push af                                       ; $73c3: $f5
    db $fd                                        ; $73c4: $fd
    nop                                           ; $73c5: $00
    ld e, b                                       ; $73c6: $58
    reti                                          ; $73c7: $d9


    pop de                                        ; $73c8: $d1
    ld d, c                                       ; $73c9: $51
    ld bc, $8180                                  ; $73ca: $01 $80 $81
    nop                                           ; $73cd: $00
    ld b, d                                       ; $73ce: $42
    ld b, c                                       ; $73cf: $41
    inc b                                         ; $73d0: $04
    ld b, b                                       ; $73d1: $40
    rst $38                                       ; $73d2: $ff
    add h                                         ; $73d3: $84
    cp e                                          ; $73d4: $bb
    add $44                                       ; $73d5: $c6 $44
    ld [$20f6], sp                                ; $73d7: $08 $f6 $20
    adc a                                         ; $73da: $8f
    or d                                          ; $73db: $b2
    inc b                                         ; $73dc: $04
    nop                                           ; $73dd: $00
    or b                                          ; $73de: $b0
    rst $08                                       ; $73df: $cf
    ld a, e                                       ; $73e0: $7b
    sub $ff                                       ; $73e1: $d6 $ff
    nop                                           ; $73e3: $00
    sub $ff                                       ; $73e4: $d6 $ff
    nop                                           ; $73e6: $00
    nop                                           ; $73e7: $00
    rst $38                                       ; $73e8: $ff
    push de                                       ; $73e9: $d5
    rst $38                                       ; $73ea: $ff
    cp [hl]                                       ; $73eb: $be
    jr nz, @+$01                                  ; $73ec: $20 $ff

    cp d                                          ; $73ee: $ba
    adc b                                         ; $73ef: $88
    nop                                           ; $73f0: $00
    ldh [$61], a                                  ; $73f1: $e0 $61
    pop af                                        ; $73f3: $f1
    pop af                                        ; $73f4: $f1
    or b                                          ; $73f5: $b0
    ld b, b                                       ; $73f6: $40
    ld [hl], c                                    ; $73f7: $71
    inc b                                         ; $73f8: $04
    nop                                           ; $73f9: $00
    pop de                                        ; $73fa: $d1
    ld sp, hl                                     ; $73fb: $f9
    ret                                           ; $73fc: $c9


    xor b                                         ; $73fd: $a8
    reti                                          ; $73fe: $d9


    rst $38                                       ; $73ff: $ff
    nop                                           ; $7400: $00
    rst $38                                       ; $7401: $ff
    ld b, e                                       ; $7402: $43
    add b                                         ; $7403: $80
    ld b, c                                       ; $7404: $41
    add b                                         ; $7405: $80
    ld c, c                                       ; $7406: $49
    add b                                         ; $7407: $80
    ld d, l                                       ; $7408: $55
    nop                                           ; $7409: $00
    add b                                         ; $740a: $80
    ld a, e                                       ; $740b: $7b
    add b                                         ; $740c: $80
    ld d, a                                       ; $740d: $57
    add b                                         ; $740e: $80
    ld a, a                                       ; $740f: $7f
    add b                                         ; $7410: $80
    ld a, [hl]                                    ; $7411: $7e
    nop                                           ; $7412: $00
    add c                                         ; $7413: $81
    rst $38                                       ; $7414: $ff
    add c                                         ; $7415: $81
    cp a                                          ; $7416: $bf
    jp $85ff                                      ; $7417: $c3 $ff $85


    cp e                                          ; $741a: $bb
    inc c                                         ; $741b: $0c
    rst $00                                       ; $741c: $c7
    rst $38                                       ; $741d: $ff
    add b                                         ; $741e: $80
    add b                                         ; $741f: $80
    rlc c                                         ; $7420: $cb $01
    add hl, sp                                    ; $7422: $39
    nop                                           ; $7423: $00
    nop                                           ; $7424: $00
    ei                                            ; $7425: $fb
    ld b, $5c                                     ; $7426: $06 $5c
    ld a, a                                       ; $7428: $7f
    call nc, $d4ff                                ; $7429: $d4 $ff $d4
    ld b, h                                       ; $742c: $44
    ld [$0810], sp                                ; $742d: $08 $10 $08
    dec [hl]                                      ; $7430: $35
    ld [bc], a                                    ; $7431: $02
    rst $38                                       ; $7432: $ff
    dec l                                         ; $7433: $2d
    rst $38                                       ; $7434: $ff
    ccf                                           ; $7435: $3f
    rst $38                                       ; $7436: $ff
    jr nz, jr_0a3_7442                            ; $7437: $20 $09

    ld bc, $00fe                                  ; $7439: $01 $fe $00
    dec hl                                        ; $743c: $2b
    push de                                       ; $743d: $d5
    ccf                                           ; $743e: $3f
    rst $38                                       ; $743f: $ff

Jump_0a3_7440:
    rla                                           ; $7440: $17
    ld a, d                                       ; $7441: $7a

jr_0a3_7442:
    rst $38                                       ; $7442: $ff
    ld d, a                                       ; $7443: $57
    ret nz                                        ; $7444: $c0

    ld [bc], a                                    ; $7445: $02
    nop                                           ; $7446: $00
    sbc h                                         ; $7447: $9c
    ld [$f8df], sp                                ; $7448: $08 $df $f8
    rst $38                                       ; $744b: $ff
    ld d, b                                       ; $744c: $50
    ld a, a                                       ; $744d: $7f
    ret nc                                        ; $744e: $d0

    inc e                                         ; $744f: $1c
    sub $ff                                       ; $7450: $d6 $ff
    cp h                                          ; $7452: $bc
    ld [bc], a                                    ; $7453: $02
    nop                                           ; $7454: $00
    xor h                                         ; $7455: $ac
    ld [$1802], sp                                ; $7456: $08 $02 $18
    rra                                           ; $7459: $1f
    pop hl                                        ; $745a: $e1
    ld hl, $e31d                                  ; $745b: $21 $1d $e3
    inc b                                         ; $745e: $04
    ld [$01ff], sp                                ; $745f: $08 $ff $01
    db $fd                                        ; $7462: $fd
    inc bc                                        ; $7463: $03
    inc b                                         ; $7464: $04
    db $10                                        ; $7465: $10
    inc bc                                        ; $7466: $03
    nop                                           ; $7467: $00
    add d                                         ; $7468: $82
    rst $38                                       ; $7469: $ff
    set 7, a                                      ; $746a: $cb $ff

jr_0a3_746c:
    cp a                                          ; $746c: $bf
    ld [bc], a                                    ; $746d: $02
    nop                                           ; $746e: $00
    inc d                                         ; $746f: $14
    ld bc, $0c10                                  ; $7470: $01 $10 $0c
    rst $38                                       ; $7473: $ff
    dec e                                         ; $7474: $1d
    sbc h                                         ; $7475: $9c
    ld [$ffe2], sp                                ; $7476: $08 $e2 $ff
    ld e, [hl]                                    ; $7479: $5e
    rst $38                                       ; $747a: $ff
    ld b, h                                       ; $747b: $44
    ld d, [hl]                                    ; $747c: $56
    inc h                                         ; $747d: $24
    add hl, bc                                    ; $747e: $09
    ld b, b                                       ; $747f: $40
    rst $38                                       ; $7480: $ff
    ld l, l                                       ; $7481: $6d
    xor h                                         ; $7482: $ac
    ld [$ffc0], sp                                ; $7483: $08 $c0 $ff
    ld l, h                                       ; $7486: $6c
    and b                                         ; $7487: $a0
    ld [bc], a                                    ; $7488: $02
    nop                                           ; $7489: $00
    ld b, h                                       ; $748a: $44
    jr nz, jr_0a3_748e                            ; $748b: $20 $01

    ld b, b                                       ; $748d: $40

jr_0a3_748e:
    jr jr_0a3_74d4                                ; $748e: $18 $44

jr_0a3_7490:
    jr z, jr_0a3_7490                             ; $7490: $28 $fe

    cpl                                           ; $7492: $2f
    ld a, [hl+]                                   ; $7493: $2a
    db $dd                                        ; $7494: $dd
    ccf                                           ; $7495: $3f
    ret nc                                        ; $7496: $d0

    ld [$5842], sp                                ; $7497: $08 $42 $58

jr_0a3_749a:
    ld bc, $58e7                                  ; $749a: $01 $e7 $58
    ld bc, $00fb                                  ; $749d: $01 $fb $00
    rst $18                                       ; $74a0: $df
    cp $d9                                        ; $74a1: $fe $d9
    rst $38                                       ; $74a3: $ff
    nop                                           ; $74a4: $00
    ld [$feff], sp                                ; $74a5: $08 $ff $fe
    ld sp, $adff                                  ; $74a8: $31 $ff $ad
    ld [bc], a                                    ; $74ab: $02
    nop                                           ; $74ac: $00
    ld a, b                                       ; $74ad: $78
    jr z, jr_0a3_74b0                             ; $74ae: $28 $00

jr_0a3_74b0:
    rst $38                                       ; $74b0: $ff
    ld l, e                                       ; $74b1: $6b
    ldh a, [rP1]                                  ; $74b2: $f0 $00
    inc c                                         ; $74b4: $0c
    cp [hl]                                       ; $74b5: $be
    rst $38                                       ; $74b6: $ff
    ldh [rIE], a                                  ; $74b7: $e0 $ff
    ld a, b                                       ; $74b9: $78
    jr jr_0a3_7500                                ; $74ba: $18 $44

    ld b, b                                       ; $74bc: $40
    db $10                                        ; $74bd: $10
    rst $38                                       ; $74be: $ff
    inc c                                         ; $74bf: $0c
    ld d, l                                       ; $74c0: $55
    cp e                                          ; $74c1: $bb
    rst $38                                       ; $74c2: $ff
    ld a, a                                       ; $74c3: $7f
    db $db                                        ; $74c4: $db
    db $10                                        ; $74c5: $10
    ldh [rNR10], a                                ; $74c6: $e0 $10
    jr nz, @+$01                                  ; $74c8: $20 $ff

    inc b                                         ; $74ca: $04
    or d                                          ; $74cb: $b2
    ei                                            ; $74cc: $fb
    ld l, [hl]                                    ; $74cd: $6e
    rst $30                                       ; $74ce: $f7
    ld a, [hl]                                    ; $74cf: $7e
    db $10                                        ; $74d0: $10
    jr nc, jr_0a3_74d3                            ; $74d1: $30 $00

jr_0a3_74d3:
    rst $38                                       ; $74d3: $ff

jr_0a3_74d4:
    rlca                                          ; $74d4: $07
    ld e, b                                       ; $74d5: $58
    ld a, a                                       ; $74d6: $7f
    ret z                                         ; $74d7: $c8

    rst $30                                       ; $74d8: $f7
    ret c                                         ; $74d9: $d8

    jr nz, @+$32                                  ; $74da: $20 $30

    cp b                                          ; $74dc: $b8
    jr z, jr_0a3_746c                             ; $74dd: $28 $8d

    ld [bc], a                                    ; $74df: $02
    add b                                         ; $74e0: $80
    db $10                                        ; $74e1: $10
    add hl, bc                                    ; $74e2: $09
    db $fd                                        ; $74e3: $fd
    ld [bc], a                                    ; $74e4: $02
    xor [hl]                                      ; $74e5: $ae
    ld d, c                                       ; $74e6: $51
    ld e, h                                       ; $74e7: $5c
    and e                                         ; $74e8: $a3
    ld [hl-], a                                   ; $74e9: $32
    ld [bc], a                                    ; $74ea: $02
    call $db24                                    ; $74eb: $cd $24 $db
    adc c                                         ; $74ee: $89
    rst $38                                       ; $74ef: $ff
    rst $10                                       ; $74f0: $d7
    ld [hl+], a                                   ; $74f1: $22
    add hl, bc                                    ; $74f2: $09
    rst $38                                       ; $74f3: $ff
    nop                                           ; $74f4: $00
    ld b, $f9                                     ; $74f5: $06 $f9
    xor l                                         ; $74f7: $ad
    jp nc, $fd02                                  ; $74f8: $d2 $02 $fd

    sub b                                         ; $74fb: $90
    rst $38                                       ; $74fc: $ff
    db $10                                        ; $74fd: $10
    ld b, l                                       ; $74fe: $45
    rst $38                                       ; $74ff: $ff

jr_0a3_7500:
    adc e                                         ; $7500: $8b

Call_0a3_7501:
    db $10                                        ; $7501: $10
    db $10                                        ; $7502: $10
    ldh a, [rIF]                                  ; $7503: $f0 $0f
    ld c, b                                       ; $7505: $48
    or a                                          ; $7506: $b7
    jr jr_0a3_749a                                ; $7507: $18 $91

    ld l, a                                       ; $7509: $6f
    ld [bc], a                                    ; $750a: $02
    jr z, jr_0a3_750e                             ; $750b: $28 $01

    inc c                                         ; $750d: $0c

jr_0a3_750e:
    dec bc                                        ; $750e: $0b
    ld a, d                                       ; $750f: $7a
    add l                                         ; $7510: $85
    or a                                          ; $7511: $b7
    nop                                           ; $7512: $00
    ld a, b                                       ; $7513: $78
    ret nc                                        ; $7514: $d0

    ld h, b                                       ; $7515: $60
    ld h, e                                       ; $7516: $63
    ret nz                                        ; $7517: $c0

    cp l                                          ; $7518: $bd
    ret nz                                        ; $7519: $c0

    sbc $00                                       ; $751a: $de $00
    ld hl, $5fa9                                  ; $751c: $21 $a9 $5f
    rst $30                                       ; $751f: $f7
    ld c, $7f                                     ; $7520: $0e $7f
    add d                                         ; $7522: $82
    jp $fc00                                      ; $7523: $c3 $00 $fc


    ld e, [hl]                                    ; $7526: $5e
    cp c                                          ; $7527: $b9
    cp e                                          ; $7528: $bb
    call nz, $a0df                                ; $7529: $c4 $df $a0
    rst $38                                       ; $752c: $ff
    pop bc                                        ; $752d: $c1
    jr nc, jr_0a3_7532                            ; $752e: $30 $02

    ld h, $19                                     ; $7530: $26 $19

jr_0a3_7532:
    rst $28                                       ; $7532: $ef
    db $10                                        ; $7533: $10
    rst $38                                       ; $7534: $ff
    nop                                           ; $7535: $00
    ld a, a                                       ; $7536: $7f
    ld c, $10                                     ; $7537: $0e $10
    ld de, $02fd                                  ; $7539: $11 $fd $02
    rst $28                                       ; $753c: $ef
    jr c, jr_0a3_7560                             ; $753d: $38 $21

    cp a                                          ; $753f: $bf
    ld b, b                                       ; $7540: $40
    ei                                            ; $7541: $fb
    ld b, d                                       ; $7542: $42
    ld hl, $1aa4                                  ; $7543: $21 $a4 $1a
    ld [$4efd], sp                                ; $7546: $08 $fd $4e
    ld de, $04fb                                  ; $7549: $11 $fb $04
    inc h                                         ; $754c: $24
    jr @-$03                                      ; $754d: $18 $fb

    inc b                                         ; $754f: $04
    nop                                           ; $7550: $00
    sbc $21                                       ; $7551: $de $21
    ldh a, [rIF]                                  ; $7553: $f0 $0f
    db $eb                                        ; $7555: $eb
    ld de, $20d1                                  ; $7556: $11 $d1 $20
    dec sp                                        ; $7559: $3b
    rst $28                                       ; $755a: $ef
    jr nc, jr_0a3_75d5                            ; $755b: $30 $78

    ld bc, $0094                                  ; $755d: $01 $94 $00

jr_0a3_7560:
    ld b, h                                       ; $7560: $44

jr_0a3_7561:
    ld [$72fe], sp                                ; $7561: $08 $fe $72
    ld hl, $080e                                  ; $7564: $21 $0e $08
    ret nz                                        ; $7567: $c0

    ld h, a                                       ; $7568: $67
    inc bc                                        ; $7569: $03
    ld e, b                                       ; $756a: $58
    jr nz, @-$33                                  ; $756b: $20 $cb

    inc a                                         ; $756d: $3c
    xor $17                                       ; $756e: $ee $17
    rst $30                                       ; $7570: $f7
    ld [$fe30], sp                                ; $7571: $08 $30 $fe
    ld bc, $183c                                  ; $7574: $01 $3c $18
    ld a, [bc]                                    ; $7577: $0a
    ld a, [bc]                                    ; $7578: $0a
    dec c                                         ; $7579: $0d
    ld a, [c]                                     ; $757a: $f2
    ld d, d                                       ; $757b: $52
    db $ed                                        ; $757c: $ed
    ld [bc], a                                    ; $757d: $02
    nop                                           ; $757e: $00
    rst $38                                       ; $757f: $ff
    jr z, jr_0a3_7561                             ; $7580: $28 $df

    ld [de], a                                    ; $7582: $12
    rst $38                                       ; $7583: $ff
    rst $08                                       ; $7584: $cf

jr_0a3_7585:
    ld [bc], a                                    ; $7585: $02
    rst $38                                       ; $7586: $ff
    ld [bc], a                                    ; $7587: $02
    ld a, a                                       ; $7588: $7f
    add b                                         ; $7589: $80
    xor [hl]                                      ; $758a: $ae
    ld d, c                                       ; $758b: $51
    ld e, l                                       ; $758c: $5d
    and d                                         ; $758d: $a2
    ret nc                                        ; $758e: $d0

    jr c, @-$54                                   ; $758f: $38 $aa

    xor h                                         ; $7591: $ac
    ret nc                                        ; $7592: $d0

    nop                                           ; $7593: $00

jr_0a3_7594:
    dec l                                         ; $7594: $2d
    ret nc                                        ; $7595: $d0

    ld b, b                                       ; $7596: $40
    xor d                                         ; $7597: $aa
    ret nc                                        ; $7598: $d0

    ld h, b                                       ; $7599: $60
    ld e, d                                       ; $759a: $5a
    jr jr_0a3_7594                                ; $759b: $18 $f7

    ld [$e080], sp                                ; $759d: $08 $80 $e0
    add hl, hl                                    ; $75a0: $29
    db $fd                                        ; $75a1: $fd
    ld [bc], a                                    ; $75a2: $02
    add d                                         ; $75a3: $82
    ld a, l                                       ; $75a4: $7d
    ld b, h                                       ; $75a5: $44
    add e                                         ; $75a6: $83
    ret nc                                        ; $75a7: $d0

    ld hl, $fc00                                  ; $75a8: $21 $00 $fc
    jp nz, $1a00                                  ; $75ab: $c2 $00 $1a

    push hl                                       ; $75ae: $e5
    cp h                                          ; $75af: $bc
    ld a, a                                       ; $75b0: $7f
    ld hl, sp+$09                                 ; $75b1: $f8 $09
    nop                                           ; $75b3: $00
    cpl                                           ; $75b4: $2f
    ret nc                                        ; $75b5: $d0

    ld d, a                                       ; $75b6: $57
    jr z, @+$61                                   ; $75b7: $28 $5f

    jr nz, jr_0a3_763a                            ; $75b9: $20 $7f

    ret nz                                        ; $75bb: $c0

    inc c                                         ; $75bc: $0c
    or a                                          ; $75bd: $b7
    ret z                                         ; $75be: $c8

    call $b432                                    ; $75bf: $cd $32 $b4
    ld [bc], a                                    ; $75c2: $02
    cp h                                          ; $75c3: $bc
    jr nc, jr_0a3_7585                            ; $75c4: $30 $bf

jr_0a3_75c6:
    ld b, b                                       ; $75c6: $40
    adc d                                         ; $75c7: $8a
    ret z                                         ; $75c8: $c8

    ld [$01fe], sp                                ; $75c9: $08 $fe $01
    ld a, a                                       ; $75cc: $7f
    inc e                                         ; $75cd: $1c
    ld [de], a                                    ; $75ce: $12
    db $ed                                        ; $75cf: $ed
    or $00                                        ; $75d0: $f6 $00
    rst $38                                       ; $75d2: $ff
    nop                                           ; $75d3: $00
    nop                                           ; $75d4: $00

jr_0a3_75d5:
    ld h, a                                       ; $75d5: $67
    add d                                         ; $75d6: $82
    ld c, h                                       ; $75d7: $4c
    add e                                         ; $75d8: $83

jr_0a3_75d9:
    cp [hl]                                       ; $75d9: $be
    pop bc                                        ; $75da: $c1
    ldh [rP1], a                                  ; $75db: $e0 $00
    ld a, a                                       ; $75dd: $7f
    ld l, [hl]                                    ; $75de: $6e
    sbc a                                         ; $75df: $9f
    push af                                       ; $75e0: $f5
    ld a, [bc]                                    ; $75e1: $0a
    cp $01                                        ; $75e2: $fe $01
    rst $38                                       ; $75e4: $ff
    nop                                           ; $75e5: $00
    nop                                           ; $75e6: $00
    rla                                           ; $75e7: $17
    ld [$0cfb], sp                                ; $75e8: $08 $fb $0c
    rst $20                                       ; $75eb: $e7
    ld hl, sp-$6b                                 ; $75ec: $f8 $95
    nop                                           ; $75ee: $00
    ld a, [bc]                                    ; $75ef: $0a
    ld a, e                                       ; $75f0: $7b
    add h                                         ; $75f1: $84
    or l                                          ; $75f2: $b5
    adc $bb                                       ; $75f3: $ce $bb
    ld a, h                                       ; $75f5: $7c
    rst $28                                       ; $75f6: $ef
    daa                                           ; $75f7: $27
    db $10                                        ; $75f8: $10
    xor d                                         ; $75f9: $aa
    or b                                          ; $75fa: $b0
    ld h, b                                       ; $75fb: $60
    xor d                                         ; $75fc: $aa
    rst $38                                       ; $75fd: $ff
    add b                                         ; $75fe: $80
    ld e, c                                       ; $75ff: $59
    or b                                          ; $7600: $b0
    ld [$4980], sp                                ; $7601: $08 $80 $49
    nop                                           ; $7604: $00
    ld h, c                                       ; $7605: $61
    add b                                         ; $7606: $80
    ld c, h                                       ; $7607: $4c
    add b                                         ; $7608: $80
    sbc e                                         ; $7609: $9b
    ld h, b                                       ; $760a: $60
    ld d, [hl]                                    ; $760b: $56
    cp c                                          ; $760c: $b9
    jr nc, jr_0a3_75c6                            ; $760d: $30 $b7

    ld c, a                                       ; $760f: $4f
    jr z, @+$0b                                   ; $7610: $28 $09

    add [hl]                                      ; $7612: $86
    ld a, [de]                                    ; $7613: $1a
    ei                                            ; $7614: $fb
    nop                                           ; $7615: $00
    rst $18                                       ; $7616: $df
    jr nz, jr_0a3_75d9                            ; $7617: $20 $c0

    ld a, [bc]                                    ; $7619: $0a
    jr nz, jr_0a3_765e                            ; $761a: $20 $42

    ld bc, $42bd                                  ; $761c: $01 $bd $42
    ld h, e                                       ; $761f: $63
    sbc h                                         ; $7620: $9c
    db $dd                                        ; $7621: $dd
    ld [hl+], a                                   ; $7622: $22
    nop                                           ; $7623: $00
    and h                                         ; $7624: $a4
    ld b, e                                       ; $7625: $43
    db $ed                                        ; $7626: $ed
    ld b, d                                       ; $7627: $42
    reti                                          ; $7628: $d9


    ld h, [hl]                                    ; $7629: $66
    cp e                                          ; $762a: $bb
    ld a, h                                       ; $762b: $7c
    nop                                           ; $762c: $00
    rst $38                                       ; $762d: $ff
    nop                                           ; $762e: $00
    db $f4                                        ; $762f: $f4
    dec bc                                        ; $7630: $0b
    ld a, [$ed04]                                 ; $7631: $fa $04 $ed
    ld d, $00                                     ; $7634: $16 $00
    add d                                         ; $7636: $82
    ld a, a                                       ; $7637: $7f
    ld c, c                                       ; $7638: $49
    add a                                         ; $7639: $87

jr_0a3_763a:
    and a                                         ; $763a: $a7
    ld [bc], a                                    ; $763b: $02
    rst $18                                       ; $763c: $df
    ld [bc], a                                    ; $763d: $02
    nop                                           ; $763e: $00
    rlca                                          ; $763f: $07
    ld hl, sp-$75                                 ; $7640: $f8 $8b
    inc b                                         ; $7642: $04
    dec hl                                        ; $7643: $2b
    inc b                                         ; $7644: $04
    ld [hl], a                                    ; $7645: $77
    ld [$db00], sp                                ; $7646: $08 $00 $db
    inc [hl]                                      ; $7649: $34
    rst $00                                       ; $764a: $c7
    ld hl, sp+$13                                 ; $764b: $f8 $13
    inc c                                         ; $764d: $0c
    push bc                                       ; $764e: $c5
    ld [bc], a                                    ; $764f: $02
    add b                                         ; $7650: $80
    ld [$f808], a                                 ; $7651: $ea $08 $f8
    rlca                                          ; $7654: $07
    call nc, $a928                                ; $7655: $d4 $28 $a9
    ld d, b                                       ; $7658: $50
    or $10                                        ; $7659: $f6 $10
    rrca                                          ; $765b: $0f
    xor $11                                       ; $765c: $ee $11

jr_0a3_765e:
    xor $08                                       ; $765e: $ee $08
    ld b, l                                       ; $7660: $45
    add d                                         ; $7661: $82
    ld e, [hl]                                    ; $7662: $5e
    pop hl                                        ; $7663: $e1
    nop                                           ; $7664: $00
    xor [hl]                                      ; $7665: $ae
    ld a, a                                       ; $7666: $7f
    sbc l                                         ; $7667: $9d
    ld h, d                                       ; $7668: $62
    add sp, -$01                                  ; $7669: $e8 $ff
    ld [bc], a                                    ; $766b: $02
    ld bc, $4e00                                  ; $766c: $01 $00 $4e
    ld bc, $18e7                                  ; $766f: $01 $e7 $18
    sla h                                         ; $7672: $cb $24
    and l                                         ; $7674: $a5
    ld b, d                                       ; $7675: $42
    nop                                           ; $7676: $00
    dec c                                         ; $7677: $0d
    ld a, [c]                                     ; $7678: $f2
    ld a, [de]                                    ; $7679: $1a
    dec a                                         ; $767a: $3d
    db $ed                                        ; $767b: $ed
    ld [de], a                                    ; $767c: $12
    rst $18                                       ; $767d: $df
    ldh [rSB], a                                  ; $767e: $e0 $01
    ld l, a                                       ; $7680: $6f
    sub b                                         ; $7681: $90
    ld d, l                                       ; $7682: $55
    xor d                                         ; $7683: $aa
    nop                                           ; $7684: $00
    add b                                         ; $7685: $80
    ccf                                           ; $7686: $3f
    ld [bc], a                                    ; $7687: $02
    nop                                           ; $7688: $00
    ld b, d                                       ; $7689: $42
    jr nc, jr_0a3_768e                            ; $768a: $30 $02

    nop                                           ; $768c: $00
    inc sp                                        ; $768d: $33

jr_0a3_768e:
    add a                                         ; $768e: $87
    dec a                                         ; $768f: $3d
    adc [hl]                                      ; $7690: $8e
    sub $08                                       ; $7691: $d6 $08
    cp $04                                        ; $7693: $fe $04
    ld bc, $21de                                  ; $7695: $01 $de $21
    ei                                            ; $7698: $fb
    inc b                                         ; $7699: $04
    sbc $08                                       ; $769a: $de $08
    rst $38                                       ; $769c: $ff
    nop                                           ; $769d: $00
    nop                                           ; $769e: $00
    pop af                                        ; $769f: $f1
    rrca                                          ; $76a0: $0f
    db $eb                                        ; $76a1: $eb
    db $fc                                        ; $76a2: $fc
    sub h                                         ; $76a3: $94
    ld [$08ff], sp                                ; $76a4: $08 $ff $08
    nop                                           ; $76a7: $00
    ld h, l                                       ; $76a8: $65
    sbc [hl]                                      ; $76a9: $9e
    cp d                                          ; $76aa: $ba
    ld a, a                                       ; $76ab: $7f
    ld l, l                                       ; $76ac: $6d
    sub e                                         ; $76ad: $93
    ld a, [$0505]                                 ; $76ae: $fa $05 $05
    push de                                       ; $76b1: $d5
    xor d                                         ; $76b2: $aa
    ld a, a                                       ; $76b3: $7f
    add b                                         ; $76b4: $80
    ret                                           ; $76b5: $c9


    add h                                         ; $76b6: $84
    inc bc                                        ; $76b7: $03
    rst $30                                       ; $76b8: $f7
    add [hl]                                      ; $76b9: $86
    inc bc                                        ; $76ba: $03
    inc bc                                        ; $76bb: $03
    ret                                           ; $76bc: $c9


    add b                                         ; $76bd: $80
    ld a, $c1                                     ; $76be: $3e $c1
    inc [hl]                                      ; $76c0: $34
    add h                                         ; $76c1: $84
    ld a, [hl-]                                   ; $76c2: $3a
    ld [$3804], sp                                ; $76c3: $08 $04 $38
    nop                                           ; $76c6: $00
    ld c, b                                       ; $76c7: $48
    sub e                                         ; $76c8: $93
    ld h, [hl]                                    ; $76c9: $66
    sbc c                                         ; $76ca: $99
    and $7f                                       ; $76cb: $e6 $7f
    and l                                         ; $76cd: $a5
    ld b, d                                       ; $76ce: $42
    nop                                           ; $76cf: $00
    db $dd                                        ; $76d0: $dd
    ld h, d                                       ; $76d1: $62
    ld [hl], d                                    ; $76d2: $72
    cp a                                          ; $76d3: $bf
    rst $28                                       ; $76d4: $ef
    inc e                                         ; $76d5: $1c
    rst $18                                       ; $76d6: $df
    jr nz, jr_0a3_76d9                            ; $76d7: $20 $00

jr_0a3_76d9:
    ld d, h                                       ; $76d9: $54
    xor a                                         ; $76da: $af
    add hl, bc                                    ; $76db: $09
    dec de                                        ; $76dc: $1b
    or $1e                                        ; $76dd: $f6 $1e
    di                                            ; $76df: $f3
    dec e                                         ; $76e0: $1d
    nop                                           ; $76e1: $00
    ld [hl-], a                                   ; $76e2: $32
    dec a                                         ; $76e3: $3d
    ld a, e                                       ; $76e4: $7b
    ccf                                           ; $76e5: $3f
    inc c                                         ; $76e6: $0c
    ld c, $8f                                     ; $76e7: $0e $8f
    add h                                         ; $76e9: $84
    nop                                           ; $76ea: $00
    jp z, $a8f5                                   ; $76eb: $ca $f5 $a8

    jr c, @-$6f                                   ; $76ee: $38 $8f

    ld [$b17e], sp                                ; $76f0: $08 $7e $b1
    nop                                           ; $76f3: $00
    ret nz                                        ; $76f4: $c0

    sub c                                         ; $76f5: $91
    ld [hl], e                                    ; $76f6: $73
    ldh [$3b], a                                  ; $76f7: $e0 $3b
    ld a, c                                       ; $76f9: $79
    xor c                                         ; $76fa: $a9
    dec c                                         ; $76fb: $0d
    nop                                           ; $76fc: $00
    xor d                                         ; $76fd: $aa
    ld d, l                                       ; $76fe: $55
    nop                                           ; $76ff: $00
    ld bc, $01fc                                  ; $7700: $01 $fc $01

Call_0a3_7703:
    db $fc                                        ; $7703: $fc
    ld b, c                                       ; $7704: $41
    nop                                           ; $7705: $00
    adc h                                         ; $7706: $8c
    ld b, c                                       ; $7707: $41
    adc h                                         ; $7708: $8c
    add c                                         ; $7709: $81
    inc c                                         ; $770a: $0c
    ld bc, $010c                                  ; $770b: $01 $0c $01
    nop                                           ; $770e: $00
    ld b, $c5                                     ; $770f: $06 $c5
    add [hl]                                      ; $7711: $86
    ld b, e                                       ; $7712: $43
    add $43                                       ; $7713: $c6 $43
    add l                                         ; $7715: $85
    ld b, [hl]                                    ; $7716: $46
    nop                                           ; $7717: $00
    adc d                                         ; $7718: $8a
    call z, Call_000_0099                         ; $7719: $cc $99 $00
    db $ec                                        ; $771c: $ec
    sub e                                         ; $771d: $93
    ld c, c                                       ; $771e: $49
    halt                                          ; $771f: $76
    nop                                           ; $7720: $00
    ld h, $26                                     ; $7721: $26 $26
    dec h                                         ; $7723: $25
    ld d, b                                       ; $7724: $50
    adc b                                         ; $7725: $88
    rst $38                                       ; $7726: $ff
    ld [hl], b                                    ; $7727: $70
    adc b                                         ; $7728: $88
    nop                                           ; $7729: $00
    ldh [rNR41], a                                ; $772a: $e0 $20
    ret nz                                        ; $772c: $c0

    nop                                           ; $772d: $00
    ld b, b                                       ; $772e: $40
    ret nz                                        ; $772f: $c0

    nop                                           ; $7730: $00
    add b                                         ; $7731: $80
    nop                                           ; $7732: $00
    inc c                                         ; $7733: $0c
    ld bc, $01ec                                  ; $7734: $01 $ec $01
    xor h                                         ; $7737: $ac
    pop hl                                        ; $7738: $e1

jr_0a3_7739:
    inc c                                         ; $7739: $0c
    ld h, c                                       ; $773a: $61
    ret nz                                        ; $773b: $c0

    inc l                                         ; $773c: $2c
    ld [$0830], sp                                ; $773d: $08 $30 $08
    or a                                          ; $7740: $b7
    ret z                                         ; $7741: $c8

    ld c, e                                       ; $7742: $4b
    inc [hl]                                      ; $7743: $34
    rla                                           ; $7744: $17

jr_0a3_7745:
    ld [$0b00], sp                                ; $7745: $08 $00 $0b
    inc b                                         ; $7748: $04
    di                                            ; $7749: $f3
    inc c                                         ; $774a: $0c
    rst $20                                       ; $774b: $e7
    jr jr_0a3_7739                                ; $774c: $18 $eb

    db $f4                                        ; $774e: $f4
    call nz, Call_000_04b9                        ; $774f: $c4 $b9 $04
    ld e, $04                                     ; $7752: $1e $04
    pop bc                                        ; $7754: $c1
    add b                                         ; $7755: $80
    ld [hl], a                                    ; $7756: $77
    and h                                         ; $7757: $a4
    nop                                           ; $7758: $00
    ld c, c                                       ; $7759: $49
    add b                                         ; $775a: $80
    dec c                                         ; $775b: $0d
    rst $38                                       ; $775c: $ff
    add b                                         ; $775d: $80
    ld a, [hl+]                                   ; $775e: $2a
    push de                                       ; $775f: $d5
    sbc [hl]                                      ; $7760: $9e
    jr jr_0a3_7745                                ; $7761: $18 $e2

    ld [$2100], sp                                ; $7763: $08 $00 $21
    inc c                                         ; $7766: $0c
    inc h                                         ; $7767: $24
    rst $38                                       ; $7768: $ff
    xor e                                         ; $7769: $ab
    ld e, d                                       ; $776a: $5a
    inc b                                         ; $776b: $04
    xor e                                         ; $776c: $ab
    rst $38                                       ; $776d: $ff
    scf                                           ; $776e: $37
    inc b                                         ; $776f: $04
    rst $38                                       ; $7770: $ff
    xor c                                         ; $7771: $a9
    ld [$95d7], sp                                ; $7772: $08 $d7 $95
    db $eb                                        ; $7775: $eb
    add c                                         ; $7776: $81
    ld hl, sp+$33                                 ; $7777: $f8 $33
    cp $01                                        ; $7779: $fe $01
    db $dd                                        ; $777b: $dd
    nop                                           ; $777c: $00
    ld [hl+], a                                   ; $777d: $22
    ld [hl], b                                    ; $777e: $70
    adc a                                         ; $777f: $8f
    adc [hl]                                      ; $7780: $8e
    ld [hl], c                                    ; $7781: $71
    ld [hl-], a                                   ; $7782: $32
    add hl, de                                    ; $7783: $19
    jr jr_0a3_7786                                ; $7784: $18 $00

jr_0a3_7786:
    rla                                           ; $7786: $17
    ld bc, $f818                                  ; $7787: $01 $18 $f8
    db $10                                        ; $778a: $10
    db $e4                                        ; $778b: $e4
    jr nc, @+$0a                                  ; $778c: $30 $08

    ld h, b                                       ; $778e: $60
    ld [bc], a                                    ; $778f: $02
    inc e                                         ; $7790: $1c
    ld c, $e3                                     ; $7791: $0e $e3
    dec b                                         ; $7793: $05
    add b                                         ; $7794: $80
    ldh [rLCDC], a                                ; $7795: $e0 $40
    rst $18                                       ; $7797: $df
    and b                                         ; $7798: $a0
    ld a, [de]                                    ; $7799: $1a
    ld e, a                                       ; $779a: $5f
    ld b, b                                       ; $779b: $40
    jr c, @+$53                                   ; $779c: $38 $51

    inc c                                         ; $779e: $0c
    ld [hl], d                                    ; $779f: $72
    ld [de], a                                    ; $77a0: $12
    push de                                       ; $77a1: $d5
    dec bc                                        ; $77a2: $0b
    inc bc                                        ; $77a3: $03
    cp a                                          ; $77a4: $bf
    ld [bc], a                                    ; $77a5: $02
    ret nz                                        ; $77a6: $c0

    xor d                                         ; $77a7: $aa
    ret nz                                        ; $77a8: $c0

    or l                                          ; $77a9: $b5
    ret nz                                        ; $77aa: $c0

    rst $18                                       ; $77ab: $df
    or c                                          ; $77ac: $b1
    inc bc                                        ; $77ad: $03
    xor e                                         ; $77ae: $ab
    nop                                           ; $77af: $00
    rst $38                                       ; $77b0: $ff
    ld d, l                                       ; $77b1: $55
    rst $38                                       ; $77b2: $ff
    ld bc, $fdff                                  ; $77b3: $01 $ff $fd
    inc bc                                        ; $77b6: $03
    xor l                                         ; $77b7: $ad
    nop                                           ; $77b8: $00
    inc bc                                        ; $77b9: $03
    ld d, l                                       ; $77ba: $55
    inc bc                                        ; $77bb: $03
    ei                                            ; $77bc: $fb
    rlca                                          ; $77bd: $07
    nop                                           ; $77be: $00
    rst $38                                       ; $77bf: $ff
    add hl, bc                                    ; $77c0: $09
    nop                                           ; $77c1: $00
    or $92                                        ; $77c2: $f6 $92
    ld l, l                                       ; $77c4: $6d
    push bc                                       ; $77c5: $c5
    ld a, [hl-]                                   ; $77c6: $3a
    cp e                                          ; $77c7: $bb
    ld b, h                                       ; $77c8: $44
    rst $38                                       ; $77c9: $ff
    ld c, $00                                     ; $77ca: $0e $00
    or a                                          ; $77cc: $b7
    nop                                           ; $77cd: $00
    xor l                                         ; $77ce: $ad
    inc hl                                        ; $77cf: $23
    ld b, $26                                     ; $77d0: $06 $26
    ld d, $04                                     ; $77d2: $16 $04
    db $10                                        ; $77d4: $10
    adc d                                         ; $77d5: $8a
    db $10                                        ; $77d6: $10
    adc d                                         ; $77d7: $8a
    rrca                                          ; $77d8: $0f
    adc l                                         ; $77d9: $8d
    ldh a, [$2d]                                  ; $77da: $f0 $2d
    jr jr_0a3_77f6                                ; $77dc: $18 $18

    inc a                                         ; $77de: $3c
    inc h                                         ; $77df: $24
    nop                                           ; $77e0: $00
    halt                                          ; $77e1: $76
    ld c, d                                       ; $77e2: $4a
    ld l, e                                       ; $77e3: $6b
    ld d, l                                       ; $77e4: $55
    ld bc, $3801                                  ; $77e5: $01 $01 $38
    add hl, sp                                    ; $77e8: $39
    nop                                           ; $77e9: $00
    dec b                                         ; $77ea: $05
    dec b                                         ; $77eb: $05
    jr jr_0a3_7807                                ; $77ec: $18 $19

    ld hl, $3c21                                  ; $77ee: $21 $21 $3c
    dec a                                         ; $77f1: $3d
    nop                                           ; $77f2: $00
    ld bc, $3001                                  ; $77f3: $01 $01 $30

jr_0a3_77f6:
    ld sp, $0097                                  ; $77f6: $31 $97 $00
    call $1800                                    ; $77f9: $cd $00 $18
    add b                                         ; $77fc: $80
    nop                                           ; $77fd: $00
    add h                                         ; $77fe: $84
    inc b                                         ; $77ff: $04
    nop                                           ; $7800: $00
    ld [bc], a                                    ; $7801: $02
    jr @-$79                                      ; $7802: $18 $85

    add [hl]                                      ; $7804: $86
    ld c, $00                                     ; $7805: $0e $00

jr_0a3_7807:
    adc a                                         ; $7807: $8f
    add c                                         ; $7808: $81
    add c                                         ; $7809: $81
    rst $20                                       ; $780a: $e7
    ld h, a                                       ; $780b: $67
    push de                                       ; $780c: $d5
    or [hl]                                       ; $780d: $b6
    db $e3                                        ; $780e: $e3
    nop                                           ; $780f: $00
    ld h, e                                       ; $7810: $63
    jp nc, $f1b3                                  ; $7811: $d2 $b3 $f1

    ld [hl], c                                    ; $7814: $71
    pop af                                        ; $7815: $f1
    rst $08                                       ; $7816: $cf
    rst $38                                       ; $7817: $ff
    nop                                           ; $7818: $00
    jp c, $ff27                                   ; $7819: $da $27 $ff

    sbc $ff                                       ; $781c: $de $ff
    cp $69                                        ; $781e: $fe $69
    ld a, a                                       ; $7820: $7f
    nop                                           ; $7821: $00
    jp hl                                         ; $7822: $e9


    rst $38                                       ; $7823: $ff
    ld d, c                                       ; $7824: $51
    cp l                                          ; $7825: $bd
    db $e3                                        ; $7826: $e3
    ld e, c                                       ; $7827: $59
    ld a, c                                       ; $7828: $79
    cp h                                          ; $7829: $bc
    nop                                           ; $782a: $00
    push af                                       ; $782b: $f5
    dec a                                         ; $782c: $3d
    db $ed                                        ; $782d: $ed
    cp h                                          ; $782e: $bc
    ld e, l                                       ; $782f: $5d
    and l                                         ; $7830: $a5
    ld a, l                                       ; $7831: $7d
    ld a, [$4f06]                                 ; $7832: $fa $06 $4f
    ld a, l                                       ; $7835: $7d
    cp l                                          ; $7836: $bd
    xor b                                         ; $7837: $a8
    reti                                          ; $7838: $d9


    jr c, jr_0a3_7863                             ; $7839: $38 $28

    ld b, b                                       ; $783b: $40
    ld [$8082], sp                                ; $783c: $08 $82 $80
    ld c, d                                       ; $783f: $4a
    nop                                           ; $7840: $00
    ld hl, sp-$78                                 ; $7841: $f8 $88
    db $fc                                        ; $7843: $fc
    cp h                                          ; $7844: $bc
    cp $92                                        ; $7845: $fe $92
    ld a, [c]                                     ; $7847: $f2
    nop                                           ; $7848: $00
    ld l, [hl]                                    ; $7849: $6e
    jp nc, $c76e                                  ; $784a: $d2 $6e $c7

    ei                                            ; $784d: $fb
    add $fb                                       ; $784e: $c6 $fb
    ld a, $00                                     ; $7850: $3e $00
    and e                                         ; $7852: $a3
    cp d                                          ; $7853: $ba
    and $6e                                       ; $7854: $e6 $6e
    ld a, [hl]                                    ; $7856: $7e
    ld a, [hl-]                                   ; $7857: $3a
    ld h, $75                                     ; $7858: $26 $75
    nop                                           ; $785a: $00
    ld l, a                                       ; $785b: $6f
    or h                                          ; $785c: $b4
    rst $28                                       ; $785d: $ef
    ld [hl], $ed                                  ; $785e: $36 $ed
    ld a, d                                       ; $7860: $7a
    xor l                                         ; $7861: $ad
    xor l                                         ; $7862: $ad

jr_0a3_7863:
    db $10                                        ; $7863: $10
    ld a, e                                       ; $7864: $7b
    ld [hl], c                                    ; $7865: $71
    ld [hl], c                                    ; $7866: $71
    ld [hl+], a                                   ; $7867: $22
    ld c, $08                                     ; $7868: $0e $08
    add hl, bc                                    ; $786a: $09
    sbc l                                         ; $786b: $9d
    sub l                                         ; $786c: $95
    nop                                           ; $786d: $00
    sbc h                                         ; $786e: $9c
    sub l                                         ; $786f: $95
    db $ed                                        ; $7870: $ed
    db $fd                                        ; $7871: $fd
    sbc $6b                                       ; $7872: $de $6b
    add h                                         ; $7874: $84
    nop                                           ; $7875: $00
    inc d                                         ; $7876: $14
    xor d                                         ; $7877: $aa
    nop                                           ; $7878: $00
    db $dd                                        ; $7879: $dd
    ld e, d                                       ; $787a: $5a
    ld b, $f7                                     ; $787b: $06 $f7
    ld c, d                                       ; $787d: $4a
    dec b                                         ; $787e: $05
    db $dd                                        ; $787f: $dd
    ld [hl+], a                                   ; $7880: $22
    nop                                           ; $7881: $00
    dec hl                                        ; $7882: $2b
    call nc, $a7bf                                ; $7883: $d4 $bf $a7
    ccf                                           ; $7886: $3f
    or a                                          ; $7887: $b7
    cp a                                          ; $7888: $bf
    cp e                                          ; $7889: $bb
    ld b, $3f                                     ; $788a: $06 $3f
    or a                                          ; $788c: $b7
    sbc a                                         ; $788d: $9f
    sbc e                                         ; $788e: $9b
    rra                                           ; $788f: $1f
    jp nz, Jump_000_2e06                          ; $7890: $c2 $06 $2e

    rlca                                          ; $7893: $07
    ld a, [de]                                    ; $7894: $1a
    nop                                           ; $7895: $00
    rst $38                                       ; $7896: $ff
    ld [de], a                                    ; $7897: $12
    ld l, l                                       ; $7898: $6d
    sub e                                         ; $7899: $93
    ei                                            ; $789a: $fb
    sub [hl]                                      ; $789b: $96
    db $ed                                        ; $789c: $ed
    sub [hl]                                      ; $789d: $96
    inc b                                         ; $789e: $04
    db $fc                                        ; $789f: $fc
    sub a                                         ; $78a0: $97
    ld [hl], d                                    ; $78a1: $72
    sbc a                                         ; $78a2: $9f
    rst $38                                       ; $78a3: $ff
    ld b, [hl]                                    ; $78a4: $46
    ld bc, $afd2                                  ; $78a5: $01 $d2 $af
    nop                                           ; $78a8: $00
    dec c                                         ; $78a9: $0d
    db $fd                                        ; $78aa: $fd
    inc d                                         ; $78ab: $14
    db $fd                                        ; $78ac: $fd
    add hl, sp                                    ; $78ad: $39
    jp hl                                         ; $78ae: $e9


    ld e, b                                       ; $78af: $58
    jp hl                                         ; $78b0: $e9


    dec c                                         ; $78b1: $0d
    jp hl                                         ; $78b2: $e9


    ld sp, hl                                     ; $78b3: $f9

jr_0a3_78b4:
    rst $38                                       ; $78b4: $ff
    rst $38                                       ; $78b5: $ff
    ret nz                                        ; $78b6: $c0

    jr c, jr_0a3_78b4                             ; $78b7: $38 $fb

    ld [$0440], sp                                ; $78b9: $08 $40 $04
    jr nc, @-$7e                                  ; $78bc: $30 $80

    cp [hl]                                       ; $78be: $be
    ld bc, $4280                                  ; $78bf: $01 $80 $42
    add b                                         ; $78c2: $80
    ld b, b                                       ; $78c3: $40
    add b                                         ; $78c4: $80
    ld b, h                                       ; $78c5: $44
    add b                                         ; $78c6: $80
    inc d                                         ; $78c7: $14
    ld l, d                                       ; $78c8: $6a
    add b                                         ; $78c9: $80
    ld e, l                                       ; $78ca: $5d
    cp d                                          ; $78cb: $ba
    dec b                                         ; $78cc: $05
    ld [hl], a                                    ; $78cd: $77
    cp [hl]                                       ; $78ce: $be
    dec b                                         ; $78cf: $05
    ld e, l                                       ; $78d0: $5d
    and d                                         ; $78d1: $a2
    add hl, bc                                    ; $78d2: $09
    dec hl                                        ; $78d3: $2b
    call nc, $e817                                ; $78d4: $d4 $17 $e8
    ldh [$5b], a                                  ; $78d7: $e0 $5b
    add b                                         ; $78d9: $80
    ld a, a                                       ; $78da: $7f
    or b                                          ; $78db: $b0
    ld e, h                                       ; $78dc: $5c
    nop                                           ; $78dd: $00
    rst $38                                       ; $78de: $ff
    rrca                                          ; $78df: $0f
    rst $38                                       ; $78e0: $ff
    ccf                                           ; $78e1: $3f
    ei                                            ; $78e2: $fb
    ld a, l                                       ; $78e3: $7d
    ldh a, [$f9]                                  ; $78e4: $f0 $f9
    nop                                           ; $78e6: $00
    db $f4                                        ; $78e7: $f4
    ret nz                                        ; $78e8: $c0

    jp c, $f3e0                                   ; $78e9: $da $e0 $f3

    db $fc                                        ; $78ec: $fc
    xor a                                         ; $78ed: $af
    rst $38                                       ; $78ee: $ff
    nop                                           ; $78ef: $00
    rst $38                                       ; $78f0: $ff
    ldh a, [rIE]                                  ; $78f1: $f0 $ff
    db $fc                                        ; $78f3: $fc
    rst $20                                       ; $78f4: $e7
    cp $af                                        ; $78f5: $fe $af
    rst $00                                       ; $78f7: $c7
    nop                                           ; $78f8: $00
    ld d, e                                       ; $78f9: $53
    add a                                         ; $78fa: $87
    and a                                         ; $78fb: $a7
    rrca                                          ; $78fc: $0f
    ld c, l                                       ; $78fd: $4d
    ccf                                           ; $78fe: $3f
    ei                                            ; $78ff: $fb
    rst $38                                       ; $7900: $ff
    ld bc, $fad5                                  ; $7901: $01 $d5 $fa
    add sp, $75                                   ; $7904: $e8 $75
    ret nc                                        ; $7906: $d0

    ld l, d                                       ; $7907: $6a
    ldh [rDIV], a                                 ; $7908: $e0 $04
    ld [$3500], sp                                ; $790a: $08 $00 $35
    db $fd                                        ; $790d: $fd
    ld a, [de]                                    ; $790e: $1a
    rst $38                                       ; $790f: $ff
    rlca                                          ; $7910: $07
    ld d, l                                       ; $7911: $55
    xor a                                         ; $7912: $af
    dec hl                                        ; $7913: $2b
    db $10                                        ; $7914: $10
    ld e, [hl]                                    ; $7915: $5e
    ld d, a                                       ; $7916: $57
    cp [hl]                                       ; $7917: $be
    inc b                                         ; $7918: $04
    ld [$7caf], sp                                ; $7919: $08 $af $7c
    ld e, a                                       ; $791c: $5f
    ld hl, sp+$00                                 ; $791d: $f8 $00
    rst $38                                       ; $791f: $ff
    ldh [$fe], a                                  ; $7920: $e0 $fe
    ld bc, $0af5                                  ; $7922: $01 $f5 $0a
    ldh [$1f], a                                  ; $7925: $e0 $1f
    nop                                           ; $7927: $00
    ld d, e                                       ; $7928: $53
    and c                                         ; $7929: $a1
    add a                                         ; $792a: $87
    ld h, b                                       ; $792b: $60
    db $fc                                        ; $792c: $fc
    inc hl                                        ; $792d: $23
    xor [hl]                                      ; $792e: $ae

jr_0a3_792f:
    ld e, a                                       ; $792f: $5f
    add b                                         ; $7930: $80
    adc $0b                                       ; $7931: $ce $0b
    rrca                                          ; $7933: $0f
    ldh a, [$90]                                  ; $7934: $f0 $90
    rrca                                          ; $7936: $0f
    ld a, d                                       ; $7937: $7a
    add h                                         ; $7938: $84
    ld l, h                                       ; $7939: $6c
    nop                                           ; $793a: $00
    ld hl, sp-$07                                 ; $793b: $f8 $f9
    adc [hl]                                      ; $793d: $8e
    cp e                                          ; $793e: $bb
    ld b, a                                       ; $793f: $47
    halt                                          ; $7940: $76
    adc c                                         ; $7941: $89
    di                                            ; $7942: $f3
    nop                                           ; $7943: $00
    inc c                                         ; $7944: $0c
    ld h, c                                       ; $7945: $61
    sub d                                         ; $7946: $92
    dec l                                         ; $7947: $2d
    ld a, [c]                                     ; $7948: $f2
    ld c, a                                       ; $7949: $4f
    inc a                                         ; $794a: $3c
    call Call_000_3200                            ; $794b: $cd $00 $32
    sub a                                         ; $794e: $97
    ld l, b                                       ; $794f: $68
    xor a                                         ; $7950: $af
    ret nc                                        ; $7951: $d0

    rst $38                                       ; $7952: $ff
    nop                                           ; $7953: $00
    add c                                         ; $7954: $81
    inc c                                         ; $7955: $0c
    rst $38                                       ; $7956: $ff
    ret nz                                        ; $7957: $c0

    cp a                                          ; $7958: $bf
    add b                                         ; $7959: $80
    inc b                                         ; $795a: $04
    jr nc, jr_0a3_7970                            ; $795b: $30 $13

    dec c                                         ; $795d: $0d
    nop                                           ; $795e: $00
    rst $38                                       ; $795f: $ff
    and $a4                                       ; $7960: $e6 $a4
    ld [bc], a                                    ; $7962: $02
    rra                                           ; $7963: $1f
    ld h, $23                                     ; $7964: $26 $23
    dec c                                         ; $7966: $0d
    ld bc, $19ff                                  ; $7967: $01 $ff $19
    ld b, $04                                     ; $796a: $06 $04
    jr nz, jr_0a3_792f                            ; $796c: $20 $c1

    nop                                           ; $796e: $00
    cp a                                          ; $796f: $bf

jr_0a3_7970:
    ld bc, $08ff                                  ; $7970: $01 $ff $08
    rst $30                                       ; $7973: $f7
    sub e                                         ; $7974: $93
    ld l, l                                       ; $7975: $6d
    call nz, Call_000_3b00                        ; $7976: $c4 $00 $3b
    cp e                                          ; $7979: $bb
    ld b, l                                       ; $797a: $45
    cp $01                                        ; $797b: $fe $01
    or a                                          ; $797d: $b7
    ld bc, $002e                                  ; $797e: $01 $2e $00
    ld bc, $ff00                                  ; $7981: $01 $00 $ff
    ld d, l                                       ; $7984: $55
    xor d                                         ; $7985: $aa
    cp [hl]                                       ; $7986: $be
    ld b, c                                       ; $7987: $41
    rst $30                                       ; $7988: $f7
    ld d, h                                       ; $7989: $54
    ld [$0a00], sp                                ; $798a: $08 $00 $0a
    halt                                          ; $798d: $76
    nop                                           ; $798e: $00
    ld [bc], a                                    ; $798f: $02
    ld d, $74                                     ; $7990: $16 $74
    inc bc                                        ; $7992: $03
    ld [bc], a                                    ; $7993: $02
    ld bc, $0654                                  ; $7994: $01 $54 $06
    inc b                                         ; $7997: $04
    nop                                           ; $7998: $00
    nop                                           ; $7999: $00
    inc b                                         ; $799a: $04
    db $10                                        ; $799b: $10
    ret nc                                        ; $799c: $d0

    ld h, b                                       ; $799d: $60
    ld bc, $0004                                  ; $799e: $01 $04 $00
    db $10                                        ; $79a1: $10
    ld b, b                                       ; $79a2: $40
    nop                                           ; $79a3: $00
    ld [$27f9], sp                                ; $79a4: $08 $f9 $27
    jp $e7ff                                      ; $79a7: $c3 $ff $e7


    rst $18                                       ; $79aa: $df
    cp $04                                        ; $79ab: $fe $04
    ld c, b                                       ; $79ad: $48
    jr z, jr_0a3_79d8                             ; $79ae: $28 $28

    jr nc, jr_0a3_79ca                            ; $79b0: $30 $18

    ld [hl], $00                                  ; $79b2: $36 $00
    ld bc, $5230                                  ; $79b4: $01 $30 $52
    ld bc, $023d                                  ; $79b7: $01 $3d $02
    ld b, $00                                     ; $79ba: $06 $00
    ld bc, $012a                                  ; $79bc: $01 $2a $01
    ld e, [hl]                                    ; $79bf: $5e
    ld bc, $01be                                  ; $79c0: $01 $be $01
    ld [hl], a                                    ; $79c3: $77
    add b                                         ; $79c4: $80
    and [hl]                                      ; $79c5: $a6
    inc bc                                        ; $79c6: $03
    db $dd                                        ; $79c7: $dd
    inc hl                                        ; $79c8: $23
    ld a, [hl+]                                   ; $79c9: $2a

jr_0a3_79ca:
    push de                                       ; $79ca: $d5
    ld d, b                                       ; $79cb: $50
    nop                                           ; $79cc: $00
    ld hl, $2ea0                                  ; $79cd: $21 $a0 $2e
    ld [bc], a                                    ; $79d0: $02
    ld l, e                                       ; $79d1: $6b
    or b                                          ; $79d2: $b0
    ld bc, $02dd                                  ; $79d3: $01 $dd $02
    cp e                                          ; $79d6: $bb
    inc b                                         ; $79d7: $04

jr_0a3_79d8:
    push af                                       ; $79d8: $f5
    ld [bc], a                                    ; $79d9: $02
    ld a, [bc]                                    ; $79da: $0a
    rla                                           ; $79db: $17
    jp hl                                         ; $79dc: $e9


    inc c                                         ; $79dd: $0c
    di                                            ; $79de: $f3
    ld d, e                                       ; $79df: $53
    jr nc, jr_0a3_79e7                            ; $79e0: $30 $05

    add hl, hl                                    ; $79e2: $29
    sbc b                                         ; $79e3: $98
    jr nc, jr_0a3_7a0b                            ; $79e4: $30 $25

    ld e, d                                       ; $79e6: $5a

jr_0a3_79e7:
    and l                                         ; $79e7: $a5
    ldh [$5d], a                                  ; $79e8: $e0 $5d
    ldh a, [rWX]                                  ; $79ea: $f0 $4b
    ld sp, $3281                                  ; $79ec: $31 $81 $32
    nop                                           ; $79ef: $00
    add e                                         ; $79f0: $83
    ld [hl-], a                                   ; $79f1: $32
    add e                                         ; $79f2: $83
    inc sp                                        ; $79f3: $33
    add d                                         ; $79f4: $82
    scf                                           ; $79f5: $37
    add l                                         ; $79f6: $85
    ld [hl], $00                                  ; $79f7: $36 $00
    adc d                                         ; $79f9: $8a
    dec sp                                        ; $79fa: $3b
    add l                                         ; $79fb: $85
    dec [hl]                                      ; $79fc: $35
    add [hl]                                      ; $79fd: $86
    inc sp                                        ; $79fe: $33
    add d                                         ; $79ff: $82
    jr nc, jr_0a3_7a02                            ; $7a00: $30 $00

jr_0a3_7a02:
    add b                                         ; $7a02: $80
    ld d, b                                       ; $7a03: $50
    xor a                                         ; $7a04: $af
    ccf                                           ; $7a05: $3f
    db $10                                        ; $7a06: $10
    db $eb                                        ; $7a07: $eb
    daa                                           ; $7a08: $27
    db $fc                                        ; $7a09: $fc
    nop                                           ; $7a0a: $00

jr_0a3_7a0b:
    ld c, b                                       ; $7a0b: $48
    ld hl, sp+$48                                 ; $7a0c: $f8 $48
    db $fc                                        ; $7a0e: $fc
    ld c, b                                       ; $7a0f: $48
    ld d, $64                                     ; $7a10: $16 $64
    ld sp, $2b00                                  ; $7a12: $31 $00 $2b
    dec d                                         ; $7a15: $15
    ld [$18cc], a                                 ; $7a16: $ea $cc $18
    rst $08                                       ; $7a19: $cf
    db $e4                                        ; $7a1a: $e4
    inc [hl]                                      ; $7a1b: $34
    inc b                                         ; $7a1c: $04
    dec de                                        ; $7a1d: $1b
    inc d                                         ; $7a1e: $14
    rra                                           ; $7a1f: $1f
    rra                                           ; $7a20: $1f
    rrca                                          ; $7a21: $0f
    add h                                         ; $7a22: $84
    ld [$ab54], sp                                ; $7a23: $08 $54 $ab
    add b                                         ; $7a26: $80
    or b                                          ; $7a27: $b0
    inc de                                        ; $7a28: $13
    ld h, c                                       ; $7a29: $61
    call z, Call_000_2cc1                         ; $7a2a: $cc $c1 $2c
    ld hl, $c1cc                                  ; $7a2d: $21 $cc $c1
    nop                                           ; $7a30: $00
    inc c                                         ; $7a31: $0c
    ld bc, $1837                                  ; $7a32: $01 $37 $18
    jp nz, $a1c7                                  ; $7a35: $c2 $c7 $a1

    ld h, c                                       ; $7a38: $61
    nop                                           ; $7a39: $00
    or b                                          ; $7a3a: $b0
    ldh [$c0], a                                  ; $7a3b: $e0 $c0
    ld [hl], b                                    ; $7a3d: $70
    sub b                                         ; $7a3e: $90
    ld h, b                                       ; $7a3f: $60
    add b                                         ; $7a40: $80
    ldh [rP1], a                                  ; $7a41: $e0 $00
    ldh [$a0], a                                  ; $7a43: $e0 $a0
    ret nc                                        ; $7a45: $d0

    ldh [$dc], a                                  ; $7a46: $e0 $dc
    ld [$f486], sp                                ; $7a48: $08 $86 $f4
    nop                                           ; $7a4b: $00
    ld [hl], e                                    ; $7a4c: $73
    ld l, d                                       ; $7a4d: $6a
    ld e, $19                                     ; $7a4e: $1e $19
    rrca                                          ; $7a50: $0f
    inc c                                         ; $7a51: $0c
    dec b                                         ; $7a52: $05
    ld b, $20                                     ; $7a53: $06 $20
    inc bc                                        ; $7a55: $03
    ld [bc], a                                    ; $7a56: $02
    xor b                                         ; $7a57: $a8
    dec hl                                        ; $7a58: $2b
    adc h                                         ; $7a59: $8c
    ld bc, $810c                                  ; $7a5a: $01 $0c $81
    ld c, h                                       ; $7a5d: $4c
    nop                                           ; $7a5e: $00
    add c                                         ; $7a5f: $81
    call z, $a081                                 ; $7a60: $cc $81 $a0
    rst $38                                       ; $7a63: $ff
    dec h                                         ; $7a64: $25
    ldh a, [$a2]                                  ; $7a65: $f0 $a2
    nop                                           ; $7a67: $00
    ldh a, [rNR41]                                ; $7a68: $f0 $20
    ldh a, [$a1]                                  ; $7a6a: $f0 $a1
    ldh a, [rNR43]                                ; $7a6c: $f0 $22
    ldh a, [$a5]                                  ; $7a6e: $f0 $a5
    add b                                         ; $7a70: $80
    inc b                                         ; $7a71: $04
    nop                                           ; $7a72: $00
    dec b                                         ; $7a73: $05
    rst $38                                       ; $7a74: $ff
    ld d, h                                       ; $7a75: $54
    dec b                                         ; $7a76: $05
    and l                                         ; $7a77: $a5
    dec b                                         ; $7a78: $05
    inc b                                         ; $7a79: $04
    ld [bc], a                                    ; $7a7a: $02
    dec b                                         ; $7a7b: $05
    ld b, l                                       ; $7a7c: $45
    dec b                                         ; $7a7d: $05
    and h                                         ; $7a7e: $a4
    dec b                                         ; $7a7f: $05
    ld d, l                                       ; $7a80: $55
    inc b                                         ; $7a81: $04
    nop                                           ; $7a82: $00
    and b                                         ; $7a83: $a0
    inc hl                                        ; $7a84: $23
    ldh a, [$3f]                                  ; $7a85: $f0 $3f
    ld c, [hl]                                    ; $7a87: $4e
    rlca                                          ; $7a88: $07
    cpl                                           ; $7a89: $2f
    ldh a, [$af]                                  ; $7a8a: $f0 $af
    ld [$7100], sp                                ; $7a8c: $08 $00 $71
    ld b, $00                                     ; $7a8f: $06 $00
    add b                                         ; $7a91: $80
    dec b                                         ; $7a92: $05
    dec b                                         ; $7a93: $05
    db $fc                                        ; $7a94: $fc
    db $fd                                        ; $7a95: $fd
    dec b                                         ; $7a96: $05
    db $fd                                        ; $7a97: $fd
    db $fc                                        ; $7a98: $fc
    jr nz, jr_0a3_7aa0                            ; $7a99: $20 $05

    db $fd                                        ; $7a9b: $fd
    ld [$0100], sp                                ; $7a9c: $08 $00 $01
    ld sp, hl                                     ; $7a9f: $f9

jr_0a3_7aa0:
    nop                                           ; $7aa0: $00
    ld bc, $c1a8                                  ; $7aa1: $01 $a8 $c1
    add a                                         ; $7aa4: $87
    ld b, $02                                     ; $7aa5: $06 $02
    jr z, @-$3e                                   ; $7aa7: $28 $c0

    rst $38                                       ; $7aa9: $ff
    xor b                                         ; $7aaa: $a8
    rst $38                                       ; $7aab: $ff
    dec d                                         ; $7aac: $15
    ld a, h                                       ; $7aad: $7c
    inc bc                                        ; $7aae: $03
    add d                                         ; $7aaf: $82
    ld [bc], a                                    ; $7ab0: $02
    ld [$ff03], sp                                ; $7ab1: $08 $03 $ff
    dec b                                         ; $7ab4: $05
    rst $38                                       ; $7ab5: $ff
    dec hl                                        ; $7ab6: $2b
    adc d                                         ; $7ab7: $8a
    inc bc                                        ; $7ab8: $03
    ret nc                                        ; $7ab9: $d0

    nop                                           ; $7aba: $00
    and b                                         ; $7abb: $a0
    cp b                                          ; $7abc: $b8
    ret nc                                        ; $7abd: $d0

    ld [$e64c], a                                 ; $7abe: $ea $4c $e6
    inc sp                                        ; $7ac1: $33
    di                                            ; $7ac2: $f3
    db $10                                        ; $7ac3: $10
    inc e                                         ; $7ac4: $1c
    inc c                                         ; $7ac5: $0c
    inc bc                                        ; $7ac6: $03
    pop de                                        ; $7ac7: $d1
    ld c, $06                                     ; $7ac8: $0e $06
    ld [bc], a                                    ; $7aca: $02
    rrca                                          ; $7acb: $0f
    inc b                                         ; $7acc: $04
    nop                                           ; $7acd: $00
    inc sp                                        ; $7ace: $33
    add hl, de                                    ; $7acf: $19
    dec de                                        ; $7ad0: $1b
    and $7f                                       ; $7ad1: $e6 $7f
    adc h                                         ; $7ad3: $8c
    ld [$83f0], sp                                ; $7ad4: $08 $f0 $83
    pop hl                                        ; $7ad7: $e1
    ld c, $cc                                     ; $7ad8: $0e $cc
    add c                                         ; $7ada: $81
    adc h                                         ; $7adb: $8c
    add c                                         ; $7adc: $81
    adc h                                         ; $7add: $8c
    ld [hl], d                                    ; $7ade: $72
    inc c                                         ; $7adf: $0c
    sub b                                         ; $7ae0: $90
    ld bc, $1080                                  ; $7ae1: $01 $80 $10
    add hl, de                                    ; $7ae4: $19
    ld bc, $3e80                                  ; $7ae5: $01 $80 $3e
    add c                                         ; $7ae8: $81
    ld a, $81                                     ; $7ae9: $3e $81
    jr nc, jr_0a3_7b2d                            ; $7aeb: $30 $40

    add c                                         ; $7aed: $81
    ret z                                         ; $7aee: $c8

    inc e                                         ; $7aef: $1c
    ld sp, $3f80                                  ; $7af0: $31 $80 $3f
    sbc e                                         ; $7af3: $9b
    scf                                           ; $7af4: $37
    rst $38                                       ; $7af5: $ff
    ld b, b                                       ; $7af6: $40
    ld sp, $34d4                                  ; $7af7: $31 $d4 $34
    ld d, [hl]                                    ; $7afa: $56
    xor a                                         ; $7afb: $af
    ld a, h                                       ; $7afc: $7c
    db $db                                        ; $7afd: $db
    ld l, c                                       ; $7afe: $69
    ld a, c                                       ; $7aff: $79
    nop                                           ; $7b00: $00
    and [hl]                                      ; $7b01: $a6
    and a                                         ; $7b02: $a7
    rst $20                                       ; $7b03: $e7
    ld [hl], e                                    ; $7b04: $73
    ldh a, [$a1]                                  ; $7b05: $f0 $a1
    ld a, a                                       ; $7b07: $7f
    ld e, b                                       ; $7b08: $58
    jr nc, jr_0a3_7b83                            ; $7b09: $30 $78

    ld a, [hl]                                    ; $7b0b: $7e
    or b                                          ; $7b0c: $b0
    inc b                                         ; $7b0d: $04
    db $fc                                        ; $7b0e: $fc
    ld b, $1f                                     ; $7b0f: $06 $1f
    ld h, b                                       ; $7b11: $60
    and b                                         ; $7b12: $a0
    cp b                                          ; $7b13: $b8

Call_0a3_7b14:
    inc bc                                        ; $7b14: $03
    ld a, [c]                                     ; $7b15: $f2
    and h                                         ; $7b16: $a4
    ld a, [$e1e1]                                 ; $7b17: $fa $e1 $e1

jr_0a3_7b1a:
    db $fc                                        ; $7b1a: $fc
    ret nz                                        ; $7b1b: $c0

    inc h                                         ; $7b1c: $24
    adc [hl]                                      ; $7b1d: $8e
    inc h                                         ; $7b1e: $24
    nop                                           ; $7b1f: $00
    inc c                                         ; $7b20: $0c
    add c                                         ; $7b21: $81
    ld sp, hl                                     ; $7b22: $f9
    rst $10                                       ; $7b23: $d7
    dec a                                         ; $7b24: $3d
    jr c, jr_0a3_7b1a                             ; $7b25: $38 $f3

    db $fd                                        ; $7b27: $fd
    ld [$7f89], sp                                ; $7b28: $08 $89 $7f
    ld c, $07                                     ; $7b2b: $0e $07

jr_0a3_7b2d:
    ld bc, $0608                                  ; $7b2d: $01 $08 $06
    rlca                                          ; $7b30: $07
    add b                                         ; $7b31: $80
    nop                                           ; $7b32: $00
    ret nz                                        ; $7b33: $c0

    sub b                                         ; $7b34: $90
    and c                                         ; $7b35: $a1
    ld l, e                                       ; $7b36: $6b
    ld a, h                                       ; $7b37: $7c
    call c, $02f7                                 ; $7b38: $dc $f7 $02
    nop                                           ; $7b3b: $00
    rst $38                                       ; $7b3c: $ff
    dec d                                         ; $7b3d: $15
    db $eb                                        ; $7b3e: $eb
    adc [hl]                                      ; $7b3f: $8e
    pop af                                        ; $7b40: $f1
    reti                                          ; $7b41: $d9


    ld a, h                                       ; $7b42: $7c
    ld c, h                                       ; $7b43: $4c
    nop                                           ; $7b44: $00
    add c                                         ; $7b45: $81
    ld l, h                                       ; $7b46: $6c
    pop bc                                        ; $7b47: $c1
    ld l, h                                       ; $7b48: $6c
    and c                                         ; $7b49: $a1
    db $ec                                        ; $7b4a: $ec
    and c                                         ; $7b4b: $a1
    db $fc                                        ; $7b4c: $fc
    nop                                           ; $7b4d: $00
    ld h, c                                       ; $7b4e: $61
    inc a                                         ; $7b4f: $3c
    pop hl                                        ; $7b50: $e1
    ld c, h                                       ; $7b51: $4c
    or c                                          ; $7b52: $b1
    ld a, h                                       ; $7b53: $7c
    pop af                                        ; $7b54: $f1
    rlca                                          ; $7b55: $07
    ld b, b                                       ; $7b56: $40
    inc bc                                        ; $7b57: $03
    ld bc, $0100                                  ; $7b58: $01 $00 $01
    rst $38                                       ; $7b5b: $ff
    ld [bc], a                                    ; $7b5c: $02
    cp $0d                                        ; $7b5d: $fe $0d
    db $10                                        ; $7b5f: $10
    ld b, b                                       ; $7b60: $40
    rrca                                          ; $7b61: $0f
    add c                                         ; $7b62: $81
    rrca                                          ; $7b63: $0f
    inc l                                         ; $7b64: $2c
    sbc [hl]                                      ; $7b65: $9e
    jp nc, Jump_0a3_6587                          ; $7b66: $d2 $87 $65

    ld sp, hl                                     ; $7b69: $f9
    ld [bc], a                                    ; $7b6a: $02
    cp [hl]                                       ; $7b6b: $be
    ld a, a                                       ; $7b6c: $7f
    halt                                          ; $7b6d: $76
    db $e3                                        ; $7b6e: $e3
    rst $00                                       ; $7b6f: $c7
    inc b                                         ; $7b70: $04
    sub c                                         ; $7b71: $91
    rrca                                          ; $7b72: $0f
    call c, Call_0a3_7100                         ; $7b73: $dc $00 $71
    sbc h                                         ; $7b76: $9c
    ld [hl], c                                    ; $7b77: $71
    db $fc                                        ; $7b78: $fc
    pop af                                        ; $7b79: $f1
    inc a                                         ; $7b7a: $3c
    ld [hl], c                                    ; $7b7b: $71
    ld a, h                                       ; $7b7c: $7c
    inc e                                         ; $7b7d: $1c
    and c                                         ; $7b7e: $a1
    ldh [rSTAT], a                                ; $7b7f: $e0 $41
    add b                                         ; $7b81: $80
    inc e                                         ; $7b82: $1c

jr_0a3_7b83:
    ld a, [$a410]                                 ; $7b83: $fa $10 $a4
    ld [hl+], a                                   ; $7b86: $22
    pop bc                                        ; $7b87: $c1
    cp a                                          ; $7b88: $bf
    inc bc                                        ; $7b89: $03
    add e                                         ; $7b8a: $83
    rst $38                                       ; $7b8b: $ff
    ld b, c                                       ; $7b8c: $41
    cp a                                          ; $7b8d: $bf
    add e                                         ; $7b8e: $83
    ld a, a                                       ; $7b8f: $7f
    sub h                                         ; $7b90: $94
    ld a, [hl+]                                   ; $7b91: $2a
    ldh [$59], a                                  ; $7b92: $e0 $59
    add b                                         ; $7b94: $80
    inc b                                         ; $7b95: $04
    adc b                                         ; $7b96: $88
    ld d, d                                       ; $7b97: $52
    cp l                                          ; $7b98: $bd
    ld a, [bc]                                    ; $7b99: $0a
    ld c, $f1                                     ; $7b9a: $0e $f1
    ld c, $ff                                     ; $7b9c: $0e $ff
    nop                                           ; $7b9e: $00
    rlca                                          ; $7b9f: $07
    rrca                                          ; $7ba0: $0f
    ld b, $0d                                     ; $7ba1: $06 $0d
    rlca                                          ; $7ba3: $07
    dec c                                         ; $7ba4: $0d
    dec bc                                        ; $7ba5: $0b
    ld c, $00                                     ; $7ba6: $0e $00
    rrca                                          ; $7ba8: $0f
    xor d                                         ; $7ba9: $aa
    ld d, l                                       ; $7baa: $55
    and b                                         ; $7bab: $a0
    and b                                         ; $7bac: $a0
    rst $38                                       ; $7bad: $ff
    and b                                         ; $7bae: $a0
    ld a, a                                       ; $7baf: $7f
    nop                                           ; $7bb0: $00
    ldh [$08], a                                  ; $7bb1: $e0 $08
    add sp, $7c                                   ; $7bb3: $e8 $7c
    ret nc                                        ; $7bb5: $d0

    and b                                         ; $7bb6: $a0
    ld [hl], b                                    ; $7bb7: $70
    ldh a, [rP1]                                  ; $7bb8: $f0 $00
    cp b                                          ; $7bba: $b8
    dec c                                         ; $7bbb: $0d
    ld b, $06                                     ; $7bbc: $06 $06
    rlca                                          ; $7bbe: $07
    ld [bc], a                                    ; $7bbf: $02
    rlca                                          ; $7bc0: $07
    rlca                                          ; $7bc1: $07
    jr nz, jr_0a3_7bc6                            ; $7bc2: $20 $02

    nop                                           ; $7bc4: $00
    cp h                                          ; $7bc5: $bc

jr_0a3_7bc6:
    nop                                           ; $7bc6: $00
    inc c                                         ; $7bc7: $0c
    scf                                           ; $7bc8: $37
    dec l                                         ; $7bc9: $2d
    ld a, a                                       ; $7bca: $7f
    ret c                                         ; $7bcb: $d8

    nop                                           ; $7bcc: $00
    and b                                         ; $7bcd: $a0
    ld a, h                                       ; $7bce: $7c
    ret c                                         ; $7bcf: $d8

    add sp, -$64                                  ; $7bd0: $e8 $9c
    ld c, b                                       ; $7bd2: $48
    cp h                                          ; $7bd3: $bc
    cp b                                          ; $7bd4: $b8
    nop                                           ; $7bd5: $00
    db $fc                                        ; $7bd6: $fc
    add sp, -$44                                  ; $7bd7: $e8 $bc
    cp h                                          ; $7bd9: $bc
    ld hl, sp-$08                                 ; $7bda: $f8 $f8
    ldh a, [$67]                                  ; $7bdc: $f0 $67
    add b                                         ; $7bde: $80
    or c                                          ; $7bdf: $b1
    nop                                           ; $7be0: $00
    ld [bc], a                                    ; $7be1: $02
    inc bc                                        ; $7be2: $03
    cp $03                                        ; $7be3: $fe $03
    db $fd                                        ; $7be5: $fd
    dec e                                         ; $7be6: $1d
    ld [bc], a                                    ; $7be7: $02
    add b                                         ; $7be8: $80
    jr nz, jr_0a3_7c00                            ; $7be9: $20 $15

    sub b                                         ; $7beb: $90
    ldh [rOBP0], a                                ; $7bec: $e0 $48
    ldh a, [$bf]                                  ; $7bee: $f0 $bf
    rst $18                                       ; $7bf0: $df
    rst $38                                       ; $7bf1: $ff
    inc e                                         ; $7bf2: $1c
    add a                                         ; $7bf3: $87
    ld a, [hl]                                    ; $7bf4: $7e
    add c                                         ; $7bf5: $81
    xor e                                         ; $7bf6: $ab
    rlca                                          ; $7bf7: $07
    and b                                         ; $7bf8: $a0
    rlca                                          ; $7bf9: $07
    call nz, $ec0d                                ; $7bfa: $c4 $0d $ec
    pop bc                                        ; $7bfd: $c1
    jr nz, @-$02                                  ; $7bfe: $20 $fc

jr_0a3_7c00:
    add c                                         ; $7c00: $81
    ld h, b                                       ; $7c01: $60
    add hl, hl                                    ; $7c02: $29
    ld [de], a                                    ; $7c03: $12
    nop                                           ; $7c04: $00
    nop                                           ; $7c05: $00
    jr jr_0a3_7c08                                ; $7c06: $18 $00

jr_0a3_7c08:
    ld bc, $003c                                  ; $7c08: $01 $3c $00
    rlca                                          ; $7c0b: $07
    ld h, b                                       ; $7c0c: $60
    nop                                           ; $7c0d: $00
    dec c                                         ; $7c0e: $0d
    add h                                         ; $7c0f: $84
    nop                                           ; $7c10: $00
    inc de                                        ; $7c11: $13
    sub [hl]                                      ; $7c12: $96
    nop                                           ; $7c13: $00
    ld d, $07                                     ; $7c14: $16 $07
    nop                                           ; $7c16: $00
    jr nz, jr_0a3_7c19                            ; $7c17: $20 $00

jr_0a3_7c19:
    ld a, [hl+]                                   ; $7c19: $2a
    nop                                           ; $7c1a: $00
    inc c                                         ; $7c1b: $0c
    db $10                                        ; $7c1c: $10
    ld b, c                                       ; $7c1d: $41
    nop                                           ; $7c1e: $00
    dec hl                                        ; $7c1f: $2b
    nop                                           ; $7c20: $00
    inc c                                         ; $7c21: $0c
    rlca                                          ; $7c22: $07
    ld c, b                                       ; $7c23: $48
    nop                                           ; $7c24: $00
    or h                                          ; $7c25: $b4
    nop                                           ; $7c26: $00
    inc c                                         ; $7c27: $0c
    inc b                                         ; $7c28: $04
    ld h, [hl]                                    ; $7c29: $66
    nop                                           ; $7c2a: $00
    ld a, [hl]                                    ; $7c2b: $7e
    nop                                           ; $7c2c: $00
    inc c                                         ; $7c2d: $0c
    ld b, $68                                     ; $7c2e: $06 $68
    nop                                           ; $7c30: $00
    jp $0c00                                      ; $7c31: $c3 $00 $0c


    rrca                                          ; $7c34: $0f
    ld l, c                                       ; $7c35: $69
    nop                                           ; $7c36: $00
    ld a, [hl+]                                   ; $7c37: $2a
    nop                                           ; $7c38: $00
    rlca                                          ; $7c39: $07
    ld [bc], a                                    ; $7c3a: $02
    ld [hl], b                                    ; $7c3b: $70
    nop                                           ; $7c3c: $00
    or l                                          ; $7c3d: $b5
    nop                                           ; $7c3e: $00
    inc c                                         ; $7c3f: $0c
    ld [bc], a                                    ; $7c40: $02
    add c                                         ; $7c41: $81
    nop                                           ; $7c42: $00
    ld a, [hl]                                    ; $7c43: $7e
    nop                                           ; $7c44: $00
    inc c                                         ; $7c45: $0c
    ld c, $96                                     ; $7c46: $0e $96
    nop                                           ; $7c48: $00
    dec hl                                        ; $7c49: $2b
    nop                                           ; $7c4a: $00
    inc c                                         ; $7c4b: $0c
    ld [$0098], sp                                ; $7c4c: $08 $98 $00
    or a                                          ; $7c4f: $b7
    nop                                           ; $7c50: $00
    ld [bc], a                                    ; $7c51: $02
    nop                                           ; $7c52: $00
    sbc a                                         ; $7c53: $9f
    nop                                           ; $7c54: $00
    jp hl                                         ; $7c55: $e9


    nop                                           ; $7c56: $00
    rlca                                          ; $7c57: $07
    ld bc, $00a0                                  ; $7c58: $01 $a0 $00
    ld a, l                                       ; $7c5b: $7d
    nop                                           ; $7c5c: $00
    inc c                                         ; $7c5d: $0c
    inc bc                                        ; $7c5e: $03
    cp d                                          ; $7c5f: $ba
    nop                                           ; $7c60: $00
    ld a, a                                       ; $7c61: $7f
    nop                                           ; $7c62: $00
    inc c                                         ; $7c63: $0c
    dec c                                         ; $7c64: $0d
    push bc                                       ; $7c65: $c5
    nop                                           ; $7c66: $00
    ld a, [hl+]                                   ; $7c67: $2a
    nop                                           ; $7c68: $00
    inc c                                         ; $7c69: $0c
    ld bc, $00c7                                  ; $7c6a: $01 $c7 $00
    or [hl]                                       ; $7c6d: $b6
    nop                                           ; $7c6e: $00
    inc c                                         ; $7c6f: $0c
    dec b                                         ; $7c70: $05
    reti                                          ; $7c71: $d9


    nop                                           ; $7c72: $00
    add b                                         ; $7c73: $80
    nop                                           ; $7c74: $00
    rlca                                          ; $7c75: $07
    inc bc                                        ; $7c76: $03
    xor $00                                       ; $7c77: $ee $00
    inc l                                         ; $7c79: $2c
    nop                                           ; $7c7a: $00
    inc c                                         ; $7c7b: $0c
    ld a, [bc]                                    ; $7c7c: $0a
    ld hl, sp+$00                                 ; $7c7d: $f8 $00
    ld a, l                                       ; $7c7f: $7d
    nop                                           ; $7c80: $00
    inc c                                         ; $7c81: $0c
    nop                                           ; $7c82: $00
    ld sp, hl                                     ; $7c83: $f9
    nop                                           ; $7c84: $00
    rst $00                                       ; $7c85: $c7
    nop                                           ; $7c86: $00
    inc c                                         ; $7c87: $0c
    inc c                                         ; $7c88: $0c
    dec bc                                        ; $7c89: $0b
    ld bc, $002b                                  ; $7c8a: $01 $2b $00
    inc c                                         ; $7c8d: $0c
    add hl, bc                                    ; $7c8e: $09
    jr jr_0a3_7c92                                ; $7c8f: $18 $01

    or a                                          ; $7c91: $b7

jr_0a3_7c92:
    nop                                           ; $7c92: $00
    inc c                                         ; $7c93: $0c
    dec bc                                        ; $7c94: $0b
    inc l                                         ; $7c95: $2c
    ld bc, $002b                                  ; $7c96: $01 $2b $00
    rst $38                                       ; $7c99: $ff
    rst $38                                       ; $7c9a: $ff
    rst $38                                       ; $7c9b: $ff
    rst $38                                       ; $7c9c: $ff
    rst $38                                       ; $7c9d: $ff
    rst $38                                       ; $7c9e: $ff
    rrca                                          ; $7c9f: $0f
    nop                                           ; $7ca0: $00
    nop                                           ; $7ca1: $00
    rrca                                          ; $7ca2: $0f
    nop                                           ; $7ca3: $00
    nop                                           ; $7ca4: $00
    dec d                                         ; $7ca5: $15
    nop                                           ; $7ca6: $00
    ld bc, $0015                                  ; $7ca7: $01 $15 $00
    ld bc, $0033                                  ; $7caa: $01 $33 $00
    ld b, $07                                     ; $7cad: $06 $07
    nop                                           ; $7caf: $00
    ld e, c                                       ; $7cb0: $59
    nop                                           ; $7cb1: $00
    call nc, $0b01                                ; $7cb2: $d4 $01 $0b
    nop                                           ; $7cb5: $00
    call nc, $7200                                ; $7cb6: $d4 $00 $72
    nop                                           ; $7cb9: $00
    ld [bc], a                                    ; $7cba: $02
    ld bc, $00d7                                  ; $7cbb: $01 $d7 $00
    rlca                                          ; $7cbe: $07
    nop                                           ; $7cbf: $00
    dec bc                                        ; $7cc0: $0b
    nop                                           ; $7cc1: $00
    reti                                          ; $7cc2: $d9


    nop                                           ; $7cc3: $00
    ld a, [hl]                                    ; $7cc4: $7e
    nop                                           ; $7cc5: $00
    rlca                                          ; $7cc6: $07
    ld bc, $00db                                  ; $7cc7: $01 $db $00
    add sp, $00                                   ; $7cca: $e8 $00
    ld [bc], a                                    ; $7ccc: $02
    nop                                           ; $7ccd: $00
    rst $38                                       ; $7cce: $ff
    nop                                           ; $7ccf: $00
    sbc $01                                       ; $7cd0: $de $01
    rst $38                                       ; $7cd2: $ff
    rst $38                                       ; $7cd3: $ff
    rst $38                                       ; $7cd4: $ff
    rst $38                                       ; $7cd5: $ff
    rst $38                                       ; $7cd6: $ff
    rst $38                                       ; $7cd7: $ff
    daa                                           ; $7cd8: $27
    nop                                           ; $7cd9: $00
    nop                                           ; $7cda: $00
    inc sp                                        ; $7cdb: $33
    nop                                           ; $7cdc: $00
    ld [bc], a                                    ; $7cdd: $02
    ld b, l                                       ; $7cde: $45
    nop                                           ; $7cdf: $00
    dec b                                         ; $7ce0: $05
    ld d, a                                       ; $7ce1: $57
    nop                                           ; $7ce2: $00
    ld [$006f], sp                                ; $7ce3: $08 $6f $00
    inc c                                         ; $7ce6: $0c
    ld [hl], l                                    ; $7ce7: $75
    nop                                           ; $7ce8: $00
    dec c                                         ; $7ce9: $0d
    sbc c                                         ; $7cea: $99
    nop                                           ; $7ceb: $00
    inc de                                        ; $7cec: $13
    ret                                           ; $7ced: $c9


    nop                                           ; $7cee: $00
    dec de                                        ; $7cef: $1b
    rst $08                                       ; $7cf0: $cf
    nop                                           ; $7cf1: $00
    inc e                                         ; $7cf2: $1c
    push de                                       ; $7cf3: $d5
    nop                                           ; $7cf4: $00
    dec e                                         ; $7cf5: $1d
    pop hl                                        ; $7cf6: $e1
    nop                                           ; $7cf7: $00
    rra                                           ; $7cf8: $1f
    db $ed                                        ; $7cf9: $ed
    nop                                           ; $7cfa: $00
    ld hl, $00f9                                  ; $7cfb: $21 $f9 $00
    inc hl                                        ; $7cfe: $23
    ld [bc], a                                    ; $7cff: $02
    inc bc                                        ; $7d00: $03
    inc b                                         ; $7d01: $04
    nop                                           ; $7d02: $00
    pop de                                        ; $7d03: $d1
    nop                                           ; $7d04: $00
    ld [hl], b                                    ; $7d05: $70
    ld bc, $0038                                  ; $7d06: $01 $38 $00
    ld hl, $7002                                  ; $7d09: $21 $02 $70
    inc bc                                        ; $7d0c: $03
    ld d, a                                       ; $7d0d: $57
    nop                                           ; $7d0e: $00
    ei                                            ; $7d0f: $fb
    nop                                           ; $7d10: $00
    inc c                                         ; $7d11: $0c
    ld bc, $0077                                  ; $7d12: $01 $77 $00
    ld c, [hl]                                    ; $7d15: $4e
    nop                                           ; $7d16: $00
    dec bc                                        ; $7d17: $0b
    inc b                                         ; $7d18: $04
    ld a, e                                       ; $7d19: $7b
    nop                                           ; $7d1a: $00
    ld [hl], e                                    ; $7d1b: $73
    nop                                           ; $7d1c: $00
    dec bc                                        ; $7d1d: $0b
    inc b                                         ; $7d1e: $04
    adc l                                         ; $7d1f: $8d
    nop                                           ; $7d20: $00
    ld [hl], a                                    ; $7d21: $77
    nop                                           ; $7d22: $00
    dec bc                                        ; $7d23: $0b
    inc b                                         ; $7d24: $04
    and d                                         ; $7d25: $a2
    nop                                           ; $7d26: $00
    add b                                         ; $7d27: $80
    nop                                           ; $7d28: $00
    dec bc                                        ; $7d29: $0b
    inc b                                         ; $7d2a: $04
    xor d                                         ; $7d2b: $aa
    nop                                           ; $7d2c: $00
    adc e                                         ; $7d2d: $8b
    nop                                           ; $7d2e: $00
    inc c                                         ; $7d2f: $0c
    ld bc, $00c2                                  ; $7d30: $01 $c2 $00
    ld l, [hl]                                    ; $7d33: $6e
    ld bc, $0102                                  ; $7d34: $01 $02 $01
    jp $1800                                      ; $7d37: $c3 $00 $18


    nop                                           ; $7d3a: $00
    dec bc                                        ; $7d3b: $0b
    inc b                                         ; $7d3c: $04
    call nz, $9500                                ; $7d3d: $c4 $00 $95
    nop                                           ; $7d40: $00
    inc c                                         ; $7d41: $0c
    nop                                           ; $7d42: $00
    call nc, $2e00                                ; $7d43: $d4 $00 $2e
    ld bc, $0007                                  ; $7d46: $01 $07 $00
    ld [hl+], a                                   ; $7d49: $22
    ld bc, $002d                                  ; $7d4a: $01 $2d $00
    inc c                                         ; $7d4d: $0c
    ld bc, HeaderMaskROMVersion                   ; $7d4e: $01 $4c $01
    dec c                                         ; $7d51: $0d
    ld bc, $040b                                  ; $7d52: $01 $0b $04
    ld d, e                                       ; $7d55: $53
    ld bc, $0279                                  ; $7d56: $01 $79 $02
    dec bc                                        ; $7d59: $0b
    inc b                                         ; $7d5a: $04
    ld h, b                                       ; $7d5b: $60
    ld bc, $0272                                  ; $7d5c: $01 $72 $02
    dec bc                                        ; $7d5f: $0b
    inc b                                         ; $7d60: $04
    ld l, d                                       ; $7d61: $6a
    ld bc, $0265                                  ; $7d62: $01 $65 $02
    inc c                                         ; $7d65: $0c
    nop                                           ; $7d66: $00
    ld [hl], d                                    ; $7d67: $72
    ld bc, $0074                                  ; $7d68: $01 $74 $00
    dec bc                                        ; $7d6b: $0b
    inc b                                         ; $7d6c: $04
    ld a, b                                       ; $7d6d: $78
    ld bc, $0257                                  ; $7d6e: $01 $57 $02
    dec bc                                        ; $7d71: $0b
    inc b                                         ; $7d72: $04
    add a                                         ; $7d73: $87
    ld bc, $024d                                  ; $7d74: $01 $4d $02
    dec bc                                        ; $7d77: $0b
    inc b                                         ; $7d78: $04
    sub h                                         ; $7d79: $94
    ld bc, $0242                                  ; $7d7a: $01 $42 $02
    dec bc                                        ; $7d7d: $0b
    inc b                                         ; $7d7e: $04
    and d                                         ; $7d7f: $a2
    ld bc, $0239                                  ; $7d80: $01 $39 $02
    dec bc                                        ; $7d83: $0b
    inc b                                         ; $7d84: $04
    xor h                                         ; $7d85: $ac
    ld bc, $022f                                  ; $7d86: $01 $2f $02
    dec bc                                        ; $7d89: $0b
    inc b                                         ; $7d8a: $04
    or [hl]                                       ; $7d8b: $b6
    ld bc, $0223                                  ; $7d8c: $01 $23 $02
    inc c                                         ; $7d8f: $0c
    ld bc, $01b9                                  ; $7d90: $01 $b9 $01
    inc e                                         ; $7d93: $1c
    ld bc, $040b                                  ; $7d94: $01 $0b $04
    cp [hl]                                       ; $7d97: $be
    ld bc, $0215                                  ; $7d98: $01 $15 $02
    rlca                                          ; $7d9b: $07
    ld bc, $01bf                                  ; $7d9c: $01 $bf $01
    rlca                                          ; $7d9f: $07
    ld [bc], a                                    ; $7da0: $02
    ld [bc], a                                    ; $7da1: $02
    nop                                           ; $7da2: $00
    call c, Call_000_0601                         ; $7da3: $dc $01 $06
    nop                                           ; $7da6: $00
    inc c                                         ; $7da7: $0c
    ld bc, $0234                                  ; $7da8: $01 $34 $02
    add e                                         ; $7dab: $83
    nop                                           ; $7dac: $00
    ld [hl], b                                    ; $7dad: $70
    ld [bc], a                                    ; $7dae: $02
    ld h, b                                       ; $7daf: $60
    ld [bc], a                                    ; $7db0: $02
    sub l                                         ; $7db1: $95
    nop                                           ; $7db2: $00
    inc c                                         ; $7db3: $0c
    nop                                           ; $7db4: $00
    ld [hl], l                                    ; $7db5: $75
    ld [bc], a                                    ; $7db6: $02
    or e                                          ; $7db7: $b3
    ld bc, $0070                                  ; $7db8: $01 $70 $00
    add a                                         ; $7dbb: $87
    ld [bc], a                                    ; $7dbc: $02
    call c, $0701                                 ; $7dbd: $dc $01 $07
    ld [bc], a                                    ; $7dc0: $02
    adc [hl]                                      ; $7dc1: $8e
    ld [bc], a                                    ; $7dc2: $02
    dec e                                         ; $7dc3: $1d
    ld bc, $010c                                  ; $7dc4: $01 $0c $01
    push bc                                       ; $7dc7: $c5
    ld [bc], a                                    ; $7dc8: $02
    scf                                           ; $7dc9: $37
    ld bc, $000c                                  ; $7dca: $01 $0c $00
    rst $18                                       ; $7dcd: $df
    ld [bc], a                                    ; $7dce: $02
    ld c, b                                       ; $7dcf: $48
    nop                                           ; $7dd0: $00
    ld [bc], a                                    ; $7dd1: $02
    ld [bc], a                                    ; $7dd2: $02
    ld [de], a                                    ; $7dd3: $12
    inc bc                                        ; $7dd4: $03
    sbc a                                         ; $7dd5: $9f
    nop                                           ; $7dd6: $00
    rst $38                                       ; $7dd7: $ff
    rst $38                                       ; $7dd8: $ff
    rst $38                                       ; $7dd9: $ff
    rst $38                                       ; $7dda: $ff
    rst $38                                       ; $7ddb: $ff
    rst $38                                       ; $7ddc: $ff
    inc h                                         ; $7ddd: $24
    nop                                           ; $7dde: $00
    nop                                           ; $7ddf: $00
    jr nc, jr_0a3_7de2                            ; $7de0: $30 $00

jr_0a3_7de2:
    ld [bc], a                                    ; $7de2: $02
    ld b, d                                       ; $7de3: $42
    nop                                           ; $7de4: $00
    dec b                                         ; $7de5: $05
    ld c, [hl]                                    ; $7de6: $4e
    nop                                           ; $7de7: $00
    rlca                                          ; $7de8: $07
    ld l, h                                       ; $7de9: $6c
    nop                                           ; $7dea: $00
    inc c                                         ; $7deb: $0c
    ld [hl], d                                    ; $7dec: $72
    nop                                           ; $7ded: $00
    dec c                                         ; $7dee: $0d
    ld a, [hl]                                    ; $7def: $7e
    nop                                           ; $7df0: $00
    rrca                                          ; $7df1: $0f
    ld a, [hl]                                    ; $7df2: $7e
    nop                                           ; $7df3: $00
    rrca                                          ; $7df4: $0f
    add h                                         ; $7df5: $84
    nop                                           ; $7df6: $00
    db $10                                        ; $7df7: $10
    adc d                                         ; $7df8: $8a
    nop                                           ; $7df9: $00
    ld de, $0096                                  ; $7dfa: $11 $96 $00
    inc de                                        ; $7dfd: $13
    and d                                         ; $7dfe: $a2
    nop                                           ; $7dff: $00
    dec d                                         ; $7e00: $15
    ld [bc], a                                    ; $7e01: $02
    nop                                           ; $7e02: $00
    inc bc                                        ; $7e03: $03
    nop                                           ; $7e04: $00
    push bc                                       ; $7e05: $c5
    nop                                           ; $7e06: $00
    ld [bc], a                                    ; $7e07: $02
    ld bc, $0003                                  ; $7e08: $01 $03 $00
    jp c, $0701                                   ; $7e0b: $da $01 $07

    ld bc, $0062                                  ; $7e0e: $01 $62 $00
    ldh [rSB], a                                  ; $7e11: $e0 $01
    ld [hl], b                                    ; $7e13: $70
    inc bc                                        ; $7e14: $03
    ld [hl], a                                    ; $7e15: $77
    nop                                           ; $7e16: $00
    ld b, e                                       ; $7e17: $43
    ld [bc], a                                    ; $7e18: $02
    inc c                                         ; $7e19: $0c
    nop                                           ; $7e1a: $00
    ld a, b                                       ; $7e1b: $78
    nop                                           ; $7e1c: $00
    ld a, h                                       ; $7e1d: $7c
    nop                                           ; $7e1e: $00
    ld [bc], a                                    ; $7e1f: $02
    ld [bc], a                                    ; $7e20: $02
    sub a                                         ; $7e21: $97
    nop                                           ; $7e22: $00
    ld [hl], e                                    ; $7e23: $73
    ld [bc], a                                    ; $7e24: $02
    ld [hl], b                                    ; $7e25: $70
    ld [bc], a                                    ; $7e26: $02
    and b                                         ; $7e27: $a0
    nop                                           ; $7e28: $00
    and h                                         ; $7e29: $a4
    nop                                           ; $7e2a: $00
    inc c                                         ; $7e2b: $0c
    nop                                           ; $7e2c: $00
    call c, Call_000_2500                         ; $7e2d: $dc $00 $25
    ld [bc], a                                    ; $7e30: $02
    inc c                                         ; $7e31: $0c
    ld bc, $00f0                                  ; $7e32: $01 $f0 $00
    sub [hl]                                      ; $7e35: $96
    ld bc, $020b                                  ; $7e36: $01 $0b $02
    di                                            ; $7e39: $f3
    nop                                           ; $7e3a: $00
    ld l, $01                                     ; $7e3b: $2e $01
    dec bc                                        ; $7e3d: $0b
    ld [bc], a                                    ; $7e3e: $02
    di                                            ; $7e3f: $f3
    nop                                           ; $7e40: $00
    ld b, d                                       ; $7e41: $42
    ld bc, $020b                                  ; $7e42: $01 $0b $02
    rst $30                                       ; $7e45: $f7
    nop                                           ; $7e46: $00
    ld d, a                                       ; $7e47: $57
    ld bc, $010c                                  ; $7e48: $01 $0c $01
    inc c                                         ; $7e4b: $0c
    ld bc, $003d                                  ; $7e4c: $01 $3d $00
    inc c                                         ; $7e4f: $0c
    ld bc, HeaderDestinationCode                  ; $7e50: $01 $4a $01
    adc h                                         ; $7e53: $8c
    nop                                           ; $7e54: $00
    inc c                                         ; $7e55: $0c
    inc bc                                        ; $7e56: $03
    ld c, e                                       ; $7e57: $4b
    ld bc, $010c                                  ; $7e58: $01 $0c $01
    inc c                                         ; $7e5b: $0c
    ld bc, $01c9                                  ; $7e5c: $01 $c9 $01
    ld h, [hl]                                    ; $7e5f: $66
    ld [bc], a                                    ; $7e60: $02
    ld [hl], b                                    ; $7e61: $70
    ld bc, $0220                                  ; $7e62: $01 $20 $02
    add a                                         ; $7e65: $87
    nop                                           ; $7e66: $00
    inc c                                         ; $7e67: $0c
    nop                                           ; $7e68: $00
    ld b, b                                       ; $7e69: $40
    ld [bc], a                                    ; $7e6a: $02
    db $ec                                        ; $7e6b: $ec
    ld bc, $0070                                  ; $7e6c: $01 $70 $00
    ld h, b                                       ; $7e6f: $60
    ld [bc], a                                    ; $7e70: $02
    ld c, d                                       ; $7e71: $4a
    ld [bc], a                                    ; $7e72: $02
    rlca                                          ; $7e73: $07
    ld [bc], a                                    ; $7e74: $02
    sub b                                         ; $7e75: $90
    ld [bc], a                                    ; $7e76: $02
    dec bc                                        ; $7e77: $0b
    ld bc, $0007                                  ; $7e78: $01 $07 $00
    xor [hl]                                      ; $7e7b: $ae
    ld [bc], a                                    ; $7e7c: $02
    rlc c                                         ; $7e7d: $cb $01
    rst $38                                       ; $7e7f: $ff
    rst $38                                       ; $7e80: $ff
    rst $38                                       ; $7e81: $ff
    rst $38                                       ; $7e82: $ff
    rst $38                                       ; $7e83: $ff
    rst $38                                       ; $7e84: $ff
    inc h                                         ; $7e85: $24
    nop                                           ; $7e86: $00
    nop                                           ; $7e87: $00
    ld a, [hl+]                                   ; $7e88: $2a
    nop                                           ; $7e89: $00
    ld bc, $0036                                  ; $7e8a: $01 $36 $00
    inc bc                                        ; $7e8d: $03
    ld c, b                                       ; $7e8e: $48
    nop                                           ; $7e8f: $00
    ld b, $48                                     ; $7e90: $06 $48
    nop                                           ; $7e92: $00
    ld b, $4e                                     ; $7e93: $06 $4e
    nop                                           ; $7e95: $00
    rlca                                          ; $7e96: $07
    ld d, h                                       ; $7e97: $54
    nop                                           ; $7e98: $00
    ld [$0054], sp                                ; $7e99: $08 $54 $00
    ld [$005a], sp                                ; $7e9c: $08 $5a $00
    add hl, bc                                    ; $7e9f: $09
    ld e, d                                       ; $7ea0: $5a
    nop                                           ; $7ea1: $00
    add hl, bc                                    ; $7ea2: $09
    ld e, d                                       ; $7ea3: $5a
    nop                                           ; $7ea4: $00
    add hl, bc                                    ; $7ea5: $09
    ld [hl], d                                    ; $7ea6: $72
    nop                                           ; $7ea7: $00
    dec c                                         ; $7ea8: $0d
    ld [bc], a                                    ; $7ea9: $02
    nop                                           ; $7eaa: $00
    inc bc                                        ; $7eab: $03
    nop                                           ; $7eac: $00
    sbc c                                         ; $7ead: $99
    nop                                           ; $7eae: $00
    ld [hl], b                                    ; $7eaf: $70
    nop                                           ; $7eb0: $00
    ld b, b                                       ; $7eb1: $40
    nop                                           ; $7eb2: $00
    ld h, d                                       ; $7eb3: $62
    nop                                           ; $7eb4: $00
    inc c                                         ; $7eb5: $0c
    ld bc, $0060                                  ; $7eb6: $01 $60 $00
    add e                                         ; $7eb9: $83
    ld bc, $0270                                  ; $7eba: $01 $70 $02
    sub b                                         ; $7ebd: $90
    nop                                           ; $7ebe: $00
    di                                            ; $7ebf: $f3
    ld bc, $0307                                  ; $7ec0: $01 $07 $03
    xor c                                         ; $7ec3: $a9
    nop                                           ; $7ec4: $00
    sbc h                                         ; $7ec5: $9c
    nop                                           ; $7ec6: $00
    ld [bc], a                                    ; $7ec7: $02
    ld bc, $00ac                                  ; $7ec8: $01 $ac $00
    dec bc                                        ; $7ecb: $0b
    nop                                           ; $7ecc: $00
    inc c                                         ; $7ecd: $0c
    ld bc, $011c                                  ; $7ece: $01 $1c $01
    dec [hl]                                      ; $7ed1: $35
    nop                                           ; $7ed2: $00
    rlca                                          ; $7ed3: $07
    ld bc, HeaderMaskROMVersion                   ; $7ed4: $01 $4c $01
    dec hl                                        ; $7ed7: $2b
    nop                                           ; $7ed8: $00
    inc c                                         ; $7ed9: $0c
    ld bc, $01c7                                  ; $7eda: $01 $c7 $01
    dec a                                         ; $7edd: $3d
    ld bc, $0007                                  ; $7ede: $01 $07 $00
    sub e                                         ; $7ee1: $93
    ld [bc], a                                    ; $7ee2: $02
    sbc a                                         ; $7ee3: $9f
    nop                                           ; $7ee4: $00
    ld [hl], b                                    ; $7ee5: $70
    inc bc                                        ; $7ee6: $03
    or b                                          ; $7ee7: $b0
    ld [bc], a                                    ; $7ee8: $02
    or c                                          ; $7ee9: $b1
    ld bc, $0170                                  ; $7eea: $01 $70 $01
    cp b                                          ; $7eed: $b8
    ld [bc], a                                    ; $7eee: $02
    ret c                                         ; $7eef: $d8

    nop                                           ; $7ef0: $00
    inc c                                         ; $7ef1: $0c
    ld bc, $02ba                                  ; $7ef2: $01 $ba $02
    or l                                          ; $7ef5: $b5
    nop                                           ; $7ef6: $00
    rlca                                          ; $7ef7: $07
    ld [bc], a                                    ; $7ef8: $02
    call Call_0a3_4c02                            ; $7ef9: $cd $02 $4c
    ld [bc], a                                    ; $7efc: $02
    rst $38                                       ; $7efd: $ff
    rst $38                                       ; $7efe: $ff
    rst $38                                       ; $7eff: $ff
    rst $38                                       ; $7f00: $ff
    rst $38                                       ; $7f01: $ff
    rst $38                                       ; $7f02: $ff
    inc c                                         ; $7f03: $0c
    nop                                           ; $7f04: $00
    nop                                           ; $7f05: $00

Call_0a3_7f06:
    jr jr_0a3_7f08                                ; $7f06: $18 $00

jr_0a3_7f08:
    ld [bc], a                                    ; $7f08: $02
    inc a                                         ; $7f09: $3c
    nop                                           ; $7f0a: $00
    ld [$0042], sp                                ; $7f0b: $08 $42 $00
    add hl, bc                                    ; $7f0e: $09
    inc c                                         ; $7f0f: $0c
    inc bc                                        ; $7f10: $03
    stop                                          ; $7f11: $10 $00
    inc e                                         ; $7f13: $1c
    nop                                           ; $7f14: $00
    inc c                                         ; $7f15: $0c
    ld bc, $0030                                  ; $7f16: $01 $30 $00
    call z, Call_000_0200                         ; $7f19: $cc $00 $02
    nop                                           ; $7f1c: $00
    ld d, l                                       ; $7f1d: $55
    nop                                           ; $7f1e: $00
    ld [de], a                                    ; $7f1f: $12
    nop                                           ; $7f20: $00
    dec bc                                        ; $7f21: $0b
    nop                                           ; $7f22: $00
    ld e, a                                       ; $7f23: $5f
    nop                                           ; $7f24: $00
    ld h, $00                                     ; $7f25: $26 $00
    ld [bc], a                                    ; $7f27: $02
    ld [bc], a                                    ; $7f28: $02
    ld h, l                                       ; $7f29: $65
    nop                                           ; $7f2a: $00
    jp nc, Jump_000_0200                          ; $7f2b: $d2 $00 $02

    ld bc, $0067                                  ; $7f2e: $01 $67 $00
    jr jr_0a3_7f34                                ; $7f31: $18 $01

    dec bc                                        ; $7f33: $0b

jr_0a3_7f34:
    ld [bc], a                                    ; $7f34: $02
    ld l, a                                       ; $7f35: $6f
    nop                                           ; $7f36: $00
    ld [c], a                                     ; $7f37: $e2
    nop                                           ; $7f38: $00
    dec bc                                        ; $7f39: $0b
    inc b                                         ; $7f3a: $04
    ld a, [hl]                                    ; $7f3b: $7e
    nop                                           ; $7f3c: $00
    dec b                                         ; $7f3d: $05
    ld bc, $0007                                  ; $7f3e: $01 $07 $00
    sbc h                                         ; $7f41: $9c
    nop                                           ; $7f42: $00
    dec de                                        ; $7f43: $1b
    nop                                           ; $7f44: $00
    rst $38                                       ; $7f45: $ff
    rst $38                                       ; $7f46: $ff
    rst $38                                       ; $7f47: $ff
    rst $38                                       ; $7f48: $ff
    rst $38                                       ; $7f49: $ff
    rst $38                                       ; $7f4a: $ff
    inc c                                         ; $7f4b: $0c
    nop                                           ; $7f4c: $00
    nop                                           ; $7f4d: $00
    jr jr_0a3_7f50                                ; $7f4e: $18 $00

jr_0a3_7f50:
    ld [bc], a                                    ; $7f50: $02
    ld d, h                                       ; $7f51: $54
    nop                                           ; $7f52: $00
    inc c                                         ; $7f53: $0c
    ld h, [hl]                                    ; $7f54: $66
    nop                                           ; $7f55: $00
    rrca                                          ; $7f56: $0f
    inc c                                         ; $7f57: $0c
    dec b                                         ; $7f58: $05
    ld sp, $ae00                                  ; $7f59: $31 $00 $ae
    nop                                           ; $7f5c: $00
    inc c                                         ; $7f5d: $0c
    inc b                                         ; $7f5e: $04
    ld [hl-], a                                   ; $7f5f: $32
    nop                                           ; $7f60: $00
    dec l                                         ; $7f61: $2d
    nop                                           ; $7f62: $00
    inc c                                         ; $7f63: $0c
    ld bc, $004e                                  ; $7f64: $01 $4e $00
    dec l                                         ; $7f67: $2d
    nop                                           ; $7f68: $00
    inc c                                         ; $7f69: $0c
    ld [bc], a                                    ; $7f6a: $02
    ld d, l                                       ; $7f6b: $55
    nop                                           ; $7f6c: $00
    sbc h                                         ; $7f6d: $9c
    nop                                           ; $7f6e: $00
    inc c                                         ; $7f6f: $0c
    ld [bc], a                                    ; $7f70: $02
    ld d, a                                       ; $7f71: $57
    nop                                           ; $7f72: $00
    inc e                                         ; $7f73: $1c
    ld bc, $020c                                  ; $7f74: $01 $0c $02
    ld e, b                                       ; $7f77: $58
    nop                                           ; $7f78: $00
    call c, $0c00                                 ; $7f79: $dc $00 $0c
    ld [bc], a                                    ; $7f7c: $02
    ld e, e                                       ; $7f7d: $5b
    nop                                           ; $7f7e: $00
    ld e, l                                       ; $7f7f: $5d
    nop                                           ; $7f80: $00
    rlca                                          ; $7f81: $07
    ld bc, $006a                                  ; $7f82: $01 $6a $00
    inc e                                         ; $7f85: $1c
    nop                                           ; $7f86: $00
    inc c                                         ; $7f87: $0c
    ld [bc], a                                    ; $7f88: $02
    ld [hl], l                                    ; $7f89: $75
    nop                                           ; $7f8a: $00
    ld e, l                                       ; $7f8b: $5d
    nop                                           ; $7f8c: $00
    inc c                                         ; $7f8d: $0c
    ld [bc], a                                    ; $7f8e: $02
    halt                                          ; $7f8f: $76
    nop                                           ; $7f90: $00
    call c, $0c00                                 ; $7f91: $dc $00 $0c
    ld [bc], a                                    ; $7f94: $02
    ld [hl], a                                    ; $7f95: $77
    nop                                           ; $7f96: $00
    sbc h                                         ; $7f97: $9c
    nop                                           ; $7f98: $00
    inc c                                         ; $7f99: $0c
    ld [bc], a                                    ; $7f9a: $02
    ld [hl], a                                    ; $7f9b: $77
    nop                                           ; $7f9c: $00
    inc e                                         ; $7f9d: $1c
    ld bc, $0a0a                                  ; $7f9e: $01 $0a $0a
    sub h                                         ; $7fa1: $94
    nop                                           ; $7fa2: $00
    inc e                                         ; $7fa3: $1c
    nop                                           ; $7fa4: $00
    rlca                                          ; $7fa5: $07
    nop                                           ; $7fa6: $00
    sbc c                                         ; $7fa7: $99
    nop                                           ; $7fa8: $00
    inc [hl]                                      ; $7fa9: $34
    nop                                           ; $7faa: $00
    ld [bc], a                                    ; $7fab: $02
    nop                                           ; $7fac: $00
    xor e                                         ; $7fad: $ab
    nop                                           ; $7fae: $00
    ld [hl], a                                    ; $7faf: $77
    nop                                           ; $7fb0: $00
    rst $38                                       ; $7fb1: $ff
    rst $38                                       ; $7fb2: $ff
    rst $38                                       ; $7fb3: $ff
    rst $38                                       ; $7fb4: $ff
    rst $38                                       ; $7fb5: $ff
    rst $38                                       ; $7fb6: $ff
    ld [de], a                                    ; $7fb7: $12
    nop                                           ; $7fb8: $00
    nop                                           ; $7fb9: $00
    ld e, $00                                     ; $7fba: $1e $00
    ld [bc], a                                    ; $7fbc: $02
    ld e, $00                                     ; $7fbd: $1e $00
    ld [bc], a                                    ; $7fbf: $02
    ld a, [hl+]                                   ; $7fc0: $2a
    nop                                           ; $7fc1: $00
    inc b                                         ; $7fc2: $04
    ld [hl], $00                                  ; $7fc3: $36 $00
    ld b, $3c                                     ; $7fc5: $06 $3c
    nop                                           ; $7fc7: $00
    rlca                                          ; $7fc8: $07
    ld [bc], a                                    ; $7fc9: $02
    nop                                           ; $7fca: $00
    stop                                          ; $7fcb: $10 $00
    sub a                                         ; $7fcd: $97
    ld bc, $000b                                  ; $7fce: $01 $0b $00
    ld [hl-], a                                   ; $7fd1: $32
    nop                                           ; $7fd2: $00
    or d                                          ; $7fd3: $b2
    ld bc, $0102                                  ; $7fd4: $01 $02 $01
    xor a                                         ; $7fd7: $af
    nop                                           ; $7fd8: $00
    ld c, b                                       ; $7fd9: $48
    nop                                           ; $7fda: $00
    rlca                                          ; $7fdb: $07
    nop                                           ; $7fdc: $00

jr_0a3_7fdd:
    cp a                                          ; $7fdd: $bf
    nop                                           ; $7fde: $00
    db $d3                                        ; $7fdf: $d3
    nop                                           ; $7fe0: $00
    ld a, [bc]                                    ; $7fe1: $0a
    jr jr_0a3_7fdd                                ; $7fe2: $18 $f9

    nop                                           ; $7fe4: $00
    ccf                                           ; $7fe5: $3f
    ld bc, $0107                                  ; $7fe6: $01 $07 $01
    db $fc                                        ; $7fe9: $fc
    nop                                           ; $7fea: $00
    ld [$0a02], sp                                ; $7feb: $08 $02 $0a
    add hl, de                                    ; $7fee: $19
    dec h                                         ; $7fef: $25
    ld bc, $009e                                  ; $7ff0: $01 $9e $00
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
